void sub_1000C6C94(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(WeakRetained + 13) == 1 && *(WeakRetained + 19) == v15)
  {
    v16 = v15;
    v17 = v12;
    v18 = v10;
    v19 = WeakRetained;
    v20 = v11;
    nw_http_fields_access_value_by_name();

    v15 = v16;
  }
}

void sub_1000C6DF0(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained || *(WeakRetained + 13) != 1 || *(WeakRetained + 19) != v6)
  {
    goto LABEL_58;
  }

  switch(a3)
  {
    case 1:
      v7 = v6;
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d proxy client connection received (id: %llu)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_3", 2375, a2);
      }

      v14 = nw_masque_server_copy_connection_group_with_identifier();
      if (!v14)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 17, "failed to copy connection group (id: %llu)", a2);
          v9 = 0;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_57;
      }

      v9 = v14;
      v15 = nw_connection_group_copy_parameters(v14);
      v16 = nw_protocol_copy_quic_stream_definition();
      v17 = nw_parameters_copy_protocol_options_for_definition();

      v18 = nw_quic_stream_copy_shared_connection_options();
      v19 = v18;
      if (v18)
      {
        v20 = nw_quic_copy_sec_protocol_options(v18);
        if (v20)
        {
          v21 = v20;
          sec_protocol_options_set_peer_authentication_required(v20, 1);
          if ([*(WeakRetained + 44) count])
          {
            [*(WeakRetained + 44) allValues];

            sec_protocol_options_set_client_raw_public_key_certificates();
          }

          nw_quic_connection_set_sec_protocol_options();
        }

        else
        {
          v22 = sub_1000B9544();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v24 = sub_1000B9544();
            _NRLogWithArgs(v24, 16, "%s%.30s:%-4d no QUIC sec options", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_3", 2397);
          }

          v21 = 0;
        }
      }

      else
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_56;
        }

        v21 = sub_1000B9544();
        _NRLogWithArgs(v21, 16, "%s%.30s:%-4d no QUIC options", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_3", 2400);
      }

LABEL_56:
      goto LABEL_57;
    case 3:
      v7 = v6;
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d proxy client connection cancelled (id: %llu)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_3", 2367, a2);
      }

      v10 = *(WeakRetained + 21);
      v11 = [NSNumber numberWithUnsignedLongLong:a2];
      v12 = [v10 objectForKeyedSubscript:v11];

      if (v12)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d removing cached token (id: %llu)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_3", 2369, a2);
        }
      }

      v13 = *(WeakRetained + 21);
      v9 = [NSNumber numberWithUnsignedLongLong:a2];
      [v13 setObject:0 forKeyedSubscript:v9];

      goto LABEL_57;
    case 2:
      v7 = v6;
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 2, "%s%.30s:%-4d proxy client connection started (id: %llu)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_3", 2362, a2);
      }

      v6 = v7;
      if (!*(WeakRetained + 21))
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = *(WeakRetained + 21);
        *(WeakRetained + 21) = v8;
LABEL_57:

        v6 = v7;
      }

      break;
  }

LABEL_58:
}

void sub_1000C73A0(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    v5 = dispatch_data_create(__s, v4, 0, 0);
    v6 = dispatch_data_create_with_transform();
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = sub_1000C4DAC;
    v63 = sub_1000C4DBC;
    v64 = objc_alloc_init(NSMutableArray);
    v51 = _NSConcreteStackBlock;
    v52 = 3221225472;
    v53 = sub_1000C7AE8;
    v54 = &unk_1001FB3B8;
    v55 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v57 = &v59;
    v58 = v8;
    v56 = v7;
    NRTLVParse();
    if ([v60[5] count])
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        v9 = v9[21];
      }

      v10 = v60[5];
      v11 = v9;
      v12 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
      [v11 setObject:v10 forKeyedSubscript:v12];

      v13 = v60[5];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v59, 8);
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      v14 = v14[21];
    }

    v15 = *(a1 + 64);
    v16 = v14;
    v17 = [NSNumber numberWithUnsignedLongLong:v15];
    v18 = [v16 objectForKeyedSubscript:v17];

    if (!v18)
    {
      v13 = 0;
LABEL_58:
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d no token from %@ for %@ (id: %llu)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_2", 2318, *(a1 + 32), *(a1 + 40), *(a1 + 64));
      }

      goto LABEL_64;
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      v19 = v19[21];
    }

    v20 = *(a1 + 64);
    v21 = v19;
    v22 = [NSNumber numberWithUnsignedLongLong:v20];
    v13 = [v21 objectForKeyedSubscript:v22];

    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d using cached tokensfrom %@ for %@ (id: %llu)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_2", 2314, *(a1 + 32), *(a1 + 40), *(a1 + 64));
    }
  }

  if (!v13 || ![v13 count])
  {
    goto LABEL_58;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = v13;
  v23 = [v13 countByEnumeratingWithState:&v47 objects:v65 count:16];
  if (v23)
  {
    v24 = *v48;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(v13);
        }

        v26 = *(*(&v47 + 1) + 8 * i);
        if (v26 && *(v26 + 8) == 1)
        {
          v27 = *(v26 + 9);
          if (v27 == 52)
          {
            v33 = *(v26 + 16);
            v34 = v33 == 0;

            if (!v34)
            {
              v35 = [NSString alloc];
              v36 = *(v26 + 16);
              v32 = [v35 initWithData:v36 encoding:4];

              if (v32)
              {
                if (qword_1002290F0 != -1)
                {
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002290F0 != -1)
                  {
                    dispatch_once(&qword_1002290F0, &stru_1001FB680);
                  }

                  _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d setting bundle id %@", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_2", 2336, v32);
                }

                [v32 UTF8String];
                nw_parameters_set_source_application_by_external_bundle_id();
              }

              goto LABEL_24;
            }
          }

          else if (v27 == 51)
          {
            v28 = *(v26 + 16);
            v29 = v28 == 0;

            if (!v29)
            {
              v30 = [NSString alloc];
              v31 = *(v26 + 16);
              v32 = [v30 initWithData:v31 encoding:4];

              if (v32)
              {
                if (qword_1002290F0 != -1)
                {
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002290F0 != -1)
                  {
                    dispatch_once(&qword_1002290F0, &stru_1001FB680);
                  }

                  _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d setting account id %@", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_2", 2328, v32);
                }

                [v32 UTF8String];
                nw_parameters_set_account_id();
              }

LABEL_24:

              continue;
            }
          }
        }
      }

      v23 = [v13 countByEnumeratingWithState:&v47 objects:v65 count:16];
    }

    while (v23);
  }

  v37 = *(a1 + 48);
  if (v37)
  {
    v38 = *(v37 + 168);
  }

  else
  {
    v38 = 0;
  }

  if ([v38 count] >= 0x21)
  {
    v39 = [NSString alloc];
    v40 = *(a1 + 48);
    if (v40)
    {
      v41 = *(v40 + 168);
    }

    else
    {
      v41 = 0;
    }

    v46 = [v41 count];
    v42 = [v39 initWithFormat:@"unexpected number of cached tokens %u"];
    sub_10013C2A8(@"MASQUEProxyTokens", v42, 0, 0, 0, v43, v44, v45, v46);
  }

LABEL_64:
}

void sub_1000C7ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C7AE8(void *a1, uint64_t a2)
{
  v4 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
  v5 = v4;
  if (*a2 == 8)
  {
    v6 = v4;
    objc_opt_self();
    if ([v6 length])
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = sub_10000930C;
      v18 = sub_10000931C;
      v19 = 0;
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 50;
      NRTLVParse();
      if (v25[3])
      {
        v7 = 0;
      }

      else
      {
        v8 = [NRToken alloc];
        v7 = sub_100009074(&v8->super.isa, *(v21 + 24), *(v11 + 24), v15[5]);
      }

      _Block_object_dispose(&v10, 8);
      _Block_object_dispose(&v14, 8);

      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(&v24, 8);

      if (v7 && *(v7 + 8))
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 1, "%s%.30s:%-4d received token %@ from %@ for %@ (id: %llu)", "", "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke", 2302, v7, a1[4], a1[5], a1[7]);
        }

        [*(*(a1[6] + 8) + 40) addObject:v7];
      }
    }

    else
    {

      v7 = 0;
    }
  }

  return 1;
}

void sub_1000C7DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Block_object_dispose((v28 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C7DE8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ((a2 - 1) <= 1)
  {
LABEL_2:
    v6 = *(a1 + 32);
    if (v6)
    {
      *(v6 + 14) = 0;
    }

    goto LABEL_20;
  }

  if (a2 != 3)
  {
    goto LABEL_20;
  }

  sub_1000BC1B0(*(a1 + 32));
  if (!v5 || nw_error_get_error_domain(v5) != nw_error_domain_posix || nw_error_get_error_code(v5) != 48)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 17, "failed to start proxy server with error %@", v5);
    }

    goto LABEL_2;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 14);
    if (v8 > 4)
    {
      v19 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v21 = sub_1000B9544();
        v22 = v21;
        v23 = *(a1 + 32);
        if (v23)
        {
          LODWORD(v23) = *(v23 + 14);
        }

        _NRLogWithArgs(v21, 17, "failed to start proxy server after %u address in use retries", v23);
      }

      goto LABEL_2;
    }

    *(v7 + 14) = v8 + 1;
  }

  v9 = sub_1000B9544();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = sub_1000B9544();
    v12 = v11;
    v13 = *(a1 + 32);
    if (v13)
    {
      LODWORD(v13) = *(v13 + 14);
    }

    _NRLogWithArgs(v11, 16, "%s%.30s:%-4d scheduling address in use retry %u", "", "[NRLinkDirector startSocksServerIfNeeded]_block_invoke", 1967, v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = 200000000 * *(v14 + 14);
  }

  else
  {
    v15 = 0;
  }

  v16 = dispatch_time(0x8000000000000000, v15);
  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 136);
  }

  else
  {
    v18 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8140;
  block[3] = &unk_1001FD3C8;
  block[4] = v17;
  dispatch_after(v16, v18, block);
LABEL_20:
}

void sub_1000C8050(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 22) == *(a1 + 32))
    {
      v4 = *(WeakRetained + 18);
      if (v4)
      {
        v5 = v4;
        v6 = nw_shoes_server_fillout_statistics();

        if (v6)
        {
          v7 = objc_alloc_init(NRAnalyticsSHOESProxy);
          v8 = v3[23];
          v3[23] = v7;

          v9 = v3[23];
          if (v9 && (*(v9 + 24) = 0, (v10 = v3[23]) != 0))
          {
            *(v10 + 16) = 0;
            v11 = v3[23];
          }

          else
          {
            v11 = 0;
          }

          [v11 submit];
          v12 = v3[23];
          v3[23] = 0;
        }
      }
    }
  }
}

void sub_1000C8148(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 13) == 1)
  {
    v2 = WeakRetained;
    sub_1000315B8(WeakRetained[5]);
    sub_100180590(v2[6]);
    WeakRetained = v2;
  }
}

void sub_1000C81A8(id a1)
{
  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  IsLevelEnabled = _NRLogIsLevelEnabled();
  if (IsLevelEnabled)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    IsLevelEnabled = _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d Force clearing nehelper uuid cache", "", "[NRLinkDirector checkEnabledDevices]_block_invoke", 860);
  }

  _NEHelperCacheClearUUIDs(IsLevelEnabled);
}

void sub_1000C826C(uint64_t a1)
{
  v2 = *(a1 + 344);
  *(a1 + 344) = 0;

  v3 = *(a1 + 104);
  *(a1 + 104) = 0;

  v4 = *(a1 + 120);
  if (v4 || (v4 = *(a1 + 112)) != 0)
  {
  }

  else
  {
    v6 = *(a1 + 128);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v5 = qword_1002294C0;
  sub_100181D24(v5);

  v6 = *(a1 + 128);
LABEL_7:
  *(a1 + 128) = 0;

  v7 = *(a1 + 120);
  *(a1 + 120) = 0;

  v8 = *(a1 + 112);
  *(a1 + 112) = 0;
}

void sub_1000C8348(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[17];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C848C;
    block[3] = &unk_1001FD3C8;
    v8 = WeakRetained;
    dispatch_async(v6, block);
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d Got perpetual standalone notification %@", "", "[NRLinkDirector setupPerpetualStandaloneMeadow]_block_invoke", 3068, v3);
    }
  }
}

void sub_1000C848C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 13) == 1)
    {
      sub_1000BF70C(v1);
    }
  }
}

void sub_1000C84A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 13) == 1)
  {
    v3 = *(v1 + 72);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = *(v4 + 80);

        if (v5)
        {
          return;
        }
      }

      else
      {
      }
    }

    v6 = *(a1 + 32);

    sub_1000C899C(v6);
  }
}

void sub_1000C8520(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v5[7] = v1;
    v5[8] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000C9534;
    v5[3] = &unk_1001FD3C8;
    v5[4] = a1;
    v3 = objc_retainBlock(v5);
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1)
    {
      (v3[2])(v3);
    }

    else
    {
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v4 = qword_1002294C0;
      sub_1001816DC(v4, v3);
    }
  }
}

void sub_1000C8648(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || *(v2 + 13) != 1)
  {
    return;
  }

  sub_1000C899C(v2);
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
    v14 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v16 = sub_1000B9544();
    v28 = 533;
    v17 = "%s%.30s:%-4d Skipping initialization of NRLinkManagerQuickRelay for unsupported device";
  }

  else
  {
    objc_opt_self();
    if (objc_opt_class() && objc_opt_class())
    {
      v3 = [NRLinkManagerQuickRelay alloc];
      v4 = *(a1 + 32);
      if (v4)
      {
        v4 = v4[17];
      }

      v5 = v4;
      v6 = *(a1 + 32);
      queue = v5;
      v7 = v6;
      if (!v3)
      {
        goto LABEL_35;
      }

      if (queue)
      {
        dispatch_assert_queue_V2(queue);
        if (v7)
        {
          v30.receiver = v3;
          v30.super_class = NRLinkManagerQuickRelay;
          v8 = objc_msgSendSuper2(&v30, "initManagerWithQueue:managerDelegate:", queue, v7);
          if (v8)
          {
            v9 = v8;
            v8[8] = 4;
            v10 = objc_alloc_init(NSMutableSet);
            v11 = *(v9 + 5);
            *(v9 + 5) = v10;

            objc_storeWeak(v9 + 9, v7);
            [v9 reportEvent:2001];
            sub_1001224F8(v9);
            *(v9 + 3) = 1003;
            [v9 reportEvent:2002];
            v3 = v9;
            v12 = v3;
LABEL_15:

            v13 = *(a1 + 32);
            if (v13)
            {
              objc_storeStrong((v13 + 56), v12);
            }

            goto LABEL_18;
          }

          v25 = sub_10012141C();
          v26 = _NRLogIsLevelEnabled();

          if (v26)
          {
            v27 = sub_10012141C();
            _NRLogWithArgs(v27, 17, "[NRLinkManager initManagerWithQueue:] failed");
          }

          v3 = 0;
LABEL_35:
          v12 = 0;
          goto LABEL_15;
        }

        v23 = sub_10012141C();
        v24 = _NRLogIsLevelEnabled();

        if (!v24)
        {
          goto LABEL_35;
        }

        v22 = sub_10012141C();
        _NRLogWithArgs(v22, 17, "%s called with null managerDelegate");
      }

      else
      {
        v20 = sub_10012141C();
        v21 = _NRLogIsLevelEnabled();

        if (!v21)
        {
          goto LABEL_35;
        }

        v22 = sub_10012141C();
        _NRLogWithArgs(v22, 17, "%s called with null queue");
      }

      v12 = 0;
      goto LABEL_15;
    }

    v18 = sub_1000B9544();
    v19 = _NRLogIsLevelEnabled();

    if (!v19)
    {
      return;
    }

    v16 = sub_1000B9544();
    v28 = 530;
    v17 = "%s%.30s:%-4d Skipping initialization of NRLinkManagerQuickRelay, IDS and/or APS not available";
  }

  queue = v16;
  _NRLogWithArgs(v16, 0, v17, "", "[NRLinkDirector setupManagers]_block_invoke_2", v28);
LABEL_18:
}

void sub_1000C899C(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0 && qword_100229498 != -1)
    {
      dispatch_once(&qword_100229498, &stru_1001FD038);
    }

    if (byte_100229490 == 1)
    {
      if ((*(a1 + 18) & 1) == 0)
      {
        *(a1 + 18) = 1;

        sub_1000C8AE8(a1, 1);
      }
    }

    else
    {
      v2 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v4 = sub_1000B9544();
        _NRLogWithArgs(v4, 0, "%s%.30s:%-4d Skipping initialization of NRLinkManagerWiFi for unsupported device", "", "[NRLinkDirector setupWiFiManager]", 575);
      }
    }
  }
}

void sub_1000C8AE8(id *a1, int a2)
{
  v4 = [NRLinkManagerWiFi alloc];
  v5 = a1[17];
  v6 = a1;
  if (!v4)
  {
LABEL_43:
    v34 = 0;
    goto LABEL_30;
  }

  if (!v5)
  {
    v43 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v45 = sub_1001762F4();
      _NRLogWithArgs(v45, 17, "%s called with null queue", "[NRLinkManagerWiFi initManagerWithQueue:managerDelegate:wifiManagerDelegate:]");

      v34 = 0;
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  dispatch_assert_queue_V2(v5);
  v67.receiver = v4;
  v67.super_class = NRLinkManagerWiFi;
  v7 = objc_msgSendSuper2(&v67, "initManagerWithQueue:managerDelegate:", v5, v6);
  if (!v7)
  {
    v49 = sub_1001762F4();
    v50 = _NRLogIsLevelEnabled();

    if (v50)
    {
      v51 = sub_1001762F4();
      _NRLogWithArgs(v51, 17, "[NRLinkManager initManagerWithQueue:] failed");
    }

    v4 = 0;
    goto LABEL_43;
  }

  v4 = v7;
  objc_storeWeak(&v7->_wifiManagerDelegate, v6);
  v4->super._type = 2;
  v8 = objc_alloc_init(NSMutableSet);
  links = v4->_links;
  v4->_links = v8;

  v10 = objc_alloc_init(NSMutableSet);
  wifiAutojoinClients = v4->_wifiAutojoinClients;
  v4->_wifiAutojoinClients = v10;

  v4->_avoidCompanionNotifyToken = -1;
  v12 = v4->super._queue;
  dispatch_assert_queue_V2(v12);

  if (v4->super._state == 1003)
  {
LABEL_29:
    v4 = v4;
    v34 = v4;
    goto LABEL_30;
  }

  [(NRLinkManager *)v4 reportEvent:2001];
  v13 = objc_alloc_init(CWFInterface);
  coreWiFiHandle = v4->_coreWiFiHandle;
  v4->_coreWiFiHandle = v13;

  v15 = v4->_coreWiFiHandle;
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_10017AE1C;
  v77[3] = &unk_1001FD3C8;
  v16 = v15;
  v78 = v16;
  if (!sub_10017AE24(NRLinkManagerWiFi, v77))
  {
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = sub_10017AF00;
    v75 = sub_10017AF10;
    v76 = 0;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_10017AF18;
    v68[3] = &unk_1001FD128;
    v70 = &v71;
    v17 = v16;
    v69 = v17;
    if (sub_10017AE24(NRLinkManagerWiFi, v68))
    {
      v55 = sub_1001762F4();
      v56 = _NRLogIsLevelEnabled();

      if ((v56 & 1) == 0)
      {
        goto LABEL_27;
      }

      v31 = sub_1001762F4();
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d Timed out getting WiFi interface name", "", "[NRLinkManagerWiFi setupWiFiManager]", 2202);
    }

    else if (v72[5])
    {
      v18 = [NRSCDInterfaceConfig alloc];
      v19 = sub_1000262B4(&v18->super.isa, v72[5], 0);
      wifiInterfaceConfig = v4->_wifiInterfaceConfig;
      v4->_wifiInterfaceConfig = v19;

      v21 = v4->_wifiInterfaceConfig;
      if (v21 && (interfaceIndex = v21->_interfaceIndex, v21, interfaceIndex))
      {
        context.version = 0;
        memset(&context.retain, 0, 24);
        context.info = v4;
        v23 = SCDynamicStoreCreate(kCFAllocatorDefault, @"NRLinkManagerWiFi", sub_10017E2B4, &context);
        v4->_scdynamicStoreRef = v23;
        if (v23)
        {
          if (SCDynamicStoreSetDisconnectCallBack())
          {
            scdKeyMIS = v4->_scdKeyMIS;
            v4->_scdKeyMIS = @"com.apple.MobileInternetSharing";

            scdynamicStoreRef = v4->_scdynamicStoreRef;
            v26 = v4->super._queue;
            LODWORD(scdynamicStoreRef) = SCDynamicStoreSetDispatchQueue(scdynamicStoreRef, v26);

            if (scdynamicStoreRef)
            {
              v27 = v4->super._queue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10017AF64;
              block[3] = &unk_1001FD3C8;
              block[4] = v4;
              dispatch_async(v27, block);

              v4->super._state = 1003;
              [(NRLinkManager *)v4 reportEvent:2002];
              v28 = 1;
              goto LABEL_28;
            }

            v62 = sub_1001762F4();
            v63 = _NRLogIsLevelEnabled();

            if (!v63)
            {
LABEL_27:
              v28 = 0;
LABEL_28:

              _Block_object_dispose(&v71, 8);
              if (v28)
              {
                goto LABEL_29;
              }

              goto LABEL_47;
            }

            v31 = sub_1001762F4();
            Error = SCCopyLastError();
            _NRLogWithArgs(v31, 17, "SCDynamicStoreSetDispatchQueue failed: %@", Error);
          }

          else
          {
            v60 = sub_1001762F4();
            v61 = _NRLogIsLevelEnabled();

            if (!v61)
            {
              goto LABEL_27;
            }

            v31 = sub_1001762F4();
            Error = SCCopyLastError();
            _NRLogWithArgs(v31, 17, "SCDynamicStoreSetDisconnectCallBack failed: %@", Error);
          }
        }

        else
        {
          v57 = sub_1001762F4();
          v58 = _NRLogIsLevelEnabled();

          if (!v58)
          {
            goto LABEL_27;
          }

          v31 = sub_1001762F4();
          Error = SCCopyLastError();
          _NRLogWithArgs(v31, 17, "SCDynamicStoreCreate failed: %@", Error);
        }
      }

      else
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v32 = qword_1002294A0;
        v33 = _NRLogIsLevelEnabled();

        if (!v33)
        {
          goto LABEL_27;
        }

        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v31 = qword_1002294A0;
        _NRLogWithArgs(v31, 17, "failed to find interface index for %@", v72[5]);
      }
    }

    else
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v29 = qword_1002294A0;
      v30 = _NRLogIsLevelEnabled();

      if (!v30)
      {
        goto LABEL_27;
      }

      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v31 = qword_1002294A0;
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d [CWFInterface interfaceName] failed", "", "[NRLinkManagerWiFi setupWiFiManager]", 2207);
    }

    goto LABEL_27;
  }

  v52 = sub_1001762F4();
  v53 = _NRLogIsLevelEnabled();

  if (v53)
  {
    v54 = sub_1001762F4();
    _NRLogWithArgs(v54, 16, "%s%.30s:%-4d Timed out activating CoreWiFi handle", "", "[NRLinkManagerWiFi setupWiFiManager]", 2193);
  }

