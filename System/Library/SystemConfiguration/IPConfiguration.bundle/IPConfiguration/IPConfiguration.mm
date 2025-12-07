uint64_t sub_B18(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    if (*(v1 + 52))
    {
      *(v1 + 52) = 0;
      return v2(*(v1 + 16), *(v1 + 24), *(v1 + 32));
    }
  }

  return result;
}

void sub_B40(_DWORD *a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v84 = current_time;
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  if (a2 == 5)
  {
    LODWORD(v85[0]) = 0;
    v82 = 0;
    v83 = 0;
    HIDWORD(v81) = 0;
    v25 = sub_280D8(a3, *(v7 + 2332), v8, &v83, &v82 + 1);
    v26 = HIDWORD(v82);
    if (v25)
    {
      v27 = HIDWORD(v82) == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27 && v83 == 2)
    {
      if (dword_70140 && sub_A694(a1) && !*(v7 + 44) && sub_29624(a3 + 16, v85))
      {
        sub_29688(a1, 0, v85);
      }

      else if ((*(*a3 + 16) + 1) >= 2)
      {
        v29 = dword_70018;
        dhcp_get_lease_from_options(a3 + 16, &v83 + 1, &v82, &v81 + 1);
        v30 = sub_5883C(a3 + 16, off_70010, dword_70018);
        v31 = *(*a3 + 16);
        v32 = bswap32(v31);
        if (v31 == 65193)
        {
          v33 = 0;
        }

        else
        {
          v33 = 1000;
        }

        v34 = v32 >> 20 == 2753 || HIBYTE(v32) == 10;
        v35 = HIWORD(v32);
        if (v34 || v35 == 49320)
        {
          v33 = 100;
        }

        v37 = v33 + v30;
        if (!*(v7 + 1724) || v37 > *(v7 + 1728))
        {
          sub_2ADA0(a1);
          sub_58494(v7 + 208);
          memmove((v7 + 224), *a3, *(a3 + 8));
          v38 = *(a3 + 8);
          *(v7 + 1724) = v38;
          *(v7 + 1728) = v37;
          sub_585E0((v7 + 208), v7 + 224, v38, 0);
          *(v7 + 1732) = *(*a3 + 16);
          *(v7 + 1736) = v26;
          sub_28AEC(a1, "INIT", HIDWORD(v83), v82, HIDWORD(v81), current_time);
          if (v37 == v29 + 1000 || sub_2990C(v8))
          {
LABEL_62:
            sub_1B0D8(a1, 0, 0);
            return;
          }

          if (!*(v7 + 44))
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v39 = _os_log_pack_size();
              v40 = &v79 - ((__chkstk_darwin(v39) + 15) & 0xFFFFFFFFFFFFFFF0);
              v41 = __error();
              v42 = _os_log_pack_fill(v40, v39, *v41, &dword_0, "DHCP %s: INIT gathering began at %g", v79, v80);
              nullsub_1();
              v43 = current_time - *(v7 + 1752);
              *v42 = 136315394;
              *(v42 + 4) = v44;
              *(v42 + 12) = 2048;
              *(v42 + 14) = v43;
              __SC_log_send();
            }

            *(v7 + 44) = 1;
            timer_callout_set(*(v7 + 1760), sub_B40, a1, 2, 0, G_gather_secs);
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

      HIDWORD(v83) = 10974720;
      memset(v85, 0, sizeof(v85));
      v9 = *(v7 + 1744);
      sub_9D7C(a1, 3u);
      *v7 = 1;
      *(v7 + 200) = 0;
      sub_8CD0(a1);
      if (*(v7 + 1776) == 0.0)
      {
        *(v7 + 1776) = current_time;
      }

      v10 = *(v7 + 168);
      v11 = sub_A694(a1);
      if (v10)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10 != 0;
      }

      v14 = sub_A840(v8);
      v15 = sub_638C(v8);
      v16 = sub_AD1C(v8);
      v17 = sub_A848((v7 + 1784), 1, v14, v15, v16, *(v7 + 24), *(v7 + 32), v13, v85);
      *(v7 + 176) = v17;
      if (!v17)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_55;
        }

        v45 = _os_log_pack_size();
        v46 = &v79 - ((__chkstk_darwin(v45) + 15) & 0xFFFFFFFFFFFFFFF0);
        v47 = *__error();
        v48 = _os_log_pack_fill(v46, v45, v47, &dword_0, "DHCP %s: INIT make_dhcp_request failed");
LABEL_53:
        v52 = v48;
        nullsub_1();
        *v52 = 136315138;
        *(v52 + 4) = v53;
        goto LABEL_54;
      }

      if (sub_ADA4(v85, 51, 4, &v83 + 4))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v18 = _os_log_pack_size();
          v19 = &v79 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
          v20 = __error();
          v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "DHCP %s: INIT dhcpoa_add lease time failed, %s", v79, *&v80);
          nullsub_1();
          v23 = v22;
          v24 = sub_588A8(v85);
          *v21 = 136315394;
          *(v21 + 4) = v23;
          *(v21 + 12) = 2080;
          *(v21 + 14) = v24;
LABEL_54:
          __SC_log_send();
        }

LABEL_55:
        sub_25B1C(a1, 5u);
        return;
      }

      sub_B1BC(a1, v85);
      if (sub_ADA4(v85, 255, 0, 0))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_55;
        }

        v49 = _os_log_pack_size();
        v50 = &v79 - ((__chkstk_darwin(v49) + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = *__error();
        v48 = _os_log_pack_fill(v50, v49, v51, &dword_0, "DHCP %s: INIT failed to terminate options");
        goto LABEL_53;
      }

      v54 = sub_B830(v85) + 240;
      if (v54 <= 0x12C)
      {
        v54 = 300;
      }

      *(v7 + 184) = v54;
      if (v9 != 6)
      {
        *(v7 + 1752) = current_time;
      }

      *(v7 + 2340) = G_initial_wait_secs;
      *(v7 + 1768) = 0;
      ++*(v7 + 2332);
      *(v7 + 1728) = 0;
      *(v7 + 44) = 0;
      *(v7 + 48) = 0;
      sub_B744();
      bootp_client_enable_receive(*(v7 + 16), sub_B40, a1, 5);
      sub_BC60(a1, 1);
    }

    if (*(v7 + 44) == 1)
    {
      goto LABEL_62;
    }

    v55 = *(v7 + 1768);
    v56 = v55 + 1;
    *(v7 + 1768) = v55 + 1;
    if (v55 >= 1)
    {
      v57 = sub_169C(a1);
      if (!HIDWORD(v57) && v57)
      {
        sub_263C8(a1);
        return;
      }

      v56 = *(v7 + 1768);
    }

    if (v56 > dword_70034 && !sub_2440(a1))
    {
      sub_16C0(a1, 0, &v84);
    }

    v58 = sub_2440(a1);
    v59 = *(v7 + 1768);
    if (!v58)
    {
      if (v59 > dword_7002C && dword_70024 != 0)
      {
        sub_4A20(a1, 9);
        sub_4884(a1, 1);
        v59 = *(v7 + 1768);
      }

      if (v59 > dword_70030)
      {
        sub_5A04(a1);
        v59 = *(v7 + 1768);
      }
    }

    if (v59 <= G_max_retries + 1)
    {
      v61 = *(v7 + 176);
      *(v61 + 4) = bswap32(*(v7 + 2332));
      *(v61 + 8) = __rev16((v84 - *(v7 + 1752)));
      if ((bootp_client_transmit(*(v7 + 16), 0xFFFFFFFF, 0, word_70044, word_70020, v61, *(v7 + 184)) & 0x80000000) != 0)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v62 = _os_log_pack_size();
          v63 = &v79 - ((__chkstk_darwin(v62) + 15) & 0xFFFFFFFFFFFFFFF0);
          v64 = __error();
          v65 = _os_log_pack_fill(v63, v62, *v64, &dword_0, "DHCP %s: INIT transmit failed", v79);
          nullsub_1();
          *v65 = 136315138;
          *(v65 + 4) = v66;
          __SC_log_send();
        }
      }

      v67 = *(v7 + 2340);
      v68 = sub_65CC(0, 999999);
      v69 = v68;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v70 = _os_log_pack_size();
        v79 = &v79;
        v71 = __chkstk_darwin(v70);
        *&v80 = v68;
        v72 = &v79 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
        v73 = __error();
        v74 = _os_log_pack_fill(v72, v70, *v73, &dword_0, "DHCP %s: INIT waiting at %g for %ld.%06d", v79, v80, v81, v82);
        nullsub_1();
        v75 = v84 - *(v7 + 1752);
        *v74 = 136315906;
        *(v74 + 4) = v76;
        *(v74 + 12) = 2048;
        *(v74 + 14) = v75;
        *(v74 + 22) = 2048;
        *(v74 + 24) = v67;
        *(v74 + 32) = 1024;
        *(v74 + 34) = v68;
        v69 = LODWORD(v80);
        __SC_log_send();
      }

      timer_set_relative(*(v7 + 1760), v67, v69, sub_B40, a1, 2, 0);
      v77 = 2 * *(v7 + 2340);
      if (v77 >= G_max_wait_secs)
      {
        v77 = G_max_wait_secs;
      }

      *(v7 + 2340) = v77;
    }

    else if (sub_2440(a1))
    {
      sub_28E1C(a1, 0, 0);
    }

    else
    {
      v78 = sub_1688(a1);
      if (dword_70024)
      {
        sub_4884(a1, 1);
      }

      sub_8CD0(a1);
      sub_102A4(a1, 9u);
      sub_BC60(a1, 0);
      timer_set_relative(*(v78 + 1760), 60, 0, sub_B40, a1, 0, 0);
    }
  }
}

void sub_16C0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_1688(a1);
  v7 = sub_1690(a1);
  if (a2 == 6)
  {
    if (*(a3 + 8))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_12:
        if (!*(v6 + 48))
        {
          return;
        }

        sub_102A4(a1, 0xBu);
        v19 = a1;
        v20 = 1;
        goto LABEL_14;
      }

      v12 = _os_log_pack_size();
      v13 = &v98 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "DHCP %s: ARP detect ROUTER failed, %s", v98, *(&v98 + 1));
      nullsub_1();
      v17 = v16;
      v18 = sub_21F58(*(v6 + 8));
      *v15 = 136315394;
      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      *(v15 + 14) = v18;
LABEL_11:
      __SC_log_send();
      goto LABEL_12;
    }

    if (!*(a3 + 12))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_12;
      }

      v47 = _os_log_pack_size();
      v48 = &v98 - ((__chkstk_darwin(v47) + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = __error();
      v50 = _os_log_pack_fill(v48, v47, *v49, &dword_0, "DHCP %s: ARP detect router got no response", v98);
      nullsub_1();
      *v50 = 136315138;
      *(v50 + 4) = v51;
      goto LABEL_11;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v21 = _os_log_pack_size();
      v22 = &v98 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __error();
      v24 = _os_log_pack_fill(v22, v21, *v23, &dword_0, "DHCP %s: got response for sender %d.%d.%d.%d target %d.%d.%d.%d", v98, DWORD2(v98), v99, v100, v101, v103, v104, v105, v106);
      nullsub_1();
      v25 = *(a3 + 16);
      v26 = *(a3 + 17);
      v27 = *(a3 + 18);
      v28 = *(a3 + 19);
      v29 = *(a3 + 20);
      v30 = *(a3 + 21);
      v31 = *(a3 + 22);
      v32 = *(a3 + 23);
      *v24 = 136317186;
      *(v24 + 4) = v33;
      *(v24 + 12) = 1024;
      *(v24 + 14) = v25;
      *(v24 + 18) = 1024;
      *(v24 + 20) = v26;
      *(v24 + 24) = 1024;
      *(v24 + 26) = v27;
      *(v24 + 30) = 1024;
      *(v24 + 32) = v28;
      *(v24 + 36) = 1024;
      *(v24 + 38) = v29;
      *(v24 + 42) = 1024;
      *(v24 + 44) = v30;
      *(v24 + 48) = 1024;
      *(v24 + 50) = v31;
      *(v24 + 54) = 1024;
      *(v24 + 56) = v32;
      __SC_log_send();
    }

    v34 = sub_AD1C(v7);
    Lease = DHCPLeaseListFindLease(v6 + 136, *(a3 + 16), *(a3 + 20), (a3 + 24), v34);
    if (Lease == -1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v74 = _os_log_pack_size();
        v75 = &v98 - ((__chkstk_darwin(v74) + 15) & 0xFFFFFFFFFFFFFFF0);
        v76 = __error();
        v77 = _os_log_pack_fill(v75, v74, *v76, &dword_0, "DHCP %s: lease for %d.%d.%d.%d is no longer available", v98, DWORD2(v98), v99, v100, v101);
        nullsub_1();
        v78 = *(a3 + 16);
        v79 = *(a3 + 17);
        v80 = *(a3 + 18);
        v81 = *(a3 + 19);
        *v77 = 136316162;
        *(v77 + 4) = v82;
        *(v77 + 12) = 1024;
        *(v77 + 14) = v78;
        *(v77 + 18) = 1024;
        *(v77 + 20) = v79;
        *(v77 + 24) = 1024;
        *(v77 + 26) = v80;
        *(v77 + 30) = 1024;
        *(v77 + 32) = v81;
        __SC_log_send();
      }

      if (!*(v6 + 48))
      {
        return;
      }
    }

    else
    {
      v36 = sub_42C0(v6 + 136, Lease);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v37 = _os_log_pack_size();
        v38 = &v98 - ((__chkstk_darwin(v37) + 15) & 0xFFFFFFFFFFFFFFF0);
        v39 = __error();
        v40 = _os_log_pack_fill(v38, v37, *v39, &dword_0, "DHCP %s: identified lease for %d.%d.%d.%d", v98, DWORD2(v98), v99, v100, v101);
        nullsub_1();
        v41 = *(v36 + 4);
        v42 = *(v36 + 5);
        v43 = *(v36 + 6);
        v44 = *(v36 + 7);
        *v40 = 136316162;
        *(v40 + 4) = v45;
        *(v40 + 12) = 1024;
        *(v40 + 14) = v41;
        *(v40 + 18) = 1024;
        *(v40 + 20) = v42;
        *(v40 + 24) = 1024;
        *(v40 + 26) = v43;
        *(v40 + 30) = 1024;
        *(v40 + 32) = v44;
        __SC_log_send();
      }

      v46 = *(v6 + 1744);
      if (v46 != 6)
      {
        if (v46 == 3 && *(v6 + 44) != 1)
        {
          sub_2865C(a1, v36, 0);
          sub_2C440(a1);
        }

        return;
      }

      if (*(v6 + 44) == 1)
      {
        LODWORD(v99) = 0;
        v93 = *(v36 + 4);
        if (v93 != *(v6 + 1732) || !sub_274FC(v6 + 208, v93, &v99) || v99 != *(v36 + 20))
        {
          return;
        }

        goto LABEL_56;
      }

      if (sub_2865C(a1, v36, 0))
      {
        *&v99 = 0.0;
        v100 = 0;
        v94 = *(v6 + 2332) + 1;
        *(v6 + 2332) = v94;
        *(*(v6 + 176) + 4) = bswap32(v94);
        sub_58490(&v99);
        sub_585E0(&v99, v6 + 1784, 0x224u, 0);
        v95 = sub_58598(&v99, 50, 4);
        if (v95)
        {
          *v95 = *(v36 + 4);
          *(v6 + 1768) = 0;
        }

        sub_58494(&v99);
        goto LABEL_56;
      }

      if (!*(v6 + 48))
      {
LABEL_56:
        sub_2C440(a1);
        v96 = sub_58598(v6 + 208, 1, 4);
        if (v96)
        {
          v97 = *v96;
        }

        else
        {
          v97 = 0;
        }

        *(v6 + 36) = 0;
        *(v6 + 2336) = 0;
        sub_2BB1C(a1, *(v6 + 1732), v97, 0);
        sub_29BF4(a1);
        if (dword_70028)
        {
          sub_4884(a1, 0);
        }

        return;
      }
    }

    sub_102A4(a1, 0xBu);
    v19 = a1;
    v20 = 0;
LABEL_14:
    sub_2994C(v19, v20);
    return;
  }

  if (a2)
  {
    return;
  }

  v102 = 0;
  *&v99 = 0.0;
  if (!G_router_arp || sub_2464(a1))
  {
    return;
  }

  if (!sub_2480(v7))
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
LABEL_29:
    v52 = DHCPLeaseListCopyARPAddressInfo((v6 + 136), v9, v10, v11, 1, &v102);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v53 = __SC_log_enabled();
    if (v52)
    {
      if (v53)
      {
        v55 = _os_log_pack_size();
        v56 = &v98 - ((__chkstk_darwin(v55) + 15) & 0xFFFFFFFFFFFFFFF0);
        v57 = __error();
        v58 = _os_log_pack_fill(v56, v55, *v57, &dword_0, "DHCP %s: ARP detect router starting", v98);
        nullsub_1();
        *v58 = 136315138;
        *(v58 + 4) = v59;
        __SC_log_send();
      }

      v60 = v102;
      if (v102 >= 1)
      {
        v61 = 0;
        *&v54 = 67111168;
        v98 = v54;
        do
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v62 = _os_log_pack_size();
            v63 = &v98 - ((__chkstk_darwin(v62) + 15) & 0xFFFFFFFFFFFFFFF0);
            v64 = __error();
            v65 = _os_log_pack_fill(v63, v62, *v64, &dword_0, "%d. sender %d.%d.%d.%d target %d.%d.%d.%d", v98, DWORD2(v98), v99, v100, v101, v103, v104, v105, v106);
            v66 = &v52[6 * v61];
            v67 = *v66;
            v68 = v66[1];
            ++v61;
            v69 = v66[2];
            v70 = v66[3];
            v71 = v66[4];
            v72 = v66[5];
            v73 = v66[6];
            LODWORD(v66) = v66[7];
            *v65 = v98;
            *(v65 + 4) = v61;
            *(v65 + 8) = 1024;
            *(v65 + 10) = v67;
            *(v65 + 14) = 1024;
            *(v65 + 16) = v68;
            *(v65 + 20) = 1024;
            *(v65 + 22) = v69;
            *(v65 + 26) = 1024;
            *(v65 + 28) = v70;
            *(v65 + 32) = 1024;
            *(v65 + 34) = v71;
            *(v65 + 38) = 1024;
            *(v65 + 40) = v72;
            *(v65 + 44) = 1024;
            *(v65 + 46) = v73;
            *(v65 + 50) = 1024;
            *(v65 + 52) = v66;
            __SC_log_send();
          }

          else
          {
            ++v61;
          }

          v60 = v102;
        }

        while (v61 < v102);
      }

      sub_21D40(*(v6 + 8), sub_16C0, a1, 6, v52, v60);
      free(v52);
    }

    else if (v53)
    {
      v83 = _os_log_pack_size();
      v84 = &v98 - ((__chkstk_darwin(v83) + 15) & 0xFFFFFFFFFFFFFFF0);
      v85 = __error();
      v86 = _os_log_pack_fill(v84, v83, *v85, &dword_0, "DHCP %s: ARP router: No leases to query for", v98);
      nullsub_1();
      *v86 = 136315138;
      *(v86 + 4) = v87;
      __SC_log_send();
    }

    return;
  }

  v8 = sub_CBBC(a1);
  if (v8)
  {
    v9 = v8;
    v10 = sub_2C964(a1);
    *&v99 = *a3 - G_router_arp_wifi_lease_start_threshold_secs;
    v11 = &v99;
    goto LABEL_29;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v88 = _os_log_pack_size();
    v89 = &v98 - ((__chkstk_darwin(v88) + 15) & 0xFFFFFFFFFFFFFFF0);
    v90 = __error();
    v91 = _os_log_pack_fill(v89, v88, *v90, &dword_0, "dhcp_arp_router: %s SSID unavailable", v98);
    nullsub_1();
    *v91 = 136315138;
    *(v91 + 4) = v92;
    __SC_log_send();
  }
}

void sub_21D4(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v7 = _os_log_pack_size();
    v8 = &v15 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = *__error();
    v6 = _os_log_pack_fill(v8, v7, v9, &dword_0, "bootp_session_delayed_close(): socket is already closed");
    goto LABEL_7;
  }

  v2 = *(a1 + 40);
  sub_2424();
  if (v2 >= 1)
  {
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v3 = _os_log_pack_size();
    v4 = &v15 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = *__error();
    v6 = _os_log_pack_fill(v4, v3, v5, &dword_0, "bootp_session_delayed_close(): called when socket in use");
LABEL_7:
    *v6 = 0;
    __SC_log_send();
    return;
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    v11 = &v15 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "bootp_session_delayed_close(): closing socket %d", v15);
    v14 = sub_5A18(*(a1 + 32));
    *v13 = 67109120;
    v13[1] = v14;
    __SC_log_send();
  }

  sub_2BC0(a1);
}

uint64_t sub_2464(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return (*(a1 + 116) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

_DWORD *DHCPLeaseListCopyARPAddressInfo(uint64_t *a1, const void *a2, const void *a3, double *a4, int a5, _DWORD *a6)
{
  v56 = a5;
  v54 = a3;
  sub_297C(a1);
  v10 = sub_295C(a1);
  if (!v10)
  {
LABEL_30:
    v47 = 0;
    result = 0;
    goto LABEL_31;
  }

  v11 = v10;
  result = malloc_type_malloc(24 * v10, 0x1000040504FFAC1uLL);
  if (v11 < 1)
  {
    goto LABEL_29;
  }

  v52 = a4;
  v50 = a6;
  v55 = 0;
  v14 = 0;
  *&v13 = 67110400;
  v48 = v13;
  *&v13 = 138412290;
  *v51 = v13;
  v49 = result;
  v53 = result;
  do
  {
    v15 = sub_42C0(a1, v14);
    v16 = v15;
    if (!a2)
    {
      goto LABEL_9;
    }

    v17 = *(v15 + 48);
    if (!v17)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v38 = _os_log_pack_size();
        v39 = &v48 - ((__chkstk_darwin(v38) + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = __error();
        *_os_log_pack_fill(v39, v38, *v40, &dword_0, "ignoring lease with no SSID") = 0;
        __SC_log_send();
      }

      goto LABEL_24;
    }

    if (CFEqual(v17, a2) || sub_57D34(v54, *(v16 + 56)))
    {
LABEL_9:
      if (!*(v16 + 20) || (v18 = *(v16 + 40), !*(v16 + 40)))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_24;
        }

        v30 = _os_log_pack_size();
        v31 = &v48 - ((__chkstk_darwin(v30) + 15) & 0xFFFFFFFFFFFFFFF0);
        v32 = __error();
        v33 = _os_log_pack_fill(v31, v30, *v32, &dword_0, "ignoring lease for %d.%d.%d.%d", v48, DWORD2(v48), v49, v50);
        v34 = *(v16 + 4);
        v35 = *(v16 + 5);
        v36 = *(v16 + 6);
        v37 = *(v16 + 7);
        *v33 = 67109888;
        *(v33 + 4) = v34;
        *(v33 + 8) = 1024;
        *(v33 + 10) = v35;
        *(v33 + 14) = 1024;
        *(v33 + 16) = v36;
        *(v33 + 20) = 1024;
        *(v33 + 22) = v37;
        goto LABEL_20;
      }

      if (*v16 != 1 || v56 != 0)
      {
        if (v52 && *(v16 + 8) < *v52)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_24;
          }

          v20 = _os_log_pack_size();
          v21 = &v48 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = __error();
          v23 = _os_log_pack_fill(v21, v20, *v22, &dword_0, "start time on lease %d.%d.%d.%d too old (%g < %g)", v48, DWORD2(v48), v49, v50, v51[0], v51[1]);
          v24 = *(v16 + 4);
          v25 = *(v16 + 5);
          v26 = *(v16 + 6);
          v27 = *(v16 + 7);
          v28 = *(v16 + 8);
          v29 = *v52;
          *v23 = v48;
          *(v23 + 4) = v24;
          *(v23 + 8) = 1024;
          *(v23 + 10) = v25;
          *(v23 + 14) = 1024;
          *(v23 + 16) = v26;
          *(v23 + 20) = 1024;
          *(v23 + 22) = v27;
          *(v23 + 26) = 2048;
          *(v23 + 28) = v28;
          *(v23 + 36) = 2048;
          *(v23 + 38) = v29;
          goto LABEL_20;
        }

        v41 = v53;
        *v53 = *(v16 + 4);
        v41[1] = *(v16 + 20);
        memmove(v41 + 2, (v16 + 24), v18);
        ++v55;
        v53 = v41 + 6;
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v42 = _os_log_pack_size();
        v43 = &v48 - ((__chkstk_darwin(v42) + 15) & 0xFFFFFFFFFFFFFFF0);
        v44 = __error();
        v45 = _os_log_pack_fill(v43, v42, *v44, &dword_0, "ignoring lease with SSID %@");
        nullsub_1();
        *v45 = LODWORD(v51[0]);
        *(v45 + 4) = v46;
LABEL_20:
        __SC_log_send();
      }
    }

LABEL_24:
    v14 = (v14 + 1);
  }

  while (v11 != v14);
  result = v49;
  a6 = v50;
  v47 = v55;
  if (!v55)
  {
LABEL_29:
    free(result);
    goto LABEL_30;
  }

LABEL_31:
  *a6 = v47;
  return result;
}

