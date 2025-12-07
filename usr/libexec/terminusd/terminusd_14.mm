uint64_t sub_10013F3BC(IOPMAssertionID a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = IOPMAssertionRelease(a1);
  if (v2)
  {
    v3 = v2;
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "Failed to release power assertion with id %u %d", a1, v3);
      return 0;
    }
  }

  else
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 0, "%s%.30s:%-4d Successfully released power assertion with id: %u", "", "NRPowerAssertionDestroy", 1516, a1);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10013FF60(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[18];

    if (!v3)
    {
      goto LABEL_4;
    }

    v4 = v2[18];
    v5 = [v4 proxyCapability];

    if (v5 == 1)
    {
      goto LABEL_4;
    }

    v8 = v2[18];
    v9 = [v8 proxyCapability];

    if (v9 == 2)
    {
      v6 = 2;
      goto LABEL_5;
    }

    v10 = v2[18];
    v11 = [v10 bluetoothRole];

    if (v11 == 1)
    {
LABEL_4:
      v6 = 1;
    }

    else
    {
      v12 = v2[18];
      v13 = [v12 bluetoothRole];

      if (v13 == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }
  }

  else
  {
    v14 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_100140094();
      _NRLogWithArgs(v16, 17, "%s called with null localDevice", "NRLinkGetIKEv2Role");
    }

    v6 = 0;
  }

LABEL_5:

  return v6;
}

id sub_100140094()
{
  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  v1 = qword_100229370;

  return v1;
}

void sub_1001400E8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229370;
  qword_100229370 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100140C44(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v9 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

    v6 = sub_100140094();
    _NRLogWithArgs(v6, 17, "%s called with null localDevice", "NRLinkShouldConfigureCompanionProxyAgent");
    IsLevelEnabled = 0;
    goto LABEL_8;
  }

  v3 = v1[18];

  if (v3)
  {
    v4 = v2[18];
    v5 = [v4 proxyCapability];

    if (v5 == 2)
    {
      v6 = v2[18];
      if ([v6 hasCompanionDatapath])
      {
        IsLevelEnabled = 1;
      }

      else
      {
        IsLevelEnabled = sub_100169428(v2);
      }

LABEL_8:

      goto LABEL_9;
    }
  }

  IsLevelEnabled = 0;
LABEL_9:

  return IsLevelEnabled;
}

id sub_1001415A0(int a1)
{
  v2 = [NSString alloc];
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        v3 = "StartedIKE";
      }

      else if (a1 == 6)
      {
        v3 = "ConnectedIKE";
      }

      else
      {
        v3 = "ReceivedFirstIKENotify";
      }

      goto LABEL_24;
    }

    switch(a1)
    {
      case 8:
        v3 = "Ready";
        goto LABEL_24;
      case 9:
        v3 = "Suspended";
        goto LABEL_24;
      case 255:
        v3 = "Cancelled";
        goto LABEL_24;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = "Invalid";
      goto LABEL_24;
    }

    if (a1 == 1)
    {
      v3 = "Initial";
      goto LABEL_24;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 == 2)
  {
    v3 = "SentPrelude";
  }

  else if (a1 == 3)
  {
    v3 = "ReceivedPrelude";
  }

  else
  {
    v3 = "ExchangedPrelude";
  }

LABEL_24:

  return [v2 initWithUTF8String:v3];
}

