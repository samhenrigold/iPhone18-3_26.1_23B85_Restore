void sub_4891C(uint64_t a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = v9 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s: %s() state is %s", v9[0], v9[1], v9[2]);
    v6 = *(a1 + 120);
    if (v6 > 0xB)
    {
      v7 = "<unknown>";
    }

    else
    {
      v7 = off_69140[v6];
    }

    *v5 = 136315650;
    *(v5 + 4) = a1;
    *(v5 + 12) = 2080;
    *(v5 + 14) = "DHCPv6ClientHandleRoam";
    *(v5 + 22) = 2080;
    *(v5 + 24) = v7;
    __SC_log_send();
  }

  current_time = timer_get_current_time();
  if (sub_4951C(a1, current_time))
  {
    if ((*(a1 + 120) - 3) <= 2)
    {
      sub_498A8(a1, 0, 0);
    }
  }
}

uint64_t sub_48A9C(uint64_t a1, int a2, uint64_t **a3)
{
  v6 = sub_1688(a1);
  v30[0] = v6;
  sub_1690(a1);
  result = 0;
  if (a2 <= 7)
  {
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          sub_47878(v6);
        }

        else
        {
          if (a2 != 7)
          {
            return result;
          }

          v8 = *a3;
          *(a3 + 2) = 0;
          if (v8)
          {
            if (*(v6 + 112) != *(v8 + 16) || ((v10 = *v8, v9 = v8[1], v10 == *(v6 + 96)) ? (v11 = v9 == *(v6 + 104)) : (v11 = 0), !v11))
            {
              result = 0;
              *(a3 + 2) = 1;
              return result;
            }
          }
        }

        return 0;
      }

      goto LABEL_27;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = _os_log_pack_size();
        v13 = v30 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "DHCPv6 %s: stop", v30[0]);
        nullsub_1();
        *v15 = 136315138;
        *(v15 + 4) = v16;
        __SC_log_send();
      }

      if (v6)
      {
        sub_47D30(v30);
        sub_151FC(a1, 0);
        return 0;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v25 = _os_log_pack_size();
        v26 = v30 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = __error();
        v28 = _os_log_pack_fill(v26, v25, *v27, &dword_0, "DHCPv6 %s: already stopped", v30[0]);
        nullsub_1();
        *v28 = 136315138;
        *(v28 + 4) = v29;
        goto LABEL_38;
      }
    }

    else
    {
      if (!v6)
      {
        sub_48F48(a1, a3);
        return 0;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v21 = _os_log_pack_size();
        v22 = v30 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = __error();
        v24 = _os_log_pack_fill(v22, v21, *v23, &dword_0, "%s: re-entering start state", v30[0]);
        *v24 = 136315138;
        *(v24 + 4) = v6;
LABEL_38:
        __SC_log_send();
        return 6;
      }
    }

    return 6;
  }

  if (a2 > 13)
  {
    switch(a2)
    {
      case 14:
        sub_1BE98(v6, a3);
        break;
      case 16:
        sub_4891C(v6);
        break;
      case 22:
        sub_46D78(v6, a3);
        break;
      default:
        return result;
    }

    return 0;
  }

  if (a2 == 8)
  {
LABEL_27:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v17 = _os_log_pack_size();
      v18 = v30 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = __error();
      v20 = _os_log_pack_fill(v18, v17, *v19, &dword_0, "%s: %s() link status changed", v30[0], v30[1]);
      *v20 = 136315394;
      *(v20 + 4) = v6;
      *(v20 + 12) = 2080;
      *(v20 + 14) = "dhcpv6_pd_thread";
      __SC_log_send();
    }

    sub_47760(v6, 3);
    sub_4871C(v6, a3);
    return 0;
  }

  if (a2 != 11)
  {
    return result;
  }

  sub_48320(v6, a3);
  return 0;
}

void sub_48F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1690(a1);
  v5 = sub_47014(a1);
  sub_151FC(a1, v5);
  sub_47760(v5, 3);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    v7 = &v11 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s: start", v11);
    *v9 = 136315138;
    *(v9 + 4) = v5;
    __SC_log_send();
  }

  if (a2 && *(a2 + 16) && *(v5 + 29) == 3)
  {
    *(v5 + 112) = *(a2 + 16);
    v5[6] = *a2;
  }

  sub_47EF8(v5, sub_4E63C, 0);
  v10 = sub_2430(v4);
  if (HIDWORD(v10) || !v10)
  {
    sub_47190(v5);
  }
}

void sub_490F0(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v6 = sub_1EF20(*(a1 + 128));
  if (a2 == 5)
  {
    HIDWORD(v28) = 0;
    if (**a3 == 7)
    {
      if (sub_4A838(a1, a3[2]))
      {
        v11 = sub_1D258(a3[2], 2, &v28 + 1, 0);
        if (v11)
        {
          if (sub_5B3BC(v11, HIDWORD(v28)))
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v12 = _os_log_pack_size();
              v13 = &v28 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
              v14 = __error();
              v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "%s: %s Received (try=%d)", v28, v29, v30);
              v16 = DHCPv6MessageTypeName(**a3);
              v17 = *(a1 + 156);
              *v15 = 136315650;
              *(v15 + 4) = a1;
              *(v15 + 12) = 2080;
              *(v15 + 14) = v16;
              *(v15 + 22) = 1024;
              *(v15 + 24) = v17;
              __SC_log_send();
            }

            sub_4A8C4(a1, a3);
            v18 = *(a1 + 32);
            if (v18)
            {
              dispatch_source_merge_data(v18, 1uLL);
            }

            sub_47BE4(a1, 0xBu);
            sub_47BA8(a1);
          }
        }
      }
    }
  }

  else
  {
    v7 = v6;
    if (a2 == 2)
    {
      goto LABEL_32;
    }

    if (a2)
    {
      return;
    }

    sub_47BE4(a1, 0xAu);
    sub_47814(a1);
    *(a1 + 156) = 0;
    v8 = arc4random();
    *(a1 + 152) = v8 & 0xFFFFFF;
    sub_4EB8C(*(a1 + 128), v8 & 0xFFFFFF, sub_490F0, a1, 5);
    if (sub_12E28(v7) == 255)
    {
LABEL_32:
      if (*(a1 + 156))
      {
        v9 = sub_2430(v7);
        if (HIDWORD(v9))
        {
          v10 = 1;
        }

        else
        {
          v10 = v9 == 0;
        }

        if (!v10)
        {

          sub_4A548(a1);
          return;
        }
      }

      else
      {
        *(a1 + 160) = timer_get_current_time();
      }

      v19 = *(a1 + 144);
      sub_4A5B8(a1, 1.0, 3600.0);
      timer_callout_set(v19, sub_490F0, a1, 2, 0, v20);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v21 = _os_log_pack_size();
        v22 = &v28 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = __error();
        v24 = _os_log_pack_fill(v22, v21, *v23, &dword_0, "%s: Inform Transmit (try=%d)", v28, v29);
        v25 = *(a1 + 156);
        *v24 = 136315394;
        *(v24 + 4) = a1;
        *(v24 + 12) = 1024;
        *(v24 + 14) = v25;
        __SC_log_send();
      }

      sub_4A698(a1);
    }

    else
    {
      v26 = *(a1 + 144);
      v27 = arc4random() / 4294967300.0;

      timer_callout_set(v26, sub_490F0, a1, 2, 0, v27);
    }
  }
}

uint64_t sub_4951C(uint64_t a1, double a2)
{
  if (*(a1 + 224) == 1)
  {
    v3 = *(a1 + 216);
    if (v3 != -1)
    {
      v4 = *(a1 + 200);
      if (v4 <= a2)
      {
        if (a2 - v4 >= v3)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v9 = _os_log_pack_size();
            v10 = &v14 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
            v11 = __error();
            v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "%s: lease has expired", v14);
            *v12 = 136315138;
            *(v12 + 4) = a1;
            __SC_log_send();
          }

          sub_47814(a1);
        }
      }

      else
      {
        sub_47814(a1);
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v5 = _os_log_pack_size();
          v6 = &v14 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
          v7 = __error();
          v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "%s: lease no longer valid", v14);
          *v8 = 136315138;
          *(v8 + 4) = a1;
          __SC_log_send();
        }
      }
    }
  }

  return *(a1 + 224);
}

uint64_t sub_49724(uint64_t a1)
{
  v2 = sub_1690(*(a1 + 136));
  if (!sub_2480(v2))
  {
    return 1;
  }

  v3 = sub_CBBC(*(a1 + 136));
  if (v3)
  {
    v4 = *(a1 + 232);
    if (v4)
    {
      if (CFEqual(v3, v4))
      {
        return 1;
      }
    }
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v6 = _os_log_pack_size();
    v7 = &v13 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s: SSID now %@ (was %@)");
    nullsub_1();
    v11 = v10;
    nullsub_1();
    *v9 = 136315650;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v11;
    *(v9 + 22) = 2112;
    *(v9 + 24) = v12;
    __SC_log_send();
    return 0;
  }

  return result;
}

void sub_498A8(uint64_t a1, int a2, unsigned __int8 **a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1EF20(*(a1 + 128));
  if (a2 == 5)
  {
    HIWORD(v43) = 0;
    LODWORD(v43) = 0;
    v42 = 0;
    HIDWORD(v41) = 0;
    if (**a3 == 7)
    {
      if (sub_4A838(a1, a3[2]))
      {
        v15 = sub_1D258(a3[2], 2, &v43, 0);
        if (v15)
        {
          if (sub_5B3BC(v15, v43) && sub_5BD4C(a3[2], &v43 + 3, &v42, &v41 + 1))
          {
            v16 = HIWORD(v43);
            sub_2424();
            if (v16)
            {
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v17 = _os_log_pack_size();
                v18 = &v39 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
                v19 = __error();
                v20 = _os_log_pack_fill(v18, v17, *v19, &dword_0, "%s: %s %s '%.*s'", v39, v40, v41, v42, v43);
                v21 = DHCPv6MessageTypeName(**a3);
                v22 = sub_5BD28(HIWORD(v43));
                v23 = HIDWORD(v41);
                v24 = v42;
                *v20 = 136316162;
                *(v20 + 4) = a1;
                *(v20 + 12) = 2080;
                *(v20 + 14) = v21;
                *(v20 + 22) = 2080;
                *(v20 + 24) = v22;
                *(v20 + 32) = 1040;
                *(v20 + 34) = v23;
                *(v20 + 38) = 2080;
                *(v20 + 40) = v24;
                __SC_log_send();
              }

              sub_4C82C(a1);
            }

            else
            {
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v32 = _os_log_pack_size();
                v33 = &v39 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
                v34 = __error();
                v35 = _os_log_pack_fill(v33, v32, *v34, &dword_0, "%s: %s Received (try=%d)", v39, v40, v41);
                v36 = DHCPv6MessageTypeName(**a3);
                v37 = *(a1 + 156);
                *v35 = 136315650;
                *(v35 + 4) = a1;
                *(v35 + 12) = 2080;
                *(v35 + 14) = v36;
                *(v35 + 22) = 1024;
                *(v35 + 24) = v37;
                __SC_log_send();
              }

              if (*(a1 + 116) == 3)
              {
                v40 = 0;
                if (sub_4B7AC(a1, **a3, 0, a3[2], &v40, 0))
                {
                  sub_4C8A8(a1, **a3, 0, &v40, v38);
                  sub_4A8C4(a1, a3);
                }
              }

              sub_4BECC(a1);
            }
          }
        }
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (!a2)
      {
        sub_47BE4(a1, 6u);
        sub_4EF58(*(a1 + 128));
        timer_cancel(*(a1 + 144));
        *(a1 + 156) = 0;
        v8 = arc4random();
        *(a1 + 152) = v8 & 0xFFFFFF;
        sub_4EB8C(*(a1 + 128), v8 & 0xFFFFFF, sub_498A8, a1, 5);
        v9 = *(a1 + 144);
        v10 = arc4random() / 4294967300.0;

        timer_callout_set(v9, sub_498A8, a1, 2, 0, v10);
      }

      return;
    }

    if (*(a1 + 156))
    {
      v11 = sub_2430(v7);
      if (HIDWORD(v11))
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (!v12)
      {

        sub_4A548(a1);
        return;
      }

      v13 = *(a1 + 160);
      if (current_time <= v13 || current_time - v13 >= 10.0)
      {
        if (sub_4951C(a1, current_time))
        {

          sub_4BECC(a1);
        }

        else
        {

          sub_49EEC(a1, 0, 0);
        }

        return;
      }
    }

    else
    {
      *(a1 + 160) = current_time;
    }

    v25 = *(a1 + 144);
    sub_4A5B8(a1, 1.0, 4.0);
    timer_callout_set(v25, sub_498A8, a1, 2, 0, v26);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v27 = _os_log_pack_size();
      v28 = &v39 - ((__chkstk_darwin(v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v28, v27, *v29, &dword_0, "%s: Confirm Transmit (try=%d)", v39, v40);
      v31 = *(a1 + 156);
      *v30 = 136315394;
      *(v30 + 4) = a1;
      *(v30 + 12) = 1024;
      *(v30 + 14) = v31;
      __SC_log_send();
    }

    sub_4C014(a1);
  }
}

void sub_49EEC(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v6 = sub_1EF20(*(a1 + 128));
  if (a2 == 5)
  {
    v44 = 0;
    v43 = 0;
    v40 = 0;
    v41 = 0;
    if (**a3 == 2)
    {
      if (sub_4A838(a1, a3[2]))
      {
        v12 = sub_1D258(a3[2], 2, &v40, 0);
        if (v12)
        {
          v13 = v12;
          if (sub_5B3BC(v12, v40))
          {
            if (sub_5BD4C(a3[2], &v43, &v41, &v40 + 1))
            {
              if (v43)
              {
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v14 = _os_log_pack_size();
                  v15 = &v39 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v16 = __error();
                  v17 = _os_log_pack_fill(v15, v14, *v16, &dword_0, "%s: %s %s '%.*s'", v39, v40, v41, v42, v44);
                  v18 = DHCPv6MessageTypeName(**a3);
                  v19 = sub_5BD28(v43);
                  v20 = HIDWORD(v40);
                  v21 = v41;
                  *v17 = 136316162;
                  *(v17 + 4) = a1;
                  *(v17 + 12) = 2080;
                  *(v17 + 14) = v18;
                  *(v17 + 22) = 2080;
                  *(v17 + 24) = v19;
                  *(v17 + 32) = 1040;
                  *(v17 + 34) = v20;
                  *(v17 + 38) = 2080;
                  *(v17 + 40) = v21;
                  __SC_log_send();
                }
              }

              if ((v43 & 0xFFFB) != 2)
              {
                v22 = *(a1 + 116);
                if (v22 == 2)
                {
                  v23 = 1;
                }

                else
                {
                  if (v22 != 3)
                  {
                    return;
                  }

                  v23 = 0;
                }

                if (sub_4B7AC(a1, **a3, v23, a3[2], &v44, 0))
                {
                  sub_4C8A8(a1, **a3, v23, &v44, v31);
                  v32 = sub_4E10C(a3[2]);
                  v33 = *(a1 + 192);
                  if (!v33 || sub_4E10C(v33) < v32)
                  {
                    Mutable = CFStringCreateMutable(0, 0);
                    sub_5B0EC(Mutable, v13, bswap32(*(v13 - 1)) >> 16);
                    sub_2424();
                    _SC_syslog_os_log_mapping();
                    if (__SC_log_enabled())
                    {
                      v35 = _os_log_pack_size();
                      v36 = &v39 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
                      v37 = __error();
                      v38 = _os_log_pack_fill(v36, v35, *v37, &dword_0, "%s: Saving Advertise from %@");
                      *v38 = 136315394;
                      *(v38 + 4) = a1;
                      *(v38 + 12) = 2112;
                      *(v38 + 14) = Mutable;
                      __SC_log_send();
                    }

                    CFRelease(Mutable);
                    sub_4A8C4(a1, a3);
                    if (*(a1 + 156) > 1 || v32 == 255)
                    {
                      sub_4D8E8(a1, 0, 0);
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

  else
  {
    if (a2 != 2)
    {
      if (!a2)
      {
        sub_47BE4(a1, 1u);
        *(a1 + 156) = 0;
        sub_47814(a1);
        v7 = arc4random();
        *(a1 + 152) = v7 & 0xFFFFFF;
        sub_4EB8C(*(a1 + 128), v7 & 0xFFFFFF, sub_49EEC, a1, 5);
        v8 = *(a1 + 144);
        v9 = arc4random() / 4294967300.0;

        timer_callout_set(v8, sub_49EEC, a1, 2, 0, v9);
      }

      return;
    }

    if (*(a1 + 156))
    {
      v10 = sub_2430(v6);
      if (HIDWORD(v10))
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (!v11)
      {

        sub_4A548(a1);
        return;
      }
    }

    else
    {
      *(a1 + 160) = timer_get_current_time();
    }

    if (*(a1 + 184))
    {

      sub_4D8E8(a1, 0, 0);
    }

    else
    {
      v24 = *(a1 + 144);
      sub_4A5B8(a1, 1.0, 3600.0);
      timer_callout_set(v24, sub_49EEC, a1, 2, 0, v25);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v26 = _os_log_pack_size();
        v27 = &v39 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = __error();
        v29 = _os_log_pack_fill(v27, v26, *v28, &dword_0, "%s: Solicit Transmit (try=%d)", v39, v40);
        v30 = *(a1 + 156);
        *v29 = 136315394;
        *(v29 + 4) = a1;
        *(v29 + 12) = 1024;
        *(v29 + 14) = v30;
        __SC_log_send();
      }

      sub_4DDC8(a1);
      if (*(a1 + 116) == 2 && *(a1 + 156) >= 6)
      {
        (*(a1 + 40))(a1, *(a1 + 48), 2);
      }
    }
  }
}

void sub_4A548(void *a1)
{
  sub_4EF58(a1[16]);
  timer_cancel(a1[18]);
  sub_47814(a1);
  sub_47900(a1, "Inactive");
  v2 = a1[4];
  if (v2)
  {

    dispatch_source_merge_data(v2, 1uLL);
  }
}

uint64_t sub_4A5B8(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + 156);
  *(a1 + 156) = v4 + 1;
  if (v4)
  {
    v6 = *(a1 + 168);
    result = arc4random();
    v8 = v6 * (result / 4294967300.0 * 0.2 + -0.1) + v6 * 2.0;
    if (a3 != 0.0 && v8 > a3)
    {
      result = arc4random();
      v8 = a3 + (result / 4294967300.0 * 0.2 + -0.1) * a3;
    }
  }

  else
  {
    result = arc4random();
    v8 = a2 + (result / 4294967300.0 * 0.2 + -0.1) * a2;
  }

  *(a1 + 168) = v8;
  return result;
}

uint64_t sub_4A698(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  result = sub_4ABF8(a1, 0xBu, v15, v14);
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 128);
    v5 = sub_5B9A8(v14);
    result = sub_4F270(v4, v3, (v5 + 4));
    if (result > 0x32 || ((1 << result) & 0x4000000000041) == 0)
    {
      v7 = result;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v8 = _os_log_pack_size();
        v9 = &v14[-1] - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        v10 = __error();
        v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "%s: SendInformRequest transmit failed, %s", v13, v14[0]);
        v12 = strerror(v7);
        *v11 = 136315394;
        *(v11 + 4) = a1;
        *(v11 + 12) = 2080;
        *(v11 + 14) = v12;
        return __SC_log_send();
      }
    }
  }

  return result;
}

unsigned __int16 *sub_4A838(uint64_t a1, uint64_t a2)
{
  LODWORD(v8) = 0;
  v3 = sub_4B744(a1);
  result = sub_1D258(a2, 1, &v8, 0);
  if (result)
  {
    v5 = result;
    Length = CFDataGetLength(v3);
    if (Length == v8)
    {
      BytePtr = CFDataGetBytePtr(v3);
      return (bcmp(v5, BytePtr, v8) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *sub_4A8C4(uint64_t a1, uint64_t a2)
{
  current_time = timer_get_current_time();
  sub_47814(a1);
  v5 = sub_CBBC(*(a1 + 136));
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  memset(v30, 0, 256);
  HIDWORD(v29) = 0;
  sub_41E8((a1 + 232));
  *(a1 + 232) = v6;
  v7 = *(a2 + 8);
  *(a1 + 184) = v7;
  v8 = malloc_type_malloc(v7, 0xE403647FuLL);
  *(a1 + 176) = v8;
  memmove(v8, *a2, *(a1 + 184));
  v9 = sub_5BC3C(*(a1 + 176), *(a1 + 184), v30);
  *(a1 + 192) = v9;
  result = sub_1D258(v9, 2, &v29 + 1, 0);
  *(a1 + 272) = result;
  v11 = *(a1 + 116);
  if (v11 == 2)
  {
    v12 = 1;
  }

  else
  {
    if (v11 != 3)
    {
LABEL_35:
      *(a1 + 264) = v11;
      return result;
    }

    v12 = 0;
  }

  result = sub_4B7AC(a1, **(a1 + 176), v12, *(a1 + 192), (a1 + 288), 0);
  *(a1 + 280) = result;
  if (result)
  {
    v13 = *(a1 + 288);
    v14 = *(result + 2);
    if (v12)
    {
      v15 = bswap32(v13[5]);
      v13 += 4;
    }

    else
    {
      v15 = bswap32(v13[1]);
    }

    v24 = *v13;
    v25 = bswap32(v24);
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v15;
    }

    if (v14.i32[0] && v14.i32[1])
    {
      if (v14.i32[0] == -1 || v14.i32[1] == -1)
      {
        *(a1 + 200) = current_time;
        v27 = 0;
        v15 = -1;
        goto LABEL_33;
      }

      v27 = vrev32_s8(v14);
    }

    else if (v26 == -1)
    {
      v27 = 0;
    }

    else
    {
      v27 = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(xmmword_5D190, v26)));
    }

    *(a1 + 200) = current_time;
    if (v15 != -1)
    {
LABEL_34:
      *(a1 + 208) = v27;
      *(a1 + 216) = v15;
      *(a1 + 220) = v26;
      v11 = *(a1 + 116);
      goto LABEL_35;
    }

    v27 = 0;
LABEL_33:
    v26 = -1;
    goto LABEL_34;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v16 = _os_log_pack_size();
    v17 = &v28 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &dword_0, "%s: %s() failed to retrieve %s/%s", v28, v29, v30[0], v30[1]);
    if (v12)
    {
      v20 = 3;
    }

    else
    {
      v20 = 25;
    }

    if (v12)
    {
      v21 = 5;
    }

    else
    {
      v21 = 26;
    }

    v22 = sub_5B7F0(v20);
    v23 = sub_5B7F0(v21);
    *v19 = 136315906;
    *(v19 + 4) = a1;
    *(v19 + 12) = 2080;
    *(v19 + 14) = "DHCPv6ClientSavePacket";
    *(v19 + 22) = 2080;
    *(v19 + 24) = v22;
    *(v19 + 32) = 2080;
    *(v19 + 34) = v23;
    return __SC_log_send();
  }

  return result;
}

_BYTE *sub_4ABF8(uint64_t a1, unsigned int a2, _BYTE *a3, uint64_t a4)
{
  v5 = a3;
  DHCPv6PacketSetMessageType(a3, a2);
  DHCPv6PacketSetTransactionID(v5, *(a1 + 152));
  sub_5B99C(a4, (v5 + 4), 1496);
  if (!sub_4AE68(a1, a4))
  {
    return 0;
  }

  v8 = *(a1 + 116);
  if (v8 == 2)
  {
    v9 = 0;
    if (a2 > 6 || ((1 << a2) & 0x6A) == 0)
    {
LABEL_8:
      if (a2 > 0xB || ((1 << a2) & 0x86A) == 0 || sub_4B490(a4, v9))
      {
        goto LABEL_11;
      }

      return 0;
    }

    v9 = sub_4AFF4(a1, a4);
    v8 = *(a1 + 116);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != 3)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (*(a1 + 156) == 1)
  {
    LOWORD(v10) = 0;
  }

  else
  {
    v11 = ((timer_get_current_time() - *(a1 + 160)) * 100.0);
    if (HIWORD(v11))
    {
      LOWORD(v10) = -1;
    }

    else
    {
      v10 = bswap32(v11) >> 16;
    }
  }

  memset(v19, 0, 256);
  v18 = v10;
  if (!sub_5B9B0(a4, 8u, 2uLL, &v18, v19))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      v13 = &v17 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "DHCPv6Client: failed to add ELAPSED_TIME, %s", v17);
      *v15 = 136315138;
      *(v15 + 4) = v19;
      __SC_log_send();
    }

    return 0;
  }

  return v5;
}

