void sub_100101814(uint64_t a1)
{
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (!sub_100140C44(v2) || !*(a1 + 424))
  {
    goto LABEL_40;
  }

  if (v2)
  {
    v3 = v2[18];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 usesTLS];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 15;
  }

  v7 = *(a1 + 160);
  if (!v7)
  {
    goto LABEL_33;
  }

  if ([v7 type] == 1)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if ((IsLevelEnabled & 1) == 0)
    {
      goto LABEL_21;
    }

    v10 = 1646;
    goto LABEL_20;
  }

  v11 = *(a1 + 160);
  if (!v11)
  {
    goto LABEL_33;
  }

  if ([v11 type] == 2)
  {
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }

    v10 = 1652;
    goto LABEL_20;
  }

  v14 = *(a1 + 160);
  if (!v14)
  {
    goto LABEL_33;
  }

  if ([v14 type] != 5)
  {
    if (*(a1 + 160))
    {
LABEL_39:
      objc_initWeak(location, a1);
      v39 = *(a1 + 432);
      v40 = dispatch_time(0x8000000000000000, 1000000000 * v6);
      v41 = *(a1 + 136);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100101DE4;
      block[3] = &unk_1001FD0B0;
      v42 = v41;
      objc_copyWeak(v44, location);
      v44[1] = v39;
      dispatch_after(v40, v42, block);

      objc_destroyWeak(v44);
      objc_destroyWeak(location);
      goto LABEL_40;
    }

LABEL_33:
    if ((*(a1 + 28) & 1) == 0)
    {
      v35 = *(a1 + 41);
      if (v35 == 5 || v35 == 2)
      {
        v36 = _NRCopyLogObjectForNRUUID();
        v37 = _NRLogIsLevelEnabled();

        if (v37)
        {
          v38 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v38, 0, "%s%.30s:%-4d Skipping companion Link viability hysteresis timer", "", "[NRDDeviceConductor updateCompanionLinkViability]", 1664);
        }

        v6 = 0;
      }
    }

    goto LABEL_39;
  }

  v15 = _NRCopyLogObjectForNRUUID();
  v16 = _NRLogIsLevelEnabled();

  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  v10 = 1658;
LABEL_20:
  v17 = *(a1 + 96);
  v18 = _NRCopyLogObjectForNRUUID();
  _NRLogWithArgs(v18, 0, "%s%.30s:%-4d Companion Link viable due to primary link: %@", "", "[NRDDeviceConductor updateCompanionLinkViability]", v10, *(a1 + 160));

LABEL_21:
  v19 = *(a1 + 424);
  ++*(a1 + 432);
  if (v19)
  {
    dispatch_assert_queue_V2(*(v19 + 40));
    if (([v19 isActive] & 1) == 0)
    {
      [v19 setActive:1];
      [*(v19 + 48) updateNetworkAgent:v19];
      v20 = *(v19 + 32);
      v21 = *(v19 + 64);
      v22 = v20;
      v23 = [v19 agentUUID];
      v24 = [v23 UUIDString];
      sub_1000059A8(v22, 19005, v21, v24);
    }
  }

  if (*(a1 + 488) && (*(a1 + 46) & 1) == 0 && (*(a1 + 60) & 1) == 0)
  {
    v25 = NEVirtualInterfaceCopyName();
    v26 = [NEPolicy alloc];
    v27 = [NEPolicyResult scopeSocketToInterfaceName:v25];
    v28 = [NEPolicyCondition accountIdentifier:@"com.apple.networkrelay.cmpn-link-monitor"];
    location[0] = v28;
    v29 = +[NEPolicyCondition allInterfaces];
    location[1] = v29;
    v30 = [NSArray arrayWithObjects:location count:2];
    v31 = [v26 initWithOrder:50 result:v27 conditions:v30];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v32 = qword_100229408;
    v33 = sub_100159E00(v32, *(a1 + 560), v31);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v34 = qword_100229408;
    sub_10015A52C(v34);

    *(a1 + 60) = 1;
  }

LABEL_40:
}

void sub_100101D0C(uint64_t a1)
{
  if (a1 && *(a1 + 488))
  {
    v4 = NEVirtualInterfaceCopyName();
    v1 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v3 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v3, 1, "%s%.30s:%-4d Setting interface availability for catch-all interface %@", "", "[NRDDeviceConductor setInterfaceAvailabilityForCatchAllInterface]", 8432, v4);
    }

    sub_10013CC88(v4);
  }
}

void sub_100101DE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 14) == 1)
  {
    v12 = WeakRetained;
    if (*(a1 + 40) == WeakRetained[54])
    {
      if (*(WeakRetained + 57) == 1)
      {
        sub_1000FAA10(WeakRetained, 1);
        sub_1000FAFFC(v12);
        WeakRetained = v12;
      }

      v3 = WeakRetained[53];
      if (v3)
      {
        dispatch_assert_queue_V2(*(v3 + 40));
        if ([v3 isActive])
        {
          [v3 setActive:0];
          [*(v3 + 48) updateNetworkAgent:v3];
          v4 = *(v3 + 32);
          v5 = *(v3 + 64);
          v6 = v4;
          v7 = [v3 agentUUID];
          v8 = [v7 UUIDString];
          sub_1000059A8(v6, 19004, v5, v8);
        }
      }

      sub_100101F8C(v12);
    }

    else
    {
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v12;
      if (!IsLevelEnabled)
      {
        goto LABEL_13;
      }

      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v11, 2, "%s%.30s:%-4d Skipping viability update (%llu != %llu)", "", "[NRDDeviceConductor updateCompanionLinkViability]_block_invoke", 1691, *(a1 + 40), v12[54]);
    }

    WeakRetained = v12;
  }

LABEL_13:
}

void sub_100101F8C(uint64_t a1)
{
  if (*(a1 + 488) && *(a1 + 60) == 1)
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 560));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    *(a1 + 60) = 0;
  }
}

void sub_100102068(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 28) & 1) == 0)
    {
      sub_10003F8D8(*(v1 + 224));
    }
  }

  else
  {
    sub_10003F8D8(0);
  }
}