uint64_t sub_2960(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(result + 12);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_297C(uint64_t *a1)
{
  v2 = sub_295C(a1);
  if (v2)
  {
    v3 = v2;
    *&v4 = timer_get_current_time();
    if (v3 >= 1)
    {
      v5 = *&v4;
      v6 = 0;
      *&v4 = 67110912;
      v22 = v4;
      do
      {
        v7 = sub_42C0(a1, v6);
        v8 = *(v7 + 16);
        if (v8 == -1 || (v9 = v7, v5 < *(v7 + 8) + v8))
        {
          v6 = (v6 + 1);
        }

        else
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v10 = _os_log_pack_size();
            v11 = &v22 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
            v12 = __error();
            v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "Removing Stale Lease %d.%d.%d.%d Router %d.%d.%d.%d", v22, DWORD2(v22), v23, v24, v25, v26, v27, v28);
            v14 = v9[4];
            v15 = v9[5];
            v16 = v9[6];
            v17 = v9[7];
            v18 = v9[20];
            v19 = v9[21];
            v20 = v9[22];
            v21 = v9[23];
            *v13 = v22;
            *(v13 + 4) = v14;
            *(v13 + 8) = 1024;
            *(v13 + 10) = v15;
            *(v13 + 14) = 1024;
            *(v13 + 16) = v16;
            *(v13 + 20) = 1024;
            *(v13 + 22) = v17;
            *(v13 + 26) = 1024;
            *(v13 + 28) = v18;
            *(v13 + 32) = 1024;
            *(v13 + 34) = v19;
            *(v13 + 38) = 1024;
            *(v13 + 40) = v20;
            *(v13 + 44) = 1024;
            *(v13 + 46) = v21;
            __SC_log_send();
          }

          sub_13DB8(a1, v6);
          --v3;
        }
      }

      while (v6 < v3);
    }
  }
}

void sub_2B78(dispatch_object_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = v1[1];
    if (v3)
    {
      dispatch_source_cancel(v3);
      dispatch_release(v1[1]);
    }

    free(v1);
    *a1 = 0;
  }
}

void sub_2BC0(uint64_t a1)
{
  if (*(a1 + 57) == 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      v2 = &v6 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = __error();
      v4 = _os_log_pack_fill(v2, v1, *v3, &dword_0, "%s: cancel is already pending?", v6);
      *v4 = 136315138;
      *(v4 + 4) = "bootp_session_schedule_close";
      __SC_log_send();
    }
  }

  else
  {
    *(a1 + 57) = 1;
    v5 = (a1 + 32);

    sub_2B78(v5);
  }
}

uint64_t sub_2D2C(uint64_t a1, uint64_t a2)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = &v25 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "%s: socket %d complete", v25, v26);
    *v7 = 136315394;
    *(v7 + 4) = "bootp_session_fd_complete";
    *(v7 + 12) = 1024;
    *(v7 + 14) = a2;
    __SC_log_send();
  }

  *(a1 + 57) = 0;
  v8 = *(a1 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  v9 = __SC_log_enabled();
  if (v8 < 1)
  {
    if (v9)
    {
      v15 = _os_log_pack_size();
      v16 = &v25 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v15, *v17, &dword_0, "%s: closing socket %d", v25, v26);
      *v18 = 136315394;
      *(v18 + 4) = "bootp_session_fd_complete";
      *(v18 + 12) = 1024;
      *(v18 + 14) = a2;
      __SC_log_send();
    }

    result = close(a2);
    if ((result & 0x80000000) != 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v19 = _os_log_pack_size();
        v20 = &v25 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = __error();
        v22 = _os_log_pack_fill(v20, v19, *v21, &dword_0, "%s: close socket %d failed, %s", v25, v26, v27);
        v23 = __error();
        v24 = strerror(*v23);
        *v22 = 136315650;
        *(v22 + 4) = "bootp_session_fd_complete";
        *(v22 + 12) = 1024;
        *(v22 + 14) = a2;
        *(v22 + 18) = 2080;
        *(v22 + 20) = v24;
        return __SC_log_send();
      }
    }
  }

  else
  {
    if (v9)
    {
      v10 = _os_log_pack_size();
      v11 = &v25 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "%s: re-enabling socket %d", v25, v26);
      *v13 = 136315394;
      *(v13 + 4) = "bootp_session_fd_complete";
      *(v13 + 12) = 1024;
      *(v13 + 14) = a2;
      __SC_log_send();
    }

    return sub_C788(a1, a2);
  }

  return result;
}

void sub_30B8(const __SCDynamicStore *a1, CFArrayRef theArray)
{
  v40 = 0;
  v41 = 0;
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_73;
  }

  v5 = Count;
  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      v7 = &v34 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "Changes: %@ (%d)");
      *v9 = 138412546;
      *(v9 + 4) = theArray;
      *(v9 + 12) = 1024;
      *(v9 + 14) = v5;
      __SC_log_send();
    }
  }

  if (v5 < 1)
  {
    v16 = 1;
    goto LABEL_32;
  }

  v35 = a1;
  NetworkGlobalEntity = 0;
  LODWORD(v39) = 0;
  v11 = 0;
  LODWORD(v38) = 0;
  v12 = 0;
  v13 = 0;
  v36 = kSCEntNetIPv4;
  v37 = kSCCompInterface;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    if (CFEqual(ValueAtIndex, qword_701D0) || CFEqual(ValueAtIndex, qword_701D8))
    {
      v12 = 1;
    }

    else if (CFStringHasPrefix(ValueAtIndex, kSCDynamicStoreDomainSetup))
    {
      if (!NetworkGlobalEntity)
      {
        NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, v36);
        v41 = NetworkGlobalEntity;
      }

      if (CFEqual(ValueAtIndex, NetworkGlobalEntity))
      {
        v13 = 1;
      }

      LODWORD(v39) = 1;
    }

    else if (CFStringHasSuffix(ValueAtIndex, v37))
    {
      LODWORD(v38) = 1;
    }

    else
    {
      Mutable = v40;
      if (!v40)
      {
        Mutable = CFArrayCreateMutable(0, v5, &kCFTypeArrayCallBacks);
        v40 = Mutable;
      }

      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    ++v11;
  }

  while (v5 != v11);
  v16 = v13 == 0;
  if (v12)
  {
    a1 = v35;
    sub_347CC(v35);
  }

  else
  {
    a1 = v35;
  }

  if (v38 && sub_3509C())
  {
    sub_351D4();
  }

  else if (!v39)
  {
    goto LABEL_32;
  }

  v43 = 0;
  *&v42 = sub_3545C(a1, &v43);
  sub_35E48(v42, v43);
  sub_41E8(&v42);
  sub_41E8(&v43);
LABEL_32:
  v17 = v40;
  if (v40)
  {
    v18 = CFArrayGetCount(v40);
    if (v18 >= 1)
    {
      v19 = v18;
      v20 = 0;
      v21 = kSCEntNetRefreshConfiguration;
      v22 = kSCEntNetIPv6;
      v39 = kSCEntNetNAT64;
      v38 = kSCEntNetInterfaceActiveDuringSleepRequested;
      v37 = kSCEntNetIPv6RouterExpired;
      v36 = kSCEntNetIPv4ARPCollision;
      do
      {
        v23 = CFArrayGetValueAtIndex(v17, v20);
        if (CFStringHasSuffix(v23, kSCEntNetLink))
        {
          sub_36D8(a1, v23);
        }

        else if (CFStringHasSuffix(v23, kSCEntNetAirPort))
        {
          sub_348C4(v23);
        }

        else if (CFStringHasSuffix(v23, v21))
        {
          if (CFStringHasPrefix(v23, qword_701E8))
          {
            v24 = sub_40EC(v23, @"/", 3);
            v43 = v24;
            if (v24)
            {
              v42 = 0uLL;
              v25 = sub_13518(v24);
              if (v25)
              {
                v26 = v25;
                if ((*v25 & 0x10) == 0)
                {
                  v35 = v22;
                  LODWORD(v42) = 0;
                  *(&v42 + 4) = sub_2430(*(v25 + 8));
                  HIDWORD(v42) = v27;
                  if (sub_295C(v26 + 24) >= 1)
                  {
                    v28 = 0;
                    do
                    {
                      v29 = sub_42C0(v26 + 24, v28);
                      if (*(v29 + 25))
                      {
                        *(v29 + 116) &= ~4u;
                      }

                      sub_8DB0(v29, 8, &v42);
                      v28 = (v28 + 1);
                    }

                    while (v28 < sub_295C(v26 + 24));
                  }

                  sub_8D44(v26 + 56, 8, &v42);
                  v22 = v35;
                }
              }

              sub_41E8(&v43);
            }
          }
        }

        else if (CFStringHasSuffix(v23, v22))
        {
          sub_13310(v23);
        }

        else if (CFStringHasSuffix(v23, v39))
        {
          sub_34B38(a1, v23);
        }

        else if (CFStringHasSuffix(v23, v38))
        {
          v35 = v22;
          if (CFStringHasPrefix(v23, qword_701E8))
          {
            v30 = sub_40EC(v23, @"/", 3);
            *&v42 = v30;
            if (v30)
            {
              v31 = sub_13518(v30);
              sub_41E8(&v42);
              v34 = v31;
              if (v31)
              {
                v32 = SCDynamicStoreCopyValue(a1, v23);
                if (v32)
                {
                  CFRelease(v32);
                  v33 = 1;
                }

                else
                {
                  v33 = 0;
                }

                sub_376F4(v34, v33);
              }
            }
          }

          v22 = v35;
        }

        else if (CFStringHasSuffix(v23, v37))
        {
          sub_34DEC(v23);
        }

        else
        {
          v44.length = CFStringGetLength(v23);
          v44.location = 0;
          if (CFStringFindWithOptions(v23, v36, v44, 0, 0))
          {
            sub_34F88(a1, v23);
          }
        }

        ++v20;
      }

      while (v20 != v19);
    }
  }

  if (!v16)
  {
    byte_70190 = 1;
    dispatch_source_merge_data(qword_701C0, 1uLL);
    if (dword_700C0)
    {
      byte_701AC = 1;
      dispatch_source_merge_data(qword_701C0, 1uLL);
    }
  }

LABEL_73:
  sub_41E8(&v41);
  sub_41E8(&v40);
}

void sub_36D8(const __SCDynamicStore *a1, CFStringRef theString)
{
  if (CFStringHasPrefix(theString, qword_701E8))
  {
    v4 = sub_40EC(theString, @"/", 3);
    v81 = v4;
    if (v4)
    {
      v78[0] = 0;
      v78[1] = 0;
      sub_4160(v4, __s2, 17, 0);
      sub_41E8(&v81);
      v5 = sub_4220(__s2, 0);
      v6 = sub_42EC(a1, theString);
      v82 = v6;
      if (v6 && CFDictionaryContainsKey(v6, kSCPropNetLinkDetaching))
      {
        if (v5)
        {
          sub_2F45C(v5, 1);
          sub_2F4D0(v5, 1);
        }

        goto LABEL_69;
      }

      v7 = sub_4348(qword_70198, __s2);
      if (v7)
      {
        v8 = v7;
        v9 = sub_43CC(v7);
        v11 = v10;
        v79 = v9;
        v80 = v10;
        v12 = v9;
        if (v9)
        {
          v13 = sub_12A50(v8);
          if (!v5)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v13 = 0;
          if (!v5)
          {
            goto LABEL_69;
          }
        }

        if ((*v5 & 0x10) == 0)
        {
          *(v5 + 176) = 0;
          sub_12D14(v5 + 24);
          sub_12D14(v5 + 56);
          if ((*v5 & 8) != 0)
          {
            v14 = sub_144D8(*(v5 + 8));
            sub_12D68(v14);
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v15 = _os_log_pack_size();
              v77 = &v72;
              v16 = v13;
              v17 = &v72 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
              v18 = __error();
              v19 = _os_log_pack_fill(v17, v15, *v18, &dword_0, "%s: reported address acquisition success (cancel) symptom", v72);
              nullsub_1();
              *v19 = 136315138;
              *(v19 + 4) = v20;
              v13 = v16;
              __SC_log_send();
            }
          }

          *v5 &= 0xFFE7FFF7;
          sub_12DE8(*(v5 + 8), v8);
          sub_2424();
          v21 = _SC_syslog_os_log_mapping();
          v22 = __SC_log_enabled();
          v23 = HIDWORD(v9);
          if (v9)
          {
            if (!v22)
            {
              goto LABEL_34;
            }

            v24 = _os_log_pack_size();
            v77 = &v72;
            v25 = &v72 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
            v26 = __error();
            v27 = _os_log_pack_fill(v25, v24, *v26, &dword_0, "%s link %s%s%s%s%s", v72, v73, v74, v75, v76, v77);
            if (v23)
            {
              v28 = "ACTIVE";
            }

            else
            {
              v28 = "INACTIVE";
            }

            v29 = " [link address changed]";
            v76 = v23;
            if (!v13)
            {
              v29 = "";
            }

            v73 = v29;
            v74 = v28;
            v30 = " [wake on same network]";
            if (!v11)
            {
              v30 = "";
            }

            v72 = v30;
            v31 = sub_12E14(v8);
            HIDWORD(v75) = v21;
            v32 = v13;
            if (v31)
            {
              v33 = " [expensive]";
            }

            else
            {
              v33 = "";
            }

            v34 = sub_12E1C(v8);
            *(v27 + 4) = __s2;
            v35 = " [carplay]";
            *v27 = 136316418;
            *(v27 + 12) = 2080;
            if (!v34)
            {
              v35 = "";
            }

            v23 = v76;
            v36 = v73;
            *(v27 + 14) = v74;
            *(v27 + 22) = 2080;
            *(v27 + 24) = v36;
            *(v27 + 32) = 2080;
            *(v27 + 34) = v72;
            *(v27 + 42) = 2080;
            *(v27 + 44) = v33;
            v13 = v32;
            *(v27 + 52) = 2080;
            *(v27 + 54) = v35;
          }

          else
          {
            if (!v22)
            {
              goto LABEL_34;
            }

            v37 = _os_log_pack_size();
            v77 = &v72;
            v38 = &v72 - ((__chkstk_darwin(v37) + 15) & 0xFFFFFFFFFFFFFFF0);
            v39 = __error();
            v40 = _os_log_pack_fill(v38, v37, *v39, &dword_0, "%s link is unknown", v72);
            *v40 = 136315138;
            *(v40 + 4) = __s2;
          }

          __SC_log_send();
LABEL_34:
          if (v13 || dword_701B8 == *(v5 + 124))
          {
            goto LABEL_39;
          }

          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v41 = _os_log_pack_size();
            v76 = v23;
            v42 = &v72 - ((__chkstk_darwin(v41) + 15) & 0xFFFFFFFFFFFFFFF0);
            v43 = __error();
            v44 = _os_log_pack_fill(v42, v41, *v43, &dword_0, "%s: link status changed at wake", v72);
            *v44 = 136315138;
            *(v44 + 4) = __s2;
            __SC_log_send();
            v23 = v76;
          }

          sub_6D48(v5);
          if (!v11)
          {
LABEL_39:
            sub_7154(v5, v78, &v79);
            if (v12)
            {
              v45 = v23 == 0;
            }

            else
            {
              v45 = 0;
            }

            v46 = !v45;
            if (v45)
            {
              if (byte_701F0 == 1)
              {
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v47 = _os_log_pack_size();
                  v48 = &v72 - ((__chkstk_darwin(v47) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v49 = __error();
                  v50 = _os_log_pack_fill(v48, v47, *v49, &dword_0, "%s: suppressing link inactive timer (going to sleep)", v72);
                  *v50 = 136315138;
                  *(v50 + 4) = __s2;
                  __SC_log_send();
                }

                timer_cancel(*(v5 + 112));
                *v5 |= 0x20u;
              }

              else
              {
                *v5 &= ~0x20u;
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v51 = _os_log_pack_size();
                  v52 = &v72 - ((__chkstk_darwin(v51) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v53 = __error();
                  v54 = _os_log_pack_fill(v52, v51, *v53, &dword_0, "%s: scheduling link inactive timer for %g secs", v72, *&v73);
                  v55 = qword_700C8;
                  *v54 = 136315394;
                  *(v54 + 4) = __s2;
                  *(v54 + 12) = 2048;
                  *(v54 + 14) = v55;
                  __SC_log_send();
                }

                timer_callout_set(*(v5 + 112), sub_36A34, v5, 0, 0, *&qword_700C8);
              }
            }

            else
            {
              *v5 &= ~0x20u;
              timer_cancel(*(v5 + 112));
            }

            if (sub_12E28(*(v5 + 8)) == 57 || *(v5 + 160))
            {
              v56 = 0;
            }

            else
            {
              if (v13)
              {
                sub_2424();
                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v65 = _os_log_pack_size();
                  v66 = &v72 - ((__chkstk_darwin(v65) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v67 = __error();
                  v68 = _os_log_pack_fill(v66, v65, *v67, &dword_0, "%s: link address changed", v72);
                  nullsub_1();
                  *v68 = 136315138;
                  *(v68 + 4) = v69;
                  __SC_log_send();
                }

                nullsub_1();
                sub_41660(v70);
              }

              if (sub_295C(v5 + 24))
              {
                nullsub_1();
                v56 = sub_7A40(v71, v46) == 0;
              }

              else
              {
                v56 = 0;
              }

              if (sub_295C(v5 + 56) && sub_12E30(v5, v46))
              {
                v56 = 1;
              }
            }

            if (v56 | v13)
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v57 = _os_log_pack_size();
                v58 = &v72 - ((__chkstk_darwin(v57) + 15) & 0xFFFFFFFFFFFFFFF0);
                v59 = __error();
                v60 = _os_log_pack_fill(v58, v57, *v59, &dword_0, "%s: %s, forcing link timer expired", v72, v73);
                nullsub_1();
                v62 = "link address changed";
                if (v56)
                {
                  v62 = "interface reattached";
                }

                *v60 = 136315394;
                *(v60 + 4) = v61;
                *(v60 + 12) = 2080;
                *(v60 + 14) = v62;
                __SC_log_send();
              }

              sub_30C68(v5, 4, 0);
            }

            if (sub_295C(v5 + 24) >= 1)
            {
              v63 = 0;
              do
              {
                v64 = sub_42C0(v5 + 24, v63);
                if (*(v64 + 25))
                {
                  *(v64 + 116) &= ~4u;
                }

                sub_8DB0(v64, 3, v78);
                v63 = (v63 + 1);
              }

              while (v63 < sub_295C(v5 + 24));
            }

            sub_8D44(v5 + 56, 3, v78);
          }
        }
      }

LABEL_69:
      sub_41E8(&v82);
    }
  }
}

CFTypeRef sub_40EC(CFStringRef theString, CFStringRef separatorString, CFIndex a3)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, separatorString);
  if (!ArrayBySeparatingStrings)
  {
    return 0;
  }

  v5 = ArrayBySeparatingStrings;
  if (CFArrayGetCount(ArrayBySeparatingStrings) <= a3)
  {
    v7 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, a3);
    v7 = CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  return v7;
}

uint64_t sub_4160(const __CFString *a1, UInt8 *a2, int a3, Boolean a4)
{
  usedBufLen = 0;
  v11.length = CFStringGetLength(a1);
  v11.location = 0;
  CFStringGetBytes(a1, v11, 0x8000100u, 0, a4, a2, a3 - 1, &usedBufLen);
  v8 = usedBufLen;
  if (a2)
  {
    a2[usedBufLen] = 0;
  }

  return (v8 + 1);
}

void sub_41E8(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_4220(const char *a1, _DWORD *a2)
{
  if (sub_295C(qword_70160) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_42C0(qword_70160, v4);
    nullsub_1();
    if (!strcmp(v6, a1))
    {
      break;
    }

    v4 = (v4 + 1);
    if (v4 >= sub_295C(qword_70160))
    {
      return 0;
    }
  }

  if (a2)
  {
    *a2 = v4;
  }

  return v5;
}

uint64_t sub_42C8(uint64_t a1, int a2)
{
  if (*a1 && *(a1 + 12) > a2)
  {
    return *(*a1 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

CFPropertyListRef sub_42EC(const __SCDynamicStore *a1, const __CFString *a2)
{
  v2 = SCDynamicStoreCopyValue(a1, a2);
  v5 = v2;
  if (v2)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v2) != TypeID)
    {
      sub_41E8(&v5);
      return v5;
    }
  }

  return v2;
}

uint64_t sub_4348(uint64_t *a1, char *__s2)
{
  v4 = -104;
  v5 = -1;
  while (1)
  {
    v6 = a1 ? *(a1 + 2) : 0;
    if (++v5 >= v6)
    {
      break;
    }

    v7 = v4 + 104;
    v8 = *a1;
    v9 = strcmp((*a1 + v4 + 104), __s2);
    v4 = v7;
    if (!v9)
    {
      return v8 + v7;
    }
  }

  return 0;
}

uint64_t sub_43CC(uint64_t a1)
{
  v2 = socket(2, 2, 0);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v2;
    memset(v14, 0, 44);
    if (sub_45E8(v2, a1, v14))
    {
      if (SLODWORD(v14[2]) < 1)
      {
        v5 = 0;
        v4 = 0;
        v6 = 0;
      }

      else
      {
        v4 = (BYTE8(v14[1]) & 2) << 31;
        if (BYTE8(v14[1]))
        {
          v5 = (DWORD2(v14[1]) >> 2) & 1;
        }

        else
        {
          v5 = 0;
        }

        if (BYTE8(v14[1]))
        {
          v6 = 1;
        }

        else
        {
          v4 = 0;
          v6 = 0;
        }
      }

      *(a1 + 80) = v6 | v4;
      *(a1 + 88) = v5;
    }

    else
    {
      sub_2424();
      __error();
      _SC_syslog_os_log_mapping();
      __error();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        v8 = v14 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = __error();
        v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "%s: failed to get media status, %s", *&v14[0], *(&v14[0] + 1));
        v11 = __error();
        v12 = strerror(*v11);
        *v10 = 136315394;
        *(v10 + 4) = a1;
        *(v10 + 12) = 2080;
        *(v10 + 14) = v12;
        __error();
        __SC_log_send();
      }
    }

    *(a1 + 20) = (sub_467C(v3, a1) >> 14) & 1;
    close(v3);
  }

  return *(a1 + 80);
}

uint64_t sub_45E8(int a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 28) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02C6938uLL, a3) != -1)
  {
    return 1;
  }

  if (*__error() != 102)
  {
    return 0;
  }

  *(a3 + 24) = 3;
  result = 1;
  *(a3 + 32) = 1;
  return result;
}

uint64_t sub_467C(int a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC020698EuLL, &v11) != -1)
  {
    return v12;
  }

  sub_2424();
  __error();
  _SC_syslog_os_log_mapping();
  __error();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    v6 = &v11 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "%s: SIOCGIFEFLAGS failed status, %s", v11, *(&v11 + 1));
    v9 = __error();
    v10 = strerror(*v9);
    *v8 = 136315394;
    *(v8 + 4) = a2;
    *(v8 + 12) = 2080;
    *(v8 + 14) = v10;
    __error();
    __SC_log_send();
  }

  return 0;
}

void sub_4834(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1)
  {
    *(a1 + 272) = 0;
    dispatch_source_cancel(v1);

    dispatch_release(v1);
  }
}

void sub_4884(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 88);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *(v4 + 48);
  if (!v6)
  {
    return;
  }

  v7 = sub_498C(v3, v6, 1);
  if (v7 && v7 == a1)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    LODWORD(v10[0]) = 261;
    DWORD2(v10[0]) = a2;
    sub_4A28(v4, v10, &v9);
  }

  else
  {
LABEL_5:
    byte_70190 = 1;
    v8 = qword_701C0;

    dispatch_source_merge_data(v8, 1uLL);
  }
}

CFTypeRef *sub_498C(uint64_t a1, const void *a2, int a3)
{
  if (a3)
  {
    v5 = 24;
  }

  else
  {
    v5 = 56;
  }

  if (sub_295C(a1 + v5) < 1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_42C0(a1 + v5, v6);
    if (CFEqual(a2, *v7))
    {
      break;
    }

    v6 = (v6 + 1);
    if (v6 >= sub_295C(a1 + v5))
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_4A28(uint64_t a1, unsigned int *a2, int *a3)
{
  v18 = 0;
  if ((*(a2 + 1) & 2) != 0)
  {
    v6 = *(a1 + 16);
    if (sub_295C(v6 + 56) == 1)
    {
      if (a2[12] != (HIWORD(*v6) & 1) || (*(a2 + 13) == *(v6 + 128) ? (v7 = *(a2 + 15) == *(v6 + 136)) : (v7 = 0), !v7))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v9 = _os_log_pack_size();
          v10 = &v16 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          v11 = __error();
          v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "%s: IPv6 configuration changed, need stop", v16);
          nullsub_1();
          *v12 = 136315138;
          *(v12 + 4) = v13;
          __SC_log_send();
          v14 = 1;
          result = 0;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_12;
      }
    }
  }

  *a3 = 0;
  v15 = sub_5324(*a2);
  if (v15)
  {
    v17 = a2 + 2;
    LODWORD(v18) = 0;
    result = (v15)(a1, 7, &v17);
    v14 = v18;
LABEL_12:
    *a3 = v14;
    return result;
  }

  return 7;
}

uint64_t linklocal_thread(uint64_t a1, int a2, _DWORD *a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  v9 = 0;
  if (a2 <= 3)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 != 3)
        {
          return v9;
        }

LABEL_15:
        if (v7)
        {
          if (a3[1] && !a3[2])
          {
            sub_D944(a1);
            v9 = 0;
            *(v8 + 8) = 0;
            return v9;
          }

          if (!*(sub_1688(a1) + 28))
          {
            goto LABEL_19;
          }

LABEL_35:
          sub_D154(a1, 0, 0);
          return 0;
        }

        return 6;
      }

