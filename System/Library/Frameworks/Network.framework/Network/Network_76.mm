BOOL nw_establishment_report_get_proxy_configured(nw_establishment_report_t report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = report;
  if (v1)
  {
    v2 = BYTE4(v1[10].isa) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_proxy_configured";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null report", buf, 12);

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
        v15 = "nw_establishment_report_get_proxy_configured";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_establishment_report_get_proxy_configured";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_proxy_configured";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_proxy_configured";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t sub_181F1D978(NSObject *a1, uint64_t *a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for NWConnection.EstablishmentReport.Resolution(0);
  v36 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v31 - v12);
  source = nw_resolution_report_get_source(a1);
  v15 = source == nw_report_resolution_source_cache;
  if (source == nw_report_resolution_source_expired_cache)
  {
    v15 = 2;
  }

  v34 = v15;
  milliseconds = nw_resolution_report_get_milliseconds(a1);
  endpoint_count = nw_resolution_report_get_endpoint_count(a1);
  nw_resolution_report_copy_successful_endpoint(a1);
  nw_resolution_report_copy_preferred_endpoint(a1);
  protocol = nw_resolution_report_get_protocol(a1);
  v17 = swift_unknownObjectRetain();
  sub_181B80998(v17, v8);
  v18 = type metadata accessor for NWEndpoint(0);
  v19 = *(*(v18 - 8) + 48);
  result = v19(v8, 1, v18);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = swift_unknownObjectRetain();
  sub_181B80998(v21, v5);
  result = v19(v5, 1, v18);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = milliseconds / 1000.0;
  *v13 = v34;
  v13[1] = v22;
  *(v13 + 2) = endpoint_count;
  sub_181D8DDC0(v8, v13 + v9[7], type metadata accessor for NWEndpoint);
  sub_181D8DDC0(v5, v13 + v9[8], type metadata accessor for NWEndpoint);
  *(v13 + v9[9]) = protocol;
  v23 = v35;
  sub_181D8E320(v13, v35, type metadata accessor for NWConnection.EstablishmentReport.Resolution);
  v24 = v37;
  v25 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_181F1E998(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v27 = v36;
  v29 = v25[2];
  v28 = v25[3];
  if (v29 >= v28 >> 1)
  {
    *v24 = sub_181F1E998((v28 > 1), v29 + 1, 1, v25);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_181D8E448(v13, type metadata accessor for NWConnection.EstablishmentReport.Resolution);
  v30 = *v24;
  *(v30 + 16) = v29 + 1;
  sub_181D8DDC0(v23, v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29, type metadata accessor for NWConnection.EstablishmentReport.Resolution);
  return 1;
}

nw_report_resolution_source_t nw_resolution_report_get_source(nw_resolution_report_t resolution_report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  if (v1)
  {
    isa_high = HIDWORD(v1[7].isa);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolution_report_get_source";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null resolution_report", buf, 12);

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
        v15 = "nw_resolution_report_get_source";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_source";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_source";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_source";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa_high = nw_report_resolution_source_query;
  v1 = 0;
LABEL_3:

  return isa_high;
}

BOOL ___ZL37nw_protocol_instance_bring_up_channelP31NWConcrete_nw_protocol_instancemP22nw_protocol_path_statePU21objcproto10OS_nw_path8NSObject_block_invoke_246(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nw_protocol_instance_attach_protocol(*(a1 + 32), v6, v7, *(*(*(a1 + 40) + 8) + 24), *(a1 + 56), *(a1 + 64));
  v9 = v8;
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = v8;
    v10 = *(a1 + 32);
    if (!v10 || (*(v10 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v13 = v12 == 0;
        if (v12)
        {
          v14 = (v12 + 415);
        }

        else
        {
          v14 = "";
        }

        v17 = 136446978;
        v18 = "nw_protocol_instance_bring_up_channel_block_invoke";
        v19 = 2082;
        v20 = v14;
        if (v13)
        {
          v15 = "";
        }

        else
        {
          v15 = " ";
        }

        v21 = 2080;
        v22 = v15;
        v23 = 2114;
        v24 = v6;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAttached transport protocol: %{public}@", &v17, 0x2Au);
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v9 != 0;
}

uint32_t nw_resolution_report_get_endpoint_count(nw_resolution_report_t resolution_report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  if (v1)
  {
    isa = v1[7].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolution_report_get_endpoint_count";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null resolution_report", buf, 12);

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
        v15 = "nw_resolution_report_get_endpoint_count";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_endpoint_count";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_endpoint_count";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_endpoint_count";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = 0;
  v1 = 0;
LABEL_3:

  return isa;
}

nw_endpoint_t nw_resolution_report_copy_preferred_endpoint(nw_resolution_report_t resolution_report)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  v2 = v1;
  if (v1)
  {
    v3 = v1[5].isa;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_resolution_report_copy_preferred_endpoint";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null resolution_report", buf, 12);

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
        v16 = "nw_resolution_report_copy_preferred_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v16 = "nw_resolution_report_copy_preferred_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_resolution_report_copy_preferred_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_resolution_report_copy_preferred_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
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

nw_report_resolution_protocol_t nw_resolution_report_get_protocol(nw_resolution_report_t resolution_report)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  if (v1)
  {
    isa = v1[8].isa;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolution_report_get_protocol";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null resolution_report", buf, 12);

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
        v15 = "nw_resolution_report_get_protocol";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_protocol";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_protocol";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_protocol";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa = nw_report_resolution_protocol_unknown;
  v1 = 0;
LABEL_3:

  return isa;
}

uint64_t sub_181F1E9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  swift_unknownObjectRetain();
  LOBYTE(a4) = v7(a2, a3, a4);
  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t sub_181F1EA60(uint64_t a1, unint64_t a2, unint64_t a3, char **a4)
{
  type metadata accessor for NWProtocolDefinition();
  v8 = swift_allocObject();
  v8[4] = a1;
  v9 = [swift_unknownObjectRetain() description];
  v10 = sub_182AD2F88();
  v12 = v11;

  v8[2] = v10;
  v8[3] = v12;
  v13 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_181F1EBC0(0, *(v13 + 2) + 1, 1, v13);
    *a4 = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_181F1EBC0((v15 > 1), v16 + 1, 1, v13);
    *a4 = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[24 * v16];
  *(v17 + 4) = v8;
  *(v17 + 5) = a2 / 1000.0;
  *(v17 + 6) = a3 / 1000.0;
  return 1;
}

char *sub_181F1EBC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838908, &qword_182AE5FD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_181F1ECFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F1EDC0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F1EE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NWConnection.EstablishmentReport.proxyEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NWConnection.EstablishmentReport(0) + 40);

  return sub_181F1EE80(v3, a1);
}

unint64_t nw_quic_connection_get_pmtud_for_non_transport(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    pmtud_for_non_transport = _nw_quic_connection_get_pmtud_for_non_transport();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_pmtud_for_non_transport";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v14 = "nw_quic_connection_get_pmtud_for_non_transport";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  pmtud_for_non_transport = 0;
LABEL_3:

  return pmtud_for_non_transport;
}

unint64_t _nw_quic_connection_get_pmtud_for_non_transport()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 2) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double NWConnection.EstablishmentReport.handshakes.getter()
{
  type metadata accessor for NWConnection.EstablishmentReport(0);

  return result;
}

uint64_t sub_181F1F29C()
{
  v1 = *(v0 + 16);

  return v1;
}

double NWConnection.EstablishmentReport.resolutions.getter()
{
  type metadata accessor for NWConnection.EstablishmentReport(0);

  return result;
}

uint64_t NWProtocolDefinition.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id nw_protocol_instance_copy_local_cid_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_local_cid_for_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_local_cid_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_local_cid_for_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null path", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_local_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_local_cid_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = node[14];
LABEL_41:

  return v7;
}

id nw_protocol_instance_copy_remote_cid_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_remote_cid_for_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_remote_cid_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_remote_cid_for_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null path", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_remote_cid_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_remote_cid_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = node[15];
LABEL_41:

  return v7;
}

id nw_protocol_instance_copy_initial_data_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_initial_data_for_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_initial_data_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_initial_data_for_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null path", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_initial_data_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_initial_data_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = node[16];
LABEL_41:

  return v7;
}

void nw_ip_channel_inbox_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1->handle;
    if (v4)
    {
      if (a2)
      {
        *type = 0;
        v41 = type;
        v44 = 0u;
        v45 = 0u;
        memset(buf, 0, sizeof(buf));
        while ((a2->callbacks->get_input_frames)(a2, a1, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, type))
        {
          v5 = _nw_array_create();
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v33 = ___ZL35nw_ip_channel_inbox_input_availableP11nw_protocolS0__block_invoke;
          v34 = &unk_1E6A359A0;
          v37 = type;
          v35 = v4;
          v38 = a2;
          v6 = v5;
          v36 = v6;
          v39 = buf;
          v7 = *type;
          do
          {
            if (!v7)
            {
              break;
            }

            v8 = *(v7 + 32);
            v9 = (v33)(v32);
            v7 = v8;
          }

          while ((v9 & 1) != 0);
        }

        goto LABEL_63;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_ip_channel_inbox_input_available";
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null from", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v42 = 0;
      if (__nwlog_fault(v15, type, &v42))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v16 = __nwlog_obj();
          v19 = type[0];
          if (os_log_type_enabled(v16, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_ip_channel_inbox_input_available";
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null from", buf, 0xCu);
          }
        }

        else if (v42 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v16 = __nwlog_obj();
          v27 = type[0];
          v28 = os_log_type_enabled(v16, type[0]);
          if (backtrace_string)
          {
            if (v28)
            {
              *buf = 136446466;
              *&buf[4] = "nw_ip_channel_inbox_input_available";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null from, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v15)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }

          if (v28)
          {
            *buf = 136446210;
            *&buf[4] = "nw_ip_channel_inbox_input_available";
            _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null from, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v16 = __nwlog_obj();
          v31 = type[0];
          if (os_log_type_enabled(v16, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_ip_channel_inbox_input_available";
            _os_log_impl(&dword_181A37000, v16, v31, "%{public}s called with null from, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      if (!v15)
      {
LABEL_63:

        return;
      }

LABEL_62:
      free(v15);
      goto LABEL_63;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_ip_channel_inbox_input_available";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null inbox", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v15, type, &v42))
    {
      goto LABEL_61;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null inbox", buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v24 = type[0];
      v25 = os_log_type_enabled(v16, type[0]);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          *&buf[4] = "nw_ip_channel_inbox_input_available";
          *&buf[12] = 2082;
          *&buf[14] = v23;
          _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null inbox, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_61;
      }

      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null inbox, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v16, v30, "%{public}s called with null inbox, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_60:

    goto LABEL_61;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_ip_channel_inbox_input_available";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null to", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (__nwlog_fault(v11, type, &v42))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null to", buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v21 = type[0];
      v22 = os_log_type_enabled(v12, type[0]);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          *&buf[4] = "nw_ip_channel_inbox_input_available";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null to, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_53;
      }

      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null to, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v29 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_ip_channel_inbox_input_available";
        _os_log_impl(&dword_181A37000, v12, v29, "%{public}s called with null to, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_53:
  if (v11)
  {
    free(v11);
  }
}

uint64_t ___ZL35nw_ip_channel_inbox_input_availableP11nw_protocolS0__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = (*(a1 + 48) + 8);
  v6 = v3[4];
  v7 = v3[5];
  if (v6)
  {
    v5 = (v6 + 40);
  }

  *v5 = v7;
  *v7 = v6;
  v3[4] = 0;
  v3[5] = 0;
  nw_ip_channel_inbox_handle_input_frame(*(a1 + 32), *(a1 + 56), v3, *(a1 + 40), *(a1 + 64));

  return 1;
}

uint64_t nw_quic_connection_get_source_connection_id_length(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    source_connection_id_length = _nw_quic_connection_get_source_connection_id_length();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_source_connection_id_length";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v14 = "nw_quic_connection_get_source_connection_id_length";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  source_connection_id_length = 0;
LABEL_3:

  return source_connection_id_length;
}

unint64_t sub_181F20CE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14[-v1];
  v3 = sub_182AD2868();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v7 = sub_181AA8420();
  if (!v7)
  {
    return 8;
  }

  v8 = *(*v7 + 128);
  v9 = v7;
  swift_beginAccess();
  v10 = *(v9 + v8);

  if (!v10)
  {
    return 8;
  }

  v11 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID;
  swift_beginAccess();
  sub_181AB5D28(v10 + v11, v2, &unk_1EA8394B0, &unk_182AF9540);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    sub_181F49A88(v2, &unk_1EA8394B0, &unk_182AF9540);
    return 8;
  }

  (*(v4 + 32))(v6, v2, v3);
  v12 = sub_182AD2838();

  result = (*(v4 + 8))(v6, v3);
  if ((v12 & 0x8000000000000000) == 0)
  {
    if (v12 <= 0xFF)
    {
      return v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t nw_quic_parse_internal(const unsigned __int8 *a1, unint64_t a2, size_t size, dispatch_data_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!size)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_quic_parse_internal";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection_id_length", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v6, &type, &v12))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v15 = "nw_quic_parse_internal";
      v9 = "%{public}s called with null connection_id_length";
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_quic_parse_internal";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection_id_length, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_19;
      }

      if (!v11)
      {
LABEL_19:
        if (v6)
        {
          free(v6);
        }

        return 0;
      }

      *buf = 136446210;
      v15 = "nw_quic_parse_internal";
      v9 = "%{public}s called with null connection_id_length, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v15 = "nw_quic_parse_internal";
      v9 = "%{public}s called with null connection_id_length, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_19;
  }

  if (size + 21 <= a2 && (*a1 & 0x80000000) == 0)
  {
    *a4 = dispatch_data_create(a1 + 1, size, 0, 0);
    return 1;
  }

  return 0;
}