const __CFData *sub_4AE68(uint64_t a1, uint64_t a2)
{
  v3 = sub_4B744(a1);
  v4 = v3;
  if (v3)
  {
    memset(v12, 0, sizeof(v12));
    Length = CFDataGetLength(v3);
    BytePtr = CFDataGetBytePtr(v4);
    v4 = (&dword_0 + 1);
    if (!sub_5B9B0(a2, 1u, Length, BytePtr, v12))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        v8 = v12 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = __error();
        v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "DHCPv6Client: failed to add CLIENTID, %s", *&v12[0]);
        *v10 = 136315138;
        *(v10 + 4) = v12;
        __SC_log_send();
      }

      return 0;
    }
  }

  return v4;
}

BOOL sub_4AFF4(uint64_t a1, uint64_t a2)
{
  memset(v38, 0, sizeof(v38));
  sub_1EF20(*(a1 + 128));
  HIDWORD(v37) = 0;
  if (!sub_B6A8(*(a1 + 136), &v37 + 1))
  {
    v12 = sub_2A35C();
    if (!v12)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return 0;
      }

      v24 = _os_log_pack_size();
      v25 = &v36 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *__error();
      v7 = _os_log_pack_fill(v25, v24, v26, &dword_0, "DHCPv6 %s: no hostname available");
      goto LABEL_4;
    }

    v13 = v12;
    v14 = sub_58EC8(v12);
    if (!v14)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v27 = _os_log_pack_size();
        v28 = &v36 - ((__chkstk_darwin(v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = __error();
        v30 = _os_log_pack_fill(v28, v27, *v29, &dword_0, "DHCPv6 %s: failed to convert '%s'", v36, v37);
        nullsub_1();
        *v30 = 136315394;
        *(v30 + 4) = v31;
        *(v30 + 12) = 2080;
        *(v30 + 14) = v13;
        __SC_log_send();
      }

      return 0;
    }

    v15 = v14;
    Length = CFDataGetLength(v14);
    v17 = malloc_type_malloc(Length + 1, 0x1000040BDFB0063uLL);
    *v17 = 1;
    v39.location = 0;
    v39.length = Length;
    CFDataGetBytes(v15, v39, v17 + 1);
    v10 = sub_5B9B0(a2, 0x27u, (Length + 1), v17, v38);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v18 = __SC_log_enabled();
    if (v10)
    {
      if (v18)
      {
        v19 = _os_log_pack_size();
        v36 = &v36;
        v20 = &v36 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = __error();
        v22 = _os_log_pack_fill(v20, v19, *v21, &dword_0, "DHCPv6 %s: added FQDN option for '%s'", v36, v37);
        nullsub_1();
        *v22 = 136315394;
        *(v22 + 4) = v23;
        *(v22 + 12) = 2080;
        *(v22 + 14) = v13;
LABEL_18:
        __SC_log_send();
      }
    }

    else if (v18)
    {
      v32 = _os_log_pack_size();
      v33 = &v36 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = __error();
      v35 = _os_log_pack_fill(v33, v32, *v34, &dword_0, "DHCPv6Client: failed to add CLIENT_FQDN, %s", v36);
      *v35 = 136315138;
      *(v35 + 4) = v38;
      goto LABEL_18;
    }

    CFRelease(v15);
    free(v17);
    return v10;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = &v36 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = *__error();
    v7 = _os_log_pack_fill(v5, v4, v6, &dword_0, "DHCPv6 %s: privacy disallows sharing hostname");
LABEL_4:
    v8 = v7;
    nullsub_1();
    *v8 = 136315138;
    *(v8 + 4) = v9;
    __SC_log_send();
  }

  return 0;
}

BOOL sub_4B490(uint64_t a1, int a2)
{
  memset(v20, 0, sizeof(v20));
  if (a2)
  {
    if (sub_5BA74(a1))
    {
      return 1;
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        v12 = v20 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = __error();
        v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "DHCPv6Client: failed to add ORO, %s", *&v20[0]);
        *v14 = 136315138;
        *(v14 + 4) = v20;
        __SC_log_send();
      }

      return 0;
    }
  }

  else
  {
    v3 = __chkstk_darwin(a1);
    v6 = v20 - ((v5 + 15) & 0x3FFFFFFF0);
    if (v4 >= 1)
    {
      v7 = 0;
      v8 = off_700F8;
      do
      {
        v10 = *v8++;
        v9 = v10;
        if (v10 != 39)
        {
          *&v6[2 * v7++] = v9;
        }

        --v4;
      }

      while (v4);
    }

    v2 = sub_5BA74(v3);
    if (!v2)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v15 = _os_log_pack_size();
        v16 = v20 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = __error();
        v18 = _os_log_pack_fill(v16, v15, *v17, &dword_0, "DHCPv6Client: failed to add ORO, %s", *&v20[0]);
        *v18 = 136315138;
        *(v18 + 4) = v20;
        __SC_log_send();
      }
    }
  }

  return v2;
}

uint64_t sub_4B744(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    result = *(a1 + 248);
    if (!result)
    {
      v3 = sub_1EF20(*(a1 + 128));
      result = sub_5424C(v3);
      *(a1 + 248) = result;
    }
  }

  else
  {
    result = qword_702A8;
    if (!qword_702A8)
    {
      result = sub_53878(G_dhcp_duid_type);
      qword_702A8 = result;
    }
  }

  return result;
}

unsigned __int16 *sub_4B7AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, char *a6)
{
  v7 = a5;
  v9 = a2;
  memset(v79, 0, sizeof(v79));
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v75 = 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 25;
  }

  *a5 = 0;
  v12 = sub_1D258(a4, v11, &v77, 0);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v14 = v77;
  if (v77 < 13)
  {
    goto LABEL_9;
  }

  v15 = *(v12 + 1);
  if (v15)
  {
    v16 = *(v12 + 2);
    if (v16)
    {
      if (bswap32(v15) > bswap32(v16))
      {
        goto LABEL_9;
      }
    }
  }

  LODWORD(v77) = v77 - 12;
  v20 = sub_5BB1C(v12 + 6, v14 - 12, v79);
  v75 = v20;
  if (v20)
  {
    v21 = v20;
    if (sub_5BD4C(v20, &v76, &v78, &v77 + 1))
    {
      HIDWORD(v66) = v11;
      v70 = v9;
      v72 = a1;
      v67 = a6;
      v68 = v7;
      if (v76)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v22 = _os_log_pack_size();
          v23 = &v65 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
          v24 = __error();
          v25 = _os_log_pack_fill(v23, v22, *v24, &dword_0, "%s: %s Status %s '%.*s'", v65, v66, v67, v68, v69);
          v26 = sub_5B7F0(SHIDWORD(v66));
          v27 = sub_5BD28(v76);
          v28 = HIDWORD(v77);
          v29 = v78;
          *v25 = 136316162;
          *(v25 + 4) = v72;
          *(v25 + 12) = 2080;
          *(v25 + 14) = v26;
          *(v25 + 22) = 2080;
          *(v25 + 24) = v27;
          *(v25 + 32) = 1040;
          *(v25 + 34) = v28;
          *(v25 + 38) = 2080;
          *(v25 + 40) = v29;
          __SC_log_send();
        }
      }

      if (a3)
      {
        v30 = 5;
      }

      else
      {
        v30 = 26;
      }

      v74 = 0;
      v31 = sub_1D258(v21, v30, &v77, &v74);
      if (v31)
      {
        if (a3)
        {
          v33 = 24;
        }

        else
        {
          v33 = 25;
        }

        v71 = v33;
        *&v32 = 136315650;
        v69 = v32;
        while (v77 >= v71)
        {
          if (a3)
          {
            v34 = bswap32(*(v31 + 5));
            v35 = (v31 + 8);
          }

          else
          {
            v34 = bswap32(*(v31 + 1));
            v35 = v31;
          }

          v36 = *v35;
          if (v34)
          {
            v37 = v36 == 0;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v58 = bswap32(v36);
            if (v58 <= v34)
            {
              *v68 = v31;
            }

            else
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v59 = _os_log_pack_size();
                v73 = &v65;
                v60 = &v65 - ((__chkstk_darwin(v59) + 15) & 0xFFFFFFFFFFFFFFF0);
                v61 = __error();
                v62 = _os_log_pack_fill(v60, v59, *v61, &dword_0, "%s: %s %s preferred %d > valid lifetime %d", v65, v66, v67, v68, v69);
                v63 = DHCPv6MessageTypeName(v70);
                v64 = sub_5B7F0(v30);
                *v62 = 136316162;
                *(v62 + 4) = v72;
                *(v62 + 12) = 2080;
                *(v62 + 14) = v63;
                *(v62 + 22) = 2080;
                *(v62 + 24) = v64;
                *(v62 + 32) = 1024;
                *(v62 + 34) = v58;
                *(v62 + 38) = 1024;
                *(v62 + 40) = v34;
                __SC_log_send();
              }
            }

            goto LABEL_45;
          }

          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v38 = _os_log_pack_size();
            v73 = &v65;
            v39 = v21;
            v40 = &v65 - ((__chkstk_darwin(v38) + 15) & 0xFFFFFFFFFFFFFFF0);
            v41 = __error();
            v42 = _os_log_pack_fill(v40, v38, *v41, &dword_0, "%s: %s %s has valid/preferred lifetime 0, skipping", v65, v66, v67);
            v43 = DHCPv6MessageTypeName(v70);
            v44 = sub_5B7F0(v30);
            *v42 = v69;
            *(v42 + 4) = v72;
            *(v42 + 12) = 2080;
            *(v42 + 14) = v43;
            *(v42 + 22) = 2080;
            *(v42 + 24) = v44;
            v21 = v39;
            __SC_log_send();
          }

          ++v74;
          v31 = sub_1D258(v21, v30, &v77, &v74);
          if (!v31)
          {
            break;
          }
        }
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v45 = _os_log_pack_size();
        v46 = &v65 - ((__chkstk_darwin(v45) + 15) & 0xFFFFFFFFFFFFFFF0);
        v47 = __error();
        v48 = _os_log_pack_fill(v46, v45, *v47, &dword_0, "%s: %s %s contains no valid %s option", v65, v66, v67, v68);
        v49 = DHCPv6MessageTypeName(v70);
        v50 = sub_5B7F0(SHIDWORD(v66));
        v51 = sub_5B7F0(v30);
        *v48 = 136315906;
        *(v48 + 4) = v72;
        *(v48 + 12) = 2080;
        *(v48 + 14) = v49;
        *(v48 + 22) = 2080;
        *(v48 + 24) = v50;
        *(v48 + 32) = 2080;
        *(v48 + 34) = v51;
        __SC_log_send();
      }

LABEL_45:
      v17 = 0;
      a6 = v67;
      v7 = v68;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v72 = a1;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_9:
      v17 = 1;
      goto LABEL_10;
    }

    v52 = _os_log_pack_size();
    v73 = &v65;
    v53 = &v65 - ((__chkstk_darwin(v52) + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = __error();
    v55 = _os_log_pack_fill(v53, v52, *v54, &dword_0, "%s: %s %s contains no options", v65, v66, v67);
    v56 = sub_5B7F0(v11);
    v57 = DHCPv6MessageTypeName(v9);
    *v55 = 136315650;
    *(v55 + 4) = v72;
    *(v55 + 12) = 2080;
    *(v55 + 14) = v56;
    *(v55 + 22) = 2080;
    *(v55 + 24) = v57;
    __SC_log_send();
    v17 = 1;
  }

LABEL_10:
  v18 = *v7;
  if (a6)
  {
    *a6 = v76;
  }

  if ((v17 & 1) == 0)
  {
    sub_5BC54(&v75);
  }

  if (v18)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_4BECC(uint64_t a1)
{
  current_time = timer_get_current_time();
  sub_47BE4(a1, 3u);
  *(a1 + 224) = 1;
  sub_4EF58(*(a1 + 128));
  timer_cancel(*(a1 + 144));
  v4 = *(a1 + 216);
  v3 = *(a1 + 220);
  if (v4 == -1)
  {
    v6 = 0;
    v7 = -1;
LABEL_11:
    if (*(a1 + 116) == 2)
    {
      sub_4CAD8(a1, v7, v3);
    }

    else
    {
      sub_4D014(a1, v7, v3);
    }

    if (v7 != -1)
    {
      v8 = *(a1 + 208);
      v9 = v8 >= v6;
      v10 = v8 - v6;
      v11 = v10;
      if (v10 == 0 || !v9)
      {
        v11 = 10.0;
      }

      *(a1 + 256) = current_time + v11;
      v12 = *(a1 + 144);

      timer_callout_set(v12, sub_4D20C, a1, 0, 0, v11);
    }

    return;
  }

  v5 = *(a1 + 200);
  if (current_time >= v5)
  {
    v6 = (current_time - v5);
    v7 = v4 - v6;
    if (v4 > v6)
    {
      if (v3 >= v6)
      {
        v3 -= v6;
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_11;
    }
  }

  sub_4C82C(a1);
}

uint64_t sub_4C014(uint64_t a1)
{
  memset(v48, 0, sizeof(v48));
  v46 = 0;
  v47 = 0;
  v2 = *(a1 + 116);
  if ((v2 & 0xFFFFFFFE) != 2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v6 = _os_log_pack_size();
    v7 = &v46 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s: %s() invalid mode '%s'", v46, v47, *&v48[0]);
    v10 = *(a1 + 116);
    if (v10 > 3)
    {
      v11 = "<unknown>";
    }

    else
    {
      v11 = off_691A0[v10];
    }

    *v9 = 136315650;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2080;
    *(v9 + 14) = "DHCPv6ClientSendPacket";
    *(v9 + 22) = 2080;
    goto LABEL_17;
  }

  if (*(a1 + 264) != v2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v12 = _os_log_pack_size();
    v13 = &v46 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = *__error();
    v15 = _os_log_pack_fill(v13, v12, v14, &dword_0, "%s: %s() saved information is not valid");
LABEL_22:
    *v15 = 136315394;
    *(v15 + 4) = a1;
    *(v15 + 12) = 2080;
    *(v15 + 14) = "DHCPv6ClientSendPacket";
    return __SC_log_send();
  }

  if (!*(a1 + 272))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v16 = _os_log_pack_size();
    v17 = &v46 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v15 = _os_log_pack_fill(v17, v16, v18, &dword_0, "%s: %s() NULL server_id");
    goto LABEL_22;
  }

  if (!*(a1 + 280))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v19 = _os_log_pack_size();
    v20 = &v46 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v15 = _os_log_pack_fill(v20, v19, v21, &dword_0, "%s: %s() NULL IA_NA/IA_PD");
    goto LABEL_22;
  }

  v3 = *(a1 + 120);
  if (v3 > 5)
  {
    switch(v3)
    {
      case 6:
        if (v2 == 3)
        {
          v4 = 6;
        }

        else
        {
          v4 = 4;
        }

        break;
      case 7:
        v4 = 8;
        break;
      case 9:
        v4 = 9;
        break;
      default:
        goto LABEL_33;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = 3;
        break;
      case 4:
        v4 = 5;
        break;
      case 5:
        v4 = 6;
        break;
      default:
LABEL_33:
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v22 = _os_log_pack_size();
          v23 = &v46 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
          v24 = __error();
          v25 = _os_log_pack_fill(v23, v22, *v24, &dword_0, "%s: SendPacket doesn't know %s", v46, v47);
          v26 = *(a1 + 120);
          if (v26 > 0xB)
          {
            v27 = "<unknown>";
          }

          else
          {
            v27 = off_69140[v26];
          }

          *v25 = 136315394;
          *(v25 + 4) = a1;
          *(v25 + 12) = 2080;
          *(v25 + 14) = v27;
          return __SC_log_send();
        }

        return result;
    }
  }

  result = sub_4ABF8(a1, v4, v49, &v46);
  if (!result)
  {
    return result;
  }

  v28 = result;
  if ((v4 | 2) == 6 || sub_5B9B0(&v46, 2u, bswap32(*(*(a1 + 272) - 2)) >> 16, *(a1 + 272), v48))
  {
    if (*(a1 + 116) == 2)
    {
      if (!sub_4D708(a1, 0, &v46, v48))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
      }
    }

    else if (!sub_4D7C0(a1, 0, &v46, v48))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

LABEL_54:
      v42 = _os_log_pack_size();
      v43 = &v46 - ((__chkstk_darwin(v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = *__error();
      v45 = _os_log_pack_fill(v43, v42, v44, &dword_0, "DHCPv6Client: failed to add IA_NA, %s");
      *v45 = 136315138;
      *(v45 + 4) = v48;
      return __SC_log_send();
    }

    v29 = *(a1 + 128);
    v30 = sub_5B9A8(&v46);
    result = sub_4F270(v29, v28, (v30 + 4));
    v31 = result;
    if (result > 0x32 || ((1 << result) & 0x4000000000041) == 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v32 = _os_log_pack_size();
        v33 = &v46 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = __error();
        v35 = _os_log_pack_fill(v33, v32, *v34, &dword_0, "%s: SendPacket transmit failed, %s", v46, v47);
        v36 = strerror(v31);
        *v35 = 136315394;
        *(v35 + 4) = a1;
        *(v35 + 12) = 2080;
        *(v35 + 14) = v36;
        return __SC_log_send();
      }
    }

    return result;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v37 = _os_log_pack_size();
    v38 = &v46 - ((__chkstk_darwin(v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = __error();
    v9 = _os_log_pack_fill(v38, v37, *v39, &dword_0, "%s: %s failed to add SERVERID, %s", v46, v47, *&v48[0]);
    v40 = *(a1 + 120);
    if (v40 > 0xB)
    {
      v41 = "<unknown>";
    }

    else
    {
      v41 = off_69140[v40];
    }

    *v9 = 136315650;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2080;
    *(v9 + 14) = v41;
    *(v9 + 22) = 2080;
    v11 = v48;
LABEL_17:
    *(v9 + 24) = v11;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_4C82C(void *a1)
{
  sub_47BE4(a1, 8u);
  sub_4EF58(a1[16]);
  timer_cancel(a1[18]);
  sub_47900(a1, "Unbound");
  sub_47814(a1);
  v2 = a1[4];
  if (v2)
  {
    dispatch_source_merge_data(v2, 1uLL);
  }

  return sub_49EEC(a1, 0, 0);
}

uint64_t sub_4C8A8(uint64_t a1, uint64_t a2, int a3, int8x8_t **a4, __n128 a5)
{
  v5 = a2;
  v7 = *a4;
  if (a3)
  {
    a5.n128_u64[0] = vrev32_s8(v7[2]);
    v24 = a5;
    BYTE2(v25) = 0;
    v8 = 5;
  }

  else
  {
    v9 = v7[1].u8[0];
    a5.n128_u64[0] = vrev32_s8(*v7);
    v24 = a5;
    snprintf(&v25 + 2, 8uLL, "/%d", v9);
    v8 = 26;
    v7 = (v7 + 9);
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v11 = _os_log_pack_size();
    v23 = &v22;
    v12 = &v22 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "%s: %s Received %s (try=%d) %s %s%s Preferred %d Valid=%d", v22, v23, v24.n128_u64[0], v24.n128_u32[2], v25, v26[0], v26[1], v27, v28);
    v15 = *(a1 + 120);
    if (v15 > 0xB)
    {
      v16 = "<unknown>";
    }

    else
    {
      v16 = off_69140[v15];
    }

    v17 = DHCPv6MessageTypeName(v5);
    v18 = *(a1 + 156);
    v19 = sub_5B7F0(v8);
    v20 = inet_ntop(30, v7, v26 + 2, 0x2Eu);
    *v14 = 136317186;
    *(v14 + 4) = a1;
    *(v14 + 12) = 2080;
    *(v14 + 14) = v16;
    *(v14 + 22) = 2080;
    *(v14 + 24) = v17;
    *(v14 + 32) = 1024;
    *(v14 + 34) = v18;
    *(v14 + 38) = 2080;
    *(v14 + 40) = v19;
    *(v14 + 48) = 2080;
    *(v14 + 50) = v20;
    *(v14 + 58) = 2080;
    *(v14 + 60) = &v25 + 2;
    *(v14 + 68) = 1024;
    v21 = v24.n128_u32[1];
    *(v14 + 70) = v24.n128_u32[0];
    *(v14 + 74) = 1024;
    *(v14 + 76) = v21;
    return __SC_log_send();
  }

  return result;
}

void sub_4CAD8(uint64_t a1, int a2, int a3)
{
  v6 = sub_1EF20(*(a1 + 128));
  v8 = (a1 + 56);
  v7 = *(a1 + 56);
  v53 = **(a1 + 288);
  if ((__PAIR64__(*(a1 + 60), v7) || *(a1 + 64) || *(a1 + 68)) && (v8->i64[0] != v53.i64[0] || *(a1 + 64) != v53.i64[1]))
  {
    inet_ntop(30, (a1 + 56), v55, 0x2Eu);
    nullsub_1();
    v11 = sub_41CE4(v10, (a1 + 56));
    sub_2424();
    _SC_syslog_os_log_mapping();
    v12 = __SC_log_enabled();
    if (v11 < 0)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      HIDWORD(v51) = a3;
      v18 = _os_log_pack_size();
      v52 = &v49;
      v19 = &v49 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "%s(%s): remove %s failed, %s (%d)", v49, v50, v51, v52, v53.i32[0]);
      nullsub_1();
      v50 = v22;
      v23 = __error();
      v24 = strerror(*v23);
      v25 = *__error();
      *v21 = 136316162;
      *(v21 + 4) = "DHCPv6ClientBoundAddress";
      *(v21 + 12) = 2080;
      *(v21 + 14) = v50;
      *(v21 + 22) = 2080;
      *(v21 + 24) = v55;
      *(v21 + 32) = 2080;
      *(v21 + 34) = v24;
      *(v21 + 42) = 1024;
      *(v21 + 44) = v25;
      a3 = HIDWORD(v51);
    }

    else
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = _os_log_pack_size();
      v52 = &v49;
      v14 = &v49 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "%s(%s): removed %s", v49, v50, v51);
      nullsub_1();
      *v16 = 136315650;
      *(v16 + 4) = "DHCPv6ClientBoundAddress";
      *(v16 + 12) = 2080;
      *(v16 + 14) = v17;
      *(v16 + 22) = 2080;
      *(v16 + 24) = v55;
    }

    __SC_log_send();
  }

LABEL_14:
  v26 = sub_144D8(v6);
  v27 = sub_41E5C(&v53, v26);
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = 128;
  }

  inet_ntop(30, &v53, v55, 0x2Eu);
  nullsub_1();
  v30 = sub_420DC(v29, &v53, 0, v28, 256, a2, a3);
  sub_2424();
  _SC_syslog_os_log_mapping();
  v31 = __SC_log_enabled();
  if (v30 < 0)
  {
    if (!v31)
    {
      goto LABEL_23;
    }

    v37 = _os_log_pack_size();
    v52 = &v49;
    v38 = &v49 - ((__chkstk_darwin(v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = __error();
    v40 = _os_log_pack_fill(v38, v37, *v39, &dword_0, "%s(%s): adding %s failed, %s (%d)", v49, v50, v51, v52, v53.i32[0]);
    nullsub_1();
    v42 = v41;
    v43 = __error();
    v44 = strerror(*v43);
    v45 = *__error();
    *v40 = 136316162;
    *(v40 + 4) = "DHCPv6ClientBoundAddress";
    *(v40 + 12) = 2080;
    *(v40 + 14) = v42;
    *(v40 + 22) = 2080;
    *(v40 + 24) = v55;
    *(v40 + 32) = 2080;
    *(v40 + 34) = v44;
    *(v40 + 42) = 1024;
    *(v40 + 44) = v45;
  }

  else
  {
    if (!v31)
    {
      goto LABEL_23;
    }

    v32 = _os_log_pack_size();
    v52 = &v49;
    v33 = a3;
    v34 = &v49 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = __error();
    v36 = _os_log_pack_fill(v34, v32, *v35, &dword_0, "%s: set address %s/%d valid %d preferred %d", v49, v50, v51, v52, v53.i32[0]);
    *v36 = 136316162;
    *(v36 + 4) = a1;
    *(v36 + 12) = 2080;
    *(v36 + 14) = v55;
    *(v36 + 22) = 1024;
    *(v36 + 24) = v28;
    *(v36 + 28) = 1024;
    *(v36 + 30) = a2;
    *(v36 + 34) = 1024;
    *(v36 + 36) = v33;
  }

  __SC_log_send();
LABEL_23:
  v46 = *(a1 + 32);
  if (v46)
  {
    dispatch_source_merge_data(v46, 1uLL);
  }

  *v8 = v53;
  *(a1 + 72) = v28;
  memset(v54, 0, 184);
  v47 = sub_1EF20(*(a1 + 128));
  v48 = sub_144D8(v47);
  sub_16718(v54, v48);
  sub_4813C(a1, v54);
  sub_17B18(v54);
}

void sub_4D014(uint64_t a1, int a2, int a3)
{
  v6 = (a1 + 76);
  v7 = *(a1 + 76);
  v8 = *(a1 + 288);
  v17 = *(v8 + 9);
  v9 = *(v8 + 8);
  if (__PAIR64__(*(a1 + 80), v7) || *(a1 + 84) || *(a1 + 88))
  {
    if (*(a1 + 76) == v17)
    {
      v10 = "Maintained";
    }

    else
    {
      v10 = "Changed";
    }
  }

  else
  {
    v10 = "New";
  }

  *v6 = *(v8 + 9);
  *(a1 + 92) = v9;
  inet_ntop(30, v6, v19 + 2, 0x2Eu);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v11 = _os_log_pack_size();
    v12 = &v17 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "%s: %s prefix %s/%d valid %d preferred %d", v17, *(&v17 + 1), v18, v19[0], v19[2], v19[4]);
    v15 = *(a1 + 92);
    *v14 = 136316418;
    *(v14 + 4) = a1;
    *(v14 + 12) = 2080;
    *(v14 + 14) = v10;
    *(v14 + 22) = 2080;
    *(v14 + 24) = v19 + 2;
    *(v14 + 32) = 1024;
    *(v14 + 34) = v15;
    *(v14 + 38) = 1024;
    *(v14 + 40) = a2;
    *(v14 + 44) = 1024;
    *(v14 + 46) = a3;
    __SC_log_send();
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    dispatch_source_merge_data(v16, 1uLL);
  }
}