void sub_100103388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001033B0(void **a1)
{
  if (a1)
  {
    v4 = a1;
    if (sub_10010E200(a1))
    {
      v5 = sub_100163A30(NRDLocalDevice, v4[12]);
      if (!v5)
      {
        v77 = sub_1000E83DC();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v79 = sub_1000E83DC();
          _NRLogWithArgs(v79, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: localDevice", "", "[NRDDeviceConductor setupCatchAllInterfaceIfApplicable]", 8527);
        }

        v7 = _os_log_pack_size();
        v80 = &v103 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v81 = *__error();
        v82 = _os_log_pack_fill(v80, v7, v81, &_mh_execute_header, "%{public}s Assertion Failed: localDevice");
        goto LABEL_72;
      }

      v3 = v5;
      sub_10010E27C(v4);
      v2 = NEVirtualInterfaceCopyAddresses();
      v108 = NEVirtualInterfaceCopyName();
      v6 = sub_100003490();
      dispatch_assert_queue_V2(v6);

      v7 = sub_1001679E0(v3, @"0");
      v8 = sub_100003490();
      dispatch_assert_queue_V2(v8);

      v1 = sub_1001672A0(v3, @"0");
      sub_10010E5CC(v4, v4[12]);
      v9 = 0;
      if ((*(v3 + 49) & 0x10) != 0 && v1)
      {
        if (v2)
        {
          v10 = [v1 hostname];
          v11 = [v2 containsObject:v10];

          if (v11)
          {
            v9 = 0;
            if ((*(v3 + 49) & 0x20) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_17;
          }
        }

        v12 = [v1 hostname];
        NEVirtualInterfaceAddAddress();

        NEVirtualInterfaceAddAddress();
        v13 = *(v3 + 144);
        LODWORD(v12) = [v13 hasCompanionDatapath];

        if (!v12)
        {
          v9 = 1;
          if ((*(v3 + 49) & 0x20) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        v105 = v1;
        v106 = v2;
        v107 = v4;
        v14 = sub_100003490();
        dispatch_assert_queue_V2(v14);

        v2 = sub_1001677D0(v3, @"0");
        v15 = [NEPolicyCondition remoteAddress:v2 prefix:128];

        if (!v15)
        {
          v83 = sub_1000E83DC();
          v84 = _NRLogIsLevelEnabled();

          if (v84)
          {
            v85 = sub_1000E83DC();
            _NRLogWithArgs(v85, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (conditionPrefix) != ((void*)0)", "", "[NRDDeviceConductor setupCatchAllInterfaceIfApplicable]", 8551);
          }

          v7 = _os_log_pack_size();
          v86 = &v103 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v87 = *__error();
          v82 = _os_log_pack_fill(v86, v7, v87, &_mh_execute_header, "%{public}s Assertion Failed: (conditionPrefix) != ((void*)0)");
          goto LABEL_72;
        }

        v16 = [NEPolicy alloc];
        v1 = [NEPolicyResult tunnelIPToInterfaceName:v108 secondaryResultType:0];
        v121[0] = v15;
        v17 = +[NEPolicyCondition allInterfaces];
        v121[1] = v17;
        v18 = [NSArray arrayWithObjects:v121 count:2];
        v2 = [v16 initWithOrder:4000 result:v1 conditions:v18];

        if (!v2)
        {
          v93 = sub_1000E83DC();
          v94 = _NRLogIsLevelEnabled();

          if (v94)
          {
            v95 = sub_1000E83DC();
            _NRLogWithArgs(v95, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (policyPrefix) != ((void*)0)", "", "[NRDDeviceConductor setupCatchAllInterfaceIfApplicable]", 8556);
          }

          v7 = _os_log_pack_size();
          v96 = &v103 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v97 = *__error();
          v82 = _os_log_pack_fill(v96, v7, v97, &_mh_execute_header, "%{public}s Assertion Failed: (policyPrefix) != ((void*)0)");
          goto LABEL_72;
        }

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v4 = v107;
        v1 = v105;
        v19 = qword_100229408;
        v20 = sub_100159E00(v19, v107[38], v2);

        v9 = 1;
        v2 = v106;
      }

      if ((*(v3 + 49) & 0x20) == 0)
      {
        goto LABEL_29;
      }

LABEL_17:
      if (!v7)
      {
        goto LABEL_29;
      }

      if (v2)
      {
        v21 = [v7 hostname];
        v22 = [v2 containsObject:v21];

        if (v22)
        {
          goto LABEL_29;
        }
      }

      v23 = [v7 hostname];
      NEVirtualInterfaceAddAddress();

      v24 = *(v3 + 144);
      LODWORD(v23) = [v24 hasCompanionDatapath];

      if (!v23)
      {
        v9 = 1;
        goto LABEL_29;
      }

      v105 = v1;
      v106 = v2;
      v1 = v4;
      v25 = v7;
      v26 = sub_100003490();
      dispatch_assert_queue_V2(v26);

      v27 = sub_100167B9C(v3, @"0");
      v28 = [NEPolicyCondition remoteAddress:v27 prefix:128];

      if (v28)
      {
        v29 = [NEPolicy alloc];
        v30 = [NEPolicyResult tunnelIPToInterfaceName:v108 secondaryResultType:0];
        v120[0] = v28;
        v31 = +[NEPolicyCondition allInterfaces];
        v120[1] = v31;
        v32 = [NSArray arrayWithObjects:v120 count:2];
        v2 = [v29 initWithOrder:4000 result:v30 conditions:v32];

        if (v2)
        {
          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v7 = v25;
          v33 = qword_100229408;
          v4 = v1;
          v34 = sub_100159E00(v33, v1[38], v2);

          v9 = 1;
          v1 = v105;
          v2 = v106;
LABEL_29:
          v35 = *(v3 + 144);
          [v35 hasCompanionDatapath];

          if (*(v3 + 16) >= 0xCu && (*(v4 + 59) & 1) == 0)
          {
            NEVirtualInterfaceSetMTU();
            *(v4 + 59) = 1;
            v36 = _NRCopyLogObjectForNRUUID();
            v37 = _NRLogIsLevelEnabled();

            if (v37)
            {
              v38 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v38, 0, "%s%.30s:%-4d Updated interface mtu for catch-all interface (%@)", "", "[NRDDeviceConductor setupCatchAllInterfaceIfApplicable]", 8591, v108);
            }
          }

          v39 = *(v3 + 144);
          if ([v39 usesTLS])
          {
            v40 = v7;
            v41 = v4[62];

            if (!v41)
            {
              v105 = v1;
              v106 = v2;
              v103 = v40;
              v45 = sub_100003490();
              dispatch_assert_queue_V2(v45);

              v104 = v3;
              v46 = sub_1001677D0(v3, @"0");
              v47 = sub_10010DC08(v4, v108, v46);
              v48 = v4[62];
              v4[62] = v47;

              v119[0] = 0;
              v119[1] = 0;
              nw_agent_get_uuid();
              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              v49 = v4;
              v107 = sub_10010DCE4(v4, 0, 1);
              v50 = [v107 countByEnumeratingWithState:&v113 objects:v118 count:16];
              if (v50)
              {
                v51 = v50;
                v52 = *v114;
                do
                {
                  for (i = 0; i != v51; i = i + 1)
                  {
                    if (*v114 != v52)
                    {
                      objc_enumerationMutation(v107);
                    }

                    v54 = *(*(&v113 + 1) + 8 * i);
                    v55 = [[NSUUID alloc] initWithUUIDBytes:v119];
                    v56 = [NEPolicy alloc];
                    v57 = [NEPolicyResult netAgentUUID:v55];
                    v58 = [v56 initWithOrder:3900 result:v57 conditions:v54];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v59 = qword_100229408;
                    v60 = sub_100159E00(v59, v49[38], v58);
                  }

                  v51 = [v107 countByEnumeratingWithState:&v113 objects:v118 count:16];
                }

                while (v51);
              }

              v7 = v103;
              v3 = v104;
              v4 = v49;
              v1 = v105;
              v2 = v106;
LABEL_51:
              v61 = *(v3 + 144);
              v62 = [v61 usesTLS];

              if (v62)
              {
                v105 = v1;
                v106 = v2;
                v103 = v7;
                v104 = v3;
                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                v63 = v4;
                v107 = sub_10010DFA8(v4, 0, 1);
                v64 = [v107 countByEnumeratingWithState:&v109 objects:v117 count:16];
                if (v64)
                {
                  v65 = v64;
                  v66 = *v110;
                  do
                  {
                    for (j = 0; j != v65; j = j + 1)
                    {
                      if (*v110 != v66)
                      {
                        objc_enumerationMutation(v107);
                      }

                      v68 = *(*(&v109 + 1) + 8 * j);
                      v69 = [NEPolicy alloc];
                      v70 = [NEPolicyResult scopeSocketToInterfaceName:v108];
                      v71 = [v69 initWithOrder:4000 result:v70 conditions:v68];

                      objc_opt_self();
                      if (qword_100229410 != -1)
                      {
                        dispatch_once(&qword_100229410, &stru_1001FCD98);
                      }

                      v72 = qword_100229408;
                      v73 = sub_100159E00(v72, v63[38], v71);
                    }

                    v65 = [v107 countByEnumeratingWithState:&v109 objects:v117 count:16];
                  }

                  while (v65);
                }

                v7 = v103;
                v3 = v104;
                v1 = v105;
                v2 = v106;
              }

              NEVirtualInterfaceUpdateAdHocService();
              objc_opt_self();
              if (qword_100229410 == -1)
              {
LABEL_64:
                v74 = qword_100229408;
                sub_10015A52C(v74);

                v75 = _NRCopyLogObjectForNRUUID();
                v76 = _NRLogIsLevelEnabled();

                if (v76)
                {
                  v44 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v44, 0, "%s%.30s:%-4d Successfully created a catch-all interface (%@) and installed policies", "", "[NRDDeviceConductor setupCatchAllInterfaceIfApplicable]", 8629, v108);
                  goto LABEL_66;
                }

                goto LABEL_67;
              }

LABEL_73:
              dispatch_once(&qword_100229410, &stru_1001FCD98);
              goto LABEL_64;
            }

            v7 = v40;
            if (v9)
            {
              goto LABEL_51;
            }
          }

          else
          {

            if (v9)
            {
              goto LABEL_51;
            }
          }

          v42 = _NRCopyLogObjectForNRUUID();
          v43 = _NRLogIsLevelEnabled();

          if (v43)
          {
            v44 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v44, 0, "%s%.30s:%-4d Not updating catch-all interface as there are no new addresses");
LABEL_66:
          }

LABEL_67:

          return;
        }

        v98 = sub_1000E83DC();
        v99 = _NRLogIsLevelEnabled();

        if (v99)
        {
          v100 = sub_1000E83DC();
          _NRLogWithArgs(v100, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (policyPrefix) != ((void*)0)", "", "[NRDDeviceConductor setupCatchAllInterfaceIfApplicable]", 8576);
        }

        v7 = _os_log_pack_size();
        v101 = &v103 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v102 = *__error();
        v82 = _os_log_pack_fill(v101, v7, v102, &_mh_execute_header, "%{public}s Assertion Failed: (policyPrefix) != ((void*)0)");
      }

      else
      {
        v88 = sub_1000E83DC();
        v89 = _NRLogIsLevelEnabled();

        if (v89)
        {
          v90 = sub_1000E83DC();
          _NRLogWithArgs(v90, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (conditionPrefix) != ((void*)0)", "", "[NRDDeviceConductor setupCatchAllInterfaceIfApplicable]", 8571);
        }

        v7 = _os_log_pack_size();
        v91 = &v103 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v92 = *__error();
        v82 = _os_log_pack_fill(v91, v7, v92, &_mh_execute_header, "%{public}s Assertion Failed: (conditionPrefix) != ((void*)0)");
      }

LABEL_72:
      *v82 = 136446210;
      *(v82 + 4) = "[NRDDeviceConductor setupCatchAllInterfaceIfApplicable]";
      sub_1000E83DC();
      _NRLogAbortWithPack();
      goto LABEL_73;
    }
  }
}

void sub_100104190(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (v2)
  {
    v3 = v2[18];
    v25 = v2;
    v4 = v3;
    if (v4 && (*(v25 + 49) & 0x10) != 0 && *(a1 + 46) == 1)
    {
      v5 = *(a1 + 480);

      if (v5)
      {
LABEL_14:

        return;
      }

      v6 = nw_parameters_create();
      v7 = v25[18];
      v8 = [v7 proxyProviderRequiresWiFi];

      if (v8)
      {
        nw_parameters_set_required_interface_type(v6, nw_interface_type_wifi);
      }

      nw_parameters_set_account_id();
      v9 = [NRCompanionProxyConfigAgent alloc];
      v10 = *(a1 + 136);
      v11 = *(a1 + 96);
      v12 = v10;
      v13 = sub_100071B84(&v9->super.isa, v12, v6, v11);
      v14 = *(a1 + 480);
      *(a1 + 480) = v13;

      if ((sub_100071E20(*(a1 + 480)) & 1) == 0)
      {
        v15 = *(a1 + 480);
        *(a1 + 480) = 0;

        v16 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v18 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v18, 17, "failed to register companion proxy config agent");
        }
      }

      v4 = v6;
    }

    goto LABEL_14;
  }

  v19 = sub_1000E83DC();
  v20 = _NRLogIsLevelEnabled();

  if (v20)
  {
    v21 = sub_1000E83DC();
    _NRLogWithArgs(v21, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRDDeviceConductor setupCompanionProxyConfigAgentIfApplicable]", 554);
  }

  v22 = _os_log_pack_size();
  v23 = __error();
  v24 = _os_log_pack_fill(&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22, *v23, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
  *v24 = 136446210;
  *(v24 + 4) = "[NRDDeviceConductor setupCompanionProxyConfigAgentIfApplicable]";
  sub_1000E83DC();
  _NRLogAbortWithPack();
}

void sub_100104434(void **a1)
{
  if (!a1)
  {
    return;
  }

  v73 = sub_100163A30(NRDLocalDevice, a1[12]);
  if (sub_100140C44(v73))
  {
    v2 = a1[53];
    if (!v2)
    {
      goto LABEL_6;
    }

    v3 = a1[53];
    if (!v3)
    {

      v5 = a1[53];
      if (!v5)
      {
LABEL_8:
        v7 = v73;
        if (!v73)
        {
          v8 = 0;
          v10 = 0;
          goto LABEL_50;
        }

        if (*(v73 + 12))
        {
          v8 = 0;
        }

        else
        {
          v74 = 0uLL;
          sub_100167D5C(v73, &v74);
          objc_opt_self();
          v7 = v73;
          if (WORD6(v74))
          {
            v9 = WORD5(v74) == 0;
          }

          else
          {
            v9 = 1;
          }

          v8 = !v9;
          if ((*(v73 + 12) & 1) == 0)
          {
            v74 = 0uLL;
            sub_1001727AC(v73, &v74);
            objc_opt_self();
            if (WORD6(v74))
            {
              v12 = WORD5(v74) == 0;
            }

            else
            {
              v12 = 1;
            }

            v10 = !v12;
            v11 = v73[6];
            if ((v11 & 1) == 0)
            {
LABEL_50:
              v63 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v65 = _NRCopyLogObjectForNRUUID();
                if (v73)
                {
                  v66 = *(v73 + 12);
                  v67 = v66 & 1;
                  v68 = (v66 >> 1) & 1;
                }

                else
                {
                  v67 = 0;
                  v68 = 0;
                }

                _NRLogWithArgs(v65, 0, "%s%.30s:%-4d %@ Deferring the registration of viability agent (registered=%d, enabled=%d, hasClassDAddr=%d, hasClassCAddr=%d)", "", "[NRDDeviceConductor createCmpLnkViabilityAgentIfApplicable]", 2083, v73, v67, v68, v8, v10);
              }

              goto LABEL_54;
            }

LABEL_27:
            if (((v11 >> 1) & 1 & v8 & v10) != 0)
            {
              v13 = [NRCompanionLinkViabilityAgent alloc];
              v14 = a1[12];
              v15 = a1[17];
              v16 = v14;
              v17 = sub_10007A8DC(&v13->super.isa, v16, v15);
              v18 = a1[53];
              a1[53] = v17;

              v19 = a1[53];
              if (v19)
              {
                dispatch_assert_queue_V2(*(v19 + 5));
                if ((*(v19 + 14) & 1) == 0)
                {
                  v20 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
                  v21 = *(v19 + 6);
                  *(v19 + 6) = v20;

                  v22 = *(v19 + 6);
                  if (v22)
                  {
                    if ([v22 registerNetworkAgent:v19])
                    {
                      v23 = [v19 agentUUID];
                      v24 = [NEPolicyResult netAgentUUID:v23];

                      v25 = sub_100163A30(NRDLocalDevice, *(v19 + 4));
                      v26 = sub_1001677D0(v25, @"62742");
                      v27 = [NEPolicyCondition flowRemoteAddress:v26 prefix:128];

                      v28 = sub_100167B9C(v25, @"62742");
                      v29 = [NEPolicyCondition flowRemoteAddress:v28 prefix:128];

                      v30 = [NEPolicy alloc];
                      v71 = v27;
                      v77[0] = v27;
                      v31 = +[NEPolicyCondition allInterfaces];
                      v77[1] = v31;
                      v32 = [NSArray arrayWithObjects:v77 count:2];
                      v72 = v24;
                      v33 = [v30 initWithOrder:10 result:v24 conditions:v32];

                      objc_opt_self();
                      if (qword_100229410 != -1)
                      {
                        dispatch_once(&qword_100229410, &stru_1001FCD98);
                      }

                      v34 = qword_100229408;
                      v70 = v33;
                      v35 = sub_100159E00(v34, *(v19 + 7), v33);

                      v36 = [NEPolicy alloc];
                      v76[0] = v29;
                      v37 = +[NEPolicyCondition allInterfaces];
                      v76[1] = v37;
                      v38 = [NSArray arrayWithObjects:v76 count:2];
                      v39 = [v36 initWithOrder:10 result:v72 conditions:v38];

                      objc_opt_self();
                      if (qword_100229410 != -1)
                      {
                        dispatch_once(&qword_100229410, &stru_1001FCD98);
                      }

                      v40 = qword_100229408;
                      v41 = sub_100159E00(v40, *(v19 + 7), v39);

                      if (v25)
                      {
                        v42 = v25[18];
                      }

                      else
                      {
                        v42 = 0;
                      }

                      v43 = v42;
                      v44 = [v43 usesTLS];

                      if (v44)
                      {
                        v69 = v29;
                        v45 = [NEPolicy alloc];
                        v46 = [NEPolicyCondition flowIPProtocol:17];
                        *&v74 = v46;
                        v47 = +[NEPolicyCondition isSystemProxyConnection];
                        *(&v74 + 1) = v47;
                        v48 = +[NEPolicyCondition allInterfaces];
                        v75 = v48;
                        v49 = [NSArray arrayWithObjects:&v74 count:3];
                        v50 = [v45 initWithOrder:10 result:v72 conditions:v49];

                        objc_opt_self();
                        if (qword_100229410 != -1)
                        {
                          dispatch_once(&qword_100229410, &stru_1001FCD98);
                        }

                        v51 = qword_100229408;
                        v52 = sub_100159E00(v51, *(v19 + 7), v50);

                        v29 = v69;
                      }

                      objc_opt_self();
                      v53 = v29;
                      if (qword_100229410 != -1)
                      {
                        dispatch_once(&qword_100229410, &stru_1001FCD98);
                      }

                      v54 = qword_100229408;
                      sub_10015A52C(v54);

                      *(v19 + 14) = 1;
                      v55 = *(v19 + 4);
                      v56 = *(v19 + 8);
                      v57 = v55;
                      v58 = [v19 agentUUID];
                      v59 = [v58 UUIDString];
                      sub_1000059A8(v57, 19002, v56, v59);
                    }

                    else
                    {
                      v60 = _NRCopyLogObjectForNRUUID();
                      v61 = _NRLogIsLevelEnabled();

                      if (v61)
                      {
                        v62 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs(v62, 17, "Failed to register CompanionLinkViability agent");
                      }
                    }
                  }
                }
              }

              sub_100101814(a1);
              goto LABEL_54;
            }

            goto LABEL_50;
          }
        }

        v10 = 0;
        v11 = v7[6];
        if ((v11 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_27;
      }

LABEL_7:
      sub_10007AE28(v5);
      v6 = a1[53];
      a1[53] = 0;

      goto LABEL_8;
    }

    v4 = v3[14];

    if ((v4 & 1) == 0)
    {
LABEL_6:
      v5 = a1[53];
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_54:
}

void sub_100104BB4(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    if (*(v1 + 49))
    {
      goto LABEL_17;
    }

    v207 = v2;
    if (v2)
    {
      v3 = v2[18];
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    v5 = [v4 hasPoliciesForProxyCriteria];

    if ((v5 & 1) == 0)
    {
      sub_1001070B0(v1);
      goto LABEL_16;
    }

    v6 = [*(v1 + 160) state] == 8;
    v2 = v207;
    if (!v6)
    {
      goto LABEL_17;
    }

    if (!*(v1 + 336))
    {
      v7 = @"proxyCriteria";
      v8 = [NSString alloc];
      v9 = [*(v1 + 96) UUIDString];
      v10 = [v8 initWithFormat:@"NRDDC-%@-%@", v9, @"proxyCriteria"];

      v11 = *(v1 + 336);
      *(v1 + 336) = v10;

      v2 = v207;
    }

    if (v2)
    {
      v12 = v2[18];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [v13 proxyProviderCriteria];
    v15 = [v14 hasProxyCriteriaAssigningTokens];

    v16 = *(v1 + 696);
    if (v15)
    {
      if (v16)
      {
        goto LABEL_21;
      }

      v17 = objc_alloc_init(NSMutableDictionary);
      v16 = *(v1 + 696);
    }

    else
    {
      v17 = 0;
    }

    *(v1 + 696) = v17;

LABEL_21:
    v18 = v207;
    if (v207)
    {
      v18 = v207[18];
    }

    v19 = v18;
    if ([v19 proxyCapability] == 1)
    {
      v20 = v207;
      if (v207)
      {
        v20 = v207[18];
      }

      v21 = v20;
      v22 = [v21 proxyProviderCriteria];
      v23 = [v22 forwardNonMatchingTraffic];

      v2 = v207;
      if (v23)
      {
        goto LABEL_17;
      }
    }

    else
    {

      v2 = v207;
    }

    if (v2)
    {
      v24 = v2[18];
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v26 = [v25 proxyCapability];

    v2 = v207;
    if (v26 == 2)
    {
      v206 = [*(v1 + 160) proxyAgentUUID];
      if (!v206)
      {
        v32 = sub_1000E83DC();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v2 = v207;
        if (!IsLevelEnabled)
        {
          goto LABEL_17;
        }

        v34 = sub_1000E83DC();
        _NRLogWithArgs(v34, 17, "invalid proxy agent uuid");

        goto LABEL_16;
      }

      v27 = v207;
      if (v207)
      {
        v27 = v207[18];
      }

      v28 = v27;
      v29 = [v28 hasCompanionDatapath];

      v30 = *(v1 + 160);
      if (v29)
      {
        [v30 virtualInterface];
        v31 = NEVirtualInterfaceCopyName();
      }

      else
      {
        v31 = [v30 localInterfaceName];
      }

      if (v31)
      {
        v205 = v31;
        v35 = sub_1001599CC(NRDPolicySessionManager);
        sub_10015A238(v35, *(v1 + 336));

        v211 = [NEPolicyResult netAgentUUID:v206];
        if (v207)
        {
          v36 = v207[18];
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;
        v38 = [v37 proxyProviderCriteria];
        v39 = [v38 proxyUsageRules];

        if (v207)
        {
          v40 = v207[18];
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;
        v42 = [v41 proxyProviderCriteria];
        v43 = &dispatch_group_enter_ptr;
        v233 = v1;
        if ([v42 excludeLegacyClients])
        {
        }

        else
        {
          v47 = v207;
          if (v207)
          {
            v47 = v207[18];
          }

          v48 = v47;
          v49 = [v48 proxyProviderCriteria];
          v50 = [v49 excludeNonMatchingLegacyClients];

          if (!v50)
          {
            v221 = 301;
LABEL_60:
            if (_NRIsAppleInternal())
            {
              v71 = sub_1000B7248(0, @"TetheringBundleIDs");
              objc_opt_class();
              v217 = 0;
              if (objc_opt_isKindOfClass())
              {
                v258 = 0u;
                v259 = 0u;
                v256 = 0u;
                v257 = 0u;
                v72 = v71;
                v73 = [v72 countByEnumeratingWithState:&v256 objects:v275 count:16];
                if (v73)
                {
                  v74 = v73;
                  v217 = 0;
                  v75 = *v257;
                  do
                  {
                    for (i = 0; i != v74; i = i + 1)
                    {
                      if (*v257 != v75)
                      {
                        objc_enumerationMutation(v72);
                      }

                      v77 = sub_10013A6D4(*(*(&v256 + 1) + 8 * i));
                      if (!v217)
                      {
                        v217 = objc_alloc_init(NSMutableArray);
                      }

                      if ([v77 count])
                      {
                        [v217 addObjectsFromArray:v77];
                      }
                    }

                    v74 = [v72 countByEnumeratingWithState:&v256 objects:v275 count:16];
                  }

                  while (v74);
                }

                else
                {
                  v217 = 0;
                }

                v43 = &dispatch_group_enter_ptr;
              }
            }

            else
            {
              v217 = 0;
            }

            v208 = objc_alloc_init(NSMutableSet);
            v252 = 0u;
            v253 = 0u;
            v254 = 0u;
            v255 = 0u;
            obj = v39;
            v213 = [obj countByEnumeratingWithState:&v252 objects:v274 count:16];
            if (v213)
            {
              v210 = 0;
              v223 = 0;
              v212 = *v253;
              while (1)
              {
                for (j = 0; j != v213; j = v79 + 1)
                {
                  if (*v253 != v212)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v81 = *(*(&v252 + 1) + 8 * j);
                  v82 = 0;
                  v218 = j;
                  if (_NRIsAppleInternal() && v217)
                  {
                    v82 = objc_alloc_init(NSMutableArray);
                    [v82 addObjectsFromArray:v217];
                  }

                  v83 = [v81 entitlements];
                  v84 = [v83 count];

                  v224 = v81;
                  if (v84)
                  {
                    v85 = [v81 entitlements];
                    v86 = [LSApplicationRecord enumeratorWithOptions:0];
                    v250[0] = _NSConcreteStackBlock;
                    v250[1] = 3221225472;
                    v250[2] = sub_1001071BC;
                    v250[3] = &unk_1001FB9D8;
                    v219 = v85;
                    v251 = v219;
                    [v86 setFilter:v250];
                    v227 = v86;
                    v230 = [v81 copyExcludedBundleIdentifiers];
                    v87 = [v86 nextObject];
                    if (v87)
                    {
                      v88 = v87;
                      do
                      {
                        v248 = 0u;
                        v249 = 0u;
                        v246 = 0u;
                        v247 = 0u;
                        v90 = [v88 machOUUIDs];
                        v91 = [v90 countByEnumeratingWithState:&v246 objects:v273 count:16];
                        if (v91)
                        {
                          v92 = v91;
                          v93 = *v247;
LABEL_95:
                          v94 = 0;
                          while (1)
                          {
                            if (*v247 != v93)
                            {
                              objc_enumerationMutation(v90);
                            }

                            v95 = *(*(&v246 + 1) + 8 * v94);
                            if (!v82)
                            {
                              v82 = objc_alloc_init(NSMutableArray);
                            }

                            v96 = [v88 bundleIdentifier];
                            if (v96)
                            {
                              v97 = v96;
                              v98 = [v88 bundleIdentifier];
                              v99 = [v230 containsObject:v98];

                              if (v99)
                              {
                                break;
                              }
                            }

                            [v82 addObject:v95];
                            if (v92 == ++v94)
                            {
                              v92 = [v90 countByEnumeratingWithState:&v246 objects:v273 count:16];
                              v1 = v233;
                              if (!v92)
                              {
                                goto LABEL_91;
                              }

                              goto LABEL_95;
                            }
                          }

                          v1 = v233;
                          v100 = _NRCopyLogObjectForNRUUID();
                          v101 = _NRLogIsLevelEnabled();

                          if (v101)
                          {
                            v102 = _NRCopyLogObjectForNRUUID();
                            v103 = [v88 bundleIdentifier];
                            _NRLogWithArgs(v102, 0, "%s%.30s:%-4d found exclude bundle identifier %@. Skipping rule", "", "[NRDDeviceConductor updateProxyCriteriaPoliciesIfNeeded]", 4843, v103, v205);
                          }
                        }

LABEL_91:

                        v89 = [v227 nextObject];

                        v88 = v89;
                      }

                      while (v89);
                    }

                    v104 = [v82 count];
                    if (v104)
                    {
                      v105 = v82;
                      [v208 addObjectsFromArray:v82];
                      v43 = &dispatch_group_enter_ptr;
                      v81 = v224;
                      v106 = v219;
                    }

                    else
                    {
                      v105 = v82;
                      v107 = _NRCopyLogObjectForNRUUID();
                      v108 = _NRLogIsLevelEnabled();

                      v43 = &dispatch_group_enter_ptr;
                      v81 = v224;
                      v106 = v219;
                      if (v108)
                      {
                        v109 = *(v1 + 96);
                        v110 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs(v110, 0, "%s%.30s:%-4d no app has entitlements %@. Skipping rule", "", "[NRDDeviceConductor updateProxyCriteriaPoliciesIfNeeded]", 4852, v219);
                      }
                    }

                    v210 = 1;
                    if (!v104)
                    {
                      v79 = v218;
                      v80 = v105;
                      goto LABEL_82;
                    }
                  }

                  else
                  {
                    v105 = v82;
                  }

                  v111 = objc_alloc_init(NSMutableArray);
                  v112 = [v43[327] trafficClassStart:objc_msgSend(v81 end:{"trafficClass"), objc_msgSend(v81, "trafficClass")}];
                  [v111 addObject:v112];

                  if ([v81 transportProtocol])
                  {
                    v113 = [v43[327] flowIPProtocol:{objc_msgSend(v81, "transportProtocol")}];
                    [v111 addObject:v113];
                  }

                  v114 = [v81 domain];

                  if (v114)
                  {
                    v115 = v43[327];
                    v116 = [v81 domain];
                    v117 = [v115 domain:v116];

                    [v111 addObject:v117];
                  }

                  v118 = (v221 + 3);
                  v231 = v221 + 5;
                  v220 = v221 + 7;
                  if ([v111 count])
                  {
                    v119 = [v43[327] allInterfaces];
                    [v111 addObject:v119];

                    v120 = [v224 entitlements];
                    v121 = [v120 count];

                    if (v121)
                    {
                      v122 = v118;
                    }

                    else
                    {
                      v122 = v231;
                    }

                    v123 = [NEPolicy alloc];
                    v124 = [NEPolicyResult skipWithOrder:v122];
                    v125 = [v123 initWithOrder:(v221 + 1) result:v124 conditions:v111];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v126 = qword_100229408;
                    v127 = sub_100159E00(v126, *(v1 + 336), v125);

                    v128 = [NEPolicy alloc];
                    v129 = [NEPolicyResult skipWithOrder:v220];
                    v130 = [v43[327] allInterfaces];
                    v272 = v130;
                    v131 = [NSArray arrayWithObjects:&v272 count:1];
                    v132 = [v128 initWithOrder:(v221 + 2) result:v129 conditions:v131];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v133 = qword_100229408;
                    v1 = v233;
                    v134 = sub_100159E00(v133, *(v233 + 336), v132);
                  }

                  v216 = v111;
                  v244 = 0u;
                  v245 = 0u;
                  v242 = 0u;
                  v243 = 0u;
                  v228 = v105;
                  v135 = [v228 countByEnumeratingWithState:&v242 objects:v271 count:16];
                  if (v135)
                  {
                    v136 = v135;
                    v137 = *v243;
                    do
                    {
                      for (k = 0; k != v136; k = k + 1)
                      {
                        if (*v243 != v137)
                        {
                          objc_enumerationMutation(v228);
                        }

                        v139 = [NEPolicyCondition effectiveApplication:*(*(&v242 + 1) + 8 * k)];
                        v140 = [NEPolicy alloc];
                        v141 = [NEPolicyResult skipWithOrder:v231];
                        v142 = +[NEPolicyCondition allInterfaces];
                        v270[0] = v142;
                        v270[1] = v139;
                        v143 = [NSArray arrayWithObjects:v270 count:2];
                        v144 = [v140 initWithOrder:v118 result:v141 conditions:v143];

                        objc_opt_self();
                        if (qword_100229410 != -1)
                        {
                          dispatch_once(&qword_100229410, &stru_1001FCD98);
                        }

                        v1 = v233;
                        v145 = qword_100229408;
                        v146 = sub_100159E00(v145, *(v233 + 336), v144);
                      }

                      v136 = [v228 countByEnumeratingWithState:&v242 objects:v271 count:16];
                    }

                    while (v136);
                  }

                  v147 = [NEPolicy alloc];
                  v148 = [NEPolicyResult skipWithOrder:v220];
                  v149 = +[NEPolicyCondition allInterfaces];
                  v269 = v149;
                  v150 = [NSArray arrayWithObjects:&v269 count:1];
                  v151 = [v147 initWithOrder:(v221 + 4) result:v148 conditions:v150];

                  objc_opt_self();
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v152 = qword_100229408;
                  v153 = sub_100159E00(v152, *(v1 + 336), v151);

                  v154 = [NEPolicy alloc];
                  v155 = +[NEPolicyCondition allInterfaces];
                  v268 = v155;
                  v156 = [NSArray arrayWithObjects:&v268 count:1];
                  v157 = [v154 initWithOrder:v231 result:v211 conditions:v156];

                  objc_opt_self();
                  v215 = v151;
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v158 = qword_100229408;
                  v214 = v157;
                  v159 = sub_100159E00(v158, *(v1 + 336), v157);

                  v160 = [v224 copyMatchTokens];
                  v238 = 0u;
                  v239 = 0u;
                  v240 = 0u;
                  v241 = 0u;
                  v225 = v160;
                  v161 = [v225 countByEnumeratingWithState:&v238 objects:v267 count:16];
                  if (v161)
                  {
                    v162 = v161;
                    v163 = *v239;
                    do
                    {
                      for (m = 0; m != v162; m = m + 1)
                      {
                        if (*v239 != v163)
                        {
                          objc_enumerationMutation(v225);
                        }

                        v165 = *(*(&v238 + 1) + 8 * m);
                        v166 = [*(v1 + 696) objectForKeyedSubscript:v165];
                        if (!v166)
                        {
                          v166 = sub_100107380(v1, v165);
                          v223 = 1;
                          if (!v166)
                          {
                            continue;
                          }
                        }

                        v167 = v166;
                        v266[1] = 0;
                        v266[0] = 0;
                        nw_agent_get_uuid();
                        v168 = [[NSUUID alloc] initWithUUIDBytes:v266];
                        v169 = [NEPolicyResult netAgentUUID:v168];
                        v170 = [NEPolicy alloc];
                        v171 = +[NEPolicyCondition allInterfaces];
                        v265 = v171;
                        v172 = [NSArray arrayWithObjects:&v265 count:1];
                        v173 = [v170 initWithOrder:v231 result:v169 conditions:v172];

                        objc_opt_self();
                        if (qword_100229410 != -1)
                        {
                          dispatch_once(&qword_100229410, &stru_1001FCD98);
                        }

                        v1 = v233;
                        v174 = qword_100229408;
                        v175 = sub_100159E00(v174, *(v233 + 336), v173);
                      }

                      v162 = [v225 countByEnumeratingWithState:&v238 objects:v267 count:16];
                    }

                    while (v162);
                  }

                  v176 = [NEPolicy alloc];
                  v177 = [NEPolicyResult skipWithOrder:599];
                  v43 = &dispatch_group_enter_ptr;
                  v178 = +[NEPolicyCondition allInterfaces];
                  v264 = v178;
                  v179 = [NSArray arrayWithObjects:&v264 count:1];
                  v180 = [v176 initWithOrder:(v221 + 6) result:v177 conditions:v179];

                  objc_opt_self();
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v79 = v218;
                  v80 = v228;
                  v181 = qword_100229408;
                  v182 = sub_100159E00(v181, *(v1 + 336), v180);

                  v221 += 7;
LABEL_82:
                }

                v213 = [obj countByEnumeratingWithState:&v252 objects:v274 count:16];
                if (!v213)
                {
                  goto LABEL_155;
                }
              }
            }

            v210 = 0;
            v223 = 0;
LABEL_155:

            if ([v208 count])
            {
              v183 = [NEPolicyResult skipWithOrder:591];
              v184 = [NEPolicy alloc];
              v185 = [v43[327] allInterfaces];
              v263 = v185;
              v186 = [NSArray arrayWithObjects:&v263 count:1];
              v226 = v183;
              v187 = [v184 initWithOrder:589 result:v183 conditions:v186];

              v188 = sub_1001599CC(NRDPolicySessionManager);
              v222 = v187;
              v189 = sub_100159E00(v188, *(v1 + 336), v187);

              v236 = 0u;
              v237 = 0u;
              v234 = 0u;
              v235 = 0u;
              v229 = v208;
              v190 = [v229 countByEnumeratingWithState:&v234 objects:v262 count:16];
              if (v190)
              {
                v191 = v190;
                v232 = *v235;
                do
                {
                  for (n = 0; n != v191; n = n + 1)
                  {
                    if (*v235 != v232)
                    {
                      objc_enumerationMutation(v229);
                    }

                    v193 = *(*(&v234 + 1) + 8 * n);
                    v194 = [NEPolicyRouteRule routeRuleWithAction:7 forType:0];
                    [v194 setControlUnit:0xFFFFFFFLL];
                    v195 = [NEPolicy alloc];
                    v261 = v194;
                    v196 = [NSArray arrayWithObjects:&v261 count:1];
                    v197 = [NEPolicyResult routeRules:v196];
                    v198 = +[NEPolicyCondition allInterfaces];
                    v260[0] = v198;
                    v199 = [NEPolicyCondition effectiveApplication:v193];
                    v260[1] = v199;
                    v200 = [NSArray arrayWithObjects:v260 count:2];
                    v201 = [v195 initWithOrder:590 result:v197 conditions:v200];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v202 = qword_100229408;
                    v203 = sub_100159E00(v202, *(v233 + 336), v201);
                  }

                  v191 = [v229 countByEnumeratingWithState:&v234 objects:v262 count:16];
                }

                while (v191);
              }

              v1 = v233;
            }

            v204 = sub_1001599CC(NRDPolicySessionManager);
            sub_10015A52C(v204);

            if (v210)
            {
              sub_1001075E4(v1);
            }

            else
            {
              sub_1001070B0(v1);
            }

            v2 = v207;
            if ((v223 & 1) == 0)
            {
              goto LABEL_17;
            }

            dispatch_async(*(v1 + 136), &stru_1001FB9F8);
            goto LABEL_16;
          }
        }

        v51 = +[NEPolicyCondition allInterfaces];
        v52 = +[NEPolicyCondition usesModernNetworkAPI];
        v53 = +[NEPolicyCondition allowsUnsafeSocketAccess];
        [v53 setNegative:1];
        v54 = [NEPolicyResult skipWithOrder:304];
        v55 = [NEPolicy alloc];
        v277[0] = v51;
        v277[1] = v52;
        v277[2] = v53;
        v56 = [NSArray arrayWithObjects:v277 count:3];
        v57 = [v55 initWithOrder:302 result:v54 conditions:v56];

        v58 = sub_1001599CC(NRDPolicySessionManager);
        v59 = sub_100159E00(v58, *(v1 + 336), v57);

        v60 = v207;
        if (v207)
        {
          v60 = v207[18];
        }

        v61 = v60;
        v62 = [v61 proxyProviderCriteria];
        v63 = [v62 excludeNonMatchingLegacyClients];

        if (v63)
        {
          v64 = 590;
        }

        else
        {
          v64 = 599;
        }

        v65 = [NEPolicyResult skipWithOrder:v64];
        v66 = [NEPolicy alloc];
        v276 = v51;
        v67 = [NSArray arrayWithObjects:&v276 count:1];
        v68 = [v66 initWithOrder:303 result:v65 conditions:v67];

        v69 = sub_1001599CC(NRDPolicySessionManager);
        v70 = sub_100159E00(v69, *(v233 + 336), v68);

        v1 = v233;
        v221 = 304;
        v43 = &dispatch_group_enter_ptr;
        goto LABEL_60;
      }

      v44 = sub_1000E83DC();
      v45 = _NRLogIsLevelEnabled();

      if (v45)
      {
        v46 = sub_1000E83DC();
        _NRLogWithArgs(v46, 17, "invalid interface name for %@", *(v1 + 160));
      }

LABEL_16:
      v2 = v207;
    }

LABEL_17:
  }
}

void sub_100106338(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v2 = *(a1 + 152);
    if (v2)
    {
      v3 = v2;
      v4 = [*(a1 + 152) count];

      if (v4)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v5 = [*(a1 + 152) copy];
        v6 = [v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v60;
          do
          {
            v9 = 0;
            do
            {
              if (*v60 != v8)
              {
                objc_enumerationMutation(v5);
              }

              sub_1000EAD24(a1, *(*(&v59 + 1) + 8 * v9));
              v9 = v9 + 1;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
          }

          while (v7);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v10 = *(a1 + 152);
        v11 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v56;
          do
          {
            v15 = 0;
            do
            {
              if (*v56 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v55 + 1) + 8 * v15);
              if (v16 && *(v16 + 12) == 1)
              {
                if (!v13)
                {
                  v13 = objc_alloc_init(NSMutableArray);
                }

                [v13 addObject:v16];
              }

              v15 = v15 + 1;
            }

            while (v12 != v15);
            v12 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v12);
        }

        else
        {
          v13 = 0;
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v17 = v13;
        v18 = [v17 countByEnumeratingWithState:&v51 objects:v66 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v52;
          do
          {
            v21 = 0;
            do
            {
              if (*v52 != v20)
              {
                objc_enumerationMutation(v17);
              }

              sub_1000ECEAC(a1, *(*(&v51 + 1) + 8 * v21));
              v21 = v21 + 1;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v51 objects:v66 count:16];
          }

          while (v19);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v22 = *(a1 + 152);
        v23 = [v22 countByEnumeratingWithState:&v47 objects:v65 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v48;
          do
          {
            v26 = 0;
            do
            {
              if (*v48 != v25)
              {
                objc_enumerationMutation(v22);
              }

              sub_1000EAD24(a1, *(*(&v47 + 1) + 8 * v26));
              v26 = v26 + 1;
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v47 objects:v65 count:16];
          }

          while (v24);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v27 = *(a1 + 152);
        v28 = [v27 countByEnumeratingWithState:&v43 objects:v64 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = 0;
          v31 = *v44;
          do
          {
            v32 = 0;
            do
            {
              if (*v44 != v31)
              {
                objc_enumerationMutation(v27);
              }

              v33 = *(*(&v43 + 1) + 8 * v32);
              if (v33 && *(v33 + 12) == 1)
              {
                if (!v30)
                {
                  v30 = objc_alloc_init(NSMutableArray);
                }

                [v30 addObject:v33];
              }

              v32 = v32 + 1;
            }

            while (v29 != v32);
            v29 = [v27 countByEnumeratingWithState:&v43 objects:v64 count:16];
          }

          while (v29);
        }

        else
        {
          v30 = 0;
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v34 = v30;
        v35 = [v34 countByEnumeratingWithState:&v39 objects:v63 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v40;
          do
          {
            v38 = 0;
            do
            {
              if (*v40 != v37)
              {
                objc_enumerationMutation(v34);
              }

              sub_1000ECEAC(a1, *(*(&v39 + 1) + 8 * v38));
              v38 = v38 + 1;
            }

            while (v36 != v38);
            v36 = [v34 countByEnumeratingWithState:&v39 objects:v63 count:16];
          }

          while (v36);
        }
      }
    }
  }
}

void sub_1001067E0(uint64_t a1)
{
  if (a1)
  {
    v55 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    if ((*(a1 + 49) & 1) == 0)
    {
      v2 = v55;
      if (v55)
      {
        v2 = *(v55 + 144);
      }

      v3 = v2;
      v4 = [v3 allowsApplicationServiceConnections];

      if (!v4)
      {
        goto LABEL_22;
      }
    }

    if (*(a1 + 656))
    {
      goto LABEL_22;
    }

    if (v55)
    {
      v5 = *(v55 + 48);
      if ((v5 & 0x20) != 0)
      {
        LOBYTE(v7) = 1;
        if ((v5 & 0x1000) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v6 = (v5 & 0x10) != 0 || *(v55 + 16) > 0x12u;
        v7 = (v5 >> 14) & 1 | v6;
        if ((v5 & 0x1000) == 0)
        {
          goto LABEL_19;
        }
      }

      if ((((*(v55 + 48) & 0x2000) != 0) & v7) != 0)
      {
        if (*(v55 + 16) > 0x15u)
        {
          v13 = *(v55 + 40);

          if (v13)
          {
            v14 = [NRApplicationServiceClient alloc];
            v15 = a1;
            v16 = *(a1 + 136);
            v17 = v15[12];
            v18 = v16;
            v19 = sub_10011E9B8(&v14->super.isa, v15, v18, v17);
            v20 = v15[82];
            v15[82] = v19;

            v54 = v15;
            v21 = v15[82];
            if (v21 && (v21[9] & 1) == 0)
            {
              if ((v21[8] & 1) == 0)
              {
                v21[8] = 1;
                objc_opt_self();
                if (qword_1002291A0 != -1)
                {
                  dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                }

                v29 = qword_100229198;
                v30 = v21;
                if (v29)
                {
                  dispatch_assert_queue_V2(*(v29 + 16));
                  [*(v29 + 56) addObject:v30];
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v53 = v29;
                  v31 = *(v29 + 40);
                  v32 = [v31 countByEnumeratingWithState:&v68 objects:location count:16];
                  if (v32)
                  {
                    v33 = *v69;
                    do
                    {
                      for (i = 0; i != v32; i = i + 1)
                      {
                        if (*v69 != v33)
                        {
                          objc_enumerationMutation(v31);
                        }

                        v35 = *(*(&v68 + 1) + 8 * i);
                        v36 = v30[9];
                        block[0] = _NSConcreteStackBlock;
                        block[1] = 3221225472;
                        block[2] = sub_10011E67C;
                        block[3] = &unk_1001FD060;
                        v66 = v30;
                        v67 = v35;
                        dispatch_async(v36, block);
                      }

                      v32 = [v31 countByEnumeratingWithState:&v68 objects:location count:16];
                    }

                    while (v32);
                  }

                  v64 = 0u;
                  v62 = 0u;
                  v63 = 0u;
                  v61 = 0u;
                  v37 = *(v53 + 48);
                  v38 = [v37 countByEnumeratingWithState:&v61 objects:v72 count:16];
                  if (v38)
                  {
                    v39 = *v62;
                    do
                    {
                      for (j = 0; j != v38; j = j + 1)
                      {
                        if (*v62 != v39)
                        {
                          objc_enumerationMutation(v37);
                        }

                        v41 = *(*(&v61 + 1) + 8 * j);
                        v42 = v30[9];
                        v58[0] = _NSConcreteStackBlock;
                        v58[1] = 3221225472;
                        v58[2] = sub_10011E688;
                        v58[3] = &unk_1001FD060;
                        v59 = v30;
                        v60 = v41;
                        dispatch_async(v42, v58);
                      }

                      v38 = [v37 countByEnumeratingWithState:&v61 objects:v72 count:16];
                    }

                    while (v38);
                  }
                }

                v43 = _NRCopyLogObjectForNRUUID();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v45 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v45, 1, "%s%.30s:%-4d %@ start", "", "[NRApplicationServiceClient start]", 1375, v30);
                }
              }

              v46 = objc_alloc_init(NSMutableDictionary);
              objc_storeStrong((v54 + 672), v46);

              v47 = objc_alloc_init(NSMutableDictionary);
              objc_storeStrong((v54 + 680), v47);

              v48 = objc_alloc_init(NSMutableDictionary);
              objc_storeStrong((v54 + 688), v48);

              v49 = _NRCopyLogObjectForNRUUID();
              v50 = _NRLogIsLevelEnabled();

              if (v50)
              {
                v51 = *(v54 + 96);
                v52 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v52, 0, "%s%.30s:%-4d registered application service client %@", "", "[NRDDeviceConductor registerASClientIfNeeded]", 9588, *(v54 + 656));
              }

              sub_1000FB114(v54, 0);
            }

            else
            {
              v22 = _NRCopyLogObjectForNRUUID();
              v23 = _NRLogIsLevelEnabled();

              if (v23)
              {
                v24 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v24, 17, "failed to start AS client");
              }

              objc_storeStrong(v15 + 82, 0);
            }
          }

          else
          {
            v25 = _NRCopyLogObjectForNRUUID();
            v26 = _NRLogIsLevelEnabled();

            if (v26)
            {
              v27 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v27, 2, "%s%.30s:%-4d waiting on peer IDS device ID to complete ASClient registration", "", "[NRDDeviceConductor registerASClientIfNeeded]", 9559);
            }

            objc_initWeak(location, a1);
            v28 = *(a1 + 96);
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_100106F40;
            v56[3] = &unk_1001FBC20;
            objc_copyWeak(&v57, location);
            sub_100170E74(NRDLocalDevice, v28, v56);

            objc_destroyWeak(&v57);
            objc_destroyWeak(location);
          }

          goto LABEL_22;
        }

        v8 = _NRCopyLogObjectForNRUUID();
        v9 = _NRLogIsLevelEnabled();

        if (v9)
        {
          v10 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v10, 2, "%s%.30s:%-4d ignoring ASClient registration for unsupported peer");
LABEL_21:

          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

LABEL_19:
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 2, "%s%.30s:%-4d ignoring ASClient registration as peer not paired");
      goto LABEL_21;
    }

LABEL_22:
  }
}

void sub_100106F1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 248));
  _Unwind_Resume(a1);
}

void sub_100106F40(uint64_t a1, void *a2)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 14) == 1)
  {
    v5 = WeakRetained[12];
    v6 = v16 ? v16[3] : 0;
    v7 = v6;
    v8 = [v5 isEqual:v7];

    if (v8)
    {
      if (v16)
      {
        v9 = v16[5];
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = _NRCopyLogObjectForNRUUID();
      if (v10)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v13 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v13, 0, "%s%.30s:%-4d received peer IDS device ID. Registering ASClient", "", "[NRDDeviceConductor registerASClientIfNeeded]_block_invoke", 9571);
        }

        sub_1001067E0(v4);
      }

      else
      {
        v14 = _NRLogIsLevelEnabled();

        if (v14)
        {
          v15 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v15, 17, "no IDS device ID");
        }
      }
    }
  }
}