void sub_1001416F4(void *a1)
{
  if (a1 && [a1 isExternalDeviceLink])
  {
    if ([a1 virtualInterface])
    {
      [a1 virtualInterface];
      v2 = NEVirtualInterfaceCopyName();
      v3 = socket(30, 2, 0);
      if (v3 < 0)
      {
        if (qword_100229378 != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229378 != -1)
          {
            dispatch_once(&qword_100229378, &stru_1001FC6A0);
          }

          _NRLogWithArgs(qword_100229370, 17, "Failed to create socket");
        }

        goto LABEL_52;
      }

      LODWORD(v4) = v3;
      v22 = 0u;
      v23 = 0u;
      v5 = [v2 UTF8String];
      if (v5)
      {
        LOBYTE(v22) = *v5;
        if (v22)
        {
          BYTE1(v22) = v5[1];
          if (BYTE1(v22))
          {
            BYTE2(v22) = v5[2];
            if (BYTE2(v22))
            {
              BYTE3(v22) = v5[3];
              if (BYTE3(v22))
              {
                BYTE4(v22) = v5[4];
                if (BYTE4(v22))
                {
                  BYTE5(v22) = v5[5];
                  if (BYTE5(v22))
                  {
                    BYTE6(v22) = v5[6];
                    if (BYTE6(v22))
                    {
                      BYTE7(v22) = v5[7];
                      if (BYTE7(v22))
                      {
                        BYTE8(v22) = v5[8];
                        if (BYTE8(v22))
                        {
                          BYTE9(v22) = v5[9];
                          if (BYTE9(v22))
                          {
                            BYTE10(v22) = v5[10];
                            if (BYTE10(v22))
                            {
                              BYTE11(v22) = v5[11];
                              if (BYTE11(v22))
                              {
                                BYTE12(v22) = v5[12];
                                if (BYTE12(v22))
                                {
                                  BYTE13(v22) = v5[13];
                                  if (BYTE13(v22))
                                  {
                                    BYTE14(v22) = v5[14];
                                    if (BYTE14(v22))
                                    {
                                      HIBYTE(v22) = 0;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        LODWORD(v23) = 1;
        if (ioctl(v4, 0x8020695FuLL, &v22) < 0)
        {
          v10 = __error();
          v11 = *v10;
          if (*v10 == 6)
          {
            if (strerror_r(6, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_100229378 != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v12 = sub_100140094();
              _NRLogWithArgs(v12, 16, "%s%.30s:%-4d Failed to set allow multicast flag for interface %s: [%d] %s", "", "-[NRLink setAllowMulticastFlagIfNeeded]", 705, [v2 UTF8String], 6, __strerrbuf);
            }
          }

          else
          {
            if (strerror_r(*v10, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_100229378 != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            if (_NRLogIsLevelEnabled())
            {
              v13 = sub_100140094();
              _NRLogWithArgs(v13, 17, "Failed to set allow multicast flag for interface %s: [%d] %s", [v2 UTF8String], v11, __strerrbuf);
            }
          }

          goto LABEL_51;
        }

        v6 = &qword_100229000;
        if (qword_100229378 == -1)
        {
LABEL_24:
          if (_NRLogIsLevelEnabled())
          {
            if (v6[111] != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Set allow multicast flag on interface %@", "", "[NRLink setAllowMulticastFlagIfNeeded]", 707, v2);
          }

LABEL_51:
          close(v4);
LABEL_52:

          return;
        }
      }

      else
      {
        v14 = sub_100140094();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v6 = "_strict_strlcpy";
        if (IsLevelEnabled)
        {
          v16 = sub_100140094();
          _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
        }

        v2 = _os_log_pack_size();
        v4 = &v19 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = __error();
        v18 = _os_log_pack_fill(v4, v2, *v17, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
        *v18 = 136446210;
        *(v18 + 4) = "_strict_strlcpy";
        sub_100140094();
        _NRLogAbortWithPack();
      }

      dispatch_once(&qword_100229378, &stru_1001FC6A0);
      goto LABEL_24;
    }

    v7 = _NRCopyLogObjectForNRUUID();
    v8 = _NRLogIsLevelEnabled();

    if (v8)
    {
      v20 = _NRCopyLogObjectForNRUUID();
      v9 = [a1 copyDescription];
      _NRLogWithArgs(v20, 0, "%s%.30s:%-4d %@: Not setting allow multicast flag on a link with no interface", "", "[NRLink setAllowMulticastFlagIfNeeded]", 688, v9);
    }
  }
}

uint64_t sub_1001428D4(void *a1, void *a2, void *a3, id *a4, id *a5, id *a6, id *a7, void *a8)
{
  v151 = a1;
  v14 = a2;
  v149 = a3;
  v150 = a8;
  v152 = 0uLL;
  v153 = 0;
  if ([v14 length] > 0x11)
  {
    location = a6;
    [v14 getBytes:&v152 length:18];
    if (sub_1001655D8(v151))
    {
      v16 = v151;
      v17 = v14;
      v142 = v150;
      v158 = 0uLL;
      if (v16)
      {
        v18 = v16[3];
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = v17;
      v159 = 0uLL;
      v160 = 0;
      v146 = v20;
      if ([v20 length] <= 0x11)
      {
        v29 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v31 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v31, 17, "Insufficient bytes from proxy payload");
        }

        if (v16)
        {
          v32 = v16[3];
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        v34 = _NRCopyLogObjectForNRUUID();
        v35 = _NRLogIsLevelEnabled();

        if (!v35)
        {
          v69 = 0;
          v145 = 0;
          v15 = 0;
LABEL_181:

          goto LABEL_182;
        }

        if (v16)
        {
          v36 = v16[3];
        }

        else
        {
          v36 = 0;
        }

        v141 = v36;
        obj = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(obj, 17, "%@ Failed to parse privateNotifyProxyPayload", v142);
        v140 = 0;
      }

      else
      {
        [v146 getBytes:&v159 length:18];
        v161 = 0;
        v162 = &v161;
        v163 = 0x3032000000;
        v164 = sub_100143EB0;
        v165 = sub_100143EC0;
        v166 = 0;
        *&v154 = 0;
        *(&v154 + 1) = &v154;
        *&v155 = 0x3032000000;
        *(&v155 + 1) = sub_100143EB0;
        *&v156 = sub_100143EC0;
        *(&v156 + 1) = 0;
        if ([v146 length] >= 0x15)
        {
          v21 = [v146 subdataWithRange:{18, objc_msgSend(v146, "length") - 18}];
          v167.i64[0] = _NSConcreteStackBlock;
          v167.i64[1] = 3221225472;
          v168 = sub_100143EC8;
          v169 = &unk_1001FCF58;
          v170 = &v154;
          v171 = &v161;
          NRTLVParse();
        }

        v145 = *(*(&v154 + 1) + 40);
        _Block_object_dispose(&v154, 8);

        v158 = v159;
        v22 = v160;
        v23 = v162[5];
        if (v23)
        {
          v24 = v23;
        }

        v140 = v23;
        _Block_object_dispose(&v161, 8);

        v25 = __rev16(v22);
        if ((!v22 || (vmaxv_u16(vmovn_s32(vtstq_s32(v158, v158))) & 1) == 0) && !v23)
        {
          if (v16)
          {
            v126 = v16[3];
          }

          else
          {
            v126 = 0;
          }

          v127 = v126;
          v128 = _NRCopyLogObjectForNRUUID();
          v129 = _NRLogIsLevelEnabled();

          if (!v129)
          {
            v69 = 0;
            v15 = 0;
            goto LABEL_181;
          }

          if (v16)
          {
            v130 = v16[3];
          }

          else
          {
            v130 = 0;
          }

          v141 = v130;
          obja = _NRCopyLogObjectForNRUUID();
          IPv6AddrString = createIPv6AddrString();
          _NRLogWithArgs(obja, 17, "%@ Found invalid ipv6 addr %@.%u in privateNotifyProxyPayload", v142, IPv6AddrString, v25);

          v140 = 0;
          v15 = 0;

          goto LABEL_179;
        }

        if (v145)
        {
          if (vmaxv_u16(vmovn_s32(vtstq_s32(v158, v158))))
          {
            v141 = createIPv6AddrString();
            [v141 UTF8String];
          }

          else if (v23)
          {
            v141 = [v23 hostname];
            v70 = [v23 port];
            [v70 intValue];

            [v141 UTF8String];
          }

          else
          {
            v141 = 0;
            [0 UTF8String];
          }

          obj = nw_endpoint_create_host_with_numeric_port();
          if (!obj)
          {
            if (v16)
            {
              v94 = v16[3];
            }

            else
            {
              v94 = 0;
            }

            v95 = v94;
            v96 = _NRCopyLogObjectForNRUUID();
            v97 = _NRLogIsLevelEnabled();

            if (!v97)
            {
              v15 = 0;

LABEL_179:
LABEL_180:
              v69 = v140;
              goto LABEL_181;
            }

            if (v16)
            {
              v98 = v16[3];
            }

            else
            {
              v98 = 0;
            }

            v138 = v98;
            masque = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(masque, 17, "%@ Could not create proxy endpoint", v142);
            v15 = 0;
            goto LABEL_177;
          }

          if (a7)
          {
            objc_storeStrong(a7, obj);
          }

          v138 = nw_array_create();
          masque = nw_proxy_hop_create_masque();
          nw_proxy_hop_set_supports_raw_ip();
          nw_proxy_hop_set_supports_l4s();
          [v145 bytes];
          [v145 length];
          nw_proxy_hop_set_server_raw_public_key();
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v75 = qword_1002290B8;
          v76 = v75;
          if (v75)
          {
            v77 = *(v75 + 15);
          }

          else
          {
            v77 = 0;
          }

          v78 = v77;
          nw_proxy_hop_set_client_identity_reference();

          nw_proxy_hop_set_client_identity_is_raw_public_key();
          nw_proxy_hop_add_extra_header();
          nw_proxy_hop_add_extra_header();
          nw_proxy_hop_add_extra_header();
          if (v16)
          {
            v79 = v16[18];
          }

          else
          {
            v79 = 0;
          }

          v80 = v79;
          v81 = [v80 proxyProviderCriteria];
          v82 = [v81 excludeClientApplication];

          if ((v82 & 1) == 0)
          {
            nw_proxy_hop_add_extra_header();
          }

          if (v16)
          {
            v83 = v16[18];
          }

          else
          {
            v83 = 0;
          }

          v84 = v83;
          v85 = [v84 proxyProviderCriteria];
          v86 = [v85 allowsListenerClients];

          if (v86)
          {
            nw_proxy_hop_set_supports_udp_listen();
          }

          if (v16)
          {
            v87 = v16[18];
          }

          else
          {
            v87 = 0;
          }

          v88 = v87;
          v89 = [v88 proxyProviderCriteria];
          v90 = [v89 allowsDemuxForwarding];

          if (v90)
          {
            nw_proxy_hop_set_enable_demux();
          }

          nw_proxy_hop_add_extra_header();
          if (v16)
          {
            v91 = v16[18];
          }

          else
          {
            v91 = 0;
          }

          v92 = v91;
          v93 = [v92 proxyProviderCriteria];
          if ([v93 hasProxyCriteriaAssigningTokens])
          {

LABEL_125:
            nw_proxy_hop_add_token_header_with_agent_type();
            goto LABEL_138;
          }

          if (sub_100169428(v16) && v16)
          {
            v99 = (v16[6] & 4) == 0;

            if (!v99)
            {
              goto LABEL_125;
            }
          }

          else
          {
          }

LABEL_138:
          nw_proxy_hop_set_masque_version();
          if (sub_100169428(v16))
          {
            nw_proxy_hop_set_idle_timeout();
            nw_proxy_hop_disable_keepalives();
          }

          if (sub_100169428(v16))
          {
            nw_proxy_hop_set_ignore_path_errors();
          }

          nw_array_append();
          default_privacy_proxy = nw_proxy_config_create_default_privacy_proxy();
          if (default_privacy_proxy)
          {
            v101 = objc_alloc_init(NSMutableSet);
            [v101 addObjectsFromArray:&off_10020A108];
            if (v141)
            {
              [v101 addObject:v141];
            }

            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            v102 = v101;
            v103 = [v102 countByEnumeratingWithState:&v154 objects:&v161 count:16];
            if (v103)
            {
              v104 = *v155;
              do
              {
                for (i = 0; i != v103; i = i + 1)
                {
                  if (*v155 != v104)
                  {
                    objc_enumerationMutation(v102);
                  }

                  nw_proxy_config_add_excluded_domain(default_privacy_proxy, [*(*(&v154 + 1) + 8 * i) UTF8String]);
                }

                v103 = [v102 countByEnumeratingWithState:&v154 objects:&v161 count:16];
              }

              while (v103);
            }

            nw_proxy_config_set_is_privacy_proxy();
            nw_proxy_config_set_is_companion_proxy();
            if (sub_100169428(v16))
            {
              nw_proxy_config_set_prohibit_direct();
            }

            v137 = objc_alloc_init(NSUUID);
            v167 = 0uLL;
            [v137 getUUIDBytes:&v167];
            nw_proxy_config_set_identifier();
            v15 = nw_proxy_config_publish();
            if (v16)
            {
              v106 = v16[3];
            }

            else
            {
              v106 = 0;
            }

            v107 = v106;
            v108 = _NRCopyLogObjectForNRUUID();
            if (v15)
            {
              v109 = _NRLogIsLevelEnabled();

              if (v109)
              {
                if (v16)
                {
                  v110 = v16[3];
                }

                else
                {
                  v110 = 0;
                }

                v111 = v110;
                v112 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v112, 0, "%s%.30s:%-4d %@ Registered MASQUE proxy agent %@\n", "", "NRLinkConfigureMASQUEProxyAgent", 1585, v142, v137);
              }

              if (location)
              {
                objc_storeStrong(location, default_privacy_proxy);
              }

              v113 = v137;
              v114 = *a5;
              *a5 = v113;
              goto LABEL_174;
            }

            v120 = _NRLogIsLevelEnabled();

            if (v120)
            {
              if (v16)
              {
                v121 = v16[3];
              }

              else
              {
                v121 = 0;
              }

              v114 = v121;
              v122 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v122, 17, "%@ Failed to register proxy agent %@\n", v142, v137);

LABEL_174:
            }
          }

          else
          {
            if (v16)
            {
              v115 = v16[3];
            }

            else
            {
              v115 = 0;
            }

            v116 = v115;
            v117 = _NRCopyLogObjectForNRUUID();
            v118 = _NRLogIsLevelEnabled();

            if (!v118)
            {
              v15 = 0;
              goto LABEL_176;
            }

            if (v16)
            {
              v119 = v16[3];
            }

            else
            {
              v119 = 0;
            }

            v102 = v119;
            v137 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v137, 17, "%@ Could not create MASQUE proxy config", v142);
            v15 = 0;
          }

LABEL_176:
LABEL_177:

          goto LABEL_178;
        }

        if (v16)
        {
          v132 = v16[3];
        }

        else
        {
          v132 = 0;
        }

        v133 = v132;
        v134 = _NRCopyLogObjectForNRUUID();
        v135 = _NRLogIsLevelEnabled();

        if (!v135)
        {
          v145 = 0;
          v15 = 0;
          goto LABEL_180;
        }

        if (v16)
        {
          v136 = v16[3];
        }

        else
        {
          v136 = 0;
        }

        v141 = v136;
        obj = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(obj, 17, "%@ proxyServerPublicKey not found in the privateNotifyProxyPayload", v142);
      }

      v145 = 0;
      v15 = 0;
LABEL_178:

      goto LABEL_179;
    }

    *&v154 = 0;
    *(&v154 + 1) = &v154;
    *&v155 = 0x2020000000;
    BYTE8(v155) = 0;
    v161 = 0;
    v162 = &v161;
    v163 = 0x3032000000;
    v164 = sub_100143EB0;
    v165 = sub_100143EC0;
    v166 = 0;
    if ([v14 length] >= 0x15)
    {
      v26 = [v14 subdataWithRange:{18, objc_msgSend(v14, "length") - 18}];
      NRTLVParse();
    }

    v167 = v152;
    v27 = bswap32(v153) >> 16;
    if (vmaxv_u16(vmovn_s32(vtstq_s32(v167, v167))))
    {
      v28 = createIPv6AddrString();
      if (!v149)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v37 = v162[5];
      if (v37)
      {
        v28 = [v37 hostname];
        v38 = [v162[5] port];
        LOWORD(v27) = [v38 intValue];

        if (!v149)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v28 = 0;
        if (!v149)
        {
          goto LABEL_40;
        }
      }
    }

    if ([v28 hasPrefix:@"fe80"])
    {
      v39 = [[NSString alloc] initWithFormat:@"%@%%%@", v28, v149];

      v28 = v39;
    }

LABEL_40:
    if (!v27)
    {
      v124 = sub_100140094();
      v125 = _NRLogIsLevelEnabled();

      if (!v125)
      {
        v15 = 0;
        goto LABEL_100;
      }

      v43 = sub_100140094();
      v147 = createIPv6AddrString();
      _NRLogWithArgs(v43, 17, "%@ Received bad proxy config %@.%u", v150, v147, 0);
      v15 = 0;
LABEL_99:

LABEL_100:
      _Block_object_dispose(&v161, 8);

      _Block_object_dispose(&v154, 8);
      goto LABEL_182;
    }

    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    v40 = qword_100229370;
    v41 = _NRLogIsLevelEnabled();

    if (v41)
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      v42 = qword_100229370;
      _NRLogWithArgs(v42, 0, "%s%.30s:%-4d %@ Registering proxy config %@.%u", "", "NRLinkConfigureProxyAgent", 1676, v150, v28, v27);
    }

    v43 = objc_alloc_init(NSMutableSet);
    [v43 addObjectsFromArray:&off_10020A108];
    v147 = sub_100172FC0(v151);
    if (v147)
    {
      [v43 addObjectsFromArray:v147];
    }

    if (v28)
    {
      [v43 addObject:v28];
    }

    v44 = objc_alloc_init(NSMutableDictionary);
    [v44 setObject:v28 forKeyedSubscript:kSCPropNetProxiesSOCKSProxy];
    v45 = [NSNumber numberWithUnsignedShort:v27];
    [v44 setObject:v45 forKeyedSubscript:kSCPropNetProxiesSOCKSPort];

    [v44 setObject:&off_100209DE8 forKeyedSubscript:kSCPropNetProxiesSOCKSEnable];
    v46 = [v43 allObjects];
    [v44 setObject:v46 forKeyedSubscript:kSCPropNetProxiesExceptionsList];

    [v44 setObject:@"shoes" forKeyedSubscript:@"kCFStreamPropertySOCKSVersion"];
    if (_os_feature_enabled_impl() && *(*(&v154 + 1) + 24) == 1)
    {
      [v44 setObject:&off_100209DE8 forKeyedSubscript:@"SHOESUDPAssociate"];
    }

    if (v151 && (v151[6] & 4) != 0)
    {
      [v44 setObject:@"com.apple.datausage.alt-account" forKeyedSubscript:@"SHOESFixedBundleID"];
    }

    if (a7)
    {
      v47 = [NSNumber numberWithUnsignedShort:v27];
      v48 = [v47 stringValue];
      v49 = [NWAddressEndpoint endpointWithHostname:v28 port:v48];
      v50 = [v49 copyCEndpoint];
      v51 = *a7;
      *a7 = v50;
    }

    v52 = [[NEProxyConfigurationNetworkAgent alloc] initWithProxyConfiguration:v44];
    [v52 setActive:1];
    v53 = +[NSUUID UUID];
    [v52 setAgentUUID:v53];

    [v52 setVoluntary:0];
    [v52 setUserActivated:0];
    [v52 setKernelActivated:0];
    v54 = [v52 agentUUID];
    v55 = *a5;
    *a5 = v54;

    v56 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v57 = *a4;
    *a4 = v56;

    if (*a4)
    {
      if (([*a4 registerNetworkAgent:v52] & 1) == 0)
      {
        if (qword_100229378 != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        v68 = qword_100229370;
        v15 = _NRLogIsLevelEnabled();

        if (!v15)
        {
          goto LABEL_98;
        }

        if (qword_100229378 != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        v65 = qword_100229370;
        _NRLogWithArgs(v65, 17, "%@ Failed to register proxy agent", v150);
        goto LABEL_82;
      }

      v58 = v151;
      if (v151)
      {
        v58 = v151[18];
      }

      v59 = v58;
      v60 = [v59 hasPoliciesForProxyCriteria];

      if ((v60 & 1) == 0)
      {
        v61 = v151;
        if (v151)
        {
          v61 = v151[18];
        }

        v62 = v61;
        if ([v62 hasCompanionDatapath])
        {
          v63 = [*a4 addNetworkAgentToInterfaceNamed:v149];

          if ((v63 & 1) == 0)
          {
            v64 = sub_100140094();
            v15 = _NRLogIsLevelEnabled();

            if (v15)
            {
              v65 = sub_100140094();
              _NRLogWithArgs(v65, 17, "%@ Failed to add proxy agent to %@", v150, v149);
LABEL_82:
              v15 = 0;
LABEL_96:

              goto LABEL_98;
            }

            goto LABEL_98;
          }
        }

        else
        {
        }
      }

      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      v71 = qword_100229370;
      v72 = _NRLogIsLevelEnabled();

      if (!v72)
      {
        v15 = 1;
        goto LABEL_98;
      }

      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      v65 = qword_100229370;
      v73 = [v52 agentUUID];
      _NRLogWithArgs(v65, 0, "%s%.30s:%-4d %@ Set up proxy agent %@ for configuration: %@", "", "NRLinkConfigureProxyAgent", 1734, v150, v73, v44);

      v15 = 1;
      goto LABEL_96;
    }

    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    v66 = qword_100229370;
    v67 = _NRLogIsLevelEnabled();

    if (v67)
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      v65 = qword_100229370;
      _NRLogWithArgs(v65, 17, "%@ Failed to create proxy agent registration", v150);
      goto LABEL_82;
    }

    v15 = 0;
LABEL_98:

    goto LABEL_99;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs(qword_100229370, 17, "%@ Insufficient bytes from proxy payload", v150);
    v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_182:

  return v15;
}

void sub_100143E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100143EB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100143EC8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __rev16(*(a2 + 1));
  v4 = *a2;
  if (v4 != 3)
  {
    if (v4 == 2)
    {
      if (*(a2 + 1))
      {
        v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
        v6 = *(*(a1 + 32) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;
      }
    }

    return 1;
  }

  if (*(a2 + 1))
  {
    v8 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
    v9 = sub_10013D760(v8, 1, 0, 0);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    return 1;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs(qword_100229370, 17, "invalid tlv length for ProxyServerEndpoint");
    return 0;
  }

  return result;
}

uint64_t sub_100144010(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 != 3)
  {
    if (v3 == 1)
    {
      if (!*(a2 + 1))
      {
        v10 = *(*(a1 + 32) + 8);
        result = 1;
        *(v10 + 24) = 1;
        return result;
      }

      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_100229378 != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        _NRLogWithArgs(qword_100229370, 17, "invalid tlv length for SHOESUDPAssociate");
        return 0;
      }

      return result;
    }

    return 1;
  }

  if (*(a2 + 1))
  {
    v2 = *(a2 + 1);
    v6 = [[NSData alloc] initWithBytes:a2 + 3 length:__rev16(v2)];
    v7 = sub_10013D760(v6, 1, 0, 0);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    return 1;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs(qword_100229370, 17, "invalid tlv length for ProxyServerEndpoint");
    return 0;
  }

  return result;
}

uint64_t sub_100144910(uint64_t a1, void *a2)
{
  v2 = a2;
  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying NEVirtualInterfaceCreateNexus()", "", "NRLinkVirtualInterfaceCreate", 2298);
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying NEVirtualInterfaceCreateNexus()", "", "NRLinkVirtualInterfaceCreate", 2298);
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying NEVirtualInterfaceCreateNexus()", "", "NRLinkVirtualInterfaceCreate", 2298);
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying NEVirtualInterfaceCreateNexus()", "", "NRLinkVirtualInterfaceCreate", 2298);
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
    goto LABEL_37;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying NEVirtualInterfaceCreateNexus()", "", "NRLinkVirtualInterfaceCreate", 2298);
  }

  Nexus = NEVirtualInterfaceCreateNexus();
  if (Nexus)
  {
LABEL_37:
    v4 = Nexus;
  }

  else
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying NEVirtualInterfaceCreateNexus()", "", "NRLinkVirtualInterfaceCreate", 2298);
    }

    v4 = 0;
  }

  return v4;
}

void sub_100145178(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100140094();
      v9 = "";
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@ not deallocated after 10s, likely leak");
    }

    sub_10013C2A8(*(a1 + 32), @"Leak", @"NEIKEv2Session", 0, 0, v5, v6, v7, v9);
    WeakRetained = v10;
  }
}

uint64_t sub_100145824(uint64_t a1)
{
  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    _NRLogWithArgs(qword_100229370, 1, "%s%.30s:%-4d Attempting to get Nexus UUID for %@", "", "[NRLink(NRLinkProtected) invalidateLink]_block_invoke", 1050, *(a1 + 32));
  }

  v2 = sub_10013BCD8(*(a1 + 32));
  v3 = v2;
  if (v2)
  {
    v12 = v2;
    if ([v2 isEqual:*(a1 + 40)])
    {
      v4 = sub_100140094();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = sub_100140094();
        v11 = "";
        _NRLogWithArgs(v9, 16, "%s%.30s:%-4d UUID did not change for %@ after 10s, likely interface leak (%@)");
      }

      sub_10013C2A8(*(a1 + 48), @"Leak", @"Interface", 0, 0, v6, v7, v8, v11);
      goto LABEL_15;
    }

    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    v2 = _NRLogIsLevelEnabled();
    v3 = v12;
    if (v2)
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
        v3 = v12;
      }

      v2 = _NRLogWithArgs(qword_100229370, 1, "%s%.30s:%-4d UUID changed for %@ (old %@, new %@), no interface leak", "", "[NRLink(NRLinkProtected) invalidateLink]_block_invoke", 1058, *(a1 + 32), *(a1 + 40), v3);
LABEL_15:
      v3 = v12;
    }
  }

  return _objc_release_x1(v2, v3);
}

void sub_100145ACC(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.classD"];
  v2 = qword_1002292E0;
  qword_1002292E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100145B14(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.classC"];
  v2 = qword_1002292F0;
  qword_1002292F0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145B5C()
{
  if (qword_100229308 != -1)
  {
    dispatch_once(&qword_100229308, &stru_1001FC598);
  }

  v1 = qword_100229300;

  return v1;
}

void sub_100145BB0(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.classA"];
  v2 = qword_100229300;
  qword_100229300 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145BF8()
{
  if (qword_100229318 != -1)
  {
    dispatch_once(&qword_100229318, &stru_1001FC5B8);
  }

  v1 = qword_100229310;

  return v1;
}

void sub_100145C4C(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.ids"];
  v2 = qword_100229310;
  qword_100229310 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145C94()
{
  if (qword_100229328 != -1)
  {
    dispatch_once(&qword_100229328, &stru_1001FC5D8);
  }

  v1 = qword_100229320;

  return v1;
}

void sub_100145CE8(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.oobk"];
  v2 = qword_100229320;
  qword_100229320 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100145D30(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.control"];
  v2 = qword_100229330;
  qword_100229330 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145D78()
{
  if (qword_100229348 != -1)
  {
    dispatch_once(&qword_100229348, &stru_1001FC618);
  }

  v1 = qword_100229340;

  return v1;
}

void sub_100145DCC(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.auth.saltedPin"];
  v2 = qword_100229340;
  qword_100229340 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145E14()
{
  if (qword_100229358 != -1)
  {
    dispatch_once(&qword_100229358, &stru_1001FC638);
  }

  v1 = qword_100229350;

  return v1;
}

void sub_100145E68(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.auth.randomKey"];
  v2 = qword_100229350;
  qword_100229350 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100145EB0()
{
  if (qword_100229368 != -1)
  {
    dispatch_once(&qword_100229368, &stru_1001FC658);
  }

  v1 = qword_100229360;

  return v1;
}

void sub_100145F04(id a1)
{
  v1 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyIDString:@"com.apple.networkrelay.companionlink.pairing.auth.previousPairingKey"];
  v2 = qword_100229360;
  qword_100229360 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100145F4C(int8x16_t *a1)
{
  v6 = *a1;
  v1 = veor_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v6.i32[0] = v1.i32[0] ^ v1.i32[1];
  v2 = [[NSData alloc] initWithBytes:&v6 length:16];
  v3 = [v2 base64EncodedStringWithOptions:{0, v6.i64[0]}];
  v4 = [v3 substringToIndex:6];

  return v4;
}

id sub_100146010(void *a1)
{
  v1 = a1;
  if ([v1 length] > 0x11)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_100143EB0;
    v9 = sub_100143EC0;
    v10 = 0;
    if ([v1 length] >= 0x15)
    {
      v3 = [v1 subdataWithRange:{18, objc_msgSend(v1, "length") - 18}];
      NRTLVParse();
    }

    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229378 != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      _NRLogWithArgs(qword_100229370, 17, "%@ Insufficient bytes from proxy payload", v1);
    }

    v2 = 0;
  }

  return v2;
}

void sub_1001461C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001461E0(uint64_t a1, uint64_t a2)
{
  if (*a2 == 4)
  {
    v3 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
    v4 = [[NRDeviceProxyProviderCriteria alloc] initWithReceivedData:v3];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

id sub_100146274(char a1)
{
  v2 = objc_alloc_init(NEIKEv2IKESAConfiguration);
  [v2 setAllowRedirect:0];
  [v2 setDisableSwitchToNATTPorts:1];
  [v2 setNonceSize:32];
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
    v3 = 1280;
  }

  else
  {
    v3 = 1400;
  }

  [v2 setMaximumPacketSize:v3];
  [v2 setStrictNonceSizeChecks:1];

  v4 = objc_alloc_init(NEIKEv2IKESAProposal);
  v5 = sub_10014658C();
  [v4 setEncryptionProtocols:v5];

  v6 = [[NEIKEv2PRFProtocol alloc] initWithType:7];
  v18 = v6;
  v7 = [NSArray arrayWithObjects:&v18 count:1];

  [v4 setPrfProtocols:v7];
  v8 = [[NEIKEv2KEMProtocol alloc] initWithMethod:32];
  v18 = v8;
  v9 = [[NEIKEv2KEMProtocol alloc] initWithMethod:31];
  v19 = v9;
  v10 = [NSArray arrayWithObjects:&v18 count:2];

  [v4 setKemProtocols:v10];
  v11 = [[NEIKEv2KEMProtocol alloc] initWithMethod:37];
  v12 = v11;
  if (a1)
  {
    v20 = v11;
    v21 = &off_100209E00;
    v13 = [NSArray arrayWithObjects:&v20 count:1];
    v18 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v21 count:1];
  }

  else
  {
    if (!_os_feature_enabled_impl())
    {
      v14 = 0;
      goto LABEL_12;
    }

    v20 = &off_100209E00;
    v18 = v12;
    v13 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
    v19 = v13;
    v15 = [NSArray arrayWithObjects:&v18 count:2];
    v21 = v15;
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  }

LABEL_12:
  [v4 setAdditionalKEMProtocols:v14];

  v18 = v4;
  v16 = [NSArray arrayWithObjects:&v18 count:1];

  [v2 setProposals:v16];
  [v2 setRequestChildlessSA:1];
  return v2;
}

uint64_t sub_10014658C()
{
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  _NRIsAppleInternal();
  v1 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionType:5];
  v5[0] = v1;
  v2 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionType:6];
  v5[1] = v2;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

id sub_100146654(void *a1, int a2)
{
  v3 = a1;
  v4 = sub_100146840(0);
  if (v3 && v3[8] >= 0x18u && _os_feature_enabled_impl())
  {
    v5 = [[NEIKEv2KEMProtocol alloc] initWithMethod:36];
    v21 = v5;
    v22 = &off_100209E00;
    v6 = [NSArray arrayWithObjects:&v21 count:1];
    v23 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v7 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  if (a2)
  {
    v8 = 21599;
  }

  else
  {
    v8 = 0;
  }

  *(&v16 + 1) = 0;
  v17 = 0uLL;
  v9 = [v4 proposals];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [v14 setLifetimeSeconds:v8];
        [v14 setAdditionalKEMProtocols:v7];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v4;
}

id sub_100146840(uint64_t a1)
{
  v2 = objc_alloc_init(NEIKEv2IKESAConfiguration);
  [v2 setAllowRedirect:0];
  [v2 setDisableSwitchToNATTPorts:1];
  [v2 setNonceSize:32];
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
    v3 = 1280;
  }

  else
  {
    v3 = 1400;
  }

  [v2 setMaximumPacketSize:v3];
  [v2 setStrictNonceSizeChecks:1];

  v4 = objc_alloc_init(NEIKEv2IKESAProposal);
  v5 = sub_10014658C();
  [v4 setEncryptionProtocols:v5];

  v6 = [[NEIKEv2PRFProtocol alloc] initWithType:7];
  v18[0] = v6;
  v7 = [NSArray arrayWithObjects:v18 count:1];

  [v4 setPrfProtocols:v7];
  v8 = [[NEIKEv2KEMProtocol alloc] initWithMethod:32];
  v18[0] = v8;
  v9 = [[NEIKEv2KEMProtocol alloc] initWithMethod:31];
  v18[1] = v9;
  v10 = [NSArray arrayWithObjects:v18 count:2];

  [v4 setKemProtocols:v10];
  if (a1)
  {
    if (_os_feature_enabled_impl())
    {
      v11 = sub_100146B2C();
      [v4 setAdditionalKEMProtocols:v11];
    }

    [v4 setLifetimeSeconds:0];
    v17 = v4;
    v12 = [NSArray arrayWithObjects:&v17 count:1];

    [v2 setProposals:v12];
    [v2 setRequestChildlessSA:1];
    v13 = [NSSet alloc];
    v14 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:5];
    v15 = [v13 initWithObjects:{v14, 0}];
    [v2 setExtraSupportedSignatureHashes:v15];
  }

  else
  {
    [v4 setLifetimeSeconds:0];
    v17 = v4;
    v14 = [NSArray arrayWithObjects:&v17 count:1];

    [v2 setProposals:v14];
  }

  [v2 setPreferInitiatorProposalOrder:a1];
  return v2;
}

uint64_t sub_100146B2C()
{
  v7 = &off_100209E00;
  v0 = [[NEIKEv2KEMProtocol alloc] initWithMethod:37];
  v1 = [[NEIKEv2KEMProtocol alloc] initWithMethod:{36, v0}];
  v6[1] = v1;
  v2 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
  v6[2] = v2;
  v3 = [NSArray arrayWithObjects:v6 count:3];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v4;
}

void sub_100146C38(void *a1)
{
  v1 = a1;
  [v1 setMaximumPacketSize:2000];
  [v1 setHeaderOverhead:5];
}

id sub_100146C84(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  if (v5)
  {
    v6 = sub_100146D34(0, a2);
    sub_100147008(v6, v5, v3);
  }

  else
  {
    v8 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_100140094();
      _NRLogWithArgs(v10, 17, "%s called with null localDevice", "NRLinkCopyTransportChildSAConfigForInitiator");
    }

    v6 = 0;
  }

  return v6;
}

id sub_100146D34(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NEIKEv2ChildSAConfiguration);
  [v4 setMode:1];
  v5 = +[NEIKEv2TrafficSelector copyAllIPv6];
  v24[0] = v5;
  v6 = +[NEIKEv2TrafficSelector copyAllIPv4];
  v24[1] = v6;
  v7 = [NSArray arrayWithObjects:v24 count:2];
  [v4 setLocalTrafficSelectors:v7];

  v8 = +[NEIKEv2TrafficSelector copyAllIPv6];
  v23[0] = v8;
  v9 = +[NEIKEv2TrafficSelector copyAllIPv4];
  v23[1] = v9;
  v10 = [NSArray arrayWithObjects:v23 count:2];
  [v4 setRemoteTrafficSelectors:v10];

  v11 = objc_alloc_init(NEIKEv2ChildSAProposal);
  [v11 setProtocol:3];
  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  _NRIsAppleInternal();
  v13 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionType:9];
  v25 = v13;
  v14 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionType:7];
  v26 = v14;
  v15 = [NSArray arrayWithObjects:&v25 count:2];

  [v11 setEncryptionProtocols:v15];
  v16 = [[NEIKEv2KEMProtocol alloc] initWithMethod:32];
  v25 = v16;
  v17 = [[NEIKEv2KEMProtocol alloc] initWithMethod:31];
  v26 = v17;
  v18 = [NSArray arrayWithObjects:&v25 count:2];

  [v11 setKemProtocols:v18];
  if (a1 && _os_feature_enabled_impl())
  {
    v19 = sub_100146B2C();
    [v11 setAdditionalKEMProtocols:v19];
  }

  [v11 setLifetimeSeconds:0];
  v25 = v11;
  v20 = [NSArray arrayWithObjects:&v25 count:1];

  [v4 setProposals:v20];
  [v4 setSequencePerTrafficClass:a2];
  if (a2)
  {
    [v4 setSequencePerTrafficClass:1];
    v21 = 16;
  }

  else
  {
    v21 = 256;
  }

  [v4 setReplayWindowSize:v21];
  [v4 setPreferInitiatorProposalOrder:a1];
  return v4;
}

void sub_100147008(void *a1, unsigned __int16 *a2, int a3)
{
  v5 = a1;
  if (a2)
  {
    if (a2[8] >= 0x18u && _os_feature_enabled_impl())
    {
      v6 = [[NEIKEv2KEMProtocol alloc] initWithMethod:36];
      v20 = v6;
      v21 = &off_100209E00;
      v7 = [NSArray arrayWithObjects:&v20 count:1];
      v22 = v7;
      a2 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    }

    else
    {
      a2 = 0;
    }
  }

  v17 = 0u;
  v18 = 0u;
  if (a3)
  {
    v8 = 21221;
  }

  else
  {
    v8 = 0;
  }

  *(&v15 + 1) = 0;
  v16 = 0uLL;
  v9 = [v5 proposals];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        [v14 setLifetimeSeconds:v8];
        [v14 setAdditionalKEMProtocols:a2];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

id sub_1001471E8(void *a1, int a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = sub_100146D34(0, 0);
    [v4 setMode:2];
    [v4 setReplayWindowSize:4];
    sub_100147008(v4, v3, a2);
  }

  else
  {
    v6 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100140094();
      _NRLogWithArgs(v8, 17, "%s called with null localDevice", "NRLinkCopyTunnelChildSAConfigForInitiator");
    }

    v4 = 0;
  }

  return v4;
}

id sub_1001472AC()
{
  v0 = sub_100146D34(1, 0);
  [v0 setMode:2];
  [v0 setReplayWindowSize:4];
  return v0;
}

id sub_1001472F0(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NEIKEv2SessionConfiguration);
  [v7 setNegotiateMOBIKE:0];
  [v7 setNatTraversalKeepaliveDisabled:1];
  [v7 setDeadPeerDetectionEnabled:0];
  [v7 setIdleTimeoutEnabled:0];
  [v7 setConfigurationReply:0];
  v8 = [v5 copy];
  [v7 setLocalIdentifier:v8];

  if (a1)
  {
    v9 = [v5 copy];
    [v7 setRemoteIdentifier:v9];
  }

  v10 = [v6 copy];
  [v7 setAuthenticationProtocol:v10];

  v11 = [v6 copy];
  [v7 setRemoteAuthentication:v11];

  return v7;
}

void *sub_100147400(int a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  switch(v3)
  {
    case 1:
      if (qword_100229308 != -1)
      {
        dispatch_once(&qword_100229308, &stru_1001FC598);
      }

      String = qword_100229300;
      if (v5)
      {
        v7 = 11;
        goto LABEL_16;
      }

      goto LABEL_76;
    case 3:
      if (qword_1002292F8 != -1)
      {
        dispatch_once(&qword_1002292F8, &stru_1001FC578);
      }

      String = qword_1002292F0;
      if (v5)
      {
        v7 = 10;
        goto LABEL_16;
      }

LABEL_76:
      v12 = v5 == 0;
      v10 = [NEIKEv2AuthenticationProtocol alloc];
      v8 = 0;
      goto LABEL_19;
    case 4:
      if (qword_1002292E8 != -1)
      {
        dispatch_once(&qword_1002292E8, &stru_1001FC558);
      }

      String = qword_1002292E0;
      if (v5)
      {
        v7 = 9;
LABEL_16:
        v8 = v5[v7];
        v9 = *(v5 + 8);
        v10 = [NEIKEv2AuthenticationProtocol alloc];
        if (v9 >= 0x14)
        {
          v11 = [v10 initWithDigitalSignature:3];
          v12 = 0;
          goto LABEL_20;
        }

        v12 = 0;
LABEL_19:
        v11 = [v10 initWithNonStandardDigitalSignature:3];
LABEL_20:
        v13 = sub_1001472F0(a1, String, v11);
        v14 = v13;
        if (v8)
        {
          v15 = v8[1];
          v16 = v15;
          if (v15)
          {
            v17 = v15[2];
          }

          else
          {
            v17 = 0;
          }

          [v14 setRemotePublicKeyRef:v17];

          v18 = v8[2];
          v19 = v18;
          if (v18)
          {
            v20 = v18[2];
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          [v13 setRemotePublicKeyRef:0];
          v19 = 0;
          v20 = 0;
        }

        [v14 setLocalPrivateKeyRef:v20];

        if (a1)
        {
          if (!v12)
          {
            if (*(v5 + 8) >= 0x14u)
            {
              v21 = [v14 remoteIdentifier];
              v22 = v5[3];
              v23 = v21;
              v24 = v22;
              v25 = objc_opt_self();
              if (v23)
              {
                if (v24)
                {
                  v26 = sub_100163B2C(v25, v24, 0);
                  v27 = v23;
                  if (v26 && (v28 = v26[8]) != 0)
                  {
                    v56 = String;
                    v57 = v24;
                    v55 = v23;
                    memset(v61, 0, sizeof(v61));
                    v60 = 0u;
                    v59 = 1;
                    v29 = v28[1];
                    v30 = v27;
                    v31 = v28;
                    [v29 getUUIDBytes:&v60];

                    arc4random_buf(v61, 0x4FuLL);
                    v32 = [[NSData alloc] initWithBytes:&v59 length:96];
                    v33 = [NEIKEv2EncryptedKeyIDIdentifier alloc];
                    v54 = v30;
                    v34 = [v30 identifierData];
                    v35 = v26[8];
                    if (v35)
                    {
                      v36 = v35[2];
                    }

                    else
                    {
                      v36 = 0;
                    }

                    v37 = v35;
                    v38 = [v33 initWithKeyID:v32 aad:v34 key:v36];

                    v23 = v55;
                    String = v56;
                    v24 = v57;
                    v27 = v54;
                  }

                  else
                  {
                    v38 = 0;
                  }

                  goto LABEL_46;
                }

                v58 = 0;
                v52 = sub_10015B480();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v26 = sub_10015B480();
                  _NRLogWithArgs(v26, 17, "%s called with null nrUUID");
                  goto LABEL_74;
                }
              }

              else
              {
                v58 = v24;
                v50 = sub_10015B480();
                v51 = _NRLogIsLevelEnabled();

                if (v51)
                {
                  v26 = sub_10015B480();
                  _NRLogWithArgs(v26, 17, "%s called with null serviceIdentifier");
LABEL_74:
                  v38 = 0;
                  v24 = v58;
LABEL_46:

LABEL_47:
                  if (v38)
                  {
                    [v14 setLocalIdentifier:v38];
                  }

                  goto LABEL_50;
                }
              }

              v38 = 0;
              v24 = v58;
              goto LABEL_47;
            }

LABEL_50:
            v39 = v5[18];
LABEL_51:
            v40 = v39;
            if (([v40 allowsDeadPeerDetection] & 1) == 0)
            {
              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v41 = qword_1002290B8;
              if (!v41 || v41[8] != 1)
              {
                if (qword_100229238 != -1)
                {
                  v49 = v41;
                  dispatch_once(&qword_100229238, &stru_1001FC340);
                  v41 = v49;
                }

                v45 = byte_100229230;

                if ((v45 & 1) == 0)
                {
                  goto LABEL_61;
                }

                goto LABEL_58;
              }
            }

LABEL_58:
            v42 = v14;
            v43 = v42;
            if (v42)
            {
              [v42 setDeadPeerDetectionEnabled:1];
              [v43 setDeadPeerDetectionInterval:30];
              [v43 setDeadPeerDetectionRetryIntervalMilliseconds:3000];
              [v43 setDeadPeerDetectionMaxRetryCount:3];
            }

            else
            {
              v46 = sub_100140094();
              v47 = _NRLogIsLevelEnabled();

              if (v47)
              {
                v48 = sub_100140094();
                _NRLogWithArgs(v48, 17, "%s called with null sessionConfig", "NRLinkIKESessionConfigSetDPD");
              }
            }

LABEL_61:
LABEL_62:

            goto LABEL_63;
          }
        }

        else if (!v12)
        {
          goto LABEL_50;
        }

        v39 = 0;
        goto LABEL_51;
      }

      goto LABEL_76;
  }

  if (qword_100229378 != -1)
  {
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229378 != -1)
    {
      dispatch_once(&qword_100229378, &stru_1001FC6A0);
    }

    v8 = qword_100229370;
    String = NRDataProtectionClassCreateString();
    _NRLogWithArgs(v8, 17, "Cannot copy IKE session config for %@", String);
    v14 = 0;
    goto LABEL_62;
  }

  v14 = 0;
LABEL_63:

  return v14;
}

id sub_100147A80()
{
  v6 = 0;
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v0 = qword_1002294C0;
  if (v0)
  {
    v1 = v0;
    dispatch_assert_queue_V2(*(v0 + 2));
    if ((v1[10] & 1) == 0)
    {
      v1[10] = 1;
      if (v1[8] == 4)
      {
        sub_100181020(v1);
        if (v1[9] == 1)
        {
          v1[8] = 3;
          sub_100181284(v1);
        }
      }
    }

    v2 = v1[8] & 0xFD;

    if (v2 == 1)
    {
      v6 = 0x80;
    }
  }

  v3 = [[NSData alloc] initWithBytes:&v6 length:1];
  v4 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48701 notifyData:v3];

  return v4;
}

BOOL sub_100147B98(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[18];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    if (v2)
    {
      v5 = v2[18];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 proxyCapability] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id sub_100147C1C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v53 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v55 = sub_100140094();
      _NRLogWithArgs(v55, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "NRLinkCopyProxyPrivateNotify", 2199);
    }

    v56 = _os_log_pack_size();
    v5 = &v59 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = __error();
    v58 = _os_log_pack_fill(v5, v56, *v57, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v58 = 136446210;
    *(v58 + 4) = "NRLinkCopyProxyPrivateNotify";
    sub_100140094();
    _NRLogAbortWithPack();
LABEL_49:
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    goto LABEL_4;
  }

  v5 = v4;
  if (!sub_1001655D8(v3))
  {
    port = 62742;
    goto LABEL_10;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    goto LABEL_49;
  }

LABEL_4:
  v6 = qword_1002290B8;
  v7 = v6;
  if (v6 && *(v6 + 19))
  {
    port = nw_masque_server_get_port();
  }

  else
  {
    port = 0;
  }

LABEL_10:
  v68 = 0uLL;
  v69 = 0;
  if (!v5)
  {
    v67 = 0uLL;
    sub_100168638(v3, &v67);
    v68 = v67;
    v69 = __rev16(port);
  }

  v9 = [[NSMutableData alloc] initWithBytes:&v68 length:18];
  if (_os_feature_enabled_impl() && *(v3 + 8) >= 0x11u)
  {
    v10 = objc_alloc_init(NSMutableData);
    NRTLVAdd();
    [v9 appendData:v10];
  }

  if (sub_1001655D8(v3))
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v11 = qword_1002290B8;
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 13);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if ([v14 length])
    {
      v15 = objc_alloc_init(NSMutableData);
      NRTLVAddData();
      [v9 appendData:v15];
    }

    else
    {
      v16 = v3[3];
      v17 = v3;
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = _NRLogIsLevelEnabled();

      v3 = v17;
      if (!v19)
      {
LABEL_25:

        goto LABEL_26;
      }

      v15 = v17[3];
      v20 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v20, 17, "MASQUE proxyServerPublicKey is NULL");

      v3 = v17;
    }

    goto LABEL_25;
  }