uint64_t nw_protocol_instance_registrar_find_quic_instance_by_id(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
        *&buf[12] = 2112;
        *&buf[14] = v3;
        *&buf[22] = 2112;
        v32 = v4;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %@ finding instance of quic to join for CID %@", buf, 0x20u);
      }
    }

    if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
    }

    v5 = nw_protocol_copy_quic_stream_definition_quic_definition;
    identifier = nw_protocol_definition_get_identifier(v5);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v32 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke;
    aBlock[3] = &unk_1E6A333D8;
    v7 = v3;
    v22 = v7;
    v25 = identifier;
    v23 = v4;
    v24 = buf;
    v8 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 2);
    v8[2](v8);
    os_unfair_lock_unlock(v3 + 2);

    v9 = *(*&buf[8] + 24);
    if (!v9)
    {
      if (gLogDatapath == 1)
      {
        v19 = __nwlog_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *type = 136446466;
          v28 = "nw_protocol_instance_registrar_find_quic_instance_by_id";
          v29 = 2112;
          v30 = v7;
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %@ could not find protocol", type, 0x16u);
        }

        v9 = *(*&buf[8] + 24);
      }

      else
      {
        v9 = 0;
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_9;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null connection_id", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v12, type, &v26))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null connection_id", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v17 = type[0];
      v18 = os_log_type_enabled(v13, type[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection_id, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection_id, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null connection_id, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_32:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void sub_181F21664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  _Block_object_dispose((v23 - 112), 8);

  _Unwind_Resume(a1);
}

void __nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  if (v1)
  {
    while (1)
    {
      if (gLogDatapath == 1)
      {
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(a1 + 32);
          v22 = v1[2];
          v23 = *(v22 + 16);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v21;
          *&buf[22] = 2048;
          v41 = v22;
          v42 = 2080;
          v43 = v23;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %@ checking instance %p (%s) for joining by quic", buf, 0x2Au);
        }
      }

      v3 = v1[2];
      if (v3)
      {
        break;
      }

      if (gLogDatapath == 1)
      {
        v9 = __nwlog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(a1 + 32);
          v27 = v1[2];
          v28 = *(a1 + 56);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          v41 = v27;
          v42 = 2080;
          v43 = v28;
          v13 = v9;
          v14 = "%{public}s %@ instance %p of %s not eligible, missing protocol handle";
LABEL_35:
          v15 = 42;
LABEL_36:
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, v14, buf, v15);
        }

LABEL_17:
      }

LABEL_4:
      v1 = *v1;
      if (!v1)
      {
        return;
      }
    }

    if (nw_protocols_are_equal(*(a1 + 56), *(v3 + 16)))
    {
      v4 = *(v3 + 24);
      if (v4 && (v5 = *(v4 + 224)) != 0)
      {
        v6 = v5(v3, 4, 0);
        v7 = v6;
        if (v6)
        {
          v8 = *v6;
          if (v8)
          {
            v9 = v8;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v41) = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke_10;
            aBlock[3] = &unk_1E6A3BB28;
            v32 = *(a1 + 40);
            v33 = buf;
            _nw_array_apply(v9, aBlock);
            nw_array_remove_all_objects(*v7);
            if (*v7)
            {
              os_release(*v7);
            }

            free(v7);
            if (*(*&buf[8] + 24))
            {
              *(*(*(a1 + 48) + 8) + 24) = v3;

              _Block_object_dispose(buf, 8);
              return;
            }

            if (gLogDatapath == 1)
            {
              v29 = __nwlog_obj();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                v30 = *(a1 + 32);
                *v34 = 136446722;
                v35 = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
                v36 = 2112;
                v37 = v30;
                v38 = 2048;
                v39 = v3;
                _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p did not match", v34, 0x20u);
              }
            }

            _Block_object_dispose(buf, 8);
          }

          else
          {
            if (gLogDatapath != 1)
            {
              goto LABEL_4;
            }

            v9 = __nwlog_obj();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v18 = *(a1 + 32);
              v19 = *(a1 + 56);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
              *&buf[12] = 2112;
              *&buf[14] = v18;
              *&buf[22] = 2048;
              v41 = v3;
              v42 = 2080;
              v43 = v19;
              v13 = v9;
              v14 = "%{public}s %@ instance %p of %s not eligible, missing required quic_info";
              goto LABEL_35;
            }
          }
        }

        else
        {
          if (gLogDatapath != 1)
          {
            goto LABEL_4;
          }

          v9 = __nwlog_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(a1 + 32);
            v17 = *(a1 + 56);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
            *&buf[12] = 2112;
            *&buf[14] = v16;
            *&buf[22] = 2048;
            v41 = v3;
            v42 = 2080;
            v43 = v17;
            v13 = v9;
            v14 = "%{public}s %@ instance %p of %s not eligible, missing quic_info";
            goto LABEL_35;
          }
        }
      }

      else
      {
        if (gLogDatapath != 1)
        {
          goto LABEL_4;
        }

        v9 = __nwlog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(a1 + 32);
          v25 = *(a1 + 56);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v24;
          *&buf[22] = 2048;
          v41 = v3;
          v42 = 2080;
          v43 = v25;
          v13 = v9;
          v14 = "%{public}s %@ instance %p of %s not eligible, missing required callbacks";
          goto LABEL_35;
        }
      }
    }

    else
    {
      if (gLogDatapath != 1)
      {
        goto LABEL_4;
      }

      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 32);
        v11 = *(v3 + 16);
        v12 = *(a1 + 56);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        v41 = v3;
        v42 = 2080;
        v43 = v11;
        v44 = 2080;
        v45 = v12;
        v13 = v9;
        v14 = "%{public}s %@ instance %p (%s) not eligible for joining by %s, identifier doesn't match";
        v15 = 52;
        goto LABEL_36;
      }
    }

    goto LABEL_17;
  }
}

void sub_181F21C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  is_equal = nw_dispatch_data_is_equal(*(a1 + 32), v4);
  if (is_equal)
  {
    if (gLogDatapath == 1)
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        v9 = 136446722;
        v10 = "nw_protocol_instance_registrar_find_quic_instance_by_id_block_invoke";
        v11 = 2112;
        v12 = v8;
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Comparing CID %@ with %@", &v9, 0x20u);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return is_equal ^ 1u;
}

uint64_t __nw_dispatch_data_is_equal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __nw_dispatch_data_is_equal_block_invoke_2;
  v8[3] = &unk_1E6A343B8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  v8[6] = a5;
  v8[7] = a4;
  dispatch_data_apply(v6, v8);
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t __nw_dispatch_data_is_equal_block_invoke_2(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1[5];
  }

  v9 = v6 + v7;
  if (v6 + v7 >= a5 + a3)
  {
    v10 = a5 + a3;
  }

  else
  {
    v10 = v6 + v7;
  }

  v11 = v10 > v8;
  v12 = v10 - v8;
  if (v11)
  {
    *(*(a1[4] + 8) + 24) = memcmp((a4 + v8 - a3), (a1[7] + v8 - v7), v12) == 0;
  }

  else
  {
    if (v9 < a3)
    {
      v13 = 0;
      return v13 & 1;
    }

    if (a5 + a3 < v7)
    {
      v13 = 1;
      return v13 & 1;
    }
  }

  v13 = *(*(a1[4] + 8) + 24);
  return v13 & 1;
}

void ___ZL38nw_ip_channel_inbox_handle_input_frameP19nw_ip_channel_inboxP11nw_protocolPU22objcproto11OS_nw_frame8NSObjectPU22objcproto11OS_nw_arrayS3_P27nw_ip_channel_fragment_info_block_invoke_38(uint64_t a1, void *a2, const unsigned __int8 *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  *uu1 = 0;
  v17 = 0;
  if (nw_path_flow_get_nexus_agent_uuid(*(*(a1 + 32) + 72), uu1) && !uuid_compare(uu1, a3))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (v5)
      {
        name = _nw_interface_get_name(v5);
      }

      else
      {
        name = 0;
      }

      v8 = 136446978;
      v9 = "nw_ip_channel_inbox_handle_input_frame_block_invoke";
      v10 = 2080;
      v11 = name;
      v12 = 1040;
      v13 = 16;
      v14 = 2096;
      v15 = a3;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s Found interface %s, using agent ID %{uuid_t}.16P", &v8, 0x26u);
    }

    **(*(*(a1 + 40) + 8) + 24) = *a3;
  }
}

uint64_t nw_path_flow_registration_add_extra_interface_option(void *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = v3[3];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_path_flow_registration_add_extra_interface_option_block_invoke;
      aBlock[3] = &unk_1E6A3CCB8;
      v7 = v4;
      v29 = v7;
      if (v6 && (_nw_array_apply(v6, aBlock) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          v34 = 2112;
          v35 = v7;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Interface option details %@ already exists", buf, 0x16u);
        }

        v12 = 0;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 136446978;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          v34 = 2112;
          v35 = v7;
          v36 = 1042;
          v37 = 16;
          v38 = 2098;
          v39 = v3 + 4;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s Adding interface option_details %@ to flow %{public,uuid_t}.16P", buf, 0x26u);
        }

        v9 = v3[3];
        if (v9 || (v10 = _nw_array_create(), v11 = v3[3], v3[3] = v10, v11, (v9 = v3[3]) != 0))
        {
          _nw_array_append(v9, v7);
        }

        v12 = 1;
      }

      goto LABEL_15;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_path_flow_registration_add_extra_interface_option";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null interface_option_details", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v16, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null interface_option_details", buf, 0xCu);
        }

LABEL_47:

        goto LABEL_48;
      }

      if (v30 != 1)
      {
        v17 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v27, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_47;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v25)
      {
        *buf = 136446466;
        v33 = "nw_path_flow_registration_add_extra_interface_option";
        v34 = 2082;
        v35 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_35;
    }
  }

  else
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_path_flow_registration_add_extra_interface_option";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null flow_registration", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v16, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null flow_registration", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v30 != 1)
      {
        v17 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_47;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v33 = "nw_path_flow_registration_add_extra_interface_option";
          _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v23)
      {
        *buf = 136446466;
        v33 = "nw_path_flow_registration_add_extra_interface_option";
        v34 = 2082;
        v35 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_35:

      free(backtrace_string);
    }
  }