void sub_4D20C(uint64_t a1, int a2, unsigned __int8 **a3)
{
  current_time = timer_get_current_time();
  if (a2 == 5)
  {
    v37 = 0;
    HIWORD(v36) = 0;
    v34 = 0;
    v35 = 0;
    if (**a3 == 7)
    {
      if (sub_4A838(a1, a3[2]))
      {
        v12 = sub_1D258(a3[2], 2, &v34, 0);
        if (v12)
        {
          if (sub_5B3BC(v12, v34) && sub_5BD4C(a3[2], &v36 + 3, &v35, &v34 + 1))
          {
            if (HIWORD(v36))
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v13 = _os_log_pack_size();
                v14 = &v33 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
                v15 = __error();
                v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "%s: %s %s %.*s", v33, v34, v35, v36, v37);
                v17 = DHCPv6MessageTypeName(**a3);
                v18 = sub_5BD28(HIWORD(v36));
                v19 = HIDWORD(v34);
                v20 = v35;
                *v16 = 136316162;
                *(v16 + 4) = a1;
                *(v16 + 12) = 2080;
                *(v16 + 14) = v17;
                *(v16 + 22) = 2080;
                *(v16 + 24) = v18;
                *(v16 + 32) = 1040;
                *(v16 + 34) = v19;
                *(v16 + 38) = 2080;
                *(v16 + 40) = v20;
                __SC_log_send();
              }
            }

            else
            {
              v31 = *(a1 + 116);
              if (sub_4B7AC(a1, **a3, v31 == 2, a3[2], &v37, 0))
              {
                sub_4C8A8(a1, **a3, v31 == 2, &v37, v32);
                sub_4A8C4(a1, a3);
                sub_4BECC(a1);
                return;
              }
            }

            sub_4C82C(a1);
          }
        }
      }
    }
  }

  else
  {
    v7 = current_time;
    if (a2 != 2)
    {
      if (a2)
      {
        return;
      }

      sub_47BE4(a1, 4u);
      sub_4EF58(*(a1 + 128));
      timer_cancel(*(a1 + 144));
      *(a1 + 156) = 0;
      *(a1 + 160) = v7;
      v8 = arc4random();
      *(a1 + 152) = v8 & 0xFFFFFF;
      sub_4EB8C(*(a1 + 128), v8 & 0xFFFFFF, sub_4D20C, a1, 5);
    }

    if (sub_4951C(a1, v7))
    {
      v9 = (a1 + 212);
      v10 = (v7 - *(a1 + 200));
      if (*(a1 + 212) <= v10)
      {
        if (*(a1 + 120) != 5)
        {
          v21 = arc4random();
          *(a1 + 152) = v21 & 0xFFFFFF;
          sub_4EB8C(*(a1 + 128), v21 & 0xFFFFFF, sub_4D20C, a1, 5);
          *(a1 + 160) = v7;
          sub_47BE4(a1, 5u);
          *(a1 + 156) = 0;
        }

        sub_4A5B8(a1, 10.0, 600.0);
        v9 = (a1 + 216);
      }

      else
      {
        sub_4A5B8(a1, 10.0, 600.0);
      }

      v22 = *v9 - v10;
      if (v11 <= v22)
      {
        v23 = v11;
      }

      else
      {
        v23 = v22;
      }

      *(a1 + 256) = v7 + v23;
      timer_callout_set(*(a1 + 144), sub_4D20C, a1, 2, 0, v23);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v24 = _os_log_pack_size();
        v25 = &v33 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = __error();
        v27 = _os_log_pack_fill(v25, v24, *v26, &dword_0, "%s: %s Transmit (try=%d) (wait_time=%lu)", v33, v34, v35, v36);
        v28 = *(a1 + 120);
        if (v28 > 0xB)
        {
          v29 = "<unknown>";
        }

        else
        {
          v29 = off_69140[v28];
        }

        v30 = *(a1 + 156);
        *v27 = 136315906;
        *(v27 + 4) = a1;
        *(v27 + 12) = 2080;
        *(v27 + 14) = v29;
        *(v27 + 22) = 1024;
        *(v27 + 24) = v30;
        *(v27 + 28) = 2048;
        *(v27 + 30) = v23;
        __SC_log_send();
      }

      sub_4C014(a1);
    }

    else
    {

      sub_4C82C(a1);
    }
  }
}

BOOL sub_4D708(uint64_t a1, char a2, uint64_t a3, char *a4)
{
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = bswap32(sub_4D8A8(a1));
  if (a2)
  {
    v8 = 12;
  }

  else
  {
    v10[3] = 402654464;
    v11 = **(a1 + 288);
    v12 = 0;
    v8 = 40;
  }

  return sub_5B9B0(a3, 3u, v8, v10, a4);
}

BOOL sub_4D7C0(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v15 = 0;
  __src = bswap32(sub_4D8A8(a1));
  if (a2)
  {
    v8 = (a1 + 112);
    if (!*(a1 + 112))
    {
      v12 = 12;
      return sub_5B9B0(a3, 0x19u, v12, &__src, a4);
    }

    v16 = 419437056;
    v9 = (a1 + 96);
  }

  else
  {
    v16 = 419437056;
    v10 = *(a1 + 288);
    v9 = (v10 + 9);
    v8 = (v10 + 8);
  }

  v11 = *v8;
  v19 = *v9;
  v18 = v11;
  v17 = 0;
  v12 = 41;
  return sub_5B9B0(a3, 0x19u, v12, &__src, a4);
}

CFIndex sub_4D8A8(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return 0;
  }

  sub_1EF20(*(a1 + 128));
  nullsub_1();

  return sub_542B0(v3);
}

void sub_4D8E8(unsigned __int16 *result, int a2, unsigned __int8 **a3)
{
  if (a2 == 5)
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v30 = 0;
    HIDWORD(v29) = 0;
    if (**a3 == 7)
    {
      if (sub_4A838(result, a3[2]))
      {
        v12 = sub_1D258(a3[2], 2, &v31, 0);
        if (v12)
        {
          if (sub_5B3BC(v12, v31) && sub_5BD4C(a3[2], &v32, &v30, &v29 + 1))
          {
            if (v32)
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v13 = _os_log_pack_size();
                v14 = &v28 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
                v15 = __error();
                v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "%s: %s %s '%.*s'", v28, v29, v30, v31, v33);
                v17 = DHCPv6MessageTypeName(**a3);
                v18 = sub_5BD28(v32);
                v19 = HIDWORD(v29);
                v20 = v30;
                *v16 = 136316162;
                *(v16 + 4) = result;
                *(v16 + 12) = 2080;
                *(v16 + 14) = v17;
                *(v16 + 22) = 2080;
                *(v16 + 24) = v18;
                *(v16 + 32) = 1040;
                *(v16 + 34) = v19;
                *(v16 + 38) = 2080;
                *(v16 + 40) = v20;
                __SC_log_send();
              }
            }

            if ((v32 & 0xFFFB) != 2)
            {
              v21 = *(result + 29);
              v22 = sub_4B7AC(result, **a3, v21 == 2, a3[2], &v33, &v32);
              if (v32 == 4)
              {
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v24 = _os_log_pack_size();
                  v25 = &v28 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v26 = __error();
                  v27 = _os_log_pack_fill(v25, v24, *v26, &dword_0, "%s: NotOnLink", v28);
                  *v27 = 136315138;
                  *(v27 + 4) = result;
                  __SC_log_send();
                }

                sub_47900(result, "Request");
                sub_49EEC(result, 0, 0);
              }

              else if (v22)
              {
                sub_4C8A8(result, **a3, v21 == 2, &v33, v23);
                sub_4A8C4(result, a3);
                sub_4BECC(result);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2)
      {
        return;
      }

      sub_47BE4(result, 2u);
      *(result + 39) = 0;
      *(result + 38) = arc4random() & 0xFFFFFF;
      *(result + 20) = timer_get_current_time();
      sub_4EB8C(*(result + 16), *(result + 38), sub_4D8E8, result, 5);
    }

    if (*(result + 39) < 10)
    {
      v4 = *(result + 18);
      sub_4A5B8(result, 1.0, 30.0);
      timer_callout_set(v4, sub_4D8E8, result, 2, 0, v5);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        v7 = &v28 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = __error();
        v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s: Request Transmit (try=%d)", v28, v29);
        v10 = *(result + 39);
        *v9 = 136315394;
        *(v9 + 4) = result;
        *(v9 + 12) = 1024;
        *(v9 + 14) = v10;
        __SC_log_send();
      }

      sub_4C014(result);
    }

    else
    {

      sub_49EEC(result, 0, 0);
    }
  }
}

uint64_t sub_4DDC8(uint64_t a1)
{
  memset(v23, 0, sizeof(v23));
  v21 = 0;
  v22 = 0;
  result = sub_4ABF8(a1, 1u, v24, &v21);
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 116);
    if (v4 == 3)
    {
      if (!sub_4D7C0(a1, 1, &v21, v23))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          return result;
        }

        v18 = _os_log_pack_size();
        v19 = &v21 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = *__error();
        v9 = _os_log_pack_fill(v19, v18, v20, &dword_0, "DHCPv6Client: failed to add IA_PD, %s");
        goto LABEL_14;
      }
    }

    else
    {
      if (v4 != 2)
      {
        return result;
      }

      v5 = sub_4D8A8(a1);
      v26 = 0;
      __src = bswap32(v5);
      if (!sub_5B9B0(&v21, 3u, 0xCuLL, &__src, v23))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          return result;
        }

        v6 = _os_log_pack_size();
        v7 = &v21 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = *__error();
        v9 = _os_log_pack_fill(v7, v6, v8, &dword_0, "DHCPv6Client: failed to add IA_NA, %s");
LABEL_14:
        *v9 = 136315138;
        *(v9 + 4) = v23;
        return __SC_log_send();
      }
    }

    v10 = *(a1 + 128);
    v11 = sub_5B9A8(&v21);
    result = sub_4F270(v10, v3, (v11 + 4));
    v12 = result;
    if (result > 0x32 || ((1 << result) & 0x4000000000041) == 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v13 = _os_log_pack_size();
        v14 = &v21 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        v15 = __error();
        v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "%s: SendSolicit transmit failed, %s", v21, v22);
        v17 = strerror(v12);
        *v16 = 136315394;
        *(v16 + 4) = a1;
        *(v16 + 12) = 2080;
        *(v16 + 14) = v17;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_4E10C(uint64_t a1)
{
  v3 = 0;
  v1 = sub_1D258(a1, 7, &v3, 0);
  result = 0;
  if (v1)
  {
    if (v3 >= 1)
    {
      return *v1;
    }
  }

  return result;
}

uint64_t sub_4E158(uint64_t a1)
{
  sub_47BE4(a1, 7u);
  sub_47900(a1, "Release");
  sub_4EF58(*(a1 + 128));
  timer_cancel(*(a1 + 144));
  *(a1 + 156) = 0;
  *(a1 + 152) = arc4random() & 0xFFFFFF;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v7 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s: Release Transmit", v7);
    *v5 = 136315138;
    *(v5 + 4) = a1;
    __SC_log_send();
  }

  return sub_4C014(a1);
}

uint64_t sub_4E2A8(uint64_t result, int a2, unsigned __int8 **a3)
{
  v3 = result;
  if (a2 == 5)
  {
    HIDWORD(v20) = 0;
    if (**a3 == 7)
    {
      result = sub_4A838(result, a3[2]);
      if (result)
      {
        result = sub_1D258(a3[2], 2, &v20 + 1, 0);
        if (result)
        {
          result = sub_5B3BC(result, HIDWORD(v20));
          if (result)
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v14 = _os_log_pack_size();
              v15 = &v20 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
              v16 = __error();
              v17 = _os_log_pack_fill(v15, v14, *v16, &dword_0, "%s: %s Received (try=%d)", v20, v21, v22);
              v18 = DHCPv6MessageTypeName(**a3);
              v19 = *(v3 + 39);
              *v17 = 136315650;
              *(v17 + 4) = v3;
              *(v17 + 12) = 2080;
              *(v17 + 14) = v18;
              *(v17 + 22) = 1024;
              *(v17 + 24) = v19;
              __SC_log_send();
            }

            return sub_49EEC(v3, 0, 0);
          }
        }
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2)
      {
        return result;
      }

      sub_47BE4(result, 9u);
      sub_47900(v3, "Decline");
      sub_4EF58(*(v3 + 16));
      timer_cancel(*(v3 + 18));
      sub_41E8(v3 + 29);
      *(v3 + 29) = 0;
      *(v3 + 108) = 0u;
      *(v3 + 100) = 0u;
      v4 = *(v3 + 4);
      if (v4)
      {
        dispatch_source_merge_data(v4, 1uLL);
      }

      *(v3 + 39) = 0;
      v5 = arc4random();
      *(v3 + 38) = v5 & 0xFFFFFF;
      sub_4EB8C(*(v3 + 16), v5 & 0xFFFFFF, sub_4E2A8, v3, 5);
    }

    if (*(v3 + 39) < 5)
    {
      v6 = *(v3 + 18);
      sub_4A5B8(v3, 1.0, 0.0);
      timer_callout_set(v6, sub_4E2A8, v3, 2, 0, v7);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        v9 = &v20 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        v10 = __error();
        v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "%s: Decline Transmit (try=%d)", v20, v21);
        v12 = *(v3 + 39);
        *v11 = 136315394;
        *(v11 + 4) = v3;
        *(v11 + 12) = 1024;
        *(v11 + 14) = v12;
        __SC_log_send();
      }

      return sub_4C014(v3);
    }

    else
    {

      return sub_49EEC(v3, 0, 0);
    }
  }

  return result;
}

void sub_4E63C(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_46D78(a1, Mutable);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    v4 = v9 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = __error();
    v6 = _os_log_pack_fill(v4, v3, *v5, &dword_0, "%s: %s() %@");
    *v6 = 136315650;
    *(v6 + 4) = a1;
    *(v6 + 12) = 2080;
    *(v6 + 14) = "dhcpv6_pd_notify";
    *(v6 + 22) = 2112;
    *(v6 + 24) = Mutable;
    __SC_log_send();
  }

  CFRelease(Mutable);
  memset(v9, 0, sizeof(v9));
  v7 = sub_1BE98(a1, v9);
  v8 = *(a1 + 136);
  if (v7)
  {
    sub_1C4B0(v8, 0, 0, 0, 0, v9, 0);
  }

  else if (sub_2AED8(v8))
  {
    sub_102A4(*(a1 + 136), 0xCu);
  }
}

void *sub_4E814(uint64_t a1)
{
  v2 = qword_702B8;
  if (!qword_702B8)
  {
    v3 = malloc_type_malloc(0x40uLL, 0x10A004042BA1A1AuLL);
    if (!v3)
    {
      qword_702B8 = 0;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        v7 = &v10 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = __error();
        *_os_log_pack_fill(v7, v6, *v8, &dword_0, "DHCPv6SocketCreate: could not allocate globals") = 0;
        __SC_log_send();
      }

      return 0;
    }

    v2 = v3;
    *(v3 + 2) = 0u;
    *(v3 + 3) = 0u;
    *v3 = 0u;
    *(v3 + 1) = 0u;
    sub_592AC(v3, sub_4EB4C, 0);
    v2[6] = timer_callout_init("DHCPv6Socket");
    qword_702B8 = v2;
  }

  v4 = malloc_type_malloc(0x28uLL, 0x10A0040C62F783CuLL);
  v5 = v4;
  if (v4)
  {
    v4[4] = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    if (sub_59348(v2, v4))
    {
      *v5 = a1;
      return v5;
    }

    free(v5);
    return 0;
  }

  return v5;
}

void sub_4E9D8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = sub_15194(qword_702B8, v1);
    if (v3 == -1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = _os_log_pack_size();
        v5 = &v9 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        v6 = __error();
        v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "DHCPv6SocketRelease: %s not in list?", v9);
        nullsub_1();
        *v7 = 136315138;
        *(v7 + 4) = v8;
        __SC_log_send();
      }
    }

    else
    {
      sub_15190(qword_702B8, v3, 0);
    }

    v1[2] = 0;
    v1[3] = 0;
    v1[4] = 0;
    sub_4EF64(v1);
    free(v1);
    *a1 = 0;
  }
}

void sub_4EB4C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_4EF64(a1);

  free(a1);
}

uint64_t sub_4EB8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 12) = a2;
  result = sub_4ECF0(a1);
  if (result)
  {
    v6 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v7 = _os_log_pack_size();
      v8 = v14 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "%s(%s): DHCPv6SocketOpenSocket failed, %s", v14[0], v14[1], v14[2]);
      nullsub_1();
      v12 = v11;
      v13 = strerror(v6);
      *v10 = 136315650;
      *(v10 + 4) = "DHCPv6SocketEnableReceive";
      *(v10 + 12) = 2080;
      *(v10 + 14) = v12;
      *(v10 + 22) = 2080;
      *(v10 + 24) = v13;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_4ECF0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  timer_cancel(*(qword_702B8 + 48));
  ++*(qword_702B8 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = v14 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s (%s): refcount %d", v14[0], v14[1], v15);
    nullsub_1();
    v6 = *(qword_702B8 + 40);
    *v5 = 136315650;
    *(v5 + 4) = "DHCPv6SocketOpenSocket";
    *(v5 + 12) = 2080;
    *(v5 + 14) = v7;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v6;
    __SC_log_send();
  }

  *(a1 + 8) = 1;
  if (*(qword_702B8 + 40) > 1)
  {
    return 0;
  }

  if (*(qword_702B8 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      v9 = v14 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "%s: socket is still open", v14[0]);
      *v11 = 136315138;
      *(v11 + 4) = "DHCPv6SocketOpenSocket";
      __SC_log_send();
    }

    return 0;
  }

  v12 = sub_4F818();
  if (v12)
  {
    sub_4EF64(a1);
  }

  return v12;
}

uint64_t sub_4EF58(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return sub_4EF64(a1);
}

uint64_t sub_4EF64(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    v2 = *(qword_702B8 + 40);
    if (v2 <= 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v12 = _os_log_pack_size();
        v13 = &v18 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "DHCPv6SocketCloseSocket(%s): refcount %d", v18, v19);
        nullsub_1();
        v16 = *(qword_702B8 + 40);
        *v15 = 136315394;
        *(v15 + 4) = v17;
        *(v15 + 12) = 1024;
        *(v15 + 14) = v16;
        return __SC_log_send();
      }
    }

    else
    {
      *(qword_702B8 + 40) = v2 - 1;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v3 = _os_log_pack_size();
        v4 = &v18 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
        v5 = __error();
        v6 = _os_log_pack_fill(v4, v3, *v5, &dword_0, "DHCPv6SocketCloseSocket(%s): refcount %d", v18, v19);
        nullsub_1();
        v7 = *(qword_702B8 + 40);
        *v6 = 136315394;
        *(v6 + 4) = v8;
        *(v6 + 12) = 1024;
        *(v6 + 14) = v7;
        result = __SC_log_send();
      }

      *(v1 + 8) = 0;
      if (!*(qword_702B8 + 40))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          v10 = &v18 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          v11 = __error();
          *_os_log_pack_fill(v10, v9, *v11, &dword_0, "DHCPv6SocketCloseSocket(): scheduling delayed close") = 0;
          __SC_log_send();
        }

        return timer_set_relative(*(qword_702B8 + 48), 1, 0, sub_50F90, 0, 0, 0);
      }
    }
  }

  return result;
}

uint64_t sub_4F270(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  memset(v44, 0, sizeof(v44));
  v6 = &off_70000;
  if (*(qword_702B8 + 32) || *(qword_702B8 + 56) != 1)
  {
    v12 = *(a1 + 8);
    if (v12 || (v23 = sub_4ECF0(a1), !v23))
    {
      if (byte_702B0 == 1)
      {
        Mutable = CFStringCreateMutable(0, 0);
        DHCPv6PacketPrintToString(Mutable, a2, a3);
        v14 = sub_5BC3C(a2, a3, v44);
        *v43 = v14;
        if (v14)
        {
          sub_5BCA4(Mutable, v14);
          sub_5BC54(v43);
        }

        else
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v28 = _os_log_pack_size();
            v42 = &v41;
            v29 = &v41 - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
            v30 = __error();
            v31 = v28;
            v6 = &off_70000;
            v32 = _os_log_pack_fill(v29, v31, *v30, &dword_0, "parse options failed, %s", v41);
            *v32 = 136315138;
            *(v32 + 4) = v44;
            __SC_log_send();
          }
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v33 = _os_log_pack_size();
          v42 = &v41;
          v34 = &v41 - ((__chkstk_darwin(v33) + 15) & 0xFFFFFFFFFFFFFFF0);
          v35 = __error();
          v36 = _os_log_pack_fill(v34, v33, *v35, &dword_0, "[%s] Transmit %@");
          nullsub_1();
          *v36 = 136315394;
          *(v36 + 4) = v37;
          *(v36 + 12) = 2112;
          *(v36 + 14) = Mutable;
          v6 = &off_70000;
          __SC_log_send();
        }

        CFRelease(Mutable);
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v15 = _os_log_pack_size();
          v42 = &v41;
          v16 = &v41 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
          v17 = __error();
          v18 = _os_log_pack_fill(v16, v15, *v17, &dword_0, "[%s] Transmit %s (%d) [%d bytes]", v41, v42, *v43, *&v43[8]);
          nullsub_1();
          v20 = v19;
          v21 = DHCPv6MessageTypeName(*a2);
          v22 = *a2;
          *v18 = 136315906;
          *(v18 + 4) = v20;
          *(v18 + 12) = 2080;
          *(v18 + 14) = v21;
          *(v18 + 22) = 1024;
          *(v18 + 24) = v22;
          *(v18 + 28) = 1024;
          *(v18 + 30) = a3;
          v6 = &off_70000;
          __SC_log_send();
        }
      }

      v38 = sub_5A18(*(v6[87] + 4));
      v39 = sub_144D8(*a1);
      *v43 = xmmword_5D1B8;
      *&v43[12] = *(&xmmword_5D1B8 + 12);
      *&v43[2] = bswap32(word_70106) >> 16;
      v11 = sub_5A000(v38, v39, v43, a2, a3, -1);
      if ((v12 & 1) == 0)
      {
        sub_4EF64(a1);
      }
    }

    else
    {
      v11 = v23;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v24 = _os_log_pack_size();
        v25 = &v41 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = __error();
        v27 = _os_log_pack_fill(v25, v24, *v26, &dword_0, "%s: DHCPv6SocketOpenSocket failed", v41);
        *v27 = 136315138;
        *(v27 + 4) = "DHCPv6SocketTransmit";
        __SC_log_send();
      }
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = &v41 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "%s: waiting for socket to close", v41);
      *v10 = 136315138;
      *(v10 + 4) = "DHCPv6SocketTransmit";
      __SC_log_send();
    }

    return 0;
  }

  return v11;
}

