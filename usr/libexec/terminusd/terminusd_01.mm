void sub_100014ABC(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (a1)
  {
    v45 = v16;
    if (!a1[6])
    {
      v20 = objc_alloc_init(NSMutableDictionary);
      v21 = a1[6];
      a1[6] = v20;
    }

    v22 = objc_alloc_init(NRIKEv2PendingSession);
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_session, a2);
      objc_storeStrong(&v23->_sessionConfig, a3);
      objc_storeStrong(&v23->_childConfig, a4);
      objc_setProperty_nonatomic_copy(v23, v24, v17, 32);
      objc_setProperty_nonatomic_copy(v23, v25, v18, 40);
      v23->_sessionReceivedTimestamp = nr_continuous_time();
    }

    else
    {
      nr_continuous_time();
    }

    objc_initWeak(&location, v14);
    v26 = a1[1];
    [v14 setClientQueue:v26];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100015044;
    v46[3] = &unk_1001FA1A8;
    objc_copyWeak(&v48, &location);
    v46[4] = a1;
    v44 = v19;
    v27 = v19;
    v47 = v27;
    [v14 setStateUpdateBlock:v46];
    v28 = a1[6];
    v29 = [v28 objectForKeyedSubscript:v27];

    if (v29)
    {
      v30 = v29[5];
      (*(v30 + 2))(v30, 0, 0, 0);
    }

    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    v31 = qword_100228E90;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      v33 = qword_100228E90;
      if (v23)
      {
        session = v23->_session;
      }

      else
      {
        session = 0;
      }

      v35 = session;
      _NRLogWithArgs(v33, 1, "%s%.30s:%-4d adding pending session: %@", "", "[NRIKEv2Listener addPendingSession:sessionConfig:childConfig:validateAuthBlock:responseBlock:key:]", 536, v35);
    }

    v36 = a1[6];
    [v36 setObject:v23 forKeyedSubscript:v27];

    v37 = a1 + 7;
    if (!a1[7])
    {
      v38 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a1[1]);
      v39 = dispatch_time(0x8000000000000000, 10000000000);
      dispatch_source_set_timer(v38, v39, 0x2540BE400uLL, 0x3A35294400uLL);
      objc_initWeak(from, a1);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000151A4;
      handler[3] = &unk_1001FB150;
      objc_copyWeak(v52, from);
      v40 = v38;
      v51 = v40;
      v52[1] = 0x4024000000000000;
      dispatch_source_set_event_handler(v40, handler);
      dispatch_activate(v40);
      objc_storeStrong(v37, v38);
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      v41 = qword_100228E90;
      v42 = _NRLogIsLevelEnabled();

      if (v42)
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        v43 = qword_100228E90;
        _NRLogWithArgs(v43, 0, "%s%.30s:%-4d starting pending session monitoring source", "", "[NRIKEv2Listener armPendingSessionCleanupTimer]", 585);
      }

      objc_destroyWeak(v52);
      objc_destroyWeak(from);
    }

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);

    v16 = v45;
    v19 = v44;
  }
}

void sub_100014FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v26 - 112));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014FE4(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v4 = *(a1 + 32);

    sub_100171DA0(NRDLocalDevice, v4);
  }
}

void sub_100015044(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2 == 3 && WeakRetained)
  {
    v5 = *(a1 + 32);
    v13 = WeakRetained;
    if (v5)
    {
      v5 = v5[6];
    }

    v6 = *(a1 + 40);
    v7 = v5;
    v8 = [v7 objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 8);
    }

    else
    {
      v10 = 0;
    }

    WeakRetained = v13;
    if (v10 == v13)
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        _NRLogWithArgs(qword_100228E90, 1, "%s%.30s:%-4d removing pending session %@", "", "[NRIKEv2Listener addPendingSession:sessionConfig:childConfig:validateAuthBlock:responseBlock:key:]_block_invoke", 527, v13);
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 48);
      }

      else
      {
        v12 = 0;
      }

      [v12 setObject:0 forKeyedSubscript:*(a1 + 40)];
      WeakRetained = v13;
    }
  }
}

void sub_1000151A4(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[6];
    if ([v4 count])
    {
      v5 = *(v3 + 56);
      v6 = *(v1 + 32);

      if (v5 == v6)
      {
        nr_continuous_time();
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v7 = *(v3 + 48);
        v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v31;
          v25 = v1;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v30 + 1) + 8 * i);
              v14 = [*(v3 + 48) objectForKeyedSubscript:v13];
              NRDiffMachTimeInSeconds();
              if (v15 > *(v1 + 48))
              {
                if (qword_100228E98 != -1)
                {
                  dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228E98 != -1)
                  {
                    dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                  }

                  v16 = v7;
                  if (v14)
                  {
                    v17 = v14[1];
                  }

                  else
                  {
                    v17 = 0;
                  }

                  v18 = qword_100228E90;
                  _NRLogWithArgs(v18, 1, "%s%.30s:%-4d cancelling pending session: %@", "", "[NRIKEv2Listener armPendingSessionCleanupTimer]_block_invoke", 568, v17);

                  v7 = v16;
                  v1 = v25;
                }

                if (v14)
                {
                  v19 = v14[5];
                }

                else
                {
                  v19 = 0;
                }

                (*(v19 + 16))(v19, 0, 0, 0);
                if (!v10)
                {
                  v10 = objc_alloc_init(NSMutableArray);
                }

                [v10 addObject:v13];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v20 = v10;
        v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v27;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v27 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [*(v3 + 48) setObject:0 forKeyedSubscript:*(*(&v26 + 1) + 8 * j)];
            }

            v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v22);
        }

        sub_1000154E8(v3);
      }
    }

    else
    {
    }
  }
}

void sub_1000154E8(uint64_t a1)
{
  if (![*(a1 + 48) count] && *(a1 + 56))
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      _NRLogWithArgs(qword_100228E90, 0, "%s%.30s:%-4d cancelling pending session monitoring source", "", "[NRIKEv2Listener disarmPendingSessionCleanupTimer]", 595);
    }

    dispatch_source_cancel(*(a1 + 56));
    v2 = *(a1 + 56);
    *(a1 + 56) = 0;
  }
}

void sub_1000155F0(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228E90;
  qword_100228E90 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100015954(uint64_t a1)
{
  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v1 = qword_100228E80;

  return v1;
}

void sub_1000159AC(id a1)
{
  v1 = objc_alloc_init(NRIKEv2Listener);
  v2 = qword_100228E80;
  qword_100228E80 = v1;

  _objc_release_x1(v1, v2);
}

BOOL sub_1000159E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  v3 = sub_100146840(1);
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230 == 1)
  {
    [v3 setForceUDPEncapsulation:1];
    v4 = [NSSet alloc];
    v5 = [[NEIKEv2AuthenticationProtocol alloc] initWithSecurePassword:11001];
    v6 = [v4 initWithObjects:{v5, 0}];
    [v3 setSupportedSecurePasswordMethods:v6];

    [v3 setRequestPPK:1];
  }

  v7 = [NEIKEv2Listener alloc];
  v8 = *(a1 + 8);
  LOBYTE(v16) = 1;
  v9 = [v7 initWithListenerIKEConfig:v3 kernelSASessionName:@"terminusIKE-Shared-Listener" listenerUDPPort:@"62743" listenerQueue:v8 delegate:a1 delegateQueue:v8 includeP2P:v16];
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;

  v11 = *(a1 + 16);
  v1 = v11 != 0;
  if (v11)
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      _NRLogWithArgs(qword_100228E90, 0, "%s%.30s:%-4d Created shared IKE listener", "", "[NRIKEv2Listener resume]", 195);
    }
  }

  else
  {
    v13 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = sub_100014820();
      _NRLogWithArgs(v15, 17, "Failed to create shared IKE listener");
    }
  }

  return v1;
}

void sub_100015C1C(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      _NRLogWithArgs(qword_100228E90, 1, "%s%.30s:%-4d Uninstalling route rules to allow all incoming IKE connections", "", "[NRIKEv2Listener updateRouteRules]", 281);
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v1 = qword_100229408;
    sub_10015A238(v1, @"NRIKEv2Listener");

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v50 = qword_100229408;
    sub_10015A52C(v50);
  }

  else
  {
    v2 = a1;
    v3 = objc_alloc_init(NSMutableArray);
    v48 = [NEPolicyRouteRule routeRuleWithAction:2 forType:0];
    [v3 addObject:?];
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"62743"];
    v6 = +[NEPolicyCondition allInterfaces];
    [v4 addObject:v6];

    v47 = v5;
    v7 = [NEPolicyCondition flowLocalAddress:v5 prefix:0];
    [v4 addObject:v7];

    v8 = [*(v2 + 24) allValues];
    v49 = v4;
    if ([v8 count])
    {
      v51 = v2;
      v9 = objc_alloc_init(NSMutableSet);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v65 objects:v72 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v66;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v66 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v65 + 1) + 8 * i);
            if (v16 && (v17 = *(v16 + 8)) != 0)
            {
              v15 = v17;
              [v9 addObject:v17];
            }

            else
            {
              if (qword_100228E98 != -1)
              {
                dispatch_once(&qword_100228E98, &stru_1001FA1F0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228E98 != -1)
                {
                  dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                }

                _NRLogWithArgs(qword_100228E90, 17, "%@: invalid object at interface name index", v16);
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v65 objects:v72 count:16];
        }

        while (v12);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v18 = v9;
      v19 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
      v4 = v49;
      if (v19)
      {
        v20 = v19;
        v21 = *v62;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v62 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [NEPolicyRouteRule routeRuleWithAction:1 forInterfaceName:*(*(&v61 + 1) + 8 * j)];
            [v3 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
        }

        while (v20);
      }

      v2 = v51;
    }

    v52 = [*(v2 + 32) allValues];
    if ([v52 count])
    {
      v24 = objc_alloc_init(NSMutableSet);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v25 = v52;
      v26 = [v25 countByEnumeratingWithState:&v57 objects:v70 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v58;
        do
        {
          for (k = 0; k != v27; k = k + 1)
          {
            if (*v58 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v57 + 1) + 8 * k);
            if (v31 && (v32 = *(v31 + 8)) != 0)
            {
              v30 = v32;
              [v24 addObject:v32];
            }

            else
            {
              if (qword_100228E98 != -1)
              {
                dispatch_once(&qword_100228E98, &stru_1001FA1F0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228E98 != -1)
                {
                  dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                }

                _NRLogWithArgs(qword_100228E90, 17, "%@: invalid object at interface name index", v31);
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v57 objects:v70 count:16];
        }

        while (v27);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v33 = v24;
      v34 = [v33 countByEnumeratingWithState:&v53 objects:v69 count:16];
      v4 = v49;
      if (v34)
      {
        v35 = v34;
        v36 = *v54;
        do
        {
          for (m = 0; m != v35; m = m + 1)
          {
            if (*v54 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [NEPolicyRouteRule routeRuleWithAction:1 forInterfaceName:*(*(&v53 + 1) + 8 * m)];
            [v3 addObject:v38];
          }

          v35 = [v33 countByEnumeratingWithState:&v53 objects:v69 count:16];
        }

        while (v35);
      }
    }

    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      _NRLogWithArgs(qword_100228E90, 1, "%s%.30s:%-4d adding route rules %@", "", "[NRIKEv2Listener updateRouteRules]", 266, v3);
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v39 = qword_100229408;
    sub_10015A238(v39, @"NRIKEv2Listener");

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v40 = qword_100229408;
    sub_10015A52C(v40);

    v41 = [NEPolicy alloc];
    v42 = [NEPolicyResult routeRules:v3];
    v43 = [v41 initWithOrder:6 result:v42 conditions:v4];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v44 = qword_100229408;
    v45 = sub_100159E00(v44, @"NRIKEv2Listener", v43);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v46 = qword_100229408;
    sub_10015A52C(v46);
  }
}

void sub_10001651C(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 48) objectForKeyedSubscript:v21];

    if (v5)
    {
      v6 = [*(a1 + 48) objectForKeyedSubscript:v21];
      [*(a1 + 48) setObject:0 forKeyedSubscript:v21];
      if (v6)
      {
        [*(v6 + 8) setStateUpdateBlock:0];
        [*(v6 + 8) setClientQueue:0];
        v7 = *(v6 + 8);
      }

      else
      {
        [0 setStateUpdateBlock:0];
        [0 setClientQueue:0];
        v7 = 0;
      }

      if ([v7 state] == 3)
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_23;
        }

        if (qword_100228E98 == -1)
        {
          v8 = qword_100228E90;
          if (v6)
          {
LABEL_11:
            v9 = *(v6 + 8);
LABEL_12:
            v10 = v8;
            _NRLogWithArgs(v10, 1, "%s%.30s:%-4d not processing disconnected pending session: %@", "", "[NRIKEv2Listener processPendingSessionForKey:]", 487, v9);

LABEL_23:
            goto LABEL_24;
          }
        }

        else
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
          v8 = qword_100228E90;
          if (v6)
          {
            goto LABEL_11;
          }
        }

        v9 = 0;
        goto LABEL_12;
      }

      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      if (!_NRLogIsLevelEnabled())
      {
LABEL_20:
        v14 = *(a1 + 16);
        if (v6)
        {
          v15 = *(v6 + 8);
          v16 = *(v6 + 16);
          v17 = *(v6 + 24);
          v18 = *(v6 + 32);
          v19 = *(v6 + 40);
        }

        else
        {
          v18 = 0;
          v16 = 0;
          v15 = 0;
          v17 = 0;
          v19 = 0;
        }

        v20 = v14;
        [a1 requestConfigurationForListener:v20 session:v15 sessionConfig:v16 childConfig:v17 validateAuthBlock:v18 responseBlock:v19];

        sub_1000154E8(a1);
        goto LABEL_23;
      }

      if (qword_100228E98 == -1)
      {
        v11 = qword_100228E90;
        if (v6)
        {
LABEL_18:
          v12 = *(v6 + 8);
LABEL_19:
          v13 = v11;
          _NRLogWithArgs(v13, 1, "%s%.30s:%-4d processing pending session: %@", "", "[NRIKEv2Listener processPendingSessionForKey:]", 490, v12);

          goto LABEL_20;
        }
      }

      else
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        v11 = qword_100228E90;
        if (v6)
        {
          goto LABEL_18;
        }
      }

      v12 = 0;
      goto LABEL_19;
    }
  }

LABEL_24:
}

void sub_100016810(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v5)
    {
LABEL_19:
      v12 = v4;
LABEL_20:

      goto LABEL_21;
    }

    v6 = v5;
    v7 = *v14;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
      if (v10)
      {
        if (v10[4] == v3)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (!v6)
        {
          goto LABEL_19;
        }

        goto LABEL_5;
      }
    }

    v11 = v10;
    v12 = v9;

    if (v12)
    {
      [*(a1 + 32) setObject:0 forKeyedSubscript:v12];
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        _NRLogWithArgs(qword_100228E90, 0, "%s%.30s:%-4d Successfully un-registered pairing client %@", "", "[NRIKEv2Listener unregisterPairingClient:]", 356, v3, v13);
      }

      sub_100015C1C(a1);
      goto LABEL_20;
    }
  }

LABEL_21:
}

uint64_t sub_100016A08(uint64_t IsLevelEnabled, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!IsLevelEnabled)
  {
    goto LABEL_32;
  }

  if (!v8)
  {
    v32 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_32;
    }

    v13 = sub_100014820();
    _NRLogWithArgs(v13, 17, "%s called with null link");
    goto LABEL_39;
  }

  if (!v9)
  {
    v33 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_32;
    }

    v13 = sub_100014820();
    _NRLogWithArgs(v13, 17, "%s called with null interfaceName");
    goto LABEL_39;
  }

  if (!v10)
  {
    v34 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_32;
    }

    v13 = sub_100014820();
    _NRLogWithArgs(v13, 17, "%s called with null localEndpoint");
LABEL_39:
    IsLevelEnabled = 0;
LABEL_31:

    goto LABEL_32;
  }

  if ([v8 state] != 255)
  {
    obj = a2;
    v12 = [v8 nrUUID];
    v13 = sub_100014934(IsLevelEnabled, v9, v11, v12);

    v14 = *(IsLevelEnabled + 24);
    if (!v14)
    {
      v15 = objc_alloc_init(NSMutableDictionary);
      v16 = *(IsLevelEnabled + 24);
      *(IsLevelEnabled + 24) = v15;

      v14 = *(IsLevelEnabled + 24);
    }

    v17 = [v14 objectForKeyedSubscript:v13];
    v18 = v17;
    if (v17 && (v35 = v11, v19 = v9, v20 = *(v17 + 24), v21 = a4, v22 = a3, v23 = v18, v24 = v13, v25 = [v20 identifier], v26 = objc_msgSend(v8, "identifier"), v20, v9 = v19, v11 = v35, v27 = v25 == v26, v13 = v24, v18 = v23, a3 = v22, a4 = v21, v27))
    {
      IsLevelEnabled = 1;
    }

    else if (sub_1000159E8(IsLevelEnabled))
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        _NRLogWithArgs(qword_100228E90, 0, "%s%.30s:%-4d Successfully registered link %@", "", "[NRIKEv2Listener registerLink:localInterfaceName:localEndpoint:]", 431, v8);
      }

      v28 = v9;
      v29 = objc_alloc_init(NRIKEv2ListenerRegistration);
      p_isa = &v29->super.isa;
      if (v29)
      {
        objc_storeStrong(&v29->_link, obj);
        objc_storeStrong(p_isa + 2, a4);
        objc_storeStrong(p_isa + 1, a3);
      }

      [*(IsLevelEnabled + 24) setObject:p_isa forKeyedSubscript:v13];
      sub_100015C1C(IsLevelEnabled);
      sub_10001651C(IsLevelEnabled, v13);

      IsLevelEnabled = 1;
      v9 = v28;
    }

    else
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        _NRLogWithArgs(qword_100228E90, 17, "Failed to register link %@", v8);
      }

      IsLevelEnabled = 0;
    }

    goto LABEL_31;
  }

  IsLevelEnabled = 0;
LABEL_32:

  return IsLevelEnabled;
}

void sub_100016E5C(id a1)
{
  v1 = [NRPairingClientManager alloc];
  v4 = sub_100003490();
  v2 = sub_100016EC8(v1, v4);
  v3 = qword_100228EA0;
  qword_100228EA0 = v2;
}

void *sub_100016EC8(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = NRPairingClientManager;
    v5 = objc_msgSendSuper2(&v18, "init");
    if (!v5)
    {
      v11 = sub_100017054();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_100017054();
        _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRPairingClientManager initWithQueue:]", 48);
      }

      v14 = _os_log_pack_size();
      v15 = __error();
      v16 = _os_log_pack_fill(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, *v15, &_mh_execute_header, "%{public}s [super init] failed");
      *v16 = 136446210;
      *(v16 + 4) = "[NRPairingClientManager initWithQueue:]";
      sub_100017054();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 1, a2);
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = a1[2];
    a1[2] = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = a1[3];
    a1[3] = v8;
  }

  return a1;
}

id sub_100017054()
{
  if (qword_100228EB8 != -1)
  {
    dispatch_once(&qword_100228EB8, &stru_1001FA230);
  }

  v1 = qword_100228EB0;

  return v1;
}

void sub_1000170A8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228EB0;
  qword_100228EB0 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000170EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 16);
  }

  return (*(v1 + 16))(v1, *(a1 + 40), *(a1 + 41));
}

void sub_100017778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1000177B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && (*(WeakRetained + 11) & 1) == 0 && (*(WeakRetained + 12) & 1) == 0)
  {
    v10 = WeakRetained;
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v2 = qword_1002290B8;
    v3 = v2;
    if (v2)
    {
      v4 = v2[6];
      v5 = v4;
      if (v4)
      {
        [v4[33] removeObject:v10];
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v10;
    *(v10 + 10) = 0;
    v7 = v10[5];
    if (v7)
    {
      dispatch_source_cancel(v7);
      v8 = v10[5];
      v10[5] = 0;

      v6 = v10;
    }

    [v6[11] removeAllObjects];
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d Disabling PHS peers created", "", "[NROnDemandLinkSetupManager handlePHSStopped]", 805);
    }

    sub_100019FF4(v10);
    if ((*(v10 + 11) & 1) == 0 && (*(v10 + 12) & 1) == 0)
    {
      sub_10001A1FC(v10);
    }

    v9 = sub_100003490();
    dispatch_async(v9, &stru_1001FAE90);

    WeakRetained = v10;
  }
}

void sub_10001798C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = [*(a1 + 56) activeDevices];

    if (v2)
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v3 = [*(a1 + 56) activeDevices];
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v9;
        do
        {
          v7 = 0;
          do
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(v3);
            }

            sub_100018F44(a1, *(*(&v8 + 1) + 8 * v7));
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v5);
      }
    }
  }
}