void sub_1001070B0(uint64_t a1)
{
  if (*(a1 + 50) == 1)
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 removeObserver:a1 name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v6 removeObserver:a1 name:@"com.apple.LaunchServices.applicationStateChanged" object:0];
    [v6 removeObserver:a1 name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    *(a1 + 50) = 0;
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d stopped monitoring LS events", "", "[NRDDeviceConductor stopMonitoringLSAppEvents]", 4645);
    }
  }
}

uint64_t sub_1001071BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      v10 = [v3 entitlements];
      v11 = [v10 objectForKey:v9 ofClass:objc_opt_class()];

      if (!v11)
      {
        break;
      }

      v12 = [*(a1 + 32) objectForKeyedSubscript:v9];
      if (([v11 isEqual:v12] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v11 containsObject:v12] & 1) == 0)
        {

          v11 = 0;
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v11 = 1;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

id sub_100107380(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 696))
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = *(a1 + 696);
    *(a1 + 696) = v4;
  }

  v6 = nw_agent_create();
  v7 = dispatch_data_create([v3 bytes], objc_msgSend(v3, "length"), *(a1 + 136), 0);
  nw_agent_change_state();
  objc_initWeak(&location, a1);
  objc_initWeak(&from, v6);
  v11[1] = _NSConcreteStackBlock;
  v11[2] = 3221225472;
  v11[3] = sub_10010777C;
  v11[4] = &unk_1001FBA20;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  v8 = v7;
  v12 = v8;
  nw_agent_set_token_low_water_mark();
  objc_copyWeak(v11, &location);
  nw_agent_set_error_handler();
  sub_100107924(v6, v8);
  v9 = *(a1 + 696);
  [v9 setObject:v6 forKeyedSubscript:{v3, _NSConcreteStackBlock, 3221225472, sub_100107860, &unk_1001FBA48}];

  objc_destroyWeak(v11);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

void sub_1001075A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1001075E4(uint64_t a1)
{
  if ((*(a1 + 50) & 1) == 0)
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 addObserver:a1 selector:"processAppStateChanged:" name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v6 addObserver:a1 selector:"processAppStateChanged:" name:@"com.apple.LaunchServices.applicationStateChanged" object:0];
    [v6 addObserver:a1 selector:"processAppStateChanged:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    *(a1 + 50) = 1;
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d started monitoring for LS events", "", "[NRDDeviceConductor startMonitoringLSAppEvents]", 4669);
    }
  }
}

void sub_100107704(id a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v1 = qword_1002290B8;
  sub_1000B98D8(v1);
}

void sub_10010777C(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained && WeakRetained[14] == 1)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained(a1 + 6);
    if (v3)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v6, 1, "%s%.30s:%-4d tokens needed", "", "[NRDDeviceConductor createTokenAgentForToken:]_block_invoke", 5048);
      }

      sub_100107924(v3, a1[4]);
    }

    WeakRetained = v7;
  }
}

void sub_100107860(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a3)
    {
      if (WeakRetained[14])
      {
        v8 = WeakRetained;
        v5 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        WeakRetained = v8;
        if (IsLevelEnabled)
        {
          v7 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v7, 16, "%s%.30s:%-4d token agent received error %d", "", "[NRDDeviceConductor createTokenAgentForToken:]_block_invoke_2", 5057, a3);

          WeakRetained = v8;
        }
      }
    }
  }
}

void sub_100107924(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
  nw_agent_add_token();
}

void sub_100107A24(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    [v3 UTF8String];
    v4 = nw_interface_create_with_name();
    if (!*(a1 + 768))
    {
      v5 = *(a1 + 136);
      v6 = nw_agent_create();
      v7 = *(a1 + 768);
      *(a1 + 768) = v6;

      nw_agent_change_state();
    }

    nw_agent_add_to_interface();
    goto LABEL_5;
  }

  v8 = sub_1000E83DC();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = sub_1000E83DC();
    _NRLogWithArgs(v4, 17, "%s called with null intfName", "[NRDDeviceConductor addCompanionScopingAgentToInterface:]");
LABEL_5:
  }
}

void sub_100107B28(void **a1, void *a2)
{
  v3 = a2;
  if (([v3 hasCompanionDatapath] & 1) == 0)
  {
    v304 = objc_alloc_init(NSMutableArray);
    v4 = sub_100163A30(NRDLocalDevice, a1[12]);
    v5 = [v3 localInterfaceName];
    v302 = v3;
    v303 = a1;
    v293 = v4;
    if (v5)
    {
      v6 = v5;
      v7 = [v3 proxyAgentUUID];
      if (!v7)
      {
LABEL_8:

        goto LABEL_9;
      }

      v8 = v7;
      if (v4)
      {
        v9 = *(v4 + 144);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      if ([v10 hasPoliciesForProxyCriteria])
      {

        goto LABEL_8;
      }

      v105 = sub_100169428(v4);

      if ((v105 & 1) == 0)
      {
        v106 = +[NEPolicyCondition allInterfaces];
        v332 = v106;
        v17 = [NSArray arrayWithObjects:&v332 count:1];

        v107 = [v3 localInterfaceName];
        v108 = [NEPolicyRouteRule routeRuleWithAction:5 forInterfaceName:v107];

        v109 = [v3 proxyAgentUUID];
        [v108 setNetworkAgentUUID:v109];

        obj = v108;
        v331 = v108;
        v110 = [NSArray arrayWithObjects:&v331 count:1];
        v111 = [NEPolicyResult routeRules:v110];

        v287 = v111;
        v112 = [[NEPolicy alloc] initWithOrder:10 result:v111 conditions:v17];
        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v113 = qword_100229408;
        v114 = sub_100159E00(v113, a1[38], v112);

        if (![v114 unsignedIntegerValue])
        {
          v258 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v260 = v303[12];
            v261 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v261, 16, "%s%.30s:%-4d %@ failed to add generalPolicy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3843, v302, v112, v303[38]);
          }

          v262 = _NRCopyLogObjectForNRUUID();
          v263 = _NRLogIsLevelEnabled();

          if (v263)
          {
            v264 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v264, 17, "Failed to add generalPolicy");
          }

          v3 = v302;
          [v302 cancelWithReason:{@"Failed to add generalPolicy %@ to session %@", v112, v303[38]}];

          goto LABEL_196;
        }

        [v304 addObject:v114];

        v286 = [NEPolicy alloc];
        v115 = [v302 proxyAgentUUID];
        v116 = [NEPolicyResult netAgentUUID:v115];
        v117 = [v302 localInterfaceName];
        v118 = [NEPolicyCondition scopedInterface:v117];
        v330 = v118;
        v119 = [NSArray arrayWithObjects:&v330 count:1];
        v120 = [v286 initWithOrder:10 result:v116 conditions:v119];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v121 = obj;
        a1 = v303;
        v122 = qword_100229408;
        v123 = v120;
        v124 = sub_100159E00(v122, v303[38], v120);

        v125 = [v124 unsignedIntegerValue];
        if (v125)
        {
          [v304 addObject:v124];
          v3 = v302;
        }

        else
        {
          v265 = _NRCopyLogObjectForNRUUID();
          v266 = _NRLogIsLevelEnabled();

          if (v266)
          {
            v267 = v303[12];
            v268 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v268, 16, "%s%.30s:%-4d %@ failed to add generalPolicy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3848, v302, v120, v303[38]);
          }

          v269 = _NRCopyLogObjectForNRUUID();
          v270 = _NRLogIsLevelEnabled();

          if (v270)
          {
            v271 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v271, 17, "Failed to add generalPolicy");
          }

          v3 = v302;
          a1 = v303;
          v123 = v120;
          [v302 cancelWithReason:{@"Failed to add generalPolicy %@ to session %@", v120, v303[38]}];
          v121 = obj;
        }

        if (!v125)
        {
          goto LABEL_143;
        }
      }
    }

LABEL_9:
    if (v4)
    {
      v11 = *(v4 + 144);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [v12 hasPoliciesForProxyCriteria];

    if (v13)
    {
      goto LABEL_143;
    }

    v14 = sub_10010A0D8(a1, v3);
    v15 = sub_100169428(v4);
    if (!v4 || !v15 || (*(v4 + 48) & 4) == 0 || ([v3 proxyAgentUUID], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
LABEL_23:
      v35 = [v3 proxyAgentUUID];

      if (v35)
      {
        v36 = [v3 localInterfaceName];
        v17 = [NEPolicyRouteRule routeRuleWithAction:6 forInterfaceName:v36];

        v37 = [v3 proxyAgentUUID];
        [v17 setNetworkAgentUUID:v37];

        v38 = [NEPolicy alloc];
        v327 = v17;
        v39 = [NSArray arrayWithObjects:&v327 count:1];
        v40 = [NEPolicyResult routeRules:v39];
        v41 = +[NEPolicyCondition allInterfaces];
        v326[0] = v41;
        objc_opt_self();
        v42 = [NEPolicyCondition clientFlags:0x80000000];
        v326[1] = v42;
        v43 = [NSArray arrayWithObjects:v326 count:2];
        obja = [v38 initWithOrder:(v14 + 1) result:v40 conditions:v43];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v44 = qword_100229408;
        v45 = sub_100159E00(v44, v303[38], obja);

        v3 = v302;
        v4 = v293;
        if (![v45 unsignedIntegerValue])
        {
          v216 = _NRCopyLogObjectForNRUUID();
          v217 = _NRLogIsLevelEnabled();

          if (v217)
          {
            v218 = v303[12];
            v219 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v219, 16, "%s%.30s:%-4d %@ failed to add policy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3904, v302, obja, v303[38]);
          }

          v220 = _NRCopyLogObjectForNRUUID();
          v221 = _NRLogIsLevelEnabled();

          if (v221)
          {
            v222 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v222, 17, "Failed to add policy");
          }

          v54 = obja;
          [v302 cancelWithReason:{@"Failed to add policy %@ to session %@", obja, v303[38]}];

          v4 = v293;
          goto LABEL_141;
        }

        [v304 addObject:v45];
      }

      v46 = [NEPolicy alloc];
      v47 = +[NEPolicyResult drop];
      v48 = +[NEPolicyCondition allInterfaces];
      v325[0] = v48;
      objc_opt_self();
      v49 = [NEPolicyCondition clientFlags:0x80000000];
      v325[1] = v49;
      objc_opt_self();
      v50 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
      v325[2] = v50;
      v51 = [NSArray arrayWithObjects:v325 count:3];
      v17 = [v46 initWithOrder:(v14 + 1) result:v47 conditions:v51];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v52 = v303;
      v53 = qword_100229408;
      v54 = sub_100159E00(v53, v303[38], v17);

      if ([v54 unsignedIntegerValue])
      {
        [v304 addObject:v54];

        v55 = [v3 migrationInfoAgent];

        if (!v55)
        {
          v56 = [v3 localInterfaceName];
          v57 = [v3 remoteOuterEndpoint];
          v58 = sub_10010DC08(v303, v56, v57);
          [v3 setMigrationInfoAgent:v58];
        }

        if (v4)
        {
          v59 = *(v4 + 144);
        }

        else
        {
          v59 = 0;
        }

        v60 = v59;
        if (([v60 allowsDirectToCloud] & 1) == 0)
        {

          goto LABEL_57;
        }

        v61 = [v3 proxyAgentUUID];

        if (!v61)
        {
          goto LABEL_57;
        }

        v62 = [NEPolicy alloc];
        v63 = [NEPolicyResult skipWithOrder:(v14 + 4)];
        v64 = +[NEPolicyCondition allInterfaces];
        v324[0] = v64;
        objc_opt_self();
        v65 = [NEPolicyCondition clientFlags:536879104];
        v324[1] = v65;
        v66 = [NSArray arrayWithObjects:v324 count:2];
        v17 = [v62 initWithOrder:(v14 + 2) result:v63 conditions:v66];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v67 = qword_100229408;
        v54 = sub_100159E00(v67, v303[38], v17);

        if ([v54 unsignedIntegerValue])
        {
          [v304 addObject:v54];

          v54 = objc_alloc_init(NSMutableArray);
          v68 = [NEPolicyRouteRule routeRuleWithAction:6 forType:0];
          v69 = [v3 proxyAgentUUID];
          [v68 setNetworkAgentUUID:v69];

          v288 = v68;
          [v54 addObject:v68];
          v70 = [v3 companionProxyAgent];
          if (v70)
          {
            v71 = v70[15];

            if (v71 != 1)
            {
LABEL_44:
              obje = [NEPolicy alloc];
              v75 = [NEPolicyResult routeRules:v54];
              v76 = +[NEPolicyCondition allInterfaces];
              v323[0] = v76;
              objc_opt_self();
              v77 = [NEPolicyCondition clientFlags:0x20000000];
              v323[1] = v77;
              v78 = [NSArray arrayWithObjects:v323 count:2];
              objb = [obje initWithOrder:(v14 + 3) result:v75 conditions:v78];

              objc_opt_self();
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v79 = qword_100229408;
              v80 = sub_100159E00(v79, v303[38], objb);

              if (![v80 unsignedIntegerValue])
              {
                v244 = _NRCopyLogObjectForNRUUID();
                v245 = _NRLogIsLevelEnabled();

                if (v245)
                {
                  v246 = v303[12];
                  v247 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v247, 16, "%s%.30s:%-4d %@ failed to add policy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3947, v302, objb, v303[38]);
                }

                v248 = _NRCopyLogObjectForNRUUID();
                v249 = _NRLogIsLevelEnabled();

                if (v249)
                {
                  v250 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v250, 17, "Failed to add policy");
                }

                v3 = v302;
                [v302 cancelWithReason:{@"Failed to add policy %@ to session %@", objb, v303[38]}];

                v17 = objb;
                v4 = v293;
                goto LABEL_141;
              }

              [v304 addObject:v80];

              v81 = objc_alloc_init(NSMutableArray);
              v82 = [NEPolicyRouteRule routeRuleWithAction:5 forNetworkAgent:v303[95]];
              v83 = [v3 proxyAgentUUID];
              [v82 setNetworkAgentUUID:v83];

              v281 = v82;
              [v81 addObject:v82];
              v84 = [v3 companionProxyAgent];
              if (!v84 || (v85 = v84[15], v84, (v85 & 1) == 0))
              {
                v86 = [v3 proxyAgentUUID];
                v87 = [NEPolicyRouteRule routeRuleWithAction:5 forNetworkAgent:v86];

                v88 = [v3 companionProxyAgent];
                v89 = [v88 agentUUID];
                [v87 setNetworkAgentUUID:v89];
              }

              v90 = [NEPolicy alloc];
              v284 = v81;
              v91 = [NEPolicyResult routeRules:v81];
              v92 = +[NEPolicyCondition allInterfaces];
              v322 = v92;
              v93 = [NSArray arrayWithObjects:&v322 count:1];
              v94 = [v90 initWithOrder:(v14 + 5) result:v91 conditions:v93];

              objc_opt_self();
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v4 = v293;
              v52 = v303;
              v95 = qword_100229408;
              v96 = sub_100159E00(v95, v303[38], v94);

              v97 = [v96 unsignedIntegerValue];
              if (v97)
              {
                [v304 addObject:v96];
              }

              else
              {
                v251 = _NRCopyLogObjectForNRUUID();
                v252 = _NRLogIsLevelEnabled();

                if (v252)
                {
                  v253 = v303[12];
                  v254 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v254, 16, "%s%.30s:%-4d %@ failed to add policy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3963, v302, v94, v303[38]);
                }

                v255 = _NRCopyLogObjectForNRUUID();
                v256 = _NRLogIsLevelEnabled();

                if (v256)
                {
                  v257 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v257, 17, "Failed to add policy");
                }

                v3 = v302;
                v52 = v303;
                [v302 cancelWithReason:{@"Failed to add policy %@ to session %@", v94, v303[38]}];
                v4 = v293;
              }

              if (!v97)
              {
                goto LABEL_143;
              }

LABEL_57:
              v98 = [v3 proxyAgentUUID];

              if (v98)
              {
                if (*(v52 + 47) == 1)
                {
                  objf = +[NEPolicyCondition allInterfaces];
                  v335[0] = objf;
                  objc_opt_self();
                  v289 = [NEPolicyCondition clientFlags:0x10000000];
                  v335[1] = v289;
                  v285 = [NSArray arrayWithObjects:v335 count:2];
                  v336 = v285;
                  v282 = +[NEPolicyCondition allInterfaces];
                  v334[0] = v282;
                  objc_opt_self();
                  v99 = [NEPolicyCondition clientFlags:536879104];
                  v334[1] = v99;
                  v100 = [NSArray arrayWithObjects:v334 count:2];
                  v337 = v100;
                  v101 = +[NEPolicyCondition allInterfaces];
                  v333[0] = v101;
                  objc_opt_self();
                  v102 = [NEPolicyCondition clientFlags:0x40000000];
                  v333[1] = v102;
                  v103 = [NSArray arrayWithObjects:v333 count:2];
                  v338 = v103;
                  v104 = [NSArray arrayWithObjects:&v336 count:3];
                }

                else
                {
                  v104 = 0;
                }

                v313 = 0u;
                v314 = 0u;
                v315 = 0u;
                v316 = 0u;
                v17 = v104;
                v126 = [v17 countByEnumeratingWithState:&v313 objects:v321 count:16];
                if (v126)
                {
                  v127 = v126;
                  v128 = *v314;
LABEL_74:
                  v129 = 0;
                  while (1)
                  {
                    if (*v314 != v128)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v130 = *(*(&v313 + 1) + 8 * v129);
                    v131 = [NEPolicy alloc];
                    v132 = [v302 proxyAgentUUID];
                    v133 = [NEPolicyResult netAgentUUID:v132];
                    v134 = [v131 initWithOrder:(v14 + 4) result:v133 conditions:v130];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v135 = qword_100229408;
                    v136 = sub_100159E00(v135, v303[38], v134);

                    if (![v136 unsignedIntegerValue])
                    {
                      break;
                    }

                    [v304 addObject:v136];

                    if (v127 == ++v129)
                    {
                      v127 = [v17 countByEnumeratingWithState:&v313 objects:v321 count:16];
                      if (!v127)
                      {
                        goto LABEL_82;
                      }

                      goto LABEL_74;
                    }
                  }

                  v187 = _NRCopyLogObjectForNRUUID();
                  v188 = _NRLogIsLevelEnabled();

                  v3 = v302;
                  if (v188)
                  {
                    v189 = v303[12];
                    v190 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v190, 16, "%s%.30s:%-4d %@ failed to add policy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3973, v302, v134, v303[38]);
                  }

                  v191 = _NRCopyLogObjectForNRUUID();
                  v192 = _NRLogIsLevelEnabled();

                  v4 = v293;
                  if (v192)
                  {
                    v193 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v193, 17, "Failed to add policy");
                  }

                  [v302 cancelWithReason:{@"Failed to add policy %@ to session %@", v134, v303[38]}];

                  goto LABEL_135;
                }

LABEL_82:

                v137 = [NEPolicy alloc];
                v3 = v302;
                objg = [v302 proxyAgentUUID];
                v138 = [NEPolicyResult removeNetworkAgentUUID:objg];
                v139 = +[NEPolicyCondition allInterfaces];
                v320[0] = v139;
                objc_opt_self();
                v140 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
                v320[1] = v140;
                v141 = [NSArray arrayWithObjects:v320 count:2];
                v54 = [v137 initWithOrder:10 result:v138 conditions:v141];

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v142 = qword_100229408;
                objc = v54;
                v143 = sub_100159E00(v142, v303[38], v54);

                if (![v143 unsignedIntegerValue])
                {
                  v223 = _NRCopyLogObjectForNRUUID();
                  v224 = _NRLogIsLevelEnabled();

                  if (v224)
                  {
                    v225 = v303[12];
                    v226 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v226, 16, "%s%.30s:%-4d %@ failed to add removeProxyPolicyForResolver %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3980, v302, v54, v303[38]);
                  }

                  v227 = _NRCopyLogObjectForNRUUID();
                  v228 = _NRLogIsLevelEnabled();

                  if (v228)
                  {
                    v229 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v229, 17, "Failed to add removeProxyPolicyForResolver");
                  }

                  v3 = v302;
                  [v302 cancelWithReason:{@"Failed to add removeProxyPolicyForResolver %@ to session %@", v54, v303[38]}];

                  v4 = v293;
                  goto LABEL_141;
                }

                [v304 addObject:v143];

                v290 = [NEPolicy alloc];
                v144 = [v302 proxyAgentUUID];
                v145 = [NEPolicyResult removeNetworkAgentUUID:v144];
                v146 = +[NEPolicyCondition allInterfaces];
                v319[0] = v146;
                objc_opt_self();
                v147 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
                v319[1] = v147;
                v148 = [NSArray arrayWithObjects:v319 count:2];
                v291 = [v290 initWithOrder:10 result:v145 conditions:v148];

                objc_opt_self();
                v4 = v293;
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v52 = v303;
                v149 = qword_100229408;
                v150 = sub_100159E00(v149, v303[38], v291);

                v151 = [v150 unsignedIntegerValue];
                v152 = objc;
                if (v151)
                {
                  [v304 addObject:v150];
                }

                else
                {
                  v230 = _NRCopyLogObjectForNRUUID();
                  v231 = _NRLogIsLevelEnabled();

                  if (v231)
                  {
                    v232 = v303[12];
                    v233 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v233, 16, "%s%.30s:%-4d %@ failed to add removeProxyPolicyForListener %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3986, v302, v291, v303[38]);
                  }

                  v234 = _NRCopyLogObjectForNRUUID();
                  v235 = _NRLogIsLevelEnabled();

                  if (v235)
                  {
                    v236 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v236, 17, "Failed to add removeProxyPolicyForListener");
                  }

                  v3 = v302;
                  [v302 cancelWithReason:{@"Failed to add removeProxyPolicyForListener %@ to session %@", v291, v303[38]}];
                  v4 = v293;
                  v52 = v303;
                  v152 = objc;
                }

                if (!v151)
                {
                  goto LABEL_143;
                }
              }

              v153 = [v3 proxyAgentUUID];

              v154 = [v3 migrationInfoAgent];

              if (v154)
              {
                v292 = v153;
                v309 = 0u;
                v310 = 0u;
                v311 = 0u;
                v312 = 0u;
                objd = sub_10010DCE4(v52, v153 != 0, 0);
                v155 = [objd countByEnumeratingWithState:&v309 objects:v318 count:16];
                if (v155)
                {
                  v156 = v155;
                  v157 = *v310;
LABEL_94:
                  v158 = 0;
                  while (1)
                  {
                    if (*v310 != v157)
                    {
                      objc_enumerationMutation(objd);
                    }

                    v159 = *(*(&v309 + 1) + 8 * v158);
                    v336 = 0;
                    v337 = 0;
                    v160 = [v302 migrationInfoAgent];
                    nw_agent_get_uuid();

                    v161 = [[NSUUID alloc] initWithUUIDBytes:&v336];
                    v162 = [NEPolicy alloc];
                    v163 = [NEPolicyResult netAgentUUID:v161];
                    v164 = [v162 initWithOrder:(v14 + 6) result:v163 conditions:v159];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v165 = qword_100229408;
                    v166 = sub_100159E00(v165, v303[38], v164);

                    if (![v166 unsignedIntegerValue])
                    {
                      break;
                    }

                    [v304 addObject:v166];

                    if (v156 == ++v158)
                    {
                      v156 = [objd countByEnumeratingWithState:&v309 objects:v318 count:16];
                      if (!v156)
                      {
                        goto LABEL_102;
                      }

                      goto LABEL_94;
                    }
                  }

                  v201 = _NRCopyLogObjectForNRUUID();
                  v202 = _NRLogIsLevelEnabled();

                  v3 = v302;
                  if (v202)
                  {
                    v203 = v303[12];
                    v204 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v204, 16, "%s%.30s:%-4d %@ failed to add policy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 4001, v302, v164, v303[38]);
                  }

                  v205 = _NRCopyLogObjectForNRUUID();
                  v206 = _NRLogIsLevelEnabled();

                  v4 = v293;
                  v54 = objd;
                  if (v206)
                  {
                    v207 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v207, 17, "Failed to add policy");
                  }

                  [v302 cancelWithReason:{@"Failed to add policy %@ to session %@", v164, v303[38]}];

                  v17 = objd;
                  goto LABEL_141;
                }

LABEL_102:

                v3 = v302;
                v52 = v303;
                v153 = v292;
              }

              v167 = [v3 virtualInterface];
              v168 = v153 != 0;
              if (v167)
              {
                v169 = sub_10010DFA8(v52, v168, 0);
              }

              else
              {
                v169 = sub_10010DCE4(v52, v168, 0);
              }

              v307 = 0u;
              v308 = 0u;
              v305 = 0u;
              v306 = 0u;
              v17 = v169;
              v170 = [v17 countByEnumeratingWithState:&v305 objects:v317 count:16];
              if (!v170)
              {
LABEL_117:

                if ([v304 count])
                {
                  objc_opt_self();
                  v3 = v302;
                  v4 = v293;
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v180 = qword_100229408;
                  sub_10015A52C(v180);

                  v54 = [v302 policyIDs];
                  v181 = [[NSMutableArray alloc] initWithArray:v54];
                  [v181 addObjectsFromArray:v304];
                  [v302 setPolicyIDs:v181];
                  v182 = _NRCopyLogObjectForNRUUID();
                  v183 = _NRLogIsLevelEnabled();

                  if (v183)
                  {
                    v184 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v184, 0, "%s%.30s:%-4d Successfully set policies for TLS link: %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 4032, v302);
                  }
                }

                else
                {
                  v185 = _NRCopyLogObjectForNRUUID();
                  v186 = _NRLogIsLevelEnabled();

                  v3 = v302;
                  v4 = v293;
                  if (!v186)
                  {
LABEL_142:

LABEL_143:
                    goto LABEL_144;
                  }

                  v54 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v54, 0, "%s%.30s:%-4d No new policies added for link: %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 4034, v302);
                }

LABEL_141:

                goto LABEL_142;
              }

              v171 = v170;
              v172 = *v306;
