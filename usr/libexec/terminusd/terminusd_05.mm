id sub_10006EEAC(uint64_t a1)
{
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    _NRLogWithArgs(qword_100228FC8, 1, "%s%.30s:%-4d Connection for service %@ got READ_CLOSE event", "", "[NRDTestServer handleNewConnection:forPeerEndpoint:forService:forServiceConnector:]_block_invoke_3", 436, *(a1 + 32));
  }

  nw_connection_cancel(*(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);

  return [v3 removeObjectForKey:v4];
}

uint64_t sub_10006EFA0(uint64_t a1)
{
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    return _NRLogWithArgs(qword_100228FC8, 1, "%s%.30s:%-4d Cancelled connection for key: %@", "", "[NRDTestServer handleNewConnection:forPeerEndpoint:forService:forServiceConnector:]_block_invoke_2", 424, *(a1 + 32));
  }

  return result;
}

void sub_10006F064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_10006F49C;
    completion[3] = &unk_1001FAD68;
    v8 = v5;
    v9 = v6;
    v10 = a1;
    nw_connection_receive(v8, 1u, 0xFFFFFFFF, completion);
  }
}

void sub_10006F130(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (v5)
  {
LABEL_7:
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_10006F358;
    completion[3] = &unk_1001FAD90;
    v5 = v5;
    v23 = v5;
    v24 = a1;
    v25 = v6;
    nw_connection_send(v25, v5, _nw_content_context_default_stream, 0, completion);

LABEL_8:
    return;
  }

  v7 = malloc_type_malloc(0x40000uLL, 0x19B866EBuLL);
  if (v7)
  {
    v8 = 0;
    v9 = xmmword_100196410;
    v10.i64[0] = 0x1010101010101010;
    v10.i64[1] = 0x1010101010101010;
    v11.i64[0] = 0x2020202020202020;
    v11.i64[1] = 0x2020202020202020;
    do
    {
      v12 = &v7[v8];
      *v12 = v9;
      v12[1] = vaddq_s8(v9, v10);
      v8 += 32;
      v9 = vaddq_s8(v9, v11);
    }

    while (v8 != 0x40000);
    v13 = v7;
    v5 = dispatch_data_create(v7, 0x40000uLL, *(a1 + 16), 0);
    free(v13);
    goto LABEL_7;
  }

  v14 = sub_10006D4F8();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v16 = sub_10006D4F8();
    _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "[NRDTestServer sendTokenOnConnection:connection:]", 520);
  }

  v17 = _os_log_pack_size();
  v18 = __error();
  v19 = _os_log_pack_fill(completion - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17, *v18, &_mh_execute_header, "%{public}s strict allocator failed");
  *v19 = 136446210;
  *(v19 + 4) = "[NRDTestServer sendTokenOnConnection:connection:]";
  sub_10006D4F8();
  v20 = _NRLogAbortWithPack();
  sub_10006F358(v20, v21);
}

void sub_10006F358(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && (error_code = nw_error_get_error_code(v3), error_code))
  {
    v6 = error_code;
    if (strerror_r(error_code, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d Failed to write data: %@: [%d] %s", "", "[NRDTestServer sendTokenOnConnection:connection:]_block_invoke", 535, *(a1 + 32), v6, __strerrbuf);
    }
  }

  else
  {
    sub_10006F130(*(a1 + 40), *(a1 + 32), *(a1 + 48));
  }
}

void sub_10006F49C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    error_code = nw_error_get_error_code(v10);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    error_code = 0;
    if (!v8)
    {
LABEL_14:
      if (strerror_r(error_code, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d Failed to read data: [%d] %s", "", "[NRDTestServer setReadHandlerOnConnection:forService:]_block_invoke", 452, error_code, __strerrbuf);
      }

      nw_connection_cancel(*(a1 + 32));
      goto LABEL_46;
    }
  }

  if (error_code)
  {
    goto LABEL_14;
  }

  v13 = v8;
  if ([*(a1 + 40) hasPrefix:@"Terminus ping service"])
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v14 = qword_100228FC8;
      size = dispatch_data_get_size(v13);
      _NRLogWithArgs(v14, 2, "%s%.30s:%-4d Service ping server echoing %zu bytes on %@", "", "[NRDTestServer setReadHandlerOnConnection:forService:]_block_invoke", 460, size, *(a1 + 40));
    }

    v16 = *(a1 + 32);
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_10006FA50;
    completion[3] = &unk_1001FAD40;
    v37 = 0;
    v33 = v13;
    v34 = *(a1 + 40);
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    v35 = v17;
    v36 = v18;
    nw_connection_send(v16, v33, _nw_content_context_default_stream, 0, completion);
  }

  else if ([*(a1 + 40) hasPrefix:@"Terminus read write service"])
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      v19 = qword_100228FC8;
      v20 = dispatch_data_get_size(v13);
      _NRLogWithArgs(v19, 2, "%s%.30s:%-4d Read-write server echoing %zu bytes on %@", "", "[NRDTestServer setReadHandlerOnConnection:forService:]_block_invoke", 481, v20, *(a1 + 40));
    }

    v21 = *(a1 + 32);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10006FBA4;
    v26[3] = &unk_1001FAD40;
    v31 = 0;
    v27 = v13;
    v28 = *(a1 + 40);
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    v29 = v22;
    v30 = v23;
    nw_connection_send(v21, v27, _nw_content_context_default_stream, 0, v26);
  }

  else
  {
    if ([*(a1 + 40) hasPrefix:@"Terminus download service"])
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        v24 = qword_100228FC8;
        v25 = dispatch_data_get_size(v13);
        _NRLogWithArgs(v24, 1, "%s%.30s:%-4d Download server received %zu bytes on %@", "", "[NRDTestServer setReadHandlerOnConnection:forService:]_block_invoke", 501, v25, *(a1 + 40));
      }
    }

    else
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d No service to write into for connection: %@, %@", "", "[NRDTestServer setReadHandlerOnConnection:forService:]_block_invoke", 505, *(a1 + 32), *(a1 + 40));
      }
    }

    sub_10006F064(*(a1 + 48), *(a1 + 32), *(a1 + 40));
  }

LABEL_46:
}

void sub_10006FA50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && nw_error_get_error_code(v3))
  {
    v5 = *(a1 + 64);
    if (strerror_r(*(a1 + 64), __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d Failed to write data: %@ on %@: [%d] %s", "", "[NRDTestServer setReadHandlerOnConnection:forService:]_block_invoke_2", 472, *(a1 + 32), *(a1 + 40), v5, __strerrbuf);
    }

    nw_connection_cancel(*(a1 + 48));
  }

  else
  {
    sub_10006F064(*(a1 + 56), *(a1 + 48), *(a1 + 40));
  }
}

void sub_10006FBA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && nw_error_get_error_code(v3))
  {
    v5 = *(a1 + 64);
    if (strerror_r(*(a1 + 64), __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d Failed to write data: %@ on %@: [%d] %s", "", "[NRDTestServer setReadHandlerOnConnection:forService:]_block_invoke_3", 492, *(a1 + 32), *(a1 + 40), v5, __strerrbuf);
    }

    nw_connection_cancel(*(a1 + 48));
  }

  else
  {
    sub_10006F064(*(a1 + 56), *(a1 + 48), *(a1 + 40));
  }
}

void sub_10006FCF8(id a1, OS_nw_protocol_options *a2)
{
  options = a2;
  if (nw_protocol_options_is_quic(options))
  {
    nw_quic_set_idle_timeout(options, 0);
  }
}

void sub_10006FD44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    _NRLogWithArgs(qword_100228FC8, 1, "%s%.30s:%-4d Received service connection request: %s(%@)", "", "[NRDTestServer createServiceConnector:]_block_invoke", 293, a3, v5);
  }

  v8 = v5;
  v9 = [[NSString alloc] initWithUTF8String:a3];
  v10 = *(a1 + 32);
  v6 = v9;
  v7 = v5;
  nw_service_connector_start_request();
}

void sub_10006FEDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs(qword_100228FC8, 16, "%s%.30s:%-4d Cannot establish connection for service %s: %@", "", "[NRDTestServer createServiceConnector:]_block_invoke_2", 299, *(a1 + 64), a3);
    }
  }

  else
  {
    sub_10006E6F4(*(a1 + 32), v5, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

uint64_t sub_100070270(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) != 1)
    {
      return 1;
    }

    v2 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      v5 = [v1 agentDescription];
      _NRLogWithArgs(v4, 0, "%s%.30s:%-4d unregisterAgent: %@", "", "[NRCompanionProxyAgent unregisterAgent]", 279, v5);
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v6 = qword_100229408;
    sub_10015A238(v6, *(v1 + 96));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v7 = qword_100229408;
    sub_10015A52C(v7);

    v8 = [*(v1 + 56) unregisterNetworkAgent];
    if (v8)
    {
      *(v1 + 16) = 0;
      [v1 setActive:0];
      v9 = *(v1 + 40);
      v10 = [v1 agentUUID];
      v11 = [v10 UUIDString];
      sub_1000059A8(v9, 12003, 0, v11);

      [*(v1 + 80) unregisterNetworkAgent];
      [*(v1 + 72) setActive:0];
      v12 = *(v1 + 72);
      *(v1 + 72) = 0;

      v13 = *(v1 + 80);
      *(v1 + 80) = 0;
LABEL_14:

      return v8;
    }

    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d unable to unregister agent", "", "[NRCompanionProxyAgent unregisterAgent]", 284);
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

void sub_1000707D0(uint64_t a1)
{
  if (a1 && *(a1 + 14) == 1)
  {
    v2 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      v5 = [a1 agentDescription];
      _NRLogWithArgs(v4, 0, "%s%.30s:%-4d unregisterAgent: %@", "", "[NRCompanionProxyConfigAgent unregisterAgent]", 448, v5);
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v6 = qword_100229408;
    sub_10015A238(v6, *(a1 + 64));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v7 = qword_100229408;
    sub_10015A52C(v7);

    if ([*(a1 + 48) unregisterNetworkAgent])
    {
      *(a1 + 14) = 0;
      [a1 setActive:0];
      v8 = *(a1 + 32);
      v11 = [a1 agentDescription];
      sub_1000059A8(v8, 20003, 0, v11);
    }

    else
    {
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (!v10)
      {
        return;
      }

      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d unable to unregister agent", "", "[NRCompanionProxyConfigAgent unregisterAgent]", 454);
    }
  }
}

id *sub_100070A9C(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v29.receiver = a1;
    v29.super_class = NRCompanionProxyAgent;
    v14 = objc_msgSendSuper2(&v29, "init");
    if (!v14)
    {
      v22 = sub_100070D40();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v24 = sub_100070D40();
        _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRCompanionProxyAgent initWithQueue:interfaceName:remoteDeviceName:nrUUID:]", 61);
      }

      v25 = _os_log_pack_size();
      v26 = __error();
      v27 = _os_log_pack_fill(&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, *v26, &_mh_execute_header, "%{public}s [super init] failed");
      *v27 = 136446210;
      *(v27 + 4) = "[NRCompanionProxyAgent initWithQueue:interfaceName:remoteDeviceName:nrUUID:]";
      sub_100070D40();
      _NRLogAbortWithPack();
    }

    a1 = v14;
    objc_storeStrong(v14 + 5, a5);
    [a1 setActive:0];
    [a1 setKernelActivated:1];
    [a1 setUserActivated:1];
    [a1 setVoluntary:1];
    [a1 setNetworkProvider:1];
    v15 = +[NSUUID UUID];
    [a1 setAgentUUID:v15];

    objc_storeStrong(a1 + 8, a3);
    v16 = [[NSString alloc] initWithFormat:@"CompanionProxy via %@", v12];
    [a1 setAgentDescription:v16];

    objc_storeStrong(a1 + 6, a2);
    a1[11] = 1;
    v17 = [NSString alloc];
    v18 = [a1 agentUUID];
    v19 = [v17 initWithFormat:@"CmpnProxy-%@", v18];
    v20 = a1[12];
    a1[12] = v19;

    *(a1 + 15) = 1;
  }

  return a1;
}

id sub_100070D40()
{
  if (qword_100228FE0 != -1)
  {
    dispatch_once(&qword_100228FE0, &stru_1001FADF0);
  }

  v1 = qword_100228FD8;

  return v1;
}

void sub_100070D94(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FD8;
  qword_100228FD8 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100070DD8(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_82;
  }

  if (a1[2])
  {
LABEL_76:
    LOBYTE(a1) = 1;
    goto LABEL_82;
  }

  if (([v3 hasCompanionDatapath] & 1) == 0 && (objc_msgSend(v4, "type") == 5 || objc_msgSend(v4, "type") == 2 && objc_msgSend(v4, "subtype") == 101 || objc_msgSend(v4, "type") == 2 && objc_msgSend(v4, "subtype") == 104))
  {
    *(a1 + 15) = 0;
  }

  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = [a1 agentDescription];
    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d registerAgent: %@", "", "[NRCompanionProxyAgent registerAgentForLink:]", 215, IsLevelEnabled);
  }

  v8 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
  v9 = a1[7];
  a1[7] = v8;

  v10 = a1[7];
  if (v10)
  {
    if ([v10 registerNetworkAgent:a1])
    {
      if (*(a1 + 15) == 1)
      {
        v11 = a1[8];
        IsLevelEnabled = a1[7];
        LOBYTE(v11) = [IsLevelEnabled addNetworkAgentToInterfaceNamed:v11];

        if ((v11 & 1) == 0)
        {
          v33 = _NRCopyLogObjectForNRUUID();
          v34 = _NRLogIsLevelEnabled();

          if (v34)
          {
            v35 = a1[5];
            v36 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v36, 16, "%s%.30s:%-4d unable to add network agent to interface %@", "", "[NRCompanionProxyAgent registerAgentForLink:]", 230, a1[8]);
          }

          goto LABEL_75;
        }
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v12 = qword_1002290B8;
      if (v12)
      {
        v13 = v12[8];

        if (v13 == 1)
        {
          v14 = _NRCopyLogObjectForNRUUID();
          v15 = _NRLogIsLevelEnabled();

          if (v15)
          {
            v16 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v16, 0, "%s%.30s:%-4d Not registering fallback agents as fixed interface mode is enabled", "", "[NRCompanionProxyAgent registerAgentForLink:]", 236);
          }

          *(a1 + 16) = 1;
          [a1 setActive:1];
          [a1[7] updateNetworkAgent:a1];
          goto LABEL_75;
        }
      }

      *(a1 + 16) = 1;
      [a1 setActive:1];
      [a1[7] updateNetworkAgent:a1];
      v22 = sub_100163A30(NRDLocalDevice, a1[5]);
      if (v22)
      {
        v100 = v22;
        v23 = v22[18];
        if (v23)
        {
          v24 = v23;
          v25 = v100[18];
          v26 = [v25 allowsDirectToCloud];

          if (!v26)
          {
            goto LABEL_74;
          }
        }

        v27 = sub_100163A30(NRDLocalDevice, a1[5]);
        IsLevelEnabled = v27;
        if (v27)
        {
          v28 = *(v27 + 144);
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        v30 = [v29 usesTLS];

        if (v30)
        {
          v31 = [[NEPathControllerNetworkAgent alloc] initWithAdvisoryAgentDomain:@"com.apple.networkrelay" agentType:@"DTCFallbackAgent" advisoryMode:2];
          v32 = a1[9];
          a1[9] = v31;
          goto LABEL_53;
        }

        objc_opt_self();
        if (qword_1002290C0 == -1)
        {
LABEL_38:
          v37 = qword_1002290B8;
          v38 = a1[5];
          if (v37)
          {
            v39 = sub_100003490();
            dispatch_assert_queue_V2(v39);

            if (v38)
            {
              v40 = [v37[28] objectForKeyedSubscript:v38];

              if (v40)
              {
                v41 = [v37[28] objectForKeyedSubscript:v38];
                v42 = v41;
                if (v41 && *(v41 + 488))
                {
                  v32 = NEVirtualInterfaceCopyName();
                  goto LABEL_51;
                }

LABEL_50:
                v32 = 0;
LABEL_51:

                if (v32)
                {
                  v50 = [NEPathControllerNetworkAgent alloc];
                  v51 = [[NWInterface alloc] initWithInterfaceName:v32];
                  v52 = [v50 initWithAdvisoryInterface:v51 advisoryMode:2];
                  v53 = a1[9];
                  a1[9] = v52;

LABEL_53:
                  v54 = +[NSUUID UUID];
                  [a1[9] setAgentUUID:v54];

                  [a1[9] setAgentDescription:@"Fallback from any interface to CompanionProxy"];
                  [a1[9] setActive:1];
                  [a1[9] setVoluntary:0];
                  [a1[9] setUserActivated:0];
                  [a1[9] setKernelActivated:0];
                  v55 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
                  v56 = a1[10];
                  a1[10] = v55;

                  if ([a1[10] registerNetworkAgent:a1[9]])
                  {
                    objc_opt_self();
                    v57 = [NEPolicyCondition clientFlags:0x20000000];
                    v58 = [NEPolicy alloc];
                    v59 = [a1[9] agentUUID];
                    v60 = [NEPolicyResult netAgentUUID:v59];
                    v61 = +[NEPolicyCondition allInterfaces];
                    v103[0] = v61;
                    v103[1] = v57;
                    v62 = [NSArray arrayWithObjects:v103 count:2];
                    v63 = [v58 initWithOrder:10 result:v60 conditions:v62];

                    objc_opt_self();
                    v99 = v57;
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v64 = qword_100229408;
                    v65 = v63;
                    v66 = sub_100159E00(v64, a1[12], v63);

                    v67 = [NEPolicyRouteRule routeRuleWithAction:6 forType:6];
                    v68 = [a1[9] agentUUID];
                    [v67 setNetworkAgentUUID:v68];

                    v69 = [NEPolicy alloc];
                    v102 = v67;
                    v70 = [NSArray arrayWithObjects:&v102 count:1];
                    v71 = [NEPolicyResult routeRules:v70];
                    v72 = +[NEPolicyCondition allInterfaces];
                    v101 = v72;
                    v73 = [NSArray arrayWithObjects:&v101 count:1];
                    v74 = [v69 initWithOrder:10 result:v71 conditions:v73];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v75 = qword_100229408;
                    v76 = sub_100159E00(v75, a1[12], v74);

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v77 = qword_100229408;
                    sub_10015A52C(v77);

                    v78 = 1;
LABEL_68:

                    v84 = _NRCopyLogObjectForNRUUID();
                    if (v78)
                    {
                      v85 = _NRLogIsLevelEnabled();

                      if (v85)
                      {
                        v86 = _NRCopyLogObjectForNRUUID();
                        v87 = [a1 agentUUID];
                        _NRLogWithArgs(v86, 0, "%s%.30s:%-4d Successfully added fallback path controller for agent (%@)", "", "[NRCompanionProxyAgent registerAgentForLink:]", 254, v87);

LABEL_73:
                      }
                    }

                    else
                    {
                      v88 = _NRLogIsLevelEnabled();

                      if (v88)
                      {
                        v86 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs(v86, 17, "unable to register path controllers");
                        goto LABEL_73;
                      }
                    }

LABEL_74:
                    v89 = a1[5];
                    v90 = [a1 agentUUID];
                    v91 = [v90 UUIDString];
                    sub_1000059A8(v89, 12002, 0, v91);

                    goto LABEL_75;
                  }

                  v79 = _NRCopyLogObjectForNRUUID();
                  v80 = _NRLogIsLevelEnabled();

                  if (v80)
                  {
                    v81 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v81, 16, "%s%.30s:%-4d unable to register path controller agent", "", "[NRCompanionProxyAgent registerPathControllerFallback]", 172);
LABEL_66:

                    goto LABEL_67;
                  }

                  goto LABEL_67;
                }

LABEL_64:
                v82 = _NRCopyLogObjectForNRUUID();
                v83 = _NRLogIsLevelEnabled();

                if (v83)
                {
                  v81 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v81, 17, "Attempting to register fallback path controller with invalid fallback interface");
                  goto LABEL_66;
                }

LABEL_67:
                v78 = 0;
                goto LABEL_68;
              }
            }

            else
            {
              v48 = sub_1000B9544();
              v49 = _NRLogIsLevelEnabled();

              if (v49)
              {
                v42 = sub_1000B9544();
                _NRLogWithArgs(v42, 17, "%s called with null nrUUID", "[NRLinkDirector copyCatchAllInterfaceNameForNRUUID:]");
                goto LABEL_50;
              }
            }
          }

          goto LABEL_64;
        }
      }

      else
      {
        v43 = sub_100070D40();
        v44 = _NRLogIsLevelEnabled();

        if (v44)
        {
          v45 = sub_100070D40();
          _NRLogWithArgs(v45, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRCompanionProxyAgent registerAgentForLink:]", 248);
        }

        v4 = _os_log_pack_size();
        a1 = (&v98 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
        v46 = __error();
        v47 = _os_log_pack_fill(a1, v4, *v46, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
        *v47 = 136446210;
        *(v47 + 4) = "[NRCompanionProxyAgent registerAgentForLink:]";
        sub_100070D40();
        _NRLogAbortWithPack();
      }

      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      goto LABEL_38;
    }

    v20 = _NRCopyLogObjectForNRUUID();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d unable register network agent");
      goto LABEL_27;
    }
  }

  else
  {
    v17 = _NRCopyLogObjectForNRUUID();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d unable to allocate registration object");
LABEL_27:
    }
  }

LABEL_75:
  if (a1[2])
  {
    goto LABEL_76;
  }

  v92 = a1[7];
  if (v92)
  {
    [v92 unregisterNetworkAgent];
    v93 = a1[7];
    a1[7] = 0;
  }

  v94 = a1[10];
  if (v94)
  {
    [v94 unregisterNetworkAgent];
  }

  v95 = a1[9];
  a1[9] = 0;

  v96 = a1[10];
  a1[10] = 0;

  LOBYTE(a1) = *(a1 + 16);
LABEL_82:

  return a1 & 1;
}

void sub_100071A14(uint64_t a1)
{
  if (a1)
  {
    ++*(a1 + 88);
    v2 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = *(a1 + 40);
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = *(a1 + 88);
      v7 = [a1 agentDescription];

      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d refreshGeneration to %llu: %@", "", "[NRCompanionProxyAgent refreshGeneration]", 302, v6, v7);
    }

    if (*(a1 + 16) == 1 && ([*(a1 + 56) updateNetworkAgent:a1] & 1) == 0)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v10, 16, "%s%.30s:%-4d unable to update agent", "", "[NRCompanionProxyAgent refreshGeneration]", 307);
      }
    }
  }
}

id *sub_100071B84(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = NRCompanionProxyConfigAgent;
    v11 = objc_msgSendSuper2(&v28, "init");
    if (!v11)
    {
      v21 = sub_100070D40();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v23 = sub_100070D40();
        _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRCompanionProxyConfigAgent initWithQueue:parameters:nrUUID:]", 344);
      }

      v24 = _os_log_pack_size();
      v25 = __error();
      v26 = _os_log_pack_fill(&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v24, *v25, &_mh_execute_header, "%{public}s [super init] failed");
      *v26 = 136446210;
      *(v26 + 4) = "[NRCompanionProxyConfigAgent initWithQueue:parameters:nrUUID:]";
      sub_100070D40();
      _NRLogAbortWithPack();
    }

    a1 = v11;
    objc_storeStrong(v11 + 4, a4);
    objc_storeStrong(a1 + 7, a3);
    [a1 setKernelActivated:1];
    [a1 setUserActivated:1];
    [a1 setVoluntary:1];
    v12 = +[NSUUID UUID];
    [a1 setAgentUUID:v12];

    v13 = [[NSString alloc] initWithFormat:@"CompanionProxyConfig for %@", v10];
    [a1 setAgentDescription:v13];

    v14 = [NSString alloc];
    v15 = a1[4];
    v16 = [v14 initWithFormat:@"NRCompanionProxyConfigAgent-%@", v15];
    v17 = a1[8];
    a1[8] = v16;

    objc_storeStrong(a1 + 5, a2);
    v18 = a1[4];
    v19 = [a1 agentDescription];
    sub_1000059A8(v18, 20001, 0, v19);
  }

  return a1;
}