LABEL_52:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v35 = _os_log_pack_size();
        v36 = &__str[-((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v37 = __error();
        v38 = _os_log_pack_fill(v36, v35, *v37, &dword_0, "LINKLOCAL %s: stop", v46);
        nullsub_1();
        *v38 = 136315138;
        *(v38 + 4) = v39;
        __SC_log_send();
      }

      if (v8)
      {
        nullsub_1();
        sub_D888(v40, 0);
        sub_FE80(a1);
        sub_102A4(a1, 0);
        if (*(v8 + 1))
        {
          timer_callout_free(v8 + 1);
        }

        if (*v8)
        {
          sub_15000(v8);
        }

        free(v8);
        sub_151FC(a1, 0);
      }

      else
      {
        sub_2424();
        v9 = 6;
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v41 = _os_log_pack_size();
          v42 = &__str[-((__chkstk_darwin(v41) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          v43 = __error();
          v44 = _os_log_pack_fill(v42, v41, *v43, &dword_0, "LINKLOCAL %s: already stopped", v46);
          nullsub_1();
          *v44 = 136315138;
          *(v44 + 4) = v45;
          v9 = 6;
          __SC_log_send();
        }
      }

      return v9;
    }

    if ((sub_10EE8(v6) & 8) != 0)
    {
      return 4;
    }

    sub_2424();
    if (v8)
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = _os_log_pack_size();
        v13 = &__str[-((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "LINKLOCAL %s: re-entering start state", v46);
        nullsub_1();
        *v15 = 136315138;
        *(v15 + 4) = v16;
        __SC_log_send();
        return 6;
      }

      return 6;
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      v19 = &__str[-((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "LINKLOCAL %s: start", v46);
      nullsub_1();
      *v21 = 136315138;
      *(v21 + 4) = v22;
      __SC_log_send();
    }

    v8 = malloc_type_malloc(0x28uLL, 0x1020040EF90260EuLL);
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
    sub_151FC(a1, v8);
    nullsub_1();
    snprintf(__str, 0x20uLL, "linklocal-%s", v23);
    v24 = timer_callout_init(__str);
    *(v8 + 1) = v24;
    if (v24)
    {
      v25 = sub_216C0(v6);
      *v8 = v25;
      if (v25)
      {
        sub_21A10(v25, 1);
        *(v8 + 7) = 1;
        if (a3 && !*a3)
        {
          *(v8 + 7) = 0;
          goto LABEL_19;
        }

        goto LABEL_34;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_51;
      }

      v30 = _os_log_pack_size();
      v31 = &__str[-((__chkstk_darwin(v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v32 = *__error();
      v29 = _os_log_pack_fill(v31, v30, v32, &dword_0, "LINKLOCAL %s: arp_client_init failed");
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_51:
        v9 = 5;
        goto LABEL_52;
      }

      v26 = _os_log_pack_size();
      v27 = &__str[-((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v28 = *__error();
      v29 = _os_log_pack_fill(v27, v26, v28, &dword_0, "LINKLOCAL %s: timer_callout_init failed");
    }

    v33 = v29;
    nullsub_1();
    *v33 = 136315138;
    *(v33 + 4) = v34;
    __SC_log_send();
    goto LABEL_51;
  }

  if (a2 > 8)
  {
    if (a2 != 9)
    {
      if (a2 != 11)
      {
        return v9;
      }

      goto LABEL_15;
    }

    if (v7)
    {
      if (!v7[7] || !v7[8] || *a3 != v7[5])
      {
        return 0;
      }

      v7[5] = 0;
      sub_FE80(a1);
      sub_102A4(a1, 8u);
      goto LABEL_35;
    }

    return 6;
  }

  if (a2 == 4)
  {
    sub_38A28(a1, 0xCu);
    return 0;
  }

  if (a2 == 7)
  {
    if (*a3)
    {
      v10 = **a3;
      v11 = v10 != 0;
      if (v7[7] == v11)
      {
        return 0;
      }

      v7[7] = v11;
      if (!v10)
      {
        sub_38A28(a1, 0);
LABEL_19:
        sub_384BC(a1, 0, 0);
        return 0;
      }
    }

    else
    {
      if (v7[7] == 1)
      {
        return 0;
      }

      v7[7] = 1;
    }

LABEL_34:
    *(v8 + 5) = S_find_linklocal_address(a1);
    goto LABEL_35;
  }

  return v9;
}

uint64_t (*sub_5324(int a1))(uint64_t a1, int a2, int *a3)
{
  result = 0;
  if (a1 <= 512)
  {
    if (a1 > 259)
    {
      switch(a1)
      {
        case 260:
          return sub_245A4;
        case 261:
          return linklocal_thread;
        case 262:
          return failover_thread;
        default:
          return result;
      }
    }

    else if ((a1 - 258) >= 2)
    {
      if (a1 != 257)
      {
        return result;
      }

      return sub_3996C;
    }

    else
    {
      return sub_7DFC;
    }
  }

  if (a1 > 515)
  {
    switch(a1)
    {
      case 516:
        v4 = dword_700C4 == 0;
        v5 = sub_51BFC;
        break;
      case 517:
        v4 = dword_700C4 == 0;
        v5 = sub_511E4;
        break;
      case 518:
        return sub_48A9C;
      default:
        return result;
    }
  }

  else if ((a1 - 514) >= 2)
  {
    if (a1 != 513)
    {
      return result;
    }

    v4 = dword_700C4 == 0;
    v5 = sub_4632C;
  }

  else
  {
    v4 = dword_700C4 == 0;
    v5 = sub_F06C;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

_BYTE *sub_5474(_BYTE *result, _BYTE *a2)
{
  v2 = a2;
  v3 = result;
  if ((*result & 8) != 0)
  {
    if (a2)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v14 = _os_log_pack_size();
        v15 = &v27 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = __error();
        v17 = _os_log_pack_fill(v15, v14, *v16, &dword_0, "%s %s: symptom failure already reported", v27, v28);
        v18 = sub_6160(*(v2 + 6));
        nullsub_1();
        *v17 = 136315394;
        *(v17 + 4) = v18;
        *(v17 + 12) = 2080;
        *(v17 + 14) = v19;
        return __SC_log_send();
      }
    }
  }

  else
  {
    if (!a2)
    {
      result = sub_14F3C((result + 24));
      if (!result)
      {
        result = sub_14F3C((v3 + 56));
        if (!result)
        {
          return result;
        }
      }

      v2 = result;
    }

    v4 = sub_32B7C((v3 + 24));
    if (v4 || (v4 = sub_32B7C((v3 + 56))) != 0)
    {
      v5 = v4;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

      v6 = _os_log_pack_size();
      v7 = &v27 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s %s: won't report symptom: %s is active", v27, v28, v29);
      v10 = sub_6160(*(v2 + 6));
      nullsub_1();
      v12 = v11;
      v13 = sub_6160(v5[6]);
      *v9 = 136315650;
      *(v9 + 4) = v10;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      *(v9 + 24) = v13;
      return __SC_log_send();
    }

    v20 = sub_144D8(*(v3 + 1));
    result = sub_12D68(v20);
    if (result)
    {
      *v3 |= 8u;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v21 = _os_log_pack_size();
        v22 = &v27 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = __error();
        v24 = _os_log_pack_fill(v22, v21, *v23, &dword_0, "%s %s: reported address acquisition failure symptom", v27, v28);
        v25 = sub_6160(*(v2 + 6));
        nullsub_1();
        *v24 = 136315394;
        *(v24 + 4) = v25;
        *(v24 + 12) = 2080;
        *(v24 + 14) = v26;
        return __SC_log_send();
      }
    }
  }

  return result;
}

ssize_t bootp_client_transmit(uint64_t *a1, unsigned int a2, int a3, unsigned int a4, __int16 a5, void *a6, uint64_t a7)
{
  v13 = sub_5984();
  if (a2 == 0xFFFFFFFFLL)
  {
    v14 = 0;
LABEL_9:
    LOBYTE(v17) = 1;
    sub_23644(a1, a2, 0, a6, a7, 1);
LABEL_10:
    v18 = *(v13 + 32);
    if (v18)
    {
      v19 = sub_5A18(v18);
    }

    else
    {
      v19 = -1;
    }

    nullsub_1();
    v21 = v20;
    v22 = sub_638C(*a1);
    v23 = sub_5A20(v19, v26, v21, v22, 0, a2, a3, a4, a5, a6, a7);
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*(a1 + 2))
  {
    v14 = 0;
  }

  else
  {
    sub_B984(a1);
    v14 = 1;
  }

  v15 = sub_144D8(*a1);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v15;
  v17 = sub_233F4(a1, v15);
  sub_23644(a1, a2, v16, a6, a7, v17);
  if (v17)
  {
    LOBYTE(v17) = 0;
    goto LABEL_10;
  }

  *__error() = 6;
  v23 = 0xFFFFFFFFLL;
  if (v14)
  {
LABEL_14:
    sub_A00C(a1);
  }

LABEL_15:
  if ((v17 & 1) == 0)
  {
    sub_233F4(a1, 0);
  }

  return v23;
}

uint64_t sub_5984()
{
  result = qword_70138;
  if (!qword_70138)
  {
    v1 = malloc_type_malloc(0x40uLL, 0x10A00402BC2289AuLL);
    qword_70138 = v1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    v1[3] = 0u;
    sub_592AC(v1, sub_233B4, 0);
    v2 = timer_callout_init("bootp_session");
    result = qword_70138;
    *(qword_70138 + 48) = v2;
  }

  return result;
}

_BYTE *sub_5A04(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 76) = 1;
  return sub_5474(v2, a1);
}

ssize_t sub_5A20(int a1, _WORD *a2, const char *a3, int a4, uint64_t a5, int a6, int a7, unsigned int a8, __int16 a9, void *a10, int a11)
{
  if ((byte_70300 & 1) == 0)
  {
    byte_70300 = 1;
    dword_70304 = arc4random();
  }

  if ((a4 == 24 || a4 == 1) && (a5 || a6 == -1))
  {
    v20 = sub_5E1C(a3);
    if (v20 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
      v41 = a3;
      v43 = a9;
      if (a4 == 24)
      {
        *a2 = -1;
        a2[8] = 8;
        v22 = (a2 + 9);
        v23 = (a2 + 13);
        v24 = a2 + 23;
        v25 = 46;
      }

      else
      {
        v22 = (a2 + 7);
        v23 = (a2 + 11);
        v24 = a2 + 21;
        if (a6 == -1)
        {
          v29 = -1;
          a2[2] = -1;
        }

        else
        {
          v29 = *a5;
          a2[2] = *(a5 + 4);
        }

        *a2 = v29;
        a2[6] = 8;
        v25 = 42;
      }

      memmove(v24, a10, a11);
      *v23 = a7;
      *(v23 + 1) = a6;
      *(v23 + 4) = 4352;
      v30 = bswap32(a11 + 8) >> 16;
      *(v23 + 5) = v30;
      *(v22 + 10) = __rev16(v43);
      *(v22 + 11) = __rev16(a8);
      *(v22 + 6) = v30;
      *(v22 + 13) = sub_64A0(v23, a11 + 20);
      *v22 = 0;
      *(v22 + 1) = 0;
      *v22 = 69;
      *(v22 + 2) = 4607;
      *(v22 + 3) = a7;
      *(v22 + 4) = a6;
      *(v22 + 1) = bswap32(a11 + 28) >> 16;
      v31 = dword_70304++;
      *(v22 + 2) = bswap32(v31) >> 16;
      *(v22 + 5) = sub_64A0(v22, 0x14u);
      v19 = sub_65A0(v21, a2, v25 + a11);
      if ((v19 & 0x80000000) != 0)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v32 = _os_log_pack_size();
          v33 = &v40 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
          v34 = __error();
          v35 = _os_log_pack_fill(v33, v32, *v34, &dword_0, "bpf_write(%s) failed: %s (%d)", v40, v41, v42);
          v36 = __error();
          v37 = strerror(*v36);
          v38 = *__error();
          *v35 = 136315650;
          *(v35 + 4) = v41;
          *(v35 + 12) = 2080;
          *(v35 + 14) = v37;
          *(v35 + 22) = 1024;
          *(v35 + 24) = v38;
          __SC_log_send();
        }
      }

      sub_65BC(v21);
    }
  }

  else if (a1 < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v26 = _os_log_pack_size();
      v27 = &v40 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = __error();
      *_os_log_pack_fill(v27, v26, *v28, &dword_0, "neither bpf nor socket send available") = 0;
      __SC_log_send();
    }

    return 0;
  }

  else
  {
    *&v44.sa_data[6] = 0;
    *&v44.sa_len = 528;
    *v44.sa_data = __rev16(a8);
    *&v44.sa_data[2] = a6;
    if (sendto(a1, a10, a11, 0, &v44, 0x10u) >= a11)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v19;
}

uint64_t sub_5E1C(uint64_t a1)
{
  v2 = sub_6280();
  v3 = v2;
  if ((v2 & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v12 = &v26 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "Transmitter: bpf_fd() failed, %s (%d)", v26, v27);
      v15 = __error();
      v16 = strerror(*v15);
      v17 = *__error();
      *v14 = 136315394;
      *(v14 + 4) = v16;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v17;
      __SC_log_send();
    }
  }

  else
  {
    if ((sub_63A8(v2) & 0x80000000) != 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v18 = _os_log_pack_size();
        v19 = &v26 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = __error();
        v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "Transmitter: failed to set filter, %s (%d)", v26, v27);
        v22 = __error();
        v23 = strerror(*v22);
        v24 = *__error();
        *v21 = 136315394;
        *(v21 + 4) = v23;
        *(v21 + 12) = 1024;
        *(v21 + 14) = v24;
        __SC_log_send();
      }

      goto LABEL_11;
    }

    if ((sub_641C(v3, a1) & 0x80000000) != 0)
    {
      if (*__error() != 6)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v4 = _os_log_pack_size();
          v5 = &v26 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
          v6 = __error();
          v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "Transmitter: bpf_setif (%s) failed: %s (%d)", v26, v27, v28);
          v8 = __error();
          v9 = strerror(*v8);
          v10 = *__error();
          *v7 = 136315650;
          *(v7 + 4) = a1;
          *(v7 + 12) = 2080;
          *(v7 + 14) = v9;
          *(v7 + 22) = 1024;
          *(v7 + 24) = v10;
          __SC_log_send();
        }
      }

LABEL_11:
      sub_65BC(v3);
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

const char *sub_6160(int a1)
{
  if (a1 <= 261)
  {
    v1 = "INFORM";
    v10 = "LINKLOCAL";
    if (a1 != 261)
    {
      v10 = 0;
    }

    if (a1 != 260)
    {
      v1 = v10;
    }

    v11 = "BOOTP";
    v12 = "DHCP";
    if (a1 != 259)
    {
      v12 = 0;
    }

    if (a1 != 258)
    {
      v11 = v12;
    }

    if (a1 <= 259)
    {
      v1 = v11;
    }

    v5 = "NONE";
    v13 = "NONE-V4";
    v14 = "MANUAL";
    if (a1 != 257)
    {
      v14 = 0;
    }

    if (a1 != 256)
    {
      v13 = v14;
    }

    if (a1)
    {
      v5 = v13;
    }

    v9 = a1 <= 257;
  }

  else
  {
    v1 = "LINKLOCAL-V6";
    v2 = "DHCPV6-PD";
    if (a1 != 518)
    {
      v2 = 0;
    }

    if (a1 != 517)
    {
      v1 = v2;
    }

    v3 = "RTADV";
    v4 = "6TO4";
    if (a1 != 516)
    {
      v4 = 0;
    }

    if (a1 != 515)
    {
      v3 = v4;
    }

    if (a1 <= 516)
    {
      v1 = v3;
    }

    v5 = "MANUAL-V6";
    v6 = "AUTOMATIC-V6";
    if (a1 != 514)
    {
      v6 = 0;
    }

    if (a1 != 513)
    {
      v5 = v6;
    }

    v7 = "FAILOVER";
    v8 = "NONE-V6";
    if (a1 != 512)
    {
      v8 = 0;
    }

    if (a1 != 262)
    {
      v7 = v8;
    }

    if (a1 <= 512)
    {
      v5 = v7;
    }

    v9 = a1 <= 514;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_6280()
{
  snprintf(__str, 0x100uLL, "/dev/bpf%d", 0);
  v0 = open(__str, 2, 0);
  if ((v0 & 0x80000000) != 0)
  {
    if (*__error() != 16)
    {
      return v0;
    }

    for (i = 1; ; ++i)
    {
      snprintf(__str, 0x100uLL, "/dev/bpf%d", i);
      v0 = open(__str, 2, 0);
      if ((v0 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 16)
      {
        return v0;
      }
    }
  }

  v3 = 900;
  ioctl(v0, 0x8004427BuLL, &v3);
  return v0;
}

uint64_t sub_638C(uint64_t a1)
{
  v1 = *(a1 + 75);
  if (v1 == 144)
  {
    v2 = 24;
  }

  else
  {
    v2 = -1;
  }

  if (v1 == 6)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_63A8(int a1)
{
  v3 = 6;
  v2[1] = &v3;
  v2[0] = 1;
  return ioctl(a1, 0x80104267uLL, v2);
}

uint64_t sub_641C(int a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  __strlcpy_chk();
  return ioctl(a1, 0x8020426CuLL, v4);
}

uint64_t sub_64A0(_OWORD *a1, unsigned int a2)
{
  if (a2 < 32)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      a2 = v3 - 32;
      v4 = *a1;
      v5 = *(a1 + 1);
      a1 += 2;
      v2 += vaddvq_s32(vaddq_s32(vaddl_u16(*v4.i8, *v5.i8), vaddl_high_u16(v4, v5)));
      v6 = v3 > 0x3F;
      v3 -= 32;
    }

    while (v6);
  }

  if (a2 < 8)
  {
    v7 = a2;
    if (!a2)
    {
      return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
    }
  }

  else
  {
    do
    {
      v7 = a2 - 8;
      v8 = *a1;
      a1 = (a1 + 8);
      v2 += vaddvq_s32(vmovl_u16(v8));
      v6 = a2 > 0xF;
      a2 -= 8;
    }

    while (v6);
    if (!v7)
    {
      return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
    }
  }

  v2 = HIWORD(v2) + v2;
  if (HIWORD(v2))
  {
    v2 -= 0xFFFF;
  }

  v9 = v7 - 2;
  if (v7 < 2)
  {
    v11 = a1;
  }

  else
  {
    v10 = v9 & 0xFFFFFFFE;
    v11 = a1 + v10 + 2;
    for (i = v7; i > 1; i -= 2)
    {
      v13 = *a1;
      a1 = (a1 + 2);
      v2 += v13;
    }

    v9 = v7 - v10 - 4;
  }

  if (v9 == -1)
  {
    v2 += *v11;
  }

  return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
}

uint64_t sub_65BC(int a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  else
  {
    return close(a1);
  }
}

uint64_t sub_65CC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xFFFFFFFFLL / (a2 - a1 + 1);
  if (v3)
  {
    return arc4random() / v3 + a1;
  }

  return v2;
}

uint64_t timer_callout_set_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (result)
  {
    v11 = result;
    sub_687C(result);
    if (a2)
    {
      *(v11 + 8) = a2;
      *(v11 + 16) = a3;
      *(v11 + 24) = a4;
      *(v11 + 32) = a5;
      *(v11 + 48) = dword_70250;
      *(v11 + 52) = 1;
      v12 = *(v11 + 40);
      if (v12)
      {
        v13 = dispatch_time(0, (a6 * 1000000000.0));
        dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
        if (*(v11 + 56))
        {
          dispatch_resume(*(v11 + 40));
          *(v11 + 56) = 0;
        }
      }

      else
      {
        v14 = sub_CB80();
        v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v14);
        *(v11 + 40) = v15;
        handler = _NSConcreteStackBlock;
        v24 = 0x40000000;
        v25 = sub_B18;
        v26 = &unk_690C0;
        v27 = v11;
        dispatch_source_set_event_handler(v15, &handler);
        v16 = *(v11 + 40);
        v17 = dispatch_time(0, (a6 * 1000000000.0));
        dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_activate(*(v11 + 40));
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v18 = _os_log_pack_size();
        v19 = &handler - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = __error();
        v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "timer(%s): %0.09gs", handler, *&v24);
        v22 = *v11;
        *v21 = 136315394;
        *(v21 + 4) = v22;
        *(v21 + 12) = 2048;
        *(v21 + 14) = a6;
        __SC_log_send();
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_687C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = dword_70250;
  v2 = *(a1 + 40);
  if (v2 && !*(a1 + 56))
  {
    dispatch_suspend(v2);
    *(a1 + 56) = 1;
  }

  *(a1 + 52) = 0;
}

uint64_t timer_set_relative(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a3 / 1000000.0;
  if (a2 < 0)
  {
    v7 = 0.000001;
  }

  return timer_callout_set_0(a1, a4, a5, a6, a7, v7 + (a2 & ~(a2 >> 63)));
}

void sub_690C(int a1, int a2, int a3, intptr_t notificationID)
{
  HIDWORD(v6) = a3 + 536870320;
  LODWORD(v6) = a3 + 536870320;
  v5 = v6 >> 4;
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      return;
    }

    if (v5 == 3 && (byte_701F0 & 1) == 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        v12 = &v18 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = __error();
        *_os_log_pack_fill(v12, v11, *v13, &dword_0, "IPConfiguration: Sleep") = 0;
        __SC_log_send();
      }

      byte_701F0 = 1;
      v14 = sub_295C(qword_70160);
      if (v14 >= 1)
      {
        v15 = v14;
        v16 = 0;
        do
        {
          v17 = sub_42C0(qword_70160, v16);
          sub_8D44(v17 + 24, 10, 0);
          sub_8D44(v17 + 56, 10, 0);
          sub_41E8((v17 + 144));
          v16 = (v16 + 1);
        }

        while (v15 != v16);
      }
    }

    goto LABEL_19;
  }

  if (v5 != 4 && v5 != 11)
  {
    if (v5 == 13 && byte_701F0 == 1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        v9 = &v18 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        v10 = __error();
        *_os_log_pack_fill(v9, v8, *v10, &dword_0, "IPConfiguration: Wake") = 0;
        __SC_log_send();
      }

      byte_701F0 = 0;
      qword_701F8 = timer_get_current_time();
      ++dword_701B8;
      sub_6BB8();
    }

LABEL_19:
    IOAllowPowerChange(dword_70200, notificationID);
  }
}

uint64_t sub_6BB8()
{
  result = sub_295C(qword_70160);
  if (result >= 1)
  {
    v2 = result;
    v3 = 0;
    *&v1 = 136315138;
    v10 = v1;
    do
    {
      v4 = sub_42C0(qword_70160, v3);
      if (v4[31] == dword_701B8)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v5 = _os_log_pack_size();
          v6 = &v10 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
          v7 = __error();
          v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "%s: ignoring wake (already processed)", v10);
          nullsub_1();
          *v8 = v10;
          *(v8 + 4) = v9;
          result = __SC_log_send();
        }
      }

      else
      {
        result = sub_6D48(v4);
      }

      v3 = (v3 + 1);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_6D48(unsigned int *a1)
{
  v2 = *(a1 + 1);
  v33[0] = 0;
  v33[1] = 0;
  v31 = sub_2430(v2);
  v32 = v3;
  if (v31)
  {
    v4 = HIDWORD(v31) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || v3 == 0)
  {
    v6 = *a1;
    if ((*a1 & 0x20) != 0)
    {
      *a1 = v6 & 0xFFFFFFDF;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        v8 = &v30 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = __error();
        v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "%s: processing link timer expired at wake", v30);
        nullsub_1();
        *v10 = 136315138;
        *(v10 + 4) = v11;
        __SC_log_send();
      }

      sub_36A38(a1);
    }

    a1[31] = dword_701B8;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      v13 = &v30 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "%s: Wake", v30);
      nullsub_1();
      *v15 = 136315138;
      *(v15 + 4) = v16;
      __SC_log_send();
    }

    sub_7154(a1, v33, &v31);
    if (a1[40])
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

      v17 = _os_log_pack_size();
      v18 = &v30 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill(v18, v17, v19, &dword_0, "%s: ignoring wake (interface is disabled)");
      goto LABEL_20;
    }

    if (sub_295C((a1 + 6)) >= 1)
    {
      nullsub_1();
      sub_7A40(v27, 1);
      sub_8D44((a1 + 6), 11, v33);
    }

    result = sub_295C((a1 + 14));
    if (result >= 1)
    {
      if ((v6 & 0x20) != 0 || (nullsub_1(), !sub_ECB0(v28)))
      {
        sub_12E30(a1, 1);
      }

      v29 = *(a1 + 18);
      if (v29)
      {
        CFRelease(v29);
      }

      *(a1 + 18) = sub_EE70(qword_70188, *(a1 + 2));
      return sub_8D44((a1 + 14), 11, v33);
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v22 = _os_log_pack_size();
      v23 = &v30 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *__error();
      v20 = _os_log_pack_fill(v23, v22, v24, &dword_0, "%s: wake on same network (link inactive)");
LABEL_20:
      v25 = v20;
      nullsub_1();
      *v25 = 136315138;
      *(v25 + 4) = v26;
      return __SC_log_send();
    }
  }

  return result;
}

void sub_7154(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a1[1];
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *a3;
  *(a2 + 12) = *(a3 + 2);
  *(a2 + 4) = v7;
  if (sub_73DC(v6))
  {
    v8 = sub_73E8(a1[2]);
    v20 = v8;
    if (v8)
    {
      v9 = sub_395D4(a1[12], v8);
      if (v9 == 3)
      {
        if (!sub_13304(v6))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v15 = _os_log_pack_size();
            v16 = &v20 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
            v17 = __error();
            v18 = _os_log_pack_fill(v16, v15, *v17, &dword_0, "%s: Wi-Fi roam", v20);
            nullsub_1();
            *v18 = 136315138;
            *(v18 + 4) = v19;
            __SC_log_send();
          }
        }

        *a2 = 2;
      }

      else if (v9 == 2)
      {
        *a2 = 1;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v10 = _os_log_pack_size();
          v11 = &v20 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
          v12 = __error();
          v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "%s: Wi-Fi switched networks", v20);
          nullsub_1();
          *v13 = 136315138;
          *(v13 + 4) = v14;
          __SC_log_send();
        }
      }
    }

    else if (!*a3 || *(a3 + 1))
    {
      goto LABEL_15;
    }

    sub_33018(a1, v8);
LABEL_15:
    sub_41E8(&v20);
  }
}