LABEL_47:
  [(NRLinkManagerWiFi *)v4 invalidateManager];
  v34 = 0;
LABEL_30:

  v35 = v6[6];
  v6[6] = v34;

  v41 = v6[6];
  if (v41)
  {
    sub_100180590(v41);
    if (v6[32])
    {
      v42 = a1[17];
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_1000C93D4;
      v66[3] = &unk_1001FD3C8;
      v66[4] = v6;
      dispatch_async(v42, v66);
    }
  }

  else
  {
    if ((2 * a2) >= 0x12C)
    {
      v46 = 300;
    }

    else
    {
      v46 = (2 * a2);
    }

    sub_1000B926C(v6, 1047, @"WiFi - Retry in %us (attempt: %u)", v36, v37, v38, v39, v40, v46);
    v47 = dispatch_time(0, 1000000000 * v46);
    v48 = a1[17];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1000C950C;
    v64[3] = &unk_1001FB300;
    v64[4] = v6;
    v65 = a2;
    dispatch_after(v47, v48, v64);
  }
}

void sub_1000C93BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C93D4(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[32];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v12 + 1) + 8 * v7) + 16))(*(*(&v12 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 256);
  }

  else
  {
    v9 = 0;
  }

  [v9 removeAllObjects];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 256);
    *(v10 + 256) = 0;
  }
}

void sub_1000C950C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 13) == 1)
    {
      sub_1000C8AE8(v2, *(a1 + 40) + 1);
    }
  }
}

void sub_1000C9534(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 13) == 1)
  {
    v4 = [NRLinkManagerWired alloc];
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[17];
    }

    v8 = v5;
    v6 = [NRLinkManagerWired initManagerWithQueue:v4 managerDelegate:"initManagerWithQueue:managerDelegate:"];
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_storeStrong((v7 + 64), v6);
    }
  }
}

void sub_1000C95D8(uint64_t a1, void *a2)
{
  v21 = a2;
  if (a1)
  {
    v3 = sub_100003490();
    dispatch_assert_queue_V2(v3);

    if (v21)
    {
      v4 = *(a1 + 48);
      if (v4)
      {

        v5 = v21;
LABEL_14:
        v5[2]();
        goto LABEL_15;
      }

      objc_opt_self();
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      v5 = v21;
      if ((byte_100229230 & 1) == 0 && qword_100229498 != -1)
      {
        dispatch_once(&qword_100229498, &stru_1001FD038);
        v5 = v21;
      }

      if ((byte_100229490 & 1) == 0)
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 256);
      if (!v6)
      {
        v7 = objc_alloc_init(NSMutableArray);
        v8 = *(a1 + 256);
        *(a1 + 256) = v7;

        v6 = *(a1 + 256);
        if (!v6)
        {
          v14 = sub_1000B9544();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v16 = sub_1000B9544();
            _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.wifiManagerAvailableBlocks) != ((void*)0)", "", "[NRLinkDirector runAfterWiFiManagerAvailable:]", 625);
          }

          v17 = _os_log_pack_size();
          v18 = &v21 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v19 = __error();
          v20 = _os_log_pack_fill(v18, v17, *v19, &_mh_execute_header, "%{public}s Assertion Failed: (self.wifiManagerAvailableBlocks) != ((void*)0)");
          *v20 = 136446210;
          *(v20 + 4) = "[NRLinkDirector runAfterWiFiManagerAvailable:]";
          sub_1000B9544();
          _NRLogAbortWithPack();
        }
      }

      v9 = v6;
      v10 = objc_retainBlock(v21);
      [v9 addObject:v10];
    }

    else
    {
      v11 = sub_1000B9544();
      v12 = _NRLogIsLevelEnabled();

      if (v12)
      {
        v13 = sub_1000B9544();
        _NRLogWithArgs(v13, 17, "%s called with null wifiManagerAvailableBlock", "[NRLinkDirector runAfterWiFiManagerAvailable:]");
      }
    }
  }

LABEL_15:
}

void sub_1000C987C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _NRCopyLogObjectForNRUUID();
  if (a2)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v8, 1, "%s%.30s:%-4d unpaired BT device %@", "", "[NRLinkDirector unpairBluetoothDeviceWithNRUUID:completionBlock:]_block_invoke", 777, v5);
    }

    sub_10017440C(NRDLocalDevice, 0, *(a1 + 32));
    v9 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C9A24;
    v12[3] = &unk_1001FCE00;
    v13 = v9;
    sub_100165208(NRDLocalDevice, v13, v12);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d failed to unpair BT device", "", "[NRLinkDirector unpairBluetoothDeviceWithNRUUID:completionBlock:]_block_invoke", 784);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000C9A24(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d deletePairingInfoFromKeychain %@ deleted %u", "", "[NRLinkDirector unpairBluetoothDeviceWithNRUUID:completionBlock:]_block_invoke_2", 780, *(a1 + 32), a3);
  }
}

void sub_1000C9AD4(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      v4 = 10015;
    }

    else
    {
      v4 = 10016;
    }

    sub_1000059A8(0, v4, 0, 0);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 224);
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      if (v2)
      {
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(a1 + 224) objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * v9), v15}];
            v11 = sub_1000F1BC0(v10, 4);

            if ([(dispatch_queue_t *)v11 state]== 1)
            {
              [(dispatch_queue_t *)v11 start];
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      else
      {
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v13 = [*(a1 + 224) objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * v12), v15}];
            v14 = sub_1000F1BC0(v13, 4);

            if ([(dispatch_queue_t *)v14 state]!= 8)
            {
              [(dispatch_queue_t *)v14 cancelWithReason:@"Disabled cloud link (via test command)"];
            }

            v12 = v12 + 1;
          }

          while (v7 != v12);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }
  }
}

void sub_1000C9CDC(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    if (a2)
    {
      if (v16 || v9 || v10)
      {
        sub_1000B7458(0, @"FixedInterfaceName", v16);
        sub_1000B7458(0, @"FixedInterfacePeerAddress", v9);
        sub_1000B7458(0, @"FixedInterfacePeerIDSDeviceID", v10);
        sub_1000B926C(a1, 1027, @"interface: %@, peer address: %@, peer IDSDeviceID: %@", v11, v12, v13, v14, v15, v16);
      }

      else
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 16, "%s%.30s:%-4d Cannot enable fixed-interface mode (interface: %@, peerAddress = %@)", "", "[NRLinkDirector setFixedInterfaceModeWithEnabled:interfaceName:peerAddress:idsDeviceID:]", 1129, 0, 0);
        }
      }
    }

    else
    {
      sub_1000B76C8(0, @"FixedInterfaceName");
      sub_1000B76C8(0, @"FixedInterfacePeerAddress");
      sub_1000B76C8(0, @"FixedInterfacePeerIDSDeviceID");
      sub_1000059A8(0, 1028, 0, 0);
    }
  }
}

void sub_1000C9EA0(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_100003490();
    dispatch_assert_queue_V2(v7);

    if (v16)
    {
      v8 = [*(a1 + 224) objectForKeyedSubscript:v6];
      if (v8)
      {
        v9 = v8;
        v10 = v16;
        dispatch_assert_queue_V2(*(v9 + 136));
        [*(v9 + 200) addObject:v10];
      }

      else
      {
        v11 = objc_alloc_init(NRDOrphanedConnection);
        p_isa = &v11->super.isa;
        if (v11)
        {
          objc_storeStrong(&v11->_nrUUID, a3);
          objc_storeStrong(p_isa + 2, a2);
        }

        [*(a1 + 232) addObject:p_isa];
        v13 = [p_isa description];
        sub_1000059A8(0, 1015, 0, v13);

        v9 = 0;
      }

      goto LABEL_8;
    }

    v14 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_1000B9544();
      _NRLogWithArgs(v9, 17, "%s called with null connection", "[NRLinkDirector addDeviceMonitorConnection:nrUUID:]");
LABEL_8:
    }
  }
}

void sub_1000CA014(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    if (v3)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = *(a1 + 224);
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v28;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v28 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(a1 + 224) objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
            v11 = v3;
            if (v10)
            {
              dispatch_assert_queue_V2(*(v10 + 136));
              [*(v10 + 208) removeObject:v11];
              if (![*(v10 + 208) count])
              {
                sub_1001141F4(v10, 0);
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v7);
      }

      v12 = [*(a1 + 240) copy];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v23 + 1) + 8 * j);
            if (v18 && v18[2] == v3)
            {
              [*(a1 + 240) removeObject:*(*(&v23 + 1) + 8 * j)];
              v19 = [v18 description];
              sub_1000059A8(0, 1024, 0, v19);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v20 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v22 = sub_1000B9544();
        _NRLogWithArgs(v22, 17, "%s called with null connection", "[NRLinkDirector removeDeviceSetupInProgressConnection:]");
      }
    }
  }
}

void sub_1000CA2C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = sub_100003490();
    dispatch_assert_queue_V2(v9);

    if (v7)
    {
      v10 = [*(a1 + 224) objectForKeyedSubscript:v8];
      if (!v10)
      {
        v22 = objc_alloc_init(NRDOrphanedConnection);
        p_isa = &v22->super.isa;
        if (v22)
        {
          objc_storeStrong(&v22->_nrUUID, a4);
          objc_storeStrong(p_isa + 2, a3);
        }

        [*(a1 + 240) addObject:p_isa];
        v24 = [p_isa description];
        sub_1000059A8(0, 1022, 0, v24);

        v11 = 0;
        goto LABEL_23;
      }

      v11 = v10;
      v12 = v29;
      v13 = v7;
      dispatch_assert_queue_V2(*(v11 + 136));
      v14 = *(v11 + 216);
      v15 = v12;
      v16 = v13;
      if (!v14)
      {
        goto LABEL_18;
      }

      v17 = *(v14 + 24);
      if (v17)
      {
        dispatch_assert_queue_V2(v17);
      }

      v18 = sub_100149B50(v16);
      v19 = [*(v14 + 32) objectForKeyedSubscript:v18];

      sub_100149998(v14, v15, v18);
      if ([v15 isNotEmpty])
      {
        pid = xpc_connection_get_pid(v16);
        if (pid < 1)
        {
LABEL_17:

LABEL_18:
          if ([v15 linkType] == 1)
          {
            if ([v15 isNotEmpty])
            {
              v26 = (*(v11 + 616) >> 1) & 1;
              v30[0] = _NSConcreteStackBlock;
              v30[1] = 3221225472;
              v30[2] = sub_1000F31AC;
              v30[3] = &unk_1001FBA98;
              v31 = v26;
              v30[4] = v11;
              sub_1000F06F8(v11, 1, v26, v30);
            }

            else
            {
              sub_1000F0D40(v11, *(v11 + 640));
            }
          }

          goto LABEL_23;
        }

        v21 = sub_10013CB6C(pid, 0);
        sub_100149788(v14, v21);
      }

      else
      {
        if (!v19)
        {
          goto LABEL_17;
        }

        v25 = xpc_connection_get_pid(v16);
        if (v25 < 1)
        {
          goto LABEL_17;
        }

        v21 = sub_10013CB6C(v25, 0);
        sub_100149890(v14, v21);
      }

      goto LABEL_17;
    }

    v27 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_1000B9544();
      _NRLogWithArgs(v11, 17, "%s called with null connection", "[NRLinkDirector setLinkPreferences:forConnection:nrUUID:]");
LABEL_23:
    }
  }
}

void sub_1000CA5A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = sub_100163A30(NRDLocalDevice, v5);
      v8 = v7;
      if (v7)
      {
        v9 = *(v7 + 144);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = [v10 usesTLS];

      if (v11 != a2 && sub_100169428(v8))
      {
        *(a1 + 12) = 1;
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v12 = qword_1002290E8;
          if (v8)
          {
            v13 = v8[18];
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          _NRLogWithArgs(v12, 0, "%s%.30s:%-4d switching companion APL %u -> %u", "", "-[NRLinkDirector updateCompanionAPLEnabled:nrUUID:]", 1878, [v14 usesTLS], a2);
        }

        v15 = *(a1 + 40);
        if (v15)
        {
          sub_10002F840(v15, 1, 0);
        }

        v16 = [*(a1 + 224) objectForKeyedSubscript:v6];
        sub_100113628(v16);

        [*(a1 + 224) setObject:0 forKeyedSubscript:v6];
        sub_100172204(NRDLocalDevice, a2, v6);
        sub_10005674C(v17);
        v18 = sub_10013F1F8(@"CompanionAPLToggle");
        v19 = dispatch_time(0, 3000000000);
        v20 = *(a1 + 136);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000CA830;
        block[3] = &unk_1001FB300;
        v25 = v18;
        block[4] = a1;
        dispatch_after(v19, v20, block);
      }
    }

    else
    {
      v21 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v23 = sub_1000B9544();
        _NRLogWithArgs(v23, 17, "%s called with null nrUUID", "[NRLinkDirector updateCompanionAPLEnabled:nrUUID:]");
      }
    }
  }
}

void sub_1000CA830(uint64_t a1)
{
  if ((sub_10013F3BC(*(a1 + 40)) & 1) == 0)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 17, "Failed to remove power assertion");
    }
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 12) = 0;
    v3 = *(a1 + 32);
    if (v3)
    {
      if (v3[13] == 1)
      {

        sub_1000BC670(v3);
      }
    }
  }
}

void sub_1000CA918(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 352);
    if (!v6)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = *(a1 + 352);
      *(a1 + 352) = v7;

      v6 = *(a1 + 352);
    }

    [v6 setObject:v9 forKeyedSubscript:v5];
  }
}

void sub_1000CA9A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      v7 = objc_alloc_init(NRDEphemeralDevice);
      connection = v5[3];
      if (v7)
      {
        nrUUID = v7->super._nrUUID;
        v7->super._nrUUID = connection;

        v10 = v6;
        connection = v7->super._connection;
        v7->super._connection = v10;
      }

      [*(a1 + 248) addObject:v7];
      v11 = [(NRDEphemeralDevice *)v7 description];
      sub_1000059A8(0, 1041, 0, v11);

      goto LABEL_23;
    }

    if ([*(a1 + 248) count])
    {
      v12 = [*(a1 + 248) copy];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v12;
      v13 = [(NRDEphemeralDevice *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v13)
      {
LABEL_22:

        v5 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v14 = v13;
      v15 = *v22;
LABEL_10:
      v16 = 0;
      while (1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v18 = *(*(&v21 + 1) + 8 * v16);
        if (v18)
        {
          if (v18[2] == v6)
          {
            goto LABEL_18;
          }
        }

        else if (!v6)
        {
LABEL_18:
          [*(a1 + 248) removeObject:*(*(&v21 + 1) + 8 * v16)];
          v19 = [v18 description];
          sub_1000059A8(0, 1042, 0, v19);

          if (v18)
          {
            v17 = v18[1];
          }

          else
          {
            v17 = 0;
          }

          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_1000CAC20;
          v20[3] = &unk_1001FBF50;
          v20[4] = v18;
          sub_10016BD8C(NRDLocalDevice, v17, v20);
        }

        if (v14 == ++v16)
        {
          v14 = [(NRDEphemeralDevice *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_10;
        }
      }
    }
  }

LABEL_24:
}

void sub_1000CAC20(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    v7 = qword_1002290E8;
    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d Removed ephemeral device with NRUUID %@ result %lld error %@", "", "[NRLinkDirector updateEphemeralDevice:forConnection:]_block_invoke", 2734, v6, a2, v8);
  }
}

void *sub_1000CAD2C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_opt_self();
    if (objc_opt_class())
    {
      v4 = objc_opt_class() != 0;
    }

    else
    {
      v4 = 0;
    }

    v5 = qword_1002290E0;
    if (!v4 && !qword_1002290E0)
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d using alternate device ID, since IDS isn't available", "", "[NRLinkDirector copyIDSDeviceIDWithCompletion:]", 3622);
      }

      v6 = +[NSUUID UUID];
      v7 = [v6 UUIDString];
      v8 = qword_1002290E0;
      qword_1002290E0 = v7;

      v5 = qword_1002290E0;
    }

    if (v5)
    {
      if (v3)
      {
        v3[2](v3);
        v5 = qword_1002290E0;
      }

      a1 = v5;
    }

    else
    {
      if (v3)
      {
        v9 = a1[45];
        if (!v9)
        {
          v10 = objc_alloc_init(NSMutableArray);
          v11 = a1[45];
          a1[45] = v10;

          v9 = a1[45];
        }

        v12 = v9;
        v13 = objc_retainBlock(v3);
        [v12 addObject:v13];
      }

      if ((*(a1 + 20) & 1) == 0)
      {
        *(a1 + 20) = 1;
        if (qword_1002292C0 != -1)
        {
          dispatch_once(&qword_1002292C0, &stru_1001FC4B0);
        }

        v14 = qword_1002292C8;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000CAF98;
        block[3] = &unk_1001FD3C8;
        block[4] = a1;
        dispatch_async(v14, block);
      }

      a1 = 0;
    }
  }

  return a1;
}

void sub_1000CAF98(uint64_t a1)
{
  v2 = IDSCopyLocalDeviceUniqueID();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 136);
  }

  else
  {
    v4 = 0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CB040;
  v6[3] = &unk_1001FD060;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

void sub_1000CB040(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 20) = 0;
  }

  objc_storeStrong(&qword_1002290E0, *(a1 + 40));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[45];
  }

  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v11 + 1) + 8 * v8) + 16))(*(*(&v11 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 360);
    *(v9 + 360) = 0;
  }
}

void sub_1000CB334(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002290F8;
  qword_1002290F8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000CB9A8()
{
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  v1 = qword_1002290F8;

  return v1;
}

void sub_1000CBEE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = 1;
    if (sysctlbyname("net.inet6.ip6.forwarding", 0, 0, &v5, 4uLL))
    {
      v2 = *__error();
      if (strerror_r(v2, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 17, "failed to set sysctl net.inet6.ip6.forwarding to 1: [%d] %s", v2, __strerrbuf);
      }
    }

    ++WeakRetained[5];
    v3 = [WeakRetained instance];
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 2, "%s%.30s:%-4d %@Sending public hello on %@ with seqno %u", "", "[NRBabelInterface initWithInstance:]_block_invoke", 716, v3, WeakRetained, WeakRetained[5]);
    }

    v4 = bswap32(WeakRetained[5]);
    v6[0] = 134218282;
    v6[1] = 1540;
    v7 = HIWORD(v4);
    v8 = 28695;
    *__strerrbuf = v6;
    v10 = 12;
    [WeakRetained sendPacket:__strerrbuf iovLen:1 toAddr:&xmmword_100196560];
  }
}

void sub_1000CD6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CD718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained readPackets];
}

void sub_1000CD758(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained readPackets];
}

void sub_1000CD798(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePathUpdate:v3];
}

void sub_1000D0438(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained processPendingOutgoingPackets];
    WeakRetained = v2;
  }
}

void sub_1000D047C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateRXCostCheckTime:1 personal:0];
    WeakRetained = v2;
  }
}

void sub_1000D04C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateRXCostCheckTime:1 personal:1];
    WeakRetained = v2;
  }
}

uint64_t sub_1000D0514(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained txcost];
    v2 = v5;
    if (WeakRetained != 0xFFFF)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      WeakRetained = _NRLogIsLevelEnabled();
      v2 = v5;
      if (WeakRetained)
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v3 = qword_1002290F8;
        _NRLogWithArgs(v3, 1, "%s%.30s:%-4d incomingIHUTimer fired for %@, previous txcost was %u", "", "-[NRBabelNeighbor initWithAddress:babelInterface:]_block_invoke_4", 1709, v5, [v5 txcost]);

        v2 = v5;
      }
    }
  }

  return _objc_release_x1(WeakRetained, v2);
}