LABEL_109:
              v173 = 0;
              while (1)
              {
                if (*v306 != v172)
                {
                  objc_enumerationMutation(v17);
                }

                v174 = *(*(&v305 + 1) + 8 * v173);
                v175 = [NEPolicy alloc];
                v176 = [v302 localInterfaceName];
                v177 = [NEPolicyResult scopeSocketToInterfaceName:v176];
                v134 = [v175 initWithOrder:(v14 + 7) result:v177 conditions:v174];

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v178 = qword_100229408;
                v179 = sub_100159E00(v178, v303[38], v134);

                if (![v179 unsignedIntegerValue])
                {
                  break;
                }

                [v304 addObject:v179];

                if (v171 == ++v173)
                {
                  v171 = [v17 countByEnumeratingWithState:&v305 objects:v317 count:16];
                  if (!v171)
                  {
                    goto LABEL_117;
                  }

                  goto LABEL_109;
                }
              }

              v194 = _NRCopyLogObjectForNRUUID();
              v195 = _NRLogIsLevelEnabled();

              v3 = v302;
              if (v195)
              {
                v196 = v303[12];
                v197 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v197, 16, "%s%.30s:%-4d %@ failed to add policy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 4022, v302, v134, v303[38]);
              }

              v198 = _NRCopyLogObjectForNRUUID();
              v199 = _NRLogIsLevelEnabled();

              v4 = v293;
              if (v199)
              {
                v200 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v200, 17, "Failed to add policy");
              }

              [v302 cancelWithReason:{@"Failed to add policy %@ to session %@", v134, v303[38]}];

LABEL_135:
              v54 = v17;
              goto LABEL_141;
            }

            v72 = [v3 localInterfaceName];
            v73 = [NEPolicyRouteRule routeRuleWithAction:5 forInterfaceName:v72];

            v74 = [v3 proxyAgentUUID];
            [v73 setNetworkAgentUUID:v74];

            [v54 addObject:v73];
          }

          else
          {
            v73 = 0;
          }

          goto LABEL_44;
        }

        v237 = _NRCopyLogObjectForNRUUID();
        v238 = _NRLogIsLevelEnabled();

        if (v238)
        {
          v239 = v303[12];
          v240 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v240, 16, "%s%.30s:%-4d %@ failed to add policy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3927, v302, v17, v303[38]);
        }

        v241 = _NRCopyLogObjectForNRUUID();
        v242 = _NRLogIsLevelEnabled();

        if (v242)
        {
          v243 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v243, 17, "Failed to add policy");
        }

        v3 = v302;
        v215 = v303[38];
      }

      else
      {
        v208 = _NRCopyLogObjectForNRUUID();
        v209 = _NRLogIsLevelEnabled();

        if (v209)
        {
          v210 = v303[12];
          v211 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v211, 16, "%s%.30s:%-4d %@ failed to add policy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3911, v3, v17, v303[38]);
        }

        v212 = _NRCopyLogObjectForNRUUID();
        v213 = _NRLogIsLevelEnabled();

        if (v213)
        {
          v214 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v214, 17, "Failed to add policy");
        }

        v215 = v303[38];
      }

      [v3 cancelWithReason:{@"Failed to add policy %@ to session %@", v17, v215}];
      v4 = v293;
      goto LABEL_141;
    }

    v17 = [@"com.apple.datausage.alt-account" dataUsingEncoding:4];
    v18 = sub_100009074([NRToken alloc], 1, 52, v17);
    v19 = sub_100009284(v18);
    v20 = objc_alloc_init(NSMutableData);
    NRTLVAddData();
    v21 = [a1[87] objectForKeyedSubscript:v20];
    if (!v21)
    {
      v21 = sub_100107380(a1, v20);
      if (!v21)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    v283 = v20;
    v287 = v19;
    obj = v18;
    v336 = 0;
    v337 = 0;
    v280 = v21;
    nw_agent_get_uuid();
    v22 = [v3 proxyAgentUUID];
    v23 = [NEPolicyRouteRule routeRuleWithAction:5 forNetworkAgent:v22];

    v24 = [[NSUUID alloc] initWithUUIDBytes:&v336];
    [v23 setNetworkAgentUUID:v24];

    v25 = [NEPolicy alloc];
    v26 = v23;
    v329 = v23;
    v27 = [NSArray arrayWithObjects:&v329 count:1];
    v28 = [NEPolicyResult routeRules:v27];
    v29 = +[NEPolicyCondition allInterfaces];
    v328 = v29;
    v30 = [NSArray arrayWithObjects:&v328 count:1];
    v31 = [v25 initWithOrder:v14 result:v28 conditions:v30];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v32 = qword_100229408;
    v33 = sub_100159E00(v32, v303[38], v31);

    v34 = v31;
    v4 = v293;
    if ([v33 unsignedIntegerValue])
    {
      [v304 addObject:v33];

      v18 = obj;
      v20 = v283;
      v19 = v287;
      goto LABEL_22;
    }

    v272 = v34;
    v273 = _NRCopyLogObjectForNRUUID();
    v274 = _NRLogIsLevelEnabled();

    if (v274)
    {
      v275 = v303[12];
      v276 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v276, 16, "%s%.30s:%-4d %@ failed to add policy %@ to session %@", "", "[NRDDeviceConductor setPoliciesForNonCompanionDatapath:]", 3890, v302, v272, v303[38], v280);
    }

    v277 = _NRCopyLogObjectForNRUUID();
    v278 = _NRLogIsLevelEnabled();

    if (v278)
    {
      v279 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v279, 17, "Failed to add policy");
    }

    v3 = v302;
    [v302 cancelWithReason:{@"Failed to add policy %@ to session %@", v272, v303[38]}];

LABEL_196:
    v4 = v293;
    v54 = obj;
    goto LABEL_141;
  }

LABEL_144:
}

uint64_t sub_10010A0D8(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 1)
  {
    v3 = 800;
  }

  else if ([v2 type] == 2)
  {
    if ([v2 subtype] == 102)
    {
      v3 = 1100;
    }

    else if ([v2 subtype] == 103)
    {
      v3 = 1000;
    }

    else if ([v2 subtype] == 104)
    {
      v3 = 950;
    }

    else
    {
      v3 = 900;
    }
  }

  else if ([v2 type] == 4)
  {
    v3 = 1200;
  }

  else if ([v2 type] == 5)
  {
    v3 = 700;
  }

  else
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      [v2 type];
      StringFromNRLinkType = createStringFromNRLinkType();
      _NRLogWithArgs(v7, 17, "Received unexpected link type %@", StringFromNRLinkType);
    }

    v3 = 0;
  }

  return v3;
}