uint64_t sub_73E8(uint64_t a1)
{
  v2 = sub_7708(a1);
  v3 = v2;
  if (v2)
  {
    v4 = sub_39534(v2);
    v5 = sub_3952C(v3);
    v6 = sub_395C4(v3);
    v7 = sub_395CC(v3);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v8 = __SC_log_enabled();
    if (v6)
    {
      if (v8)
      {
        v9 = _os_log_pack_size();
        v28 = &v28;
        v10 = v7;
        v11 = v4;
        v12 = &v28 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = __error();
        v14 = _os_log_pack_fill(v12, v9, *v13, &dword_0, "%@: SSID %@ BSSID %@ NetworkID %@ Security %s ConnectionID %u");
        v15 = sub_395BC(v3);
        v16 = sub_38B24(v15);
        *v14 = 138413570;
        *(v14 + 4) = a1;
        *(v14 + 12) = 2112;
        *(v14 + 14) = v5;
        *(v14 + 22) = 2112;
        *(v14 + 24) = v11;
        *(v14 + 32) = 2112;
        *(v14 + 34) = v6;
        *(v14 + 42) = 2080;
        *(v14 + 44) = v16;
        *(v14 + 52) = 1024;
        *(v14 + 54) = v10;
LABEL_9:
        __SC_log_send();
      }
    }

    else if (v8)
    {
      v21 = _os_log_pack_size();
      v22 = &v28 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __error();
      v24 = _os_log_pack_fill(v22, v21, *v23, &dword_0, "%@: SSID %@ BSSID %@ Security %s ConnectionID %u");
      v25 = sub_395BC(v3);
      v26 = sub_38B24(v25);
      *v24 = 138413314;
      *(v24 + 4) = a1;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v5;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v4;
      *(v24 + 32) = 2080;
      *(v24 + 34) = v26;
      *(v24 + 42) = 1024;
      *(v24 + 44) = v7;
      goto LABEL_9;
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v17 = _os_log_pack_size();
      v18 = &v28 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = __error();
      v20 = _os_log_pack_fill(v18, v17, *v19, &dword_0, "%@: no SSID");
      *v20 = 138412290;
      *(v20 + 4) = a1;
      goto LABEL_9;
    }
  }

  return v3;
}

uint64_t sub_7708(uint64_t a1)
{
  v1 = sub_38CCC(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFDataCreateMutable(0, 0);
  if (Apple80211Get() || Apple80211Get())
  {
    Instance = 0;
  }

  else
  {
    pthread_once(&stru_700D8, sub_397E0);
    Instance = _CFRuntimeCreateInstance();
    *(Instance + 16) = sub_57CB4(Mutable);
    *(Instance + 36) = 0;
    *(Instance + 40) = 0;
    *(Instance + 32) = sub_38ED8(v2);
    *(Instance + 24) = sub_39094(v2);
    *(Instance + 56) = sub_391E8(v2);
    *(Instance + 60) = sub_393FC(v2);
  }

  CFRelease(Mutable);
  Apple80211Close();
  return Instance;
}

uint64_t sub_7838()
{
  if (dword_700F0 < 0)
  {
    v1 = socket(2, 2, 0);
    dword_700F0 = v1;
    sub_2424();
    if (v1 < 0)
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        v8 = &v13 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = __error();
        v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "socket(AF_INET, SOCK_DGRAM, 0) failed, %s", v13);
        v11 = __error();
        v12 = strerror(*v11);
        *v10 = 136315138;
        *(v10 + 4) = v12;
        __SC_log_send();
      }
    }

    else
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        v3 = &v13 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
        v4 = __error();
        v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "inet socket opened %d", v13);
        v6 = dword_700F0;
        *v5 = 67109120;
        v5[1] = v6;
        __SC_log_send();
      }

      if (off_70260)
      {
        off_70260();
      }
    }
  }

  return dword_700F0;
}

uint64_t sub_7A40(uint64_t a1, int a2)
{
  v4 = sub_7838();
  v5 = v4;
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  memset(v12, 0, sizeof(v12));
  __strlcpy_chk();
  v6 = ioctl(v5, 0xC0206950uLL, v12);
  sub_7BE0(v6, a1, "SIOCPROTOATTACH");
  if (!v6)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = v12 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "inet_attach_interface(%s)", *&v12[0]);
      *v10 = 136315138;
      *(v10 + 4) = a1;
      __SC_log_send();
    }

    if (a2)
    {
      sub_409F0(v5, a1, 1, 0);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_7BE0(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __error();
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v10 = _os_log_pack_size();
    v11 = &v16 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "ioctl(%s, %s) failed status, %s", v16, v17, v18);
    v14 = __error();
    v15 = strerror(*v14);
    *v13 = 136315650;
    *(v13 + 4) = a2;
    *(v13 + 12) = 2080;
    *(v13 + 14) = a3;
    *(v13 + 22) = 2080;
    *(v13 + 24) = v15;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v6 = _os_log_pack_size();
    v7 = &v16 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s: %s success", v16, v17);
    *v9 = 136315394;
    *(v9 + 4) = a2;
    *(v9 + 12) = 2080;
    *(v9 + 14) = a3;
  }

  return __SC_log_send();
}

uint64_t sub_7DFC(_DWORD *a1, uint64_t a2, const void **a3)
{
  v4 = a2;
  v6 = sub_1688(a1);
  v7 = sub_1690(a1);
  v8 = 0;
  v9 = v7;
  switch(v4)
  {
    case 0:
      if ((sub_10EE8(v7) & 8) != 0)
      {
        return 4;
      }

      if (v6)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          return 6;
        }

        v49 = _os_log_pack_size();
        v50 = &__str[-((__chkstk_darwin(v49) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v51 = *__error();
        v52 = _os_log_pack_fill(v50, v49, v51, &dword_0, "DHCP %s: re-entering start state");
        goto LABEL_125;
      }

      v6 = malloc_type_malloc(0x930uLL, 0x10E0040563940C1uLL);
      bzero(v6, 0x930uLL);
      *(v6 + 168) = sub_638C(v9) == 24;
      sub_58490((v6 + 208));
      sub_151FC(a1, v6);
      sub_254C0(v6);
      sub_2ADA0(a1);
      *(v6 + 1744) = 0;
      nullsub_1();
      snprintf(__str, 0x20uLL, "dhcp-%s", v64);
      v65 = timer_callout_init(__str);
      *(v6 + 1760) = v65;
      if (!v65)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_104;
        }

        v71 = _os_log_pack_size();
        v72 = &__str[-((__chkstk_darwin(v71) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v73 = *__error();
        v74 = _os_log_pack_fill(v72, v71, v73, &dword_0, "DHCP %s: timer_callout_init failed");
        goto LABEL_103;
      }

      sub_B744();
      v66 = bootp_client_init(v9);
      *(v6 + 16) = v66;
      if (!v66)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_104;
        }

        v75 = _os_log_pack_size();
        v76 = &__str[-((__chkstk_darwin(v75) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v77 = *__error();
        v74 = _os_log_pack_fill(v76, v75, v77, &dword_0, "DHCP %s: bootp_client_init failed");
        goto LABEL_103;
      }

      v67 = sub_216C0(v9);
      *(v6 + 8) = v67;
      if (!v67)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_104;
        }

        v78 = _os_log_pack_size();
        v79 = &__str[-((__chkstk_darwin(v78) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v80 = *__error();
        v74 = _os_log_pack_fill(v79, v78, v80, &dword_0, "DHCP %s: arp_client_init failed");
        goto LABEL_103;
      }

      if (!a3)
      {
        goto LABEL_91;
      }

      v68 = *a3;
      if (v68 < 1)
      {
        goto LABEL_91;
      }

      *(v6 + 32) = v68;
      v69 = malloc_type_malloc(v68, 0x429DF903uLL);
      *(v6 + 24) = v69;
      if (v69)
      {
        memmove(v69, a3[1], *(v6 + 32));
LABEL_91:
        sub_25504(a1);
        return 0;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v98 = _os_log_pack_size();
        v99 = &__str[-((__chkstk_darwin(v98) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v100 = *__error();
        v74 = _os_log_pack_fill(v99, v98, v100, &dword_0, "DHCP %s: malloc client ID failed");
LABEL_103:
        v81 = v74;
        nullsub_1();
        *v81 = 136315138;
        *(v81 + 4) = v82;
        __SC_log_send();
      }

LABEL_104:
      v8 = 5;
LABEL_105:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v83 = _os_log_pack_size();
        v84 = &__str[-((__chkstk_darwin(v83) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v85 = __error();
        v86 = _os_log_pack_fill(v84, v83, *v85, &dword_0, "DHCP %s: stop", v101);
        nullsub_1();
        *v86 = 136315138;
        *(v86 + 4) = v87;
        __SC_log_send();
      }

      if (!v6)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v91 = _os_log_pack_size();
          v92 = &__str[-((__chkstk_darwin(v91) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          v93 = *__error();
          v52 = _os_log_pack_fill(v92, v91, v93, &dword_0, "DHCP %s: already stopped");
          goto LABEL_125;
        }

        return 6;
      }

      if (v4 == 1)
      {
        sub_2568C(a1);
      }

      sub_25B1C(a1, 0xCu);
      if (*(v6 + 1760))
      {
        timer_callout_free((v6 + 1760));
      }

      if (*(v6 + 16))
      {
        bootp_client_free((v6 + 16));
      }

      if (*(v6 + 8))
      {
        sub_15000((v6 + 8));
      }

      v88 = *(v6 + 24);
      if (v88)
      {
        free(v88);
        *(v6 + 24) = 0;
      }

      DHCPLeaseListFree(v6 + 136);
      sub_58494(v6 + 208);
      v89 = *(v6 + 120);
      if (v89)
      {
        CFRelease(v89);
      }

      *(v6 + 120) = 0;
      v90 = *(v6 + 128);
      if (v90)
      {
        CFRelease(v90);
      }

      free(v6);
      sub_151FC(a1, 0);
      return v8;
    case 1:
      goto LABEL_105;
    case 3:
    case 8:
      if (!v6)
      {
        return 6;
      }

      if (*a3 == 1)
      {
        sub_FE80(a1);
        sub_102A4(a1, 0x13u);
        sub_4884(a1, 0);
      }

      v10 = a3 + 1;
      v11 = a1;
      v12 = v4;
      goto LABEL_6;
    case 4:
      sub_263C8(a1);
      return 0;
    case 7:
      if (!v6)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v61 = _os_log_pack_size();
          v62 = &__str[-((__chkstk_darwin(v61) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          v63 = *__error();
          v52 = _os_log_pack_fill(v62, v61, v63, &dword_0, "DHCP %s: private data is NULL");
LABEL_125:
          v94 = v52;
          nullsub_1();
          *v94 = 136315138;
          *(v94 + 4) = v95;
          __SC_log_send();
          return 6;
        }

        return 6;
      }

      v34 = *a3;
      *(a3 + 2) = 0;
      if (v34 && (v35 = *v34, v35 >= 1))
      {
        v36 = *(v6 + 24);
        if (v36 && *(v6 + 32) == v35 && !bcmp(v36, v34[1], v35))
        {
          return 0;
        }
      }

      else if (!*(v6 + 24))
      {
        return 0;
      }

      v8 = 0;
      *(a3 + 2) = 1;
      return v8;
    case 9:
      if (!v6)
      {
        return 6;
      }

      if (!*(v6 + 40))
      {
        v37 = sub_1CE28(a1);
        if (v37 == *(v6 + 1732) && *a3 == v37 && !sub_2B250(a1, a3))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v38 = _os_log_pack_size();
            v39 = &__str[-((__chkstk_darwin(v38) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
            v40 = __error();
            v41 = _os_log_pack_fill(v39, v38, *v40, &dword_0, "DHCP %s: %d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x, DHCP Server %d.%d.%d.%d", v101, *__str, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
            nullsub_1();
            v42 = a3[1];
            sub_25C24(v41, v43, *(v6 + 1732), *(v6 + 1733), *(v6 + 1734), *(v6 + 1735), *v42, v42[1], v42[2], v42[3], v42[4], v42[5], *(v6 + 1736), *(v6 + 1737), *(v6 + 1738), *(v6 + 1739));
            __SC_log_send();
          }

          sub_25CBC(a1, 0);
          sub_102A4(a1, 8u);
          sub_25E14(a1);
        }
      }

      return 0;
    case 10:
    case 12:
      if (!v6)
      {
        return 6;
      }

      if (*(v6 + 56))
      {
        sub_26440(a1, (v6 + 224), *(v6 + 1724), 1);
      }

      return 0;
    case 11:
      if (sub_8CC0(a1))
      {
        return 0;
      }

      if (*(a3 + 1) && !*(a3 + 2) || sub_2480(v9) && *a3 == 1 || !sub_2480(v9) && !*(a3 + 3))
      {
        sub_FE80(a1);
        sub_102A4(a1, 0x13u);
        v11 = a1;
        v12 = 11;
        v10 = a3 + 1;
LABEL_6:
        sub_123A0(v11, v12, v10);
      }

      else
      {
        current_time = timer_get_current_time();
        if (sub_8F14(a1, current_time))
        {
          v54 = *(v6 + 1744);
          if (v54 <= 8 && ((1 << v54) & 0x1A0) != 0 && sub_2AED8(a1) && !*(v6 + 200))
          {
            if (*a3 == 2 && (*__str = 0, v103 = 0, v104 = 0, sub_2AA6C(a1, __str)))
            {
LABEL_30:
              sub_26598(a1, 0, __str);
            }

            else if (*(v6 + 72) != -1)
            {
              v96 = *(v6 + 192);
              if (current_time >= v96 || (v97 = v96 - current_time, LODWORD(v55) = dword_7007C, v97 < v55))
              {
                sub_26A78(a1, 0, 0);
              }

              else
              {
                v25 = v97;
                v23 = *(v6 + 1760);
                v24 = sub_26A78;
                v26 = 0;
                v27 = a1;
                v28 = 0;
LABEL_19:
                timer_set_relative(v23, v25, v26, v24, v27, v28, 0);
              }
            }
          }

          else
          {
            *__str = *(v6 + 1732);
            sub_8F90(a1, 0, __str);
          }
        }

        else
        {
          sub_B40(a1, 0, 0);
        }
      }

      return 0;
    case 13:
      if (!sub_1CE28(a1))
      {
        return 0;
      }

      v29 = *(v6 + 1724);
      if (!v29)
      {
        return 0;
      }

      v8 = 0;
      *a3 = (v6 + 224);
      *(a3 + 2) = v29;
      a3[2] = (v6 + 208);
      a3[3] = *(v6 + 80);
      a3[4] = *(v6 + 64);
      return v8;
    case 16:
      *__str = 0;
      v103 = 0;
      v104 = 0;
      v30 = *(v6 + 1744);
      v31 = v30 > 8;
      v32 = (1 << v30) & 0x1A0;
      v33 = v31 || v32 == 0;
      if (!v33 && sub_2AED8(a1) && sub_2AA6C(a1, __str))
      {
        goto LABEL_30;
      }

      return 0;
    case 17:
      sub_15B34(a1, a3);
      return 0;
    case 20:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v13 = _os_log_pack_size();
        v14 = &__str[-((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v15 = __error();
        v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "DHCP %s: ForgetSSID %@");
        nullsub_1();
        v18 = v17;
        nullsub_1();
        *v16 = 136315394;
        *(v16 + 4) = v18;
        *(v16 + 12) = 2112;
        *(v16 + 14) = v19;
        __SC_log_send();
      }

      DHCPLeaseListRemoveLeaseForWiFi((v6 + 136), a3, 0);
      v20 = *(v6 + 120);
      if (!v20 || !CFEqual(v20, a3))
      {
        return 0;
      }

      sub_2568C(a1);
      sub_FE80(a1);
      sub_102A4(a1, 0xBu);
      sub_58494(v6 + 208);
      v21 = *(v6 + 120);
      if (v21)
      {
        CFRelease(v21);
      }

      *(v6 + 120) = 0;
      v22 = *(v6 + 128);
      if (v22)
      {
        CFRelease(v22);
      }

      *(v6 + 128) = 0;
      sub_BC60(a1, 0);
      v23 = *(v6 + 1760);
      v24 = sub_272FC;
      v25 = 0;
      v26 = 500000;
      v27 = a1;
      v28 = 20;
      goto LABEL_19;
    case 22:
      v44 = sub_1688(a1);
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v46 = Mutable;
      v47 = *(v44 + 1744);
      if (v47 > 8)
      {
        v48 = "<undefined>";
      }

      else
      {
        v48 = off_68DA8[v47];
      }

      sub_578FC(Mutable, @"State", v48);
      if (sub_1CE28(a1) && *(v44 + 56))
      {
        v56 = sub_2833C(v44 + 208);
        if (v56)
        {
          v57 = v56;
          CFDictionarySetValue(v46, @"Packet", v56);
          CFRelease(v57);
        }

        sub_1DB1C(v46, @"LeaseStartTime", *(v44 + 80));
        if (*(v44 + 72) == -1)
        {
          CFDictionarySetValue(v46, @"LeaseIsInfinite", kCFBooleanTrue);
        }

        else
        {
          sub_1DB1C(v46, @"LeaseExpirationTime", *(v44 + 64));
        }
      }

      else
      {
        v58 = *(v44 + 1744);
        if (v58 <= 6 && ((1 << v58) & 0x58) != 0 && *(v44 + 1776) != 0.0)
        {
          v59 = timer_get_current_time();
          v60 = *(v44 + 1776);
          if (v59 > v60)
          {
            sub_1DF6C(v46, @"ElapsedTime", (v59 - v60));
          }
        }
      }

      CFDictionarySetValue(a3, @"DHCP", v46);
      CFRelease(v46);
      return 0;
    default:
      return v8;
  }
}

void sub_8CD0(uint64_t a1)
{
  v1 = sub_1688(a1);
  if (v1)
  {
    v2 = v1;
    timer_cancel(*(v1 + 1760));
    bootp_client_disable_receive(*(v2 + 16));
    v3 = *(v2 + 8);

    sub_A314(v3);
  }
}

uint64_t sub_8D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_295C(a1);
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_42C0(a1, v7);
      sub_8DB0(v8, a2, a3);
      v7 = (v7 + 1);
      result = sub_295C(a1);
    }

    while (v7 < result);
  }

  return result;
}

uint64_t sub_8DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = sub_5324(v6);
  if (v7)
  {
    (v7)(a1, a2, a3);
    return 0;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      v10 = v13 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "config_method_event(%d): lookup_func(%d) failed", v13[0], v13[2]);
      *v12 = 67109376;
      *(v12 + 4) = a2;
      *(v12 + 8) = 1024;
      *(v12 + 10) = v6;
      __SC_log_send();
    }

    return 6;
  }
}

uint64_t sub_8F14(uint64_t a1, double a2)
{
  v4 = sub_1688(a1);
  result = *(v4 + 56);
  if (result && *(v4 + 72) != -1 && *(v4 + 64) <= a2)
  {
    sub_254C0(v4);
    sub_2ADA0(a1);
    sub_FE80(a1);
    sub_102A4(a1, 0x14u);
    return *(v4 + 56);
  }

  return result;
}

void sub_8F90(_DWORD *a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v104 = current_time;
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  v103 = 0;
  if (sub_8CC0(a1))
  {
    sub_2AEA4(&v103, 0);
  }

  if (a2 == 5)
  {
    LODWORD(v105[0]) = 0;
    *v106 = 0;
    v102 = 0;
    v101 = 0;
    v100 = 0;
    if (!sub_280D8(a3, *(v7 + 2332), v8, &v102, &v101 + 1))
    {
      return;
    }

    v29 = sub_8CC0(a1);
    v30 = v102;
    if (!v29 && v102 == 6)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v31 = _os_log_pack_size();
        v32 = &v97 - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = __error();
        v34 = _os_log_pack_fill(v32, v31, *v33, &dword_0, "DHCP %s: got DHCP NAK", v97);
        nullsub_1();
        *v34 = 136315138;
        *(v34 + 4) = v35;
        __SC_log_send();
      }

      if (!sub_216B0(*(v7 + 8)))
      {
        sub_102A4(a1, 0xBu);
        sub_2994C(a1, 1u);
        return;
      }

      *(v7 + 48) = 1;
      v30 = v102;
    }

    v36 = HIDWORD(v101);
    if (HIDWORD(v101) && v30 == 5)
    {
      if (dword_70140 && sub_A694(a1) && !*(v7 + 44) && sub_29624(a3 + 16, v105))
      {
        sub_29688(a1, 0, v105);
        return;
      }

      if (*(*a3 + 16) == *(v7 + 1732))
      {
        dhcp_get_lease_from_options(a3 + 16, v106, &v101, &v100);
        v37 = sub_5883C(a3 + 16, off_70010, dword_70018);
        v38 = v37;
        if (!*(v7 + 1724) || v37 > *(v7 + 1728))
        {
          sub_2ADA0(a1);
          sub_58494(v7 + 208);
          memmove((v7 + 224), *a3, *(a3 + 8));
          v39 = *(a3 + 8);
          *(v7 + 1724) = v39;
          *(v7 + 1728) = v38;
          sub_585E0((v7 + 208), v7 + 224, v39, 0);
          *(v7 + 1732) = *(*a3 + 16);
          *(v7 + 1736) = v36;
          sub_28AEC(a1, "INIT-REBOOT", *v106, v101, v100, current_time);
          if (sub_2990C(v8) || v38 == dword_70018 && sub_2440(a1))
          {
LABEL_60:
            sub_28E1C(a1, 0, 0);
            return;
          }

          if (!*(v7 + 44))
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v40 = _os_log_pack_size();
              v41 = &v97 - ((__chkstk_darwin(v40) + 15) & 0xFFFFFFFFFFFFFFF0);
              v42 = __error();
              v43 = _os_log_pack_fill(v41, v40, *v42, &dword_0, "DHCP %s: INIT-REBOOT (%d.%d.%d.%d) gathering began at %g", v97, v98, v99, v101, v102, v104);
              nullsub_1();
              v44 = *(v7 + 1732);
              v45 = *(v7 + 1733);
              v46 = *(v7 + 1734);
              v47 = *(v7 + 1735);
              v48 = current_time - *(v7 + 1752);
              *v43 = 136316418;
              *(v43 + 4) = v49;
              *(v43 + 12) = 1024;
              *(v43 + 14) = v44;
              *(v43 + 18) = 1024;
              *(v43 + 20) = v45;
              *(v43 + 24) = 1024;
              *(v43 + 26) = v46;
              *(v43 + 30) = 1024;
              *(v43 + 32) = v47;
              *(v43 + 36) = 2048;
              *(v43 + 38) = v48;
              __SC_log_send();
            }

            *(v7 + 44) = 1;
            timer_callout_set(*(v7 + 1760), sub_8F90, a1, 2, 0, G_gather_secs);
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

      v102 = 10974720;
      memset(v105, 0, 304);
      v9 = &v103;
      if (!v103)
      {
        v9 = a3;
      }

      HIDWORD(v101) = *v9;
      sub_9D7C(a1, 6u);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        v11 = &v97 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = __error();
        v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "dhcp_init_reboot(%s) requesting %s", v97, v98);
        nullsub_1();
        v15 = v14;
        v16 = inet_ntop(2, &v101 + 4, v106, 0x10u);
        *v13 = 136315394;
        *(v13 + 4) = v15;
        *(v13 + 12) = 2080;
        *(v13 + 14) = v16;
        __SC_log_send();
      }

      *(v7 + 200) = 0;
      *v7 = 1;
      *(v7 + 1752) = current_time;
      if (*(v7 + 1776) == 0.0)
      {
        *(v7 + 1776) = current_time;
      }

      *(v7 + 1768) = 0;
      *(v7 + 2340) = G_initial_wait_secs;
      sub_8CD0(a1);
      v17 = *(v7 + 168);
      v18 = sub_A694(a1);
      if (v17)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = v17 != 0;
      }

      v21 = sub_A840(v8);
      v22 = sub_638C(v8);
      v23 = sub_AD1C(v8);
      v24 = sub_A848((v7 + 1784), 3, v21, v22, v23, *(v7 + 24), *(v7 + 32), v20, v105);
      *(v7 + 176) = v24;
      if (!v24)
      {
        goto LABEL_49;
      }

      if (sub_ADA4(v105, 50, 4, &v101 + 4))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v25 = _os_log_pack_size();
          v26 = &v97 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
          v27 = *__error();
          v28 = _os_log_pack_fill(v26, v25, v27, &dword_0, "DHCP %s: INIT-REBOOT add request ip failed, %s");
LABEL_47:
          v53 = v28;
          nullsub_1();
          v55 = v54;
          v56 = sub_588A8(v105);
          *v53 = 136315394;
          *(v53 + 4) = v55;
          *(v53 + 12) = 2080;
          *(v53 + 14) = v56;
LABEL_48:
          __SC_log_send();
          goto LABEL_49;
        }

        goto LABEL_49;
      }

      if (sub_ADA4(v105, 51, 4, &v102))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v50 = _os_log_pack_size();
          v51 = &v97 - ((__chkstk_darwin(v50) + 15) & 0xFFFFFFFFFFFFFFF0);
          v52 = *__error();
          v28 = _os_log_pack_fill(v51, v50, v52, &dword_0, "DHCP %s: INIT-REBOOT add lease time failed, %s");
          goto LABEL_47;
        }

LABEL_49:
        sub_25B1C(a1, 5u);
        return;
      }

      sub_B1BC(a1, v105);
      if (sub_ADA4(v105, 255, 0, 0))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_49;
        }

        v57 = _os_log_pack_size();
        v58 = &v97 - ((__chkstk_darwin(v57) + 15) & 0xFFFFFFFFFFFFFFF0);
        v59 = __error();
        v60 = _os_log_pack_fill(v58, v57, *v59, &dword_0, "DHCP %s: INIT-REBOOT failed to terminate options", v97);
        nullsub_1();
        *v60 = 136315138;
        *(v60 + 4) = v61;
        goto LABEL_48;
      }

      v62 = sub_B830(v105) + 240;
      if (v62 <= 0x12C)
      {
        v62 = 300;
      }

      *(v7 + 184) = v62;
      *(v7 + 44) = 0;
      *(v7 + 48) = 0;
      ++*(v7 + 2332);
      *(v7 + 1732) = HIDWORD(v101);
      *(v7 + 1728) = 0;
      sub_B744();
      bootp_client_enable_receive(*(v7 + 16), sub_8F90, a1, 5);
      sub_BC60(a1, 1);
    }

    if (*(v7 + 44) == 1)
    {
      goto LABEL_60;
    }

    v63 = *(v7 + 1768);
    *(v7 + 1768) = v63 + 1;
    if (v63 < 1 || (v64 = sub_169C(a1), HIDWORD(v64)) || !v64)
    {
      sub_16C0(a1, 0, &v104);
      v65 = sub_2440(a1);
      v66 = *(v7 + 1768);
      if (!v65 && v66 > dword_7002C && dword_70024)
      {
        sub_4A20(a1, 9);
        sub_4884(a1, 1);
        v66 = *(v7 + 1768);
      }

      if (v66 <= dword_70038 + 1)
      {
        v76 = *(v7 + 176);
        *(v76 + 4) = bswap32(*(v7 + 2332));
        *(v76 + 8) = __rev16((v104 - *(v7 + 1752)));
        if ((bootp_client_transmit(*(v7 + 16), 0xFFFFFFFF, v103, word_70044, word_70020, v76, *(v7 + 184)) & 0x80000000) != 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v77 = _os_log_pack_size();
            v78 = &v97 - ((__chkstk_darwin(v77) + 15) & 0xFFFFFFFFFFFFFFF0);
            v79 = __error();
            v80 = _os_log_pack_fill(v78, v77, *v79, &dword_0, "DHCP %s: INIT-REBOOT transmit failed", v97);
            nullsub_1();
            *v80 = 136315138;
            *(v80 + 4) = v81;
            __SC_log_send();
          }
        }

        v82 = *(v7 + 2340);
        v83 = sub_65CC(0, 999999);
        v84 = v83;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v85 = _os_log_pack_size();
          v98 = v83;
          v86 = v85;
          v97 = &v97;
          v87 = &v97 - ((__chkstk_darwin(v85) + 15) & 0xFFFFFFFFFFFFFFF0);
          v88 = __error();
          v89 = _os_log_pack_fill(v87, v86, *v88, &dword_0, "DHCP %s: INIT-REBOOT (%d.%d.%d.%d) waiting at %g for %ld.%06d", v97, v98, v99, v101, v102, v104, v105[0], LODWORD(v105[1]));
          nullsub_1();
          v90 = *(v7 + 1732);
          v91 = *(v7 + 1733);
          v92 = *(v7 + 1734);
          v93 = *(v7 + 1735);
          v94 = v104 - *(v7 + 1752);
          *v89 = 136316930;
          *(v89 + 4) = v95;
          *(v89 + 12) = 1024;
          *(v89 + 14) = v90;
          *(v89 + 18) = 1024;
          *(v89 + 20) = v91;
          *(v89 + 24) = 1024;
          *(v89 + 26) = v92;
          *(v89 + 30) = 1024;
          *(v89 + 32) = v93;
          *(v89 + 36) = 2048;
          *(v89 + 38) = v94;
          *(v89 + 46) = 2048;
          *(v89 + 48) = v82;
          *(v89 + 56) = 1024;
          *(v89 + 58) = v83;
          v84 = v98;
          __SC_log_send();
        }

        timer_set_relative(*(v7 + 1760), v82, v84, sub_8F90, a1, 2, 0);
        v96 = 2 * *(v7 + 2340);
        if (v96 >= G_max_wait_secs)
        {
          v96 = G_max_wait_secs;
        }

        *(v7 + 2340) = v96;
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v67 = _os_log_pack_size();
          v68 = &v97 - ((__chkstk_darwin(v67) + 15) & 0xFFFFFFFFFFFFFFF0);
          v69 = __error();
          v70 = _os_log_pack_fill(v68, v67, *v69, &dword_0, "DHCP %s: INIT-REBOOT (%d.%d.%d.%d) timed out", v97, v98, v99, v101, v102);
          nullsub_1();
          v71 = *(v7 + 1732);
          v72 = *(v7 + 1733);
          v73 = *(v7 + 1734);
          v74 = *(v7 + 1735);
          *v70 = 136316162;
          *(v70 + 4) = v75;
          *(v70 + 12) = 1024;
          *(v70 + 14) = v71;
          *(v70 + 18) = 1024;
          *(v70 + 20) = v72;
          *(v70 + 24) = 1024;
          *(v70 + 26) = v73;
          *(v70 + 30) = 1024;
          *(v70 + 32) = v74;
          __SC_log_send();
        }

        sub_FE80(a1);
        sub_1008C(a1, 0xAu, 0);
        --*(v7 + 1768);
        sub_B40(a1, 0, 0);
      }
    }

    else
    {
      sub_263C8(a1);
    }
  }
}