uint64_t sub_4F818()
{
  if (*(qword_702B8 + 56) == 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v0 = _os_log_pack_size();
      v1 = &v17 - ((__chkstk_darwin(v0) + 15) & 0xFFFFFFFFFFFFFFF0);
      v2 = __error();
      v3 = _os_log_pack_fill(v1, v0, *v2, &dword_0, "%s: waiting for cancel to complete", v17);
      *v3 = 136315138;
      *(v3 + 4) = "DHCPv6SocketOpenSocketFD";
      __SC_log_send();
    }

    return 0;
  }

  v4 = sub_4FB00(word_70104);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      v7 = &v17 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s: opened DHCPv6 socket %d", v17, v18);
      *v9 = 136315394;
      *(v9 + 4) = "DHCPv6SocketOpenSocketFD";
      *(v9 + 12) = 1024;
      *(v9 + 14) = v5;
      __SC_log_send();
    }

    sub_501A4(v5);
    return 0;
  }

  v10 = *__error();
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v12 = _os_log_pack_size();
    v13 = &v17 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "%s: socket() failed, %s", v17, v18);
    v16 = strerror(v10);
    *v15 = 136315394;
    *(v15 + 4) = "DHCPv6SocketOpenSocketFD";
    *(v15 + 12) = 2080;
    *(v15 + 14) = v16;
    __SC_log_send();
  }

  return v10;
}

uint64_t sub_4FB00(unsigned int a1)
{
  HIDWORD(v46) = 1;
  v2 = socket(30, 2, 0);
  v3 = v2;
  if ((v2 & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return v3;
    }

    v11 = _os_log_pack_size();
    v12 = &v46 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = *__error();
    v14 = _os_log_pack_fill(v12, v11, v13, &dword_0, "DHCPv6Socket: socket failed, %s");
LABEL_9:
    v15 = v14;
    v16 = __error();
    v17 = strerror(*v16);
    *v15 = 136315138;
    *(v15 + 4) = v17;
    __SC_log_send();
    return v3;
  }

  *&v47.sa_len = 7680;
  *&v47.sa_data[6] = 0;
  v49 = 0;
  v48 = 0;
  *v47.sa_data = __rev16(a1);
  if (bind(v2, &v47, 0x1Cu))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_6:
      close(v3);
      return 0xFFFFFFFFLL;
    }

    v4 = _os_log_pack_size();
    v5 = &v46 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = *__error();
    v7 = _os_log_pack_fill(v5, v4, v6, &dword_0, "DHCPv6Socket: bind failed, %s");
LABEL_5:
    v8 = v7;
    v9 = __error();
    v10 = strerror(*v9);
    *v8 = 136315138;
    *(v8 + 4) = v10;
    __SC_log_send();
    goto LABEL_6;
  }

  if (ioctl(v3, 0x8004667EuLL, &v46 + 4) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_6;
    }

    v40 = _os_log_pack_size();
    v41 = &v46 - ((__chkstk_darwin(v40) + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = *__error();
    v7 = _os_log_pack_fill(v41, v40, v42, &dword_0, "DHCPv6Socket: ioctl FIONBIO failed, %s");
    goto LABEL_5;
  }

  if (setsockopt(v3, 41, 61, &v46 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_6;
    }

    v43 = _os_log_pack_size();
    v44 = &v46 - ((__chkstk_darwin(v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = *__error();
    v7 = _os_log_pack_fill(v44, v43, v45, &dword_0, "DHCPv6Socket: setsockopt(IPV6_PKTINFO) failed, %s");
    goto LABEL_5;
  }

  if (setsockopt(v3, 0xFFFF, 4356, &v46 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      v20 = &v46 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = __error();
      v22 = _os_log_pack_fill(v20, v19, *v21, &dword_0, "setsockopt(SO_RECV_ANYIF) failed, %s", v46);
      v23 = __error();
      v24 = strerror(*v23);
      *v22 = 136315138;
      *(v22 + 4) = v24;
      __SC_log_send();
    }
  }

  HIDWORD(v46) = 900;
  if (setsockopt(v3, 0xFFFF, 4230, &v46 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v25 = _os_log_pack_size();
      v26 = &v46 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      v28 = _os_log_pack_fill(v26, v25, *v27, &dword_0, "setsockopt(SO_TRAFFIC_CLASS) failed, %s", v46);
      v29 = __error();
      v30 = strerror(*v29);
      *v28 = 136315138;
      *(v28 + 4) = v30;
      __SC_log_send();
    }
  }

  HIDWORD(v46) = 0;
  if (setsockopt(v3, 0xFFFF, 4352, &v46 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v31 = _os_log_pack_size();
      v32 = &v46 - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = __error();
      v34 = _os_log_pack_fill(v32, v31, *v33, &dword_0, "setsockopt(SO_DEFUNCTOK) failed, %s", v46);
      v35 = __error();
      v36 = strerror(*v35);
      *v34 = 136315138;
      *(v34 + 4) = v36;
      __SC_log_send();
    }
  }

  HIDWORD(v46) = 0;
  if (setsockopt(v3, 41, 11, &v46 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v37 = _os_log_pack_size();
      v38 = &v46 - ((__chkstk_darwin(v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = *__error();
      v14 = _os_log_pack_fill(v38, v37, v39, &dword_0, "setsockopt(IPV6_MULTICAST_LOOP) failed, %s");
      goto LABEL_9;
    }
  }

  return v3;
}

char *sub_501A4(int a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v7 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s: enabling receive on socket %d", v7, v8);
    *v5 = 136315394;
    *(v5 + 4) = "DHCPv6SocketEnableReceiveCallBack";
    *(v5 + 12) = 1024;
    *(v5 + 14) = a1;
    __SC_log_send();
  }

  v7 = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = sub_50340;
  v10 = &unk_691E0;
  v11 = a1;
  result = sub_C92C(a1, sub_505E4, 0, 0, &v7);
  *(qword_702B8 + 32) = result;
  return result;
}

char *sub_50348(int a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v18 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s: socket %d complete", v18, v19);
    *v5 = 136315394;
    *(v5 + 4) = "DHCPv6SocketFDComplete";
    *(v5 + 12) = 1024;
    *(v5 + 14) = a1;
    __SC_log_send();
  }

  v6 = qword_702B8;
  *(qword_702B8 + 56) = 0;
  v7 = *(v6 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  v8 = __SC_log_enabled();
  if (v7 < 1)
  {
    if (v8)
    {
      v14 = _os_log_pack_size();
      v15 = &v18 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v15, v14, *v16, &dword_0, "%s: closing socket %d", v18, v19);
      *v17 = 136315394;
      *(v17 + 4) = "DHCPv6SocketFDComplete";
      *(v17 + 12) = 1024;
      *(v17 + 14) = a1;
      __SC_log_send();
    }

    return close(a1);
  }

  else
  {
    if (v8)
    {
      v9 = _os_log_pack_size();
      v10 = &v18 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "%s: re-enabling socket %d", v18, v19);
      *v12 = 136315394;
      *(v12 + 4) = "DHCPv6SocketFDComplete";
      *(v12 + 12) = 1024;
      *(v12 + 14) = a1;
      __SC_log_send();
    }

    return sub_501A4(a1);
  }
}

void sub_505E4()
{
  v23 = 0;
  v24[0] = 0;
  v25 = 0;
  v24[1] = 0;
  *&v22.msg_namelen = 28;
  v26[0] = v27;
  v26[1] = 1500;
  v22.msg_name = &v23;
  v22.msg_iov = v26;
  *&v22.msg_iovlen = 1;
  v22.msg_control = &v28;
  *&v22.msg_controllen = 32;
  v0 = sub_5A18(*(qword_702B8 + 32));
  v1 = recvmsg(v0, &v22, 0);
  if (v1 < 0)
  {
    v11 = *__error();
    if (v11 != 35)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = _os_log_pack_size();
        v13 = &v21 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "DHCPv6SocketRead: recvfrom failed %s (%d)", v21, DWORD2(v21));
        v16 = __error();
        v17 = strerror(*v16);
        *v15 = 136315394;
        *(v15 + 4) = v17;
        *(v15 + 12) = 1024;
        *(v15 + 14) = v11;
        __SC_log_send();
      }

      if (v11 == 57)
      {
        sub_509A8();
      }
    }
  }

  else
  {
    v3 = v1;
    if (v1)
    {
      if (v22.msg_controllen < 0xC)
      {
        goto LABEL_21;
      }

      msg_control = v22.msg_control;
      if (!v22.msg_control)
      {
        goto LABEL_21;
      }

      v5 = 0;
      *&v2 = 67109120;
      v21 = v2;
      do
      {
        if (msg_control[1] == 41)
        {
          if (msg_control[2] == 46)
          {
            if (*msg_control >= 0x20)
            {
              v5 = msg_control + 3;
            }
          }

          else
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v6 = _os_log_pack_size();
              v7 = &v21 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
              v8 = __error();
              v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "Why did we get control message type %d?", v21);
              v10 = msg_control[2];
              *v9 = v21;
              v9[1] = v10;
              __SC_log_send();
            }
          }
        }

        msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
      }

      while ((msg_control + 3) <= v22.msg_control + v22.msg_controllen);
      if (v5)
      {
        sub_50B1C(v5[4], v24, v27, v3);
      }

      else
      {
LABEL_21:
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v18 = _os_log_pack_size();
          v19 = &v21 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
          v20 = __error();
          *_os_log_pack_fill(v19, v18, *v20, &dword_0, "DHCPv6SocketRead: missing IPV6_PKTINFO") = 0;
          __SC_log_send();
        }
      }
    }
  }
}

void sub_509A8()
{
  v0 = qword_702B8;
  if (*(qword_702B8 + 56) == 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      v2 = &v5 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = __error();
      v4 = _os_log_pack_fill(v2, v1, *v3, &dword_0, "%s: cancel is already pending?", v5);
      *v4 = 136315138;
      *(v4 + 4) = "DHCPv6SocketScheduleClose";
      __SC_log_send();
    }
  }

  else
  {
    *(qword_702B8 + 56) = 1;

    sub_2B78((v0 + 32));
  }
}

void sub_50B1C(uint64_t result, const void *a2, char *a3, uint64_t a4)
{
  if (a4 >= 4)
  {
    v7 = result;
    memset(v45, 0, sizeof(v45));
    v42[0] = a3;
    v42[1] = a4;
    v43 = sub_5BC3C(a3, a4, v45);
    if (v43)
    {
      if (sub_295C(qword_702B8) >= 1)
      {
        v8 = 0;
        while (1)
        {
          v9 = sub_42C0(qword_702B8, v8);
          if (sub_144D8(*v9) == v7)
          {
            v10 = *(v9 + 12);
            if (v10 == DHCPv6PacketGetTransactionID(a3))
            {
              break;
            }
          }

          v8 = (v8 + 1);
          if (v8 >= sub_295C(qword_702B8))
          {
            goto LABEL_21;
          }
        }

        if (byte_702B0 == 1)
        {
          Mutable = CFStringCreateMutable(0, 0);
          DHCPv6PacketPrintToString(Mutable, a3, a4);
          sub_5BCA4(Mutable, v43);
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v16 = _os_log_pack_size();
            v41 = &v36;
            v17 = &v36 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
            v18 = __error();
            v19 = _os_log_pack_fill(v17, v16, *v18, &dword_0, "[%s] Receive from %s %@");
            nullsub_1();
            v21 = v20;
            v22 = inet_ntop(30, a2, v44, 0x2Eu);
            *v19 = 136315650;
            *(v19 + 4) = v21;
            *(v19 + 12) = 2080;
            *(v19 + 14) = v22;
            *(v19 + 22) = 2112;
            *(v19 + 24) = Mutable;
            __SC_log_send();
          }

          CFRelease(Mutable);
        }

        else
        {
          v23 = sub_2424();
          v24 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v25 = _os_log_pack_size();
            v41 = &v36;
            v26 = &v36 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
            v27 = __error();
            v28 = _os_log_pack_fill(v26, v25, *v27, &dword_0, "[%s] Receive %s (%d) [%d bytes] [xid=0x%x] from %s", v36, v37, v38, v40, v41, v42[0]);
            nullsub_1();
            v37 = v29;
            v30 = DHCPv6MessageTypeName(*a3);
            v40 = v23;
            v31 = v30;
            v39 = v24;
            v32 = *a3;
            TransactionID = DHCPv6PacketGetTransactionID(a3);
            v34 = inet_ntop(30, a2, v44, 0x2Eu);
            *v28 = 136316418;
            *(v28 + 4) = v37;
            *(v28 + 12) = 2080;
            *(v28 + 14) = v31;
            *(v28 + 22) = 1024;
            *(v28 + 24) = v32;
            *(v28 + 28) = 1024;
            *(v28 + 30) = a4;
            *(v28 + 34) = 1024;
            *(v28 + 36) = TransactionID;
            *(v28 + 40) = 2080;
            *(v28 + 42) = v34;
            __SC_log_send();
          }
        }

        v35 = *(v9 + 16);
        if (v35)
        {
          v35(*(v9 + 24), *(v9 + 32), v42);
        }
      }

LABEL_21:
      sub_5BC54(&v43);
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        v12 = &v36 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = __error();
        v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "DHCPv6Socket: options parse failed, %s", v36);
        *v14 = 136315138;
        *(v14 + 4) = v45;
        __SC_log_send();
      }
    }
  }
}

void sub_50F90()
{
  if (!*(qword_702B8 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v5 = _os_log_pack_size();
    v6 = &v13 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = *__error();
    v4 = _os_log_pack_fill(v6, v5, v7, &dword_0, "DHCPv6SocketDelayedClose(): socket is already closed");
    goto LABEL_7;
  }

  v0 = *(qword_702B8 + 40);
  sub_2424();
  if (v0 >= 1)
  {
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v1 = _os_log_pack_size();
    v2 = &v13 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = *__error();
    v4 = _os_log_pack_fill(v2, v1, v3, &dword_0, "DHCPv6SocketDelayedClose(): called when socket in use");
LABEL_7:
    *v4 = 0;
    __SC_log_send();
    return;
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    v9 = &v13 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "DHCPv6SocketDelayedClose(): closing DHCPv6 socket %d", v13);
    v12 = sub_5A18(*(qword_702B8 + 32));
    *v11 = 67109120;
    v11[1] = v12;
    __SC_log_send();
  }

  sub_509A8();
}

uint64_t sub_511E4(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  if (a2 == 15)
  {
    sub_51480(a1, a3);
  }

  else
  {
    v7 = v6;
    if (a2 == 1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v15 = _os_log_pack_size();
        v16 = v22 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = __error();
        v18 = _os_log_pack_fill(v16, v15, *v17, &dword_0, "%s %s: STOP", *&v22[0], *(&v22[0] + 1));
        v19 = sub_2AEC8(a1);
        nullsub_1();
        *v18 = 136315394;
        *(v18 + 4) = v19;
        *(v18 + 12) = 2080;
        *(v18 + 14) = v20;
        __SC_log_send();
      }
    }

    else if (!a2)
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        v9 = v22 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        v10 = __error();
        v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "%s %s: START", *&v22[0], *(&v22[0] + 1));
        v12 = sub_2AEC8(a1);
        nullsub_1();
        *v11 = 136315394;
        *(v11 + 4) = v12;
        *(v11 + 12) = 2080;
        *(v11 + 14) = v13;
        __SC_log_send();
      }

      v14 = sub_144D8(v7);
      sub_16718(v22, v14);
      sub_51480(a1, v22);
      sub_17B18(v22);
    }
  }

  return 0;
}

void sub_51480(uint64_t a1, uint64_t a2)
{
  v3 = sub_17B0C(a2);
  if (v3 && (*(v3 + 20) & 6) == 0)
  {

    sub_1C4B0(a1, v3, 1u, 0, 0, 0, 0);
  }

  else
  {

    sub_102A4(a1, 0x12u);
  }
}

uint64_t sub_51508(int a1)
{
  HIDWORD(v42) = 1;
  v2 = socket(30, 3, 58);
  if ((v2 & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v22 = _os_log_pack_size();
      v23 = &v42 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = __error();
      v25 = _os_log_pack_fill(v23, v22, *v24, &dword_0, "error opening socket: %s", v42);
      v26 = __error();
      v27 = strerror(*v26);
      *v25 = 136315138;
      *(v25 + 4) = v27;
      __SC_log_send();
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  if (ioctl(v2, 0x8004667EuLL, &v42 + 4) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_24;
    }

    v28 = _os_log_pack_size();
    v29 = &v42 - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = *__error();
    v31 = _os_log_pack_fill(v29, v28, v30, &dword_0, "ioctl FIONBIO failed %s");
LABEL_23:
    v38 = v31;
    v39 = __error();
    v40 = strerror(*v39);
    *v38 = 136315138;
    *(v38 + 4) = v40;
    __SC_log_send();
    goto LABEL_24;
  }

  if (setsockopt(v3, 0xFFFF, 4356, &v42 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = &v42 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "setsockopt(SO_RECV_ANYIF) failed, %s", v42);
      v8 = __error();
      v9 = strerror(*v8);
      *v7 = 136315138;
      *(v7 + 4) = v9;
      __SC_log_send();
    }
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if (setsockopt(v3, 41, 61, &v42 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_24;
    }

    v32 = _os_log_pack_size();
    v33 = &v42 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = *__error();
    v31 = _os_log_pack_fill(v33, v32, v34, &dword_0, "IPV6_PKTINFO: %s");
    goto LABEL_23;
  }

  if (setsockopt(v3, 41, 37, &v42 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v35 = _os_log_pack_size();
      v36 = &v42 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = *__error();
      v31 = _os_log_pack_fill(v36, v35, v37, &dword_0, "IPV6_HOPLIMIT: %s");
      goto LABEL_23;
    }

LABEL_24:
    close(v3);
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  HIDWORD(v42) = 900;
  if (setsockopt(v3, 0xFFFF, 4230, &v42 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v10 = _os_log_pack_size();
      v11 = &v42 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "setsockopt(SO_TRAFFIC_CLASS) failed, %s", v42);
      v14 = __error();
      v15 = strerror(*v14);
      *v13 = 136315138;
      *(v13 + 4) = v15;
      __SC_log_send();
    }
  }

  HIDWORD(v42) = 0;
  if (setsockopt(v3, 0xFFFF, 4352, &v42 + 4, 4u) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v16 = _os_log_pack_size();
      v17 = &v42 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v16, *v18, &dword_0, "setsockopt(SO_DEFUNCTOK) failed, %s", v42);
      v20 = __error();
      v21 = strerror(*v20);
      *v19 = 136315138;
      *(v19 + 4) = v21;
      __SC_log_send();
    }
  }

  return v3;
}

uint64_t sub_51B0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5)
{
  v5 = a2;
  v6 = a1;
  v10 = 0x2000000088;
  v11 = *a5;
  if (a3)
  {
    if (((a4 + 2) & 7) != 0)
    {
      v7 = a4 - ((a4 + 2) & 7) + 10;
    }

    else
    {
      v7 = a4 + 2;
    }

    v12 = 2;
    v13 = v7 / 8;
    __memmove_chk();
    v8 = v7 + 24;
  }

  else
  {
    v8 = 24;
  }

  return sub_5A000(v6, v5, &unk_5D1D4, &v10, v8, 255);
}

uint64_t sub_51BFC(void *a1, int a2, void *a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  if (a2 == 7)
  {
    v22 = *a3;
    v23 = a1;
LABEL_17:
    sub_52498(v23, v22);
    return 0;
  }

  v8 = v7;
  if (a2 == 1)
  {
    v38 = 0uLL;
    sub_2424();
    _SC_syslog_os_log_mapping();
    v14 = __SC_log_enabled();
    if (!v8)
    {
      if (v14)
      {
        v26 = _os_log_pack_size();
        v27 = &v37 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = __error();
        v29 = _os_log_pack_fill(v27, v26, *v28, &dword_0, "6TO4 %s: already stopped", v37);
        nullsub_1();
        *v29 = 136315138;
        *(v29 + 4) = v30;
        goto LABEL_23;
      }

      return 6;
    }

    if (v14)
    {
      v15 = _os_log_pack_size();
      v16 = &v37 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v15, *v17, &dword_0, "6TO4 %s: stop", v37);
      nullsub_1();
      *v18 = 136315138;
      *(v18 + 4) = v19;
      __SC_log_send();
    }

    sub_52A38(a1, 0);
    v20 = *v8;
    if (*v8)
    {
      *(&v38 + 4) = 0x1000000;
      HIDWORD(v38) = 0x1000000;
      LOWORD(v38) = 544;
      *(&v38 + 2) = v20;
      sub_2C7AC(a1, &v38, 16);
    }

    v21 = *(v8 + 48);
    if (v21)
    {
      SCDynamicStoreSetDispatchQueue(v21, 0);
    }

    sub_41E8((v8 + 48));
    sub_41E8((v8 + 40));
    sub_151FC(a1, 0);
    free(v8);
    return 0;
  }

  if (a2)
  {
    return 0;
  }

  if ((sub_10EE8(v6) & 8) != 0)
  {
    return 4;
  }

  if (v8)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      v10 = &v37 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "6TO4 %s: re-entering start state", v37);
      nullsub_1();
      *v12 = 136315138;
      *(v12 + 4) = v13;
LABEL_23:
      __SC_log_send();
      return 6;
    }

    return 6;
  }

  v31 = malloc_type_malloc(0x38uLL, 0x10700401F685EB6uLL);
  if (v31)
  {
    v31[6] = 0;
    *(v31 + 1) = 0u;
    *(v31 + 2) = 0u;
    *v31 = 0u;
    sub_151FC(a1, v31);
    sub_52070(a1);
    sub_52298(a1);
    v23 = a1;
    v22 = a3;
    goto LABEL_17;
  }

  sub_2424();
  v24 = 5;
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v32 = _os_log_pack_size();
    v33 = &v37 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = __error();
    v35 = _os_log_pack_fill(v33, v32, *v34, &dword_0, "6TO4 %s: malloc failed", v37);
    nullsub_1();
    *v35 = 136315138;
    *(v35 + 4) = v36;
    v24 = 5;
    __SC_log_send();
  }

  return v24;
}

void sub_52070(uint64_t a1)
{
  v1 = sub_1690(a1);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v2 = sub_144D8(v1);
  sub_16718(v16, v2);
  if (DWORD2(v16[0]))
  {
    if (SDWORD2(v16[0]) >= 1)
    {
      v4 = 0;
      v5 = 0;
      *&v3 = 136315650;
      v15 = v3;
      do
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v6 = _os_log_pack_size();
          v7 = &v16[-1] - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
          v8 = __error();
          v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "6TO4 %s: removing %s/%d", v15, *(&v15 + 1), LODWORD(v16[0]));
          nullsub_1();
          v11 = v10;
          v12 = inet_ntop(30, (*&v16[0] + v4), v18, 0x2Eu);
          v13 = *(*&v16[0] + v4 + 16);
          *v9 = v15;
          *(v9 + 4) = v11;
          *(v9 + 12) = 2080;
          *(v9 + 14) = v12;
          *(v9 + 22) = 1024;
          *(v9 + 24) = v13;
          __SC_log_send();
        }

        nullsub_1();
        sub_41CE4(v14, (*&v16[0] + v4));
        ++v5;
        v4 += 32;
      }

      while (v5 < SDWORD2(v16[0]));
    }

    sub_17B18(v16);
  }
}

void sub_52298(void *a1)
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  v2 = sub_1688(a1);
  context.info = a1;
  *(v2 + 48) = SCDynamicStoreCreate(0, @"IPConfiguration:STF", sub_52DC4, &context);
  values = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
  v3 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  SCDynamicStoreSetNotificationKeys(*(v2 + 48), v3, 0);
  CFRelease(v3);
  v4 = *(v2 + 48);
  v5 = sub_CB80();
  if (!SCDynamicStoreSetDispatchQueue(v4, v5))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      v7 = &v10 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s: SCDynamicStoreSetDispatchQueue failed", v10);
      *v9 = 136315138;
      *(v9 + 4) = "stf_configure_address";
      __SC_log_send();
    }
  }

  v13 = sub_52E48(*(v2 + 48), values);
  sub_52F14(a1, v13, values);
  CFRelease(values);
  sub_41E8(&v13);
}