id sub_10010A218(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if ([v6 state] != 8)
  {
    v33 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v35 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v35, 0, "%s%.30s:%-4d Not setting IP tunnel policies because link is not ready %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4069, v6);
    }

    goto LABEL_31;
  }

  if (!a3)
  {
LABEL_31:
    v36 = 0;
    goto LABEL_40;
  }

  if ([v6 virtualInterface])
  {
    [v6 virtualInterface];
    v7 = NEVirtualInterfaceCopyName();
    if (!v7)
    {
      v178 = _NRCopyLogObjectForNRUUID();
      v179 = _NRLogIsLevelEnabled();

      if (v179)
      {
        v180 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v180, 16, "%s%.30s:%-4d %@ failed to get virtual interface name to set IP tunnel policies", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4087, v6);
      }

      v181 = _NRCopyLogObjectForNRUUID();
      v182 = _NRLogIsLevelEnabled();

      if (v182)
      {
        v183 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v183, 17, "Failed to get virtual interface name to set IP tunnel policies");
      }

      [v6 cancelWithReason:@"Failed to get virtual interface name to set IP tunnel policies"];
      v36 = 0;
      goto LABEL_39;
    }

    v8 = objc_alloc_init(NSMutableArray);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 96);
      v3 = sub_100163A30(NRDLocalDevice, v10);

      if (v3)
      {
        LODWORD(v357) = a3;
        sub_10010D154(a1);
        if ((*(a1 + 47) & 1) == 0 && *(a1 + 49) == 1 && ([v6 hasRouteRulePolicy] & 1) == 0)
        {
          v353 = a1;
          v11 = +[NEPolicyCondition allInterfaces];
          v379 = v11;
          v12 = [NSArray arrayWithObjects:&v379 count:1];

          v355 = v7;
          v13 = [NEPolicyRouteRule routeRuleWithAction:2 forInterfaceName:v7];
          v378 = v13;
          v14 = [NSArray arrayWithObjects:&v378 count:1];
          v15 = [NEPolicyResult routeRules:v14];

          v352 = v12;
          v16 = [[NEPolicy alloc] initWithOrder:210 result:v15 conditions:v12];
          objc_opt_self();
          v356 = v9;
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v17 = qword_100229408;
          v18 = *(v353 + 304);
          v19 = sub_100159E00(v17, v18, v16);

          if (![v19 unsignedIntegerValue])
          {
            v354 = v3;
            v205 = _NRCopyLogObjectForNRUUID();
            v206 = _NRLogIsLevelEnabled();

            if (v206)
            {
              v207 = *(v353 + 96);
              v208 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v208, 16, "%s%.30s:%-4d %@ failed to add generalPolicy %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4116, v6, v16, *(v353 + 304));
            }

            v209 = _NRCopyLogObjectForNRUUID();
            v210 = _NRLogIsLevelEnabled();

            if (v210)
            {
              v211 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v211, 17, "Failed to add generalPolicy");
            }

            [v6 cancelWithReason:{@"Failed to add generalPolicy %@ to session %@", v16, *(v353 + 304)}];

            goto LABEL_126;
          }

          v9 = v356;
          [v356 addObject:v19];

          [v6 setHasRouteRulePolicy:1];
          v7 = v355;
          a1 = v353;
        }

        if ([v6 type] == 1 || objc_msgSend(v6, "type") == 2 || objc_msgSend(v6, "type") == 5)
        {
          if ([v6 ikeClassDEstablished] && (objc_msgSend(v6, "hasClassDPolicies") & 1) == 0)
          {
            v20 = a1;
            v21 = sub_100003490();
            dispatch_assert_queue_V2(v21);

            v354 = v3;
            v22 = sub_1001677D0(v3, @"0");
            v23 = [NEPolicyCondition remoteAddress:v22 prefix:128];
            v377[0] = v23;
            v24 = +[NEPolicyCondition allInterfaces];
            v377[1] = v24;
            v25 = [NSArray arrayWithObjects:v377 count:2];

            v355 = v7;
            v26 = [NEPolicyResult tunnelIPToInterfaceName:v7 secondaryResultType:0];
            v27 = [[NEPolicy alloc] initWithOrder:v357 result:v26 conditions:v25];
            objc_opt_self();
            v356 = v9;
            if (qword_100229410 != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v28 = qword_100229408;
            v29 = sub_100159E00(v28, *(v20 + 304), v27);

            if (![v29 unsignedIntegerValue])
            {
              v195 = _NRCopyLogObjectForNRUUID();
              LODWORD(v357) = _NRLogIsLevelEnabled();

              if (v357)
              {
                v357 = *(v20 + 96);
                v196 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v196, 16, "%s%.30s:%-4d %@ failed to add generalPolicyClassD %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4136, v6, v27, *(v20 + 304));
              }

              v197 = _NRCopyLogObjectForNRUUID();
              LODWORD(v357) = _NRLogIsLevelEnabled();

              if (v357)
              {
                v198 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v198, 17, "Failed to add generalPolicyClassD");
              }

              [v6 cancelWithReason:{@"Failed to add generalPolicyClassD %@ to session %@", v27, *(v20 + 304)}];
LABEL_120:

LABEL_126:
              v36 = 0;
              v7 = v355;
              v9 = v356;
              v3 = v354;
              goto LABEL_38;
            }

            v9 = v356;
            [v356 addObject:v29];

            [v6 setHasClassDPolicies:1];
            v3 = v354;
            v7 = v355;
            a1 = v20;
          }

          if (![v6 ikeClassCEstablished] || (objc_msgSend(v6, "hasClassCPolicies") & 1) != 0)
          {
            goto LABEL_37;
          }

          v353 = a1;
          v30 = sub_100003490();
          dispatch_assert_queue_V2(v30);

          v354 = v3;
          v22 = sub_100167B9C(v3, @"0");
          v23 = [NEPolicyCondition remoteAddress:v22 prefix:128];
          v376[0] = v23;
          v31 = +[NEPolicyCondition allInterfaces];
          v376[1] = v31;
          v25 = [NSArray arrayWithObjects:v376 count:2];

          v355 = v7;
          v26 = [NEPolicyResult tunnelIPToInterfaceName:v7 secondaryResultType:0];
          v27 = [[NEPolicy alloc] initWithOrder:v357 result:v26 conditions:v25];
          objc_opt_self();
          v356 = v9;
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v32 = qword_100229408;
          v29 = sub_100159E00(v32, *(v353 + 304), v27);

          if ([v29 unsignedIntegerValue])
          {
            v9 = v356;
            [v356 addObject:v29];

            [v6 setHasClassCPolicies:1];
            v3 = v354;
            v7 = v355;
LABEL_37:
            v36 = v9;
LABEL_38:

LABEL_39:
            goto LABEL_40;
          }

          v199 = _NRCopyLogObjectForNRUUID();
          v200 = _NRLogIsLevelEnabled();

          if (v200)
          {
            v357 = *(v353 + 96);
            v201 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v201, 16, "%s%.30s:%-4d %@ failed to add generalPolicyClassC %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4153, v6, v27, *(v353 + 304));
          }

          v202 = _NRCopyLogObjectForNRUUID();
          v203 = _NRLogIsLevelEnabled();

          if (v203)
          {
            v204 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v204, 17, "Failed to add generalPolicyClassC");
          }

          [v6 cancelWithReason:{@"Failed to add generalPolicyClassC %@ to session %@", v27, *(v353 + 304)}];
          goto LABEL_120;
        }

        if ([v6 type] != 4)
        {
          goto LABEL_37;
        }

        if ([v6 ikeClassDEstablished] && (objc_msgSend(v6, "hasClassDPolicies") & 1) == 0)
        {
          v356 = v9;
          v354 = v3;
          v352 = sub_1001672A0(v3, @"61315");
          v351 = [NEPolicyCondition localAddress:"localAddress:prefix:" prefix:?];
          v375[0] = v351;
          v38 = +[NEPolicyCondition allInterfaces];
          v375[1] = v38;
          v39 = [NSArray arrayWithObjects:v375 count:2];

          v355 = v7;
          v40 = [NEPolicyResult tunnelIPToInterfaceName:v7 secondaryResultType:0];
          v41 = v357;
          v42 = [[NEPolicy alloc] initWithOrder:? result:? conditions:?];
          v43 = sub_1001599CC(NRDPolicySessionManager);
          v353 = a1;
          v44 = *(a1 + 304);
          v45 = sub_100159E00(v43, v44, v42);

          v46 = [v45 unsignedIntegerValue];
          if (v46)
          {
            v9 = v356;
            [v356 addObject:v45];
          }

          else
          {
            v212 = *(v353 + 96);
            v213 = _NRCopyLogObjectForNRUUID();
            v214 = _NRLogIsLevelEnabled();

            if (v214)
            {
              v215 = *(v353 + 96);
              v216 = _NRCopyLogObjectForNRUUID();
              v217 = *(v353 + 304);
              _NRLogWithArgs(v216, 16, "%s%.30s:%-4d %@ failed to add localConditionPolicy %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4172, v6, v42, v217);
            }

            v218 = *(v353 + 96);
            v219 = _NRCopyLogObjectForNRUUID();
            v220 = _NRLogIsLevelEnabled();

            if (v220)
            {
              v221 = *(v353 + 96);
              v222 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v222, 17, "Failed to add localConditionPolicy");
            }

            v223 = *(v353 + 304);
            [v6 cancelWithReason:{@"Failed to add localConditionPolicy %@ to session %@", v42, v223}];

            v9 = v356;
            v41 = v357;
          }

          if (!v46)
          {
            goto LABEL_89;
          }

          v352 = sub_1001677D0(v354, @"61315");
          v351 = [NEPolicyCondition remoteAddress:"remoteAddress:prefix:" prefix:?];
          v374[0] = v351;
          v47 = +[NEPolicyCondition allInterfaces];
          v374[1] = v47;
          v48 = [NSArray arrayWithObjects:v374 count:2];

          v49 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
          v50 = [[NEPolicy alloc] initWithOrder:v41 result:v49 conditions:v48];
          v51 = sub_1001599CC(NRDPolicySessionManager);
          v52 = *(v353 + 304);
          v53 = sub_100159E00(v51, v52, v50);

          v54 = [v53 unsignedIntegerValue];
          if (v54)
          {
            v9 = v356;
            [v356 addObject:v53];
          }

          else
          {
            v236 = *(v353 + 96);
            v237 = _NRCopyLogObjectForNRUUID();
            v238 = _NRLogIsLevelEnabled();

            if (v238)
            {
              v239 = *(v353 + 96);
              v240 = _NRCopyLogObjectForNRUUID();
              v241 = *(v353 + 304);
              _NRLogWithArgs(v240, 16, "%s%.30s:%-4d %@ failed to add remoteConditionPolicy %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4186, v6, v50, v241);
            }

            v242 = *(v353 + 96);
            v243 = _NRCopyLogObjectForNRUUID();
            v244 = _NRLogIsLevelEnabled();

            if (v244)
            {
              v245 = *(v353 + 96);
              v246 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v246, 17, "Failed to add remoteConditionPolicy");
            }

            v247 = *(v353 + 304);
            [v6 cancelWithReason:{@"Failed to add remoteConditionPolicy %@ to session %@", v50, v247}];

            v9 = v356;
          }

          if (!v54)
          {
            goto LABEL_89;
          }

          v352 = sub_1001689F8(v354);
          v55 = [NEPolicyCondition remoteAddress:"remoteAddress:prefix:" prefix:?];
          [NEPolicyCondition ipProtocol:58];
          v351 = v55;
          v372 = v371 = v55;
          v56 = v372;
          v57 = +[NEPolicyCondition allInterfaces];
          v373 = v57;
          v58 = [NSArray arrayWithObjects:&v371 count:3];

          v59 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
          v60 = [[NEPolicy alloc] initWithOrder:v357 result:v59 conditions:v58];
          v61 = sub_1001599CC(NRDPolicySessionManager);
          v62 = *(v353 + 304);
          v63 = sub_100159E00(v61, v62, v60);

          v64 = [v63 unsignedIntegerValue];
          if (v64)
          {
            v9 = v356;
            [v356 addObject:v63];
          }

          else
          {
            v260 = *(v353 + 96);
            v261 = _NRCopyLogObjectForNRUUID();
            LODWORD(v350) = _NRLogIsLevelEnabled();

            if (v350)
            {
              v350 = *(v353 + 96);
              v262 = _NRCopyLogObjectForNRUUID();
              v263 = *(v353 + 304);
              _NRLogWithArgs(v262, 16, "%s%.30s:%-4d %@ failed to add icmpConditionPolicy %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4201, v6, v60, v263);
            }

            v264 = *(v353 + 96);
            v265 = _NRCopyLogObjectForNRUUID();
            LODWORD(v350) = _NRLogIsLevelEnabled();

            if (v350)
            {
              v266 = *(v353 + 96);
              v267 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v267, 17, "Failed to add icmpConditionPolicy");
            }

            v268 = *(v353 + 304);
            [v6 cancelWithReason:{@"Failed to add icmpConditionPolicy %@ to session %@", v60, v268}];

            v9 = v356;
          }

          if (!v64)
          {
            goto LABEL_89;
          }

          v3 = v354;
          v7 = v355;
          if (_NRIsAppleInternal())
          {
            v352 = [[NSString alloc] initWithUTF8String:"18999"];
            v351 = sub_1001672A0(v354, v352);
            v65 = [NEPolicyCondition localAddress:"localAddress:prefix:" prefix:?];
            v370[0] = v65;
            v66 = +[NEPolicyCondition allInterfaces];
            v370[1] = v66;
            v67 = [NSArray arrayWithObjects:v370 count:2];

            v68 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
            v69 = [[NEPolicy alloc] initWithOrder:v357 result:v68 conditions:v67];
            v70 = sub_1001599CC(NRDPolicySessionManager);
            v71 = *(v353 + 304);
            v72 = sub_100159E00(v70, v71, v69);

            v73 = [v72 unsignedIntegerValue];
            if (v73)
            {
              v9 = v356;
              [v356 addObject:v72];
            }

            else
            {
              v278 = *(v353 + 96);
              v279 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v350 = *(v353 + 96);
                v280 = _NRCopyLogObjectForNRUUID();
                v281 = *(v353 + 304);
                _NRLogWithArgs(v280, 16, "%s%.30s:%-4d %@ failed to add localConditionPolicyForTest %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4223, v6, v69, v281);
              }

              v282 = *(v353 + 96);
              v283 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v284 = *(v353 + 96);
                v285 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v285, 17, "Failed to add localConditionPolicyForTest");
              }

              v286 = *(v353 + 304);
              [v6 cancelWithReason:{@"Failed to add localConditionPolicyForTest %@ to session %@", v69, v286}];

              v9 = v356;
            }

            if (!v73)
            {
              goto LABEL_90;
            }

            v74 = sub_1001677D0(v354, v352);
            v351 = [NEPolicyCondition remoteAddress:v74 prefix:128];
            v369[0] = v351;
            v75 = +[NEPolicyCondition allInterfaces];
            v369[1] = v75;
            v76 = [NSArray arrayWithObjects:v369 count:2];

            v77 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
            v78 = [[NEPolicy alloc] initWithOrder:v357 result:v77 conditions:v76];
            v79 = sub_1001599CC(NRDPolicySessionManager);
            v80 = *(v353 + 304);
            v81 = sub_100159E00(v79, v80, v78);

            v82 = [v81 unsignedIntegerValue];
            if (v82)
            {
              v9 = v356;
              [v356 addObject:v81];
            }

            else
            {
              v296 = *(v353 + 96);
              v297 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v350 = *(v353 + 96);
                v298 = _NRCopyLogObjectForNRUUID();
                v299 = *(v353 + 304);
                _NRLogWithArgs(v298, 16, "%s%.30s:%-4d %@ failed to add remoteConditionPolicyForTest %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4240, v6, v78, v299);
              }

              v300 = *(v353 + 96);
              v301 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v302 = *(v353 + 96);
                v303 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v303, 17, "Failed to add remoteConditionPolicyForTest");
              }

              v304 = *(v353 + 304);
              [v6 cancelWithReason:{@"Failed to add remoteConditionPolicyForTest %@ to session %@", v78, v304}];

              v9 = v356;
            }

            if (!v82)
            {
              goto LABEL_90;
            }

            v83 = [[NSString alloc] initWithUTF8String:"19999"];
            v84 = sub_1001672A0(v354, v83);

            v351 = v84;
            v85 = [NEPolicyCondition localAddress:v84 prefix:128];
            v368[0] = v85;
            v86 = +[NEPolicyCondition allInterfaces];
            v368[1] = v86;
            v87 = [NSArray arrayWithObjects:v368 count:2];

            v88 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
            v89 = [[NEPolicy alloc] initWithOrder:v357 result:v88 conditions:v87];
            v90 = sub_1001599CC(NRDPolicySessionManager);
            v91 = *(v353 + 304);
            v92 = sub_100159E00(v90, v91, v89);

            v93 = [v92 unsignedIntegerValue];
            if (v93)
            {
              v9 = v356;
              [v356 addObject:v92];
            }

            else
            {
              v314 = *(v353 + 96);
              v315 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v350 = *(v353 + 96);
                v316 = _NRCopyLogObjectForNRUUID();
                v317 = *(v353 + 304);
                _NRLogWithArgs(v316, 16, "%s%.30s:%-4d %@ failed to add localConditionPolicyForTest %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4257, v6, v89, v317);
              }

              v318 = *(v353 + 96);
              v319 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v320 = *(v353 + 96);
                v321 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v321, 17, "Failed to add localConditionPolicyForTest");
              }

              v322 = *(v353 + 304);
              [v6 cancelWithReason:{@"Failed to add localConditionPolicyForTest %@ to session %@", v89, v322}];

              v9 = v356;
            }

            if (!v93)
            {
LABEL_90:
              v3 = v354;
              v7 = v355;

LABEL_91:
              v36 = 0;
              goto LABEL_38;
            }

            v94 = [[NSString alloc] initWithUTF8String:"19999"];
            v95 = sub_1001677D0(v354, v94);

            v351 = v95;
            v96 = [NEPolicyCondition remoteAddress:v95 prefix:128];
            v367[0] = v96;
            v97 = +[NEPolicyCondition allInterfaces];
            v367[1] = v97;
            v98 = [NSArray arrayWithObjects:v367 count:2];

            v99 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
            v100 = [[NEPolicy alloc] initWithOrder:v357 result:v99 conditions:v98];
            v101 = sub_1001599CC(NRDPolicySessionManager);
            v102 = *(v353 + 304);
            v103 = sub_100159E00(v101, v102, v100);

            v104 = [v103 unsignedIntegerValue];
            if (v104)
            {
              v9 = v356;
              [v356 addObject:v103];
            }

            else
            {
              v332 = *(v353 + 96);
              v333 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v350 = *(v353 + 96);
                v334 = _NRCopyLogObjectForNRUUID();
                v335 = *(v353 + 304);
                _NRLogWithArgs(v334, 16, "%s%.30s:%-4d %@ failed to add remoteConditionPolicyForTest %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4274, v6, v100, v335);
              }

              v336 = *(v353 + 96);
              v337 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v338 = *(v353 + 96);
                v339 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v339, 17, "Failed to add remoteConditionPolicyForTest");
              }

              v340 = *(v353 + 304);
              [v6 cancelWithReason:{@"Failed to add remoteConditionPolicyForTest %@ to session %@", v100, v340}];

              v9 = v356;
            }

            v3 = v354;
            v7 = v355;
            if (!v104)
            {
              goto LABEL_91;
            }
          }

          a1 = v353;
          sub_1000FC7D0(v353, 0);
          [v6 setHasClassDPolicies:1];
        }

        if (![v6 ikeClassCEstablished] || (objc_msgSend(v6, "hasClassCPolicies") & 1) != 0)
        {
          goto LABEL_37;
        }

        v356 = v9;
        v354 = v3;
        v352 = sub_1001679E0(v3, @"61315");
        v351 = [NEPolicyCondition localAddress:"localAddress:prefix:" prefix:?];
        v366[0] = v351;
        v105 = +[NEPolicyCondition allInterfaces];
        v366[1] = v105;
        v106 = [NSArray arrayWithObjects:v366 count:2];

        v355 = v7;
        v107 = [NEPolicyResult tunnelIPToInterfaceName:v7 secondaryResultType:0];
        v108 = v357;
        v109 = [[NEPolicy alloc] initWithOrder:? result:? conditions:?];
        v110 = sub_1001599CC(NRDPolicySessionManager);
        v353 = a1;
        v111 = *(a1 + 304);
        v112 = sub_100159E00(v110, v111, v109);

        v113 = [v112 unsignedIntegerValue];
        if (v113)
        {
          v9 = v356;
          [v356 addObject:v112];
        }

        else
        {
          v224 = *(v353 + 96);
          v225 = _NRCopyLogObjectForNRUUID();
          v226 = _NRLogIsLevelEnabled();

          if (v226)
          {
            v227 = *(v353 + 96);
            v228 = _NRCopyLogObjectForNRUUID();
            v229 = *(v353 + 304);
            _NRLogWithArgs(v228, 16, "%s%.30s:%-4d %@ failed to add localConditionPolicy %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4295, v6, v109, v229);
          }

          v230 = *(v353 + 96);
          v231 = _NRCopyLogObjectForNRUUID();
          v232 = _NRLogIsLevelEnabled();

          if (v232)
          {
            v233 = *(v353 + 96);
            v234 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v234, 17, "Failed to add localConditionPolicy");
          }

          v235 = *(v353 + 304);
          [v6 cancelWithReason:{@"Failed to add localConditionPolicy %@ to session %@", v109, v235}];

          v9 = v356;
          v108 = v357;
        }

        if (v113)
        {
          v352 = sub_100167B9C(v354, @"61315");
          v351 = [NEPolicyCondition remoteAddress:"remoteAddress:prefix:" prefix:?];
          v365[0] = v351;
          v114 = +[NEPolicyCondition allInterfaces];
          v365[1] = v114;
          v115 = [NSArray arrayWithObjects:v365 count:2];

          v116 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
          v117 = [[NEPolicy alloc] initWithOrder:v108 result:v116 conditions:v115];
          v118 = sub_1001599CC(NRDPolicySessionManager);
          v119 = *(v353 + 304);
          v120 = sub_100159E00(v118, v119, v117);

          v121 = [v120 unsignedIntegerValue];
          if (v121)
          {
            v9 = v356;
            [v356 addObject:v120];
          }

          else
          {
            v248 = *(v353 + 96);
            v249 = _NRCopyLogObjectForNRUUID();
            v250 = _NRLogIsLevelEnabled();

            if (v250)
            {
              v251 = *(v353 + 96);
              v252 = _NRCopyLogObjectForNRUUID();
              v253 = *(v353 + 304);
              _NRLogWithArgs(v252, 16, "%s%.30s:%-4d %@ failed to add remoteConditionPolicy %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4309, v6, v117, v253);
            }

            v254 = *(v353 + 96);
            v255 = _NRCopyLogObjectForNRUUID();
            v256 = _NRLogIsLevelEnabled();

            if (v256)
            {
              v257 = *(v353 + 96);
              v258 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v258, 17, "Failed to add remoteConditionPolicy");
            }

            v259 = *(v353 + 304);
            [v6 cancelWithReason:{@"Failed to add remoteConditionPolicy %@ to session %@", v117, v259}];

            v9 = v356;
          }

          if (v121)
          {
            v352 = sub_100168A4C(v354);
            v122 = [NEPolicyCondition remoteAddress:"remoteAddress:prefix:" prefix:?];
            [NEPolicyCondition ipProtocol:58];
            v351 = v122;
            v363 = v362 = v122;
            v123 = v363;
            v124 = +[NEPolicyCondition allInterfaces];
            v364 = v124;
            v125 = [NSArray arrayWithObjects:&v362 count:3];

            v126 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
            v127 = [[NEPolicy alloc] initWithOrder:v357 result:v126 conditions:v125];
            v128 = sub_1001599CC(NRDPolicySessionManager);
            v129 = *(v353 + 304);
            v130 = sub_100159E00(v128, v129, v127);

            v131 = [v130 unsignedIntegerValue];
            if (v131)
            {
              v9 = v356;
              [v356 addObject:v130];
            }

            else
            {
              v269 = *(v353 + 96);
              v270 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v350 = *(v353 + 96);
                v271 = _NRCopyLogObjectForNRUUID();
                v272 = *(v353 + 304);
                _NRLogWithArgs(v271, 16, "%s%.30s:%-4d %@ failed to add icmpConditionPolicy %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4324, v6, v127, v272);
              }

              v273 = *(v353 + 96);
              v274 = _NRCopyLogObjectForNRUUID();
              LODWORD(v350) = _NRLogIsLevelEnabled();

              if (v350)
              {
                v275 = *(v353 + 96);
                v276 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v276, 17, "Failed to add icmpConditionPolicy");
              }

              v277 = *(v353 + 304);
              [v6 cancelWithReason:{@"Failed to add icmpConditionPolicy %@ to session %@", v127, v277}];

              v9 = v356;
            }

            if (v131)
            {
              v3 = v354;
              v7 = v355;
              if (!_NRIsAppleInternal())
              {
LABEL_88:
                [v6 setHasClassCPolicies:{1, v350}];
                v9 = v356;
                goto LABEL_37;
              }

              v352 = [[NSString alloc] initWithUTF8String:"18999"];
              v351 = sub_1001679E0(v354, v352);
              v132 = [NEPolicyCondition localAddress:"localAddress:prefix:" prefix:?];
              v361[0] = v132;
              v133 = +[NEPolicyCondition allInterfaces];
              v361[1] = v133;
              v134 = [NSArray arrayWithObjects:v361 count:2];

              v135 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
              v136 = [[NEPolicy alloc] initWithOrder:v357 result:v135 conditions:v134];
              v137 = sub_1001599CC(NRDPolicySessionManager);
              v138 = *(v353 + 304);
              v139 = sub_100159E00(v137, v138, v136);

              v140 = [v139 unsignedIntegerValue];
              if (v140)
              {
                v9 = v356;
                [v356 addObject:v139];
              }

              else
              {
                v287 = *(v353 + 96);
                v288 = _NRCopyLogObjectForNRUUID();
                LODWORD(v350) = _NRLogIsLevelEnabled();

                if (v350)
                {
                  v350 = *(v353 + 96);
                  v289 = _NRCopyLogObjectForNRUUID();
                  v290 = *(v353 + 304);
                  _NRLogWithArgs(v289, 16, "%s%.30s:%-4d %@ failed to add localConditionPolicyForTest %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4346, v6, v136, v290);
                }

                v291 = *(v353 + 96);
                v292 = _NRCopyLogObjectForNRUUID();
                LODWORD(v350) = _NRLogIsLevelEnabled();

                if (v350)
                {
                  v293 = *(v353 + 96);
                  v294 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs(v294, 17, "Failed to add localConditionPolicyForTest");
                }

                v295 = *(v353 + 304);
                [v6 cancelWithReason:{@"Failed to add localConditionPolicyForTest %@ to session %@", v136, v295}];

                v9 = v356;
              }

              if (v140)
              {
                v141 = sub_100167B9C(v354, v352);
                v351 = [NEPolicyCondition remoteAddress:v141 prefix:128];
                v360[0] = v351;
                v142 = +[NEPolicyCondition allInterfaces];
                v360[1] = v142;
                v143 = [NSArray arrayWithObjects:v360 count:2];

                v144 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
                v145 = [[NEPolicy alloc] initWithOrder:v357 result:v144 conditions:v143];
                v146 = sub_1001599CC(NRDPolicySessionManager);
                v147 = *(v353 + 304);
                v148 = sub_100159E00(v146, v147, v145);

                v149 = [v148 unsignedIntegerValue];
                if (v149)
                {
                  v9 = v356;
                  [v356 addObject:v148];
                }

                else
                {
                  v305 = *(v353 + 96);
                  v306 = _NRCopyLogObjectForNRUUID();
                  LODWORD(v350) = _NRLogIsLevelEnabled();

                  if (v350)
                  {
                    v350 = *(v353 + 96);
                    v307 = _NRCopyLogObjectForNRUUID();
                    v308 = *(v353 + 304);
                    _NRLogWithArgs(v307, 16, "%s%.30s:%-4d %@ failed to add remoteConditionPolicyForTest %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4363, v6, v145, v308);
                  }

                  v309 = *(v353 + 96);
                  v310 = _NRCopyLogObjectForNRUUID();
                  LODWORD(v350) = _NRLogIsLevelEnabled();

                  if (v350)
                  {
                    v311 = *(v353 + 96);
                    v312 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v312, 17, "Failed to add remoteConditionPolicyForTest");
                  }

                  v313 = *(v353 + 304);
                  [v6 cancelWithReason:{@"Failed to add remoteConditionPolicyForTest %@ to session %@", v145, v313}];

                  v9 = v356;
                }

                if (v149)
                {
                  v150 = [[NSString alloc] initWithUTF8String:"19999"];
                  v151 = sub_1001679E0(v354, v150);

                  v351 = v151;
                  v152 = [NEPolicyCondition localAddress:v151 prefix:128];
                  v359[0] = v152;
                  v153 = +[NEPolicyCondition allInterfaces];
                  v359[1] = v153;
                  v154 = [NSArray arrayWithObjects:v359 count:2];

                  v155 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
                  v156 = [[NEPolicy alloc] initWithOrder:v357 result:v155 conditions:v154];
                  v157 = sub_1001599CC(NRDPolicySessionManager);
                  v158 = *(v353 + 304);
                  v159 = sub_100159E00(v157, v158, v156);

                  v160 = [v159 unsignedIntegerValue];
                  if (v160)
                  {
                    v9 = v356;
                    [v356 addObject:v159];
                  }

                  else
                  {
                    v323 = *(v353 + 96);
                    v324 = _NRCopyLogObjectForNRUUID();
                    LODWORD(v350) = _NRLogIsLevelEnabled();

                    if (v350)
                    {
                      v350 = *(v353 + 96);
                      v325 = _NRCopyLogObjectForNRUUID();
                      v326 = *(v353 + 304);
                      _NRLogWithArgs(v325, 16, "%s%.30s:%-4d %@ failed to add localConditionPolicyForTest %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4380, v6, v156, v326);
                    }

                    v327 = *(v353 + 96);
                    v328 = _NRCopyLogObjectForNRUUID();
                    LODWORD(v350) = _NRLogIsLevelEnabled();

                    if (v350)
                    {
                      v329 = *(v353 + 96);
                      v330 = _NRCopyLogObjectForNRUUID();
                      _NRLogWithArgs(v330, 17, "Failed to add localConditionPolicyForTest");
                    }

                    v331 = *(v353 + 304);
                    [v6 cancelWithReason:{@"Failed to add localConditionPolicyForTest %@ to session %@", v156, v331}];

                    v9 = v356;
                  }

                  if (v160)
                  {
                    v161 = [[NSString alloc] initWithUTF8String:"19999"];
                    v162 = sub_100167B9C(v354, v161);

                    v351 = v162;
                    v163 = [NEPolicyCondition remoteAddress:v162 prefix:128];
                    v358[0] = v163;
                    v164 = +[NEPolicyCondition allInterfaces];
                    v358[1] = v164;
                    v165 = [NSArray arrayWithObjects:v358 count:2];

                    v166 = [NEPolicyResult tunnelIPToInterfaceName:v355 secondaryResultType:0];
                    v167 = [[NEPolicy alloc] initWithOrder:v357 result:v166 conditions:v165];
                    v168 = sub_1001599CC(NRDPolicySessionManager);
                    v169 = *(v353 + 304);
                    v170 = sub_100159E00(v168, v169, v167);

                    v171 = [v170 unsignedIntegerValue];
                    if (v171)
                    {
                      [v356 addObject:v170];
                    }

                    else
                    {
                      v341 = *(v353 + 96);
                      v342 = _NRCopyLogObjectForNRUUID();
                      LODWORD(v357) = _NRLogIsLevelEnabled();

                      if (v357)
                      {
                        v357 = *(v353 + 96);
                        v343 = _NRCopyLogObjectForNRUUID();
                        v344 = *(v353 + 304);
                        _NRLogWithArgs(v343, 16, "%s%.30s:%-4d %@ failed to add remoteConditionPolicyForTest %@ to session %@", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4397, v6, v167, v344);
                      }

                      v345 = *(v353 + 96);
                      v346 = _NRCopyLogObjectForNRUUID();
                      LODWORD(v357) = _NRLogIsLevelEnabled();

                      if (v357)
                      {
                        v347 = *(v353 + 96);
                        v348 = _NRCopyLogObjectForNRUUID();
                        _NRLogWithArgs(v348, 17, "Failed to add remoteConditionPolicyForTest");
                      }

                      v349 = *(v353 + 304);
                      [v6 cancelWithReason:{@"Failed to add remoteConditionPolicyForTest %@ to session %@", v167, v349}];
                    }

                    v3 = v354;
                    v7 = v355;
                    if (v171)
                    {
                      goto LABEL_88;
                    }

LABEL_109:
                    v36 = 0;
                    v9 = v356;
                    goto LABEL_38;
                  }
                }
              }

              goto LABEL_90;
            }
          }
        }

LABEL_89:
        v36 = 0;
        v3 = v354;
        v7 = v355;
        goto LABEL_38;
      }

      v190 = sub_1000E83DC();
      v191 = _NRLogIsLevelEnabled();

      if (v191)
      {
        v192 = sub_1000E83DC();
        _NRLogWithArgs(v192, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4097);
      }

      v6 = _os_log_pack_size();
      v193 = &v350 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v194 = *__error();
      v189 = _os_log_pack_fill(v193, v6, v194, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    }

    else
    {
      v184 = sub_1000E83DC();
      v185 = _NRLogIsLevelEnabled();

      if (v185)
      {
        v186 = sub_1000E83DC();
        _NRLogWithArgs(v186, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (addedPolicyIDs) != ((void*)0)", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4094);
      }

      v6 = _os_log_pack_size();
      v187 = &v350 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v188 = *__error();
      v189 = _os_log_pack_fill(v187, v6, v188, &_mh_execute_header, "%{public}s Assertion Failed: (addedPolicyIDs) != ((void*)0)");
    }

    *v189 = 136446210;
    *(v189 + 4) = "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
    goto LABEL_109;
  }

  v172 = _NRCopyLogObjectForNRUUID();
  v173 = _NRLogIsLevelEnabled();

  if (v173)
  {
    v174 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v174, 16, "%s%.30s:%-4d %@ failed to get virtual interface to set IP tunnel policies", "", "[NRDDeviceConductor addIPTunnelPolicyForLinkInner:policyOrder:]", 4079, v6);
  }

  v175 = _NRCopyLogObjectForNRUUID();
  v176 = _NRLogIsLevelEnabled();

  if (v176)
  {
    v177 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v177, 17, "Failed to get virtual interface to set IP tunnel policies");
  }

  [v6 cancelWithReason:@"Failed to get virtual interface to set IP tunnel policies"];
  v36 = 0;
LABEL_40:

  return v36;
}