uint64_t sub_100071E20(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_20;
  }

  v5 = a1;
  v6 = *(a1 + 14);
  if ((v6 & 1) == 0)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = [v5 agentDescription];
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d registerAgent: %@", "", "[NRCompanionProxyConfigAgent registerAgent]", 402, IsLevelEnabled);
    }

    v10 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v11 = *(v5 + 48);
    *(v5 + 48) = v10;

    v12 = *(v5 + 48);
    if (!v12)
    {
      v27 = _NRCopyLogObjectForNRUUID();
      v28 = _NRLogIsLevelEnabled();

      if (!v28)
      {
        goto LABEL_17;
      }

      v14 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d unable to allocate registration object");
      goto LABEL_16;
    }

    if (([v12 registerNetworkAgent:v5] & 1) == 0)
    {
      v29 = _NRCopyLogObjectForNRUUID();
      v30 = _NRLogIsLevelEnabled();

      if (!v30)
      {
        goto LABEL_17;
      }

      v14 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d unable register network agent");
LABEL_16:

LABEL_17:
      v6 = *(v5 + 14);
      if ((v6 & 1) == 0)
      {
        v31 = *(v5 + 48);
        if (v31)
        {
          [v31 unregisterNetworkAgent];
          v32 = *(v5 + 48);
          *(v5 + 48) = 0;

          v6 = *(v5 + 14);
          return v6 & 1;
        }

LABEL_20:
        v6 = 0;
        return v6 & 1;
      }

      return v6 & 1;
    }

    *(v5 + 14) = 1;
    [v5 setActive:1];
    [*(v5 + 48) updateNetworkAgent:v5];
    v13 = sub_100163A30(NRDLocalDevice, *(v5 + 32));
    if (v13)
    {
      v14 = v13;
      v15 = [v5 agentUUID];
      IsLevelEnabled = [NEPolicyResult netAgentUUID:v15];

      v16 = sub_100003490();
      dispatch_assert_queue_V2(v16);

      v17 = sub_1001677D0(v14, @"0");
      v1 = [NEPolicyCondition flowRemoteAddress:v17 prefix:128];

      v18 = sub_1001672A0(v14, @"62742");
      v2 = [NEPolicyCondition flowLocalAddress:v18 prefix:128];

      v19 = [NEPolicy alloc];
      v20 = [NEPolicyCondition allInterfaces:v1];
      v39[2] = v20;
      v21 = [NSArray arrayWithObjects:v39 count:3];
      v3 = [v19 initWithOrder:10 result:IsLevelEnabled conditions:v21];

      objc_opt_self();
      v4 = &qword_100229000;
      if (qword_100229410 == -1)
      {
LABEL_9:
        v22 = qword_100229408;
        v23 = sub_100159E00(v22, *(v5 + 64), v3);

        objc_opt_self();
        if (v4[130] != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v24 = qword_100229408;
        sub_10015A52C(v24);

        v25 = *(v5 + 32);
        v26 = [v5 agentDescription];
        sub_1000059A8(v25, 20002, 0, v26);

        goto LABEL_16;
      }
    }

    else
    {
      v34 = sub_100070D40();
      v35 = _NRLogIsLevelEnabled();

      if (v35)
      {
        v36 = sub_100070D40();
        _NRLogWithArgs(v36, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRCompanionProxyConfigAgent registerAgent]", 420);
      }

      v5 = _os_log_pack_size();
      v14 = v39 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = __error();
      v38 = _os_log_pack_fill(v14, v5, *v37, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v38 = 136446210;
      *(v38 + 4) = "[NRCompanionProxyConfigAgent registerAgent]";
      sub_100070D40();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_100229410, &stru_1001FCD98);
    goto LABEL_9;
  }

  return v6 & 1;
}

void sub_10007251C(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  if (v2)
  {
    v3 = v2;
    dispatch_assert_queue_V2(*(v2 + 2));
    if ((v3[10] & 1) == 0)
    {
      v3[10] = 1;
      if (v3[8] == 4)
      {
        sub_100181020(v3);
        if (v3[9] == 1)
        {
          v3[8] = 3;
          sub_100181284(v3);
        }
      }
    }

    v4 = v3[8] & 0xFD;

    if (v4 == 1)
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *(a1 + 40);
        v7 = *(v5 + 40);
        v8 = v6;
        dispatch_assert_queue_V2(v7);
        v9 = [v8 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];

        if (v9)
        {
          [*(v5 + 64) setObject:0 forKeyedSubscript:v9];
          if (qword_100228FF0 != -1)
          {
            dispatch_once(&qword_100228FF0, &stru_1001FAE10);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228FF0 != -1)
            {
              dispatch_once(&qword_100228FF0, &stru_1001FAE10);
            }

            v10 = qword_100228FE8;
            v11 = sub_1000729D8(v5);
            _NRLogWithArgs(v10, 1, "%s%.30s:%-4d prefer wi-fi clients: %@", "", "[NRPreferWiFiAgent removeClientIdentifier:]", 274, v11);
          }
        }

        else
        {
          if (qword_100228FF0 != -1)
          {
            dispatch_once(&qword_100228FF0, &stru_1001FAE10);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228FF0 != -1)
            {
              dispatch_once(&qword_100228FF0, &stru_1001FAE10);
            }

            _NRLogWithArgs(qword_100228FE8, 17, "no client UUID");
          }
        }
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v12 = qword_1002290B8;
      v20 = v12;
      if (v12)
      {
        v13 = v12[6];
        v14 = v13;
        if (v13)
        {
          v15 = v13[3];
          dispatch_assert_queue_V2(v15);

          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            _NRLogWithArgs(qword_1002294A0, 0, "%s%.30s:%-4d prefer Wi-Fi request unavailable. Current state - active=%d, cleared=%d", "", "[NRLinkManagerWiFi preferWiFiRequestUnavailable]", 2158, *(v14 + 40), *(v14 + 48));
          }

          v16 = *(v14 + 48);
          if (v16 > 0)
          {
            *(v14 + 48) = v16 - 1;
LABEL_36:
            if (!*(v14 + 40))
            {
              WeakRetained = objc_loadWeakRetained((v14 + 160));
              [WeakRetained preferWiFiRequestUnavailable];
            }

            goto LABEL_51;
          }

          v18 = *(v14 + 40);
          if (v18 > 0)
          {
            sub_10017A860(v14, v18 - 1);
            if (*(v14 + 40) >= 1)
            {
              sub_10017FD10(v14);
            }

            goto LABEL_36;
          }
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_51:

      return;
    }
  }

  if (qword_100228FF0 != -1)
  {
    dispatch_once(&qword_100228FF0, &stru_1001FAE10);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    v19 = qword_100228FE8;

    _NRLogWithArgs(v19, 17, "Wi-Fi agent unassert before class C unlock");
  }
}

id sub_1000729D8(uint64_t a1)
{
  if (!a1 || (*(a1 + 15) & 1) != 0 || !*(a1 + 64))
  {
    return 0;
  }

  v2 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 64) allValues];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) parameters];
        v9 = [v8 copyCParameters];

        account_id = nw_parameters_get_account_id();
        if (account_id)
        {
          v11 = [NSString stringWithUTF8String:account_id];
LABEL_10:
          [v2 addObject:v11];
LABEL_11:

          goto LABEL_12;
        }

        pid = nw_parameters_get_pid();
        if (pid >= 1)
        {
          v11 = sub_10013CB6C(pid, 0);
          if (!v11)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

LABEL_12:
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_100072B8C(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FE8;
  qword_100228FE8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100072C9C(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  if (!v2)
  {
    goto LABEL_36;
  }

  v3 = v2;
  dispatch_assert_queue_V2(*(v2 + 2));
  if ((v3[10] & 1) == 0)
  {
    v3[10] = 1;
    if (v3[8] == 4)
    {
      sub_100181020(v3);
      if (v3[9] == 1)
      {
        v3[8] = 3;
        sub_100181284(v3);
      }
    }
  }

  v4 = v3[8] & 0xFD;

  if (v4 == 1)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = *(v5 + 40);
      v8 = v6;
      dispatch_assert_queue_V2(v7);
      v9 = [v8 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];

      if (v9)
      {
        v10 = [NWPath pathForClientID:v9];
        [*(v5 + 64) setObject:v10 forKeyedSubscript:v9];

        if (qword_100228FF0 != -1)
        {
          dispatch_once(&qword_100228FF0, &stru_1001FAE10);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FF0 != -1)
          {
            dispatch_once(&qword_100228FF0, &stru_1001FAE10);
          }

          v11 = qword_100228FE8;
          v12 = sub_1000729D8(v5);
          _NRLogWithArgs(v11, 1, "%s%.30s:%-4d prefer wi-fi clients: %@", "", "[NRPreferWiFiAgent addClientIdentifier:]", 259, v12);
        }
      }

      else
      {
        if (qword_100228FF0 != -1)
        {
          dispatch_once(&qword_100228FF0, &stru_1001FAE10);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FF0 != -1)
          {
            dispatch_once(&qword_100228FF0, &stru_1001FAE10);
          }

          _NRLogWithArgs(qword_100228FE8, 17, "no client UUID");
        }
      }
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v13 = qword_1002290B8;
    v21 = v13;
    if (v13)
    {
      v14 = v13[6];
      v15 = v14;
      if (v14)
      {
        v16 = v14[3];
        dispatch_assert_queue_V2(v16);

        v17 = *(v15 + 40);
        if (v17)
        {
          sub_10017A860(v15, v17 + 1);
          sub_10017FD10(v15);
        }

        else
        {
          WeakRetained = objc_loadWeakRetained((v15 + 160));
          v19 = [WeakRetained preferWiFiRequestAvailable];

          if (v19)
          {
            sub_10017A860(v15, *(v15 + 40) + 1);
          }

          else
          {
            ++*(v15 + 48);
          }
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
LABEL_36:
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      v20 = qword_100228FE8;

      _NRLogWithArgs(v20, 17, "Wi-Fi agent assert before class C unlock");
    }
  }
}

id sub_100073670()
{
  if (qword_100228FF0 != -1)
  {
    dispatch_once(&qword_100228FF0, &stru_1001FAE10);
  }

  v1 = qword_100228FE8;

  return v1;
}

void sub_10007376C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[15] == 1)
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FF0 != -1)
        {
          dispatch_once(&qword_100228FF0, &stru_1001FAE10);
        }

        v3 = qword_100228FE8;
        v26 = 112;
        v24 = "";
        v25 = "[NRPreferWiFiAgent registerAgentOnQueue:]_block_invoke";
        v4 = "%s%.30s:%-4d Ignoring prefer Wi-Fi agent registration as it is invalidated";
LABEL_15:
        v5 = 1;
LABEL_38:
        _NRLogWithArgs(v3, v5, v4, v24, v25, v26);
        goto LABEL_39;
      }

      goto LABEL_39;
    }

    v6 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v7 = *(v2 + 6);
    *(v2 + 6) = v6;

    v8 = *(v2 + 6);
    if (!v8)
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_39;
      }

      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      v3 = qword_100228FE8;
      v4 = "[[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:] failed";
LABEL_37:
      v5 = 17;
      goto LABEL_38;
    }

    if ([v8 registerNetworkAgent:v2])
    {
      v9 = +[NRPreferWiFiAgent agentDomain];
      v10 = +[NRPreferWiFiAgent agentType];
      v11 = [NEPolicyCondition requiredAgentDomain:v9 agentType:v10];

      v12 = [v2 agentUUID];
      v13 = [NEPolicyResult netAgentUUID:v12];

      v14 = [NEPolicy alloc];
      v30[0] = v11;
      v15 = +[NEPolicyCondition allInterfaces];
      v30[1] = v15;
      v16 = [NSArray arrayWithObjects:v30 count:2];
      v17 = [v14 initWithOrder:10 result:v13 conditions:v16];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v18 = qword_100229408;
      v19 = sub_100159E00(v18, *(v2 + 7), v17);

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v20 = qword_100229408;
      sub_10015A52C(v20);

      *(v2 + 14) = 1;
      v21 = [v2 agentUUID];
      v22 = [v21 UUIDString];
      sub_1000059A8(0, 15002, 0, v22);

      objc_initWeak(&location, v2);
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v23 = qword_1002290B8;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100073CF4;
      v27[3] = &unk_1001FC730;
      objc_copyWeak(&v28, &location);
      sub_1000C95D8(v23, v27);

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);

      goto LABEL_39;
    }

    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      v3 = qword_100228FE8;
      v4 = "-registerNetworkAgent: failed";
      goto LABEL_37;
    }
  }

  else
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      v3 = qword_100228FE8;
      v26 = 107;
      v24 = "";
      v25 = "[NRPreferWiFiAgent registerAgentOnQueue:]_block_invoke";
      v4 = "%s%.30s:%-4d Ignoring prefer Wi-Fi agent registration as it is dealloc'd";
      goto LABEL_15;
    }
  }

LABEL_39:
}

void sub_100073CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100073CF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 15) == 1)
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FF0 != -1)
        {
          dispatch_once(&qword_100228FF0, &stru_1001FAE10);
        }

        _NRLogWithArgs(qword_100228FE8, 1, "%s%.30s:%-4d Ignoring prefer Wi-Fi agent activation as it is invalidated");
      }
    }

    else if (([WeakRetained isActive] & 1) == 0)
    {
      [v4 setActive:1];
      [v4[6] updateNetworkAgent:?];
      v2 = [v4 agentUUID];
      v3 = [v2 UUIDString];
      sub_1000059A8(0, 15004, 0, v3);
    }
  }

  else
  {
    if (qword_100228FF0 != -1)
    {
      dispatch_once(&qword_100228FF0, &stru_1001FAE10);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FF0 != -1)
      {
        dispatch_once(&qword_100228FF0, &stru_1001FAE10);
      }

      _NRLogWithArgs(qword_100228FE8, 1, "%s%.30s:%-4d Ignoring prefer Wi-Fi agent activation as it is dealloc'd");
    }
  }
}

void sub_100073EC0(uint64_t a1)
{
  *(a1 + 15) = 1;
  if (*(a1 + 14) == 1)
  {
    *(a1 + 14) = 0;
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 56));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    v4 = *(a1 + 48);
    if (v4 && [v4 unregisterNetworkAgent])
    {
      [a1 setActive:0];
      v6 = [a1 agentUUID];
      v5 = [v6 UUIDString];
      sub_1000059A8(0, 15003, 0, v5);
    }
  }
}

uint64_t sub_10007401C(uint64_t a1, BOOL *a2)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [*(a1 + 64) allValues];
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = *v15;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) parameters];
          v11 = [v10 copyCParameters];

          use_p2p = nw_parameters_get_use_p2p();
          v6 = v6 || nw_parameters_get_traffic_class() > 0x12B;
          v7 |= use_p2p;
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (a2)
    {
      *a2 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_100074760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10007478C()
{
  if (qword_100229000 != -1)
  {
    dispatch_once(&qword_100229000, &stru_1001FAE30);
  }

  v1 = qword_100228FF8;

  return v1;
}

void sub_1000747E0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v9;
      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v9 copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to control notify", "", "[NRLinkFixedInterface sendControlData:]_block_invoke", 625, v7);
    }

    else
    {
      v8 = _NRLogIsLevelEnabled();

      WeakRetained = v9;
      if (!v8)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v9 copyDescription];
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to control notify", "", "[NRLinkFixedInterface sendControlData:]_block_invoke", 627, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_100074904(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FF8;
  qword_100228FF8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007501C(void *a1)
{
  if (a1)
  {
    String = NRDataProtectionClassCreateString();
    v3 = *(a1 + 271);
    if (v3)
    {
      v4 = v3;
      [v4 setClientQueue:a1[1]];
      objc_initWeak(location, a1);
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000755B8;
      v52[3] = &unk_1001FB810;
      objc_copyWeak(&v55, location);
      v56 = 4;
      v5 = String;
      v53 = v5;
      v6 = v4;
      v54 = v6;
      [v6 setStateUpdateBlock:v52];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100075D90;
      v47[3] = &unk_1001FB838;
      objc_copyWeak(&v50, location);
      v7 = v5;
      v48 = v7;
      v8 = v6;
      v49 = v8;
      v51 = 4;
      [v8 setChildStateUpdateBlock:v47];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100075EC8;
      v43[3] = &unk_1001FB860;
      objc_copyWeak(&v46, location);
      v9 = v7;
      v44 = v9;
      v10 = v8;
      v45 = v10;
      [v10 setConfigurationUpdateBlock:v43];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100075FA8;
      v39[3] = &unk_1001FB888;
      objc_copyWeak(&v42, location);
      v11 = v9;
      v40 = v11;
      v12 = v10;
      v41 = v12;
      [v12 setTrafficSelectorUpdateBlock:v39];
      v26 = String;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000760A8;
      v35[3] = &unk_1001FB8B0;
      objc_copyWeak(&v38, location);
      v13 = v11;
      v36 = v13;
      v14 = v12;
      v37 = v14;
      [v14 setAdditionalAddressesUpdateBlock:v35];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100076188;
      v31[3] = &unk_1001FB8D8;
      objc_copyWeak(&v34, location);
      v15 = v13;
      v32 = v15;
      v16 = v14;
      v33 = v16;
      [v16 setShortDPDEventBlock:v31];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10007625C;
      v27[3] = &unk_1001FB8B0;
      objc_copyWeak(&v30, location);
      v17 = v15;
      v28 = v17;
      v18 = v16;
      v29 = v18;
      [v18 setPrivateNotifyStatusEvent:v27];
      v19 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v21 = _NRCopyLogObjectForNRUUID();
        v22 = [a1 copyDescription];
        _NRLogWithArgs(v21, 0, "%s%.30s:%-4d %@: Setup IKE %@ %@ callbacks", "", "[NRLinkFixedInterface setupIKECallbacks:]", 457, v22, v17, v18);
      }

      objc_destroyWeak(&v30);
      objc_destroyWeak(&v34);

      objc_destroyWeak(&v38);
      objc_destroyWeak(&v42);

      objc_destroyWeak(&v46);
      objc_destroyWeak(&v50);

      objc_destroyWeak(&v55);
      objc_destroyWeak(location);

      String = v26;
    }

    else
    {
      v23 = sub_10007478C();
      v24 = _NRLogIsLevelEnabled();

      if (v24)
      {
        v25 = sub_10007478C();
        _NRLogWithArgs(v25, 17, "%s called with null _ikeSessionClassD", "[NRLinkFixedInterface setupIKECallbacks:]");
      }

      v18 = 0;
    }
  }
}

void sub_100075524(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v6 - 192));
  objc_destroyWeak((v6 - 128));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_1000755B8(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained linkDelegate];
    v8 = v67;
    if (v67)
    {
      v9 = *(a1 + 56);
      if (v9 == 4)
      {
        [v6 setIkeClassDEstablished:0];
        [v6 setIkeClassCEstablished:0];
        v8 = v67;
        v9 = *(a1 + 56);
      }

      [v6 processIKEDisconnection:v9 error:v8];
      if ([v6 state] == 255)
      {
        goto LABEL_35;
      }

      v10 = v67;
      if ([v10 code] == 4)
      {
        v11 = NEIKEv2ErrorDomain;
        v12 = [v10 domain];
        LODWORD(v11) = [v12 isEqualToString:v11];

        if (v11)
        {
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          SessionStateString = NEIKEv2CreateSessionStateString();
          [v6 cancelWithReason:{@"%@ session %@ got IKE error %@ with state %@", v13, v14, v10, SessionStateString}];
LABEL_26:

          goto LABEL_35;
        }
      }

      else
      {
      }

      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v29 = NEIKEv2CreateSessionStateString();
      [v6 reportEvent:3018 detailsFormat:@"%@ session %@ got IKE error %@ with state %@", v27, v28, v10, v29];

LABEL_34:
      sub_100076514(v6, *(a1 + 56));
      goto LABEL_35;
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = NEIKEv2CreateSessionStateString();
    [v6 reportEvent:3009 detailsFormat:@"%@ session %@ changed state to %@", v16, v17, v18];

    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (*(a1 + 56) == 4)
        {
          [v6 setIkeClassDEstablished:0];
          [v6 setIkeClassCEstablished:0];
        }

        [v6 reportEvent:3018 detailsFormat:@"%@ session %@ cancelled by peer", *(a1 + 32), *(a1 + 40)];
        goto LABEL_34;
      }

      if (a2 == 4)
      {
        [v6 cancelWithReason:{@"%@ session %@ got unexpected MOBIKE state", *(a1 + 32), *(a1 + 40)}];
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if ([v6 state] == 1)
        {
          v31 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v33 = _NRCopyLogObjectForNRUUID();
            v34 = [v6 copyDescription];
            _NRLogWithArgs(v33, 0, "%s%.30s:%-4d %@: %@ IKE %@ now connecting", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke", 313, v34, *(a1 + 32), *(a1 + 40));
          }

          [v6 changeStateTo:5];
          goto LABEL_35;
        }

        v56 = [v6 state];
        v57 = _NRCopyLogObjectForNRUUID();
        if (v56 == 5)
        {
          v58 = _NRLogIsLevelEnabled();

          if (!v58)
          {
            goto LABEL_35;
          }

          v59 = _NRCopyLogObjectForNRUUID();
          v60 = [v6 copyDescription];
          _NRLogWithArgs(v59, 0, "%s%.30s:%-4d %@: %@ IKE %@ already connecting", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke", 316, v60, *(a1 + 32), *(a1 + 40));
        }

        else
        {
          v61 = _NRLogIsLevelEnabled();

          if (!v61)
          {
            goto LABEL_35;
          }

          v59 = _NRCopyLogObjectForNRUUID();
          v60 = [v6 copyDescription];
          _NRLogWithArgs(v59, 16, "%s%.30s:%-4d %@: %@ IKE %@ connecting but weird state", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke", 318, v60, *(a1 + 32), *(a1 + 40));
        }

        goto LABEL_35;
      }

      if (a2 == 2)
      {
        v19 = _NRCopyLogObjectForNRUUID();
        v20 = _NRLogIsLevelEnabled();

        if (v20)
        {
          v21 = _NRCopyLogObjectForNRUUID();
          v22 = [v6 copyDescription];
          _NRLogWithArgs(v21, 0, "%s%.30s:%-4d %@: %@ IKE %@ now connected from started", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke", 321, v22, *(a1 + 32), *(a1 + 40));
        }

        if ([v6 state] == 8)
        {
          v23 = _NRCopyLogObjectForNRUUID();
          v24 = _NRLogIsLevelEnabled();

          if (v24)
          {
            v25 = _NRCopyLogObjectForNRUUID();
            v26 = [v6 copyDescription];
            _NRLogWithArgs(v25, 0, "%s%.30s:%-4d %@: %@ IKE %@ already ready", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke", 323, v26, *(a1 + 32), *(a1 + 40));
          }

          if (*(a1 + 56) == 4)
          {
            [v6 setIkeClassDEstablished:1];
            [v6 setIkeClassCEstablished:1];
          }

          [v7 linkIsReady:v6];
          goto LABEL_35;
        }

        if ([v6 state] != 5)
        {
          v35 = _NRCopyLogObjectForNRUUID();
          v36 = _NRLogIsLevelEnabled();

          if (v36)
          {
            v37 = _NRCopyLogObjectForNRUUID();
            v38 = [v6 copyDescription];
            _NRLogWithArgs(v37, 0, "%s%.30s:%-4d %@: %@ IKE %@ ready but weird state", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke", 331, v38, *(a1 + 32), *(a1 + 40));
          }
        }

        [v6 changeStateTo:8];
        if (*(a1 + 56) == 4)
        {
          [v6 setIkeClassDEstablished:1];
          [v6 setIkeClassCEstablished:1];
        }

        [v7 linkIsReady:v6];
        if (![v6 shouldCreateCompanionProxyAgent])
        {
          goto LABEL_35;
        }

        v39 = [v6 companionProxyAgent];

        if (!v39)
        {
          v40 = sub_10007478C();
          v41 = _NRLogIsLevelEnabled();

          if (v41)
          {
            v42 = sub_10007478C();
            _NRLogWithArgs(v42, 0, "%s%.30s:%-4d Adding companion proxy agent", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke", 341);
          }

          [v6 virtualInterface];
          v43 = NEVirtualInterfaceCopyName();
          v44 = [v6 nrUUID];
          v45 = sub_100163A30(NRDLocalDevice, v44);
          v46 = v45;
          if (v45)
          {
            v47 = *(v45 + 128);
          }

          else
          {
            v47 = 0;
          }

          v48 = v47;

          if (v43 && v48)
          {
            v49 = [NRCompanionProxyAgent alloc];
            v50 = [v6 queue];
            v51 = [v6 nrUUID];
            v52 = sub_100070A9C(&v49->super.isa, v50, v43, v48, v51);
            v53 = v6[11];
            v6[11] = v52;

            [v6 reportEvent:12001];
          }
        }

        v54 = [v6 companionProxyAgent];
        v55 = sub_100070DD8(v54, v6);

        if (v55)
        {
          [v6 reportEvent:12002];
          goto LABEL_35;
        }

        v62 = _NRCopyLogObjectForNRUUID();
        v63 = _NRLogIsLevelEnabled();

        if (!v63)
        {
          goto LABEL_35;
        }

        SessionStateString = _NRCopyLogObjectForNRUUID();
        v64 = [v6 copyDescription];
        _NRLogWithArgs(SessionStateString, 16, "%s%.30s:%-4d %@: failed to register companion agent", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke", 353, v64);

        goto LABEL_26;
      }
    }

    v30 = *(a1 + 32);
    SessionStateString = NEIKEv2CreateSessionStateString();
    [v6 cancelWithReason:{@"%@ session %@ got bad IKE state %@", v30, SessionStateString, v65, v66}];
    goto LABEL_26;
  }

LABEL_36:
}

void sub_100075D90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v14)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u state update %@ error %@", v8, v9, a2, SessionStateString, v14];

      [WeakRetained processIKEDisconnection:*(a1 + 56) error:v14];
      if ([WeakRetained state] == 255)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      if (a3 != 3)
      {
        v13 = NEIKEv2CreateSessionStateString();
        [WeakRetained reportEvent:3009 detailsFormat:@"%@ session %@ child %u state update %@", v11, v12, a2, v13];

        goto LABEL_9;
      }

      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u Disconnected state with no error", v11, *(a1 + 40), a2];
    }

    sub_100076514(WeakRetained, *(a1 + 56));
  }

LABEL_9:
}

