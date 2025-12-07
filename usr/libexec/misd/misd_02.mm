uint64_t sub_10001CAD0(const char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = if_nametoindex(a1);
  if (v8)
  {
    v9 = v8;
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10)
    {
      v11 = v10;
      xpc_dictionary_set_uint64(v10, kPFAction, 0);
      xpc_dictionary_set_string(v11, kPFInterface, a2);
      xpc_dictionary_set_uint64(v11, kPFRTableID, v9);
      xpc_dictionary_set_uint64(v11, kPFKeepState, 1uLL);
      xpc_dictionary_set_uint64(v11, kPFExtFilter, 1uLL);
      if (sub_10001B868(a3, a4, v11))
      {
        v12 = 0;
      }

      else
      {
        sub_100001108(0, "%s: unable to add rule", "mis_pf_configure_int_filters");
        v12 = 22;
      }

      xpc_release(v11);
    }

    else
    {
      sub_100001108(0, "unable to create rule xpc dictionary");
      return 12;
    }
  }

  else
  {
    sub_100001108(0, "if_nametoindex(%s)", a1);
    return 6;
  }

  return v12;
}

uint64_t sub_10001CC20(const char *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v7 = &unk_100034A60;
  }

  else
  {
    v7 = &unk_100034A70;
  }

  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    result = sub_10001DD2C(a1, *(v7 + 44), *(v7 + 21), *(v7 + 21), *(v7 + 20), *(v7 + 20), *(v7 + 45), v7 + 3, a3, a4);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_10001CCAC(const char *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v9 = xpc_dictionary_create(0, 0, 0);
  if (!v9)
  {
    sub_100001108(0, "unable to create rdr xpc dictionary");
    return 12;
  }

  v10 = v9;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *__str = 0u;
  xpc_dictionary_set_string(v9, kPFSubAddress, "127.0.0.1");
  xpc_dictionary_set_uint64(v10, kPFSubLowPort, 0x1F55uLL);
  xpc_dictionary_set_uint64(v10, kPFSubPortOperator, 0);
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    xpc_dictionary_set_uint64(v11, kPFAction, 8uLL);
    xpc_dictionary_set_uint64(v12, kPFProtocol, 6uLL);
    xpc_dictionary_set_string(v12, kPFInterface, a1);
    xpc_dictionary_set_uint64(v12, kPFFamily, 2uLL);
    v13 = xpc_dictionary_create(0, 0, 0);
    if (v13)
    {
      v14 = v13;
      inet_ntop(2, &v23, v24, 0x10u);
      v15 = bswap32(a3);
      if ((v15 & 0x80000000) != 0)
      {
        v19 = 0;
        do
        {
          v20 = v19-- + 30;
        }

        while (((v15 >> v20) & 1) != 0);
        v16 = -v19;
      }

      else
      {
        v16 = 0;
      }

      snprintf(__str, 0x100uLL, "%s/%d", v24, v16);
      xpc_dictionary_set_string(v14, kPFSubAddress, __str);
      v21 = xpc_dictionary_create(0, 0, 0);
      v18 = v21;
      if (v21)
      {
        xpc_dictionary_set_string(v21, kPFSubAddressLabel, kPFAny);
        xpc_dictionary_set_uint64(v18, kPFSubLowPort, 0x15uLL);
        xpc_dictionary_set_uint64(v18, kPFSubPortOperator, 2uLL);
        xpc_dictionary_set_value(v12, kPFFrom, v14);
        xpc_dictionary_set_value(v12, kPFTo, v18);
        xpc_dictionary_set_value(v12, kPFNATRDRAddress, v10);
        if (sub_10001B868(a4, a5, v12))
        {
          v17 = 0;
        }

        else
        {
          sub_100001108(0, "%s: unable to add rule", "mis_pf_configure_ftp_proxy");
          v17 = 22;
        }
      }

      else
      {
        sub_100001108(0, "unable to create dst xpc dictionary");
        v17 = 12;
      }

      xpc_release(v10);
      xpc_release(v14);
      if (!v18)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    sub_100001108(0, "unable to create src address xpc dictionary");
  }

  else
  {
    sub_100001108(0, "unable to create rule xpc dictionary");
  }

  v17 = 12;
  v18 = v10;
LABEL_19:
  xpc_release(v18);
LABEL_20:
  if (v12)
  {
    xpc_release(v12);
  }

  return v17;
}