void sub_10010D154(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  if ((*(a1 + 38) & 1) == 0 && (*(a1 + 47) & 1) == 0 && (*(a1 + 43) & 1) == 0)
  {
    v2 = objc_alloc_init(NSMutableArray);
    objc_opt_self();
    v3 = sub_100003490();
    dispatch_assert_queue_V2(v3);

    v55 = xmmword_100196400;
    v4 = [[NSData alloc] initWithBytes:&v55 length:16];
    v5 = sub_100167F00(NRDLocalDevice, v4, @"0");

    v6 = [NEPolicyCondition remoteAddress:v5 prefix:64];
    v7 = [NEPolicyCondition ipProtocol:58];
    v60[0] = v6;
    v60[1] = v7;
    v8 = +[NEPolicyCondition allInterfaces];
    v60[2] = v8;
    v9 = [NSArray arrayWithObjects:v60 count:3];

    v10 = [NEPolicyResult skipWithOrder:220];
    v11 = [[NEPolicy alloc] initWithOrder:200 result:v10 conditions:v9];
    objc_opt_self();
    v54 = v2;
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v12 = qword_100229408;
    v13 = sub_100159E00(v12, *(a1 + 304), v11);

    [v54 addObject:v13];
    objc_opt_self();
    v14 = sub_100003490();
    dispatch_assert_queue_V2(v14);

    v55 = xmmword_100196400;
    v15 = [[NSData alloc] initWithBytes:&v55 length:16];
    v16 = sub_100167F00(NRDLocalDevice, v15, @"0");

    v17 = [NEPolicyCondition remoteAddress:v16 prefix:64];
    v18 = +[NEPolicyCondition platformBinary];
    v59[0] = v17;
    v59[1] = v18;
    v19 = +[NEPolicyCondition allInterfaces];
    v59[2] = v19;
    v20 = [NSArray arrayWithObjects:v59 count:3];

    v21 = [NEPolicyResult skipWithOrder:220];
    v22 = [[NEPolicy alloc] initWithOrder:200 result:v21 conditions:v20];
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v23 = qword_100229408;
    v24 = sub_100159E00(v23, *(a1 + 304), v22);

    [v54 addObject:v24];
    v25 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
    v26 = +[NEPolicyCondition platformBinary];
    v58[0] = v25;
    v58[1] = v26;
    v27 = +[NEPolicyCondition allInterfaces];
    v58[2] = v27;
    v28 = [NSArray arrayWithObjects:v58 count:3];

    v29 = [NEPolicyResult skipWithOrder:220];
    v30 = [[NEPolicy alloc] initWithOrder:200 result:v29 conditions:v28];
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v31 = qword_100229408;
    v32 = sub_100159E00(v31, *(a1 + 304), v30);

    [v54 addObject:v32];
    v33 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
    v34 = +[NEPolicyCondition platformBinary];
    v57[0] = v33;
    v57[1] = v34;
    v35 = +[NEPolicyCondition allInterfaces];
    v57[2] = v35;
    v36 = [NSArray arrayWithObjects:v57 count:3];

    v37 = [NEPolicyResult skipWithOrder:220];
    v38 = [[NEPolicy alloc] initWithOrder:200 result:v37 conditions:v36];
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v39 = qword_100229408;
    v40 = sub_100159E00(v39, *(a1 + 304), v38);

    [v54 addObject:v40];
    v41 = [[NSUUID alloc] initWithUUIDString:@"4946eeba-8277-69b4-e898-d635c8fde872"];
    v56 = v41;
    v42 = [NSArray arrayWithObjects:&v56 count:1];
    sub_10010D97C(a1, v42, v54, @"4946eeba-8277-69b4-e898-d635c8fde872");

    if (_NRIsAppleInternal())
    {
      v43 = sub_10013A6D4(@"com.apple.Home");
      v44 = [v43 count];
      v45 = _NRCopyLogObjectForNRUUID();
      if (v44)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v47 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v47, 0, "%s%.30s:%-4d UUIDs for '%s': %@", "", "[NRDDeviceConductor setPermittedClientPolicies]", 3721, "com.apple.Home", v43);
        }

        sub_10010D97C(a1, v43, v54, @"com.apple.Home");
      }

      else
      {
        v48 = _NRLogIsLevelEnabled();

        if (v48)
        {
          v49 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v49, 16, "%s%.30s:%-4d Failed to retrieve UUIDs for '%s' (may not be installed)", "", "[NRDDeviceConductor setPermittedClientPolicies]", 3718, "com.apple.Home");
        }
      }
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v50 = qword_100229408;
    sub_10015A52C(v50);

    *(a1 + 38) = 1;
    [v54 addObjectsFromArray:*(a1 + 272)];
    objc_storeStrong((a1 + 272), v54);
    v51 = _NRCopyLogObjectForNRUUID();
    v52 = _NRLogIsLevelEnabled();

    if (v52)
    {
      v53 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v53, 0, "%s%.30s:%-4d Added permitted client policies", "", "[NRDDeviceConductor setPermittedClientPolicies]", 3733);
    }
  }
}

void sub_10010D97C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v24 = a3;
  v21 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [NEPolicyCondition effectiveApplication:*(*(&v25 + 1) + 8 * v10)];
        v12 = +[NEPolicyCondition allInterfaces];
        v29[0] = v12;
        v29[1] = v11;
        v13 = [NSArray arrayWithObjects:v29 count:2];

        v14 = [NEPolicyResult skipWithOrder:220];
        v15 = [[NEPolicy alloc] initWithOrder:200 result:v14 conditions:v13];
        if (v15)
        {
          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v16 = qword_100229408;
          v17 = sub_100159E00(v16, *(a1 + 304), v15);

          [v24 addObject:v17];
          goto LABEL_10;
        }

        v18 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v17 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v17, 17, "Failed to create effective application policy for %@", v21);
LABEL_10:
        }

        if (!v15)
        {
          goto LABEL_17;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      v8 = v20;
    }

    while (v20);
  }

LABEL_17:
}

uint64_t sub_10010DC08(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = nw_quic_migration_info_create();
  [v4 UTF8String];
  v7 = nw_interface_create_with_name();
  nw_quic_migration_info_set_interface();
  v8 = [v5 copyCEndpoint];

  nw_quic_migration_info_set_remote_endpoint();
  v9 = nw_agent_create_with_quic_migration_info();
  v10 = nw_quic_migration_info_copy_data();
  nw_agent_change_state();

  return v9;
}

id sub_10010DCE4(uint64_t a1, int a2, int a3)
{
  v6 = objc_alloc_init(NSMutableArray);
  if (a2)
  {
    v7 = +[NEPolicyCondition allInterfaces];
    v28[0] = v7;
    objc_opt_self();
    v8 = [NEPolicyCondition clientFlags:0x10000000];
    v28[1] = v8;
    v9 = [NSArray arrayWithObjects:v28 count:2];
    [v6 addObject:v9];
  }

  v10 = +[NEPolicyCondition allInterfaces];
  v27[0] = v10;
  objc_opt_self();
  v11 = [NEPolicyCondition clientFlags:0x40000000];
  v27[1] = v11;
  v12 = [NSArray arrayWithObjects:v27 count:2];
  [v6 addObject:v12];

  v13 = +[NEPolicyCondition allInterfaces];
  v26[0] = v13;
  objc_opt_self();
  v14 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
  v26[1] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:2];
  [v6 addObject:v15];

  if (a3)
  {
    v16 = +[NEPolicyCondition allInterfaces];
    v25[0] = v16;
    v17 = +[NEPolicyCondition isSystemProxyConnection];
    v25[1] = v17;
    v18 = [NEPolicyCondition flowIPProtocol:17];
    v25[2] = v18;
    v19 = [NSArray arrayWithObjects:v25 count:3];
    [v6 addObject:v19];
  }

  if (*(a1 + 48) == 1 && a2)
  {
    v20 = +[NEPolicyCondition allInterfaces];
    objc_opt_self();
    v21 = [NEPolicyCondition clientFlags:536879104, v20];
    v24[1] = v21;
    v22 = [NSArray arrayWithObjects:v24 count:2];
    [v6 addObject:v22];
  }

  return v6;
}

id sub_10010DFA8(uint64_t a1, int a2, int a3)
{
  v6 = objc_alloc_init(NSMutableArray);
  v7 = sub_10010DCE4(a1, a2, a3);
  if ([v7 count])
  {
    [v6 addObjectsFromArray:v7];
  }

  v8 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v9 = v8;
  if (v8)
  {
    if ((*(v8 + 12) & 1) == 0)
    {
      v21 = 0uLL;
      sub_1001727AC(v8, &v21);
      objc_opt_self();
      if (WORD5(v21))
      {
        if (WORD6(v21))
        {
          if ((*(v9 + 12) & 1) == 0)
          {
            v21 = 0uLL;
            sub_100167D5C(v9, &v21);
            objc_opt_self();
            if (WORD5(v21))
            {
              if (WORD6(v21))
              {
                v11 = sub_100003490();
                dispatch_assert_queue_V2(v11);

                v12 = sub_1001677D0(v9, @"0");
                v13 = [NEPolicyCondition flowRemoteAddress:v12 prefix:128];

                v14 = +[NEPolicyCondition allInterfaces];
                v23[0] = v14;
                v23[1] = v13;
                v15 = [NSArray arrayWithObjects:v23 count:2];
                [v6 addObject:v15];

                v16 = sub_100003490();
                dispatch_assert_queue_V2(v16);

                v17 = sub_100167B9C(v9, @"0");
                v18 = [NEPolicyCondition flowRemoteAddress:v17 prefix:128];

                v19 = +[NEPolicyCondition allInterfaces];
                v22[0] = v19;
                v22[1] = v18;
                v20 = [NSArray arrayWithObjects:v22 count:2];
                [v6 addObject:v20];
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_10010E200(uint64_t a1)
{
  v1 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 144);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if ([v4 hasCompanionDatapath])
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100169428(v2);
  }

  return v5;
}

void sub_10010E27C(void *a1)
{
  if (a1[61] || !sub_10010E200(a1))
  {
    return;
  }

  v2 = sub_100163A30(NRDLocalDevice, a1[12]);
  v24 = v2;
  if (v2)
  {
    v3 = *(v2 + 144);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 usesTLS];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = sub_100144910(v6, a1[17]);
  a1[61] = v7;
  if (!v7)
  {
    if (qword_100229160 != -1)
    {
      dispatch_once(&qword_100229160, &stru_1001FBC40);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229160 != -1)
      {
        dispatch_once(&qword_100229160, &stru_1001FBC40);
      }

      _NRLogWithArgs(qword_100229158, 17, "NRLinkVirtualInterfaceCreate failed");
    }

    goto LABEL_32;
  }

  objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  v25 = xmmword_100196400;
  v9 = [[NSData alloc] initWithBytes:&v25 length:16];
  v10 = sub_100167F00(NRDLocalDevice, v9, @"0");

  v11 = [v10 hostname];
  NEVirtualInterfaceAddIPv6Route();

  NEVirtualInterfaceSetIPv6Router();
  NEVirtualInterfaceSetRankNever();
  if (v5)
  {
    NEVirtualInterfaceEnableFlowswitch();
  }

  v12 = NEVirtualInterfaceCopyName();
  if (sub_10013AD6C(v12, 8) & 1) != 0 || (!v24 ? (v13 = 0) : (v13 = v24[18]), v14 = v13, v15 = [v14 usesTLS], v14, (v15))
  {
    if (sub_10013B900(v12))
    {
      sub_100107A24(a1, v12);
      v16 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v18, 0, "%s%.30s:%-4d Created catch-all interface (%@)", "", "[NRDDeviceConductor createCatchAllInterfaceIfNeeded]", 8517, v12);
      }

      goto LABEL_31;
    }

    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v21, 17, "Failed to set no ack prioritization for catch-all %@", v12);
LABEL_29:
    }
  }

  else
  {
    v22 = _NRCopyLogObjectForNRUUID();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v21 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v21, 17, "Failed to set interface subfamily for catch-all %@", v12);
      goto LABEL_29;
    }
  }

  sub_10010EE28(a1);
LABEL_31:

LABEL_32:
}

void sub_10010E5CC(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = sub_100163A30(NRDLocalDevice, v6);
  if (!v7)
  {
    v44 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v19 = "[NRDDeviceConductor updateProxyAgentForNRUUID:]";
    if (IsLevelEnabled)
    {
      v46 = sub_1000E83DC();
      _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: localDevice", "", "[NRDDeviceConductor updateProxyAgentForNRUUID:]", 8683);
    }

    v6 = _os_log_pack_size();
    v8 = (&v53 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v47 = __error();
    v48 = _os_log_pack_fill(v8, v6, *v47, &_mh_execute_header, "%{public}s Assertion Failed: localDevice");
    *v48 = 136446210;
    *(v48 + 4) = "[NRDDeviceConductor updateProxyAgentForNRUUID:]";
    sub_1000E83DC();
    v24 = _NRLogAbortWithPack();
    goto LABEL_28;
  }

  v8 = v7;
  if (sub_100140C44(v7))
  {
    v9 = v8[18];
    v10 = [v9 hasPoliciesForProxyCriteria];

    if ((v10 & 1) == 0)
    {
      v11 = *(a1 + 504);
      if (!v11)
      {
        goto LABEL_7;
      }

      v12 = v11;
      v13 = *(a1 + 504);
      v14 = v8[12];
      v15 = v14;
      if (v13 == v14)
      {

        goto LABEL_24;
      }

      v16 = *(a1 + 504);
      v17 = v8[12];
      v18 = [v16 isEqual:v17];

      if ((v18 & 1) == 0)
      {
LABEL_7:
        sub_10010EC78(a1);
        objc_storeStrong((a1 + 504), v8[12]);
        if (*(a1 + 504))
        {
          v61 = 0;
          v62 = 0;
          v60 = 0;
          v19 = NEVirtualInterfaceCopyName();
          v20 = *(a1 + 504);
          v21 = [a1 description];
          v22 = sub_1001428D4(v8, v20, v19, &v61, &v62, &v60, 0, v21);

          if ((v22 & 1) == 0)
          {
            v43 = *(a1 + 504);
            *(a1 + 504) = 0;

            v4 = v61;
            objc_storeStrong((a1 + 512), v61);
            v2 = v62;
            objc_storeStrong((a1 + 520), v62);
            objc_storeStrong((a1 + 528), v60);
            goto LABEL_23;
          }

          v4 = v61;
          objc_storeStrong((a1 + 512), v61);
          v2 = v62;
          objc_storeStrong((a1 + 520), v62);
          objc_storeStrong((a1 + 528), v60);
          if (!*(a1 + 528))
          {
LABEL_23:

            goto LABEL_24;
          }

          v23 = *(a1 + 568);
          v2 = v2;
          v3 = v19;
          v24 = v23;
          if (v2)
          {
            v58 = v24;
            if (v24)
            {
              v59 = objc_alloc_init(NSMutableArray);
              v25 = +[NEPolicyCondition allInterfaces];
              v65 = v25;
              v26 = [NSArray arrayWithObjects:&v65 count:1];

              v57 = v3;
              v27 = [NEPolicyRouteRule routeRuleWithAction:5 forInterfaceName:v3];
              [v27 setNetworkAgentUUID:v2];
              v54 = v27;
              v64 = v27;
              v28 = [NSArray arrayWithObjects:&v64 count:1];
              v29 = [NEPolicyResult routeRules:v28];

              v53 = v29;
              v56 = v26;
              v30 = [[NEPolicy alloc] initWithOrder:10 result:v29 conditions:v26];
              objc_opt_self();
              v55 = v4;
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v31 = qword_100229408;
              v32 = sub_100159E00(v31, v58, v30);

              [v59 addObject:v32];
              v33 = [NEPolicy alloc];
              v34 = [NEPolicyResult netAgentUUID:v2];
              v35 = [NEPolicyCondition scopedInterface:v57];
              v63 = v35;
              v36 = [NSArray arrayWithObjects:&v63 count:1];
              v37 = [v33 initWithOrder:10 result:v34 conditions:v36];

              objc_opt_self();
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v38 = qword_100229408;
              v39 = v58;
              v40 = sub_100159E00(v38, v58, v37);

              [v59 addObject:v40];
              objc_opt_self();
              v41 = v57;
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v4 = v55;
              v42 = qword_100229408;
              sub_10015A52C(v42);
            }

            else
            {
              v41 = v3;
              v51 = sub_100140094();
              v52 = _NRLogIsLevelEnabled();

              if (!v52)
              {
                v59 = 0;
                v39 = v58;
                goto LABEL_20;
              }

              v56 = sub_100140094();
              _NRLogWithArgs(v56, 17, "%s called with null policyIdentifierString", "NRLinkApplyPoliciesForMASQUEProxyAgent");
              v59 = 0;
              v39 = v58;
            }

            goto LABEL_19;
          }

LABEL_28:
          v39 = v24;
          v41 = v3;
          v49 = sub_100140094();
          v50 = _NRLogIsLevelEnabled();

          if (!v50)
          {
            v59 = 0;
            goto LABEL_20;
          }

          v56 = sub_100140094();
          _NRLogWithArgs(v56, 17, "%s called with null proxyAgentUUID", "NRLinkApplyPoliciesForMASQUEProxyAgent");
          v59 = 0;
LABEL_19:

LABEL_20:
          goto LABEL_23;
        }
      }
    }
  }

LABEL_24:
}

void sub_10010EC78(void *a1)
{
  v2 = a1[64];
  if (v2)
  {
    [v2 unregisterNetworkAgent];
    v3 = a1[64];
    a1[64] = 0;
  }

  if (a1[66])
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    sub_10015A238(v4, a1[71]);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v5 = qword_100229408;
    sub_10015A52C(v5);

    nw_proxy_config_unpublish();
    v6 = a1[66];
    a1[66] = 0;

    if (qword_100229160 != -1)
    {
      dispatch_once(&qword_100229160, &stru_1001FBC40);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229160 != -1)
      {
        dispatch_once(&qword_100229160, &stru_1001FBC40);
      }

      _NRLogWithArgs(qword_100229158, 2, "%s%.30s:%-4d unregistered MASQUE proxy agent", "", "[NRDDeviceConductor unregisterProxyAgent]", 8673);
    }
  }

  v7 = a1[63];
  a1[63] = 0;

  v8 = a1[65];
  a1[65] = 0;
}

void sub_10010EE28(uint64_t a1)
{
  if (*(a1 + 488))
  {
    sub_10010EC78(a1);
    sub_100101F8C(a1);
    v6 = NEVirtualInterfaceCopyName();
    NEVirtualInterfaceInvalidate();
    v2 = *(a1 + 488);
    if (v2)
    {
      CFRelease(v2);
    }

    *(a1 + 488) = 0;
    *(a1 + 59) = 0;
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Removed catch-all interface (%@)", "", "[NRDDeviceConductor removeCatchAllInterface]", 8463, v6);
    }
  }
}

void sub_10010F970(uint64_t a1)
{
  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v6 = v4;
    if (*(a1 + 40))
    {
      v5 = "enable";
    }

    else
    {
      v5 = "disable";
    }

    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d Re-sent prefer wi-fi: %s", "", "[NRDDeviceConductor linkIsAvailable:]_block_invoke", 6103, v5);
  }
}

void sub_10010FA5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 14) == 1)
  {
    *(v1 + 52) = 0;
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v5 = v5[12];
      }

      v6 = v5;
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = v7;
      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = *(v9 + 15);
        LODWORD(v9) = *(v9 + 26);
      }

      else
      {
        v10 = 0;
      }

      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d attempting to send request %d %d ", "", "[NRDDeviceConductor linkIsAvailable:]_block_invoke_2", 6174, v10, v9);
    }

    v11 = *(a1 + 32);
    if (v11 && ((*(v11 + 15) & 1) != 0 || *(v11 + 26) == 1))
    {
      dispatch_assert_queue_V2(*(v11 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v12 = qword_1002290B8;
      v13 = v12;
      if (v12)
      {
        v14 = *(v12 + 6);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v15)
      {
        v16 = v15[7];
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        goto LABEL_19;
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v19 = qword_1002290B8;
      v20 = v19;
      v21 = v19 ? *(v19 + 12) : 0;
      v22 = v21;
      v23 = sub_10007401C(v22, 0);

      if (v23)
      {
        v24 = sub_1000EA2C8(*(a1 + 32), 2, 102);
        if (v24)
        {
          v25 = v24;
          v26 = [v24 state];

          if (v26 != 255)
          {
LABEL_19:
            v18 = *(a1 + 32);
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_10010FCFC;
            v27[3] = &unk_1001FD3C8;
            v27[4] = v18;
            sub_1000EF670(v18, 1, 1, 0, 0, v27);
          }
        }
      }
    }
  }
}

uint64_t sub_10010FCFC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 26) = 0;
  }

  return result;
}

_BYTE *sub_10010FE38(_BYTE *result)
{
  if (!result || result[12] != 1)
  {
    return result;
  }

  v1 = *(result + 30);
  if (v1)
  {
    goto LABEL_6;
  }

  v2 = result;
  v3 = objc_alloc_init(NWNetworkOfInterestManager);
  v4 = *(v2 + 30);
  *(v2 + 30) = v3;

  v5 = *(v2 + 30);
  if (v5)
  {
    v6 = *(v2 + 17);
    v7 = v5;
    [v7 setQueue:v6];

    [*(v2 + 30) setDelegate:v2];
    v1 = *(v2 + 30);
LABEL_6:

    return [v1 trackNOIAnyForInterfaceType:1 options:0];
  }

  if (qword_100229160 != -1)
  {
    dispatch_once(&qword_100229160, &stru_1001FBC40);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100229160 != -1)
    {
      dispatch_once(&qword_100229160, &stru_1001FBC40);
    }

    v8 = qword_100229158;

    return _NRLogWithArgs(v8, 17, "[[NWNetworkOfInterestManager alloc] init] failed");
  }

  return result;
}

void sub_100110508(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      if (!v5 || *(v5 + 8) != 2)
      {
        goto LABEL_9;
      }

      v7 = *(v5 + 3);
      v8 = [v7 port];
      v9 = sub_10013D308(v7, [v8 intValue], 0);

      NRTLVAddData();
      v10 = *(v5 + 4);
      v11 = *(v5 + 4);

      if (v11)
      {
        v12 = *(v5 + 4);
        NRTLVAddData();
      }

      NRTLVAdd();
      if (v10 == 1)
      {
LABEL_9:
        NRTLVAdd();
      }
    }
  }
}

void sub_100110688(uint64_t a1)
{
  if (a1)
  {
    objc_storeStrong((a1 + 576), 0);
  }
}

void sub_10011069C(uint64_t a1)
{
  if (a1)
  {
    objc_storeStrong((a1 + 600), 0);
  }
}

void sub_100110754(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 14) == 1 && *(v2 + 50) == 1)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v6 = v6[12];
      }

      v7 = v6;
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d received notification: %@", "", "[NRDDeviceConductor processAppStateChanged:]_block_invoke", 4678, *(a1 + 40));
    }

    v9 = *(a1 + 32);

    sub_100104BB4(v9);
  }
}

char *sub_100110920(char *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (!v6)
  {
    v72 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v74 = sub_1000E83DC();
      _NRLogWithArgs(v74, 17, "%s called with null nrUUID");
LABEL_18:

      v70 = 0;
      goto LABEL_13;
    }

LABEL_19:
    v70 = 0;
    goto LABEL_13;
  }

  if (!v7)
  {
    v75 = sub_1000E83DC();
    v76 = _NRLogIsLevelEnabled();

    if (v76)
    {
      v74 = sub_1000E83DC();
      _NRLogWithArgs(v74, 17, "%s called with null queue");
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v83.receiver = a1;
  v83.super_class = NRDDeviceConductor;
  v9 = objc_msgSendSuper2(&v83, "init");
  if (!v9)
  {
    v77 = sub_1000E83DC();
    v78 = _NRLogIsLevelEnabled();

    v10 = "[NRDDeviceConductor initConductorWithNRUUID:queue:]";
    if (v78)
    {
      v79 = sub_1000E83DC();
      _NRLogWithArgs(v79, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDDeviceConductor initConductorWithNRUUID:queue:]", 353);
    }

    v6 = _os_log_pack_size();
    v8 = &v82 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = __error();
    v81 = _os_log_pack_fill(v8, v6, *v80, &_mh_execute_header, "%{public}s [super init] failed");
    *v81 = 136446210;
    *(v81 + 4) = "[NRDDeviceConductor initConductorWithNRUUID:queue:]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
    goto LABEL_23;
  }

  v10 = v9;
  objc_storeStrong(v9 + 12, a2);
  objc_storeStrong(v10 + 17, a3);
  dispatch_assert_queue_V2(*(v10 + 17));
  v11 = *(v10 + 30);
  *(v10 + 30) = 0;

  v12 = objc_alloc_init(NSMutableSet);
  v13 = *(v10 + 18);
  *(v10 + 18) = v12;

  v10[14] = 0;
  v14 = objc_alloc_init(NSMutableSet);
  v15 = *(v10 + 25);
  *(v10 + 25) = v14;

  v16 = objc_alloc_init(NSMutableSet);
  v17 = *(v10 + 23);
  *(v10 + 23) = v16;

  v18 = objc_alloc_init(NSMutableSet);
  v19 = *(v10 + 26);
  *(v10 + 26) = v18;

  v20 = objc_alloc_init(NSMutableArray);
  v21 = *(v10 + 34);
  *(v10 + 34) = v20;

  v10[25] = 1;
  v10[39] = 1;
  v22 = @"Policy";
  v23 = [NSString alloc];
  v24 = [*(v10 + 12) UUIDString];
  v25 = [v23 initWithFormat:@"NRDDC-%@-%@", v24, @"Policy"];

  v26 = *(v10 + 38);
  *(v10 + 38) = v25;

  v27 = @"NetInfo";
  v28 = [NSString alloc];
  v29 = [*(v10 + 12) UUIDString];
  v30 = [v28 initWithFormat:@"NRDDC-%@-%@", v29, @"NetInfo"];

  v31 = *(v10 + 39);
  *(v10 + 39) = v30;

  v32 = @"CmpnNWDesc";
  v33 = [NSString alloc];
  v34 = [*(v10 + 12) UUIDString];
  v35 = [v33 initWithFormat:@"NRDDC-%@-%@", v34, @"CmpnNWDesc"];

  v36 = *(v10 + 40);
  *(v10 + 40) = v35;

  v37 = @"CmpnLnkMon";
  v38 = [NSString alloc];
  v39 = [*(v10 + 12) UUIDString];
  v40 = [v38 initWithFormat:@"NRDDC-%@-%@", v39, @"CmpnLnkMon"];

  v41 = *(v10 + 70);
  *(v10 + 70) = v40;

  v42 = @"flowDivert";
  v43 = [NSString alloc];
  v44 = [*(v10 + 12) UUIDString];
  v45 = [v43 initWithFormat:@"NRDDC-%@-%@", v44, @"flowDivert"];

  v46 = *(v10 + 41);
  *(v10 + 41) = v45;

  v47 = @"cmpnAgentRemoval";
  v48 = [NSString alloc];
  v49 = [*(v10 + 12) UUIDString];
  v50 = [v48 initWithFormat:@"NRDDC-%@-%@", v49, @"cmpnAgentRemoval"];

  v51 = *(v10 + 43);
  *(v10 + 43) = v50;

  v52 = @"proxyConfig";
  v53 = [NSString alloc];
  v54 = [*(v10 + 12) UUIDString];
  v55 = [v53 initWithFormat:@"NRDDC-%@-%@", v54, @"proxyConfig"];

  v56 = *(v10 + 71);
  *(v10 + 71) = v55;

  v57 = @"trafficDrop";
  v58 = [NSString alloc];
  v59 = [*(v10 + 12) UUIDString];
  v60 = [v58 initWithFormat:@"NRDDC-%@-%@", v59, @"trafficDrop"];

  v61 = *(v10 + 44);
  *(v10 + 44) = v60;

  objc_opt_self();
  if (qword_100228F50 != -1)
  {
LABEL_23:
    dispatch_once(&qword_100228F50, &stru_1001FA740);
  }

  v62 = qword_100228F48;
  v63 = *(v10 + 12);
  if (v62)
  {
    dispatch_assert_queue_V2(*(v62 + 1));
    v64 = [*(v62 + 2) objectForKeyedSubscript:v63];
    if (v64)
    {
      v65 = v64;
      v66 = _NRCopyLogObjectForNRUUID();
      v67 = _NRLogIsLevelEnabled();

      if (v67)
      {
        v68 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v68, 17, "registering uuid when already registered");
      }
    }

    else
    {
      v65 = objc_alloc_init(NSMutableDictionary);
      [*(v62 + 2) setObject:v65 forKeyedSubscript:v63];
    }
  }

  v69 = [v10 description];
  sub_1000059A8(*(v10 + 12), 1500, 0, v69);

  a1 = v10;
  v70 = a1;
LABEL_13:

  return v70;
}