uint64_t sub_9D7C(uint64_t a1, unsigned int a2)
{
  sub_1690(a1);
  *(sub_1688(a1) + 1744) = a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v5 = _os_log_pack_size();
    v6 = v11 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "DHCP %s: %s", v11[0], v11[1]);
    nullsub_1();
    if (a2 > 8)
    {
      v10 = "<undefined>";
    }

    else
    {
      v10 = off_68DA8[a2];
    }

    *v8 = 136315394;
    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;
    *(v8 + 14) = v10;
    return __SC_log_send();
  }

  return result;
}

void timer_cancel(uint64_t *a1)
{
  if (a1)
  {
    if (*(a1 + 13))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        v3 = &v7 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
        v4 = __error();
        v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "timer(%s): cancelled", v7);
        v6 = *a1;
        *v5 = 136315138;
        *(v5 + 4) = v6;
        __SC_log_send();
      }
    }

    sub_687C(a1);
  }
}

uint64_t sub_A00C(uint64_t a1)
{
  result = sub_5984();
  if (*(a1 + 8))
  {
    v3 = result;
    v4 = *(result + 40);
    if (v4 <= 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v14 = _os_log_pack_size();
        v15 = &v20 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = __error();
        v17 = _os_log_pack_fill(v15, v14, *v16, &dword_0, "bootp_client_close_socket(%s): refcount %d", v20, v21);
        nullsub_1();
        v18 = *(v3 + 40);
        *v17 = 136315394;
        *(v17 + 4) = v19;
        *(v17 + 12) = 1024;
        *(v17 + 14) = v18;
        return __SC_log_send();
      }
    }

    else
    {
      *(result + 40) = v4 - 1;
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v5 = _os_log_pack_size();
        v6 = &v20 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        v7 = __error();
        v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "bootp_client_close_socket(%s): refcount %d", v20, v21);
        nullsub_1();
        v9 = *(v3 + 40);
        *v8 = 136315394;
        *(v8 + 4) = v10;
        *(v8 + 12) = 1024;
        *(v8 + 14) = v9;
        result = __SC_log_send();
      }

      *(a1 + 8) = 0;
      if (!*(v3 + 40))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v11 = _os_log_pack_size();
          v12 = &v20 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
          v13 = __error();
          *_os_log_pack_fill(v12, v11, *v13, &dword_0, "bootp_client_close_socket(): scheduling delayed close") = 0;
          __SC_log_send();
        }

        return timer_set_relative(*(v3 + 48), 1, 0, sub_21D4, v3, 0, 0);
      }
    }
  }

  return result;
}

uint64_t bootp_client_disable_receive(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return sub_A00C(a1);
}

void sub_A314(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 4) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  sub_A374(a1);
  timer_cancel(*(a1 + 64));
  v2 = *(a1 + 256);
  if (v2)
  {
    free(v2);
    *(a1 + 256) = 0;
  }

  sub_4834(a1);
}

void sub_A374(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
    v3 = *(v2 + 64);
    if (v3 <= 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v18 = _os_log_pack_size();
        v19 = &v24 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = __error();
        v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "arp_client_close_fd(%s): bpf open fd count is %d", v24, v25);
        nullsub_1();
        v22 = *(v2 + 64);
        *v21 = 136315394;
        *(v21 + 4) = v23;
        *(v21 + 12) = 1024;
        *(v21 + 14) = v22;
        __SC_log_send();
      }
    }

    else
    {
      *(v2 + 64) = v3 - 1;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = _os_log_pack_size();
        v5 = &v24 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        v6 = __error();
        v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "arp_client_close_fd(%s): bpf open fd count is %d", v24, v25);
        nullsub_1();
        v8 = *(v2 + 64);
        *v7 = 136315394;
        *(v7 + 4) = v9;
        *(v7 + 12) = 1024;
        *(v7 + 14) = v8;
        __SC_log_send();
      }

      *(a1 + 8) = 0;
      if (!*(v2 + 64))
      {
        if (*(v2 + 56))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v10 = _os_log_pack_size();
            v11 = &v24 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
            v12 = __error();
            v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "arp_client_close_fd(%s): closing bpf fd %d", v24, v25);
            nullsub_1();
            v15 = v14;
            v16 = sub_5A18(*(v2 + 56));
            *v13 = 136315394;
            *(v13 + 4) = v15;
            *(v13 + 12) = 1024;
            *(v13 + 14) = v16;
            __SC_log_send();
          }

          sub_2B78((v2 + 56));
        }

        v17 = *(v2 + 40);
        if (v17)
        {
          free(v17);
          *(v2 + 40) = 0;
        }
      }
    }
  }
}

uint64_t sub_A694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (sub_295C(v1 + 56) < 1)
  {
    v5 = 0;
    v4 = 1;
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(sub_42C0(v1 + 56, v2) + 24) & 0xFFFFFFFE;
      v4 = v3 != 514;
      if (v3 == 514)
      {
        break;
      }

      v2 = (v2 + 1);
      if (v2 >= sub_295C(v1 + 56))
      {
        v5 = 0;
        goto LABEL_8;
      }
    }

    v5 = 1;
  }

LABEL_8:
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    v7 = v13 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s: IPv6OnlyPreferred is %spossible", v13[0], v13[1]);
    nullsub_1();
    v11 = "";
    if (v4)
    {
      v11 = "not ";
    }

    *v9 = 136315394;
    *(v9 + 4) = v10;
    *(v9 + 12) = 2080;
    *(v9 + 14) = v11;
    __SC_log_send();
  }

  return v5;
}

char *sub_A848(char *a1, uint64_t a2, const void *a3, int a4, unsigned int a5, const void *a6, signed int a7, unsigned int a8, uint64_t *a9)
{
  v13 = a2;
  v14 = a1;
  if (a6)
  {
    v15 = a7 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = a5;
  }

  else
  {
    v17 = a7;
  }

  if (v15)
  {
    v18 = a3;
  }

  else
  {
    v18 = a6;
  }

  bzero(a1, 0x224uLL);
  v14[1] = a4;
  *v14 = 1;
  if (a4 == 24)
  {
    v14[2] = 0;
    if (v18 == a3)
    {
      v16 = 27;
    }
  }

  else
  {
    v14[2] = a5;
    memmove(v14 + 28, a3, a5);
  }

  if (a8 & 1 | G_must_broadcast)
  {
    *(v14 + 5) = 128;
  }

  *(v14 + 59) = 1666417251;
  sub_AD24(a9, v14 + 240, 308);
  if (sub_AF64(a9, v13))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      v20 = &v44 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = __error();
      v22 = _os_log_pack_fill(v20, v19, *v21, &dword_0, "%s: couldn't add dhcp message tag %d, %s", v44, v45, v46);
      v23 = sub_588A8(a9);
      *v22 = 136315650;
      *(v22 + 4) = "make_dhcp_request";
      *(v22 + 12) = 1024;
      *(v22 + 14) = v13;
      *(v22 + 18) = 2080;
      *(v22 + 20) = v23;
      __SC_log_send();
    }

    return 0;
  }

  if (v13 != 4 && v13 != 7)
  {
    HIWORD(v44) = -9211;
    if (!sub_AF94(a9, (a8 >> 1) & 1))
    {
      return 0;
    }

    if (sub_ADA4(a9, 57, 2, &v44 + 6))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v31 = _os_log_pack_size();
        v32 = &v44 - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = *__error();
        v30 = _os_log_pack_fill(v32, v31, v33, &dword_0, "%s: couldn't add max message size, %s");
        goto LABEL_33;
      }

      return 0;
    }
  }

  v24 = malloc_type_malloc(v17 + 1, 0x7B89C52FuLL);
  if (!v24)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v36 = _os_log_pack_size();
      v37 = &v44 - ((__chkstk_darwin(v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = __error();
      v39 = _os_log_pack_fill(v37, v36, *v38, &dword_0, "%s: malloc failed, %s (%d)", v44, v45, v46);
      v40 = __error();
      v41 = strerror(*v40);
      v42 = *__error();
      *v39 = 136315650;
      *(v39 + 4) = "make_dhcp_request";
      *(v39 + 12) = 2080;
      *(v39 + 14) = v41;
      *(v39 + 22) = 1024;
      *(v39 + 24) = v42;
      goto LABEL_36;
    }

    return 0;
  }

  v25 = v24;
  *v24 = v16;
  memmove(v24 + 1, v18, v17);
  v26 = sub_ADA4(a9, 61, v17 + 1, v25);
  free(v25);
  if (v26)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v27 = _os_log_pack_size();
      v28 = &v44 - ((__chkstk_darwin(v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = *__error();
      v30 = _os_log_pack_fill(v28, v27, v29, &dword_0, "%s: couldn't add client identifier, %s");
LABEL_33:
      v34 = v30;
      v35 = sub_588A8(a9);
      *v34 = 136315394;
      *(v34 + 4) = "make_dhcp_request";
      *(v34 + 12) = 2080;
      *(v34 + 14) = v35;
LABEL_36:
      __SC_log_send();
      return 0;
    }

    return 0;
  }

  return v14;
}

double sub_AD24(uint64_t a1, void *a2, int a3)
{
  bzero(a2, a3);
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 287454020;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 296) = 1;
  return result;
}

uint64_t sub_ADA4(uint64_t a1, int a2, int a3, void *__src)
{
  *(a1 + 40) = 0;
  v5 = (a1 + 40);
  if (a3 >= 256)
  {
    snprintf(v5, 0x100uLL, "tag %d option %d > %d", __src);
    return 1;
  }

  if (*a1 != 287454020 || *(a1 + 24))
  {
    __strlcpy_chk();
    return 1;
  }

  v7 = *(a1 + 20);
  if (a2)
  {
    if (a2 == 255)
    {
      if (v7 >= *(a1 + 16))
      {
        snprintf(v5, 0x100uLL, "can't add end tag %d > %d", __src);
        return 1;
      }

      *(*(a1 + 8) + v7) = -1;
      ++*(a1 + 20);
      *(a1 + 24) = 1;
      goto LABEL_22;
    }

    v9 = a3 + 2;
    if (a3 + 2 + v7 + *(a1 + 296) > *(a1 + 16))
    {
      snprintf(v5, 0x100uLL, "can't add tag %d (%d > %d)", __src);
      return 2;
    }

    *(*(a1 + 8) + v7) = a2;
    *(*(a1 + 8) + *(a1 + 20) + 1) = a3;
    if (a3)
    {
      memmove((*(a1 + 8) + *(a1 + 20) + 2), __src, a3);
    }

    v10 = *(a1 + 28);
    v11 = *(a1 + 20);
    *(a1 + 28) = v11;
    *(a1 + 32) = v10;
    v8 = v9 + v11;
  }

  else
  {
    if (*(a1 + 296) + v7 >= *(a1 + 16))
    {
      snprintf(v5, 0x100uLL, "can't add pad tag %d > %d", __src);
      return 2;
    }

    *(*(a1 + 8) + v7) = 0;
    v8 = *(a1 + 20) + 1;
  }

  *(a1 + 20) = v8;
LABEL_22:
  result = 0;
  ++*(a1 + 36);
  return result;
}

uint64_t sub_AF94(uint64_t *a1, int a2)
{
  v3 = dword_70018;
  if (a2)
  {
    v4 = 0;
    v5 = off_70010;
  }

  else
  {
    v5 = off_70010;
    if (dword_70018 < 1)
    {
LABEL_7:
      v4 = 0;
    }

    else
    {
      v6 = 0;
      while (off_70010[v6] != 108)
      {
        if (dword_70018 == ++v6)
        {
          goto LABEL_7;
        }
      }

      v7 = malloc_type_malloc(dword_70018, 0x100004077774924uLL);
      v8 = dword_70018;
      if (dword_70018 < 1)
      {
        goto LABEL_22;
      }

      v5 = v7;
      v9 = 0;
      v3 = 0;
      v10 = off_70010;
      v11 = dword_70018;
      do
      {
        v12 = v10[v9];
        if (v12 != 108)
        {
          v7[v3] = v12;
          v8 = v11;
          ++v3;
        }

        ++v9;
      }

      while (v9 < v8);
      v4 = v7;
      if (v3 < 1)
      {
LABEL_22:
        sub_5BF18();
      }
    }
  }

  if (!sub_ADA4(a1, 55, v3, v5))
  {
    v18 = 1;
    if (!v4)
    {
      return v18;
    }

    goto LABEL_18;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __error();
    v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "%s: couldn't add parameter request list, %s", v20[0], v20[1]);
    v17 = sub_588A8(a1);
    *v16 = 136315394;
    *(v16 + 4) = "add_parameter_request_list";
    *(v16 + 12) = 2080;
    *(v16 + 14) = v17;
    __SC_log_send();
  }

  v18 = 0;
  if (v4)
  {
LABEL_18:
    free(v4);
  }

  return v18;
}

uint64_t sub_B1BC(uint64_t a1, uint64_t *a2)
{
  sub_1690(a1);
  HIDWORD(v42) = 0;
  if (!sub_B6A8(a1, &v42 + 1))
  {
    v4 = sub_12A44();
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!v4)
    {
      if (!result)
      {
        return result;
      }

      v26 = _os_log_pack_size();
      v27 = &v42 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = __error();
      v29 = _os_log_pack_fill(v27, v26, *v28, &dword_0, "DHCP %s: hostname is NULL", v42);
      nullsub_1();
      *v29 = 136315138;
      *(v29 + 4) = v30;
      return __SC_log_send();
    }

    if (result)
    {
      v16 = _os_log_pack_size();
      v17 = &v42 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v16, *v18, &dword_0, "DHCP %s: supplying hostname '%s'", v42, v43);
      nullsub_1();
      *v19 = 136315394;
      *(v19 + 4) = v20;
      *(v19 + 12) = 2080;
      *(v19 + 14) = v4;
      __SC_log_send();
    }

LABEL_27:
    v36 = strlen(v4);
    result = sub_ADA4(a2, 12, v36, v4);
    if (result)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v37 = _os_log_pack_size();
        v38 = &v42 - ((__chkstk_darwin(v37) + 15) & 0xFFFFFFFFFFFFFFF0);
        v39 = __error();
        v40 = _os_log_pack_fill(v38, v37, *v39, &dword_0, "make_dhcp_request: couldn't add host_name, %s", v42);
        v41 = sub_588A8(a2);
        *v40 = 136315138;
        *(v40 + 4) = v41;
        return __SC_log_send();
      }
    }

    return result;
  }

  if (!HIDWORD(v42))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v21 = _os_log_pack_size();
    v22 = &v42 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v21, *v23, &dword_0, "DHCP %s: not supplying hostname", v42);
    nullsub_1();
    *v24 = 136315138;
    *(v24 + 4) = v25;
    return __SC_log_send();
  }

  v4 = qword_70148;
  if (!qword_70148)
  {
    v5 = MGCopyAnswer();
    if (v5)
    {
      v6 = v5;
      v7 = sub_57C28(v5, 0x8000100u);
      qword_70148 = v7;
      if (v7)
      {
        v8 = v7;
        v9 = strlen(v7);
        if (v9)
        {
          v10 = v9;
          for (i = 0; v10 != i; ++i)
          {
            v12 = *(v8 + i);
            if (v12 < 0)
            {
              v14 = __maskrune(v12, 0x100uLL);
              v13 = qword_70148;
              if (!v14)
              {
LABEL_21:
                *(v8 + i) = 0;
                break;
              }
            }

            else
            {
              v13 = v8;
              if ((_DefaultRuneLocale.__runetype[v12] & 0x100) == 0)
              {
                goto LABEL_21;
              }
            }

            v8 = v13;
          }
        }
      }

      CFRelease(v6);
    }

    v4 = qword_70148;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v31 = _os_log_pack_size();
    v32 = &v42 - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = __error();
    v34 = _os_log_pack_fill(v32, v31, *v33, &dword_0, "DHCP %s: supplying device type '%s'", v42, v43);
    nullsub_1();
    *v34 = 136315394;
    *(v34 + 4) = v35;
    *(v34 + 12) = 2080;
    *(v34 + 14) = v4;
    result = __SC_log_send();
  }

  if (v4)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_B6A8(uint64_t a1, _DWORD *a2)
{
  v4 = *(*(a1 + 16) + 8);
  v5 = sub_2480(v4);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(a1 + 16);
  v7 = *(v6 + 96);
  if (!v7 || ((v8 = sub_395BC(*(v6 + 96))) != 0 ? (v9 = v8 == 0xFFFF) : (v9 = 1), v9))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v5 = sub_597BC(v4);
  if (!v5)
  {
LABEL_14:
    v10 = 0;
    if (!a2)
    {
      return v10;
    }

    goto LABEL_10;
  }

  v5 = WiFiInfoAllowSharingDeviceType(v7);
LABEL_9:
  v10 = 1;
  if (a2)
  {
LABEL_10:
    *a2 = v5;
  }

  return v10;
}

uint64_t sub_B744()
{
  nullsub_1();

  return sub_B778(v0, 1);
}

uint64_t sub_B778(uint64_t a1, int a2)
{
  result = sub_7838();
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    v7[0] = 0u;
    v7[1] = a2;
    __strlcpy_chk();
    v6 = ioctl(v5, 0xC0206926uLL, v7);
    return sub_7BE0(v6, a1, "SIOCAUTOADDR");
  }

  return result;
}

uint64_t sub_B830(uint64_t result)
{
  if (result)
  {
    if (*result == 287454020)
    {
      return *(result + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t bootp_client_enable_receive(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  result = sub_B984(a1);
  if (!result)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v5 = _os_log_pack_size();
      v6 = &v10 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "bootp_client_enable_receive(%s): failed", v10);
      nullsub_1();
      *v8 = 136315138;
      *(v8 + 4) = v9;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_B984(uint64_t a1)
{
  v2 = sub_5984();
  if (*(a1 + 8))
  {
    return 1;
  }

  v4 = v2;
  timer_cancel(*(v2 + 48));
  ++*(v4 + 40);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    v6 = &v17 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "bootp_client_open_socket (%s): refcount %d", v17, v18);
    nullsub_1();
    v9 = *(v4 + 40);
    *v8 = 136315394;
    *(v8 + 4) = v10;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v9;
    __SC_log_send();
  }

  result = 1;
  *(a1 + 8) = 1;
  if (*(v4 + 40) <= 1)
  {
    if (*(v4 + 32))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        v12 = &v17 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = __error();
        *_os_log_pack_fill(v12, v11, *v13, &dword_0, "bootp_client_open_socket(): socket is still open") = 0;
        __SC_log_send();
        return 1;
      }

      return 1;
    }

    if (sub_BDDC(v4))
    {
      return 1;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      v15 = &v17 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      *_os_log_pack_fill(v15, v14, *v16, &dword_0, "bootp_session_open_socket failed") = 0;
      __SC_log_send();
    }

    sub_A00C(a1);
    return 0;
  }

  return result;
}

void sub_BC60(uint64_t result, int a2)
{
  if (*(result + 72) != a2)
  {
    *(result + 72) = a2;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = v11 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "%s %s: %s", v11[0], v11[1], v11[2]);
      v8 = sub_6160(*(result + 24));
      nullsub_1();
      v10 = "busy";
      *v7 = 136315650;
      *(v7 + 4) = v8;
      *(v7 + 12) = 2080;
      if (!a2)
      {
        v10 = "not busy";
      }

      *(v7 + 14) = v9;
      *(v7 + 22) = 2080;
      *(v7 + 24) = v10;
      __SC_log_send();
    }

    sub_CBD0(*(result + 16));
  }
}

uint64_t sub_BDDC(uint64_t a1)
{
  if (*(a1 + 57) == 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      v2 = &v18 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = __error();
      v4 = _os_log_pack_fill(v2, v1, *v3, &dword_0, "%s: waiting for cancel to complete", v18);
      *v4 = 136315138;
      *(v4 + 4) = "bootp_session_open_socket";
      __SC_log_send();
      return 1;
    }

    return 1;
  }

  v7 = sub_C098(*(a1 + 44));
  sub_2424();
  if ((v7 & 0x80000000) == 0)
  {
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      v9 = &v18 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "bootp_session_open_socket(): opened socket %d", v18);
      *v11 = 67109120;
      v11[1] = v7;
      __SC_log_send();
    }

    sub_C788(a1, v7);
    return 1;
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v12 = _os_log_pack_size();
    v13 = &v18 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "bootp_session_open_socket: S_open_bootp_socket() failed, %s", v18);
    v16 = __error();
    v17 = strerror(*v16);
    *v15 = 136315138;
    *(v15 + 4) = v17;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_C098(unsigned int a1)
{
  HIDWORD(v48) = 0;
  v2 = socket(2, 2, 0);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v2;
    *&v49.sa_len = 512;
    *&v49.sa_data[6] = 0;
    *v49.sa_data = __rev16(a1);
    if (bind(v2, &v49, 0x10u))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = _os_log_pack_size();
        v5 = &v48 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        v6 = __error();
        v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "bootp_session: bind port %d failed, %s", v48, *&v49.sa_len);
        v8 = __error();
        v9 = strerror(*v8);
        *v7 = 67109378;
        *(v7 + 4) = a1;
        *(v7 + 8) = 2080;
        *(v7 + 10) = v9;
LABEL_26:
        __SC_log_send();
      }