void sub_100017AB4(uint64_t a1)
{
  v1 = a1;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [*(a1 + 72) copy];
  v2 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  p_vtable = NRSCDInterfaceConfig.vtable;
  if (v2)
  {
    v4 = v2;
    v37 = *v39;
    v34 = v1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        if (v8)
        {
          v9 = *(v8 + 8);
        }

        else
        {
          v9 = 0;
        }

        v10 = [v9 objectForKeyedSubscript:@"relay-req"];
        if ([v10 count])
        {
          v11 = objc_alloc_init(NSMutableDictionary);
          [v11 setObject:&off_1002099B0 forKeyedSubscript:@"v"];
          [v11 setObject:&off_1002099C8 forKeyedSubscript:@"nrv"];
          v12 = [v10 objectForKeyedSubscript:@"rid"];
          [v11 setObject:v12 forKeyedSubscript:@"rid"];

          v13 = [v10 objectForKeyedSubscript:@"id"];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
            if (nrSupportsPHSProxy() && *(v1 + 15) == 1 && *(v1 + 13) == 1)
            {
              v16 = sub_100169028(NRDLocalDevice, v15, 0);
              v17 = v16;
              if (v16)
              {
                operationalProp = v16->_operationalProp;
              }

              else
              {
                operationalProp = 0;
              }

              v19 = operationalProp;
              v20 = [(NRDeviceOperationalProperties *)v19 proxyCapability];

              v21 = v20 == 2;
              v1 = v34;
              p_vtable = (NRSCDInterfaceConfig + 24);
              if (!v21)
              {
                [v11 setObject:&off_1002099F8 forKeyedSubscript:@"rspc"];
                if (qword_100229298 != -1)
                {
                  dispatch_once(&qword_100229298, &stru_1001FC450);
                }

                v22 = [NSNumber numberWithUnsignedChar:byte_100229290];
                [v11 setObject:v22 forKeyedSubscript:@"t"];

                [v11 setObject:&off_100209A10 forKeyedSubscript:@"fl"];
                v23 = [v10 objectForKeyedSubscript:@"reg"];
                v24 = sub_100169028(NRDLocalDevice, v15, 0);
                v33 = v23;
                v35 = v24;
                if ([v23 BOOLValue] && v24 && (v24->_databaseFlags & 1) != 0)
                {
                  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"reg"];
                }

                else
                {
                  [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:@"reg"];
                  v25 = v15;
                  v26 = [*(v34 + 80) objectForKeyedSubscript:v25];

                  if (!v26)
                  {
                    memset(bytes, 0, sizeof(bytes));
                      ;
                    }

                    v27 = [NSData _newZeroingDataWithBytes:bytes length:32];
                    [*(v34 + 80) setObject:v27 forKeyedSubscript:v25];
                  }

                  v28 = [*(v34 + 80) objectForKeyedSubscript:v25];

                  [v11 setObject:v28 forKeyedSubscript:@"psk"];
                  if (v35 && (v35->_databaseFlags & 1) != 0)
                  {
                    if (qword_100228EC8 != -1)
                    {
                      dispatch_once(&qword_100228EC8, &stru_1001FA448);
                    }

                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_100228EC8 != -1)
                      {
                        dispatch_once(&qword_100228EC8, &stru_1001FA448);
                      }

                      _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d unregistering device %@ as peer does not have a matching registration", "", "[NROnDemandLinkSetupManager sendReplyForInternetRelayRequest]", 577, v35);
                    }

                    v29 = v35->_nrUUID;
                    sub_10016BD8C(NRDLocalDevice, v29, &stru_1001FA358);
                  }
                }

                v30 = [NRValidPeer alloc];
                v31 = [v10 objectForKeyedSubscript:@"nrv"];
                v32 = sub_10001823C(&v30->super.isa, v31);
                [*(v34 + 88) setObject:v32 forKeyedSubscript:v15];

                p_vtable = NRSCDInterfaceConfig.vtable;
LABEL_7:
                v42 = @"relay-res";
                v43 = v11;
                v6 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
                if (v8)
                {
                  v7 = *(v8 + 24);
                }

                else
                {
                  v7 = 0;
                }

                (*(v7 + 16))(v7, v6);
                [*(v1 + 72) removeObject:v8];

                goto LABEL_10;
              }
            }

            else
            {
            }
          }

          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            _NRLogWithArgs(p_vtable[472], 0, "%s%.30s:%-4d cannot provide internet relay service to peer ids device ID %@", "", "[NROnDemandLinkSetupManager sendReplyForInternetRelayRequest]", 562, v14);
          }

          [v11 setObject:&off_1002099E0 forKeyedSubscript:@"rspc"];
          goto LABEL_7;
        }

LABEL_10:
      }

      v4 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v4);
  }

  if ([*(v1 + 88) count])
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs(p_vtable[472], 16, "%s%.30s:%-4d sent response to peer(s)", "", "[NROnDemandLinkSetupManager sendReplyForInternetRelayRequest]", 592);
    }

    sub_10001839C(v1);
  }

  else
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs(p_vtable[472], 16, "%s%.30s:%-4d no valid peers for internet relay", "", "[NROnDemandLinkSetupManager sendReplyForInternetRelayRequest]", 595);
    }
  }
}

id *sub_10001823C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = NRValidPeer;
    v5 = objc_msgSendSuper2(&v14, "init");
    if (!v5)
    {
      v7 = sub_100018EEC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = sub_100018EEC();
        _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRValidPeer initWithInnerLinkVersion:]", 112);
      }

      v10 = _os_log_pack_size();
      v11 = __error();
      v12 = _os_log_pack_fill(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, *v11, &_mh_execute_header, "%{public}s [super init] failed");
      *v12 = 136446210;
      *(v12 + 4) = "[NRValidPeer initWithInnerLinkVersion:]";
      sub_100018EEC();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 1, a2);
  }

  return a1;
}

void sub_10001839C(uint64_t a1)
{
  if ([*(a1 + 88) count])
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 40);
      *(a1 + 40) = 0;
    }
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = *(a1 + 88);
  v50 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v50)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    v49 = *v58;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v58 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v57 + 1) + 8 * i);
        v7 = *(a1 + 88);
        v8 = [v7 objectForKeyedSubscript:v6];
        v9 = v8;
        if (v8)
        {
          v10 = *(v8 + 8);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          v12 = [v11 unsignedShortValue];
        }

        else
        {
          v12 = 0;
        }

        v52 = v12;
        v13 = sub_100169028((p_vtable + 37), v6, 0);
        v51 = v11;
        if (v13)
        {
          v14 = v13;
          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d PHS peer is an existing device %@", "", "[NROnDemandLinkSetupManager activateValidPHSPeers]", 825, v14);
          }
        }

        else
        {
          v15 = v6;
          v16 = objc_opt_self();
          v14 = sub_100169028(v16, v15, 1);

          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d PHS peer created %@", "", "[NROnDemandLinkSetupManager activateValidPHSPeers]", 828, v14);
          }
        }

        v17 = objc_alloc_init(NSMutableArray);
        v18 = objc_alloc_init(NSMutableArray);
        if (*(a1 + 13) == 1)
        {
          [v17 addObject:&off_100209A40];
        }

        if (*(a1 + 14) == 1)
        {
          [v17 addObject:&off_100209A58];
          [v18 addObject:&off_100209A70];
          [v18 addObject:&off_100209A88];
        }

        if (!v14)
        {
          v28 = 0;
          v31 = 0;
          goto LABEL_64;
        }

        if ((v14->_databaseFlags & 1) == 0 || (v19 = v14->_operationalProp, v19, !v19))
        {
LABEL_61:
          v28 = v14->_operationalProp;
          outOfBandKeychainItem = v14->_outOfBandKeychainItem;
          if (outOfBandKeychainItem)
          {
            outOfBandKeychainItem = outOfBandKeychainItem->_secretData;
          }

          v30 = outOfBandKeychainItem;
          v31 = v30;
          if (v14->_databaseFlags)
          {
            if (v52)
            {
              v47 = v17;
              v38 = v30;
              v39 = v14->_nrUUID;
              v31 = v38;
              v17 = v47;
              sub_100171304((p_vtable + 37), v52, v39);

              if (v31)
              {
                goto LABEL_75;
              }
            }

            else if (v30)
            {
              goto LABEL_75;
            }
          }

          else
          {
LABEL_64:
            v32 = v28;
            v28 = objc_alloc_init(NRDeviceOperationalProperties);

            v33 = *(a1 + 80);
            if (v14)
            {
              idsDeviceID = v14->_idsDeviceID;
            }

            else
            {
              idsDeviceID = 0;
            }

            v35 = idsDeviceID;
            v36 = [v33 objectForKeyedSubscript:v35];

            if (*(a1 + 13))
            {
              v37 = 1;
              p_vtable = (NRSCDInterfaceConfig + 24);
              goto LABEL_73;
            }

            p_vtable = NRSCDInterfaceConfig.vtable;
            if (*(a1 + 14) == 1)
            {
              v37 = 2;
LABEL_73:
              [(NRDeviceOperationalProperties *)v28 setProxyCapability:v37];
            }

            [(NRDeviceOperationalProperties *)v28 setAllowedLinkTypes:v17];
            [(NRDeviceOperationalProperties *)v28 setAllowedLinkSubtypes:v18];
            [(NRDeviceOperationalProperties *)v28 setUsesTLS:1];
            v31 = v36;
            if (v36)
            {
LABEL_75:
              if ([(NRDeviceOperationalProperties *)v28 proxyCapability]== 1)
              {
                if (*(a1 + 15) == 1)
                {
                  v40 = +[NRDeviceProxyProviderCriteria copyCriteriaForCellularSlicing];
                }

                else
                {
                  v40 = objc_alloc_init(NRDeviceProxyProviderCriteria);
                }

                v41 = v40;
                [(NRDeviceOperationalProperties *)v28 setProxyProviderCriteria:v40];
              }

              if (_os_feature_enabled_impl())
              {
                if (qword_100228EC8 != -1)
                {
                  dispatch_once(&qword_100228EC8, &stru_1001FA448);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228EC8 != -1)
                  {
                    dispatch_once(&qword_100228EC8, &stru_1001FA448);
                  }

                  _NRLogWithArgs(qword_100228EC0, 1, "%s%.30s:%-4d discovering all supported devices", "", "[NROnDemandLinkSetupManager activateValidPHSPeers]", 907);
                  v42 = 255;
                }

                else
                {
                  v42 = 255;
                }

LABEL_98:
                [(NRDeviceOperationalProperties *)v28 setAllowedPeerDeviceType:v42];
              }

              else
              {
                if (*(a1 + 13))
                {
                  v42 = 6;
                  goto LABEL_98;
                }

                if (*(a1 + 14) == 1)
                {
                  v42 = 1;
                  goto LABEL_98;
                }
              }

              [(NRDeviceOperationalProperties *)v28 setAllowsDeviceDiscovery:1];
              [(NRDeviceOperationalProperties *)v28 setAllowsDeadPeerDetection:1];
              if (v14)
              {
                operationalProp = v14->_operationalProp;
              }

              else
              {
                operationalProp = 0;
              }

              v44 = operationalProp;
              [(NRDeviceOperationalProperties *)v28 setOperationalScope:[(NRDeviceOperationalProperties *)v44 operationalScope]| [(NRDeviceOperationalProperties *)v28 operationalScope]| 1];

              [(NRDeviceOperationalProperties *)v28 setActiveOperationalScope:[(NRDeviceOperationalProperties *)v28 activeOperationalScope]| 1];
              sub_10013E868(v28);
              if (qword_100228EC8 != -1)
              {
                dispatch_once(&qword_100228EC8, &stru_1001FA448);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228EC8 != -1)
                {
                  dispatch_once(&qword_100228EC8, &stru_1001FA448);
                }

                _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d peer version %u, op prop %@", "", "[NROnDemandLinkSetupManager activateValidPHSPeers]", 924, v52, v28);
              }

              if (v14)
              {
                nrUUID = v14->_nrUUID;
              }

              else
              {
                nrUUID = 0;
              }

              v46 = nrUUID;
              sub_100169CF4((p_vtable + 37), v46, 0, v52, 0, v31, 0, 0, 0, 0, 0, 0, 0, v28, 0, @"relay-req", &stru_1001FA3E8);

LABEL_9:
              goto LABEL_10;
            }
          }

          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            _NRLogWithArgs(qword_100228EC0, 16, "%s%.30s:%-4d no PSK to complete registration", "", "[NROnDemandLinkSetupManager activateValidPHSPeers]", 893);
          }

          goto LABEL_9;
        }

        if (*(a1 + 14) == 1 && (v20 = v14->_operationalProp, v21 = [(NRDeviceOperationalProperties *)v20 proxyCapability], v20, v21 == 1))
        {
          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            _NRLogWithArgs(qword_100228EC0, 16, "%s%.30s:%-4d PHS peer incompatible with existing registration due to mismatching proxy role. Ignoring", "", "[NROnDemandLinkSetupManager activateValidPHSPeers]", 849);
          }
        }

        else
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v22 = v14->_operationalProp;
          v23 = [(NRDeviceOperationalProperties *)v22 allowedLinkTypes];

          v24 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v54;
            while (2)
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v54 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                if ([v17 containsObject:*(*(&v53 + 1) + 8 * j)])
                {

                  goto LABEL_61;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            _NRLogWithArgs(qword_100228EC0, 16, "%s%.30s:%-4d PHS peer incompatible with existing registration due to mismatching links. Ignoring", "", "[NROnDemandLinkSetupManager activateValidPHSPeers]", 861);
          }
        }

LABEL_10:
      }

      v50 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v50);
  }
}

void sub_100018E08(id a1, int64_t a2, NSString *a3)
{
  v4 = a3;
  if (qword_100228EC8 != -1)
  {
    dispatch_once(&qword_100228EC8, &stru_1001FA448);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d PHS peer registered with res %lld %@", "", "[NROnDemandLinkSetupManager activateValidPHSPeers]_block_invoke", 942, a2, v4);
  }
}

id sub_100018EEC()
{
  if (qword_100228EC8 != -1)
  {
    dispatch_once(&qword_100228EC8, &stru_1001FA448);
  }

  v1 = qword_100228EC0;

  return v1;
}

void sub_100018F44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && ((*(a1 + 11) & 1) != 0 || *(a1 + 12) == 1) && *(a1 + 14) == 1)
  {
    v31 = v3;
    v4 = [v3 model];
    v3 = v31;
    if (!v4 || ([v31 model], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "localizedCaseInsensitiveContainsString:", @"phone"), v5, v4, v3 = v31, v6))
    {
      v7 = v3;
      ++*(a1 + 24);
      v8 = [NSNumber numberWithUnsignedInt:?];
      v9 = objc_alloc_init(NSMutableDictionary);
      [v9 setObject:&off_1002099B0 forKeyedSubscript:@"v"];
      [v9 setObject:&off_1002099C8 forKeyedSubscript:@"nrv"];
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v10 = qword_1002290B8;
      v11 = sub_1000CAD2C(v10, 0);
      [v9 setObject:v11 forKeyedSubscript:@"id"];

      v12 = [v7 idsDeviceIdentifier];

      if (v12)
      {
        v13 = [v7 idsDeviceIdentifier];
        v14 = sub_100169028(NRDLocalDevice, v13, 0);

        if (v14)
        {
          v15 = v14->_databaseFlags & 1;
        }

        else
        {
          v15 = 0;
        }

        v16 = [NSNumber numberWithBool:v15];
        [v9 setObject:v16 forKeyedSubscript:@"reg"];
      }

      [v9 setObject:&off_100209A28 forKeyedSubscript:@"r"];
      [v9 setObject:v8 forKeyedSubscript:@"rid"];
      if (qword_100229298 != -1)
      {
        dispatch_once(&qword_100229298, &stru_1001FC450);
      }

      v17 = [NSNumber numberWithUnsignedChar:byte_100229290];
      [v9 setObject:v17 forKeyedSubscript:@"t"];

      [v9 setObject:&off_100209A10 forKeyedSubscript:@"fl"];
      v40 = @"relay-req";
      v41 = v9;
      v18 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v19 = objc_alloc_init(RPCompanionLinkClient);
      [v19 setDispatchQueue:*(a1 + 32)];
      [v19 setServiceType:@"com.apple.networkrelay.on-demand-setup"];
      [v19 setControlFlags:4];
      [v19 setDestinationDevice:v7];
      objc_initWeak(&location, a1);
      v20 = *(a1 + 56);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100019408;
      v32[3] = &unk_1001FA3A8;
      objc_copyWeak(&v38, &location);
      v21 = v20;
      v33 = v21;
      v22 = v7;
      v34 = v22;
      v23 = v8;
      v35 = v23;
      v24 = v19;
      v36 = v24;
      v25 = v18;
      v37 = v25;
      [v24 activateWithCompletion:v32];
      v26 = *(a1 + 64);
      if (!v26)
      {
        v27 = objc_alloc_init(NSMutableDictionary);
        v29 = *(a1 + 64);
        v28 = (a1 + 64);
        *v28 = v27;

        v26 = *v28;
      }

      v30 = v26;
      [v30 setObject:v24 forKeyedSubscript:v23];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);

      v3 = v31;
    }
  }
}

void sub_1000193E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019408(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && WeakRetained[7] == *(a1 + 32) && *(WeakRetained + 16) == 1)
  {
    if (v3)
    {
      v5 = WeakRetained;
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        _NRLogWithArgs(qword_100228EC0, 1, "%s%.30s:%-4d message client activation failed with error %@ for device %@", "", "[NROnDemandLinkSetupManager requestInternetRelayFromPeer:]_block_invoke", 666, v3, *(a1 + 40));
      }

      v6 = v5;
      v7 = [v5[8] objectForKeyedSubscript:*(a1 + 48)];
      [v7 invalidate];

      [v6[8] setObject:0 forKeyedSubscript:*(a1 + 48)];
      WeakRetained = v6;
    }

    else
    {
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001964C;
      v11[3] = &unk_1001FA380;
      v10 = WeakRetained;
      objc_copyWeak(&v17, (a1 + 72));
      v12 = *(a1 + 32);
      v13 = 0;
      v14 = *(a1 + 40);
      v15 = v10;
      v16 = *(a1 + 48);
      [v9 sendRequestID:@"com.apple.networkrelay.on-demand-setup" request:v8 options:0 responseHandler:v11];

      objc_destroyWeak(&v17);
      WeakRetained = v10;
    }
  }
}

void sub_10001964C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v44 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && WeakRetained[7] == *(a1 + 32) && *(WeakRetained + 16) == 1)
  {
    v43 = WeakRetained;
    if (a4)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        _NRLogWithArgs(qword_100228EC0, 1, "%s%.30s:%-4d message received response with error %@ for device %@", "", "[NROnDemandLinkSetupManager requestInternetRelayFromPeer:]_block_invoke_2", 683, *(a1 + 40), *(a1 + 48));
      }

      v9 = *(a1 + 56);
      if (v9)
      {
        v10 = *(v9 + 64);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 objectForKeyedSubscript:*(a1 + 64)];
      [v11 invalidate];

      v12 = *(a1 + 56);
      if (v12)
      {
        v13 = *(v12 + 64);
      }

      else
      {
        v13 = 0;
      }

      [v13 setObject:0 forKeyedSubscript:*(a1 + 64)];
      goto LABEL_54;
    }

    v14 = *(a1 + 48);
    v15 = v44;
    v16 = v7;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v17 = qword_100228EC0;
      v18 = [v15 allKeys];
      _NRLogWithArgs(v17, 0, "%s%.30s:%-4d received response %@ from device %@", "", "[NROnDemandLinkSetupManager processInternetRelayResponseFromPeer:response:options:]", 699, v18, v14);
    }

    v19 = [v15 objectForKeyedSubscript:@"relay-res"];
    if (![v19 count])
    {
LABEL_53:

LABEL_54:
      WeakRetained = v43;
      goto LABEL_55;
    }

    v20 = [v19 objectForKeyedSubscript:@"rspc"];
    v21 = [v20 unsignedShortValue];
    if (v21 != 1)
    {
      v26 = v21;
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        if ((v26 & 0xFC) != 0)
        {
          v27 = @"unknown";
        }

        else
        {
          v27 = off_1001FA468[v26 & 3];
        }

        _NRLogWithArgs(qword_100228EC0, 16, "%s%.30s:%-4d received internet relay response code %@ from device %@", "", "[NROnDemandLinkSetupManager processInternetRelayResponseFromPeer:response:options:]", 709, v27, v14);
      }

      goto LABEL_52;
    }

    v41 = v20;
    v42 = v16;
    v22 = [v19 objectForKeyedSubscript:@"reg"];
    v23 = [v14 idsDeviceIdentifier];
    v24 = sub_100169028(NRDLocalDevice, v23, 0);

    v40 = v22;
    if ([v22 BOOLValue])
    {
      if (v24)
      {
        databaseFlags = v24->_databaseFlags;
        if (databaseFlags)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      }
    }

    else if (v24)
    {
      databaseFlags = v24->_databaseFlags;
LABEL_38:
      if ((databaseFlags & 3) != 0)
      {
        v28 = v24->_nrUUID;
        sub_10016BD8C(NRDLocalDevice, v28, &stru_1001FA3C8);
      }
    }

    v29 = [v19 objectForKeyedSubscript:@"psk"];
    if (!v29)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v20 = v41;
      v16 = v42;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        _NRLogWithArgs(qword_100228EC0, 16, "%s%.30s:%-4d no device registration psk from device %@", "", "[NROnDemandLinkSetupManager processInternetRelayResponseFromPeer:response:options:]", 724, v14);
      }

      goto LABEL_43;
    }

    v30 = v29;
    v31 = v43[10];
    v32 = [v14 idsDeviceIdentifier];
    [v31 setObject:v30 forKeyedSubscript:v32];

LABEL_42:
    v33 = [v19 objectForKeyedSubscript:@"rid"];
    v34 = [v43[8] objectForKeyedSubscript:v33];
    [v34 invalidate];

    [v43[8] setObject:0 forKeyedSubscript:v33];
    v35 = [NRValidPeer alloc];
    v36 = [v19 objectForKeyedSubscript:@"nrv"];
    v37 = sub_10001823C(&v35->super.isa, v36);

    v38 = v43[11];
    v39 = [v14 idsDeviceIdentifier];
    [v38 setObject:v37 forKeyedSubscript:v39];

    sub_10001839C(v43);
    v20 = v41;
    v16 = v42;
LABEL_43:

LABEL_52:
    goto LABEL_53;
  }

LABEL_55:
}