void sub_100075EC8(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [WeakRetained copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: %@ session %@ got config update %@", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke_3", 413, v7, *(a1 + 32), *(a1 + 40), v8);
    }
  }
}

void sub_100075FA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = [WeakRetained copyDescription];
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: %@ session %@ got child %u traffic selector update local %@ remote %@", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke_4", 424, v12, *(a1 + 32), *(a1 + 40), a2, v13, v7);
    }
  }
}

void sub_1000760A8(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [WeakRetained copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: %@ session %@ got additional addresses %@", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke_5", 433, v7, *(a1 + 32), *(a1 + 40), v8);
    }
  }
}

void sub_100076188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v7;
    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = [v7 copyDescription];
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: %@ session %@ got short DPD", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke_6", 441, v6, *(a1 + 32), *(a1 + 40));

      WeakRetained = v7;
    }
  }
}

void sub_10007625C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v23 = v3;
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = [WeakRetained copyDescription];
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: %@ session %@ got private notifies %@", "", "[NRLinkFixedInterface setupIKECallbacks:]_block_invoke_7", 451, v9, *(a1 + 32), *(a1 + 40), v5);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 notifyStatus];
          v17 = [v15 notifyData];
          v18 = _NRCopyLogObjectForNRUUID();
          v19 = _NRLogIsLevelEnabled();

          if (v19)
          {
            v20 = _NRCopyLogObjectForNRUUID();
            v21 = [WeakRetained copyDescription];
            _NRLogWithArgs(v20, 1, "%s%.30s:%-4d %@: Received notify code %u %@", "", "[NRLinkFixedInterface handleNotifyCode:payload:]", 635, v21, v16, v17);
          }

          if (v16 == 50701)
          {
            sub_100171CD8(NRDLocalDevice, v17, WeakRetained[4]);
            [WeakRetained checkProxyAgentWithForceUpdate:0];
          }

          else if (v16 == 50702)
          {
            v22 = [WeakRetained linkDelegate];
            [v22 linkDidReceiveData:WeakRetained data:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    v3 = v23;
  }
}

void sub_100076514(unsigned __int8 *a1, uint64_t a2)
{
  String = NRDataProtectionClassCreateString();
  if (a1[16] == 255)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_11;
    }

    v10 = _NRCopyLogObjectForNRUUID();
    v11 = [a1 copyDescription];
    _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: Not restarting %@ session because cancelled", "", "[NRLinkFixedInterface restartIKESessionForDataProtectionClass:]", 249, v11, String);
LABEL_10:

    goto LABEL_11;
  }

  [a1 invalidateIKESessionForClass:a2];
  v4 = _NRCopyLogObjectForNRUUID();
  if (a2 != 4)
  {
    v12 = _NRLogIsLevelEnabled();

    if (!v12)
    {
      goto LABEL_11;
    }

    v10 = _NRCopyLogObjectForNRUUID();
    v11 = [a1 copyDescription];
    _NRLogWithArgs(v10, 17, "%@: %@ session as unsupported", v11, String);
    goto LABEL_10;
  }

  v5 = _NRLogIsLevelEnabled();

  if (v5)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    v7 = [a1 copyDescription];
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Restarting %@ session", "", "[NRLinkFixedInterface restartIKESessionForDataProtectionClass:]", 257, v7, String);
  }

  sub_1000766CC(a1);
LABEL_11:
}

void sub_1000766CC(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 112);
  if ((v2 - 1) >= 2)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    String = _NRCopyLogObjectForNRUUID();
    v3 = [a1 copyDescription];
    _NRLogWithArgs(String, 17, "%@: Unsupported ikev2 role %u", v3, *(a1 + 112));
    goto LABEL_10;
  }

  if (v2 == 1)
  {
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    String = qword_100228E80;
    v3 = [a1 localInterfaceName];
    v4 = [a1 localOuterEndpoint];
    sub_100016A08(String, a1, v3, v4);
  }

  else
  {
    if (*(a1 + 271))
    {
      return;
    }

    String = NRDataProtectionClassCreateString();
    if (*(a1 + 16) == 255)
    {
      v23 = _NRCopyLogObjectForNRUUID();
      v24 = _NRLogIsLevelEnabled();

      if (!v24)
      {
        goto LABEL_11;
      }

      v3 = _NRCopyLogObjectForNRUUID();
      v4 = [a1 copyDescription];
      _NRLogWithArgs(v3, 0, "%s%.30s:%-4d %@: Not starting %@ initiator session because cancelled", "", "[NRLinkFixedInterface setupIPsecIfNecessary:]", 482, v4, String);
    }

    else
    {
      v7 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
      v3 = v7;
      if (v7)
      {
        v8 = *(v7 + 72);

        if (v8)
        {
          v4 = sub_100146654(v3, 0);
          [v4 setRandomizeLocalPort:1];
          v9 = [a1 localInterfaceName];
          [v4 setOutgoingInterfaceName:v9];

          v10 = [a1 remoteOuterEndpoint];
          [v4 setRemoteEndpoint:v10];

          [v4 setRequestChildlessSA:{objc_msgSend(a1, "hasCompanionDatapath") ^ 1}];
          v11 = sub_100147400(1, v3, 4);
          [a1 invalidateIKESessionForClass:4];
          v12 = [[NSString alloc] initWithFormat:@"terminus-FixedInterface-%@", String];
          v13 = [NEIKEv2Session alloc];
          v14 = v3;
          v15 = sub_100146D34(0, 0);
          [v15 setMode:2];
          [v15 setReplayWindowSize:4];
          sub_100147008(v15, v14, 0);

          v16 = [v13 initWithIKEConfig:v4 firstChildConfig:v15 sessionConfig:v11 queue:*(a1 + 8) ipsecInterface:objc_msgSend(a1 ikeSocketHandler:"virtualInterface") kernelSASessionName:0 packetDelegate:{v12, 0}];
          v17 = *(a1 + 271);
          *(a1 + 271) = v16;

          v18 = *(a1 + 271);
          if (v18)
          {
            [a1 reportEvent:3015 detailsFormat:@"%@ %@", String, v18];
            sub_10007501C(a1);
            v19 = _NRCopyLogObjectForNRUUID();
            v20 = _NRLogIsLevelEnabled();

            if (v20)
            {
              v21 = _NRCopyLogObjectForNRUUID();
              v22 = [a1 copyDescription];
              _NRLogWithArgs(v21, 0, "%s%.30s:%-4d %@: Connecting initiator %@ session %@", "", "[NRLinkFixedInterface setupIPsecIfNecessary:]", 520, v22, String, *(a1 + 271));
            }

            [*(a1 + 271) connect];
          }

          else
          {
            v29 = _NRCopyLogObjectForNRUUID();
            v30 = _NRLogIsLevelEnabled();

            if (v30)
            {
              v31 = _NRCopyLogObjectForNRUUID();
              v32 = [a1 copyDescription];
              _NRLogWithArgs(v31, 17, "%@: Failed to create initiator %@ IKE session", v32, String);
            }
          }
        }

        else
        {
          v25 = _NRCopyLogObjectForNRUUID();
          v26 = _NRLogIsLevelEnabled();

          if (!v26)
          {
            goto LABEL_10;
          }

          v4 = _NRCopyLogObjectForNRUUID();
          v11 = [a1 copyDescription];
          _NRLogWithArgs(v4, 0, "%s%.30s:%-4d %@: Not starting %@ IKE initiator session because we do not have keys %@", "", "[NRLinkFixedInterface setupIPsecIfNecessary:]", 491, v11, String, v3);
        }
      }

      else
      {
        v27 = _NRCopyLogObjectForNRUUID();
        v28 = _NRLogIsLevelEnabled();

        if (!v28)
        {
          v3 = 0;
          goto LABEL_10;
        }

        v4 = _NRCopyLogObjectForNRUUID();
        v11 = [a1 copyDescription];
        _NRLogWithArgs(v4, 17, "%@: Not starting %@ IKE initiator session because localDevice is missing", v11, String);
      }
    }
  }

LABEL_10:
LABEL_11:
}

uint64_t sub_100076C30(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != 4)
    {
      v10[1] = a2;
      v2 = sub_10007478C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v4 = sub_10007478C();
        String = NRDataProtectionClassCreateString();
        _NRLogWithArgs(v4, 16, "%s%.30s:%-4d ABORTING: Cannot copy IKE session pointer for %@", "", "[NRLinkFixedInterface ikeSessionPointerForDataProtectionClass:]", 232, String);
      }

      v6 = _os_log_pack_size();
      v7 = __error();
      v8 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, *v7, &_mh_execute_header, "%{public}s Cannot copy IKE session pointer for %@");
      v9 = NRDataProtectionClassCreateString();
      *v8 = 136446466;
      *(v8 + 4) = "[NRLinkFixedInterface ikeSessionPointerForDataProtectionClass:]";
      *(v8 + 12) = 2112;
      *(v8 + 14) = v9;
      sub_10007478C();
      _NRLogAbortWithPack();
    }

    result += 271;
  }

  return result;
}

void sub_10007744C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100077488(uint64_t a1, void *a2)
{
  path = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained state];
    if (path)
    {
      if (v5 != 255 && nw_path_get_status(path) == nw_path_status_satisfied)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v8 = _NRCopyLogObjectForNRUUID();
          v9 = [v4 copyDescription];
          _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: Restarting IKE session as path is satisfied", "", "[NRLinkFixedInterface start]_block_invoke", 182, v9);
        }

        sub_1000766CC(v4);
      }
    }
  }
}

void sub_1000779F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1 || *(v1 + 14) != 1)
  {
    return;
  }

  if (!*(v1 + 16))
  {
    v29 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    WeakRetained = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(WeakRetained, 17, "Received an unexpected unassertAgent call");
    goto LABEL_55;
  }

  WeakRetained = objc_loadWeakRetained((v1 + 64));
  v3 = *(a1 + 32);
  if (v3)
  {
    --*(v3 + 16);
  }

  v4 = _NRCopyLogObjectForNRUUID();
  v5 = _NRLogIsLevelEnabled();

  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = v6[5];
    }

    v7 = v6;
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = v8;
    v10 = *(a1 + 32);
    if (v10)
    {
      LODWORD(v10) = *(v10 + 16);
    }

    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Link preferences agent un-asserted (Total remaining assertions: %u)", "", "[NRBTLinkPreferencesAgent unassertAgentWithOptions:]_block_invoke", 220, v10);
  }

  v11 = *(a1 + 32);
  if (!v11 || !*(v11 + 16))
  {
    [WeakRetained deviceHasBTLinkUpgradeRequest:0];
  }

  v12 = [*(a1 + 40) objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = v13 ? *(v13 + 80) : 0;
    v15 = [v14 objectForKeyedSubscript:v12];

    if (v15)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v17 = *(v16 + 80);
      }

      else
      {
        v17 = 0;
      }

      v18 = [v17 objectForKeyedSubscript:v12];
      v19 = *(a1 + 32);
      if (v19)
      {
        v20 = *(v19 + 88);
      }

      else
      {
        v20 = 0;
      }

      if ([v20 countForObject:v12])
      {
        v21 = *(a1 + 32);
        v22 = v21 ? *(v21 + 88) : 0;
        [v22 removeObject:v12];
        v23 = *(a1 + 32);
        v24 = v23 ? *(v23 + 88) : 0;
        if (![v24 countForObject:v12])
        {
          v25 = *(a1 + 32);
          if (v25)
          {
            v26 = *(v25 + 80);
          }

          else
          {
            v26 = 0;
          }

          [v26 setObject:0 forKeyedSubscript:v12];
          [WeakRetained reportBTLinkUpgradeClientRemoved:v18];
        }
      }
    }
  }

  v27 = *(a1 + 32);
  if (v27)
  {
    if (*(v27 + 16))
    {
      goto LABEL_54;
    }

    v27 = *(v27 + 88);
  }

  v28 = v27;
  if ([v28 count])
  {

LABEL_44:
    v34 = _NRCopyLogObjectForNRUUID();
    v35 = _NRLogIsLevelEnabled();

    if (v35)
    {
      v36 = *(a1 + 32);
      if (v36)
      {
        v36 = v36[5];
      }

      v37 = v36;
      v38 = _NRCopyLogObjectForNRUUID();
      v39 = *(a1 + 32);
      if (v39)
      {
        v39 = v39[11];
      }

      v40 = v39;
      v41 = [v40 count];
      v42 = *(a1 + 32);
      if (v42)
      {
        v43 = *(v42 + 80);
      }

      else
      {
        v43 = 0;
      }

      _NRLogWithArgs(v38, 16, "%s%.30s:%-4d non-empty client dictionaries without valid agent assert count (%zu/%zu)", "", "-[NRBTLinkPreferencesAgent unassertAgentWithOptions:]_block_invoke", 239, v41, [v43 count]);
    }

    v44 = _NRCopyLogObjectForNRUUID();
    v45 = _NRLogIsLevelEnabled();

    if (v45)
    {
      v46 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v46, 17, "non-empty client dictionaries without valid agent assert count");
    }

    goto LABEL_54;
  }

  v31 = *(a1 + 32);
  if (v31)
  {
    v32 = *(v31 + 80);
  }

  else
  {
    v32 = 0;
  }

  v33 = [v32 count];

  if (v33)
  {
    goto LABEL_44;
  }

LABEL_54:

LABEL_55:
}

void sub_100077EA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || *(v2 + 14) != 1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 64));
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  [WeakRetained deviceHasBTLinkUpgradeRequest:1];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
LABEL_7:
    *(v4 + 16) = v5 + 1;
  }

  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[5];
    }

    v9 = v8;
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = v10;
    v12 = *(a1 + 32);
    if (v12)
    {
      LODWORD(v12) = *(v12 + 16);
    }

    _NRLogWithArgs(v10, 0, "%s%.30s:%-4d Link preferences agent asserted (Total active assertions: %u)", "", "[NRBTLinkPreferencesAgent assertAgentWithOptions:]_block_invoke", 186, v12);
  }

  v13 = NWNetworkAgentStartOptionClientUUID;
  v14 = [*(a1 + 40) objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = v16;
  if (v15)
  {
    if (v16)
    {
      v18 = [v16 objectForKeyedSubscript:NWNetworkAgentStartOptionPID];
      if (v18)
      {
        goto LABEL_17;
      }

      v19 = [v17 objectForKeyedSubscript:v13];
      if (!v19)
      {
        v18 = 0;
        goto LABEL_18;
      }

      v29 = [NWPath pathForClientID:v19];
      v30 = [v29 parameters];
      v31 = [v30 copyCParameters];

      if (v31 && (pid = nw_parameters_get_pid(), pid >= 1))
      {
        v18 = [NSNumber numberWithInt:pid];
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
LABEL_17:
        v19 = sub_10013CB6C([v18 intValue], 0);
      }

      else
      {
        v19 = 0;
      }

LABEL_18:

      if (v19 && v14)
      {
        v20 = *(a1 + 32);
        if (v20)
        {
          v21 = *(v20 + 80);
        }

        else
        {
          v21 = 0;
        }

        v22 = [v21 objectForKeyedSubscript:v14];

        if (!v22)
        {
          v23 = *(a1 + 32);
          if (v23)
          {
            v24 = *(v23 + 80);
          }

          else
          {
            v24 = 0;
          }

          [v24 setObject:v19 forKeyedSubscript:v14];
        }

        v25 = *(a1 + 32);
        if (v25)
        {
          v26 = *(v25 + 88);
        }

        else
        {
          v26 = 0;
        }

        if (![v26 countForObject:v14])
        {
          [WeakRetained reportBTLinkUpgradeClientAdded:v19];
        }

        v27 = *(a1 + 32);
        if (v27)
        {
          v28 = *(v27 + 88);
        }

        else
        {
          v28 = 0;
        }

        [v28 addObject:v14];
      }

      goto LABEL_33;
    }

    v33 = sub_1000781E4();
    v34 = _NRLogIsLevelEnabled();

    if (v34)
    {
      v18 = sub_1000781E4();
      _NRLogWithArgs(v18, 17, "%s called with null options", "[NRBTLinkPreferencesAgent retrieveClientNameFromOptions:]");
      v19 = 0;
      goto LABEL_18;
    }
  }

  v19 = 0;

LABEL_33:
}

id sub_1000781E4()
{
  if (qword_100229010 != -1)
  {
    dispatch_once(&qword_100229010, &stru_1001FAE50);
  }

  v1 = qword_100229008;

  return v1;
}

void sub_100078238(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229008;
  qword_100229008 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000782D4(uint64_t a1)
{
  if (a1 && *(a1 + 14) == 1)
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 72));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    if (([*(a1 + 56) unregisterNetworkAgent] & 1) == 0)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v6, 17, "Failed to unregister BTLinkPreferences agent");
      }
    }

    v7 = *(a1 + 56);
    *(a1 + 56) = 0;

    *(a1 + 14) = 0;
    v8 = *(a1 + 40);
    v10 = [a1 agentUUID];
    v9 = [v10 UUIDString];
    sub_1000059A8(v8, 18003, 0, v9);
  }
}

id *sub_10007850C(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v33.receiver = a1;
    v33.super_class = NRBTLinkPreferencesAgent;
    v11 = objc_msgSendSuper2(&v33, "init");
    if (!v11)
    {
      v26 = sub_1000781E4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v28 = sub_1000781E4();
        _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRBTLinkPreferencesAgent initWithNRUUID:queue:delegate:]", 41);
      }

      v29 = _os_log_pack_size();
      v30 = __error();
      v31 = _os_log_pack_fill(&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v29, *v30, &_mh_execute_header, "%{public}s [super init] failed");
      *v31 = 136446210;
      *(v31 + 4) = "[NRBTLinkPreferencesAgent initWithNRUUID:queue:delegate:]";
      sub_1000781E4();
      _NRLogAbortWithPack();
    }

    a1 = v11;
    objc_storeStrong(v11 + 6, a3);
    objc_storeStrong(a1 + 5, a2);
    v12 = +[NSUUID UUID];
    [a1 setAgentUUID:v12];

    [a1 setUserActivated:1];
    [a1 setAgentDescription:@"Link preferences netagent"];
    objc_storeWeak(a1 + 8, v10);
    v13 = [NSString alloc];
    v14 = [a1 agentUUID];
    v15 = [v14 UUIDString];
    v16 = [v13 initWithFormat:@"NRBTLinkPreferencesAgent-%@", v15];
    v17 = a1[9];
    a1[9] = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = a1[10];
    a1[10] = v18;

    v20 = objc_alloc_init(NSCountedSet);
    v21 = a1[11];
    a1[11] = v20;

    v22 = a1[5];
    v23 = [a1 agentUUID];
    v24 = [v23 UUIDString];
    sub_1000059A8(v22, 18001, 0, v24);
  }

  return a1;
}