LABEL_27:
      close(v3);
      return 0xFFFFFFFFLL;
    }

    HIDWORD(v48) = 1;
    if (setsockopt(v3, 0xFFFF, 32, &v48 + 4, 4u) < 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_27;
      }

      v34 = _os_log_pack_size();
      v35 = &v48 - ((__chkstk_darwin(v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = *__error();
      v37 = _os_log_pack_fill(v35, v34, v36, &dword_0, "setsockopt SO_BROADCAST failed, %s");
    }

    else if (ioctl(v3, 0x8004667EuLL, &v48 + 4) < 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_27;
      }

      v38 = _os_log_pack_size();
      v39 = &v48 - ((__chkstk_darwin(v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = *__error();
      v37 = _os_log_pack_fill(v39, v38, v40, &dword_0, "ioctl FIONBIO failed, %s");
    }

    else
    {
      if ((setsockopt(v3, 0, 20, &v48 + 4, 4u) & 0x80000000) == 0)
      {
        if (setsockopt(v3, 0xFFFF, 4356, &v48 + 4, 4u) < 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v16 = _os_log_pack_size();
            v17 = &v48 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
            v18 = __error();
            v19 = _os_log_pack_fill(v17, v16, *v18, &dword_0, "setsockopt(SO_RECV_ANYIF) failed, %s", v48);
            v20 = __error();
            v21 = strerror(*v20);
            *v19 = 136315138;
            *(v19 + 4) = v21;
            __SC_log_send();
          }
        }

        HIDWORD(v48) = 900;
        if (setsockopt(v3, 0xFFFF, 4230, &v48 + 4, 4u) < 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v22 = _os_log_pack_size();
            v23 = &v48 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
            v24 = __error();
            v25 = _os_log_pack_fill(v23, v22, *v24, &dword_0, "setsockopt(SO_TRAFFIC_CLASS) failed, %s", v48);
            v26 = __error();
            v27 = strerror(*v26);
            *v25 = 136315138;
            *(v25 + 4) = v27;
            __SC_log_send();
          }
        }

        HIDWORD(v48) = 0;
        if (setsockopt(v3, 0xFFFF, 4352, &v48 + 4, 4u) < 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v28 = _os_log_pack_size();
            v29 = &v48 - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
            v30 = __error();
            v31 = _os_log_pack_fill(v29, v28, *v30, &dword_0, "setsockopt(SO_DEFUNCTOK) failed, %s", v48);
            v32 = __error();
            v33 = strerror(*v32);
            *v31 = 136315138;
            *(v31 + 4) = v33;
            __SC_log_send();
          }
        }

        return v3;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_27;
      }

      v41 = _os_log_pack_size();
      v42 = &v48 - ((__chkstk_darwin(v41) + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = *__error();
      v37 = _os_log_pack_fill(v42, v41, v43, &dword_0, "setsockopt IP_RECVIF failed, %s");
    }

    v44 = v37;
    v45 = __error();
    v46 = strerror(*v45);
    *v44 = 136315138;
    *(v44 + 4) = v46;
    goto LABEL_26;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (!__SC_log_enabled())
  {
    return 0xFFFFFFFFLL;
  }

  v10 = _os_log_pack_size();
  v11 = &v48 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __error();
  v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "socket failed, %s", v48);
  v14 = __error();
  v15 = strerror(*v14);
  *v13 = 136315138;
  *(v13 + 4) = v15;
  __SC_log_send();
  return 0xFFFFFFFFLL;
}

char *sub_C788(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = &v10[-1] - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "%s: enabling receive on socket %d", v9, LODWORD(v10[0]));
    *v7 = 136315394;
    *(v7 + 4) = "bootp_session_enable_receive";
    *(v7 + 12) = 1024;
    *(v7 + 14) = v2;
    __SC_log_send();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_30A8;
  v10[3] = &unk_68D60;
  v10[4] = a1;
  v11 = v2;
  result = sub_C92C(v2, sub_23BB8, a1, 0, v10);
  *(a1 + 32) = result;
  return result;
}

char *sub_C92C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  memset(&v27, 0, sizeof(v27));
  if (fstat(a1, &v27) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      v14 = &v21 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "%s: fstat %s (%d)", v21, handler, v23);
      v17 = __error();
      v18 = strerror(*v17);
      v19 = *__error();
      *v16 = 136315650;
      *(v16 + 4) = "FDCalloutCreate";
      *(v16 + 12) = 2080;
      *(v16 + 14) = v18;
      *(v16 + 22) = 1024;
      *(v16 + 24) = v19;
      __SC_log_send();
    }

    return 0;
  }

  else
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10A0040DF4813A1uLL);
    *(v10 + 4) = 0;
    *(v10 + 3) = 0;
    *v10 = a1;
    *(v10 + 2) = a2;
    *(v10 + 3) = a3;
    *(v10 + 4) = a4;
    v11 = sub_CB80();
    v12 = dispatch_source_create(&_dispatch_source_type_read, a1, 0, v11);
    *(v10 + 1) = v12;
    dispatch_source_set_cancel_handler(v12, a5);
    handler = _NSConcreteStackBlock;
    v23 = 0x40000000;
    v24 = sub_18150;
    v25 = &unk_68DF0;
    v26 = v10;
    dispatch_source_set_event_handler(*(v10 + 1), &handler);
    dispatch_activate(*(v10 + 1));
  }

  return v10;
}

dispatch_queue_t sub_CB80()
{
  result = qword_70230;
  if (!qword_70230)
  {
    result = dispatch_queue_create("IPConfigurationAgentQueue", 0);
    qword_70230 = result;
  }

  return result;
}

uint64_t sub_CBBC(uint64_t a1)
{
  result = *(*(a1 + 16) + 96);
  if (result)
  {
    return sub_3952C(result);
  }

  return result;
}

void sub_CBD0(unsigned int *a1)
{
  if (sub_CE6C((a1 + 6)))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_CE6C((a1 + 14)) != 0;
  }

  v3 = (*a1 >> 1) & 1;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = &v17 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "%s: %s current %s requested %s", v17, v18, v19, v20);
    nullsub_1();
    v9 = "busy";
    *v7 = 136315906;
    *(v7 + 4) = "IFStateProcessBusy";
    if (v3)
    {
      v10 = "busy";
    }

    else
    {
      v10 = "not busy";
    }

    *(v7 + 14) = v8;
    *(v7 + 12) = 2080;
    *(v7 + 22) = 2080;
    if (!v2)
    {
      v9 = "not busy";
    }

    *(v7 + 24) = v10;
    *(v7 + 32) = 2080;
    *(v7 + 34) = v9;
    __SC_log_send();
  }

  if (v2 != v3)
  {
    *a1 = *a1 & 0xFFFFFFFD | (2 * (v2 & 1));
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v12 = &v17 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "%s: %s", v17, v18);
      nullsub_1();
      v16 = "busy";
      if (!v2)
      {
        v16 = "not busy";
      }

      *v14 = 136315394;
      *(v14 + 4) = v15;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v16;
      __SC_log_send();
    }

    sub_CED0(a1, @"IPConfigurationBusy", (*a1 >> 1) & 1);
  }
}

uint64_t sub_CE6C(uint64_t a1)
{
  if (sub_295C(a1) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (!*(sub_42C0(a1, v2) + 72))
  {
    v2 = (v2 + 1);
    if (v2 >= sub_295C(a1))
    {
      return 0;
    }
  }

  return 1;
}

void sub_CED0(uint64_t a1, const __CFString *a2, int a3)
{
  if (a3)
  {
    v5 = CFDictionaryCreate(0, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  sub_CF60(qword_70188, *(a1 + 16), a2, v5);
  sub_41E8(&v6);
  dispatch_source_merge_data(qword_701C0, 1uLL);
}

void sub_CF60(const __SCDynamicStore *a1, CFStringRef ifname, CFStringRef entity, const void *a4)
{
  if (!xmmword_70280)
  {
    *&xmmword_70280 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (!*(&xmmword_70280 + 1))
  {
    *(&xmmword_70280 + 1) = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    xmmword_70290 = 0uLL;
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, entity);
  sub_D03C(a1, NetworkInterfaceEntity, a4);

  CFRelease(NetworkInterfaceEntity);
}

void sub_D03C(const __SCDynamicStore *a1, const __CFString *value, const void *a3)
{
  v6 = xmmword_70290;
  if (a3)
  {
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(&xmmword_70280 + 1), v6, value);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(*(&xmmword_70280 + 1), FirstIndexOfValue);
      --*(&xmmword_70290 + 1);
LABEL_4:
      CFDictionarySetValue(xmmword_70280, value, a3);
      return;
    }

    v9 = sub_42EC(a1, value);
    v11 = v9;
    if (!v9)
    {
      goto LABEL_4;
    }

    v10 = CFEqual(a3, v9);
    sub_41E8(&v11);
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (!CFArrayContainsValue(*(&xmmword_70280 + 1), v6, value))
    {
      CFArrayAppendValue(*(&xmmword_70280 + 1), value);
      ++*(&xmmword_70290 + 1);
    }

    v8 = xmmword_70280;

    CFDictionaryRemoveValue(v8, value);
  }
}

void sub_D154(uint64_t a1, int a2, uint64_t a3)
{
  sub_1690(a1);
  v6 = sub_1688(a1);
  v7 = v6;
  if (a2 != 6)
  {
    if (a2 != 2)
    {
      if (!a2)
      {
        *(v6 + 32) = 0;
        nullsub_1();
        sub_D888(v8, 0);
        sub_D944(a1);
        *(v7 + 16) = 1;
        v9 = *(v7 + 20);
        if (!v9)
        {
          v9 = bswap32(sub_65CC(0, 65024) - 1442971392);
        }

        *(v7 + 24) = v9;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v10 = _os_log_pack_size();
          v11 = &v52 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
          v12 = __error();
          v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "LINKLOCAL %s: probing %d.%d.%d.%d", v52, v53, v54, v55, v56);
          nullsub_1();
          v14 = *(v7 + 24);
          v15 = *(v7 + 25);
          v16 = *(v7 + 26);
          v17 = *(v7 + 27);
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

        sub_D99C(*v7, sub_D154, a1, 6, 0, *(v7 + 24));
      }

      return;
    }

    goto LABEL_21;
  }

  if (*(a3 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v19 = _os_log_pack_size();
    v20 = &v52 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = __error();
    v22 = _os_log_pack_fill(v20, v19, *v21, &dword_0, "LINKLOCAL %s: ARP probe failed, %s", v52, v53);
    nullsub_1();
    v24 = v23;
    v25 = sub_21F58(*v7);
    *v22 = 136315394;
    *(v22 + 4) = v24;
    *(v22 + 12) = 2080;
    *(v22 + 14) = v25;
LABEL_23:
    __SC_log_send();
    return;
  }

  if (*(a3 + 12))
  {
    goto LABEL_13;
  }

  if (sub_2ADD8(a1, *(v6 + 24)))
  {
    if (!*(a3 + 12))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_16;
      }

      v42 = _os_log_pack_size();
      v43 = &v52 - ((__chkstk_darwin(v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = __error();
      v45 = _os_log_pack_fill(v43, v42, *v44, &dword_0, "LINKLOCAL %s: IP address %d.%d.%d.%d is no longer unique", v52, v53, v54, v55, v56);
      nullsub_1();
      v46 = *(v7 + 24);
      v47 = *(v7 + 25);
      v48 = *(v7 + 26);
      v49 = *(v7 + 27);
      *v45 = 136316162;
      *(v45 + 4) = v50;
      *(v45 + 12) = 1024;
      *(v45 + 14) = v46;
      *(v45 + 18) = 1024;
      *(v45 + 20) = v47;
      *(v45 + 24) = 1024;
      *(v45 + 26) = v48;
      *(v45 + 30) = 1024;
      *(v45 + 32) = v49;
      goto LABEL_15;
    }

LABEL_13:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_16:
      if (*(v7 + 20) == *(v7 + 24))
      {
        *(v7 + 20) = 0;
        sub_FE80(a1);
        sub_102A4(a1, 8u);
      }

      v31 = *(v7 + 16);
      if (v31 >= 10)
      {
        timer_set_relative(*(v7 + 8), 30, 0, sub_D154, a1, 2, 0);
        return;
      }

      *(v7 + 16) = v31 + 1;
LABEL_21:
      v32 = bswap32(sub_65CC(0, 65024) - 1442971392);
      *(v7 + 24) = v32;
      sub_D99C(*v7, sub_D154, a1, 6, 0, v32);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }

      v33 = _os_log_pack_size();
      v34 = &v52 - ((__chkstk_darwin(v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = __error();
      v36 = _os_log_pack_fill(v34, v33, *v35, &dword_0, "LINKLOCAL %s probing %d.%d.%d.%d", v52, v53, v54, v55, v56);
      nullsub_1();
      v37 = *(v7 + 24);
      v38 = *(v7 + 25);
      v39 = *(v7 + 26);
      v40 = *(v7 + 27);
      *v36 = 136316162;
      *(v36 + 4) = v41;
      *(v36 + 12) = 1024;
      *(v36 + 14) = v37;
      *(v36 + 18) = 1024;
      *(v36 + 20) = v38;
      *(v36 + 24) = 1024;
      *(v36 + 26) = v39;
      *(v36 + 30) = 1024;
      *(v36 + 32) = v40;
      goto LABEL_23;
    }

    v26 = _os_log_pack_size();
    v27 = &v52 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v26, *v28, &dword_0, "LINKLOCAL %s: IP address %d.%d.%d.%d is in use by %02x:%02x:%02x:%02x:%02x:%02x", v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    nullsub_1();
    sub_38AB4(v29, v30, *(v7 + 24), *(v7 + 25), *(v7 + 26), *(v7 + 27), *(a3 + 24), *(a3 + 25), *(a3 + 26), *(a3 + 27), *(a3 + 28), *(a3 + 29));
LABEL_15:
    __SC_log_send();
    goto LABEL_16;
  }

  if (sub_169C(a1) == 1)
  {

    sub_38A28(a1, 0xCu);
  }

  else
  {
    sub_2BB1C(a1, *(v7 + 24), 0xFFFFuLL, 0);
    sub_2BB04(a1, *(v7 + 24));
    nullsub_1();
    sub_D888(v51, 1);
    sub_D944(a1);
    *(v7 + 20) = *(v7 + 24);
    sub_102AC(a1, 0);
    *(v7 + 32) = 1;
  }
}

uint64_t sub_D888(uint64_t a1, int a2)
{
  result = sub_7838();
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    v7 = 0u;
    v8 = 0u;
    LODWORD(v8) = a2 != 0;
    __strlcpy_chk();
    v6 = ioctl(v5, 0xC0206928uLL, &v7);
    return sub_7BE0(v6, a1, "SIOCARPIPLL");
  }

  return result;
}

void sub_D944(uint64_t a1)
{
  v1 = sub_1688(a1);
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + 8);
    if (v3)
    {
      timer_cancel(v3);
    }

    v4 = *v2;
    if (*v2)
    {

      sub_A314(v4);
    }
  }
}

void sub_D99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v12 = *(a1 + 16);
  sub_A314(a1);
  sub_E374(v12);
  *(a1 + 48) = a5;
  *(a1 + 52) = a6;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 96) = 0;
  *(a1 + 56) = 0;
  *(a1 + 240) = 0;
  if (sub_DA70(a1))
  {
    *a1 = 0x400000001;

    sub_E5E0(a1);
  }

  else
  {
    *(a1 + 4) = 3;

    sub_21AF4(a1);
  }
}