void sub_100019C38(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && WeakRetained[7] == *(a1 + 32))
  {
    v4 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d [Browser] device found: %@", "", "[NROnDemandLinkSetupManager startBrowser]_block_invoke", 355, v5);
    }

    sub_100018F44(*(a1 + 40), v5);
    WeakRetained = v4;
  }
}

void sub_100019D4C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[7] == *(a1 + 32))
  {
    v4 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    IsLevelEnabled = _NRLogIsLevelEnabled();
    WeakRetained = v4;
    if (IsLevelEnabled)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs(qword_100228EC0, 1, "%s%.30s:%-4d [Browser] device lost: %@", "", "[NROnDemandLinkSetupManager startBrowser]_block_invoke_2", 363, v6);
      WeakRetained = v4;
    }
  }
}

void sub_100019E5C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[7] == *(a1 + 32))
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d [Browser] activated with error %@", "", "[NROnDemandLinkSetupManager startBrowser]_block_invoke_3", 370, v5);
    }

    if (v5)
    {
      [*(v4 + 56) invalidate];
    }

    else
    {
      *(v4 + 16) = 1;
      sub_10001798C(v4);
    }
  }
}

void sub_100019F84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && *(WeakRetained + 5) == *(a1 + 32))
  {
    v3 = WeakRetained;
    [WeakRetained didUpdatePHSState:0 llphsActive:0];
    WeakRetained = v3;
  }
}

void sub_100019FF4(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10001A324(a1);
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d Ineligible peers: %@", "", "[NROnDemandLinkSetupManager updateRegistrationForInEligibleNRUUIDsInner]", 1005, v1);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = sub_100163A30(NRDLocalDevice, *(*(&v11 + 1) + 8 * i));
          v9 = v8;
          if (!v8)
          {
            v7 = 0;
LABEL_13:
            sub_10016BD8C(NRDLocalDevice, v7, &stru_1001FA428);
            goto LABEL_14;
          }

          v10 = *(v8 + 48);
          v7 = *(v8 + 24);
          if ((v10 & 1) == 0)
          {
            goto LABEL_13;
          }

          sub_10016C20C(NRDLocalDevice, v7, &stru_1001FA408);
LABEL_14:
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }
}

void sub_10001A1FC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;

    *(a1 + 16) = 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 64) allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8) invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *(a1 + 64);
  *(a1 + 64) = 0;
}

id sub_10001A324(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v22 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = sub_10016C8BC(NRDLocalDevice);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v10 = sub_100163A30(NRDLocalDevice, *(*(&v23 + 1) + 8 * i));
        v11 = v10;
        if (v10)
        {
          v12 = *(v10 + 144);
          if (v12)
          {
            v13 = v12;
            v14 = v11[18];
            v15 = [v14 operationalScope];

            if (v15)
            {
              v16 = v11[18];
              v17 = [v16 activeOperationalScope];

              v18 = v11[18];
              v19 = [v18 operationalScope];

              if ((v19 & 1) != 0 && (*(a1 + 11) & 1) == 0 && *(a1 + 12) != 1)
              {
                v17 &= ~1uLL;
              }

              v7 = v11[18];
              [v7 setActiveOperationalScope:v17];

              v8 = v11[18];
              v9 = [v8 activeOperationalScope];

              if (!v9)
              {
                v20 = v11[3];
                [v22 addObject:v20];
              }
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  return v22;
}

void sub_10001A540(id a1, int64_t a2, NSString *a3)
{
  v4 = a3;
  if (qword_100228EC8 != -1)
  {
    dispatch_once(&qword_100228EC8, &stru_1001FA448);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d PHS peer unregistered with res %lld %@", "", "[NROnDemandLinkSetupManager updateRegistrationForInEligibleNRUUIDsInner]_block_invoke_2", 1016, a2, v4);
  }
}

void sub_10001A624(id a1, int64_t a2, NSString *a3)
{
  v4 = a3;
  if (qword_100228EC8 != -1)
  {
    dispatch_once(&qword_100228EC8, &stru_1001FA448);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d PHS peer disabled with res %lld %@", "", "[NROnDemandLinkSetupManager updateRegistrationForInEligibleNRUUIDsInner]_block_invoke", 1011, a2, v4);
  }
}

void sub_10001A708(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228EC0;
  qword_100228EC0 = v1;

  _objc_release_x1(v1, v2);
}

id *sub_10001A74C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = NROnDemandLinkSetupManager;
    v5 = objc_msgSendSuper2(&v20, "init");
    if (!v5)
    {
      v13 = sub_100018EEC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_100018EEC();
        _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NROnDemandLinkSetupManager initWithQueue:]", 150);
      }

      v16 = _os_log_pack_size();
      v17 = __error();
      v18 = _os_log_pack_fill(&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, *v17, &_mh_execute_header, "%{public}s [super init] failed");
      *v18 = 136446210;
      *(v18 + 4) = "[NROnDemandLinkSetupManager initWithQueue:]";
      sub_100018EEC();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 4, a2);
    v6 = objc_alloc_init(NSMutableArray);
    v7 = a1[9];
    a1[9] = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = a1[10];
    a1[10] = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = a1[11];
    a1[11] = v10;

    *(a1 + 5) = -1;
  }

  return a1;
}

void sub_10001A8F8(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001A9EC;
  v3[3] = &unk_1001FBF00;
  objc_copyWeak(&v4, (a1 + 32));

  objc_destroyWeak(&v4);
}

void sub_10001A9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v4 = qword_1002294C0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001AAE8;
  v5[3] = &unk_1001FC730;
  objc_copyWeak(&v6, (a1 + 32));
  sub_1001816DC(v4, v5);

  objc_destroyWeak(&v6);
}

uint64_t sub_10001AAE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0)
  {
    val = WeakRetained;
    if (!*(WeakRetained + 6))
    {
      v3 = objc_alloc_init(RPCompanionLinkClient);
      [v3 setDispatchQueue:*(val + 4)];
      objc_initWeak(&location, val);
      handler = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_10001B920;
      v30 = &unk_1001FA2A0;
      objc_copyWeak(&v32, &location);
      v4 = v3;
      v31 = v4;
      [v4 registerRequestID:@"com.apple.networkrelay.on-demand-setup" options:0 handler:&handler];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10001BDB0;
      v24 = &unk_1001FD0D8;
      objc_copyWeak(&v26, &location);
      v5 = v4;
      v25 = v5;
      [v5 setInterruptionHandler:&v21];
      from[0] = _NSConcreteStackBlock;
      from[1] = 3221225472;
      from[2] = sub_10001BEA4;
      from[3] = &unk_1001FD0D8;
      objc_copyWeak(&v20, &location);
      v6 = v5;
      v19 = v6;
      [v6 setInvalidationHandler:from];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10001BF98;
      v15[3] = &unk_1001FC1A8;
      objc_copyWeak(&v17, &location);
      v7 = v6;
      v16 = v7;
      [v7 activateWithCompletion:v15];
      v8 = *(val + 6);
      *(val + 6) = v7;
      v9 = v7;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&v20);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
      v2 = val;
    }

    objc_initWeak(from, v2);
    v10 = *(val + 4);
    handler = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10001AF10;
    v30 = &unk_1001FA318;
    objc_copyWeak(&v31, from);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v10, &handler);

    v11 = *(val + 4);
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10001AFB4;
    v24 = &unk_1001FA318;
    objc_copyWeak(&v25, from);
    xpc_set_event_stream_handler("com.apple.rapport.matching", v11, &v21);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v31);
    objc_destroyWeak(from);
    v12 = dispatch_time(0, 1000000000);
    dispatch_after(v12, *(val + 4), &stru_1001FA250);
    v2 = val;
  }

  return _objc_release_x1(WeakRetained, v2);
}

void sub_10001AE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_10001AF10(uint64_t a1, void *a2)
{
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[9] & 1) == 0)
    {
      string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
      sub_10001B258(string, v6, @"notify(%s)", v7, v8, v9, v10, v11, string);
      if (!strcmp(string, "com.apple.networkrelay.launch.phs"))
      {
        sub_10001B2CC(v4);
      }
    }
  }
}

void sub_10001AFB4(uint64_t a1, void *a2)
{
  v30 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 9) & 1) == 0)
    {
      string = xpc_dictionary_get_string(v30, _xpc_event_key_name);
      sub_10001B258(string, v6, @"rapport(%s)", v7, v8, v9, v10, v11, string);
      if (xpc_dictionary_get_BOOL(v30, "replyRequired"))
      {
        v12 = v30;
        if (v12)
        {
          v13 = v12;
          reply = xpc_dictionary_create_reply(v12);
          if (reply)
          {
            v15 = reply;

            xpc_dictionary_send_reply();
            goto LABEL_7;
          }

          v23 = sub_100018EEC();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v25 = sub_100018EEC();
            _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create_reply failed", "", "nr_xpc_dictionary_create_reply", 92);
          }

          v26 = _os_log_pack_size();
          v27 = &v30 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v28 = __error();
          v29 = _os_log_pack_fill(v27, v26, *v28, &_mh_execute_header, "%{public}s xpc_dictionary_create_reply failed");
          *v29 = 136446210;
          *(v29 + 4) = "nr_xpc_dictionary_create_reply";
        }

        else
        {
          v16 = sub_100018EEC();
          v17 = _NRLogIsLevelEnabled();

          if (v17)
          {
            v18 = sub_100018EEC();
            _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: nr_xpc_dictionary_create_reply called with NULL original", "", "nr_xpc_dictionary_create_reply", 88);
          }

          v19 = _os_log_pack_size();
          v20 = &v30 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v21 = __error();
          v22 = _os_log_pack_fill(v20, v19, *v21, &_mh_execute_header, "%{public}s nr_xpc_dictionary_create_reply called with NULL original");
          *v22 = 136446210;
          *(v22 + 4) = "nr_xpc_dictionary_create_reply";
        }

        sub_100018EEC();
        _NRLogAbortWithPack();
      }
    }
  }

LABEL_7:
}

void sub_10001B258(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  sub_1000059A8(0, 30101, &stru_1001FDE68, v10);
}

void sub_10001B2CC(_BYTE *a1)
{
  if (a1)
  {
    if (nrSupportsPHSProxy())
    {
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v2 = qword_1002294C0;
      if (!v2)
      {
        goto LABEL_49;
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
        if ((a1[10] & 1) == 0)
        {
          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d subscribing for PHS updates", "", "[NROnDemandLinkSetupManager handleLaunchEventForPHS]", 435);
          }

          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v5 = qword_1002290B8;
          v6 = v5;
          if (v5)
          {
            v7 = *(v5 + 6);
          }

          else
          {
            v7 = 0;
          }

          v8 = v7;
          v9 = a1;
          if (v8)
          {
            v10 = *(v8 + 33);
            if (!v10)
            {
              v11 = objc_alloc_init(NSMutableSet);
              v12 = *(v8 + 33);
              *(v8 + 33) = v11;

              v10 = *(v8 + 33);
            }

            [v10 addObject:v9];
            v13 = sub_100003490();
            block = _NSConcreteStackBlock;
            v31 = 3221225472;
            v32 = sub_10017FC6C;
            v33 = &unk_1001FD060;
            v34 = v9;
            v35 = v8;
            dispatch_async(v13, &block);

            v39 = 0;
            v40 = &v39;
            v41 = 0x3032000000;
            v42 = sub_10017AF00;
            v43 = sub_10017AF10;
            v44 = 0;
            v14 = *(v8 + 22);
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10017FCA8;
            v36[3] = &unk_1001FD128;
            v15 = v14;
            v37 = v15;
            v38 = &v39;
            if (sub_10017AE24(NRLinkManagerWiFi, v36))
            {
              v27 = sub_1001762F4();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v29 = sub_1001762F4();
                _NRLogWithArgs(v29, 17, "timed out fetching IR interface name");
              }
            }

            else
            {
              if (!v40[5])
              {
                v40[5] = @"ir0";
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                v16 = qword_1002294A0;
                v17 = _NRLogIsLevelEnabled();

                if (v17)
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  v18 = qword_1002294A0;
                  _NRLogWithArgs(v18, 1, "%s%.30s:%-4d Failed to fetch IR interface name. Falling back to %@", "", "[NRLinkManagerWiFi setupIRInterfaceConfigIfNeeded]", 2107, v40[5], block, v31, v32, v33);
                }
              }

              v19 = *(v8 + 16);
              if (!v19)
              {
                goto LABEL_37;
              }

              v20 = v19;
              v21 = *(v8 + 16);
              if (v21)
              {
                v21 = v21[3];
              }

              v22 = v21;
              v23 = [v22 isEqualToString:v40[5]];

              if ((v23 & 1) == 0)
              {
LABEL_37:
                v24 = [NRSCDInterfaceConfig alloc];
                v25 = sub_1000262B4(&v24->super.isa, v40[5], 0);
                v26 = *(v8 + 16);
                *(v8 + 16) = v25;

                if (*(v8 + 16))
                {
                  sub_10017B004(v8);
                }
              }
            }

            _Block_object_dispose(&v39, 8);
          }

          a1[10] = 1;
        }
      }

      else
      {
LABEL_49:
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d ignoring processing launch event as device not classC unlocked");
        }
      }
    }

    else
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d PHS proxy not supported");
      }
    }
  }
}

void sub_10001B908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B920(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[6] == *(a1 + 32))
  {
    v30 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d [Receiver] received request %@ with options %@", "", "[NROnDemandLinkSetupManager startReceiver]_block_invoke", 294, v8, v9);
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10001C0AC;
    v31[3] = &unk_1001FA278;
    v32 = v10;
    v12 = objc_retainBlock(v31);
    v13 = v8;
    v14 = v9;
    v15 = v12;
    v16 = [v13 objectForKeyedSubscript:@"relay-req"];
    if (![v16 count])
    {
      goto LABEL_35;
    }

    v27 = v14;
    v26 = [v16 objectForKeyedSubscript:@"r"];
    v17 = [v26 unsignedLongValue];
    v29 = [v16 objectForKeyedSubscript:@"reg"];
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    v28 = v13;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v18 = qword_100228EC0;
      v19 = objc_alloc_init(NSMutableString);
      v20 = v19;
      if (v17)
      {
        [v19 appendString:{@"PHS, "}];
      }

      _NRLogWithArgs(v18, 0, "%s%.30s:%-4d received request for internet relay (reason: %@ registered: %d)", "", "-[NROnDemandLinkSetupManager processIncomingRequest:options:response:]", 609, v20, [v29 BOOLValue]);
    }

    v21 = [v16 objectForKeyedSubscript:@"t"];
    if ([v21 unsignedCharValue] == 6 || (_os_feature_enabled_impl() & 1) != 0)
    {
      if ((v17 & 1) == 0)
      {
LABEL_34:

        v14 = v27;
        v13 = v28;
LABEL_35:

        WeakRetained = v30;
        goto LABEL_36;
      }

      v22 = objc_alloc_init(NRPendingIncomingRequest);
      p_isa = &v22->super.isa;
      if (v22)
      {
        objc_storeStrong(&v22->_request, a2);
        objc_storeStrong(p_isa + 2, a3);
        objc_setProperty_nonatomic_copy(p_isa, v24, v15, 24);
      }

      [*(v30 + 9) addObject:p_isa];
      sub_10001B2CC(v30);
      if (((v30[11] & 1) != 0 || v30[12] == 1) && v30[13] == 1)
      {
        sub_100017AB4(v30);
      }
    }

    else
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_34;
      }

      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v25 = qword_100228EC0;
      [v21 unsignedCharValue];
      p_isa = createStringFromNRDeviceEndpointType();
      _NRLogWithArgs(v25, 0, "%s%.30s:%-4d ignoring internet relay request from unsupported device type %@", "", "[NROnDemandLinkSetupManager processIncomingRequest:options:response:]", 614, p_isa);
    }

    goto LABEL_34;
  }

LABEL_36:
}

uint64_t sub_10001BDB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 48) == *(a1 + 32))
  {
    v5 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    WeakRetained = _NRLogIsLevelEnabled();
    v3 = v5;
    if (WeakRetained)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      WeakRetained = _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d [Receiver] interrupted", "", "[NROnDemandLinkSetupManager startReceiver]_block_invoke_3", 305);
      v3 = v5;
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_10001BEA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 48) == *(a1 + 32))
  {
    v5 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    WeakRetained = _NRLogIsLevelEnabled();
    v3 = v5;
    if (WeakRetained)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      WeakRetained = _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d [Receiver] invalidated", "", "[NROnDemandLinkSetupManager startReceiver]_block_invoke_4", 312);
      v3 = v5;
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

void sub_10001BF98(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[6] == *(a1 + 32))
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d [Receiver] activated with error %@", "", "[NROnDemandLinkSetupManager startReceiver]_block_invoke_5", 319, v5);
    }

    if (v5)
    {
      [v4[6] invalidate];
    }
  }
}

void sub_10001C0C4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 5) == a2)
  {
    state64 = 0;
    state = notify_get_state(a2, &state64);
    if (state)
    {
      v10 = state;
      v11 = sub_100018EEC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_100018EEC();
        _NRLogWithArgs(v13, 17, "notify_get_state(%s, %d) failed: %u", "com.apple.private.restrict-post.CoreTelephony.Slicing.LLPHS.State", a2, v10);
      }

      v4[15] = 0;
    }

    else
    {
      v4[15] = state64 == 2;
      if (_NRIsAppleInternal() && (v4[15] & 1) == 0)
      {
        v6 = sub_1000B7248(0, @"simulateSlicingEnabled");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v6 BOOLValue];

          if (v7)
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            if (_NRLogIsLevelEnabled())
            {
              v8 = sub_100018EEC();
              _NRLogWithArgs(v8, 0, "%s%.30s:%-4d simulating cellular slicing enabled as per settings", "", "[NROnDemandLinkSetupManager monitorState]_block_invoke", 253);
            }

            v4[15] = 1;
          }
        }

        else
        {
        }
      }

      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        if (v4[15])
        {
          v9 = "en";
        }

        else
        {
          v9 = "dis";
        }

        _NRLogWithArgs(qword_100228EC0, 0, "%s%.30s:%-4d cellular slicing is %sabled", "", "[NROnDemandLinkSetupManager monitorState]_block_invoke", 257, v9);
      }

      if ((v4[15] & 1) == 0 && v4[13] == 1)
      {
        [v4 didUpdatePHSState:0 llphsActive:0];
      }
    }
  }
}

void sub_10001C338(uint64_t a1)
{
  v2 = sub_10001A324(*(a1 + 32));
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = sub_100163A30(NRDLocalDevice, *(*(&v25 + 1) + 8 * v6));
        v8 = v7;
        if (v7)
        {
          v9 = *(v7 + 144);
          if (v9)
          {
            v10 = v9;
            v11 = *(v8 + 144);
            v12 = [v11 operationalScope] == 0;

            if (!v12 && (~*(v8 + 48) & 3) == 0)
            {
              v13 = *(v8 + 144);
              v14 = ([v13 operationalScope] & 1) == 0;

              if (!v14)
              {
                v15 = *(a1 + 32);
                if (v15)
                {
                  if (v15[11] & 1) != 0 || (v15[12])
                  {
                    goto LABEL_19;
                  }

                  sub_10001B2CC(v15);
                }

                v16 = *(v8 + 40);
                v17 = v16 == 0;

                if (!v17)
                {
                  v18 = [NRValidPeer alloc];
                  v19 = [NSNumber numberWithUnsignedShort:*(v8 + 16)];
                  v20 = sub_10001823C(&v18->super.isa, v19);

                  v21 = *(a1 + 32);
                  if (v21)
                  {
                    v21 = v21[11];
                  }

                  v22 = v21;
                  v23 = *(v8 + 40);
                  [v22 setObject:v20 forKeyedSubscript:v23];
                }
              }
            }
          }
        }

LABEL_19:

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v24 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v4 = v24;
    }

    while (v24);
  }

  sub_100019FF4(*(a1 + 32));
}

void sub_10001CB58(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228ED0;
  qword_100228ED0 = v1;

  _objc_release_x1(v1, v2);
}

_BYTE *sub_10001CB9C(_BYTE *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = NRNetInfo;
    v5 = objc_msgSendSuper2(&v14, "init");
    if (!v5)
    {
      v7 = sub_10001CD04();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = sub_10001CD04();
        _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRNetInfo initWithQueue:]", 95);
      }

      v10 = _os_log_pack_size();
      v11 = __error();
      v12 = _os_log_pack_fill(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, *v11, &_mh_execute_header, "%{public}s [super init] failed");
      *v12 = 136446210;
      *(v12 + 4) = "[NRNetInfo initWithQueue:]";
      sub_10001CD04();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 6, a2);
    a1[14] = 1;
  }

  return a1;
}

id sub_10001CD04()
{
  if (qword_100228ED8 != -1)
  {
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
  }

  v1 = qword_100228ED0;

  return v1;
}

char *sub_10001CD58(char *a1, void *a2)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_24;
  }

  v21.receiver = a1;
  v21.super_class = NRNetInfo;
  v6 = objc_msgSendSuper2(&v21, "init");
  a1 = v6;
  if (!v6)
  {
    v16 = sub_10001CD04();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_10001CD04();
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRNetInfo initWithIncomingData:]", 103);
    }

    a1 = _os_log_pack_size();
    v5 = &v21 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v5, a1, *v19, &_mh_execute_header, "%{public}s [super init] failed");
    *v20 = 136446210;
    *(v20 + 4) = "[NRNetInfo initWithIncomingData:]";
    sub_10001CD04();
    _NRLogAbortWithPack();
    __break(1u);