void sub_1000787C8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229020;
  qword_100229020 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007880C(id a1)
{
  v1 = sub_100003490();
  dispatch_assert_queue_V2(v1);

  byte_100229030 = 0;
  objc_opt_self();
  objc_opt_self();
  if (qword_1002291D8)
  {
    v2 = *(qword_1002291D8 + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_1002291D8;
  v4 = [v2 count];

  if (!v4 && (!sub_1000B79D8(v5, v6) || (sub_10016C59C(NRDLocalDevice) & 1) == 0))
  {
    v7 = qword_100229018;
    v8 = qword_100229018;
    qword_100229018 = 0;

    ne_session_clear_caches();
    v9 = +[NSFileManager defaultManager];
    v16 = 0;
    v10 = [v9 removeItemAtPath:@"/var/mobile/Library/terminus/com.apple.terminusd.keepalive" error:&v16];
    v11 = v16;

    if ((v10 & 1) == 0)
    {
      v12 = v11;
      v13 = v12;
      if (v12 && [v12 code] == 4)
      {
        v14 = [v13 domain];
        v15 = [v14 isEqualToString:NSCocoaErrorDomain];

        if (v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      if (qword_100229028 != -1)
      {
        dispatch_once(&qword_100229028, &stru_1001FAED0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229028 != -1)
        {
          dispatch_once(&qword_100229028, &stru_1001FAED0);
        }

        _NRLogWithArgs(qword_100229020, 17, "Deleting empty keep alive file %s failed: %@", "/var/mobile/Library/terminus/com.apple.terminusd.keepalive", v13);
      }
    }

LABEL_18:
  }
}

uint64_t sub_100079348(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v21 = WeakRetained;
    WeakRetained = [WeakRetained cancelled];
    v3 = v21;
    if ((WeakRetained & 1) == 0)
    {
      v4 = [v21 aggregateStatsTimerSource];
      v5 = *(a1 + 32);

      v3 = v21;
      if (v4 == v5)
      {
        WeakRetained = [v21 totalReceivedUpdates];
        v3 = v21;
        if (WeakRetained)
        {
          v6 = objc_alloc_init(NRAnalyticsALUAdviceAggregateStats);
          v7 = [v21 totalReceivedUpdates];
          if (v6)
          {
            v6->_totalAdviceCount = v7;
            v6->_totalAdviceCountForWiFi = [v21 totalCountForWiFiAdvice];
            v6->_totalAdviceCountForBTClassic = [v21 totalCountForBTClassicAdvice];
          }

          else
          {
            [v21 totalCountForWiFiAdvice];
            [v21 totalCountForBTClassicAdvice];
          }

          [v21 totalDurationForWiFiAdvice];
          if (v8 > 0.0)
          {
            if ([v21 totalCountForWiFiAdvice])
            {
              [v21 totalDurationForWiFiAdvice];
              v10 = v9;
              v11 = [v21 totalCountForWiFiAdvice];
              if (v6)
              {
                v6->_avgDurationForWiFiAdvice = v10 / v11;
              }
            }
          }

          [v21 totalDurationForBTClassicAdvice];
          if (v12 > 0.0)
          {
            if ([v21 totalCountForBTClassicAdvice])
            {
              [v21 totalDurationForBTClassicAdvice];
              v14 = v13;
              v15 = [v21 totalCountForBTClassicAdvice];
              if (v6)
              {
                v6->_avgDurationForBTClassicAdvice = v14 / v15;
              }
            }
          }

          [v21 totalIntervalForNonDefaultAdvice];
          if (v16 > 0.0)
          {
            if ([v21 totalCountForNonDefaultAdvice])
            {
              [v21 totalIntervalForNonDefaultAdvice];
              v18 = v17;
              v19 = [v21 totalCountForNonDefaultAdvice];
              if (v6)
              {
                v6->_avgIntervalForNonDefaultAdvice = v18 / v19;
              }
            }
          }

          [(NRAnalyticsALUAdviceAggregateStats *)v6 submit];
          [v21 setTotalReceivedUpdates:0];
          [v21 setTotalCountForWiFiAdvice:0];
          [v21 setTotalDurationForWiFiAdvice:0.0];
          [v21 setTotalCountForBTClassicAdvice:0];
          [v21 setTotalDurationForBTClassicAdvice:0.0];
          [v21 setTotalCountForNonDefaultAdvice:0];
          [v21 setTotalIntervalForNonDefaultAdvice:0.0];

          v3 = v21;
        }
      }
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_100079714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained;
    WeakRetained = [WeakRetained cancelled];
    v3 = v11;
    if ((WeakRetained & 1) == 0)
    {
      v4 = [v11 wifiAdviceMonitorTimerSource];
      v5 = *(a1 + 32);

      v3 = v11;
      if (v4 == v5)
      {
        v6 = [[NSString alloc] initWithFormat:@"Advice exceeds %u seconds"];
        sub_10013C2A8(@"NRAutoLinkUpgrade", @"WiFiAdvice", v6, 0, 0, v7, v8, v9, 1800);

        v3 = v11;
      }
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_100079A1C(void *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v23.receiver = a1;
  v23.super_class = NRLinkUpgradeReport;
  v3 = objc_msgSendSuper2(&v23, "init");
  if (!v3)
  {
    v17 = sub_100079C98();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v5 = "[NRLinkUpgradeReport initWithUpgradeType:]";
    if (IsLevelEnabled)
    {
      v19 = sub_100079C98();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRLinkUpgradeReport initWithUpgradeType:]", 226);
    }

    v4 = _os_log_pack_size();
    v20 = &v23 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = __error();
    v22 = _os_log_pack_fill(v20, v4, *v21, &_mh_execute_header, "%{public}s [super init] failed");
    *v22 = 136446210;
    *(v22 + 4) = "[NRLinkUpgradeReport initWithUpgradeType:]";
    sub_100079C98();
    _NRLogAbortWithPack();
    goto LABEL_30;
  }

  v4 = v3;
  v3[8] = a2;
  objc_opt_self();
  v5 = &qword_100229000;
  if (qword_1002290C0 != -1)
  {
LABEL_30:
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v6 = qword_1002290B8;
  if (v6)
  {
    v7 = v6[6];

    if (v7 >= 0x29)
    {
      v8 = 50;
    }

    else
    {
      v8 = 40;
    }

    if (v7 >= 0x1F)
    {
      v9 = v8;
    }

    else
    {
      v9 = 30;
    }

    if (v7 >= 0x15)
    {
      v10 = v9;
    }

    else
    {
      v10 = 20;
    }

    if (v7 >= 0xB)
    {
      v11 = v10;
    }

    else
    {
      v11 = 10;
    }

    if (!v7)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *(v4 + 9) = v11;
  v24 = 0;
  v12 = IOPSGetPercentRemaining();
  v13 = v24;
  if (v12)
  {
    v13 = 0;
  }

  *(v4 + 10) = v13;
  objc_opt_self();
  if (v5[24] != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14)
  {
    v15 = v14[11];

    if (v15 == 1)
    {
      *(v4 + 16) |= 0x20u;
    }
  }

  return v4;
}

id sub_100079C98()
{
  if (qword_100229040 != -1)
  {
    dispatch_once(&qword_100229040, &stru_1001FAF10);
  }

  v1 = qword_100229038;

  return v1;
}

void sub_100079CEC(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229038;
  qword_100229038 = v1;

  _objc_release_x1(v1, v2);
}

__CFString *sub_100079D30(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = v2;
  if ((a1 & 0x100) != 0)
  {
    [v2 addObject:@"TxSml"];
    if ((a1 & 0x200) == 0)
    {
LABEL_3:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"TxMed"];
  if ((a1 & 0x400) == 0)
  {
LABEL_4:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:@"TxLrg"];
  if ((a1 & 0x4000) == 0)
  {
LABEL_5:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 addObject:@"SvcVo"];
  if ((a1 & 0x8000) == 0)
  {
LABEL_6:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 addObject:@"SvcVi"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_7:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 addObject:@"RdPoor"];
  if ((a1 & 0x80000) == 0)
  {
LABEL_8:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 addObject:@"RdFair"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_9:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 addObject:@"RdGood"];
  if ((a1 & 0x200000) == 0)
  {
LABEL_10:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 addObject:@"RdBest"];
  if ((a1 & 0x400000) == 0)
  {
LABEL_11:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 addObject:@"CngHi"];
  if ((a1 & 0x800000) == 0)
  {
LABEL_12:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 addObject:@"NotCngHi"];
  if ((a1 & 0x1000000) == 0)
  {
LABEL_13:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 addObject:@"Plgd"];
  if ((a1 & 0x2000000) == 0)
  {
LABEL_14:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 addObject:@"NotPlgd"];
  if ((a1 & 0x4000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 addObject:@"BtryPoor"];
  if ((a1 & 0x8000000) == 0)
  {
LABEL_16:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 addObject:@"BtryFair"];
  if ((a1 & 0x10000000) == 0)
  {
LABEL_17:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 addObject:@"BtryGood"];
  if ((a1 & 0x20000000) == 0)
  {
LABEL_18:
    if ((a1 & 0x100000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 addObject:@"BtryBest"];
  if ((a1 & 0x100000000000000) == 0)
  {
LABEL_19:
    if ((a1 & 0x200000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 addObject:@"TxDone"];
  if ((a1 & 0x200000000000000) == 0)
  {
LABEL_20:
    if ((a1 & 0x400000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 addObject:@"Rst"];
  if ((a1 & 0x400000000000000) == 0)
  {
LABEL_21:
    if ((a1 & 0x800000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 addObject:@"UnexpLnkSwtch"];
  if ((a1 & 0x800000000000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 addObject:@"Inactv"];
  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x2000000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 addObject:@"RdDtr"];
  if ((a1 & 0x2000000000000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x4000000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_50:
  [v3 addObject:@"BtryDtr"];
  if ((a1 & 0x4000000000000000) != 0)
  {
LABEL_25:
    [v3 addObject:@"LnkSwtchFlr"];
  }

LABEL_26:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@"_"];
  }

  else
  {
    v4 = @"<none>";
  }

  return v4;
}

id *sub_100079FE8(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = NRAutoLinkUpgradeMonitor;
    v8 = objc_msgSendSuper2(&v17, "init");
    if (!v8)
    {
      v10 = sub_100079C98();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = sub_100079C98();
        _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRAutoLinkUpgradeMonitor initWithQueue:nrUUID:]", 379);
      }

      v13 = _os_log_pack_size();
      v14 = __error();
      v15 = _os_log_pack_fill(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, *v14, &_mh_execute_header, "%{public}s [super init] failed");
      *v15 = 136446210;
      *(v15 + 4) = "[NRAutoLinkUpgradeMonitor initWithQueue:nrUUID:]";
      sub_100079C98();
      _NRLogAbortWithPack();
    }

    a1 = v8;
    v8[4] = atomic_fetch_add_explicit(&qword_100228388, 1uLL, memory_order_relaxed);
    objc_storeStrong(v8 + 5, a2);
    objc_storeStrong(a1 + 2, a3);
    [a1 reportEvent:30001];
  }

  return a1;
}

void sub_10007A18C(void *a1, void *a2)
{
  v8 = a2;
  if (a1)
  {
    if ([a1 cancelled])
    {
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_10;
      }

      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 2, "%s%.30s:%-4d %@: cancelled, ignoring request", "", "[NRAutoLinkUpgradeMonitor reportWiFiAdviceUpgraded:forAdviceID:]", 495, a1);
LABEL_8:

      goto LABEL_10;
    }

    if ([a1 hasReportedUpgradeStatusToSymptoms])
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = _NRLogIsLevelEnabled();

      if (!v7)
      {
        goto LABEL_10;
      }

      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 1, "%s%.30s:%-4d %@: already reported upgrade status, returning", "", "[NRAutoLinkUpgradeMonitor reportWiFiAdviceUpgraded:forAdviceID:]", 500, a1);
      goto LABEL_8;
    }

    [a1 setHasReportedUpgradeStatusToSymptoms:1];
  }

LABEL_10:
}

void sub_10007A438(uint64_t a1)
{
  v1 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v3 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v3, 17, "Unexpected un-assert received");
  }
}

void sub_10007A570(uint64_t a1)
{
  v1 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v3 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v3, 17, "Unexpected assert received");
  }
}

id *sub_10007A8DC(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (v6)
    {
      if (v7)
      {
        v50.receiver = a1;
        v50.super_class = NRCompanionLinkViabilityAgent;
        v9 = objc_msgSendSuper2(&v50, "init");
        if (v9)
        {
          v10 = v9;
          objc_storeStrong(v9 + 5, a3);
          objc_storeStrong(v10 + 4, a2);
          v11 = +[NSUUID UUID];
          [v10 setAgentUUID:v11];

          [v10 setAgentDescription:@"Companion link viability netagent"];
          v12 = [NSString alloc];
          v13 = [v10 agentUUID];
          v14 = [v13 UUIDString];
          v15 = [v12 initWithFormat:@"NRCompanionLinkViabilityAgent-%@", v14];
          v16 = v10[7];
          v10[7] = v15;

          v17 = sub_100163A30(NRDLocalDevice, v10[4]);
          if (v17)
          {
            v18 = v17;
            v19 = [[NSString alloc] initWithFormat:@"%@", v17];
            v20 = v10[8];
            v10[8] = v19;

            v21 = v10[4];
            v22 = v10[8];
            v23 = v21;
            v24 = [v10 agentUUID];
            v25 = [v24 UUIDString];
            sub_1000059A8(v23, 19001, v22, v25);

            a1 = v10;
            goto LABEL_7;
          }

          v43 = sub_10007AD90();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v45 = sub_10007AD90();
            _NRLogWithArgs(v45, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRCompanionLinkViabilityAgent initWithNRUUID:queue:]", 54);
          }

          v46 = _os_log_pack_size();
          v47 = __error();
          v48 = _os_log_pack_fill(&v49 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v46, *v47, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
          *v48 = 136446210;
          *(v48 + 4) = "[NRCompanionLinkViabilityAgent initWithNRUUID:queue:]";
LABEL_21:
          sub_10007AD90();
          _NRLogAbortWithPack();
        }

        v38 = sub_10007AD90();
        v39 = _NRLogIsLevelEnabled();

        if (v39)
        {
          v40 = sub_10007AD90();
          _NRLogWithArgs(v40, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRCompanionLinkViabilityAgent initWithNRUUID:queue:]", 43);
        }

        v41 = _os_log_pack_size();
        v42 = *__error();
        v32 = _os_log_pack_fill(&v49 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v42, &_mh_execute_header, "%{public}s [super init] failed");
      }

      else
      {
        v33 = sub_10007AD90();
        v34 = _NRLogIsLevelEnabled();

        if (v34)
        {
          v35 = sub_10007AD90();
          _NRLogWithArgs(v35, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (queue) != ((void*)0)", "", "[NRCompanionLinkViabilityAgent initWithNRUUID:queue:]", 41);
        }

        v36 = _os_log_pack_size();
        v37 = *__error();
        v32 = _os_log_pack_fill(&v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v37, &_mh_execute_header, "%{public}s Assertion Failed: (queue) != ((void*)0)");
      }
    }

    else
    {
      v27 = sub_10007AD90();
      v28 = _NRLogIsLevelEnabled();

      if (v28)
      {
        v29 = sub_10007AD90();
        _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "[NRCompanionLinkViabilityAgent initWithNRUUID:queue:]", 40);
      }

      v30 = _os_log_pack_size();
      v31 = *__error();
      v32 = _os_log_pack_fill(&v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v31, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    }

    *v32 = 136446210;
    *(v32 + 4) = "[NRCompanionLinkViabilityAgent initWithNRUUID:queue:]";
    goto LABEL_21;
  }

LABEL_7:

  return a1;
}

id sub_10007AD90()
{
  if (qword_100229050 != -1)
  {
    dispatch_once(&qword_100229050, &stru_1001FAF30);
  }

  v1 = qword_100229048;

  return v1;
}

void sub_10007ADE4(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229048;
  qword_100229048 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007AE28(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 56));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    v4 = *(a1 + 48);
    if (v4)
    {
      if (([v4 unregisterNetworkAgent] & 1) == 0)
      {
        v5 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v7 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v7, 17, "Failed to unregister CompanionLinkViability agent");
        }
      }

      v8 = *(a1 + 48);
      *(a1 + 48) = 0;

      v9 = *(a1 + 32);
      v10 = *(a1 + 64);
      v11 = v9;
      v12 = [a1 agentUUID];
      v13 = [v12 UUIDString];
      sub_1000059A8(v11, 19003, v10, v13);
    }

    *(a1 + 14) = 0;
  }
}

void sub_10007B160(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v36 = v2;
  if (!v2)
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      _NRLogWithArgs(qword_100229058, 17, "Unassert message did not contain client UUID");
    }

    goto LABEL_73;
  }

  v3 = v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  if (![v5 containsObject:v3])
  {
    goto LABEL_73;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 56);
  }

  else
  {
    v7 = 0;
  }

  if (![v7 count])
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      _NRLogWithArgs(qword_100229058, 17, "Unexpected agent unassert received");
    }

    goto LABEL_73;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 56);
  }

  else
  {
    v9 = 0;
  }

  [v9 removeObject:v36];
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 64);
    if (v11)
    {
      [v11 removeObjectForKey:v36];
    }
  }

  if (qword_100229060 != -1)
  {
    dispatch_once(&qword_100229060, &stru_1001FAF50);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    v12 = qword_100229058;
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 64);
      v13 = *(a1 + 40);
      if (v14)
      {
        v15 = v14;
        if (v13)
        {
          v13 = *(v13 + 64);
        }

        _NRLogWithArgs(v12, 1, "%s%.30s:%-4d Direct to cloud request went away. Remaining clients: %@", "", "[NRDirectToCloudAgent unassertAgentWithOptions:]_block_invoke", 266, v13);

        goto LABEL_38;
      }

      if (v13)
      {
        v13 = *(v13 + 56);
      }
    }

    _NRLogWithArgs(v12, 1, "%s%.30s:%-4d Direct to cloud request went away. Remaining clients: %@", "", "[NRDirectToCloudAgent unassertAgentWithOptions:]_block_invoke", 266, v13);
LABEL_38:
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    if ([*(v16 + 56) count])
    {
LABEL_41:
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v17 = qword_1002290B8;
      v18 = v17;
      if (v17)
      {
        v19 = *(v17 + 6);
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = [*(a1 + 40) agentUUID];
      v22 = *(a1 + 40);
      if (v22)
      {
        v23 = *(v22 + 64);
      }

      else
      {
        v23 = 0;
      }

      v24 = [v23 allValues];
      sub_10017F43C(v20, 64, v21, v24);

      goto LABEL_73;
    }
  }

  else if ([0 count])
  {
    goto LABEL_41;
  }

  if (qword_100229060 != -1)
  {
    dispatch_once(&qword_100229060, &stru_1001FAF50);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    _NRLogWithArgs(qword_100229058, 0, "%s%.30s:%-4d Direct To Cloud requests went away", "", "[NRDirectToCloudAgent unassertAgentWithOptions:]_block_invoke", 268);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v25 = qword_1002290B8;
  v26 = v25;
  if (v25)
  {
    v27 = *(v25 + 6);
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;
  sub_10017F5C8(v28, 0);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v29 = qword_1002290B8;
  v30 = v29;
  if (v29)
  {
    v31 = *(v29 + 6);
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;
  v33 = [*(a1 + 40) agentUUID];
  sub_10017F364(v32, v33);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v34 = qword_1002290B8;
  [v34 directToCloudRequestUnavailable];

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v35 = qword_1002290B8;
  if (v35)
  {
    sub_1000059A8(0, 14005, 0, 0);
  }

LABEL_73:
}

void sub_10007B6F8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229058;
  qword_100229058 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007B7E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return;
  }

  v3 = *(v1 + 32);
  v4 = *(a1 + 40);
  dispatch_assert_queue_V2(v3);
  v37 = [v4 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];

  if (!v37)
  {
    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      _NRLogWithArgs(qword_100229058, 17, "no client UUID");
    }

    v36 = 0;
    goto LABEL_61;
  }

  v5 = [*(v1 + 56) containsObject:v37];
  v6 = v37;
  if (v5)
  {
LABEL_12:

    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *(v17 + 56);
    }

    else
    {
      v18 = 0;
    }

    if ([v18 count] == 1)
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229060 != -1)
        {
          dispatch_once(&qword_100229060, &stru_1001FAF50);
        }

        _NRLogWithArgs(qword_100229058, 0, "%s%.30s:%-4d Direct To Cloud request received", "", "[NRDirectToCloudAgent assertAgentWithOptions:]_block_invoke", 227);
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v19 = qword_1002290B8;
      v20 = v19;
      if (v19)
      {
        v21 = *(v19 + 6);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      sub_10017F5C8(v22, 1);
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v23 = qword_1002290B8;
    v24 = v23;
    if (v23)
    {
      v25 = *(v23 + 6);
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = [*(a1 + 32) agentUUID];
    v28 = *(a1 + 32);
    if (v28)
    {
      v29 = *(v28 + 64);
    }

    else
    {
      v29 = 0;
    }

    v30 = [v29 allValues];
    sub_10017F43C(v26, 64, v27, v30);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v31 = qword_1002290B8;
    [v31 directToCloudRequestAvailable];

    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_56;
    }

    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    v32 = qword_100229058;
    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = *(v33 + 64);
      v33 = *(a1 + 32);
      if (v34)
      {
        v35 = v34;
        if (v33)
        {
          v33 = *(v33 + 64);
        }

        _NRLogWithArgs(v32, 1, "%s%.30s:%-4d Direct To Cloud clients: %@", "", "[NRDirectToCloudAgent assertAgentWithOptions:]_block_invoke", 237, v33);

        goto LABEL_55;
      }

      if (v33)
      {
        v33 = *(v33 + 56);
      }
    }

    _NRLogWithArgs(v32, 1, "%s%.30s:%-4d Direct To Cloud clients: %@", "", "[NRDirectToCloudAgent assertAgentWithOptions:]_block_invoke", 237, v33);
LABEL_55:

LABEL_56:
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v37 = qword_1002290B8;
    if (v37)
    {
      sub_1000059A8(0, 14004, 0, 0);
    }

    goto LABEL_60;
  }

  v7 = [NWPath pathForClientID:v37];
  v8 = [v7 parameters];
  v9 = [v8 copyCParameters];

  if (v9)
  {
    [*(v1 + 56) addObject:v37];
    if (_NRIsAppleInternal())
    {
      if (!*(v1 + 64))
      {
        v10 = objc_alloc_init(NSMutableDictionary);
        v11 = *(v1 + 64);
        *(v1 + 64) = v10;
      }

      pid = nw_parameters_get_pid();
      v13 = sub_10013CB6C(pid, 0);
      v14 = [v7 effectiveRemoteEndpoint];

      if (v14)
      {
        v15 = [[NSMutableString alloc] initWithString:v13];
        v16 = [v7 effectiveRemoteEndpoint];
        [v15 appendFormat:@" (%@)", v16];

        v13 = v15;
      }

      [*(v1 + 64) setObject:v13 forKeyedSubscript:v37];
    }

    v6 = v37;
    goto LABEL_12;
  }

LABEL_60:
  v36 = v37;
LABEL_61:
}

uint64_t sub_10007BEA0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 14) != 1)
    {
      return 1;
    }

    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      v2 = qword_100229058;
      v3 = [v1 agentDescription];
      _NRLogWithArgs(v2, 0, "%s%.30s:%-4d unregisterAgent: %@", "", "[NRDirectToCloudAgent invalidateAgent]", 148, v3);
    }

    [v1 setActive:0];
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    sub_10015A238(v4, *(v1 + 72));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v5 = qword_100229408;
    sub_10015A52C(v5);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v6 = qword_1002290B8;
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 6);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    sub_10017F5C8(v9, 0);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v10 = qword_1002290B8;
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 6);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [v1 agentUUID];
    sub_10017F364(v13, v14);

    if ([*(v1 + 40) unregisterNetworkAgent])
    {
      *(v1 + 14) = 0;
      v15 = *(v1 + 40);
      *(v1 + 40) = 0;

      v16 = *(v1 + 56);
      *(v1 + 56) = 0;

      sub_1000059A8(0, 14003, 0, 0);
      return 1;
    }

    if (qword_100229060 != -1)
    {
      dispatch_once(&qword_100229060, &stru_1001FAF50);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100229060 != -1)
      {
        dispatch_once(&qword_100229060, &stru_1001FAF50);
      }

      _NRLogWithArgs(qword_100229058, 17, "unable to unregister agent");
      return 0;
    }
  }

  return result;
}

id *sub_10007C284(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = NRDirectToCloudAgent;
    v5 = objc_msgSendSuper2(&v28, "init");
    if (v5)
    {
      if (v4)
      {
        a1 = v5;
        dispatch_assert_queue_V2(v4);
        [a1 setActive:0];
        [a1 setKernelActivated:1];
        [a1 setUserActivated:1];
        [a1 setVoluntary:1];
        [a1 setNetworkProvider:0];
        [a1 setSpecificUseOnly:0];
        v6 = +[NSUUID UUID];
        [a1 setAgentUUID:v6];

        v7 = [NSString stringWithFormat:@"Direct-To-Cloud agent"];
        [a1 setAgentDescription:v7];

        objc_storeStrong(a1 + 4, a2);
        v8 = objc_alloc_init(NSMutableSet);
        v9 = a1[7];
        a1[7] = v8;

        v10 = [NSString alloc];
        v11 = [a1 agentUUID];
        v12 = [v10 initWithFormat:@"DirectToCloudAgent-%@", v11];
        v13 = a1[9];
        a1[9] = v12;

        goto LABEL_5;
      }

      v21 = sub_10007C5A8();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v23 = sub_10007C5A8();
        _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: queue", "", "[NRDirectToCloudAgent initWithQueue:]", 50);
      }

      v24 = _os_log_pack_size();
      v25 = __error();
      v26 = _os_log_pack_fill(&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v24, *v25, &_mh_execute_header, "%{public}s Assertion Failed: queue");
      *v26 = 136446210;
      *(v26 + 4) = "[NRDirectToCloudAgent initWithQueue:]";
    }

    else
    {
      v15 = sub_10007C5A8();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = sub_10007C5A8();
        _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDirectToCloudAgent initWithQueue:]", 49);
      }

      v18 = _os_log_pack_size();
      v19 = __error();
      v20 = _os_log_pack_fill(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v18, *v19, &_mh_execute_header, "%{public}s [super init] failed");
      *v20 = 136446210;
      *(v20 + 4) = "[NRDirectToCloudAgent initWithQueue:]";
    }

    sub_10007C5A8();
    _NRLogAbortWithPack();
  }

LABEL_5:

  return a1;
}

id sub_10007C5A8()
{
  if (qword_100229060 != -1)
  {
    dispatch_once(&qword_100229060, &stru_1001FAF50);
  }

  v1 = qword_100229058;

  return v1;
}

id sub_10007CF34()
{
  if (qword_100229088 != -1)
  {
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
  }

  v1 = qword_100229080;

  return v1;
}

void sub_10007CF88(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229080;
  qword_100229080 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10007D0EC(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (*(a1 + 16) == 255)
    {
      goto LABEL_12;
    }

    v7 = [v5 length];
    v8 = *(a1 + 1727);
    IKEv2PacketString = createIKEv2PacketString();
    [a1 reportEvent:3006 detailsFormat:@"Sending IKEv2 packet #%llu %@ len %llu", v8, IKEv2PacketString, v7];

    ++*(a1 + 1727);
    if (gNRPacketLoggingEnabled == 1)
    {
      v21 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v23 = _NRCopyLogObjectForNRUUID();
        v24 = [a1 copyDescription];
        v3 = *(a1 + 1727);
        v25 = sub_10007D69C(v6);
        _NRLogWithArgs(v23, 1, "%s%.30s:%-4d %@: IKE #%llu SENDING dataLen=%u data=[\n%@]", "", "[NRLinkBluetooth sendIKEData:]", 8013, v24, v3, v7, v25);
      }
    }

    if (*(a1 + 293) == 1)
    {
      HIWORD(v35) = bswap32(v7) >> 16;
      v10 = [[NSMutableData alloc] initWithCapacity:v7 + 5];
      [v10 appendBytes:&unk_100196538 length:1];
      [v10 appendBytes:&v35 + 6 length:2];
      [v10 appendData:v6];
      [v10 bytes];
      if ([v10 length])
      {
        WORD2(v35) = ~os_inet_checksum();
        [v10 appendBytes:&v35 + 4 length:2];
        if (*(a1 + 309) >= 0x15u && (*(a1 + 269) & 1) != 0)
        {
          v11 = &off_100209BA8;
        }

        else
        {
          v11 = &off_100209B90;
        }

        sub_10007D788(a1, v10, v11);

        goto LABEL_17;
      }

      v26 = sub_10007CF34();
      v27 = _NRLogIsLevelEnabled();

      if (v27)
      {
        v28 = sub_10007CF34();
        _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", "", "nrChecksumFull", 109);
      }

      v6 = _os_log_pack_size();
      a1 = &v35 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(a1, v6, *v29, &_mh_execute_header, "%{public}s Assertion Failed: dataLen > 0");
      *v30 = 136446210;
      *(v30 + 4) = "nrChecksumFull";
      sub_10007CF34();
      _NRLogAbortWithPack();
      goto LABEL_24;
    }

    v2 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    v12 = *(a1 + 339);
    v3 = v7;
    if (*(a1 + 331) >= v7 + 5 + v12)
    {
      v17 = *(a1 + 519) + v12;
      *v17 = 4;
      *(v17 + 1) = bswap32(v7) >> 16;
      memcpy((*(a1 + 519) + (*(a1 + 339) + 3)), [v6 bytes], v7);
      v18 = *(a1 + 519);
      v19 = v3 + 3 + *(a1 + 339);
      *(v18 + v19) = ~os_inet_checksum();
      *(a1 + 339) += v3 + 5;
      if (gNRPacketLoggingEnabled != 1)
      {
LABEL_16:
        sub_10007D9C4(a1, *(a1 + 439));
LABEL_17:
        a1 = 1;
        goto LABEL_18;
      }

LABEL_24:
      v31 = _NRCopyLogObjectForNRUUID();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = _NRCopyLogObjectForNRUUID();
        v34 = [a1 copyDescription];
        _NRLogWithArgs(v33, 1, "%s%.30s:%-4d %@: Wrote IKE packet #%llu of length %u to linkWriteBuffer filledIn=%u handled=%u", "", "[NRLinkBluetooth sendIKEData:]", 8053, v34, *(a1 + 1727), v3, *(a1 + v2[408]), *(a1 + 343));
      }

      goto LABEL_16;
    }

    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (!v14)
    {
LABEL_12:
      a1 = 0;
    }

    else
    {
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = [a1 copyDescription];
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d %@: no room for IKEv2 packet, dropping it NR_LINK_WRITE_BUFFER_LEN=%u handledLinkWriteBufferBytes=%udiff=%u totalDataLen=%u ", "", "[NRLinkBluetooth sendIKEData:]", 8042, v16, *(a1 + 339), *(a1 + 343), (*(a1 + 331) - *(a1 + 343)), (v3 + 5));

      a1 = 0;
    }
  }

LABEL_18:

  return a1;
}

id sub_10007D69C(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [v1 bytes];
  v4 = objc_alloc_init(NSMutableString);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      [v4 appendFormat:@"%02X", v3[i]];
      if ((~i & 0xF) == 0 || (~i & 3) == 0)
      {
        [v4 appendString:?];
      }
    }
  }

  return v4;
}