void sub_1000D1EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D1EE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d removing old source %@", "", "[NRBabelSource setupGCTimer]_block_invoke", 1977, v4);
    }

    v2 = [v4 instance];
    v3 = [v2 sources];
    [v3 removeObject:v4];

    WeakRetained = v4;
  }
}

uint64_t sub_1000D2D9C(uint64_t a1)
{
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d %@ running <<%@>>", "", "[NRBabelRoute applyUsingSystem]_block_invoke", 2198, *(a1 + 32), *(a1 + 40));
  }

  system([*(a1 + 40) UTF8String]);
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    return _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d %@ done running cmd", "", "[NRBabelRoute applyUsingSystem]_block_invoke", 2200, *(a1 + 32));
  }

  return result;
}

void sub_1000D34F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000D3518(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained metric] == 0xFFFF)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d removing old route %@", "", "[NRBabelRoute initWithPrefix:neighbor:routerID:seqno:interval:receivedMetric:nextHop:instance:]_block_invoke", 2085, v4);
      }

      v2 = [v4 instance];
      v3 = [v2 routes];
      [v3 removeObject:v4];
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d making old route unfeasible %@", "", "[NRBabelRoute initWithPrefix:neighbor:routerID:seqno:interval:receivedMetric:nextHop:instance:]_block_invoke", 2081, v4);
      }

      [v4 setNumExpiryTimerFires:{(objc_msgSend(v4, "numExpiryTimerFires") + 1)}];
      [v4 resetExpiryTimer];
    }

    WeakRetained = v4;
  }
}

uint64_t sub_1000D4398(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    WeakRetained = [*(a1 + 32) cancelIfRouteUnselected];
    v3 = v6;
    if ((WeakRetained & 1) == 0)
    {
      v4 = v6[6];
      if (v4 < 1)
      {
        WeakRetained = [v6 cancelWithDelay:v4 == 0];
        v3 = v6;
      }

      else
      {
        WeakRetained = [v6 sendSeqnoReq];
        v3 = v6;
        --v6[6];
      }
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_1000D61D4(unsigned __int8 *a1, int a2)
{
  if (!a1)
  {
    v7 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_1000CB9A8();
      _NRLogWithArgs(v9, 17, "%s called with null tlvTrailer", "nrBabelTLVHasUnknownMandatoryTLV");
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = &a1[a2];
  while (1)
  {
    v4 = *v2;
    if (!*v2)
    {
      ++v2;
      goto LABEL_5;
    }

    if ((v4 & 0x80) != 0)
    {
      break;
    }

    if (v2 + 1 >= v3)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d Sub-TLV length hanging off edge of TLV trailer");
      }

      return 1;
    }

    v2 += v2[1] + 2;
    if (v2 > v3)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d Sub-TLV body hanging off edge of TLV trailer");
      }

      return 1;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d Found unknown non-mandatory Sub-TLV %u", "", "nrBabelTLVHasUnknownMandatoryTLV", 2380, v4);
    }

LABEL_5:
    if (v2 >= v3)
    {
      return 0;
    }
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  v5 = _NRLogIsLevelEnabled();
  result = 1;
  if (v5)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    _NRLogWithArgs(qword_1002290F8, 1, "%s%.30s:%-4d Found unknown mandatory Sub-TLV %u");
    return 1;
  }

  return result;
}

uint64_t sub_1000D64B4(void *a1, int a2, void *__src, unsigned int a4, unsigned int a5, uint64_t a6, _BYTE *a7)
{
  if (!a2)
  {
    *a1 = 0;
    a1[1] = 0;
    return 0;
  }

  if (a7 && *a7 >= 0x81u)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d got plen too high %u");
    }

    return 0xFFFFFFFFLL;
  }

  if (a5 && !a6)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d prevAddr is NULL");
    }

    return 0xFFFFFFFFLL;
  }

  v30 = 0uLL;
  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v12 = 128;
      v11 = &v30;
      if (!a7)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (a2 != 3)
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          v27 = sub_1000CB9A8();
          _NRLogWithArgs(v27, 16, "%s%.30s:%-4d invalid AE %u", "", "nrBabelDecompressAddress", 2293, a2);
        }

        return 0xFFFFFFFFLL;
      }

      LOWORD(v30) = -32514;
      v11 = &v30 + 8;
      v12 = 64;
      if (!a7)
      {
        goto LABEL_32;
      }
    }

LABEL_31:
    v12 = *a7;
    goto LABEL_32;
  }

  if (a7 && *a7 >= 0x21u)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (!_NRLogIsLevelEnabled())
    {
      return 0xFFFFFFFFLL;
    }

    v10 = sub_1000CB9A8();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d got IPv4 plen too high %u");
    goto LABEL_70;
  }

  WORD5(v30) = -1;
  v11 = &v30 + 12;
  v12 = 32;
  if (a7)
  {
    goto LABEL_31;
  }

LABEL_32:
  v13 = v12 >> 3;
  if (v12 >> 3 < a5)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 16, "%s%.30s:%-4d AE %u omitted %u > plenBytes %u", "");
    }

    return 0xFFFFFFFFLL;
  }

  v15 = v12 & 7;
  if (v13 <= a5)
  {
    goto LABEL_49;
  }

  if (__src)
  {
    if ((v12 & 7) != 0)
    {
      v16 = (v12 >> 3) - a5 + 1;
    }

    else
    {
      v16 = (v12 >> 3) - a5;
    }

    if (a4 < v16)
    {
      v17 = sub_1000CB9A8();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_1000CB9A8();
        _NRLogWithArgs(v10, 16, "%s%.30s:%-4d currentAddr is not long enough");
LABEL_70:

        return 0xFFFFFFFFLL;
      }

      return 0xFFFFFFFFLL;
    }

LABEL_49:
    v20 = __src;
    if (a5)
    {
      v21 = a1;
      v22 = a4;
      __memcpy_chk();
      __src = v20;
      a4 = v22;
      a1 = v21;
    }

    v23 = &v11[a5];
    if (v13 <= a5)
    {
      v24 = 0;
    }

    else
    {
      v24 = v13 - a5;
      v25 = a1;
      v26 = a4;
      memcpy(v23, __src, (v13 - a5));
      a4 = v26;
      a1 = v25;
    }

    if (v15)
    {
      v23[v13] = *(v20 + (v13 - a5)) & (-1 << (8 - v15));
      ++v24;
    }

    if (a2 == 1 && a7)
    {
      *a7 += 96;
    }

    *a1 = v30;
    if (v24 > a4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v24;
    }
  }

  v28 = sub_1000CB9A8();
  v29 = _NRLogIsLevelEnabled();

  if (v29)
  {
    v10 = sub_1000CB9A8();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d currentAddr is NULL");
    goto LABEL_70;
  }

  return 0xFFFFFFFFLL;
}

void sub_1000DA668(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5 = 65021;
  v6 = v2;
  v3 = [[NRBabelPrefix alloc] initWithPrefix:&v5 plen:128];
  v4 = [NRBabelSourceLocal alloc];

  [*(a1 + 32) setupAddress:&v5];
  [*(a1 + 32) setupInterfaces];
}

void sub_1000DB100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_1000DB124(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleIfBringupPathUpdate:v3];
}

void sub_1000DBBDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = v2;
  v5 = [v3 instance];
  [v5 handlePacket:objc_msgSend(v6 length:"bytes") remoteAddr:*(a1 + 64) localAddr:objc_msgSend(v4 babelInterface:"localAddress") dtls:{*(a1 + 56), *(a1 + 48), 0}];
}

void sub_1000DBF48(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaces];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 48) fakeInterfaces];
  [v3 addObject:*(a1 + 40)];
}

void sub_1000DD27C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1000DD2A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if (WeakRetained[248] == 1)
    {
      [WeakRetained upgradeSessionsIfNeeded];
    }

    else
    {
      [WeakRetained setupIPsecIfNecessary:3];
    }

    WeakRetained = v2;
  }
}

void sub_1000DD6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DD6E0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v5 = _NRCopyLogObjectForNRUUID();
    if (!a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v12;
      if (!IsLevelEnabled)
      {
        goto LABEL_10;
      }

      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [v12 copyDescription];
      _NRLogWithArgs(v10, 16, "%s%.30s:%-4d %@: Did not receive response to notify payloads", "", "[NRLinkWired sendNotifyPayload]_block_invoke", 1061, v11);

      goto LABEL_9;
    }

    v6 = _NRLogIsLevelEnabled();

    if (v6)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = [v12 copyDescription];
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: Received response to notify payloads", "", "[NRLinkWired sendNotifyPayload]_block_invoke", 1055, v8);
    }

    WeakRetained = v12;
    if (*(a1 + 40) == 1)
    {
      [v12 setSentLocalClassCUnlockNotify:1];
      [v12 upgradeSessionsIfNeeded];
LABEL_9:
      WeakRetained = v12;
    }
  }

LABEL_10:
}

void sub_1000DD968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000DD98C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[16] != 255 && *(WeakRetained + 279))
  {
    objc_initWeak(&location, WeakRetained);
    v3 = *(v2 + 279);
    v4 = sub_100147A80();
    v10 = v4;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    v6 = [v2 queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DDB18;
    v7[3] = &unk_1001FC018;
    objc_copyWeak(&v8, &location);
    [v3 sendPrivateNotifies:v5 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v6 callback:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_1000DDAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DDB18(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v11 copyDescription];
        _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to classC unlock", "", "[NRLinkWired sendClassCUnlockedNotify]_block_invoke_2", 1012, v7);
      }

      [v11 setSentLocalClassCUnlockNotify:1];
      [v11 upgradeSessionsIfNeeded];
    }

    else
    {
      v8 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v8)
      {
        goto LABEL_9;
      }

      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v11 copyDescription];
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d %@: Did not receive response to classC unlock", "", "[NRLinkWired sendClassCUnlockedNotify]_block_invoke_2", 1016, v10);
    }

    WeakRetained = v11;
  }

LABEL_9:
}

void sub_1000DDE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DDE40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    if (v3)
    {
      v6 = [v5 ikeSessionClassD];
      v7 = [v5 ikeSessionClassC];

      if (v7)
      {
        v8 = [v5 ikeSessionClassC];

        v6 = v8;
      }

      v9 = [v3 dataUsingEncoding:4];
      v10 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v9];
      v11 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = _NRCopyLogObjectForNRUUID();
        v14 = [v5 copyDescription];
        _NRLogWithArgs(v13, 0, "%s%.30s:%-4d %@: Sending IDS device ID to peer", "", "[NRLinkWired getOrSendIDSDeviceID]_block_invoke", 950, v14);
      }

      v23 = v10;
      v15 = [NSArray arrayWithObjects:&v23 count:1];
      v16 = [v5 queue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000DE110;
      v21[3] = &unk_1001FC018;
      objc_copyWeak(&v22, (a1 + 32));
      [v6 sendPrivateNotifies:v15 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v16 callback:v21];

      objc_destroyWeak(&v22);
    }

    else
    {
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        v19 = _NRCopyLogObjectForNRUUID();
        v20 = [v5 copyDescription];
        _NRLogWithArgs(v19, 16, "%s%.30s:%-4d %@: No IDS Device ID to send to peer", "", "[NRLinkWired getOrSendIDSDeviceID]_block_invoke", 937, v20);
      }
    }
  }
}

void sub_1000DE110(uint64_t a1, int a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to IDS device ID notify payload", "", "[NRLinkWired getOrSendIDSDeviceID]_block_invoke_2", 961, v7);
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
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to IDS device ID notify payload", "", "[NRLinkWired getOrSendIDSDeviceID]_block_invoke_2", 963, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_1000DE43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000DE468()
{
  if (qword_100229110 != -1)
  {
    dispatch_once(&qword_100229110, &stru_1001FB948);
  }

  v1 = qword_100229108;

  return v1;
}

void sub_1000DE4BC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v4 = [WeakRetained state] == 255;
    WeakRetained = v10;
    if (!v4)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      if (a2)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        WeakRetained = v10;
        if (!IsLevelEnabled)
        {
          goto LABEL_9;
        }

        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [v10 copyDescription];
        _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: Received response to control notify", "", "[NRLinkWired sendControlData:]_block_invoke", 900, v8);
      }

      else
      {
        v9 = _NRLogIsLevelEnabled();

        WeakRetained = v10;
        if (!v9)
        {
          goto LABEL_9;
        }

        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [v10 copyDescription];
        _NRLogWithArgs(v7, 16, "%s%.30s:%-4d %@: Did not receive response to control notify", "", "[NRLinkWired sendControlData:]_block_invoke", 902, v8);
      }

      WeakRetained = v10;
    }
  }

LABEL_9:
}

void sub_1000DE5F0(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229108;
  qword_100229108 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000DF310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained state] == 255;
    WeakRetained = v4;
    if (!v3)
    {
      [v4 setupIPsecIfNecessary:*(a1 + 40)];
      WeakRetained = v4;
    }
  }
}

void sub_1000DFE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  objc_destroyWeak((v52 + 48));
  objc_destroyWeak((v51 + 48));
  objc_destroyWeak((v50 + 48));
  objc_destroyWeak((v53 + 48));
  objc_destroyWeak(&a50);
  objc_destroyWeak((v54 - 192));
  objc_destroyWeak((v54 - 128));
  objc_destroyWeak((v54 - 112));
  _Unwind_Resume(a1);
}

void sub_1000DFF08(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained linkDelegate];
    v8 = v61;
    if (v61)
    {
      v9 = *(a1 + 56);
      if (v9 == 4 || v9 == 3 && ([v6 setIkeClassCEstablished:0], v10 = objc_msgSend(v6, "onlyAllowClassC"), v8 = v61, v10))
      {
        [v6 setIkeClassDEstablished:{0, v8}];
        v8 = v61;
      }

      [v6 processIKEDisconnection:*(a1 + 56) error:v8];
      if ([v6 state] == 255)
      {
        goto LABEL_10;
      }

      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [v6 reportEvent:3018 detailsFormat:@"%@ session %@ got IKE error %@ with state %@", v11, v12, v61, SessionStateString];

      goto LABEL_9;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = NEIKEv2CreateSessionStateString();
    [v6 reportEvent:3009 detailsFormat:@"%@ session %@ changed state to %@", v14, v15, v16];

    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v32 = *(a1 + 56);
        if (v32 == 4 || v32 == 3 && ([v6 setIkeClassCEstablished:0], objc_msgSend(v6, "onlyAllowClassC")))
        {
          [v6 setIkeClassDEstablished:0];
        }

        [v6 reportEvent:3018 detailsFormat:@"%@ session %@ cancelled by peer", *(a1 + 32), *(a1 + 40)];
LABEL_9:
        [v6 restartIKESessionForDataProtectionClass:*(a1 + 56)];
LABEL_10:

        goto LABEL_11;
      }

      if (a2 == 4)
      {
        [v6 cancelWithReason:{@"%@ session %@ got unexpected MOBIKE state", *(a1 + 32), *(a1 + 40)}];
        goto LABEL_10;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if ([v6 state] == 1)
        {
          v28 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v30 = _NRCopyLogObjectForNRUUID();
            v31 = [v6 copyDescription];
            _NRLogWithArgs(v30, 0, "%s%.30s:%-4d %@: %@ IKE %@ now connecting", "", "[NRLinkWired setupIKECallbacks:]_block_invoke", 440, v31, *(a1 + 32), *(a1 + 40));
          }

          [v6 changeStateTo:5];
          goto LABEL_10;
        }

        v51 = [v6 state];
        v52 = _NRCopyLogObjectForNRUUID();
        if (v51 == 5)
        {
          v53 = _NRLogIsLevelEnabled();

          if (!v53)
          {
            goto LABEL_10;
          }

          v54 = _NRCopyLogObjectForNRUUID();
          v55 = [v6 copyDescription];
          _NRLogWithArgs(v54, 0, "%s%.30s:%-4d %@: %@ IKE %@ already connecting", "", "[NRLinkWired setupIKECallbacks:]_block_invoke", 443, v55, *(a1 + 32), *(a1 + 40));
        }

        else
        {
          v56 = _NRLogIsLevelEnabled();

          if (!v56)
          {
            goto LABEL_10;
          }

          v54 = _NRCopyLogObjectForNRUUID();
          v55 = [v6 copyDescription];
          _NRLogWithArgs(v54, 16, "%s%.30s:%-4d %@: %@ IKE %@ connecting but weird state", "", "[NRLinkWired setupIKECallbacks:]_block_invoke", 445, v55, *(a1 + 32), *(a1 + 40));
        }

        goto LABEL_10;
      }

      if (a2 == 2)
      {
        v17 = _NRCopyLogObjectForNRUUID();
        v18 = _NRLogIsLevelEnabled();

        if (v18)
        {
          v19 = _NRCopyLogObjectForNRUUID();
          v20 = [v6 copyDescription];
          _NRLogWithArgs(v19, 0, "%s%.30s:%-4d %@: %@ IKE %@ now connected from started", "", "[NRLinkWired setupIKECallbacks:]_block_invoke", 448, v20, *(a1 + 32), *(a1 + 40));
        }

        v21 = *(a1 + 56);
        if (v21 == 4 || v21 == 3 && ([v6 setIkeClassCEstablished:1], objc_msgSend(v6, "onlyAllowClassC")))
        {
          [v6 setIkeClassDEstablished:1];
        }

        if ([v6 state] == 8)
        {
          v22 = _NRCopyLogObjectForNRUUID();
          v23 = _NRLogIsLevelEnabled();

          if (v23)
          {
            v24 = _NRCopyLogObjectForNRUUID();
            v25 = [v6 copyDescription];
            _NRLogWithArgs(v24, 0, "%s%.30s:%-4d %@: %@ IKE %@ already ready", "", "[NRLinkWired setupIKECallbacks:]_block_invoke", 459, v25, *(a1 + 32), *(a1 + 40));
          }

          [v7 linkIsReady:v6];
        }

        else
        {
          if ([v6 state] != 5)
          {
            v33 = _NRCopyLogObjectForNRUUID();
            v34 = _NRLogIsLevelEnabled();

            if (v34)
            {
              v35 = _NRCopyLogObjectForNRUUID();
              v36 = [v6 copyDescription];
              _NRLogWithArgs(v35, 0, "%s%.30s:%-4d %@: %@ IKE %@ ready but weird state", "", "[NRLinkWired setupIKECallbacks:]_block_invoke", 463, v36, *(a1 + 32), *(a1 + 40));
            }
          }

          [v6 changeStateTo:8];
          [v7 linkIsReady:v6];
          if ([v6 shouldCreateCompanionProxyAgent])
          {
            v37 = [v6 companionProxyAgent];

            if (!v37)
            {
              [v6 virtualInterface];
              v38 = NEVirtualInterfaceCopyName();
              v39 = [v6 nrUUID];
              v40 = sub_100163A30(NRDLocalDevice, v39);
              v41 = v40;
              if (v40)
              {
                v42 = *(v40 + 128);
              }

              else
              {
                v42 = 0;
              }

              v43 = v42;

              if (v38 && v43)
              {
                v44 = [NRCompanionProxyAgent alloc];
                v45 = [v6 queue];
                v46 = [v6 nrUUID];
                v47 = sub_100070A9C(&v44->super.isa, v45, v38, v43, v46);
                v48 = v6[11];
                v6[11] = v47;

                [v6 reportEvent:12001];
              }
            }

            v49 = [v6 companionProxyAgent];
            v50 = sub_100070DD8(v49, v6);

            if (v50)
            {
              [v6 reportEvent:12002];
            }

            else
            {
              v57 = _NRCopyLogObjectForNRUUID();
              v58 = _NRLogIsLevelEnabled();

              if (v58)
              {
                v59 = _NRCopyLogObjectForNRUUID();
                v60 = [v6 copyDescription];
                _NRLogWithArgs(v59, 16, "%s%.30s:%-4d %@: failed to register companion agent", "", "[NRLinkWired setupIKECallbacks:]_block_invoke", 480, v60);
              }
            }
          }
        }

        [v6 sendNotifyPayload];
        if ([v6 needsToSendLocalClassCUnlockNotify])
        {
          [v6 sendClassCUnlockedNotify];
        }

        goto LABEL_10;
      }
    }

    v26 = *(a1 + 32);
    v27 = NEIKEv2CreateSessionStateString();
    [v6 cancelWithReason:{@"%@ session %@ got bad IKE state %@", v26, v27}];

    goto LABEL_10;
  }

LABEL_11:
}

void sub_1000E065C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

    [WeakRetained restartIKESessionForDataProtectionClass:*(a1 + 56)];
  }

LABEL_9:
}

void sub_1000E0794(uint64_t a1, void *a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: %@ session %@ got config update %@", "", "[NRLinkWired setupIKECallbacks:]_block_invoke_3", 549, v7, *(a1 + 32), *(a1 + 40), v8);
    }
  }
}

void sub_1000E0874(uint64_t a1, uint64_t a2, void *a3, void *a4)
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
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: %@ session %@ got child %u traffic selector update local %@ remote %@", "", "[NRLinkWired setupIKECallbacks:]_block_invoke_4", 560, v12, *(a1 + 32), *(a1 + 40), a2, v13, v7);
    }
  }
}