LABEL_48:
  if (v16)
  {
    free(v16);
  }

  v12 = 0;
LABEL_15:

  return v12;
}

id nw_interface_option_details_copy_initial_data(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[9];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_option_details_copy_initial_data";
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
        v16 = "nw_interface_option_details_copy_initial_data";
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
          v16 = "nw_interface_option_details_copy_initial_data";
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
        v16 = "nw_interface_option_details_copy_initial_data";
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
        v16 = "nw_interface_option_details_copy_initial_data";
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

id nw_interface_option_details_copy_evaluator(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_option_details_copy_evaluator";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null details", buf, 12);

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
        v16 = "nw_interface_option_details_copy_evaluator";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null details", buf, 0xCu);
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
          v16 = "nw_interface_option_details_copy_evaluator";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_evaluator";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_evaluator";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null details, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_interface_option_details_get_sockfd(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[20];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_interface_option_details_get_sockfd";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null interface_option_details", buf, 12);

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
        v15 = "nw_interface_option_details_get_sockfd";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null interface_option_details", buf, 0xCu);
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
          v15 = "nw_interface_option_details_get_sockfd";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_interface_option_details_get_sockfd";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_interface_option_details_get_sockfd";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0xFFFFFFFFLL;
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_256(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  if (_nw_interface_shallow_compare(*(a1 + 32), *(extra + 16)) && ((nw_endpoint_is_equal(*(a1 + 40), *(extra + 136), 0) & 1) != 0 || (*(extra + 153) & 0x10) != 0 && _nw_interface_shallow_compare(*(a1 + 48), *(extra + 16))))
  {
    v5 = nw_interface_option_details_copy_local_cid(*(a1 + 56));
    if (nw_dispatch_data_is_equal(v5, *(extra + 80)))
    {
      v6 = nw_interface_option_details_copy_remote_cid(*(a1 + 56));
      is_equal = nw_dispatch_data_is_equal(v6, *(extra + 88));

      if (is_equal)
      {
        v8 = *(extra + 152);
        if (v8 == nw_interface_option_details_get_priority(*(a1 + 56)))
        {
          *(*(*(a1 + 72) + 8) + 24) = extra;
          *(*(*(a1 + 80) + 8) + 24) = nw_hash_node_get_object(a2);
          nw_interface_option_details_get_nexus_agent(*(a1 + 56), extra);
          return 0;
        }

        v10 = *(a1 + 64);
        if (!v10 || (*(v10 + 413) & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(a1 + 56);
            v12 = *(a1 + 64);
            v14 = v12 == 0;
            if (v12)
            {
              v15 = (v12 + 415);
            }

            else
            {
              v15 = "";
            }

            v18 = "nw_protocol_instance_update_available_paths_block_invoke";
            v19 = 2082;
            v16 = " ";
            v17 = 136446978;
            if (v14)
            {
              v16 = "";
            }

            v20 = v15;
            v21 = 2080;
            v22 = v16;
            v23 = 2112;
            v24 = v13;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPriority changed, skipping match and will add %@", &v17, 0x2Au);
          }
        }
      }
    }

    else
    {
    }
  }

  return 1;
}

void nw_protocol_instance_path_callback(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(v5[1] + 80) + 216);
    if (v7)
    {
      v7(v5, a2, a3, v5[39] == a2);
    }

    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_instance_path_callback";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null instance", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_path_callback";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_protocol_instance_path_callback";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_path_callback";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_path_callback";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v9)
  {
    free(v9);
  }

LABEL_4:
}

uint64_t nw_protocol_instance_get_priority_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_get_priority_for_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_get_priority_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_get_priority_for_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null path", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_get_priority_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_get_priority_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = *(node + 184);
LABEL_41:

  return v7;
}

void nw_activity_fill_out_activity_report(NWConcrete_nw_activity *a1, nw_activity_report_s *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_activity_fill_out_activity_report";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null report", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v11, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v21 = "nw_activity_fill_out_activity_report";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v21 = "nw_activity_fill_out_activity_report";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_activity_fill_out_activity_report";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v21 = "nw_activity_fill_out_activity_report";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_12;
  }

  a2->domain = v3->domain;
  a2->label = v3->label;
  *a2->activity_uuid = *v3->token;
  m_obj = v3->parent.m_obj;
  if (m_obj && !uuid_is_null(m_obj->token))
  {
    *a2->parent_activity_uuid = *v4->parent.m_obj->token;
  }

  *(a2 + 304) = *(a2 + 304) & 0xFE | *(v4 + 140) & 1;
  a2->investigation_identifier = v4->investigation_identifier;
  if (nw_utilities_get_self_bundle_id::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
  }

  v6 = nw_utilities_get_self_bundle_id::bundle_identifier_string;
  if (nw_utilities_get_self_bundle_id::bundle_identifier_string)
  {
    bundle_id = a2->bundle_id;
    v8 = 256;
    while (1)
    {
      v9 = *v6;
      *bundle_id = v9;
      if (!v9)
      {
        break;
      }

      ++bundle_id;
      ++v6;
      if (--v8 <= 1)
      {
        *bundle_id = 0;
        break;
      }
    }
  }

LABEL_12:
}

uint64_t nw_activity_get_fragments_quenched(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v21 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_activity_get_fragments_quenched_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    v17 = v3;
    nw_synchronize<nw::unfair_mutex,void({block_pointer} {__strong})(void)>(v2 + 20, &v17);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_activity_get_fragments_quenched";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null activity", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v7, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_get_fragments_quenched";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null activity", buf, 0xCu);
      }
    }

    else if (v18 == 1)
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
          *&buf[4] = "nw_activity_get_fragments_quenched";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_get_fragments_quenched";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_activity_get_fragments_quenched";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

void sub_181F24500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_activity_get_underlying_error_domain(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_activity_get_underlying_error_domain";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null activity", buf, 12);

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
          v17 = "nw_activity_get_underlying_error_domain";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null activity", buf, 0xCu);
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
            v17 = "nw_activity_get_underlying_error_domain";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_activity_get_underlying_error_domain";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v17 = "nw_activity_get_underlying_error_domain";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_8;
  }

  if ((v1[35] & 8) != 0)
  {
    v4 = v1[31];
    goto LABEL_10;
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v3 = gactivityLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = v2;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ not complete, returning 0 for underlying error domain", buf, 0xCu);
  }

LABEL_8:
  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t nw_activity_get_completion_reason(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_activity_get_completion_reason";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null activity", buf, 12);

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
          v17 = "nw_activity_get_completion_reason";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null activity", buf, 0xCu);
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
            v17 = "nw_activity_get_completion_reason";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_activity_get_completion_reason";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v17 = "nw_activity_get_completion_reason";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_8;
  }

  if ((v1[35] & 8) != 0)
  {
    v4 = v1[34];
    goto LABEL_10;
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v3 = gactivityLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = v2;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ not complete, returning nw_activity_completion_reason_invalid", buf, 0xCu);
  }

LABEL_8:
  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t nw_activity_get_underlying_error_domain_string(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_activity_get_underlying_error_domain_string";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null activity", buf, 12);

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
          v17 = "nw_activity_get_underlying_error_domain_string";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null activity", buf, 0xCu);
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
            v17 = "nw_activity_get_underlying_error_domain_string";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_activity_get_underlying_error_domain_string";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v17 = "nw_activity_get_underlying_error_domain_string";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v7)
    {
      free(v7);
    }

    goto LABEL_8;
  }

  if ((v1[140] & 8) != 0)
  {
    v4 = *(v1 + 9);
    goto LABEL_10;
  }

  if (__nwlog_activity_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
  }

  v3 = gactivityLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = v2;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ not complete, returning NULL for underlying error domain string", buf, 0xCu);
  }

LABEL_8:
  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(uint64_t a1)
{
  if (qword_1EA836C08 != -1)
  {
LABEL_9:
    swift_once();
  }

  v2 = 0;
  v3 = off_1EA836C18;
  v4 = *(off_1EA836C18 + 2);
  v5 = off_1EA836C18 + 32;
  while (v4 != v2)
  {
    if (v2 >= v3[2])
    {
      __break(1u);
      goto LABEL_9;
    }

    v6 = *&v5[8 * v2++];
    if ((*(v6 + 88))(a1))
    {
      v7 = *(v6 + 96);
      v8 = swift_unknownObjectRetain();
      return v7(v8);
    }
  }

  return 0;
}

BOOL nw_protocol_metadata_is_udp(nw_protocol_metadata_t metadata)
{
  v15 = *MEMORY[0x1E69E9840];
  if (metadata)
  {

    return _nw_protocol_metadata_is_udp(metadata);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_metadata_is_udp";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null metadata", buf, 12);

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
        v12 = "nw_protocol_metadata_is_udp";
        v6 = "%{public}s called with null metadata";
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
            v12 = "nw_protocol_metadata_is_udp";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_metadata_is_udp";
        v6 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_metadata_is_udp";
        v6 = "%{public}s called with null metadata, backtrace limit exceeded";
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

  return 0;
}

BOOL nw_protocol_metadata_is_ws(nw_protocol_metadata_t metadata)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  if (v1)
  {
    if (nw_protocol_copy_ws_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_ws_definition::onceToken, &__block_literal_global_4247);
    }

    v2 = nw_protocol_copy_ws_definition::definition;
    v3 = nw_protocol_metadata_matches_definition(v1, v2);

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_metadata_is_ws";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null metadata", buf, 12);

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
        v16 = "nw_protocol_metadata_is_ws";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata", buf, 0xCu);
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
          v16 = "nw_protocol_metadata_is_ws";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_metadata_is_ws";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_metadata_is_ws";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

uint64_t sub_181F258C4(uint64_t a1, uint64_t (*a2)(void, void))
{
  result = a2(*(v2 + 16), *(a1 + 32));
  if (result)
  {
    v4 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t NWProtocolFramer.Message.__allocating_init(instance:)(uint64_t a1)
{
  v1 = swift_allocObject();
  v2 = swift_unknownObjectRetain();
  v3 = nw_framer_message_create(v2);
  swift_unknownObjectRelease();

  *(v1 + 16) = v3;
  return v1;
}

void sub_181F25A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v13[4] = a4;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_181D478F8;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  nw_connection_receive_message(v10, v12);
  _Block_release(v12);
}

uint64_t sub_181F25B7C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = (v1 + 16);
  v3 = *(v0 + 16);
  v7[4] = sub_181F25E08;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_181F25CD0;
  v7[3] = &block_descriptor_136;
  v4 = _Block_copy(v7);

  nw_content_context_foreach_protocol_metadata(v3, v4);
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v2;

  return v5;
}

uint64_t sub_181F25C94()
{

  return swift_deallocObject();
}

uint64_t sub_181F25CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_181F25D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(a2);
  if (result)
  {
    swift_beginAccess();

    MEMORY[0x1865D9F10](v5);
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    swift_endAccess();
  }

  return result;
}