LABEL_39:
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
LABEL_7:
    if (_NRLogIsLevelEnabled())
    {
      if (p_vtable[475] != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      v8 = qword_100228ED0;
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d received insufficient bytes for net-info %u", "", "-[NRNetInfo processIncomingData:]", 591, [v2 length]);
    }

    goto LABEL_23;
  }

  v6[11] = 1;
  v7 = v5;
  v2 = v7;
  if (a1[10] == 1)
  {

    goto LABEL_24;
  }

  v36 = 0;
  v35 = 0;
  if ([v7 length] <= 9)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228ED8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

  v34 = 0;
  [v2 getBytes:&v34 length:1];
  v9 = v34;
  if (v34 >= 2u)
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      _NRLogWithArgs(qword_100228ED0, 16, "%s%.30s:%-4d received unsupported net-info version %d", "", "[NRNetInfo processIncomingData:]", 599, v34);
    }

    goto LABEL_23;
  }

  a1[14] = v34;
  if (v9 != 1)
  {
LABEL_23:

    goto LABEL_24;
  }

  [v2 getBytes:&v35 range:{0, 10}];
  v10 = bswap32(v36) >> 16;
  if ([v2 length] != (v10 + 10))
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    if (_NRLogIsLevelEnabled())
    {
      v14 = sub_10001CD04();
      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d received insufficient tlv bytes for net-info %u != (%zu + %u)", "", "-[NRNetInfo processIncomingData:]", 610, [v2 length], 0xAuLL, v10);
    }

    goto LABEL_23;
  }

  if (v10 < 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v2 subdataWithRange:{10, v10}];
  }

  *(a1 + 15) = WORD1(v35);
  *(a1 + 7) = bswap32(HIDWORD(v35));
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10001D2C4;
  v32 = sub_10001D2D4;
  v33 = 0;
  v15 = *(a1 + 5);
  *(a1 + 5) = 0;

  if (!v11 || (v22 = _NSConcreteStackBlock, v23 = 3221225472, v24 = sub_10001D2DC, v25 = &unk_1001FA530, v26 = a1, v27 = &v28, (NRTLVParse() & 1) != 0))
  {
    objc_storeStrong(a1 + 16, v29[5]);
    _Block_object_dispose(&v28, 8);

    a1 = a1;
    v12 = a1;
    goto LABEL_25;
  }

  _Block_object_dispose(&v28, 8);

LABEL_24:
  v12 = 0;
LABEL_25:

  return v12;
}

uint64_t sub_10001D2C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001D2DC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  v5 = __rev16(v4);
  v6 = sub_10001D7AC(*(a1 + 32), *a2);
  if (v6)
  {
    v7 = v6 >= v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v12 = v6;
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      _NRLogWithArgs(qword_100228ED0, 16, "%s%.30s:%-4d unexpected length %u > %u for tlv type %u", "", "[NRNetInfo processIncomingData:]_block_invoke", 629, v5, v12, *a2);
      return 0;
    }

    return result;
  }

  v8 = *a2;
  result = 1;
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1u:
        v13 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
        v14 = *(a1 + 32);
        v15 = v13;
        v16 = v15;
        if (v14)
        {
          v27 = 0;
          v28 = &v27;
          v29 = 0x3032000000;
          v30 = sub_10001D2C4;
          v31 = sub_10001D2D4;
          v32 = 0;
          if (NRTLVParse())
          {
            v17 = v28[5];
          }

          else
          {
            v17 = 0;
          }

          v14 = v17;
          _Block_object_dispose(&v27, 8);

          if (v14)
          {
            v23 = *(*(*(a1 + 40) + 8) + 40);
            if (!v23)
            {
              v24 = objc_alloc_init(NSMutableArray);
              v25 = *(*(a1 + 40) + 8);
              v26 = *(v25 + 40);
              *(v25 + 40) = v24;

              v23 = *(*(*(a1 + 40) + 8) + 40);
            }

            [v23 addObject:v14];
          }
        }

        else
        {
        }

        break;
      case 2u:
        v16 = [[NSData alloc] initWithBytes:a2 + 3 length:v5];
        v19 = *(a1 + 32);
        if (v19)
        {
          objc_storeStrong((v19 + 40), v16);
        }

        break;
      case 3u:
        if (v4 == 2048)
        {
          *(*(a1 + 32) + 112) = *(a2 + 3);
          v10 = *(a1 + 32);
          if (v10)
          {
            *(v10 + 112) = bswap64(*(v10 + 112));
          }

          return result;
        }

        if (qword_100228ED8 != -1)
        {
          dispatch_once(&qword_100228ED8, &stru_1001FA550);
        }

        if (!_NRLogIsLevelEnabled())
        {
          return 1;
        }

        if (qword_100228ED8 != -1)
        {
          dispatch_once(&qword_100228ED8, &stru_1001FA550);
        }

        v21 = qword_100228ED0;
        v22 = 649;
LABEL_53:
        _NRLogWithArgs(v21, 16, "%s%.30s:%-4d invalid tlv data size", "", "[NRNetInfo processIncomingData:]_block_invoke", v22);
        return 1;
      default:
        return result;
    }

    return 1;
  }

  switch(v8)
  {
    case 4u:
      if (v4 != 2048)
      {
        if (qword_100228ED8 != -1)
        {
          dispatch_once(&qword_100228ED8, &stru_1001FA550);
        }

        if (!_NRLogIsLevelEnabled())
        {
          return 1;
        }

        if (qword_100228ED8 != -1)
        {
          dispatch_once(&qword_100228ED8, &stru_1001FA550);
        }

        v21 = qword_100228ED0;
        v22 = 657;
        goto LABEL_53;
      }

      *(*(a1 + 32) + 120) = *(a2 + 3);
      v18 = *(a1 + 32);
      if (v18)
      {
        *(v18 + 120) = bswap64(*(v18 + 120));
      }

      break;
    case 5u:
      if (v4 != 1024)
      {
        if (qword_100228ED8 != -1)
        {
          dispatch_once(&qword_100228ED8, &stru_1001FA550);
        }

        if (!_NRLogIsLevelEnabled())
        {
          return 1;
        }

        if (qword_100228ED8 != -1)
        {
          dispatch_once(&qword_100228ED8, &stru_1001FA550);
        }

        v21 = qword_100228ED0;
        v22 = 665;
        goto LABEL_53;
      }

      v20 = *(a1 + 32);
      if (v20)
      {
        *(v20 + 20) = bswap32(*(a2 + 3));
      }

      break;
    case 7u:
      v11 = *(a1 + 32);
      if (v11)
      {
        *(v11 + 9) = 1;
      }

      break;
  }

  return result;
}

void sub_10001D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D7AC(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0u:
          return 0;
        case 1u:
          return 0x8000;
        case 2u:
          return 1024;
      }
    }

    else if (a2 <= 0x2B)
    {
      if (((1 << a2) & 0x58) != 0)
      {
        return 8;
      }

      if (((1 << a2) & 0xE0000000000) != 0)
      {
        return 0x2000;
      }

      if (a2 == 5)
      {
        return 4;
      }
    }

    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      _NRLogWithArgs(qword_100228ED0, 1, "%s%.30s:%-4d unhandled type %u", "", "[NRNetInfo maxTLVLen:]", 580, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001D8FC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  v5 = __rev16(v4);
  v6 = sub_10001D7AC(*(a1 + 32), *a2);
  if (v6)
  {
    v7 = v6 >= v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      _NRLogWithArgs(qword_100228ED0, 16, "%s%.30s:%-4d unexpected length %u > %u for tlv type %u", "");
      return 0;
    }

    return result;
  }

  v8 = *a2;
  if (v8 == 43)
  {
    v13 = [[NSString alloc] initWithBytes:a2 + 3 length:v5 encoding:4];
    if (v13)
    {
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v19 = nw_resolver_config_create();
        v20 = *(*(a1 + 40) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;
      }

      [v13 UTF8String];
      nw_resolver_config_add_search_domain();
    }

    goto LABEL_28;
  }

  if (v8 == 42)
  {
    v13 = [[NSData alloc] initWithBytes:a2 + 3 length:v5];
    v14 = sub_10013D760(v13, 1, 0, 0);
    if (v14)
    {
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v15 = nw_resolver_config_create();
        v16 = *(*(a1 + 40) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }

      v18 = [v14 hostname];
      [v18 UTF8String];
      nw_resolver_config_add_name_server();
    }

LABEL_28:
    return 1;
  }

  if (v8 != 41)
  {
    return 1;
  }

  if (v4 == 512)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = nw_resolver_config_create();
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    nw_resolver_config_set_class();
    return 1;
  }

  if (qword_100228ED8 != -1)
  {
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    _NRLogWithArgs(qword_100228ED0, 16, "%s%.30s:%-4d invalid length for resolver class %d != %zu");
    return 0;
  }

  return result;
}

void sub_10001DC04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100228ED8 != -1)
  {
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    _NRLogWithArgs(qword_100228ED0, 0, "%s%.30s:%-4d received path update: %@", "", "[NRNetInfo start]_block_invoke", 144, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 10) & 1) == 0 && WeakRetained[9] == *(a1 + 32))
  {
    v6 = v3;
    if (*(v5 + 12))
    {
      goto LABEL_54;
    }

    v7 = nw_path_copy_interface();
    v8 = v7;
    if (v7)
    {
      type = nw_interface_get_type(v7);
      if (type == *(v5 + 16))
      {
        location = 0;
        v32 = 0;
        v10 = [NSString stringWithUTF8String:nw_interface_get_name(v8)];

        v11 = location;
        if (location)
        {
          v12 = 0;
          goto LABEL_27;
        }

LABEL_25:
        v10 = v5[12];
        v11 = 0;
        if (!v10)
        {
          v13 = 0;
LABEL_30:

LABEL_31:
          v14 = v32;
          if (v32 || (v10 = v5[13]) != 0)
          {
            v15 = [v14 intersectsSet:v5[13]] ^ 1;
            if (v14)
            {
LABEL_37:
              if ((v13 | v15))
              {
                *(v5 + 12) = 1;
                if (v13)
                {
                  v28 = v15;
                  if (qword_100228ED8 != -1)
                  {
                    dispatch_once(&qword_100228ED8, &stru_1001FA550);
                  }

                  IsLevelEnabled = _NRLogIsLevelEnabled();
                  v15 = v28;
                  if (IsLevelEnabled)
                  {
                    if (qword_100228ED8 != -1)
                    {
                      dispatch_once(&qword_100228ED8, &stru_1001FA550);
                    }

                    v18 = v5[12];
                    v19 = location;
                    v20 = qword_100228ED0;
                    _NRLogWithArgs(v20, 1, "%s%.30s:%-4d local v4 addresses changed: %@ -> %@", "", "[NRNetInfo checkPathForNetworkFlaps:]", 220, v18, v19);

                    v15 = v28;
                  }
                }

                if (v15)
                {
                  if (qword_100228ED8 != -1)
                  {
                    dispatch_once(&qword_100228ED8, &stru_1001FA550);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100228ED8 != -1)
                    {
                      dispatch_once(&qword_100228ED8, &stru_1001FA550);
                    }

                    v21 = v5[13];
                    v22 = v32;
                    v23 = qword_100228ED0;
                    _NRLogWithArgs(v23, 1, "%s%.30s:%-4d local v6 addresses changed: %@ -> %@", "", "[NRNetInfo checkPathForNetworkFlaps:]", 223, v21, v22);
                  }
                }
              }

LABEL_53:
LABEL_54:

              if ((v5[1] & 1) == 0)
              {
                objc_initWeak(&location, v5);
                *(v5 + 8) = 1;
                if (*(v5 + 17))
                {
                  v24 = 500000000;
                }

                else
                {
                  v24 = 10000000000;
                }

                v25 = dispatch_time(0x8000000000000000, v24);
                v26 = *(a1 + 40);
                if (v26)
                {
                  v26 = v26[6];
                }

                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_10001ED38;
                block[3] = &unk_1001FD0D8;
                v27 = v26;
                objc_copyWeak(&v31, &location);
                v30 = *(a1 + 32);
                dispatch_after(v25, v27, block);

                objc_destroyWeak(&v31);
                objc_destroyWeak(&location);
              }

              goto LABEL_61;
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          v15 = v16;
          goto LABEL_37;
        }

        v12 = 1;
LABEL_27:
        v13 = [v11 intersectsSet:v5[12]] ^ 1;
        v11 = v10;
        if (!v12)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (!*(v5 + 16))
      {
        location = 0;
        v32 = 0;
        goto LABEL_25;
      }

      type = nw_interface_type_other;
    }

    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      _NRLogWithArgs(qword_100228ED0, 1, "%s%.30s:%-4d interface type changed: %u -> %u", "", "[NRNetInfo checkPathForNetworkFlaps:]", 201, *(v5 + 16), type);
    }

    *(v5 + 12) = 1;
    goto LABEL_53;
  }

LABEL_61:
}

void sub_10001E128(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 48));
  *(a1 + 8) = 0;
  v2 = *(a1 + 72);
  v3 = nw_path_evaluator_copy_path();
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  status = nw_path_get_status(*(a1 + 64));
  v6 = nw_path_copy_interface();
  obj = 0;
  v70[0] = 0;
  v60 = v6;
  if (v6)
  {
    v7 = v6;
    type = nw_interface_get_type(v6);
    v9 = [NSString stringWithUTF8String:nw_interface_get_name(v7)];

    v10 = v70[0];
  }

  else
  {
    v10 = 0;
    type = 0;
  }

  objc_storeStrong((a1 + 96), v10);
  objc_storeStrong((a1 + 104), obj);
  if (nw_path_is_expensive(*(a1 + 64)))
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  if (nw_path_is_constrained(*(a1 + 64)))
  {
    v11 |= 0x10u;
  }

  v12 = v11 | nw_path_has_dns(*(a1 + 64));
  if (nw_path_has_ipv4(*(a1 + 64)))
  {
    v12 |= 2u;
  }

  if (nw_path_has_ipv6(*(a1 + 64)))
  {
    v12 |= 4u;
  }

  if (nw_path_is_roaming())
  {
    v13 = v12 | 0x20;
  }

  else
  {
    v13 = v12;
  }

  if (*(a1 + 13) == 1)
  {
    estimated_upload_throughput = nw_path_get_estimated_upload_throughput();
    estimated_download_throughput = nw_path_get_estimated_download_throughput();
  }

  else
  {
    estimated_upload_throughput = 0;
    estimated_download_throughput = 0;
  }

  if (*(a1 + 15) == status && *(a1 + 16) == type && *(a1 + 28) == v13 && *(a1 + 112) == estimated_upload_throughput && *(a1 + 120) == estimated_download_throughput)
  {
    v61 = 0;
  }

  else
  {
    *(a1 + 15) = status;
    *(a1 + 16) = type;
    *(a1 + 28) = v13;
    v61 = 1;
    *(a1 + 112) = estimated_upload_throughput;
    *(a1 + 120) = estimated_download_throughput;
  }

  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_10001D2C4;
  v67 = sub_10001D2D4;
  v68 = 0;
  v16 = *(a1 + 64);
  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_10001EB68;
  block[8] = &unk_1001FA4B8;
  block[9] = &v63;
  nw_path_enumerate_resolver_configs();

  v17 = v64[5];
  v18 = *(a1 + 128);
  v19 = v18;
  if (!(v17 | v18))
  {
    goto LABEL_27;
  }

  v20 = [v18 count];
  if (v20 == [v17 count])
  {
    if (![v19 count])
    {
LABEL_27:

      goto LABEL_45;
    }

    v59 = v17;
    v58 = type;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = [v19 objectAtIndex:v21];
      v24 = [v59 objectAtIndex:v21];
      v25 = nw_resolver_config_get_class();
      if (v25 != nw_resolver_config_get_class())
      {
        goto LABEL_42;
      }

      v26 = objc_alloc_init(NSMutableArray);
      v27 = objc_alloc_init(NSMutableArray);
      v77 = _NSConcreteStackBlock;
      v78 = 3221225472;
      v79 = sub_10001EC08;
      v80 = &unk_1001FA4E0;
      v28 = v26;
      v81 = v28;
      nw_resolver_config_enumerate_name_servers();
      v84 = _NSConcreteStackBlock;
      v85 = 3221225472;
      v86 = sub_10001EC54;
      v87 = &unk_1001FA4E0;
      v29 = v27;
      v88 = v29;
      nw_resolver_config_enumerate_name_servers();
      v30 = [v28 count];
      if (v30 != [v29 count] || (objc_msgSend(v28, "isEqualToArray:", v29) & 1) == 0)
      {

LABEL_42:
        type = v58;
        v17 = v59;
        goto LABEL_43;
      }

      v31 = objc_alloc_init(NSMutableArray);
      v32 = objc_alloc_init(NSMutableArray);
      v72 = _NSConcreteStackBlock;
      v73 = 3221225472;
      v74 = sub_10001ECA0;
      v75 = &unk_1001FA4E0;
      v33 = v31;
      v76 = v33;
      nw_resolver_config_enumerate_search_domains();
      v70[1] = _NSConcreteStackBlock;
      v70[2] = 3221225472;
      v70[3] = sub_10001ECEC;
      v70[4] = &unk_1001FA4E0;
      v34 = v32;
      v71 = v34;
      nw_resolver_config_enumerate_search_domains();
      v35 = [v33 count];
      v36 = v35 == [v34 count] && (objc_msgSend(v33, "isEqualToArray:", v34) & 1) != 0;

      if (!v36)
      {
        break;
      }

      v21 = ++v22;
      if ([v19 count] <= v22)
      {

        type = v58;
        goto LABEL_45;
      }
    }

    type = v58;
  }

  else
  {
LABEL_43:
  }

  objc_storeStrong((a1 + 128), v64[5]);
  v61 = 1;
LABEL_45:
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v37 = qword_1002290B8;
  v38 = v37;
  if (v37 && (v39 = v37[6]) != 0)
  {
    v40 = v39;
    v41 = v39[3];
    dispatch_assert_queue_V2(v41);

    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = sub_10017AF00;
    v88 = sub_10017AF10;
    v89 = 0;
    v42 = v40[22];
    v43 = v40[13];
    if (v43)
    {
      v43 = v43[3];
    }

    v44 = v43;
    v77 = _NSConcreteStackBlock;
    v78 = 3221225472;
    v79 = sub_10017FA4C;
    v80 = &unk_1001FD150;
    v45 = v42;
    v81 = v45;
    v46 = v44;
    v82 = v46;
    v83 = &v84;
    if (sub_10017AE24(NRLinkManagerWiFi, &v77))
    {
      v42 = sub_1001762F4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v42 = sub_1001762F4();
        _NRLogWithArgs(v42, 16, "%s%.30s:%-4d Timed out getting WiFi SSID", "", "[NRLinkManagerWiFi copyWiFiSSIDData]", 1969);
      }

      v47 = 0;
    }

    else
    {
      v47 = *(v85 + 40);
    }

    _Block_object_dispose(&v84, 8);
    if (v47)
    {
      v48 = 0;
      goto LABEL_62;
    }
  }

  else
  {
  }

  v50 = *(a1 + 40);
  v47 = 0;
  if (!v50)
  {
    goto LABEL_66;
  }

  v42 = v50;
  v48 = 1;
LABEL_62:
  v51 = *(a1 + 40);
  v52 = [v47 isEqualToData:v51];

  if (v48)
  {
  }

  if ((v52 & 1) == 0)
  {
    objc_storeStrong((a1 + 40), v47);
    v61 = 1;
  }

LABEL_66:
  if (type != 1)
  {
    v53 = *(a1 + 40);
    *(a1 + 40) = 0;
  }

  if (v61)
  {
    goto LABEL_69;
  }

  if (*(a1 + 15) != 2 && *(a1 + 12) == 1)
  {
    ++*(a1 + 20);
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    v55 = qword_100228ED0;
    v56 = _NRLogIsLevelEnabled();

    if (v56)
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      v57 = qword_100228ED0;
      _NRLogWithArgs(v57, 1, "%s%.30s:%-4d forcing a net-info update due to a network flap (id: %u)", "", "[NRNetInfo processPathUpdate]", 325, *(a1 + 20));
    }

LABEL_69:
    ++*(a1 + 32);
    v54 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EBDC;
    block[3] = &unk_1001FD3C8;
    block[4] = a1;
    dispatch_async(v54, block);
  }

  *(a1 + 12) = 0;

  _Block_object_dispose(&v63, 8);
}

void sub_10001EB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose((v32 - 152), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001EB68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];

  return 1;
}

uint64_t sub_10001EBDC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 10))
    {
      return result;
    }

    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  return (*(v2 + 16))();
}

uint64_t sub_10001EC08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:a2];
  [v2 addObject:v3];

  return 1;
}

uint64_t sub_10001EC54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:a2];
  [v2 addObject:v3];

  return 1;
}

uint64_t sub_10001ECA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:a2];
  [v2 addObject:v3];

  return 1;
}

uint64_t sub_10001ECEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:a2];
  [v2 addObject:v3];

  return 1;
}

void sub_10001ED38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (*(WeakRetained + 10) & 1) == 0 && *(WeakRetained + 9) == *(a1 + 32))
  {
    v3 = WeakRetained;
    sub_10001E128(WeakRetained);
    WeakRetained = v3;
  }
}

uint64_t sub_10001EDA0(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithUTF8String:a2];
  v3 = [NWAddressEndpoint endpointWithHostname:v2 port:@"0"];

  v4 = sub_10013D308(v3, 0, 0);
  if (v4)
  {
    NRTLVAddData();
  }

  return 1;
}

uint64_t sub_10001EE48(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithUTF8String:a2];
  v3 = [v2 dataUsingEncoding:4];

  NRTLVAddData();
  return 1;
}