LABEL_26:
  if (v5)
  {
    v21 = objc_alloc_init(NSMutableData);
    v22 = sub_10013D308(v5, port, 0);
    NRTLVAddData();
    [v9 appendData:v21];
  }

  v23 = v3[18];
  v24 = [v23 hasPoliciesForProxyCriteria];

  if (v24)
  {
    v60 = v9;
    v61 = v5;
    v59 = objc_alloc_init(NSMutableData);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v62 = v3;
    v25 = v3[18];
    v26 = [v25 proxyProviderCriteria];
    v27 = [v26 proxyUsageRules];

    v28 = [v27 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v64;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v64 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v63 + 1) + 8 * i);
          v33 = objc_alloc_init(NSMutableData);
          v34 = [v32 matchResultAccountID];
          v35 = [v34 length];

          if (v35)
          {
            v36 = [v32 matchResultAccountID];
            v37 = [v36 dataUsingEncoding:4];

            v38 = sub_100009074([NRToken alloc], 1, 51, v37);
            v39 = sub_100009284(v38);
            NRTLVAddData();
          }

          v40 = [v32 matchResultBundleID];
          v41 = [v40 length];

          if (v41)
          {
            v42 = [v32 matchResultBundleID];
            v43 = [v42 dataUsingEncoding:4];

            v44 = sub_100009074([NRToken alloc], 1, 52, v43);
            v45 = sub_100009284(v44);
            NRTLVAddData();
          }

          if ([v33 length])
          {
            [v32 addMatchToken:v33];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v29);
    }

    v3 = v62;
    v46 = v62[18];
    v47 = [v46 proxyProviderCriteria];
    v48 = [v47 copySendData];

    v49 = [v48 length];
    v9 = v60;
    v50 = v59;
    if (v49)
    {
      NRTLVAddData();
      [v9 appendData:v50];
    }

    v5 = v61;
  }

  v51 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50701 notifyData:v9];

  return v51;
}

id sub_1001482F4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v12 = a1;
  v13 = a2;
  v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
  if (v14)
  {
    goto LABEL_36;
  }

  v6 = &qword_100229000;
  if (qword_100229378 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    if (_NRLogIsLevelEnabled())
    {
      if (v6[111] != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying [NEIPsecNexus init]", "", "NRLinkIPsecNexusCreate", 2336);
    }

    v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
    if (!v14)
    {
      if (v6[111] != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (v6[111] != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying [NEIPsecNexus init]", "", "NRLinkIPsecNexusCreate", 2336);
      }

      v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
      if (!v14)
      {
        if (v6[111] != -1)
        {
          dispatch_once(&qword_100229378, &stru_1001FC6A0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (v6[111] != -1)
          {
            dispatch_once(&qword_100229378, &stru_1001FC6A0);
          }

          _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying [NEIPsecNexus init]", "", "NRLinkIPsecNexusCreate", 2336);
        }

        v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
        if (!v14)
        {
          if (v6[111] != -1)
          {
            dispatch_once(&qword_100229378, &stru_1001FC6A0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (v6[111] != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying [NEIPsecNexus init]", "", "NRLinkIPsecNexusCreate", 2336);
          }

          v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
          if (!v14)
          {
            if (v6[111] != -1)
            {
              dispatch_once(&qword_100229378, &stru_1001FC6A0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (v6[111] != -1)
              {
                dispatch_once(&qword_100229378, &stru_1001FC6A0);
              }

              _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying [NEIPsecNexus init]", "", "NRLinkIPsecNexusCreate", 2336);
            }

            v14 = [[NEIPsecNexus alloc] initWithName:v12 delegate:v13 enableWithChannelCount:a3 netifRingSize:a4 kernelPipeTxRingSize:a5 kernelPipeRxRingSize:a6];
            if (!v14)
            {
              if (v6[111] != -1)
              {
                dispatch_once(&qword_100229378, &stru_1001FC6A0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (v6[111] != -1)
                {
                  dispatch_once(&qword_100229378, &stru_1001FC6A0);
                }

                _NRLogWithArgs(qword_100229370, 0, "%s%.30s:%-4d Retrying [NEIPsecNexus init]", "", "NRLinkIPsecNexusCreate", 2336);
              }

              v22 = sub_100140094();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v24 = sub_100140094();
                _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nexus) != ((void*)0)", "", "NRLinkIPsecNexusCreate", 2340);
              }

              v12 = _os_log_pack_size();
              v13 = &v27 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v25 = __error();
              v26 = _os_log_pack_fill(v13, v12, *v25, &_mh_execute_header, "%{public}s Assertion Failed: (nexus) != ((void*)0)");
              *v26 = 136446210;
              *(v26 + 4) = "NRLinkIPsecNexusCreate";
              goto LABEL_41;
            }
          }
        }
      }
    }

LABEL_36:
    v15 = v14;
    if ([v14 virtualInterface])
    {
      break;
    }

    v17 = sub_100140094();
    v18 = _NRLogIsLevelEnabled();

    a6 = "NRLinkIPsecNexusCreate";
    if (v18)
    {
      v19 = sub_100140094();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nexus.virtualInterface) != ((void*)0)", "", "NRLinkIPsecNexusCreate", 2341);
    }

    v12 = _os_log_pack_size();
    v13 = &v27 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = __error();
    v21 = _os_log_pack_fill(v13, v12, *v20, &_mh_execute_header, "%{public}s Assertion Failed: (nexus.virtualInterface) != ((void*)0)");
    *v21 = 136446210;
    *(v21 + 4) = "NRLinkIPsecNexusCreate";
LABEL_41:
    sub_100140094();
    _NRLogAbortWithPack();
LABEL_42:
    dispatch_once(&qword_100229378, &stru_1001FC6A0);
  }

  return v15;
}

id *sub_100148B58(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!v6)
  {
    v17 = sub_100148DB4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_100148DB4();
      _NRLogWithArgs(v19, 17, "%s called with null queue");
LABEL_11:

      v15 = 0;
      goto LABEL_6;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_6;
  }

  if (!v7)
  {
    v20 = sub_100148DB4();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v19 = sub_100148DB4();
      _NRLogWithArgs(v19, 17, "%s called with null nrUUID");
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v29.receiver = a1;
  v29.super_class = NRDevicePreferencesManager;
  v9 = objc_msgSendSuper2(&v29, "init");
  if (!v9)
  {
    v22 = sub_100148DB4();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_100148DB4();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDevicePreferencesManager initPrefManagerWithQueue:nrUUID:]", 54);
    }

    v25 = _os_log_pack_size();
    v26 = __error();
    v27 = _os_log_pack_fill(&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, *v26, &_mh_execute_header, "%{public}s [super init] failed");
    *v27 = 136446210;
    *(v27 + 4) = "[NRDevicePreferencesManager initPrefManagerWithQueue:nrUUID:]";
    sub_100148DB4();
    _NRLogAbortWithPack();
  }

  v10 = v9;
  objc_storeStrong(v9 + 3, a2);
  objc_storeStrong(v10 + 2, a3);
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = v10[4];
  v10[4] = v11;

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = v10[5];
  v10[5] = v13;

  a1 = v10;
  v15 = a1;
LABEL_6:

  return v15;
}

id sub_100148DB4()
{
  if (qword_100229388 != -1)
  {
    dispatch_once(&qword_100229388, &stru_1001FC6C0);
  }

  v1 = qword_100229380;

  return v1;
}

void sub_100148E08(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229380;
  qword_100229380 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100148E4C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  *(a1 + 8) = 0;
  [*(a1 + 32) allValues];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v3 = v62 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v60;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v60 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v59 + 1) + 8 * i);
        if (v9)
        {
          if ([*(*(&v59 + 1) + 8 * i) linkType] == 1)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(NSMutableArray);
            }

            [v6 addObject:v9];
          }
        }

        else
        {
          v10 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v12 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v12, 16, "%s%.30s:%-4d Invalid preferences found", "", "[NRDevicePreferencesManager applyLinkPreferences]", 225);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = objc_alloc_init(NRBluetoothLinkPreferences);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v56;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v56 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (*(*(&v55 + 1) + 8 * j))
        {
          [v13 combinePreferences:?];
        }

        else
        {
          v19 = _NRCopyLogObjectForNRUUID();
          v20 = _NRLogIsLevelEnabled();

          if (v20)
          {
            v21 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v21, 17, "Invalid preferences found");
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v16);
  }

  *(a1 + 8) = [v13 isNotEmpty];
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v22 = qword_1002290B8;
  v23 = v22;
  if (v22)
  {
    v24 = *(a1 + 16);
    v53 = v22;
    v25 = v22[5];
    v26 = v13;
    v27 = v24;
    if (v25)
    {
      v28 = v25;
      v29 = v25[3];
      dispatch_assert_queue_V2(v29);

      if (v27)
      {
        v30 = sub_100163A30(NRDLocalDevice, v27);
        v31 = v30;
        if (v30)
        {
          v32 = *(v30 + 32);
          p_vtable = NRSCDInterfaceConfig.vtable;
          if (v32)
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100228F70 != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Requested BT link requirements for %@: %@", "", "[NRLinkManagerBluetooth setLinkRequirements:forNRUUID:]", 856, v27, v26);
            }

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v51 = v28;
            obj = v28[5];
            v34 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
            v52 = v31;
            if (v34)
            {
              v35 = v34;
              v36 = v32;
              v49 = v27;
              v50 = v26;
              v37 = *v64;
LABEL_44:
              v38 = 0;
              while (1)
              {
                if (*v64 != v37)
                {
                  objc_enumerationMutation(obj);
                }

                v39 = *(*(&v63 + 1) + 8 * v38);
                v40 = v39 ? *(v39 + 391) : 0;
                v41 = v40;
                v42 = [v41 isEqual:v36];

                if (v42)
                {
                  break;
                }

                if (v35 == ++v38)
                {
                  v43 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
                  v35 = v43;
                  if (!v43)
                  {
                    v44 = 0;
                    goto LABEL_56;
                  }

                  goto LABEL_44;
                }
              }

              v44 = [v39 state] == 8;
LABEL_56:
              v23 = v53;
              v27 = v49;
              v26 = v50;
              v32 = v36;
              p_vtable = (NRSCDInterfaceConfig + 24);
            }

            else
            {
              v44 = 0;
              v23 = v53;
            }

            if (([v26 isNotEmpty] & 1) == 0)
            {

              v26 = 0;
              v44 = 1;
            }

            [v51[14] setObject:v26 forKeyedSubscript:v32];
            if (v44)
            {
              sub_10003BD40(v51, v26, v32);
              v31 = v52;
            }

            else
            {
              if (qword_100228F70 != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              v31 = v52;
              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228F70 != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                _NRLogWithArgs(p_vtable[493], 0, "%s%.30s:%-4d Deferring applying new BT link requirements until we have an active link");
              }
            }
          }

          else
          {
            v23 = v53;
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100228F70 != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              _NRLogWithArgs(qword_100228F68, 0, "%s%.30s:%-4d Ignoring setting BT link requirements for %@", "", "[NRLinkManagerBluetooth setLinkRequirements:forNRUUID:]", 852, v31);
            }
          }
        }

        else
        {
          v47 = sub_10002D6B4();
          v48 = _NRLogIsLevelEnabled();

          if (!v48)
          {
            v23 = v53;
            goto LABEL_75;
          }

          v32 = sub_10002D6B4();
          _NRLogWithArgs(v32, 17, "%s called with null localDevice", "[NRLinkManagerBluetooth setLinkRequirements:forNRUUID:]");
          v23 = v53;
        }

LABEL_75:
LABEL_76:

        goto LABEL_77;
      }

      v45 = sub_10002D6B4();
      v46 = _NRLogIsLevelEnabled();

      if (v46)
      {
        v31 = sub_10002D6B4();
        _NRLogWithArgs(v31, 17, "%s called with null nrUUID", "[NRLinkManagerBluetooth setLinkRequirements:forNRUUID:]");
        v23 = v53;
        goto LABEL_75;
      }
    }

    v23 = v53;
    goto LABEL_76;
  }

LABEL_77:
}

void sub_100149594(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = objc_alloc_init(NSMutableSet);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [*(a1 + 40) allValues];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * v8) allObjects];
        [v3 addObjectsFromArray:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v10 = (a1 + 48);
  if (([v3 isEqual:*(a1 + 48)] & 1) == 0)
  {
    v11 = [NSString alloc];
    v12 = *(a1 + 48);
    v13 = _NRCopyPolicyTrafficClassifiersDescription();
    v14 = _NRCopyPolicyTrafficClassifiersDescription();

    v15 = [v11 initWithFormat:@"%@ to %@", v13, v14];
    v16 = *(a1 + 16);
    v17 = [v16 UUIDString];
    sub_1000059A8(v16, 13001, v17, v15);

    objc_storeStrong(v10, v3);
  }
}