void __nw_socks5_server_start_block_invoke_10(uint64_t a1, void *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v74 = a1;
  if (v6)
  {
    if (_nw_parameters_get_no_proxy(v6))
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    v5 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 32);
  v9 = *(v5 + 136);
  v10 = v4;
  v11 = v8;
  v75 = v5;
  if (v10)
  {
    if (v11)
    {
      v12 = [NWConcrete_nw_socks5_connection alloc];
      v13 = v10;
      v14 = v11;
      v15 = v75;
      if (!v12)
      {
        goto LABEL_15;
      }

      v84.receiver = v12;
      v84.super_class = NWConcrete_nw_socks5_connection;
      v16 = objc_msgSendSuper2(&v84, sel_init);
      v12 = v16;
      if (v16)
      {
        v16->sc_id = atomic_fetch_add(&s_last_connection_id, 1uLL);
        objc_storeStrong(&v16->sc_in_connection, a2);
        objc_storeStrong(&v12->sc_queue, v8);
        if (v9)
        {
          v17 = 101;
        }

        else
        {
          v17 = 1;
        }

        v12->sc_state = v17;
        *(v12 + 160) = *(v12 + 160) & 0xFB | v7;
        objc_storeWeak(&v12->sc_parent, v15);
        goto LABEL_15;
      }

      v58 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
      v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s [super init] failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (__nwlog_fault(v59, &type, &v82))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v60 = __nwlog_obj();
          v61 = type;
          if (os_log_type_enabled(v60, type))
          {
            *buf = 136446210;
            *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
            _os_log_impl(&dword_181A37000, v60, v61, "%{public}s [super init] failed", buf, 0xCu);
          }
        }

        else if (v82 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v60 = __nwlog_obj();
          v68 = type;
          v69 = os_log_type_enabled(v60, type);
          if (backtrace_string)
          {
            if (v69)
            {
              *buf = 136446466;
              *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v60, v68, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_114;
          }

          if (v69)
          {
            *buf = 136446210;
            *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
            _os_log_impl(&dword_181A37000, v60, v68, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v60 = __nwlog_obj();
          v72 = type;
          if (os_log_type_enabled(v60, type))
          {
            *buf = 136446210;
            *&buf[4] = "[NWConcrete_nw_socks5_connection initWithConnection:queue:parent:shoes:disableProxy:]";
            _os_log_impl(&dword_181A37000, v60, v72, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_114:
      if (v59)
      {
        free(v59);
      }

      v12 = 0;
LABEL_15:

      if (v12)
      {
        v18 = v12;
LABEL_36:

        goto LABEL_37;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      *buf = 136446210;
      *&buf[4] = "nw_socks5_connection_create";
      LODWORD(v73) = 12;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s [nw_socks5_connection initWithConnection:queue:shoes:] failed", buf, v73);

      LOBYTE(v84.receiver) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v20, &v84, &type))
      {
        if (LOBYTE(v84.receiver) == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          receiver = v84.receiver;
          if (os_log_type_enabled(v21, v84.receiver))
          {
            *buf = 136446210;
            *&buf[4] = "nw_socks5_connection_create";
            _os_log_impl(&dword_181A37000, v21, receiver, "%{public}s [nw_socks5_connection initWithConnection:queue:shoes:] failed", buf, 0xCu);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v23 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v24 = v84.receiver;
          v25 = os_log_type_enabled(v21, v84.receiver);
          if (v23)
          {
            if (v25)
            {
              *buf = 136446466;
              *&buf[4] = "nw_socks5_connection_create";
              *&buf[12] = 2082;
              *&buf[14] = v23;
              _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [nw_socks5_connection initWithConnection:queue:shoes:] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v23);
            if (!v20)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

          if (v25)
          {
            *buf = 136446210;
            *&buf[4] = "nw_socks5_connection_create";
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [nw_socks5_connection initWithConnection:queue:shoes:] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v26 = v84.receiver;
          if (os_log_type_enabled(v21, v84.receiver))
          {
            *buf = 136446210;
            *&buf[4] = "nw_socks5_connection_create";
            _os_log_impl(&dword_181A37000, v21, v26, "%{public}s [nw_socks5_connection initWithConnection:queue:shoes:] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v20)
      {
        goto LABEL_36;
      }

LABEL_35:
      free(v20);
      goto LABEL_36;
    }

    v56 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socks5_connection_create";
    v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s called with null queue", buf, 12);

    LOBYTE(v84.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v53, &v84, &type))
    {
      if (LOBYTE(v84.receiver) == 17)
      {
        v54 = __nwlog_obj();
        v57 = v84.receiver;
        if (os_log_type_enabled(v54, v84.receiver))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v57, "%{public}s called with null queue", buf, 0xCu);
        }

LABEL_107:

        goto LABEL_108;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v54 = __nwlog_obj();
        v71 = v84.receiver;
        if (os_log_type_enabled(v54, v84.receiver))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v71, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_107;
      }

      v62 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v65 = v84.receiver;
      v66 = os_log_type_enabled(v54, v84.receiver);
      if (!v62)
      {
        if (v66)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v65, "%{public}s called with null queue, no backtrace", buf, 0xCu);
        }

        goto LABEL_107;
      }

      if (v66)
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_create";
        *&buf[12] = 2082;
        *&buf[14] = v62;
        _os_log_impl(&dword_181A37000, v54, v65, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_87;
    }
  }

  else
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socks5_connection_create";
    v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null connection", buf, 12);

    LOBYTE(v84.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v53, &v84, &type))
    {
      if (LOBYTE(v84.receiver) == 17)
      {
        v54 = __nwlog_obj();
        v55 = v84.receiver;
        if (os_log_type_enabled(v54, v84.receiver))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_107;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v54 = __nwlog_obj();
        v70 = v84.receiver;
        if (os_log_type_enabled(v54, v84.receiver))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v70, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_107;
      }

      v62 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v63 = v84.receiver;
      v64 = os_log_type_enabled(v54, v84.receiver);
      if (!v62)
      {
        if (v64)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_connection_create";
          _os_log_impl(&dword_181A37000, v54, v63, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_107;
      }

      if (v64)
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_create";
        *&buf[12] = 2082;
        *&buf[14] = v62;
        _os_log_impl(&dword_181A37000, v54, v63, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_87:

      free(v62);
    }
  }

LABEL_108:
  if (v53)
  {
    free(v53);
  }

  v12 = 0;
LABEL_37:

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v27 = gLogObj;
  v28 = v27;
  if (v12)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v74 + 32);
      v30 = nw_connection_copy_endpoint(v10);
      *buf = 136446978;
      *&buf[4] = "nw_socks5_server_start_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v29;
      *&buf[22] = 2112;
      v86 = v12;
      LOWORD(v87) = 2112;
      *(&v87 + 2) = v30;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s %@ received new connection %@ from %@", buf, 0x2Au);
    }

    v31 = *(v74 + 32);
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __nw_socks5_server_start_block_invoke_11;
    v79[3] = &unk_1E6A3D760;
    v80 = v31;
    v32 = v12;
    v81 = v32;
    os_unfair_lock_lock(v31 + 6);
    __nw_socks5_server_start_block_invoke_11(v79);
    os_unfair_lock_unlock(v31 + 6);
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __nw_socks5_server_start_block_invoke_2_12;
    v76[3] = &unk_1E6A3D760;
    v77 = *(v74 + 32);
    v78 = v32;
    v33 = v78;
    v34 = v76;
    v36 = v33 + 5;
    v35 = v33[5];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_socks5_connection_set_cancel_handler_block_invoke;
    v86 = &unk_1E6A3D710;
    v37 = v33;
    *&v87 = v37;
    v38 = v34;
    *(&v87 + 1) = v38;
    dispatch_async(v35, buf);

    v39 = v37;
    v40 = *v36;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_socks5_connection_start_block_invoke;
    v86 = &unk_1E6A3D868;
    v41 = v39;
    *&v87 = v41;
    dispatch_async(v40, buf);

    goto LABEL_62;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v42 = *(v74 + 32);
    v43 = nw_connection_copy_endpoint(v10);
    *buf = 136446722;
    *&buf[4] = "nw_socks5_server_start_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v42;
    *&buf[22] = 2112;
    v86 = v43;
    _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %@ failed to create new connection from %@", buf, 0x20u);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v44 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "nw_socks5_server_start_block_invoke";
  LODWORD(v73) = 12;
  v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s nw_socks5_connection_create failed", buf, v73);

  LOBYTE(v84.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v45, &v84, &type))
  {
    goto LABEL_60;
  }

  if (LOBYTE(v84.receiver) == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    v47 = v84.receiver;
    if (os_log_type_enabled(v46, v84.receiver))
    {
      *buf = 136446210;
      *&buf[4] = "nw_socks5_server_start_block_invoke";
      _os_log_impl(&dword_181A37000, v46, v47, "%{public}s nw_socks5_connection_create failed", buf, 0xCu);
    }

LABEL_59:

LABEL_60:
    if (!v45)
    {
      goto LABEL_62;
    }

LABEL_61:
    free(v45);
    goto LABEL_62;
  }

  if (type != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    v51 = v84.receiver;
    if (os_log_type_enabled(v46, v84.receiver))
    {
      *buf = 136446210;
      *&buf[4] = "nw_socks5_server_start_block_invoke";
      _os_log_impl(&dword_181A37000, v46, v51, "%{public}s nw_socks5_connection_create failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_59;
  }

  v48 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v46 = gLogObj;
  v49 = v84.receiver;
  v50 = os_log_type_enabled(v46, v84.receiver);
  if (!v48)
  {
    if (v50)
    {
      *buf = 136446210;
      *&buf[4] = "nw_socks5_server_start_block_invoke";
      _os_log_impl(&dword_181A37000, v46, v49, "%{public}s nw_socks5_connection_create failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (v50)
  {
    *buf = 136446466;
    *&buf[4] = "nw_socks5_server_start_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = v48;
    _os_log_impl(&dword_181A37000, v46, v49, "%{public}s nw_socks5_connection_create failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v48);
  if (v45)
  {
    goto LABEL_61;
  }

LABEL_62:
}

char *__nw_socks5_server_start_block_invoke_11(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 80);
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    _nw_array_append(v4, v2);
    v3 = *(a1 + 32);
  }

  v6 = *(v3 + 108);
  if (v6 != -1)
  {
    *(v3 + 108) = v6 + 1;
    v3 = *(a1 + 32);
  }

  result = *(v3 + 80);
  if (result)
  {
    result = _nw_array_get_count(result);
    v8 = *(a1 + 32);
    if (result > *(v8 + 104))
    {
      v9 = -1;
      if (result < 0xFFFFFFFF)
      {
        v9 = result;
      }

      *(v8 + 104) = v9;
    }
  }

  return result;
}

void __nw_socks5_connection_set_cancel_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

void nw_socks5_connection_start_on_queue(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = v4[4];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___ZL35nw_socks5_connection_start_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObject_block_invoke;
  v17[3] = &unk_1E6A3D868;
  v7 = v4;
  v18 = v7;
  nw_connection_set_read_close_handler(v6, v17);
  v8 = v4[4];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ZL35nw_socks5_connection_start_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObject_block_invoke_142;
  handler[3] = &unk_1E6A3D958;
  v9 = v7;
  v15 = v9;
  v10 = v5;
  v16 = v10;
  nw_connection_set_state_changed_handler(v8, handler);
  nw_connection_set_queue(v4[4], v9[5]);
  nw_connection_start(v4[4]);
  v11 = mach_continuous_time();
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v9[17] = v12;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v20 = "nw_socks5_connection_start_on_queue";
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s %{public}@ started connection", buf, 0x16u);
  }

  if (!v9[2])
  {
    objc_storeStrong(v9 + 2, a1);
  }
}

uint64_t nw_dispatch_data_copyout(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = a2;
  if (a1)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __nw_dispatch_data_copyout_block_invoke;
    applier[3] = &unk_1E6A34348;
    applier[5] = v6;
    applier[6] = a3;
    applier[4] = &v7;
    dispatch_data_apply(a1, applier);
    v3 = v8[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_148(uint64_t a1, uint64_t a2)
{
  if (strcmp((a2 + 16), "com.apple.networkrelay"))
  {
    return 1;
  }

  if (strcmp((a2 + 48), "CompanionProxyConfig"))
  {
    return 1;
  }

  v4 = *(a2 + 212);
  if ((v4 - 0x10000) < 0xFFFF0001)
  {
    return 1;
  }

  nw_parameters_update_with_data(*(*(*(a1 + 32) + 8) + 40), a2 + 216, v4);
  return 0;
}

void nw_parameters_update_with_data(void *a1, uint64_t a2, unint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v8, &type, &v20))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v15 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v23 = "nw_parameters_update_with_data";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_48:
          if (!v8)
          {
            goto LABEL_5;
          }

LABEL_49:
          free(v8);
          goto LABEL_5;
        }

        if (v15)
        {
          *buf = 136446210;
          v23 = "nw_parameters_update_with_data";
          v11 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_46;
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_parameters_update_with_data";
          v11 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_46;
        }
      }

      goto LABEL_47;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v11 = "%{public}s called with null parameters";
    goto LABEL_46;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null data", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v8, &type, &v20))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_parameters_update_with_data";
          v11 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v16 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v17 = os_log_type_enabled(v9, type);
      if (!v16)
      {
        if (v17)
        {
          *buf = 136446210;
          v23 = "nw_parameters_update_with_data";
          v11 = "%{public}s called with null data, no backtrace";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (v17)
      {
        *buf = 136446466;
        v23 = "nw_parameters_update_with_data";
        v24 = 2082;
        v25 = v16;
        v18 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_31:
        _os_log_impl(&dword_181A37000, v9, v10, v18, buf, 0x16u);
      }

LABEL_32:

      free(v16);
      if (!v8)
      {
        goto LABEL_5;
      }

      goto LABEL_49;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v11 = "%{public}s called with null data";
LABEL_46:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_47;
  }

  if (!a3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_parameters_update_with_data";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null data_len", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v8, &type, &v20))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v23 = "nw_parameters_update_with_data";
        v11 = "%{public}s called with null data_len";
        goto LABEL_46;
      }

LABEL_47:

      goto LABEL_48;
    }

    if (v20 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v23 = "nw_parameters_update_with_data";
        v11 = "%{public}s called with null data_len, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v16 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v19 = os_log_type_enabled(v9, type);
    if (!v16)
    {
      if (v19)
      {
        *buf = 136446210;
        v23 = "nw_parameters_update_with_data";
        v11 = "%{public}s called with null data_len, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v19)
    {
      *buf = 136446466;
      v23 = "nw_parameters_update_with_data";
      v24 = 2082;
      v25 = v16;
      v18 = "%{public}s called with null data_len, dumping backtrace:%{public}s";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  nw_path_parse_necp_parameters(v5, 0, 0, 0, 0, 0, 0, 0, 0, a2, a3);
LABEL_5:
}

void nw_shoes_tlv_parser(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 >= 3)
  {
    v6 = 0;
    v7 = a1;
    while (1)
    {
      v8 = a2 - v6;
      if ((a2 - v6) <= 2u)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        v12 = *a1;
        v17 = 136446978;
        v18 = "nw_shoes_tlv_parser";
        v19 = 1024;
        v20 = v8;
        v21 = 2048;
        v22 = 3;
        v23 = 1024;
        v24 = v12;
        v13 = "%{public}s Incomplete tlv buffer (%u < %zu) type %u";
        v14 = v11;
        v15 = 34;
        goto LABEL_11;
      }

      v9 = bswap32(*(v7 + 1)) >> 16;
      v10 = v9 + 3;
      if (v9 + 3 > v8)
      {
        break;
      }

      v5[2](v5, v7);
      v7 += v10;
      v6 += v10;
      if (a2 <= v6)
      {
        goto LABEL_13;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v16 = *a1;
    v17 = 136447234;
    v18 = "nw_shoes_tlv_parser";
    v19 = 1024;
    v20 = v8;
    v21 = 2048;
    v22 = 3;
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v16;
    v13 = "%{public}s Invalid tlv buffer (%u < %zu + %u) type %u";
    v14 = v11;
    v15 = 40;
LABEL_11:
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v13, &v17, v15);
LABEL_12:
  }

LABEL_13:
}

void ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_152(uint64_t a1, unsigned __int8 *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    if (v5 > 9)
    {
      v6 = "unknown";
    }

    else
    {
      v6 = off_1E6A2B458[v5];
    }

    v7 = *(a1 + 32);
    *buf = 136446722;
    v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v62 = 2114;
    v63 = v7;
    v64 = 2082;
    *v65 = v6;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ processing shoes tlv: %{public}s", buf, 0x20u);
  }

  v8 = *a2;
  if (v8 > 4)
  {
    switch(v8)
    {
      case 5u:
        v24 = *(a2 + 1);
        if (v24 == 768)
        {
          v25 = a2[3];
          v26 = *(a2 + 2);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 32);
            *buf = 136446978;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v28;
            v64 = 1024;
            *v65 = v25;
            *&v65[4] = 1024;
            *&v65[6] = __rev16(v26);
            _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ setting multipath on outer connection to service: %u/alternate_port: %u", buf, 0x22u);
          }

          nw_parameters_set_multipath_service(*(*(*(a1 + 48) + 8) + 40), v25);
          nw_endpoint_set_alternate_port(*(a1 + 40), v26);
          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v50 = *(a1 + 32);
          *buf = 136447234;
          v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v62 = 2114;
          v63 = v50;
          v64 = 2080;
          *v65 = "multipath";
          *&v65[8] = 1024;
          *&v65[10] = __rev16(v24);
          v66 = 2048;
          v67 = 3;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length for %s (%u != %zu)", buf, 0x30u);
        }

        break;
      case 6u:
        v45 = *(a2 + 1);
        if (v45 == 512)
        {
          v46 = *(a1 + 32);
          if (*(v46 + 161))
          {
            return;
          }

          *(v46 + 160) |= 0x80u;
          *(*(*(a1 + 56) + 8) + 24) = bswap32(*(a2 + 3)) >> 16;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(a1 + 32);
            v48 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 136446722;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v47;
            v64 = 1024;
            *v65 = v48;
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requested to create UDP association to inner connection port: %u", buf, 0x1Cu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v54 = *(a1 + 32);
            *buf = 136446978;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v54;
            v64 = 1024;
            *v65 = __rev16(v45);
            *&v65[4] = 2048;
            *&v65[6] = 1;
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length (%u < %zu)", buf, 0x26u);
          }
        }

        break;
      case 9u:
        v17 = bswap32(*(a2 + 1)) >> 16;
        if (v17 > 3)
        {
          v51 = *(a2 + 3);
          if (v51)
          {
            if (v51)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v56 = gLogObj;
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v57 = *(a1 + 32);
                *buf = 136446466;
                v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
                v62 = 2114;
                v63 = v57;
                _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requiring interface type wifi on outer connection", buf, 0x16u);
              }

              nw_parameters_set_required_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_wifi);
            }

            else if ((v51 & 2) != 0)
            {
              v58 = __nwlog_obj();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                v59 = *(a1 + 32);
                *buf = 136446466;
                v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
                v62 = 2114;
                v63 = v59;
                _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requiring interface type cellular on outer connection", buf, 0x16u);
              }

              nw_parameters_set_required_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_cellular);
            }

            else if ((v51 & 4) != 0)
            {
              v52 = __nwlog_obj();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v53 = *(a1 + 32);
                *buf = 136446466;
                v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
                v62 = 2114;
                v63 = v53;
                _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requiring interface type wired on outer connection", buf, 0x16u);
              }

              nw_parameters_set_required_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_wired);
            }
          }

          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 32);
          *buf = 136446978;
          v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v62 = 2114;
          v63 = v19;
          v64 = 1024;
          *v65 = v17;
          *&v65[4] = 2048;
          *&v65[6] = 4;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length (%u < %zu)", buf, 0x26u);
        }

        break;
      default:
        return;
    }