void sub_10007D788(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v21 = objc_alloc_init(NSMutableDictionary);
    [v21 setObject:v6 forKeyedSubscript:@"message-data"];

    [v21 setObject:v5 forKeyedSubscript:@"channel-id"];
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 setObject:v21 forKeyedSubscript:@"message"];
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v8 = qword_1002290B8;
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 9);
    }

    else
    {
      v10 = 0;
    }

    v11 = [NSNumber numberWithBool:v10 & 1];
    [v7 setObject:v11 forKeyedSubscript:@"test-wake-pkt"];

    v12 = [NSNumber numberWithBool:gNRPacketLoggingEnabled];
    [v7 setObject:v12 forKeyedSubscript:@"packet-logging"];

    v13 = v7;
    v14 = *(a1 + 1399);
    if (v14 && [v14 direct])
    {
      [*(a1 + 1399) sendXPCCommDictionary:v13];
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v15 = qword_1002290B8;
      v16 = v15;
      if (v15)
      {
        v17 = *(a1 + 32);
        v18 = *(v15 + 28);
        v19 = v13;
        v20 = [v18 objectForKeyedSubscript:v17];
        sub_100114680(v20, v19);
      }
    }
  }
}

void sub_10007D9C4(void *a1, uint64_t a2)
{
  v336 = a2;
  v2 = a1;
  v3 = v2;
  if (v2[16] == 255)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_282;
    }

    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v3 copyDescription];
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d %@: nexusToLinkLoop but cancelled", "", "NRLinkNexusToLinkLoop", 4087, v10);
    goto LABEL_13;
  }

  v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (!*(v2 + 1063))
  {
    if (v2[293])
    {
      goto LABEL_282;
    }

    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (!v12)
    {
      goto LABEL_282;
    }

    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v3 copyDescription];
    _NRLogWithArgs(v9, 17, "%@: Tried to nexusToLinkLoop but _linkOutputRing is NULL", v10);
LABEL_13:

    goto LABEL_282;
  }

  v5 = &gNRPacketLoggingEnabled;
  v335 = *(v2 + 599);
  v338 = v2;
  if (v335 == v336)
  {
    v328 = sub_100080F38;
    v324 = sub_1000813E8;
    if (gNRPacketLoggingEnabled == 1)
    {
LABEL_330:
      v274 = _NRCopyLogObjectForNRUUID();
      v275 = _NRLogIsLevelEnabled();

      v328 = sub_100080F38;
      v324 = sub_1000813E8;
      if (v275)
      {
        v276 = _NRCopyLogObjectForNRUUID();
        v277 = [v3 copyDescription];
        _NRLogWithArgs(v276, 1, "%s%.30s:%-4d %@: Serving voice channel", "", "NRLinkNexusToLinkLoop", 4112, v277);
        v328 = sub_100080F38;
        v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVOInput;
        v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVO;
        v324 = sub_1000813E8;
        v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVO;
        v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVOInputRing;
        goto LABEL_342;
      }
    }

    v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVOInput;
    v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVO;
    v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVO;
    v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVOInputRing;
  }

  else if (*(v2 + 759) == v336)
  {
    v328 = sub_100081064;
    v324 = sub_100081514;
    if (gNRPacketLoggingEnabled == 1)
    {
      v278 = _NRCopyLogObjectForNRUUID();
      v279 = _NRLogIsLevelEnabled();

      v328 = sub_100081064;
      v324 = sub_100081514;
      if (!v279)
      {
        v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
        v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
        v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
        v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
        v3 = v338;
        goto LABEL_22;
      }

      v3 = v338;
      v276 = _NRCopyLogObjectForNRUUID();
      v277 = [v338 copyDescription];
      _NRLogWithArgs(v276, 1, "%s%.30s:%-4d %@: Serving video channel", "", "NRLinkNexusToLinkLoop", 4123, v277);
      v328 = sub_100081064;
      v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
      v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
      v324 = sub_100081514;
      v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
      v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
      goto LABEL_342;
    }

    v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
    v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
    v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
    v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
  }

  else
  {
    if (*(v2 + 903) != v336)
    {
      if (*(v2 + 439) != v336)
      {
        v318 = 0;
        v319 = 0;
        v323 = 0;
        v324 = 0;
        v328 = 0;
        v321 = 0;
        v322 = 0;
        v6 = 0;
        goto LABEL_23;
      }

      v328 = sub_1000812BC;
      v324 = sub_10008176C;
      if (gNRPacketLoggingEnabled != 1)
      {
        v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusInput;
        v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexus;
        v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexus;
        v16 = &OBJC_IVAR___NRLinkBluetooth__nexusInputRing;
        goto LABEL_22;
      }

      v290 = _NRCopyLogObjectForNRUUID();
      v291 = _NRLogIsLevelEnabled();

      v328 = sub_1000812BC;
      v324 = sub_10008176C;
      if (!v291)
      {
        v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusInput;
        v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexus;
        v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexus;
        v16 = &OBJC_IVAR___NRLinkBluetooth__nexusInputRing;
        v3 = v338;
        goto LABEL_22;
      }

      v3 = v338;
      v276 = _NRCopyLogObjectForNRUUID();
      v277 = [v338 copyDescription];
      _NRLogWithArgs(v276, 1, "%s%.30s:%-4d %@: Serving BestEffort channel", "", "NRLinkNexusToLinkLoop", 4143, v277);
      v328 = sub_1000812BC;
      v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusInput;
      v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexus;
      v324 = sub_10008176C;
      v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexus;
      v16 = &OBJC_IVAR___NRLinkBluetooth__nexusInputRing;
LABEL_342:

      goto LABEL_22;
    }

    v328 = sub_100081190;
    v324 = sub_100081640;
    if (gNRPacketLoggingEnabled == 1)
    {
      v280 = _NRCopyLogObjectForNRUUID();
      v281 = _NRLogIsLevelEnabled();

      v328 = sub_100081190;
      v324 = sub_100081640;
      if (!v281)
      {
        v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusBKInput;
        v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusBK;
        v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusBK;
        v16 = &OBJC_IVAR___NRLinkBluetooth__nexusBKInputRing;
        v3 = v338;
        goto LABEL_22;
      }

      v3 = v338;
      v276 = _NRCopyLogObjectForNRUUID();
      v277 = [v338 copyDescription];
      _NRLogWithArgs(v276, 1, "%s%.30s:%-4d %@: Serving Background channel", "", "NRLinkNexusToLinkLoop", 4133, v277);
      v328 = sub_100081190;
      v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusBKInput;
      v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusBK;
      v324 = sub_100081640;
      v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusBK;
      v16 = &OBJC_IVAR___NRLinkBluetooth__nexusBKInputRing;
      goto LABEL_342;
    }

    v13 = &OBJC_IVAR___NRLinkBluetooth__syncNexusBKInput;
    v14 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusBK;
    v15 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusBK;
    v16 = &OBJC_IVAR___NRLinkBluetooth__nexusBKInputRing;
  }

LABEL_22:
  v17 = *v14;
  v6 = *&v3[*v16];
  v18 = &v3[v17];
  v19 = &v3[*v13];
  v322 = &v3[*v15];
  v323 = v19;
  v321 = v18;
  v20 = *v18;
  v318 = *v322;
  v319 = v20;
  v5 = &gNRPacketLoggingEnabled;