void sub_52498(void *a1, uint64_t a2)
{
  v4 = sub_1688(a1);
  sub_1690(a1);
  if (!a2)
  {
    goto LABEL_12;
  }

  v5 = *a2;
  if (*a2 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 8);
        *&v51[4] = 0;
        *&v51[12] = 0;
        *v51 = 544;
        *&v51[2] = v6;
        sub_52A38(a1, 0);
        v8 = *(v4 + 4);
        v7 = v4 + 4;
        if (*v51 != v8 || *(v7 + 8) != 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v10 = _os_log_pack_size();
            v11 = &v51[-((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
            v12 = __error();
            v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "6TO4 %s: specified IPv4 relay %d.%d.%d.%d", v50, *v51, *&v51[8], v52, v53);
            nullsub_1();
            v14 = *(a2 + 8);
            v15 = *(a2 + 9);
            v16 = *(a2 + 10);
            v17 = *(a2 + 11);
            *v13 = 136316162;
            *(v13 + 4) = v18;
            *(v13 + 12) = 1024;
            *(v13 + 14) = v14;
            *(v13 + 18) = 1024;
            *(v13 + 20) = v15;
            *(v13 + 24) = 1024;
            *(v13 + 26) = v16;
            *(v13 + 30) = 1024;
            *(v13 + 32) = v17;
            __SC_log_send();
          }

          v19 = *v51;
LABEL_16:
          *v7 = v19;
          sub_53448(a1);
          return;
        }

        return;
      }

LABEL_25:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v33 = _os_log_pack_size();
        v34 = &v51[-((__chkstk_darwin(v33) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v35 = __error();
        v36 = _os_log_pack_fill(v34, v33, *v35, &dword_0, "6TO4 %s: specified unknown relay type %d", v50, *v51);
        nullsub_1();
        *v36 = 136315394;
        *(v36 + 4) = v37;
        *(v36 + 12) = 1024;
        *(v36 + 14) = v5;
        __SC_log_send();
      }

      return;
    }

LABEL_12:
    sub_52A38(a1, 0);
    v20 = *(v4 + 4);
    v7 = v4 + 4;
    if (!(v20 ^ 0x16358C00220 | *(v7 + 8)))
    {
      return;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v21 = _os_log_pack_size();
      v22 = &v51[-((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v23 = __error();
      v24 = _os_log_pack_fill(v22, v21, *v23, &dword_0, "6TO4 %s: using default anycast relay", v50);
      nullsub_1();
      *v24 = 136315138;
      *(v24 + 4) = v25;
      __SC_log_send();
    }

    v19 = xmmword_5D1F8;
    goto LABEL_16;
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      v26 = *(v4 + 24);
      if (!v26 || strcmp(v26, *(a2 + 8)))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v27 = _os_log_pack_size();
          v28 = &v51[-((__chkstk_darwin(v27) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          v29 = __error();
          v30 = _os_log_pack_fill(v28, v27, *v29, &dword_0, "6TO4 %s: specified DNS relay %s", v50, *v51);
          nullsub_1();
          v31 = *(a2 + 8);
          *v30 = 136315394;
          *(v30 + 4) = v32;
          *(v30 + 12) = 2080;
          *(v30 + 14) = v31;
          __SC_log_send();
        }

        sub_52A38(a1, *(a2 + 8));
      }

      return;
    }

    goto LABEL_25;
  }

  sub_52A38(a1, 0);
  v38 = *(a2 + 8);
  v39 = *(a2 + 16);
  v40 = (a2 + 8);
  v41 = *(v4 + 4);
  v7 = v4 + 4;
  if (v38 != v41 || v39 != *(v7 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v43 = _os_log_pack_size();
      v44 = &v51[-((__chkstk_darwin(v43) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v45 = __error();
      v46 = _os_log_pack_fill(v44, v43, *v45, &dword_0, "6TO4 %s: specified IPv6 relay %s", v50, *v51);
      nullsub_1();
      v48 = v47;
      v49 = inet_ntop(30, v40, v51, 0x2Eu);
      *v46 = 136315394;
      *(v46 + 4) = v48;
      *(v46 + 12) = 2080;
      *(v46 + 14) = v49;
      __SC_log_send();
    }

    v19 = *v40;
    goto LABEL_16;
  }
}

void sub_52A38(void *a1, const char *a2)
{
  memset(&context, 0, sizeof(context));
  sub_1690(a1);
  v4 = sub_1688(a1);
  v5 = *(v4 + 24);
  if (v5)
  {
    free(v5);
    *(v4 + 24) = 0;
  }

  v7 = (v4 + 32);
  v6 = *(v4 + 32);
  if (v6)
  {
    SCNetworkReachabilitySetDispatchQueue(v6, 0);
    sub_41E8((v4 + 32));
  }

  if (a2)
  {
    v8 = SCNetworkReachabilityCreateWithName(0, a2);
    *v7 = v8;
    if (v8)
    {
      context.info = a1;
      if (!SCNetworkReachabilitySetCallback(v8, sub_53538, &context))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          v10 = &context - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          v11 = __error();
          v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "6TO4 %s: SCNetworkReachabilitySetCallback failed, %s", context.version, context.info);
          nullsub_1();
          v14 = v13;
          v15 = SCError();
          v16 = SCErrorString(v15);
          *v12 = 136315394;
          *(v12 + 4) = v14;
          *(v12 + 12) = 2080;
          *(v12 + 14) = v16;
          __SC_log_send();
        }

        sub_41E8((v4 + 32));
      }

      v17 = *v7;
      v18 = sub_CB80();
      SCNetworkReachabilitySetDispatchQueue(v17, v18);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v19 = _os_log_pack_size();
        v20 = &context - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = __error();
        v22 = _os_log_pack_fill(v20, v19, *v21, &dword_0, "6TO4 %s: resolving %s", context.version, context.info);
        nullsub_1();
        *v22 = 136315394;
        *(v22 + 4) = v23;
        *(v22 + 12) = 2080;
        *(v22 + 14) = a2;
        __SC_log_send();
      }

      *(v4 + 24) = strdup(a2);
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v24 = _os_log_pack_size();
        v25 = &context - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = __error();
        v27 = _os_log_pack_fill(v25, v24, *v26, &dword_0, "6TO4 %s:SCNetworkReachabilityCreateWithName failed, %s", context.version, context.info);
        nullsub_1();
        v29 = v28;
        v30 = SCError();
        v31 = SCErrorString(v30);
        *v27 = 136315394;
        *(v27 + 4) = v29;
        *(v27 + 12) = 2080;
        *(v27 + 14) = v31;
        __SC_log_send();
      }
    }
  }
}

void sub_52DC4(const __SCDynamicStore *a1, CFArrayRef theArray, uint64_t a3)
{
  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v7 = sub_52E48(a1, ValueAtIndex);
      sub_52F14(a3, v7, ValueAtIndex);
      sub_41E8(&v7);
    }
  }
}

CFDictionaryRef sub_52E48(const __SCDynamicStore *a1, void *a2)
{
  values = a2;
  v3 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  cf = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
  v4 = CFArrayCreate(0, &cf, 1, &kCFTypeArrayCallBacks);
  CFRelease(cf);
  v5 = SCDynamicStoreCopyMultiple(a1, v3, v4);
  CFRelease(v3);
  CFRelease(v4);
  return v5;
}

void sub_52F14(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  v42 = 0;
  v6 = sub_1688(a1);
  if (!a2 || (Value = CFDictionaryGetValue(a2, a3), TypeID = CFDictionaryGetTypeID(), !Value) || CFGetTypeID(Value) != TypeID)
  {
    CFStringGetTypeID();
    goto LABEL_24;
  }

  v9 = CFDictionaryGetValue(Value, kSCDynamicStorePropNetPrimaryService);
  v10 = CFStringGetTypeID();
  if (!v9 || CFGetTypeID(v9) != v10)
  {
    goto LABEL_24;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, v9, kSCEntNetIPv4);
  v12 = CFDictionaryGetValue(a2, NetworkServiceEntity);
  v13 = CFDictionaryGetTypeID();
  if (!v12 || CFGetTypeID(v12) != v13)
  {
    CFRelease(NetworkServiceEntity);
    goto LABEL_24;
  }

  CFRelease(NetworkServiceEntity);
  v14 = CFDictionaryGetValue(v12, @"NetworkSignature");
  v15 = CFStringGetTypeID();
  if (v14 && CFGetTypeID(v14) != v15)
  {
    v14 = 0;
  }

  v16 = CFDictionaryGetValue(v12, kSCPropNetIPv4Addresses);
  v17 = CFArrayGetTypeID();
  if (!v16)
  {
    goto LABEL_25;
  }

  if (CFGetTypeID(v16) != v17 || CFArrayGetCount(v16) < 1)
  {
LABEL_24:
    v16 = 0;
LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
  LODWORD(v41) = 0;
  v19 = 0;
  v16 = 0;
  if (sub_575A4(ValueAtIndex, &v41))
  {
    if (v41)
    {
      if (v41 != 65193)
      {
        v19 = 0;
        v16 = 0;
        v20 = bswap32(v41);
        if (HIWORD(v20) != 49320 && (v20 & 0xFF000000) != 0xA000000 && (v20 & 0xFFF00000) != 0xAC100000)
        {
          if (v14)
          {
            v16 = CFRetain(v14);
            v42 = v16;
          }

          else
          {
            v16 = 0;
          }

          v19 = v41;
        }
      }
    }
  }

LABEL_26:
  v21 = v19 & 0xFF000000 | (BYTE2(v19) << 16) | (BYTE1(v19) << 8) | v19;
  if (v21)
  {
    if (v21 == *v6)
    {
      goto LABEL_41;
    }

    v41 = 0uLL;
    sub_1690(a1);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v40 = v16;
      v38 = BYTE2(v19);
      v39 = HIBYTE(v19);
      v36 = v19;
      v37 = BYTE1(v19);
      v22 = _os_log_pack_size();
      v23 = &v35 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = __error();
      v25 = _os_log_pack_fill(v23, v22, *v24, &dword_0, "6TO4 %s: primary IPv4 address changed to %d.%d.%d.%d", v35, v36, v38, v40, v41);
      nullsub_1();
      *v25 = 136316162;
      *(v25 + 4) = v26;
      *(v25 + 12) = 1024;
      v27 = v37;
      *(v25 + 14) = v36;
      *(v25 + 18) = 1024;
      *(v25 + 20) = v27;
      *(v25 + 24) = 1024;
      *(v25 + 26) = v38;
      *(v25 + 30) = 1024;
      *(v25 + 32) = v39;
LABEL_32:
      __SC_log_send();
      v16 = v40;
    }
  }

  else
  {
    v41 = 0uLL;
    sub_1690(a1);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v40 = v16;
      v28 = _os_log_pack_size();
      v29 = &v35 - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = __error();
      v31 = _os_log_pack_fill(v29, v28, *v30, &dword_0, "6TO4 %s: no primary IPv4 address", v35);
      nullsub_1();
      *v31 = 136315138;
      *(v31 + 4) = v32;
      goto LABEL_32;
    }
  }

  v33 = *v6;
  if (*v6)
  {
    *(&v41 + 4) = 0x1000000;
    HIDWORD(v41) = 0x1000000;
    LOWORD(v41) = 544;
    *(&v41 + 2) = v33;
    sub_2C7AC(a1, &v41, 16);
  }

  sub_41E8((v6 + 40));
  *v6 = v19;
  if (v21)
  {
    *(&v41 + 4) = 0x1000000;
    HIDWORD(v41) = 0x1000000;
    LOWORD(v41) = 544;
    *(&v41 + 2) = v19 & 0xFF000000 | (BYTE2(v19) << 16) | (BYTE1(v19) << 8) | v19;
    sub_2C4B8(a1, &v41, 0x10u, 0, 0xFFFFFFFFLL, -1);
    v34 = CFStringGetTypeID();
    if (v16 && CFGetTypeID(v16) == v34)
    {
      *(v6 + 40) = CFRetain(v42);
    }

    sub_53448(a1);
  }

  else
  {
    sub_102A4(a1, 0x12u);
  }

LABEL_41:
  sub_41E8(&v42);
}

void sub_53448(uint64_t a1)
{
  v12 = 0;
  v7 = 0;
  v2 = sub_1688(a1);
  v3 = v2;
  v4 = (v2 + 4);
  if (*(v2 + 4) || *(v2 + 8) || *(v2 + 12) || *(v2 + 16))
  {
    v5 = *v2;
    if (*v2)
    {
      if (*(v2 + 40))
      {
        v6 = CFStringCreateWithFormat(0, 0, @"IPv6.6to4=(%@)", *(v2 + 40), v7);
        v7 = v6;
        v5 = *v3;
      }

      else
      {
        v6 = 0;
      }

      *&v9[2] = 0x1000000;
      v10 = 0x1000000;
      v8 = 544;
      *v9 = v5;
      v11 = 16;
      sub_1C4B0(a1, &v8, 1u, v4, 1, 0, v6);
      sub_41E8(&v7);
    }
  }
}

void sub_53538(uint64_t a1, char a2, uint64_t a3)
{
  v38 = 0;
  v5 = sub_1688(a3);
  sub_1690(a3);
  if ((a2 & 6) == 2)
  {
    v6 = SCNetworkReachabilityCopyResolvedAddress();
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          if (BytePtr[1] == 2)
          {
            v13 = BytePtr;
            if (*(BytePtr + 1))
            {
              break;
            }
          }

          if (v9 == ++v10)
          {
            goto LABEL_18;
          }
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v20 = _os_log_pack_size();
          v35 = &v34;
          v21 = &v34 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = __error();
          v23 = _os_log_pack_fill(v21, v20, *v22, &dword_0, "6TO4 %s: resolved %s to %d.%d.%d.%d", v34, v35, v36, DWORD1(v37), HIDWORD(v37), v39);
          nullsub_1();
          v24 = *(v5 + 24);
          v25 = v13[4];
          v26 = v13[5];
          v27 = v13[6];
          v28 = v13[7];
          *v23 = 136316418;
          *(v23 + 4) = v29;
          *(v23 + 12) = 2080;
          *(v23 + 14) = v24;
          *(v23 + 22) = 1024;
          *(v23 + 24) = v25;
          *(v23 + 28) = 1024;
          *(v23 + 30) = v26;
          *(v23 + 34) = 1024;
          *(v23 + 36) = v27;
          *(v23 + 40) = 1024;
          *(v23 + 42) = v28;
          __SC_log_send();
        }

        SCNetworkReachabilitySetDispatchQueue(*(v5 + 32), 0);
        sub_41E8((v5 + 32));
        v30 = *(v13 + 1);
        *(&v37 + 4) = 0;
        HIDWORD(v37) = 0;
        LOWORD(v37) = 544;
        v32 = *(v5 + 4);
        v31 = v5 + 4;
        *(&v37 + 2) = v30;
        if (v32 != v37 || *(v31 + 8) != *(&v37 + 1))
        {
          *v31 = v37;
          sub_53448(a3);
        }
      }

LABEL_18:
      CFRelease(v7);
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      v15 = &v34 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v15, v14, *v16, &dword_0, "6TO4 %s: can't resolve %s", v34, v35);
      nullsub_1();
      v18 = *(v5 + 24);
      *v17 = 136315394;
      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      *(v17 + 14) = v18;
      __SC_log_send();
    }
  }
}

uint64_t sub_53878(uint64_t a1)
{
  if (!qword_702C0)
  {
    v1 = a1;
    if (!sub_539F8(a1))
    {
      if (v1 == 4)
      {
        memset(v11, 0, sizeof(v11));
        v10.tv_sec = 0;
        v10.tv_nsec = 0;
        v2 = gethostuuid(v11, &v10);
        v3 = 0;
        if (!v2)
        {
          v3 = sub_5B560(v11);
        }
      }

      else
      {
        v3 = sub_53D00(v1);
      }

      qword_702C0 = v3;
      if (v3)
      {
        sub_53F14(v3);
        sub_54074();
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v4 = _os_log_pack_size();
          v5 = &v9 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
          v6 = __error();
          v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "%s: failed to establish DUID\n", v9);
          *v7 = 136315138;
          *(v7 + 4) = "DHCPDUIDEstablishAndGet";
          __SC_log_send();
        }
      }
    }
  }

  return qword_702C0;
}

BOOL sub_539F8(uint64_t a1)
{
  v1 = a1;
  v2 = sub_572B8("/var/db/dhcpclient/DUID_IA.plist");
  v25 = v2;
  TypeID = CFDictionaryGetTypeID();
  if (v2 && CFGetTypeID(v2) == TypeID)
  {
    Value = CFDictionaryGetValue(v2, @"HostUUID");
    v5 = CFDataGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v5 && CFDataGetLength(Value) == 16)
      {
        v6 = sub_431F4();
        if (v6)
        {
          if (!CFEqual(Value, v6))
          {
            syslog(5, "DHCPDUID: ignoring DUID - host UUID doesn't match", v25);
            goto LABEL_23;
          }
        }
      }
    }

    v7 = CFDictionaryGetValue(v2, @"DUID");
    v8 = CFDataGetTypeID();
    if (v7)
    {
      if (CFGetTypeID(v7) == v8)
      {
        v9 = sub_54358(v7);
        if (v9 == v1)
        {
          v10 = CFDictionaryGetValue(v2, @"IAIDList");
          v11 = CFArrayGetTypeID();
          if (!v10 || CFGetTypeID(v10) != v11)
          {
LABEL_21:
            qword_702C0 = CFRetain(v7);
            goto LABEL_23;
          }

          Count = CFArrayGetCount(v10);
          if (Count >= 1)
          {
            v13 = Count;
            v14 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
              v16 = CFStringGetTypeID();
              if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v16)
              {
                goto LABEL_21;
              }
            }

            while (v13 != ++v14);
          }

          qword_702C0 = CFRetain(v7);
          qword_702C8 = CFArrayCreateMutableCopy(0, 0, v10);
        }

        else
        {
          v17 = v9;
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v18 = _os_log_pack_size();
            v19 = &v25 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
            v20 = __error();
            v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "Discarding existing DUID with type %s (%d), need type %s (%d)", v25, v26, v27, v28);
            v22 = sub_5B0C8(v17);
            v23 = sub_5B0C8(v1);
            *v21 = 136315906;
            *(v21 + 4) = v22;
            *(v21 + 12) = 1024;
            *(v21 + 14) = v17;
            *(v21 + 18) = 2080;
            *(v21 + 20) = v23;
            *(v21 + 28) = 1024;
            *(v21 + 30) = v1;
            __SC_log_send();
          }
        }
      }
    }
  }

LABEL_23:
  sub_41E8(&v25);
  return qword_702C0 != 0;
}

__CFData *sub_53D00(int a1)
{
  result = get_interface_list();
  if (result)
  {
    v3 = sub_59518(result);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v4 = __SC_log_enabled();
    if (v3)
    {
      if (v4)
      {
        v5 = _os_log_pack_size();
        v6 = &v17 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        v7 = __error();
        v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "DHCPDUID: chose %s for DUID", v17);
        nullsub_1();
        *v8 = 136315138;
        *(v8 + 4) = v9;
        __SC_log_send();
      }

      if (a1 == 3)
      {
        return sub_54250(v3);
      }

      else
      {
        v14 = sub_A840(v3);
        v15 = sub_AD1C(v3);
        v16 = sub_638C(v3);
        return sub_5B48C(v14, v15, v16);
      }
    }

    else
    {
      if (v4)
      {
        v10 = _os_log_pack_size();
        v11 = &v17 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = __error();
        v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "%s: can't find suitable interface", v17);
        *v13 = 136315138;
        *(v13 + 4) = "make_DUID_data";
        __SC_log_send();
      }

      return 0;
    }
  }

  return result;
}

void sub_53F14(const __CFData *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  sub_5B0EC(Mutable, BytePtr, Length);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    v6 = &v9 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "%s %@");
    *v8 = 136315394;
    *(v8 + 4) = "Established";
    *(v8 + 12) = 2112;
    *(v8 + 14) = Mutable;
    __SC_log_send();
  }

  CFRelease(Mutable);
}

void sub_54074()
{
  if (qword_702C0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"DUID", qword_702C0);
    if (qword_702C8)
    {
      CFDictionarySetValue(Mutable, @"IAIDList", qword_702C8);
    }

    v1 = sub_431F4();
    if (v1)
    {
      CFDictionarySetValue(Mutable, @"HostUUID", v1);
    }

    if ((sub_573B8(Mutable, "/var/db/dhcpclient/DUID_IA.plist", 420) & 0x80000000) != 0 && *__error() != 2)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        v3 = v8 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
        v4 = __error();
        v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "DHCPDUID: failed to write %s, %s", v8[0], v8[1]);
        v6 = __error();
        v7 = strerror(*v6);
        *v5 = 136315394;
        *(v5 + 4) = "/var/db/dhcpclient/DUID_IA.plist";
        *(v5 + 12) = 2080;
        *(v5 + 14) = v7;
        __SC_log_send();
      }
    }

    CFRelease(Mutable);
  }
}

__CFData *sub_54250(uint64_t a1)
{
  v2 = sub_A840(a1);
  v3 = sub_AD1C(a1);
  v4 = sub_638C(a1);

  return sub_5B404(v2, v3, v4);
}

CFIndex sub_542B0(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (!qword_702C8)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    Count = 0;
    qword_702C8 = Mutable;
LABEL_6:
    CFArrayAppendValue(Mutable, v1);
    sub_54074();
    goto LABEL_7;
  }

  Count = CFArrayGetCount(qword_702C8);
  v6.location = 0;
  v6.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_702C8, v6, v1);
  if (FirstIndexOfValue == -1)
  {
    Mutable = qword_702C8;
    goto LABEL_6;
  }

  Count = FirstIndexOfValue;
LABEL_7:
  CFRelease(v1);
  return Count;
}

uint64_t sub_54358(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (sub_5B3BC(BytePtr, Length))
  {
    return bswap32(*BytePtr) >> 16;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v5 = _os_log_pack_size();
    v6 = &v8 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    *_os_log_pack_fill(v6, v5, *v7, &dword_0, "DUID is invalid") = 0;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t *sub_54514(uint64_t a1)
{
  v2 = qword_702D0;
  if (!qword_702D0)
  {
    v3 = malloc_type_malloc(0x38uLL, 0x10A004062DB933CuLL);
    if (!v3)
    {
      qword_702D0 = 0;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = _os_log_pack_size();
        v13 = &v16 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        *_os_log_pack_fill(v13, v12, *v14, &dword_0, "RTADVSocketCreate: could not allocate globals") = 0;
        __SC_log_send();
      }

      return 0;
    }

    v2 = v3;
    v3[6] = 0;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *v3 = 0u;
    sub_592AC(v3, sub_54924, 0);
    v2[6] = timer_callout_init("RTADVSocket");
    qword_702D0 = v2;
  }

  v4 = sub_144D8(a1);
  if (sub_18E80(v4))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v16 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "RTADVSocketCreate(%s): socket already allocated", v16);
      nullsub_1();
      *v8 = 136315138;
      *(v8 + 4) = v9;
      __SC_log_send();
    }

    return 0;
  }

  v10 = malloc_type_malloc(0x38uLL, 0x10A0040537E56A6uLL);
  v11 = v10;
  if (v10)
  {
    v10[6] = 0;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    if (!sub_59348(v2, v10))
    {
      free(v11);
      return 0;
    }

    *v11 = a1;
  }

  return v11;
}

void sub_547AC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = sub_15194(qword_702D0, v1);
    if (v3 == -1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = _os_log_pack_size();
        v5 = &v9 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        v6 = __error();
        v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "RTADVSocketRelease: %s not in list?", v9);
        nullsub_1();
        *v7 = 136315138;
        *(v7 + 4) = v8;
        __SC_log_send();
      }
    }

    else
    {
      sub_15190(qword_702D0, v3, 0);
    }

    v1[4] = 0;
    v1[5] = 0;
    v1[6] = 0;
    v1[1] = 0;
    v1[2] = 0;
    sub_54D30(v1);
    free(v1);
    *a1 = 0;
  }
}

void sub_54924(void *a1)
{
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_54D30(a1);

  free(a1);
}

uint64_t sub_54968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = a4;
  result = sub_54AB8(a1);
  if (result)
  {
    v5 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v6 = _os_log_pack_size();
      v7 = v13 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s: failed, %s", v13[0], v13[1]);
      nullsub_1();
      v11 = v10;
      v12 = strerror(v5);
      *v9 = 136315394;
      *(v9 + 4) = v11;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v12;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_54AB8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  timer_cancel(*(qword_702D0 + 48));
  ++*(qword_702D0 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = v14 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s(%s): refcount %d", v14[0], v14[1], v15);
    nullsub_1();
    v6 = *(qword_702D0 + 40);
    *v5 = 136315650;
    *(v5 + 4) = "RTADVSocketOpenSocket";
    *(v5 + 12) = 2080;
    *(v5 + 14) = v7;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v6;
    __SC_log_send();
  }

  *(a1 + 24) = 1;
  if (*(qword_702D0 + 40) > 1)
  {
    return 0;
  }

  if (*(qword_702D0 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      v9 = v14 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "%s: socket is still open", v14[0]);
      *v11 = 136315138;
      *(v11 + 4) = "RTADVSocketOpenSocket";
      __SC_log_send();
    }

    return 0;
  }

  v12 = sub_55290();
  if (v12)
  {
    sub_54D30(a1);
  }

  return v12;
}

uint64_t sub_54D20(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return sub_54D30(a1);
}