LABEL_89:

    return;
  }

  if (v8 == 1)
  {
    v20 = *(a2 + 1);
    if (v20 == 1024)
    {
      v21 = bswap32(*(a2 + 3));
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        *buf = 136446722;
        v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
        v62 = 2114;
        v63 = v23;
        v64 = 1024;
        *v65 = v21;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ applying traffic class %u to inner and outer connections", buf, 0x1Cu);
      }

      nw_parameters_set_traffic_class(*(*(*(a1 + 48) + 8) + 40), v21);
      nw_connection_reset_traffic_class(*(*(a1 + 32) + 32), v21);
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v49 = *(a1 + 32);
      *buf = 136446978;
      v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      v62 = 2114;
      v63 = v49;
      v64 = 1024;
      *v65 = __rev16(v20);
      *&v65[4] = 2048;
      *&v65[6] = 4;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length (%u != %zu)", buf, 0x26u);
    }

    goto LABEL_89;
  }

  if (v8 == 2)
  {
    v29 = *(a2 + 1);
    if (*(a2 + 1))
    {
      v30 = a2[3];
      if (v30)
      {
        if ((a2[3] & 0x80) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 32);
            *buf = 136446466;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v32;
            _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ prohibiting expensive networks on outer connection", buf, 0x16u);
          }

          nw_parameters_set_prohibit_expensive(*(*(*(a1 + 48) + 8) + 40), 1);
          v30 = a2[3];
        }

        if ((v30 & 0x20) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(a1 + 32);
            *buf = 136446466;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v34;
            _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ prohibiting wifi networks on outer connection", buf, 0x16u);
          }

          nw_parameters_prohibit_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_wifi);
          v30 = a2[3];
        }

        if ((v30 & 0x40) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *(a1 + 32);
            *buf = 136446466;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v36;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ prohibiting cellular networks on outer connection", buf, 0x16u);
          }

          nw_parameters_prohibit_interface_type(*(*(*(a1 + 48) + 8) + 40), nw_interface_type_cellular);
          v30 = a2[3];
        }

        if ((v30 & 0x10) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = *(a1 + 32);
            *buf = 136446466;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v38;
            _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ prohibiting constrained networks on outer connection", buf, 0x16u);
          }

          nw_parameters_set_prohibit_constrained(*(*(*(a1 + 48) + 8) + 40), 1);
          v30 = a2[3];
        }

        if (v30)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = *(a1 + 32);
            *buf = 136446466;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v40;
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requested to prefer wi-fi", buf, 0x16u);
          }

          *(*(a1 + 32) + 160) |= 0x40u;
          v30 = a2[3];
        }

        if ((v30 & 2) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v41 = gLogObj;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(a1 + 32);
            *buf = 136446466;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v42;
            _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requested to fetch connected endpoint", buf, 0x16u);
          }

          *(*(a1 + 32) + 161) |= 2u;
          v30 = a2[3];
        }

        if ((v30 & 4) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v43 = gLogObj;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = *(a1 + 32);
            *buf = 136446466;
            v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v62 = 2114;
            v63 = v44;
            _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ requested to fetch resolved endpoints", buf, 0x16u);
          }

          *(*(a1 + 32) + 161) |= 4u;
        }
      }

      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v55 = *(a1 + 32);
      *buf = 136446978;
      v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      v62 = 2114;
      v63 = v55;
      v64 = 1024;
      *v65 = __rev16(v29);
      *&v65[4] = 2048;
      *&v65[6] = 1;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Invalid TLV length (%u < %zu)", buf, 0x26u);
    }

    goto LABEL_89;
  }

  if (v8 == 3 && *(a2 + 1))
  {
    v9 = __rev16(*(a2 + 1));
    v10 = malloc_type_calloc(1uLL, v9 + 1, 0xA818887AuLL);
    if (!v10)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v62 = 2048;
      v63 = 1;
      v64 = 2048;
      *v65 = v9 + 1;
      v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

      if (__nwlog_should_abort(v14))
      {
        __break(1u);
        return;
      }

      free(v14);
    }

    memcpy(v10, a2 + 3, v9);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 136446722;
      v61 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      v62 = 2114;
      v63 = v16;
      v64 = 2082;
      *v65 = v10;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ setting bundle id on outer connection to %{public}s", buf, 0x20u);
    }

    nw_parameters_set_source_application_by_bundle_id_internal(*(*(*(a1 + 48) + 8) + 40), v10, 1);
    if (v10)
    {
      free(v10);
    }
  }
}