void sub_1000E0974(uint64_t a1, void *a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: %@ session %@ got additional addresses %@", "", "[NRLinkWired setupIKECallbacks:]_block_invoke_5", 569, v7, *(a1 + 32), *(a1 + 40), v8);
    }
  }
}

void sub_1000E0A54(uint64_t a1)
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
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: %@ session %@ got short DPD", "", "[NRLinkWired setupIKECallbacks:]_block_invoke_6", 577, v6, *(a1 + 32), *(a1 + 40));

      WeakRetained = v7;
    }
  }
}

void sub_1000E0B28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = [WeakRetained copyDescription];
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: %@ session %@ got private notifies %@", "", "[NRLinkWired setupIKECallbacks:]_block_invoke_7", 587, v9, *(a1 + 32), *(a1 + 40), v5);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v15 notifyStatus];
          v17 = [v15 notifyData];
          [WeakRetained handleNotifyCode:v16 payload:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

void sub_1000E12E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000E1308(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = [WeakRetained state] == 255;
    WeakRetained = v11;
    if (!v4)
    {
      v11[83] = 0;
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (a2)
      {
        WeakRetained = v11;
        if (!IsLevelEnabled)
        {
          goto LABEL_10;
        }

        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [v11 copyDescription];
        _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: peer is available", "", "[NRLinkWired checkPeerAvailabilityWithForceAggressive:]_block_invoke", 329, v8);
      }

      else
      {
        if (IsLevelEnabled)
        {
          v9 = _NRCopyLogObjectForNRUUID();
          v10 = [v11 copyDescription];
          _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: peer is NOT available", "", "[NRLinkWired checkPeerAvailabilityWithForceAggressive:]_block_invoke", 331, v10);
        }

        [v11 cancelWithReason:@"Dead Peer Detection"];
      }

      WeakRetained = v11;
    }
  }

LABEL_10:
}

void sub_1000E16CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000E16F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setupIPsecIfNecessary:3];
    WeakRetained = v2;
  }
}

void sub_1000E19D0(id *a1, int a2, unsigned int a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v20 = WeakRetained;
    v7 = [WeakRetained state] == 255;
    WeakRetained = v20;
    if (!v7)
    {
      v8 = objc_loadWeakRetained(a1 + 6);
      if (!v8)
      {
        goto LABEL_30;
      }

      v9 = [v20 pairingClient];

      if (v9 != v8)
      {
        goto LABEL_30;
      }

      v10 = [v20 pairingClient];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 48);
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      v13 = objc_alloc_init(NSMutableString);
      v14 = v13;
      if (v12)
      {
        [v13 appendFormat:@"PairingSessionConnected | "];
        if ((v12 & 2) == 0)
        {
LABEL_9:
          if ((v12 & 4) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      else if ((v12 & 2) == 0)
      {
        goto LABEL_9;
      }

      [v14 appendFormat:@"ClassDVerified | "];
      if ((v12 & 4) == 0)
      {
LABEL_10:
        if ((v12 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }

LABEL_17:
      [v14 appendFormat:@"ClassCVerified | "];
      if ((v12 & 8) == 0)
      {
LABEL_11:
        if ((v12 & 0x10) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }

LABEL_18:
      [v14 appendFormat:@"ClassAVerified | "];
      if ((v12 & 0x10) == 0)
      {
LABEL_12:

        if (a3)
        {
LABEL_13:
          if (a3 > 8)
          {
            v15 = @"None";
          }

          else
          {
            v15 = *(&off_1001FA108 + (a3 - 1));
          }

          [v20 cancelWithReason:{@"pairing client error: %@ mask: %@", v15, v14}];
LABEL_29:

LABEL_30:
          WeakRetained = v20;
          goto LABEL_31;
        }

LABEL_20:
        if ((a2 - 1) > 6)
        {
          v15 = @"Invalid";
        }

        else
        {
          v15 = *(&off_1001FA148 + (a2 - 1));
        }

        v16 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v18 = _NRCopyLogObjectForNRUUID();
          v19 = [v20 copyDescription];
          _NRLogWithArgs(v18, 0, "%s%.30s:%-4d %@: pairing client state: %@ mask: %@", "", "[NRLinkWired initiatePairing]_block_invoke", 252, v19, v15, v14);
        }

        if (a2 == 5)
        {
          [a1[4] setRemoteClassCUnlocked:0];
          [v20 initiateConnection];
        }

        goto LABEL_29;
      }

LABEL_19:
      [v14 appendFormat:@"PairingCompleted | "];

      if (a3)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

LABEL_31:
}

id sub_1000E2538()
{
  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  v1 = qword_100229118;

  return v1;
}

void sub_1000E258C(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229118;
  qword_100229118 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000E284C(uint64_t a1)
{
  if ([*(a1 + 32) state] == 255)
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      _NRLogWithArgs(qword_100229118, 1, "%s%.30s:%-4d Ignoring as link is cancelled: %@", "", "[NRLinkManagerWired linkDidReceiveData:data:]_block_invoke", 747, *(a1 + 32));
    }
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v4 = WeakRetained;
    [WeakRetained linkDidReceiveData:*(a1 + 32) data:*(a1 + 48)];
  }
}

void sub_1000E2B6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained linkIsUnavailable:*(a1 + 40)];

  v4 = *(a1 + 32);

  sub_1000E2BCC(v4);
}

void sub_1000E2BCC(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_10016CD90(NRDLocalDevice);
    if ([v3 count])
    {
      sub_1000E2C58(a1, v3);
    }

    v2 = sub_10016CBA0(NRDLocalDevice);
    if ([v2 count])
    {
      sub_1000E2C58(a1, v2);
    }
  }
}

void sub_1000E2C58(uint64_t a1, void *a2)
{
  v135 = a2;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = [*(a1 + 40) copy];
  v132 = a1;
  v142 = [obj countByEnumeratingWithState:&v172 objects:v184 count:16];
  if (v142)
  {
    v140 = *v173;
    do
    {
      for (i = 0; i != v142; i = i + 1)
      {
        if (*v173 != v140)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v172 + 1) + 8 * i);
        v6 = *(a1 + 80);
        v7 = [v5 localInterfaceName];
        v8 = [v6 objectForKeyedSubscript:v7];

        if (!v8 || ![v8 count])
        {
          [v5 cancelWithReason:@"interface went away"];
        }

        v9 = *(v132 + 88);
        v10 = [v5 nrUUID];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (!v11)
        {
          goto LABEL_6;
        }

        v170 = 0u;
        v171 = 0u;
        v168 = 0u;
        v169 = 0u;
        v12 = [v11 interfaceToPeerAddressDictionary];
        v13 = [v12 allValues];

        v14 = [v13 countByEnumeratingWithState:&v168 objects:v183 count:16];
        if (!v14)
        {
LABEL_5:

LABEL_6:
          v4 = 0;
          goto LABEL_7;
        }

        v15 = v14;
        v16 = *v169;
LABEL_17:
        v17 = 0;
        while (1)
        {
          if (*v169 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v168 + 1) + 8 * v17);
          v19 = [v5 remoteOuterEndpoint];
          v20 = [v18 containsObject:v19];

          if (v20)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v168 objects:v183 count:16];
            if (v15)
            {
              goto LABEL_17;
            }

            goto LABEL_5;
          }
        }

        v4 = v18;

        if (v4 && [v4 count])
        {
          goto LABEL_8;
        }

LABEL_7:
        [v5 cancelWithReason:@"peer went away"];
LABEL_8:

        a1 = v132;
      }

      v142 = [obj countByEnumeratingWithState:&v172 objects:v184 count:16];
    }

    while (v142);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v113 = v135;
  v118 = [v113 countByEnumeratingWithState:&v164 objects:v182 count:16];
  if (v118)
  {
    v117 = *v165;
    do
    {
      v21 = 0;
      do
      {
        if (*v165 != v117)
        {
          v23 = v21;
          objc_enumerationMutation(v113);
          v21 = v23;
        }

        v120 = v21;
        v24 = *(*(&v164 + 1) + 8 * v21);
        v25 = sub_100163A30(NRDLocalDevice, v24);
        v121 = v25;
        if (v25 && (v26 = *(v25 + 144), v26, v26))
        {
          if ((*(v121 + 48) & 2) != 0)
          {
            if (a1)
            {
              WeakRetained = objc_loadWeakRetained((a1 + 16));
            }

            else
            {
              WeakRetained = 0;
            }

            v28 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:v24];

            if (v28)
            {
              if (qword_100229120 != -1)
              {
                dispatch_once(&qword_100229120, &stru_1001FB968);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100229120 != -1)
                {
                  dispatch_once(&qword_100229120, &stru_1001FB968);
                }

                _NRLogWithArgs(qword_100229118, 0, "%s%.30s:%-4d Deferring creating link for %@ as device is in perpetual standalone Meadow mode", "", "[NRLinkManagerWired createLinkForNRUUIDs:]", 211, v121);
              }
            }

            else
            {
              v29 = v121;
              if (*(a1 + 32))
              {
                goto LABEL_67;
              }

              if (qword_100229238 != -1)
              {
                dispatch_once(&qword_100229238, &stru_1001FC340);
                v29 = v121;
              }

              if (byte_100229230 & 1) != 0 || (v30 = *(v29 + 144), v29 = v121, !v30) || (v31 = v30, v32 = *(v121 + 144), [v32 allowedLinkTypes], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "containsObject:", &off_100209C20), v33, v32, v31, v29 = v121, (v34))
              {
LABEL_67:
                if (*(v29 + 11) == 1)
                {
                  if (qword_100229120 != -1)
                  {
                    dispatch_once(&qword_100229120, &stru_1001FB968);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229120 != -1)
                    {
                      dispatch_once(&qword_100229120, &stru_1001FB968);
                    }

                    _NRLogWithArgs(qword_100229118, 0, "%s%.30s:%-4d Deferring creating link for %@ as link suspension is in effect for non-nearby links", "", "[NRLinkManagerWired createLinkForNRUUIDs:]", 225, v121);
                  }
                }

                else
                {
                  v35 = v29;
                  if (sub_10013FF60(v29) == 1)
                  {
                    v36 = *(v35 + 48);
                    if ((v36 & 0x20) != 0)
                    {
                      LOBYTE(v39) = 1;
                    }

                    else
                    {
                      v37 = (v36 & 0x10) != 0 || *(v35 + 16) > 0x12u;
                      v39 = (v36 >> 14) & 1 | v37;
                    }

                    v40 = ((*(v35 + 48) & 0x2000) != 0) & v39;
                    if ((v36 & 0x1000) != 0)
                    {
                      v38 = v40;
                    }

                    else
                    {
                      v38 = 0;
                    }
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v41 = sub_100169428(v35);
                  v116 = [*(a1 + 88) objectForKeyedSubscript:v24];
                  if (v116)
                  {
                    v42 = (v41 ^ 1) & v38;
                    v136 = v24;
                    if (v42)
                    {
                      v43 = 0;
                    }

                    else
                    {
                      v162 = 0u;
                      v163 = 0u;
                      v160 = 0u;
                      v161 = 0u;
                      v44 = *(a1 + 40);
                      v45 = [v44 countByEnumeratingWithState:&v160 objects:v181 count:16];
                      if (v45)
                      {
                        v46 = v45;
                        v47 = v42;
                        v48 = *v161;
                        do
                        {
                          for (j = 0; j != v46; j = j + 1)
                          {
                            if (*v161 != v48)
                            {
                              objc_enumerationMutation(v44);
                            }

                            v50 = *(*(&v160 + 1) + 8 * j);
                            v51 = [v50 nrUUID];
                            v52 = [v51 isEqual:v24];

                            if (v52 && [v50 state] != 255)
                            {
                              v43 = 1;
                              v24 = v136;
                              goto LABEL_109;
                            }

                            v24 = v136;
                          }

                          v46 = [v44 countByEnumeratingWithState:&v160 objects:v181 count:16];
                        }

                        while (v46);
                        v43 = 0;
LABEL_109:
                        v42 = v47;
                      }

                      else
                      {
                        v43 = 0;
                      }
                    }

                    v158 = 0u;
                    v159 = 0u;
                    v156 = 0u;
                    v157 = 0u;
                    v112 = [v116 interfaceToPeerAddressDictionary];
                    v115 = [v112 countByEnumeratingWithState:&v156 objects:v180 count:16];
                    if (!v115)
                    {
                      goto LABEL_32;
                    }

                    v114 = *v157;
                    v127 = v42;
LABEL_114:
                    v53 = 0;
                    while (1)
                    {
                      if (*v157 != v114)
                      {
                        v54 = v53;
                        objc_enumerationMutation(v112);
                        v53 = v54;
                      }

                      if (!(v42 & 1 | ((v43 & 1) == 0)))
                      {
                        goto LABEL_32;
                      }

                      v119 = v53;
                      v55 = *(*(&v156 + 1) + 8 * v53);
                      v56 = [*(a1 + 80) objectForKeyedSubscript:v55];
                      v57 = [v116 interfaceToPeerAddressDictionary];
                      v125 = [v57 objectForKeyedSubscript:v55];

                      v154 = 0u;
                      v155 = 0u;
                      v152 = 0u;
                      v153 = 0u;
                      v122 = v56;
                      v124 = [v122 countByEnumeratingWithState:&v152 objects:v179 count:16];
                      if (v124)
                      {
                        v123 = *v153;
                        v141 = v55;
LABEL_121:
                        v58 = 0;
LABEL_123:
                        if (*v153 != v123)
                        {
                          v59 = v58;
                          objc_enumerationMutation(v122);
                          v58 = v59;
                        }

                        if (v42 & 1 | ((v43 & 1) == 0))
                        {
                          break;
                        }
                      }

LABEL_115:

                      v53 = v119 + 1;
                      if ((v119 + 1) == v115)
                      {
                        v115 = [v112 countByEnumeratingWithState:&v156 objects:v180 count:16];
                        if (!v115)
                        {
                          goto LABEL_32;
                        }

                        goto LABEL_114;
                      }
                    }

                    v126 = v58;
                    v143 = *(*(&v152 + 1) + 8 * v58);
                    v150 = 0u;
                    v151 = 0u;
                    v148 = 0u;
                    v149 = 0u;
                    v129 = v125;
                    v134 = [v129 countByEnumeratingWithState:&v148 objects:v178 count:16];
                    if (!v134)
                    {
                      goto LABEL_122;
                    }

                    v60 = *v149;
                    v128 = *v149;
                    while (2)
                    {
                      v61 = 0;
LABEL_132:
                      if (*v149 != v60)
                      {
                        objc_enumerationMutation(v129);
                      }

                      if (!(v42 & 1 | ((v43 & 1) == 0)))
                      {
                        goto LABEL_122;
                      }

                      obja = *(*(&v148 + 1) + 8 * v61);
                      if (![a1 endpointsAreCompatible:v143 remoteEndpoint:?])
                      {
                        goto LABEL_131;
                      }

                      v133 = v61;
                      v131 = v43;
                      v146 = 0u;
                      v147 = 0u;
                      v144 = 0u;
                      v145 = 0u;
                      v62 = [*(a1 + 40) copy];
                      v63 = [v62 countByEnumeratingWithState:&v144 objects:v177 count:16];
                      if (!v63)
                      {
LABEL_152:

                        goto LABEL_153;
                      }

                      v64 = v63;
                      v65 = *v145;
LABEL_139:
                      v66 = 0;
LABEL_144:
                      if (*v145 != v65)
                      {
                        objc_enumerationMutation(v62);
                      }

                      v67 = *(*(&v144 + 1) + 8 * v66);
                      v68 = [v67 nrUUID];
                      if ([v68 isEqual:v24])
                      {
                        v69 = [v67 localInterfaceName];
                        v70 = [v69 isEqualToString:v55];

                        if (v70)
                        {
                          v71 = [v67 localOuterEndpoint];
                          v68 = [v71 hostname];

                          v72 = [v67 remoteOuterEndpoint];
                          v73 = [v72 hostname];

                          v74 = [v143 hostname];
                          if ([v68 isEqualToString:v74])
                          {
                            v75 = [obja hostname];
                            v76 = [v73 isEqualToString:v75];

                            v24 = v136;
                            if (v76)
                            {
                              v77 = [v67 state];

                              v55 = v141;
                              if (v77 != 255)
                              {
                                a1 = v132;
                                v61 = v133;
                                v42 = v127;
                                v43 = v131;
                                v60 = v128;
                                goto LABEL_131;
                              }

LABEL_153:
                              v78 = [obja hostname];
                              objc_opt_self();
                              if (qword_100228E88 != -1)
                              {
                                dispatch_once(&qword_100228E88, &stru_1001FA180);
                              }

                              v79 = qword_100228E80;
                              v80 = @"62743";
                              if (!v79)
                              {
                                v80 = 0;
                              }

                              v81 = v80;
                              v82 = [NWAddressEndpoint endpointWithHostname:v78 port:v81];

                              v83 = [NRLinkWired alloc];
                              if (v132)
                              {
                                v84 = *(v132 + 24);
                              }

                              else
                              {
                                v84 = 0;
                              }

                              v85 = v84;
                              objc_opt_self();
                              if (qword_100228E88 != -1)
                              {
                                dispatch_once(&qword_100228E88, &stru_1001FA180);
                              }

                              v130 = qword_100228E80;
                              v86 = @"62743";
                              if (!v130)
                              {
                                v86 = 0;
                              }

                              v87 = v86;
                              v88 = v85;
                              v89 = v132;
                              v90 = v136;
                              objb = v55;
                              v91 = v143;
                              v92 = v82;
                              v93 = v87;
                              if (!v83)
                              {
                                goto LABEL_205;
                              }

                              if (!v88)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v100 = qword_100229108;
                                IsLevelEnabled = _NRLogIsLevelEnabled();

                                if (IsLevelEnabled)
                                {
                                  if (qword_100229110 != -1)
                                  {
                                    dispatch_once(&qword_100229110, &stru_1001FB948);
                                  }

                                  v55 = v141;
                                  v102 = qword_100229108;
                                  _NRLogWithArgs(v102, 17, "%s called with null queue");
LABEL_196:

LABEL_205:
                                  v99 = 0;
                                  v96 = objb;
                                  goto LABEL_170;
                                }

LABEL_197:
                                v99 = 0;
                                v96 = objb;
                                v55 = v141;
                                goto LABEL_170;
                              }

                              if (!v136)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v103 = qword_100229108;
                                v104 = _NRLogIsLevelEnabled();

                                if (v104)
                                {
                                  if (qword_100229110 != -1)
                                  {
                                    dispatch_once(&qword_100229110, &stru_1001FB948);
                                  }

                                  v55 = v141;
                                  v102 = qword_100229108;
                                  _NRLogWithArgs(v102, 17, "%s called with null nrUUID");
                                  goto LABEL_196;
                                }

                                goto LABEL_197;
                              }

                              if ((_NRIsUUIDNonZero() & 1) == 0)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v105 = qword_100229108;
                                v106 = _NRLogIsLevelEnabled();

                                if (v106)
                                {
                                  if (qword_100229110 != -1)
                                  {
                                    dispatch_once(&qword_100229110, &stru_1001FB948);
                                  }

                                  v55 = v141;
                                  v102 = qword_100229108;
                                  _NRLogWithArgs(v102, 17, "called with all-zero nrUUID");
                                  goto LABEL_196;
                                }

                                goto LABEL_197;
                              }

                              if (!v55)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v107 = qword_100229108;
                                v108 = _NRLogIsLevelEnabled();

                                if (v108)
                                {
                                  if (qword_100229110 != -1)
                                  {
                                    dispatch_once(&qword_100229110, &stru_1001FB948);
                                  }

                                  v55 = v141;
                                  v102 = qword_100229108;
                                  _NRLogWithArgs(v102, 17, "%s called with null localInterfaceName");
                                  goto LABEL_196;
                                }

                                goto LABEL_197;
                              }

                              v176.receiver = v83;
                              v176.super_class = NRLinkWired;
                              v94 = objc_msgSendSuper2(&v176, "initLinkWithQueue:linkDelegate:nrUUID:", v88, v89, v90);
                              if (!v94)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v109 = qword_100229108;
                                v110 = _NRLogIsLevelEnabled();

                                if (v110)
                                {
                                  if (qword_100229110 != -1)
                                  {
                                    dispatch_once(&qword_100229110, &stru_1001FB948);
                                  }

                                  v111 = qword_100229108;
                                  _NRLogWithArgs(v111, 17, "[NRLink initLinkWithQueue:] failed");
                                }

                                v83 = 0;
                                goto LABEL_205;
                              }

                              v95 = v94;
                              [v94 setType:5];
                              [v95 setLocalInterfaceName:objb];
                              [v95 setLocalOuterEndpoint:v91];
                              [v95 setRemoteOuterEndpoint:v92];
                              [v95 setListenerPortString:v93];
                              [v95 setOnlyAllowClassC:1];
                              [v90 UUIDString];
                              v97 = v96 = objb;
                              [v95 reportEvent:3000 details:v97];

                              v98 = [v95 linkDelegate];
                              [v98 linkIsAvailable:v95];

                              v83 = v95;
                              v99 = v83;
LABEL_170:

                              if (v99)
                              {
                                v43 = 1;
                                v42 = v127;
                              }

                              else
                              {
                                [v89 reportEvent:3210];
                                v42 = v127;
                                v43 = v131;
                              }

                              v60 = v128;
                              a1 = v132;
                              v61 = v133;

                              v24 = v136;
LABEL_131:
                              if (++v61 == v134)
                              {
                                v134 = [v129 countByEnumeratingWithState:&v148 objects:v178 count:16];
                                if (!v134)
                                {
LABEL_122:

                                  v58 = v126 + 1;
                                  if ((v126 + 1) != v124)
                                  {
                                    goto LABEL_123;
                                  }

                                  v124 = [v122 countByEnumeratingWithState:&v152 objects:v179 count:16];
                                  if (v124)
                                  {
                                    goto LABEL_121;
                                  }

                                  goto LABEL_115;
                                }

                                continue;
                              }

                              goto LABEL_132;
                            }
                          }

                          else
                          {
                          }

                          v55 = v141;
                          goto LABEL_142;
                        }
                      }

                      else
                      {
LABEL_142:
                      }

                      break;
                    }

                    if (v64 == ++v66)
                    {
                      v64 = [v62 countByEnumeratingWithState:&v144 objects:v177 count:16];
                      if (!v64)
                      {
                        goto LABEL_152;
                      }

                      goto LABEL_139;
                    }

                    goto LABEL_144;
                  }

                  if (qword_100229120 != -1)
                  {
                    dispatch_once(&qword_100229120, &stru_1001FB968);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229120 != -1)
                    {
                      dispatch_once(&qword_100229120, &stru_1001FB968);
                    }

                    v22 = qword_100229118;
                    v112 = sub_100163A30(NRDLocalDevice, v24);
                    _NRLogWithArgs(v22, 1, "%s%.30s:%-4d deferring creating link until a peer is discovered for %@", "", "[NRLinkManagerWired createLinkForNRUUIDs:]", 244, v112);