dispatch_queue_t *sub_10001EEBC(dispatch_queue_t *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  dispatch_assert_queue_V2(a1[6]);
  if (*(v1 + 10))
  {
    return 0;
  }

  if (*(v1 + 8) == 1)
  {
    sub_10001E128(v1);
  }

  v2 = v1[10];
  if (!v2 || v2 != v1[4] || !v1[11])
  {
    memset(v28 + 1, 0, 9);
    LOBYTE(v28[0]) = *(v1 + 14);
    v28[1] = *(v1 + 15);
    *&v28[2] = bswap32(*(v1 + 7));
    v22 = objc_alloc_init(NSMutableData);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v1;
    obj = v1[16];
    v5 = [obj countByEnumeratingWithState:&v24 objects:v46 count:16];
    if (v5)
    {
      v23 = *v25;
      do
      {
        v6 = 0;
        do
        {
          if (*v25 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v24 + 1) + 8 * v6);
          if (v7)
          {
            v8 = v7;
            v40 = 0;
            v41 = &v40;
            v42 = 0x3032000000;
            v43 = sub_10001D2C4;
            v44 = sub_10001D2D4;
            v45 = objc_alloc_init(NSMutableData);
            v39 = bswap32(nw_resolver_config_get_class()) >> 16;
            NRTLVAdd();
            v34 = _NSConcreteStackBlock;
            v35 = 3221225472;
            v36 = sub_10001EDA0;
            v37 = &unk_1001FA508;
            v38 = &v40;
            nw_resolver_config_enumerate_name_servers();
            v29 = _NSConcreteStackBlock;
            v30 = 3221225472;
            v31 = sub_10001EE48;
            v32 = &unk_1001FA508;
            v33 = &v40;
            nw_resolver_config_enumerate_search_domains();
            v9 = v41[5];
            _Block_object_dispose(&v40, 8);

            if (v9)
            {
              NRTLVAddData();
            }
          }

          else
          {
            if (qword_100228ED8 != -1)
            {
              dispatch_once(&qword_100228ED8, &stru_1001FA550);
            }

            v10 = qword_100228ED0;
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              if (qword_100228ED8 != -1)
              {
                dispatch_once(&qword_100228ED8, &stru_1001FA550);
              }

              v12 = qword_100228ED0;
              _NRLogWithArgs(v12, 17, "%s called with null config", "[NRNetInfo copyResolverConfigData:]");
            }

            v9 = 0;
          }

          v6 = v6 + 1;
        }

        while (v5 != v6);
        v13 = [obj countByEnumeratingWithState:&v24 objects:v46 count:16];
        v5 = v13;
      }

      while (v13);
    }

    v14 = v1[5];
    if ([v14 length])
    {
      v15 = [v20[5] length]< 0xFF;

      if (v15)
      {
        NRTLVAddData();
      }
    }

    else
    {
    }

    v16 = v20;
    v17 = v20[14];
    if (v17)
    {
      v40 = bswap64(v17);
      NRTLVAdd();
      v16 = v20;
    }

    v18 = v16[15];
    if (v18)
    {
      v40 = bswap64(v18);
      NRTLVAdd();
      v16 = v20;
    }

    v19 = *(v16 + 5);
    if (*(v16 + 6) != v19)
    {
      LODWORD(v40) = bswap32(v19);
      NRTLVAdd();
      v16 = v20;
      *(v20 + 6) = *(v20 + 5);
    }

    if (*(v16 + 17) == 1)
    {
      NRTLVAdd();
    }

    if (qword_100229288 != -1)
    {
      dispatch_once(&qword_100229288, &stru_1001FC430);
    }

    v40 = bswap64(qword_100229280);
    NRTLVAdd();
    v28[4] = bswap32([v22 length]) >> 16;
    v1 = [[NSMutableData alloc] initWithBytes:v28 length:10];
    [(dispatch_queue_t *)v1 appendData:v22];
    v20[10] = v20[4];
    objc_storeStrong(v20 + 11, v1);

    return v1;
  }

  if (qword_100228ED8 != -1)
  {
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    _NRLogWithArgs(qword_100228ED0, 2, "%s%.30s:%-4d using cached send data for generation %llu", "", "[NRNetInfo copySendData]", 494, v1[4]);
  }

  v3 = v1[11];

  return v3;
}

void sub_10001F4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F64C(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228EF0;
  qword_100228EF0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10001F9C4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = sub_10001FEDC(a1, v5);
      if (v7)
      {
        [*(a1 + 40) setDelegate:0];
        v8 = *(a1 + 40);
        *(a1 + 40) = 0;

        v9 = *(v7 + 56);
        v10 = v9;
        if (v9)
        {
          v11 = *(v7 + 48);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100020098;
          block[3] = &unk_1001FA5B8;
          v34 = v9;
          v35 = a2;
          v33 = v6;
          dispatch_async(v11, block);
        }

        v12 = *(a1 + 72);
        if (v7 != v12)
        {
          [*(a1 + 64) removeObject:v7];
          v13 = *(a1 + 72);
          v14 = *(a1 + 64);
          [v14 insertObject:v13 atIndex:0];

          v12 = *(a1 + 72);
        }

        *(a1 + 72) = 0;

        if (*(a1 + 9) == 1 && a2)
        {
          v31 = v7;
          v15 = *(a1 + 72);
          v30 = v10;
          if (v15)
          {
            v16 = v15[7];
            if (v16)
            {
              v17 = *(a1 + 72);
              if (v17)
              {
                v18 = v17[6];
              }

              else
              {
                v18 = 0;
              }

              v42[0] = _NSConcreteStackBlock;
              v42[1] = 3221225472;
              v42[2] = sub_100020E20;
              v42[3] = &unk_1001FD2A0;
              v19 = v16;
              v43 = v19;
              v20 = v17;
              dispatch_async(v18, v42);
            }

            else
            {
              v19 = 0;
            }

            v15 = *(a1 + 72);
          }

          *(a1 + 72) = 0;

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v21 = *(a1 + 64);
          v22 = [v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v39;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v39 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v38 + 1) + 8 * i);
                if (v26)
                {
                  v27 = *(v26 + 56);
                  if (v27)
                  {
                    v28 = *(v26 + 48);
                    v36[0] = _NSConcreteStackBlock;
                    v36[1] = 3221225472;
                    v36[2] = sub_100020E38;
                    v36[3] = &unk_1001FD2A0;
                    v37 = v27;
                    v29 = v27;
                    dispatch_async(v28, v36);
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
            }

            while (v23);
          }

          [*(a1 + 64) removeAllObjects];
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          v7 = v31;
          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }

            _NRLogWithArgs(qword_100228EF0, 0, "%s%.30s:%-4d Removed all pairers", "", "[NRBluetoothPairingManager removeAllPairers]", 217);
          }

          v10 = v30;
        }

        sub_1000200B0(a1);
      }

      else
      {
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          _NRLogWithArgs(qword_100228EF0, 0, "%s%.30s:%-4d no pairer found for peer bluetoothUUID:%@", "", "[NRBluetoothPairingManager handlePairerCompletionWithSuccess:peerBTUUID:]", 382, v6);
        }
      }
    }

    else
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        _NRLogWithArgs(qword_100228EF0, 17, "Invalid(nil) peerBTUUID");
      }
    }
  }
}

id *sub_10001FEDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = *(v4 + 40);
      v6 = v5 ? v5[2] : 0;
      v7 = v5;
      v8 = [v6 isEqual:v3];

      if (v8)
      {
        v9 = *(a1 + 72);
        goto LABEL_23;
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(a1 + 64);
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          if (v15)
          {
            v16 = v15[5];
            v17 = v16;
            if (v16)
            {
              v16 = v16[2];
            }
          }

          else
          {
            v17 = 0;
            v16 = 0;
          }

          v18 = [v16 isEqual:{v3, v21}];

          if (v18)
          {
            v9 = v15;

            goto LABEL_23;
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v19 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v12 = v19;
      }

      while (v19);
    }
  }

  v9 = 0;
LABEL_23:

  return v9;
}

void sub_1000200B0(uint64_t a1)
{
  if (![*(a1 + 64) count])
  {
LABEL_55:
    sub_100020CD4(a1);
    [*(a1 + 24) stopAdvertising];
    [*(a1 + 32) stopScan];
    v44 = *(a1 + 24);
    *(a1 + 24) = 0;

    v45 = *(a1 + 32);
    *(a1 + 32) = 0;

    [*(a1 + 40) setDelegate:0];
    v46 = *(a1 + 40);
    *(a1 + 40) = 0;

    *(a1 + 8) = 0;
    v47 = *(a1 + 56);
    *(a1 + 56) = 0;

    v48 = *(a1 + 72);
    *(a1 + 72) = 0;

    *(a1 + 12) = 0;
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      _NRLogWithArgs(qword_100228EF0, 1, "%s%.30s:%-4d no more pairer requests", "", "[NRBluetoothPairingManager startNextPairer]", 713);
    }

    return;
  }

  v2 = "[NRBluetoothPairingManager startNextPairer]";
  v3 = "";
  while (1)
  {
    *(a1 + 8) = 1;
    v10 = *(a1 + 64);
    v11 = [v10 firstObject];
    v12 = *(a1 + 72);
    *(a1 + 72) = v11;

    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v13 = *(a1 + 72);
      v14 = qword_100228EF0;
      _NRLogWithArgs(v14, 1, "%s%.30s:%-4d starting: %@", v3, v2, 719, v13);
    }

    [*(a1 + 64) removeObjectAtIndex:0];
    v15 = *(a1 + 72);
    if (!v15)
    {
      break;
    }

    v16 = v15[8];

    if (v16 != 1)
    {
      break;
    }

    *(a1 + 10) = 1;
    v17 = *(a1 + 32);
    if (!v17)
    {
      v18 = [CBCentralManager alloc];
      v19 = *(a1 + 16);
      v20 = [v18 initWithDelegate:a1 queue:v19 options:0];
      v21 = *(a1 + 32);
      *(a1 + 32) = v20;
    }

    v22 = *(a1 + 72);
    if (v22)
    {
      v23 = v22[2];
    }

    else
    {
      v23 = 0;
    }

    v24 = v22;
    v60 = sub_100163B2C(NRDLocalDevice, v23, 0);

    if (v60)
    {
      objc_storeStrong((a1 + 56), v60[4]);
      if (v17)
      {
        sub_1000209C4(a1);
      }

      goto LABEL_92;
    }

    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v25 = qword_100228EF0;
      v26 = *(a1 + 72);
      if (v26)
      {
        v27 = v26[2];
      }

      else
      {
        v27 = 0;
      }

      v28 = v26;
      v29 = v25;
      _NRLogWithArgs(v29, 16, "%s%.30s:%-4d Device for nrUUID:%@ not found", v3, "[NRBluetoothPairingManager unpair]", 287, v27);
    }

    v9 = 0;
LABEL_7:

    if (![*(a1 + 64) count])
    {
      goto LABEL_55;
    }
  }

  *(a1 + 11) = 1;
  v30 = *(a1 + 72);
  if (v30)
  {
    v31 = v30[2];
  }

  else
  {
    v31 = 0;
  }

  v32 = v30;
  v60 = sub_100163B2C(NRDLocalDevice, v31, 0);

  if (!v60)
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v4 = qword_100228EF0;
      v5 = *(a1 + 72);
      if (v5)
      {
        v6 = v5[2];
      }

      else
      {
        v6 = 0;
      }

      v7 = v5;
      v8 = v4;
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d Device for nrUUID:%@ not found", v3, "[NRBluetoothPairingManager pair]", 303, v6);
    }

LABEL_6:
    v9 = v60;
    goto LABEL_7;
  }

  if ((v60[6] & 0x40) != 0)
  {
    objc_storeStrong((a1 + 56), v60[4]);
    sub_10001F9C4(a1, 1, *(a1 + 56));
    goto LABEL_92;
  }

  v33 = v60[18];
  v34 = [v33 bluetoothRole];
  v35 = v34 != 1;
  if (v34 == 1)
  {
    goto LABEL_69;
  }

  v36 = v60[18];
  v37 = [v36 proxyCapability];
  v35 = v37 != 1;
  if (v37 == 1)
  {
    goto LABEL_68;
  }

  v38 = v2;
  v39 = v3;
  v40 = v60[18];
  v41 = [v40 bluetoothEndpointType];

  if (v41 == 2)
  {
    v35 = 0;
    v3 = v39;
    goto LABEL_70;
  }

  v33 = v60[18];
  if ([v33 bluetoothRole] == 2)
  {
    v35 = 1;
    v3 = v39;
    goto LABEL_69;
  }

  v36 = v60[18];
  if ([v36 proxyCapability] == 2)
  {
    v3 = v39;
LABEL_68:

LABEL_69:
    goto LABEL_70;
  }

  v42 = v60[18];
  v43 = [v42 bluetoothEndpointType];

  if (v43 != 1)
  {
    v3 = v39;
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    v2 = v38;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      _NRLogWithArgs(qword_100228EF0, 16, "%s%.30s:%-4d not enough information to pair device %@", v3, "[NRBluetoothPairingManager pair]", 325, v60);
      v9 = v60;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v35 = 1;
  v3 = v39;
LABEL_70:
  *(a1 + 9) = v35;
  v49 = *(a1 + 32);
  if (!v49)
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      _NRLogWithArgs(qword_100228EF0, 1, "%s%.30s:%-4d starting central manager", v3, "[NRBluetoothPairingManager pair]", 333);
    }

    v50 = [CBCentralManager alloc];
    v51 = *(a1 + 16);
    v52 = [v50 initWithDelegate:a1 queue:v51 options:0];
    v53 = *(a1 + 32);
    *(a1 + 32) = v52;

    v49 = *(a1 + 32);
  }

  [a1 centralManagerDidUpdateState:v49];
  if (v35)
  {
    v54 = *(a1 + 24);
    if (!v54)
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      if (_NRLogIsLevelEnabled())
      {
        v55 = sub_100020970();
        _NRLogWithArgs(v55, 1, "%s%.30s:%-4d starting peripheral manager", v3, "[NRBluetoothPairingManager pair]", 343);
      }

      v56 = [CBPeripheralManager alloc];
      v57 = *(a1 + 16);
      v58 = [v56 initWithDelegate:a1 queue:v57 options:0];
      v59 = *(a1 + 24);
      *(a1 + 24) = v58;

      v54 = *(a1 + 24);
    }

    [a1 peripheralManagerDidUpdateState:v54];
  }

  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    _NRLogWithArgs(qword_100228EF0, 1, "%s%.30s:%-4d starting pairer for %@", v3, "[NRBluetoothPairingManager pair]", 351, v60);
  }

LABEL_92:
}

id sub_100020970()
{
  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  v1 = qword_100228EF0;

  return v1;
}

void sub_1000209C4(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v2 = *(a1 + 56);
      v3 = qword_100228EF0;
      _NRLogWithArgs(v3, 1, "%s%.30s:%-4d checking if device %@ is paired before unpairing", "", "[NRBluetoothPairingManager resumeUnpairing]", 245, v2);
    }

    v4 = 32;
    if (*(a1 + 9))
    {
      v4 = 24;
    }

    v5 = *(a1 + v4);
    v6 = [v5 sharedPairingAgent];

    obj = v6;
    [v6 retrievePairedPeers];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v22 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
LABEL_12:
      v11 = 0;
      while (1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          _NRLogWithArgs(qword_100228EF0, 1, "%s%.30s:%-4d checking peer %@", "", "[NRBluetoothPairingManager resumeUnpairing]", 257, v12);
        }

        v13 = *(a1 + 56);
        v14 = [v12 identifier];
        v15 = [v13 compare:v14];

        if (!v15)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v9)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }
      }

      v16 = v12;

      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = obj;
      objc_storeStrong((a1 + 40), obj);
      [obj setDelegate:a1];
      [obj unpairPeer:v16];
    }

    else
    {
LABEL_24:

LABEL_27:
      sub_10001F9C4(a1, 1, *(a1 + 56));
      v17 = obj;
    }
  }
}

void sub_100020CD4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 48);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          v8 = v7;
          if (v7 && *(a1 + 32) && ([v7 state] == 1 || objc_msgSend(v8, "state") == 2))
          {
            [*(a1 + 32) cancelPeripheralConnection:v8];
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }
}

void sub_1000218D4(uint64_t a1)
{
  if (*(a1 + 11) == 1)
  {
    v23 = v1;
    v24 = v2;
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = v4[5];
      v6 = v5;
      v7 = v5 ? *(v5 + 2) : 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = v4;

    if (v7)
    {
      v9 = 32;
      if (*(a1 + 9))
      {
        v9 = 24;
      }

      v10 = *(a1 + v9);
      v11 = [v10 sharedPairingAgent];

      v12 = *(a1 + 72);
      if (v12)
      {
        v13 = *(v12 + 32);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a1 + 16);
      if (qword_1002292B0 != -1)
      {
        dispatch_once(&qword_1002292B0, &stru_1001FC490);
      }

      v15 = qword_1002292B8;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100021A6C;
      v18[3] = &unk_1001FCAD0;
      v19 = v11;
      v20 = v14;
      v21 = a1;
      v22 = v13;
      v16 = v14;
      v17 = v11;
      dispatch_async(v15, v18);
    }
  }
}

void sub_100021A6C(uint64_t a1)
{
  v2 = [*(a1 + 32) retrievePairedPeers];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021B14;
  block[3] = &unk_1001FCAA8;
  v3 = *(a1 + 56);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v2;
  v9 = v3;
  block[4] = v4;
  v6 = v2;
  dispatch_async(v5, block);
}

void sub_100021B14(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v3 && (v4 = *(v3 + 72)) != 0)
  {
    v5 = v4[4];

    if (v2 != v5)
    {
      return;
    }
  }

  else if (v2)
  {
    return;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = v7;
  v9 = *v26;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 72);
        v15 = v14;
        if (v14)
        {
          v16 = v14[5];
          v17 = v16;
          if (v16)
          {
            v18 = v16[2];
            goto LABEL_13;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = 0;
      }

      else
      {
        v17 = 0;
        v15 = 0;
        v18 = 0;
      }

LABEL_13:
      v19 = [v12 isEqual:v18];

      if (v19)
      {
        v21 = [v11 identifier];
        v22 = *(a1 + 32);
        if (v22)
        {
          objc_storeStrong((v22 + 56), v21);
        }

        v23 = *(a1 + 32);
        if (v23)
        {
          v24 = *(v23 + 56);
        }

        else
        {
          v24 = 0;
        }

        sub_10001F9C4(v23, 1, v24);
        goto LABEL_26;
      }

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v20 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v8 = v20;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_26:
}

char *sub_100022944(char *a1, void **a2)
{
  p_vtable = a2;
  v4 = a2;
  if (!a1)
  {
    goto LABEL_8;
  }

  v13.receiver = a1;
  v13.super_class = NRBluetoothPairer;
  v5 = objc_msgSendSuper2(&v13, "init");
  if (v5)
  {
    a1 = v5;
    *(v5 + 4) = atomic_fetch_add_explicit(&qword_100228180, 1uLL, memory_order_relaxed);
    objc_storeStrong(v5 + 2, p_vtable);
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228EF8 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = sub_100020970();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100020970();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRBluetoothPairer initWithNRUUID:]", 49);
    }

    v4 = _os_log_pack_size();
    a1 = &v12 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(a1, v4, *v10, &_mh_execute_header, "%{public}s [super init] failed");
    *v11 = 136446210;
    *(v11 + 4) = "[NRBluetoothPairer initWithNRUUID:]";
    sub_100020970();
    _NRLogAbortWithPack();
  }

  dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
LABEL_4:
  if (_NRLogIsLevelEnabled())
  {
    if (p_vtable[479] != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    _NRLogWithArgs(qword_100228EF0, 1, "%s%.30s:%-4d created: %@", "", "[NRBluetoothPairer initWithNRUUID:]", 53, a1);
  }

LABEL_8:

  return a1;
}

uint64_t sub_100022B6C(uint64_t a1, void *a2)
{
  IsLevelEnabled = a2;
  v4 = IsLevelEnabled;
  if (a1)
  {
    v6 = IsLevelEnabled;
    [*(a1 + 64) addObject:IsLevelEnabled];
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_1000200B0(a1);
LABEL_10:
      v4 = v6;
      goto LABEL_11;
    }

    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    IsLevelEnabled = _NRLogIsLevelEnabled();
    v4 = v6;
    if (IsLevelEnabled)
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        v4 = v6;
      }

      IsLevelEnabled = _NRLogWithArgs(qword_100228EF0, 1, "%s%.30s:%-4d enqueued: %@", "", "[NRBluetoothPairingManager enqueuePairer:]", 739, v4);
      goto LABEL_10;
    }
  }

LABEL_11:

  return _objc_release_x1(IsLevelEnabled, v4);
}

void sub_100022C70(id a1)
{
  v1 = objc_alloc_init(NRBluetoothPairingManager);
  v2 = qword_100228EE0;
  qword_100228EE0 = v1;

  v3 = objc_alloc_init(NSMutableSet);
  v4 = v3;
  if (qword_100228EE0)
  {
    v5 = v3;
    objc_storeStrong((qword_100228EE0 + 48), v3);
    v4 = v5;
  }

  _objc_release_x1(v3, v4);
}