LABEL_23:
  v325 = 0;
  v320 = &v359 + 8;
  v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v339 = v6;
  while (2)
  {
    v22 = 0;
    ESPSequenceNumberFromPacket = 0;
    v344 = 0;
    v340 = 0;
    v341 = 0;
    packet = 0;
    v331 = 0;
    v23 = 0;
    v337 = 0;
    v24 = 0;
    v357 = 0u;
    v358 = 0u;
    v355 = 0u;
    v356 = 0u;
    v375 = 0;
    v376 = 0;
    v345 = *(v3 + 1039);
    while (1)
    {
      v346 = 2063;
      *(v3 + 2063) = 2;
      v361 = 0u;
      v362 = 0u;
      v359 = 0u;
      v360 = 0u;
      if (v6)
      {
        next_slot = os_channel_get_next_slot();
        if (next_slot)
        {
          if (v335 == v336 && (v3[265] & 1) != 0)
          {
            v26 = 0;
            if (v360)
            {
              v27 = 0;
              if (WORD1(v359))
              {
                v28 = v22;
                v29 = v4;
                v30 = v24;
                v31 = v23;
                v32 = next_slot;
                if (isPacketValidIPv6())
                {
                  DSCPFromPacket = getDSCPFromPacket();
                  v34 = DSCPFromPacket == 46;
                  v35 = WORD1(v359) < 0x2A4u;
                  v27 = v34 && v35;
                  if (v34 && v35)
                  {
                    v26 = 46;
                  }

                  else
                  {
                    v26 = DSCPFromPacket;
                  }
                }

                else
                {
                  v26 = 0;
                  v27 = 0;
                }

                next_slot = v32;
                v23 = v31;
                v5 = &gNRPacketLoggingEnabled;
                v24 = v30;
                v4 = v29;
                v22 = v28;
              }
            }

            else
            {
              v27 = 0;
            }

            if (*v5 == 1)
            {
              v343 = v26;
              v101 = v22;
              v102 = v4;
              v103 = v24;
              v104 = v23;
              v105 = next_slot;
              ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket();
              if (*v5)
              {
                getESPSPIFromPacket();
              }

              next_slot = v105;
              v23 = v104;
              v5 = &gNRPacketLoggingEnabled;
              v24 = v103;
              v4 = v102;
              v22 = v101;
              v26 = v343;
              if (v27)
              {
LABEL_151:
                v106 = v26;
                v343 = next_slot;
                v353 = 0u;
                v354 = 0u;
                v351 = 0u;
                v352 = 0u;
                v107 = os_channel_get_next_slot();
                if (!v107)
                {
                  v116 = v22;
                  v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  if (v3[264] && *(v3 + 1159))
                  {
                    v3[264] = 0;
                    ++*(v3 + 1175);
                    if (*v5 == 1)
                    {
                      v143 = _NRCopyLogObjectForNRUUID();
                      v144 = _NRLogIsLevelEnabled();

                      if (v144)
                      {
                        v145 = _NRCopyLogObjectForNRUUID();
                        v146 = [v3 copyDescription];
                        _NRLogWithArgs(v145, 1, "%s%.30s:%-4d %@: source-resume: DatagramLinkOutput", "", "NRLinkResumeDatagramLinkOutputSource", 856, v146);
                      }
                    }

                    dispatch_resume(*(v3 + 1159));
                    v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  }

                  v328(v3);
                  *&v3[v346] |= 4uLL;
                  LODWORD(v53) = 31;
                  v22 = v116;
                  v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  goto LABEL_142;
                }

                v108 = v107;
                if ((v3[264] & 1) == 0 && *(v3 + 1159))
                {
                  v109 = v107;
                  v3[264] = 1;
                  ++*(v3 + 1175);
                  if (*v5 == 1)
                  {
                    v139 = _NRCopyLogObjectForNRUUID();
                    v140 = _NRLogIsLevelEnabled();

                    if (v140)
                    {
                      v141 = _NRCopyLogObjectForNRUUID();
                      v142 = [v3 copyDescription];
                      _NRLogWithArgs(v141, 1, "%s%.30s:%-4d %@: source-suspend: DatagramLinkOutput", "", "NRLinkSuspendDatagramLinkOutputSource", 848, v142);
                    }
                  }

                  dispatch_suspend(*(v3 + 1159));
                  v108 = v109;
                }

                v337 = v108;
                os_channel_slot_get_packet();
                os_packet_get_next_buflet();
                object_address = os_buflet_get_object_address();
                data_limit = os_buflet_get_data_limit();
                if (data_limit < 0x10000)
                {
                  *&v347 = object_address;
                  *(&v347 + 1) = data_limit;
                  v112 = nrPacketToTLV();
                  *(v3 + 1543) += v112;
                  *v321 += WORD1(v359);
                  ++*v322;
                  *&v3[v346] |= 0x10uLL;
                  v113 = *v5;
                  v332 = v22;
                  if (v113 == 1)
                  {
                    v346 = v112;
                    v135 = _NRCopyLogObjectForNRUUID();
                    v136 = _NRLogIsLevelEnabled();

                    if (v136)
                    {
                      v137 = _NRCopyLogObjectForNRUUID();
                      v138 = [v3 copyDescription];
                      _NRLogWithArgs(v137, 1, "%s%.30s:%-4d %@: wrote payload of length: %u, dscp: %u, uncompressedLen = %u", "", "NRLinkNexusToLinkLoop", 4291, v138, v346, v106, WORD1(v359));
                    }
                  }

                  v114 = v345 + 1;
                  os_buflet_set_data_length();
                  v345 = v114;
                  v376 = v114;
                  os_packet_set_flow_uuid();
                  v115 = os_packet_finalize();
                  if (v115)
                  {
                    v282 = v115;
                    v314 = sub_10007CF34();
                    v315 = _NRLogIsLevelEnabled();

                    if (v315)
                    {
                      v316 = sub_10007CF34();
                      _NRLogWithArgs(v316, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoop", 4295, v282);
                    }

                    goto LABEL_339;
                  }

                  LODWORD(v53) = 30;
                  v331 = v337;
                  v337 = v343;
                  v4 = 0x100224000;
                  v6 = v339;
                  v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                  goto LABEL_141;
                }

                v261 = sub_10007CF34();
                v262 = _NRLogIsLevelEnabled();

                if (v262)
                {
                  v263 = sub_10007CF34();
                  _NRLogWithArgs(v263, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: datagramBufferLength <= 65535", "", "NRLinkNexusToLinkLoop", 4272);
                }

                v264 = _os_log_pack_size();
                v265 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                v266 = *__error();
                for (i = _os_log_pack_fill(v265, v264, v266, &_mh_execute_header, "%{public}s Assertion Failed: datagramBufferLength <= 65535"); ; i = _os_log_pack_fill(v244, v243, v245, &_mh_execute_header, "%{public}s Assertion Failed: curLinkOutputSlot == highestLinkOutputSlotWrittenTo"))
                {
LABEL_313:
                  *i = 136446210;
                  *(i + 4) = "NRLinkNexusToLinkLoop";
LABEL_314:
                  sub_10007CF34();
                  _NRLogAbortWithPack();
LABEL_315:
                  v240 = sub_10007CF34();
                  v241 = _NRLogIsLevelEnabled();

                  if (v241)
                  {
                    v242 = sub_10007CF34();
                    _NRLogWithArgs(v242, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: curLinkOutputSlot == highestLinkOutputSlotWrittenTo", "", "NRLinkNexusToLinkLoop", 4591);
                  }

                  v243 = _os_log_pack_size();
                  v244 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                  v245 = *__error();
                }
              }
            }

            else
            {
              ESPSequenceNumberFromPacket = 0;
              if (v27)
              {
                goto LABEL_151;
              }
            }

            v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          }
        }
      }

      if (v22)
      {
        *&v3[v346] |= 0x40uLL;
        if (!v24)
        {
          goto LABEL_183;
        }

        v4 = v344;
        goto LABEL_49;
      }

      v36 = os_channel_get_next_slot();
      if (!v36)
      {
        break;
      }

      v24 = v36;
      *&v3[v346] |= 0x20uLL;
      packet = os_channel_slot_get_packet();
      next_buflet = os_packet_get_next_buflet();
      v340 = os_buflet_get_object_address();
      v341 = next_buflet;
      v38 = os_buflet_get_data_limit();
      if (v38 >= 0x10000)
      {
        v221 = sub_10007CF34();
        v222 = _NRLogIsLevelEnabled();

        if (v222)
        {
          v223 = sub_10007CF34();
          _NRLogWithArgs(v223, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: outputBufferLength <= 65535", "", "NRLinkNexusToLinkLoop", 4318);
        }

        goto LABEL_292;
      }

      v4 = v38;
LABEL_49:
      if ((v3[262] & 1) == 0 && *(v3 + 1079))
      {
        v3[262] = 1;
        ++*(v3 + 1095);
        if (*v5 == 1)
        {
          v97 = _NRCopyLogObjectForNRUUID();
          v98 = _NRLogIsLevelEnabled();

          if (v98)
          {
            v99 = _NRCopyLogObjectForNRUUID();
            v100 = [v3 copyDescription];
            _NRLogWithArgs(v99, 1, "%s%.30s:%-4d %@: source-suspend: LinkOutput", "", "NRLinkSuspendLinkOutputSource", 846, v100);
          }
        }

        dispatch_suspend(*(v3 + 1079));
        v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }

      LODWORD(v343) = v4;
      v39 = *(v3 + 339);
      v40 = *&v3[v21[409]];
      v344 = v4;
      if (v39 <= v40)
      {
        v6 = v339;
        if (!v339)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v41 = v39 - v40;
        if (v41 >= (v4 - v22))
        {
          v42 = v4 - v22;
        }

        else
        {
          v42 = v41;
        }

        memcpy(v340, (*(v3 + 519) + v40), v42);
        *&v3[v21[409]] += v42;
        *(v3 + 1527) += v42;
        ++*(v3 + 347);
        v43 = v24;
        v44 = v345;
        v45 = *&v3[v346];
        if (v23 != v24)
        {
          v44 = v345 + 1;
        }

        v345 = v44;
        *&v3[v346] = v45 | 0x100;
        v46 = v5;
        if (*v5 == 1)
        {
          v92 = _NRCopyLogObjectForNRUUID();
          v93 = _NRLogIsLevelEnabled();

          if (v93)
          {
            v94 = v338;
            v95 = _NRCopyLogObjectForNRUUID();
            v96 = [v94 copyDescription];
            _NRLogWithArgs(v95, 1, "%s%.30s:%-4d %@: wrote %u bytes from linkWriteBuffer to link, filledIn=%u handled=%u", "", "NRLinkNexusToLinkLoop", 4374, v96, v42, *(v94 + 339), *(v94 + 343));
          }
        }

        v22 = v42 + v22;
        if (v22 >= v4)
        {
          v3 = v338;
          v6 = v339;
          if (v22 != v4)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            v214 = qword_100229080;
            v215 = _NRLogIsLevelEnabled();

            if (v215)
            {
              if (qword_100229088 != -1)
              {
                dispatch_once(&qword_100229088, &stru_1001FB1C0);
              }

              v216 = qword_100229080;
              _NRLogWithArgs(v216, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: curLinkOutputSlotPartialBytesAlreadyWritten == linkOutputBufferLength", "", "NRLinkNexusToLinkLoop", 4377);
            }

            v217 = _os_log_pack_size();
            v218 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v219 = *__error();
            i = _os_log_pack_fill(v218, v217, v219, &_mh_execute_header, "%{public}s Assertion Failed: curLinkOutputSlotPartialBytesAlreadyWritten == linkOutputBufferLength");
            goto LABEL_313;
          }

          v24 = v43;
          v5 = v46;
          os_buflet_set_data_length();
          v376 = v345;
          os_packet_set_flow_uuid();
          v47 = os_packet_finalize();
          if (!v47)
          {
            v22 = 0;
            *&v3[v346] |= 0x200uLL;
            v23 = v43;
            v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            continue;
          }

          v267 = v47;
          v268 = sub_10007CF34();
          v269 = _NRLogIsLevelEnabled();

          if (v269)
          {
            v270 = sub_10007CF34();
            _NRLogWithArgs(v270, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoop", 4385, v267);
          }

          v3 = _os_log_pack_size();
          v271 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v272 = __error();
          v273 = _os_log_pack_fill(v271, v3, *v272, &_mh_execute_header, "%{public}s os_packet_finalize returned %d");
          *v273 = 136446466;
          *(v273 + 4) = "NRLinkNexusToLinkLoop";
          *(v273 + 12) = 1024;
          *(v273 + 14) = v267;
          sub_10007CF34();
          _NRLogAbortWithPack();
          goto LABEL_330;
        }

        v24 = v43;
        v23 = v43;
        v3 = v338;
        v6 = v339;
        v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v5 = v46;
        if (!v339)
        {
LABEL_234:
          if (v3[16] != 8)
          {
            *&v3[v346] |= 0x400uLL;
            v4 = 0x100224000;
            v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            goto LABEL_239;
          }

          v332 = v22;
          v163 = _NRCopyLogObjectForNRUUID();
          v164 = _NRLogIsLevelEnabled();

          v4 = 0x100224000;
          if (v164)
          {
            v165 = _NRCopyLogObjectForNRUUID();
            v166 = [v3 copyDescription];
            _NRLogWithArgs(v165, 17, "%@: Tried to nexusToLinkLoop but _nexusInputRing is NULL", v166);
          }

          v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v148 = v331;
          LOWORD(v22) = v332;
          goto LABEL_190;
        }
      }

      v353 = 0u;
      v354 = 0u;
      v351 = 0u;
      v352 = 0u;
      v48 = os_channel_get_next_slot();
      if (!v48)
      {
        v332 = v22;
        v324(v3);
        *&v3[v346] |= 0x800uLL;
        LODWORD(v53) = 31;
        v325 = 1;
        v4 = 0x100224000;
        v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        goto LABEL_141;
      }

      v49 = v48;
      v332 = v22 == 0;
      v50 = v345;
      if (!v22)
      {
        v50 = v345 + 1;
      }

      v329 = v50;
      v328(v3);
      if (*v5 == 1)
      {
        ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket();
        if (*v5)
        {
          v327 = v23;
          getESPSPIFromPacket();
          if ((*v5 & 1) != 0 && (v117 = WORD1(v351), v118 = _NRCopyLogObjectForNRUUID(), v119 = _NRLogIsLevelEnabled(), v118, v119))
          {
            v3 = v338;
            v120 = _NRCopyLogObjectForNRUUID();
            v121 = [v3 copyDescription];
            _NRLogWithArgs(v120, 1, "%s%.30s:%-4d %@: Sending ESP sequence number - to be sent: %u (%u bytes)", "", "NRLinkNexusToLinkLoop", 4427, v121, ESPSequenceNumberFromPacket, v117);

            v5 = &gNRPacketLoggingEnabled;
            v23 = v327;
          }

          else
          {
            v5 = &gNRPacketLoggingEnabled;
            v23 = v327;
            v3 = v338;
          }
        }
      }

      else
      {
        ESPSequenceNumberFromPacket = 0;
      }

      v330 = v24;
      v334 = nrMaxTLVLengthForPacket();
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v369 = 0u;
      v370 = 0u;
      v367 = 0u;
      v368 = 0u;
      v365 = 0u;
      v366 = 0u;
      v363 = 0u;
      v364 = 0u;
      v361 = 0u;
      v362 = 0u;
      v359 = 0u;
      v360 = 0u;
      if (v344 <= v22)
      {
        v51 = 0;
        v52 = 0;
      }

      else
      {
        *&v359 = &v340[v22];
        v51 = v343 - v22;
        DWORD2(v359) = v51;
        v52 = 1;
      }

      if (v51 >= v334)
      {
        v6 = v339;
      }

      else
      {
        v327 = v23;
        v55 = v52;
        v56 = &v320[16 * v52];
        do
        {
          v349 = 0u;
          v350 = 0u;
          v347 = 0u;
          v348 = 0u;
          if (!os_channel_get_next_slot())
          {
            break;
          }

          os_channel_slot_get_packet();
          os_packet_get_next_buflet();
          v57 = os_buflet_get_object_address();
          v58 = os_buflet_get_data_limit();
          if (v58 >= 0x10000)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v232 = sub_10007CF34();
              _NRLogWithArgs(v232, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: lookAheadLinkOutputBufferLength <= 65535", "", "NRLinkNexusToLinkLoop", 4456);
            }

            v233 = _os_log_pack_size();
            v234 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v235 = *__error();
            i = _os_log_pack_fill(v234, v233, v235, &_mh_execute_header, "%{public}s Assertion Failed: lookAheadLinkOutputBufferLength <= 65535");
            goto LABEL_313;
          }

          *(v56 - 1) = v57;
          if (!v58)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v236 = sub_10007CF34();
              _NRLogWithArgs(v236, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: lookAheadLinkOutputBufferLength > 0", "", "NRLinkNexusToLinkLoop", 4459);
            }

            v237 = _os_log_pack_size();
            v238 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v239 = *__error();
            i = _os_log_pack_fill(v238, v237, v239, &_mh_execute_header, "%{public}s Assertion Failed: lookAheadLinkOutputBufferLength > 0");
            goto LABEL_313;
          }

          *v56 = v58;
          *&v3[v346] |= 0x1000uLL;
          if (v55 == 15)
          {
            v332 = v22;
            IOVecString = createIOVecString();
            sub_100080EB4(v3, @"NtL not enough ioVecs %@ for %u", v66, v67, v68, v69, v70, v71, IOVecString);

            LODWORD(v53) = 1;
            v5 = &gNRPacketLoggingEnabled;
            v4 = 0x100224000;
            v6 = v339;
            v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v23 = v327;
            v59 = v329;
            v24 = v330;
            goto LABEL_140;
          }

          ++v55;
          v51 += v58;
          v56 += 4;
        }

        while (v51 < v334);
        v5 = &gNRPacketLoggingEnabled;
        v6 = v339;
        v23 = v327;
      }

      if (v51 < v334)
      {
        v332 = v22;
        *&v3[v346] |= 0x2000uLL;
        v24 = v330;
        if (v3[262] == 1)
        {
          v4 = 0x100224000;
          v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (*(v3 + 1079))
          {
            v3[262] = 0;
            ++*(v3 + 1095);
            if (*v5 == 1)
            {
              v131 = _NRCopyLogObjectForNRUUID();
              v132 = _NRLogIsLevelEnabled();

              v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
              if (v132)
              {
                v133 = _NRCopyLogObjectForNRUUID();
                v134 = [v3 copyDescription];
                _NRLogWithArgs(v133, 1, "%s%.30s:%-4d %@: source-resume: LinkOutput", "", "NRLinkResumeLinkOutputSource", 854, v134);

                v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
              }
            }

            dispatch_resume(*(v3 + 1079));
          }

          LODWORD(v53) = 31;
          v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v59 = v329;
          goto LABEL_140;
        }

        LODWORD(v53) = 31;
        v4 = 0x100224000;
        v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_135:
        v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v59 = v329;
        goto LABEL_140;
      }

      v24 = v330;
      if (!v359)
      {
        v246 = sub_10007CF34();
        v247 = _NRLogIsLevelEnabled();

        if (v247)
        {
          v248 = sub_10007CF34();
          v249 = createIOVecString();
          _NRLogWithArgs(v248, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].buf != ((void*)0); We have enough content but first ioVec is NULL: %@", "", "NRLinkNexusToLinkLoop", 4488, v249);
        }

        v250 = _os_log_pack_size();
        v251 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v252 = __error();
        v253 = _os_log_pack_fill(v251, v250, *v252, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[0].buf != ((void*)0); We have enough content but first ioVec is NULL: %@");
        v254 = createIOVecString();
        *v253 = 136446466;
        *(v253 + 4) = "NRLinkNexusToLinkLoop";
        *(v253 + 12) = 2112;
        *(v253 + 14) = v254;
        goto LABEL_314;
      }

      if (*v5 == 1)
      {
        v122 = _NRCopyLogObjectForNRUUID();
        v123 = _NRLogIsLevelEnabled();

        if (v123)
        {
          v124 = _NRCopyLogObjectForNRUUID();
          v125 = [v3 copyDescription];
          v126 = getDSCPFromPacket();
          _NRLogWithArgs(v124, 1, "%s%.30s:%-4d %@: DSCP: %u", "", "NRLinkNexusToLinkLoop", 4492, v125, v126);
        }
      }

      v60 = nrPacketToTLV();
      v61 = v60;
      v62 = *v359;
      if (v62 > 0x65)
      {
        v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v63 = v344;
        if (*v359 > 0x67u)
        {
          if (v62 == 104)
          {
            v64 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ClassC;
            goto LABEL_113;
          }

          if (v62 == 105)
          {
            v64 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ClassC_ECT0;
            goto LABEL_113;
          }
        }

        else
        {
          if (v62 == 102)
          {
            v64 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_TCP;
            goto LABEL_113;
          }

          if (v62 == 103)
          {
            v64 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_TCP_ECT0;
            goto LABEL_113;
          }
        }
      }

      else
      {
        v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v63 = v344;
        if (*v359 > 0x63u)
        {
          if (v62 == 100)
          {
            v64 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP;
            goto LABEL_113;
          }

          if (v62 == 101)
          {
            v64 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ECT0;
            goto LABEL_113;
          }
        }

        else
        {
          v64 = &OBJC_IVAR___NRLinkBluetooth__sentUncompressedIP;
          if (v62 == 2)
          {
            goto LABEL_113;
          }

          if (v62 == 3)
          {
            v64 = &OBJC_IVAR___NRLinkBluetooth__sentEncapsulated6LoWPAN;
LABEL_113:
            ++*&v3[*v64];
          }
        }
      }

      *(v3 + 1527) += v60;
      v72 = (v63 - v22);
      v326 = v49;
      if (v60 <= v72)
      {
        v84 = v22 + v60;
        v4 = 0x100224000;
        goto LABEL_128;
      }

      *&v3[v346] |= 0x4000uLL;
      if (*v5 == 1)
      {
        v127 = _NRCopyLogObjectForNRUUID();
        v128 = _NRLogIsLevelEnabled();

        if (v128)
        {
          v129 = _NRCopyLogObjectForNRUUID();
          v130 = [v3 copyDescription];
          _NRLogWithArgs(v129, 1, "%s%.30s:%-4d %@: Sending ESP sequence number %u (2)", "", "NRLinkNexusToLinkLoop", 4536, v130, ESPSequenceNumberFromPacket);
        }
      }

      v376 = v329;
      os_buflet_set_data_length();
      os_packet_set_flow_uuid();
      v73 = os_packet_finalize();
      if (v73)
      {
        v282 = v73;
        v311 = sub_10007CF34();
        v312 = _NRLogIsLevelEnabled();

        if (v312)
        {
          v313 = sub_10007CF34();
          _NRLogWithArgs(v313, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoop", 4540, v282);
        }

        goto LABEL_339;
      }

      v74 = v345 + v332 + 1;
      v5 = &gNRPacketLoggingEnabled;
      v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      while (1)
      {
        v75 = os_channel_get_next_slot();
        if (!v75)
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            v227 = sub_10007CF34();
            _NRLogWithArgs(v227, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (curLinkOutputSlot) != ((void*)0)", "", "NRLinkNexusToLinkLoop", 4548);
          }

          v228 = _os_log_pack_size();
          v229 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v230 = *__error();
          i = _os_log_pack_fill(v229, v228, v230, &_mh_execute_header, "%{public}s Assertion Failed: (curLinkOutputSlot) != ((void*)0)");
          goto LABEL_313;
        }

        v24 = v75;
        packet = os_channel_slot_get_packet();
        v76 = os_packet_get_next_buflet();
        v340 = os_buflet_get_object_address();
        v341 = v76;
        v77 = os_buflet_get_data_limit();
        if (v77 >= 0x10000)
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            v231 = sub_10007CF34();
            _NRLogWithArgs(v231, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: outputBufferLength <= 65535", "", "NRLinkNexusToLinkLoop", 4555);
          }

LABEL_292:
          v224 = _os_log_pack_size();
          v225 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v226 = *__error();
          i = _os_log_pack_fill(v225, v224, v226, &_mh_execute_header, "%{public}s Assertion Failed: outputBufferLength <= 65535");
          goto LABEL_313;
        }

        v344 = v77;
        v78 = v77 + v72;
        if (v77 + v72 >= v61)
        {
          break;
        }

        *&v3[v346] |= 0x8000uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v80 = _NRCopyLogObjectForNRUUID();
          v81 = _NRLogIsLevelEnabled();

          if (v81)
          {
            v82 = _NRCopyLogObjectForNRUUID();
            v83 = [v3 copyDescription];
            _NRLogWithArgs(v82, 1, "%s%.30s:%-4d %@: Sending ESP sequence number %u (3)", "", "NRLinkNexusToLinkLoop", 4568, v83, ESPSequenceNumberFromPacket);
          }
        }

        v376 = v74;
        os_buflet_set_data_length();
        os_packet_set_flow_uuid();
        v79 = os_packet_finalize();
        ++v74;
        v72 = v78;
        if (v79)
        {
          v282 = v79;
          v283 = sub_10007CF34();
          v284 = _NRLogIsLevelEnabled();

          if (v284)
          {
            v285 = sub_10007CF34();
            _NRLogWithArgs(v285, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoop", 4572, v282);
          }

          goto LABEL_339;
        }
      }

      v329 = v74;
      v84 = v61 - v72;
      v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_128:
      v332 = v84;
      v85 = v321;
      ++*v322;
      *v85 += WORD1(v351);
      *&v3[v346] |= 0x10000uLL;
      v53 = *(v3 + 2063);
      v6 = v339;
      if (!v53)
      {
        v23 = v24;
        v337 = v326;
        goto LABEL_135;
      }

      v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v53 = *(v3 + 2071);
      if (v53)
      {
        v3[304] = v3[304] % v3[303];
        v86 = *(v3 + 2071);
        v87 = (v86 + 8 * v3[304]);
        if ((v87 + 1) <= v86 + 8 * v3[303])
        {
          v59 = v329;
          LODWORD(v53) = 0;
          if ((v87 & 7) == 0)
          {
            *v87 = *(v3 + 2063);
            ++v3[304];
            *(v3 + 2063) = 0;
          }

          v23 = v24;
          v337 = v326;
        }

        else
        {
          v88 = _NRCopyLogObjectForNRUUID();
          v89 = _NRLogIsLevelEnabled();

          if (v89)
          {
            v90 = _NRCopyLogObjectForNRUUID();
            v91 = [v3 copyDescription];
            _NRLogWithArgs(v90, 17, "%@: invalid index for ntl log list (curIdx: %u)", v91, v3[304]);
          }

          LODWORD(v53) = 0;
          v23 = v24;
          v337 = v326;
          v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v59 = v329;
        }
      }

      else
      {
        v23 = v24;
        v337 = v326;
        v59 = v329;
      }

LABEL_140:
      v345 = v59;
LABEL_141:
      v22 = v332;
      if (v53)
      {
LABEL_142:
        if (v53 != 30)
        {
          if (v53 == 31)
          {
LABEL_239:
            v148 = v331;
            goto LABEL_190;
          }

          goto LABEL_25;
        }
      }
    }

    LOWORD(v22) = 0;
LABEL_183:
    if (v3[262] == 1 && *(v3 + 1079))
    {
      v3[262] = 0;
      ++*(v3 + 1095);
      if (*v5 == 1)
      {
        v210 = _NRCopyLogObjectForNRUUID();
        v211 = _NRLogIsLevelEnabled();

        if (v211)
        {
          v212 = _NRCopyLogObjectForNRUUID();
          v213 = [v3 copyDescription];
          _NRLogWithArgs(v212, 1, "%s%.30s:%-4d %@: source-resume: LinkOutput", "", "NRLinkResumeLinkOutputSource", 854, v213);
        }
      }

      dispatch_resume(*(v3 + 1079));
    }

    v147 = v22;
    v328(v3);
    *&v3[v346] |= 0x80uLL;
    if (*v5 == 1)
    {
      v167 = _NRCopyLogObjectForNRUUID();
      v168 = _NRLogIsLevelEnabled();

      v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v168)
      {
        v169 = _NRCopyLogObjectForNRUUID();
        v170 = [v3 copyDescription];
        _NRLogWithArgs(v169, 1, "%s%.30s:%-4d %@: no link output slot", "", "NRLinkNexusToLinkLoop", 4332, v170);

        v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }

      v24 = 0;
    }

    else
    {
      v24 = 0;
      v54 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    }

    v148 = v331;
    LOWORD(v22) = v147;
LABEL_190:
    if (v23)
    {
      if (v24 != v23)
      {
        goto LABEL_315;
      }

      v149 = v54;
      v331 = v148;
      if (v22)
      {
        v150 = v344 == v22;
      }

      else
      {
        v150 = 1;
      }

      v151 = 0x40000;
      if (!v150)
      {
        v151 = 0x20000;
      }

      *(v3 + 2063) |= v151;
      if (*v5 == 1)
      {
        v183 = _NRCopyLogObjectForNRUUID();
        v184 = _NRLogIsLevelEnabled();

        if (v184)
        {
          v185 = _NRCopyLogObjectForNRUUID();
          v186 = [v3 copyDescription];
          _NRLogWithArgs(v185, 1, "%s%.30s:%-4d %@: Sending ESP sequence number %u (4)", "", "NRLinkNexusToLinkLoop", 4605, v186, ESPSequenceNumberFromPacket);
        }
      }

      v376 = v345;
      os_buflet_set_data_length();
      os_packet_set_flow_uuid();
      v152 = os_packet_finalize();
      if (v152)
      {
        v282 = v152;
        v308 = sub_10007CF34();
        v309 = _NRLogIsLevelEnabled();

        if (v309)
        {
          v310 = sub_10007CF34();
          _NRLogWithArgs(v310, 16, "%s%.30s:%-4d ABORTING: os_packet_finalize returned %d", "", "NRLinkNexusToLinkLoop", 4609, v282);
        }

LABEL_339:
        v286 = _os_log_pack_size();
        v287 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v288 = *__error();
        v289 = _os_log_pack_fill(v287, v286, v288, &_mh_execute_header, "%{public}s os_packet_finalize returned %d");
        *v289 = 136446466;
        *(v289 + 4) = "NRLinkNexusToLinkLoop";
        *(v289 + 12) = 1024;
        *(v289 + 14) = v282;
        goto LABEL_314;
      }

      v153 = *(v3 + 339);
      v154 = *(v3 + 343);
      if (v153 <= v154)
      {
        if (v153 != v154)
        {
          v255 = sub_10007CF34();
          v256 = _NRLogIsLevelEnabled();

          if (v256)
          {
            v257 = sub_10007CF34();
            _NRLogWithArgs(v257, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self->_filledInLinkWriteBufferBytes == self->_handledLinkWriteBufferBytes", "", "NRLinkNexusToLinkLoop", 4623);
          }

          v258 = _os_log_pack_size();
          v259 = &v317 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v260 = *__error();
          i = _os_log_pack_fill(v259, v258, v260, &_mh_execute_header, "%{public}s Assertion Failed: self->_filledInLinkWriteBufferBytes == self->_handledLinkWriteBufferBytes");
          goto LABEL_313;
        }

        if (*v5 == 1)
        {
          if (v153)
          {
            *(v3 + 2063) |= 0x100000uLL;
            v206 = _NRCopyLogObjectForNRUUID();
            v207 = _NRLogIsLevelEnabled();

            if (v207)
            {
              v208 = _NRCopyLogObjectForNRUUID();
              v209 = [v3 copyDescription];
              _NRLogWithArgs(v208, 1, "%s%.30s:%-4d %@: resetting the linkWriteBuffer from filledIn=%u handled=%u", "", "NRLinkNexusToLinkLoop", 4626, v209, *(v3 + 339), *(v3 + 343));
            }
          }
        }

        *(v3 + 339) = 0;
      }

      else
      {
        *(v3 + 2063) |= 0x80000uLL;
        if (*v5 == 1)
        {
          v202 = _NRCopyLogObjectForNRUUID();
          v203 = _NRLogIsLevelEnabled();

          if (v203)
          {
            v204 = _NRCopyLogObjectForNRUUID();
            v205 = [v3 copyDescription];
            _NRLogWithArgs(v204, 1, "%s%.30s:%-4d %@: memmoving the linkWriteBuffer from filledIn=%u handled=%u", "", "NRLinkNexusToLinkLoop", 4617, v205, *(v3 + 339), *(v3 + 343));
          }
        }

        memmove(*(v3 + 519), (*(v3 + 519) + *(v3 + 343)), (*(v3 + 339) - *(v3 + 343)));
        *(v3 + 339) -= *(v3 + 343);
      }

      *(v3 + 343) = 0;
      *(v3 + 2063) |= 0x200000uLL;
      v54 = v149;
      if (*v5 == 1)
      {
        v187 = _NRCopyLogObjectForNRUUID();
        v188 = _NRLogIsLevelEnabled();

        v54 = v149;
        if (v188)
        {
          v189 = _NRCopyLogObjectForNRUUID();
          v190 = [v3 copyDescription];
          _NRLogWithArgs(v189, 1, "%s%.30s:%-4d %@: advancing past linkOutputSlot=%p and syncing link output", "", "NRLinkNexusToLinkLoop", 4632, v190, v23);

          v54 = v149;
        }
      }

      if (*v5 == 1)
      {
        v191 = +[NSDate date];
        v192 = *(v3 + 1831);
        *(v3 + 1831) = v191;
      }

      os_channel_advance_slot();
      os_channel_sync();
      ++*(v3 + 1575);
      v148 = v331;
    }

    v155 = v23;
    v156 = v148;
    if (v148)
    {
      *(v3 + 2063) |= 0x800000uLL;
      if (*v5 == 1)
      {
        v171 = v54;
        v172 = _NRCopyLogObjectForNRUUID();
        v173 = _NRLogIsLevelEnabled();

        v54 = v171;
        if (v173)
        {
          v174 = _NRCopyLogObjectForNRUUID();
          v175 = [v3 copyDescription];
          _NRLogWithArgs(v174, 1, "%s%.30s:%-4d %@: DatagramLink:advancing past linkOutputSlot=%p and syncing datagram link output", "", "NRLinkNexusToLinkLoop", 4643, v175, v156);

          v54 = v171;
        }
      }

      if (*v5 == 1)
      {
        v176 = +[NSDate date];
        v177 = *(v3 + 1847);
        *(v3 + 1847) = v176;
      }

      os_channel_advance_slot();
      os_channel_sync();
      ++*(v3 + 1591);
    }

    if (v337)
    {
      if (v6)
      {
        *(v3 + 2063) |= 0x1000000uLL;
        if (*v5 == 1)
        {
          v193 = v54;
          v194 = _NRCopyLogObjectForNRUUID();
          v195 = _NRLogIsLevelEnabled();

          v54 = v193;
          if (v195)
          {
            v196 = _NRCopyLogObjectForNRUUID();
            v197 = [v3 copyDescription];
            _NRLogWithArgs(v196, 1, "%s%.30s:%-4d %@: advancing past nexusInputSlot=%p and syncing nexus input", "", "NRLinkNexusToLinkLoop", 4653, v197, v337);

            v54 = v193;
          }
        }

        if (*v5 == 1)
        {
          v198 = +[NSDate date];
          v199 = *(v3 + 1807);
          *(v3 + 1807) = v198;
        }

        os_channel_advance_slot();
        os_channel_sync();
        ++*v323;
        if (*v5 == 1)
        {
          v178 = v54;
          v200 = _NRCopyLogObjectForNRUUID();
          v201 = _NRLogIsLevelEnabled();

          v54 = v178;
          if (v201)
          {
            v181 = _NRCopyLogObjectForNRUUID();
            v182 = [v3 copyDescription];
            _NRLogWithArgs(v181, 1, "%s%.30s:%-4d %@: Served %llu packets, %llu bytes", "", "NRLinkNexusToLinkLoop", 4659, v182, *v322 - v318, *v321 - v319);
LABEL_255:

            v54 = v178;
          }
        }
      }

      else
      {
        v178 = v54;
        v179 = _NRCopyLogObjectForNRUUID();
        v180 = _NRLogIsLevelEnabled();

        v54 = v178;
        if (v180)
        {
          v181 = _NRCopyLogObjectForNRUUID();
          v182 = [v3 copyDescription];
          _NRLogWithArgs(v181, 17, "%@: Tried to sync nexus input but _nexusInputRing is NULL", v182);
          goto LABEL_255;
        }
      }
    }

    *(v3 + 1039) = v345;
    if (*(v3 + 2063) && *&v3[v54[487]])
    {
      v3[304] = v3[304] % v3[303];
      v157 = *&v3[v54[487]];
      v158 = (v157 + 8 * v3[304]);
      if ((v158 + 1) <= v157 + 8 * v3[303])
      {
        if ((v158 & 7) == 0)
        {
          *v158 = *(v3 + 2063);
          ++v3[304];
          *(v3 + 2063) = 0;
        }
      }

      else
      {
        v159 = _NRCopyLogObjectForNRUUID();
        v160 = _NRLogIsLevelEnabled();

        if (v160)
        {
          v161 = _NRCopyLogObjectForNRUUID();
          v162 = [v3 copyDescription];
          _NRLogWithArgs(v161, 17, "%@: invalid index for ntl log list (curIdx: %u)", v162, v3[304]);
        }
      }
    }

    LODWORD(v53) = 0;
    if (v337)
    {
      v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      goto LABEL_25;
    }

    v21 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    if (v155 || v156)
    {
LABEL_25:
      if (v53)
      {
        goto LABEL_282;
      }

      continue;
    }

    break;
  }

  if (v325)
  {
    if (!*(v3 + 1199))
    {
      if (v3[254] == 1 && *(v3 + 623))
      {
        v3[254] = 0;
        ++*(v3 + 639);
        if (*v5 == 1)
        {
          v300 = _NRCopyLogObjectForNRUUID();
          v301 = _NRLogIsLevelEnabled();

          if (v301)
          {
            v302 = _NRCopyLogObjectForNRUUID();
            v303 = [v3 copyDescription];
            _NRLogWithArgs(v302, 1, "%s%.30s:%-4d %@: source-resume: NexusVOInput", "", "NRLinkResumeNexusVOInputSource", 875, v303);
          }
        }

        dispatch_resume(*(v3 + 623));
      }

      if (v3[256] == 1 && *(v3 + 783))
      {
        v3[256] = 0;
        ++*(v3 + 799);
        if (*v5 == 1)
        {
          v304 = _NRCopyLogObjectForNRUUID();
          v305 = _NRLogIsLevelEnabled();

          if (v305)
          {
            v306 = _NRCopyLogObjectForNRUUID();
            v307 = [v3 copyDescription];
            _NRLogWithArgs(v306, 1, "%s%.30s:%-4d %@: source-resume: NexusVIInput", "", "NRLinkResumeNexusVIInputSource", 877, v307);
          }
        }

        dispatch_resume(*(v3 + 783));
      }
    }

    if (v3[252] == 1 && *(v3 + 463))
    {
      v3[252] = 0;
      ++*(v3 + 487);
      if (*v5 == 1)
      {
        v292 = _NRCopyLogObjectForNRUUID();
        v293 = _NRLogIsLevelEnabled();

        if (v293)
        {
          v294 = _NRCopyLogObjectForNRUUID();
          v295 = [v3 copyDescription];
          _NRLogWithArgs(v294, 1, "%s%.30s:%-4d %@: source-resume: NexusInput", "", "NRLinkResumeNexusInputSource", 873, v295);
        }
      }

      dispatch_resume(*(v3 + 463));
    }

    if (v3[258] == 1 && *(v3 + 927))
    {
      v3[258] = 0;
      ++*(v3 + 943);
      if (*v5 == 1)
      {
        v296 = _NRCopyLogObjectForNRUUID();
        v297 = _NRLogIsLevelEnabled();

        if (v297)
        {
          v298 = _NRCopyLogObjectForNRUUID();
          v299 = [v3 copyDescription];
          _NRLogWithArgs(v298, 1, "%s%.30s:%-4d %@: source-resume: NexusBKInput", "", "NRLinkResumeNexusBKInputSource", 879, v299);
        }
      }

      dispatch_resume(*(v3 + 927));
    }
  }

LABEL_282:
}

void sub_100080EB4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = a2;
    v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

    [a1 cancelWithReason:{@"flushing pipe: %@", v11}];
  }
}

void sub_100080F38(void *a1)
{
  if ((*(a1 + 254) & 1) == 0 && *(a1 + 623))
  {
    *(a1 + 254) = 1;
    ++*(a1 + 639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v6 = a1;
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v6;
      if (IsLevelEnabled)
      {
        v4 = _NRCopyLogObjectForNRUUID();
        v5 = [v6 copyDescription];
        _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: source-suspend: NexusVOInput", "", "NRLinkSuspendNexusVOInputSource", 865, v5);

        a1 = v6;
      }
    }

    v1 = *(a1 + 623);

    dispatch_suspend(v1);
  }
}

void sub_100081064(void *a1)
{
  if ((a1[32] & 1) == 0 && *(a1 + 783))
  {
    *(a1 + 256) = 1;
    ++*(a1 + 799);
    if (gNRPacketLoggingEnabled == 1)
    {
      v6 = a1;
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v6;
      if (IsLevelEnabled)
      {
        v4 = _NRCopyLogObjectForNRUUID();
        v5 = [v6 copyDescription];
        _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: source-suspend: NexusVIInput", "", "NRLinkSuspendNexusVIInputSource", 867, v5);

        a1 = v6;
      }
    }

    v1 = *(a1 + 783);

    dispatch_suspend(v1);
  }
}

void sub_100081190(void *a1)
{
  if ((*(a1 + 258) & 1) == 0 && *(a1 + 927))
  {
    *(a1 + 258) = 1;
    ++*(a1 + 943);
    if (gNRPacketLoggingEnabled == 1)
    {
      v6 = a1;
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v6;
      if (IsLevelEnabled)
      {
        v4 = _NRCopyLogObjectForNRUUID();
        v5 = [v6 copyDescription];
        _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: source-suspend: NexusBKInput", "", "NRLinkSuspendNexusBKInputSource", 869, v5);

        a1 = v6;
      }
    }

    v1 = *(a1 + 927);

    dispatch_suspend(v1);
  }
}

void sub_1000812BC(void *a1)
{
  if ((*(a1 + 252) & 1) == 0 && *(a1 + 463))
  {
    *(a1 + 252) = 1;
    ++*(a1 + 487);
    if (gNRPacketLoggingEnabled == 1)
    {
      v6 = a1;
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v6;
      if (IsLevelEnabled)
      {
        v4 = _NRCopyLogObjectForNRUUID();
        v5 = [v6 copyDescription];
        _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: source-suspend: NexusInput", "", "NRLinkSuspendNexusInputSource", 863, v5);

        a1 = v6;
      }
    }

    v1 = *(a1 + 463);

    dispatch_suspend(v1);
  }
}

void sub_1000813E8(void *a1)
{
  if (*(a1 + 254) == 1 && *(a1 + 623))
  {
    *(a1 + 254) = 0;
    ++*(a1 + 639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v6 = a1;
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v6;
      if (IsLevelEnabled)
      {
        v4 = _NRCopyLogObjectForNRUUID();
        v5 = [v6 copyDescription];
        _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: source-resume: NexusVOInput", "", "NRLinkResumeNexusVOInputSource", 875, v5);

        a1 = v6;
      }
    }

    v1 = *(a1 + 623);

    dispatch_resume(v1);
  }
}