void sub_100110FD4(id val)
{
  if ((*(val + 10) & 1) == 0)
  {
    v8[3] = v1;
    v8[4] = v2;
    if (*(val + 49) != 1 || _os_feature_enabled_impl())
    {
      objc_initWeak(v8, val);
      v4 = *(val + 17);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001110BC;
      block[3] = &unk_1001FD0D8;
      block[4] = val;
      v5 = v4;
      objc_copyWeak(&v7, v8);
      dispatch_async(v5, block);

      objc_destroyWeak(&v7);
      objc_destroyWeak(v8);
    }
  }
}

void sub_1001110BC(uint64_t a1)
{
  objc_opt_self();
  *(*(a1 + 32) + 10) = 1;
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001111C4;
  v3[3] = &unk_1001FC730;
  objc_copyWeak(&v4, (a1 + 40));
  sub_1000C95D8(v2, v3);

  objc_destroyWeak(&v4);
}

void sub_1001111C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 14) == 1)
  {
    v10 = WeakRetained;
    v2 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v4, 0, "%s%.30s:%-4d starting AWDL manager", "", "[NRDDeviceConductor setSupportsAWDL:]_block_invoke_2", 423);
    }

    dispatch_assert_queue_V2(v10[17]);
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

    if (v8)
    {
      v9 = v8[3];
      dispatch_assert_queue_V2(v9);

      if ((*(v8 + 36) & 1) == 0 && *(v8 + 3) != 1004)
      {
        *(v8 + 36) = 1;
        sub_10017FDF0(v8, 1);
      }
    }

    WeakRetained = v10;
  }
}

void sub_100111330(uint64_t a1)
{
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (!v2)
  {
    v72 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v74 = sub_1000E83DC();
      _NRLogWithArgs(v74, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRDDeviceConductor updateOperatingMode]", 433);
    }

    v75 = _os_log_pack_size();
    v76 = __error();
    v77 = _os_log_pack_fill(&v78 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0), v75, *v76, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v77 = 136446210;
    *(v77 + 4) = "[NRDDeviceConductor updateOperatingMode]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  v78 = v2;
  v3 = _NRCopyLogObjectForNRUUID();
  v4 = _NRLogIsLevelEnabled();

  if (v4)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = v78[18];
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d starting with operational properties: %@", "", "[NRDDeviceConductor updateOperatingMode]", 435, v6);
  }

  v7 = v78;
  if ((v78[6] & 8) == 0)
  {
    v8 = v78[18];

    if (!v8)
    {
      *(a1 + 55) = 257;
      *(a1 + 49) = 1;
      *(a1 + 58) = 1;
      *(a1 + 45) = 257;
      *(a1 + 8) = 257;
      *(a1 + 57) = *(a1 + 47);
      sub_100110FD4(a1);
      goto LABEL_69;
    }

    v9 = _NRCopyLogObjectForNRUUID();
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = v78[18];
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d retrieved operational properties: %@", "", "[NRDDeviceConductor updateOperatingMode]", 475, v12);
    }

    v13 = v78[18];
    if ([v13 proxyCapability] == 1)
    {
    }

    else
    {
      v20 = v78[18];
      v21 = [v20 proxyCapability];

      if (v21 != 2)
      {
        v55 = v78[18];
        if ([v55 bluetoothRole] == 1)
        {
        }

        else
        {
          v62 = v78[18];
          v63 = [v62 bluetoothRole];

          if (v63 != 2)
          {
            v64 = v78[18];
            if ([v64 bluetoothEndpointType] == 2)
            {
            }

            else
            {
              v65 = v78[18];
              v66 = [v65 bluetoothEndpointType];

              if (v66 != 1)
              {
                v67 = sub_100172E20(v78);
                v68 = sub_100172EF0(v78);
                v69 = [v67 compare:v68];

                if (v69 == -1)
                {
                  *(a1 + 58) = 1;
                  goto LABEL_23;
                }

                v70 = _NRCopyLogObjectForNRUUID();
                v71 = _NRLogIsLevelEnabled();

                v26 = v78;
                if (!v71)
                {
LABEL_24:
                  *(a1 + 49) = sub_100169428(v26);
                  *(a1 + 39) = sub_1000ED714(a1);
                  v27 = v78[18];
                  *(a1 + 44) = [v27 handlesLinkRecommendations];

                  v28 = v78[18];
                  if ([v28 isReachableOverWiFi])
                  {
                    v29 = *(a1 + 58);
                  }

                  else
                  {
                    v29 = 0;
                  }

                  *(a1 + 45) = v29 & 1;

                  v30 = v78[18];
                  *(a1 + 48) = [v30 allowsDirectToCloud];

                  v31 = v78[18];
                  *(a1 + 46) = [v31 proxyCapability] == 1;

                  v32 = v78[18];
                  *(a1 + 47) = [v32 proxyCapability] == 2;

                  v33 = v78[18];
                  if ([v33 isReachableOverWiFi])
                  {
                    v34 = *(a1 + 46);
                  }

                  else
                  {
                    v34 = 0;
                  }

                  *(a1 + 8) = v34 & 1;

                  *(a1 + 57) = *(a1 + 47);
                  v35 = v78[18];
                  v36 = [v35 allowedLinkSubtypes];
                  v37 = [v36 containsObject:&off_100209C38];

                  if (v37)
                  {
                    sub_100110FD4(a1);
                  }

                  v38 = v78[18];
                  v39 = [v38 allowedLinkTypes];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = v78[18];
                    v42 = [v41 allowedLinkTypes];
                    v43 = [v42 containsObject:&off_100209C50];

                    if (!v43)
                    {
LABEL_37:
                      v44 = v78[18];
                      v45 = [v44 version];

                      if (v45)
                      {
                        v46 = v78[18];
                        *(a1 + 9) = [v46 providesPhoneCallRelaySupport];
                      }

                      v47 = v78[18];
                      v48 = [v47 allowedLinkTypes];
                      if (v48)
                      {
                        v49 = v48;
                        v50 = v78[18];
                        v51 = [v50 allowedLinkTypes];
                        v52 = [v51 containsObject:&off_100209C68];

                        if (!v52)
                        {
LABEL_44:
                          objc_opt_self();
                          if (!objc_opt_class() || !objc_opt_class())
                          {
                            *(a1 + 56) = 0;
                          }

                          if (*(a1 + 47) == 1)
                          {
                            v53 = v78[18];
                            if ([v53 requiresReachability])
                            {
                              v54 = *(a1 + 49);

                              if ((v54 & 1) == 0)
                              {
                                *(a1 + 61) = 1;
                              }
                            }

                            else
                            {
                            }
                          }

                          sub_100104190(a1);
                          if (objc_opt_class() && *(a1 + 49) == 1)
                          {
                            v56 = *(a1 + 47);
                            *(a1 + 12) = v56;
                            if (v56 == 1)
                            {
                              v57 = _os_feature_enabled_impl();
                            }

                            else
                            {
                              v57 = 0;
                            }
                          }

                          else
                          {
                            v57 = 0;
                            *(a1 + 12) = 0;
                          }

                          *(a1 + 13) = v57;
                          if (*(a1 + 49) == 1)
                          {
                            v58 = _os_feature_enabled_impl();
                          }

                          else
                          {
                            v58 = 0;
                          }

                          *(a1 + 63) = v58;
                          v59 = v78[6];
                          if ((v59 & 0x20) != 0)
                          {
                            LOBYTE(v61) = 1;
                          }

                          else
                          {
                            v60 = (v59 & 0x10) != 0 || *(v78 + 8) > 0x12u;
                            v61 = (v59 >> 14) & 1 | v60;
                          }

                          *(a1 + 70) = (v78[6] & 0x1000) == 0 || (v78[6] & 0x2000) == 0 || (v61 & 1) == 0;
                          goto LABEL_69;
                        }
                      }

                      else
                      {
                      }

                      *(a1 + 56) = 1;
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                  }

                  *(a1 + 9) = 1;
                  *(a1 + 55) = 1;
                  goto LABEL_37;
                }

                v22 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v22, 17, "unable to determine link follower");
LABEL_22:

LABEL_23:
                v26 = v78;
                goto LABEL_24;
              }
            }

            v22 = v78[18];
            v24 = [v22 bluetoothEndpointType] == 2;
LABEL_18:
            v25 = v24;
            *(a1 + 58) = v25;
            goto LABEL_22;
          }
        }

        v22 = v78[18];
        v23 = [v22 bluetoothRole];
LABEL_17:
        v24 = v23 == 1;
        goto LABEL_18;
      }
    }

    v22 = v78[18];
    v23 = [v22 proxyCapability];
    goto LABEL_17;
  }

  *(a1 + 43) = 1;
  v14 = v7[18];

  if (v14)
  {
    v15 = v78[18];
    *(a1 + 46) = [v15 proxyCapability] == 1;

    v16 = v78[18];
    *(a1 + 47) = [v16 proxyCapability] == 2;
  }

  else
  {
    v17 = _NRCopyLogObjectForNRUUID();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d invalid operational properties for external device", "", "[NRDDeviceConductor updateOperatingMode]", 441);
    }
  }

LABEL_69:
}

void sub_100111C10(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 14) == 1)
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(v1 + 352));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    obj = qword_100229408;
    sub_10015A52C(obj);
  }

  else
  {
    v3 = objc_alloc_init(NSMutableArray);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v4 = *(v1 + 144);
    v5 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v36;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          v10 = [v9 proxyEndpoint];

          if (v10)
          {
            v11 = [v9 proxyEndpoint];
            v12 = [NWAddressEndpoint endpointWithCEndpoint:v11];

            [v3 addObject:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v6);
    }

    v28 = [NEPolicyResult dropWithFlags:4];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obja = v3;
    v13 = [obja countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(obja);
          }

          v19 = *(*(&v31 + 1) + 8 * j);
          if (!sub_100172C3C(NRDLocalDevice, v19))
          {
            v20 = v1;
            if ([v19 addressFamily] == 30)
            {
              v21 = 128;
            }

            else
            {
              v21 = 32;
            }

            v22 = [NEPolicyCondition flowRemoteAddress:v19 prefix:v21, v28];
            v23 = [NEPolicy alloc];
            v24 = +[NEPolicyCondition allInterfaces];
            v39[0] = v24;
            v39[1] = v22;
            v25 = [NSArray arrayWithObjects:v39 count:2];
            v26 = [v23 initWithOrder:1 result:v28 conditions:v25];

            objc_opt_self();
            if (qword_100229410 != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v1 = v20;
            v17 = qword_100229408;
            v18 = sub_100159E00(v17, *(v20 + 352), v26);
          }
        }

        v14 = [obja countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v14);
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v27 = qword_100229408;
    sub_10015A52C(v27);
  }
}

void sub_10011207C(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100113480;
  v4[3] = &unk_1001FD060;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  sub_1000C95D8(v2, v4);
}

void sub_100112154(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100113300;
  v4[3] = &unk_1001FD060;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  sub_1000C95D8(v2, v4);
}

void sub_10011222C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 14) == 1)
  {
    sub_1001033B0(v2);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    if (v3)
    {
      v4 = v3[8];

      if (v4 == 1)
      {
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v5 = qword_1002290B8;
        v6 = v5;
        if (v5)
        {
          v7 = *(v5 + 9);
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v9 = qword_1002290B8;
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 10);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v8 && v12)
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v13 = qword_1002290B8;
          v14 = v13;
          if (v13)
          {
            v15 = *(v13 + 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          v17 = [NWAddressEndpoint endpointWithHostname:v12 port:@"0"];
          v73 = v17;
          v18 = [NSArray arrayWithObjects:&v73 count:1];
          v19 = *(a1 + 32);
          if (v19)
          {
            v20 = *(v19 + 96);
          }

          else
          {
            v20 = 0;
          }

          sub_1000E6CEC(v16, v18, v8, v20);
        }
      }
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v21 = qword_1002290B8;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100112BC0;
    v69[3] = &unk_1001FD3C8;
    v69[4] = *(a1 + 32);
    sub_1000C95D8(v21, v69);

    v22 = *(a1 + 32);
    if (v22 && *(v22 + 46) == 1 && *(v22 + 49) == 1 && !*(v22 + 536))
    {
      v23 = sub_10001CB9C([NRNetInfo alloc], *(v22 + 136));
      objc_initWeak(&location, v22);
      objc_initWeak(&from, v23);
      v74 = _NSConcreteStackBlock;
      v75 = 3221225472;
      v76 = sub_100113254;
      v77 = &unk_1001FB9B0;
      objc_copyWeak(&v78, &location);
      objc_copyWeak(&v79, &from);
      v24 = &v74;
      v25 = v24;
      if (v23)
      {
        dispatch_assert_queue_V2(*(v23 + 6));
        if ((v23[10] & 1) == 0)
        {
          v26 = objc_retainBlock(v25);
          v27 = *(v23 + 7);
          *(v23 + 7) = v26;
        }

        dispatch_assert_queue_V2(*(v23 + 6));
        if ((v23[10] & 1) == 0)
        {
          objc_initWeak(&v72, v23);
          obj = nw_path_create_evaluator_for_endpoint();
          v28 = *(v23 + 6);
          newValue = _NSConcreteStackBlock;
          v81 = 3221225472;
          v82 = sub_10001DC04;
          v83 = &unk_1001FA490;
          objc_copyWeak(&v86, &v72);
          v29 = obj;
          v84 = v29;
          v85 = v23;
          nw_path_evaluator_set_update_handler();

          nw_path_evaluator_start();
          if (qword_100228ED8 != -1)
          {
            dispatch_once(&qword_100228ED8, &stru_1001FA550);
          }

          v30 = qword_100228ED0;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_100228ED8 != -1)
            {
              dispatch_once(&qword_100228ED8, &stru_1001FA550);
            }

            v32 = qword_100228ED0;
            _NRLogWithArgs(v32, 0, "%s%.30s:%-4d started evaluator: %@", "", "[NRNetInfo start]", 170, v29);
          }

          objc_storeStrong(v23 + 9, obj);
          sub_10001E128(v23);

          objc_destroyWeak(&v86);
          objc_destroyWeak(&v72);
        }
      }

      else
      {
      }

      v33 = *(v22 + 536);
      *(v22 + 536) = v23;

      objc_destroyWeak(&v79);
      objc_destroyWeak(&v78);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      v22 = *(a1 + 32);
    }

    sub_1001067E0(v22);
    v34 = *(a1 + 32);
    if (v34)
    {
      if (sub_1000ED8A4(*(a1 + 32)))
      {
        v35 = sub_100163A30(NRDLocalDevice, v34[12]);
        v36 = v35;
        if (v35)
        {
          v37 = *(v35 + 144);
        }

        else
        {
          v37 = 0;
        }

        v38 = v37;
        v39 = [v38 activeOperationalScope];

        v40 = objc_alloc_init(NRLinkDirectorRequest);
        p_isa = &v40->super.isa;
        if (v40)
        {
          v42 = 2;
          if (!v39)
          {
            v42 = 10;
          }

          v40->_type = 6;
          *&v40->_attemptImmediately = 1;
          v40->_timeout = v42;
          objc_storeStrong(&v40->_timerDescription, @"start-device-discovery");
        }

        if (v36)
        {
          v43 = v36[18];
        }

        else
        {
          v43 = 0;
        }

        v44 = v43;
        v45 = [v44 allowedLinkTypes];
        if (p_isa)
        {
          objc_storeStrong(p_isa + 2, v45);
        }

        newValue = _NSConcreteStackBlock;
        v81 = 3221225472;
        v82 = sub_10011323C;
        v83 = &unk_1001FD3C8;
        v84 = v34;
        if (p_isa)
        {
          objc_setProperty_nonatomic_copy(p_isa, v46, &newValue, 48);
        }

        sub_1000EAA20(v34, p_isa);
      }

      v47 = *(a1 + 32);
      if (v47 && *(v47 + 48) == 1 && !*(v47 + 752))
      {
        v48 = sub_100163A30(NRDLocalDevice, *(v47 + 96));
        v49 = v48;
        if (v48)
        {
          v50 = *(v48 + 144);
        }

        else
        {
          v50 = 0;
        }

        v51 = v50;
        v52 = [v51 usesTLS];

        if (v52)
        {
          v53 = *(v47 + 136);
          v54 = nw_agent_create();
          v55 = *(v47 + 752);
          *(v47 + 752) = v54;

          nw_agent_change_state();
          newValue = 0;
          v81 = 0;
          nw_agent_get_uuid();
          v56 = [[NSUUID alloc] initWithUUIDBytes:&newValue];
          v57 = *(v47 + 760);
          *(v47 + 760) = v56;

          v58 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"DTCFallbackAgent"];
          v59 = [NEPolicy alloc];
          v60 = *(v47 + 760);
          v61 = [NEPolicyResult netAgentUUID:v60];
          v62 = +[NEPolicyCondition allInterfaces];
          v74 = v62;
          v75 = v58;
          v63 = [NSArray arrayWithObjects:&v74 count:2];
          v64 = [v59 initWithOrder:10 result:v61 conditions:v63];

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v65 = qword_100229408;
          v66 = sub_100159E00(v65, *(v47 + 304), v64);

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v67 = qword_100229408;
          sub_10015A52C(v67);
        }
      }
    }
  }
}

void sub_100112B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, id a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_100112BC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 14) == 1)
  {
    v2 = sub_100163A30(NRDLocalDevice, *(v1 + 96));
    v3 = v2;
    if (!v2)
    {
      goto LABEL_60;
    }

    v4 = *(v2 + 144);

    if (!v4)
    {
      goto LABEL_60;
    }

    v5 = *(v3 + 48);
    if ((v5 & 2) == 0)
    {
      goto LABEL_60;
    }

    if ((v5 & 0x20) != 0)
    {
      LOBYTE(v7) = 1;
      if ((v5 & 0x1000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = (v5 & 0x10) != 0 || *(v3 + 16) > 0x12u;
      v7 = (v5 >> 14) & 1 | v6;
      if ((v5 & 0x1000) != 0)
      {
LABEL_13:
        if ((((*(v3 + 48) & 0x2000) != 0) & v7) != 0)
        {
          goto LABEL_60;
        }
      }
    }

    if (sub_100169428(v3))
    {
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      if (byte_100229230 != 1)
      {
        goto LABEL_60;
      }
    }

    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d creating pairing links", "", "[NRDDeviceConductor createPairingLinksIfNeeded]", 794);
    }

    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1)
    {
      v11 = v1;
      v12 = 5;
      v13 = 0;
    }

    else
    {
      v14 = *(v3 + 144);
      v15 = [v14 allowedLinkTypes];
      if (![v15 containsObject:&off_100209C50] || (v16 = *(v3 + 48), (~*(v3 + 48) & 0x82) != 0))
      {
      }

      else
      {

        if ((v16 & 0x40) == 0)
        {
          sub_1000ECF74(v1, 1u, 0);
        }
      }

      sub_1000EA6A0(v1);
      v17 = *(v3 + 144);
      v18 = [v17 allowedLinkTypes];
      v19 = [v18 containsObject:&off_100209C80];

      p_vtable = NRSCDInterfaceConfig.vtable;
      if (v19)
      {
        v21 = *(v1 + 96);
        objc_opt_self();
        v22 = sub_100172CE0(NRDLocalDevice, v21, &off_100209EF0);

        if (v22)
        {
          v23 = [v22 copyCEndpoint];
          evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();

          v25 = nw_path_evaluator_copy_path();
          v26 = _NRCopyLogObjectForNRUUID();
          v27 = _NRLogIsLevelEnabled();

          if (v27)
          {
            v28 = *(v1 + 96);
            v29 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v29, 0, "%s%.30s:%-4d path for wired endpoint %@ is %@", "", "[NRDDeviceConductor createPairingLinksIfNeeded]", 815, v22, v25);
          }

          v30 = nw_path_copy_interface();
          name = nw_interface_get_name(v30);
          if (name)
          {
            v32 = name;
            v33 = sub_1000BA648(NRLinkDirector);
            v34 = v33;
            v60 = evaluator_for_endpoint;
            if (v33)
            {
              v35 = *(v33 + 8);
            }

            else
            {
              v35 = 0;
            }

            v36 = v35;
            v62 = v22;
            v37 = [NSArray arrayWithObjects:&v62 count:1];
            v38 = [NSString stringWithUTF8String:v32];
            sub_1000E6CEC(v36, v37, v38, *(v1 + 96));

            p_vtable = (NRSCDInterfaceConfig + 24);
            evaluator_for_endpoint = v60;
          }
        }

        else
        {
          sub_1000ECF74(v1, 5u, 0);
        }
      }

      v39 = *(v3 + 144);
      v40 = [v39 allowedLinkSubtypes];
      v41 = [v40 containsObject:&off_100209C98];

      if (v41)
      {
        v42 = *(v1 + 96);
        objc_opt_self();
        v43 = sub_100172CE0((p_vtable + 37), v42, &off_100209EA8);

        if (v43)
        {
          v44 = [v43 hostname];
          objc_opt_self();
          if (qword_100228E88 != -1)
          {
            dispatch_once(&qword_100228E88, &stru_1001FA180);
          }

          v45 = qword_100228E80;
          v46 = @"62743";
          if (!v45)
          {
            v46 = 0;
          }

          v47 = v46;
          v48 = [NWAddressEndpoint endpointWithHostname:v44 port:v47];

          dispatch_assert_queue_V2(*(v1 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v49 = qword_1002290B8;
          v50 = v49;
          if (v49)
          {
            v51 = *(v49 + 6);
          }

          else
          {
            v51 = 0;
          }

          v52 = v51;

          v61 = v48;
          v53 = [NSArray arrayWithObjects:&v61 count:1];
          sub_10017E570(v52, v53, *(v1 + 96));

          if (*(v1 + 49) == 1)
          {
            sub_1000F1D90(v1, 1, 0);
          }
        }

        else
        {
          sub_1000ECF74(v1, 2u, 101);
        }
      }

      v54 = *(v3 + 144);
      v55 = [v54 allowedLinkSubtypes];
      v56 = [v55 containsObject:&off_100209CB0];

      if (v56)
      {
        sub_1000ECF74(v1, 2u, 103);
      }

      v57 = *(v3 + 144);
      v58 = [v57 allowedLinkSubtypes];
      v59 = [v58 containsObject:&off_100209CC8];

      if (!v59)
      {
        goto LABEL_60;
      }

      v11 = v1;
      v12 = 2;
      v13 = 104;
    }

    sub_1000ECF74(v11, v12, v13);
LABEL_60:
  }
}

void sub_10011323C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1 || !*(v1 + 160))
  {
    sub_10010047C(v1);
  }
}

void sub_100113254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(WeakRetained + 14) == 1 && v2 != 0)
    {
      v4 = *(WeakRetained + 67);
      if (v4 == v2 && *(WeakRetained + 68) != v4[4])
      {
        v5 = v2;
        sub_1000F5B40(WeakRetained, *(WeakRetained + 20));
        v2 = v5;
      }
    }
  }
}