void sub_100149788(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v8[0] = @"client";
      v8[1] = @"type";
      v9[0] = v3;
      v9[1] = &off_100209E18;
      v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
      sub_100008D1C(@"NetworkRelay BT Link Assertion", v5);
    }

    else
    {
      v6 = sub_100148DB4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_5;
      }

      v5 = sub_100148DB4();
      _NRLogWithArgs(v5, 17, "%s called with null clientName", "[NRDevicePreferencesManager addedClientForLinkPreferences:]");
    }
  }

LABEL_5:
}

void sub_100149890(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v8[0] = @"client";
      v8[1] = @"type";
      v9[0] = v3;
      v9[1] = &off_100209E30;
      v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
      sub_100008D1C(@"NetworkRelay BT Link Assertion", v5);
    }

    else
    {
      v6 = sub_100148DB4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_5;
      }

      v5 = sub_100148DB4();
      _NRLogWithArgs(v5, 17, "%s called with null clientName", "[NRDevicePreferencesManager removedClientForLinkPreferences:]");
    }
  }

LABEL_5:
}

void sub_100149998(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Setting link preferences for %@ : %@", "", "[NRDevicePreferencesManager setLinkPreferences:forIdentifier:]", 131, v5, v9);
    }

    [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
    sub_100148E4C(a1);
  }
}

void sub_100149A78(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a1 && [*(a1 + 32) count])
  {
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Removing preferences for %@", "", "[NRDevicePreferencesManager removeLinkPreferencesForIdentifier:]", 143, v6);
    }

    [*(a1 + 32) setObject:0 forKeyedSubscript:v6];
    sub_100148E4C(a1);
  }
}

id sub_100149B50(void *a1)
{
  v1 = a1;
  context = xpc_connection_get_context(v1);
  if (!context)
  {
    pid = xpc_connection_get_pid(v1);
    v4 = sub_10013CB6C(pid, 0);
    v5 = +[NSUUID UUID];
    v6 = [NSString alloc];
    v7 = [v5 UUIDString];
    v8 = [v6 initWithFormat:@"%@%s%@", v4, "-", v7];

    v9 = v8;
    if (v9)
    {
      v10 = v9;
      v11 = [v9 UTF8String];
      if (!v11)
      {
        v23 = sub_100148DB4();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v25 = sub_100148DB4();
          _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: strict_strdup called with NULL string", "", "strict_strdup", 176);
        }

        v26 = _os_log_pack_size();
        v27 = &v36 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = __error();
        v29 = _os_log_pack_fill(v27, v26, *v28, &_mh_execute_header, "%{public}s strict_strdup called with NULL string");
        *v29 = 136446210;
        *(v29 + 4) = "strict_strdup";
LABEL_17:
        sub_100148DB4();
        _NRLogAbortWithPack();
      }

      v12 = strdup(v11);
      if (v12)
      {
        context = v12;

        xpc_connection_set_context(v1, context);
        xpc_connection_set_finalizer_f(v1, sub_100149F10);

        goto LABEL_6;
      }

      v30 = sub_100148DB4();
      v31 = _NRLogIsLevelEnabled();

      v17 = "strict_strdup";
      if (v31)
      {
        v32 = sub_100148DB4();
        _NRLogWithArgs(v32, 16, "%s%.30s:%-4d ABORTING: strdup() failed", "", "strict_strdup", 182);
      }

      v33 = _os_log_pack_size();
      v34 = &v36 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *__error();
      v22 = _os_log_pack_fill(v34, v33, v35, &_mh_execute_header, "%{public}s strdup() failed");
    }

    else
    {
      v15 = sub_100148DB4();
      v16 = _NRLogIsLevelEnabled();

      v17 = "nrStrDupFromNSString";
      if (v16)
      {
        v18 = sub_100148DB4();
        _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: nrStrDupFromNSString called with NULL", "", "nrStrDupFromNSString", 45);
      }

      v19 = _os_log_pack_size();
      v20 = &v36 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = *__error();
      v22 = _os_log_pack_fill(v20, v19, v21, &_mh_execute_header, "%{public}s nrStrDupFromNSString called with NULL");
    }

    *v22 = 136446210;
    *(v22 + 4) = v17;
    goto LABEL_17;
  }

LABEL_6:
  v13 = [[NSString alloc] initWithUTF8String:context];

  return v13;
}

void sub_100149F10(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

id sub_10014A248()
{
  if (qword_1002293B0 != -1)
  {
    dispatch_once(&qword_1002293B0, &stru_1001FCB68);
  }

  v1 = qword_1002293A8;

  return v1;
}

void sub_10014A29C(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002293A8;
  qword_1002293A8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10014A6EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 21) & 1) == 0)
  {
    v3 = sub_10014A7EC(v2, *(a1 + 40));
    if (v3)
    {
      v7 = v3;
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v3 = v7;
      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v6, 0, "%s%.30s:%-4d NAN: data session request started for %@", "", "[NRDiscoveryClient dataSessionRequestStarted:]_block_invoke", 2435, v7);

        v3 = v7;
      }
    }
  }
}

id sub_10014A7EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [*(a1 + 248) allValues];
    v5 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [v9 initiatorDataSession];

          if (v10 == v4)
          {
            v5 = v9;
            goto LABEL_13;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

void sub_10014A9DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 21) & 1) == 0)
  {
    v3 = sub_10014A7EC(v2, *(a1 + 40));
    if (v3)
    {
      v7 = v3;
      [v3 setLocalInterfaceIndex:0];
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v6, 0, "%s%.30s:%-4d NAN: data session session terminated for %@ with reason %zd", "", "[NRDiscoveryClient dataSession:terminatedWithReason:]_block_invoke", 2421, v7, *(a1 + 48));
      }

      sub_10014AAF4(*(a1 + 32), v7);
      v3 = v7;
    }
  }
}

void sub_10014AAF4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a1 && ([v6 hasActiveDataSession] & 1) == 0)
  {
    v3 = [WiFiAwareDataSession alloc];
    v4 = [v6 initiatorDiscoveryResult];
    v5 = [v3 initWithDiscoveryResult:v4 serviceType:1 serviceSpecificInfo:0];

    [v5 setDelegate:a1];
    [v5 start];
    [v6 setInitiatorDataSession:v5];
  }
}

void sub_10014AC54(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 21) & 1) != 0)
  {
    return;
  }

  v3 = (a1 + 40);
  v10 = sub_10014A7EC(v2, *(a1 + 40));
  if (v10)
  {
    [v10 setLocalInterfaceIndex:{objc_msgSend(*(a1 + 40), "localInterfaceIndex")}];
    sub_10014AD7C(*(a1 + 32), v10);
LABEL_9:
    v6 = v10;
    goto LABEL_10;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  v6 = 0;
  if (IsLevelEnabled)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[3];
    }

    v8 = v7;
    v9 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v9, 0, "%s%.30s:%-4d NAN: ignoring data session started as there is no peer for session %@", "", "[NRDiscoveryClient dataSession:confirmedForPeerDataAddress:serviceSpecificInfo:]_block_invoke", 2404, *v3);

    goto LABEL_9;
  }

LABEL_10:
}

void sub_10014AD7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_41;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d NAN: data session started with peer %@", "", "[NRDiscoveryClient handleDataSessionStarted:]", 2442, v3);
  }

  if ([v3 isInitiator])
  {
    v7 = *(a1 + 240);
    v8 = sub_10014B23C(a1);
    v9 = [v3 initiatorDiscoveryResult];
    v10 = [v9 publisherAddress];
    v11 = [v3 initiatorDiscoveryResult];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10014B3AC;
    v47[3] = &unk_1001FCB48;
    v47[4] = a1;
    [v7 sendMessage:v8 toPeerAddress:v10 withInstanceID:objc_msgSend(v11 completionHandler:{"publishID"), v47}];
  }

  v12 = [v3 serviceName];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = *(a1 + 96);
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        if (v18)
        {
          v19 = v18[2];
        }

        else
        {
          v19 = 0;
        }

        if ([v19 isEqualToString:v12])
        {
          p_isa = v18;

          if (v18)
          {
            goto LABEL_35;
          }

          goto LABEL_20;
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v20 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
      v15 = v20;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
  v22 = objc_alloc_init(NRDeviceEndpoint);
  p_isa = &v22->super.isa;
  if (v22)
  {
    v22->_type = *(a1 + 18);
    objc_storeStrong(&v22->_serviceName, v12);
  }

  v23 = [v3 remoteIDSDeviceID];

  if (v23)
  {
    v24 = [v3 remoteIDSDeviceID];
    if (p_isa)
    {
      objc_storeStrong(p_isa + 8, v24);
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v25 = qword_1002290B8;
    v26 = sub_1000CAD2C(v25, 0);
    if (p_isa)
    {
      v27 = 9;
LABEL_33:
      objc_storeStrong(&p_isa[v27], v26);
    }
  }

  else
  {
    v28 = [NSUUID alloc];
    v29 = [v3 serviceName];
    v30 = [v28 initWithUUIDString:v29];
    if (p_isa)
    {
      objc_storeStrong(p_isa + 10, v30);
    }

    v31 = [NSUUID alloc];
    v25 = *(a1 + 112);
    v26 = [v31 initWithUUIDString:v25];
    if (p_isa)
    {
      v27 = 11;
      goto LABEL_33;
    }
  }

  [*(a1 + 96) addObject:p_isa];
LABEL_35:
  v32 = [v3 peerEndpoint];
  v33 = [v32 copyCEndpoint];

  v34 = [v3 peerEndpoint];
  v35 = [v34 address];

  if (v35->sa_family == 30 && !*&v35[1].sa_data[6] && v35->sa_data[6] == 254 && (v35->sa_data[7] & 0xC0) == 0x80)
  {
    v36 = *v35;
    v41 = *&v35[1].sa_len;
    address = v36;
    v42 = [v3 localInterfaceIndex];
    v37 = nw_endpoint_create_address(&address);

    v33 = v37;
  }

  [v3 localInterfaceIndex];
  v38 = nw_interface_create_with_index();
  nw_endpoint_set_interface();
  v39 = [NSString stringWithUTF8String:nw_interface_get_name(v38)];
  sub_10014B480(a1, v33, v12, v39);

LABEL_41:
}

void *sub_10014B23C(id *a1)
{
  v2 = objc_alloc_init(NRNANServiceInfo);
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_serviceName, a1[14]);
    objc_storeStrong(v3 + 2, a1[15]);
    objc_storeStrong(v3 + 1, a1[17]);
    objc_storeStrong(v3 + 3, a1[16]);
  }

  v4 = [v3 data];
  v5 = _NRCopyLogObjectForNRUUID();
  if (v4)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v7, 2, "%s%.30s:%-4d Encoded protobuf: %@", "", "[NRDiscoveryClient copyNANServiceSpecificInfo]", 2060, v4);
    }

    v8 = v4;
  }

  else
  {
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d Failed to encode NAN service info protobuf %@", "", "[NRDiscoveryClient copyNANServiceSpecificInfo]", 2057, v3);
    }
  }

  return v4;
}

void sub_10014B3AC(uint64_t a1, uint64_t a2)
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d NAN: sent message to publisher w/ error %zd", "", "[NRDiscoveryClient handleDataSessionStarted:]_block_invoke", 2449, a2);
  }
}

void sub_10014B480(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_30;
  }

  if (nw_endpoint_get_type(v7) != nw_endpoint_type_address)
  {
    v19 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v21 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v21, 16, "%s%.30s:%-4d invalid discovered endpoint type", "", "[NRDiscoveryClient discoveredPeerDeviceEndpoint:serviceName:interfaceName:]", 1405);
    }

    goto LABEL_30;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = *(a1 + 96);
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = *v40;
LABEL_5:
  v14 = 0;
  while (1)
  {
    if (*v40 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v39 + 1) + 8 * v14);
    v16 = v15 ? v15[2] : 0;
    if ([v16 isEqualToString:v8])
    {
      break;
    }

    if (v12 == ++v14)
    {
      v17 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
      v12 = v17;
      if (!v17)
      {
LABEL_15:
        v18 = v10;
        goto LABEL_29;
      }

      goto LABEL_5;
    }
  }

  v18 = v15;

  if (!v15)
  {
    goto LABEL_30;
  }

  if (!v9)
  {
    v29 = a1;
    v30 = v18;
    v31 = v7;
    v32 = 0;
LABEL_28:
    sub_10014B7D0(v29, v30, v31, v32);
    v33 = v18[9];
    v34 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014BAE0;
    block[3] = &unk_1001FC900;
    v38 = v33;
    block[4] = a1;
    v37 = v18;
    v35 = v18;
    dispatch_async(v34, block);
    v18[9] = 1;

    v18 = v35;
    goto LABEL_29;
  }

  v22 = sub_10013DBE4(v9, 0, 0, 0);
  v23 = nw_endpoint_copy_address_string(v7);
  if (!v23)
  {
LABEL_27:

    v29 = a1;
    v30 = v18;
    v31 = v7;
    v32 = v9;
    goto LABEL_28;
  }

  v24 = v23;
  v25 = [NSString stringWithUTF8String:v23];
  free(v24);
  if (![v22 containsObject:v25])
  {

    goto LABEL_27;
  }

  v26 = _NRCopyLogObjectForNRUUID();
  v27 = _NRLogIsLevelEnabled();

  if (v27)
  {
    v28 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v28, 0, "%s%.30s:%-4d ignoring local endpoint %@", "", "[NRDiscoveryClient discoveredPeerDeviceEndpoint:serviceName:interfaceName:]", 1428, v7);
  }

  [*(a1 + 96) removeObject:v18];

LABEL_29:
LABEL_30:
}

void sub_10014B7D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = nw_endpoint_copy_interface();
  v10 = sub_10014BB24(v9);
  if (v10)
  {
    v11 = v10;
    if (v6[15])
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (v8)
  {
    [v8 UTF8String];
    v17 = nw_interface_create_with_name();

    v18 = sub_10014BB24(v17);
    if (v18)
    {
      v11 = v18;
      v9 = v17;
      if (v6[15])
      {
LABEL_3:
        if (v6[16])
        {
LABEL_4:
          v12 = [NWAddressEndpoint endpointWithCEndpoint:v7];
          v13 = v6[15];
          v14 = [NSNumber numberWithUnsignedChar:v11];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [[NSMutableArray alloc] initWithArray:v15];
            [v16 addObject:v12];
          }

          else
          {
            v31 = v12;
            v16 = [NSArray arrayWithObjects:&v31 count:1];
          }

          v23 = v6[15];
          v24 = [NSNumber numberWithUnsignedChar:v11];
          [v23 setObject:v16 forKeyedSubscript:v24];

          v25 = [NSString stringWithUTF8String:nw_interface_get_name(v9)];
          v26 = v6[16];
          v27 = [NSNumber numberWithUnsignedChar:v11];
          [v26 setObject:v25 forKeyedSubscript:v27];

          goto LABEL_13;
        }

LABEL_10:
        v21 = objc_alloc_init(NSMutableDictionary);
        v22 = v6[16];
        v6[16] = v21;

        goto LABEL_4;
      }

LABEL_9:
      v19 = objc_alloc_init(NSMutableDictionary);
      v20 = v6[15];
      v6[15] = v19;

      if (v6[16])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

    v9 = v17;
  }

  v28 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v30 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d invalid link type for endpoint type", "", "[NRDiscoveryClient updateDeviceEndpoint:withNWEndpoint:interfaceName:]", 1334);
  }

LABEL_13:
}

uint64_t sub_10014BAE0(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 48) == 1)
  {
    if (!v1)
    {
      return result;
    }

    v2 = *(v1 + 88);
    if (!v2)
    {
      return result;
    }

    return (*(v2 + 16))(v2, *(result + 40));
  }

  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      return (*(v2 + 16))(v2, *(result + 40));
    }
  }

  return result;
}

uint64_t sub_10014BB24(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    type = nw_interface_get_type(v1);
    subtype = nw_interface_get_subtype();
    if (type == nw_interface_type_wired)
    {
      v5 = 4;
    }

    else
    {
      v6 = subtype;
      name = nw_interface_get_name(v2);
      if (!strcmp("nan0", name))
      {
        v5 = 6;
      }

      else
      {
        v8 = nw_interface_get_name(v2);
        v9 = strcmp("ir0", v8);
        if (type == nw_interface_type_wifi || v6 == 1001)
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        if (v6 == 1002)
        {
          v12 = 5;
        }

        else
        {
          v12 = v11;
        }

        if (v9)
        {
          v5 = v12;
        }

        else
        {
          v5 = 7;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10014BCA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 21) & 1) == 0)
  {
    v3 = sub_10014A7EC(v2, *(a1 + 40));
    if (v3)
    {
      v7 = v3;
      [v3 setLocalInterfaceIndex:0];
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v3 = v7;
      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v6, 16, "%s%.30s:%-4d NAN: data session session request failed for %@ with error %zd", "", "[NRDiscoveryClient dataSession:failedToStartWithError:]_block_invoke", 2390, v7, *(a1 + 48));

        v3 = v7;
      }
    }
  }
}

void sub_10014BE88(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if ((*(v2 + 21) & 1) == 0 && *(a1 + 40) == *(v2 + 240))
    {
LABEL_4:
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = *(a1 + 32);
        if (v5)
        {
          v5 = v5[3];
        }

        v6 = v5;
        v7 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v7, 0, "%s%.30s:%-4d NAN: subscriber received discovery result %@", "", "[NRDiscoveryClient subscriber:receivedDiscoveryResult:]_block_invoke", 2302, *(a1 + 48));
      }

      v8 = [*(a1 + 48) serviceSpecificInfo];
      v68 = [v8 blob];

      if (v68)
      {
        v9 = *(a1 + 32);
        v10 = v68;
        v11 = v10;
        if (v9)
        {
          v12 = [[NRNANServiceInfo alloc] initWithData:v10];
          v13 = _NRCopyLogObjectForNRUUID();
          if (!v12)
          {
            v66 = _NRLogIsLevelEnabled();

            if (v66)
            {
              v67 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v67, 16, "%s%.30s:%-4d Failed to decode NAN service info protobuf", "", "[NRDiscoveryClient processDiscoveredNANPeer:]", 1928);
            }

            goto LABEL_25;
          }

          v14 = _NRLogIsLevelEnabled();

          if (v14)
          {
            v15 = *(v9 + 24);
            v16 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v16, 2, "%s%.30s:%-4d Decoded protobuf: %@", "", "[NRDiscoveryClient processDiscoveredNANPeer:]", 1931, v12);
          }

          serviceName = v12->_serviceName;
          if (serviceName && (v18 = serviceName, v19 = [(NSString *)v18 length], v18, v19))
          {
            authTag = v12->_authTag;
            if (authTag)
            {
              v21 = authTag;
              v22 = [(NSData *)v21 length];

              if (v22)
              {
                v88 = 0;
                v89 = &v88;
                v90 = 0x2020000000;
                v91 = 0;
                v85[0] = _NSConcreteStackBlock;
                v85[1] = 3221225472;
                v85[2] = sub_10014C8FC;
                v85[3] = &unk_1001FCA58;
                v85[4] = v9;
                v23 = v12;
                v86 = v23;
                v87 = &v88;
                v24 = objc_retainBlock(v85);
                v79 = 0;
                v80 = &v79;
                v81 = 0x3032000000;
                v82 = sub_10014CDDC;
                v83 = sub_10014CDEC;
                v84 = 0;
                v25 = *(v9 + 256);
                if (v25 <= 8 && ((1 << v25) & 0x106) != 0)
                {
                  v26 = *(v9 + 152);
                  v27 = v23[1];
                  v28 = *(v9 + 200);
                  v29 = [v28 dataUsingEncoding:4];
                  v30 = sub_10013EBBC(v26, v27, v29);

                  (v24[2])(v24, v30, 0);
                }

                else
                {
                  objc_initWeak(&location, v9);
                  v73[0] = _NSConcreteStackBlock;
                  v73[1] = 3221225472;
                  v73[2] = sub_10014CDF4;
                  v73[3] = &unk_1001FCA80;
                  objc_copyWeak(&v77, &location);
                  v74 = v24;
                  v75 = &v88;
                  v76 = &v79;
                  sub_10014D104(v9, 28671, v73);

                  objc_destroyWeak(&v77);
                  objc_destroyWeak(&location);
                }

                if (*(v89 + 24) == 1)
                {
                  v37 = objc_alloc_init(NRDNANPeer);
                  [(NRDNANPeer *)v37 setRemoteIDSDeviceID:v80[5]];
                  v38 = v23[4];
                  [(NRDNANPeer *)v37 setServiceName:v38];
                }

                else
                {
                  v37 = 0;
                }

                _Block_object_dispose(&v79, 8);

                _Block_object_dispose(&v88, 8);
LABEL_31:

                if (v37)
                {
                  v39 = *(a1 + 32);
                  if (!v39 || !*(v39 + 248))
                  {
                    v40 = objc_alloc_init(NSMutableDictionary);
                    v41 = *(a1 + 32);
                    if (v41)
                    {
                      objc_storeStrong((v41 + 248), v40);
                    }

                    v39 = *(a1 + 32);
                  }

                  v42 = [*(a1 + 48) publisherAddress];
                  v43 = sub_10014C7DC(v39, v42);

                  v71 = 0u;
                  v72 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  v44 = *(a1 + 32);
                  if (v44)
                  {
                    v45 = *(v44 + 248);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  v46 = [v45 allValues];
                  v47 = [(NRDNANPeer *)v46 countByEnumeratingWithState:&v69 objects:v92 count:16];
                  if (v47)
                  {
                    v48 = *v70;
                    while (2)
                    {
                      for (i = 0; i != v47; i = i + 1)
                      {
                        if (*v70 != v48)
                        {
                          objc_enumerationMutation(v46);
                        }

                        v50 = *(*(&v69 + 1) + 8 * i);
                        v51 = [v50 peerEndpoint];
                        if ([v51 isEqual:v43] && (v52 = objc_msgSend(v50, "peerInstanceID"), v52 == objc_msgSend(*(a1 + 48), "publishID")))
                        {
                          v53 = [v50 hasActiveDataSession];

                          if (v53)
                          {
                            v63 = _NRCopyLogObjectForNRUUID();
                            v64 = _NRLogIsLevelEnabled();

                            if (v64)
                            {
                              v65 = _NRCopyLogObjectForNRUUID();
                              _NRLogWithArgs(v65, 0, "%s%.30s:%-4d NAN: ignoring same discovery result", "", "[NRDiscoveryClient subscriber:receivedDiscoveryResult:]_block_invoke", 2317);
                            }

                            goto LABEL_62;
                          }
                        }

                        else
                        {
                        }
                      }

                      v47 = [(NRDNANPeer *)v46 countByEnumeratingWithState:&v69 objects:v92 count:16];
                      if (v47)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v54 = *(a1 + 32);
                  if (v54)
                  {
                    v55 = *(v54 + 248);
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v46 = [v55 objectForKeyedSubscript:v43];
                  if (!v46)
                  {
                    v46 = objc_alloc_init(NRDNANPeer);
                  }

                  v56 = [(NRDNANPeer *)v37 serviceName];
                  [(NRDNANPeer *)v46 setServiceName:v56];

                  v57 = [(NRDNANPeer *)v37 remoteIDSDeviceID];
                  [(NRDNANPeer *)v46 setRemoteIDSDeviceID:v57];

                  [(NRDNANPeer *)v46 setPeerEndpoint:v43];
                  -[NRDNANPeer setPeerInstanceID:](v46, "setPeerInstanceID:", [*(a1 + 48) publishID]);
                  [(NRDNANPeer *)v46 setIsInitiator:1];
                  [(NRDNANPeer *)v46 setInitiatorDiscoveryResult:*(a1 + 48)];
                  v58 = _NRCopyLogObjectForNRUUID();
                  v59 = _NRLogIsLevelEnabled();

                  if (v59)
                  {
                    v60 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v60, 0, "%s%.30s:%-4d NAN: subscriber discovered a valid peer %@", "", "[NRDiscoveryClient subscriber:receivedDiscoveryResult:]_block_invoke", 2333, v46);
                  }

                  v61 = *(a1 + 32);
                  if (v61)
                  {
                    v62 = *(v61 + 248);
                  }

                  else
                  {
                    v62 = 0;
                  }

                  [v62 setObject:v46 forKeyedSubscript:v43];
                  sub_10014AAF4(*(a1 + 32), v46);
LABEL_62:
                }

                goto LABEL_63;
              }
            }

            v35 = _NRCopyLogObjectForNRUUID();
            v36 = _NRLogIsLevelEnabled();

            if (v36)
            {
              v33 = *(v9 + 24);
              v34 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v34, 16, "%s%.30s:%-4d No auth tag %@", "", "[NRDiscoveryClient processDiscoveredNANPeer:]", 1938, v12);
              goto LABEL_24;
            }
          }

          else
          {
            v31 = _NRCopyLogObjectForNRUUID();
            v32 = _NRLogIsLevelEnabled();

            if (v32)
            {
              v33 = *(v9 + 24);
              v34 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v34, 16, "%s%.30s:%-4d No service name %@", "", "[NRDiscoveryClient processDiscoveredNANPeer:]", 1935, v12);
LABEL_24:
            }
          }

LABEL_25:
          v37 = 0;
          goto LABEL_31;
        }
      }