uint64_t sub_10001D00C(const char *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (!v8)
  {
    sub_100001108(0, "unable to create rule xpc dictionary");
    return 12;
  }

  v9 = v8;
  xpc_dictionary_set_uint64(v8, kPFAction, 0);
  xpc_dictionary_set_uint64(v9, kPFFamily, a4);
  xpc_dictionary_set_string(v9, kPFInterface, a1);
  xpc_dictionary_set_uint64(v9, kPFKeepState, 1uLL);
  xpc_dictionary_set_uint64(v9, kPFExtFilter, 1uLL);
  if ((sub_10001B868(a2, a3, v9) & 1) == 0)
  {
    sub_100001108(0, "%s: unable to add generic pass all rule", "mis_pf_configure_ext_filters");
    v12 = 22;
LABEL_9:
    v13 = v9;
LABEL_19:
    xpc_release(v13);
    return v12;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  if (!v10)
  {
    sub_100001108(0, "unable to create rule xpc dictionary");
    v12 = 12;
    goto LABEL_9;
  }

  v11 = v10;
  xpc_dictionary_set_uint64(v10, kPFAction, 0);
  xpc_dictionary_set_uint64(v11, kPFFamily, a4);
  xpc_dictionary_set_string(v11, kPFInterface, a1);
  xpc_dictionary_set_uint64(v11, kPFProtocol, 0x32uLL);
  if (sub_10001B868(a2, a3, v11))
  {
    v12 = 0;
  }

  else
  {
    sub_100001108(0, "%s: unable to add esp rule", "mis_pf_configure_ext_filters");
    v12 = 22;
  }

  if (a4 == 2)
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      xpc_dictionary_set_uint64(v14, kPFAction, 0);
      xpc_dictionary_set_uint64(v15, kPFFamily, 2uLL);
      xpc_dictionary_set_uint64(v15, kPFProtocol, 2uLL);
      xpc_dictionary_set_uint64(v15, kPFKeepState, 1uLL);
      xpc_dictionary_set_BOOL(v15, kPFAllowOpts, 1);
      if ((sub_10001B868(a2, a3, v15) & 1) == 0)
      {
        sub_100001108(0, "%s: unable to add igmp rule", "mis_pf_configure_ext_filters");
        v12 = 22;
      }
    }

    else
    {
      sub_100001108(0, "unable to create rule xpc dictionary");
      v12 = 12;
    }
  }

  else
  {
    v15 = 0;
  }

  xpc_release(v9);
  xpc_release(v11);
  if (v15)
  {
    v13 = v15;
    goto LABEL_19;
  }

  return v12;
}

uint64_t sub_10001D2DC()
{
  v0 = PFUserCreate();
  if (v0)
  {
    v1 = v0;
    v2 = PFUserBeginRules();
    v3 = qword_100034C30;
    if (qword_100034C30)
    {
      v4 = 1;
      do
      {
        v5 = *(v3 + 784);
        if (v5)
        {
          while ((*(v3 + 776) & 2) != 0 || (*(v5 + 296) - 1) > 1 || *(v5 + 372) != 1 || (*(v5 + 392) & 4) == 0)
          {
            v5 = *(v5 + 528);
            if (!v5)
            {
              goto LABEL_10;
            }
          }

          v6 = sub_10001C678((v3 + 20), 0, 0, v1, v2);
          v4 = 0;
          if (v6)
          {
            v7 = v6;
            sub_100001108(0, "%s: mis_pf_ifscrub 1");
            goto LABEL_77;
          }
        }

LABEL_10:
        v3 = *(v3 + 280);
      }

      while (v3);
    }

    else
    {
      v4 = 1;
    }

    v8 = qword_100034C00;
    if (qword_100034BA8)
    {
      v9 = qword_100034C00 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      do
      {
        if (*(v8 + 41) == 1)
        {
          v10 = sub_10001C678((v8 + 8), 0, 0, v1, v2);
          v4 = 0;
          if (v10)
          {
            v7 = v10;
            sub_100001108(0, "%s: mis_pf_ifscrub 2");
            goto LABEL_77;
          }
        }

        v8 = *v8;
      }

      while (v8);
    }

    for (i = qword_100034C38; i; i = *i)
    {
      if ((*(i + 296) - 1) <= 1 && *(i + 372) == 1 && (*(i + 392) & 4) != 0)
      {
        v12 = *(i + 16);
        if (*(v12 + 16) >= *(*(i + 24) + 16))
        {
          v13 = *(*(i + 24) + 16);
        }

        else
        {
          v13 = *(v12 + 16);
        }

        v14 = sub_10001C678((v12 + 20), 0, v13, v1, v2);
        if (v14)
        {
          v7 = v14;
          sub_100001108(0, "%s: mis_pf_ifscrub 3");
          goto LABEL_77;
        }

        v15 = sub_10001C678((*(i + 16) + 20), 0x32u, 0, v1, v2);
        if (v15)
        {
          v7 = v15;
          sub_100001108(0, "%s: mis_pf_ifscrub 4");
          goto LABEL_77;
        }

        if (!inet_ntop(30, (i + 396), v30, 0x2Eu))
        {
          sub_100001108(0, "%s: inet_ntop", "mis_pf_refresh_nat_rules_v6");
          v7 = 22;
          goto LABEL_77;
        }

        v16 = *(i + 24);
        if ((*(v16 + 776) & 2) != 0)
        {
          for (j = qword_100034C00; j; j = *j)
          {
            if (*(j + 41) == 1)
            {
              v20 = sub_10001C7F4((j + 8), 0x1Eu, v30, *(i + 412), v1, v2);
              if (v20)
              {
                v7 = v20;
                sub_100001108(0, "%s: mis_pf_configure_nat_outbound 2");
                goto LABEL_77;
              }

              v21 = sub_10001CC20((j + 8), 30, v1, v2);
              if (v21)
              {
                v7 = v21;
                sub_100001108(0, "%s: mis_pf_configure_port_forwarding_rules");
                goto LABEL_77;
              }
            }
          }
        }

        else
        {
          v17 = sub_10001C7F4((v16 + 20), 0x1Eu, v30, *(i + 412), v1, v2);
          if (v17)
          {
            v7 = v17;
            sub_100001108(0, "%s: mis_pf_configure_nat_outbound 1");
LABEL_77:
            PFUserClearRules();
            PFUserDeleteRules();
            goto LABEL_78;
          }

          v18 = sub_10001CAD0((*(i + 24) + 20), (*(i + 16) + 20), v1, v2);
          if (v18)
          {
            v7 = v18;
            sub_100001108(0, "%s: mis_pf_configure_int_filters");
            goto LABEL_77;
          }
        }

        v22 = sub_10001AD54((*(i + 16) + 20), v1, v2);
        if (v22)
        {
          v7 = v22;
          sub_100001108(0, "%s: mis_pf_configure_pass_ip6_linklocal, network %s, err %d");
          goto LABEL_77;
        }

        v4 = 0;
      }
    }

    for (k = qword_100034C30; k; k = *(k + 280))
    {
      v24 = *(k + 784);
      if (v24)
      {
        while ((*(k + 776) & 2) != 0 || (*(v24 + 296) - 1) > 1 || *(v24 + 372) != 1 || (*(v24 + 392) & 4) == 0)
        {
          v24 = *(v24 + 528);
          if (!v24)
          {
            goto LABEL_52;
          }
        }

        v25 = sub_10001D00C((k + 20), v1, v2, 0x1Eu);
        if (v25)
        {
          v7 = v25;
          sub_100001108(0, "%s: mis_pf_configure_ext_filters 1");
          goto LABEL_77;
        }

        v4 = 0;
      }

LABEL_52:
      ;
    }

    v26 = qword_100034C00;
    if (qword_100034BA8)
    {
      v27 = qword_100034C00 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      do
      {
        if (*(v26 + 41) == 1)
        {
          v28 = sub_10001D00C((v26 + 8), v1, v2, 0x1Eu);
          if (v28)
          {
            v7 = v28;
            sub_100001108(0, "%s: mis_pf_configure_ext_filters 2");
            goto LABEL_77;
          }

          v4 = 0;
        }

        v26 = *v26;
      }

      while (v26);
    }

    if (v4)
    {
      v7 = 0;
      goto LABEL_77;
    }

    PFUserCommitRules();
    v7 = 0;
LABEL_78:
    PFUserRelease();
  }

  else
  {
    sub_100001108(0, "%s: PFUserCreate", "mis_pf_refresh_nat_rules_v6");
    return 12;
  }

  return v7;
}