uint64_t sub_DA70(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  v3 = *(a1 + 16);
  v77 = 0;
  ++*(v3 + 64);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = &v72 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "arp_client_open_fd (%s): refcount %d", v72, v73);
    nullsub_1();
    v8 = *(v3 + 64);
    *v7 = 136315394;
    *(v7 + 4) = v9;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v8;
    __SC_log_send();
  }

  result = 1;
  *(a1 + 8) = 1;
  if (*(v3 + 64) > 1)
  {
    return result;
  }

  v10 = sub_6280();
  if (v10 < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v16 = _os_log_pack_size();
      v17 = &v72 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v16, *v18, &dword_0, "arp_client_open_fd: bpf_new(%s) failed, %s (%d)", v72, v73, v74);
      nullsub_1();
      v21 = v20;
      v22 = __error();
      v23 = strerror(*v22);
      v24 = *__error();
      *v19 = 136315650;
      *(v19 + 4) = v21;
      *(v19 + 12) = 2080;
      *(v19 + 14) = v23;
      *(v19 + 22) = 1024;
      *(v19 + 24) = v24;
      __SC_log_send();
    }

    nullsub_1();
    v26 = v25;
    v27 = __error();
    v28 = strerror(*v27);
    v29 = __error();
    snprintf((a1 + 96), 0x80uLL, "arp_client_open_fd: bpf_new(%s) failed, %s (%d)", v26, v28, *v29);
    goto LABEL_32;
  }

  v11 = v10;
  v77 = 1;
  if (ioctl(v10, 0x8004667EuLL, &v77) < 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v30 = _os_log_pack_size();
      v31 = &v72 - ((__chkstk_darwin(v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = __error();
      v33 = _os_log_pack_fill(v31, v30, *v32, &dword_0, "ioctl FIONBIO failed %s", v72);
      v34 = __error();
      v35 = strerror(*v34);
      *v33 = 136315138;
      *(v33 + 4) = v35;
      __SC_log_send();
    }

    goto LABEL_31;
  }

  nullsub_1();
  if ((sub_641C(v11, v12) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v36 = _os_log_pack_size();
      v37 = &v72 - ((__chkstk_darwin(v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = __error();
      v39 = _os_log_pack_fill(v37, v36, *v38, &dword_0, "arp_client_open_fd: bpf_setif (%s) failed: %s (%d)", v72, v73, v74);
      nullsub_1();
      v41 = v40;
      v42 = __error();
      v43 = strerror(*v42);
      v44 = *__error();
      *v39 = 136315650;
      *(v39 + 4) = v41;
      *(v39 + 12) = 2080;
      *(v39 + 14) = v43;
      *(v39 + 22) = 1024;
      *(v39 + 24) = v44;
      __SC_log_send();
    }

    nullsub_1();
    v45 = __error();
    strerror(*v45);
    __error();
    snprintf((a1 + 96), 0x80uLL, "arp_client_open_fd: bpf_setif (%s) failed: %s (%d)");
    goto LABEL_31;
  }

  sub_E4C0(v11, 1);
  sub_E4F4(v11, 1);
  if (sub_E4B8(*v3) == 144)
  {
    v13 = v11;
    v14 = 16;
    v15 = 50;
  }

  else
  {
    v13 = v11;
    v14 = 12;
    v15 = 42;
  }

  if ((sub_E528(v13, v14, 2054, v15) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v52 = _os_log_pack_size();
      v53 = &v72 - ((__chkstk_darwin(v52) + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = __error();
      v55 = _os_log_pack_fill(v53, v52, *v54, &dword_0, "arp_client_open_fd: bpf_arp_filter(%s) failed: %s (%d)", v72, v73, v74);
      nullsub_1();
      v57 = v56;
      v58 = __error();
      v59 = strerror(*v58);
      v60 = *__error();
      *v55 = 136315650;
      *(v55 + 4) = v57;
      *(v55 + 12) = 2080;
      *(v55 + 14) = v59;
      *(v55 + 22) = 1024;
      *(v55 + 24) = v60;
      __SC_log_send();
    }

    nullsub_1();
    v61 = __error();
    strerror(*v61);
    __error();
    snprintf((a1 + 96), 0x80uLL, "arp_client_open_fd: bpf_arp_filter(%s) failed: %s (%d)");
    goto LABEL_31;
  }

  if ((sub_E5B4(v11, v3 + 48) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v62 = _os_log_pack_size();
      v63 = &v72 - ((__chkstk_darwin(v62) + 15) & 0xFFFFFFFFFFFFFFF0);
      v64 = __error();
      v65 = _os_log_pack_fill(v63, v62, *v64, &dword_0, "arp_client_open_fd: bpf_get_blen(%s) failed, %s (%d)", v72, v73, v74);
      nullsub_1();
      v67 = v66;
      v68 = __error();
      v69 = strerror(*v68);
      v70 = *__error();
      *v65 = 136315650;
      *(v65 + 4) = v67;
      *(v65 + 12) = 2080;
      *(v65 + 14) = v69;
      *(v65 + 22) = 1024;
      *(v65 + 24) = v70;
      __SC_log_send();
    }

    nullsub_1();
    v71 = __error();
    strerror(*v71);
    __error();
    snprintf((a1 + 96), 0x80uLL, "arp_client_open_fd: bpf_get_blen(%s) failed, %s (%d)");
    goto LABEL_31;
  }

  *(v3 + 40) = malloc_type_malloc(*(v3 + 48), 0x37453D8AuLL);
  v72 = _NSConcreteStackBlock;
  v73 = 0x40000000;
  v74 = sub_18034;
  v75 = &unk_68CC0;
  v76 = v11;
  v46 = sub_C92C(v11, sub_2269C, v3, 0, &v72);
  *(v3 + 56) = v46;
  if (!v46)
  {
LABEL_31:
    close(v11);
LABEL_32:
    sub_A374(a1);
    return 0;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (!__SC_log_enabled())
  {
    return 1;
  }

  v47 = _os_log_pack_size();
  v48 = &v72 - ((__chkstk_darwin(v47) + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __error();
  v50 = _os_log_pack_fill(v48, v47, *v49, &dword_0, "arp_client_open_fd (%s): opened bpf fd %d", v72, v73);
  nullsub_1();
  *v50 = 136315394;
  *(v50 + 4) = v51;
  *(v50 + 12) = 1024;
  *(v50 + 14) = v11;
  __SC_log_send();
  return 1;
}

uint64_t sub_E374(uint64_t *a1)
{
  result = sub_E4B8(*a1);
  if (result == 144)
  {
    nullsub_1();
    result = sub_225D8(v3, (a1 + 9));
    if (!result)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v4 = _os_log_pack_size();
        v5 = &v9 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        v6 = __error();
        v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "arp_if_session_update_hardware_address(%s):could not retrieve firewire address", v9);
        nullsub_1();
        *v7 = 136315138;
        *(v7 + 4) = v8;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_E528(int a1, int a2, int a3, int a4)
{
  v6[0] = 40;
  v6[1] = a2;
  v6[2] = 16777237;
  v6[3] = a3;
  v6[4] = 6;
  v6[5] = a4;
  v7 = 6;
  v5[1] = v6;
  v5[0] = 4;
  return ioctl(a1, 0x80104267uLL, v5);
}

void sub_E5E0(uint64_t a1)
{
  v2 = *(a1 + 236);
  v3 = *(a1 + 56);
  v4 = v2 + *(a1 + 232) - v3;
  if (v4 <= 0)
  {
    v10 = 1;
  }

  else
  {
    *(a1 + 56) = v3 + 1;
    if (*(a1 + 240))
    {
      goto LABEL_3;
    }

    if (sub_E940(a1, v4 <= v2, 0))
    {
      if (!*(a1 + 240))
      {
        v11 = *(a1 + 236);
        sub_2424();
        _SC_syslog_os_log_mapping();
        v12 = __SC_log_enabled();
        if (v4 <= v11)
        {
          if (!v12)
          {
            goto LABEL_6;
          }

          v20 = _os_log_pack_size();
          v21 = &v26 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = __error();
          v23 = _os_log_pack_fill(v21, v20, *v22, &dword_0, "ARP (%s): sending (%d of %d) arp announcements ", v26, v27, v28);
          nullsub_1();
          v24 = *(a1 + 236);
          *v23 = 136315650;
          *(v23 + 4) = v25;
          *(v23 + 12) = 1024;
          *(v23 + 14) = v24 - v4 + 1;
          *(v23 + 18) = 1024;
          *(v23 + 20) = v24;
        }

        else
        {
          if (!v12)
          {
            goto LABEL_6;
          }

          v13 = _os_log_pack_size();
          v14 = &v26 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
          v15 = __error();
          v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "ARP (%s): sending (%d of %d) arp probes ", v26, v27, v28);
          nullsub_1();
          v17 = *(a1 + 56);
          v18 = *(a1 + 232);
          *v16 = 136315650;
          *(v16 + 4) = v19;
          *(v16 + 12) = 1024;
          *(v16 + 14) = v17;
          *(v16 + 18) = 1024;
          *(v16 + 20) = v18;
        }

        goto LABEL_5;
      }

LABEL_3:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_6:
        timer_callout_set(*(a1 + 64), sub_E5E0, a1, 0, 0, *(a1 + 224));
        *(a1 + 240) = 0;
        return;
      }

      v5 = _os_log_pack_size();
      v6 = &v26 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "ARP (%s): skipping the first arp announcement.", v26);
      nullsub_1();
      *v8 = 136315138;
      *(v8 + 4) = v9;
LABEL_5:
      __SC_log_send();
      goto LABEL_6;
    }

    v10 = 3;
  }

  *(a1 + 4) = v10;

  sub_21AF4(a1);
}

uint64_t sub_E940(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  memset(v36, 0, sizeof(v36));
  v7 = sub_638C(*v6);
  if (v7 == 24)
  {
    LOWORD(v36[1]) = 1544;
    v11 = *sub_A840(*v6);
    v12 = (a3 + 8);
    if (!a3)
    {
      v12 = &dword_5D018;
    }

    *&v36[0] = *v12;
    *(&v36[0] + 1) = v11;
    *(&v36[1] + 2) = 0x100041000081800;
    *(&v36[1] + 10) = *(v6 + 72);
    if (a3)
    {
      *(&v36[2] + 10) = *a3;
    }

    else
    {
      if (a2 != 1 || *(a1 + 48))
      {
        *(&v36[2] + 10) = *(a1 + 48);
        v18 = *(a1 + 52);
      }

      else
      {
        v18 = *(a1 + 52);
        *(&v36[2] + 10) = v18;
      }

      *(&v36[2] + 14) = v18;
    }

    v19 = 50;
  }

  else
  {
    if (v7 != 1)
    {
      nullsub_1();
      snprintf((a1 + 96), 0x80uLL, "arp_client_transmit(%s): interface hardware type not yet known", v13);
      return 0;
    }

    WORD6(v36[0]) = 1544;
    v8 = sub_A840(*v6);
    v9 = *(v8 + 4);
    *(v36 + 6) = *v8;
    WORD5(v36[0]) = v9;
    if (a3)
    {
      LODWORD(v36[0]) = *(a3 + 8);
      v10 = *(a3 + 12);
    }

    else
    {
      LODWORD(v36[0]) = -1;
      v10 = -1;
    }

    WORD2(v36[0]) = v10;
    *(v36 + 14) = 0x100040600080100;
    v14 = sub_A840(*v6);
    v15 = *(v14 + 4);
    *(&v36[1] + 6) = *v14;
    WORD5(v36[1]) = v15;
    if (a3)
    {
      v16 = *(a3 + 4);
      HIDWORD(v36[1]) = *a3;
      *(&v36[2] + 6) = v16;
    }

    else
    {
      if (a2 != 1 || *(a1 + 48))
      {
        HIDWORD(v36[1]) = *(a1 + 48);
        v17 = *(a1 + 52);
      }

      else
      {
        v17 = *(a1 + 52);
        HIDWORD(v36[1]) = v17;
      }

      *(&v36[2] + 6) = v17;
    }

    v19 = 42;
  }

  v20 = sub_5A18(*(v6 + 56));
  if ((sub_65A0(v20, v36, v19) & 0x80000000) == 0)
  {
    return 1;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v22 = _os_log_pack_size();
    v23 = v36 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __error();
    v25 = _os_log_pack_fill(v23, v22, *v24, &dword_0, "arp_client_transmit(%s) failed, %s (%d)", *&v36[0], *(&v36[0] + 1), LODWORD(v36[1]));
    nullsub_1();
    v27 = v26;
    v28 = __error();
    v29 = strerror(*v28);
    v30 = *__error();
    *v25 = 136315650;
    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    *(v25 + 14) = v29;
    *(v25 + 22) = 1024;
    *(v25 + 24) = v30;
    __SC_log_send();
  }

  nullsub_1();
  v32 = v31;
  v33 = __error();
  v34 = strerror(*v33);
  v35 = __error();
  snprintf((a1 + 96), 0x80uLL, "arp_client_transmit(%s) failed, %s (%d)", v32, v34, *v35);
  return 0;
}

uint64_t sub_ECB0(uint64_t a1)
{
  v10 = 0;
  v2 = sub_7838();
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2;
  if (sub_ED9C(v2, a1, 0, &v10) || !v10)
  {
    return 0;
  }

  v6 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  if (sub_ED9C(v3, a1, v6, &v10))
  {
    v7 = 0;
  }

  else
  {
    v7 = v10;
  }

  if (v6 && !v7)
  {
    free(v6);
    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (v7)
  {
    v8 = v6;
    while (1)
    {
      v9 = *v8++;
      if (v9 == 30)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
  }

  else
  {
LABEL_17:
    v4 = 0;
  }

  free(v6);
  return v4;
}

uint64_t sub_ED9C(int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0u;
  v11 = 0u;
  __strlcpy_chk();
  if (a3)
  {
    LODWORD(v11) = *a4;
    *(&v11 + 1) = a3;
  }

  v8 = ioctl(a1, 0xC02069C4uLL, &v10);
  sub_7BE0(v8, a2, "SIOCGIFPROTOLIST");
  if (!v8)
  {
    *a4 = v11;
  }

  return v8;
}

CFMutableArrayRef sub_EE70(const __SCDynamicStore *a1, CFStringRef ifname)
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, @"BonjourSleepProxyAddress");
  v5 = SCDynamicStoreCopyValue(a1, NetworkInterfaceEntity);
  v16 = v5;
  CFRelease(NetworkInterfaceEntity);
  TypeID = CFDictionaryGetTypeID();
  if (!v5 || CFGetTypeID(v5) != TypeID)
  {
    sub_41E8(&v16);
    v5 = v16;
    if (!v16)
    {
      return 0;
    }
  }

  Value = CFDictionaryGetValue(v5, @"RegisteredAddresses");
  v8 = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == v8)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      v10 = &v16 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "%@: Sleep Proxy Addresses = %@");
      *v12 = 138412546;
      *(v12 + 4) = ifname;
      *(v12 + 12) = 2112;
      *(v12 + 14) = Value;
      __SC_log_send();
    }

    Count = CFArrayGetCount(Value);
    MutableCopy = CFArrayCreateMutableCopy(0, Count, Value);
  }

  else
  {
    MutableCopy = 0;
  }

  CFRelease(v5);
  return MutableCopy;
}

uint64_t sub_F06C(const char *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  if (v4 && !v7)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 6;
    }

    v9 = _os_log_pack_size();
    v10 = &__str[-((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v11 = *__error();
    v12 = _os_log_pack_fill(v10, v9, v11, &dword_0, "RTADV %s: is NULL");
    goto LABEL_5;
  }

  v15 = 0;
  switch(v4)
  {
    case 0:
      if ((sub_10EE8(v6) & 8) != 0)
      {
        return 4;
      }

      if (v8)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          return 6;
        }

        v28 = _os_log_pack_size();
        v29 = &__str[-((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v30 = *__error();
        v12 = _os_log_pack_fill(v29, v28, v30, &dword_0, "RTADV %s: re-entering start state");
LABEL_5:
        v13 = v12;
        nullsub_1();
        *v13 = 136315138;
        *(v13 + 4) = v14;
        __SC_log_send();
        return 6;
      }

      v46 = malloc_type_malloc(0xA8uLL, 0x10700401DDFF929uLL);
      if (!v46)
      {
        sub_2424();
        v15 = 5;
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v55 = _os_log_pack_size();
          v56 = &__str[-((__chkstk_darwin(v55) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          v57 = __error();
          v58 = _os_log_pack_fill(v56, v55, *v57, &dword_0, "RTADV %s: malloc failed", v77);
          nullsub_1();
          *v58 = 136315138;
          *(v58 + 4) = v59;
          __SC_log_send();
        }

        return v15;
      }

      v8 = v46;
      v46[20] = 0;
      *(v46 + 8) = 0u;
      *(v46 + 9) = 0u;
      *(v46 + 6) = 0u;
      *(v46 + 7) = 0u;
      *(v46 + 4) = 0u;
      *(v46 + 5) = 0u;
      *(v46 + 2) = 0u;
      *(v46 + 3) = 0u;
      *v46 = 0u;
      *(v46 + 1) = 0u;
      sub_151FC(a1, v46);
      nullsub_1();
      snprintf(__str, 0x20uLL, "rtadv-%s", v47);
      v48 = timer_callout_init(__str);
      v8[1] = v48;
      if (!v48)
      {
        sub_2424();
        v15 = 5;
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_81;
        }

        v60 = _os_log_pack_size();
        v61 = &__str[-((__chkstk_darwin(v60) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v62 = *__error();
        v63 = _os_log_pack_fill(v61, v60, v62, &dword_0, "RTADV %s: timer_callout_init failed");
LABEL_80:
        v67 = v63;
        nullsub_1();
        *v67 = 136315138;
        *(v67 + 4) = v68;
        __SC_log_send();
        v15 = 5;
        goto LABEL_81;
      }

      v49 = sub_54514(v6);
      *v8 = v49;
      if (!v49)
      {
        sub_2424();
        v15 = 5;
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_81;
        }

        v64 = _os_log_pack_size();
        v65 = &__str[-((__chkstk_darwin(v64) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v66 = *__error();
        v63 = _os_log_pack_fill(v65, v64, v66, &dword_0, "RTADV %s: RTADVSocketCreate failed");
        goto LABEL_80;
      }

      if (G_dhcpv6_enabled)
      {
        if (sub_2C358(a1))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v50 = _os_log_pack_size();
            v51 = &__str[-((__chkstk_darwin(v50) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
            v52 = __error();
            v53 = _os_log_pack_fill(v51, v50, *v52, &dword_0, "RTADV %s: DHCPv6 client is disabled", v77);
            nullsub_1();
            *v53 = 136315138;
            *(v53 + 4) = v54;
            __SC_log_send();
          }
        }

        else
        {
          v76 = sub_47014(a1);
          v8[3] = v76;
          sub_47EF8(v76, sub_43994, a1);
        }
      }

      sub_1C3B4(a1, 0);
      sub_439B8(a1);
      return 0;
    case 1:
LABEL_81:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v69 = _os_log_pack_size();
        v70 = &__str[-((__chkstk_darwin(v69) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v71 = __error();
        v72 = _os_log_pack_fill(v70, v69, *v71, &dword_0, "RTADV %s: stop", v77);
        nullsub_1();
        *v72 = 136315138;
        *(v72 + 4) = v73;
        __SC_log_send();
      }

      if (!sub_2AED8(a1))
      {
        sub_1E064(a1, 0);
      }

      sub_43A14(a1, 0x12u);
      sub_547AC(v8);
      sub_47D30(v8 + 3);
      if (v8[1])
      {
        timer_callout_free(v8 + 1);
      }

      nullsub_1();
      sub_4226C(v74);
      nullsub_1();
      sub_42418(v75);
      sub_151FC(a1, 0);
      free(v8);
      return v15;
    case 3:
    case 8:
    case 11:
      if (*(a3 + 4) && !*(a3 + 8))
      {
        *(v7 + 36) = 0;
        goto LABEL_48;
      }

      if (*a3 == 1)
      {
        *(v7 + 68) = 0;
        sub_1690(a1);
        v16 = sub_1688(a1);
        nullsub_1();
        sub_4226C(v17);
        nullsub_1();
        sub_42418(v18);
        nullsub_1();
        sub_4195C(v19);
        v20 = *(v16 + 24);
        if (v20)
        {
          sub_47878(v20);
          sub_477C4(*(v16 + 24));
        }

        sub_43A14(a1, 0x13u);
        v21 = 1;
      }

      else
      {
        v21 = 1;
        if (v4 == 8)
        {
          goto LABEL_20;
        }

        if (v4 == 11)
        {
          v21 = sub_FB38(a1);
        }

        if (*(v8 + 9) == 1 && !v8[2])
        {
          v21 = 0;
        }
      }

      if (v4 != 8)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (sub_12E28(v6) == 255)
      {
        *(v8 + 16) = 1;
      }

LABEL_22:
      if (v21)
      {
        sub_43ACC(a1);
      }

LABEL_48:
      v34 = v8[3];
      if (v34)
      {
        v35 = v4;
LABEL_50:
        DHCPv6ClientHandleEvent(v34, v35, a3);
      }

      return 0;
    case 4:
      sub_43B14(a1);
      v27 = v8[3];
      if (v27)
      {
        sub_47878(v27);
      }

      return 0;
    case 14:
      v31 = *(v7 + 24);
      if (v31)
      {
        sub_1BE98(v31, a3);
      }

      v32 = v8[2];
      if (!v32)
      {
        return 0;
      }

      v15 = 0;
      *(a3 + 40) = v32;
      return v15;
    case 15:
      v33 = *(v7 + 24);
      if (v33)
      {
        DHCPv6ClientHandleEvent(v33, 15, a3);
      }

      sub_16DC4(a1, a3);
      return 0;
    case 16:
      v34 = *(v7 + 24);
      if (!v34)
      {
        return 0;
      }

      v35 = 16;
      goto LABEL_50;
    case 18:
      sub_43B84(a1, a3);
      return 0;
    case 19:
      if (!sub_1C0C4(a1) || a3 && *a3)
      {
        goto LABEL_31;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v40 = _os_log_pack_size();
        v41 = &__str[-((__chkstk_darwin(v40) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v42 = __error();
        v43 = _os_log_pack_fill(v41, v40, *v42, &dword_0, "RTADV %s: PLAT discovery failed", v77);
        nullsub_1();
        *v43 = 136315138;
        *(v43 + 4) = v44;
        __SC_log_send();
      }

      sub_1E064(a1, 0);
      return 0;
    case 21:
LABEL_31:
      sub_166A8(a1);
      return 0;
    case 22:
      v22 = sub_1688(a1);
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v24 = Mutable;
      v25 = *(v22 + 32);
      if (v25 > 3)
      {
        v26 = "<unknown>";
      }

      else
      {
        v26 = off_690E0[v25];
      }

      sub_578FC(Mutable, @"State", v26);
      v36 = *(v22 + 16);
      if (v36)
      {
        v37 = sub_1A97C(v36);
        if (v37)
        {
          v38 = v37;
          CFDictionarySetValue(v24, @"RouterAdvertisement", v37);
          CFRelease(v38);
        }
      }

      if (sub_1C0C4(a1))
      {
        CFDictionarySetValue(v24, @"CLAT46Enabled", kCFBooleanTrue);
      }

      if (sub_2BA48(a1))
      {
        CFDictionarySetValue(v24, @"CLAT46Active", kCFBooleanTrue);
      }

      CFDictionarySetValue(a3, @"RTADV", v24);
      CFRelease(v24);
      v39 = *(v22 + 24);
      if (v39)
      {
        sub_46D78(v39, a3);
      }

      return 0;
    default:
      return v15;
  }
}

uint64_t sub_FB38(const char *a1)
{
  HIWORD(v21) = 0;
  sub_1690(a1);
  v2 = sub_1688(a1);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = v2;
  current_time = timer_get_current_time();
  v5 = sub_1BBEC(*(v3 + 16), &v21 + 7, &v21 + 6, current_time);
  if (HIBYTE(v21) != 1)
  {
    return 0;
  }

  v6 = v5;
  result = sub_1BF4C(v3 + 104);
  if (!result)
  {
    return result;
  }

  if (BYTE6(v21) != 1)
  {
    v13 = sub_1EFD8(v3 + 104);
    if (v13 != 0.0)
    {
      v14 = v13;
      if (v13 < v6)
      {
        sub_1E738(a1);
        v6 = v14;
      }
    }

    if (v6 != 0.0)
    {
      v15 = CFDateCreate(0, v6);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v16 = _os_log_pack_size();
        v17 = &v21 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __error();
        v19 = _os_log_pack_fill(v17, v16, *v18, &dword_0, "%s %s: DNS expiration time %@");
        nullsub_1();
        *v19 = 136315650;
        *(v19 + 4) = "rtadv_handle_wake";
        *(v19 + 12) = 2080;
        *(v19 + 14) = v20;
        *(v19 + 22) = 2112;
        *(v19 + 24) = v15;
        __SC_log_send();
      }

      CFRelease(v15);
      timer_callout_set_absolute(*(v3 + 8), sub_1A164, a1, 2, 0, v6);
    }

    return 0;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    v9 = &v21 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "RTADV %s: DNS expired", v21);
    nullsub_1();
    *v11 = 136315138;
    *(v11 + 4) = v12;
    __SC_log_send();
  }

  timer_cancel(*(v3 + 8));
  return 1;
}

void DHCPv6ClientHandleEvent(uint64_t result, int a2, uint64_t *a3)
{
  if (*(result + 116) == 2)
  {
    if (a2 <= 10)
    {
      if (a2 == 3 || a2 == 8)
      {
        sub_4871C(result, a3);
      }
    }

    else
    {
      switch(a2)
      {
        case 11:
          sub_48320(result, a3);
          break;
        case 16:
          sub_4891C(result);
          break;
        case 15:
          sub_4813C(result, a3);
          break;
      }
    }
  }
}

void sub_FE80(uint64_t a1)
{
  v1 = (a1 + 100);
  v2 = *(a1 + 100);
  if (v2)
  {
    v4 = *(a1 + 16);
    v5 = *(v4 + 8);
    v6 = *(a1 + 112);
    *v1 = 0;
    v1[1] = 0;
    v7 = v2 & 0xFF000000 | (BYTE2(v2) << 16) | (BYTE1(v2) << 8) | v2;
    if (!sub_1404C(v4, v7))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v20 = BYTE2(v2);
        v21 = HIBYTE(v2);
        v8 = v2;
        v9 = BYTE1(v2);
        v10 = _os_log_pack_size();
        v19 = &v18;
        v11 = &v18 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = __error();
        v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "%s %s: removing %d.%d.%d.%d", v18, v19, v20, v22, v23, v24);
        v14 = sub_6160(*(a1 + 24));
        nullsub_1();
        *v13 = 136316418;
        *(v13 + 4) = v14;
        *(v13 + 12) = 2080;
        *(v13 + 14) = v15;
        *(v13 + 22) = 1024;
        *(v13 + 24) = v8;
        *(v13 + 28) = 1024;
        *(v13 + 30) = v9;
        *(v13 + 34) = 1024;
        *(v13 + 36) = v20;
        *(v13 + 40) = 1024;
        *(v13 + 42) = v21;
        __SC_log_send();
      }

      nullsub_1();
      sub_140BC(v16, v7);
    }

    v17 = sub_144D8(v5);
    sub_143CC(v17, v7, v6);
  }

  byte_70190 = 1;
  dispatch_source_merge_data(qword_701C0, 1uLL);
}

uint64_t sub_1008C(uint64_t a1, unsigned int a2, int a3)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    *(a1 + 132) = 0;
    goto LABEL_3;
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = sub_498C(*(a1 + 16), v16, 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    v6 = sub_498C(*(a1 + 16), v18, 1);
    if (!v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v6 = 0;
    if (!v17)
    {
LABEL_22:
      if (v6 && !*(v6 + 25))
      {
        v7 = *(v6 + 7);
        goto LABEL_4;
      }

LABEL_3:
      v6 = a1;
      v7 = 0;
LABEL_4:
      sub_14C4C(v6, v7);
      goto LABEL_5;
    }
  }

  if (!*(v17 + 25))
  {
    goto LABEL_22;
  }

  sub_102AC(v17, 0);
LABEL_5:
  *(a1 + 40) = 1;
  *(a1 + 28) = a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v9 = _os_log_pack_size();
    v10 = v19 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "%s %s: status = '%s'", v19[0], v19[1], v19[2]);
    v13 = sub_6160(*(a1 + 24));
    nullsub_1();
    if (a2 <= 0x15)
    {
      v15 = off_68E70[a2];
    }

    else
    {
      v15 = "<unknown>";
    }

    *v12 = 136315650;
    *(v12 + 4) = v13;
    *(v12 + 12) = 2080;
    *(v12 + 14) = v14;
    *(v12 + 22) = 2080;
    *(v12 + 24) = v15;
    result = __SC_log_send();
  }

  if (a3 == 1)
  {
    return sub_12244();
  }

  return result;
}

void sub_102AC(uint64_t a1, uint64_t a2)
{
  v84 = 0;
  v83 = 0;
  v82 = 0;
  memset(v91, 0, sizeof(v91));
  v80 = 0;
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  v78 = 0;
  if (!*a1)
  {
    return;
  }

  v81 = 0;
  memset(v90, 0, sizeof(v90));
  v6 = &off_70000;
  if (!*(a1 + 40))
  {
    *(a1 + 40) = 1;
    *(a1 + 28) = 0;
    if (!qword_70188)
    {
      return;
    }

LABEL_8:
    byte_701B0 = 1;
    *v2 |= 0x40u;
    dispatch_source_merge_data(qword_701C0, 1uLL);
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v7 = *(a1 + 28);
  *(a1 + 40) = 1;
  *(a1 + 28) = 0;
  if (!qword_70188)
  {
    return;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  if (a2)
  {
LABEL_6:
    v8 = *(a2 + 16);
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:
  v10 = (a1 + 48);
  v9 = *(a1 + 48);
  if (v9)
  {
    v11 = sub_498C(v2, v9, 1);
    if (!v11 || *(v11 + 25))
    {
      return;
    }

    if (*(a1 + 24) == 261)
    {
      v12 = (a1 + 48);
      if ((*(v2 + 2) & 0x40) != 0)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v13 = _os_log_pack_size();
          v14 = &v68 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
          v15 = __error();
          v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "%s: not publishing IPv4 service, CLAT46 is active", v68);
          nullsub_1();
          *v16 = 136315138;
          *(v16 + 4) = v17;
          __SC_log_send();
        }

        return;
      }
    }

    else
    {
      v12 = (a1 + 48);
    }
  }

  else
  {
    v11 = 0;
    v12 = a1;
  }

  v77 = v11;
  v18 = *v12;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v79 = Mutable;
  sub_10DF0(Mutable, kSCPropNetIPv4Addresses, *(a1 + 100));
  sub_10DF0(Mutable, kSCPropNetIPv4SubnetMasks, *(a1 + 104));
  CFDictionarySetValue(Mutable, kSCPropInterfaceName, *(v2 + 16));
  if ((*v2 & 0x10) != 0 && !*v10)
  {
    valuePtr = 1;
    v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, kSCPropNetOverridePrimary, v20);
    CFRelease(v20);
  }

  if (!v8)
  {
    if (*(a1 + 25) & 1) != 0 && (*(a1 + 116))
    {
      v25 = *(a1 + 120);
      if ((v25 - 1) <= 0xFFFFFFFD)
      {
        sub_57874(Mutable, kSCPropNetIPv4Router, v25);
      }
    }

    v26 = 0;
    goto LABEL_48;
  }

  valuePtr = 0;
  if (*(a1 + 24) == 258 || sub_1CE40(12))
  {
    v21 = sub_1CEA4(v8, 12, &valuePtr, 0);
    if (v21)
    {
      if (valuePtr >= 1)
      {
        v22 = CFStringCreateWithBytes(0, v21, valuePtr, 0x8000100u, 0);
        if (v22)
        {
          v23 = v22;
          CFDictionarySetValue(Mutable, @"Hostname", v22);
          CFRelease(v23);
        }
      }
    }
  }

  if (sub_1CE40(3))
  {
    v24 = sub_58598(v8, 3, 4);
  }

  else
  {
    v24 = 0;
  }

  if (!sub_1CE40(121))
  {
    v26 = 0;
    goto LABEL_42;
  }

  v27 = sub_27498(v8, &v78);
  v26 = v27;
  if (v24 || !v27)
  {
LABEL_42:
    if (v24)
    {
      goto LABEL_43;
    }

    goto LABEL_48;
  }

  v28 = sub_59274(v27, v78);
  if (v28)
  {
    v24 = (v28 + 2);
LABEL_43:
    v75 = v18;
    v76 = (a1 + 48);
    v29 = *v24;
    v30 = v24[1];
    v31 = v24[2];
    v32 = v24[3];
    v33 = (v31 << 16) | (v30 << 8) | (v32 << 24) | v29;
    if ((v33 + 1) > 1)
    {
      sub_57874(Mutable, kSCPropNetIPv4Router, v33);
    }

    else
    {
      v73 = v30;
      v74 = v31;
      v72 = sub_2424();
      v71 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v34 = _os_log_pack_size();
        v69 = &v68;
        v35 = &v68 - ((__chkstk_darwin(v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = __error();
        v37 = _os_log_pack_fill(v35, v34, *v36, &dword_0, "%s: ignoring invalid router %d.%d.%d.%d", v68, v69, v70, v72, v73);
        nullsub_1();
        *v37 = 136316162;
        *(v37 + 4) = v38;
        *(v37 + 12) = 1024;
        *(v37 + 14) = v29;
        *(v37 + 18) = 1024;
        *(v37 + 20) = v73;
        *(v37 + 24) = 1024;
        *(v37 + 26) = v74;
        *(v37 + 30) = 1024;
        *(v37 + 32) = v32;
        v6 = &off_70000;
        __SC_log_send();
      }
    }

    v10 = v76;
    v18 = v75;
  }

LABEL_48:
  if ((sub_10EE8(v3) & 0x18) == 0)
  {
    v76 = v10;
    if ((*(a1 + 25) & 1) != 0 && (~*(a1 + 116) & 7) == 0)
    {
      sub_2AEF8(a1, Mutable, 1);
    }

    v39 = v78;
    v40 = *(a1 + 100);
    v88 = 0xFFFF;
    valuePtr = v40;
    v87 = 65193;
    v41 = CFArrayCreateMutable(0, v78 + 2, &kCFTypeArrayCallBacks);
    v42 = sub_10EF0(&valuePtr, &G_ip_broadcast, 0);
    CFArrayAppendValue(v41, v42);
    CFRelease(v42);
    if (valuePtr != -343)
    {
      v43 = sub_10EF0(&v87, &v88, 0);
      CFArrayAppendValue(v41, v43);
      CFRelease(v43);
    }

    v44 = Mutable;
    if (v26)
    {
      v44 = Mutable;
      if (v39 >= 1)
      {
        v75 = v18;
        v45 = v26 + 2;
        do
        {
          v46 = *(v45 - 1);
          if (*v45)
          {
            v47 = v45;
          }

          else
          {
            v47 = 0;
          }

          v48 = v46 - 33;
          v49 = -1 << -v46;
          if (v48 < 0xFFFFFFE0)
          {
            v49 = 0;
          }

          v85 = bswap32(v49);
          v86 = v85 & *(v45 - 2);
          v50 = sub_10EF0(&v86, &v85, v47);
          CFArrayAppendValue(v41, v50);
          CFRelease(v50);
          v45 += 3;
          --v39;
        }

        while (v39);
        v44 = v79;
        v18 = v75;
      }
    }

    CFDictionarySetValue(Mutable, kSCPropNetIPv4AdditionalRoutes, v41);
    CFRelease(v41);
    CFDictionarySetValue(v44, kSCPropConfirmedInterfaceName, *(v2 + 16));
    Mutable = v44;
    v10 = v76;
    v6 = &off_70000;
  }

  if (v26)
  {
    free(v26);
    Mutable = v79;
  }

  v80 = 0;
  sub_11084(v91, v90, kSCEntNetIPv4, Mutable, &v80);
  if (v77)
  {
    v51 = v77;
  }

  else
  {
    v51 = a1;
  }

  v83 = sub_111C0(v51, a2, &v82);
  sub_11084(v91, v90, kSCEntNetDNS, v83, &v80);
  sub_11084(v91, v90, kSCEntNetCaptivePortal, v82, &v80);
  if (a2 && *(a2 + 8))
  {
    v84 = sub_43608(*(a1 + 24), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  }

  sub_11084(v91, v90, kSCEntNetDHCP, v84, &v80);
  if (*(a1 + 24) != 261)
  {
    sub_11084(v91, v90, kCFNull, 0, &v80);
  }

  v52 = v80;
  sub_11F3C(v6[49], v18, v91, v90, v80, *(a1 + 36));
  dispatch_source_merge_data(qword_701C0, 1uLL);
  v53 = sub_12160(v91, v90, v52);
  v81 = v53;
  sub_41E8(&v79);
  sub_41E8(&v83);
  sub_41E8(&v82);
  sub_41E8(&v84);
  sub_12244();
  v54 = *(a1 + 16);
  byte_701B4 = 1;
  *(v54 + 152) = 1;
  dispatch_source_merge_data(qword_701C0, 1uLL);
  if (dword_700C0)
  {
    byte_701AC = 1;
    dispatch_source_merge_data(qword_701C0, 1uLL);
  }

  *(a1 + 76) = 0;
  if (sub_12330(a1))
  {
    if ((*v2 & 8) != 0)
    {
      v55 = sub_144D8(*(v2 + 8));
      sub_12D68(v55);
      *v2 &= ~8u;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v56 = _os_log_pack_size();
        v57 = &v68 - ((__chkstk_darwin(v56) + 15) & 0xFFFFFFFFFFFFFFF0);
        v58 = __error();
        v59 = _os_log_pack_fill(v57, v56, *v58, &dword_0, "%s %s: reported address acquisition success symptom", v68, v69);
        v60 = sub_6160(*(a1 + 24));
        nullsub_1();
        *v59 = 136315394;
        *(v59 + 4) = v60;
        *(v59 + 12) = 2080;
        *(v59 + 14) = v61;
        __SC_log_send();
      }
    }
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v62 = _os_log_pack_size();
    v63 = &v68 - ((__chkstk_darwin(v62) + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = __error();
    v65 = _os_log_pack_fill(v63, v62, *v64, &dword_0, "%s %s: publish success { %@ }");
    v66 = sub_6160(*(a1 + 24));
    nullsub_1();
    *v65 = 136315650;
    *(v65 + 4) = v66;
    *(v65 + 12) = 2080;
    *(v65 + 14) = v67;
    *(v65 + 22) = 2112;
    *(v65 + 24) = v53;
    __SC_log_send();
  }

  sub_41E8(&v81);
  if (!*v10)
  {
    sub_2B060(a1);
  }
}

void sub_10DF0(__CFDictionary *a1, const void *a2, int a3)
{
  v5 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a3, BYTE1(a3), BYTE2(a3), HIBYTE(a3));
  sub_10E78(a1, a2, v5);

  CFRelease(v5);
}

void sub_10E78(__CFDictionary *a1, const void *a2, void *a3)
{
  values = a3;
  v5 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

CFDictionaryRef sub_10EF0(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  memset(keys, 0, sizeof(keys));
  memset(values, 0, sizeof(values));
  if (a1)
  {
    keys[0] = kSCPropNetIPv4RouteDestinationAddress;
    values[0] = sub_1103C(*a1);
    v5 = 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a2)
  {
LABEL_3:
    keys[v5] = kSCPropNetIPv4RouteSubnetMask;
    values[v5++] = sub_1103C(*a2);
  }

LABEL_4:
  if (a3)
  {
    keys[v5] = kSCPropNetIPv4RouteGatewayAddress;
    values[v5++] = sub_1103C(*a3);
  }

  else if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = values;
  v8 = CFDictionaryCreate(0, keys, values, v6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  do
  {
    v9 = *v7++;
    CFRelease(v9);
    --v6;
  }

  while (v6);
  return v8;
}

uint64_t sub_11084(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  if (*a5 < 8)
  {
    *(result + 8 * v5) = a3;
    *(a2 + 8 * v5) = a4;
    *a5 = v5 + 1;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v6 = _os_log_pack_size();
      v7 = v10 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "IPConfiguration: set_entity_value %d >= %d", v10[0], v10[2]);
      *v9 = 67109376;
      *(v9 + 4) = v5;
      *(v9 + 8) = 1024;
      *(v9 + 10) = 8;
      return __SC_log_send();
    }
  }

  return result;
}

CFMutableDictionaryRef sub_111C0(uint64_t a1, __CFString *a2, CFDictionaryRef *a3)
{
  v5 = sub_498C(*(a1 + 16), *a1, 0);
  memset(v9, 0, sizeof(v9));
  if (v5 && *(v5 + 10) && !*(v5 + 7))
  {
    sub_8DB0(v5, 14, v9);
  }

  nullsub_1();
  v7 = sub_1126C(v6, a2, v9);
  *a3 = sub_11B44(a2, v9);
  return v7;
}

CFMutableDictionaryRef sub_1126C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v5 = sub_116D0(a1, a2);
  v30 = v5;
  value = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  theArray = 0;
  v32 = 0;
  if (!a3 || !sub_11668(23))
  {
    goto LABEL_20;
  }

  v6 = *(a3 + 16);
  if (v6)
  {
    v38 = 0;
    v7 = sub_1D258(v6, 23, &v38, 0);
    Mutable = 0;
    if (v7)
    {
      v9 = v7;
      v10 = 0;
      v11 = 0;
      if (v38 >= 0x10)
      {
        v12 = v38 >> 4;
        Mutable = CFArrayCreateMutable(0, v38 >> 4, &kCFTypeArrayCallBacks);
        sub_1D304(Mutable, v9, v12);
        v10 = 0;
        if (sub_11668(24))
        {
          v37 = 0;
          v13 = sub_1D258(v6, 24, &v37, 0);
          if (v13)
          {
            v10 = sub_59078(v13, v37);
          }

          else
          {
            v10 = 0;
          }
        }

        if (sub_11668(144))
        {
          v11 = sub_1D394(v6);
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v35 = Mutable;
    v36 = v10;
    theArray = v11;
  }

  else
  {
    v10 = 0;
    Mutable = 0;
  }

  v14 = *(a3 + 40);
  if (v14)
  {
    v15 = sub_1894C(v14, a1, &v33, &value);
    v32 = v15;
  }

  else
  {
    v15 = 0;
  }

  if (!(Mutable | v15))
  {
LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  v16 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = &v35;
  if (Mutable)
  {
    if (v15)
    {
      sub_1D650(Mutable, v15);
      v19 = &v35;
      v10 = v36;
    }
  }

  else
  {
    v19 = &v32;
  }

  CFDictionarySetValue(v16, kSCPropNetDNSServerAddresses, *v19);
  v20 = v33;
  if (!v10)
  {
    if (!v33)
    {
      goto LABEL_41;
    }

    v22 = kSCPropNetDNSSearchDomains;
    v23 = v16;
LABEL_40:
    CFDictionarySetValue(v23, v22, v20);
    goto LABEL_41;
  }

  if (!v33)
  {
    v22 = kSCPropNetDNSSearchDomains;
    v23 = v16;
    v20 = v10;
    goto LABEL_40;
  }

  MutableCopy = CFArrayCreateMutableCopy(0, 0, v10);
  sub_1D650(MutableCopy, v33);
  CFDictionarySetValue(v16, kSCPropNetDNSSearchDomains, MutableCopy);
  CFRelease(MutableCopy);
LABEL_41:
  v24 = theArray;
  v25 = value;
  if (!theArray || !value)
  {
    if (theArray)
    {
      v27 = kSCPropNetDNSEncryptedServers;
      v28 = v16;
    }

    else
    {
      if (!value)
      {
        goto LABEL_49;
      }

      v27 = kSCPropNetDNSEncryptedServers;
      v28 = v16;
      v24 = value;
    }

    CFDictionarySetValue(v28, v27, v24);
    goto LABEL_49;
  }

  v26 = CFArrayCreateMutableCopy(0, 0, theArray);
  sub_579F0(v26, v25, sub_5A694);
  v39.length = CFArrayGetCount(v26);
  v39.location = 0;
  CFArraySortValues(v26, v39, sub_5A518, 0);
  CFDictionarySetValue(v16, kSCPropNetDNSEncryptedServers, v26);
  CFRelease(v26);
LABEL_49:
  sub_41E8(&v36);
  sub_41E8(&v35);
  sub_41E8(&theArray);
  sub_41E8(&v33);
  sub_41E8(&v32);
  sub_41E8(&value);
  v5 = v30;
LABEL_21:
  v29 = v16;
  if (!(v5 | v16))
  {
    return 0;
  }

  if (v5 && v16)
  {
    v17 = CFDictionaryCreateMutableCopy(0, 0, v5);
    sub_1D6EC(v17, v5, v16, kSCPropNetDNSServerAddresses);
    sub_1D6EC(v17, v5, v16, kSCPropNetDNSSearchDomains);
    sub_1D6EC(v17, v5, v16, kSCPropNetDNSEncryptedServers);
    sub_41E8(&v30);
    sub_41E8(&v29);
  }

  else if (v5)
  {
    return v5;
  }

  else
  {
    return v16;
  }

  return v17;
}

BOOL sub_11668(int a1)
{
  if (a1 - 1) < 0x1A && ((0x30FFDFFu >> (a1 - 1)))
  {
    return 1;
  }

  if (dword_70100 < 1)
  {
    return 0;
  }

  v2 = off_700F8;
  v3 = dword_70100 - 1;
  do
  {
    v4 = *v2++;
    v1 = v4 == a1;
  }

  while (v4 != a1 && v3-- != 0);
  return v1;
}

__CFDictionary *sub_116D0(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  v34 = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  if (sub_1CE40(6))
  {
    v4 = sub_1CEA4(v2, 6, &v34, 0);
  }

  else
  {
    v4 = 0;
  }

  if (sub_1CE40(15))
  {
    v6 = sub_1CEA4(v2, 15, &v34 + 1, 0);
  }

  else
  {
    v6 = 0;
  }

  if (sub_1CE40(119))
  {
    v7 = sub_1CF54(v2, 119, &v33 + 1);
  }

  else
  {
    v7 = 0;
  }

  if (sub_1CE40(162))
  {
    v9 = sub_1CF54(v2, 162, &v33);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1D054(a1, v4, v34, v8);
  if (!v10)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      v20 = &v33 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = __error();
      v22 = _os_log_pack_fill(v20, v19, *v21, &dword_0, "%s: bad DNS servers array", v33);
      *v22 = 136315138;
      *(v22 + 4) = "DNSEntityCreateWithDHCPInfo";
      __SC_log_send();
    }

    Mutable = 0;
    goto LABEL_59;
  }

  v11 = v10;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, kSCPropNetDNSServerAddresses, v11);
  CFRelease(v11);
  if (!v6)
  {
    goto LABEL_53;
  }

  v12 = HIDWORD(v34);
  if (SHIDWORD(v34) < 1)
  {
    v35 = 0;
    goto LABEL_52;
  }

  v13 = 0;
  v14 = 0;
  v15 = v6;
  do
  {
    v16 = *v6;
    if (*v6)
    {
      if ((v16 & 0x80) != 0)
      {
        if (!__maskrune(*v6, 0x4000uLL))
        {
LABEL_31:
          if (!v13)
          {
            v13 = v6;
          }

          goto LABEL_33;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v16] & 0x4000) == 0)
      {
        goto LABEL_31;
      }
    }

    if (v13)
    {
      if (v7 || !v16)
      {
        v35 = v14;
        goto LABEL_41;
      }

      v17 = CFStringCreateWithBytes(0, v13, v15 - v13, 0x8000100u, 0);
      if (!v17)
      {
        v35 = v14;
        goto LABEL_52;
      }

      v18 = v17;
      if (!v14)
      {
        v14 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      }

      CFArrayAppendValue(v14, v18);
      CFRelease(v18);
      v13 = 0;
    }

LABEL_33:
    ++v6;
    ++v15;
    --v12;
  }

  while (v12);
  v35 = v14;
  if (!v13)
  {
    goto LABEL_47;
  }

LABEL_41:
  v23 = CFStringCreateWithBytes(0, v13, v6 - v13, 0x8000100u, 0);
  if (!v23)
  {
    goto LABEL_52;
  }

  v24 = v23;
  if (v14)
  {
    CFArrayAppendValue(v14, v23);
  }

  else
  {
    CFDictionarySetValue(Mutable, kSCPropNetDNSDomainName, v23);
  }

  CFRelease(v24);
LABEL_47:
  if (v14)
  {
    if (CFArrayGetCount(v14) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
      v26 = Mutable;
      v27 = kSCPropNetDNSDomainName;
    }

    else
    {
      v27 = kSCPropNetDNSSearchDomains;
      v26 = Mutable;
      ValueAtIndex = v14;
    }

    CFDictionarySetValue(v26, v27, ValueAtIndex);
  }

LABEL_52:
  sub_41E8(&v35);
LABEL_53:
  if (v7)
  {
    v28 = sub_59078(v7, HIDWORD(v33));
    if (v28)
    {
      v29 = v28;
      CFDictionarySetValue(Mutable, kSCPropNetDNSSearchDomains, v28);
      CFRelease(v29);
    }
  }

  if (v9)
  {
    v30 = sub_5A958(v9, v33);
    if (v30)
    {
      v31 = v30;
      CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServers, v30);
      CFRelease(v31);
    }
  }

LABEL_59:
  if (v7)
  {
    free(v7);
  }

  if (v9)
  {
    free(v9);
  }

  return Mutable;
}

CFDictionaryRef sub_11B44(__CFString *a1, uint64_t a2)
{
  v3 = a1;
  LODWORD(keys) = 0;
  if (a1)
  {
    if (sub_1CE40(114) && (data = v3->data) != 0)
    {
      v5 = sub_1CEA4(data, 114, &keys, 0);
      v3 = sub_1D860(v5, keys);
    }

    else
    {
      v3 = 0;
    }
  }

  v16 = v3;
  v6 = sub_11D48(a2);
  v7 = v6;
  v15 = v6;
  if (v3)
  {
    if (v6)
    {
      if (CFStringCompare(v3, v6, 1uLL))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v8 = _os_log_pack_size();
          v9 = &v14 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
          v10 = __error();
          v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "Mismatch in Captive Portal URLs: IPv4=%@ IPv6=%@");
          *v11 = 138412546;
          *(v11 + 4) = v3;
          *(v11 + 12) = 2112;
          *(v11 + 14) = v7;
          __SC_log_send();
        }
      }
    }

    values = v3;
    keys = kSCPropNetCaptivePortalURL;
  }

  else
  {
    if (!v6)
    {
      v12 = 0;
      goto LABEL_15;
    }

    values = v6;
    keys = kSCPropNetCaptivePortalURL;
  }

  v12 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_15:
  sub_41E8(&v16);
  sub_41E8(&v15);
  return v12;
}

CFStringRef sub_11D48(uint64_t a1)
{
  if (!a1 || !sub_11668(103))
  {
    return 0;
  }

  v15 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_1D258(v2, 103, &v15, 0);
    v4 = sub_1D860(v3, v15);
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = sub_1D89C(v5);
      v7 = v6;
      v16 = v6;
      if (v4)
      {
        if (v6)
        {
          if (CFStringCompare(v4, v6, 1uLL))
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v8 = _os_log_pack_size();
              v9 = &v14 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
              v10 = __error();
              v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "Mismatch in Captive Portal URLs: DHCPv6=%@ RA=%@");
              *v11 = 138412546;
              *(v11 + 4) = v4;
              *(v11 + 12) = 2112;
              *(v11 + 14) = v7;
              __SC_log_send();
            }
          }

          sub_41E8(&v16);
        }
      }

      else
      {
        return v6;
      }
    }

    return v4;
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
    return 0;
  }

  return sub_1D89C(v12);
}

void sub_11F3C(const __SCDynamicStore *a1, CFStringRef serviceID, const __CFNull **a3, const __CFDictionary **a4, int a5, int a6)
{
  if (a5)
  {
    LODWORD(v7) = a5;
    if (!xmmword_70280)
    {
      *&xmmword_70280 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    if (!*(&xmmword_70280 + 1))
    {
      *(&xmmword_70280 + 1) = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      xmmword_70290 = 0uLL;
    }

    if (a6)
    {
      Mutable = 0;
      if (v7 >= 1)
      {
        v7 = v7;
        do
        {
          v13 = *a4;
          if (*a4)
          {
            v14 = *a3;
            if (!Mutable)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            }

            if (v14 == kCFNull)
            {
              CFDictionaryApplyFunction(v13, sub_43980, Mutable);
            }

            else
            {
              CFDictionarySetValue(Mutable, v14, v13);
            }
          }

          ++a4;
          ++a3;
          --v7;
        }

        while (v7);
      }

      v15 = CFStringCreateWithFormat(0, 0, @"Plugin:IPConfigurationService:%@", serviceID);
      sub_D03C(a1, v15, Mutable);
      CFRelease(v15);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }

    else if (v7 >= 1)
    {
      v16 = v7;
      do
      {
        v18 = *a3++;
        v17 = v18;
        if (v18 == kCFNull)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17;
        }

        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, v19);
        v21 = *a4++;
        sub_D03C(a1, NetworkServiceEntity, v21);
        CFRelease(NetworkServiceEntity);
        --v16;
      }

      while (v16);
    }
  }
}

__CFString *sub_12160(CFNullRef *a1, void *a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (a3 >= 1)
  {
    v7 = 0;
    do
    {
      if (*a2)
      {
        v8 = *a1;
        if (*a1 == kCFNull)
        {
          v8 = @"RankLast";
        }

        v9 = v7 + 1;
        if (v7)
        {
          v10 = ", ";
        }

        else
        {
          v10 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"%s%@", v10, v8);
        v7 = v9;
      }

      ++a2;
      ++a1;
      --a3;
    }

    while (a3);
  }

  return Mutable;
}

uint64_t sub_12244()
{
  if (sub_295C(qword_70160) < 1)
  {
LABEL_10:
    v4 = qword_70188;

    return SCDynamicStoreSetValue(v4, @"Plugin:IPConfiguration", @"Plugin:IPConfiguration");
  }

  else
  {
    v0 = 0;
    while (1)
    {
      v1 = sub_42C0(qword_70160, v0);
      result = sub_295C((v1 + 24));
      if (!result && (*v1 & 1) == 0)
      {
        break;
      }

      if (sub_295C((v1 + 24)) >= 1)
      {
        v3 = 0;
        do
        {
          result = sub_42C0((v1 + 24), v3);
          if (!*(result + 40))
          {
            return result;
          }

          v3 = (v3 + 1);
        }

        while (v3 < sub_295C((v1 + 24)));
      }

      v0 = (v0 + 1);
      if (v0 >= sub_295C(qword_70160))
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_12330(_DWORD *a1)
{
  v1 = a1[6];
  if ((v1 - 257) < 4)
  {
    return a1[29] & 1;
  }

  if ((v1 - 514) < 2)
  {
    return a1[33];
  }

  if (v1 != 513)
  {
    return 0;
  }

  if (a1[27] || a1[28] || a1[29])
  {
    return 1;
  }

  return a1[30] != 0;
}

void sub_123A0(_DWORD *a1, int a2, int *a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  v9 = sub_2480(v8);
  v10 = *a3;
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  else if (!v10)
  {
    goto LABEL_6;
  }

  if (!a3[1])
  {
LABEL_22:
    *(v7 + 1768) = 0;
    *(v7 + 1744) = 0;

    sub_8CD0(a1);
    return;
  }

LABEL_6:
  *(v7 + 36) = 0;
  *(v7 + 2336) = 0;
  if (*(v7 + 56) && *(v7 + 120))
  {
    v11 = sub_2C964(a1);
    v12 = sub_CBBC(a1);
    if (v12)
    {
      v13 = v12;
      if (sub_57D34(*(v7 + 120), v12) || sub_57D34(*(v7 + 128), v11))
      {
        if (*(v7 + 112))
        {
          v14 = sub_A840(v8);
          v16 = *(v7 + 104) != *v14 || *(v7 + 108) != *(v14 + 4);
          sub_2424();
          _SC_syslog_os_log_mapping();
          v17 = __SC_log_enabled();
          if (v16)
          {
            if (v17)
            {
              v18 = _os_log_pack_size();
              v19 = &v57 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
              v20 = __error();
              v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "%s: discarding lease for %@, MAC mismatch");
              nullsub_1();
              v23 = v22;
              nullsub_1();
              *v21 = 136315394;
              *(v21 + 4) = v23;
              *(v21 + 12) = 2112;
              *(v21 + 14) = v24;
              __SC_log_send();
            }

            sub_254C0(v7);
            sub_2ADA0(a1);
            sub_FE80(a1);
            *(v7 + 1768) = 0;
          }

          else if (v17)
          {
            v30 = _os_log_pack_size();
            v31 = &v57 - ((__chkstk_darwin(v30) + 15) & 0xFFFFFFFFFFFFFFF0);
            v32 = __error();
            v33 = _os_log_pack_fill(v31, v30, *v32, &dword_0, "%s: using lease for %@");
            nullsub_1();
            v35 = v34;
            nullsub_1();
            *v33 = 136315394;
            *(v33 + 4) = v35;
            *(v33 + 12) = 2112;
            *(v33 + 14) = v36;
            __SC_log_send();
          }

          *(v7 + 112) = 0;
        }
      }

      else
      {
        v37 = sub_2424();
        v38 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v39 = _os_log_pack_size();
          v60 = &v57;
          v40 = &v57 - ((__chkstk_darwin(v39) + 15) & 0xFFFFFFFFFFFFFFF0);
          v41 = __error();
          v42 = _os_log_pack_fill(v40, v39, *v41, &dword_0, "%s: SSID is now %@ (was %@)");
          nullsub_1();
          v59 = v37;
          v44 = v43;
          nullsub_1();
          HIDWORD(v58) = v38;
          v46 = v45;
          nullsub_1();
          *v42 = 136315650;
          *(v42 + 4) = v44;
          *(v42 + 12) = 2112;
          *(v42 + 14) = v46;
          *(v42 + 22) = 2112;
          *(v42 + 24) = v47;
          __SC_log_send();
        }

        LeaseForWiFi = DHCPLeaseListFindLeaseForWiFi(v7 + 136, v13, v11);
        if (LeaseForWiFi == -1)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v50 = _os_log_pack_size();
            v51 = &v57 - ((__chkstk_darwin(v50) + 15) & 0xFFFFFFFFFFFFFFF0);
            v52 = __error();
            v53 = _os_log_pack_fill(v51, v50, *v52, &dword_0, "%s: No lease for %@");
            nullsub_1();
            v55 = v54;
            nullsub_1();
            *v53 = 136315394;
            *(v53 + 4) = v55;
            *(v53 + 12) = 2112;
            *(v53 + 14) = v56;
            __SC_log_send();
          }

          sub_254C0(v7);
          sub_2ADA0(a1);
          sub_FE80(a1);
        }

        else
        {
          v49 = sub_42C0(v7 + 136, LeaseForWiFi);
          sub_2865C(a1, v49, 0);
        }

        *(v7 + 1768) = 0;
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v25 = _os_log_pack_size();
        v26 = &v57 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = __error();
        v28 = _os_log_pack_fill(v26, v25, *v27, &dword_0, "%s: %s: no SSID", v57, v58);
        nullsub_1();
        *v28 = 136315394;
        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        *(v28 + 14) = "dhcp_check_link_with_status";
        __SC_log_send();
      }
    }
  }

  if (sub_8F14(a1, current_time))
  {
    if (a2 == 8 || *(v7 + 1744) != 6 || *(v7 + 1768) != 1)
    {
      v61 = *(v7 + 1732);
      sub_8F90(a1, 0, &v61);
    }
  }

  else if (a2 == 8 || *(v7 + 1744) != 3 || *(v7 + 1768) != 1)
  {
    sub_B40(a1, 0, 0);
  }
}