LABEL_63:
    }
  }

  else if (!*(a1 + 40))
  {
    goto LABEL_4;
  }
}

void sub_10014C798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  objc_destroyWeak((v44 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C7DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [v3 ipv6LinkLocalAddress];
      v6 = [v5 length];

      if (v6 == 16)
      {
        v12[1] = 0;
        v13 = 0;
        v12[2] = 0;
        v12[0] = 7708;
        v7 = [v4 ipv6LinkLocalAddress];
        [v7 bytes];
        [v7 length];
        __memcpy_chk();
        a1 = [NWAddressEndpoint endpointWithAddress:v12];

        goto LABEL_8;
      }
    }

    else
    {
      v8 = sub_10014A248();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_10014A248();
        _NRLogWithArgs(v10, 17, "%s called with null macAddress", "[NRDiscoveryClient copyAddressEndpointFromWFAMacAddress:]");
      }
    }

    a1 = 0;
  }

LABEL_8:

  return a1;
}

void sub_10014C8FC(void *a1, void *a2, void *a3)
{
  v65 = a2;
  v5 = a3;
  v6 = a1[4];
  if (!v6)
  {
LABEL_16:
    v19 = a1[5];
    if (v19)
    {
LABEL_17:
      v19 = v19[4];
    }

LABEL_18:
    v20 = v19;
    v21 = a1[5];
    if (v21)
    {
      v21 = v21[1];
    }

    v22 = v21;
    v23 = v65;
    if (v6)
    {
      v24 = sub_10014D4C4(v6, v20, v22);
      v25 = v24;
      if (v6[32] == 4)
      {
        v26 = sub_10014D5A4(v6, v24);
      }

      else
      {
        v26 = sub_10013D1EC(v24, v23);
      }

      v6 = v26;
    }

    v27 = a1[5];
    if (v27)
    {
      v27 = v27[2];
    }

    v28 = v27;
    v29 = sub_10013EE38(v6, v28);

    if (!v29)
    {
      goto LABEL_32;
    }

    v30 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_31;
    }

    v18 = 1991;
    goto LABEL_30;
  }

  v7 = *(v6 + 18);
  if (v6[32] != 4)
  {
    if (!*(v6 + 18) || v7 == 255)
    {
      goto LABEL_16;
    }

    v48 = a1[5];
    if (!v48)
    {
      goto LABEL_33;
    }

    v49 = *(v48 + 24);
    if (!v49)
    {
      goto LABEL_33;
    }

    v50 = v49;
    v51 = [v50 length];

    if (!v51)
    {
      goto LABEL_33;
    }

    v52 = a1[4];
    if (v52)
    {
      v53 = *(v52 + 18);
      v54 = a1[5];
      if (!v54)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v53 = 0;
      v54 = a1[5];
      if (!v54)
      {
LABEL_55:
        v55 = v54;
        v56 = a1[5];
        if (v56)
        {
          v56 = v56[1];
        }

        v57 = v56;
        v58 = v65;
        if (v52)
        {
          v59 = sub_10014D208(v52, v53, v55, v57);
          v60 = v59;
          if (*(v52 + 256) == 4)
          {
            v61 = sub_10014D5A4(v52, v59);
          }

          else
          {
            v61 = sub_10013D1EC(v59, v58);
          }

          v52 = v61;
        }

        v62 = a1[5];
        if (v62)
        {
          v62 = v62[3];
        }

        v63 = v62;
        v64 = sub_10013EE38(v52, v63);

        if (!v64)
        {
          goto LABEL_33;
        }

        v6 = a1[4];
        v19 = a1[5];
        if (v19)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    v54 = v54[4];
    goto LABEL_55;
  }

  if (!*(v6 + 18) || v7 == 255)
  {
    v8 = a1[5];
    if (!v8)
    {
LABEL_7:
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v10 = v10[1];
      }

      v11 = v10;
      v6 = sub_10014D4C4(v6, v9, v11);

      v13 = a1[4];
      v12 = a1[5];
      if (v12)
      {
        v12 = v12[2];
      }

      v14 = v12;
      v15 = sub_10014D2D0(v13, v14, v6, v5);

      if (!v15)
      {
        goto LABEL_32;
      }

      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (!v17)
      {
LABEL_31:
        *(*(a1[6] + 8) + 24) = 1;
LABEL_32:

        goto LABEL_33;
      }

      v18 = 1967;
LABEL_30:
      v32 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v32, 1, "%s%.30s:%-4d Found a device over NAN", "", "[NRDiscoveryClient processDiscoveredNANPeer:]_block_invoke", v18);

      goto LABEL_31;
    }

LABEL_6:
    v8 = v8[4];
    goto LABEL_7;
  }

  v33 = a1[5];
  if (v33)
  {
    v34 = *(v33 + 24);
    if (v34)
    {
      v35 = v34;
      v36 = [v35 length];

      if (v36)
      {
        v37 = a1[4];
        if (v37)
        {
          v38 = *(v37 + 18);
          v39 = a1[5];
          if (!v39)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v38 = 0;
          v39 = a1[5];
          if (!v39)
          {
LABEL_42:
            v40 = v39;
            v41 = a1[5];
            if (v41)
            {
              v41 = v41[1];
            }

            v42 = v41;
            v43 = sub_10014D208(v37, v38, v40, v42);

            v45 = a1[4];
            v44 = a1[5];
            if (v44)
            {
              v44 = v44[3];
            }

            v46 = v44;
            v47 = sub_10014D2D0(v45, v46, v43, v5);

            if (v47)
            {
              v6 = a1[4];
              v8 = a1[5];
              if (!v8)
              {
                goto LABEL_7;
              }

              goto LABEL_6;
            }

            goto LABEL_33;
          }
        }

        v39 = v39[4];
        goto LABEL_42;
      }
    }
  }

LABEL_33:
}

uint64_t sub_10014CDDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10014CDF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 21) & 1) == 0)
  {
    if (v6 || ![v5 count])
    {
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d No fetched identities (%@)", "", "[NRDiscoveryClient processDiscoveredNANPeer:]_block_invoke_2", 2032, v6);
      }
    }

    else
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = _NRLogIsLevelEnabled();

      if (v13)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v14, 1, "%s%.30s:%-4d Fetched %u identities", "", "-[NRDiscoveryClient processDiscoveredNANPeer:]_block_invoke_2", 2013, [v5 count]);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = v5;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v16)
      {
        v17 = *v34;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            if ([v19 type] == 1)
            {
              v16 = v19;
              goto LABEL_19;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = v15;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
LABEL_22:
        v24 = 0;
        while (1)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v29 + 1) + 8 * v24);
          if ([v25 type] != 1)
          {
            (*(*(a1 + 32) + 16))();
            if (*(*(*(a1 + 40) + 8) + 24) == 1)
            {
              break;
            }
          }

          if (v22 == ++v24)
          {
            v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (!v22)
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          }
        }

        v26 = [v25 idsDeviceID];
        v27 = *(*(a1 + 48) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;
      }

LABEL_29:
    }
  }
}

void sub_10014D104(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 184);
  if (!v6)
  {
    v7 = objc_alloc_init(RPClient);
    v8 = *(a1 + 184);
    *(a1 + 184) = v7;

    v9 = *(a1 + 184);
    v10 = *(a1 + 40);
    [v9 setDispatchQueue:v10];

    v6 = *(a1 + 184);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014D1F8;
  v12[3] = &unk_1001FC758;
  v11 = v5;
  v13 = v11;
  [v6 getIdentitiesWithFlags:a2 completion:v12];
}

id sub_10014D208(uint64_t a1, int a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a4;
  v8 = 0;
  if (a1)
  {
    if (a2)
    {
      v9 = a3;
      v8 = [[NSMutableData alloc] initWithBytes:&v12 length:1];
      v10 = [v9 dataUsingEncoding:4];

      [v8 appendData:v10];
      if ([v7 length])
      {
        [v8 appendData:v7];
      }
    }
  }

  return v8;
}

id sub_10014D2D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (!v7)
  {
    v19 = sub_10014A248();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_19;
    }

    v21 = sub_10014A248();
    _NRLogWithArgs(v21, 17, "%s called with null signature");
LABEL_18:

    goto LABEL_19;
  }

  if (!v8)
  {
    v22 = sub_10014A248();
    v23 = _NRLogIsLevelEnabled();

    if (!v23)
    {
      goto LABEL_19;
    }

    v21 = sub_10014A248();
    _NRLogWithArgs(v21, 17, "%s called with null data");
    goto LABEL_18;
  }

  if (!v9)
  {
    v24 = sub_10014A248();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v21 = sub_10014A248();
      _NRLogWithArgs(v21, 17, "%s called with null identity");
      goto LABEL_18;
    }

LABEL_19:
    v11 = 0;
    goto LABEL_11;
  }

  v26 = 0;
  v11 = [v9 verifySignature:v7 data:v8 error:&v26];
  v12 = v26;
  v13 = v12;
  if (v12 && [v12 code] != -6754)
  {
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = *(a1 + 24);
      v17 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v17, 1, "%s%.30s:%-4d verification failed with error %@", "", "[NRDiscoveryClient verifyRPSignature:forData:withIdentity:]", 630, v13);
    }

    v11 = 0;
  }

LABEL_11:
  return v11;
}

void *sub_10014D4C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = [a2 dataUsingEncoding:4];
    if (*(a1 + 200))
    {
      v7 = [[NSMutableData alloc] initWithData:v6];
      v8 = [*(a1 + 200) dataUsingEncoding:4];
      [v7 appendData:v8];

      v6 = v7;
    }

    if ([v5 length])
    {
      v9 = [[NSMutableData alloc] initWithData:v6];
      [v9 appendData:v5];

      v6 = v9;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10014D5A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v14 = sub_10014A248();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_10014A248();
      _NRLogWithArgs(v16, 17, "%s called with null data");
LABEL_15:
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v4 = *(a1 + 192);
  if (!v4)
  {
    v17 = sub_10014A248();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v16 = sub_10014A248();
      _NRLogWithArgs(v16, 17, "%s called with null self.rpSelfIdentity");
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if ([v4 type] != 1 || !objc_msgSend(v3, "length"))
  {
    goto LABEL_16;
  }

  v5 = *(a1 + 192);
  v20 = 0;
  v6 = v5;
  v7 = [v6 signData:v3 error:&v20];
  v8 = v20;

  if (v8)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v11 = *(a1 + 24);
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v12, 17, "signing failed with error %@", v8);
    }

    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

LABEL_17:
  return v13;
}

void sub_10014D810(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 21))
    {
      return;
    }

    v3 = *(v2 + 240);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 40) == v3)
  {
    v4 = sub_10014C7DC(v2, *(a1 + 48));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 248);
    }

    else
    {
      v6 = 0;
    }

    v14 = v4;
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = [v7 initiatorDiscoveryResult];
    if ([v8 publishID] == *(a1 + 56))
    {
      v9 = [v7 responderDataSession];

      if (v9)
      {
        goto LABEL_16;
      }

      v10 = *(a1 + 32);
      v11 = v10 ? *(v10 + 248) : 0;
      [v11 setObject:0 forKeyedSubscript:v14];
      if (!v7)
      {
        goto LABEL_16;
      }

      sub_10014D9AC(*(a1 + 32), v7);
      v12 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_16;
      }

      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d NAN: subscriber lost discovered peer %@", "", "[NRDiscoveryClient subscriber:lostDiscoveryResultForPublishID:address:]_block_invoke", 2288, v7);
    }

LABEL_16:
  }
}

void sub_10014D9AC(uint64_t a1, void *a2)
{
  v8 = a2;
  if (a1)
  {
    if ([v8 hasActiveDataSession])
    {
      v3 = [v8 initiatorDataSession];

      if (v3)
      {
        v4 = [v8 initiatorDataSession];
        [v4 stop];

        [v8 setInitiatorDataSession:0];
      }

      v5 = [v8 responderDataSession];

      if (v5)
      {
        v6 = *(a1 + 232);
        v7 = [v8 responderDataSession];
        [v6 terminateDataSession:v7 completionHandler:&stru_1001FCA30];

        [v8 setResponderDataSession:0];
      }
    }

    [v8 setLocalInterfaceIndex:0];
  }
}

void sub_10014DB50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 21) & 1) != 0 || *(a1 + 40) != *(v1 + 240))
    {
      return;
    }

    v2 = a1;
  }

  else
  {
    if (*(a1 + 40))
    {
      return;
    }

    v2 = a1;
  }

  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d NAN: subscriber terminated %zd", "", "[NRDiscoveryClient subscriber:terminatedWithReason:]_block_invoke", 2265, *(v2 + 48));
  }
}

void sub_10014DD04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 21) & 1) != 0 || *(a1 + 40) != *(v1 + 240))
    {
      return;
    }

    v2 = a1;
  }

  else
  {
    if (*(a1 + 40))
    {
      return;
    }

    v2 = a1;
  }

  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d NAN: subscriber failed to start %zd", "", "[NRDiscoveryClient subscriber:failedToStartWithError:]_block_invoke", 2252, *(v2 + 48));
  }
}

void sub_10014DEA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 21) & 1) != 0 || *(a1 + 40) != *(v1 + 240))
    {
      return;
    }
  }

  else if (*(a1 + 40))
  {
    return;
  }

  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d NAN: subscriber started", "", "[NRDiscoveryClient subscriberStarted:]_block_invoke", 2239);
  }
}

void sub_10014E070(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v2 != *(v3 + 232))
    {
      return;
    }
  }

  else if (v2)
  {
    return;
  }

  v4 = [*(a1 + 48) initiatorDataAddress];
  v14 = sub_10014C7DC(v3, v4);

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 248);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 objectForKeyedSubscript:v14];
  if ([(NRDNANPeer *)v7 hasActiveDataSession])
  {
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d NAN: publisher already has an active data session with %@", "", "[NRDiscoveryClient publisher:dataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:]_block_invoke", 2189, v7);
    }
  }

  else
  {
    if (!v7)
    {
      v7 = objc_alloc_init(NRDNANPeer);
    }

    [(NRDNANPeer *)v7 setLocalInterfaceIndex:*(a1 + 56)];
    [(NRDNANPeer *)v7 setResponderDataSession:*(a1 + 48)];
    v11 = [v14 hostname];
    [(NRDNANPeer *)v7 setServiceName:v11];

    [(NRDNANPeer *)v7 setPeerEndpoint:v14];
    -[NRDNANPeer setPeerInstanceID:](v7, "setPeerInstanceID:", [*(a1 + 48) datapathID]);
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 248);
    }

    else
    {
      v13 = 0;
    }

    [v13 setObject:v7 forKeyedSubscript:v14];
    sub_10014AD7C(*(a1 + 40), v7);
  }
}

void sub_10014E328(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v2 != *(v3 + 232))
    {
      return;
    }
  }

  else if (v2)
  {
    return;
  }

  v4 = [*(a1 + 48) initiatorDataAddress];
  v14 = sub_10014C7DC(v3, v4);

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 248);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 objectForKeyedSubscript:v14];
  v8 = [v7 responderDataSession];
  if (v8 == *(a1 + 48))
  {
    v9 = [v7 initiatorDataSession];

    if (v9)
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 40);
    v11 = v10 ? *(v10 + 248) : 0;
    [v11 setObject:0 forKeyedSubscript:v14];
    if (!v7)
    {
      goto LABEL_10;
    }

    sub_10014D9AC(*(a1 + 40), v7);
    v12 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_10;
    }

    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d NAN: publisher data session terminated for %@ with reason %zd", "", "[NRDiscoveryClient publisher:dataTerminatedForHandle:reason:]_block_invoke", 2173, v7, *(a1 + 56));
  }

LABEL_10:
}

void sub_10014E730(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    if (v3 != *(v2 + 232))
    {
      return;
    }
  }

  else if (v3)
  {
    return;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d NAN: publisher terminated with reason %zd", "", "[NRDiscoveryClient publisher:terminatedWithReason:]_block_invoke", 2138, a1[6]);
  }
}

void sub_10014E8C8(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    if (v3 != *(v2 + 232))
    {
      return;
    }
  }

  else if (v3)
  {
    return;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d NAN: publisher failed with error %zd", "", "[NRDiscoveryClient publisher:failedToStartWithError:]_block_invoke", 2128, a1[6]);
  }
}

void *sub_10014EAC4(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    if (a3 > 103)
    {
      switch(a3)
      {
        case 'y':
          LOBYTE(v4) = 8;
          goto LABEL_19;
        case 'x':
          LOBYTE(v4) = 1;
          goto LABEL_19;
        case 'h':
          LOBYTE(v4) = 7;
          goto LABEL_19;
      }
    }

    else
    {
      switch(a3)
      {
        case 'e':
          LOBYTE(v4) = 2;
          goto LABEL_19;
        case 'f':
          LOBYTE(v4) = 5;
          goto LABEL_19;
        case 'g':
          LOBYTE(v4) = 6;
LABEL_19:
          v5 = [NSNumber numberWithUnsignedChar:v4];
          v3 = [v3 objectForKeyedSubscript:v5];

          return v3;
      }
    }

    v4 = 0x40300020100uLL >> (8 * (a2 & 0x1F));
    if (a2 > 5)
    {
      LOBYTE(v4) = 0;
    }

    goto LABEL_19;
  }

  return v3;
}