LABEL_32:
                  }
                }
              }

              else
              {
                if (qword_100229120 != -1)
                {
                  dispatch_once(&qword_100229120, &stru_1001FB968);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100229120 != -1)
                  {
                    dispatch_once(&qword_100229120, &stru_1001FB968);
                  }

                  _NRLogWithArgs(qword_100229118, 0, "%s%.30s:%-4d Deferring creating link for %@ as Wired is unsupported", "", "[NRLinkManagerWired createLinkForNRUUIDs:]", 220, v121);
                }
              }
            }
          }

          else
          {
            if (qword_100229120 != -1)
            {
              dispatch_once(&qword_100229120, &stru_1001FB968);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229120 != -1)
              {
                dispatch_once(&qword_100229120, &stru_1001FB968);
              }

              _NRLogWithArgs(qword_100229118, 0, "%s%.30s:%-4d Deferring creating link for disabled local device for %@", "", "[NRLinkManagerWired createLinkForNRUUIDs:]", 205, v24);
            }
          }
        }

        else
        {
          if (qword_100229120 != -1)
          {
            dispatch_once(&qword_100229120, &stru_1001FB968);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229120 != -1)
            {
              dispatch_once(&qword_100229120, &stru_1001FB968);
            }

            _NRLogWithArgs(qword_100229118, 0, "%s%.30s:%-4d Deferring creating link for invalid local device for %@", "", "[NRLinkManagerWired createLinkForNRUUIDs:]", 200, v24);
          }
        }

        v21 = v120 + 1;
      }

      while ((v120 + 1) != v118);
      v118 = [v113 countByEnumeratingWithState:&v164 objects:v182 count:16];
    }

    while (v118);
  }
}

void sub_1000E4284(uint64_t a1)
{
  if ([*(a1 + 32) state] == 9)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v4 = WeakRetained;
    [WeakRetained linkIsSuspended:*(a1 + 32)];
  }

  else
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      _NRLogWithArgs(qword_100229118, 16, "%s%.30s:%-4d %@: link %@ is not in suspended state anymore", "", "[NRLinkManagerWired linkIsSuspended:]_block_invoke", 706, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_1000E4584(uint64_t a1)
{
  if ([*(a1 + 32) state] == 8)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v4 = WeakRetained;
    [WeakRetained linkIsReady:*(a1 + 32)];
  }

  else
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      _NRLogWithArgs(qword_100229118, 16, "%s%.30s:%-4d %@: link %@ is not in ready state anymore", "", "[NRLinkManagerWired linkIsReady:]_block_invoke", 683, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_1000E48A4(uint64_t a1)
{
  if ([*(a1 + 32) state] == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v4 = WeakRetained;
    [WeakRetained linkIsAvailable:*(a1 + 32)];
  }

  else
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      _NRLogWithArgs(qword_100229118, 16, "%s%.30s:%-4d %@: link %@ is not in initial state anymore", "", "[NRLinkManagerWired linkIsAvailable:]_block_invoke", 660, *(a1 + 40), *(a1 + 32));
    }
  }
}

void sub_1000E51D8(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v2)
    {
      v4 = v2[8];
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 32) = v4 & 1;
  }
}

void sub_1000E5270(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 48) count];
    v3 = *(a1 + 56);
    if (v2)
    {
      if (!v3)
      {
        v47.version = 0;
        memset(&v47.retain, 0, 24);
        v47.info = a1;
        v4 = SCDynamicStoreCreate(kCFAllocatorDefault, @"NRLinkManagerWired", sub_1000E6C74, &v47);
        *(a1 + 56) = v4;
        if (!v4)
        {
          v24 = sub_1000E2538();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v26 = sub_1000E2538();
            _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.scdynamicStoreRef) != ((void*)0)", "", "[NRLinkManagerWired setupSCDWatcher]", 604);
          }

          v27 = _os_log_pack_size();
          v28 = *__error();
          v23 = _os_log_pack_fill(&v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v28, &_mh_execute_header, "%{public}s Assertion Failed: (self.scdynamicStoreRef) != ((void*)0)");
          goto LABEL_27;
        }

        SCDynamicStoreSetDisconnectCallBack();
      }

      v36 = v3;
      v5 = objc_alloc_init(NSMutableArray);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v37 = a1;
      v38 = *(a1 + 48);
      v6 = [v38 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v6)
      {
        v7 = v6;
        v40 = *v44;
        v39 = kSCEntNetIPv4;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v44 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v9 = *(*(&v43 + 1) + 8 * i);
            NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v9, v39);
            v11 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v9, kSCEntNetIPv6);
            v12 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v9, kSCEntNetLink);
            [v5 addObject:NetworkInterfaceEntity];
            [v5 addObject:v11];
            [v5 addObject:v12];
          }

          v7 = [v38 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v7);
      }

      if (SCDynamicStoreSetNotificationKeys(*(v37 + 56), v5, 0))
      {
        if (v36 || (v13 = *(v37 + 56), v14 = *(v37 + 24), LODWORD(v13) = SCDynamicStoreSetDispatchQueue(v13, v14), v14, v13))
        {
          v15 = *(v37 + 24);
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1000E57DC;
          v41[3] = &unk_1001FD060;
          v41[4] = v37;
          v42 = v5;
          v16 = v5;
          dispatch_async(v15, v41);

          return;
        }

        v29 = sub_1000E2538();
        v30 = _NRLogIsLevelEnabled();

        if (v30)
        {
          v31 = sub_1000E2538();
          _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: retval", "", "[NRLinkManagerWired setupSCDWatcher]", 631);
        }

        v32 = _os_log_pack_size();
        v33 = __error();
        v34 = _os_log_pack_fill(&v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v32, *v33, &_mh_execute_header, "%{public}s Assertion Failed: retval");
        *v34 = 136446210;
        *(v34 + 4) = "[NRLinkManagerWired setupSCDWatcher]";
LABEL_31:
        sub_1000E2538();
        _NRLogAbortWithPack();
      }

      v18 = sub_1000E2538();
      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        v20 = sub_1000E2538();
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: retval", "", "[NRLinkManagerWired setupSCDWatcher]", 627);
      }

      v21 = _os_log_pack_size();
      v22 = *__error();
      v23 = _os_log_pack_fill(&v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v22, &_mh_execute_header, "%{public}s Assertion Failed: retval");
LABEL_27:
      *v23 = 136446210;
      *(v23 + 4) = "[NRLinkManagerWired setupSCDWatcher]";
      goto LABEL_31;
    }

    if (v3)
    {
      SCDynamicStoreSetDispatchQueue(*(a1 + 56), 0);
      v17 = *(a1 + 56);
      if (v17)
      {
        CFRelease(v17);
        *(a1 + 56) = 0;
      }
    }
  }
}

void sub_1000E57DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[7];
    v3 = *(a1 + 40);
    v4 = v1;
    if (*(v4 + 3) != 1004 && v4[7] == v2)
    {
      v5 = v4;
      sub_1000E5864(v4, v3);
      v4 = v5;
    }
  }
}

void sub_1000E5864(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  dispatch_assert_queue_V2(v5);

  v142 = SCDynamicStoreCopyMultiple(*(a1 + 56), v3, 0);
  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  v6 = qword_100229118;
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    v8 = qword_100229118;
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d SCD update for NRLinkManagerWired: %@", "", "[NRLinkManagerWired processSCDUpdate:]", 407, v142);
  }

  v143 = a1;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  obj = v3;
  v9 = [(__CFArray *)obj countByEnumeratingWithState:&v180 objects:v196 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v181;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v181 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v180 + 1) + 8 * i);
        if ([v15 containsString:kSCEntNetIPv4])
        {
          v12 = 1;
        }

        else
        {
          v11 |= [v15 containsString:kSCEntNetIPv6];
        }
      }

      v10 = [(__CFArray *)obj countByEnumeratingWithState:&v180 objects:v196 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
    v12 = 0;
  }

  v135 = objc_alloc_init(NSMutableSet);
  if (v12)
  {
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v16 = obj;
    v17 = [(__CFArray *)v16 countByEnumeratingWithState:&v176 objects:v195 count:16];
    v18 = v143;
    if (v17)
    {
      v19 = v17;
      v20 = 0;
      v21 = *v177;
      v22 = kSCEntNetIPv4;
      v132 = v16;
      v23 = *v177;
      v134 = *v177;
      while (1)
      {
        if (v23 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v176 + 1) + 8 * v20);
        if ([v24 containsString:v22])
        {
          v138 = v20;
          v139 = v19;
          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          v25 = v18[6];
          v26 = [v25 countByEnumeratingWithState:&v172 objects:v194 count:16];
          if (!v26)
          {
            goto LABEL_73;
          }

          v27 = v26;
          v28 = *v173;
LABEL_30:
          v29 = 0;
          while (1)
          {
            if (*v173 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v172 + 1) + 8 * v29);
            if ([v24 containsString:v30])
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v25 countByEnumeratingWithState:&v172 objects:v194 count:16];
              v18 = v143;
              if (!v27)
              {
                goto LABEL_73;
              }

              goto LABEL_30;
            }
          }

          [v135 addObject:v30];
          v18 = v143;
          v31 = v143[8];
          [v31 setObject:0 forKeyedSubscript:v30];

          v136 = [(__CFDictionary *)v142 objectForKeyedSubscript:v24];
          v32 = [v136 objectForKeyedSubscript:kSCPropNetIPv4Addresses];
          v145 = objc_alloc_init(NSMutableArray);
          v168 = 0u;
          v169 = 0u;
          v170 = 0u;
          v171 = 0u;
          v33 = v32;
          v34 = [v33 countByEnumeratingWithState:&v168 objects:v193 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = 0;
            v37 = *v169;
            for (j = *v169; ; j = *v169)
            {
              if (j != v37)
              {
                objc_enumerationMutation(v33);
              }

              v39 = *(*(&v168 + 1) + 8 * v36);
              v188 = 0;
              v187 = 0;
              if (inet_pton(2, [v39 UTF8String], &v187 + 4) == 1)
              {
                v40 = bswap32(HIDWORD(v187));
                if (HIWORD(v40) == 43518)
                {
                  v41 = v143[12];
                  v42 = [v41 containsObject:v30];

                  if (v42)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                  v45 = (v40 & 0xFF000000) == 0 || (v40 & 0xFF000000) == 2130706432 || v40 >> 28 == 14;
                  v46 = v40 & 0xFFFFFFF8;
                  if (!v45 && HIDWORD(v187) != -1 && v46 != -1073741824)
                  {
LABEL_45:
                    v43 = [NWAddressEndpoint endpointWithHostname:v39 port:@"0"];
                    [v145 addObject:v43];
LABEL_66:

                    goto LABEL_67;
                  }
                }

                if (qword_100229120 != -1)
                {
                  dispatch_once(&qword_100229120, &stru_1001FB968);
                }

                v49 = qword_100229118;
                v50 = _NRLogIsLevelEnabled();

                if (v50)
                {
                  if (qword_100229120 != -1)
                  {
                    dispatch_once(&qword_100229120, &stru_1001FB968);
                  }

                  v43 = qword_100229118;
                  _NRLogWithArgs(v43, 1, "%s%.30s:%-4d Ignoring ipv4 address: %@", "", "[NRLinkManagerWired processSCDUpdate:]", 446, v39);
                  goto LABEL_66;
                }
              }

LABEL_67:
              ++v36;
              v18 = v143;
              if (v36 >= v35)
              {
                v51 = [v33 countByEnumeratingWithState:&v168 objects:v193 count:16];
                if (!v51)
                {
                  break;
                }

                v35 = v51;
                v36 = 0;
              }
            }
          }

          if ([v145 count])
          {
            v52 = v18[8];
            [v52 setObject:v145 forKeyedSubscript:v30];
          }

          v16 = v132;
LABEL_73:

          v20 = v138;
          v19 = v139;
          v22 = kSCEntNetIPv4;
          v21 = v134;
        }

        if (++v20 >= v19)
        {
          v53 = [(__CFArray *)v16 countByEnumeratingWithState:&v176 objects:v195 count:16];
          if (!v53)
          {
            break;
          }

          v19 = v53;
          v20 = 0;
        }

        v23 = *v177;
      }
    }
  }

  v54 = v143;
  if (v11)
  {
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v55 = obj;
    v56 = [(__CFArray *)v55 countByEnumeratingWithState:&v164 objects:v192 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v165;
      v59 = kSCEntNetIPv6;
      v130 = v55;
      v140 = *v165;
      do
      {
        v60 = 0;
        v131 = v57;
        do
        {
          if (*v165 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v62 = *(*(&v164 + 1) + 8 * v60);
          if ([v62 containsString:v59])
          {
            v162 = 0u;
            v163 = 0u;
            v160 = 0u;
            v161 = 0u;
            v63 = v54[6];
            v64 = [v63 countByEnumeratingWithState:&v160 objects:v191 count:16];
            if (!v64)
            {
              goto LABEL_84;
            }

            v65 = v64;
            v66 = *v161;
            while (1)
            {
              for (k = 0; k != v65; k = k + 1)
              {
                if (*v161 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = *(*(&v160 + 1) + 8 * k);
                if ([v62 containsString:v68])
                {
                  [v135 addObject:v68];
                  v69 = v54[9];
                  [v69 setObject:0 forKeyedSubscript:v68];

                  v61 = [(__CFDictionary *)v142 objectForKeyedSubscript:v62];
                  v70 = [v61 objectForKeyedSubscript:kSCPropNetIPv6Addresses];
                  v71 = [v61 objectForKeyedSubscript:kSCPropNetIPv6Flags];
                  v72 = [v70 count];
                  v146 = v71;
                  if (v72 == [v71 count])
                  {
                    v133 = v61;
                    v73 = [v70 count];
                    v137 = objc_alloc_init(NSMutableArray);
                    if (v73)
                    {
                      v74 = 0;
                      while (1)
                      {
                        v76 = [v146 objectAtIndexedSubscript:v74];
                        v77 = [v70 objectAtIndexedSubscript:v74];
                        v78 = [v76 unsignedIntValue];
                        if ((v78 & 0x101F) != 0)
                        {
                          v79 = v78;
                          if (qword_100229120 != -1)
                          {
                            dispatch_once(&qword_100229120, &stru_1001FB968);
                          }

                          if (_NRLogIsLevelEnabled())
                          {
                            if (qword_100229120 != -1)
                            {
                              dispatch_once(&qword_100229120, &stru_1001FB968);
                            }

                            _NRLogWithArgs(qword_100229118, 1, "%s%.30s:%-4d Ignoring ipv6 address: %@ (%#x)", "", "[NRLinkManagerWired processSCDUpdate:]", 489, v77, v79);
                          }

                          goto LABEL_109;
                        }

                        v188 = 0;
                        v187 = 0;
                        v190 = 0;
                        v189 = 0;
                        if (inet_pton(30, [v77 UTF8String], &v188) == 1)
                        {
                          break;
                        }

LABEL_109:

                        if (v73 == ++v74)
                        {
                          goto LABEL_135;
                        }
                      }

                      v80 = v188 | HIDWORD(v188) | v189;
                      v81 = v80 == 0;
                      if (!v80 && !HIDWORD(v189))
                      {
LABEL_120:
                        if (qword_100229120 != -1)
                        {
                          dispatch_once(&qword_100229120, &stru_1001FB968);
                        }

                        v82 = qword_100229118;
                        v83 = _NRLogIsLevelEnabled();

                        if (!v83)
                        {
                          goto LABEL_109;
                        }

                        if (qword_100229120 != -1)
                        {
                          dispatch_once(&qword_100229120, &stru_1001FB968);
                        }

                        v75 = qword_100229118;
                        _NRLogWithArgs(v75, 1, "%s%.30s:%-4d Ignoring ipv6 address: %@", "", "[NRLinkManagerWired processSCDUpdate:]", 505, v77);
                        goto LABEL_108;
                      }

                      if (HIDWORD(v189) != 0x1000000)
                      {
                        v81 = 0;
                      }

                      v84 = v188 & 0xC0FF;
                      if (!v81 && v188 != 255)
                      {
                        if (v84 == 33022)
                        {
LABEL_133:
                          v85 = v143[12];
                          v86 = [v85 containsObject:v68];

                          if ((v86 & 1) == 0)
                          {
                            goto LABEL_120;
                          }
                        }

                        v75 = [NWAddressEndpoint endpointWithHostname:v77 port:@"0"];
                        [v137 addObject:v75];
LABEL_108:

                        goto LABEL_109;
                      }

                      if (v84 != 33022)
                      {
                        goto LABEL_120;
                      }

                      goto LABEL_133;
                    }

LABEL_135:
                    v54 = v143;
                    if ([v137 count])
                    {
                      v87 = v143[9];
                      [v87 setObject:v137 forKeyedSubscript:v68];
                    }

                    v55 = v130;
                    v57 = v131;
                    v61 = v133;
                  }

                  else
                  {
                    if (qword_100229120 != -1)
                    {
                      dispatch_once(&qword_100229120, &stru_1001FB968);
                    }

                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_100229120 != -1)
                      {
                        dispatch_once(&qword_100229120, &stru_1001FB968);
                      }

                      _NRLogWithArgs(qword_100229118, 17, "Mismatch between ipv6 address and flags array: %@ %@", v70, v71);
                    }
                  }

                  goto LABEL_84;
                }
              }

              v65 = [v63 countByEnumeratingWithState:&v160 objects:v191 count:16];
              if (!v65)
              {
LABEL_84:

                v59 = kSCEntNetIPv6;
                v58 = v140;
                break;
              }
            }
          }

          v60 = v60 + 1;
        }

        while (v60 != v57);
        v57 = [(__CFArray *)v55 countByEnumeratingWithState:&v164 objects:v192 count:16];
      }

      while (v57);
    }
  }

  v88 = v54[12];
  v89 = [v88 count];

  if (v89)
  {
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v141 = v135;
    v90 = [v141 countByEnumeratingWithState:&v156 objects:v186 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v157;
      do
      {
        for (m = 0; m != v91; m = m + 1)
        {
          if (*v157 != v92)
          {
            objc_enumerationMutation(v141);
          }

          v97 = *(*(&v156 + 1) + 8 * m);
          v152 = 0u;
          v153 = 0u;
          v154 = 0u;
          v155 = 0u;
          v98 = obj;
          v99 = [(__CFArray *)v98 countByEnumeratingWithState:&v152 objects:v185 count:16];
          if (!v99)
          {
LABEL_159:

LABEL_160:
            if (qword_100229120 != -1)
            {
              dispatch_once(&qword_100229120, &stru_1001FB968);
            }

            v107 = qword_100229118;
            v108 = _NRLogIsLevelEnabled();

            if (v108)
            {
              if (qword_100229120 != -1)
              {
                dispatch_once(&qword_100229120, &stru_1001FB968);
              }

              v94 = qword_100229118;
              _NRLogWithArgs(v94, 1, "%s%.30s:%-4d ignoring inactive interface: %@", "", "[NRLinkManagerWired processSCDUpdate:]", 542, v97);
            }

            v95 = v143[8];
            [v95 setObject:0 forKeyedSubscript:v97];

            v96 = v143[9];
            [v96 setObject:0 forKeyedSubscript:v97];

            continue;
          }

          v100 = v99;
          v101 = *v153;
LABEL_151:
          v102 = 0;
          while (1)
          {
            if (*v153 != v101)
            {
              objc_enumerationMutation(v98);
            }

            v103 = *(*(&v152 + 1) + 8 * v102);
            if ([v103 containsString:kSCEntNetLink])
            {
              if ([v103 containsString:v97])
              {
                break;
              }
            }

            if (v100 == ++v102)
            {
              v100 = [(__CFArray *)v98 countByEnumeratingWithState:&v152 objects:v185 count:16];
              if (!v100)
              {
                goto LABEL_159;
              }

              goto LABEL_151;
            }
          }

          v104 = [(__CFDictionary *)v142 objectForKeyedSubscript:v103];
          v105 = [v104 objectForKeyedSubscript:kSCPropNetLinkActive];
          v106 = [v105 BOOLValue];

          if ((v106 & 1) == 0)
          {
            goto LABEL_160;
          }
        }

        v91 = [v141 countByEnumeratingWithState:&v156 objects:v186 count:16];
      }

      while (v91);
    }

    v54 = v143;
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v147 = v135;
  v109 = [v147 countByEnumeratingWithState:&v148 objects:v184 count:16];
  v110 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (v109)
  {
    v111 = v109;
    v112 = *v149;
    do
    {
      for (n = 0; n != v111; n = n + 1)
      {
        if (*v149 != v112)
        {
          objc_enumerationMutation(v147);
        }

        v115 = *(*(&v148 + 1) + 8 * n);
        v116 = objc_alloc_init(NSMutableArray);
        v117 = *(v54 + v110[825]);
        [v117 objectForKeyedSubscript:v115];
        v119 = v118 = v54;

        if (v119)
        {
          v120 = *(v118 + v110[825]);
          v121 = [v120 objectForKeyedSubscript:v115];
          [v116 addObjectsFromArray:v121];
        }

        v122 = v118[9];
        v123 = [v122 objectForKeyedSubscript:v115];

        if (v123)
        {
          v124 = v118[9];
          v125 = [v124 objectForKeyedSubscript:v115];
          [v116 addObjectsFromArray:v125];
        }

        v114 = v118[10];
        [v114 setObject:v116 forKeyedSubscript:v115];

        v54 = v118;
        v110 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }

      v111 = [v147 countByEnumeratingWithState:&v148 objects:v184 count:16];
    }

    while (v111);
  }

  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  v126 = qword_100229118;
  v127 = _NRLogIsLevelEnabled();

  if (v127)
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    v128 = qword_100229118;
    v129 = v54[10];
    _NRLogWithArgs(v128, 1, "%s%.30s:%-4d local endpoint list %@", "", "[NRLinkManagerWired processSCDUpdate:]", 561, v129);
  }

  sub_1000E2BCC(v54);
}