void sub_100081514(void *a1)
{
  if (*(a1 + 256) == 1 && *(a1 + 783))
  {
    *(a1 + 256) = 0;
    ++*(a1 + 799);
    if (gNRPacketLoggingEnabled == 1)
    {
      v6 = a1;
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v6;
      if (IsLevelEnabled)
      {
        v4 = _NRCopyLogObjectForNRUUID();
        v5 = [v6 copyDescription];
        _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: source-resume: NexusVIInput", "", "NRLinkResumeNexusVIInputSource", 877, v5);

        a1 = v6;
      }
    }

    v1 = *(a1 + 783);

    dispatch_resume(v1);
  }
}

void sub_100081640(void *a1)
{
  if (*(a1 + 258) == 1 && *(a1 + 927))
  {
    *(a1 + 258) = 0;
    ++*(a1 + 943);
    if (gNRPacketLoggingEnabled == 1)
    {
      v6 = a1;
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v6;
      if (IsLevelEnabled)
      {
        v4 = _NRCopyLogObjectForNRUUID();
        v5 = [v6 copyDescription];
        _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: source-resume: NexusBKInput", "", "NRLinkResumeNexusBKInputSource", 879, v5);

        a1 = v6;
      }
    }

    v1 = *(a1 + 927);

    dispatch_resume(v1);
  }
}

void sub_10008176C(void *a1)
{
  if (*(a1 + 252) == 1 && *(a1 + 463))
  {
    *(a1 + 252) = 0;
    ++*(a1 + 487);
    if (gNRPacketLoggingEnabled == 1)
    {
      v6 = a1;
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      a1 = v6;
      if (IsLevelEnabled)
      {
        v4 = _NRCopyLogObjectForNRUUID();
        v5 = [v6 copyDescription];
        _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: source-resume: NexusInput", "", "NRLinkResumeNexusInputSource", 873, v5);

        a1 = v6;
      }
    }

    v1 = *(a1 + 463);

    dispatch_resume(v1);
  }
}

void *sub_1000828DC(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    String = NRDataProtectionClassCreateString();
    v12 = sub_100163A30(NRDLocalDevice, a1[4]);
    v13 = sub_100164D70(v12, a4);
    v14 = sub_100147400(0, v12, a4);
    if (v13)
    {
      v15 = v13[1];
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      v25 = String;
      [a1 reportEvent:3019 detailsFormat:@"%@ %@ %@", String, v9, v12];
LABEL_34:
      a1 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v70 = v11;
    v71 = v14;
    v17 = [v10 localIdentifier];
    v18 = [v10 remoteIdentifier];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      if (!v12 || (*(v12 + 49) & 2) == 0)
      {
        v11 = v70;
        v14 = v71;
        if (v70[2](v70, v71))
        {
          if (a4 == 4)
          {
LABEL_10:
            v20 = v9;
            if (!v12)
            {
              v66 = 0;
              v68 = 0;
LABEL_26:
              v9 = v20;
              goto LABEL_27;
            }

            v21 = sub_100003490();
            dispatch_assert_queue_V2(v21);

            v22 = sub_1001672A0(v12, @"0");
            v23 = sub_100003490();
            dispatch_assert_queue_V2(v23);

            v24 = sub_1001677D0(v12, @"0");
LABEL_23:
            v41 = v24;
            v66 = v24;
            v68 = v22;
            if (v22 && v24)
            {
              v42 = [NEIKEv2ConfigurationMessage alloc];
              v43 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v41];
              v73[0] = v43;
              v44 = [[NEIKEv2ResponderTransportIPv6Address alloc] initWithAddress:v22];
              v73[1] = v44;
              v45 = [NSArray arrayWithObjects:v73 count:2];
              v46 = [v42 initWithWithAttributes:v45];
              [v71 setConfigurationReply:v46];

              v11 = v70;
            }

            goto LABEL_26;
          }

LABEL_20:
          v68 = 0;
          if (a4 != 3)
          {
            v66 = 0;
            goto LABEL_27;
          }

          v66 = 0;
          if (!v12)
          {
LABEL_27:
            v47 = sub_100147B98(v12);
            v48 = sub_100083C40(a1, v47);
            v49 = sub_10008B0B4(a1);
            if (v49)
            {
              [v48 addObject:v49];
            }

            v50 = [a1 suspendWhenReady];
            if (a4 == 4 && v50)
            {
              v51 = v9;
              v52 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50901 notifyData:0];
              [v48 addObject:v52];

              v9 = v51;
              v11 = v70;
            }

            [v71 setCustomIKEAuthPrivateNotifies:v48];
            [a1 invalidateIKESessionForClass:a4];
            sub_1000857F4(a1, a4);
            objc_storeStrong(v53, a2);
            sub_10008597C(a1, a4);
            v25 = String;
            [a1 reportEvent:3016 detailsFormat:@"%@ %@", String, v9];
            a1 = v71;

            v14 = v71;
            goto LABEL_37;
          }

          v20 = v9;
          v39 = sub_100003490();
          dispatch_assert_queue_V2(v39);

          v22 = sub_1001679E0(v12, @"0");
          v40 = sub_100003490();
          dispatch_assert_queue_V2(v40);

          v24 = sub_100167B9C(v12, @"0");
          goto LABEL_23;
        }

LABEL_33:
        v25 = String;
        [a1 reportEvent:3021 detailsFormat:@"%@ %@", String, v9, v65];
        goto LABEL_34;
      }

      v25 = String;
      [a1 reportEvent:3022 detailsFormat:@"%@ %@ %@", String, v9, v12];
LABEL_36:
      a1 = 0;
      v11 = v70;
      v14 = v71;
      goto LABEL_37;
    }

    v26 = [v10 remoteIdentifier];
    v27 = [v10 localIdentifier];
    v28 = sub_1001646B4(NRDLocalDevice, v26, v27, v9);

    v29 = _NRCopyLogObjectForNRUUID();
    if (v28)
    {
      v67 = v9;
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = [a1 copyDescription];
        v33 = v28->_identity;
        _NRLogWithArgs(v31, 1, "%s%.30s:%-4d %@: Decrypted device identity %@", "", "[NRLinkBluetooth respondToIKESession:sessionConfig:dataProtectionClass:validateAuthBlock:]", 9984, v32, v33);
      }

      v34 = v28->_nrUUID;

      if (v34)
      {
        v35 = v28->_nrUUID;
        v36 = [a1 nrUUID];
        v37 = [(NSUUID *)v35 isEqual:v36];

        if (v37)
        {

          v11 = v70;
          v14 = v71;
          v9 = v67;
          if (v70[2](v70, v71))
          {
            v38 = [a1 nrUUID];
            v9 = v67;
            sub_100171DA0(NRDLocalDevice, v38);

            if (a4 == 4)
            {
              goto LABEL_10;
            }

            goto LABEL_20;
          }

          goto LABEL_33;
        }

        v61 = _NRCopyLogObjectForNRUUID();
        v62 = _NRLogIsLevelEnabled();

        v9 = v67;
        if (!v62)
        {
          goto LABEL_50;
        }

        v56 = _NRCopyLogObjectForNRUUID();
        v57 = [a1 copyDescription];
        v60 = v28->_identity;
        v63 = v28->_nrUUID;
        v64 = [a1 nrUUID];
        _NRLogWithArgs(v56, 16, "%s%.30s:%-4d %@: Different device found for identity %@ (%@ != %@)", "", "[NRLinkBluetooth respondToIKESession:sessionConfig:dataProtectionClass:validateAuthBlock:]", 9995, v57, v60, v63, v64);

        goto LABEL_48;
      }

      v58 = _NRCopyLogObjectForNRUUID();
      v59 = _NRLogIsLevelEnabled();

      v9 = v67;
      if (v59)
      {
        v56 = _NRCopyLogObjectForNRUUID();
        v57 = [a1 copyDescription];
        v60 = v28->_identity;
        _NRLogWithArgs(v56, 16, "%s%.30s:%-4d %@: No device found for identity %@", "", "[NRLinkBluetooth respondToIKESession:sessionConfig:dataProtectionClass:validateAuthBlock:]", 9988, v57, v60);
LABEL_48:

        v9 = v67;
        goto LABEL_49;
      }
    }

    else
    {
      v55 = _NRLogIsLevelEnabled();

      if (v55)
      {
        v56 = _NRCopyLogObjectForNRUUID();
        v57 = [a1 copyDescription];
        _NRLogWithArgs(v56, 16, "%s%.30s:%-4d %@: Failed to decrypt device identity", "", "[NRLinkBluetooth respondToIKESession:sessionConfig:dataProtectionClass:validateAuthBlock:]", 9980, v57);
LABEL_49:
      }
    }

LABEL_50:
    v25 = String;
    [a1 reportEvent:3023 detailsFormat:@"%@ %@ %@", String, v9, v12];

    goto LABEL_36;
  }

LABEL_38:

  return a1;
}

void sub_100083088(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1335);
    if (v2)
    {
      v3 = [v2 description];
      [*(a1 + 1335) setClientQueue:*(a1 + 8)];
      objc_initWeak(location, a1);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10008BD24;
      v36[3] = &unk_1001FC090;
      objc_copyWeak(&v38, location);
      v4 = v3;
      v37 = v4;
      [*(a1 + 1335) setStateUpdateBlock:v36];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10008C2F0;
      v33[3] = &unk_1001FB088;
      objc_copyWeak(&v35, location);
      v5 = v4;
      v34 = v5;
      [*(a1 + 1335) setChildStateUpdateBlock:v33];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10008C454;
      v30[3] = &unk_1001FB0B0;
      objc_copyWeak(&v32, location);
      v6 = v5;
      v31 = v6;
      [*(a1 + 1335) setConfigurationUpdateBlock:v30];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10008C530;
      v27[3] = &unk_1001FB0D8;
      objc_copyWeak(&v29, location);
      v7 = v6;
      v28 = v7;
      [*(a1 + 1335) setTrafficSelectorUpdateBlock:v27];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10008C630;
      v24[3] = &unk_1001FC108;
      objc_copyWeak(&v26, location);
      v8 = v7;
      v25 = v8;
      [*(a1 + 1335) setAdditionalAddressesUpdateBlock:v24];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10008C70C;
      v21[3] = &unk_1001FD0D8;
      objc_copyWeak(&v23, location);
      v9 = v8;
      v22 = v9;
      [*(a1 + 1335) setShortDPDEventBlock:v21];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10008C7E0;
      v18[3] = &unk_1001FC108;
      objc_copyWeak(&v20, location);
      v10 = v9;
      v19 = v10;
      [*(a1 + 1335) setPrivateNotifyStatusEvent:v18];
      v11 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = _NRCopyLogObjectForNRUUID();
        v14 = [a1 copyDescription];
        _NRLogWithArgs(v13, 0, "%s%.30s:%-4d %@: Setup IKE pairing %@ callbacks", "", "[NRLinkBluetooth setupIKECallbacksPairing]", 9553, v14, v10);
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v23);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v29);

      objc_destroyWeak(&v32);
      objc_destroyWeak(&v35);

      objc_destroyWeak(&v38);
      objc_destroyWeak(location);
    }

    else
    {
      v15 = sub_10007CF34();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = sub_10007CF34();
        _NRLogWithArgs(v17, 17, "%s called with null _ikeSessionPairing", "[NRLinkBluetooth setupIKECallbacksPairing]");
      }
    }
  }
}

void sub_100083540(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v7 - 120));
  objc_destroyWeak((v7 - 112));
  _Unwind_Resume(a1);
}

void sub_1000835D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = a2;
  v7 = a3;
  v8 = a4;
  if ([*(a1 + 32) state] == 255)
  {
    v22 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_22;
    }

    v9 = _NRCopyLogObjectForNRUUID();
    v11 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: Ignoring result as link is cancelled", "", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]_block_invoke", 10205, v11);
  }

  else
  {
    v9 = sub_100083C40(*(a1 + 32), 0);
    v10 = [*(a1 + 32) nrUUID];
    v11 = sub_10016D388(NRDLocalDevice, v10);

    if (v11)
    {
      v12 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v11];
      [v9 addObject:v12];
    }

    if (v24)
    {
      v13 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50411 notifyData:v24];
      [v9 addObject:v13];
    }

    if (v7)
    {
      v14 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50412 notifyData:v7];
      [v9 addObject:v14];
    }

    if (v8)
    {
      v15 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50413 notifyData:v8];
      [v9 addObject:v15];
    }

    [*(a1 + 40) setCustomIKEAuthPrivateNotifies:v9];
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs(qword_100229080, 0, "%s%.30s:%-4d Responding to session for pairing with OOBK", "", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]_block_invoke", 10240);
    }

    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) sharedSecret];
    LogString = _NRKeyCreateLogString();
    [v16 reportEvent:3014 details:LogString];

    v19 = *(a1 + 56);
    v20 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v21 = sub_100146D34(1, 1);
      (*(v19 + 16))(v19, v20, v21, 0);
    }

    else
    {
      (*(v19 + 16))(*(a1 + 56), *(a1 + 40), 0, 0);
    }
  }

LABEL_22:
}

void sub_1000838F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v29 = a4;
  v11 = a5;
  v12 = a6;
  if ([*(a1 + 32) state] == 255)
  {
    v24 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_21;
    }

    v17 = _NRCopyLogObjectForNRUUID();
    v26 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v17, 0, "%s%.30s:%-4d %@: Ignoring result as link is cancelled", "", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]_block_invoke_2", 10259, v26);
    goto LABEL_18;
  }

  if (a2 && a3 && v29)
  {
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v15, 0, "%s%.30s:%-4d %@: Responder %@ queried IDS keys for pairing", "", "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]_block_invoke_2", 10270, v16, *(a1 + 40));
    }

    [*(a1 + 48) setLocalPrivateKeyRef:a3];
    [*(a1 + 48) setRemotePublicKeyRef:a2];
    v17 = sub_100083C40(*(a1 + 32), 0);
    v18 = [*(a1 + 32) nrUUID];
    v19 = sub_10016D388(NRDLocalDevice, v18);

    if (v19)
    {
      v20 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v19];
      [v17 addObject:v20];
    }

    v21 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50401 notifyData:v29];
    [v17 addObject:v21];

    if (v11)
    {
      v22 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50402 notifyData:v11];
      [v17 addObject:v22];

      if (v12)
      {
LABEL_11:
        v23 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50403 notifyData:v12];
        [v17 addObject:v23];

LABEL_16:
        [*(a1 + 48) setCustomIKEAuthPrivateNotifies:v17];
        [*(a1 + 32) reportEvent:3012];
        v27 = *(a1 + 64);
        v28 = *(a1 + 48);
        if (!*(a1 + 56))
        {
          (*(v27 + 16))(*(a1 + 64), *(a1 + 48), 0, 0);
          goto LABEL_20;
        }

        v26 = sub_100146D34(1, 1);
        (*(v27 + 16))(v27, v28, v26, 0);
LABEL_18:

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      sub_10008448C(*(a1 + 32));
      if (v12)
      {
        goto LABEL_11;
      }
    }

    sub_1000846C0(*(a1 + 32));
    goto LABEL_16;
  }

  (*(*(a1 + 64) + 16))();
LABEL_21:
}

void *sub_100083C40(void *a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableArray);
    LOWORD(v64) = 6144;
    v5 = [[NSMutableData alloc] initWithBytes:&v64 length:2];
    v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48602 notifyData:v5];
    [v4 addObject:v6];

    if (qword_100229228 != -1)
    {
      dispatch_once(&qword_100229228, &stru_1001FC320);
    }

    v7 = qword_100229220;
    v8 = [v7 dataUsingEncoding:4];

    v9 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48603 notifyData:v8];
    [v4 addObject:v9];

    if (qword_100229218 != -1)
    {
      dispatch_once(&qword_100229218, &stru_1001FC300);
    }

    v10 = qword_100229210;
    v11 = [v10 dataUsingEncoding:4];

    v12 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48604 notifyData:v11];
    [v4 addObject:v12];

    if (qword_100229298 != -1)
    {
      dispatch_once(&qword_100229298, &stru_1001FC450);
    }

    LOBYTE(v64) = byte_100229290;
    v13 = [[NSData alloc] initWithBytes:&v64 length:1];
    v14 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48606 notifyData:v13];
    [v4 addObject:v14];

    v15 = sub_100147A80();
    [v4 addObject:v15];

    v16 = sub_100163A30(NRDLocalDevice, v2[4]);
    if (v16)
    {
      v17 = v16;
      *&v64 = *(v16 + 152);
      v18 = [[NSData alloc] initWithBytes:&v64 length:8];
      v19 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48605 notifyData:v18];

      [v4 addObject:v19];
      objc_opt_self();
      LOBYTE(v64) = 1;
      v20 = [[NSData alloc] initWithBytes:&v64 length:1];
      v21 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:51401 notifyData:v20];
      [v4 addObject:v21];

      v22 = sub_100163A30(NRDLocalDevice, v2[4]);
      v23 = v22;
      if (v22)
      {
        v24 = (*(v22 + 48) >> 2) & 1;
      }

      else
      {
        LOBYTE(v24) = 0;
      }

      LOBYTE(v64) = v24;
      v25 = [[NSData alloc] initWithBytes:&v64 length:1];
      v26 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:51501 notifyData:v25];
      [v4 addObject:v26];

      if (!*(v2 + 423))
      {
        [v2 cancelWithReason:@"Trying to generate notify payloads but sentPrelude is nil"];
        v2 = 0;
LABEL_23:

        return v2;
      }

      v27 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48601 notifyData:*(v2 + 423)];
      [v4 addObject:v27];

      if (!a2)
      {
LABEL_19:
        if (*(v2 + 289) == 1)
        {
          v35 = sub_100163A30(NRDLocalDevice, v2[4]);
          if (!v35)
          {
            while (1)
            {
              v56 = sub_10007CF34();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v58 = sub_10007CF34();
                _NRLogWithArgs(v58, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth copyNotifyPayloadsToSendWithProxy:]", 8236);
              }

              v59 = _os_log_pack_size();
              v60 = &v63 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v61 = __error();
              v62 = _os_log_pack_fill(v60, v59, *v61, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
              *v62 = 136446210;
              *(v62 + 4) = "[NRLinkBluetooth copyNotifyPayloadsToSendWithProxy:]";
LABEL_31:
              sub_10007CF34();
              _NRLogAbortWithPack();
            }
          }

          v36 = v35;
          v64 = 0uLL;
          sub_100167D5C(v35, &v64);
          v37 = [[NSData alloc] initWithBytes:&v64 length:16];
          v38 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50801 notifyData:v37];
          [v4 addObject:v38];

          v64 = 0uLL;
          sub_100168638(v36, &v64);
          v39 = [[NSData alloc] initWithBytes:&v64 length:16];
          v40 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50802 notifyData:v39];
          [v4 addObject:v40];

          v64 = 0uLL;
          sub_1001727AC(v36, &v64);
          v41 = [[NSData alloc] initWithBytes:&v64 length:16];
          v42 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50811 notifyData:v41];
          [v4 addObject:v42];

          v64 = 0uLL;
          sub_100172608(v36, &v64);
          v43 = [[NSData alloc] initWithBytes:&v64 length:16];
          v44 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50812 notifyData:v43];
          [v4 addObject:v44];
        }

        v2 = v4;
        goto LABEL_23;
      }

      v28 = sub_100163A30(NRDLocalDevice, v2[4]);
      if (v28)
      {
        v29 = v28;
        v30 = *(v28 + 144);
        v31 = [v30 hasCompanionDatapath];

        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v33 = sub_100003490();
          dispatch_assert_queue_V2(v33);

          v32 = sub_1001672A0(v29, @"0");
        }

        v34 = sub_100147C1C(v29, v32);
        [v4 addObject:v34];

        goto LABEL_19;
      }

      v49 = sub_10007CF34();
      v50 = _NRLogIsLevelEnabled();

      if (v50)
      {
        v51 = sub_10007CF34();
        _NRLogWithArgs(v51, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth copyNotifyPayloadsToSendWithProxy:]", 8226);
      }
    }

    else
    {
      v46 = sub_10007CF34();
      v47 = _NRLogIsLevelEnabled();

      if (v47)
      {
        v48 = sub_10007CF34();
        _NRLogWithArgs(v48, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth copyNotifyPayloadsToSendWithProxy:]", 8176);
      }
    }

    v52 = _os_log_pack_size();
    v53 = &v63 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = *__error();
    v55 = _os_log_pack_fill(v53, v52, v54, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v55 = 136446210;
    *(v55 + 4) = "[NRLinkBluetooth copyNotifyPayloadsToSendWithProxy:]";
    goto LABEL_31;
  }

  return v2;
}

void sub_10008448C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 255)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        v9 = [a1 copyDescription];
        _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Not sending encrypted classC because cancelled", "", "[NRLinkBluetooth sendlocalPublicClassCKeysEncryptedWithIDS]", 9121, v9);
      }
    }

    else if (*(a1 + 1383))
    {
      [a1 reportEvent:3402 details:@"ClassC"];
      v2 = sub_100083C40(a1, 0);
      v3 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50402 notifyData:*(a1 + 1383)];
      [v2 addObject:v3];
      v4 = *(a1 + 1383);
      *(a1 + 1383) = 0;

      v5 = *(a1 + 1335);
      v6 = *(a1 + 8);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10008BBB0;
      v12[3] = &unk_1001FB2D8;
      v12[4] = a1;
      [v5 sendPrivateNotifies:v2 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v6 callback:v12];
    }

    else if ((*(a1 + 280) & 1) == 0)
    {
      *(a1 + 280) = 1;
      v10 = *(a1 + 32);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10008BA58;
      v13[3] = &unk_1001FB038;
      v13[4] = a1;
      sub_10016E0BC(NRDLocalDevice, v10, 3, v13);
    }
  }
}

void sub_1000846C0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) != 255)
    {
      v2 = [a1 nrUUID];
      v3 = sub_100163A30(NRDLocalDevice, v2);

      if (v3 && ((*(v3 + 48) & 0x10) != 0 || *(v3 + 16) >= 0x13u))
      {
        v4 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
LABEL_15:

          return;
        }

        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [a1 copyDescription];
        _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Not sending encrypted ClassA because peer supports skipping ClassA pairing", "", "[NRLinkBluetooth sendlocalPublicClassAKeysEncryptedWithIDS]", 9178, v7);
      }

      else
      {
        if (!*(a1 + 1391))
        {
          if ((*(a1 + 281) & 1) == 0)
          {
            *(a1 + 281) = 1;
            v15 = *(a1 + 32);
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_1000849B4;
            v18[3] = &unk_1001FB038;
            v18[4] = a1;
            sub_10016E0BC(NRDLocalDevice, v15, 1, v18);
          }

          goto LABEL_15;
        }

        [a1 reportEvent:3402 details:@"ClassA"];
        v6 = sub_100083C40(a1, 0);
        v11 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50403 notifyData:*(a1 + 1391)];
        [v6 addObject:v11];
        v12 = *(a1 + 1391);
        *(a1 + 1391) = 0;

        v13 = *(a1 + 1335);
        v14 = *(a1 + 8);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100084B0C;
        v17[3] = &unk_1001FB2D8;
        v17[4] = a1;
        [v13 sendPrivateNotifies:v6 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v14 callback:v17];
      }

      goto LABEL_15;
    }

    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v10 = [a1 copyDescription];
      _NRLogWithArgs(v16, 0, "%s%.30s:%-4d %@: Not sending encrypted ClassA because cancelled", "", "[NRLinkBluetooth sendlocalPublicClassAKeysEncryptedWithIDS]", 9173, v10);
    }
  }
}

void sub_1000849B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v17 = a6;
  if ([*(a1 + 32) state] == 255)
  {
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: Ignoring result as link is cancelled", "", "[NRLinkBluetooth sendlocalPublicClassAKeysEncryptedWithIDS]_block_invoke", 9196, v13);
    }
  }

  else if (v17)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      objc_storeStrong((v8 + 1391), a6);
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    sub_1000846C0(v9);
  }

  else
  {
    v14 = sub_10007CF34();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = sub_10007CF34();
      _NRLogWithArgs(v16, 17, "%s called with null localPublicClassAKeysEncryptedWithIDS", "[NRLinkBluetooth sendlocalPublicClassAKeysEncryptedWithIDS]_block_invoke");
    }
  }
}

void sub_100084B0C(uint64_t a1, int a2)
{
  v4 = _NRCopyLogObjectForNRUUID();
  if (a2)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: localPublicClassAKeysEncryptedWithIDS was received", "", "[NRLinkBluetooth sendlocalPublicClassAKeysEncryptedWithIDS]_block_invoke_2", 9219, v7);
    }

    v8 = *(a1 + 32);
    if (v8)
    {

      sub_100084C80(v8, 1, 0, 0);
    }
  }

  else
  {
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v10 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: localPublicClassAKeysEncryptedWithIDS was not received", "", "[NRLinkBluetooth sendlocalPublicClassAKeysEncryptedWithIDS]_block_invoke_2", 9222, v10);
    }
  }
}