void nw_socks5_server_call_outer_connection_handler(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5[12];
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v7);
    }

    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_socks5_server_call_outer_connection_handler";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null server", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_socks5_server_call_outer_connection_handler";
        v13 = "%{public}s called with null server";
LABEL_18:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "nw_socks5_server_call_outer_connection_handler";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v15)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "nw_socks5_server_call_outer_connection_handler";
        v13 = "%{public}s called with null server, no backtrace";
        goto LABEL_18;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_socks5_server_call_outer_connection_handler";
        v13 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v10)
  {
    free(v10);
  }

LABEL_4:
}

void nw_socks5_connection_connect_outer_on_queue(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  secure_tcp = a3;
  if (!secure_tcp)
  {
    secure_tcp = nw_parameters_create_secure_tcp(&__block_literal_global_19409, &__block_literal_global_2);
    if (!secure_tcp)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      *v47 = 136446210;
      *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
      v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s nw_parameters_create_secure_tcp failed", v47, 12);

      buf[0] = 16;
      v40 = 0;
      if (__nwlog_fault(v24, buf, &v40))
      {
        if (buf[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = buf[0];
          if (os_log_type_enabled(v25, buf[0]))
          {
            *v47 = 136446210;
            *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nw_parameters_create_secure_tcp failed", v47, 0xCu);
          }
        }

        else if (v40 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (backtrace_string)
          {
            v30 = backtrace_string;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            v32 = buf[0];
            if (os_log_type_enabled(v31, buf[0]))
            {
              *v47 = 136446466;
              *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
              *&v47[12] = 2082;
              *&v47[14] = v30;
              _os_log_impl(&dword_181A37000, v31, v32, "%{public}s nw_parameters_create_secure_tcp failed, dumping backtrace:%{public}s", v47, 0x16u);
            }

            free(v30);
            if (!v24)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

          v25 = __nwlog_obj();
          v34 = buf[0];
          if (os_log_type_enabled(v25, buf[0]))
          {
            *v47 = 136446210;
            *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
            _os_log_impl(&dword_181A37000, v25, v34, "%{public}s nw_parameters_create_secure_tcp failed, no backtrace", v47, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v33 = buf[0];
          if (os_log_type_enabled(v25, buf[0]))
          {
            *v47 = 136446210;
            *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
            _os_log_impl(&dword_181A37000, v25, v33, "%{public}s nw_parameters_create_secure_tcp failed, backtrace limit exceeded", v47, 0xCu);
          }
        }
      }

      if (!v24)
      {
LABEL_28:
        v27 = [[NWConcrete_nw_error alloc] initWithDomain:12 code:?];
        nw_socks5_connection_cancel_on_queue(v5, v27);
        secure_tcp = v27;
        goto LABEL_29;
      }

LABEL_27:
      free(v24);
      goto LABEL_28;
    }
  }

  _nw_parameters_set_no_proxy(secure_tcp, (v5[160] >> 2) & 1);
  _nw_parameters_set_indefinite();
  v8 = nw_connection_create(v6, secure_tcp);
  v9 = *(v5 + 18);
  *(v5 + 18) = v8;

  if (!*(v5 + 18))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *v47 = 136446210;
    *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s nw_connection_create failed", v47, 12);

    buf[0] = 16;
    v40 = 0;
    if (__nwlog_fault(v16, buf, &v40))
    {
      if (buf[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = buf[0];
        if (os_log_type_enabled(v17, buf[0]))
        {
          *v47 = 136446210;
          *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s nw_connection_create failed", v47, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        v20 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v21 = buf[0];
        v22 = os_log_type_enabled(v17, buf[0]);
        if (v20)
        {
          if (v22)
          {
            *v47 = 136446466;
            *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
            *&v47[12] = 2082;
            *&v47[14] = v20;
            _os_log_impl(&dword_181A37000, v17, v21, "%{public}s nw_connection_create failed, dumping backtrace:%{public}s", v47, 0x16u);
          }

          free(v20);
          if (!v16)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        if (v22)
        {
          *v47 = 136446210;
          *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
          _os_log_impl(&dword_181A37000, v17, v21, "%{public}s nw_connection_create failed, no backtrace", v47, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v28 = buf[0];
        if (os_log_type_enabled(v17, buf[0]))
        {
          *v47 = 136446210;
          *&v47[4] = "nw_socks5_connection_connect_outer_on_queue";
          _os_log_impl(&dword_181A37000, v17, v28, "%{public}s nw_connection_create failed, backtrace limit exceeded", v47, 0xCu);
        }
      }
    }

    if (!v16)
    {
LABEL_14:
      v19 = [[NWConcrete_nw_error alloc] initWithDomain:12 code:?];
      nw_socks5_connection_cancel_on_queue(v5, v19);

      goto LABEL_29;
    }

LABEL_13:
    free(v16);
    goto LABEL_14;
  }

  *v47 = 0;
  *&v47[8] = v47;
  *&v47[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__16762;
  v49 = __Block_byref_object_dispose__16763;
  WeakRetained = objc_loadWeakRetained(v5 + 3);
  v10 = *(v5 + 18);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke;
  handler[3] = &unk_1E6A313C0;
  v11 = v5;
  v39 = v11;
  nw_connection_set_viability_changed_handler(v10, handler);
  v12 = *(v5 + 18);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_159;
  v35[3] = &unk_1E6A2DA90;
  v13 = v11;
  v36 = v13;
  v37 = v47;
  nw_connection_set_state_changed_handler(v12, v35);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v42 = "nw_socks5_connection_connect_outer_on_queue";
    v43 = 2114;
    v44 = v13;
    v45 = 2112;
    v46 = v6;
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ connecting to remote %@", buf, 0x20u);
  }

  nw_connection_set_queue(*(v5 + 18), v13[5]);
  nw_socks5_connection_increment_busy_on_queue(v13, *(*&v47[8] + 40));
  nw_connection_start(*(v5 + 18));

  _Block_object_dispose(v47, 8);
LABEL_29:
}

uint64_t nw_shoes_add_tlv(uint64_t a1, unsigned int a2, unsigned int a3, size_t __n, void *__src)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_shoes_add_tlv";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null buffer", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v13, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v23 = "nw_shoes_add_tlv";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null buffer", buf, 0xCu);
        }
      }

      else if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v17 = type;
        v18 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v23 = "nw_shoes_add_tlv";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (v18)
        {
          *buf = 136446210;
          v23 = "nw_shoes_add_tlv";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null buffer, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v23 = "nw_shoes_add_tlv";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null buffer, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_28:
    if (v13)
    {
      free(v13);
    }

    return 0;
  }

  v5 = __n + 3;
  v6 = (__n + 3);
  if (v6 > a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (a3 > 9)
      {
        v10 = "unknown";
      }

      else
      {
        v10 = off_1E6A2B458[a3];
      }

      *buf = 136446978;
      v23 = "nw_shoes_add_tlv";
      v24 = 2082;
      v25 = v10;
      v26 = 1024;
      v27 = a2;
      v28 = 1024;
      v29 = v6;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Insufficient buffer length to write tlv %{public}s (%u < %u)", buf, 0x22u);
    }

    return 0;
  }

  *a1 = a3;
  *(a1 + 1) = __rev16(__n);
  memcpy((a1 + 3), __src, __n);
  return v5;
}

void ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 136446466;
      v8 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ out connection no longer viable, cancelling", &v7, 0x16u);
    }

    *(*(a1 + 32) + 160) |= 1u;
    v5 = *(a1 + 32);
    v6 = [[NWConcrete_nw_error alloc] initWithDomain:50 code:?];
    nw_socks5_connection_cancel_on_queue(v5, v6);
  }
}

void ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_169(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  if (!v3)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  v4 = v3;
  v5 = v4[3];

  if ((v5 - 32) <= 0x39 && ((1 << (v5 - 32)) & 0x2000002326E0001) != 0 || v5 == 6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136446722;
      v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
      v28 = 2114;
      v29 = v9;
      v30 = 1024;
      v31 = v5;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ write in request reply error %{darwin.errno}d", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v11 = *(a1 + 32);
  *buf = 136446722;
  v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
  v28 = 2114;
  v29 = v11;
  v30 = 1024;
  v31 = v5;
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s %{public}@ write in request reply error %{darwin.errno}d", buf, 28);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v12, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        v16 = *(a1 + 32);
        *buf = 136446722;
        v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        v28 = 2114;
        v29 = v16;
        v30 = 1024;
        v31 = v5;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s %{public}@ write in request reply error %{darwin.errno}d", buf, 0x1Cu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v19)
        {
          v20 = *(a1 + 32);
          *buf = 136446978;
          v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
          v28 = 2114;
          v29 = v20;
          v30 = 1024;
          v31 = v5;
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ write in request reply error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v19)
      {
        v23 = *(a1 + 32);
        *buf = 136446722;
        v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        v28 = 2114;
        v29 = v23;
        v30 = 1024;
        v31 = v5;
        _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ write in request reply error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v14, type))
      {
        v22 = *(a1 + 32);
        *buf = 136446722;
        v27 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        v28 = 2114;
        v29 = v22;
        v30 = 1024;
        v31 = v5;
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s %{public}@ write in request reply error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
      }
    }
  }

LABEL_32:
  if (v12)
  {
    free(v12);
  }

LABEL_13:
  nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
  (*(*(a1 + 48) + 16))();
LABEL_15:
}

void ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_160(uint64_t a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3 != 255)
  {
    if (!a2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_26:

        nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
        return;
      }

      v20 = *(a1 + 32);
      *buf = 136446466;
      v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v47 = 2114;
      v48 = v20;
      v21 = "%{public}s %{public}@ failed to write reply";
LABEL_25:
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
      goto LABEL_26;
    }

    if (v3 != 105 && v3 != 8)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v24 = *(a1 + 32);
      *buf = 136446466;
      v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v47 = 2114;
      v48 = v24;
      v21 = "%{public}s %{public}@ wrote reply but ended in bad state";
      goto LABEL_25;
    }

    *(v2 + 56) = -56;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 136446466;
      v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v47 = 2114;
      v48 = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ successfully wrote reply", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 160);
    if ((v9 & 0xA0) != 0x20)
    {
      goto LABEL_53;
    }

    v10 = *(v8 + 32);
    if (nw_protocol_setup_tcp_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
    }

    v11 = g_tcp_definition;
    v12 = nw_connection_copy_protocol_metadata(v10, v11);

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = v13;
    if (!v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        *buf = 136446466;
        v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
        v47 = 2114;
        v48 = v25;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ metadata for inner connection is nil -- unable to setting TCP no delay", buf, 0x16u);
      }

      goto LABEL_48;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      *buf = 136446466;
      v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v47 = 2114;
      v48 = v15;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}@ setting TCP no delay on inner connection", buf, 0x16u);
    }

    if (!nw_tcp_set_no_delay(v12, 1))
    {
LABEL_48:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = *(a1 + 32);
        *buf = 136446466;
        v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
        v47 = 2114;
        v48 = v39;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_INFO, "%{public}s %{public}@ adding UDP framer", buf, 0x16u);
      }

      if (nw_shoes_copy_udp_framer_definition::onceToken != -1)
      {
        dispatch_once(&nw_shoes_copy_udp_framer_definition::onceToken, &__block_literal_global_27124);
      }

      v40 = nw_shoes_copy_udp_framer_definition::definition;
      v41 = *(*(a1 + 32) + 32);
      options = nw_framer_create_options(v40);
      nw_connection_append_and_start_application_protocol(v41, options);

      v8 = *(a1 + 32);
      v9 = *(v8 + 160);