void sub_1000E6A34(id a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = v3;
    if (*(v3 + 3) != 1004 && v3[7] == a1)
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229120 != -1)
        {
          dispatch_once(&qword_100229120, &stru_1001FB968);
        }

        _NRLogWithArgs(qword_100229118, 16, "%s%.30s:%-4d SCD server restarted", "", "scdDisconnectCallback", 577);
      }

      v5 = v4[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E6B98;
      block[3] = &unk_1001FD3C8;
      v7 = v4;
      dispatch_async(v5, block);
    }
  }
}

void sub_1000E6B98(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ((v3 = *(v2 + 56)) == 0 || (SCDynamicStoreSetDispatchQueue(v3, 0), (v2 = *(a1 + 32)) != 0) && ((v4 = *(v2 + 56)) == 0 || (CFRelease(v4), (v5 = *(a1 + 32)) != 0) && (*(v5 + 56) = 0, (v2 = *(a1 + 32)) != 0))))
  {
    v6 = *(v2 + 64);
  }

  else
  {
    v6 = 0;
  }

  [v6 removeAllObjects];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 72);
  }

  else
  {
    v8 = 0;
  }

  [v8 removeAllObjects];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 80);
  }

  else
  {
    v10 = 0;
  }

  [v10 removeAllObjects];
  v11 = *(a1 + 32);

  sub_1000E5270(v11);
}

void sub_1000E6C74(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    if (*(v5 + 3) != 1004 && *(v5 + 7) == a1)
    {
      v6 = v5;
      sub_1000E5864(v5, a2);
      v5 = v6;
    }
  }
}

void sub_1000E6CEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (v9)
    {
      v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v12 = [*(a1 + 88) objectForKeyedSubscript:v9];
      if (v7 && [v7 count])
      {
        if (v8)
        {
          v35 = a1;
          v36 = v10;
          if (!v12)
          {
            v12 = objc_alloc_init(NRDWiredPeer);
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = v7;
          obj = v7;
          v13 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v40;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v40 != v15)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = [*(*(&v39 + 1) + 8 * i) hostname];
                objc_opt_self();
                if (qword_100228E88 != -1)
                {
                  dispatch_once(&qword_100228E88, &stru_1001FA180);
                }

                v19 = qword_100228E80;
                v20 = @"62743";
                if (!v19)
                {
                  v20 = 0;
                }

                v21 = v20;
                v22 = [NWAddressEndpoint endpointWithHostname:v18 port:v21];

                v23 = [(NRDWiredPeer *)v12 interfaceToPeerAddressDictionary];
                v24 = [v23 objectForKeyedSubscript:v8];

                if (!v24 || ([v24 containsObject:v22] & 1) == 0)
                {
                  v25 = objc_alloc_init(NSMutableArray);
                  if ([v24 count])
                  {
                    [v25 addObjectsFromArray:v24];
                  }

                  [v25 addObject:v22];
                  v17 = [(NRDWiredPeer *)v12 interfaceToPeerAddressDictionary];
                  [v17 setObject:v25 forKeyedSubscript:v8];
                }
              }

              v14 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
            }

            while (v14);
          }

          v10 = v36;
          v7 = v37;
          a1 = v35;
          v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        }
      }

      else if (v8)
      {
        v26 = [(NRDWiredPeer *)v12 interfaceToPeerAddressDictionary];
        [v26 setObject:0 forKeyedSubscript:v8];
      }

      else
      {
        [(NRDWiredPeer *)v12 setInterfaceToPeerAddressDictionary:0];
      }

      v27 = [(NRDWiredPeer *)v12 interfaceToPeerAddressDictionary];
      v28 = [v27 count];

      if (v28)
      {
        v29 = v12;
      }

      else
      {
        v29 = 0;
      }

      [*(a1 + v11[828]) setObject:v29 forKeyedSubscript:v10];
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229120 != -1)
        {
          dispatch_once(&qword_100229120, &stru_1001FB968);
        }

        v30 = *(a1 + v11[828]);
        v31 = qword_100229118;
        _NRLogWithArgs(v31, 1, "%s%.30s:%-4d updated peer endpoint state %@", "", "[NRLinkManagerWired setPeerEndpoints:interfaceName:nrUUID:]", 363, v30);
      }

      sub_1000E710C(a1);
    }

    else
    {
      v32 = sub_1000E2538();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v34 = sub_1000E2538();
        _NRLogWithArgs(v34, 17, "%s called with null nrUUID", "[NRLinkManagerWired setPeerEndpoints:interfaceName:nrUUID:]");
      }
    }
  }
}

void sub_1000E710C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 88) allValues];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 interfaceToPeerAddressDictionary];
        v10 = [v9 count];

        if (v10)
        {
          v11 = [v8 interfaceToPeerAddressDictionary];
          v12 = [v11 allKeys];
          [v2 addObjectsFromArray:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 48) isEqualToSet:v2])
  {
    v13 = sub_10016CD90(NRDLocalDevice);
    if ([v13 count])
    {
      sub_1000E2C58(a1, v13);
    }

    v14 = sub_10016CBA0(NRDLocalDevice);
    if ([v14 count])
    {
      sub_1000E2C58(a1, v14);
    }
  }

  else
  {
    objc_storeStrong((a1 + 48), v2);
    sub_1000E5270(a1);
  }
}

void sub_1000E7304(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = SCNetworkInterfaceCopyAll();
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        InterfaceType = SCNetworkInterfaceGetInterfaceType(ValueAtIndex);
        if (ValueAtIndex && CFStringCompare(InterfaceType, kSCNetworkInterfaceTypeEthernet, 0) == kCFCompareEqualTo)
        {
          BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
          Copy = CFStringCreateCopy(kCFAllocatorDefault, BSDName);
          [v2 addObject:Copy];
        }
      }
    }

    CFRelease(v4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7478;
  block[3] = &unk_1001FD088;
  v12 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v2;
  v17 = *(a1 + 48);
  v13 = v2;
  dispatch_async(v12, block);
}

void sub_1000E7478(uint64_t a1)
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v33;
    p_vtable = (NRSCDInterfaceConfig + 24);
    v23 = *v33;
    do
    {
      v6 = 0;
      v24 = v3;
      do
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = sub_100163A30((p_vtable + 37), *(*(&v32 + 1) + 8 * v6));
        v8 = v7;
        if (v7 && (*(v7 + 48) & 8) != 0)
        {
          v26 = v6;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = *(a1 + 40);
          v9 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v29;
            do
            {
              v12 = 0;
              do
              {
                if (*v29 != v11)
                {
                  objc_enumerationMutation(v27);
                }

                v14 = *(*(&v28 + 1) + 8 * v12);
                v15 = _SCNetworkInterfaceCreateWithBSDName();
                if (v15)
                {
                  v16 = v15;
                  if (_SCNetworkInterfaceIsCarPlay() || sub_10013A9E4(v14) == 1)
                  {
                    v17 = sub_100173200(v8);
                    v18 = *(a1 + 48);
                    v19 = *(v8 + 24);
                    sub_1000E6CEC(v18, v17, v14, v19);

                    v20 = *(a1 + 48);
                    if (v20 && *(v20 + 96))
                    {
                      goto LABEL_15;
                    }

                    v21 = objc_alloc_init(NSMutableSet);
                    v22 = *(a1 + 48);
                    if (v22)
                    {
                      objc_storeStrong((v22 + 96), v21);
                    }

                    v20 = *(a1 + 48);
                    if (v20)
                    {
LABEL_15:
                      v13 = *(v20 + 96);
                    }

                    else
                    {
                      v13 = 0;
                    }

                    [v13 addObject:{v14, v23}];
                  }

                  CFRelease(v16);
                }

                v12 = v12 + 1;
              }

              while (v10 != v12);
              v10 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v10);
          }

          v4 = v23;
          v3 = v24;
          p_vtable = NRSCDInterfaceConfig.vtable;
          v6 = v26;
        }

        v6 = v6 + 1;
      }

      while (v6 != v3);
      v3 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v3);
  }
}

id sub_1000E7D20()
{
  if (qword_100229130 != -1)
  {
    dispatch_once(&qword_100229130, &stru_1001FB988);
  }

  v1 = qword_100229128;

  return v1;
}

void sub_1000E7D74(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229128;
  qword_100229128 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000E83DC()
{
  if (qword_100229160 != -1)
  {
    dispatch_once(&qword_100229160, &stru_1001FBC40);
  }

  v1 = qword_100229158;

  return v1;
}

void sub_1000E8430(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229158;
  qword_100229158 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000E8568(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 160) ikeClassDEstablished])
  {
    v4 = *(a1 + 656);
    if (v4)
    {
      v4 = v4[4];
    }

    v5 = v4;
    v6 = [v5 containsObject:v3];

    if (v6)
    {
      v7 = *(a1 + 656);
      v8 = v3;
      if (v7)
      {
        if (BYTE1(v7[1].isa))
        {
          v7 = 0;
        }

        else
        {
          objc_opt_self();
          if (qword_1002291A0 != -1)
          {
            dispatch_once(&qword_1002291A0, &stru_1001FBD88);
          }

          v7 = sub_10011E8EC(qword_100229198, v8);
        }
      }

      v9 = *(a1 + 656);
      v10 = v8;
      v11 = v10;
      if (!v9 || (*(v9 + 9) & 1) != 0)
      {

        v12 = 0;
LABEL_45:

        goto LABEL_46;
      }

      objc_opt_self();
      if (qword_1002291A0 != -1)
      {
        dispatch_once(&qword_1002291A0, &stru_1001FBD88);
      }

      v13 = qword_100229198;
      v14 = v11;
      v15 = v14;
      if (v13)
      {
        if (v14)
        {
          v16 = [*(v13 + 32) objectForKeyedSubscript:v14];
          v17 = v16;
          if (v16)
          {
            v12 = sub_1001198B4(*(v16 + 48));
LABEL_23:

LABEL_24:
            if (v7 && v12)
            {
              v20 = [NWAddressEndpoint endpointWithCEndpoint:v7];
              v21 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
              v22 = [*(a1 + 688) objectForKeyedSubscript:v15];
              v46 = v21;
              if (v21)
              {
                v23 = *(v21 + 144);
              }

              else
              {
                v23 = 0;
              }

              v24 = v23;
              v25 = [v24 usesTLS];

              v45 = v20;
              if (v25)
              {
                if (v22)
                {
                  if ((*(v22 + 16) & 0x10) != 0)
                  {
                    v26 = 3;
                  }

                  else
                  {
                    v26 = 4;
                  }
                }

                else
                {
                  v26 = 4;
                }

                v27 = [*(a1 + 160) copyLocalOuterEndpoint:v26];
                v28 = [v27 hostname];
                v29 = [v20 port];
                v30 = [NWAddressEndpoint endpointWithHostname:v28 port:v29];
              }

              else
              {
                v27 = [v20 port];
                v30 = sub_1001672A0(v46, v27);
              }

              v31 = [v30 port];
              v32 = sub_10013D308(v30, [v31 intValue], 0);

              v33 = objc_alloc_init(NSMutableData);
              v42 = [v15 dataUsingEncoding:4];
              NRTLVAddData();
              NRTLVAddData();
              NRTLVAddData();
              v43 = v32;
              if (v22)
              {
                v34 = *(v22 + 24);
              }

              else
              {
                v34 = 0;
              }

              v44 = v30;
              v35 = v34;

              if (v35)
              {
                v47[0] = 0;
                v47[1] = 0;
                if (v22)
                {
                  v36 = *(v22 + 24);
                }

                else
                {
                  v36 = 0;
                }

                v37 = v36;
                [v37 getUUIDBytes:v47];

                NRTLVAdd();
              }

              v38 = objc_alloc_init(NSMutableData);
              NRTLVAddData();
              v39 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
              sub_10002AB38(v39, 21, v38);
              sub_10002C0E8(v39);
              v40 = *(a1 + 656);
              v41 = v15;
              if (v40 && (*(v40 + 9) & 1) == 0)
              {
                [*(v40 + 32) removeObject:v41];
              }

              [*(a1 + 688) setObject:0 forKeyedSubscript:v41];
            }

            goto LABEL_45;
          }

LABEL_22:
          v12 = 0;
          goto LABEL_23;
        }

        v18 = sub_100119370();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v17 = sub_100119370();
          _NRLogWithArgs(v17, 17, "%s called with null asName", "[NRApplicationServiceManager copyListenerPublicKeyForASName:]");
          goto LABEL_22;
        }
      }

      v12 = 0;
      goto LABEL_24;
    }
  }

LABEL_46:
}