void sub_100022CE8(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v6 = a3;
  if (a1)
  {
    if (v19)
    {
      if (v6)
      {
        v7 = sub_100163B2C(NRDLocalDevice, *(a1 + 16), 0);
        v8 = v7;
        if (v7)
        {
          v9 = *(v7 + 32);
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        if (v10)
        {
          v11 = objc_alloc_init(NRBluetoothPairerParameters);
          if (v8)
          {
            v12 = v8[4];
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          if (v11)
          {
            objc_storeStrong(&v11->_bluetoothUUID, v12);
          }

          objc_storeStrong((a1 + 40), v11);
          *(a1 + 8) = 1;
          objc_storeStrong((a1 + 48), a2);
          objc_setProperty_nonatomic_copy(a1, v14, v6, 56);
          objc_opt_self();
          if (qword_100228EE8 != -1)
          {
            dispatch_once(&qword_100228EE8, &stru_1001FA590);
          }

          sub_100022B6C(qword_100228EE0, a1);
        }

        else
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }

            _NRLogWithArgs(qword_100228EF0, 16, "%s%.30s:%-4d Invalid device to unpair %@", "", "[NRBluetoothPairer unpairWithCompletionQueue:completionBlock:]", 98, v8);
          }

          (*(v6 + 2))(v6, 0, 0);
        }

        goto LABEL_21;
      }

      v17 = sub_100020970();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_100020970();
        _NRLogWithArgs(v8, 17, "%s called with null completionBlock");
        goto LABEL_21;
      }
    }

    else
    {
      v15 = sub_100020970();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v8 = sub_100020970();
        _NRLogWithArgs(v8, 17, "%s called with null completionQueue");
LABEL_21:
      }
    }
  }
}

id sub_1000233CC()
{
  if (qword_100228F10 != -1)
  {
    dispatch_once(&qword_100228F10, &stru_1001FA698);
  }

  v1 = qword_100228F08;

  return v1;
}

void sub_100023420(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F08;
  qword_100228F08 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100023B3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100023B5C(_BYTE *val, int a2)
{
  if (val)
  {
    if (val[8] != a2)
    {
      v11[5] = v2;
      v11[6] = v3;
      val[8] = a2;
      val[9] = (a2 - 1) < 3;
      v5 = a2;
      objc_initWeak(v11, val);
      v6 = *(val + 5);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100023E98;
      block[3] = &unk_1001FB900;
      v7 = v6;
      objc_copyWeak(&v9, v11);
      v10 = v5;
      dispatch_async(v7, block);

      objc_destroyWeak(&v9);
      objc_destroyWeak(v11);
    }
  }
}

void sub_100023C44(uint64_t a1, int a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained || (WeakRetained[12] & 1) != 0 || *(WeakRetained + 10) != *(a1 + 32))
  {
    goto LABEL_22;
  }

  val = WeakRetained;
  if (a3)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = val;
    if (IsLevelEnabled)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d discovery proxy client error: %d", "", "[NRDNSProxyClient startDiscoveryProxyClient]_block_invoke", 227, a3);

      WeakRetained = val;
    }
  }

  if (a2 == -1)
  {
    v17 = _NRCopyLogObjectForNRUUID();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v19, 0, "%s%.30s:%-4d discovery proxy client invalidated", "", "[NRDNSProxyClient startDiscoveryProxyClient]_block_invoke", 241);
    }

    WeakRetained = val;
    if (val[12])
    {
      goto LABEL_22;
    }

    v13 = 4;
LABEL_21:
    sub_100023B5C(val, v13);
    WeakRetained = val;
    goto LABEL_22;
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      goto LABEL_22;
    }

    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v12, 0, "%s%.30s:%-4d discovery proxy client started", "", "[NRDNSProxyClient startDiscoveryProxyClient]_block_invoke", 232);
    }

    v13 = 2;
    goto LABEL_21;
  }

  v14 = _NRCopyLogObjectForNRUUID();
  v15 = _NRLogIsLevelEnabled();

  if (v15)
  {
    v16 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v16, 0, "%s%.30s:%-4d discovery proxy client interrupted", "", "[NRDNSProxyClient startDiscoveryProxyClient]_block_invoke", 236);
  }

  WeakRetained = val;
  v13 = val[8];
  if (val[8])
  {
    goto LABEL_21;
  }

LABEL_22:
}

void sub_100023E98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 8) == *(a1 + 40))
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 8);
    [v3 didUpdateDNSProxyState:v4 state:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void sub_1000240D0(_BYTE *a1)
{
  if (a1)
  {
    v3 = -1;
    v2 = mrc_dns_proxy_parameters_create();
    if (qword_100228F10 != -1)
    {
      dispatch_once(&qword_100228F10, &stru_1001FA698);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F10 != -1)
      {
        dispatch_once(&qword_100228F10, &stru_1001FA698);
      }

      _NRLogWithArgs(qword_100228F08, 17, "mrc_dns_proxy_parameters_create failed");
    }

    sub_100023B5C(a1, 4);
  }
}

void sub_1000244A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000244C8(uint64_t a1, int a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (WeakRetained[12] & 1) == 0 && *(WeakRetained + 10) == *(a1 + 32))
  {
    val = WeakRetained;
    if (a3)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = val;
      if (IsLevelEnabled)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v9, 16, "%s%.30s:%-4d dns proxy error: %d", "", "[NRDNSProxyServer startDNS53Server]_block_invoke", 341, a3);

        WeakRetained = val;
      }
    }

    if (a2 != -1)
    {
      if (a2 == 2)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        v17 = _NRLogIsLevelEnabled();

        if (!v17)
        {
          v15 = 4;
          goto LABEL_21;
        }

        v14 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v14, 0, "%s%.30s:%-4d dns proxy interrupted", "", "[NRDNSProxyServer startDNS53Server]_block_invoke", 351);
        v15 = 4;
      }

      else
      {
        if (a2 != 1)
        {
          goto LABEL_23;
        }

        v10 = _NRCopyLogObjectForNRUUID();
        v11 = _NRLogIsLevelEnabled();

        if (v11)
        {
          v12 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v12, 0, "%s%.30s:%-4d dns proxy started", "", "[NRDNSProxyServer startDNS53Server]_block_invoke", 346);
        }

        v13 = *(a1 + 40);
        v14 = *(val + 3);
        *(val + 3) = v13;
        v15 = 2;
      }

LABEL_21:
      WeakRetained = val;
      goto LABEL_22;
    }

    v18 = _NRCopyLogObjectForNRUUID();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v20, 0, "%s%.30s:%-4d dns proxy invalidated", "", "[NRDNSProxyServer startDNS53Server]_block_invoke", 355);
    }

    WeakRetained = val;
    if ((val[12] & 1) == 0)
    {
      v15 = 4;
LABEL_22:
      sub_100023B5C(WeakRetained, v15);
      WeakRetained = val;
    }
  }

LABEL_23:
}

void sub_1000249F0(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  *(a1 + 16) = 1;
  sub_100023B5C(a1, 1);
  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d activating discovery proxy", "", "[NRDiscoveryProxyServer startDiscoveryProxyServer]", 629);
  }

  v5 = [*(a1 + 96) count];
  if (!v5)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d no allowed interfaces for discovery proxy");
      goto LABEL_10;
    }

LABEL_11:

    sub_100023B5C(a1, 4);
    return;
  }

  if (v5 >= 9u)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    v7 = _NRLogIsLevelEnabled();

    if (v7)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d unexpected number of interfaces for discovery proxy %u");
LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = v5;
  v12 = malloc_type_calloc(v5, 8uLL, 0xCDDCAD4CuLL);
  if (v12)
  {
    v13 = v12;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v14 = *(a1 + 96);
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v41;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          if ([v20 length])
          {
            v13[v17++] = [v20 UTF8String];
          }

          else
          {
            v21 = _NRCopyLogObjectForNRUUID();
            v22 = _NRLogIsLevelEnabled();

            if (v22)
            {
              v23 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v23, 17, "invalid interface name for discovery proxy");
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v16);

      if (v17)
      {
        v24 = advertising_proxy_enable_with_interfaces();
        if (v24)
        {
          sub_100024F40(a1, v24);
        }

        else
        {
          v28 = qword_100228F00;
          if (!qword_100228F00)
          {
            v29 = objc_alloc_init(NSMutableDictionary);
            v30 = qword_100228F00;
            qword_100228F00 = v29;

            v28 = qword_100228F00;
          }

          v31 = [NSNumber numberWithUnsignedLong:*(a1 + 80)];
          [v28 setObject:a1 forKeyedSubscript:v31];
        }

LABEL_33:
        free(v13);
        return;
      }
    }

    else
    {
    }

    v25 = _NRCopyLogObjectForNRUUID();
    v26 = _NRLogIsLevelEnabled();

    if (v26)
    {
      v27 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v27, 16, "%s%.30s:%-4d no valid interfaces for discovery proxy", "", "[NRDiscoveryProxyServer startDiscoveryProxyServer]", 654);
    }

    sub_100023B5C(a1, 4);
    goto LABEL_33;
  }

  v32 = sub_1000233CC();
  v33 = _NRLogIsLevelEnabled();

  if (v33)
  {
    v34 = sub_1000233CC();
    _NRLogWithArgs(v34, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", "", "[NRDiscoveryProxyServer startDiscoveryProxyServer]", 641, v11, 8uLL);
  }

  v35 = _os_log_pack_size();
  v36 = __error();
  v37 = _os_log_pack_fill(&v40 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v35, *v36, &_mh_execute_header, "%{public}s strict_calloc(%zu, %zu) failed");
  *v37 = 136446722;
  *(v37 + 4) = "[NRDiscoveryProxyServer startDiscoveryProxyServer]";
  *(v37 + 12) = 2048;
  *(v37 + 14) = v11;
  *(v37 + 22) = 2048;
  *(v37 + 24) = 8;
  sub_1000233CC();
  v38 = _NRLogAbortWithPack();
  sub_100024F40(v38, v39);
}

void sub_100024F40(uint64_t a1, int a2)
{
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v6, 16, "%s%.30s:%-4d SRP proxy failed (error:%d)", "", "[NRDiscoveryProxyServer handleDiscoverProxyServerFailed:]", 551, a2);
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = 0;

  sub_100023B5C(a1, 4);
}

void sub_100024FF4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    v20 = sub_1000233CC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    val = sub_1000233CC();
    v6 = _NRLogWithArgs(val, 17, "%s called with null ref", "discoveryProxyCallback");
    goto LABEL_5;
  }

  v4 = qword_100228F00;
  v5 = [NSNumber numberWithUnsignedLong:a1];
  val = [v4 objectForKeyedSubscript:v5];

  if (!val)
  {
    v22 = sub_1000233CC();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_1000233CC();
      _NRLogWithArgs(v24, 17, "%s called with null server", "discoveryProxyCallback");
    }

    v7 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d activated discovery proxy", "", "discoveryProxyCallback", 616);
    }

    sub_1000253D0(val);
    v7 = val;
    if (*(val + 19) != -1)
    {
      goto LABEL_9;
    }

    objc_initWeak(&location, val);
    v11 = *(val + 5);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100025650;
    handler[3] = &unk_1001FD278;
    objc_copyWeak(&v27, &location);
    v12 = notify_register_dispatch("com.apple.srp-mdns-proxy.tls-key-update", val + 19, v11, handler);

    if (v12)
    {
      if (qword_100228F10 != -1)
      {
        dispatch_once(&qword_100228F10, &stru_1001FA698);
      }

      v13 = qword_100228F08;
      v14 = _NRLogIsLevelEnabled();

      if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }

      if (qword_100228F10 != -1)
      {
        dispatch_once(&qword_100228F10, &stru_1001FA698);
      }

      v15 = qword_100228F08;
      _NRLogWithArgs(v15, 17, "notify_register_dispatch(%s, %d) failed: %u", "com.apple.srp-mdns-proxy.tls-key-update", *(val + 19), v12);
    }

    else
    {
      v16 = *(val + 6);
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = _NRLogIsLevelEnabled();

      if (!v18)
      {
LABEL_22:
        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
        goto LABEL_5;
      }

      v15 = *(val + 6);
      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v19, 0, "%s%.30s:%-4d monitoring server certificate changes (%d)", "", "[NRDiscoveryProxyServer watchForServerCertificateChanges]", 603, *(val + 19));
    }

    goto LABEL_22;
  }

  sub_100024F40(val, a3);
LABEL_5:
  v7 = val;
LABEL_9:

  _objc_release_x1(v6, v7);
}

void sub_1000253B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000253D0(uint64_t a1)
{
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 48));
  v3 = sub_1001672A0(v2, @"853");
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;

  objc_initWeak(&location, a1);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_1000256D4;
  v11 = &unk_1001FA678;
  objc_copyWeak(&v12, &location);
  v5 = v9;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100025778;
  v23 = sub_100025788;
  v24 = sub_100025790(a1);
  if (v20[5])
  {
    (v10)(v5);
  }

  else
  {
    objc_initWeak(&from, a1);
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 40));
    dispatch_source_set_timer(v6, 0, 0x2540BE400uLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100025CD0;
    handler[3] = &unk_1001FA650;
    objc_copyWeak(&v17, &from);
    v16 = &v19;
    v15 = v5;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(v6);
    v7 = *(a1 + 88);
    *(a1 + 88) = v6;
    v8 = v6;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
  }

  _Block_object_dispose(&v19, 8);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_100025620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100025650(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[12] & 1) == 0 && *(WeakRetained + 19) == a2 && WeakRetained[8] == 2)
  {
    v4 = WeakRetained;
    sub_100023B5C(WeakRetained, 3);
    sub_1000253D0(v4);
    WeakRetained = v4;
  }
}

void sub_1000256D4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && (WeakRetained[8] | 2) == 3 && (WeakRetained[12] & 1) == 0)
  {
    objc_storeStrong(WeakRetained + 4, a2);
    if (v6)
    {
      sub_100023B5C(v5, 2);
    }

    else
    {
      sub_100024F40(v5, -65537);
    }
  }
}

uint64_t sub_100025778(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFDataRef sub_100025790(uint64_t a1)
{
  v49[0] = kSecClass;
  v49[1] = kSecMatchLimit;
  v50[0] = kSecClassCertificate;
  v50[1] = kSecMatchLimitAll;
  v49[2] = kSecAttrAccessGroup;
  v49[3] = kSecAttrSynchronizable;
  v50[2] = @"com.apple.srp-mdns-proxy";
  v50[3] = &__kCFBooleanTrue;
  v49[4] = kSecReturnAttributes;
  v49[5] = kSecReturnRef;
  v50[4] = &__kCFBooleanTrue;
  v50[5] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:6];
  result = 0;
  v3 = SecItemCopyMatching(v2, &result);
  if (v3 || !result)
  {
    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    v14 = _NRCopyLogObjectForNRUUID();
    if (v3 == -25308)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        v17 = v16;
        v47 = 463;
        v45 = "";
        v46 = "[NRDiscoveryProxyServer copyServerCertificateData]";
        v18 = "%s%.30s:%-4d Failed to retrieve SRP Pk: keychain locked";
        goto LABEL_22;
      }
    }

    else if (v3 == -25300)
    {
      v15 = _NRLogIsLevelEnabled();

      if (v15)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        v17 = v16;
        v47 = 461;
        v45 = "";
        v46 = "[NRDiscoveryProxyServer copyServerCertificateData]";
        v18 = "%s%.30s:%-4d Failed to retrieve SRP Pk: not found";
LABEL_22:
        v25 = 16;
LABEL_25:
        _NRLogWithArgs(v16, v25, v18, v45, v46, v47);

        v10 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v26 = _NRLogIsLevelEnabled();

      if (v26)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        v17 = v16;
        v45 = v3;
        v18 = "Failed to retrieve SRP Pk: %d";
        v25 = 17;
        goto LABEL_25;
      }
    }

    v10 = 0;
    goto LABEL_34;
  }

  v4 = CFGetTypeID(result);
  if (v4 != CFArrayGetTypeID())
  {
    v31 = _NRCopyLogObjectForNRUUID();
    v32 = _NRLogIsLevelEnabled();

    if (!v32)
    {
      goto LABEL_45;
    }

    v33 = *(a1 + 48);
    v13 = _NRCopyLogObjectForNRUUID();
    v34 = CFGetTypeID(result);

    v35 = v34;
LABEL_43:
    v39 = CFCopyTypeIDDescription(v35);
    _NRLogWithArgs(v13, 17, "Read keychain for SRP Pk with bad class %@", v39);
    goto LABEL_44;
  }

  if (!CFArrayGetCount(result))
  {
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_45;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v13 = v21;
    v47 = 479;
    v44 = "";
    v46 = "[NRDiscoveryProxyServer copyServerCertificateData]";
    v22 = "%s%.30s:%-4d No SRP Pk(s)";
    goto LABEL_19;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
  v6 = CFGetTypeID(ValueAtIndex);
  if (v6 != CFDictionaryGetTypeID())
  {
    v36 = _NRCopyLogObjectForNRUUID();
    v37 = _NRLogIsLevelEnabled();

    if (!v37)
    {
      goto LABEL_45;
    }

    v13 = _NRCopyLogObjectForNRUUID();
    v38 = CFGetTypeID(ValueAtIndex);
    v39 = CFCopyTypeIDDescription(v38);
    _NRLogWithArgs(v13, 17, "Read keychain for SRP Pk attributes with bad class %@", v39);
LABEL_44:

    goto LABEL_30;
  }

  Value = CFDictionaryGetValue(ValueAtIndex, kSecValueRef);
  if (!Value)
  {
    v40 = _NRCopyLogObjectForNRUUID();
    v41 = _NRLogIsLevelEnabled();

    if (!v41)
    {
      goto LABEL_45;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v13 = v21;
    v47 = 492;
    v44 = "";
    v46 = "[NRDiscoveryProxyServer copyServerCertificateData]";
    v22 = "%s%.30s:%-4d No SRP certificate: not found";
LABEL_19:
    v23 = 16;
LABEL_29:
    _NRLogWithArgs(v21, v23, v22, v44, v46, v47);
LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 != SecCertificateGetTypeID())
  {
    v42 = _NRCopyLogObjectForNRUUID();
    v43 = _NRLogIsLevelEnabled();

    if (!v43)
    {
      goto LABEL_45;
    }

    v13 = _NRCopyLogObjectForNRUUID();
    v35 = CFGetTypeID(v8);
    goto LABEL_43;
  }

  CFAbsoluteTimeGetCurrent();
  if ((SecCertificateIsValid() & 1) == 0)
  {
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v21 = _NRCopyLogObjectForNRUUID();
      v13 = v21;
      v22 = "Read keychain for invalid SRP Pk";
      v23 = 17;
      goto LABEL_29;
    }

LABEL_45:
    v10 = 0;
    v29 = result;
    if (!result)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v10 = SecCertificateCopyData(v8);
  v11 = _NRCopyLogObjectForNRUUID();
  v12 = _NRLogIsLevelEnabled();

  if (!v12)
  {
    goto LABEL_32;
  }

  v13 = _NRCopyLogObjectForNRUUID();
  _NRLogWithArgs(v13, 0, "%s%.30s:%-4d Fetched server certificate of size %u bytes", "", "[NRDiscoveryProxyServer copyServerCertificateData]", 508, [(__CFData *)v10 length]);
LABEL_31:

LABEL_32:
  v29 = result;
  if (result)
  {
LABEL_33:
    CFRelease(v29);
    result = 0;
  }

LABEL_34:

  return v10;
}

void sub_100025CD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (*(WeakRetained + 12) & 1) == 0)
  {
    ++*(WeakRetained + 72);
    v10 = WeakRetained;
    v3 = sub_100025790(WeakRetained);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(*(a1 + 40) + 8) + 40) || *(v10 + 72) >= 5u)
    {
      dispatch_source_cancel(v10[11]);
      v6 = v10[11];
      v10[11] = 0;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        *(v10 + 72) = 0;
      }

      (*(*(a1 + 32) + 16))();
      goto LABEL_8;
    }

    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v10;
    if (IsLevelEnabled)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v9, 1, "%s%.30s:%-4d failed to get SRP server certificate, retrying", "", "[NRDiscoveryProxyServer fetchServerCertificateWithCompletion:]_block_invoke", 542);

LABEL_8:
      WeakRetained = v10;
    }
  }
}

id *sub_100025F54(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, char a8)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = NRDNSProxyClient;
    v21 = objc_msgSendSuper2(&v26, "initWithQueue:nrUUID:delegate:", v17, v18, v19);
    if (v21)
    {
      a1 = v21;
      objc_storeStrong(v21 + 3, a2);
      objc_storeStrong(a1 + 4, a6);
      *(a1 + 4) = a7;
      *(a1 + 13) = a8;
    }

    else
    {
      v23 = sub_1000233CC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v25 = sub_1000233CC();
        _NRLogWithArgs(v25, 17, "%s called with null self", "[NRDNSProxyClient initWithServerEndpoint:queue:nrUUID:delegate:serverCertificateData:resolverProtocol:isDiscoveryProxy:]");
      }

      a1 = 0;
    }
  }

  return a1;
}

id *sub_100026098(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = NRDiscoveryProxyServer;
    v11 = objc_msgSendSuper2(&v14, "initWithQueue:nrUUID:delegate:", a3, a4, a5);
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 12, a2);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id *sub_1000262B4(id *a1, void *a2, char a3)
{
  v7 = a2;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_26;
  }

  if (!v7)
  {
    v25 = sub_1000266EC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_26;
    }

    v16 = sub_1000266EC();
    _NRLogWithArgs(v16, 17, "%s called with null interfaceName");
LABEL_25:

LABEL_26:
    v23 = 0;
    goto LABEL_27;
  }

  v33.receiver = a1;
  v33.super_class = NRSCDInterfaceConfig;
  v9 = objc_msgSendSuper2(&v33, "init");
  if (!v9)
  {
    v27 = sub_1000266EC();
    v28 = _NRLogIsLevelEnabled();

    v16 = "[NRSCDInterfaceConfig initWithInterfaceName:allowsLinkLocalAddresses:]";
    if (v28)
    {
      v29 = sub_1000266EC();
      _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRSCDInterfaceConfig initWithInterfaceName:allowsLinkLocalAddresses:]", 37);
    }

    v8 = _os_log_pack_size();
    a1 = (&v32 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = __error();
    v31 = _os_log_pack_fill(a1, v8, *v30, &_mh_execute_header, "%{public}s [super init] failed");
    *v31 = 136446210;
    *(v31 + 4) = "[NRSCDInterfaceConfig initWithInterfaceName:allowsLinkLocalAddresses:]";
    sub_1000266EC();
    _NRLogAbortWithPack();
LABEL_33:
    dispatch_once(&qword_100228F20, &stru_1001FA6E0);
LABEL_9:
    if (_NRLogIsLevelEnabled())
    {
      if (p_vtable[484] != -1)
      {
        dispatch_once(&qword_100228F20, &stru_1001FA6E0);
      }

      _NRLogWithArgs(qword_100228F18, 17, "SCDynamicStoreKeyCreateNetworkInterfaceEntity(%s/IPv4) failed");
    }

    goto LABEL_25;
  }

  a1 = v9;
  objc_storeStrong(v9 + 3, a2);
  v10 = objc_alloc_init(NSMutableArray);
  v11 = a1[7];
  a1[7] = v10;

  v12 = objc_alloc_init(NSMutableArray);
  v13 = a1[8];
  a1[8] = v12;

  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = a1[9];
  a1[9] = v14;

  *(a1 + 8) = a3;
  sub_100026740(a1);
  v16 = a1[3];
  [v16 UTF8String];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, a1[3], kSCEntNetIPv4);
  v18 = a1[4];
  a1[4] = NetworkInterfaceEntity;

  if (!a1[4])
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228F20 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

  v19 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, a1[3], kSCEntNetIPv6);
  v20 = a1[5];
  a1[5] = v19;

  if (!a1[5])
  {
    if (qword_100228F20 != -1)
    {
      dispatch_once(&qword_100228F20, &stru_1001FA6E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F20 != -1)
      {
        dispatch_once(&qword_100228F20, &stru_1001FA6E0);
      }

      _NRLogWithArgs(qword_100228F18, 17, "SCDynamicStoreKeyCreateNetworkInterfaceEntity(%s/IPv6) failed");
    }

    goto LABEL_25;
  }

  v21 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, a1[3], kSCEntNetLink);
  v22 = a1[6];
  a1[6] = v21;

  if (!a1[6])
  {
    if (qword_100228F20 != -1)
    {
      dispatch_once(&qword_100228F20, &stru_1001FA6E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F20 != -1)
      {
        dispatch_once(&qword_100228F20, &stru_1001FA6E0);
      }

      _NRLogWithArgs(qword_100228F18, 17, "SCDynamicStoreKeyCreateNetworkInterfaceEntity(%s/Link) failed");
    }

    goto LABEL_25;
  }

  a1 = a1;
  v23 = a1;
LABEL_27:

  return v23;
}

id sub_1000266EC()
{
  if (qword_100228F20 != -1)
  {
    dispatch_once(&qword_100228F20, &stru_1001FA6E0);
  }

  v1 = qword_100228F18;

  return v1;
}

void sub_100026740(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = if_nametoindex([v3 UTF8String]);
  *(a1 + 12) = v2;
  if (!v2)
  {
    if (qword_100228F20 != -1)
    {
      dispatch_once(&qword_100228F20, &stru_1001FA6E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F20 != -1)
      {
        dispatch_once(&qword_100228F20, &stru_1001FA6E0);
      }

      _NRLogWithArgs(qword_100228F18, 0, "%s%.30s:%-4d interface index unavailable for '%@'", "", "[NRSCDInterfaceConfig updateIFIndex]", 90, *(a1 + 24));
    }
  }
}

void sub_100026834(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F18;
  qword_100228F18 = v1;

  _objc_release_x1(v1, v2);
}

BOOL sub_100026878(_BOOL8 result)
{
  if (result)
  {
    if (!*(result + 12) || *(result + 9) != 1)
    {
      return 0;
    }

    v1 = result;
    v2 = *(result + 56);
    if ([v2 count])
    {

      return 1;
    }

    v3 = [*(v1 + 64) count];

    return v3 != 0;
  }

  return result;
}

void sub_100027658(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_create("terminusd_awdl_browse", v1);

  if (!v2)
  {
    v4 = sub_1000277D8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_1000277D8();
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create", 196, "terminusd_awdl_browse");
    }

    v7 = _os_log_pack_size();
    v8 = &v11 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v10 = 136446466;
    *(v10 + 4) = "nr_dispatch_queue_create";
    *(v10 + 12) = 2080;
    *(v10 + 14) = "terminusd_awdl_browse";
    sub_1000277D8();
    _NRLogAbortWithPack();
  }

  v3 = qword_100228F38;
  qword_100228F38 = v2;
}

id sub_1000277D8()
{
  if (qword_100228F30 != -1)
  {
    dispatch_once(&qword_100228F30, &stru_1001FA700);
  }

  v1 = qword_100228F28;

  return v1;
}

void sub_100027ED8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, void *a10)
{
  if (a4)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received error %d");
    }
  }

  else if (a5)
  {
    if (a6)
    {
      if (a10)
      {
        v18 = a10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = 0;
          if (a8 && a9)
          {
            v15 = [NSData dataWithBytes:a9 length:a8];
          }

          v16 = [[NSString alloc] initWithUTF8String:a5];
          v17 = [[NSString alloc] initWithUTF8String:a6];
          [v18 handleReplyFullName:v16 hostTarget:v17 port:a7 txtRecord:v15 ifIndex:a3];
        }

        else
        {
          if (qword_100228F30 != -1)
          {
            dispatch_once(&qword_100228F30, &stru_1001FA700);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F30 != -1)
            {
              dispatch_once(&qword_100228F30, &stru_1001FA700);
            }

            _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received context of wrong class", "", "btpResolveReply", 469);
          }
        }
      }

      else
      {
        if (qword_100228F30 != -1)
        {
          dispatch_once(&qword_100228F30, &stru_1001FA700);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F30 != -1)
          {
            dispatch_once(&qword_100228F30, &stru_1001FA700);
          }

          _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received NULL context");
        }
      }
    }

    else
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F30 != -1)
        {
          dispatch_once(&qword_100228F30, &stru_1001FA700);
        }

        _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received NULL hostTarget");
      }
    }
  }

  else
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received NULL fullName");
    }
  }
}

void sub_100028468(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F28;
  qword_100228F28 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10002897C(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a4)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received error %d");
    }

    return;
  }

  if (a5)
  {
    if (a6)
    {
      if (a7)
      {
        if (a8)
        {
          v16 = a8;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [[NSString alloc] initWithUTF8String:a5];
            v14 = [[NSString alloc] initWithUTF8String:a6];
            v15 = [[NSString alloc] initWithUTF8String:a7];
            [v16 handleReplyName:v13 type:v14 domain:v15 ifIndex:a3 add:(a2 >> 1) & 1];
          }

          else
          {
            if (qword_100228F30 != -1)
            {
              dispatch_once(&qword_100228F30, &stru_1001FA700);
            }

            if (!_NRLogIsLevelEnabled())
            {
              goto LABEL_42;
            }

            v13 = sub_1000277D8();
            _NRLogWithArgs(v13, 16, "%s%.30s:%-4d received context of wrong class", "", "btpBrowseReply", 517);
          }

LABEL_42:

          return;
        }

        if (qword_100228F30 != -1)
        {
          dispatch_once(&qword_100228F30, &stru_1001FA700);
        }

        if (_NRLogIsLevelEnabled())
        {
          v16 = sub_1000277D8();
          _NRLogWithArgs(v16, 16, "%s%.30s:%-4d received NULL context", "", "btpBrowseReply", 512);
          goto LABEL_42;
        }
      }

      else
      {
        if (qword_100228F30 != -1)
        {
          dispatch_once(&qword_100228F30, &stru_1001FA700);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F30 != -1)
          {
            dispatch_once(&qword_100228F30, &stru_1001FA700);
          }

          _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received NULL domain");
        }
      }
    }

    else
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F30 != -1)
        {
          dispatch_once(&qword_100228F30, &stru_1001FA700);
        }

        _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received NULL type");
      }
    }
  }

  else
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs(qword_100228F28, 16, "%s%.30s:%-4d received NULL name");
    }
  }
}

id sub_1000292B4(unsigned int a1)
{
  v2 = [NSString alloc];
  switch(a1)
  {
    case 0u:
      v3 = "Invalid";
      goto LABEL_28;
    case 1u:
      v3 = "Hello";
      goto LABEL_28;
    case 2u:
      v3 = "UpdateWiFiAddressIPv6";
      goto LABEL_28;
    case 3u:
      v3 = "UpdateWiFiAddressIPv4";
      goto LABEL_28;
    case 4u:
      v3 = "UpdateWiFiSignature";
      goto LABEL_28;
    case 5u:
      v3 = "PreferWiFi";
      goto LABEL_28;
    case 6u:
      v3 = "DeviceLinkState";
      goto LABEL_28;
    case 7u:
      v3 = "PreferWiFiAck";
      goto LABEL_28;
    case 8u:
      v3 = "ForceWoW";
      goto LABEL_28;
    case 9u:
      v3 = "UpdateAWDLAddressIPv6";
      goto LABEL_28;
    case 0xAu:
      v3 = "AWDLReachable";
      goto LABEL_28;
    case 0xBu:
      v3 = "RequestFlags";
      goto LABEL_28;
    case 0xCu:
      v3 = "NetInfo";
      goto LABEL_28;
    case 0xDu:
      v3 = "LinkUpgrade";
      goto LABEL_28;
    case 0xEu:
      v3 = "DeviceThermalPressureLevel";
      goto LABEL_28;
    case 0xFu:
      v3 = "CountryCode";
      goto LABEL_28;
    case 0x10u:
      v3 = "DNSProxy";
      goto LABEL_28;
    case 0x11u:
      v3 = "DNSProxyUpdate";
      goto LABEL_28;
    case 0x12u:
      v3 = "DiscoveryProxy";
      goto LABEL_28;
    case 0x13u:
      v3 = "DiscoveryProxyUpdate";
      goto LABEL_28;
    case 0x14u:
      v3 = "ApplicationServiceEndpointsRequest";
      goto LABEL_28;
    case 0x15u:
      v3 = "ApplicationServiceEndpointsResponse";
      goto LABEL_28;
    case 0x16u:
      v3 = "DevicePluggedIn";
      goto LABEL_28;
    case 0x17u:
      v3 = "TLSIdentitySPKI";
      goto LABEL_28;
    default:
      if (a1 != 255)
      {
        return [v2 initWithFormat:@"Unknown(%lld)", a1];
      }

      v3 = "Test";
LABEL_28:

      return [v2 initWithUTF8String:v3];
  }
}

unint64_t sub_100029538(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v2 = *(a1 + 10);
    if (*(a1 + 10))
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        if (v2 == 2)
        {
          v1 = bswap64(*(v3 + 8));
          goto LABEL_10;
        }

        if (v2 == 1)
        {
          v1 = bswap32(*(v3 + 4)) >> 16;
LABEL_10:
          *(a1 + 40) = v1;
          return v1;
        }

        return 0;
      }

      v12 = sub_100029784();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_100029784();
        _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.messageBufferPtr) != ((void*)0)", "", "[NRLinkDirectorMessage identifier]", 563);
      }

      v15 = _os_log_pack_size();
      v16 = &v19 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "%{public}s Assertion Failed: (self.messageBufferPtr) != ((void*)0)");
      *v18 = 136446210;
      *(v18 + 4) = "[NRLinkDirectorMessage identifier]";
    }

    else
    {
      v5 = sub_100029784();
      v6 = _NRLogIsLevelEnabled();

      if (v6)
      {
        v7 = sub_100029784();
        _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self.messageVersion != 0", "", "[NRLinkDirectorMessage identifier]", 562);
      }

      v8 = _os_log_pack_size();
      v9 = &v19 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "%{public}s Assertion Failed: self.messageVersion != 0");
      *v11 = 136446210;
      *(v11 + 4) = "[NRLinkDirectorMessage identifier]";
    }

    sub_100029784();
    _NRLogAbortWithPack();
  }

  return v1;
}

id sub_100029784()
{
  if (qword_100228F60 != -1)
  {
    dispatch_once(&qword_100228F60, &stru_1001FA780);
  }

  v1 = qword_100228F58;

  return v1;
}

void sub_1000297D8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F58;
  qword_100228F58 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100029878(id a1)
{
  v1 = sub_1000298B8([NRLinkDirectorMessageManager alloc]);
  v2 = qword_100228F48;
  qword_100228F48 = v1;

  _objc_release_x1(v1, v2);
}

void *sub_1000298B8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v15.receiver = a1;
  v15.super_class = NRLinkDirectorMessageManager;
  v1 = objc_msgSendSuper2(&v15, "init");
  if (!v1)
  {
    v8 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_100029784();
      _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRLinkDirectorMessageManager initManager]", 263);
    }

    v11 = _os_log_pack_size();
    v12 = __error();
    v13 = _os_log_pack_fill(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, *v12, &_mh_execute_header, "%{public}s [super init] failed");
    *v13 = 136446210;
    *(v13 + 4) = "[NRLinkDirectorMessageManager initManager]";
    sub_100029784();
    _NRLogAbortWithPack();
    return 0;
  }

  v2 = v1;
  v3 = sub_100003490();
  v4 = v2[1];
  v2[1] = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v2[2];
  v2[2] = v5;

  return v2;
}

id *sub_100029A28(id *a1, void *a2, unsigned int a3, char a4)
{
  v8 = a2;
  v9 = v8;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!v8)
  {
    v17 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_100029784();
      _NRLogWithArgs(v19, 17, "%s called with null nrUUID", "[NRLinkDirectorMessage initDirectorMessageWithNRUUID:messageLen:messageVersion:]");

      v15 = 0;
      goto LABEL_11;
    }

LABEL_17:
    v15 = 0;
    goto LABEL_11;
  }

  v34.receiver = a1;
  v34.super_class = NRLinkDirectorMessage;
  v10 = objc_msgSendSuper2(&v34, "init");
  if (!v10)
  {
    v20 = sub_100029784();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_100029784();
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRLinkDirectorMessage initDirectorMessageWithNRUUID:messageLen:messageVersion:]", 408);
    }

    v9 = _os_log_pack_size();
    a1 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = __error();
    v24 = _os_log_pack_fill(a1, v9, *v23, &_mh_execute_header, "%{public}s [super init] failed");
    *v24 = 136446210;
    *(v24 + 4) = "[NRLinkDirectorMessage initDirectorMessageWithNRUUID:messageLen:messageVersion:]";
    sub_100029784();
    _NRLogAbortWithPack();
    goto LABEL_17;
  }

  v11 = v10;
  objc_storeStrong(v10 + 4, a2);
  *(v11 + 4) = a3;
  *(v11 + 10) = a4;
  v12 = malloc_type_calloc(1uLL, a3, 0x13E90F9uLL);
  if (v12)
  {
    v11[6] = v12;
    v13 = *(v11 + 10);
    if (v13 == 1)
    {
      v14 = 8;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_10:
        a1 = v11;
        v15 = a1;
LABEL_11:

        return v15;
      }

      v14 = 16;
    }

    *(v11 + 6) = v14;
    goto LABEL_10;
  }

  v25 = sub_100029784();
  v26 = _NRLogIsLevelEnabled();

  if (v26)
  {
    v27 = sub_100029784();
    _NRLogWithArgs(v27, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", "", "[NRLinkDirectorMessage initDirectorMessageWithNRUUID:messageLen:messageVersion:]", 412, 1uLL, a3);
  }

  v28 = _os_log_pack_size();
  v29 = __error();
  v30 = _os_log_pack_fill(&v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v28, *v29, &_mh_execute_header, "%{public}s strict_calloc(%zu, %zu) failed");
  *v30 = 136446722;
  *(v30 + 4) = "[NRLinkDirectorMessage initDirectorMessageWithNRUUID:messageLen:messageVersion:]";
  *(v30 + 12) = 2048;
  *(v30 + 14) = 1;
  *(v30 + 22) = 2048;
  *(v30 + 24) = a3;
  sub_100029784();
  v31 = _NRLogAbortWithPack();
  return sub_100029D34(v31, v32);
}

uint64_t sub_100029D34(uint64_t result, char a2)
{
  if (result)
  {
    if (*(result + 10))
    {
      v2 = *(result + 48);
      if (v2)
      {
        if (*(result + 10) <= 2u)
        {
          *v2 = a2;
        }

        return result;
      }

      v9 = sub_100029784();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_100029784();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.messageBufferPtr) != ((void*)0)", "", "[NRLinkDirectorMessage writeMessageVersionToSendBuffer:]", 424);
      }

      v12 = _os_log_pack_size();
      v13 = __error();
      v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s Assertion Failed: (self.messageBufferPtr) != ((void*)0)");
      *v14 = 136446210;
      *(v14 + 4) = "[NRLinkDirectorMessage writeMessageVersionToSendBuffer:]";
    }

    else
    {
      v3 = sub_100029784();
      v4 = _NRLogIsLevelEnabled();

      if (v4)
      {
        v5 = sub_100029784();
        _NRLogWithArgs(v5, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self.messageVersion != 0", "", "[NRLinkDirectorMessage writeMessageVersionToSendBuffer:]", 423);
      }

      v6 = _os_log_pack_size();
      v7 = __error();
      v8 = _os_log_pack_fill(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, *v7, &_mh_execute_header, "%{public}s Assertion Failed: self.messageVersion != 0");
      *v8 = 136446210;
      *(v8 + 4) = "[NRLinkDirectorMessage writeMessageVersionToSendBuffer:]";
    }

    sub_100029784();
    _NRLogAbortWithPack();
  }

  return result;
}

void sub_100029F24(uint64_t a1, _WORD *a2, size_t __n)
{
  if (!a1)
  {
    return;
  }

  v3 = *(a1 + 10);
  if (!*(a1 + 10))
  {
    v8 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_100029784();
      _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self.messageVersion != 0", "", "[NRLinkDirectorMessage writeMessageIdentifierNBOToSendBuffer:len:]", 447);
    }

    v11 = _os_log_pack_size();
    v12 = __error();
    v13 = _os_log_pack_fill(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, *v12, &_mh_execute_header, "%{public}s Assertion Failed: self.messageVersion != 0");
    *v13 = 136446210;
    *(v13 + 4) = "[NRLinkDirectorMessage writeMessageIdentifierNBOToSendBuffer:len:]";
LABEL_22:
    sub_100029784();
    _NRLogAbortWithPack();
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    v14 = sub_100029784();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = sub_100029784();
      _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.messageBufferPtr) != ((void*)0)", "", "[NRLinkDirectorMessage writeMessageIdentifierNBOToSendBuffer:len:]", 448);
    }

    v17 = _os_log_pack_size();
    v18 = __error();
    v19 = _os_log_pack_fill(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17, *v18, &_mh_execute_header, "%{public}s Assertion Failed: (self.messageBufferPtr) != ((void*)0)");
    *v19 = 136446210;
    *(v19 + 4) = "[NRLinkDirectorMessage writeMessageIdentifierNBOToSendBuffer:len:]";
    goto LABEL_22;
  }

  v5 = __n;
  if (v3 == 2)
  {

    memcpy((v4 + 8), a2, __n);
  }

  else if (v3 == 1)
  {
    if (__n >= 3)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = _NRLogIsLevelEnabled();

      if (v7)
      {
        v20 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v20, 17, "Invalid buffer length for message identifier (%u > %zu)", v5, 2uLL);
      }
    }

    else
    {
      *(v4 + 4) = *a2;
    }
  }
}

uint64_t sub_10002A204(uint64_t result, __int16 a2)
{
  v2 = *(result + 10);
  if (!*(result + 10))
  {
    v5 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = sub_100029784();
      _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self.messageVersion != 0", "", "[NRLinkDirectorMessage writeMessagePayloadLengthNBOToSendBuffer:len:]", 473);
    }

    v8 = _os_log_pack_size();
    v9 = __error();
    v10 = _os_log_pack_fill(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8, *v9, &_mh_execute_header, "%{public}s Assertion Failed: self.messageVersion != 0");
    *v10 = 136446210;
    *(v10 + 4) = "[NRLinkDirectorMessage writeMessagePayloadLengthNBOToSendBuffer:len:]";
LABEL_15:
    sub_100029784();
    _NRLogAbortWithPack();
  }

  v3 = *(result + 48);
  if (!v3)
  {
    v11 = sub_100029784();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_100029784();
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.messageBufferPtr) != ((void*)0)", "", "[NRLinkDirectorMessage writeMessagePayloadLengthNBOToSendBuffer:len:]", 474);
    }

    v14 = _os_log_pack_size();
    v15 = __error();
    v16 = _os_log_pack_fill(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, *v15, &_mh_execute_header, "%{public}s Assertion Failed: (self.messageBufferPtr) != ((void*)0)");
    *v16 = 136446210;
    *(v16 + 4) = "[NRLinkDirectorMessage writeMessagePayloadLengthNBOToSendBuffer:len:]";
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v4 = 6;
  }

  else
  {
    if (v2 != 2)
    {
      return result;
    }

    v4 = 2;
  }

  *(v3 + v4) = a2;
  return result;
}