LABEL_53:
      *(v8 + 160) = v9 | 0x10;
      nw_socks5_connection_outer_connection_read_on_queue(*(a1 + 32));
      nw_socks5_connection_inner_connection_read_on_queue(*(a1 + 32));
      return;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v18 = v17;
    if (v16 == 22)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        *buf = 136446722;
        v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
        v47 = 2114;
        v48 = v19;
        v49 = 1024;
        v50 = 22;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d", buf, 0x1Cu);
      }

      goto LABEL_48;
    }

    v26 = *(a1 + 32);
    *buf = 136446722;
    v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
    v47 = 2114;
    v48 = v26;
    v49 = 1024;
    v50 = v16;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d", buf, 28);

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v27, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          v30 = *(a1 + 32);
          *buf = 136446722;
          v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v47 = 2114;
          v48 = v30;
          v49 = 1024;
          v50 = v16;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v32 = type;
        v33 = os_log_type_enabled(v28, type);
        if (backtrace_string)
        {
          if (v33)
          {
            v34 = *(a1 + 32);
            *buf = 136446978;
            v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
            v47 = 2114;
            v48 = v34;
            v49 = 1024;
            v50 = v16;
            v51 = 2082;
            v52 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v32, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_46;
        }

        if (v33)
        {
          v37 = *(a1 + 32);
          *buf = 136446722;
          v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v47 = 2114;
          v48 = v37;
          v49 = 1024;
          v50 = v16;
          _os_log_impl(&dword_181A37000, v28, v32, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v35 = type;
        if (os_log_type_enabled(v28, type))
        {
          v36 = *(a1 + 32);
          *buf = 136446722;
          v46 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v47 = 2114;
          v48 = v36;
          v49 = 1024;
          v50 = v16;
          _os_log_impl(&dword_181A37000, v28, v35, "%{public}s %{public}@ error setting TCP no delay on inner connection %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_46:
    if (v27)
    {
      free(v27);
    }

    goto LABEL_48;
  }
}

void ___ZL35nw_socks5_connection_start_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObject_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3 != 200)
  {
    if (v3 == 255)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 32);
    v11 = 136446466;
    v12 = "nw_socks5_connection_start_on_queue_block_invoke";
    v13 = 2114;
    v14 = v5;
    v6 = "%{public}s %{public}@ in connection read close before proxy connection ready, cancelling";
    goto LABEL_11;
  }

  v7 = *(v2 + 160);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v7 < 0)
  {
    if (!v8)
    {
LABEL_12:

      nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
      return;
    }

    v10 = *(a1 + 32);
    v11 = 136446466;
    v12 = "nw_socks5_connection_start_on_queue_block_invoke";
    v13 = 2114;
    v14 = v10;
    v6 = "%{public}s %{public}@ in connection read close for associated UDP connection, cancelling";
LABEL_11:
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, v6, &v11, 0x16u);
    goto LABEL_12;
  }

  if (v8)
  {
    v9 = *(a1 + 32);
    v11 = 136446466;
    v12 = "nw_socks5_connection_start_on_queue_block_invoke";
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ ignoring in connection read close event", &v11, 0x16u);
  }
}

void ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  if (*(*(a1 + 32) + 56) == 255)
  {
    goto LABEL_15;
  }

  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 136446466;
      v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}@ out connection write close done", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v4 = v3;
  v5 = v4[3];

  if ((v5 - 6) > 0x3B || ((1 << (v5 - 6)) & 0x8C9B80004000001) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = *(a1 + 32);
    *buf = 136446722;
    v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v28 = 2114;
    v29 = v12;
    v30 = 1024;
    v31 = v5;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s %{public}@ out connection write close error %{darwin.errno}d", buf, 28);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v13, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          v16 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v28 = 2114;
          v29 = v16;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s %{public}@ out connection write close error %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v18 = type;
        v19 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v19)
          {
            v20 = *(a1 + 32);
            *buf = 136446978;
            v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v28 = 2114;
            v29 = v20;
            v30 = 1024;
            v31 = v5;
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ out connection write close error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (v19)
        {
          v23 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v28 = 2114;
          v29 = v23;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ out connection write close error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          v22 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v28 = 2114;
          v29 = v22;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s %{public}@ out connection write close error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_32:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136446722;
    v27 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v28 = 2114;
    v29 = v8;
    v30 = 1024;
    v31 = v5;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ out connection write close error %{darwin.errno}d", buf, 0x1Cu);
  }

LABEL_12:

LABEL_13:
  *(*(a1 + 32) + 160) |= 1u;
  v10 = *(a1 + 32);
  if ((~v10[160] & 3) == 0)
  {
    nw_socks5_connection_cancel_on_queue(v10, v3);
  }

LABEL_15:
}

uint64_t sub_181F2AE8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F2AEAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 152) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NECPKernelPolicyRoutingResultParameter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NECPKernelPolicyRoutingResultParameter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

_DWORD *sub_181F2AF64@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_181F2AF74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for SystemUUID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemUUID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_181F2AFEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F2B00C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DefaultManyToManyProtocol.MultiplexedFlowIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7Network16GlobalStatisticsVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unsigned __int8 *sub_181F2B104@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

BOOL sub_181F2B1B4(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_181F2B1E4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_181F2B210@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

double sub_181F2B310@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 280);

  return result;
}

uint64_t sub_181F2B340()
{

  return swift_deallocObject();
}

uint64_t sub_181F2B388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

void sub_181F2B3D0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  nw_ws_options_set_auto_reply_ping(*(v3 + 16), v2);
}

uint64_t sub_181F2B420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

void sub_181F2B468(size_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  nw_ws_options_set_maximum_message_size(*(v3 + 16), v2);
}

uint64_t sub_181F2B4B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

void sub_181F2B500(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  nw_ws_options_set_skip_handshake(*(v3 + 16), v2);
}

uint64_t sub_181F2B550@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 42);
  *a2 = *(v3 + 40);
  *(a2 + 2) = v5;
  return result;
}

void sub_181F2B5A0(__int16 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_181F4C1DC(&v2);
}

uint64_t sub_181F2B614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_181F2B698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_182AD3768();
}