void *sub_10014EBAC(void *result, unsigned int a2, int a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v4 = result[15];
  if (!v4)
  {
    return 0;
  }

  if (a3 > 103)
  {
    switch(a3)
    {
      case 'y':
        LOBYTE(v6) = 8;
        goto LABEL_19;
      case 'x':
        LOBYTE(v6) = 1;
        goto LABEL_19;
      case 'h':
        LOBYTE(v6) = 7;
        goto LABEL_19;
    }
  }

  else
  {
    switch(a3)
    {
      case 'e':
        LOBYTE(v6) = 2;
        goto LABEL_19;
      case 'f':
        LOBYTE(v6) = 5;
        goto LABEL_19;
      case 'g':
        LOBYTE(v6) = 6;
        goto LABEL_19;
    }
  }

  v6 = 0x40300020100uLL >> (8 * (a2 & 0x1F));
  if (a2 > 5)
  {
    LOBYTE(v6) = 0;
  }

LABEL_19:
  v7 = [NSNumber numberWithUnsignedChar:v6];
  v8 = [v4 objectForKeyedSubscript:v7];

  if (!v8)
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    if (a4)
    {
      v11 = v10;
      v12 = *v18;
      v13 = a4;
LABEL_23:
      v14 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if ([v15 addressFamily] == v13)
        {
          break;
        }

        if (v11 == ++v14)
        {
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v10 = 0;
          if (v11)
          {
            goto LABEL_23;
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      v15 = **(&v17 + 1);
      [**(&v17 + 1) addressFamily];
    }

    v10 = v15;
  }

LABEL_33:
  v16 = v10;

  return v16;
}

id sub_10014EDA8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 128);
    v2 = [NSNumber numberWithUnsignedChar:4];
    v3 = [v1 objectForKeyedSubscript:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10014EE30(id a1)
{
  v1 = [NRDiscoveryManager alloc];
  v4 = sub_100003490();
  v2 = sub_10014EE9C(v1, v4);
  v3 = qword_100229398;
  qword_100229398 = v2;
}

void *sub_10014EE9C(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = NRDiscoveryManager;
    v5 = objc_msgSendSuper2(&v16, "init");
    if (!v5)
    {
      v9 = sub_10014A248();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_10014A248();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDiscoveryManager initWithQueue:]", 273);
      }

      v12 = _os_log_pack_size();
      v13 = __error();
      v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s [super init] failed");
      *v14 = 136446210;
      *(v14 + 4) = "[NRDiscoveryManager initWithQueue:]";
      sub_10014A248();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 2, a2);
    v6 = +[NSUUID UUID];
    v7 = a1[3];
    a1[3] = v6;
  }

  return a1;
}

id *sub_10014F018(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = NRDiscoveryClient;
    v8 = objc_msgSendSuper2(&v20, "init");
    if (!v8)
    {
      v13 = sub_10014A248();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_10014A248();
        _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDiscoveryClient initWithQueue:nrUUID:]", 349);
      }

      v16 = _os_log_pack_size();
      v17 = __error();
      v18 = _os_log_pack_fill(&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, *v17, &_mh_execute_header, "%{public}s [super init] failed");
      *v18 = 136446210;
      *(v18 + 4) = "[NRDiscoveryClient initWithQueue:nrUUID:]";
      sub_10014A248();
      _NRLogAbortWithPack();
    }

    a1 = v8;
    v8[4] = atomic_fetch_add_explicit(&qword_100228AF0, 1uLL, memory_order_relaxed);
    objc_storeStrong(v8 + 5, a2);
    objc_storeStrong(a1 + 3, a3);
    v9 = objc_alloc_init(NSMutableArray);
    v10 = a1[12];
    a1[12] = v9;

    v11 = a1[26];
    a1[26] = @"_nrd._tcp";
  }

  return a1;
}

void sub_10014F1DC(uint64_t a1)
{
  if (a1)
  {
    v2 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v4, 0, "%s%.30s:%-4d Cancelling %@", "", "[NRDiscoveryClient cancel]", 367, a1);
    }

    *(a1 + 21) = 1;
    v5 = *(a1 + 56);
    if (v5)
    {
      [v5 invalidate];
      v6 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    if ([*(a1 + 64) count])
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v7 = *(a1 + 64);
      v8 = [v7 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v53;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v53 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v52 + 1) + 8 * i) invalidate];
          }

          v9 = [v7 countByEnumeratingWithState:&v52 objects:v59 count:16];
        }

        while (v9);
      }

      v12 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v13 = [*(a1 + 168) allValues];
    v14 = [v13 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v49;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v49 != v16)
          {
            objc_enumerationMutation(v13);
          }

          nw_browser_cancel(*(*(&v48 + 1) + 8 * j));
        }

        v15 = [v13 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v15);
    }

    v18 = *(a1 + 168);
    *(a1 + 168) = 0;

    sub_10014F5E4(a1);
    v19 = *(a1 + 176);
    if (v19)
    {
      v20 = [v19 allKeys];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v45;
        do
        {
          for (k = 0; k != v22; k = k + 1)
          {
            if (*v45 != v23)
            {
              objc_enumerationMutation(v20);
            }

            sub_10014F754(a1, [*(*(&v44 + 1) + 8 * k) unsignedShortValue]);
          }

          v22 = [v20 countByEnumeratingWithState:&v44 objects:v57 count:16];
        }

        while (v22);
      }

      v25 = *(a1 + 176);
      *(a1 + 176) = 0;
    }

    v26 = *(a1 + 216);
    if (v26)
    {
      [v26 invalidate];
      v27 = *(a1 + 216);
      *(a1 + 216) = 0;
    }

    v28 = *(a1 + 224);
    if (v28)
    {
      [v28 invalidate];
      v29 = *(a1 + 224);
      *(a1 + 224) = 0;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = [*(a1 + 248) allValues];
    v31 = [v30 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v41;
      do
      {
        for (m = 0; m != v32; m = m + 1)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(v30);
          }

          sub_10014D9AC(a1, *(*(&v40 + 1) + 8 * m));
        }

        v32 = [v30 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v32);
    }

    v35 = *(a1 + 248);
    *(a1 + 248) = 0;

    v36 = *(a1 + 232);
    if (v36)
    {
      [v36 stop];
      v37 = *(a1 + 232);
      *(a1 + 232) = 0;
    }

    v38 = *(a1 + 240);
    if (v38)
    {
      [v38 stop];
      v39 = *(a1 + 240);
      *(a1 + 240) = 0;
    }
  }
}

void sub_10014F5E4(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 160) allValues];
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

        nw_listener_cancel(*(*(&v11 + 1) + 8 * i));
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 160);
  *(a1 + 160) = 0;

  objc_opt_self();
  if (qword_1002293A0 != -1)
  {
    dispatch_once(&qword_1002293A0, &stru_1001FC6E0);
  }

  v8 = qword_100229398;
  v9 = v8;
  if (v8)
  {
    [v8[4] removeObject:*(a1 + 112)];
  }

  v10 = *(a1 + 112);
  *(a1 + 112) = 0;
}

void sub_10014F754(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 19) == 1 && *(a1 + 20) == 1)
    {
      v3 = *(a1 + 176);
      if (v3)
      {
        v18 = a2;
        v4 = [NSNumber numberWithUnsignedChar:a2];
        v5 = [v3 objectForKeyedSubscript:v4];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            v10 = 0;
            do
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v19 + 1) + 8 * v10);
              v12 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v14 = *(a1 + 24);
                v15 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v15, 0, "%s%.30s:%-4d cancelling resolver %@", "", "[NRDiscoveryClient stopResolvingOverLinkType:]", 499, v11);
              }

              nw_resolver_cancel();
              v10 = v10 + 1;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v8);
        }

        v16 = *(a1 + 176);
        v17 = [NSNumber numberWithUnsignedChar:v18];
        [v16 setObject:0 forKeyedSubscript:v17];
      }
    }
  }
}

void sub_10014F958(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 104);
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableSet);
      v6 = *(a1 + 104);
      *(a1 + 104) = v5;

      v4 = *(a1 + 104);
    }

    v7 = [NSNumber numberWithUnsignedChar:a2];
    [v4 addObject:v7];

    if (*(a1 + 19) == 1 && *(a1 + 20) == 1)
    {
      sub_10014FA20(a1, a2);

      sub_1001501B4(a1, a2);
    }
  }
}

void sub_10014FA20(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 15) != 1)
  {
    return;
  }

  v59 = *(a1 + 104);
  if (![v59 count])
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 104);
  v5 = [NSNumber numberWithUnsignedChar:a2];
  v6 = [v4 containsObject:v5];

  if (!v6)
  {
    return;
  }

  v7 = *(a1 + 120);
  if (!v7 || (v8 = *(a1 + 112), v7, !v8))
  {
    v15 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v59 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v59, 17, "invalid advertising configuration");
LABEL_16:

    return;
  }

  if (a2 == 7)
  {
    v9 = *(a1 + 104);
    if ([v9 containsObject:&off_100209E60] & 1) != 0 && (objc_msgSend(*(a1 + 104), "containsObject:", &off_100209E78))
    {
      v10 = sub_1000BA648(NRLinkDirector);
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
      v14 = sub_10017E354(v13);

      if (v14)
      {
        a2 = 2;
      }

      else
      {
        a2 = 7;
      }
    }

    else
    {

      a2 = 7;
    }
  }

  v17 = (a1 + 160);
  v18 = *(a1 + 160);
  v19 = [NSNumber numberWithUnsignedChar:a2];
  v20 = [v18 objectForKeyedSubscript:v19];

  if (!v20 && (a2 & 0xFFFFFFFD) != 1)
  {
    if (a2 == 6)
    {

      sub_10015271C(a1);
      return;
    }

    v21 = *(a1 + 112);
    v22 = *(a1 + 208);
    v23 = *(a1 + 120);
    v24 = *(a1 + 128);
    v58 = *(a1 + 264);
    v56 = v21;
    v57 = *(a1 + 136);
    bonjour_service = nw_advertise_descriptor_create_bonjour_service([v21 UTF8String], objc_msgSend(v22, "UTF8String"), 0);
    nw_advertise_descriptor_set_no_auto_rename(bonjour_service, 1);
    dictionary = nw_txt_record_create_dictionary();
    v54 = v23;
    nw_txt_record_set_key(dictionary, "nrAT", [v23 bytes], objc_msgSend(v23, "length"));
    if (v24)
    {
      nw_txt_record_set_key(dictionary, "nrD", [v24 bytes], objc_msgSend(v24, "length"));
    }

    v53 = v24;
    if (v58)
    {
      nw_txt_record_set_key(dictionary, "nrAD", [v58 bytes], objc_msgSend(v58, "length"));
    }

    if (v57)
    {
      nw_txt_record_set_key(dictionary, "nrN", [v57 bytes], objc_msgSend(v57, "length"));
    }

    v26 = _NRIsAppleInternal();
    if (v26)
    {
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      if (byte_100229230 == 1)
      {
        *value = sub_100152934(v26, v27);
        nw_txt_record_set_key(dictionary, "nrF", value, 8uLL);
      }
    }

    nw_advertise_descriptor_set_txt_record_object(bonjour_service, dictionary);
    secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
    parameters = secure_tcp;
    if (a2 <= 4)
    {
      if (a2 == 2)
      {
        v29 = secure_tcp;
        nw_parameters_set_required_interface_subtype();
      }

      else
      {
        v29 = secure_tcp;
        if (a2 == 4)
        {
          nw_parameters_set_required_interface_type(secure_tcp, nw_interface_type_wired);
        }
      }

      goto LABEL_49;
    }

    if (a2 == 7)
    {
      v30 = nw_interface_create_with_name();
      if (!v30)
      {
        v50 = sub_10014A248();
        v51 = _NRLogIsLevelEnabled();

        if (v51)
        {
          v33 = sub_10014A248();
          v34 = v33;
          v35 = 7;
          v36 = 1277;
          goto LABEL_58;
        }

LABEL_54:

        return;
      }
    }

    else
    {
      v29 = secure_tcp;
      if (a2 != 5)
      {
LABEL_49:
        v52 = v22;
        objc_initWeak(value, a1);
        v38 = nw_listener_create(v29);
        nw_listener_set_advertise_descriptor(v38, bonjour_service);
        v39 = *(a1 + 40);
        nw_listener_set_queue(v38, v39);

        nw_listener_set_new_connection_handler(v38, &stru_1001FC888);
        objc_copyWeak(&v61, value);
        v62 = a2;
        v40 = v38;
        v41 = v56;
        nw_listener_set_event_handler();
        nw_listener_start(v40);
        if (!*v17)
        {
          v42 = objc_alloc_init(NSMutableDictionary);
          objc_storeStrong((a1 + 160), v42);
        }

        v43 = *(a1 + 24);
        v44 = _NRCopyLogObjectForNRUUID();
        v45 = _NRLogIsLevelEnabled();

        if (v45)
        {
          v46 = *(a1 + 24);
          v47 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v47, 0, "%s%.30s:%-4d advertiser created w/ service name %@ for link type %u", "", "[NRDiscoveryClient startAdvertisingOverLinkType:]", 1317, v41, a2);
        }

        v48 = *v17;
        v49 = [NSNumber numberWithUnsignedChar:a2];
        [v48 setObject:v40 forKeyedSubscript:v49];

        objc_destroyWeak(&v61);
        objc_destroyWeak(value);
        v22 = v52;
        goto LABEL_54;
      }

      v30 = nw_interface_create_with_name();
      if (!v30)
      {
        v31 = sub_10014A248();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = sub_10014A248();
          v34 = v33;
          v35 = 5;
          v36 = 1262;
LABEL_58:
          _NRLogWithArgs(v33, 16, "%s%.30s:%-4d no interface for type %d", "", "[NRDiscoveryClient startAdvertisingOverLinkType:]", v36, v35);

          goto LABEL_54;
        }

        goto LABEL_54;
      }
    }

    v37 = v30;
    v29 = parameters;
    nw_parameters_require_interface(parameters, v30);

    goto LABEL_49;
  }
}

void sub_100150188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak((v29 - 96));
  _Unwind_Resume(a1);
}

void sub_1001501B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= 7 && ((1 << a2) & 0x8A) != 0 || *(a1 + 16) != 1)
  {
    return;
  }

  v29 = *(a1 + 104);
  if ([v29 count])
  {
    v4 = *(a1 + 104);
    v5 = [NSNumber numberWithUnsignedChar:a2];
    v6 = [v4 containsObject:v5];

    if (!v6)
    {
      return;
    }

    v7 = *(a1 + 168);
    v8 = [NSNumber numberWithUnsignedChar:a2];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      return;
    }

    if (*(a1 + 144))
    {
      if (a2 == 6)
      {

        sub_100150678(a1);
      }

      else
      {
        secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
        v13 = secure_tcp;
        switch(a2)
        {
          case 2:
            nw_parameters_set_required_interface_subtype();
            break;
          case 4:
            nw_parameters_set_required_interface_type(secure_tcp, nw_interface_type_wired);
            break;
          case 5:
            v14 = nw_interface_create_with_name();
            nw_parameters_require_interface(v13, v14);

            break;
        }

        objc_initWeak(location, a1);
        bonjour_service = nw_browse_descriptor_create_bonjour_service([*(a1 + 208) UTF8String], 0);
        nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);
        v16 = nw_browser_create(bonjour_service, v13);
        state_changed_handler[0] = _NSConcreteStackBlock;
        state_changed_handler[1] = 3221225472;
        state_changed_handler[2] = sub_1001507A8;
        state_changed_handler[3] = &unk_1001FC7A8;
        objc_copyWeak(&v37, location);
        v38 = a2;
        v17 = v16;
        v36 = v17;
        nw_browser_set_state_changed_handler(v17, state_changed_handler);
        v18 = *(a1 + 24);
        if (v18)
        {
          v19 = v18;
          v20 = sub_100163B2C(NRDLocalDevice, v19, 0);
        }

        else
        {
          v20 = 0;
        }

        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100150940;
        handler[3] = &unk_1001FC7F8;
        objc_copyWeak(&v33, location);
        v34 = a2;
        v21 = v17;
        v31 = v21;
        v22 = v20;
        v32 = v22;
        nw_browser_set_browse_results_changed_handler(v21, handler);
        v23 = *(a1 + 40);
        nw_browser_set_queue(v21, v23);

        nw_browser_start(v21);
        v24 = *(a1 + 168);
        if (!v24)
        {
          v25 = objc_alloc_init(NSMutableDictionary);
          v26 = *(a1 + 168);
          *(a1 + 168) = v25;

          v24 = *(a1 + 168);
        }

        v27 = v24;
        v28 = [NSNumber numberWithUnsignedChar:a2];
        [v27 setObject:v21 forKeyedSubscript:v28];

        objc_destroyWeak(&v33);
        objc_destroyWeak(&v37);

        objc_destroyWeak(location);
      }

      return;
    }

    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v29 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v29, 16, "%s%.30s:%-4d unsupported", "", "[NRDiscoveryClient startBrowsingOverLinkType:]", 795);
  }
}

void sub_100150634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100150678(uint64_t a1)
{
  if (_os_feature_enabled_impl() && !*(a1 + 240))
  {
    v6 = [[WiFiAwareSubscribeConfiguration alloc] initWithServiceName:*(a1 + 208)];
    [v6 setAuthenticationType:0];
    v2 = [[WiFiAwareSubscriber alloc] initWithConfiguration:v6];
    [v2 setDelegate:a1];
    [v2 start];
    objc_storeStrong((a1 + 240), v2);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d NAN: subscriber start", "", "[NRDiscoveryClient startNANSubscriber]", 2227);
    }
  }
}

void sub_1001507A8(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 21) & 1) == 0)
    {
      v7 = *(a1 + 48);
      v8 = WeakRetained[21];
      v9 = [NSNumber numberWithUnsignedChar:v7];
      v10 = [v8 objectForKeyedSubscript:v9];
      v11 = *(a1 + 32);

      if (v10 == v11)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v14 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v14, 0, "%s%.30s:%-4d browser entered state: %u (%@)", "", "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke", 831, a2, v18);
        }

        if (a2 == 1)
        {
          v15 = _NRCopyLogObjectForNRUUID();
          v16 = _NRLogIsLevelEnabled();

          if (v16)
          {
            v17 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v17, 0, "%s%.30s:%-4d browsing started", "", "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke", 833);
          }
        }
      }
    }
  }
}

void sub_100150940(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 21) & 1) == 0)
    {
      v11 = *(a1 + 56);
      v12 = WeakRetained[21];
      v13 = [NSNumber numberWithUnsignedChar:v11];
      v14 = [v12 objectForKeyedSubscript:v13];
      v15 = *(a1 + 32);

      if (v14 == v15)
      {
        changes = nw_browse_result_get_changes(v7, v8);
        v17 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v19 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v19, 0, "%s%.30s:%-4d browser results changed: complete=%d change=%#llx", "", "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke_2", 852, a4, changes);
        }

        if ((changes & 2) != 0)
        {
          v20 = nw_browse_result_copy_endpoint(v8);
          v21 = _NRCopyLogObjectForNRUUID();
          v22 = _NRLogIsLevelEnabled();

          v67 = v20;
          if (v22)
          {
            v23 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v23, 1, "%s%.30s:%-4d added endpoint %@", "", "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke_2", 858, v20);
          }
        }

        else
        {
          v67 = 0;
        }

        if ((changes & 4) != 0 && (endpoint = nw_browse_result_copy_endpoint(v7)) != 0)
        {
          if (*(v10 + 80))
          {
            bonjour_service_name = nw_endpoint_get_bonjour_service_name(endpoint);
            if (bonjour_service_name)
            {
              v65 = [NSString stringWithUTF8String:bonjour_service_name];
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v25 = *(v10 + 96);
              v26 = [v25 countByEnumeratingWithState:&v79 objects:v83 count:16];
              if (v26)
              {
                v27 = *v80;
                while (2)
                {
                  v28 = 0;
                  do
                  {
                    if (*v80 != v27)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v29 = *(*(&v79 + 1) + 8 * v28);
                    if (v29)
                    {
                      v30 = v29[2];
                    }

                    else
                    {
                      v30 = 0;
                    }

                    if ([v30 isEqualToString:v65])
                    {
                      v54 = v29 == 0;
                      v32 = v29;

                      if (v54)
                      {
                        v32 = 0;
                        goto LABEL_59;
                      }

                      v55 = *(a1 + 56);
                      v56 = v32[15];
                      v57 = [NSNumber numberWithUnsignedChar:v55];
                      [v56 setObject:0 forKeyedSubscript:v57];

                      if ([v32[15] count])
                      {
                        if (!*(v10 + 88))
                        {
                          goto LABEL_59;
                        }

                        v58 = *(v10 + 40);
                        block[0] = _NSConcreteStackBlock;
                        block[1] = 3221225472;
                        block[2] = sub_100151100;
                        block[3] = &unk_1001FD060;
                        v74 = v10;
                        v32 = v32;
                        v75 = v32;
                        dispatch_async(v58, block);

                        v25 = v74;
                      }

                      else
                      {
                        [*(v10 + 96) removeObject:v32];
                        v59 = *(v10 + 80);
                        if (!v59)
                        {
                          goto LABEL_59;
                        }

                        v60 = v59;
                        v61 = *(v10 + 40);
                        v76[0] = _NSConcreteStackBlock;
                        v76[1] = 3221225472;
                        v76[2] = sub_1001510EC;
                        v76[3] = &unk_1001FCE50;
                        v78 = v60;
                        v32 = v32;
                        v77 = v32;
                        v25 = v60;
                        dispatch_async(v61, v76);
                      }

                      goto LABEL_58;
                    }

                    v28 = v28 + 1;
                  }

                  while (v26 != v28);
                  v31 = [v25 countByEnumeratingWithState:&v79 objects:v83 count:16];
                  v26 = v31;
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

              v32 = 0;
LABEL_58:

LABEL_59:
            }
          }
        }

        else
        {
          endpoint = 0;
        }

        if (!v67)
        {
          goto LABEL_53;
        }

        v33 = nw_browse_result_copy_endpoint(v8);
        v34 = nw_endpoint_get_bonjour_service_name(v33);
        if (v34)
        {
          v35 = [NSString stringWithUTF8String:v34];
          v36 = [v35 lowercaseString];

          objc_opt_self();
          if (qword_1002293A0 != -1)
          {
            dispatch_once(&qword_1002293A0, &stru_1001FC6E0);
          }

          v37 = qword_100229398;
          if (!v37 || (v38 = v37, v39 = [v37[4] containsObject:v36], v38, (v39 & 1) == 0))
          {
            v63 = nw_browse_result_copy_txt_record_object(v8);
            v66 = sub_100151120(v63, "nrN");
            v40 = _NRCopyLogObjectForNRUUID();
            v41 = _NRLogIsLevelEnabled();

            if (v41)
            {
              v42 = *(v10 + 24);
              v43 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v43, 0, "%s%.30s:%-4d discovered endpoint %@ serviceName %@", "", "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke_2", 912, v33, v36);
            }

            v44 = *(v10 + 256);
            if (v44 <= 8 && ((1 << v44) & 0x106) != 0)
            {
              v45 = *(v10 + 152);
              if (v66)
              {
                v46 = *(v10 + 152);
                v47 = *(v10 + 200);
                v48 = v46;
                v49 = [v47 dataUsingEncoding:4];
                v62 = sub_10013EBBC(v48, v66, v49);

                v45 = v62;
              }

              v50 = *(a1 + 40);
              if (v50)
              {
                v50 = v50[5];
              }

              v51 = v50;
              sub_1001512C0(v10, v8, v33, v36, v45, v51, 0);
            }

            else
            {
              v68[0] = _NSConcreteStackBlock;
              v68[1] = 3221225472;
              v68[2] = sub_100151B4C;
              v68[3] = &unk_1001FC7D0;
              objc_copyWeak(&v72, (a1 + 48));
              v69 = v8;
              v70 = v33;
              v71 = v36;
              sub_10014D104(v10, 28671, v68);

              objc_destroyWeak(&v72);
            }
          }
        }

        else
        {
          v52 = _NRCopyLogObjectForNRUUID();
          v53 = _NRLogIsLevelEnabled();

          if (!v53)
          {
LABEL_52:

LABEL_53:
            goto LABEL_54;
          }

          v36 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v36, 16, "%s%.30s:%-4d no service name", "", "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke_2", 901);
        }

        goto LABEL_52;
      }
    }
  }