uint64_t sub_10001D840(int a1)
{
  v5 = a1;
  *v6 = xmmword_1000235C0;
  v1 = dword_1000351C8;
  if (a1)
  {
    ++dword_1000351C8;
    if (v1 > 0)
    {
      return 0;
    }
  }

  else
  {
    --dword_1000351C8;
    if (v1 != 1)
    {
      return 0;
    }
  }

  v3 = sysctl(v6, 4u, 0, 0, &v5, 4uLL);
  if ((v3 & 0x80000000) != 0)
  {
    v2 = *__error();
    sub_100001108(0, "setting ip forwarding to %d: %m");
  }

  else
  {
    v2 = v3;
    sub_100001108(2u, "ip forwarding set to %d");
  }

  return v2;
}

uint64_t sub_10001D934(int a1)
{
  v5 = a1;
  *v6 = xmmword_1000235D0;
  v1 = dword_1000351CC;
  if (a1)
  {
    ++dword_1000351CC;
    if (v1 > 0)
    {
      return 0;
    }
  }

  else
  {
    --dword_1000351CC;
    if (v1 != 1)
    {
      return 0;
    }
  }

  v3 = sysctl(v6, 4u, 0, 0, &v5, 4uLL);
  if ((v3 & 0x80000000) != 0)
  {
    v2 = *__error();
    sub_100001108(0, "setting ip6 forwarding to %d: %m");
  }

  else
  {
    v2 = v3;
    sub_100001108(2u, "ip6 forwarding set to %d");
  }

  return v2;
}

void sub_10001DA28()
{
  if (PFUserCreate())
  {
    PFUserDeleteRules();
    PFUserRelease();
    if (PFUserCreate())
    {
      PFUserDeleteRules();
      PFUserRelease();
      if (PFUserCreate())
      {
        PFUserDeleteRules();
        PFUserRelease();
        if (PFUserCreate())
        {
          PFUserDeleteRules();
          PFUserRelease();
          if (PFUserCreate())
          {
            PFUserDeleteRules();
            PFUserRelease();
            if (PFUserCreate())
            {
              PFUserDeleteRules();
              PFUserRelease();
              if (PFUserCreate())
              {
                PFUserDeleteRules();
                PFUserRelease();
                if (PFUserCreate())
                {
                  PFUserDeleteRules();
                  PFUserRelease();
                }
              }
            }
          }
        }
      }
    }
  }

  if (!access("/usr/libexec/ftp-proxy", 0))
  {
    SMJobSetEnabled();
    byte_1000351C4 = 1;
  }

  byte_1000351C0 = 1;
}