void sub_100084C80(unsigned __int8 *a1, uint64_t a2, int a3, int a4)
{
  String = NRDataProtectionClassCreateString();
  if (a1[16] == 255)
  {
    v12 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_21;
    }

    v10 = _NRCopyLogObjectForNRUUID();
    v11 = [a1 copyDescription];
    _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: Not restarting %@ session because cancelled", "", "[NRLinkBluetooth restartIKESessionForDataProtectionClass:authFailure:afterDisconnection:]", 9844, v11, String);
    goto LABEL_20;
  }

  [a1 invalidateIKESessionForClass:a2];
  if (a2 != 4 && a3 && (a1[276] & 1) == 0)
  {
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_21;
    }

    v10 = _NRCopyLogObjectForNRUUID();
    v11 = [a1 copyDescription];
    _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: Not restarting %@ session because remote not unlocked", "", "[NRLinkBluetooth restartIKESessionForDataProtectionClass:authFailure:afterDisconnection:]", 9849, v11, String);
    goto LABEL_20;
  }

  if (a2 == 1 && a1[275] == 1)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = _NRCopyLogObjectForNRUUID();
    v11 = [a1 copyDescription];
    _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: Not restarting ClassA session because attempt failed once. Will retry at next unlock", "", "[NRLinkBluetooth restartIKESessionForDataProtectionClass:authFailure:afterDisconnection:]", 9855, v11);
LABEL_20:

    goto LABEL_21;
  }

  v14 = _NRCopyLogObjectForNRUUID();
  v15 = _NRLogIsLevelEnabled();

  if (v15)
  {
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = [a1 copyDescription];
    _NRLogWithArgs(v16, 0, "%s%.30s:%-4d %@: Restarting %@ session", "", "[NRLinkBluetooth restartIKESessionForDataProtectionClass:authFailure:afterDisconnection:]", 9860, v17, String);
  }

  sub_1000850B4(a1, a2);
  if (a4 && a1[289] == 1)
  {
    if (a2 == 4)
    {
      v18 = &OBJC_IVAR___NRLinkBluetooth__reconnectionTimerStartedClassD;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_21;
      }

      v18 = &OBJC_IVAR___NRLinkBluetooth__reconnectionTimerStartedClassC;
    }

    v21 = &a1[*v18];
    if ((*v21 & 1) == 0)
    {
      v22 = NRDataProtectionClassCreateString();
      v23 = _NRCopyLogObjectForNRUUID();
      v24 = _NRLogIsLevelEnabled();

      if (v24)
      {
        v25 = _NRCopyLogObjectForNRUUID();
        v26 = [a1 copyDescription];
        _NRLogWithArgs(v25, 0, "%s%.30s:%-4d %@: Starting %@ reconnection timer", "", "[NRLinkBluetooth startReconnectionTimer:]", 9886, v26, v22);
      }

      *v21 = 1;
      [a1 setPowerAssertionState:1];
      objc_initWeak(&location, a1);
      v27 = dispatch_time(0x8000000000000000, 10000000000);
      v28 = [a1 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100085770;
      block[3] = &unk_1001FB150;
      objc_copyWeak(v33, &location);
      v33[1] = v21;
      v32 = v22;
      v29 = v22;
      dispatch_after(v27, v28, block);

      objc_destroyWeak(v33);
      objc_destroyWeak(&location);
    }
  }

LABEL_21:
}

void sub_1000850B4(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 289) & 1) == 0)
  {
    sub_1000857F4(a1, a2);
    if (!*v4)
    {
      v5 = v4;
      String = NRDataProtectionClassCreateString();
      if (*(a1 + 16) == 255)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
LABEL_46:

          return;
        }

        v8 = _NRCopyLogObjectForNRUUID();
        v16 = [a1 copyDescription];
        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: Not starting %@ initiator session because cancelled", "", "[NRLinkBluetooth setupIPsecInitiatorIfNecessary:]", 9705, v16, String);

        goto LABEL_45;
      }

      v7 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
      v8 = v7;
      if (!v7)
      {
        v50 = _NRCopyLogObjectForNRUUID();
        v51 = _NRLogIsLevelEnabled();

        if (!v51)
        {
          goto LABEL_45;
        }

        v11 = _NRCopyLogObjectForNRUUID();
        v12 = [a1 copyDescription];
        _NRLogWithArgs(v11, 17, "%@: Not starting %@ IKE initiator session because localDevice is missing", v12, String);
        goto LABEL_21;
      }

      if (a2 == 1)
      {
        if ((*(v7 + 48) & 0x10) != 0 || *(v7 + 16) > 0x12u)
        {
          v9 = _NRCopyLogObjectForNRUUID();
          v10 = _NRLogIsLevelEnabled();

          if (v10)
          {
            v11 = _NRCopyLogObjectForNRUUID();
            v12 = [a1 copyDescription];
            v57 = v12;
            v58 = v8;
            v56 = 9715;
            v13 = "%s%.30s:%-4d %@: Not starting ClassA IKE initiator session because peer supports skipping ClassA pairing %@";
LABEL_20:
            _NRLogWithArgs(v11, 0, v13, "", "[NRLinkBluetooth setupIPsecInitiatorIfNecessary:]", v56, v57, v58, v59);
LABEL_21:

            goto LABEL_45;
          }

          goto LABEL_45;
        }

        v17 = *(v7 + 88);
      }

      else
      {
        v17 = sub_100164D70(v7, a2);
      }

      v18 = v17;

      if (!v18)
      {
        v29 = _NRCopyLogObjectForNRUUID();
        v30 = _NRLogIsLevelEnabled();

        if (v30)
        {
          v11 = _NRCopyLogObjectForNRUUID();
          v12 = [a1 copyDescription];
          v58 = String;
          v59 = v8;
          v56 = 9719;
          v57 = v12;
          v13 = "%s%.30s:%-4d %@: Not starting %@ IKE initiator session because we do not have keys %@";
          goto LABEL_20;
        }

LABEL_45:

        goto LABEL_46;
      }

      v19 = sub_100147400(1, v8, a2);
      v61 = v19;
      if (a2 != 1)
      {
        v20 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"0"];
        v21 = [NEIKEv2ConfigurationMessage alloc];
        v22 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v20];
        v62[0] = v22;
        v23 = [[NEIKEv2ResponderTransportIPv6Address alloc] initWithAddress:v20];
        v62[1] = v23;
        v24 = [NSArray arrayWithObjects:v62 count:2];
        v25 = [v21 initWithWithAttributes:v24];
        [v61 setConfigurationRequest:v25];

        v19 = v61;
      }

      v26 = [v19 customIKEAuthPrivateNotifies];

      if (v26)
      {
        v27 = [v19 customIKEAuthPrivateNotifies];
        v28 = [v27 mutableCopy];
      }

      else
      {
        v28 = objc_alloc_init(NSMutableArray);
      }

      v31 = [a1 suspendWhenReady];
      if (a2 == 4 && v31)
      {
        v32 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50901 notifyData:0];
        [v28 addObject:v32];
      }

      if ([v28 count])
      {
        [v19 setCustomIKEAuthPrivateNotifies:v28];
      }

      v60 = v28;
      v33 = sub_100146654(v8, 1);
      [v33 setMaximumPacketSize:2000];
      [v33 setHeaderOverhead:5];

      v34 = v8;
      v35 = sub_100146D34(0, 1);
      sub_100147008(v35, v34, 1);

      v36 = *(a1 + 56);
      if (([a1 hasCompanionDatapath] & 1) == 0)
      {
        [v33 setRequestChildlessSA:1];
        v36 = 0;
      }

      v37 = [[NSString alloc] initWithFormat:@"terminusIKE-Bluetooth-%@", String];
      v38 = [[NEIKEv2Session alloc] initWithIKEConfig:v33 firstChildConfig:v35 sessionConfig:v61 queue:*(a1 + 8) ipsecInterface:v36 ikeSocketHandler:0 kernelSASessionName:v37 packetDelegate:a1];
      v39 = *v5;
      *v5 = v38;

      if (!*v5)
      {
        v52 = _NRCopyLogObjectForNRUUID();
        v53 = _NRLogIsLevelEnabled();

        if (v53)
        {
          v54 = _NRCopyLogObjectForNRUUID();
          v55 = [a1 copyDescription];
          _NRLogWithArgs(v54, 17, "%@: Failed to create initiator %@ IKE session", v55, String);
        }

        goto LABEL_44;
      }

      [a1 reportEvent:3015 detailsFormat:@"%@ %@", String, *v5];
      sub_10008597C(a1, a2);
      if (a2 == 4)
      {
        v40 = nr_absolute_time();
        v41 = *(a1 + 2007);
        if (v41)
        {
          *(v41 + 56) = v40;
          v42 = *(a1 + 2007);
          if (v42)
          {
            v43 = &OBJC_IVAR___NRAnalyticsCmpnLink__ikeClassDAttempts;
LABEL_39:
            ++*&v42[*v43];
            goto LABEL_40;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (a2 != 3)
        {
LABEL_41:
          v46 = _NRCopyLogObjectForNRUUID();
          v47 = _NRLogIsLevelEnabled();

          if (v47)
          {
            v48 = _NRCopyLogObjectForNRUUID();
            v49 = [a1 copyDescription];
            _NRLogWithArgs(v48, 0, "%s%.30s:%-4d %@: Connecting initiator %@ session %@", "", "[NRLinkBluetooth setupIPsecInitiatorIfNecessary:]", 9785, v49, String, *v5);
          }

          [*v5 connect];
LABEL_44:

          goto LABEL_45;
        }

        v44 = nr_absolute_time();
        v45 = *(a1 + 2007);
        if (v45)
        {
          *(v45 + 40) = v44;
          v42 = *(a1 + 2007);
          if (v42)
          {
            v43 = &OBJC_IVAR___NRAnalyticsCmpnLink__ikeClassCAttempts;
            goto LABEL_39;
          }

LABEL_40:

          goto LABEL_41;
        }
      }

      v42 = 0;
      goto LABEL_40;
    }
  }
}

void sub_100085770(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained state] == 255;
    WeakRetained = v10;
    if (!v3 && **(a1 + 48) == 1)
    {
      sub_100080EB4(v10, @"%@ reconnection timed out", v4, v5, v6, v7, v8, v9, *(a1 + 32));
      WeakRetained = v10;
    }
  }
}

void sub_1000857F4(uint64_t result, int a2)
{
  if (result && a2 != 1 && a2 != 4 && a2 != 3)
  {
    v12[1] = a2;
    v2 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = sub_10007CF34();
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs(v4, 16, "%s%.30s:%-4d ABORTING: Cannot copy IKE session pointer for %@", "", "[NRLinkBluetooth ikeSessionPointerForDataProtectionClass:]", 1543, String);
    }

    v6 = _os_log_pack_size();
    v7 = __error();
    v8 = _os_log_pack_fill(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, *v7, &_mh_execute_header, "%{public}s Cannot copy IKE session pointer for %@");
    v9 = NRDataProtectionClassCreateString();
    *v8 = 136446466;
    *(v8 + 4) = "[NRLinkBluetooth ikeSessionPointerForDataProtectionClass:]";
    *(v8 + 12) = 2112;
    *(v8 + 14) = v9;
    sub_10007CF34();
    v10 = _NRLogAbortWithPack();
    sub_10008597C(v10, v11);
  }
}

void sub_10008597C(void *a1, uint64_t a2)
{
  v2 = a2;
  String = NRDataProtectionClassCreateString();
  if (v2 == 1)
  {
    v5 = *(a1 + 1327);
    if (v5)
    {
      goto LABEL_11;
    }

    v29 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_10007CF34();
      _NRLogWithArgs(v8, 17, "%s called with null _ikeSessionClassA");
      goto LABEL_24;
    }

LABEL_20:
    v25 = 0;
    goto LABEL_21;
  }

  if (v2 == 3)
  {
    v5 = *(a1 + 1319);
    if (!v5)
    {
      v9 = sub_10007CF34();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v8 = sub_10007CF34();
        _NRLogWithArgs(v8, 17, "%s called with null _ikeSessionClassC");
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v2 != 4)
  {
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs(qword_100229080, 17, "Cannot setup IKE callbacks for %@", String);
    }

    goto LABEL_20;
  }

  v5 = *(a1 + 1311);
  if (!v5)
  {
    v6 = sub_10007CF34();
    v7 = _NRLogIsLevelEnabled();

    if (v7)
    {
      v8 = sub_10007CF34();
      _NRLogWithArgs(v8, 17, "%s called with null _ikeSessionClassD");
LABEL_24:

      v25 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_11:
  v11 = v5;
  [v11 setClientQueue:a1[1]];
  objc_initWeak(location, a1);
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10008604C;
  v58[3] = &unk_1001FAFE8;
  objc_copyWeak(&v62, location);
  v63 = v2;
  v12 = String;
  v59 = v12;
  v13 = v11;
  v60 = v13;
  v61 = a1;
  [v13 setStateUpdateBlock:v58];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100086B88;
  v53[3] = &unk_1001FB838;
  objc_copyWeak(&v56, location);
  v14 = v12;
  v54 = v14;
  v15 = v13;
  v55 = v15;
  v57 = v2;
  [v15 setChildStateUpdateBlock:v53];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100086D7C;
  v49[3] = &unk_1001FB860;
  objc_copyWeak(&v52, location);
  v16 = v14;
  v50 = v16;
  v17 = v15;
  v51 = v17;
  [v17 setConfigurationUpdateBlock:v49];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100086E5C;
  v45[3] = &unk_1001FB888;
  objc_copyWeak(&v48, location);
  v18 = v16;
  v46 = v18;
  v19 = v17;
  v47 = v19;
  [v19 setTrafficSelectorUpdateBlock:v45];
  v31 = String;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100086F5C;
  v41[3] = &unk_1001FB8B0;
  objc_copyWeak(&v44, location);
  v20 = v18;
  v42 = v20;
  v21 = v19;
  v43 = v21;
  [v21 setAdditionalAddressesUpdateBlock:v41];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10008703C;
  v37[3] = &unk_1001FB8D8;
  objc_copyWeak(&v40, location);
  v22 = v20;
  v38 = v22;
  v23 = v21;
  v39 = v23;
  [v23 setShortDPDEventBlock:v37];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100087110;
  v32[3] = &unk_1001FB010;
  objc_copyWeak(&v35, location);
  v24 = v22;
  v33 = v24;
  v25 = v23;
  v34 = v25;
  v36 = v2;
  [v25 setPrivateNotifyStatusEvent:v32];
  v26 = _NRCopyLogObjectForNRUUID();
  LOBYTE(v23) = _NRLogIsLevelEnabled();

  if (v23)
  {
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = [a1 copyDescription];
    _NRLogWithArgs(v27, 0, "%s%.30s:%-4d %@: Setup IKE %@ %@ callbacks", "", "[NRLinkBluetooth setupIKECallbacks:]", 9095, v28, v24, v25);
  }

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v40);

  objc_destroyWeak(&v44);
  objc_destroyWeak(&v48);

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v56);

  objc_destroyWeak(&v62);
  objc_destroyWeak(location);

  String = v31;
LABEL_21:
}

void sub_100085FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v6 - 200));
  objc_destroyWeak((v6 - 128));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_10008604C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained linkDelegate];
    if (v5)
    {
      v9 = *(a1 + 64);
      switch(v9)
      {
        case 1:
          sub_10008ACA0(v7);
          break;
        case 3:
          [v7 setIkeClassCEstablished:0];
          v23 = nr_absolute_time();
          v24 = *(v7 + 2007);
          if (v24)
          {
            *(v24 + 48) = v23;
          }

          break;
        case 4:
          [v7 setIkeClassDEstablished:0];
          v10 = nr_absolute_time();
          v11 = *(v7 + 2007);
          if (v11)
          {
            *(v11 + 64) = v10;
          }

          break;
      }

      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [v7 reportEvent:3018 detailsFormat:@"%@ session %@ got IKE error %@ with state %@", v25, v26, v5, SessionStateString];

      [v7 processIKEDisconnection:*(a1 + 64) error:v5];
      if ([v7 state] == 255)
      {
        goto LABEL_38;
      }

      v28 = v5;
      if ([v28 code] == 24)
      {
        v29 = NEIKEv2ProtocolErrorDomain;
        v30 = [v28 domain];
        LOBYTE(v29) = [v30 isEqualToString:v29];

        if (v29)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      v31 = v28;
      if ([v31 code] == 8)
      {
        v32 = NEIKEv2ErrorDomain;
        v33 = [v31 domain];
        LODWORD(v32) = [v33 isEqualToString:v32];

        if (v32)
        {
LABEL_33:
          v34 = 1;
LABEL_36:
          v35 = *(a1 + 64);
          v36 = v7;
LABEL_37:
          sub_100084C80(v36, v35, v34, 1);
          goto LABEL_38;
        }
      }

      else
      {
      }

      v34 = 0;
      goto LABEL_36;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = NEIKEv2CreateSessionStateString();
    [v7 reportEvent:3009 detailsFormat:@"%@ session %@ changed state to %@", v12, v13, v14];

    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v45 = *(a1 + 64);
        switch(v45)
        {
          case 1:
            sub_10008ACA0(v7);
            break;
          case 3:
            [v7 setIkeClassCEstablished:0];
            v67 = nr_absolute_time();
            v68 = *(v7 + 2007);
            if (v68)
            {
              *(v68 + 48) = v67;
            }

            break;
          case 4:
            [v7 setIkeClassDEstablished:0];
            v46 = nr_absolute_time();
            v47 = *(v7 + 2007);
            if (v47)
            {
              *(v47 + 64) = v46;
            }

            break;
        }

        [v7 reportEvent:3018 detailsFormat:@"%@ session %@ got IKE Disconnected state with no error", *(a1 + 32), *(a1 + 40)];
        v35 = *(a1 + 64);
        v36 = v7;
        v34 = 0;
        goto LABEL_37;
      }

      if (a2 != 4)
      {
        goto LABEL_40;
      }

      [v7 cancelWithReason:{@"%@ session %@ got unexpected MOBIKE state", *(a1 + 32), *(a1 + 40)}];
    }

    else
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          v15 = [v7 nrUUID];
          sub_100171FE0(NRDLocalDevice, v15);

          v16 = *(a1 + 64);
          if (v16 == 4)
          {
            [v7 setIkeClassDEstablished:1];
            v48 = nr_absolute_time();
            v49 = *(v7 + 2007);
            if (v49)
            {
              *(v49 + 64) = v48;
            }

            if (*(v7 + 278) == 1)
            {
              v50 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v52 = _NRCopyLogObjectForNRUUID();
                v53 = [v7 copyDescription];
                _NRLogWithArgs(v52, 0, "%s%.30s:%-4d %@: Stopping %@ reconnection timer", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8903, v53, *(a1 + 32));
              }

              *(v7 + 278) = 0;
              if ((*(v7 + 279) & 1) == 0)
              {
                [v7 setPowerAssertionState:0];
              }
            }

            v54 = sub_100180AC4(NRDKeyManager);
            if (!sub_10018165C(v54) && (*(v7 + 277) & 1) == 0)
            {
              v55 = *(a1 + 48);
              if (v55)
              {
                *(v55 + 277) = 1;
              }

              objc_initWeak(location, v7);
              v79[0] = _NSConcreteStackBlock;
              v79[1] = 3221225472;
              v79[2] = sub_10008AF24;
              v79[3] = &unk_1001FC730;
              objc_copyWeak(&v80, location);
              sub_1001816DC(v54, v79);
              objc_destroyWeak(&v80);
              objc_destroyWeak(location);
            }
          }

          else if (v16 == 3)
          {
            [v7 setIkeClassCEstablished:1];
            v17 = nr_absolute_time();
            v18 = *(v7 + 2007);
            if (v18)
            {
              *(v18 + 48) = v17;
            }

            if (*(v7 + 279) == 1)
            {
              v19 = _NRCopyLogObjectForNRUUID();
              v20 = _NRLogIsLevelEnabled();

              if (v20)
              {
                v21 = _NRCopyLogObjectForNRUUID();
                v22 = [v7 copyDescription];
                _NRLogWithArgs(v21, 0, "%s%.30s:%-4d %@: Stopping %@ reconnection timer", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8893, v22, *(a1 + 32));
              }

              *(v7 + 279) = 0;
              if ((*(v7 + 278) & 1) == 0)
              {
                [v7 setPowerAssertionState:0];
              }
            }
          }

          v56 = *(v7 + 16);
          v57 = _NRCopyLogObjectForNRUUID();
          v58 = _NRLogIsLevelEnabled();

          if (v56 > 6)
          {
            if (v56 == 7)
            {
              if (v58)
              {
                v71 = _NRCopyLogObjectForNRUUID();
                v72 = [v7 copyDescription];
                _NRLogWithArgs(v71, 0, "%s%.30s:%-4d %@: %@ IKE %@ now connected and ready from first notify", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8953, v72, *(a1 + 32), *(a1 + 40));
              }

              [v7 changeStateTo:8 detailsFormat:@"(%@ IKE %@ connected after received first notify)", *(a1 + 32), *(a1 + 40)];
              [v8 linkIsReady:v7];
              [v7 checkProxyAgentWithForceUpdate:0];
              sub_1000891A4(v7);
              goto LABEL_92;
            }

            if (v56 == 8)
            {
              if (v58)
              {
                v61 = _NRCopyLogObjectForNRUUID();
                v62 = [v7 copyDescription];
                _NRLogWithArgs(v61, 0, "%s%.30s:%-4d %@: %@ IKE %@ already ready", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8964, v62, *(a1 + 32), *(a1 + 40));
              }

              [v8 linkIsReady:v7];
              goto LABEL_92;
            }
          }

          else
          {
            if (v56 == 5)
            {
              if (v58)
              {
                v69 = _NRCopyLogObjectForNRUUID();
                v70 = [v7 copyDescription];
                _NRLogWithArgs(v69, 0, "%s%.30s:%-4d %@: %@ IKE %@ now connected from started", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8949, v70, *(a1 + 32), *(a1 + 40));
              }

              [v7 changeStateTo:6];
              goto LABEL_92;
            }

            if (v56 == 6)
            {
              if (v58)
              {
                v59 = _NRCopyLogObjectForNRUUID();
                v60 = [v7 copyDescription];
                _NRLogWithArgs(v59, 0, "%s%.30s:%-4d %@: %@ IKE %@ already connected", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8962, v60, *(a1 + 32), *(a1 + 40));
LABEL_85:

                goto LABEL_92;
              }

              goto LABEL_92;
            }
          }

          if (v58)
          {
            v59 = _NRCopyLogObjectForNRUUID();
            v60 = [v7 copyDescription];
            _NRLogWithArgs(v59, 0, "%s%.30s:%-4d %@: %@ IKE %@ connected but weird state", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8967, v60, *(a1 + 32), *(a1 + 40));
            goto LABEL_85;
          }

LABEL_92:
          if ((*(v7 + 289) & 1) == 0)
          {
            v73 = sub_100083C40(v7, 0);
            v74 = sub_10008B0B4(v7);
            if (v74)
            {
              [v73 addObject:v74];
            }

            objc_initWeak(&from, v7);
            v75 = *(v7 + 1311);
            v76 = [v7 queue];
            location[0] = _NSConcreteStackBlock;
            location[1] = 3221225472;
            location[2] = sub_10008B294;
            location[3] = &unk_1001FC018;
            objc_copyWeak(&v82, &from);
            [v75 sendPrivateNotifies:v73 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v76 callback:location];

            objc_destroyWeak(&v82);
            objc_destroyWeak(&from);
          }

          v77 = *(a1 + 64);
          v78 = [v7 nrUUID];
          sub_10016B190(NRDLocalDevice, v77, v78);

          goto LABEL_38;
        }

LABEL_40:
        v37 = *(a1 + 32);
        v38 = *(a1 + 40);
        v39 = NEIKEv2CreateSessionStateString();
        [v7 cancelWithReason:{@"%@ session %@ got bad IKE state %@", v37, v38, v39}];

        goto LABEL_38;
      }

      v40 = *(v7 + 16);
      v41 = _NRCopyLogObjectForNRUUID();
      if (v40 == 5)
      {
        v63 = _NRLogIsLevelEnabled();

        if (!v63)
        {
          goto LABEL_38;
        }

        v64 = _NRCopyLogObjectForNRUUID();
        v65 = [v7 copyDescription];
        _NRLogWithArgs(v64, 0, "%s%.30s:%-4d %@: %@ IKE %@ already connecting", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8883, v65, *(a1 + 32), *(a1 + 40));
LABEL_78:

        goto LABEL_38;
      }

      if (v40 == 4)
      {
        v42 = _NRLogIsLevelEnabled();

        if (v42)
        {
          v43 = _NRCopyLogObjectForNRUUID();
          v44 = [v7 copyDescription];
          _NRLogWithArgs(v43, 0, "%s%.30s:%-4d %@: %@ IKE %@ now connecting", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8880, v44, *(a1 + 32), *(a1 + 40));
        }

        [v7 changeStateTo:5];
        goto LABEL_38;
      }

      v66 = _NRLogIsLevelEnabled();

      if (v66)
      {
        v64 = _NRCopyLogObjectForNRUUID();
        v65 = [v7 copyDescription];
        _NRLogWithArgs(v64, 16, "%s%.30s:%-4d %@: %@ IKE %@ connecting but weird state", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke", 8885, v65, *(a1 + 32), *(a1 + 40));
        goto LABEL_78;
      }
    }

LABEL_38:
  }
}