LABEL_54:
}

uint64_t sub_100151100(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 88);
  }

  return (*(v1 + 16))(v1, *(a1 + 40));
}

id sub_100151120(void *a1, const char *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (!v4)
  {
    v8 = sub_10014A248();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10014A248();
      _NRLogWithArgs(v10, 17, "%s called with null key");
LABEL_9:
    }

LABEL_10:
    v6 = 0;
    goto LABEL_4;
  }

  if (!v3)
  {
    v11 = sub_10014A248();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v10 = sub_10014A248();
      _NRLogWithArgs(v10, 17, "%s called with null record");
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10014CDDC;
  v18 = sub_10014CDEC;
  v19 = 0;
  access_value[0] = _NSConcreteStackBlock;
  access_value[1] = 3221225472;
  access_value[2] = sub_1001526B0;
  access_value[3] = &unk_1001FC820;
  access_value[4] = &v14;
  nw_txt_record_access_key(v3, v4, access_value);
  v6 = v15[5];
  _Block_object_dispose(&v14, 8);

LABEL_4:
  return v6;
}

void sub_1001512A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001512C0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v68 = a4;
  v15 = a5;
  v66 = a6;
  v67 = a7;
  v16 = nw_browse_result_copy_txt_record_object(v13);
  v17 = sub_100151120(v16, "nrN");
  v73 = 0;
  if (_NRIsAppleInternal())
  {
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1)
    {
      v18 = sub_100151120(v16, "nrF");
      if ([v18 length] == 8)
      {
        [v18 bytes];
        [v18 length];
        __memcpy_chk();
      }
    }
  }

  v64 = v15;
  v65 = v17;
  if (*(a1 + 256) != 4)
  {
    if (v15)
    {
      v63 = v14;
      v27 = v15;
      v28 = sub_10014D4C4(a1, v68, v17);
      v29 = v28;
      if (*(a1 + 256) == 4)
      {
        v30 = sub_10014D5A4(a1, v28);
      }

      else
      {
        v30 = sub_10013D1EC(v28, v27);
      }

      v19 = v30;

      v20 = sub_100151120(v16, "nrAT");
      if (sub_10013EE38(v19, v20))
      {
        v33 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v35 = *(a1 + 24);
          v36 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v36, 0, "%s%.30s:%-4d discovered a valid peer %@", "", "[NRDiscoveryClient addDiscoveredDeviceIfApplicable:endpoint:serviceName:psk:idsDeviceID:peerIdentity:selfIdentity:]", 1058, v63);
        }

        v37 = *(a1 + 18);
        v25 = 1;
        if (*(a1 + 18) && v37 != 255)
        {
          v42 = v27;
          v43 = sub_10014D208(a1, v37, v68, v65);
          v44 = v43;
          if (*(a1 + 256) == 4)
          {
            v45 = sub_10014D5A4(a1, v43);
          }

          else
          {
            v45 = sub_10013D1EC(v43, v42);
          }

          v38 = v45;

          v41 = sub_100151120(v16, "nrD");
          if (!sub_10013EE38(v38, v41))
          {
            v25 = 0;
            goto LABEL_44;
          }

          v62 = v38;
          v46 = _NRCopyLogObjectForNRUUID();
          v47 = _NRLogIsLevelEnabled();

          if (v47)
          {
            v48 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v48, 0, "%s%.30s:%-4d discovered a valid device type", "", "[NRDiscoveryClient addDiscoveredDeviceIfApplicable:endpoint:serviceName:psk:idsDeviceID:peerIdentity:selfIdentity:]", 1076);
          }

          v25 = 1;
LABEL_42:
          v38 = v62;
LABEL_44:

          v14 = v63;
LABEL_48:

          goto LABEL_49;
        }

        v26 = 1;
        v14 = v63;
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v14 = v63;
      }

LABEL_50:

      goto LABEL_51;
    }

    v31 = _NRCopyLogObjectForNRUUID();
    v32 = _NRLogIsLevelEnabled();

    if (!v32)
    {
      goto LABEL_83;
    }

    v19 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v19, 2, "%s%.30s:%-4d discovered device doesn't have IRK", "", "[NRDiscoveryClient addDiscoveredDeviceIfApplicable:endpoint:serviceName:psk:idsDeviceID:peerIdentity:selfIdentity:]", 1051);
LABEL_82:

    goto LABEL_83;
  }

  v19 = sub_100151120(v16, "nrAT");
  if (![(NRDeviceEndpoint *)v19 length])
  {
    goto LABEL_82;
  }

  v20 = sub_10014D4C4(a1, v68, v17);
  if (!sub_10014D2D0(a1, v19, v20, v67))
  {
    v25 = 0;
    v26 = 0;
    goto LABEL_50;
  }

  v63 = v14;
  v21 = _NRCopyLogObjectForNRUUID();
  v22 = _NRLogIsLevelEnabled();

  if (v22)
  {
    v23 = *(a1 + 24);
    v24 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v24, 0, "%s%.30s:%-4d discovered a valid peer %@", "", "[NRDiscoveryClient addDiscoveredDeviceIfApplicable:endpoint:serviceName:psk:idsDeviceID:peerIdentity:selfIdentity:]", 1022, v63);
  }

  v25 = 1;
  if (!*(a1 + 18))
  {
    v26 = 1;
    v14 = v63;
    goto LABEL_51;
  }

  v14 = v63;
  if (*(a1 + 18) != 255)
  {
    v20 = sub_100151120(v16, "nrD");
    if (![v20 length])
    {
      v25 = 0;
LABEL_49:
      v26 = 1;
      goto LABEL_50;
    }

    v38 = sub_10014D208(a1, *(a1 + 18), v68, v65);
    if (!sub_10014D2D0(a1, v20, v38, v67))
    {
      v25 = 0;
      goto LABEL_48;
    }

    v62 = v38;
    v39 = _NRCopyLogObjectForNRUUID();
    v40 = _NRLogIsLevelEnabled();

    if (!v40)
    {
      v38 = v62;
      v14 = v63;
      goto LABEL_48;
    }

    v41 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v41, 0, "%s%.30s:%-4d discovered a valid device type", "", "[NRDiscoveryClient addDiscoveredDeviceIfApplicable:endpoint:serviceName:psk:idsDeviceID:peerIdentity:selfIdentity:]", 1041);
    goto LABEL_42;
  }

  v26 = 1;
LABEL_51:

  if (v25 && v26)
  {
    v49 = objc_alloc_init(NRDeviceEndpoint);
    v50 = v49;
    if (v49)
    {
      objc_storeStrong(&v49->_serviceName, a4);
      v50->_type = *(a1 + 18);
      if (v66)
      {
        objc_storeStrong(&v50->_remoteIDSDeviceID, a6);
        goto LABEL_56;
      }
    }

    else if (v66)
    {
LABEL_56:
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v51 = qword_1002290B8;
      v52 = sub_1000CAD2C(v51, 0);
      if (v50)
      {
        v53 = 72;
LABEL_65:
        objc_storeStrong((&v50->super.isa + v53), v52);
        goto LABEL_66;
      }

      goto LABEL_66;
    }

    v54 = [[NSUUID alloc] initWithUUIDString:v68];
    if (v50)
    {
      objc_storeStrong(&v50->_peerToken, v54);
    }

    v55 = [NSUUID alloc];
    v51 = *(a1 + 112);
    v52 = [v55 initWithUUIDString:v51];
    if (v50)
    {
      v53 = 88;
      goto LABEL_65;
    }

LABEL_66:

    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1 && _NRIsAppleInternal())
    {
      if (qword_100229248 != -1)
      {
        dispatch_once(&qword_100229248, &stru_1001FC360);
      }

      v56 = 3;
      if (!byte_100229240)
      {
        v56 = 1;
      }

      if (!v50)
      {
LABEL_75:

        if (![0 length])
        {
          goto LABEL_81;
        }

        goto LABEL_79;
      }
    }

    else
    {
      v56 = 0;
      if (!v50)
      {
        goto LABEL_75;
      }
    }

    v50->_receivedFlags = v73;
    v50->_localFlags = v56;
    v57 = sub_100151120(v16, "nrAD");
    advertisementData = v50->_advertisementData;
    v50->_advertisementData = v57;

    if (![(NSData *)v50->_advertisementData length])
    {
LABEL_81:
      enumerator[0] = _NSConcreteStackBlock;
      enumerator[1] = 3221225472;
      enumerator[2] = sub_100151E6C;
      enumerator[3] = &unk_1001FC848;
      enumerator[4] = a1;
      v70 = v50;
      v71 = v14;
      v72 = v68;
      v19 = v50;
      nw_browse_result_enumerate_interfaces(v13, enumerator);

      goto LABEL_82;
    }

LABEL_79:
    v59 = _NRCopyLogObjectForNRUUID();
    v60 = _NRLogIsLevelEnabled();

    if (v60)
    {
      v61 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v61, 0, "%s%.30s:%-4d discovered valid advertisement data", "", "[NRDiscoveryClient addDiscoveredDeviceIfApplicable:endpoint:serviceName:psk:idsDeviceID:peerIdentity:selfIdentity:]", 1103);
    }

    goto LABEL_81;
  }

LABEL_83:
}

void sub_100151B4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 21) & 1) == 0)
  {
    if (v6 || ![v5 count])
    {
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d no fetched identities (%@)", "", "[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke_5", 963, v6);
      }
    }

    else
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = _NRLogIsLevelEnabled();

      if (v13)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v14, 1, "%s%.30s:%-4d fetched %u identities", "", "-[NRDiscoveryClient startBrowsingOverLinkType:]_block_invoke_5", 941, [v5 count]);
      }

      v33 = v8;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = v5;
      v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
      v32 = v5;
      if (v16)
      {
        v17 = v16;
        v18 = *v39;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            if ([v20 type] == 1)
            {
              v31 = v20;
              goto LABEL_19;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v31 = 0;
LABEL_19:

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v21 = v15;
      v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v35;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v35 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v34 + 1) + 8 * j);
            if ([v26 type] != 1)
            {
              v27 = *(a1 + 32);
              v28 = *(a1 + 40);
              v29 = *(a1 + 48);
              v30 = [v26 idsDeviceID];
              sub_1001512C0(v33, v27, v28, v29, 0, v30, v26);
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v23);
      }

      v6 = 0;
      v5 = v32;
      v8 = v33;
    }
  }
}

uint64_t sub_100151E6C(void *a1, void *a2)
{
  v3 = a2;
  if (nw_interface_get_subtype() != 5001)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v9, 2, "%s%.30s:%-4d resolving over interface %@", "", "[NRDiscoveryClient addDiscoveredDeviceIfApplicable:endpoint:serviceName:psk:idsDeviceID:peerIdentity:selfIdentity:]_block_invoke", 1111, v3);
    }

    v6 = nw_parameters_create();
    nw_parameters_require_interface(v6, v3);
    v10 = a1[4];
    if (v10)
    {
      v11 = *(v10 + 96);
    }

    else
    {
      v11 = 0;
    }

    [v11 addObject:a1[5]];
    sub_100151FF0(a1[4], a1[6], v6, a1[7]);
    goto LABEL_9;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  v5 = _NRLogIsLevelEnabled();

  if (v5)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d skipping companion interface %@", "", "[NRDiscoveryClient addDiscoveredDeviceIfApplicable:endpoint:serviceName:psk:idsDeviceID:peerIdentity:selfIdentity:]_block_invoke", 1108, v3);
LABEL_9:
  }

  return 1;
}

void sub_100151FF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = nw_parameters_copy_required_interface(v8);
    v11 = v10;
    if (v10)
    {
      v12 = sub_10014BB24(v10);
    }

    else
    {
      v12 = 0;
    }

    objc_initWeak(&location, a1);
    v13 = nw_resolver_create_with_endpoint();
    v14 = *(a1 + 40);
    objc_copyWeak(&v33, &location);
    v34 = v12;
    v15 = v13;
    v29 = v15;
    v30 = v8;
    v31 = v9;
    v16 = v11;
    v32 = v16;
    nw_resolver_set_update_handler();

    v17 = *(a1 + 176);
    if (!v17 && (v18 = objc_alloc_init(NSMutableDictionary), v19 = *(a1 + 176), *(a1 + 176) = v18, v19, (v17 = *(a1 + 176)) == 0) || (+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", v12), v20 = objc_claimAutoreleasedReturnValue(), [v17 objectForKeyedSubscript:v20], v21 = objc_claimAutoreleasedReturnValue(), v20, !v21))
    {
      v21 = objc_alloc_init(NSMutableArray);
    }

    [v21 addObject:v15];
    v22 = *(a1 + 176);
    v23 = [NSNumber numberWithUnsignedChar:v12];
    [v22 setObject:v21 forKeyedSubscript:v23];

    v24 = *(a1 + 24);
    v25 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v27 = *(a1 + 24);
      v28 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v28, 0, "%s%.30s:%-4d resolver %@ resolving endpoint %@", "", "[NRDiscoveryClient resolveEndpoint:parameters:serviceName:]", 1504, v15, v7, _NSConcreteStackBlock, 3221225472, sub_1001522D0, &unk_1001FC950, v15, v30, v31, v16);
    }

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

void sub_1001522A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  objc_destroyWeak(va);
  objc_destroyWeak((v21 - 88));
  _Unwind_Resume(a1);
}

void sub_1001522D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[22];
    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedChar:*(a1 + 72)];
      v8 = [v8 objectForKeyedSubscript:v9];
    }

    if (*(v7 + 21) & 1) == 0 && ([v8 containsObject:*(a1 + 32)])
    {
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = v7[3];
        v13 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v13, 0, "%s%.30s:%-4d received resolver update for %@ with status %u, endpoints %@", "", "[NRDiscoveryClient resolveEndpoint:parameters:serviceName:]_block_invoke", 1476, *(a1 + 32), a2, v5);
      }

      if (nw_array_get_count())
      {
        v17 = v7;
        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v20 = *(a1 + 56);
        nw_array_apply();
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = _NRCopyLogObjectForNRUUID();
  v15 = _NRLogIsLevelEnabled();

  if (v15)
  {
    v16 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v16, 2, "%s%.30s:%-4d ignoring", "", "[NRDiscoveryClient resolveEndpoint:parameters:serviceName:]_block_invoke", 1473);
  }

LABEL_12:
}

uint64_t sub_100152514(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_endpoint_get_type(v4) == nw_endpoint_type_address)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d resolved to address endpoint %@", "", "[NRDiscoveryClient resolveEndpoint:parameters:serviceName:]_block_invoke_2", 1484, v4);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = [NSString stringWithUTF8String:nw_interface_get_name(v8)];
    }

    else
    {
      v9 = 0;
    }

    sub_10014B480(*(a1 + 32), v4, *(a1 + 48), v9);
  }

  else
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v12, 0, "%s%.30s:%-4d resolved to endpoint %@", "", "[NRDiscoveryClient resolveEndpoint:parameters:serviceName:]_block_invoke_2", 1481, v4);
    }

    sub_100151FF0(*(a1 + 32), v4, *(a1 + 40), *(a1 + 48));
  }

  return 1;
}

uint64_t sub_1001526B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 4)
  {
    v6 = [[NSData alloc] initWithBytes:a4 length:a5];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return 1;
}

void sub_10015271C(uint64_t a1)
{
  if (!_os_feature_enabled_impl() || *(a1 + 232))
  {
    return;
  }

  v11 = sub_10014B23C(a1);
  if (v11)
  {
    v2 = [[WiFiAwarePublishDatapathConfiguration alloc] initWithServiceType:1 securityConfiguration:0];
    v3 = objc_alloc_init(WiFiAwarePublishServiceSpecificInfo);
    [v3 setBlob:v11];
    [v3 setInstanceName:*(a1 + 112)];
    v4 = [[WiFiAwarePublishConfiguration alloc] initWithServiceName:*(a1 + 208)];
    [v4 setAuthenticationType:0];
    [v4 setDatapathConfiguration:v2];
    [v4 setServiceSpecificInfo:v3];
    v5 = [[WiFiAwarePublisher alloc] initWithConfiguration:v4];
    [v5 setDelegate:a1];
    [v5 start];
    objc_storeStrong((a1 + 232), v5);
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d NAN: publisher start", "", "[NRDiscoveryClient startNANAdvertiser]", 2114);
    }

    goto LABEL_10;
  }

  v9 = _NRCopyLogObjectForNRUUID();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v2 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v2, 16, "%s%.30s:%-4d failed to create publish dictionary", "", "[NRDiscoveryClient startNANAdvertiser]", 2094);
LABEL_10:
  }
}

uint64_t sub_100152934(uint64_t a1, uint64_t a2)
{
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230 != 1 || !_NRIsAppleInternal())
  {
    return 0;
  }

  if (qword_100229248 != -1)
  {
    dispatch_once(&qword_100229248, &stru_1001FC360);
  }

  if (byte_100229240)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void sub_1001529D0(uint64_t a1, uint64_t a2, void *a3)
{
  error = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 21) & 1) == 0)
    {
      v7 = *(a1 + 56);
      v8 = WeakRetained[20];
      v9 = [NSNumber numberWithUnsignedChar:v7];
      v10 = [v8 objectForKeyedSubscript:v9];
      v11 = *(a1 + 32);

      if (v10 == v11)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v14 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v14, 0, "%s%.30s:%-4d listener entered state: %u (%@)", "", "[NRDiscoveryClient startAdvertisingOverLinkType:]_block_invoke_2", 1300, a2, error);
        }

        if (error)
        {
          if (nw_error_get_error_domain(error) == nw_error_domain_dns && nw_error_get_error_code(error) == -65548)
          {
            sub_10014F5E4(v6);
            sub_100152BD8(v6);
          }

          else
          {
            sub_10015312C(v6, *(a1 + 56));
            sub_10014FA20(v6, *(a1 + 56));
          }
        }

        else if (a2 == 2)
        {
          v15 = _NRCopyLogObjectForNRUUID();
          v16 = _NRLogIsLevelEnabled();

          if (v16)
          {
            v17 = v6[3];
            v18 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v18, 0, "%s%.30s:%-4d advertiser started w/ service name %@", "", "[NRDiscoveryClient startAdvertisingOverLinkType:]_block_invoke_2", 1310, *(a1 + 40));
          }
        }
      }
    }
  }
}