void sub_100113300(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_assert_queue_V2(v2[17]);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 6);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v2 = v6[11];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v2;

  if (!v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      dispatch_assert_queue_V2(*(v8 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v9 = qword_1002290B8;
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 6);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      sub_10017E36C(v12, *(a1 + 40));
    }

    else
    {
      v12 = 0;
      sub_10017E36C(0, *(a1 + 40));
    }
  }
}

void sub_100113480(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 136));
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 6);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = sub_10017E984(v5, *(*(a1 + 32) + 96));

  if (!v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        dispatch_assert_queue_V2(*(v8 + 136));
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v9 = qword_1002290B8;
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 6);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        v7 = *(a1 + 40);
      }

      else
      {
        v12 = 0;
      }

      v14 = v7;
      v13 = [NSArray arrayWithObjects:&v14 count:1];
      sub_10017E570(v12, v13, *(*(a1 + 32) + 96));
    }
  }
}

void sub_100113628(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (*(a1 + 14))
    {
      *(a1 + 14) = 0;
      v2 = [a1 description];
      sub_1000059A8(*(a1 + 96), 1502, 0, v2);

      objc_opt_self();
      if (qword_100228F50 != -1)
      {
        dispatch_once(&qword_100228F50, &stru_1001FA740);
      }

      v3 = qword_100228F48;
      v4 = v3;
      if (v3)
      {
        v5 = *(v3 + 1);
        v6 = *(a1 + 96);
        dispatch_assert_queue_V2(v5);
        [v4[2] setObject:0 forKeyedSubscript:v6];
      }

      sub_100111C10(a1);
      v7 = *(a1 + 656);
      if (v7)
      {
        sub_10011DE24(v7);
        v8 = *(a1 + 656);
        *(a1 + 656) = 0;
      }

      v9 = *(a1 + 608);
      if (v9 && ([*(a1 + 608) cancelled] & 1) == 0)
      {
        [v9 setCancelled:1];
        [v9 setUpdateBlock:0];
        [v9 invalidateAggregateStatsTimerSource];
        [v9 reportEvent:30003];
      }

      v10 = *(a1 + 648);
      *(a1 + 648) = 0;

      v11 = *(a1 + 640);
      *(a1 + 640) = 0;

      *(a1 + 616) = 0u;
      v12 = *(a1 + 240);
      if (v12)
      {
        [v12 setDelegate:0];
        [*(a1 + 240) destroy];
        v13 = *(a1 + 240);
        *(a1 + 240) = 0;
      }

      *(a1 + 23) = 0;
      *(a1 + 19) = 0;
      *(a1 + 25) = 0;
      *(a1 + 29) = 0;
      sub_1000EF7A0(a1, 0);
      dispatch_assert_queue_V2(*(a1 + 136));
      sub_1000F1D90(a1, 0, 0xAu);
      [*(a1 + 584) cancel];
      v14 = *(a1 + 584);
      *(a1 + 584) = 0;

      [*(a1 + 576) cancel];
      v15 = *(a1 + 576);
      *(a1 + 576) = 0;

      sub_1000FA994(a1);
      v16 = *(a1 + 536);
      if (v16)
      {
        *(v16 + 10) = 1;
        if (*(v16 + 72))
        {
          nw_path_evaluator_cancel();
          v17 = *(v16 + 72);
          *(v16 + 72) = 0;
        }

        v18 = *(a1 + 536);
        *(a1 + 536) = 0;
      }

      v19 = *(a1 + 224);
      if (v19)
      {
        dispatch_assert_queue_V2(*(v19 + 48));
        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v20 = qword_100229408;
        sub_10015A238(v20, *(v19 + 72));

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v21 = qword_100229408;
        sub_10015A52C(v21);

        v22 = *(v19 + 56);
        if (v22)
        {
          if (([v22 unregisterNetworkAgent] & 1) == 0)
          {
            v23 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v25 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v25, 17, "Failed to unregister PhoneCallRelay agent");
            }
          }

          v26 = *(v19 + 56);
          *(v19 + 56) = 0;

          v27 = *(v19 + 40);
          v28 = *(v19 + 80);
          v29 = v27;
          v30 = [v19 agentUUID];
          v31 = [v30 UUIDString];
          sub_1000059A8(v29, 17003, v28, v31);
        }

        *(v19 + 14) = 0;
        v32 = *(a1 + 224);
        *(a1 + 224) = 0;
      }

      v33 = *(a1 + 232);
      if (v33)
      {
        sub_1000782D4(v33);
        v34 = *(a1 + 232);
        *(a1 + 232) = 0;
      }

      v35 = *(a1 + 424);
      if (v35)
      {
        sub_10007AE28(v35);
        v36 = *(a1 + 424);
        *(a1 + 424) = 0;
      }

      v37 = *(a1 + 480);
      if (v37)
      {
        sub_1000707D0(v37);
        v38 = *(a1 + 480);
        *(a1 + 480) = 0;
      }

      if (qword_100229138 && *(a1 + 104))
      {
        [qword_100229138 setObject:0 forKeyedSubscript:?];
      }

      if (qword_100229140 && *(a1 + 120))
      {
        [qword_100229140 setObject:0 forKeyedSubscript:?];
      }

      sub_10010EE28(a1);
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v39 = qword_1002290B8;
      sub_1000CA918(v39, 0, *(a1 + 96));

      sub_1001070B0(a1);
      v40 = *(a1 + 696);
      *(a1 + 696) = 0;

      if (*(a1 + 57) == 1)
      {
        v41 = *(a1 + 712);
        *(a1 + 712) = 0;

        v42 = *(a1 + 720);
        *(a1 + 720) = 0;

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v43 = qword_100229408;
        sub_10015A238(v43, *(a1 + 320));

        if (*(a1 + 57))
        {
          v44 = *(a1 + 704);
          *(a1 + 704) = 0;

          v45 = *(a1 + 552);
          *(a1 + 552) = 0;

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v46 = qword_100229408;
          sub_10015A238(v46, *(a1 + 312));
        }
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v47 = qword_100229408;
      sub_10015A238(v47, *(a1 + 304));

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v48 = qword_100229408;
      sub_10015A238(v48, *(a1 + 344));

      if (*(a1 + 328))
      {
        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v49 = qword_100229408;
        sub_10015A238(v49, *(a1 + 328));
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v50 = qword_100229408;
      sub_10015A238(v50, *(a1 + 568));

      if (*(a1 + 336))
      {
        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v51 = qword_100229408;
        sub_10015A238(v51, *(a1 + 336));
      }

      v52 = *(a1 + 728);
      *(a1 + 728) = 0;

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v53 = qword_100229408;
      sub_10015A238(v53, *(a1 + 744));

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v54 = qword_100229408;
      sub_10015A52C(v54);

      v55 = *(a1 + 464);
      *(a1 + 464) = 0;

      v56 = *(a1 + 456);
      if (v56)
      {
        sub_10014F1DC(v56);
        v57 = *(a1 + 456);
        *(a1 + 456) = 0;
      }

      v58 = *(a1 + 272);
      *(a1 + 272) = 0;

      v59 = *(a1 + 400);
      if (v59)
      {
        dispatch_source_cancel(v59);
        v60 = *(a1 + 400);
        *(a1 + 400) = 0;
      }

      [*(a1 + 152) removeAllObjects];
      v61 = *(a1 + 216);
      if (v61)
      {
        v62 = *(v61 + 24);
        if (v62)
        {
          dispatch_assert_queue_V2(v62);
        }

        v63 = _NRCopyLogObjectForNRUUID();
        v64 = _NRLogIsLevelEnabled();

        if (v64)
        {
          v65 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v65, 0, "%s%.30s:%-4d Cancel %@", "", "[NRDevicePreferencesManager cancel]", 77, v61);
        }

        [*(v61 + 32) removeAllObjects];
        sub_100148E4C(v61);
        [*(v61 + 40) removeAllObjects];
        sub_100149594(v61);
        v66 = *(a1 + 216);
      }

      else
      {
        v66 = 0;
      }

      *(a1 + 216) = 0;

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v67 = *(a1 + 200);
      v68 = [v67 countByEnumeratingWithState:&v84 objects:v89 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v85;
        do
        {
          for (i = 0; i != v69; i = i + 1)
          {
            if (*v85 != v70)
            {
              objc_enumerationMutation(v67);
            }

            xpc_connection_cancel(*(*(&v84 + 1) + 8 * i));
          }

          v69 = [v67 countByEnumeratingWithState:&v84 objects:v89 count:16];
        }

        while (v69);
      }

      [*(a1 + 200) removeAllObjects];
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v74 = *(a1 + 208);
      v75 = [v74 countByEnumeratingWithState:&v80 objects:v88 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v81;
        do
        {
          for (j = 0; j != v76; j = j + 1)
          {
            if (*v81 != v77)
            {
              objc_enumerationMutation(v74);
            }

            xpc_connection_cancel(*(*(&v80 + 1) + 8 * j));
          }

          v76 = [v74 countByEnumeratingWithState:&v80 objects:v88 count:16];
        }

        while (v76);
      }

      [*(a1 + 208) removeAllObjects];
      sub_1000FFA7C(a1);
      sub_100114094(a1);
    }

    else
    {
      v72 = _NRCopyLogObjectForNRUUID();
      v73 = _NRLogIsLevelEnabled();

      if (v73)
      {
        v79 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v79, 1, "%s%.30s:%-4d Skipping cancel as conductor is already disabled", "", "[NRDDeviceConductor cancelConductor]", 1427);
      }
    }
  }
}

id sub_100114094(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  v2 = [*(a1 + 144) count];
  sub_1000EC910(a1, 1013, @"%u available", v3, v4, v5, v6, v7, v2);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 144);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12) cancelWithReason:@"Cancelling all links"];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  sub_10010073C(a1, 0);
  [*(a1 + 144) removeAllObjects];
  return v2;
}

void sub_1001141F4(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  if (*(a1 + 17) != a2)
  {
    sub_1000EC910(a1, 1033, @"%d -> %d", v4, v5, v6, v7, v8, *(a1 + 17));
    *(a1 + 17) = a2;
    if (a2)
    {
      sub_1000F2504(a1, @"Device setup in progress", v9, v10, v11, v12, v13, v14, v24);
    }

    if (*(a1 + 8) == 1 && (*(a1 + 17) & 1) == 0)
    {
      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v15 = qword_1002290B8;
      v16 = v15;
      if (v15)
      {
        v17 = *(v15 + 6);
      }

      else
      {
        v17 = 0;
      }

      v25 = v17;

      v18 = v25;
      if (v25 && (v19 = v25[3], dispatch_assert_queue_V2(v19), v19, v18 = v25, *(v25 + 10) >= 1))
      {
        v20 = *(a1 + 15);

        if ((v20 & 1) == 0)
        {
          v21 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v23 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v23, 0, "%s%.30s:%-4d processing outstanding prefer Wi-Fi requests", "", "[NRDDeviceConductor setDeviceSetupInProgress:]", 2115);
          }

          [a1 preferWiFiRequestAvailable];
        }
      }

      else
      {
      }
    }
  }
}

void sub_1001143D0(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (v6)
    {
      [*(a1 + 200) addObject:v6];
    }

    else
    {
      v3 = sub_1000E83DC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = sub_1000E83DC();
        _NRLogWithArgs(v5, 17, "%s called with null connection", "[NRDDeviceConductor addDeviceMonitorConnection:]");
      }
    }
  }
}

uint64_t sub_10011447C(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Received data key: %s", "", "[NRDDeviceConductor processXPCCommNotificationForConnection:notificationDictionary:]_block_invoke", 7999, a2);
  }

  if (!strcmp(a2, kNRXPCCommNotificationTypeXPCommDictionary))
  {
    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      v12 = _CFXPCCreateCFObjectFromXPCObject();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = *(a1 + 32);
        if (v17)
        {
          v17 = v17[12];
        }

        v18 = v17;
        v11 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v11, 0, "%s%.30s:%-4d Received data: %@", "", "[NRDDeviceConductor processXPCCommNotificationForConnection:notificationDictionary:]_block_invoke", 8003, *(*(*(a1 + 40) + 8) + 40));

        goto LABEL_11;
      }
    }

    else
    {
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v11, 17, "Invalid type for key %s", a2);
LABEL_11:
      }
    }
  }

  return 1;
}

void sub_100114680(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && *(a1 + 14) == 1)
  {
    v4 = [*(a1 + 184) count];
    if (!v3 || v4)
    {
      v45 = v3;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v46 = *(a1 + 192);
      v50 = [v46 countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v50)
      {
        v49 = *v63;
        v48 = kNRXPCCommNotificationTypeXPCommDictionary;
        v47 = nrXPCKeyXPCCommNotification;
        do
        {
          v8 = 0;
          do
          {
            if (*v63 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v9 = xpc_dictionary_create(0, 0, 0);
            if (!v9)
            {
              if (qword_100229160 != -1)
              {
                dispatch_once(&qword_100229160, &stru_1001FBC40);
              }

              v33 = qword_100229158;
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (!IsLevelEnabled)
              {
                goto LABEL_49;
              }

              goto LABEL_47;
            }

            v10 = v9;
            v11 = xpc_dictionary_create(0, 0, 0);
            if (!v11)
            {
              if (qword_100229160 != -1)
              {
                dispatch_once(&qword_100229160, &stru_1001FBC40);
              }

              v35 = qword_100229158;
              v36 = _NRLogIsLevelEnabled();

              if (!v36)
              {
                goto LABEL_49;
              }

LABEL_47:
              v37 = sub_1000E83DC();
              _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
              goto LABEL_48;
            }

            v12 = v11;
            v53 = v8;
            v51 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_dictionary_set_value(v12, v48, v51);
            v52 = v12;
            xpc_dictionary_set_value(v10, v47, v12);
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v13 = *(a1 + 184);
            v14 = [v13 countByEnumeratingWithState:&v58 objects:v67 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v59;
              do
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v59 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  xpc_connection_send_message(*(*(&v58 + 1) + 8 * i), v10);
                  v18 = _NRCopyLogObjectForNRUUID();
                  v19 = _NRLogIsLevelEnabled();

                  if (v19)
                  {
                    v20 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v20, 0, "%s%.30s:%-4d sending xpcComm pending message", "", "[NRDDeviceConductor sendXPCCommDictionary:]", 8068);
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v58 objects:v67 count:16];
              }

              while (v15);
            }

            v8 = v53 + 1;
          }

          while (v53 + 1 != v50);
          v50 = [v46 countByEnumeratingWithState:&v62 objects:v68 count:16];
        }

        while (v50);
      }

      [*(a1 + 192) removeAllObjects];
      v3 = v45;
      if (v45)
      {
        v21 = xpc_dictionary_create(0, 0, 0);
        if (!v21 || (v22 = v21, (v23 = xpc_dictionary_create(0, 0, 0)) == 0))
        {
          while (1)
          {
            v42 = sub_1000E83DC();
            v43 = _NRLogIsLevelEnabled();

            if (v43)
            {
              v37 = sub_1000E83DC();
              _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
LABEL_48:
            }

LABEL_49:
            v38 = _os_log_pack_size();
            v39 = &v44 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v40 = __error();
            v41 = _os_log_pack_fill(v39, v38, *v40, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
            sub_1000F4320(v41, "nr_xpc_dictionary_create");
            sub_1000E83DC();
            _NRLogAbortWithPack();
          }
        }

        v24 = v23;
        v52 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v24, kNRXPCCommNotificationTypeXPCommDictionary, v52);
        v53 = v24;
        xpc_dictionary_set_value(v22, nrXPCKeyXPCCommNotification, v24);
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v25 = *(a1 + 184);
        v26 = [v25 countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v55;
          do
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v55 != v28)
              {
                objc_enumerationMutation(v25);
              }

              xpc_connection_send_message(*(*(&v54 + 1) + 8 * j), v22);
              v30 = _NRCopyLogObjectForNRUUID();
              v31 = _NRLogIsLevelEnabled();

              if (v31)
              {
                v32 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v32, 0, "%s%.30s:%-4d sending xpcComm message", "", "[NRDDeviceConductor sendXPCCommDictionary:]", 8082);
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v54 objects:v66 count:16];
          }

          while (v27);
        }

        v3 = v45;
      }
    }

    else
    {
      v5 = *(a1 + 192);
      if (!v5)
      {
        v6 = objc_alloc_init(NSMutableArray);
        v7 = *(a1 + 192);
        *(a1 + 192) = v6;

        v5 = *(a1 + 192);
      }

      [v5 addObject:v3];
    }
  }
}

void sub_100114D18(_BYTE *a1, int a2)
{
  if (a1 && a1[68] != a2 && a1[14] == 1 && a1[47] == 1 && a1[49] == 1)
  {
    if (qword_100229160 != -1)
    {
      dispatch_once(&qword_100229160, &stru_1001FBC40);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229160 != -1)
      {
        dispatch_once(&qword_100229160, &stru_1001FBC40);
      }

      _NRLogWithArgs(qword_100229158, 0, "%s%.30s:%-4d has non companion clients %d", "", "[NRDDeviceConductor updateHasNonCompanionClients:]", 8775, a2);
    }

    a1[68] = a2;

    sub_1000FAEC0(a1);
  }
}

void sub_100114E3C(void *a1)
{
  if (a1[4])
  {
    v2 = +[NRPairedDeviceRegistry sharedInstance];
    v3 = [v2 deviceForBluetoothID:a1[4]];
    if (!v3)
    {
      v33 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v35 = a1[5];
        if (v35)
        {
          v35 = v35[12];
        }

        v36 = v35;
        v37 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v37, 16, "%s%.30s:%-4d NanoRegistry didn't return device for %@", "", "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2", 8901, a1[6]);
      }

      v38 = a1[5];
      if (v38)
      {
        *(v38 + 11) = 0;
      }

      goto LABEL_33;
    }

    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.system.prefs" pairedDevice:v3];
    if (!v4)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = _NRLogIsLevelEnabled();

      if (v6)
      {
        v7 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v7, 16, "%s%.30s:%-4d Didn't get domain accessor for %@", "", "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2", 8909, v3);
      }

      v8 = a1[5];
      if (v8)
      {
        *(v8 + 11) = 0;
      }
    }

    v9 = [v4 copyKeyList];
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v12, 2, "%s%.30s:%-4d Perpetual standalone Meadow keySet: %@", "", "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2", 8914, v9);
    }

    v39 = 0;
    v13 = [v4 BOOLForKey:@"PerpetualMeadowStandaloneWiFiEnabled" keyExistsAndHasValidFormat:&v39];
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v16, 0, "%s%.30s:%-4d Perpetual standalone Meadow WiFi %u exists %u", "", "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2", 8919, v13, v39);
    }

    v39 = 0;
    v17 = [v4 BOOLForKey:@"PerpetualMeadowStandaloneCellularEnabled" keyExistsAndHasValidFormat:&v39];
    v18 = _NRCopyLogObjectForNRUUID();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v20, 0, "%s%.30s:%-4d Perpetual standalone Meadow cell %u exists %u", "", "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2", 8924, v17, v39);
    }

    [v4 invalidate];
    v21 = a1[5];
    if (v21)
    {
      v22 = *(v21 + 11);
      *(v21 + 11) = (v13 | v17) & 1;
      v23 = a1[5];
      if (v23)
      {
        if ((*(v23 + 11) ^ v22))
        {
          v24 = v22 & 1;
          goto LABEL_18;
        }
      }

      else if (v22)
      {
        v24 = 1;
LABEL_18:
        v25 = _NRCopyLogObjectForNRUUID();
        v26 = _NRLogIsLevelEnabled();

        if (v26)
        {
          v27 = a1[5];
          if (v27)
          {
            v27 = v27[12];
          }

          v28 = v27;
          v29 = _NRCopyLogObjectForNRUUID();
          v30 = v29;
          v31 = a1[5];
          if (v31)
          {
            v31 = *(v31 + 11) & 1;
          }

          _NRLogWithArgs(v29, 0, "%s%.30s:%-4d perpetualStandaloneMeadowEnabled(%@): %u -> %u", "", "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2", 8934, a1[6], v24, v31);
        }
      }
    }

LABEL_33:
    return;
  }

  v32 = a1[5];
  if (v32)
  {
    *(v32 + 11) = 0;
  }
}

void sub_1001152AC(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_create("com.apple.networkrelay.NanoRegistry", v1);

  if (!v2)
  {
    v4 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_1000E83DC();
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create", 196, "com.apple.networkrelay.NanoRegistry");
    }

    v7 = _os_log_pack_size();
    v8 = &v11 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v10 = 136446466;
    *(v10 + 4) = "nr_dispatch_queue_create";
    *(v10 + 12) = 2080;
    *(v10 + 14) = "com.apple.networkrelay.NanoRegistry";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  v3 = qword_100229148;
  qword_100229148 = v2;
}

void *sub_100115508(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v21.receiver = a1;
  v21.super_class = NRDIDSKeyManager;
  v1 = objc_msgSendSuper2(&v21, "init");
  if (!v1)
  {
    v8 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10011573C();
      _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDIDSKeyManager initInternal]", 98);
    }

    v11 = _os_log_pack_size();
    v12 = __error();
    v13 = _os_log_pack_fill(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, *v12, &_mh_execute_header, "%{public}s [super init] failed");
    *v13 = 136446210;
    *(v13 + 4) = "[NRDIDSKeyManager initInternal]";
    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_100003490();
  v4 = v2[2];
  v2[2] = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v2[6];
  v2[6] = v5;

  if (!v2[6])
  {
    v14 = sub_10011573C();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = sub_10011573C();
      _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.deviceRecords) != ((void*)0)", "", "[NRDIDSKeyManager initInternal]", 101);
    }

    v17 = _os_log_pack_size();
    v18 = __error();
    v19 = _os_log_pack_fill(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17, *v18, &_mh_execute_header, "%{public}s Assertion Failed: (self.deviceRecords) != ((void*)0)");
    *v19 = 136446210;
    *(v19 + 4) = "[NRDIDSKeyManager initInternal]";
LABEL_11:
    sub_10011573C();
    _NRLogAbortWithPack();
    return 0;
  }

  return v2;
}

id sub_10011573C()
{
  if (qword_100229180 != -1)
  {
    dispatch_once(&qword_100229180, &stru_1001FBD48);
  }

  v1 = qword_100229178;

  return v1;
}

void sub_100115790(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229178;
  qword_100229178 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001157D4(id a1)
{
  v1 = sub_100115508([NRDIDSKeyManager alloc]);
  v2 = qword_100229168;
  qword_100229168 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100115814(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v4 = [v3 fullIdentity];
    if (v4)
    {
      a1 = *(v4 + 3);
      if (a1)
      {
        CFRetain(*(v4 + 3));
        goto LABEL_5;
      }

      v9 = sub_10011573C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_10011573C();
        _NRLogWithArgs(v8, 17, "privateSigningKey missing from mpsFullID");
        goto LABEL_10;
      }
    }

    else
    {
      v6 = sub_10011573C();
      v7 = _NRLogIsLevelEnabled();

      if (v7)
      {
        v8 = sub_10011573C();
        _NRLogWithArgs(v8, 17, "Failed to extract fullIdentity from localPrivateIDSIdentity");
LABEL_10:
      }
    }

    a1 = 0;
  }

LABEL_5:

  return a1;
}

uint64_t sub_1001158E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v4 = [v3 publicIdentity];
    if (v4)
    {
      a1 = *(v4 + 2);
      if (a1)
      {
        CFRetain(*(v4 + 2));
        goto LABEL_5;
      }

      v9 = sub_10011573C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_10011573C();
        _NRLogWithArgs(v8, 17, "publicSigningKey missing from mpsPublicID");
        goto LABEL_10;
      }
    }

    else
    {
      v6 = sub_10011573C();
      v7 = _NRLogIsLevelEnabled();

      if (v7)
      {
        v8 = sub_10011573C();
        _NRLogWithArgs(v8, 17, "Failed to extract publicIdentity from remotePublicIDSIdentity");
LABEL_10:
      }
    }

    a1 = 0;
  }

LABEL_5:

  return a1;
}

void sub_1001159B4(uint64_t a1, int a2)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (*(a1 + 8) == 1)
    {
      if (a2)
      {
        *(a1 + 9) = 1;
      }
    }

    else
    {
      *(a1 + 8) = 1;
      if (!*(a1 + 56))
      {
        v4 = objc_alloc_init(NRAnalyticsKeyManager);
        v5 = *(a1 + 56);
        *(a1 + 56) = v4;
      }

      sub_1000059A8(0, 5500, &stru_1001FDE68, 0);
      v6 = nr_absolute_time();
      v7 = *(a1 + 56);
      if (v7)
      {
        *(v7 + 24) = v6;
      }

      if (qword_100229188 != -1)
      {
        dispatch_once(&qword_100229188, &stru_1001FBD68);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100115AE4;
      block[3] = &unk_1001FD3C8;
      block[4] = a1;
      dispatch_async(qword_100229190, block);
    }
  }
}

uint64_t sub_100115AE4(uint64_t a1)
{
  if (qword_100229188 != -1)
  {
    dispatch_once(&qword_100229188, &stru_1001FBD68);
  }

  return IDSLocalPairingGetPairingRecordsWithCompletionBlock();
}

void sub_100115B84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100115C84;
  v16[3] = &unk_1001FCE28;
  v16[4] = v11;
  v17 = v9;
  v18 = v7;
  v19 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v10;
  dispatch_async(v12, v16);
}