uint64_t sub_54D30(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result;
    v2 = *(qword_702D0 + 40);
    if (v2 <= 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v12 = _os_log_pack_size();
        v13 = &v18 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "RTADVSocketCloseSocket(%s): refcount %d", v18, v19);
        nullsub_1();
        v16 = *(qword_702D0 + 40);
        *v15 = 136315394;
        *(v15 + 4) = v17;
        *(v15 + 12) = 1024;
        *(v15 + 14) = v16;
        return __SC_log_send();
      }
    }

    else
    {
      *(qword_702D0 + 40) = v2 - 1;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v3 = _os_log_pack_size();
        v4 = &v18 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
        v5 = __error();
        v6 = _os_log_pack_fill(v4, v3, *v5, &dword_0, "RTADVSocketCloseSocket(%s): refcount %d", v18, v19);
        nullsub_1();
        v7 = *(qword_702D0 + 40);
        *v6 = 136315394;
        *(v6 + 4) = v8;
        *(v6 + 12) = 1024;
        *(v6 + 14) = v7;
        result = __SC_log_send();
      }

      *(v1 + 24) = 0;
      if (!*(qword_702D0 + 40))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          v10 = &v18 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          v11 = __error();
          *_os_log_pack_fill(v10, v9, *v11, &dword_0, "RTADVSocketCloseSocket(): scheduling delayed close") = 0;
          __SC_log_send();
        }

        return timer_set_relative(*(qword_702D0 + 48), 1, 0, sub_559A4, 0, 0, 0);
      }
    }
  }

  return result;
}

uint64_t sub_55040(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *a1;
  if ((v5 & 1) == 0)
  {
    v7 = sub_54AB8(a1);
    if (v7)
    {
      v8 = v7;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v9 = _os_log_pack_size();
        v10 = &v21 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        v11 = __error();
        v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "RTADVSocket: failed to open socket, %s", v21);
        v13 = strerror(v8);
        *v12 = 136315138;
        *(v12 + 4) = v13;
        __SC_log_send();
      }

      return v8;
    }

    v6 = *a1;
  }

  v22 = 133;
  if (a2 && sub_E4B8(v6) == 6)
  {
    v14 = (sub_AD1C(v6) + 2) & 7;
    v15 = sub_AD1C(v6);
    if (v14)
    {
      v16 = v15 - ((sub_AD1C(v6) + 2) & 7) + 10;
    }

    else
    {
      v16 = v15 + 2;
    }

    v23 = 1;
    v24 = v16 / 8;
    sub_A840(v6);
    sub_AD1C(v6);
    __memmove_chk();
    v17 = v16 + 8;
  }

  else
  {
    v17 = 8;
  }

  v18 = sub_5A18(*(qword_702D0 + 32));
  v19 = sub_144D8(v4);
  v8 = sub_5A000(v18, v19, &unk_5D218, &v22, v17, 255);
  if ((v5 & 1) == 0)
  {
    sub_54D30(a1);
  }

  return v8;
}

uint64_t sub_55290()
{
  v0 = sub_554A4();
  if (v0 < 0)
  {
    v6 = *__error();
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = &v13 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "%s: socket() failed, %s", v13, v14);
      v11 = strerror(v6);
      *v10 = 136315394;
      *(v10 + 4) = "RTADVSocketOpenSocketFD";
      *(v10 + 12) = 2080;
      *(v10 + 14) = v11;
      __SC_log_send();
    }
  }

  else
  {
    v1 = v0;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v2 = _os_log_pack_size();
      v3 = &v13 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      v4 = __error();
      v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s: opened RTADV socket %d", v13, v14);
      *v5 = 136315394;
      *(v5 + 4) = "RTADVSocketOpenSocketFD";
      *(v5 + 12) = 1024;
      *(v5 + 14) = v1;
      __SC_log_send();
    }

    sub_556D4(v1);
    return 0;
  }

  return v6;
}

uint64_t sub_554A4()
{
  v0 = sub_51508(1);
  if ((v0 & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 0xFFFFFFFFLL;
    }

    v8 = _os_log_pack_size();
    v9 = &v15 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "error opening socket: %s", v15);
    v12 = __error();
    v13 = strerror(*v12);
    *v11 = 136315138;
    *(v11 + 4) = v13;
    __SC_log_send();
    return 0xFFFFFFFFLL;
  }

  else
  {
    v1 = v0;
    v15 = 0u;
    v16 = 0u;
    LODWORD(v16) = 64;
    if (setsockopt(v0, 58, 18, &v15, 0x20u) == -1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        v3 = &v15 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
        v4 = __error();
        v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "setsockopt(ICMP6_FILTER): %s", v15);
        v6 = __error();
        v7 = strerror(*v6);
        *v5 = 136315138;
        *(v5 + 4) = v7;
        __SC_log_send();
      }

      close(v1);
      return 0xFFFFFFFFLL;
    }
  }

  return v1;
}

char *sub_556D4(int a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v7 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s: enabling receive on socket %d", v7, v8);
    *v5 = 136315394;
    *(v5 + 4) = "RTADVSocketEnableReceiveCallBack";
    *(v5 + 12) = 1024;
    *(v5 + 14) = a1;
    __SC_log_send();
  }

  v7 = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = sub_55870;
  v10 = &unk_69200;
  v11 = a1;
  result = sub_C92C(a1, sub_18168, 0, 0, &v7);
  *(qword_702D0 + 32) = result;
  return result;
}

uint64_t sub_55878(int a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v7 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s: socket %d complete, closing", v7, v8);
    *v5 = 136315394;
    *(v5 + 4) = "RTADVSocketFDComplete";
    *(v5 + 12) = 1024;
    *(v5 + 14) = a1;
    __SC_log_send();
  }

  return close(a1);
}

void sub_559A4()
{
  if (!*(qword_702D0 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v5 = _os_log_pack_size();
    v6 = &v13 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = *__error();
    v4 = _os_log_pack_fill(v6, v5, v7, &dword_0, "RTADVSocketDelayedClose(): socket is already closed");
    goto LABEL_7;
  }

  v0 = *(qword_702D0 + 40);
  sub_2424();
  if (v0 >= 1)
  {
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v1 = _os_log_pack_size();
    v2 = &v13 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = *__error();
    v4 = _os_log_pack_fill(v2, v1, v3, &dword_0, "RTADVSocketDelayedClose(): called when socket in use");
LABEL_7:
    *v4 = 0;
    __SC_log_send();
    return;
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    v9 = &v13 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "RTADVSocketDelayedClose(): closing RTADV socket %d", v13);
    v12 = sub_5A18(*(qword_702D0 + 32));
    *v11 = 67109120;
    v11[1] = v12;
    __SC_log_send();
  }

  sub_2B78((qword_702D0 + 32));
}

void sub_55C00(uint64_t a1, char a2)
{
  v3 = *(a1 + 26);
  v4 = a2 ^ 1 | v3;
  if (v4)
  {
    sub_41E8(a1);
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  sub_41E8((a1 + 8));
  sub_41E8((a1 + 32));
  sub_41E8((a1 + 40));
  sub_41E8((a1 + 48));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if ((v4 & 1) == 0)
  {
    *a1 = v5;
    *(a1 + 26) = v3;
  }
}

void sub_55C8C(const void **a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  sub_41E8(a1);
  *a1 = cf;
}

void sub_55CC8(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  sub_41E8((a1 + 8));
  *(a1 + 8) = cf;
}

void sub_55D1C(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  sub_41E8((a1 + 32));
  *(a1 + 32) = cf;
}

CFDateRef sub_55D58(uint64_t a1)
{
  sub_41E8((a1 + 40));
  Current = CFAbsoluteTimeGetCurrent();
  result = CFDateCreate(0, Current);
  *(a1 + 40) = result;
  return result;
}

void sub_55D90(const void **a1)
{
  v28 = 0;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v27 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s", v27);
    *v5 = 136315138;
    *(v5 + 4) = "PvDInfoContextCalculateEffectiveExpiration";
    __SC_log_send();
  }

  v6 = a1[4];
  if (v6)
  {
    Value = CFDictionaryGetValue(a1[4], @"expires");
    atp = 0.0;
    v8 = CFLocaleCreate(0, @"en_US_POSIX");
    v31 = v8;
    if (v8 && (v9 = CFDateFormatterCreate(0, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle)) != 0)
    {
      v10 = v9;
      CFDateFormatterSetFormat(v9, @"yyyy-MM-dd'T'HH:mm:ss'Z'");
      sub_41E8(&v31);
      v30 = v10;
      if (CFDateFormatterGetAbsoluteTimeFromString(v10, Value, 0, &atp))
      {
        v11 = (CFAbsoluteTimeGetCurrent() + atp) * 0.5;
        v12 = atp - v11;
        if (atp - v11 > 4294967300.0)
        {
          v12 = 4294967300.0;
        }

        v13 = v11 + arc4random_uniform(v12);
        v14 = CFDateCreate(0, v13);
        if (v14)
        {
          v15 = v14;
          StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v10, v13);
          v28 = StringWithAbsoluteTime;
          sub_41E8(&v30);
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v17 = _os_log_pack_size();
            v18 = &v27 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
            v19 = __error();
            v20 = _os_log_pack_fill(v18, v17, *v19, &dword_0, "%s: PvD info with ID '%@' has effective expiration date '%@'");
            v21 = *a1;
            *v20 = 136315650;
            *(v20 + 4) = "PvDInfoContextCalculateEffectiveExpiration";
            *(v20 + 12) = 2112;
            *(v20 + 14) = v21;
            *(v20 + 22) = 2112;
            *(v20 + 24) = StringWithAbsoluteTime;
            __SC_log_send();
          }

          sub_41E8(a1 + 6);
          a1[6] = v15;
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_41E8(&v31);
      v30 = 0;
    }

    sub_41E8(&v30);
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v22 = _os_log_pack_size();
    v23 = &v27 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __error();
    v25 = _os_log_pack_fill(v23, v22, *v24, &dword_0, "%s: couldn't set expiration date for pvdid '%@' with addinfo '%@'");
    v26 = *a1;
    *v25 = 136315650;
    *(v25 + 4) = "PvDInfoContextCalculateEffectiveExpiration";
    *(v25 + 12) = 2112;
    *(v25 + 14) = v26;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v6;
    __SC_log_send();
  }

  sub_41E8(a1 + 6);
LABEL_18:
  sub_41E8(&v28);
}