uint64_t sub_12A50(uint64_t a1)
{
  v21 = 0;
  *v22 = xmmword_5D240;
  v2 = *(a1 + 72);
  v23 = 3;
  v24 = v2;
  if ((sysctl(v22, 6u, 0, &v21, 0, 0) & 0x80000000) == 0)
  {
    v3 = malloc_type_malloc(v21, 0xA1C71B75uLL);
    if (sysctl(v22, 6u, v3, &v21, 0, 0) < 0)
    {
      v15 = __stderrp;
      v16 = __error();
      v17 = strerror(*v16);
      fprintf(v15, "sysctl() failed: %s", v17);
    }

    else if (v21 >= 0x84)
    {
      if (v3[3] != 14)
      {
        goto LABEL_18;
      }

      v4 = v3[117];
      v5 = v3[118];
      v6 = v3[116];
      if (v5 >= 0x11)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v7 = _os_log_pack_size();
          v8 = &v20 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
          v9 = __error();
          v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "%s: link type %d address length %d > %ld", v20, v21, v22[0], *&v22[2]);
          *v10 = 136315906;
          *(v10 + 4) = a1;
          *(v10 + 12) = 1024;
          *(v10 + 14) = v6;
          *(v10 + 18) = 1024;
          *(v10 + 20) = v5;
          *(v10 + 24) = 2048;
          v5 = 16;
          *(v10 + 26) = 16;
          __SC_log_send();
        }

        else
        {
          v5 = 16;
        }
      }

      v18 = &v3[v4];
      if (*(a1 + 75) != v6 || v5 != *(a1 + 74) || v5 && bcmp(v18 + 120, (a1 + 56), v5))
      {
        *(a1 + 74) = v5;
        memmove((a1 + 56), v18 + 120, v5);
        *(a1 + 75) = v3[116];
        v14 = 1;
      }

      else
      {
LABEL_18:
        v14 = 0;
      }

LABEL_19:
      free(v3);
      return v14;
    }

    v14 = 0;
    if (!v3)
    {
      return v14;
    }

    goto LABEL_19;
  }

  v11 = __stderrp;
  v12 = __error();
  v13 = strerror(*v12);
  fprintf(v11, "sysctl() size failed: %s", v13);
  return 0;
}