void sub_1000E8C70(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    v3 = a1;
    if (*(a1 + 656))
    {
      v6 = *(a1 + 664);
      if (!v6)
      {
        v7 = +[NSUUID UUID];
        v8 = *(v3 + 664);
        *(v3 + 664) = v7;

        v6 = *(v3 + 664);
      }

      v182[0] = 0;
      v182[1] = 0;
      [v6 getUUIDBytes:v182];
      v9 = *(v3 + 656);
      if (v9)
      {
        v9 = v9[2];
      }

      v10 = v9;
      v11 = [v10 count];

      v159 = v3;
      if (v11 && a2)
      {
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v12 = *(v3 + 656);
        v149 = a3;
        if (v12)
        {
          v12 = v12[2];
        }

        obj = v12;
        v13 = [obj countByEnumeratingWithState:&v170 objects:v181 count:16];
        if (v13)
        {
          v14 = v13;
          v160 = *v171;
          do
          {
            v15 = 0;
            v150 = v14;
            do
            {
              if (*v171 != v160)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v170 + 1) + 8 * v15);
              if (!sub_10011F034(*(v3 + 656), v19) || (v20 = *(v3 + 160)) != 0 && (v21 = v20, v22 = [*(v3 + 160) type], v21, v22 != 4))
              {
                [v19 UTF8String];
                application_service = nw_endpoint_create_application_service();
                sub_1000E9DD8(v3, application_service);
                v27 = [*(v3 + 160) ikeClassDEstablished];
                v28 = *(v3 + 656);
                v18 = v19;
                v16 = application_service;
                if (v27)
                {
                  if (v28 && (*(v28 + 9) & 1) == 0)
                  {
                    objc_opt_self();
                    if (qword_1002291A0 != -1)
                    {
                      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                    }

                    v29 = qword_100229198;
                    v155 = v18;
                    v17 = v18;
                    v30 = v16;
                    v31 = v30;
                    if (v29)
                    {
                      if (v30)
                      {
                        dispatch_assert_queue_V2(*(v29 + 16));
                        v32 = [*(v29 + 40) objectForKeyedSubscript:v17];
                        if ([v32 count])
                        {
                          v151 = v16;
                          v153 = v17;
                          v177 = 0u;
                          v178 = 0u;
                          v175 = 0u;
                          v176 = 0u;
                          v32 = v32;
                          v33 = [v32 countByEnumeratingWithState:&v175 objects:v184 count:16];
                          if (v33)
                          {
                            v34 = v33;
                            v35 = *v176;
                            do
                            {
                              for (i = 0; i != v34; i = i + 1)
                              {
                                if (*v176 != v35)
                                {
                                  objc_enumerationMutation(v32);
                                }

                                v37 = *(*(&v175 + 1) + 8 * i);
                                if (v37)
                                {
                                  if (!*(v37 + 72))
                                  {
                                    v38 = nw_array_create();
                                    objc_storeStrong((v37 + 72), v38);
                                  }

                                  nw_array_append();
                                  v39 = *(v37 + 64);
                                  v40 = v39 + 16;
                                  v41 = *(v37 + 72);
                                }

                                else
                                {

                                  nw_array_append();
                                  v39 = 0;
                                  v41 = 0;
                                  v40 = 16;
                                }

                                (*v40)(v39, v41);
                              }

                              v34 = [v32 countByEnumeratingWithState:&v175 objects:v184 count:16];
                            }

                            while (v34);
                          }

                          v16 = v151;
                          v17 = v153;
                        }

LABEL_16:

                        v3 = v159;
                      }

                      else
                      {
                        v64 = sub_100119370();
                        IsLevelEnabled = _NRLogIsLevelEnabled();

                        if (IsLevelEnabled)
                        {
                          v32 = sub_100119370();
                          _NRLogWithArgs(v32, 17, "%s called with null endpoint", "[NRApplicationServiceManager reportBrowseResultAddedForASName:endpoint:]");
                          goto LABEL_16;
                        }
                      }
                    }

                    v14 = v150;
                    v18 = v155;
                  }

LABEL_19:
                  goto LABEL_20;
                }

                if (v28 && (*(v28 + 9) & 1) == 0)
                {
                  objc_opt_self();
                  if (qword_1002291A0 != -1)
                  {
                    dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                  }

                  v42 = qword_100229198;
                  v154 = v18;
                  v43 = v16;
                  v44 = v43;
                  if (v42)
                  {
                    if (v43)
                    {
                      dispatch_assert_queue_V2(*(v42 + 16));
                      v45 = [*(v42 + 40) objectForKeyedSubscript:v154];
                      if ([v45 count])
                      {
                        v156 = v18;
                        v152 = v16;
                        v177 = 0u;
                        v178 = 0u;
                        v175 = 0u;
                        v176 = 0u;
                        v45 = v45;
                        v46 = [v45 countByEnumeratingWithState:&v175 objects:v184 count:16];
                        if (v46)
                        {
                          v47 = v46;
                          v48 = *v176;
                          do
                          {
                            for (j = 0; j != v47; j = j + 1)
                            {
                              if (*v176 != v48)
                              {
                                objc_enumerationMutation(v45);
                              }

                              v50 = *(*(&v175 + 1) + 8 * j);
                              if (v50 && *(v50 + 72))
                              {
                                nw_array_remove_object();
                                v51 = *(v50 + 64);
                                v51[2](v51, *(v50 + 72));
                              }
                            }

                            v47 = [v45 countByEnumeratingWithState:&v175 objects:v184 count:16];
                          }

                          while (v47);
                        }

                        v16 = v152;
                        v18 = v156;
                      }

LABEL_67:

                      v3 = v159;
                    }

                    else
                    {
                      v66 = sub_100119370();
                      v67 = _NRLogIsLevelEnabled();

                      if (v67)
                      {
                        v45 = sub_100119370();
                        _NRLogWithArgs(v45, 17, "%s called with null endpoint", "[NRApplicationServiceManager reportBrowseResultRemovedForASName:endpoint:]");
                        goto LABEL_67;
                      }
                    }
                  }

                  v14 = v150;
                }

                if (sub_10011F2E4(*(v3 + 656), v18))
                {
                  v52 = v18;
                  v53 = _NRCopyLogObjectForNRUUID();
                  v54 = _NRLogIsLevelEnabled();

                  if (v54)
                  {
                    v55 = *(v3 + 96);
                    v56 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v56, 0, "%s%.30s:%-4d not starting QR link for %@", "", "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]", 9151, v52);
                  }
                }

                else if (*(v3 + 56) == 1)
                {
                  v57 = v18;
                  v58 = _NRCopyLogObjectForNRUUID();
                  v59 = _NRLogIsLevelEnabled();

                  if (v59)
                  {
                    v60 = *(v3 + 96);
                    v61 = _NRCopyLogObjectForNRUUID();
                    v62 = *(v3 + 656);
                    if (v62)
                    {
                      v62 = v62[2];
                    }

                    v63 = v62;
                    _NRLogWithArgs(v61, 0, "%s%.30s:%-4d starting QR link for ongoing AS browse operations %@", "", "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]", 9153, v63);
                  }

                  sub_1000E9F0C(v3, v57);
                  if ((*(v3 + 71) & 1) == 0)
                  {
                    *(v3 + 71) = 1;
                    [*(v3 + 224) assertAgentWithOptions:0];
                  }
                }

                goto LABEL_19;
              }

              v23 = _NRCopyLogObjectForNRUUID();
              v24 = _NRLogIsLevelEnabled();

              if (v24)
              {
                v25 = *(v3 + 96);
                v16 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v16, 0, "%s%.30s:%-4d not using QR link for ASName %@", "", "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]", 9140, v19);

                goto LABEL_19;
              }

LABEL_20:
              v15 = v15 + 1;
            }

            while (v15 != v14);
            v14 = [obj countByEnumeratingWithState:&v170 objects:v181 count:16];
          }

          while (v14);
        }

        a3 = v149;
      }

      v68 = *(v3 + 656);
      if (v68)
      {
        v68 = v68[3];
      }

      v69 = v68;
      v70 = [v69 count];

      if (v70 && a3)
      {
        v168 = 0u;
        v169 = 0u;
        v166 = 0u;
        v167 = 0u;
        v71 = *(v3 + 656);
        if (v71)
        {
          v71 = v71[3];
        }

        v72 = v71;
        v73 = [v72 countByEnumeratingWithState:&v166 objects:v180 count:16];
        if (v73)
        {
          v74 = v73;
          v75 = *v167;
          obja = v72;
          v161 = *v167;
          do
          {
            for (k = 0; k != v74; k = k + 1)
            {
              if (*v167 != v75)
              {
                objc_enumerationMutation(v72);
              }

              v79 = *(*(&v166 + 1) + 8 * k);
              if (sub_10011F034(*(v3 + 656), v79))
              {
                v80 = *(v3 + 160);
                if (!v80 || (v81 = v80, v82 = [*(v3 + 160) type], v81, v82 == 4))
                {
                  v83 = _NRCopyLogObjectForNRUUID();
                  v84 = _NRLogIsLevelEnabled();

                  if (v84)
                  {
                    v85 = *(v3 + 96);
                    v86 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v86, 0, "%s%.30s:%-4d not using QR link for ASName %@", "", "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]", 9169, v79);
                  }

                  continue;
                }
              }

              if (sub_10011EE44(*(v3 + 656), v79))
              {
                v87 = _NRCopyLogObjectForNRUUID();
                v88 = _NRLogIsLevelEnabled();

                if (v88)
                {
                  v89 = *(v3 + 96);
                  v90 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v90, 0, "%s%.30s:%-4d asName %@ requires classC connection", "", "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]", 9173, v79);
                }

                v91 = *(v3 + 160);
                if ([v91 ikeClassDEstablished])
                {
                  v92 = [*(v3 + 160) ikeClassCEstablished];

                  if ((v92 & 1) == 0)
                  {
                    v93 = _NRCopyLogObjectForNRUUID();
                    v94 = _NRLogIsLevelEnabled();

                    if (v94)
                    {
                      v95 = *(v3 + 96);
                      v96 = _NRCopyLogObjectForNRUUID();
                      _NRLogWithArgs(v96, 0, "%s%.30s:%-4d not resolving asName %@ as classC is not connected", "", "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]", 9175, v79);
                    }

                    *(v3 + 73) = 1;
                    continue;
                  }
                }

                else
                {
                }
              }

              if ([*(v3 + 160) ikeClassDEstablished])
              {
                v97 = v79;
                v98 = *(v3 + 656);
                v99 = v97;
                if (!v98 || (*(v98 + 9) & 1) != 0)
                {
                  goto LABEL_152;
                }

                objc_opt_self();
                if (qword_1002291A0 != -1)
                {
                  dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                }

                v100 = qword_100229198;
                v101 = v99;
                if (!v100)
                {
                  goto LABEL_151;
                }

                v102 = [*(v100 + 48) objectForKeyedSubscript:v101];
                if (![v102 count])
                {
                  goto LABEL_150;
                }

                if (*(v100 + 8) == 1)
                {
                  if ((sub_10011E694(v100, v101) & 1) == 0)
                  {
                    goto LABEL_155;
                  }

LABEL_150:

LABEL_151:
LABEL_152:

                  v120 = _NRCopyLogObjectForNRUUID();
                  v121 = _NRLogIsLevelEnabled();

                  v75 = v161;
                  if (v121)
                  {
                    v122 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v122, 0, "%s%.30s:%-4d ignoring resolve request for %@ as they are complete", "", "[NRDDeviceConductor sendResolveRequestForASName:]", 9357, v99);
                    goto LABEL_95;
                  }
                }

                else
                {
                  v177 = 0u;
                  v178 = 0u;
                  v175 = 0u;
                  v176 = 0u;
                  v113 = v102;
                  v114 = [v113 countByEnumeratingWithState:&v175 objects:v184 count:16];
                  if (!v114)
                  {
LABEL_149:

                    v72 = obja;
                    goto LABEL_150;
                  }

                  v115 = v114;
                  v116 = *v176;
LABEL_136:
                  if (*v176 == v116)
                  {
                    v117 = *(&v175 + 1);
                    while (*v117 && *(*v117 + 64) == 1)
                    {
                      v117 += 8;
                      if (!--v115)
                      {
                        goto LABEL_148;
                      }
                    }
                  }

                  else
                  {
                    v118 = 0;
                    while (1)
                    {
                      if (*v176 != v116)
                      {
                        objc_enumerationMutation(v113);
                      }

                      v119 = *(*(&v175 + 1) + 8 * v118);
                      if (!v119 || (*(v119 + 64) & 1) == 0)
                      {
                        break;
                      }

                      if (v115 == ++v118)
                      {
LABEL_148:
                        v115 = [v113 countByEnumeratingWithState:&v175 objects:v184 count:16];
                        if (v115)
                        {
                          goto LABEL_136;
                        }

                        goto LABEL_149;
                      }
                    }
                  }

                  v72 = obja;
LABEL_155:

                  v123 = [*(v159 + 680) objectForKeyedSubscript:v101];

                  if (v123)
                  {
                    v124 = _NRCopyLogObjectForNRUUID();
                    v125 = _NRLogIsLevelEnabled();

                    v75 = v161;
                    if (!v125)
                    {
                      goto LABEL_96;
                    }

                    v122 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v122, 0, "%s%.30s:%-4d ignoring in-progress resolve request for %@", "", "[NRDDeviceConductor sendResolveRequestForASName:]", 9361, v101);
                  }

                  else
                  {
                    v122 = objc_alloc_init(NSMutableData);
                    v126 = [v101 dataUsingEncoding:4];
                    v127 = *(v159 + 656);
                    v128 = v101;
                    if (v127 && (*(v127 + 9) & 1) == 0)
                    {
                      objc_opt_self();
                      if (qword_1002291A0 != -1)
                      {
                        dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                      }

                      v129 = sub_1001196E0(qword_100229198, v128);
                    }

                    else
                    {
                      v129 = 0;
                    }

                    if (![v129 count])
                    {
                      v130 = _NRCopyLogObjectForNRUUID();
                      v131 = _NRLogIsLevelEnabled();

                      if (v131)
                      {
                        v132 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs(v132, 16, "%s%.30s:%-4d no public keys", "", "[NRDDeviceConductor sendResolveRequestForASName:]", 9368);
                      }
                    }

                    NRTLVAddData();
                    v177 = 0u;
                    v178 = 0u;
                    v175 = 0u;
                    v176 = 0u;
                    v133 = v129;
                    v134 = [v133 countByEnumeratingWithState:&v175 objects:v184 count:16];
                    if (v134)
                    {
                      v135 = v134;
                      v136 = *v176;
                      do
                      {
                        for (m = 0; m != v135; ++m)
                        {
                          if (*v176 != v136)
                          {
                            objc_enumerationMutation(v133);
                          }

                          NRTLVAddData();
                        }

                        v135 = [v133 countByEnumeratingWithState:&v175 objects:v184 count:16];
                      }

                      while (v135);
                    }

                    memset(out, 0, sizeof(out));
                    uuid_generate(out);
                    v138 = [[NSUUID alloc] initWithUUIDBytes:out];
                    [*(v159 + 680) setObject:v138 forKeyedSubscript:v128];

                    NRTLVAdd();
                    if (sub_10011EE44(*(v159 + 656), v128))
                    {
                      v174 = 0x1000000000000000;
                      NRTLVAdd();
                    }

                    v77 = objc_alloc_init(NSMutableData);
                    NRTLVAddData();
                    v78 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v159 + 96));
                    sub_10002AB38(v78, 20, v77);
                    sub_10002C0E8(v78);

                    v72 = obja;
                    v75 = v161;
                  }

LABEL_95:
                }

LABEL_96:

                v3 = v159;
                continue;
              }

              if (sub_10011F2E4(*(v3 + 656), v79))
              {
                v103 = _NRCopyLogObjectForNRUUID();
                v104 = _NRLogIsLevelEnabled();

                if (v104)
                {
                  v105 = *(v3 + 96);
                  v106 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v106, 0, "%s%.30s:%-4d not starting QR link for %@", "", "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]", 9184, v79);
                }
              }

              else if (*(v3 + 56) == 1)
              {
                v107 = _NRCopyLogObjectForNRUUID();
                v108 = _NRLogIsLevelEnabled();

                if (v108)
                {
                  v109 = *(v3 + 96);
                  v110 = _NRCopyLogObjectForNRUUID();
                  v111 = *(v3 + 656);
                  if (v111)
                  {
                    v111 = v111[3];
                  }

                  v112 = v111;
                  _NRLogWithArgs(v110, 0, "%s%.30s:%-4d starting QR link for ongoing AS resolve operations %@", "", "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]", 9186, v112);
                }

                sub_1000E9F0C(v3, v79);
                if ((*(v3 + 72) & 1) == 0)
                {
                  *(v3 + 72) = 1;
                  [*(v3 + 224) assertAgentWithOptions:0];
                }
              }
            }

            v74 = [v72 countByEnumeratingWithState:&v166 objects:v180 count:16];
          }

          while (v74);
        }
      }

      v139 = *(v3 + 656);
      if (v139)
      {
        v139 = v139[4];
      }

      v140 = v139;
      v141 = [v140 count];

      if (v141 && [*(v3 + 160) ikeClassDEstablished])
      {
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v142 = *(v3 + 656);
        if (v142)
        {
          v142 = v142[4];
        }

        v143 = v142;
        v144 = [v143 copy];

        v145 = [v144 countByEnumeratingWithState:&v162 objects:v179 count:16];
        if (v145)
        {
          v146 = v145;
          v147 = *v163;
          do
          {
            for (n = 0; n != v146; n = n + 1)
            {
              if (*v163 != v147)
              {
                objc_enumerationMutation(v144);
              }

              sub_1000E8568(v3, *(*(&v162 + 1) + 8 * n));
            }

            v146 = [v144 countByEnumeratingWithState:&v162 objects:v179 count:16];
          }

          while (v146);
        }
      }
    }
  }
}

void sub_1000E9DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_19;
  }

  endpoint = v3;
  v4 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (nw_endpoint_get_type(endpoint) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    if (v4)
    {
      v5 = *(v4 + 128);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      if (v4)
      {
        v7 = *(v4 + 128);
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      [v8 UTF8String];
      nw_endpoint_set_device_name();
    }

    if (v4)
    {
      if (*(v4 + 9))
      {
        StringFromNRDeviceEndpointType = createStringFromNRDeviceEndpointType();
        [StringFromNRDeviceEndpointType UTF8String];
        nw_endpoint_set_device_model();
      }

      goto LABEL_13;
    }

LABEL_22:
    v10 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_13:
  v10 = *(v4 + 40);
LABEL_14:
  v11 = v10;

  if (v11)
  {
    if (v4)
    {
      v12 = *(v4 + 40);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    [v13 UTF8String];
    nw_endpoint_set_device_id();
  }

  v3 = endpoint;
LABEL_19:
}

void sub_1000E9F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 656))
  {
    v34 = v3;
    dispatch_assert_queue_V2(*(a1 + 136));
    v4 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 144);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v7 getDefaultLinkSubtypeForLinkType:4];

    v9 = sub_1000EA2C8(a1, 4, v8);
    if (v9 && (sub_10011F034(*(a1 + 656), v34) & 1) == 0)
    {
      v10 = *(a1 + 656);
      v11 = v34;
      if (v10 && (*(v10 + 9) & 1) == 0)
      {
        objc_opt_self();
        if (qword_1002291A0 != -1)
        {
          dispatch_once(&qword_1002291A0, &stru_1001FBD88);
        }

        v12 = qword_100229198;
        v13 = v11;
        v14 = v13;
        if (v12)
        {
          if (v13)
          {
            v15 = objc_alloc_init(NSMutableSet);
            [v12[5] objectForKeyedSubscript:v14];
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v16 = v42 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v40;
              do
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v40 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v39 + 1) + 8 * i);
                  if (v21 && *(v21 + 16))
                  {
                    [v15 addObject:?];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
              }

              while (v18);
            }

            [v12[6] objectForKeyedSubscript:v14];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v22 = v38 = 0u;
            v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v36;
              do
              {
                for (j = 0; j != v24; j = j + 1)
                {
                  if (*v36 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v35 + 1) + 8 * j);
                  if (v27 && *(v27 + 16))
                  {
                    [v15 addObject:?];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v24);
            }

            v12 = [v15 allObjects];
          }

          else
          {
            v31 = sub_100119370();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v33 = sub_100119370();
              _NRLogWithArgs(v33, 17, "%s called with null asName", "[NRApplicationServiceManager copyClientDescriptionForASName:]");
            }

            v12 = 0;
          }
        }
      }

      else
      {
        v12 = 0;
      }

      v28 = [v9 clients];

      if (!v28)
      {
        v29 = objc_alloc_init(NSMutableSet);
        [v9 setClients:v29];
      }

      v30 = [v9 clients];
      [v30 addObjectsFromArray:v12];
    }

    v3 = v34;
  }
}

id sub_1000EA2C8(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 144);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v10 type] == a2 && objc_msgSend(v10, "subtype") == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_5;
      }
    }

    v11 = v10;
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

  return v11;
}

void sub_1000EA6A0(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {
    v24 = v1;
    v25 = v2;
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v4 = qword_1002290B8;
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 6);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = v7[8];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 144);

        if (v12)
        {
          if ((v11[49] & 0x20) == 0)
          {
            v13 = *(a1 + 96);
            objc_opt_self();
            v14 = sub_100172CE0(NRDLocalDevice, v13, &off_100209ED8);

            if (v14)
            {
              if (sub_1000ED714(a1) == 2 && [v14 addressFamily] == 30)
              {
                v21 = 0uLL;
                v23 = 0;
                v22 = 0;
                sub_1001681A4(NRDLocalDevice, &v21, v14);
                if (BYTE8(v21) == 254 && (BYTE9(v21) & 0xC0) == 0x80)
                {
                  v15 = sub_1000EC630(a1);
                  if (v15)
                  {
                    v16 = v15[14];
                    if (v16)
                    {
                      LODWORD(v16) = *(v16 + 12);
                    }
                  }

                  else
                  {
                    LODWORD(v16) = 0;
                  }

                  v23 = v16;
                }

                if (!WORD1(v21))
                {
                  v17 = sub_100015954(NRIKEv2Listener);
                  if (v17)
                  {
                    v18 = -2793;
                  }

                  else
                  {
                    v18 = 0;
                  }

                  WORD1(v21) = bswap32(v18) >> 16;
                }

                v19 = [NWAddressEndpoint endpointWithAddress:&v21];
                v20 = sub_1000EC630(a1);
                sub_10017EA30(v20, v19, *(a1 + 96));
              }
            }

            else
            {
              sub_1000ECF74(a1, 2u, 102);
            }
          }
        }
      }
    }
  }
}

void sub_1000EA900(_BYTE *a1)
{
  if (a1 && a1[14] == 1 && a1[10] == 1)
  {
    if (a1[49] == 1 && (a1[53] & 1) == 0)
    {
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        return;
      }

      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Deferring sending AWDL address update to when we need it", "", "[NRDDeviceConductor sendAWDLEndpoint]", 7843);
    }

    else
    {
      v2 = objc_alloc_init(NRLinkDirectorRequest);
      if (v2)
      {
        v2->_type = 11;
        v2->_requiredLinkType = 1;
        *&v2->_attemptImmediately = 257;
      }

      v5 = v2;
      sub_1000EAA20(a1, v2);
    }
  }
}

void sub_1000EAA20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v4 = *(a1 + 152);
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 152);
      *(a1 + 152) = v5;

      v4 = *(a1 + 152);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v26;
LABEL_6:
      v12 = 0;
      while (1)
      {
        v13 = v10;
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v25 + 1) + 8 * v12);

        if (!v10)
        {
          break;
        }

        v14 = v10[10];
        if (v3)
        {
          goto LABEL_13;
        }

        if (!v10[10])
        {
          goto LABEL_22;
        }

LABEL_8:
        if (v9 == ++v12)
        {
          v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          goto LABEL_20;
        }
      }

      if (!v3)
      {
        v10 = 0;
LABEL_22:

        v15 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v17 = *(a1 + 96);
          v18 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v18, 1, "%s%.30s:%-4d Removing existing request: %@", "", "[NRDDeviceConductor addRequest:]", 2965, v10, v25);
        }

        [*(a1 + 152) removeObject:v10];
        goto LABEL_25;
      }

      v14 = 0;
LABEL_13:
      if (v14 == v3[10] && v14 != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_8;
    }

LABEL_20:

    v10 = 0;
LABEL_25:
    if (!v3)
    {
      goto LABEL_31;
    }

    if (v3[13] == 1)
    {
      sub_1000EAD24(a1, v3);
      if ((v3[12] & 1) == 0)
      {
        v19 = _NRCopyLogObjectForNRUUID();
        v20 = _NRLogIsLevelEnabled();

        if (v20)
        {
          v21 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v21, 1, "%s%.30s:%-4d Could not immediately complete request %@", "", "[NRDDeviceConductor addRequest:]", 2972, v3);
        }
      }
    }

    if ((v3[12] & 1) == 0)
    {
LABEL_31:
      v22 = _NRCopyLogObjectForNRUUID();
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        v24 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v24, 1, "%s%.30s:%-4d Adding new request: %@", "", "[NRDDeviceConductor addRequest:]", 2977, v3);
      }

      [*(a1 + 152) addObject:v3];
    }
  }
}

void sub_1000EAD24(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  if (!v4 || !*(v4 + 11) || (*(v4 + 10) & 0xFE) == 6 && v4[4] || !sub_1000EC4F0(a1, *(v4 + 11)))
  {
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v12, 1, "%s%.30s:%-4d Processing request %@", "", "[NRDDeviceConductor processRequest:]", 3048, v4);
    }

    if (v4)
    {
      v13 = v4[2];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v195 = a1;
    v196 = v4;
    if (v14)
    {
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v15 = *(a1 + 144);
      v16 = [v15 countByEnumeratingWithState:&v221 objects:v230 count:16];
      if (v16)
      {
        v17 = *v222;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v222 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = v196;
            if (v196)
            {
              v19 = v196[2];
            }

            v2 = *(*(&v221 + 1) + 8 * i);
            v20 = v19;
            v21 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v2 type]);
            if ([v20 containsObject:v21])
            {
              v22 = [v2 state] == 8;

              if (v22)
              {
                v193 = v2;
                goto LABEL_32;
              }
            }

            else
            {
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v221 objects:v230 count:16];
        }

        while (v16);
      }

      v193 = 0;