void sub_100152BD8(uint64_t a1)
{
  if (*(a1 + 15) == 1 && !*(a1 + 112))
  {
    if (!*(a1 + 144))
    {
      v17 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_33;
      }

      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d unsupported: no PSK");
      goto LABEL_32;
    }

    if (!*(a1 + 136))
    {
      v20 = _NRCopyLogObjectForNRUUID();
      v21 = _NRLogIsLevelEnabled();

      if (!v21)
      {
        goto LABEL_33;
      }

      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d unsupported: no nonce");
      goto LABEL_32;
    }

    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];
    v4 = [v3 lowercaseString];
    v5 = *(a1 + 112);
    *(a1 + 112) = v4;

    objc_opt_self();
    if (qword_1002293A0 != -1)
    {
      dispatch_once(&qword_1002293A0, &stru_1001FC6E0);
    }

    v6 = qword_100229398;
    v7 = *(a1 + 112);
    if (v6)
    {
      v8 = v6[4];
      if (!v8)
      {
        v9 = objc_alloc_init(NSMutableArray);
        v10 = v6[4];
        v6[4] = v9;

        v8 = v6[4];
      }

      [v8 addObject:v7];
    }

    v11 = *(a1 + 112);
    v12 = *(a1 + 144);
    v13 = *(a1 + 136);
    v14 = sub_10014D4C4(a1, v11, v13);
    v15 = v14;
    if (*(a1 + 256) == 4)
    {
      v16 = sub_10014D5A4(a1, v14);
    }

    else
    {
      v16 = sub_10013D1EC(v14, v12);
    }

    v19 = v16;

    if (v19)
    {
      if (qword_100229298 != -1)
      {
        dispatch_once(&qword_100229298, &stru_1001FC450);
      }

      v22 = byte_100229290;
      v23 = *(a1 + 112);
      v24 = *(a1 + 144);
      v25 = *(a1 + 136);
      v26 = sub_10014D208(a1, v22, v23, v25);
      v27 = v26;
      if (*(a1 + 256) == 4)
      {
        v28 = sub_10014D5A4(a1, v26);
      }

      else
      {
        v28 = sub_10013D1EC(v26, v24);
      }

      v31 = v28;

      objc_storeStrong((a1 + 120), v19);
      objc_storeStrong((a1 + 128), v31);
      v32 = _NRCopyLogObjectForNRUUID();
      v33 = _NRLogIsLevelEnabled();

      if (v33)
      {
        v34 = *(a1 + 24);
        v35 = _NRCopyLogObjectForNRUUID();
        LogString = _NRKeyCreateLogString();

        _NRLogWithArgs(v35, 1, "%s%.30s:%-4d created advertisement auth tag: %@", "", "[NRDiscoveryClient setupAdvertisingMetadataIfNeeded]", 1161, LogString);
      }

      if (*(a1 + 128))
      {
        v37 = _NRCopyLogObjectForNRUUID();
        v38 = _NRLogIsLevelEnabled();

        if (v38)
        {
          v39 = *(a1 + 24);
          v40 = _NRCopyLogObjectForNRUUID();
          v41 = _NRKeyCreateLogString();

          _NRLogWithArgs(v40, 1, "%s%.30s:%-4d created advertisement device type hash: %@", "", "[NRDiscoveryClient setupAdvertisingMetadataIfNeeded]", 1163, v41);
        }
      }
    }

    else
    {
      v29 = _NRCopyLogObjectForNRUUID();
      v30 = _NRLogIsLevelEnabled();

      if (!v30)
      {
        v19 = 0;
        goto LABEL_32;
      }

      v31 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d no auth tag", "", "[NRDiscoveryClient setupAdvertisingMetadataIfNeeded]", 1151);
    }

LABEL_32:
  }

LABEL_33:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v42 = *(a1 + 104);
  v43 = [v42 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v48;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v48 != v45)
        {
          objc_enumerationMutation(v42);
        }

        sub_10014FA20(a1, [*(*(&v47 + 1) + 8 * i) unsignedShortValue]);
      }

      v44 = [v42 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v44);
  }
}

void sub_10015312C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  v5 = [NSNumber numberWithUnsignedChar:a2];
  listener = [v4 objectForKeyedSubscript:v5];

  v6 = listener;
  if (listener)
  {
    nw_listener_cancel(listener);
    v7 = *(a1 + 160);
    v8 = [NSNumber numberWithUnsignedChar:a2];
    [v7 setObject:0 forKeyedSubscript:v8];

    v6 = listener;
  }
}

void sub_100153210(_BYTE *val)
{
  if (val)
  {
    val[19] = 1;
    objc_initWeak(&location, val);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100153354;
    v5[3] = &unk_1001FC730;
    objc_copyWeak(&v6, &location);
    v2 = objc_retainBlock(v5);
    v3 = v2;
    if (val[17] == 1)
    {
      (v2[2])(v2);
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

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void sub_100153338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100153354(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained || (*(WeakRetained + 21) & 1) != 0)
  {
    goto LABEL_21;
  }

  v3 = WeakRetained[3];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v4 = sub_100163A30(NRDLocalDevice, v3);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 48);
    if ((v6 & 0x20) != 0)
    {
      LOBYTE(v8) = 1;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = (v6 & 0x10) != 0 || *(v4 + 16) > 0x12u;
      v8 = (v6 >> 14) & 1 | v7;
      if ((v6 & 0x1000) != 0)
      {
LABEL_13:
        if ((((*(v4 + 48) & 0x2000) != 0) & v8) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

LABEL_14:
    v9 = v2[3];
    objc_opt_self();
    v10 = [qword_100229450 objectForKeyedSubscript:v9];

    v11 = v2[25];
    v2[25] = v10;

    if (!v2[25])
    {
      v2[25] = @"nr-pairing";
    }
  }

LABEL_16:
  if (!v2[25])
  {
    v2[25] = @"nr-default";
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001535B4;
  v20[3] = &unk_1001FD060;
  v12 = v2;
  v21 = v12;
  v22 = v5;
  v13 = v5;
  v14 = objc_retainBlock(v20);
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v15 = qword_1002290B8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100153B78;
  v17[3] = &unk_1001FC708;
  v18 = v12;
  v19 = v14;
  v16 = v14;

LABEL_21:
}

void sub_1001535B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 21))
    {
      return;
    }

    *(v2 + 20) = 1;
    v3 = *(a1 + 32);
    if (v3)
    {
      if (*(v3 + 15) != 1 || (sub_100152BD8(*(a1 + 32)), (v3 = *(a1 + 32)) != 0))
      {
        if (*(v3 + 16) == 1)
        {
          v31 = 0u;
          v32 = 0u;
          memset(v33, 0, sizeof(v33));
          v4 = *(v3 + 104);
          v5 = [v4 countByEnumeratingWithState:&v31 objects:&v36 count:16];
          if (v5)
          {
            v6 = *v32;
            do
            {
              for (i = 0; i != v5; i = i + 1)
              {
                if (*v32 != v6)
                {
                  objc_enumerationMutation(v4);
                }

                sub_1001501B4(v3, [*(*(&v31 + 1) + 8 * i) unsignedShortValue]);
              }

              v5 = [v4 countByEnumeratingWithState:&v31 objects:&v36 count:16];
            }

            while (v5);
          }
        }
      }
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v8 = v8[18];
  }

  v30 = v8;
  v9 = [v30 allowedLinkTypes];
  if ([v9 containsObject:&off_100209E48] && (v10 = *(a1 + 40)) != 0 && (v11 = *(v10 + 48), (~*(v10 + 48) & 0x82) == 0))
  {

    if ((v11 & 0x40) == 0)
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        if (_NRIsAppleInternal())
        {
          if (!*(v12 + 216))
          {
            v13 = objc_alloc_init(CBAdvertiser);
            v14 = *(v12 + 216);
            *(v12 + 216) = v13;

            [*(v12 + 216) setNearbyActionType:5];
            [*(v12 + 216) setDispatchQueue:*(v12 + 40)];
            do
            {
              v15 = arc4random_uniform(0xFFFFu);
            }

            while (!v15);
            v35 = bswap32(v15) >> 16;
            v16 = [[NSData alloc] initWithBytes:&v35 length:2];
            v17 = objc_alloc_init(NSMutableData);
            [v17 appendData:v16];
            v18 = objc_alloc_init(NSMutableData);
            [v18 appendData:v16];
            v19 = *(v12 + 200);
            if (v19)
            {
              v20 = v19;
              v21 = [v20 dataUsingEncoding:4];
              [v18 appendData:v21];
            }

            *&v31 = 0;
            *(&v31 + 1) = &v31;
            *&v32 = 0x3032000000;
            *(&v32 + 1) = sub_10014CDDC;
            *&v33[0] = sub_10014CDEC;
            *(&v33[0] + 1) = 0;
            objc_initWeak(&location, v12);
            v36 = _NSConcreteStackBlock;
            v37 = 3221225472;
            v38 = sub_100154D6C;
            v39 = &unk_1001FC9F0;
            objc_copyWeak(&v43, &location);
            v42 = &v31;
            v22 = v18;
            v40 = v22;
            v23 = v17;
            v41 = v23;
            v44 = v35;
            sub_10014D104(v12, 1, &v36);

            objc_destroyWeak(&v43);
            objc_destroyWeak(&location);
            _Block_object_dispose(&v31, 8);
          }

          if (!*(v12 + 224))
          {
            v24 = objc_alloc_init(CBDiscovery);
            v25 = *(v12 + 224);
            *(v12 + 224) = v24;

            [*(v12 + 224) setDispatchQueue:*(v12 + 40)];
            [*(v12 + 224) setDiscoveryFlags:0x20000002000000];
            objc_initWeak(&location, v12);
            v36 = _NSConcreteStackBlock;
            v37 = 3221225472;
            v38 = sub_1001541B0;
            v39 = &unk_1001FC978;
            objc_copyWeak(&v40, &location);
            [*(v12 + 224) setDeviceFoundHandler:&v36];
            v26 = *(v12 + 224);
            *&v31 = _NSConcreteStackBlock;
            *(&v31 + 1) = 3221225472;
            *&v32 = sub_1001545D8;
            *(&v32 + 1) = &unk_1001FC9A0;
            objc_copyWeak(v33, &location);
            [v26 activateWithCompletion:&v31];
            objc_destroyWeak(v33);
            objc_destroyWeak(&v40);
            objc_destroyWeak(&location);
          }
        }

        else
        {
          v27 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v29 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v29, 16, "%s%.30s:%-4d unsupported", "", "[NRDiscoveryClient discoverOverBluetooth]", 1766);
          }
        }
      }
    }
  }

  else
  {
  }
}

void sub_100153B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100153B78(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if ((*(v1 + 21) & 1) == 0)
    {
      sub_100153BA4(*(result + 32), *(result + 40));
    }
  }

  else
  {
    sub_100153BA4(0, *(result + 40));
  }
}

void sub_100153BA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = sub_100163B2C(NRDLocalDevice, v4, 0);
    }

    else
    {
      v5 = 0;
    }

    v43 = 0;
    __buf = 0;
    arc4random_buf(&__buf, 0xCuLL);
    v6 = [[NSData alloc] initWithBytes:&__buf length:12];
    v7 = *(a1 + 136);
    *(a1 + 136) = v6;

    v8 = *(a1 + 200);
    v9 = [v8 dataUsingEncoding:4];

    if (*(a1 + 22) == 1)
    {
      v10 = [@"terminusdStaticSecret" dataUsingEncoding:4];
      v11 = *(a1 + 152);
      *(a1 + 152) = v10;
      v12 = 8;
LABEL_32:

      *(a1 + 256) = v12;
      v32 = *(a1 + 152);
      v33 = *(a1 + 136);
      v34 = v32;
      v35 = sub_10013EBBC(v34, v33, v9);
      v36 = *(a1 + 144);
      *(a1 + 144) = v35;

      v3[2](v3);
LABEL_33:

      goto LABEL_34;
    }

    if (!v5)
    {
LABEL_35:
      *(a1 + 256) = 4;
      objc_initWeak(&location, a1);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100153F34;
      v37[3] = &unk_1001FC780;
      objc_copyWeak(&v40, &location);
      v39 = v3;
      v38 = v9;
      sub_10014D104(a1, 1, v37);

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
      goto LABEL_33;
    }

    v13 = *(v5 + 48);
    if ((v13 & 0x20) != 0)
    {
      LOBYTE(v15) = 1;
      if ((v13 & 0x1000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = (v13 & 0x10) != 0 || *(v5 + 16) > 0x12u;
      v15 = (v13 >> 14) & 1 | v14;
      if ((v13 & 0x1000) == 0)
      {
LABEL_17:
        if ((v13 & 0x10) != 0)
        {
LABEL_18:
          v16 = *(v5 + 72);
          v17 = v16;
          if (v16)
          {
            v18 = v16[3];
            v19 = v18;
            if (v18)
            {
              v20 = *(v18 + 2);
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v19 = 0;
            v20 = 0;
          }

          v21 = v20;
          v22 = v21 == 0;

          if (!v22)
          {
            v23 = *(v5 + 72);
            v11 = v23;
            if (v23)
            {
              v24 = v23[3];
              v25 = v24;
              if (v24)
              {
                v26 = *(v24 + 2);
              }

              else
              {
                v26 = 0;
              }
            }

            else
            {
              v25 = 0;
              v26 = 0;
            }

            objc_storeStrong((a1 + 152), v26);

            v12 = 2;
            goto LABEL_32;
          }
        }

LABEL_26:
        v27 = *(v5 + 176);
        if (v27)
        {
          v27 = v27[2];
        }

        v28 = v27;
        v29 = v28 == 0;

        if (!v29)
        {
          v30 = *(v5 + 176);
          if (v30)
          {
            v30 = v30[2];
          }

          v31 = v30;
          v11 = *(a1 + 152);
          *(a1 + 152) = v31;
          v12 = 1;
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    if ((v13 & 0x10) != 0 || (((*(v5 + 48) & 0x2000) != 0) & v15) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_34:
}

void sub_100153F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100153F34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained && (WeakRetained[21] & 1) == 0)
  {
    if (v6 || ![v5 count])
    {
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
LABEL_7:
        v12 = *(v8 + 19);
        v13 = *(a1 + 32);
        v14 = *(v8 + 17);
        v15 = v12;
        v16 = sub_10013EBBC(v15, v14, v13);
        v17 = *(v8 + 18);
        *(v8 + 18) = v16;

        (*(*(a1 + 40) + 16))();
        goto LABEL_8;
      }

      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d no identities fetched (%@)", "", "[NRDiscoveryClient fillInPSKDataForAuthTagWithCompletion:]_block_invoke", 691, v6);
    }

    else
    {
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        v20 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d fetched %u identities", "", "-[NRDiscoveryClient fillInPSKDataForAuthTagWithCompletion:]_block_invoke", 685, [v5 count]);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = v5;
      v21 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(v11);
            }

            v25 = *(*(&v28 + 1) + 8 * i);
            v26 = [v25 deviceIRKData];
            v27 = *(v8 + 19);
            *(v8 + 19) = v26;

            objc_storeStrong(v8 + 24, v25);
          }

          v22 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v22);
      }
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_1001541B0(uint64_t a1, void *a2)
{
  v28 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 21) & 1) == 0)
  {
    if (qword_1002293B0 != -1)
    {
      dispatch_once(&qword_1002293B0, &stru_1001FCB68);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293B0 != -1)
      {
        dispatch_once(&qword_1002293B0, &stru_1001FCB68);
      }

      _NRLogWithArgs(qword_1002293A8, 1, "%s%.30s:%-4d found device %@", "", "[NRDiscoveryClient discoverOverBluetooth]_block_invoke", 1787, v28);
    }

    v5 = [v28 watchSetupData];
    v6 = [v28 identifier];
    v7 = v5;
    v8 = v6;
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      LogString = _NRKeyCreateLogString();
      _NRLogWithArgs(v11, 1, "%s%.30s:%-4d received data %@ len %u", "", "-[NRDiscoveryClient verifyBLEAdvertisements:identifier:]", 1842, LogString, [v7 length]);
    }

    v35 = 0;
    if ([v7 length] < 3)
    {
      goto LABEL_22;
    }

    v13 = v7;
    v14 = v13;
    if (v13)
    {
      [v13 getBytes:&v35 length:2];
      v15 = [v14 subdataWithRange:{2, objc_msgSend(v14, "length") - 2}];
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v18, 1, "%s%.30s:%-4d received networkrelay nonce %u", "", "[NRDiscoveryClient verifyBLEAdvertisements:identifier:]", 1858, v35);
      }

      v19 = objc_alloc_init(NSMutableData);
      v20 = [[NSData alloc] initWithBytes:&v35 length:2];
      [v19 appendData:v20];
      v21 = v4[25];
      if (v21)
      {
        v22 = v21;
        v23 = [v22 dataUsingEncoding:4];
        [v19 appendData:v23];
      }

      objc_initWeak(&location, v4);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1001546A8;
      v29[3] = &unk_1001FC7D0;
      objc_copyWeak(&v33, &location);
      v24 = v19;
      v30 = v24;
      v25 = v15;
      v31 = v25;
      v32 = v8;
      sub_10014D104(v4, 28671, v29);

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    else
    {
      v26 = _NRCopyLogObjectForNRUUID();
      v27 = _NRLogIsLevelEnabled();

      if (!v27)
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v25 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v25, 1, "%s%.30s:%-4d no data", "", "[NRDiscoveryClient verifyBLEAdvertisements:identifier:]", 1851);
    }

    goto LABEL_21;
  }

LABEL_23:
}

void sub_1001545BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1001545D8(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v6, 1, "%s%.30s:%-4d started discovery with err %@", "", "[NRDiscoveryClient discoverOverBluetooth]_block_invoke_2", 1792, v7);
  }
}

void sub_1001546A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!WeakRetained || (WeakRetained[21] & 1) != 0)
  {
    goto LABEL_59;
  }

  if (v6 || ![v5 count])
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d no identities fetched (%@)", "", "[NRDiscoveryClient verifyBLEAdvertisements:identifier:]_block_invoke", 1896, v6);
    }

    goto LABEL_59;
  }

  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v14 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v14, 1, "%s%.30s:%-4d fetched %u identities", "", "-[NRDiscoveryClient verifyBLEAdvertisements:identifier:]_block_invoke", 1876, [v5 count]);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (v16)
  {
    v17 = *v73;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v73 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v72 + 1) + 8 * i);
        if ([v19 type] == 1)
        {
          v16 = v19;
          goto LABEL_19;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v72 objects:v86 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v15;
  v20 = [obj countByEnumeratingWithState:&v68 objects:v85 count:16];
  if (!v20)
  {
    goto LABEL_58;
  }

  v21 = v20;
  v22 = *v69;
  while (2)
  {
    for (j = 0; j != v21; j = j + 1)
    {
      if (*v69 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v68 + 1) + 8 * j);
      v25 = [v24 authTagForData:*(a1 + 32) type:3 error:0];
      if (sub_10013EE38(v25, *(a1 + 40)))
      {
        v26 = _NRCopyLogObjectForNRUUID();
        v27 = _NRLogIsLevelEnabled();

        if (v27)
        {
          v28 = *(v8 + 3);
          v29 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v29, 1, "%s%.30s:%-4d found a matching identity %@", "", "[NRDiscoveryClient verifyBLEAdvertisements:identifier:]_block_invoke", 1887, v24);
        }

        v30 = [[NSUUID alloc] initWithUUIDString:*(a1 + 48)];
        v31 = [v24 idsDeviceID];
        v32 = v30;
        v60 = v31;
        v33 = v31;
        v34 = v24;
        v66 = v16;
        if (v33)
        {
          v61 = v30;
          v63 = v34;
          v64 = v32;
          v65 = v16;
          if (v32)
          {
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v35 = *(v8 + 12);
            v36 = [v35 countByEnumeratingWithState:&v81 objects:v87 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v82;
              while (2)
              {
                v39 = 0;
                do
                {
                  if (*v82 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = *(*(&v81 + 1) + 8 * v39);
                  if (v40)
                  {
                    v41 = v40[8];
                  }

                  else
                  {
                    v41 = 0;
                  }

                  if ([v41 isEqualToString:v33])
                  {
                    v43 = v40;

                    if (v40)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_46;
                  }

                  v39 = v39 + 1;
                }

                while (v37 != v39);
                v42 = [v35 countByEnumeratingWithState:&v81 objects:v87 count:16];
                v37 = v42;
                if (v42)
                {
                  continue;
                }

                break;
              }
            }

LABEL_46:
            v44 = objc_alloc_init(NRDeviceEndpoint);
            v43 = v44;
            if (v44)
            {
              v44->_type = *(v8 + 18);
              objc_storeStrong(&v44->_remoteIDSDeviceID, v60);
            }

            objc_opt_self();
            if (qword_1002290C0 != -1)
            {
              dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
            }

            v45 = qword_1002290B8;
            v46 = sub_1000CAD2C(v45, 0);
            if (v43)
            {
              localIDSDeviceID = v43->_localIDSDeviceID;
              v43->_localIDSDeviceID = v46;

LABEL_52:
              objc_storeStrong(&v43->_cbUUID, v61);
              v62 = 0;
              issuedFirstCallback = v43->_issuedFirstCallback;
            }

            else
            {

              issuedFirstCallback = 0;
              v62 = 1;
            }

            v49 = issuedFirstCallback;
            v50 = *(v8 + 11);
            v51 = *(v8 + 9);
            v52 = *(v8 + 5);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100154D38;
            block[3] = &unk_1001FC8D8;
            v80 = v49;
            v53 = v50;
            v78 = v53;
            v54 = v43;
            v77 = v54;
            v55 = v51;
            v79 = v55;
            dispatch_async(v52, block);
            if ((v62 & 1) == 0)
            {
              v54->_issuedFirstCallback = 1;
            }

            v32 = v64;
            v16 = v65;
            v34 = v63;
          }

          else
          {
            v58 = sub_10014A248();
            v59 = _NRLogIsLevelEnabled();

            v32 = 0;
            if (!v59)
            {
              goto LABEL_57;
            }

            v54 = sub_10014A248();
            _NRLogWithArgs(v54, 17, "%s called with null cbUUID");
          }
        }

        else
        {
          v56 = sub_10014A248();
          v57 = _NRLogIsLevelEnabled();

          if (!v57)
          {
            goto LABEL_57;
          }

          v54 = sub_10014A248();
          _NRLogWithArgs(v54, 17, "%s called with null idsDeviceID");
        }

LABEL_57:
        goto LABEL_58;
      }
    }

    v21 = [obj countByEnumeratingWithState:&v68 objects:v85 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_58:

LABEL_59:
}