uint64_t sub_181F2B71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_181F2B7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F2B820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_181F2B8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NetworkBrowser.State(255, *(v4 + 32), *(v4 + 48), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD3728();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_181F2B9C8()
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD3728();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2BB20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2BB78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2BBB8()
{

  return swift_deallocObject();
}

uint64_t sub_181F2BBF0()
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD36C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2BD08()
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD36C8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F2BDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NetworkBrowser.State(255, *(v4 + 16), *(v4 + 32), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD36C8();
  (*(*(v5 - 8) + 8))(v4 + ((*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_181F2BEB8()
{
  swift_unknownObjectRelease();
  sub_181F5DEC4(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_181F2BF0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2BF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Browser3.Event(255, *(v4 + 16), *(v4 + 24), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD36C8();
  (*(*(v5 - 8) + 8))(v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_181F2C008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Browser3.Event(255, *(v4 + 16), *(v4 + 24), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD36C8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);

  (*(v6 + 8))(v4 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_181F2C100()
{

  return swift_deallocObject();
}

double sub_181F2C170@<D0>(_OWORD *a1@<X8>)
{
  ProtocolStack.transport.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_181F2C1AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 32);
  v6 = *(*a2 + 40);
  *(v4 + 32) = *a1;
  *(v4 + 40) = v3;
  sub_181AC8268(v2, v3);

  return sub_181A5301C(v5, v6);
}

double sub_181F2C1FC@<D0>(_OWORD *a1@<X8>)
{
  ProtocolStack.link.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_181F2C238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 64);
  v6 = *(*a2 + 72);
  *(v4 + 64) = *a1;
  *(v4 + 72) = v3;
  sub_181AB78DC(v2);

  return sub_181AC3890(v5, v6);
}

uint64_t sub_181F2C2B4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2C334()
{
  if ((v0[1] & 0x8000000000000000) == 0)
  {
    return MEMORY[0x1865DB070](*v0);
  }

  return result;
}

uint64_t sub_181F2C370()
{
  result = *v0;
  if (*v0)
  {
    return MEMORY[0x1865DB070]();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network20OutputHandlerLinkageV01_bC0O_0(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_181F2C3DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F2C414()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F2C478()
{
  swift_unknownObjectRelease();

  sub_181C1F2E4(*(v0 + 40), *(v0 + 48));
  sub_181C1F2E4(*(v0 + 56), *(v0 + 64));
  sub_181C1F2E4(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_181F2C4E4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2C558()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  _Block_release(*(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_181F2C5B8()
{
  v1 = *(type metadata accessor for NetworkStorage.AltSvcEntry(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_182AD21E8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_181F2C6F4()
{
  v1 = v0[3];
  if (v1 >> 60 != 15)
  {
    sub_181C1F2E4(v0[2], v1);
    sub_181C1F2E4(v0[4], v0[5]);
    sub_181C1F2E4(v0[6], v0[7]);
  }

  return swift_deallocObject();
}

uint64_t sub_181F2C754()
{

  return swift_deallocObject();
}

uint64_t sub_181F2C7E4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2C82C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_181F2C884@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_181F2C8DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_181F2C934@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_181F2C98C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result & 1;
  return result;
}

uint64_t sub_181F2CB3C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2CB84()
{

  return swift_deallocObject();
}

uint64_t sub_181F2CBCC()
{

  return swift_deallocObject();
}

uint64_t sub_181F2CC04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F2CCC0()
{
  if (*v0)
  {
    return 0x6E69616D6F64;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_181F2CCF8()
{

  return swift_deallocObject();
}

uint64_t sub_181F2CD30()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_181F2CDB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00, &unk_182AE57C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_181F2CE70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00, &unk_182AE57C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F2CF20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NWEndpoint(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_181F2CFCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NWEndpoint(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F2D07C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2D0F8()
{

  return swift_deallocObject();
}

uint64_t sub_181F2D138(uint64_t a1, uint64_t a2)
{

  return sub_181FABC0C(a1, a2);
}

uint64_t sub_181F2D190()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_181C1F2E4(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_181F2D258@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.alternatives.getter();
  *a1 = result;
  return result;
}

void *sub_181F2D378@<X0>(_BYTE *a1@<X8>)
{
  result = NWEndpoint.remoteInterfaceType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_181F2D418@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.publicKeys.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F2D448@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.deviceName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F2D48C@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.deviceModel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F2D4D8@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.deviceID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F2D51C@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.contactID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F2D560@<X0>(uint64_t *a1@<X8>)
{
  result = NWEndpoint.applicationService.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_181F2D604@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_182AE8230;
  return result;
}

uint64_t sub_181F2D614(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_181F49B44(*a1, v2);
  return NWEndpoint.pairingData.setter(v1, v2);
}

uint64_t sub_181F2D660()
{
  sub_181C1F2E4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_181F2D698()
{

  return swift_deallocObject();
}

_BYTE *sub_181F2D7A0(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFE;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D7DC(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 2) != 0)
    {
      return result;
    }

    v3 = v2 | 2;
  }

  else
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFD;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D818(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 4) != 0)
    {
      return result;
    }

    v3 = v2 | 4;
  }

  else
  {
    if ((v2 & 4) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFB;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D854(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFF7;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D890(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x10) != 0)
    {
      return result;
    }

    v3 = v2 | 0x10;
  }

  else
  {
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFEF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D8CC(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x20) != 0)
    {
      return result;
    }

    v3 = v2 | 0x20;
  }

  else
  {
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFDF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D908(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x40) != 0)
    {
      return result;
    }

    v3 = v2 | 0x40;
  }

  else
  {
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFBF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D944(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x80) != 0)
    {
      return result;
    }

    v3 = v2 | 0x80;
  }

  else
  {
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFF7F;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D970(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x100) != 0)
    {
      return result;
    }

    v3 = v2 | 0x100;
  }

  else
  {
    if ((v2 & 0x100) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFEFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D9AC(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x200) != 0)
    {
      return result;
    }

    v3 = v2 | 0x200;
  }

  else
  {
    if ((v2 & 0x200) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFDFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2D9E8(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x400) != 0)
    {
      return result;
    }

    v3 = v2 | 0x400;
  }

  else
  {
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFBFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DA24(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x800) != 0)
    {
      return result;
    }

    v3 = v2 | 0x800;
  }

  else
  {
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFF7FF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DA60(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x2000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x2000;
  }

  else
  {
    if ((v2 & 0x2000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFDFFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DA9C(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x4000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x4000;
  }

  else
  {
    if ((v2 & 0x4000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFBFFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DAD8(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x8000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x8000;
  }

  else
  {
    if ((v2 & 0x8000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFF7FFF;
  }

  *(a2 + 44) = v3;
  return result;
}

_BYTE *sub_181F2DB14(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (*result == 1)
  {
    if ((v2 & 0x10000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x10000;
  }

  else
  {
    if ((v2 & 0x10000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFEFFFF;
  }

  *(a2 + 44) = v3;
  return result;
}

uint64_t sub_181F2DFE4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2E01C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_181FBA13C();
  *a1 = result;
  return result;
}

uint64_t sub_181F2E048(void *a1)
{

  sub_181FBC07C(v1);
}

BOOL sub_181F2E08C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_quic_get_stream_is_unidirectional(*(*a1 + 16));
  *a2 = result;
  return result;
}

BOOL sub_181F2E0D0@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_quic_get_stream_is_datagram(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F2E114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_quic_get_idle_timeout(*(*a1 + 16));
  *a2 = result;
  return result;
}

void sub_181F2E148(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 >= 0xFFFFFFFFLL)
  {
    v2 = 0xFFFFFFFFLL;
  }

  nw_quic_set_idle_timeout(*(*a2 + 16), v2 & ~(v2 >> 63));
}

uint64_t sub_181F2E16C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_quic_get_max_udp_payload_size(*(*a1 + 16));
  *a2 = result;
  return result;
}

void sub_181F2E1A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 >= 0xFFFF)
  {
    v2 = 0xFFFFLL;
  }

  nw_quic_set_max_udp_payload_size(*(*a2 + 16), v2 & ~(v2 >> 63));
}

uint64_t sub_181F2E2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_quic_get_max_datagram_frame_size(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F2E344@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_quic_get_initial_packet_size(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F2E3AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nw_quic_get_stream_application_error(*(*a1 + 16));
  *a2 = result;
  return result;
}

void sub_181F2E490(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v3 + 24) = v2;
  nw_quic_stream_set_is_unidirectional(*(v3 + 16), v2);
}

uint64_t sub_181F2E4A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nw_quic_stream_get_application_error(*(*a1 + 16));
  *a2 = result;
  return result;
}

void sub_181F2E4FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(*a2 + 24) = *a1;
  if (v2 >= 0xFFFFFFFFLL)
  {
    v2 = 0xFFFFFFFFLL;
  }

  nw_quic_connection_set_idle_timeout(*(v3 + 16), v2 & ~(v2 >> 63));
}

void sub_181F2E534(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(*a2 + 32) = *a1;
  if (v2 >= 0xFFFF)
  {
    v2 = 0xFFFFLL;
  }

  nw_quic_connection_set_max_udp_payload_size(*(v3 + 16), v2 & ~(v2 >> 63));
}

void sub_181F2E56C(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  *(v4 + 40) = *result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_data(*(v4 + 16), v3);
  }
}

void sub_181F2E59C(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  *(v4 + 48) = *result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(*(v4 + 16), v3);
  }
}

void sub_181F2E5CC(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  *(v4 + 56) = *result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_bidirectional_local(*(v4 + 16), v3);
  }
}

void sub_181F2E5FC(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  *(v4 + 64) = *result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_unidirectional(*(v4 + 16), v3);
  }
}

void sub_181F2E62C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v4 + 72) = *a1;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_streams_bidirectional(*(v4 + 16), v3);
  }
}

void sub_181F2E65C(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  *(v4 + 80) = *result;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_streams_unidirectional(*(v4 + 16), v3);
  }
}

uint64_t sub_181F2E72C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F2E768()
{

  return swift_deallocObject();
}

uint64_t sub_181F2E7A0()
{

  return swift_deallocObject();
}

uint64_t sub_181F2E7D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_181F2E844()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for FrameArray;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F2E87C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2E8B4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2EA8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BrowserProviderFactories.ApplicationService(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_181F2EAD8()
{

  sub_181C1F2E4(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_181F2EB20()
{

  sub_181C1F2E4(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_181F2EB68()
{

  sub_181C1F2E4(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_181F2EBB0()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_181C1F2E4(*(v0 + 40), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_181F2EC08()
{

  return swift_deallocObject();
}

uint64_t sub_181F2EC54()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2ED18()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F2EDF4()
{

  return swift_deallocObject();
}

uint64_t sub_181F2EE40()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970, &qword_182AEE658);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_181F2EF9C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2EFD4()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970, &qword_182AEE658);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_181F2F134()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F2F16C()
{

  return swift_deallocObject();
}

uint64_t sub_181F2F1F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  *a2 = v3;
  a2[1] = v2;
  return sub_181E6550C(v3, v2);
}

uint64_t sub_181F2F204(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  sub_181E6550C(*a1, v4);
  result = sub_181AB612C(v5, v6);
  *(a2 + 56) = v3;
  *(a2 + 64) = v4;
  return result;
}

uint64_t sub_181F2F2A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nw_listener_get_new_connection_limit(*(*a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_181F2F36C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return HTTPField.value.setter(v1, v2);
}

uint64_t sub_181F2F3AC()
{

  return swift_deallocObject();
}

uint64_t sub_181F2F404()
{

  return swift_deallocObject();
}

uint64_t sub_181F30580()
{

  return swift_deallocObject();
}

uint64_t sub_181F305C8()
{

  return swift_deallocObject();
}

ValueMetadata *sub_181F306B0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for StreamSendBuffer;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F306E8()
{

  return swift_deallocObject();
}

uint64_t sub_181F30730()
{

  return swift_deallocObject();
}

void *sub_181F30C18()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for FrameArray;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F30CD0()
{

  return swift_deallocObject();
}

uint64_t sub_181F30D18()
{

  return swift_deallocObject();
}

uint64_t sub_181F30D50()
{

  return swift_deallocObject();
}

uint64_t sub_181F31A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_182AD23C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F31B2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_182AD23C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F31BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_182AD23C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D28, &qword_182AF0E30);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_181F31D00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_182AD23C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D28, &qword_182AF0E30);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_181F31E30(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_182AD23C8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D48, &unk_182B06AD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D40, &unk_182AF0E40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_181F31FB4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_182AD23C8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D48, &unk_182B06AD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D40, &unk_182AF0E40);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_181F32138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_182AD23C8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_181F321B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_182AD23C8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_181F3222C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_182AD23C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F322D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_182AD23C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_181F32390(uint64_t result, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_181F68EA8(result, a2, a3);
  }
}

uint64_t sub_181F32428()
{

  return swift_deallocObject();
}

uint64_t sub_181F32470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED8, &qword_182AF1B00);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F324E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED8, &qword_182AF1B00);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_181F32564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8, &qword_182AF1AE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_181F3262C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8, &qword_182AF1AE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_181F326F0()
{

  return swift_deallocObject();
}

void sub_181F3273C(uint64_t a1, unint64_t a2)
{
  v4 = sub_182AD2188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_181C1F2E4(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_181AC1BE8(v9, 0);
      v12 = sub_182AD20B8();
      sub_181C1F2E4(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_181F328BC()
{

  return swift_deallocObject();
}

uint64_t sub_181F328F4()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_181F329C4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16);
}

uint64_t sub_181F32AB8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F32AF4()
{

  return swift_deallocObject();
}

uint64_t sub_181F32B38@<X0>(char *a1@<X8>)
{
  result = nw_ip_options_get_version();
  v3 = 2 * (result == 6);
  if (result == 4)
  {
    v3 = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_181F32B98@<X0>(_BYTE *a1@<X8>)
{
  result = nw_ip_options_get_hop_limit();
  *a1 = result;
  return result;
}

uint64_t sub_181F32BDC@<X0>(_BYTE *a1@<X8>)
{
  result = nw_ip_options_get_use_minimum_mtu();
  *a1 = result;
  return result;
}

uint64_t sub_181F32C20@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = nw_ip_options_get_fragmentation_value(*(*a1 + 16));
  *a2 = result == 1;
  return result;
}

uint64_t sub_181F32C6C@<X0>(_BYTE *a1@<X8>)
{
  result = nw_ip_options_get_calculate_receive_time();
  *a1 = result;
  return result;
}

uint64_t sub_181F32CB0@<X0>(char *a1@<X8>)
{
  result = nw_ip_options_get_local_address_preference();
  v3 = 2 * (result == 2);
  if (result == 1)
  {
    v3 = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_181F32D08@<X0>(_BYTE *a2@<X8>)
{
  result = nw_ip_options_get_disable_multicast_loopback();
  *a2 = result;
  return result;
}

void *sub_181F32D4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_182092C58(&v3);
  *a1 = v3;
  return result;
}

void *sub_181F32D8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_182092D38(&v3);
  *a1 = v3;
  return result;
}

void sub_181F32DCC(_BYTE *x8_0@<X8>)
{

  sub_182093930(v3, x8_0);
}

uint64_t sub_181F32F00()
{

  return swift_deallocObject();
}

nw_protocol_metadata_t sub_181F32F38@<X0>(nw_protocol_metadata_t *a1@<X8>)
{
  result = Connection7<>.streamApplicationErrorCode.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F32FC4()
{

  return swift_deallocObject();
}

uint64_t sub_181F33038()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F33148()
{
  v1 = type metadata accessor for NWPath(0);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 44);
  v4 = type metadata accessor for NWEndpoint(0);
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 2:

          break;
        case 3:
          v10 = sub_182AD2058();
          (*(*(v10 - 8) + 8))(v3, v10);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  v6 = v0 + v2 + *(v1 + 48);
  if (!v5(v6, 1, v4))
  {
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
      }
    }

    else
    {
      switch(v9)
      {
        case 2:

          break;
        case 3:
          v11 = sub_182AD2058();
          (*(*(v11 - 8) + 8))(v6, v11);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F334C8@<X0>(uint64_t *a1@<X8>)
{
  result = NetworkListener.newConnectionLimit.getter();
  *a1 = result;
  return result;
}

__n128 sub_181F33528(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_181F33534@<Q0>(uint64_t a1@<X8>)
{
  NetworkListener.service.getter(v5);
  v2 = v6[0];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 91) = *(v6 + 11);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_181F3363C()
{

  return swift_deallocObject();
}

uint64_t sub_181F33714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Listener8.Event(255, *(v4 + 16), *(v4 + 24), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD36C8();
  (*(*(v5 - 8) + 8))(v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_181F337E4()
{

  return swift_deallocObject();
}

uint64_t sub_181F339CC()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 184);
  v3 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  MEMORY[0x1865DB070](qword_182AF5540[v3]);
  return sub_182AD4558();
}

uint64_t sub_181F33A68(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 185);
  MEMORY[0x1865DB070](*(*v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  return MEMORY[0x1865DB070](qword_182AF5540[v3]);
}

uint64_t sub_181F33AE4(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  v3 = *(v2 + 184);
  v4 = *(v2 + 185);
  MEMORY[0x1865DB070](*(v2 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v3]);
  MEMORY[0x1865DB070](qword_182AF5540[v4]);
  return sub_182AD4558();
}

uint64_t sub_181F33B84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F33BBC()
{

  return swift_deallocObject();
}

uint64_t sub_181F33C04()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F33C3C()
{

  return swift_deallocObject();
}

ValueMetadata *sub_181F33CB0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for Frame;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F33CE8()
{

  return swift_deallocObject();
}

uint64_t sub_181F33D30()
{

  return swift_deallocObject();
}

void *sub_181F33E98@<X0>(_BYTE *a1@<X8>)
{
  result = NWActivity.reportingStrategy.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_181F33EE4(void *a1)
{

  sub_181C58A34(v1);
}

void *sub_181F33F68(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_181F34060(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_182AD2258();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for NWActorID(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839810, &qword_182AED938);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}