uint64_t sub_10001DD2C(const char *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, const void *a8, uint64_t a9, uint64_t a10)
{
  v18 = xpc_dictionary_create(0, 0, 0);
  if (!v18)
  {
    sub_100001108(0, "unable to create rdr xpc dictionary");
    return 12;
  }

  v19 = v18;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *__str = 0u;
  v31 = 0u;
  inet_ntop(a7, a8, string, 0x2Eu);
  xpc_dictionary_set_string(v19, kPFSubAddress, string);
  v20 = xpc_dictionary_create(0, 0, 0);
  if (!v20)
  {
    sub_100001108(0, "unable to create rule xpc dictionary");
    xpc_release(v19);
    return 12;
  }

  v21 = v20;
  xpc_dictionary_set_uint64(v20, kPFAction, 8uLL);
  xpc_dictionary_set_uint64(v21, kPFProtocol, a2);
  xpc_dictionary_set_string(v21, kPFInterface, a1);
  xpc_dictionary_set_uint64(v21, kPFFamily, a7);
  v22 = xpc_dictionary_create(0, 0, 0);
  if (v22)
  {
    v23 = v22;
    snprintf(__str, 0x100uLL, "%s:0", a1);
    xpc_dictionary_set_string(v23, kPFSubDynInterface, __str);
    xpc_dictionary_set_uint64(v23, kPFSubLowPort, a3);
    if (a3 == a4)
    {
      v24 = 2;
    }

    else
    {
      xpc_dictionary_set_uint64(v23, kPFSubHighPort, a4);
      v24 = 9;
    }

    xpc_dictionary_set_uint64(v23, kPFSubPortOperator, v24);
    v26 = &kPFSubLowPort;
    if (a5 == a6)
    {
      v27 = 2;
      v28 = a5;
    }

    else
    {
      xpc_dictionary_set_uint64(v19, kPFSubLowPort, a5);
      v26 = &kPFSubHighPort;
      v27 = 9;
      v28 = a6;
    }

    xpc_dictionary_set_uint64(v19, *v26, v28);
    xpc_dictionary_set_uint64(v19, kPFSubPortOperator, v27);
    xpc_dictionary_set_value(v21, kPFTo, v23);
    xpc_dictionary_set_value(v21, kPFNATRDRAddress, v19);
    if (sub_10001B868(a9, a10, v21))
    {
      if (a3 == a4)
      {
        sub_100001108(0, "port forwarding enabled on %s proto %s port %d to %s port %d");
      }

      else
      {
        sub_100001108(0, "port forwarding enabled on %s proto %s port %d:%d to %s port %d:%d", a1);
      }

      v25 = 0;
    }

    else
    {
      sub_100001108(0, "%s: unable to add rule", "mis_pf_configure_rdr");
      v25 = 22;
    }

    xpc_release(v19);
  }

  else
  {
    sub_100001108(0, "unable to create dst xpc dictionary");
    v25 = 12;
    v23 = v19;
  }

  xpc_release(v23);
  xpc_release(v21);
  return v25;
}

id sub_10001E0DC(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_1000351E0 = result;
  return result;
}

id sub_10001E680(uint64_t a1, void *a2)
{
  sub_100001108(0, "%s: failed tethering context re-assertion with error '%s'", "-[misCTClientSharedInstance activateTethering:]_block_invoke", [objc_msgSend(a2 "description")]);
  v3 = *(a1 + 32);

  return [v3 activateTethering:0];
}

id sub_10001EFBC(uint64_t a1)
{
  v2 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v2 activateTethering:a1];
}

id sub_10001EFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v6 registerCellularDataStatusNotification:a1 callback:a2 callbackArg:a3];
}

uint64_t sub_10001F054(uint64_t a1)
{
  v1 = [+[misCTClientSharedInstance sharedInstance](misCTClientSharedInstance getTetheringInterfaceName:"getTetheringInterfaceName:", a1];
  if (v1)
  {
    sub_100001108(0, "%s: failed to get tethering interface name");
  }

  else
  {
    sub_100001108(1u, "%s: tethering interface name: %s");
  }

  return v1;
}

id sub_10001F0CC()
{
  v0 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v0 isDualSim];
}

id sub_10001F0FC()
{
  v0 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v0 _updateDualSimStatus];
}

uint64_t sub_10001F12C()
{
  if (!dword_100034A4C)
  {
    return 0;
  }

  if (qword_1000351E8 || (qword_1000351E8 = dispatch_semaphore_create(0)) != 0)
  {
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf");
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp");
    result = 0;
    byte_1000351F0 = 1;
  }

  else
  {
    sub_100001108(0, "rtadvd semaphore create failed");
    return 12;
  }

  return result;
}