LABEL_32:

      a1 = v195;
      v4 = v196;
      goto LABEL_33;
    }

    if (v4)
    {
      if (*(v4 + 9))
      {
        if ([*(a1 + 160) type] == *(v4 + 9))
        {
          v193 = *(a1 + 160);
        }

        else
        {
          v193 = 0;
        }

        goto LABEL_33;
      }

      if (*(v4 + 8))
      {
        v219 = 0u;
        v220 = 0u;
        v217 = 0u;
        v218 = 0u;
        v33 = *(a1 + 144);
        v34 = [v33 countByEnumeratingWithState:&v217 objects:v229 count:16];
        if (!v34)
        {
          goto LABEL_70;
        }

        v35 = *v218;
LABEL_60:
        v36 = 0;
        while (1)
        {
          if (*v218 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v2 = *(*(&v217 + 1) + 8 * v36);
          if ([v2 type] == *(v196 + 8) && (objc_msgSend(v2, "state") == 8 || *(v196 + 14) == 1 && objc_msgSend(v2, "state") == 9))
          {
            break;
          }

          if (v34 == ++v36)
          {
            v34 = [v33 countByEnumeratingWithState:&v217 objects:v229 count:16];
            if (!v34)
            {
LABEL_70:

              goto LABEL_140;
            }

            goto LABEL_60;
          }
        }

        v193 = v2;

        a1 = v195;
        v4 = v196;
        if (v193)
        {
LABEL_33:
          v192 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
          v23 = v196;
          if (v4)
          {
            v24 = *(v196 + 10);
            v2 = 1;
            if (v24 > 5)
            {
              if (*(v196 + 10) <= 8u)
              {
                if (v24 - 6 < 2)
                {
                  if (v193)
                  {
                    if (!*(v196 + 11) || (v23 = v196, !sub_1000EC4F0(v195, *(v196 + 11))))
                    {
                      v86 = v23 + 7;
                      v87 = v23[7];
                      v88 = v87 == 0;

                      if (!v88)
                      {
                        v89 = _NRCopyLogObjectForNRUUID();
                        v90 = _NRLogIsLevelEnabled();

                        if (v90)
                        {
                          v91 = _NRCopyLogObjectForNRUUID();
                          _NRLogWithArgs(v91, 1, "%s%.30s:%-4d Cancelling the timer request %@", "", "[NRDDeviceConductor processRequest:]", 3347, v196);
                        }

                        v92 = *v86;
                        dispatch_source_cancel(v92);

                        objc_storeStrong(v86, 0);
                      }

                      v93 = v196;
                      *(v196 + 12) = 1;
                      v94 = v93[3];

                      if (v94)
                      {
                        v95 = v196[3];
                        v95[2]();
                      }

                      goto LABEL_138;
                    }

                    v25 = v196[7];
                    v26 = v25 == 0;

                    v23 = v196;
                    if (!v26)
                    {
                      v193 = 0;
LABEL_284:

                      goto LABEL_285;
                    }
                  }

                  v81 = v23[7];
                  v80 = v23 + 7;
                  v82 = v81;
                  v83 = v82 == 0;

                  if (v83)
                  {
                    v84 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v195 + 136));
                    v85 = dispatch_time(0x8000000000000000, 1000000000 * v196[4]);
                    dispatch_source_set_timer(v84, v85, 0xFFFFFFFFFFFFFFFFLL, 0);
                    objc_initWeak(v212, v196);
                    v197[0] = _NSConcreteStackBlock;
                    v197[1] = 3221225472;
                    v197[2] = sub_1000ECE2C;
                    v197[3] = &unk_1001FD0D8;
                    objc_copyWeak(&v198, v212);
                    v197[4] = v195;
                    dispatch_source_set_event_handler(v84, v197);
                    dispatch_resume(v84);
                    objc_storeStrong(v80, v84);
                    objc_destroyWeak(&v198);
                    objc_destroyWeak(v212);
                  }

                  v193 = 0;
LABEL_138:
                  LODWORD(v2) = 0;
LABEL_272:
                  v23 = v196;
                  goto LABEL_273;
                }

                if (v24 != 8)
                {
                  goto LABEL_273;
                }

                goto LABEL_105;
              }

              if (v24 - 9 < 2)
              {
                v29 = *(v196 + 10);
                v30 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v195 + 96));
                v194 = v30;
                v31 = v30;
                if (v30)
                {
                  objc_storeStrong(v30 + 3, v193);
                  v31 = v194;
                }

                if (!v192 || v192[8] <= 0x11u)
                {
                  if (v31)
                  {
                    LOBYTE(v212[0]) = v29 == 9;
                    v32 = [[NSData alloc] initWithBytes:v212 length:1];
                    sub_10002AB38(v194, 7, v32);
                  }

                  goto LABEL_173;
                }

                v72 = v195;
                if (v31)
                {
                  *(v31 + 8) = 1;
                }

                BYTE4(v212[0]) = 0;
                LODWORD(v212[0]) = 0;
                *(v212 + 5) = 0x1000000;
                if (v29 == 9)
                {
                  LOBYTE(v212[0]) = 1;
                  v73 = *(v72 + 472);
                }

                else
                {
                  v73 = 0;
                }

                v102 = [[NSMutableData alloc] initWithBytes:v212 length:9];
                v201 = 0u;
                v202 = 0u;
                v199 = 0u;
                v200 = 0u;
                v103 = v73;
                v104 = [v103 countByEnumeratingWithState:&v199 objects:v225 count:16];
                if (!v104)
                {
LABEL_172:

                  sub_10002AB38(v194, 13, v102);
LABEL_173:
                  if (sub_10002C0E8(v194))
                  {
                    *(v196 + 12) = 1;
                    v111 = "Successfully sent";
                  }

                  else
                  {
                    v111 = "Failed to send";
                  }

                  v112 = [NSNumber numberWithBool:v29 == 9];
                  sub_1000EC910(v195, 1020, @"%s prefer Wi-Fi ack %@", v113, v114, v115, v116, v117, v111);
LABEL_270:

                  goto LABEL_271;
                }

                v105 = *v200;
LABEL_148:
                v106 = 0;
                while (1)
                {
                  if (*v200 != v105)
                  {
                    objc_enumerationMutation(v103);
                  }

                  v107 = *(*(&v199 + 1) + 8 * v106);
                  v108 = [v107 unsignedCharValue];
                  if (v108 > 103)
                  {
                    switch(v108)
                    {
                      case 'y':
                        LOBYTE(v109) = 8;
                        break;
                      case 'x':
                        LOBYTE(v109) = 1;
                        break;
                      case 'h':
                        LOBYTE(v109) = 7;
                        break;
                      default:
LABEL_163:
                        v211 = 0;
                        v110 = [v107 unsignedCharValue];
                        v109 = 0x40300020100uLL >> (8 * (v110 & 0x1F));
                        if (v110 >= 6)
                        {
                          LOBYTE(v109) = 0;
                        }

                        break;
                    }
                  }

                  else
                  {
                    switch(v108)
                    {
                      case 'e':
                        LOBYTE(v109) = 2;
                        break;
                      case 'f':
                        LOBYTE(v109) = 5;
                        break;
                      case 'g':
                        LOBYTE(v109) = 6;
                        break;
                      default:
                        goto LABEL_163;
                    }
                  }

                  v211 = v109;
                  if ([v107 unsignedCharValue] == 102)
                  {
                    sub_1000EC998(v195, v194);
                  }

                  if (v211)
                  {
                    NRTLVAdd();
                  }

                  if (v104 == ++v106)
                  {
                    v104 = [v103 countByEnumeratingWithState:&v199 objects:v225 count:16];
                    if (!v104)
                    {
                      goto LABEL_172;
                    }

                    goto LABEL_148;
                  }
                }
              }

              if (v24 != 11 || *(v195 + 10) != 1)
              {
LABEL_273:
                v183 = *(v23 + 12);
                v184 = _NRCopyLogObjectForNRUUID();
                v185 = _NRLogIsLevelEnabled();

                if (v183)
                {
                  if (v185)
                  {
                    v186 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v186, 1, "%s%.30s:%-4d Completed request %@", "", "[NRDDeviceConductor processRequest:]", 3364, v196);
                  }

                  v187 = v196[6];
                  if (v187)
                  {
                    v188 = v2;
                  }

                  else
                  {
                    v188 = 0;
                  }

                  if (!v188)
                  {
                    goto LABEL_284;
                  }

                  v189 = v196[6];
                  v189[2]();
                }

                else
                {
                  if (!v185)
                  {
                    goto LABEL_284;
                  }

                  v189 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v189, 1, "%s%.30s:%-4d Could not complete request %@", "", "[NRDDeviceConductor processRequest:]", 3369, v196);
                }

                goto LABEL_284;
              }

              v70 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v195 + 96));
              v2 = v70;
              if (v70)
              {
                objc_storeStrong(v70 + 3, v193);
              }

              sub_1000EC998(v195, v2);
              if (sub_10002C0E8(v2))
              {
                *(v196 + 12) = 1;
                v71 = "Successfully sent";
LABEL_196:
                dispatch_assert_queue_V2(*(v195 + 136));
                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v128 = qword_1002290B8;
                v129 = v128;
                if (v128)
                {
                  v130 = *(v128 + 6);
                }

                else
                {
                  v130 = 0;
                }

                v131 = v130;

                if (v131)
                {
                  v132 = v131[8];
                }

                else
                {
                  v132 = 0;
                }

                v190 = v132;
                sub_1000EC910(v195, 1040, @"%s AWDL address update %@", v133, v134, v135, v136, v137, v71);

                goto LABEL_271;
              }

LABEL_195:
              v71 = "Failed to send";
              goto LABEL_196;
            }

            if (*(v196 + 10) > 3u)
            {
LABEL_105:
              if (v193)
              {
                *(v196 + 12) = 1;
              }

              else
              {
                v193 = 0;
              }

              goto LABEL_273;
            }

            if (v24 - 2 < 2)
            {
              HIDWORD(v191) = *(v196 + 10);
              v194 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v195 + 96));
              v27 = v194;
              if (v194)
              {
                objc_storeStrong(v194 + 3, v193);
                v27 = v194;
              }

              if (!v192 || v192[8] <= 0x11u)
              {
                if (v27)
                {
                  LOBYTE(v212[0]) = HIDWORD(v191) == 2;
                  v28 = [[NSData alloc] initWithBytes:v212 length:1];
                  sub_10002AB38(v194, 5, v28);
                }

                goto LABEL_263;
              }

              memset(v212, 0, 9);
              *(v212 + 1) = bswap32(arc4random_uniform(0xFFFFFFFF));
              if (HIDWORD(v191) != 2)
              {
                v74 = 0;
                goto LABEL_225;
              }

              LOBYTE(v212[0]) = 1;
              v74 = objc_alloc_init(NSMutableArray);
              v211 = 0;
              v75 = v195;
              if (*(v195 + 10) == 1)
              {
                v76 = sub_1000BA648(NRLinkDirector);
                v77 = v76;
                if (v76)
                {
                  v78 = *(v76 + 12);
                }

                else
                {
                  v78 = 0;
                }

                v79 = v78;
                *(v195 + 54) = sub_10007401C(v79, &v211);

                v75 = v195;
              }

              if (v75[54] != 1)
              {
                goto LABEL_219;
              }

              if (v75[10])
              {
                if ((v75[51] & 1) == 0)
                {
LABEL_215:
                  sub_1000EC998(v75, v194);
                  [v74 addObject:&off_100209C38];
                  v75 = v195;
                  if (*(v195 + 54))
                  {
LABEL_216:
                    v146 = sub_1000EC630(v75);
                    v147 = v146;
                    if (v146)
                    {
                      v148 = *(v146 + 56);
                    }

                    else
                    {
                      v148 = 0;
                    }

                    v149 = v148;
                    v150 = v149 == 0;

                    if (v150)
                    {
LABEL_225:
                      if (v194)
                      {
                        *(v194 + 8) = 1;
                      }

                      v151 = [[NSMutableData alloc] initWithBytes:v212 length:9];
                      v152 = objc_alloc_init(NSMutableString);
                      v209 = 0u;
                      v210 = 0u;
                      v207 = 0u;
                      v208 = 0u;
                      v153 = v74;
                      v154 = [v153 countByEnumeratingWithState:&v207 objects:v227 count:16];
                      if (v154)
                      {
                        v155 = *v208;
                        do
                        {
                          for (j = 0; j != v154; j = j + 1)
                          {
                            if (*v208 != v155)
                            {
                              objc_enumerationMutation(v153);
                            }

                            v157 = *(*(&v207 + 1) + 8 * j);
                            v158 = [v152 length] == 0;
                            [v157 unsignedCharValue];
                            ShortStringFromNRLinkSubtype = createShortStringFromNRLinkSubtype();
                            v160 = ShortStringFromNRLinkSubtype;
                            if (v158)
                            {
                              [v152 appendString:ShortStringFromNRLinkSubtype];
                            }

                            else
                            {
                              [v152 appendFormat:@"/%@", ShortStringFromNRLinkSubtype];
                            }
                          }

                          v154 = [v153 countByEnumeratingWithState:&v207 objects:v227 count:16];
                        }

                        while (v154);
                      }

                      sub_1000EC910(v195, 1050, @"send req %d %@", v161, v162, v163, v164, v165, HIDWORD(v191) == 2);
                      v205 = 0u;
                      v206 = 0u;
                      v203 = 0u;
                      v204 = 0u;
                      v166 = v153;
                      v167 = [v166 countByEnumeratingWithState:&v203 objects:v226 count:16];
                      if (!v167)
                      {
LABEL_262:

                        sub_10002AB38(v194, 13, v151);
LABEL_263:
                        v174 = sub_10002C0E8(v194);
                        if (v174)
                        {
                          *(v196 + 12) = 1;
                          v175 = "Successfully sent";
                        }

                        else
                        {
                          v175 = "Failed to send";
                        }

                        v176 = HIDWORD(v191) == 2;
                        if (HIDWORD(v191) == 2)
                        {
                          v177 = v174;
                        }

                        else
                        {
                          v177 = 0;
                        }

                        *(v195 + 16) = v177;
                        v112 = [NSNumber numberWithBool:v176];
                        sub_1000EC910(v195, 1008, @"%s prefer Wi-Fi request %@", v178, v179, v180, v181, v182, v175);
                        goto LABEL_270;
                      }

                      v168 = *v204;
LABEL_239:
                      v169 = 0;
                      while (1)
                      {
                        if (*v204 != v168)
                        {
                          objc_enumerationMutation(v166);
                        }

                        v171 = *(*(&v203 + 1) + 8 * v169);
                        v172 = [v171 unsignedCharValue];
                        if (v172 > 103)
                        {
                          switch(v172)
                          {
                            case 'y':
                              v170 = 8;
                              break;
                            case 'x':
                              v170 = 1;
                              break;
                            case 'h':
                              v170 = 7;
                              break;
                            default:
LABEL_256:
                              v211 = 0;
                              v173 = [v171 unsignedCharValue];
                              if (v173 > 5)
                              {
                                goto LABEL_243;
                              }

                              v211 = 0x40300020100uLL >> (8 * (v173 & 0x1F));
                              if (!v211)
                              {
                                goto LABEL_243;
                              }

                              goto LABEL_242;
                          }
                        }

                        else
                        {
                          switch(v172)
                          {
                            case 'e':
                              v170 = 2;
                              break;
                            case 'f':
                              v170 = 5;
                              break;
                            case 'g':
                              v170 = 6;
                              break;
                            default:
                              goto LABEL_256;
                          }
                        }

                        v211 = v170;
LABEL_242:
                        NRTLVAdd();
LABEL_243:
                        if (v167 == ++v169)
                        {
                          v167 = [v166 countByEnumeratingWithState:&v203 objects:v226 count:16];
                          if (!v167)
                          {
                            goto LABEL_262;
                          }

                          goto LABEL_239;
                        }
                      }
                    }
                  }

LABEL_219:
                  if (!v211)
                  {
                    [v74 insertObject:&off_100209C98 atIndex:0];
                    goto LABEL_225;
                  }

                  goto LABEL_224;
                }
              }

              else if ((v75[51] & 1) == 0)
              {
LABEL_224:
                [v74 addObject:&off_100209C98];
                goto LABEL_225;
              }

              [v74 addObject:&off_100209CB0];
              v75 = v195;
              if ((*(v195 + 54) & 1) == 0)
              {
                goto LABEL_219;
              }

              if ((*(v195 + 10) & 1) == 0)
              {
                goto LABEL_216;
              }

              goto LABEL_215;
            }

            if (v24 == 1)
            {
              if (*(v195 + 45) != 1)
              {
                goto LABEL_273;
              }

              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v37 = qword_1002290B8;
              v38 = v37;
              if (v37)
              {
                v39 = *(v37 + 6);
                if (v39)
                {
                  v39 = v39[7];
                }

                v40 = v39;
              }

              else
              {
                v40 = 0;
              }

              dispatch_assert_queue_V2(*(v195 + 136));
              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v41 = qword_1002290B8;
              v42 = v41;
              if (v41)
              {
                v43 = *(v41 + 6);
                if (v43)
                {
                  v43 = v43[7];
                }

                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              v45 = [*(v195 + 168) isEqual:v44];
              if (v45 && (*(v195 + 25) & 1) == 0)
              {
                v143 = _NRCopyLogObjectForNRUUID();
                v144 = _NRLogIsLevelEnabled();

                if (v144)
                {
                  v145 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v145, 1, "%s%.30s:%-4d We already sent this information to the gizmo", "", "[NRDDeviceConductor processRequest:]", 3107);
                }
              }

              else
              {
                if (v40)
                {
                  v46 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v195 + 96));
                  sub_10002D42C(v46, v193);
                  v47 = sub_100015954(NRIKEv2Listener);
                  v48 = v47;
                  if (v46)
                  {
                    if (v47)
                    {
                      v49 = 62743;
                    }

                    else
                    {
                      v49 = 0;
                    }

                    sub_10002B038(v46, v40, v49, 0);
                  }

                  v50 = sub_1000EC630(v195);
                  v51 = v50;
                  if (v50)
                  {
                    v52 = *(v50 + 80);
                  }

                  else
                  {
                    v52 = 0;
                  }

                  v53 = v52;
                  v54 = v53 == 0;

                  if (!v54)
                  {
                    v55 = sub_1000EC630(v195);
                    v56 = v55;
                    if (v55)
                    {
                      v57 = *(v55 + 80);
                    }

                    else
                    {
                      v57 = 0;
                    }

                    v58 = v57;
                    sub_10002AB38(v46, 4, v58);
                  }

                  if (sub_10002C0E8(v46))
                  {
                    v64 = v195;
                    *(v196 + 12) = 1;
                    sub_1000EC6D4(v64, v40);
                    v65 = sub_1000EC630(v195);
                    v66 = v65;
                    if (v65)
                    {
                      v67 = *(v65 + 80);
                    }

                    else
                    {
                      v67 = 0;
                    }

                    v68 = v67;
                    sub_1000EC804(v195, v68);

                    v69 = "Successfully sent";
                  }

                  else
                  {
                    v69 = "Failed to send";
                  }

                  sub_1000EC910(v195, 1010, @"%s Wi-Fi address update %@", v59, v60, v61, v62, v63, v69);

                  goto LABEL_223;
                }

                v138 = _NRCopyLogObjectForNRUUID();
                v139 = _NRLogIsLevelEnabled();

                if (v139)
                {
                  v140 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v140, 1, "%s%.30s:%-4d No Wi-Fi address present", "", "[NRDDeviceConductor processRequest:]", 3113);
                }
              }

              *(v196 + 12) = 1;
LABEL_223:

LABEL_271:
              LODWORD(v2) = 1;
              goto LABEL_272;
            }

            if (*(v196 + 10))
            {
              goto LABEL_273;
            }
          }

          v121 = sub_1000E83DC();
          v122 = _NRLogIsLevelEnabled();

          if (v122)
          {
            v123 = sub_1000E83DC();
            _NRLogWithArgs(v123, 16, "%s%.30s:%-4d ABORTING: Received invalid request type", "", "[NRDDeviceConductor processRequest:]", 3359);
          }

          v124 = _os_log_pack_size();
          v125 = &v191 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v126 = __error();
          v127 = _os_log_pack_fill(v125, v124, *v126, &_mh_execute_header, "%{public}s Received invalid request type");
          *v127 = 136446210;
          *(v127 + 4) = "[NRDDeviceConductor processRequest:]";
          sub_1000E83DC();
          _NRLogAbortWithPack();
          __break(1u);
          goto LABEL_195;
        }

LABEL_140:
        v96 = _NRCopyLogObjectForNRUUID();
        v97 = _NRLogIsLevelEnabled();

        v4 = v196;
        if (!v97)
        {
          goto LABEL_286;
        }

        v193 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v193, 1, "%s%.30s:%-4d Deferring request as there is no link that can honor", "", "[NRDDeviceConductor processRequest:]", 3075);
LABEL_285:

        v4 = v196;
        goto LABEL_286;
      }
    }

    v98 = *(a1 + 160);
    if (v98 && (v99 = v98, v100 = [*(a1 + 160) state], v99, v100 == 8))
    {
      v101 = *(a1 + 160);
    }

    else
    {
      if (!v4 || *(v4 + 14) != 1)
      {
LABEL_207:
        v141 = _NRCopyLogObjectForNRUUID();
        v142 = _NRLogIsLevelEnabled();

        v4 = v196;
        if (!v142)
        {
          goto LABEL_286;
        }

        v193 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v193, 1, "%s%.30s:%-4d No link found", "", "[NRDDeviceConductor processRequest:]", 3092);
        goto LABEL_285;
      }

      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      v118 = *(a1 + 144);
      v101 = [v118 countByEnumeratingWithState:&v213 objects:v228 count:16];
      if (v101)
      {
        v119 = *v214;
        do
        {
          for (k = 0; k != v101; k = k + 1)
          {
            if (*v214 != v119)
            {
              objc_enumerationMutation(v118);
            }

            v2 = *(*(&v213 + 1) + 8 * k);
            if ([v2 state] == 9 && objc_msgSend(v2, "type") != 4)
            {
              v101 = v2;
              goto LABEL_205;
            }
          }

          v101 = [v118 countByEnumeratingWithState:&v213 objects:v228 count:16];
        }

        while (v101);
      }

LABEL_205:

      a1 = v195;
      v4 = v196;
    }

    v193 = v101;
    if (v101)
    {
      goto LABEL_33;
    }

    goto LABEL_207;
  }

  v5 = _NRCopyLogObjectForNRUUID();
  v6 = _NRLogIsLevelEnabled();

  if (v6)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    v8 = *(v4 + 11);
    if (v8 > 0xB)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = [[NSString alloc] initWithUTF8String:(&off_1001FC2A0)[v8]];
    }

    _NRLogWithArgs(v7, 1, "%s%.30s:%-4d Deferring request %@ as request %@ exists", "", "[NRDDeviceConductor processRequest:]", 3042, v4, v9);
  }

LABEL_286:
}

uint64_t sub_1000EC4F0(uint64_t a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(v2 + 152);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          if (v9)
          {
            if (v9[10] == a2)
            {
              goto LABEL_15;
            }
          }

          else if (!a2)
          {
LABEL_15:
            v11 = v9;
            goto LABEL_16;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v10 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v6 = v10;
      }

      while (v10);
    }

    v11 = 0;
LABEL_16:

    v2 = v11 != 0;
  }

  return v2;
}