id *sub_10002A404(id *a1, void *a2, int a3)
{
  v5 = a2;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v6 = sub_100029A28(a1, v5, 8u, 1);
    sub_100029D34(v6, 1);
    add_explicit = atomic_fetch_add_explicit(word_100228190, 1u, memory_order_relaxed);
    if (v6)
    {
      v6[5] = add_explicit;
      v14 = bswap32(sub_100029538(v6)) >> 16;
      v8 = &v14;
      v9 = v6;
      v10 = 2;
LABEL_7:
      sub_100029F24(v9, v8, v10);
    }
  }

  else
  {
    v6 = sub_100029A28(a1, v5, 0x10u, 2);
    sub_100029D34(v6, 2);
    v11 = sub_10013A56C();
    if (v6)
    {
      v6[5] = v11;
      v15 = bswap64(sub_100029538(v6));
      v8 = &v15;
      v9 = v6;
      v10 = 8;
      goto LABEL_7;
    }
  }

  v12 = v6;
LABEL_9:

  return v12;
}

id *sub_10002A50C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_4;
  }

  if (!v3)
  {
    v7 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100029784();
      _NRLogWithArgs(v9, 17, "%s called with null nrUUID", "[NRLinkDirectorMessage initOutgoingDirectorMessageWithNRUUID:]");
    }

    goto LABEL_7;
  }

  a1 = sub_10002A404(a1, v3, 2);
  v5 = a1;
LABEL_4:

  return v5;
}

id *sub_10002A5C4(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    v8 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_100029784();
      _NRLogWithArgs(v10, 17, "%s called with null nrUUID", "[NRLinkDirectorMessage initBroadcastOutgoingDirectorMessageWithNRUUID:]");
    }

    goto LABEL_9;
  }

  v5 = sub_10002A404(a1, v3, 2);
  if (v5)
  {
    *(v5 + 8) = 1;
  }

  a1 = v5;
  v6 = a1;
LABEL_6:

  return v6;
}

id *sub_10002A684(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [v4 length];
  v42 = 0;
  if (!v6)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d Received malformed message (%u < %zu)");
LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  [v4 getBytes:&v42 length:1];
  if (v42 == 2)
  {
    v41[0] = 0;
    v41[1] = 0;
    if (v6 <= 0xF)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = _NRLogIsLevelEnabled();

      if (v13)
      {
LABEL_11:
        v11 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d Received malformed message (%u < %u)");
        goto LABEL_20;
      }

LABEL_21:
      v25 = 0;
      goto LABEL_22;
    }

    [v4 getBytes:v41 length:16];
    v21 = WORD1(v41[0]);
    v22 = __rev16(WORD1(v41[0]));
    if (v22 + 16 > v6)
    {
      v23 = _NRCopyLogObjectForNRUUID();
      v24 = _NRLogIsLevelEnabled();

      if (!v24)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v37 = [NRLinkDirectorMessage alloc];
    v38 = sub_100029A28(&v37->super.isa, v5, v22 + 16, v42);
    v25 = v38;
    if (v38)
    {
      *(v38 + 7) = v22;
      sub_10002A204(v38, v21);
      [v4 getBytes:v25[6] length:v22 + 16];
      v25[7] = atomic_fetch_add_explicit(&qword_100228198, 1uLL, memory_order_relaxed);
    }

    else
    {
      [v4 getBytes:0 length:v22 + 16];
      atomic_fetch_add_explicit(&qword_100228198, 1uLL, memory_order_relaxed);
    }

    v39 = _NRCopyLogObjectForNRUUID();
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = v34;
      v36 = 651;
      goto LABEL_33;
    }
  }

  else
  {
    if (v42 != 1)
    {
      v14 = _NRCopyLogObjectForNRUUID();
      v15 = _NRLogIsLevelEnabled();

      if (v15)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v16, 0, "%s%.30s:%-4d Unsupported message version %u", "", "+[NRLinkDirectorMessage createMessageWithData:nrUUID:]", 653, v42);
      }

      goto LABEL_21;
    }

    v41[0] = 0;
    if (v6 <= 7)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

    [v4 getBytes:v41 length:8];
    v17 = HIWORD(v41[0]);
    v18 = __rev16(HIWORD(v41[0]));
    v19 = _NRCopyLogObjectForNRUUID();
    if (v18 + 8 > v6)
    {
      v20 = _NRLogIsLevelEnabled();

      if (!v20)
      {
        goto LABEL_21;
      }

LABEL_19:
      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d Received truncated message of total length %u with payloadLength %u");
      goto LABEL_20;
    }

    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
      v28 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v28, 0, "%s%.30s:%-4d Received message with version: %u, id: %u, length: %u", "", "+[NRLinkDirectorMessage createMessageWithData:nrUUID:]", 612, v42, bswap32(WORD2(v41[0])) >> 16, v18);
    }

    v29 = [NRLinkDirectorMessage alloc];
    v30 = sub_100029A28(&v29->super.isa, v5, v18 + 8, v42);
    v25 = v30;
    if (v30)
    {
      *(v30 + 7) = v18;
      sub_10002A204(v30, v17);
      v31 = v25[6];
    }

    else
    {
      v31 = 0;
    }

    [v4 getBytes:v31 length:v18 + 8];
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = v34;
      v36 = 620;
LABEL_33:
      _NRLogWithArgs(v34, 0, "%s%.30s:%-4d Received message: %@", "", "+[NRLinkDirectorMessage createMessageWithData:nrUUID:]", v36, v25);
    }
  }

LABEL_22:

  return v25;
}

void sub_10002AB38(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    goto LABEL_21;
  }

  v49 = v5;
  if (v5)
  {
    v6 = [v5 length];
    if (v6 >= 0x10000)
    {
      v20 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v5 = v49;
      if (IsLevelEnabled)
      {
        v22 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v22, 17, "Tried to addType %u with dataLen %llu", a2, v6);

        goto LABEL_20;
      }

LABEL_21:

      return;
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v7 = *(a1 + 14);
  v8 = *(a1 + 16);
  if (v8 != *(a1 + 12) + v7)
  {
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    v5 = v49;
    if (v16)
    {
      v17 = *(a1 + 32);
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = *(a1 + 16);

      _NRLogWithArgs(v18, 17, "Disconnect between messageLen %u and writtenPayloadLength %u", v19, v7);
LABEL_20:
      v5 = v49;
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v9 = v6;
  v10 = v6 + 3;
  v11 = v8 + (v6 + 3);
  *(a1 + 16) = v11;
  if (!v11)
  {
    v24 = sub_100029784();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_100029784();
      _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: strict_reallocf called with size 0", "", "[NRLinkDirectorMessage addType:data:]", 689);
    }

    v27 = _os_log_pack_size();
    v28 = &v49 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v27, *v29, &_mh_execute_header, "%{public}s strict_reallocf called with size 0");
    *v30 = 136446210;
    *(v30 + 4) = "[NRLinkDirectorMessage addType:data:]";
LABEL_30:
    sub_100029784();
    _NRLogAbortWithPack();
  }

  v12 = reallocf(*(a1 + 48), v11);
  if (!v12)
  {
    v31 = sub_100029784();
    v32 = _NRLogIsLevelEnabled();

    if (v32)
    {
      v33 = sub_100029784();
      _NRLogWithArgs(v33, 16, "%s%.30s:%-4d ABORTING: strict_reallocf(%zu) failed", "", "[NRLinkDirectorMessage addType:data:]", 689, v11);
    }

    v34 = _os_log_pack_size();
    v35 = &v49 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = __error();
    v37 = _os_log_pack_fill(v35, v34, *v36, &_mh_execute_header, "%{public}s strict_reallocf(%zu) failed");
    *v37 = 136446466;
    *(v37 + 4) = "[NRLinkDirectorMessage addType:data:]";
    *(v37 + 12) = 2048;
    *(v37 + 14) = v11;
    goto LABEL_30;
  }

  *(a1 + 48) = v12;
  v13 = *(a1 + 10);
  if (v13 == 1)
  {
    v14 = 8;
    goto LABEL_17;
  }

  if (v13 == 2)
  {
    v14 = 16;
LABEL_17:
    v23 = &v12[v14 + v7];
    *v23 = a2;
    *(v23 + 1) = __rev16(v9);
    if (v9)
    {
      [v49 getBytes:v23 + 3 length:v9];
    }

    *(a1 + 14) = v7 + v10;
    sub_10002A204(a1, bswap32(v7 + v10) >> 16);
    goto LABEL_20;
  }

  v38 = sub_100029784();
  v39 = _NRLogIsLevelEnabled();

  if (v39)
  {
    v40 = sub_100029784();
    _NRLogWithArgs(v40, 16, "%s%.30s:%-4d ABORTING: Unsupported message version: %u", "", "[NRLinkDirectorMessage addType:data:]", 697, *(a1 + 10));
  }

  v41 = _os_log_pack_size();
  v42 = &v49 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __error();
  v44 = _os_log_pack_fill(v42, v41, *v43, &_mh_execute_header, "%{public}s Unsupported message version: %u");
  v45 = *(a1 + 10);
  *v44 = 136446466;
  *(v44 + 4) = "[NRLinkDirectorMessage addType:data:]";
  *(v44 + 12) = 1024;
  *(v44 + 14) = v45;
  sub_100029784();
  v46 = _NRLogAbortWithPack();
  sub_10002AFC8(v46, v47, v48);
}

void sub_10002AFC8(uint64_t a1, int a2, char a3)
{
  if (a1)
  {
    v6 = a3;
    v5 = [[NSData alloc] initWithBytes:&v6 length:1];
    sub_10002AB38(a1, a2, v5);
  }
}

void sub_10002B038(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = a3;
  v7 = a2;
  v17 = v7;
  if (v7)
  {
    v8 = sub_10013D308(v7, v5, 1);
    if (!v8)
    {
      if (qword_100228F60 != -1)
      {
        dispatch_once(&qword_100228F60, &stru_1001FA780);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F60 != -1)
        {
          dispatch_once(&qword_100228F60, &stru_1001FA780);
        }

        _NRLogWithArgs(qword_100228F58, 17, "NRCreateAddressData(%@) failed", v17);
        v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_23;
    }

    v9 = v8;
    if ([v17 addressFamily] == 30)
    {
      if (a4)
      {
        v10 = 9;
      }

      else
      {
        v10 = 2;
      }

      goto LABEL_7;
    }

    v11 = [v17 addressFamily];
    if (v11 == 2 && a4)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v14, 17, "unsupported address family for AWDL");
      }

      goto LABEL_23;
    }

    if (v11 == 2)
    {
      v10 = 3;
LABEL_7:
      sub_10002AB38(a1, v10, v9);
    }
  }

  else
  {
    v15 = sub_100029784();
    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      goto LABEL_24;
    }

    v9 = sub_100029784();
    _NRLogWithArgs(v9, 17, "%s called with null addressEndpoint", "[NRLinkDirectorMessage addUpdateAddressEndpointInner:portHBO:isAWDL:]");
  }

LABEL_23:

LABEL_24:
}

id *sub_10002B210(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a1[6])
    {
      objc_opt_self();
      if (qword_100228F50 != -1)
      {
        dispatch_once(&qword_100228F50, &stru_1001FA740);
      }

      v5 = qword_100228F48;
      v6 = a1;
      if (!v5)
      {
        goto LABEL_57;
      }

      dispatch_assert_queue_V2(*(v5 + 8));
      v7 = *(v5 + 16);
      v8 = *(v6 + 4);
      v9 = v7;
      v10 = [v9 objectForKeyedSubscript:v8];

      if (!v10)
      {
        v24 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v26 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v26, 17, "no registered uuid for incoming message");

          v23 = 0;
          goto LABEL_84;
        }

LABEL_57:
        v23 = 0;
        goto LABEL_84;
      }

      v11 = [NSNumber numberWithUnsignedChar:a2];
      v12 = [v10 objectForKeyedSubscript:v11];
      if (v12)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_56:

          goto LABEL_57;
        }

        v13 = v12[1];
        v14 = v13;
        if (v13)
        {
          v2 = [v13 unsignedLongLongValue];
          if (v2 >= sub_100029538(v6))
          {
            v15 = v12[2];
            v16 = [v14 unsignedLongLongValue];
            if (v16 == sub_100029538(v6) && [v15 unsignedLongLongValue] == *(v6 + 7))
            {
              v17 = v15;
              v18 = _NRCopyLogObjectForNRUUID();
              v2 = _NRLogIsLevelEnabled();

              if (v2)
              {
                v19 = _NRCopyLogObjectForNRUUID();
                v20 = sub_100029538(v6);
                _NRLogWithArgs(v19, 2, "%s%.30s:%-4d allowing access to message type %u for same message %llu", "", "[NRLinkDirectorMessageManager isMessageTypeValid:forMessage:]", 383, a2, v20);
              }

              goto LABEL_22;
            }

            v62 = _NRCopyLogObjectForNRUUID();
            v63 = _NRLogIsLevelEnabled();

            if (v63)
            {
              v64 = *(v6 + 4);
              v65 = _NRCopyLogObjectForNRUUID();
              v66 = [v14 unsignedLongLongValue];

              v67 = sub_100029538(v6);
              _NRLogWithArgs(v65, 0, "%s%.30s:%-4d Ignoring received message type %u, as it is stale (%llu >= %llu)", "", "[NRLinkDirectorMessageManager isMessageTypeValid:forMessage:]", 386, a2, v66, v67);
            }

            goto LABEL_56;
          }
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_22:

      v27 = objc_alloc_init(NSMutableArray);
      v28 = *(v6 + 7);
      if (v6[4] == *(v6 + 6) + v28)
      {
        v29 = *(v6 + 10);
        v106 = v6;
        v107 = a2;
        if (v29 == 1)
        {
          v30 = 8;
          if (!v28)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v29 != 2)
          {
            v96 = sub_100029784();
            v97 = _NRLogIsLevelEnabled();

            v58 = "[NRLinkDirectorMessage copyAllDataForType:]";
            if (v97)
            {
              v98 = sub_100029784();
              _NRLogWithArgs(v98, 16, "%s%.30s:%-4d ABORTING: Unsupported message version: %u", "", "[NRLinkDirectorMessage copyAllDataForType:]", 908, *(v6 + 10));
            }

            v57 = _os_log_pack_size();
            v99 = &v103 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v100 = __error();
            v101 = _os_log_pack_fill(v99, v57, *v100, &_mh_execute_header, "%{public}s Unsupported message version: %u");
            v102 = *(v6 + 10);
            *v101 = 136446466;
            *(v101 + 4) = "[NRLinkDirectorMessage copyAllDataForType:]";
            *(v101 + 12) = 1024;
            *(v101 + 14) = v102;
            sub_100029784();
            _NRLogAbortWithPack();
            goto LABEL_89;
          }

          v30 = 16;
          if (!v28)
          {
LABEL_45:
            if (![v27 count])
            {
LABEL_83:
              v6 = v27;
              v23 = v6;
              goto LABEL_84;
            }

            objc_opt_self();
            if (qword_100228F50 != -1)
            {
              dispatch_once(&qword_100228F50, &stru_1001FA740);
            }

            v6 = v106;
            v57 = qword_100228F48;
            v58 = v106;
            if (!v57)
            {
LABEL_82:

              goto LABEL_83;
            }

            dispatch_assert_queue_V2(*(v57 + 8));
            v59 = v106[4];
            v60 = *(v57 + 16);
            v28 = [v60 objectForKeyedSubscript:v59];

            if (!v28)
            {
              v78 = _NRCopyLogObjectForNRUUID();
              v79 = _NRLogIsLevelEnabled();

              if (!v79)
              {
LABEL_81:

                goto LABEL_82;
              }

              v12 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v12, 17, "no registered uuid for incoming message");
LABEL_80:

              goto LABEL_81;
            }

            v12 = [NSNumber numberWithUnsignedChar:v107];
            v61 = [NSNumber numberWithUnsignedLongLong:sub_100029538(v58)];
            v2 = [v28 objectForKeyedSubscript:v12];
            v104 = v27;
            if (v2)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v93 = _NRCopyLogObjectForNRUUID();
                v94 = _NRLogIsLevelEnabled();

                if (!v94)
                {
                  v89 = v61;
LABEL_79:

                  v27 = v104;
                  goto LABEL_80;
                }

                v81 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v81, 17, "refusing to update message type %u, for invalid object %@", v107, v2);
                v89 = v61;
LABEL_78:

                goto LABEL_79;
              }

              v105 = v61;
              goto LABEL_65;
            }

            v105 = v61;
            v2 = objc_alloc_init(NRLinkDirectorMessageState);
            if (v2)
            {
LABEL_65:
              v80 = v2->_sequenceNum;
              v81 = v80;
              if (v80)
              {
                v82 = [(NSNumber *)v80 unsignedLongLongValue];
                if (v82 > sub_100029538(v58))
                {
                  v83 = _NRCopyLogObjectForNRUUID();
                  v84 = _NRLogIsLevelEnabled();

                  if (!v84)
                  {
                    v89 = v105;
                    goto LABEL_78;
                  }

                  v85 = v106[4];
                  v86 = _NRCopyLogObjectForNRUUID();
                  v87 = [v81 unsignedLongLongValue];

                  v88 = sub_100029538(v58);
                  _NRLogWithArgs(v86, 17, "refusing to update message type %u, as it is stale (%llu > %llu)", v107, v87, v88);
                  v89 = v105;
                  goto LABEL_73;
                }
              }

              v89 = v105;
              objc_storeStrong(&v2->_sequenceNum, v105);
              v90 = 0;
LABEL_70:
              v91 = [NSNumber numberWithUnsignedLongLong:*(v58 + 7)];
              if ((v90 & 1) == 0)
              {
                objc_storeStrong(&v2->_localReceiveID, v91);
              }

              [v28 setObject:v2 forKeyedSubscript:v12];
              v92 = *(v6 + 4);
              v86 = *(v57 + 16);
              [v86 setObject:v28 forKeyedSubscript:v92];
LABEL_73:

              goto LABEL_78;
            }

LABEL_89:
            v81 = 0;
            v90 = 1;
            v89 = v105;
            goto LABEL_70;
          }
        }

        v36 = 0;
        v37 = 0;
        v38 = a1[6] + v30;
        v39 = &gNRPacketLoggingEnabled;
        v40 = v38 + v28;
        v105 = v28;
        while (1)
        {
          if (*v39 == 1)
          {
            v54 = _NRCopyLogObjectForNRUUID();
            v55 = _NRLogIsLevelEnabled();

            if (v55)
            {
              v56 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v56, 1, "%s%.30s:%-4d Payload traversed: %u, payload length: %u", "", "[NRLinkDirectorMessage copyAllDataForType:]", 913, v36, v28);
            }
          }

          v44 = (v38 + v37);
          v45 = v44 + 3;
          if ((v44 + 3) > v40)
          {
            break;
          }

          v46 = *(v44 + 1);
          v47 = __rev16(v46);
          if (&v45[v47] > v40)
          {
            v73 = _NRCopyLogObjectForNRUUID();
            v74 = _NRLogIsLevelEnabled();

            if (v74)
            {
              v75 = v106[4];
              v76 = _NRCopyLogObjectForNRUUID();
              v77 = *v44;

              _NRLogWithArgs(v76, 16, "%s%.30s:%-4d Received malformed TLV of type: %u, length: %u", "", "[NRLinkDirectorMessage copyAllDataForType:]", 926, v77, v47);
            }

            goto LABEL_29;
          }

          if (*v44 == v107)
          {
            v28 = v39;
            v48 = v38;
            v49 = v27;
            v50 = _NRCopyLogObjectForNRUUID();
            v51 = _NRLogIsLevelEnabled();

            if (v51)
            {
              v52 = _NRCopyLogObjectForNRUUID();
              v53 = sub_1000292B4(v107);
              _NRLogWithArgs(v52, 1, "%s%.30s:%-4d Found TLV type: %@", "", "[NRLinkDirectorMessage copyAllDataForType:]", 931, v53);
            }

            if (v46)
            {
              v41 = [[NSData alloc] initWithBytes:v45 length:v47];
            }

            else
            {
              v41 = +[NSData data];
            }

            v42 = v41;
            v27 = v49;
            [v49 addObject:v41];

            v38 = v48;
            v39 = v28;
            LODWORD(v28) = v105;
          }

          v43 = v37 + v47;
          v37 += v47 + 3;
          v36 = (v43 + 3);
          if (v36 >= v28)
          {
            goto LABEL_45;
          }
        }

        v68 = _NRCopyLogObjectForNRUUID();
        v69 = _NRLogIsLevelEnabled();

        if (v69)
        {
          v70 = v106[4];
          v71 = _NRCopyLogObjectForNRUUID();
          v72 = *v44;

          _NRLogWithArgs(v71, 16, "%s%.30s:%-4d Received malformed TLV of type: %u", "", "[NRLinkDirectorMessage copyAllDataForType:]", 918, v72);
        }
      }

      else
      {
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = *(v6 + 4);
          v34 = _NRCopyLogObjectForNRUUID();
          v35 = v6[4];

          _NRLogWithArgs(v34, 17, "Disconnect between messageLen %u and payloadLength %u", v35, v28);
        }
      }

LABEL_29:
      v23 = 0;
      v6 = v27;
LABEL_84:

      return v23;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v6, 17, "No message");
      v23 = 0;
      goto LABEL_84;
    }
  }

  return 0;
}

int64_t sub_10002BD0C(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [a2 metric]);
  v6 = [v4 metric];

  v7 = [NSNumber numberWithUnsignedShort:v6];
  v8 = [v5 compare:v7];

  return v8;
}

id sub_10002BDA4(void *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (a3)
  {
    v7 = 9;
  }

  else
  {
    v7 = 2;
  }

  v8 = sub_10002B210(a1, v7);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = sub_10013D760(*(*(&v25 + 1) + 8 * v12), 0, 30, v4);
        if (v13)
        {
          [v6 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = sub_10002B210(a1, 3);
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = sub_10013D760(*(*(&v21 + 1) + 8 * v18), 0, 2, v4);
        if (v19)
        {
          [v6 addObject:{v19, v21}];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v6;
}