uint64_t sub_56170(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 20023) >= 0xFFFFFFE9)
  {
    return *(&_ipconfig_subsystem + 5 * (v1 - 20000) + 5);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_561AC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_3C4B0(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_56228(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 52)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_3C4DC(result[3], (result + 8), result[12], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_562E0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 48)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_3C478(result[3], (result + 8), (a2 + 36), (a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

uint64_t sub_56368(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3C51C(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_56454(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = sub_3C69C(v5, (result + 52), v6, v3, (a2 + 36), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_56544(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[9] || result[10] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  result = sub_3C874(result[3], result[8], (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_56600(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = sub_3C884(v5, (result + 52), v6, v3, (a2 + 36), (a2 + 164), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 168;
  }

  return result;
}

uint64_t sub_566F4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 76)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 72)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_3CC78(*(result + 12), result + 52, *(result + 68), *(result + 28), v3, (a2 + 36), (a2 + 164));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 168;
  }

  return result;
}

uint64_t sub_567B4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = sub_3CDA8(v5, result + 52, v6, v3, (a2 + 36), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_568A4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = _ipconfig_set_service(v5, (result + 52), v6, v3, (a2 + 36), (a2 + 164), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 168;
  }

  return result;
}

uint64_t sub_56998(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3C5DC(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_56A84(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 176)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 176) || *(result + 180) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 212);
  v6[0] = *(result + 196);
  v6[1] = v5;
  result = sub_3CBF8(v4, (result + 32), result + 48, (a2 + 36), v6);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_56B44(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 176)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 176) || *(result + 180) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 212);
  v6[0] = *(result + 196);
  v6[1] = v5;
  result = sub_3CED8(v4, result + 32, result + 48, (a2 + 36), v6);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_56C04(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 68)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 108);
  v8[0] = *(result + 92);
  v8[1] = v7;
  result = sub_3CF84(v5, result + 52, v6, v3, (a2 + 36), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_56CF4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3D0CC(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_56DE0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3D18C(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_56ECC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_3D358(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_56F78(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_3D4AC(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_57024(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_3D4E0(*(result + 12), (result + 32), (a2 + 36), (a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

_DWORD *sub_570AC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 176)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_3CF48(result[3], (result + 8), (result + 12), (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_57134(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 84);
  v6[0] = *(result + 68);
  v6[1] = v5;
  result = sub_3D518(v4, result + 32, (a2 + 28), (a2 + 52), (a2 + 56), v6);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_57220(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 20023) >= 0xFFFFFFE9 && (v5 = *(&_ipconfig_subsystem + 5 * (v4 - 20000) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

CFPropertyListRef sub_572B8(const char *a1)
{
  memset(&v11, 0, sizeof(v11));
  if (stat(a1, &v11) < 0)
  {
    return 0;
  }

  st_size = v11.st_size;
  if (!v11.st_size)
  {
    return 0;
  }

  v3 = malloc_type_malloc(v11.st_size, 0xE6DA7C8BuLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = open(a1, 0);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    read(v5, v4, st_size);
    close(v6);
  }

  v7 = CFDataCreateWithBytesNoCopy(0, v4, st_size, kCFAllocatorNull);
  if (v7)
  {
    v8 = v7;
    v9 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  free(v4);
  return v9;
}

uint64_t sub_573B8(CFPropertyListRef propertyList, const std::__fs::filesystem::path *a2, uint64_t a3)
{
  if (!propertyList)
  {
    return 0;
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 0;
  }

  v6 = Data;
  BytePtr = CFDataGetBytePtr(Data);
  __nbyte = CFDataGetLength(v6);
  snprintf(__str, 0x400uLL, "%s-", a2);
  v8 = 5;
  while (1)
  {
    if (unlink(__str))
    {
      v9 = __stderrp;
      v10 = __error();
      v11 = strerror(*v10);
      fprintf(v9, "unlink(%s) failed, %s\n", __str, v11);
    }

    v12 = open(__str, 1793, a3);
    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() == 62)
    {
      fprintf(__stderrp, "open(%s) failed with ELOOP\n", __str);
      if (--v8)
      {
        continue;
      }
    }

    v14 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v15 = v12;
  if (!__nbyte)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v16 = __nbyte;
  while (1)
  {
    v17 = write(v15, BytePtr, v16);
    if (v17 == -1)
    {
      break;
    }

LABEL_16:
    BytePtr += v17;
    v16 -= v17;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  if (*__error() == 4)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v18 = -1;
LABEL_20:
  if (v18 == __nbyte)
  {
LABEL_21:
    rename(__str, a2, v13);
    v14 = 0;
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  close(v15);
LABEL_24:
  CFRelease(v6);
  return v14;
}

uint64_t sub_575A4(const __CFString *a1, in_addr *a2)
{
  a2->s_addr = 0;
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 64, 0x600u);
  if (result)
  {
    return inet_aton(buffer, a2) == 1;
  }

  return result;
}

uint64_t sub_57658(const __CFString *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 64, 0x600u);
  if (result)
  {
    return inet_pton(30, buffer, a2) == 1;
  }

  return result;
}

uint64_t sub_57710(const __CFString *a1, _DWORD *a2)
{
  sub_4160(a1, __str, 64, 0);
  v3 = strtoul(__str, 0, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  if (*__error() == 34)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t sub_577B0(const __CFString *a1, _DWORD *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    CFBooleanGetTypeID();
    CFNumberGetTypeID();
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return (sub_57710(a1, a2) & 1) != 0;
  }

  v6 = CFBooleanGetTypeID();
  if (CFGetTypeID(a1) != v6)
  {
    v7 = CFNumberGetTypeID();
    if (CFGetTypeID(a1) == v7)
    {
      result = CFNumberGetValue(a1, kCFNumberSInt32Type, a2);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    return 0;
  }

  *a2 = CFBooleanGetValue(a1);
  return 1;
}

void sub_57874(__CFDictionary *a1, const void *a2, int a3)
{
  v5 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a3, BYTE1(a3), BYTE2(a3), HIBYTE(a3));
  CFDictionarySetValue(a1, a2, v5);

  CFRelease(v5);
}

void sub_578FC(__CFDictionary *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFDictionarySetValue(a1, a2, v5);

  CFRelease(v5);
}

void sub_57964(const __CFArray *a1, const void *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_5:

    CFArrayAppendValue(a1, a2);
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      if (CFEqual(ValueAtIndex, a2))
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_579F0(const __CFArray *a1, const __CFArray *a2, uint64_t (*a3)(const void *, const void *, void))
{
  Count = CFArrayGetCount(a1);
  v7 = CFArrayGetCount(a2);
  v8.length = v7;
  if (Count)
  {
    if (v7)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (CFArrayGetCount(a2) >= 1)
      {
        v10 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
          if (CFArrayGetCount(a1) < 1)
          {
LABEL_9:
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          else
          {
            v12 = 0;
            while (1)
            {
              v13 = CFArrayGetValueAtIndex(a1, v12);
              if (!a3(v13, ValueAtIndex, 0))
              {
                break;
              }

              if (++v12 >= CFArrayGetCount(a1))
              {
                goto LABEL_9;
              }
            }
          }

          ++v10;
        }

        while (v10 < CFArrayGetCount(a2));
      }

      v14 = CFArrayGetCount(Mutable);
      if (v14)
      {
        v16.length = v14;
        v16.location = 0;
        CFArrayAppendArray(a1, Mutable, v16);
      }

      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }

  else
  {
    v8.location = 0;

    CFArrayAppendArray(a1, a2, v8);
  }
}

UInt8 *sub_57B70(const __CFString *a1, CFRange a2, CFStringEncoding a3)
{
  length = a2.length;
  location = a2.location;
  maxBufLen = 0;
  CFStringGetBytes(a1, a2, a3, 0, 0, 0, 0, &maxBufLen);
  if (!maxBufLen)
  {
    return 0;
  }

  v7 = malloc_type_malloc(maxBufLen + 1, 0x6F79A892uLL);
  v10.location = location;
  v10.length = length;
  CFStringGetBytes(a1, v10, a3, 0, 0, v7, maxBufLen, &maxBufLen);
  v7[maxBufLen] = 0;
  return v7;
}

UInt8 *sub_57C28(const __CFString *a1, CFStringEncoding a2)
{
  v4.length = CFStringGetLength(a1);
  v4.location = 0;

  return sub_57B70(a1, v4, a2);
}

CFStringRef sub_57C70(const __CFAllocator *a1)
{
  v2 = CFUUIDCreate(a1);
  v3 = CFUUIDCreateString(a1, v2);
  CFRelease(v2);
  return v3;
}

CFStringRef sub_57CB4(CFDataRef theData)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    result = CFStringCreateWithBytes(0, BytePtr, Length, dword_5D234[v2], 0);
    if (result)
    {
      break;
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  return result;
}

uint64_t sub_57D34(const void *a1, const void *a2)
{
  if (a1 && a2)
  {
    return CFEqual(a1, a2);
  }

  else
  {
    return 0;
  }
}

const __CFData *sub_57D48(CFPropertyListRef propertyList, _DWORD *a2)
{
  address = 0;
  *a2 = 0;
  result = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (result)
  {
    v4 = result;
    Length = CFDataGetLength(result);
    if (!vm_allocate(mach_task_self_, &address, Length, 1))
    {
      v6 = address;
      BytePtr = CFDataGetBytePtr(v4);
      memmove(v6, BytePtr, Length);
      *a2 = Length;
    }

    CFRelease(v4);
    return address;
  }

  return result;
}

const __CFData *sub_57E00(UInt8 *bytes, int a2)
{
  result = CFDataCreateWithBytesNoCopy(0, bytes, a2, kCFAllocatorNull);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateWithData(0, result, 0, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

CFMutableStringRef sub_57E6C(__CFString *a1, unsigned int a2)
{
  MutableCopy = a1;
  Length = CFStringGetLength(a1);
  if (Length <= a2)
  {
    CFRetain(MutableCopy);
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy);
    v5 = 0;
    while (1)
    {
      v9.length = Length;
      v9.location = 0;
      CFStringFindAndReplace(MutableCopy, off_695D8[v5], off_695D8[v5 + 1], v9, 1uLL);
      v6 = CFStringGetLength(MutableCopy);
      Length = v6;
      if (v6 <= a2)
      {
        break;
      }

      v5 += 2;
      if (v5 == 10)
      {
        v8.location = a2 >> 1;
        v8.length = v6 - a2;
        CFStringDelete(MutableCopy, v8);
        return MutableCopy;
      }
    }

    if (!v6 && MutableCopy)
    {
      CFRelease(MutableCopy);
      return 0;
    }
  }

  return MutableCopy;
}

void sub_57F48(CFMutableStringRef theString, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 > 8)
  {
    if (a2 <= 12)
    {
      if (a2 == 9)
      {
        CFStringAppendFormat(theString, 0, @"%.*s", a4, a3);
      }

      else if (a2 == 10)
      {
        CFStringAppendFormat(theString, 0, @"%d.%d.%d.%d", *a3, a3[1], a3[2], a3[3]);
      }

      return;
    }

    switch(a2)
    {
      case 13:
        v30 = 0;
        v8 = sub_58F38(a3, a4, &v30);
        CFStringAppendFormat(theString, 0, @"{");
        if (v8)
        {
          if (v30 >= 1)
          {
            for (i = 0; i < v30; CFStringAppendFormat(theString, 0, @"%s%s", v24, *&v8[8 * i++]))
            {
              if (i)
              {
                v24 = ", ";
              }

              else
              {
                v24 = "";
              }
            }
          }

          goto LABEL_48;
        }

        break;
      case 14:
        v12 = sub_5A958(a3, a4);
        if (v12)
        {
          v13 = v12;
          Count = CFArrayGetCount(v12);
          if (Count)
          {
            v15 = Count;
            CFStringAppend(theString, @"{\n");
            if (v15 >= 1)
            {
              for (j = 0; j != v15; ++j)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v13, j);
                Value = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerName");
                v19 = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerPriority");
                v20 = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerAddresses");
                v21 = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerParameters");
                CFStringAppendFormat(theString, 0, @"{ %@ (%@)\n%@\n'%@'\n}", Value, v19, v20, v21);
              }
            }

            CFStringAppend(theString, @"\n}");
          }

          CFRelease(v13);
        }

        return;
      case 15:
        v29 = 0;
        v8 = sub_591C0(a3, a4, &v29);
        CFStringAppendFormat(theString, 0, @"{");
        if (v8)
        {
          if (v29 >= 1)
          {
            v9 = 0;
            v10 = v8;
            do
            {
              if (v9)
              {
                v11 = "; ";
              }

              else
              {
                v11 = "";
              }

              CFStringAppendFormat(theString, 0, @"%s%d.%d.%d.%d/%d, %d.%d.%d.%d", v11, *v10, v10[1], v10[2], v10[3], *(v10 + 1), v10[8], v10[9], v10[10], v10[11]);
              ++v9;
              v10 += 12;
            }

            while (v9 < v29);
          }

LABEL_48:
          free(v8);
        }

        break;
      default:
        return;
    }

    CFStringAppendFormat(theString, 0, @"}", v25, v26, v27, v28);
    return;
  }

  if (a2 > 3)
  {
    if ((a2 - 5) < 2)
    {
      v7 = bswap32(*a3);
      goto LABEL_26;
    }

    if (a2 == 4)
    {
      v7 = bswap32(*a3) >> 16;
      goto LABEL_26;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        CFStringAppendFormat(theString, 0, @"\n");

        sub_59ABC(theString, a3, v4);
        break;
      case 2:
        if (*a3)
        {
          v22 = "TRUE";
        }

        else
        {
          v22 = "FALSE";
        }

        CFStringAppendFormat(theString, 0, @"%s", v22);
        break;
      case 3:
        v7 = *a3;
LABEL_26:
        CFStringAppendFormat(theString, 0, @"0x%x", v7);
        break;
    }
  }
}

void sub_58354(CFMutableStringRef theString, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a3;
  if (a2 <= 0xF && (v6 = *(&unk_69628 + 6 * a2 + 1)) != 0)
  {
    if (v6 <= 0xF)
    {
      v7 = *(&unk_69628 + 6 * v6);
      v8 = a4 / v7;
      CFStringAppendFormat(theString, 0, @"{");
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (i)
          {
            CFStringAppendFormat(theString, 0, @", ");
          }

          sub_57F48(theString, v6, v4, v7);
          v4 += v7;
        }
      }

      CFStringAppendFormat(theString, 0, @"}");
    }
  }

  else
  {

    sub_57F48(theString, a2, a3, a4);
  }
}

uint64_t sub_58498(uint64_t *a1, unsigned __int8 *a2, unsigned int a3, char *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  sub_157D0(a1);
  if (a3 < 1)
  {
    v8 = 0;
    if ((a3 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v8 = *a2;
    if (*a2)
    {
      break;
    }

    ++a2;
    --a3;
LABEL_9:
    if (a3 <= 0)
    {
      goto LABEL_14;
    }
  }

  if (v8 != 255)
  {
    if (a3 < 2)
    {
      goto LABEL_16;
    }

    v9 = a2[1];
    sub_157D8(a1, a2);
    a3 -= v9 + 2;
    a2 += v9 + 2;
    goto LABEL_9;
  }

  sub_157D8(a1, a2);
  --a3;
LABEL_14:
  if ((a3 & 0x80000000) == 0)
  {
    return 1;
  }

LABEL_16:
  if (a4)
  {
    snprintf(a4, 0x100uLL, "parse failed near tag %d", v8);
  }

  sub_1595C(a1);
  return 0;
}

unsigned __int8 *sub_58598(uint64_t a1, int a2, int a3)
{
  v6 = 0;
  result = sub_1CEA4(a1, a2, &v6, 0);
  if (v6 < a3 || result == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_585E0(uint64_t *a1, uint64_t a2, unsigned int a3, char *a4)
{
  sub_157D0(a1);
  if (a4)
  {
    *a4 = 0;
    if (a3 <= 0xEF)
    {
      snprintf(a4, 0x100uLL, "packet is too short: %d < %d", a3, 240);
      return 0;
    }

    if (*(a2 + 236) != 1666417251)
    {
      result = 0;
      strcpy(a4, "missing magic number");
      return result;
    }
  }

  else if (a3 < 0xF0 || *(a2 + 236) != 1666417251)
  {
    return 0;
  }

  result = sub_58498(a1, (a2 + 240), a3 - 240, a4);
  if (result)
  {
    v12 = 0;
    v9 = sub_1CEA4(a1, 52, &v12, 0);
    if (v9 && v12 == 1)
    {
      v10 = v9;
      v11[0] = 0;
      v11[1] = 0;
      sub_157D0(v11);
      if ((*v10 | 2) == 3 && sub_58498(v11, (a2 + 108), 0x80u, 0))
      {
        sub_59A00(a1, v11);
        sub_1595C(v11);
      }

      if ((*v10 & 0xFE) == 2)
      {
        if (sub_58498(v11, (a2 + 44), 0x40u, 0))
        {
          sub_59A00(a1, v11);
          sub_1595C(v11);
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_58774(__CFString *a1, uint64_t a2)
{
  v4 = sub_2960(a2);
  CFStringAppendFormat(a1, 0, @"Options count is %d\n", v4);
  result = sub_2960(a2);
  if (result >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sub_42C8(a2, v6);
      if (!sub_1EFF4(a1, v7))
      {
        CFStringAppendFormat(a1, 0, @"undefined tag %d len %d\n", *v7, v7[1]);
      }

      ++v6;
      result = sub_2960(a2);
    }

    while (v6 < result);
  }

  return result;
}

uint64_t sub_5883C(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = a3;
  do
  {
    v7 = *a2++;
    if (sub_1CEA4(a1, v7, 0, 0))
    {
      v5 = (v5 + 1);
    }

    else
    {
      v5 = v5;
    }

    --v6;
  }

  while (v6);
  return v5;
}

const char *sub_588A8(uint64_t *a1)
{
  result = "<bad parameter>";
  if (a1)
  {
    v4 = *a1;
    v3 = a1 + 5;
    if (v4 == 287454020)
    {
      return v3;
    }
  }

  return result;
}

void sub_588D0(CFMutableStringRef theString, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 > 0xEB)
  {
    v7[0] = 0;
    v7[1] = 0;
    sub_58490(v7);
    sub_585E0(v7, a2, v3, 0);
    sub_58968(theString, a2, v6, v7);
    sub_58494(v7);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"Packet is too short %d < %d\n", a3, 236);
  }
}

void sub_58968(__CFString *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  CFStringAppendFormat(a1, 0, @"op = ");
  v7 = *a2;
  if (v7 == 2)
  {
    CFStringAppendFormat(a1, 0, @"BOOTREPLY\n");
  }

  else if (v7 == 1)
  {
    CFStringAppendFormat(a1, 0, @"BOOTREQUEST\n");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"OP(%d)\n", *a2);
  }

  CFStringAppendFormat(a1, 0, @"htype = %d\n", a2[1]);
  CFStringAppendFormat(a1, 0, @"flags = 0x%x\n", bswap32(*(a2 + 5)) >> 16);
  v8 = a2[2];
  if (v8 >= 0x11)
  {
    v10 = 16;
    CFStringAppendFormat(a1, 0, @"hlen = %d (invalid > %lu)\n", a2[2], 16);
    v9 = "[truncated] ";
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"hlen = %d\n", a2[2]);
    v9 = "";
    v10 = v8;
  }

  CFStringAppendFormat(a1, 0, @"hops = %d\n", a2[3]);
  CFStringAppendFormat(a1, 0, @"xid = 0x%lx\n", bswap32(*(a2 + 1)));
  CFStringAppendFormat(a1, 0, @"secs = %hu\n", bswap32(*(a2 + 4)) >> 16);
  v11 = inet_ntop(2, a2 + 12, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"ciaddr = %s\n", v11);
  v12 = inet_ntop(2, a2 + 16, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"yiaddr = %s\n", v12);
  v13 = inet_ntop(2, a2 + 20, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"siaddr = %s\n", v13);
  v14 = inet_ntop(2, a2 + 24, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"giaddr = %s\n", v14);
  CFStringAppendFormat(a1, 0, @"chaddr = %s", v9);
  if (v10)
  {
    for (i = 0; i != v10; CFStringAppendFormat(a1, 0, @"%0x", a2[i++ + 28]))
    {
      if (i)
      {
        CFStringAppendFormat(a1, 0, @":");
      }
    }
  }

  CFStringAppendFormat(a1, 0, @"\n");
  CFStringAppendFormat(a1, 0, @"sname = %.*s\n", 64, a2 + 44);
  CFStringAppendFormat(a1, 0, @"file = %.*s\n", 128, a2 + 108);
  if (a4)
  {
    if (sub_295C(a4) >= 1)
    {
      CFStringAppendFormat(a1, 0, @"options:\n");
      sub_58774(a1, a4);
    }
  }
}

BOOL sub_58CD0(uint64_t a1, int a2, int a3, void *a4, unsigned int a5)
{
  if (a3 == 24)
  {
    v6 = 0;
  }

  else
  {
    v6 = a5;
  }

  return *a1 == 2 && bswap32(*(a1 + 4)) == a2 && *(a1 + 1) == a3 && v6 == *(a1 + 2) && (!v6 || !bcmp((a1 + 28), a4, v6));
}

uint64_t sub_58D48(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2960(a1 + 48);
  if (v4 < 1)
  {
LABEL_8:
    *a2 = 0;
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = sub_42C8(a1 + 48, v6);
      if (*v7 == 3)
      {
        if (*(v7 + 1) < 4u)
        {
          goto LABEL_8;
        }

        v8 = *(v7 + 4);
        if (v8)
        {
          if (*(v7 + 8))
          {
            break;
          }
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    *a2 = bswap32(v8);
    return bswap32(*(v7 + 8));
  }
}

CFDictionaryRef sub_58DE8(uint64_t a1)
{
  *keys = *off_6A7F0;
  v9 = @"ReceiveDate";
  v2 = CFDataCreate(0, (a1 + 72), *(a1 + 64));
  v3 = CFDateCreate(0, *(a1 + 40));
  v4 = *(a1 + 32);
  values[0] = v2;
  values[1] = v4;
  values[2] = v3;
  v5 = CFDictionaryCreate(0, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(v2);
  CFRelease(v3);
  return v5;
}

UInt8 *sub_58EC8(uint64_t a1)
{
  *&length[1] = a1;
  length[0] = 0;
  result = sub_1F104(&length[1], 1u, 0, length, 0, 3);
  if (result)
  {
    v2 = result;
    v3 = CFDataCreate(0, result, length[0]);
    free(v2);
    return v3;
  }

  return result;
}

char *sub_58F38(uint64_t a1, unsigned int a2, int *a3)
{
  __src[0] = 0;
  memset(v11, 0, sizeof(v11));
  __src[1] = v11;
  __n = 0x8000000000;
  v4 = sub_1AB58(a1, a2, v11, 0);
  v5 = v4;
  if (v4)
  {
    v6 = malloc_type_malloc(__n + 8 * v4, 0x10040436913F5uLL);
    v7 = &v6[8 * v5];
    memcpy(v7, __src[1], __n);
    if (v5 >= 1)
    {
      v8 = 0;
      do
      {
        *&v6[v8] = v7;
        v7 += strlen(v7) + 1;
        v8 += 8;
      }

      while (8 * v5 != v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  if ((__src[0] & 1) == 0 && __src[1] && __src[1] != v11)
  {
    free(__src[1]);
  }

  return v6;
}

__CFArray *sub_59078(uint64_t a1, unsigned int a2)
{
  cStr[0] = 0;
  memset(v9, 0, sizeof(v9));
  cStr[1] = v9;
  v11 = 0x8000000000;
  v2 = sub_1AB58(a1, a2, v9, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Mutable = CFArrayCreateMutable(0, v2, &kCFTypeArrayCallBacks);
  if (v3 >= 1)
  {
    v5 = cStr[1];
    do
    {
      v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }

      v5 += strlen(v5) + 1;
      --v3;
    }

    while (v3);
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if ((cStr[0] & 1) == 0 && cStr[1] && cStr[1] != v9)
  {
    free(cStr[1]);
  }

  return Mutable;
}

_DWORD *sub_591C0(unsigned __int8 *a1, int a2, _DWORD *a3)
{
  v4 = 0;
  LODWORD(v5) = 0;
  if (a1 && a2)
  {
    v8 = sub_1F864(a1, a2, 0, 0);
    v5 = v8;
    if (!v8)
    {
LABEL_6:
      v4 = 0;
      goto LABEL_7;
    }

    v4 = malloc_type_malloc(12 * v8, 0x10000403E1C8BA9uLL);
    if (sub_1F864(a1, a2, v4, v5) != v5)
    {
      free(v4);
      LODWORD(v5) = 0;
      goto LABEL_6;
    }
  }

LABEL_7:
  *a3 = v5;
  return v4;
}

_DWORD *sub_59274(_DWORD *a1, int a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    while (*a1)
    {
      a1 += 3;
      if (!--a2)
      {
        return 0;
      }
    }

    return a1;
  }

  return v2;
}

void *sub_592AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_157D0(a1);
  a1[2] = a2;
  a1[3] = a3;
  return result;
}

void DHCPLeaseListFree_0(uint64_t *a1)
{
  v1 = a1;
  v3 = 0;
  while (sub_13E08(a1, 0, &v3))
  {
    if (v3)
    {
      v2 = v1[2];
      if (v2)
      {
        v2();
      }
    }

    a1 = v1;
  }

  sub_1595C(v1);
}

uint64_t sub_5934C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  sub_157D0(a1);
  if (sub_2960(a2) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_42C8(a2, v4);
      v6 = v5;
      if (v5)
      {
        v7 = *(a1 + 24);
        if (v7)
        {
          v6 = v7(v5);
        }
      }

      sub_157D8(a1, v6);
      ++v4;
    }

    while (v4 < sub_2960(a2));
  }

  return 1;
}

__n128 sub_593E0(__n128 *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  if (v2)
  {
    result = *a1;
    *v2 = *a1;
  }

  return result;
}

uint64_t sub_59428(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_59434(uint64_t a1, signed int a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = 0;
  if ((a2 & 0x80000000) == 0 && v2 > a2)
  {
    return *a1 + 104 * a2;
  }

  return v3;
}

uint64_t sub_59468(uint64_t a1, int a2)
{
  v4 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *(a1 + 8); ; i = 0)
  {
    if (v4 >= i)
    {
      return 0;
    }

    v6 = *a1 + 104 * v4;
    if (sub_295C(v6 + 24) >= 1)
    {
      break;
    }

LABEL_9:
    ++v4;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v7 = 0;
  while (*sub_42C0(v6 + 24, v7) != a2)
  {
    v7 = (v7 + 1);
    if (v7 >= sub_295C(v6 + 24))
    {
      goto LABEL_9;
    }
  }

  return v6;
}

const char *sub_59518(uint64_t a1)
{
  result = sub_4348(a1, "en0");
  if (!result)
  {
    if (a1 && (v3 = *(a1 + 8), v3 >= 1))
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *(a1 + 8);
      do
      {
        if (v4 >= v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = *a1 + 104 * v4;
        }

        v9 = *(v8 + 18);
        if (v9 == 6 || v9 == 144)
        {
          if (v5)
          {
            if (strcmp(v8, v5) < 0)
            {
              v5 = v8;
            }
          }

          else
          {
            v5 = v8;
          }
        }

        else if (!v6)
        {
          if (*(v8 + 74))
          {
            v6 = v8;
          }

          else
          {
            v6 = 0;
          }
        }

        ++v4;
      }

      while (v4 != v3);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    if (v6)
    {
      v10 = v5 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

void **sub_59608(uint64_t *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v3 = v2;
  if (v2 && !sub_1FB8C(v2, a1))
  {
    free(v3);
    return 0;
  }

  return v3;
}

void sub_59668(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(v2 + 8) >= 1)
      {
        v3 = 0;
        v4 = 24;
        do
        {
          DHCPLeaseListFree_0((*v2 + v4));
          ++v3;
          v4 += 104;
        }

        while (v3 < *(v2 + 8));
      }

      if (*v2)
      {
        free(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

void sub_596FC(uint64_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      DHCPLeaseListFree_0(v2 + 3);
      free(v2);
      *a1 = 0;
    }
  }
}

_OWORD *sub_59740(__int128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x1080040821398E0uLL);
  v3 = v2;
  if (v2)
  {
    v4 = *a1;
    v5 = a1[2];
    v2[1] = a1[1];
    v2[2] = v5;
    *v2 = v4;
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    *(v2 + 12) = *(a1 + 12);
    v2[4] = v7;
    v2[5] = v8;
    v2[3] = v6;
    sub_5934C(v2 + 24, a1 + 24);
  }

  return v3;
}

uint64_t sub_597BC(unsigned __int8 *a1)
{
  if (a1[75] == 6 && a1[74] == 6)
  {
    return (a1[56] >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

const char *sub_597F4(uint64_t a1)
{
  if ((*(a1 + 19) & 2) != 0)
  {
    return "AWDL";
  }

  if (*(a1 + 19))
  {
    return "WiFi";
  }

  v1 = *(a1 + 18);
  v2 = "Bridge";
  v3 = "Cellular";
  if (v1 != 255)
  {
    v3 = 0;
  }

  if (v1 != 209)
  {
    v2 = v3;
  }

  v4 = "Link Aggregate";
  v5 = "Firewire";
  if (v1 != 144)
  {
    v5 = 0;
  }

  if (v1 != 136)
  {
    v4 = v5;
  }

  if (*(a1 + 18) <= 0xD0u)
  {
    v2 = v4;
  }

  v6 = "Ethernet";
  v7 = "6to4";
  v8 = "VLAN";
  if (v1 != 135)
  {
    v8 = 0;
  }

  if (v1 != 57)
  {
    v7 = v8;
  }

  if (v1 != 6)
  {
    v6 = v7;
  }

  if (*(a1 + 18) <= 0x87u)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

CFMutableDictionaryRef sub_598A0(char *path)
{
  properties = 0;
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, path);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (IORegistryEntryCreateCFProperties(v1, &properties, kCFAllocatorDefault, 0))
  {
    properties = 0;
  }

  IOObjectRelease(v2);
  return properties;
}

CFMutableDictionaryRef sub_59918(char *bsdName, int a2)
{
  properties = 0;
  v3 = IOBSDNameMatching(kIOMainPortDefault, 0, bsdName);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  if (!MatchingService)
  {
    return 0;
  }

  v5 = MatchingService;
  if (a2)
  {
    parent = 0;
    ParentEntry = IORegistryEntryGetParentEntry(MatchingService, "IOService", &parent);
    if (!ParentEntry)
    {
      ParentEntry = IORegistryEntryCreateCFProperties(parent, &properties, kCFAllocatorDefault, 0);
      IOObjectRelease(parent);
    }
  }

  else
  {
    ParentEntry = IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0);
  }

  if (ParentEntry)
  {
    properties = 0;
  }

  IOObjectRelease(v5);
  return properties;
}

char *sub_59A00(char **a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (!v2)
  {
    return (&dword_0 + 1);
  }

  v5 = *(a1 + 3) + v2;
  if (v5 <= *(a1 + 2))
  {
    result = *a1;
    if (!*a1)
    {
      return result;
    }

    goto LABEL_7;
  }

  *(a1 + 2) = v5;
  v6 = *a1;
  if (*a1)
  {
    result = malloc_type_realloc(v6, 8 * v5, 0x80040B8603338uLL);
  }

  else
  {
    result = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  }

  *a1 = result;
  if (result)
  {
LABEL_7:
    memmove(&result[8 * *(a1 + 3)], *a2, 8 * *(a2 + 12));
    *(a1 + 3) += *(a2 + 12);
    return (&dword_0 + 1);
  }

  return result;
}

void sub_59ABC(CFMutableStringRef theString, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (!v6)
      {
        CFStringAppendFormat(theString, 0, @"%04x ", v5);
      }

      v8 = *(a2 + v5);
      if (v8 < 0)
      {
        v9 = __maskrune(*(a2 + v5), 0x40000uLL);
      }

      else
      {
        v9 = _DefaultRuneLocale.__runetype[v8] & 0x40000;
      }

      v10 = *(a2 + v5);
      if (v9)
      {
        v11 = v8;
      }

      else
      {
        v11 = 46;
      }

      v16[v6] = v11;
      CFStringAppendFormat(theString, 0, @" %02x", v10);
      if (v6 == 7)
      {
        CFStringAppendFormat(theString, 0, @" ");
        v6 = 8;
      }

      else if (v6 == 15)
      {
        v17 = 0;
        CFStringAppendFormat(theString, 0, @"  %s\n", v16);
        v6 = 0;
      }

      else
      {
        ++v6;
      }

      ++v5;
    }

    while (a3 != v5);
    if (v6)
    {
      if (v6 >= 8)
      {
        v12 = "";
      }

      else
      {
        v12 = " ";
      }

      if (v6 <= 15)
      {
        v13 = &v16[v6];
        v14 = v6 + 1;
        do
        {
          CFStringAppendFormat(theString, 0, @"   ");
          *v13++ = 32;
        }

        while (v14++ != 16);
      }

      v17 = 0;
      CFStringAppendFormat(theString, 0, @"  %s%s\n", v12, v16);
    }
  }
}

void sub_59CB0(CFMutableStringRef theString, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = 0;
    v10 = a3;
    do
    {
      if (v9)
      {
        if (a4 != 32 || (v9 & 7) != 0)
        {
          v11[0] = a4;
          v11[1] = 0;
        }

        else
        {
          strcpy(v11, "  ");
        }
      }

      else
      {
        v11[0] = 0;
      }

      CFStringAppendFormat(theString, 0, @"%s%02x", v11, *(a2 + v9++));
    }

    while (v10 != v9);
  }
}

uint64_t sub_59D78(const char *a1, mode_t a2)
{
  result = mkdir(a1, a2);
  if (result)
  {
    if (*__error() == 17)
    {
      return 0;
    }

    if (*__error() == 2)
    {
      v7[0] = 0;
      if (a1)
      {
        v5 = a1;
        while (*v5 == 47)
        {
          v6 = strchr(v5 + 1, 47);
          v5 = v6;
          if (!v6)
          {
            v5 = &a1[strlen(a1)];
          }

          __strncpy_chk();
          v7[v5 - a1] = 0;
          if (mkdir(v7, a2) && *__error() != 17)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0;
          if (!v6 || !v5)
          {
            return result;
          }
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

char *sub_59EA8(char *__str, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v5 = __str;
  if (a4 == 6)
  {
    return snprintf(__str, a2, "%02x:%02x:%02x:%02x:%02x:%02x", *a3);
  }

  if (a4 == 8)
  {
    return snprintf(__str, a2, "%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x", *a3, a3[1]);
  }

  if (a4 >= 1)
  {
    v6 = 0;
    v7 = a4;
    do
    {
      v8 = a2;
      if (v6)
      {
        v9 = ":%02x";
      }

      else
      {
        v9 = "%02x";
      }

      if (v6)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      if (v6)
      {
        v11 = -3;
      }

      else
      {
        v11 = -2;
      }

      __str = snprintf(v5, a2, v9, a3[v6]);
      v5 += v10;
      a2 = v8 + v11;
      ++v6;
    }

    while (v7 != v6);
  }

  return __str;
}

uint64_t sub_5A000(int a1, int a2, void *a3, uint64_t a4, int a5, int a6)
{
  v6 = a5;
  v11[0] = a4;
  v11[1] = a5;
  v10.msg_name = a3;
  *(&v10.msg_namelen + 1) = 0;
  v10.msg_namelen = 28;
  v10.msg_iov = v11;
  *(&v10.msg_iovlen + 1) = 0;
  v10.msg_iovlen = 1;
  v10.msg_control = &v12;
  if (a6 >= 0)
  {
    v7 = 48;
  }

  else
  {
    v7 = 32;
  }

  v10.msg_controllen = v7;
  v10.msg_flags = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 46;
  v12 = 0x2900000020;
  v16 = 0;
  LODWORD(v15) = a2;
  if ((a6 & 0x80000000) == 0)
  {
    *(&v15 + 4) = 0x2900000010;
    HIDWORD(v15) = 47;
    v16 = a6;
  }

  v8 = sendmsg(a1, &v10, 0);
  result = 0;
  if (v8 != v6)
  {
    return *__error();
  }

  return result;
}

void sub_5A0F4()
{
  if (qword_702E8)
  {
    SCPreferencesSynchronize(qword_702E8);
    v0 = vars8;
  }

  v1 = qword_702F0;
  if (qword_702F0)
  {

    SCPreferencesSynchronize(v1);
  }
}

const __SCPreferences *sub_5A138(NSObject *a1, uint64_t (*a2)(void))
{
  result = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"com.apple.IPConfiguration.control.plist");
  qword_702E8 = result;
  if (a1)
  {
    if (a2)
    {
      off_702F8 = a2;
      SCPreferencesSetCallback(result, sub_20640, 0);
      SCPreferencesSetDispatchQueue(qword_702E8, a1);
      _scprefs_observer_watch();
      return qword_702E8;
    }
  }

  return result;
}

const void *sub_5A1D8(const void *cf2)
{
  if (cf2)
  {
    v1 = cf2;
    v2 = &off_6A890;
    v3 = 3;
    while (!CFEqual(*v2, v1))
    {
      v2 += 2;
      if (!--v3)
      {
        return 0;
      }
    }

    return *(v2 - 2);
  }

  return cf2;
}

__CFString *sub_5A23C(int a1)
{
  v1 = &off_6A890;
  v2 = 3;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t sub_5A270(uint64_t a1)
{
  v2 = sub_2065C(@"Verbose");
  if (!v2)
  {
    return a1;
  }

  return CFBooleanGetValue(v2);
}

const void *sub_5A2C0()
{
  v0 = qword_702F0;
  if (!qword_702F0)
  {
    v0 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"/Library/Managed Preferences/mobile/com.apple.IPConfiguration.control.plist");
    qword_702F0 = v0;
  }

  Value = SCPreferencesGetValue(v0, @"AWDReportInterfaceTypes");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v3 = qword_702E8;
    if (!qword_702E8)
    {
      v3 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"com.apple.IPConfiguration.control.plist");
      qword_702E8 = v3;
    }

    Value = SCPreferencesGetValue(v3, @"AWDReportInterfaceTypes");
    v4 = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) != v4)
    {
      Value = 0;
    }
  }

  return sub_5A1D8(Value);
}

uint64_t sub_5A390(uint64_t a1)
{
  v2 = sub_2065C(@"CellularCLAT46AutoEnable");
  if (!v2)
  {
    return a1;
  }

  return CFBooleanGetValue(v2);
}

uint64_t sub_5A3E0(uint64_t a1)
{
  v2 = sub_2065C(@"IPv6LinkLocalModifierExpires");
  if (!v2)
  {
    return a1;
  }

  return CFBooleanGetValue(v2);
}

uint64_t sub_5A430()
{
  valuePtr = 0;
  v0 = qword_702F0;
  if (!qword_702F0)
  {
    v0 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"/Library/Managed Preferences/mobile/com.apple.IPConfiguration.control.plist");
    qword_702F0 = v0;
  }

  Value = SCPreferencesGetValue(v0, @"DHCPDUIDType");
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    goto LABEL_9;
  }

  v3 = qword_702E8;
  if (!qword_702E8)
  {
    v3 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"com.apple.IPConfiguration.control.plist");
    qword_702E8 = v3;
  }

  Value = SCPreferencesGetValue(v3, @"DHCPDUIDType");
  v4 = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == v4)
  {
LABEL_9:
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

CFComparisonResult sub_5A518(const void *a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1)
  {
    return 1;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 1;
  }

  v5 = kSCPropNetDNSEncryptedServerServicePriority;
  Value = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerServicePriority);
  v7 = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    return 1;
  }

  v8 = CFDictionaryGetTypeID();
  if (!a2)
  {
    return -1;
  }

  if (CFGetTypeID(a2) != v8)
  {
    return -1;
  }

  v9 = CFDictionaryGetValue(a2, v5);
  v10 = CFNumberGetTypeID();
  if (!v9 || CFGetTypeID(v9) != v10)
  {
    return -1;
  }

  return CFNumberCompare(Value, v9, 0);
}

void sub_5A618(const __CFArray *a1, const void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArrayAppendValue(Mutable, a2);
  sub_579F0(a1, Mutable, sub_5A694);

  CFRelease(Mutable);
}

uint64_t sub_5A694(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v35 = 0;
  Count = CFDictionaryGetCount(a1);
  if (Count != CFDictionaryGetCount(a2))
  {
    goto LABEL_13;
  }

  v5 = CFDictionaryGetCount(a1);
  v6 = kSCPropNetDNSEncryptedServerAuthenticationDomainName;
  v7 = v5 == 1 && CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerAuthenticationDomainName) && CFDictionaryGetValue(a2, v6) != 0;
  Value = CFDictionaryGetValue(a1, v6);
  v9 = CFDictionaryGetValue(a2, v6);
  v10 = CFStringCompare(Value, v9, 0);
  v11 = v10;
  if (v7 || v10)
  {
    goto LABEL_14;
  }

  v12 = kSCPropNetDNSEncryptedServerServicePriority;
  v13 = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerServicePriority);
  v14 = CFDictionaryGetValue(a2, v12);
  if (!v13 || v14 == 0)
  {
    goto LABEL_13;
  }

  v17 = CFNumberCompare(v13, v14, 0);
  v11 = v17;
  if (v17)
  {
    goto LABEL_14;
  }

  v18 = kSCPropNetDNSEncryptedServerAddresses;
  v19 = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerAddresses);
  v20 = CFDictionaryGetValue(a2, v18);
  v11 = -1;
  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = v20;
  if (!v20)
  {
    goto LABEL_14;
  }

  v22 = CFArrayGetCount(v19);
  if (v22 != CFArrayGetCount(v21))
  {
LABEL_13:
    v11 = -1;
    goto LABEL_14;
  }

  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  v35 = Mutable;
  if (CFArrayGetCount(v19) >= 1)
  {
    v24 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v19, v24);
      CFSetAddValue(Mutable, ValueAtIndex);
      ++v24;
    }

    while (v24 < CFArrayGetCount(v19));
  }

  if (CFArrayGetCount(v21) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = CFArrayGetValueAtIndex(v21, v26);
      if (!CFSetContainsValue(Mutable, v27))
      {
        goto LABEL_13;
      }
    }

    while (++v26 < CFArrayGetCount(v21));
  }

  v28 = kSCPropNetDNSEncryptedServerServiceParameters;
  v29 = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerServiceParameters);
  v30 = CFDictionaryGetValue(a2, v28);
  if (!(v29 | v30))
  {
    v11 = 0;
    goto LABEL_14;
  }

  v31 = v30;
  if (v29)
  {
    v32 = v30 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    goto LABEL_13;
  }

  Length = CFDataGetLength(v29);
  if (Length != CFDataGetLength(v31))
  {
    goto LABEL_13;
  }

  v36.length = CFDataGetLength(v29);
  v36.location = 0;
  v34 = CFDataFind(v29, v31, v36, 0).length;
  if (v34 == CFDataGetLength(v29))
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

LABEL_14:
  sub_41E8(&v35);
  return v11;
}

CFMutableArrayRef sub_5A958(uint64_t a1, unsigned int a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v49 = Mutable;
  if (a2 >= 1)
  {
    v5 = 0;
    v41 = a1 + 6;
    v43 = Mutable;
    v42 = a2;
    v48 = a1;
    while (1)
    {
      v50 = 0;
      v6 = a2 - v5;
      if (a2 <= v5 || v6 < 9)
      {
        break;
      }

      v7 = (v48 + v5);
      v8 = bswap32(*v7) >> 16;
      v9 = v8 - 3;
      if (v8 < 3 || v6 < v8 + 2)
      {
        break;
      }

      v11 = *(v7 + 4);
      if (!*(v7 + 4))
      {
        break;
      }

      v12 = v9 - v11;
      if (v9 < v11)
      {
        break;
      }

      v13 = v7[1];
      v14 = v7 + 5;
      v15 = sub_1AA80(v7 + 5, *(v7 + 4), 0);
      v50 = v15;
      if (!v15 || v12 < 1)
      {
        break;
      }

      v17 = &v14[v11 + 1];
      v16 = v14[v11];
      if (v12 <= v16 || (v16 & 3) != 0)
      {
        break;
      }

      v45 = v12 - 1;
      v47 = v15;
      v19 = malloc_type_malloc(v16, 0x100004052888210uLL);
      v20 = v19;
      if (!v16)
      {
        goto LABEL_39;
      }

      v21 = 0;
      v22 = 0;
      v23 = v5;
      v44 = bswap32(v13) >> 16;
      v24 = v16 >> 2;
      if (v16 >> 2 <= 1)
      {
        LODWORD(v24) = 1;
      }

      v25 = 4 * v24;
      v26 = v8 - v11 - 4;
      do
      {
        v27 = *(v17 + v21);
        v28 = bswap32(v27);
        v29 = v28 + 1 < 2 || v28 == 2130706433;
        v30 = v28 >> 28;
        if (!v29 && v30 != 14)
        {
          v19[v22++] = v27;
        }

        v21 += 4;
        v26 -= 4;
      }

      while (v25 != v21);
      if (!v22)
      {
LABEL_39:
        free(v19);
        break;
      }

      v32 = (v17 + v21);
      v33 = v45 - v21;
      v34 = (v45 - v21);
      if (v45 == v21)
      {
        v36 = 0;
      }

      else
      {
        v35 = (v45 - v21);
        v46 = v23;
        v36 = malloc_type_malloc(v35, 0x100004077774924uLL);
        memcpy(v36, v32, v34);
        LODWORD(v32) = v41 + v46 + v11 + v26 + v21;
      }

      v37 = malloc_type_malloc(0x30uLL, 0x10F004078525314uLL);
      *v37 = 0u;
      v37[1] = 0u;
      v37[2] = 0u;
      *(v37 + 2) = v44;
      *(v37 + 1) = v47;
      *(v37 + 2) = v20;
      *(v37 + 6) = v22;
      *(v37 + 4) = v36;
      *(v37 + 20) = v33;
      v38 = sub_20744(v37, 0);
      sub_20928(v37);
      v39 = v43;
      a2 = v42;
      if (!v38)
      {
        goto LABEL_41;
      }

      v5 = v32 - v48;
      sub_5A618(v43, v38);
      CFRelease(v38);
      if (v32 - v48 >= v42)
      {
        v51.length = CFArrayGetCount(v43);
        v51.location = 0;
        CFArraySortValues(v43, v51, sub_5A518, 0);
        return v39;
      }
    }

    sub_41E8(&v50);
  }

LABEL_41:
  sub_41E8(&v49);
  return v49;
}

__CFDictionary *sub_5AC3C(unsigned __int16 *a1, int a2)
{
  v31 = 0;
  v32 = 0;
  if (a2 < 23 || ((v2 = bswap32(a1[1]) >> 16, v3 = a2 - 4, (v2 - 256) >= 0xFF01u) ? (v4 = v3 >= v2) : (v4 = 0), !v4 || (v5 = *a1, v6 = a1 + 2, (v32 = sub_1AA80((a1 + 2), v2, 0)) == 0) || (v7 = v3 - v2 - 2, (v3 - v2) < 2) || ((v8 = (v6 + v2), v11 = *v8, v9 = (v8 + 1), v10 = v11, v12 = v11 >> 8, v7 >= v12) ? (v13 = (v12 & 0xF) == 0) : (v13 = 0), !v13)))
  {
    sub_41E8(&v32);
LABEL_14:
    sub_41E8(&v31);
    return v31;
  }

  v15 = malloc_type_malloc(v12, 0x1000040451B5BE8uLL);
  v16 = v15;
  if (v10 < 0x100)
  {
    goto LABEL_32;
  }

  v17 = 0;
  v18 = bswap32(v5) >> 16;
  v19 = v12 >> 4;
  if ((v12 >> 4) <= 1)
  {
    LODWORD(v19) = 1;
  }

  do
  {
    v20 = *v9++;
    v21 = v20;
    v22 = ~v20;
    v23 = v20 | DWORD1(v20) | DWORD2(v20);
    v24 = HIDWORD(v20);
    v25 = (v23 | HIDWORD(v20)) == 0;
    if (v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24 == 0x1000000;
    }

    v27 = v26;
    if (v22 && !v25 && (v27 & 1) == 0)
    {
      *(v15 + v17++) = v21;
    }

    LOWORD(v7) = v7 - 16;
    LODWORD(v19) = v19 - 1;
  }

  while (v19);
  if (!v17)
  {
LABEL_32:
    sub_41E8(&v32);
    if (v16)
    {
      free(v16);
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v28 = malloc_type_malloc(v7, 0x100004077774924uLL);
    memcpy(v28, v9, v7);
  }

  else
  {
    v28 = 0;
  }

  v29 = malloc_type_malloc(0x30uLL, 0x10F004078525314uLL);
  *(v29 + 6) = 0u;
  *(v29 + 22) = 0u;
  v29[2] = 0u;
  *v29 = 1;
  *(v29 + 2) = v18;
  *(v29 + 1) = v32;
  *(v29 + 2) = v16;
  *(v29 + 6) = v17;
  *(v29 + 4) = v28;
  *(v29 + 20) = v7;
  v30 = sub_20744(v29, 1);
  sub_20928(v29);
  return v30;
}

__CFDictionary *sub_5AE5C(unsigned __int16 *a1, int a2)
{
  v32 = 0;
  v33 = 0;
  if (a2 < 29 || ((v4 = bswap32(a1[3]) >> 16, v5 = a2 - 8, (v4 - 256) >= 0xFF01u) ? (v6 = v5 >= v4) : (v6 = 0), !v6 || (v7 = *a1, (v33 = sub_1AA80((a1 + 4), v4, 0)) == 0) || (v8 = v5 - v4 - 2, (v5 - v4) < 2) || ((v9 = *(a1 + v4 + 8), v10 = v9 >> 8, v8 >= (v9 >> 8)) ? (v11 = ((v9 >> 8) & 0xF) == 0) : (v11 = 0), !v11)))
  {
    sub_41E8(&v33);
LABEL_14:
    sub_41E8(&v32);
    return v32;
  }

  v13 = malloc_type_malloc(v9 >> 8, 0x1000040451B5BE8uLL);
  v14 = v13;
  if (v9 < 0x100)
  {
    goto LABEL_17;
  }

  v15 = 0;
  v16 = 0;
  v17 = bswap32(v7) >> 16;
  v18 = v10 >> 4;
  if (v10 >> 4 <= 1)
  {
    LODWORD(v18) = 1;
  }

  v19 = 16 * v18;
  v20 = a1 + v4;
  do
  {
    v21 = *&v20[v15 + 10];
    v22 = v21 | HIDWORD(*&v20[v15 + 10]) | *&v20[v15 + 18];
    v23 = (v22 | HIDWORD(v21)) == 0;
    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = HIDWORD(v21) == 0x1000000;
    }

    v25 = v24;
    if (v20[v15 + 10] != -1 && !v23 && (v25 & 1) == 0)
    {
      *(v13 + v16++) = v21;
    }

    v15 += 16;
  }

  while (v19 != v15);
  if (!v16 || (v8 - v15) < 2 || (v26 = *(a1 + v4 + v15 + 10), a2 - v4 - v15 - 12 < bswap32(v26) >> 16))
  {
LABEL_17:
    sub_41E8(&v33);
    if (v14)
    {
      free(v14);
    }

    goto LABEL_14;
  }

  v27 = __rev16(v26);
  if (*(a1 + v4 + v15 + 10))
  {
    v28 = a1 + v4 + v15;
    v29 = malloc_type_malloc(v27, 0x100004077774924uLL);
    memcpy(v29, v28 + 12, v27);
  }

  else
  {
    v29 = 0;
  }

  v30 = malloc_type_malloc(0x30uLL, 0x10F004078525314uLL);
  *(v30 + 6) = 0u;
  *(v30 + 22) = 0u;
  v30[2] = 0u;
  *v30 = 2;
  *(v30 + 2) = v17;
  *(v30 + 1) = v33;
  *(v30 + 2) = v14;
  *(v30 + 6) = v16;
  *(v30 + 4) = v29;
  *(v30 + 20) = v27;
  v31 = sub_20744(v30, 2);
  sub_20928(v30);
  return v31;
}

const char *sub_5B0C8(unsigned int a1)
{
  if (a1 > 4)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_6A8F8)[a1];
  }
}

void sub_5B0EC(CFMutableStringRef theString, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 < 2)
  {
    v6 = 2;
LABEL_3:
    CFStringAppendFormat(theString, 0, @"DUID too short (%d < %d), Data = { ", a3, v6);
    sub_1A9BC(theString, a2, v3, 32);

    CFStringAppendCString(theString, " }", 0x600u);
    return;
  }

  v7 = bswap32(*a2) >> 16;
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        if (a3 >= 0x12)
        {
          memset(out, 0, 37);
          uuid_unparse(a2 + 2, out);
          CFStringAppendFormat(theString, 0, @"DUID UUID %s", out);
          return;
        }

        v6 = 18;
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v8 = a3 - 4;
    if (a3 < 4)
    {
      v6 = 4;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID LL HW %d Addr ", bswap32(a2[1]) >> 16);
    v10 = a2 + 2;
LABEL_24:
    v9 = theString;
    v11 = v8;
    v12 = 58;
    goto LABEL_25;
  }

  if (v7 == 1)
  {
    v8 = a3 - 8;
    if (a3 < 8)
    {
      v6 = 8;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID LLT HW %d Time %u Addr ", bswap32(a2[1]) >> 16, bswap32(*(a2 + 1)));
    v10 = a2 + 4;
    goto LABEL_24;
  }

  if (v7 == 2)
  {
    v8 = a3 - 6;
    if (a3 < 6)
    {
      v6 = 6;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID EN Num %d Id ", __rev16(a2[2]));
    v10 = a2 + 3;
    goto LABEL_24;
  }

LABEL_15:
  CFStringAppendFormat(theString, 0, @"DUID (unrecognized type=%d): ", v7);
  v9 = theString;
  v10 = a2;
  v11 = v3;
  v12 = 32;
LABEL_25:

  sub_1A9BC(v9, v10, v11, v12);
}

BOOL sub_5B3BC(unsigned __int16 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v2 = (bswap32(*a1) >> 16) - 1;
  return v2 <= 3u && dword_5D280[v2] <= a2;
}

__CFData *sub_5B404(const void *a1, int a2, unsigned int a3)
{
  v5 = a2;
  v6 = a2 + 4;
  Mutable = CFDataCreateMutable(0, v6);
  CFDataSetLength(Mutable, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 768;
  *(MutableBytePtr + 1) = bswap32(a3) >> 16;
  memcpy(MutableBytePtr + 4, a1, v5);
  return Mutable;
}

__CFData *sub_5B48C(const void *a1, int a2, unsigned int a3)
{
  v5 = a2;
  v6 = a2 + 8;
  Mutable = CFDataCreateMutable(0, v6);
  CFDataSetLength(Mutable, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 256;
  *(MutableBytePtr + 1) = bswap32(a3) >> 16;
  memcpy(MutableBytePtr + 8, a1, v5);
  memset(&v11, 0, sizeof(v11));
  v11.tm_year = 100;
  v11.tm_mday = 1;
  v9 = timegm(&v11);
  *(MutableBytePtr + 1) = bswap32(time(0) - v9);
  return Mutable;
}

__CFData *sub_5B560(const unsigned __int8 *a1)
{
  Mutable = CFDataCreateMutable(0, 18);
  CFDataSetLength(Mutable, 18);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 1024;
  uuid_copy(MutableBytePtr + 2, a1);
  return Mutable;
}

const char *DHCPv6MessageTypeName(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "<unknown";
  }

  else
  {
    return (&off_6A920)[a1];
  }
}

_BYTE *DHCPv6PacketSetTransactionID(_BYTE *result, unsigned int a2)
{
  v2 = bswap32(a2);
  result[1] = BYTE1(v2);
  result[2] = BYTE2(v2);
  result[3] = HIBYTE(v2);
  return result;
}

void DHCPv6PacketPrintToString(CFMutableStringRef theString, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 > 3)
  {
    v6 = *a2;
    v7 = DHCPv6MessageTypeName(*a2);
    CFStringAppendFormat(theString, 0, @"DHCPv6 %s (%d) Transaction ID 0x%06x Length %d\n", v7, v6, bswap32((a2[1] << 8) | (a2[2] << 16) | (a2[3] << 24)), a3);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"Packet too short %d < %d\n", a3, 4);
  }
}

void DHCPv6PacketFPrint(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  DHCPv6PacketPrintToString(Mutable, a2, a3);
  SCPrint();

  CFRelease(Mutable);
}

uint64_t sub_5B744(int a1)
{
  result = 1;
  switch(a1)
  {
    case 1:
    case 2:
      result = 2;
      break;
    case 3:
      result = 7;
      break;
    case 4:
    case 7:
    case 9:
    case 10:
    case 11:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 40:
      return result;
    case 5:
      result = 8;
      break;
    case 6:
    case 8:
      result = 3;
      break;
    case 12:
    case 22:
    case 23:
      result = 5;
      break;
    case 13:
      result = 9;
      break;
    case 14:
      result = 0;
      break;
    case 21:
    case 24:
      result = 6;
      break;
    case 25:
      result = 11;
      break;
    case 26:
      result = 12;
      break;
    case 39:
      result = 14;
      break;
    case 41:
    case 42:
      goto LABEL_7;
    default:
      if (a1 == 103)
      {
LABEL_7:
        result = 10;
      }

      else if (a1 == 144)
      {
        result = 13;
      }

      else
      {
        result = 1;
      }

      break;
  }

  return result;
}

const char *sub_5B7F0(int a1)
{
  v1 = a1 - 1;
  result = "CLIENTID";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "SERVERID";
      break;
    case 2:
      result = "IA_NA";
      break;
    case 3:
      result = "IA_TA";
      break;
    case 4:
      result = "IAADDR";
      break;
    case 5:
      result = "ORO";
      break;
    case 6:
      result = "PREFERENCE";
      break;
    case 7:
      result = "ELAPSED_TIME";
      break;
    case 8:
      result = "RELAY_MSG";
      break;
    case 9:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
      goto LABEL_6;
    case 10:
      result = "AUTH";
      break;
    case 11:
      result = "UNICAST";
      break;
    case 12:
      result = "STATUS_CODE";
      break;
    case 13:
      result = "RAPID_COMMIT";
      break;
    case 14:
      result = "USER_CLASS";
      break;
    case 15:
      result = "VENDOR_CLASS";
      break;
    case 16:
      result = "VENDOR_OPTS";
      break;
    case 17:
      result = "INTERFACE_ID";
      break;
    case 18:
      result = "RECONF_MSG";
      break;
    case 19:
      result = "RECONF_ACCEPT";
      break;
    case 20:
      result = "SIP_SERVER_D";
      break;
    case 21:
      result = "SIP_SERVER_A";
      break;
    case 22:
      result = "DNS_SERVERS";
      break;
    case 23:
      result = "DOMAIN_LIST";
      break;
    case 24:
      result = "IA_PD";
      break;
    case 25:
      result = "IAPREFIX";
      break;
    case 38:
      result = "CLIENT_FQDN";
      break;
    case 40:
      result = "POSIX_TIMEZONE";
      break;
    case 41:
      result = "TZDB_TIMEZONE";
      break;
    default:
      if ("CLIENTID" == 103)
      {
        result = "CAPTIVE_PORTAL_URL";
      }

      else if ("CLIENTID" == 144)
      {
        result = "DNS_ENCRYPTED_SERVERS";
      }

      else
      {
LABEL_6:
        result = "<unknown>";
      }

      break;
  }

  return result;
}

uint64_t sub_5B99C(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = 0;
  return result;
}

BOOL sub_5B9B0(uint64_t a1, unsigned int a2, size_t __len, void *__src, char *a5)
{
  v6 = *(a1 + 8) - *(a1 + 12);
  v7 = __len + 4;
  *a5 = 0;
  if (v6 < __len + 4)
  {
    v11 = sub_5B7F0(a2);
    snprintf(a5, 0x100uLL, "No room for option %s (%d), %d < %d", v11, a2, v6, v7);
  }

  else
  {
    v9 = (*a1 + *(a1 + 12));
    *v9 = __rev16(a2);
    v9[1] = __rev16(__len);
    if (__len)
    {
      memmove(v9 + 2, __src, __len);
    }

    *(a1 + 12) += v7;
  }

  return v6 >= v7;
}

BOOL sub_5BA74(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v6 = &v11 - v5;
  if (v3 >= 1)
  {
    v7 = v3;
    v8 = v6;
    do
    {
      v9 = *v2++;
      *v8++ = bswap32(v9) >> 16;
      --v7;
    }

    while (v7);
  }

  return sub_5B9B0(v1, 6u, 2 * (v3 & 0x7FFFu), v6, v4);
}

_OWORD *sub_5BB1C(unsigned __int16 *a1, signed int a2, char *a3)
{
  v10 = 0uLL;
  sub_157D0(&v10);
  if (a2 >= 4)
  {
    v7 = a1;
    while (1)
    {
      v8 = (bswap32(v7[1]) >> 16) + 4;
      v6 = a2 - v8;
      if (a2 < v8)
      {
        break;
      }

      sub_157D8(&v10, v7);
      v7 = (v7 + v8);
      a2 -= v8;
      if (v6 < 4)
      {
        goto LABEL_6;
      }
    }

    if (a3)
    {
      sub_5B7F0(bswap32(*v7) >> 16);
      snprintf(a3, 0x100uLL, "truncated option %s (%d) at offset %d, left %d < need %d");
    }
  }

  else
  {
    v6 = a2;
LABEL_6:
    if (!v6)
    {
      result = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
      *result = v10;
      return result;
    }

    if (a3)
    {
      snprintf(a3, 0x100uLL, "truncated buffer at offset %d\n");
    }
  }

  sub_1595C(&v10);
  return 0;
}

_OWORD *sub_5BC3C(uint64_t a1, int a2, char *a3)
{
  v3 = __OFSUB__(a2, 4);
  v4 = a2 - 4;
  if (v4 < 0 != v3)
  {
    return 0;
  }

  else
  {
    return sub_5BB1C((a1 + 4), v4, a3);
  }
}

void sub_5BC54(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    sub_1595C(v1);

    free(v1);
  }
}

void DHCPv6OptionListFPrint(uint64_t a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  sub_20AD8(Mutable, a2, 0);
  SCPrint();

  CFRelease(Mutable);
}

const char *sub_5BD28(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_6A990)[a1];
  }
}

uint64_t sub_5BD4C(uint64_t a1, _WORD *a2, unsigned __int16 **a3, unsigned int *a4)
{
  v19[0] = 0;
  v7 = sub_1D258(a1, 13, v19, 0);
  if (!v7)
  {
    v9 = 0;
    LOWORD(v11) = 0;
    goto LABEL_5;
  }

  v8 = v19[0];
  v9 = v19[0] - 2;
  if (v19[0] >= 2)
  {
    v10 = *v7++;
    v11 = bswap32(v10) >> 16;
LABEL_5:
    v12 = 1;
    goto LABEL_9;
  }

  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v13 = _os_log_pack_size();
    v14 = &v19[-1] - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __error();
    v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "DHCPv6 StatusCode option too short %d < %d", v18, v19[1]);
    *v16 = 67109376;
    *(v16 + 4) = v8;
    *(v16 + 8) = 1024;
    *(v16 + 10) = 2;
    __SC_log_send();
    LOWORD(v11) = 1;
    v12 = 0;
    v9 = 0;
    v7 = 0;
  }

  else
  {
    v12 = 0;
    v9 = 0;
    v7 = 0;
    LOWORD(v11) = 1;
  }

LABEL_9:
  *a2 = v11;
  if (a4)
  {
    *a4 = v9;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return v12;
}

CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions)
{
  v6 = _CFDataFind(theData, dataToFind, searchRange, compareOptions);
  length = v6.length;
  location = v6.location;
  result.length = length;
  result.location = location;
  return result;
}