void sub_10001F1BC()
{
  if (byte_1000351F0 == 1)
  {
    if (qword_1000351E8)
    {
      dispatch_release(qword_1000351E8);
      qword_1000351E8 = 0;
    }

    byte_1000351F0 = 0;
  }
}

uint64_t sub_10001F200()
{
  v33 = 0;
  v34 = 0;
  v32 = 0;
  if (dword_1000351F4 < 0)
  {
    sub_100001108(2u, "%s not available");
    goto LABEL_76;
  }

  if (!dword_100034A4C)
  {
    sub_100001108(2u, "%s not enabled");
    goto LABEL_76;
  }

  if (dword_1000351F8)
  {
    if (!qword_100035200)
    {
      sub_1000219F0();
    }

    sub_10001FD00();
  }

  v47 = 0;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  strcpy(__filename, "/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp");
  v0 = fopen(__filename, "w");
  if (!v0)
  {
    v19 = __error();
    v14 = *v19;
    sub_100001108(0, "%s: fopen, errno %d", "mis_rtadvd_config_create", *v19);
    if (v14)
    {
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v1 = v0;
  v2 = qword_100034C38;
  if (!qword_100034C38)
  {
LABEL_79:
    v14 = 0;
    goto LABEL_80;
  }

  while (1)
  {
    if ((*(v2 + 296) - 1) > 1 || (*(v2 + 392) & 0x10) != 0)
    {
      goto LABEL_68;
    }

    if (*(v2 + 372) == 2)
    {
      sub_100001108(2u, "%s: skipping rtadvd for bridged mode %s", "mis_network_configure_rtadvd", (v2 + 40));
      goto LABEL_67;
    }

    v3 = fseek(v1, 0, 2);
    if (v3)
    {
      break;
    }

    if (!*(v2 + 372))
    {
      v48 = 0u;
      memset(v49, 0, sizeof(v49));
      if (!inet_ntop(30, (v2 + 396), &v48, 0x2Eu))
      {
        goto LABEL_59;
      }

      fprintf(v1, "%s:\\\n", (*(v2 + 16) + 20));
      fprintf(v1, "\t:maxinterval#%u", 135);
      fprintf(v1, ":mininterval#%u:\\\n", 45);
      fprintf(v1, "\t:raflags#%u", 64);
      fprintf(v1, ":rltime#%u:\\\n", 0);
      fprintf(v1, "\t:addr=%s:prefixlen#%u:pinfoflags#%u:\\\n", &v48, *(v2 + 412), 192);
      v6 = 1500;
      goto LABEL_66;
    }

    fprintf(v1, "%s:\\\n", (*(v2 + 16) + 20));
    fprintf(v1, "\t:maxinterval#%u", 135);
    fprintf(v1, ":mininterval#%u:\\\n", 45);
    v4 = *(v2 + 392);
    if ((v4 & 8) != 0)
    {
      v7 = *(v2 + 24);
      v5 = v7 + 288;
      fputc(9, v1);
      fprintf(v1, ":chlim#%u", *(v7 + 460));
    }

    else
    {
      fputc(9, v1);
      v5 = 0;
    }

    if (!sub_100011708(*(v2 + 16)))
    {
      v13 = *(v2 + 24);
      if (v13)
      {
        if (((*(v13 + 776) & 2) == 0 || dword_100034C0C) && (*(v2 + 392) & 2) == 0)
        {
          fprintf(v1, ":raflags#%u", 64);
        }
      }
    }

    if ((v4 & 8) != 0)
    {
      v10 = *(v5 + 110);
      if (v10 >= 0x2328)
      {
        v10 = 9000;
      }

      fprintf(v1, ":rltime#%u", v10);
      fprintf(v1, ":rtime#%u", 1000 * *(v5 + 156));
      fprintf(v1, ":retrans#%u:\\\n", *(v5 + 160));
      v48 = 0u;
      memset(v49, 0, sizeof(v49));
      if (!inet_ntop(30, (v5 + 16), &v48, 0x2Eu))
      {
        v14 = *__error();
        sub_100001108(0, "%s: inet_ntop active prefix, %d");
        goto LABEL_61;
      }

      fprintf(v1, "\t:addr0=%s:prefixlen0#%u:pinfoflags0#%u", &v48, *(v5 + 37), 192);
      fprintf(v1, ":vltime0#%lu", *(v5 + 40));
      fwrite(":vltimedecr0#true", 0x11uLL, 1uLL, v1);
      fprintf(v1, ":pltime0#%lu", *(v5 + 48));
      fwrite(":pltimedecr0#true:\\\n", 0x14uLL, 1uLL, v1);
      v11 = *(v2 + 24);
      if (*(v11 + 488) == 1)
      {
        v48 = 0u;
        memset(v49, 0, sizeof(v49));
        if (!inet_ntop(30, (v11 + 504), &v48, 0x2Eu))
        {
          v17 = __error();
          v14 = *v17;
          sub_100001108(0, "%s: inet_ntop inactive prefix, %d", "mis_network_configure_rtadvd", *v17);
          if (v14)
          {
            goto LABEL_102;
          }

          goto LABEL_67;
        }

        fprintf(v1, "\t:addr1=%s:prefixlen1#%u:pinfoflags1#%u", &v48, *(*(v2 + 24) + 525), 192);
        fwrite(":vltime1#0", 0xAuLL, 1uLL, v1);
        fwrite(":pltime1#0:\\\n", 0xDuLL, 1uLL, v1);
        v11 = *(v2 + 24);
      }

      if (*(v11 + 804) == 1 && !byte_100034BEB)
      {
        v48 = 0u;
        memset(v49, 0, sizeof(v49));
        if (!inet_ntop(30, (v11 + 688), &v48, 0x2Eu))
        {
          v14 = *__error();
          sub_100001108(0, "%s: inet_ntop pref64");
          goto LABEL_61;
        }

        v12 = 8 * *(*(v2 + 24) + 704);
        goto LABEL_49;
      }
    }

    else
    {
      v8 = *(v2 + 24);
      if (v8 && (*(v8 + 776) & 2) != 0)
      {
        if (dword_100034C0C)
        {
          v9 = 9000;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 9000;
      }

      fprintf(v1, ":rltime#%u:\\\n", v9);
      if ((*(v2 + 392) & 6) != 0)
      {
        v48 = 0u;
        memset(v49, 0, sizeof(v49));
        if (!inet_ntop(30, (v2 + 396), &v48, 0x2Eu))
        {
LABEL_59:
          v14 = *__error();
          sub_100001108(0, "%s: inet_ntop nat ra prefix");
          goto LABEL_61;
        }

        fprintf(v1, "\t:addr=%s:prefixlen#%u:pinfoflags#%u:\\\n", &v48, *(v2 + 412), 192);
        if ((*(v2 + 392) & 2) != 0 && !byte_100034BEB)
        {
          v48 = 0u;
          memset(v49, 0, sizeof(v49));
          if (!inet_ntop(30, (v2 + 416), &v48, 0x2Eu))
          {
            v14 = *__error();
            sub_100001108(0, "%s: inet_ntop nat64 prefix");
LABEL_61:
            if (v14)
            {
              goto LABEL_102;
            }

            goto LABEL_67;
          }

          v12 = *(v2 + 432);
LABEL_49:
          fprintf(v1, "\t:pref64addr=%s:pref64len#%u:pref64lifetime#%u:\\\n", &v48, v12, 65528);
        }
      }
    }

    v15 = *(v2 + 16);
    if (v15[74] || v15[75] || v15[76] || v15[77])
    {
      fwrite("\t:rdnssaddrs#1:\\\n", 0x11uLL, 1uLL, v1);
      v48 = 0u;
      memset(v49, 0, sizeof(v49));
      if (!inet_ntop(30, (*(v2 + 16) + 296), &v48, 0x2Eu))
      {
        v14 = *__error();
        sub_100001108(0, "%s: inet_ntop ipv6");
        goto LABEL_61;
      }

      fprintf(v1, "\t:rdnssaddr0=%s:\\\n", &v48);
    }

    if ((v4 & 8) != 0)
    {
      v6 = *(v5 + 144);
      goto LABEL_64;
    }

    v16 = *(v2 + 24);
    if (v16)
    {
      v6 = *(v16 + 12);
LABEL_64:
      if (v6 >= *(*(v2 + 16) + 12))
      {
        v6 = *(*(v2 + 16) + 12);
      }

LABEL_66:
      fprintf(v1, "\t:mtu#%u\n", v6);
    }

LABEL_67:
    sub_100001108(0, "%s: success, network %s", "mis_network_configure_rtadvd", (v2 + 40));
LABEL_68:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_79;
    }
  }

  v14 = v3;
  sub_100001108(0, "%s: fseek, err %d", "mis_network_configure_rtadvd", v3);
LABEL_102:
  sub_100001108(0, "%s: failed, network %s", "mis_network_configure_rtadvd", (v2 + 40));
  sub_100001108(0, "%s: failed to configure rtadvd for network %s", "mis_rtadvd_config_create", (v2 + 40));
LABEL_80:
  fclose(v1);
  if (v14)
  {
LABEL_81:
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf");
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp");
    goto LABEL_85;
  }

LABEL_83:
  rename("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp", "/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf", v18);
  if (!v20)
  {
    v22 = qword_100034C38;
    if (qword_100034C38)
    {
      v23 = 0;
      do
      {
        if ((*(v22 + 296) - 1) <= 1)
        {
          v23 += ((*(v22 + 392) >> 4) & 1) == 0;
        }

        v22 = *v22;
      }

      while (v22);
      if (v23)
      {
        v24 = malloc_type_malloc(8 * (v23 + 6), 0x10040436913F5uLL);
        v25 = v24;
        *v24 = "rtadvd";
        v24[1] = "-c";
        v24[2] = "/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf";
        v24[3] = "-f";
        v24[4] = "-s";
        v26 = qword_100034C38;
        if (qword_100034C38)
        {
          v27 = 5;
          do
          {
            if ((*(v26 + 296) - 1) <= 1 && (*(v26 + 392) & 0x10) == 0)
            {
              v24[v27++] = (*(v26 + 16) + 20);
            }

            v26 = *v26;
          }

          while (v26);
          v28 = v27;
        }

        else
        {
          v28 = 5;
        }

        v24[v28] = 0;
        v29 = sub_100011BDC(&v33, &v34);
        if (v29)
        {
          v14 = v29;
          sub_100001108(0, "%s: mis_set_posix_spawn_attributes", "rtadvd_config_refresh");
        }

        else
        {
          v30 = posix_spawn(&v32, "/usr/sbin/rtadvd", &v34, &v33, v25, environ);
          v14 = v30;
          if (v30)
          {
            v31 = strerror(v30);
            sub_100001108(0, "spawn %s:%s", "rtadvd", v31);
          }

          else
          {
            sub_100001108(1u, "spawned %s as pid %d", "rtadvd", v32);
            dword_1000351F8 = v32;
            if (sub_10001FE04(v32, qword_100034BD8))
            {
              sub_100001108(0, "rtadvd monitor process error");
              sub_10001FD00();
            }
          }

          posix_spawnattr_destroy(&v33);
          posix_spawn_file_actions_destroy(&v34);
        }

        free(v25);
        if (v14)
        {
          return v14;
        }

LABEL_77:
        if (dword_1000351F8)
        {
          sub_100001108(0, "started %s", "rtadvd");
          return 0;
        }

        return v14;
      }
    }

    sub_10001FD00();
    sub_100001108(0, "%s: no network has configured rtadvd");
LABEL_76:
    v14 = 0;
    goto LABEL_77;
  }

  v14 = v20;
  sub_100001108(0, "%s: rename, err %d", "mis_rtadvd_config_create", v20);
LABEL_85:
  sub_100001108(0, "%s: mis_rtadvd_config_create", "rtadvd_config_refresh");
  return v14;
}

void sub_10001FD00()
{
  v0 = dword_1000351F8;
  if (dword_1000351F8 && kill(dword_1000351F8, 0) != 3)
  {
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf.temp");
    unlink("/Library/Preferences/SystemConfiguration/com.apple.mis.rtadvd.conf");
    if (sub_10001FE04(v0, qword_100034BE0))
    {

      sub_100001108(0, "rtadvd monitor process failed for process queue");
    }

    else
    {
      if (qword_100035200)
      {
        dispatch_source_cancel(qword_100035200);
        dispatch_release(qword_100035200);
        qword_100035200 = 0;
      }

      sub_100001108(2u, "sending TERM to  %s pid %d", "rtadvd", v0);
      kill(v0, 15);
      dispatch_semaphore_wait(qword_1000351E8, 0xFFFFFFFFFFFFFFFFLL);
      dword_1000351F8 = 0;
    }
  }
}

uint64_t sub_10001FE04(int a1, dispatch_queue_t queue)
{
  v3 = qword_100034BE0;
  v4 = dispatch_source_create(&_dispatch_source_type_proc, a1, 0x80000000uLL, queue);
  v5 = v4;
  if (v3 == queue)
  {
    if (v4)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_10001FEF4;
      handler[3] = &unk_100031518;
      handler[4] = v4;
      dispatch_source_set_event_handler(v4, handler);
      v6 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    qword_100035200 = v4;
    if (v4)
    {
      dispatch_source_set_event_handler(v4, &stru_100031558);
      v6 = qword_100035200;
LABEL_6:
      dispatch_resume(v6);
      return 0;
    }
  }

  return 12;
}

intptr_t sub_10001FEF4(uint64_t a1)
{
  v4 = 0;
  data = dispatch_source_get_data(*(a1 + 32));
  waitpid(data, &v4, 1);
  sub_100001108(2u, "%s exit", "rtadvd");
  dispatch_source_cancel(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  return dispatch_semaphore_signal(qword_1000351E8);
}

void sub_10001FF6C(id a1)
{
  v2 = 0;
  data = dispatch_source_get_data(qword_100035200);
  waitpid(data, &v2, 1);
  sub_100001108(2u, "%s exit", "rtadvd");
  if (dword_1000351F8)
  {
    dword_1000351F8 = 0;
    dispatch_source_cancel(qword_100035200);
    dispatch_release(qword_100035200);
    qword_100035200 = 0;
  }
}

uint64_t sub_10001FFEC()
{
  if (dword_100034A50)
  {
    sub_1000123A8(@"com.apple.dhcp6d", "dhcp6d", 0);
    byte_10003520C = 0;
    unlink("/Library/Preferences/SystemConfiguration/com.apple.dhcp6d.plist");
  }

  return 0;
}

uint64_t sub_100020044()
{
  if (dword_100035208 < 0)
  {
    v9 = "%s not available";
LABEL_22:
    sub_100001108(1u, v9, "dhcp6d");
    return 0;
  }

  if (!dword_100034A50)
  {
    v9 = "%s not enabled";
    goto LABEL_22;
  }

  keys = 0;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  values = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  for (i = qword_100034C38; i; i = *i)
  {
    if ((*(i + 296) - 1) <= 1 && *(i + 372) == 1)
    {
      v2 = *(i + 16);
      if (*(v2 + 296) || *(v2 + 300) || *(v2 + 304) || *(v2 + 308) || (v3 = sub_100011708(v2), v2 = *(i + 16), !v3))
      {
        sub_100011D88(Mutable, (v2 + 20));
        inet_ntop(30, (*(i + 16) + 296), v18, 0x2Eu);
        sub_100011D88(values, v18);
      }

      else
      {
        sub_100001108(0, "%s: can't get linklocal address on %s, network %s", "dhcp6d_config_create", (v2 + 20), (i + 40));
      }
    }
  }

  if (CFArrayGetCount(Mutable))
  {
    v4 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v4, @"enabled_interfaces", Mutable);
    CFRelease(Mutable);
    keys = @"dhcp_dns_servers";
    v5 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRelease(values);
    CFDictionarySetValue(v4, @"options", v5);
    CFRelease(v5);
    if (byte_100034BE8)
    {
      CFDictionarySetValue(v4, @"verbose", kCFBooleanTrue);
    }

    v6 = geteuid();
    v7 = getgid();
    v8 = sub_100011EFC(v4, "/Library/Preferences/SystemConfiguration/com.apple.dhcp6d.plist", v6, v7, 420, 0);
    CFRelease(v4);
    if (v8)
    {
      sub_100001108(0, "%s: dhcp6d_config_create, err %d");
LABEL_31:
      sub_1000123A8(@"com.apple.dhcp6d", "dhcp6d", 0);
      byte_10003520C = 0;
      unlink("/Library/Preferences/SystemConfiguration/com.apple.dhcp6d.plist");
      return v8;
    }
  }

  else
  {
    sub_100001108(0, "%s: no enabled interfaces", "dhcp6d_config_create");
    CFRelease(Mutable);
    CFRelease(values);
  }

  if (byte_10003520C != 1)
  {
    v8 = sub_1000123A8(@"com.apple.dhcp6d", "dhcp6d", 1);
    if (!v8)
    {
      byte_10003520C = 1;
      sub_100001108(0, "started %s", "dhcp6d");
      return v8;
    }

    sub_100001108(0, "unable to load dhcp6d job");
    goto LABEL_31;
  }

  v10 = sub_10000F968("/usr/libexec/dhcp6d");
  if (v10)
  {
    v11 = kill(v10, 1);
    if (v11)
    {
      v8 = v11;
      v12 = __error();
      v13 = strerror(*v12);
      sub_100001108(0, "dhcp6d(HUP): %s", v13);
      strerror(v8);
      sub_100001108(0, "dhcp6d_sighup failed: %s");
      goto LABEL_31;
    }
  }

  sub_100001108(0, "dhcp6d_sighup succeeded", v15);
  return 0;
}

void sub_10002042C()
{
  if (dword_100034A44)
  {
    byte_100035210 = 1;
  }
}

void sub_10002044C()
{
  if (byte_100035210 == 1)
  {
    byte_100035210 = 0;
  }
}

uint64_t sub_100020464(uint64_t a1)
{
  if (dword_100034A44)
  {
    v1 = mrc_dns_proxy_parameters_create();
    sub_100001108(0, "%s: mrc_dns_proxy_parameters_create, %d", "mis_network_add_dns_proxy", -1);
    v2 = 22;
    if (v1)
    {
      mrc_release();
    }
  }

  else
  {
    sub_100001108(0, "%s: dns proxy globally disabled", "mis_network_add_dns_proxy");
    return 0;
  }

  return v2;
}

uint64_t sub_1000206D0(uint64_t a1, int a2, int a3)
{
  if (a2 != -1)
  {
    return sub_100001108(0, "%s: %p %s");
  }

  sub_100001108(0, "%s: %p %s", "dns_proxy_handle_event", *(a1 + 32), "invalidation");
  mrc_release();
  if (a3)
  {
    return sub_100001108(0, "%s: dns proxy failed %d");
  }

  else
  {
    return sub_100001108(0, "%s: dns proxy all done");
  }
}

uint64_t sub_1000207C8(uint64_t a1)
{
  result = *(a1 + 520);
  if (result)
  {
    result = mrc_dns_proxy_invalidate();
    *(a1 + 520) = 0;
  }

  return result;
}

void sub_10002092C(uint64_t *a1, const char *a2)
{
  sub_100001108(0, "%s: an internal interface name is unexpectedly BLANK, aborting", "mis_network_start_continued");
  for (i = *a1; i; i = *(i + 280))
  {
    sub_100001108(0, "network %s internal interface: '%s' (devtype %d, netrbtype %d)", a2, (i + 20), *(i + 4), *(i + 8));
  }

  __assert_rtn("mis_network_start_continued", "mis_network.c", 2036, "int_if->mi_name[0] != '\\0'");
}

void sub_100020A80(BOOL *a1)
{
  *v2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't create os log object", v2, 2u);
  *a1 = qword_100034CB8 != 0;
}