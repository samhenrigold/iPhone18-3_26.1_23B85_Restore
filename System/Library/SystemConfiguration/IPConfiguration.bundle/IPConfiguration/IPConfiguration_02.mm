uint64_t sub_225D8(char *a1, uint64_t a2)
{
  v3 = sub_59918(a1, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v3, @"IOFWHWAddr");
  TypeID = CFDataGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFDataGetLength(Value) == 16)
  {
    v9.location = 0;
    v9.length = 16;
    CFDataGetBytes(Value, v9, a2);
    *(a2 + 10) = bswap32(*(a2 + 10)) >> 16;
    *(a2 + 12) = bswap32(*(a2 + 12));
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

void sub_2269C(void *a1)
{
  __str[0] = 0;
  if (!*(a1 + 16))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v54 = _os_log_pack_size();
      v55 = &v74 - ((__chkstk_darwin(v54) + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = __error();
      *_os_log_pack_fill(v55, v54, *v56, &dword_0, "arp_if_session_read: no pending clients?") = 0;
      __SC_log_send();
    }

    return;
  }

  v2 = sub_217E4();
  v91 = *v2;
  v3 = sub_295C((a1 + 1));
  v83 = sub_AD1C(*a1);
  v4 = sub_638C(*a1);
  v86 = v4;
  if (v4 == 24)
  {
    v5 = 18;
  }

  else
  {
    v5 = 14;
  }

  if (v4 == 24)
  {
    v6 = 16;
  }

  else
  {
    v6 = 6;
  }

  v88 = v6;
  v7 = sub_5A18(a1[7]);
  v8 = read(v7, a1[5], *(a1 + 12));
  v89 = v3;
  if (v8 < 0)
  {
    if (*__error() != 35)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v57 = _os_log_pack_size();
        v58 = &v74 - ((__chkstk_darwin(v57) + 15) & 0xFFFFFFFFFFFFFFF0);
        v59 = __error();
        v60 = _os_log_pack_fill(v58, v57, *v59, &dword_0, "arp_if_session_read: read(%s) failed, %s (%d)", v74, v75, v76);
        nullsub_1();
        v62 = v61;
        v63 = __error();
        v64 = strerror(*v63);
        v65 = *__error();
        *v60 = 136315650;
        *(v60 + 4) = v62;
        *(v60 + 12) = 2080;
        *(v60 + 14) = v64;
        *(v60 + 22) = 1024;
        *(v60 + 24) = v65;
        v3 = v89;
        __SC_log_send();
      }

      nullsub_1();
      v67 = v66;
      v68 = __error();
      v69 = strerror(*v68);
      v70 = __error();
      snprintf(__str, 0x80uLL, "arp_if_session_read: read(%s) failed, %s (%d)", v67, v69, *v70);
      if (v3 >= 1)
      {
        v71 = 0;
        do
        {
          v72 = sub_42C0((a1 + 1), v71);
          if (*(v72 + 24))
          {
            v73 = v72;
            strncpy((v72 + 96), __str, 0x80uLL);
            *(v73 + 4) = 3;
            sub_21AF4(v73);
          }

          v71 = (v71 + 1);
        }

        while (v3 != v71);
      }
    }

    return;
  }

  v10 = v8;
  v81 = v2;
  if (!v8)
  {
    return;
  }

  v11 = a1[5];
  if (v86 == 24)
  {
    v12 = 50;
  }

  else
  {
    v12 = 42;
  }

  v90 = v12;
  v82 = v83;
  *&v9 = 67109376;
  v79 = v9;
  do
  {
    v92 = 0;
    v13 = (v11 + v5 + *(v11 + 16));
    if (!v91)
    {
      goto LABEL_27;
    }

    v14 = *v13;
    putchar(10);
    v15 = bswap32(v13[3]);
    v16 = HIWORD(v15) - 1;
    v17 = (HIWORD(v15) - 1);
    v18 = "<unknown>";
    if (v17 <= 3)
    {
      v18 = (&off_68D00)[v16];
    }

    v19 = bswap32(v14) >> 16;
    printf("%s type=0x%x proto=0x%x\n", v18, v19, bswap32(v13[1]) >> 16);
    if (v19 == 24)
    {
      if (*(v13 + 4) == 16)
      {
        printf("Sender H/W\t%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n", *(v13 + 8), *(v13 + 9), *(v13 + 10), *(v13 + 11), *(v13 + 12), *(v13 + 13), *(v13 + 14), *(v13 + 15));
      }

      v26 = inet_ntop(2, v13 + 12, &v95, 0x10u);
      printf("Sender IP\t%s\n", v26);
      v25 = (v13 + 14);
      goto LABEL_25;
    }

    if (v19 == 1)
    {
      if (*(v13 + 4) == 6)
      {
        v20 = *(v13 + 2);
        *&v95.octet[4] = v13[6];
        *v95.octet = v20;
        v21 = ether_ntoa(&v95);
        printf("Sender H/W\t%s\n", v21);
        v22 = v13[11];
        *v95.octet = *(v13 + 9);
        *&v95.octet[4] = v22;
        v23 = ether_ntoa(&v95);
        printf("Target H/W\t%s\n", v23);
      }

      v93 = *(v13 + 7);
      v24 = inet_ntop(2, &v93, &v95, 0x10u);
      printf("Sender IP\t%s\n", v24);
      v93 = *(v13 + 6);
      v25 = &v93;
LABEL_25:
      v27 = inet_ntop(2, v25, &v95, 0x10u);
      printf("Target IP\t%s\n", v27);
    }

    fflush(__stdoutp);
LABEL_27:
    if (*(v11 + 8) < v90)
    {
      goto LABEL_71;
    }

    if (v88 != *(v13 + 4))
    {
      goto LABEL_71;
    }

    v85 = v13[3];
    v28 = __rev16(v85) - 3;
    if (v28 != 65534 && v28 != 0xFFFF || v86 != bswap32(*v13) >> 16 || v13[1] != 8)
    {
      goto LABEL_71;
    }

    if (v86 == 24)
    {
      v84 = v13 + 12;
      v29 = (v13 + 14);
      v30 = &v97;
    }

    else
    {
      v31 = *(v13 + 7);
      LODWORD(v92) = *(v13 + 6);
      HIDWORD(v92) = v31;
      v87 = &v92;
      v29 = &v92 + 4;
      v30 = &v96;
    }

    *(v30 - 32) = v29;
    v80 = (*(v81 + 8))(*a1, v86, v13 + 4, v83);
    if (v3 < 1)
    {
      goto LABEL_71;
    }

    v32 = 0;
    while (1)
    {
      v33 = sub_42C0((a1 + 1), v32);
      if (!*(v33 + 24))
      {
        goto LABEL_39;
      }

      v34 = v33;
      if (*(v33 + 4) == 2)
      {
        goto LABEL_39;
      }

      v35 = *v33;
      if (*v33 == 3)
      {
        break;
      }

      if (v35 == 2)
      {
        v36 = *(v33 + 52);
        if (v36 == *v84 && v85 == 512)
        {
LABEL_53:
          *(v33 + 72) = *(v33 + 48);
          *(v33 + 76) = v36;
          memmove((v33 + 80), v13 + 4, v82);
          goto LABEL_54;
        }
      }

      else if (v35 == 1 && !v80)
      {
        v36 = *(v33 + 52);
        if (v36 == *v84 || !*v84 && *(v33 + 248) && v85 == 256 && v36 == *v87)
        {
          goto LABEL_53;
        }
      }

LABEL_39:
      v32 = (v32 + 1);
      v3 = v89;
      if (v32 == v89)
      {
        goto LABEL_71;
      }
    }

    if (v85 != 512)
    {
      goto LABEL_39;
    }

    v48 = *(v33 + 264);
    if (v48 < 1)
    {
      goto LABEL_39;
    }

    v49 = 0;
    v50 = 0;
    while (1)
    {
      v51 = *(v34 + 256);
      if (*(v51 + v49) != *v87 || *(v51 + v49 + 4) != *v84)
      {
        goto LABEL_67;
      }

      if (!bcmp((v51 + v49 + 8), v13 + 4, v82))
      {
        break;
      }

      v48 = *(v34 + 264);
LABEL_67:
      ++v50;
      v49 += 24;
      if (v50 >= v48)
      {
        goto LABEL_39;
      }
    }

    v52 = *(v51 + v49);
    *(v34 + 88) = *(v51 + v49 + 16);
    *(v34 + 72) = v52;
LABEL_54:
    *(v34 + 4) = 2;
    if (*v34 != 1 || *(v34 + 248))
    {
      goto LABEL_59;
    }

    ++*(v34 + 60);
    v37 = sub_2424();
    v38 = _SC_syslog_os_log_mapping();
    v39 = __SC_log_enabled();
    v40 = v81;
    if (v39)
    {
      v41 = _os_log_pack_size();
      v77 = v38;
      v78 = &v74;
      v75 = v37;
      v42 = v41;
      v43 = &v74 - ((__chkstk_darwin(v41) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = __error();
      v45 = _os_log_pack_fill(v43, v42, *v44, &dword_0, "arp_session: encountered conflict, trying again %d (of %d)", v74, v75);
      v46 = *(v34 + 60);
      v47 = v40[12] + 1;
      *v45 = v79;
      *(v45 + 4) = v46;
      *(v45 + 8) = 1024;
      *(v45 + 10) = v47;
      __SC_log_send();
    }

    if (*(v34 + 60) > v40[12])
    {
LABEL_59:
      sub_21AF4(v34);
      goto LABEL_39;
    }

    timer_callout_set(*(v34 + 64), sub_23044, v34, 0, 0, *(v81 + 7));
    v3 = v89;
LABEL_71:
    v53 = (*(v11 + 8) + *(v11 + 16) + 3) & 0xFFFFFFFC;
    if (!v53)
    {
      break;
    }

    v11 += v53;
    v10 -= v53;
  }

  while (v10 > 0);
}

void sub_23044(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 4) = 4;
  sub_E5E0(a1);
}

uint64_t sub_23054(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_4834(v1);
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 24);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0;
  sub_A374(v1);
  timer_cancel(*(v1 + 64));
  memset(&v8[1], 0, 32);
  v5 = *(v1 + 4);
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      HIDWORD(v8[1]) = 1;
      *&v8[2] = *(v1 + 72);
      v8[4] = *(v1 + 88);
    }

    else if (v5 == 3)
    {
      LODWORD(v8[1]) = 1;
    }

    else
    {
      nullsub_1();
      printf("No result for %s?\n", v6);
    }
  }

  v8[0] = v1;
  return v4(v3, v2, v8);
}

void sub_23158(char *a1)
{
  DHCPLeaseListFree_0(a1 + 1);

  free(a1);
}

_OWORD *bootp_client_init(uint64_t a1)
{
  v2 = sub_5984();
  v3 = malloc_type_malloc(0x28uLL, 0x10A004021536C6AuLL);
  *v3 = 0u;
  v3[1] = 0u;
  *(v3 + 4) = 0;
  if (sub_59348(v2, v3))
  {
    *v3 = a1;
  }

  else
  {
    free(v3);
    return 0;
  }

  return v3;
}

void bootp_client_free(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = sub_5984();
    v4 = sub_15194(v3, v1);
    if (v4 == -1)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v5 = _os_log_pack_size();
        v6 = &v10 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        v7 = __error();
        v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "bootp_client_free(%s) not in list?", v10);
        nullsub_1();
        *v8 = 136315138;
        *(v8 + 4) = v9;
        __SC_log_send();
      }
    }

    else
    {
      sub_15190(v3, v4, 0);
    }

    v1[2] = 0;
    v1[3] = 0;
    v1[4] = 0;
    sub_A00C(v1);
    free(v1);
    *a1 = 0;
  }
}

void sub_233B4(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_A00C(a1);

  free(a1);
}

uint64_t sub_233F4(uint64_t a1, int a2)
{
  HIDWORD(v20) = a2;
  v3 = *(sub_5984() + 32);
  if (!v3 || (v4 = sub_5A18(v3), v4 < 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v6 = _os_log_pack_size();
    v7 = &v20 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "bootp_client_bind_socket_to_if (%s, %d): session socket isn't open", v20, v21);
    nullsub_1();
    *v9 = 136315394;
    *(v9 + 4) = v10;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a2;
    goto LABEL_7;
  }

  if ((setsockopt(v4, 0, 25, &v20 + 4, 4u) & 0x80000000) == 0)
  {
    return 1;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v11 = _os_log_pack_size();
    v12 = &v20 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "bootp_client_bind_socket_to_if (%s, %d): setsockopt IP_BOUND_IF failed %s", v20, v21, v22);
    nullsub_1();
    v16 = v15;
    v17 = HIDWORD(v20);
    v18 = __error();
    v19 = strerror(*v18);
    *v14 = 136315650;
    *(v14 + 4) = v16;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v17;
    *(v14 + 18) = 2080;
    *(v14 + 20) = v19;
LABEL_7:
    __SC_log_send();
    return 0;
  }

  return result;
}

void sub_23644(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  v46 = a2 >> 8;
  v11 = (a2 >> 16);
  v12 = (a2 >> 24);
  if (byte_70130 == 1)
  {
    Mutable = CFStringCreateMutable(0, 0);
    sub_588D0(Mutable, a4, a5);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v14 = __SC_log_enabled();
    if (a3)
    {
      if (v14)
      {
        v44 = a6;
        v15 = _os_log_pack_size();
        v45 = &v41;
        v16 = __chkstk_darwin(v15);
        v42 = v11;
        v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __error();
        v19 = _os_log_pack_fill(v17, v15, *v18, &dword_0, "[%s] %sTransmit %d byte packet dest %d.%d.%d.%d scope %d\n%@");
        nullsub_1();
        *v19 = 136317186;
        v20 = "";
        *(v19 + 4) = v21;
        *(v19 + 12) = 2080;
        if (!v44)
        {
          v20 = "Will NOT ";
        }

        *(v19 + 14) = v20;
        *(v19 + 22) = 1024;
        v22 = v46;
        v23 = v42;
        *(v19 + 24) = a5;
        *(v19 + 28) = 1024;
        *(v19 + 30) = v10;
        *(v19 + 34) = 1024;
        *(v19 + 36) = v22;
        *(v19 + 40) = 1024;
        *(v19 + 42) = v23;
        *(v19 + 46) = 1024;
        *(v19 + 48) = v12;
        *(v19 + 52) = 1024;
        *(v19 + 54) = a3;
        *(v19 + 58) = 2112;
        *(v19 + 60) = Mutable;
LABEL_15:
        __SC_log_send();
      }
    }

    else if (v14)
    {
      v35 = _os_log_pack_size();
      v36 = &v41 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = __error();
      v38 = _os_log_pack_fill(v36, v35, *v37, &dword_0, "[%s] %sTransmit %d byte packet\n%@");
      nullsub_1();
      v39 = "";
      *v38 = 136315906;
      *(v38 + 4) = v40;
      *(v38 + 12) = 2080;
      if (!a6)
      {
        v39 = "Will NOT ";
      }

      *(v38 + 14) = v39;
      *(v38 + 22) = 1024;
      *(v38 + 24) = a5;
      *(v38 + 28) = 2112;
      *(v38 + 30) = Mutable;
      goto LABEL_15;
    }

    CFRelease(Mutable);
    return;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v44 = a5;
    v42 = v12;
    v24 = a6;
    v25 = _os_log_pack_size();
    v45 = &v41;
    v26 = v11;
    v27 = &v41 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v25, *v28, &dword_0, "[%s] %sTransmit %d byte packet xid 0x%lx to %d.%d.%d.%d [scope=%d]", v41, v42, v43, v45, v46, v47, v48, v49, v50);
    nullsub_1();
    v30 = *(a4 + 4);
    v31 = "";
    *v29 = 136317186;
    *(v29 + 4) = v32;
    if (!v24)
    {
      v31 = "Will NOT ";
    }

    *(v29 + 12) = 2080;
    *(v29 + 14) = v31;
    v33 = v46;
    *(v29 + 22) = 1024;
    v34 = v42;
    *(v29 + 24) = v44;
    *(v29 + 28) = 2048;
    *(v29 + 30) = bswap32(v30);
    *(v29 + 38) = 1024;
    *(v29 + 40) = v10;
    *(v29 + 44) = 1024;
    *(v29 + 46) = v33;
    *(v29 + 50) = 1024;
    *(v29 + 52) = v26;
    *(v29 + 56) = 1024;
    *(v29 + 58) = v34;
    *(v29 + 62) = 1024;
    *(v29 + 64) = a3;
    __SC_log_send();
  }
}

uint64_t bootp_session_init(int a1)
{
  result = sub_5984();
  if (*(result + 44))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v3 = _os_log_pack_size();
      v4 = &v7 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = __error();
      v6 = _os_log_pack_fill(v4, v3, *v5, &dword_0, "%s: called again with %d", v7, v8);
      *v6 = 136315394;
      *(v6 + 4) = "bootp_session_init";
      *(v6 + 12) = 1024;
      *(v6 + 14) = a1;
      return __SC_log_send();
    }
  }

  else
  {
    *(result + 44) = a1;
  }

  return result;
}

void sub_23BB8(uint64_t a1)
{
  v18[1] = 0;
  v18[0] = 0;
  *&v14.msg_namelen = 16;
  v14.msg_name = v18;
  v14.msg_iov = v15;
  *&v14.msg_iovlen = 1;
  v14.msg_control = &v19;
  *&v14.msg_controllen = 512;
  v15[0] = v16;
  v15[1] = 1500;
  v2 = sub_5A18(*(a1 + 32));
  v3 = recvmsg(v2, &v14, 0);
  v4 = v3;
  if (v3 < 1)
  {
    if (v3 < 0)
    {
      v6 = *__error();
      if (v6 != 35)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v7 = _os_log_pack_size();
          v8 = &v13 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
          v9 = __error();
          v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "bootp_session_read(%d): recvmsg failed, %s", v13, v14.msg_name);
          v11 = sub_5A18(*(a1 + 32));
          v12 = strerror(v6);
          *v10 = 67109378;
          *(v10 + 4) = v11;
          *(v10 + 8) = 2080;
          *(v10 + 10) = v12;
          __SC_log_send();
        }

        if (v6 == 57)
        {
          sub_2BC0(a1);
        }
      }
    }
  }

  else if (v14.msg_controllen >= 0xC)
  {
    msg_control = v14.msg_control;
    if (v14.msg_control)
    {
      while (msg_control[1] || msg_control[2] != 20)
      {
        msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
        if ((msg_control + 3) > v14.msg_control + v14.msg_controllen)
        {
          return;
        }
      }

      if (*msg_control >= 0xD && *(msg_control + 17) <= 0x10uLL)
      {
        __memmove_chk();
        v17[*(msg_control + 17)] = 0;
        sub_23E38(a1, v17, v18 + 4, v16, v4);
      }
    }
  }
}

void sub_23E38(uint64_t result, const char *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5)
{
  if (a5 >= 0xEC)
  {
    v34 = 0;
    v35 = 0;
    v32 = a4;
    v33 = a5;
    sub_585E0(&v34, a4, a5, 0);
    if (byte_70130 == 1)
    {
      Mutable = CFStringCreateMutable(0, 0);
      sub_58968(Mutable, v32, a5, &v34);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        v11 = &v31 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = __error();
        v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "[%s] Receive %d byte packet from %d.%d.%d.%d\n%@");
        v14 = *a3;
        v15 = a3[1];
        v16 = a3[2];
        v17 = a3[3];
        *v13 = 136316674;
        *(v13 + 4) = a2;
        *(v13 + 12) = 1024;
        *(v13 + 14) = a5;
        *(v13 + 18) = 1024;
        *(v13 + 20) = v14;
        *(v13 + 24) = 1024;
        *(v13 + 26) = v15;
        *(v13 + 30) = 1024;
        *(v13 + 32) = v16;
        *(v13 + 36) = 1024;
        *(v13 + 38) = v17;
        *(v13 + 42) = 2112;
        *(v13 + 44) = Mutable;
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
        v18 = _os_log_pack_size();
        v19 = &v31 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = __error();
        v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "[%s] Receive %d byte packet xid 0x%lx from %d.%d.%d.%d", v31, v32, v33, v34, v35, v36, v37);
        v22 = bswap32(*(v32 + 1));
        v23 = *a3;
        v24 = a3[1];
        v25 = a3[2];
        v26 = a3[3];
        *v21 = 136316674;
        *(v21 + 4) = a2;
        *(v21 + 12) = 1024;
        *(v21 + 14) = a5;
        *(v21 + 18) = 2048;
        *(v21 + 20) = v22;
        *(v21 + 28) = 1024;
        *(v21 + 30) = v23;
        *(v21 + 34) = 1024;
        *(v21 + 36) = v24;
        *(v21 + 40) = 1024;
        *(v21 + 42) = v25;
        *(v21 + 46) = 1024;
        *(v21 + 48) = v26;
        __SC_log_send();
      }
    }

    if (sub_295C(result) >= 1)
    {
      v27 = 0;
      do
      {
        v28 = sub_42C0(result, v27);
        nullsub_1();
        if (!strcmp(v29, a2))
        {
          v30 = v28[2];
          if (v30)
          {
            v30(v28[3], v28[4], &v32);
          }
        }

        v27 = (v27 + 1);
      }

      while (v27 < sub_295C(result));
    }

    sub_58494(&v34);
  }
}

uint64_t sub_24180(char *a1, unsigned int a2)
{
  v2 = a1 != 0;
  v3 = a2 != 0;
  v4 = !v2 || !v3;
  if (v2 && v3)
  {
    v5 = a1;
  }

  else
  {
    v5 = &byte_5D080;
  }

  if (v4)
  {
    v6 = 10;
  }

  else
  {
    v6 = a2;
  }

  off_70000 = v5;
  dword_70008 = v6;
  off_70010 = v5;
  dword_70018 = v6;
  if (v6 < 1)
  {
LABEL_10:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      v7 = *v5++;
      if (v7 == 108)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = 1;
  }

  dword_70140 = v8;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v10 = _os_log_pack_size();
    v11 = &v15 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "ipv6_only_preferred is %s", v15);
    if (dword_70140)
    {
      v14 = "TRUE";
    }

    else
    {
      v14 = "FALSE";
    }

    *v13 = 136315138;
    *(v13 + 4) = v14;
    return __SC_log_send();
  }

  return result;
}

void sub_24320(unsigned __int8 *a1, int a2)
{
  v4 = off_70000;
  if (off_70010)
  {
    v5 = off_70010 == off_70000;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    free(off_70010);
  }

  dword_70018 = dword_70008;
  if (a1 && a2)
  {
    v6 = malloc_type_malloc(dword_70008 + a2, 0x100004077774924uLL);
    if (!v6)
    {
      off_70010 = v4;
      goto LABEL_23;
    }

    v7 = v6;
    v8 = dword_70008;
    memmove(v6, off_70000, dword_70008);
    if (a2 < 1)
    {
      goto LABEL_19;
    }

    v9 = 0;
    v10 = v8;
    do
    {
      v11 = a1[v9];
      if (v10 < 1)
      {
LABEL_15:
        v7[v10++] = v11;
      }

      else
      {
        v12 = v10;
        v13 = v7;
        while (1)
        {
          v14 = *v13++;
          if (v14 == v11)
          {
            break;
          }

          if (!--v12)
          {
            goto LABEL_15;
          }
        }
      }

      ++v9;
    }

    while (v9 != a2);
    if (v10 <= v8)
    {
LABEL_19:
      free(v7);
    }

    else
    {
      dword_70018 = v10;
      v4 = v7;
    }
  }

  off_70010 = v4;
  if (a1)
  {
LABEL_23:
    free(a1);
  }

  if (G_IPConfiguration_verbose)
  {
    Mutable = CFStringCreateMutable(0, 0);
    v16 = dword_70018;
    if (dword_70018 >= 1)
    {
      v17 = 0;
      v18 = off_70010;
      do
      {
        if (v17)
        {
          CFStringAppendFormat(Mutable, 0, @", %d", v18[v17]);
        }

        else
        {
          CFStringAppendFormat(Mutable, 0, @"%d", *v18);
        }

        ++v17;
      }

      while (v16 != v17);
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      v20 = &v23 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = __error();
      v22 = _os_log_pack_fill(v20, v19, *v21, &dword_0, "DHCP requested parameters = { %@ }");
      *v22 = 138412290;
      *(v22 + 4) = Mutable;
      __SC_log_send();
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_245A4(_DWORD *a1, int a2, unsigned __int8 *a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  v9 = 0;
  if (a2 > 7)
  {
    if (a2 <= 10)
    {
      if (a2 != 8)
      {
        if (a2 != 9)
        {
          return v9;
        }

        if (v7)
        {
          v23 = *a3;
          if (v23 == sub_2C3A4(a1) && !sub_2B250(a1, a3))
          {
            v24 = *(a3 + 1);
            snprintf(__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x", *a3, a3[1], a3[2], a3[3], *v24, v24[1], v24[2], v24[3], v24[4], v24[5]);
            if (!*(v8 + 539))
            {
              *(v8 + 539) = 1;
            }

            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v25 = _os_log_pack_size();
              v26 = &__str[-((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
              v27 = __error();
              v28 = _os_log_pack_fill(v26, v25, *v27, &dword_0, "INFORM %s: %s", v65, *__str);
              nullsub_1();
              *v28 = 136315394;
              *(v28 + 4) = v29;
              *(v28 + 12) = 2080;
              *(v28 + 14) = __str;
              __SC_log_send();
            }
          }

          return 0;
        }

        return 6;
      }
    }

    else if (a2 != 11)
    {
      if (a2 != 13)
      {
        if (a2 == 22)
        {
          v13 = sub_1688(a1);
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v15 = Mutable;
          v16 = *(v13 + 1584);
          if (v16 > 4)
          {
            v17 = "<unknown>";
          }

          else
          {
            v17 = off_68D80[v16];
          }

          sub_578FC(Mutable, @"State", v17);
          if (sub_1CE28(a1))
          {
            v35 = sub_2833C(v13 + 40);
            if (v35)
            {
              v36 = v35;
              CFDictionarySetValue(v15, @"Packet", v35);
              CFRelease(v36);
            }
          }

          CFDictionarySetValue(a3, @"INFORM", v15);
          CFRelease(v15);
          return 0;
        }

        return v9;
      }

      if (sub_1CE28(a1))
      {
        if (*(v8 + 389))
        {
          *(a3 + 4) = 0;
          *a3 = 0u;
          *(a3 + 1) = 0u;
          v34 = *(v8 + 389);
          if (v34)
          {
            v9 = 0;
            *a3 = v8 + 7;
            *(a3 + 2) = v34;
            *(a3 + 2) = v8 + 5;
            return v9;
          }
        }
      }

      return 0;
    }

    goto LABEL_38;
  }

  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return v9;
      }

      goto LABEL_19;
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
        v30 = _os_log_pack_size();
        v31 = &__str[-((__chkstk_darwin(v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v32 = *__error();
        v33 = _os_log_pack_fill(v31, v30, v32, &dword_0, "INFORM %s: re-entering start state");
LABEL_63:
        v40 = v33;
        nullsub_1();
        *v40 = 136315138;
        *(v40 + 4) = v41;
        __SC_log_send();
        return 6;
      }

      return 6;
    }

    v8 = malloc_type_malloc(0x878uLL, 0x10A004082C9D559uLL);
    sub_151FC(a1, v8);
    bzero(v8, 0x878uLL);
    sub_58490(v8 + 5);
    sub_2C394(a1, *a3);
    sub_2C3BC(a1, *(a3 + 1));
    *(v8 + 5) = sub_2C3CC(a1);
    nullsub_1();
    snprintf(__str, 0x20uLL, "inform-%s", v43);
    v44 = timer_callout_init(__str);
    v8[199] = v44;
    if (v44)
    {
      v45 = bootp_client_init(v6);
      v8[1] = v45;
      if (v45)
      {
        v46 = sub_216C0(v6);
        *v8 = v46;
        sub_2424();
        _SC_syslog_os_log_mapping();
        v47 = __SC_log_enabled();
        if (v46)
        {
          if (v47)
          {
            v48 = _os_log_pack_size();
            v49 = &__str[-((__chkstk_darwin(v48) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
            v50 = __error();
            v51 = _os_log_pack_fill(v49, v48, *v50, &dword_0, "INFORM %s: start", v65);
            nullsub_1();
            *v51 = 136315138;
            *(v51 + 4) = v52;
            __SC_log_send();
          }

          *(v8 + 538) = arc4random();
LABEL_43:
          sub_24F4C(a1, 0, 0);
          return 0;
        }

        if (!v47)
        {
          goto LABEL_80;
        }

        v60 = _os_log_pack_size();
        v61 = &__str[-((__chkstk_darwin(v60) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v62 = *__error();
        v56 = _os_log_pack_fill(v61, v60, v62, &dword_0, "INFORM %s: arp_client_init failed");
        goto LABEL_79;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v57 = _os_log_pack_size();
        v58 = &__str[-((__chkstk_darwin(v57) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v59 = *__error();
        v56 = _os_log_pack_fill(v58, v57, v59, &dword_0, "INFORM %s: bootp_client_init failed");
        goto LABEL_79;
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v53 = _os_log_pack_size();
        v54 = &__str[-((__chkstk_darwin(v53) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v55 = *__error();
        v56 = _os_log_pack_fill(v54, v53, v55, &dword_0, "INFORM %s: timer_callout_init failed");
LABEL_79:
        v63 = v56;
        nullsub_1();
        *v63 = 136315138;
        *(v63 + 4) = v64;
        __SC_log_send();
      }
    }

LABEL_80:
    v9 = 5;
LABEL_19:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      v19 = &__str[-((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "INFORM %s: stop", v65);
      nullsub_1();
      *v21 = 136315138;
      *(v21 + 4) = v22;
      __SC_log_send();
    }

    if (v8)
    {
      sub_FE80(a1);
      if (v8[199])
      {
        timer_callout_free(v8 + 199);
      }

      if (v8[1])
      {
        bootp_client_free(v8 + 1);
      }

      if (*v8)
      {
        sub_15000(v8);
      }

      sub_58494((v8 + 5));
      free(v8);
      sub_151FC(a1, 0);
    }

    return v9;
  }

  if (a2 == 3)
  {
LABEL_38:
    if (!v7)
    {
      return 6;
    }

    *(v7 + 2156) = 0;
    if (*(a3 + 1) && !*(a3 + 2))
    {
      sub_253F4(a1);
      return 0;
    }

    if (a2 == 11 && sub_2AED8(a1))
    {
      return 0;
    }

    goto LABEL_43;
  }

  if (a2 == 4)
  {
    sub_2545C(a1);
    return 0;
  }

  if (a2 != 7)
  {
    return v9;
  }

  if (!v7)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v37 = _os_log_pack_size();
      v38 = &__str[-((__chkstk_darwin(v37) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v39 = *__error();
      v33 = _os_log_pack_fill(v38, v37, v39, &dword_0, "INFORM %s: private data is NULL");
      goto LABEL_63;
    }

    return 6;
  }

  v10 = *a3;
  *(a3 + 2) = 0;
  v11 = *v10;
  if (v11 != sub_2C3A4(a1))
  {
    v9 = 0;
    *(a3 + 2) = 1;
    return v9;
  }

  v9 = v10[1];
  if (v9)
  {
    if (v9 != sub_2C3CC(a1))
    {
      sub_2C3BC(a1, v10[1]);
      v12 = v10[1];
      *(v8 + 5) = v12;
      sub_2BB1C(a1, *v10, v12, 0);
    }

    return 0;
  }

  return v9;
}

void sub_24F4C(_DWORD *a1, int a2, uint64_t a3)
{
  sub_1690(a1);
  v6 = sub_1688(a1);
  if (a2 == 6)
  {
    if (*(a3 + 8))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v9 = _os_log_pack_size();
        v10 = &__str[-((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v11 = __error();
        v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "INFORM %s: arp probe failed, %s", v25, *__str);
        nullsub_1();
        v14 = v13;
        v15 = sub_21F58(*v6);
        *v12 = 136315394;
        *(v12 + 4) = v14;
        *(v12 + 12) = 2080;
        *(v12 + 14) = v15;
        __SC_log_send();
      }

      sub_2776C(a1, 6u);
      timer_callout_set(*(v6 + 1592), sub_24F4C, a1, 0, 0, 8.0);
    }

    else if (*(a3 + 12))
    {
      v16 = sub_2C3A4(a1);
      snprintf(__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x", v16, BYTE1(v16), BYTE2(v16), HIBYTE(v16), *(a3 + 24), *(a3 + 25), *(a3 + 26), *(a3 + 27), *(a3 + 28), *(a3 + 29));
      if (!*(v6 + 2156))
      {
        *(v6 + 2156) = 1;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v17 = _os_log_pack_size();
        v18 = &__str[-((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v19 = __error();
        v20 = _os_log_pack_fill(v18, v17, *v19, &dword_0, "INFORM %s: %s", v25, *__str);
        nullsub_1();
        *v20 = 136315394;
        *(v20 + 4) = v21;
        *(v20 + 12) = 2080;
        *(v20 + 14) = __str;
        __SC_log_send();
      }

      sub_FE80(a1);
      sub_2776C(a1, 8u);
      if (dword_70048 >= 1)
      {
        timer_set_relative(*(v6 + 1592), dword_70048, 0, sub_24F4C, a1, 0, 0);
      }
    }

    else if (sub_169C(a1) == 1)
    {

      sub_2545C(a1);
    }

    else
    {
      v22 = *(v6 + 20);
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0xFFFFFFFFLL;
      }

      v24 = sub_2C3A4(a1);
      sub_2BB1C(a1, v24, v23, 0);

      sub_277B8(a1, 0, 0);
    }
  }

  else if (!a2)
  {
    sub_253F4(a1);
    sub_27604(a1, 1u);
    v7 = *v6;
    v8 = sub_2C3A4(a1);

    sub_D99C(v7, sub_24F4C, a1, 6, 0, v8);
  }
}

void sub_253F4(uint64_t a1)
{
  v2 = sub_1688(a1);
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 1592);
    if (v4)
    {
      timer_cancel(v4);
    }

    v5 = v3[1];
    if (v5)
    {
      bootp_client_disable_receive(v5);
    }

    v6 = *v3;

    sub_2A368(a1, v6);
  }
}

uint64_t sub_2545C(uint64_t a1)
{
  v2 = sub_1688(a1);
  sub_253F4(a1);
  sub_FE80(a1);
  sub_58494(v2 + 40);
  sub_102A4(a1, 0xCu);

  return sub_27604(a1, 0);
}

void sub_254C0(uint64_t a1)
{
  *(a1 + 56) = 0;
  v2 = *(a1 + 120);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 120) = 0;
  v3 = *(a1 + 128);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 128) = 0;
}

uint64_t sub_25504(uint64_t a1)
{
  v2 = sub_1688(a1);
  sub_1690(a1);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    v4 = &v9 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = __error();
    v6 = _os_log_pack_fill(v4, v3, *v5, &dword_0, "DHCP %s: start", v9);
    nullsub_1();
    *v6 = 136315138;
    *(v6 + 4) = v7;
    __SC_log_send();
  }

  DHCPLeaseListInit((v2 + 136));
  *(v2 + 2332) = arc4random();
  if (!sub_8CC0(a1))
  {
    sub_28390(a1);
  }

  return timer_set_relative(*(v2 + 1760), 0, 0, sub_28580, a1, 0, 0);
}

unint64_t sub_2568C(uint64_t a1)
{
  v2 = sub_1690(a1);
  result = sub_1688(a1);
  memset(v30, 0, sizeof(v30));
  if (*(result + 56))
  {
    v4 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = v30 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "DHCP %s: RELEASE", *&v30[0]);
      nullsub_1();
      *v8 = 136315138;
      *(v8 + 4) = v9;
      __SC_log_send();
    }

    sub_25CBC(a1, 0);
    sub_254C0(v4);
    sub_2ADA0(a1);
    sub_8CD0(a1);
    result = sub_169C(a1);
    if (HIDWORD(result) || !result)
    {
      v10 = sub_A840(v2);
      v11 = sub_638C(v2);
      v12 = sub_AD1C(v2);
      result = sub_A848((v4 + 1784), 7, v10, v11, v12, *(v4 + 24), *(v4 + 32), 0, v30);
      *(v4 + 176) = result;
      if (result)
      {
        v13 = *(v4 + 2332) + 1;
        *(v4 + 2332) = v13;
        *(result + 4) = bswap32(v13);
        *(result + 12) = *(v4 + 1732);
        if (sub_ADA4(v30, 54, 4, (v4 + 1736)))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (!result)
          {
            return result;
          }

          v14 = _os_log_pack_size();
          v15 = v30 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
          v16 = __error();
          v17 = _os_log_pack_fill(v15, v14, *v16, &dword_0, "DHCP %s: RELEASE couldn't add server ip, %s", *&v30[0], *(&v30[0] + 1));
          nullsub_1();
          v19 = v18;
          v20 = sub_588A8(v30);
          *v17 = 136315394;
          *(v17 + 4) = v19;
          *(v17 + 12) = 2080;
          *(v17 + 14) = v20;
          return __SC_log_send();
        }

        if (sub_ADA4(v30, 255, 0, 0))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (!result)
          {
            return result;
          }

          v21 = _os_log_pack_size();
          v22 = v30 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
          v23 = *__error();
          v24 = _os_log_pack_fill(v22, v21, v23, &dword_0, "DHCP %s: RELEASE failed to terminate options");
          goto LABEL_13;
        }

        if ((bootp_client_transmit(*(v4 + 16), *(v4 + 1736), *(v4 + 1732), word_70044, word_70020, *(v4 + 176), *(v4 + 184)) & 0x80000000) == 0)
        {
          result = sub_29F0C(a1);
          *(v4 + 1732) = 0;
          return result;
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v27 = _os_log_pack_size();
          v28 = v30 - ((__chkstk_darwin(v27) + 15) & 0xFFFFFFFFFFFFFFF0);
          v29 = *__error();
          v24 = _os_log_pack_fill(v28, v27, v29, &dword_0, "DHCP %s: RELEASE transmit failed");
LABEL_13:
          v25 = v24;
          nullsub_1();
          *v25 = 136315138;
          *(v25 + 4) = v26;
          return __SC_log_send();
        }
      }
    }
  }

  return result;
}

void sub_25B1C(uint64_t a1, unsigned int a2)
{
  v4 = sub_1688(a1);
  sub_8CD0(a1);
  sub_2BA58(a1);
  sub_58494((v4 + 52));
  sub_FE80(a1);
  sub_102A4(a1, a2);
  sub_9D7C(a1, 0);
  *v4 = 0;

  sub_BC60(a1, 0);
}

void sub_25BA4(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 120) = cf;
}

void sub_25BE4(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 128) = cf;
}

double sub_25C24(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16)
{
  *&result = 136318722;
  *a1 = 136318722;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 1024;
  *(a1 + 32) = a6;
  *(a1 + 36) = 1024;
  *(a1 + 38) = a7;
  *(a1 + 42) = 1024;
  *(a1 + 44) = a8;
  *(a1 + 48) = 1024;
  *(a1 + 50) = a9;
  *(a1 + 54) = 1024;
  *(a1 + 56) = a10;
  *(a1 + 60) = 1024;
  *(a1 + 62) = a11;
  *(a1 + 66) = 1024;
  *(a1 + 68) = a12;
  *(a1 + 72) = 1024;
  *(a1 + 74) = a13;
  *(a1 + 78) = 1024;
  *(a1 + 80) = a14;
  *(a1 + 84) = 1024;
  *(a1 + 86) = a15;
  *(a1 + 90) = 1024;
  *(a1 + 92) = a16;
  return result;
}

void sub_25CBC(uint64_t a1, int a2)
{
  v4 = sub_1688(a1);
  v5 = sub_1690(a1);
  if (!sub_2A684(a1))
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = sub_2A6A0(a1);
  if (!sub_2C40C(a1))
  {
LABEL_11:
    v9 = 0;
    v7 = 0;
LABEL_12:
    v15 = 0;
    v14 = 0;
    v13 = 0;
    sub_285E8(v4, v5, &v15, &v14, &v13);
    DHCPLeaseListRemoveLease((v4 + 136), *(v4 + 1732), v6, v7, v9);
    nullsub_1();
    DHCPLeaseListWrite((v4 + 136), v12, v14, v15, v13);
    return;
  }

  v7 = sub_2ACE8(a1);
  v8 = sub_AD1C(v5);
  v9 = v8;
  if (!a2 || !v6 || !v8)
  {
    goto LABEL_12;
  }

  Lease = DHCPLeaseListFindLease(v4 + 136, *(v4 + 1732), v6, v7, v8);
  if (Lease != -1)
  {
    v11 = sub_42C0(v4 + 136, Lease);

    DHCPLeaseSetNAK(v11, 1);
  }
}

void sub_25E14(uint64_t a1)
{
  v2 = sub_1688(a1);
  v3 = sub_1690(a1);
  memset(v38, 0, sizeof(v38));
  sub_9D7C(a1, 1u);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = v37 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "dhcp_decline(%s) declining %s", v37[0], v37[1]);
    nullsub_1();
    v9 = v8;
    v10 = inet_ntop(2, (v2 + 1732), v37, 0x10u);
    *v7 = 136315394;
    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    *(v7 + 14) = v10;
    __SC_log_send();
  }

  sub_8CD0(a1);
  v11 = sub_A840(v3);
  v12 = sub_638C(v3);
  v13 = sub_AD1C(v3);
  v14 = sub_A848((v2 + 1784), 4, v11, v12, v13, *(v2 + 24), *(v2 + 32), 0, v38);
  *(v2 + 176) = v14;
  if (!v14)
  {
    goto LABEL_12;
  }

  if (sub_ADA4(v38, 50, 4, (v2 + 1732)))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v15 = _os_log_pack_size();
      v16 = v37 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill(v16, v15, v17, &dword_0, "DHCP %s: DECLINE couldn't add our ip, %s");
LABEL_10:
      v22 = v18;
      nullsub_1();
      v24 = v23;
      v25 = sub_588A8(v38);
      *v22 = 136315394;
      *(v22 + 4) = v24;
      *(v22 + 12) = 2080;
      *(v22 + 14) = v25;
LABEL_11:
      __SC_log_send();
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (sub_ADA4(v38, 54, 4, (v2 + 1736)))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      v20 = v37 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = *__error();
      v18 = _os_log_pack_fill(v20, v19, v21, &dword_0, "DHCP %s: DECLINE couldn't add server ip, %s");
      goto LABEL_10;
    }

LABEL_12:
    sub_25B1C(a1, 5u);
    return;
  }

  if (sub_ADA4(v38, 255, 0, 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_12;
    }

    v26 = _os_log_pack_size();
    v27 = v37 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v26, *v28, &dword_0, "DHCP %s: DECLINE failed to terminate options", v37[0]);
    nullsub_1();
    *v29 = 136315138;
    *(v29 + 4) = v30;
    goto LABEL_11;
  }

  if ((bootp_client_transmit(*(v2 + 16), 0xFFFFFFFF, 0, word_70044, word_70020, *(v2 + 176), *(v2 + 184)) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v31 = _os_log_pack_size();
      v32 = v37 - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = __error();
      v34 = _os_log_pack_fill(v32, v31, *v33, &dword_0, "DHCP %s: DECLINE transmit failed", v37[0]);
      nullsub_1();
      *v34 = 136315138;
      *(v34 + 4) = v35;
      __SC_log_send();
    }
  }

  sub_FE80(a1);
  *(v2 + 1732) = 0;
  sub_254C0(v2);
  sub_2ADA0(a1);
  sub_2BA58(a1);
  sub_BC60(a1, 0);
  if (sub_2990C(v3))
  {
    v36 = 1;
  }

  else
  {
    v36 = 10;
  }

  timer_set_relative(*(v2 + 1760), v36, 0, sub_B40, a1, 0, 0);
}

void sub_263C8(uint64_t a1)
{
  v2 = sub_1688(a1);
  sub_8CD0(a1);
  sub_4A20(a1, 12);
  sub_FE80(a1);
  sub_2BA58(a1);
  sub_102A4(a1, 0xCu);
  sub_9D7C(a1, 0);
  *v2 = 0;
  sub_BC60(a1, 0);
  *(v2 + 1776) = 0;
}

void sub_26440(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v5 = a3;
  v8 = sub_1688(a1);
  v9 = sub_1690(a1);
  if (sub_2A684(a1))
  {
    v10 = sub_2A6A0(a1);
    if (sub_2C40C(a1))
    {
      v11 = sub_2ACE8(a1);
      v12 = sub_AD1C(v9);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  v19 = 0;
  v18 = 0;
  v17 = 0;
  sub_285E8(v8, v9, &v19, &v18, &v17);
  DHCPLeaseListUpdateLease((v8 + 136), *(v8 + 1732), v10, v11, v12, *(v8 + 72), a2, v5, *(v8 + 80), *(v8 + 120), *(v8 + 128));
  if (a4)
  {
    nullsub_1();
    v14 = v18;
    v15 = v19;
    v16 = v17;

    DHCPLeaseListWrite((v8 + 136), v13, v14, v15, v16);
  }
}

void sub_26598(_DWORD *a1, int a2, _DWORD *a3)
{
  v6 = sub_1688(a1);
  sub_1690(a1);
  if (a2 != 6)
  {
    if (!a2)
    {
      sub_BC60(a1, 1);
      *a3 = *(v6 + 1732);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        v8 = &v40 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = __error();
        v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "DHCP %s: sending unicast ARP to gateway %d.%d.%d.%d from %d.%d.%d.%d", v40, v41, v42, v43, v44, v45, v46, v47, v48);
        nullsub_1();
        v11 = *(a3 + 4);
        v12 = *(a3 + 5);
        v13 = *(a3 + 6);
        v14 = *(a3 + 7);
        v15 = *a3;
        v16 = *(a3 + 1);
        v17 = *(a3 + 2);
        v18 = *(a3 + 3);
        *v10 = 136317186;
        *(v10 + 4) = v19;
        *(v10 + 12) = 1024;
        *(v10 + 14) = v11;
        *(v10 + 18) = 1024;
        *(v10 + 20) = v12;
        *(v10 + 24) = 1024;
        *(v10 + 26) = v13;
        *(v10 + 30) = 1024;
        *(v10 + 32) = v14;
        *(v10 + 36) = 1024;
        *(v10 + 38) = v15;
        *(v10 + 42) = 1024;
        *(v10 + 44) = v16;
        *(v10 + 48) = 1024;
        *(v10 + 50) = v17;
        *(v10 + 54) = 1024;
        *(v10 + 56) = v18;
        __SC_log_send();
      }

      sub_21D40(*(v6 + 8), sub_26598, a1, 6, a3, 1);
    }

    return;
  }

  sub_BC60(a1, 0);
  if (a3[2])
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_10:
      v41 = sub_169C(a1);
      v42 = v27;
      sub_123A0(a1, 6, &v41);
      return;
    }

    v20 = _os_log_pack_size();
    v21 = &v40 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = __error();
    v23 = _os_log_pack_fill(v21, v20, *v22, &dword_0, "DHCP %s: ARP detect gateway failed, %s", v40, v41);
    nullsub_1();
    v25 = v24;
    v26 = sub_21F58(*(v6 + 8));
    *v23 = 136315394;
    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    *(v23 + 14) = v26;
LABEL_9:
    __SC_log_send();
    goto LABEL_10;
  }

  if (!a3[3])
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_10;
    }

    v35 = _os_log_pack_size();
    v36 = &v40 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = __error();
    v38 = _os_log_pack_fill(v36, v35, *v37, &dword_0, "DHCP %s: ARP detect gateway got no response", v40);
    nullsub_1();
    *v38 = 136315138;
    *(v38 + 4) = v39;
    goto LABEL_9;
  }

  current_time = timer_get_current_time();
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v29 = _os_log_pack_size();
    v30 = &v40 - ((__chkstk_darwin(v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = __error();
    v32 = _os_log_pack_fill(v30, v29, *v31, &dword_0, "DHCP %s: ARP detect gateway got response", v40);
    nullsub_1();
    *v32 = 136315138;
    *(v32 + 4) = v33;
    __SC_log_send();
  }

  if (*(v6 + 72) != -1)
  {
    v34 = *(v6 + 192);
    if (current_time >= v34)
    {
      sub_26A78(a1, 0, 0);
    }

    else
    {
      timer_set_relative(*(v6 + 1760), (v34 - current_time), 0, sub_26A78, a1, 0, 0);
    }
  }
}

void sub_26A78(uint64_t a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  if (a2 == 5)
  {
    LODWORD(v64[0]) = 7776000;
    LODWORD(v62) = 0;
    v61 = 0;
    HIDWORD(v60) = 0;
    if (!sub_280D8(a3, *(v7 + 2332), v8, &v62, &v61 + 1))
    {
      return;
    }

    if (v62 == 6)
    {
      v28 = 11;
    }

    else
    {
      if (v62 != 5)
      {
        return;
      }

      v30 = HIDWORD(v61);
      if (!HIDWORD(v61) || (*(*a3 + 16) + 1) < 2)
      {
        return;
      }

      dhcp_get_lease_from_options(a3 + 16, v64, &v61, &v60 + 1);
      if (*(*a3 + 16) == *(v7 + 1732))
      {
        sub_28AEC(a1, "RENEW/REBIND", v64[0], v61, HIDWORD(v60), current_time);
        sub_58494(v7 + 208);
        memmove((v7 + 224), *a3, *(a3 + 8));
        v31 = *(a3 + 8);
        *(v7 + 1724) = v31;
        sub_585E0((v7 + 208), v7 + 224, v31, 0);
        *(v7 + 1736) = v30;
        sub_28E1C(a1, 0, 0);
        return;
      }

      v28 = 13;
    }

    v29 = a1;
LABEL_34:
    sub_102A4(v29, v28);
    sub_2994C(a1, 0);
    return;
  }

  if (a2 != 2)
  {
    if (a2)
    {
      return;
    }

    HIDWORD(v61) = 0;
    memset(v64, 0, sizeof(v64));
    sub_8CD0(a1);
    *v7 = 0;
    *(v7 + 1752) = current_time;
    if (*(v7 + 1776) == 0.0)
    {
      *(v7 + 1776) = current_time;
    }

    sub_9D7C(a1, 7u);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      v10 = &v60 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "dhcp_renew_rebind(%s) renewing %s", v60, v61);
      nullsub_1();
      v14 = v13;
      v15 = inet_ntop(2, (v7 + 1732), &v62, 0x10u);
      *v12 = 136315394;
      *(v12 + 4) = v14;
      *(v12 + 12) = 2080;
      *(v12 + 14) = v15;
      __SC_log_send();
    }

    v16 = 2 * (sub_A694(a1) != 0);
    v17 = sub_A840(v8);
    v18 = sub_638C(v8);
    v19 = sub_AD1C(v8);
    v20 = sub_A848((v7 + 1784), 3, v17, v18, v19, *(v7 + 24), *(v7 + 32), v16, v64);
    *(v7 + 176) = v20;
    if (!v20)
    {
      goto LABEL_25;
    }

    *(v7 + 1768) = 0;
    *(v20 + 3) = *(v7 + 1732);
    HIDWORD(v61) = 10974720;
    if (sub_ADA4(v64, 51, 4, &v61 + 4))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v21 = _os_log_pack_size();
        v22 = &v60 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = __error();
        v24 = _os_log_pack_fill(v22, v21, *v23, &dword_0, "DHCP %s: RENEW/REBIND couldn't add lease time: %s", v60, v61);
        nullsub_1();
        v26 = v25;
        v27 = sub_588A8(v64);
        *v24 = 136315394;
        *(v24 + 4) = v26;
        *(v24 + 12) = 2080;
        *(v24 + 14) = v27;
LABEL_24:
        __SC_log_send();
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    sub_B1BC(a1, v64);
    if (sub_ADA4(v64, 255, 0, 0))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v32 = _os_log_pack_size();
        v33 = &v60 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = __error();
        v35 = _os_log_pack_fill(v33, v32, *v34, &dword_0, "DHCP %s: RENEW/REBIND failed to terminate options", v60);
        nullsub_1();
        *v35 = 136315138;
        *(v35 + 4) = v36;
        goto LABEL_24;
      }

LABEL_25:
      sub_25B1C(a1, 5u);
      return;
    }

    bootp_client_enable_receive(*(v7 + 16), sub_26A78, a1, 5);
  }

  if (!timer_still_pending(*(v7 + 1760)) && timer_time_changed(*(v7 + 1760)))
  {
    v37.n128_f64[0] = current_time - *(v7 + 192);
    sub_29D9C(a1, v37);
  }

  if (current_time >= *(v7 + 64))
  {
    v29 = a1;
    v28 = 10;
    goto LABEL_34;
  }

  v38 = (v7 + 96);
  if (current_time >= *(v7 + 96))
  {
    sub_9D7C(a1, 8u);
    v39 = &G_ip_broadcast;
    v38 = (v7 + 64);
  }

  else
  {
    sub_9D7C(a1, 7u);
    v39 = (v7 + 1736);
  }

  v40 = *v39;
  v41 = (*v38 - current_time) * 0.5;
  v42 = *(v7 + 2332) + 1;
  *(v7 + 2332) = v42;
  v43 = *(v7 + 176);
  *(v43 + 4) = bswap32(v42);
  v44 = current_time + v41;
  *(v43 + 8) = __rev16((current_time - *(v7 + 1752)));
  if ((bootp_client_transmit(*(v7 + 16), v40, *(v7 + 1732), word_70044, word_70020, v43, *(v7 + 184)) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v45 = _os_log_pack_size();
      v46 = &v60 - ((__chkstk_darwin(v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = __error();
      v48 = _os_log_pack_fill(v46, v45, *v47, &dword_0, "DHCP %s: RENEW/REBIND transmit failed", v60);
      nullsub_1();
      *v48 = 136315138;
      *(v48 + 4) = v49;
      __SC_log_send();
    }
  }

  v50 = v44 - current_time;
  v51 = current_time + 60.0;
  if (v44 - current_time >= 60.0)
  {
    v51 = v44;
  }

  if (v44 - current_time <= 60.0)
  {
    v50 = 60.0;
  }

  v52 = v50;
  *(v7 + 192) = v51;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v53 = _os_log_pack_size();
    v54 = &v60 - ((__chkstk_darwin(v53) + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = __error();
    v56 = _os_log_pack_fill(v54, v53, *v55, &dword_0, "DHCP %s: RENEW/REBIND waiting at %g for %ld.%06d", v60, *&v61, v62, v63);
    nullsub_1();
    v57 = current_time - *(v7 + 1752);
    *v56 = 136315906;
    *(v56 + 4) = v58;
    *(v56 + 12) = 2048;
    *(v56 + 14) = v57;
    *(v56 + 22) = 2048;
    *(v56 + 24) = v52;
    *(v56 + 32) = 1024;
    *(v56 + 34) = 0;
    __SC_log_send();
  }

  timer_set_relative(*(v7 + 1760), v52, 0, sub_26A78, a1, 2, 0);
  v59 = *(v7 + 2344);
  if (v59 == 0.0 || current_time > v59 || v59 - current_time < dword_7007C)
  {
    sub_2B03C(a1);
  }
}

void sub_272FC(_DWORD *a1, int a2)
{
  v5 = sub_169C(a1);
  v6 = v4;
  sub_123A0(a1, a2, &v5);
}

double dhcp_get_lease_from_options(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v8 = sub_58598(a1, 51, 4);
  v9 = sub_58598(a1, 58, 4);
  v10 = sub_58598(a1, 59, 4);
  if (v8)
  {
    v12 = bswap32(*v8);
    if (v12 <= 3)
    {
      v12 = 3;
    }

    *a2 = v12;
  }

  if (v9)
  {
    v13 = bswap32(*v9);
    if (v13 <= 2)
    {
      v13 = 2;
    }

    *a3 = v13;
  }

  if (v10)
  {
    v14 = bswap32(*v10);
    if (v14 <= 2)
    {
      v14 = 2;
    }

    *a4 = v14;
  }

  if (!v8)
  {
    if (v9)
    {
      v15 = *a3;
    }

    else
    {
      if (!v10)
      {
        v15 = 3600;
        *a2 = 3600;
        goto LABEL_28;
      }

      v15 = *a4;
    }

    *a2 = v15;
    if (v15 == -1)
    {
      goto LABEL_26;
    }

LABEL_28:
    *a3 = v15 >> 1;
    LODWORD(result) = *a2;
    result = *&result * 0.875;
    *a4 = result;
    return result;
  }

  v15 = *a2;
  if (*a2 == -1)
  {
LABEL_26:
    *a4 = 0;
    *a3 = 0;
    return result;
  }

  if (!v9 || !v10 || *a3 >= v15 || *a4 >= v15 || *a4 < *a3)
  {
    goto LABEL_28;
  }

  return result;
}

_DWORD *sub_27498(uint64_t a1, _DWORD *a2)
{
  v7 = 0;
  v3 = sub_1CF54(a1, 121, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_591C0(v3, v7, a2);
  free(v4);
  return v5;
}

unsigned __int8 *sub_274FC(uint64_t a1, int a2, _DWORD *a3)
{
  v5 = sub_27574(a1, a2);
  if (v5 == -1)
  {
    v6 = a1;
    v7 = 54;
  }

  else
  {
    if (v5)
    {
      goto LABEL_7;
    }

    v6 = a1;
    v7 = 6;
  }

  result = sub_58598(v6, v7, 4);
  if (!result)
  {
    return result;
  }

  v5 = *result;
LABEL_7:
  if ((v5 + 1) < 2)
  {
    return 0;
  }

  *a3 = v5;
  return (&dword_0 + 1);
}

uint64_t sub_27574(uint64_t a1, int a2)
{
  v4 = sub_58598(a1, 3, 4);
  if (v4)
  {
    if (*v4 == a2)
    {
      return 0;
    }

    else
    {
      return *v4;
    }
  }

  else
  {
    v10 = 0;
    v6 = sub_27498(a1, &v10);
    if (v6)
    {
      v7 = v6;
      v8 = sub_59274(v6, v10);
      if (v8)
      {
        v5 = v8[2];
      }

      else
      {
        v5 = 0xFFFFFFFFLL;
      }

      free(v7);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t sub_27604(uint64_t a1, unsigned int a2)
{
  sub_1690(a1);
  *(sub_1688(a1) + 1584) = a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v5 = _os_log_pack_size();
    v6 = v11 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "INFORM %s: %s", v11[0], v11[1]);
    nullsub_1();
    if (a2 > 4)
    {
      v10 = "<unknown>";
    }

    else
    {
      v10 = off_68D80[a2];
    }

    *v8 = 136315394;
    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;
    *(v8 + 14) = v10;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_2776C(uint64_t a1, unsigned int a2)
{
  sub_253F4(a1);
  sub_102A4(a1, a2);

  return sub_27604(a1, 0);
}

void sub_277B8(_DWORD *a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1690(a1);
  v8 = sub_1688(a1);
  v9 = v8;
  if (a2 == 5)
  {
    v64 = 0;
    LODWORD(v65[0]) = 0;
    if (sub_280D8(a3, *(v8 + 2152), v7, v65, &v64))
    {
      v18 = LODWORD(v65[0]) == 5;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = sub_5883C(a3 + 16, off_70010, dword_70018);
      v20 = v19;
      if (!*(v9 + 1556) || v19 > *(v9 + 1560))
      {
        sub_58494(v9 + 40);
        memmove((v9 + 56), *a3, *(a3 + 8));
        v21 = *(a3 + 8);
        *(v9 + 1556) = v21;
        *(v9 + 1560) = v20;
        sub_585E0((v9 + 40), v9 + 56, v21, 0);
        *(v9 + 1568) = v64;
        if (v20 == dword_70018)
        {
LABEL_28:
          sub_27FD8(a1);
          return;
        }

        if (*(v9 + 16))
        {
          return;
        }

        v22 = G_gather_secs;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v23 = _os_log_pack_size();
          v24 = &v60 - ((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0);
          v25 = __error();
          v26 = _os_log_pack_fill(v24, v23, *v25, &dword_0, "INFORM %s: gathering began at %g", v60, *&v61);
          nullsub_1();
          v27 = current_time - *(v9 + 1576);
          *v26 = 136315394;
          *(v26 + 4) = v28;
          *(v26 + 12) = 2048;
          *(v26 + 14) = v27;
          __SC_log_send();
        }

        *(v9 + 16) = 1;
        v29 = *(v9 + 1592);
        v30 = v22;
        v31 = a1;
        v32 = 2;
        goto LABEL_36;
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

      memset(v65, 0, sizeof(v65));
      sub_27604(a1, 2u);
      *(v9 + 1576) = current_time;
      sub_253F4(a1);
      v10 = sub_A840(v7);
      v11 = sub_638C(v7);
      v12 = sub_AD1C(v7);
      v13 = sub_A848((v9 + 1604), 8, v10, v11, v12, 0, 0, 0, v65);
      *(v9 + 24) = v13;
      if (!v13)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v33 = _os_log_pack_size();
          v34 = &v60 - ((__chkstk_darwin(v33) + 15) & 0xFFFFFFFFFFFFFFF0);
          v35 = *__error();
          v17 = _os_log_pack_fill(v34, v33, v35, &dword_0, "INFORM %s: make_dhcp_request failed");
          goto LABEL_22;
        }

LABEL_23:
        sub_2776C(a1, 5u);
        return;
      }

      *(v13 + 3) = sub_2C3A4(a1);
      sub_B1BC(a1, v65);
      if (sub_ADA4(v65, 255, 0, 0))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v14 = _os_log_pack_size();
          v15 = &v60 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
          v16 = *__error();
          v17 = _os_log_pack_fill(v15, v14, v16, &dword_0, "INFORM %s: failed to terminate options");
LABEL_22:
          v36 = v17;
          nullsub_1();
          *v36 = 136315138;
          *(v36 + 4) = v37;
          __SC_log_send();
          goto LABEL_23;
        }

        goto LABEL_23;
      }

      v38 = sub_B830(v65) + 240;
      if (v38 <= 0x12C)
      {
        v38 = 300;
      }

      *(v9 + 32) = v38;
      *(v9 + 1600) = 0;
      *(v9 + 16) = 0;
      *(v9 + 2160) = G_initial_wait_secs;
      bootp_client_enable_receive(*(v9 + 8), sub_277B8, a1, 5);
      *(v9 + 1560) = 0;
      ++*(v9 + 2152);
    }

    if (*(v9 + 16) == 1)
    {
      goto LABEL_28;
    }

    v39 = *(v9 + 1600);
    v40 = v39 + 1;
    *(v9 + 1600) = v39 + 1;
    if (v39 >= 1)
    {
      v41 = sub_169C(a1);
      if (!HIDWORD(v41) && v41)
      {
        sub_2545C(a1);
        return;
      }

      v40 = *(v9 + 1600);
    }

    if (v40 > G_max_retries + 1)
    {
      v42 = sub_1688(a1);
      sub_253F4(a1);
      sub_27604(a1, 4u);
      v29 = *(v42 + 1592);
      v30 = 60;
      v31 = a1;
      v32 = 0;
LABEL_36:
      timer_set_relative(v29, v30, 0, sub_277B8, v31, v32, 0);
      return;
    }

    v43 = *(v9 + 24);
    *(v43 + 4) = bswap32(*(v9 + 2152));
    *(v43 + 8) = __rev16((current_time - *(v9 + 1576)));
    if ((bootp_client_transmit(*(v9 + 8), 0xFFFFFFFF, 0, word_70044, word_70020, v43, *(v9 + 32)) & 0x80000000) != 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v44 = _os_log_pack_size();
        v45 = &v60 - ((__chkstk_darwin(v44) + 15) & 0xFFFFFFFFFFFFFFF0);
        v46 = __error();
        v47 = _os_log_pack_fill(v45, v44, *v46, &dword_0, "INFORM %s: transmit failed", v60);
        nullsub_1();
        *v47 = 136315138;
        *(v47 + 4) = v48;
        __SC_log_send();
      }
    }

    v49 = *(v9 + 2160);
    v50 = sub_65CC(0, 999999);
    v51 = v50;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v52 = _os_log_pack_size();
      v61 = &v60;
      v53 = __chkstk_darwin(v52);
      v62 = v50;
      v54 = &v60 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = __error();
      v56 = _os_log_pack_fill(v54, v52, *v55, &dword_0, "INFORM %s: waiting at %g for %ld.%06d", v60, *&v61, v62, v63);
      nullsub_1();
      v57 = current_time - *(v9 + 1576);
      *v56 = 136315906;
      *(v56 + 4) = v58;
      *(v56 + 12) = 2048;
      *(v56 + 14) = v57;
      *(v56 + 22) = 2048;
      *(v56 + 24) = v49;
      *(v56 + 32) = 1024;
      *(v56 + 34) = v50;
      v51 = v62;
      __SC_log_send();
    }

    timer_set_relative(*(v9 + 1592), v49, v51, sub_277B8, a1, 2, 0);
    v59 = 2 * *(v9 + 2160);
    if (v59 >= G_max_wait_secs)
    {
      v59 = G_max_wait_secs;
    }

    *(v9 + 2160) = v59;
  }
}

void sub_27FD8(_DWORD *a1)
{
  v2 = sub_1688(a1);
  sub_27604(a1, 3u);
  v3 = sub_58598(v2 + 40, 1, 4);
  if (!sub_2C3CC(a1) && v3)
  {
    *(v2 + 20) = *v3;
    v4 = sub_2C3A4(a1);
    sub_2BB1C(a1, v4, *(v2 + 20), 0);
  }

  sub_253F4(a1);
  *(v2 + 36) = 0;
  if (!sub_2AD0C(a1, v2 + 40, *(v2 + 1564)) || (v5 = *v2, v6 = sub_2C3A4(a1), !sub_2A3A8(a1, v5, sub_281E4, v6)))
  {

    sub_2828C(a1);
  }
}

unsigned __int8 *sub_280D8(uint64_t *a1, int a2, uint64_t a3, unsigned int *a4, _DWORD *a5)
{
  v10 = *a1;
  v11 = sub_638C(a3);
  v12 = sub_A840(a3);
  v13 = sub_AD1C(a3);
  result = sub_58CD0(v10, a2, v11, v12, v13);
  if (result)
  {
    v17 = 0;
    result = sub_1CEA4((a1 + 2), 53, &v17, 0);
    if (a4 && result)
    {
      v15 = *result;
      *a4 = v15;
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v15 = *a4;
    }

    if (v15 <= 8 && ((1 << v15) & 0x10A) != 0)
    {
      return 0;
    }

    else
    {
      *a5 = 0;
      v16 = sub_58598((a1 + 2), 54, 4);
      if (v16)
      {
        *a5 = *v16;
      }

      return (&dword_0 + 1);
    }
  }

  return result;
}

void sub_281E4(uint64_t a1, int a2)
{
  v4 = sub_1688(a1);
  v5 = v4;
  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    timer_set_relative(*(v4 + 1592), 60, 0, sub_282EC, a1, 0, 0);
    if (*(v5 + 36))
    {
      return;
    }

    *(v5 + 36) = 1;
  }

  else
  {
    *(v4 + 36) = 0;
  }

  sub_2828C(a1);
}

void sub_2828C(uint64_t a1)
{
  v2 = sub_1688(a1);
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  v3 = *(v2 + 1556);
  if (v3)
  {
    *&v4 = v2 + 56;
    DWORD2(v4) = v3;
    *&v5 = v2 + 40;
  }

  sub_102AC(a1, &v4);
}

uint64_t sub_282EC(uint64_t a1)
{
  v2 = sub_1688(a1);
  v3 = *v2;
  v4 = *(v2 + 1564);

  return sub_2A3A8(a1, v3, sub_281E4, v4);
}

CFMutableStringRef sub_2833C(uint64_t a1)
{
  if (!*(a1 + 1516))
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  sub_58968(Mutable, (a1 + 16), *(a1 + 1516), a1);
  return Mutable;
}

uint64_t sub_28390(uint64_t a1)
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v2 = sub_1688(a1);
  v3 = sub_1690(a1);
  sub_285E8(v2, v3, &v21, &v20, &v19);
  nullsub_1();
  v5 = v4;
  v6 = sub_2480(v3) != 0;
  DHCPLeaseListRead((v2 + 136), v5, v6, v20, v21, v19);
  result = sub_295C(v2 + 136);
  if (result)
  {
    v8 = sub_42C0(v2 + 136, (result - 1));
    sub_2865C(a1, v8, 1);
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v9 = _os_log_pack_size();
      v10 = &v18 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &dword_0, "DHCP %s: recovered lease for IP %d.%d.%d.%d", v18, v19, v21, v22, v23);
      nullsub_1();
      v13 = v8[4];
      v14 = v8[5];
      v15 = v8[6];
      v16 = v8[7];
      *v12 = 136316162;
      *(v12 + 4) = v17;
      *(v12 + 12) = 1024;
      *(v12 + 14) = v13;
      *(v12 + 18) = 1024;
      *(v12 + 20) = v14;
      *(v12 + 24) = 1024;
      *(v12 + 26) = v15;
      *(v12 + 30) = 1024;
      *(v12 + 32) = v16;
      return __SC_log_send();
    }
  }

  return result;
}

void sub_28580(_DWORD *a1)
{
  if (sub_8CC0(a1))
  {
    LODWORD(v3) = 0;
    sub_8F90(a1, 0, &v3);
  }

  else
  {
    v3 = sub_169C(a1);
    v4 = v2;
    sub_123A0(a1, 0, &v3);
  }
}

uint64_t sub_285E8(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, _DWORD *a5)
{
  if (*(a1 + 24))
  {
    *a4 = 0;
    *a3 = *(a1 + 24);
    result = *(a1 + 32);
  }

  else
  {
    *a4 = sub_638C(a2);
    *a3 = sub_A840(a2);
    result = sub_AD1C(a2);
  }

  *a5 = result;
  return result;
}

uint64_t sub_2865C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1688(a1);
  v7 = sub_1690(a1);
  v8 = *(a2 + 4);
  if (v8 != *(v6 + 1732))
  {
    goto LABEL_14;
  }

  v9 = bswap32(v8);
  if (HIWORD(v9) != 49320 && (v9 & 0xFF000000) != 167772160 && (v9 & 0xFFF00000) != -1408237568)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v32 = _os_log_pack_size();
      v33 = &v41 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = *__error();
      v35 = _os_log_pack_fill(v33, v32, v34, &dword_0, "DHCP %s: switch_to_lease returns FALSE, public IP is the same");
LABEL_33:
      v36 = v35;
      nullsub_1();
      *v36 = 136315138;
      *(v36 + 4) = v37;
      __SC_log_send();
      return 0;
    }

    return result;
  }

  if (!sub_2A684(a1) || !sub_2C40C(a1) || (v12 = *(a2 + 20), v12 != sub_2A6A0(a1)) || (v13 = sub_2ACE8(a1), v14 = sub_AD1C(v7), bcmp((a2 + 24), v13, v14)))
  {
LABEL_14:
    sub_FE80(a1);
    v15 = *(a2 + 64);
    if (v15 >= 0x5DC)
    {
      v16 = 1500;
    }

    else
    {
      v16 = v15;
    }

    v44 = 0;
    v43 = 0;
    *(v6 + 1724) = v16;
    memmove((v6 + 224), (a2 + 68), v16);
    sub_58494(v6 + 208);
    sub_585E0((v6 + 208), v6 + 224, *(v6 + 1724), 0);
    dhcp_get_lease_from_options(v6 + 208, &v44 + 1, &v44, &v43);
    sub_28AEC(a1, "RECOVERED", HIDWORD(v44), v44, v43, *(a2 + 8));
    *(v6 + 56) = 1;
    *(v6 + 1728) = 0;
    *(v6 + 1732) = *(a2 + 4);
    v17 = sub_58598(v6 + 208, 54, 4);
    if (v17)
    {
      *(v6 + 1736) = *v17;
    }

    sub_25BA4(v6, *(a2 + 48));
    sub_25BE4(v6, *(a2 + 56));
    sub_2ADA0(a1);
    *(v6 + 112) = 0;
    if (a3 && *(a2 + 47) == 1)
    {
      *(v6 + 112) = 1;
      v18 = *(a2 + 41);
      *(v6 + 108) = *(a2 + 45);
      *(v6 + 104) = v18;
    }

    v19 = *(a2 + 20);
    if (v19)
    {
      sub_2ADB0(a1, v19);
      sub_2ADC0(a1);
      v20 = *(a2 + 40);
      if (*(a2 + 40))
      {
        if (sub_2ACFC(a1) < v20)
        {
          v20 = sub_2ACFC(a1);
        }

        v21 = sub_2ACE8(a1);
        memmove(v21, (a2 + 24), v20);
        sub_2C428(a1);
      }
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v22 = _os_log_pack_size();
      v23 = &v41 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = __error();
      v25 = _os_log_pack_fill(v23, v22, *v24, &dword_0, "DHCP %s: switched to lease for IP %d.%d.%d.%d", v41, v42, v44, v45, v46);
      nullsub_1();
      v26 = *(a2 + 4);
      v27 = *(a2 + 5);
      v28 = *(a2 + 6);
      v29 = *(a2 + 7);
      *v25 = 136316162;
      *(v25 + 4) = v30;
      *(v25 + 12) = 1024;
      *(v25 + 14) = v26;
      *(v25 + 18) = 1024;
      *(v25 + 20) = v27;
      *(v25 + 24) = 1024;
      *(v25 + 26) = v28;
      *(v25 + 30) = 1024;
      *(v25 + 32) = v29;
      __SC_log_send();
    }

    return 1;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v38 = _os_log_pack_size();
    v39 = &v41 - ((__chkstk_darwin(v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = *__error();
    v35 = _os_log_pack_fill(v39, v38, v40, &dword_0, "DHCP %s: switch_to_lease returns FALSE, private IP has same router");
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_28AEC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, double a6)
{
  v12 = sub_1688(a1);
  sub_1690(a1);
  *(v12 + 80) = a6;
  *(v12 + 72) = a3;
  if (a3 == -1)
  {
    v13 = 0.0;
    v15 = 0.0;
    v14 = 0.0;
  }

  else
  {
    v13 = a3 + a6;
    v14 = a4 + a6;
    v15 = a5 + a6;
  }

  *(v12 + 64) = v13;
  *(v12 + 88) = v14;
  *(v12 + 96) = v15;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v17 = _os_log_pack_size();
    v18 = v26 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v17, *v19, &dword_0, "DHCP %s: %s lease = { start %g, t1 %g, t2 %g, expiration %g }", v26[0], v26[1], *&v26[2], *&v26[3], *&v26[4], *&v26[5]);
    nullsub_1();
    v21 = *(v12 + 80);
    v22 = *(v12 + 88);
    v23 = *(v12 + 96);
    v24 = *(v12 + 64);
    *v20 = 136316418;
    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = a2;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v21;
    *(v20 + 32) = 2048;
    *(v20 + 34) = v22;
    *(v20 + 42) = 2048;
    *(v20 + 44) = v23;
    *(v20 + 52) = 2048;
    *(v20 + 54) = v24;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_28CBC(uint64_t a1, void *a2, double a3)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v7 = _os_log_pack_size();
    v8 = v15 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "DHCP %s: now = %g, lease = { start %g, t1 %g, t2 %g, expiration %g }", v15[0], *&v15[1], *&v15[2], *&v15[3], *&v15[4], *&v15[5]);
    v11 = a2[3];
    v12 = a2[4];
    v13 = a2[5];
    v14 = a2[1];
    *v10 = 136316418;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v11;
    *(v10 + 32) = 2048;
    *(v10 + 34) = v12;
    *(v10 + 42) = 2048;
    *(v10 + 44) = v13;
    *(v10 + 52) = 2048;
    *(v10 + 54) = v14;
    return __SC_log_send();
  }

  return result;
}

void sub_28E1C(_DWORD *a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  if (a2 != 6)
  {
    if (a2)
    {
      return;
    }

    v9 = *(v7 + 1744);
    sub_9D7C(a1, 5u);
    *(v7 + 116) = 1;
    *(v7 + 40) = 1;
    *(v7 + 1776) = 0;
    sub_8CD0(a1);
    if ((v9 - 7) > 1)
    {
      sub_2BA58(a1);
      if (!sub_8CC0(a1))
      {
        if (!sub_2990C(v8) && v9 == 4)
        {
          v19 = *(v7 + 8);
          v20 = *(v7 + 1732);

          sub_D99C(v19, sub_28E1C, a1, 6, 0, v20);
          return;
        }

        v28 = sub_1CE28(a1);
        if (v28 == *(v7 + 1732) && (v9 == 6 || v9 == 3))
        {
          v29 = v28;
          v30 = *(v7 + 8);

          sub_21A18(v30, sub_28E1C, a1, 6, 0, v29, 1);
          return;
        }
      }
    }

    else
    {
      v10 = *(v7 + 88);
      v11 = v10 >= current_time && v10 - current_time > dword_70040;
      *(v7 + 116) = v11;
    }

    goto LABEL_34;
  }

  if (*(a3 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      v13 = &__str - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "DHCP %s: ARP probe failed, %s", __str, v52);
      nullsub_1();
      v17 = v16;
      v18 = sub_21F58(*(v7 + 8));
      *v15 = 136315394;
      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      *(v15 + 14) = v18;
      __SC_log_send();
    }

    sub_25B1C(a1, 6u);
    return;
  }

  if (*(a3 + 12))
  {
    snprintf(&__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x, DHCP Server %d.%d.%d.%d", *(v7 + 1732), *(v7 + 1733), *(v7 + 1734), *(v7 + 1735), *(a3 + 24), *(a3 + 25), *(a3 + 26), *(a3 + 27), *(a3 + 28), *(a3 + 29), *(v7 + 1736), *(v7 + 1737), *(v7 + 1738), *(v7 + 1739));
    v21 = *(v7 + 1732);
    if (*(v7 + 36) == v21)
    {
      if (*(v7 + 2336))
      {
LABEL_25:
        *(v7 + 36) = v21;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v23 = _os_log_pack_size();
          v24 = &__str - ((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0);
          v25 = __error();
          v26 = _os_log_pack_fill(v24, v23, *v25, &dword_0, "DHCP %s: %s", __str, v52);
          nullsub_1();
          *v26 = 136315394;
          *(v26 + 4) = v27;
          *(v26 + 12) = 2080;
          *(v26 + 14) = &__str;
          __SC_log_send();
        }

        sub_25CBC(a1, 0);
        sub_254C0(v7);
        sub_2ADA0(a1);
        sub_102A4(a1, 8u);
        sub_25E14(a1);
        return;
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    *(v7 + 2336) = v22;
    goto LABEL_25;
  }

  sub_8CD0(a1);
LABEL_34:
  *(v7 + 56) = 1;
  v31 = sub_CBBC(a1);
  sub_25BA4(v7, v31);
  v32 = sub_2C964(a1);
  sub_25BE4(v7, v32);
  *(v7 + 36) = 0;
  *(v7 + 2336) = 0;
  v33 = sub_58598(v7 + 208, 1, 4);
  if (v33)
  {
    v34 = *v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = (v7 + 1732);
  v36 = *(v7 + 1732);
  if (v36 != sub_1CE28(a1) || v34 != sub_2C464(a1))
  {
    sub_2BB1C(a1, *v35, v34, 0);
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v37 = _os_log_pack_size();
    v38 = &__str - ((__chkstk_darwin(v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = __error();
    v40 = _os_log_pack_fill(v38, v37, *v39, &dword_0, "dhcp_bound(%s) %s", __str, v52);
    nullsub_1();
    v42 = v41;
    v43 = inet_ntop(2, (v7 + 1732), &__str, 0x10u);
    *v40 = 136315394;
    *(v40 + 4) = v42;
    *(v40 + 12) = 2080;
    *(v40 + 14) = v43;
    __SC_log_send();
  }

  if (dword_70028)
  {
    sub_4884(a1, 0);
  }

  *(v7 + 40) = 0;
  if (*(v7 + 72) == -1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v46 = _os_log_pack_size();
      v47 = &__str - ((__chkstk_darwin(v46) + 15) & 0xFFFFFFFFFFFFFFF0);
      v48 = __error();
      v49 = _os_log_pack_fill(v47, v46, *v48, &dword_0, "DHCP %s: infinite lease", __str);
      nullsub_1();
      *v49 = 136315138;
      *(v49 + 4) = v50;
      __SC_log_send();
    }

    *(v7 + 200) = 0;
  }

  else
  {
    v44 = *(v7 + 88);
    if (v44 >= current_time)
    {
      v45 = (v44 - current_time);
    }

    else
    {
      v45 = 0;
    }

    *(v7 + 192) = v44;
    timer_set_relative(*(v7 + 1760), v45, v44 < current_time, sub_26A78, a1, 0, 0);
    *(v7 + 200) = 0;
    if (v44 < current_time)
    {
      goto LABEL_55;
    }
  }

  if (!sub_2AD0C(a1, v7 + 208, *v35) || !sub_2A3A8(a1, *(v7 + 8), sub_29C50, *(v7 + 1732)))
  {
LABEL_55:
    sub_26440(a1, (v7 + 224), *(v7 + 1724), *(v7 + 116));
    *(v7 + 116) = 0;
    sub_29BF4(a1);
    sub_BC60(a1, 0);
  }
}

uint64_t sub_29624(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  v3 = sub_1CEA4(a1, 108, &v5, 0);
  result = 0;
  if (v3)
  {
    if (v5 == 4)
    {
      *a2 = bswap32(*v3);
      return 1;
    }
  }

  return result;
}

void sub_29688(_DWORD *a1, int a2, _DWORD *a3)
{
  v6 = sub_1688(a1);
  sub_1690(a1);
  if (a2 == 2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      v14 = &v19 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "DHCP %s: WAIT wakeup", v19);
      nullsub_1();
      *v16 = 136315138;
      *(v16 + 4) = v17;
      __SC_log_send();
    }

    v20 = sub_169C(a1);
    v21 = v18;
    sub_123A0(a1, 0, &v20);
  }

  else if (!a2)
  {
    if (*a3 <= 0x12Cu)
    {
      v7 = 300;
    }

    else
    {
      v7 = *a3;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      v9 = &v19 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "DHCP %s: WAIT %us", v19, v20);
      nullsub_1();
      *v11 = 136315394;
      *(v11 + 4) = v12;
      *(v11 + 12) = 1024;
      *(v11 + 14) = v7;
      __SC_log_send();
    }

    sub_25B1C(a1, 0x15u);
    timer_set_relative(*(v6 + 1760), v7, 0, sub_29688, a1, 2, 0);
  }
}

uint64_t sub_2994C(uint64_t a1, unsigned int a2)
{
  v4 = sub_1688(a1);
  sub_1690(a1);
  sub_9D7C(a1, 2u);
  if (a2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v18 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "dhcp_unbound(%s) received NAK", v18);
      nullsub_1();
      *v8 = 136315138;
      *(v8 + 4) = v9;
      __SC_log_send();
    }
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    v11 = &v18 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "dhcp_unbound(%s) dropping %s", v18, v19);
    nullsub_1();
    v15 = v14;
    v16 = inet_ntop(2, (v4 + 1732), &v19, 0x10u);
    *v13 = 136315394;
    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    *(v13 + 14) = v16;
    __SC_log_send();
  }

  sub_8CD0(a1);
  sub_25CBC(a1, a2 != 0);
  sub_FE80(a1);
  *(v4 + 1732) = 0;
  sub_254C0(v4);
  *(v4 + 48) = 0;
  sub_2ADA0(a1);
  sub_BC60(a1, 0);
  return timer_set_relative(*(v4 + 1760), 0, 1000, sub_B40, a1, 0, 0);
}

void sub_29BF4(uint64_t a1)
{
  v2 = sub_1688(a1);
  v4 = v2 + 224;
  v5 = 0;
  LODWORD(v5) = *(v2 + 1724);
  v6 = v2 + 208;
  v3 = *(v2 + 64);
  v7 = *(v2 + 80);
  v8 = v3;
  sub_102AC(a1, &v4);
}

void sub_29C50(uint64_t a1, int a2)
{
  v4 = sub_1688(a1);
  sub_BC60(a1, 0);
  if (a2)
  {
    if (a2 == 1)
    {
      timer_set_relative(*(v4 + 1760), 60, 0, sub_29D4C, a1, 0, 0);
      if (!*(v4 + 200))
      {
        *(v4 + 200) = 1;
        sub_29BF4(a1);
        v5 = *(v4 + 1724);

        sub_26440(a1, (v4 + 224), v5, 1);
      }
    }
  }

  else
  {
    sub_26440(a1, (v4 + 224), *(v4 + 1724), *(v4 + 116));
    *(v4 + 116) = 0;

    sub_29BF4(a1);
  }
}

uint64_t sub_29D4C(uint64_t a1)
{
  v2 = sub_1688(a1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 1732);

  return sub_2A3A8(a1, v3, sub_29C50, v4);
}

uint64_t sub_29D9C(uint64_t a1, __n128 a2)
{
  v11 = a2;
  v3 = sub_1688(a1);
  sub_1690(a1);
  v4 = v11.n128_i64[0];
  v3[4].f64[0] = v3[4].f64[0] + v11.n128_f64[0];
  v3[5] = vaddq_f64(v3[5], vdupq_lane_s64(v4, 0));
  v3[6].f64[0] = v3[6].f64[0] + *&v4;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v6 = _os_log_pack_size();
    v7 = &v11 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "DHCP %s: adjusted lease by %g seconds", v11.n128_u64[0], v11.n128_f64[1]);
    nullsub_1();
    *v9 = 136315394;
    *(v9 + 4) = v10;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v11.n128_u64[0];
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_29F0C(uint64_t a1)
{
  v2 = sub_1690(a1);
  v3 = sub_1688(a1);
  v4 = sub_2C464(a1);
  v5 = *(v3 + 1732);
  v6 = *(v3 + 1736);
  if (((v6 ^ v5) & v4) != 0)
  {
    v6 = sub_27574(v3 + 208, v5);
    if ((v6 + 1) <= 1)
    {
      v6 = *(v3 + 1736);
    }
  }

  memset(v40, 0, 512);
  HIDWORD(v37) = v6;
  v7 = arp_open_routing_socket();
  if (v7 == -1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v11 = _os_log_pack_size();
      v12 = &v36 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "DHCP %s: arp_open_routing_socket() failed, %s", v36, v37);
      nullsub_1();
      v16 = v15;
      v17 = __error();
      v18 = strerror(*v17);
      *v14 = 136315394;
      *(v14 + 4) = v16;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v18;
      return __SC_log_send();
    }
  }

  else
  {
    v8 = v7;
    v9 = sub_144D8(v2);
    if (!arp_get(v8, v40, v6, v9))
    {
      for (i = 1; ; ++i)
      {
        v20 = &v40[v40[92] + 92];
        if (v20->sdl_family == 18)
        {
          if (v20->sdl_alen)
          {
            break;
          }
        }

        if (i == 5)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            return close(v8);
          }

          v21 = _os_log_pack_size();
          v22 = &v36 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
          v23 = __error();
          v24 = _os_log_pack_fill(v22, v21, *v23, &dword_0, "DHCP %s: %s was NOT resolved", v36, v37);
          nullsub_1();
          v26 = v25;
          v27 = inet_ntop(2, &v37 + 4, &v38, 0x10u);
          *v24 = 136315394;
          *(v24 + 4) = v26;
          *(v24 + 12) = 2080;
          *(v24 + 14) = v27;
          goto LABEL_20;
        }

        usleep(0x3E8u);
        if (arp_get(v8, v40, SHIDWORD(v37), v9))
        {
          return close(v8);
        }
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return close(v8);
      }

      v28 = _os_log_pack_size();
      v36 = &v36;
      v29 = &v36 - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = __error();
      v31 = _os_log_pack_fill(v29, v28, *v30, &dword_0, "DHCP %s: %s is resolved, %s after trying %d time(s)", v36, v37, v38, v39);
      nullsub_1();
      v33 = v32;
      v34 = inet_ntop(2, &v37 + 4, &v38, 0x10u);
      v35 = link_ntoa(v20);
      *v31 = 136315906;
      *(v31 + 4) = v33;
      *(v31 + 12) = 2080;
      *(v31 + 14) = v34;
      *(v31 + 22) = 2080;
      *(v31 + 24) = v35;
      *(v31 + 32) = 1024;
      *(v31 + 34) = i;
LABEL_20:
      __SC_log_send();
    }

    return close(v8);
  }

  return result;
}

void sub_2A368(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_A314(a2);
  }

  if (*(a1 + 25))
  {
    *(a1 + 116) &= ~8u;
  }
}

uint64_t sub_2A3A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!G_discover_and_publish_router_mac_address)
  {
    return 0;
  }

  if ((*(a1 + 25) & 1) == 0 || (v5 = *(a1 + 116), *(a1 + 116) = v5 & 0xFFFFFFFB, (v5 & 1) == 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v7 = _os_log_pack_size();
    v8 = &v21 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "service_resolve_router %s: IP address missing", v21);
    nullsub_1();
    *v10 = 136315138;
    *(v10 + 4) = v11;
    __SC_log_send();
    return 0;
  }

  *(a1 + 116) = v5 & 0xFFFFFFE3 | 8;
  v15 = *(a1 + 120);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v23 = HIBYTE(v15);
    v16 = _os_log_pack_size();
    v22 = &v21;
    v17 = &v21 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &dword_0, "service_resolve_router %s: sender %d.%d.%d.%d target %d.%d.%d.%d started", v21, v22, v23, v24, v25, v26, v27, v28, v29);
    nullsub_1();
    *v19 = 136317186;
    *(v19 + 4) = v20;
    *(v19 + 12) = 1024;
    *(v19 + 14) = a4;
    *(v19 + 18) = 1024;
    *(v19 + 20) = BYTE1(a4);
    *(v19 + 24) = 1024;
    *(v19 + 26) = BYTE2(a4);
    *(v19 + 30) = 1024;
    *(v19 + 32) = HIBYTE(a4);
    *(v19 + 36) = 1024;
    *(v19 + 38) = v15;
    *(v19 + 42) = 1024;
    *(v19 + 44) = BYTE1(v15);
    *(v19 + 48) = 1024;
    *(v19 + 50) = BYTE2(v15);
    *(v19 + 54) = 1024;
    *(v19 + 56) = v23;
    __SC_log_send();
  }

  sub_21BA8(a2, sub_2A6B8, a1, a3, a4, v15, dword_70080);
  return 1;
}

uint64_t sub_2A684(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 116) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2A6A0(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2A6B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (*(a1 + 25))
  {
    *(a1 + 116) &= ~8u;
  }

  if (*(a3 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      v7 = &v34 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "service_resolve_router_complete %s: ARP failed, %s", v34, v35);
      nullsub_1();
      v11 = v10;
      v12 = sub_21F58(*a3);
      *v9 = 136315394;
      *(v9 + 4) = v11;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v12;
      __SC_log_send();
    }

    v13 = 99;
  }

  else if (*(a3 + 12))
  {
    v14 = sub_AD1C(*(*(a1 + 16) + 8));
    memmove((a1 + 124), (a3 + 24), v14);
    if (*(a1 + 25))
    {
      *(a1 + 116) |= 7u;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v15 = _os_log_pack_size();
      v16 = &v34 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v15, *v17, &dword_0, "service_resolve_router_complete %s: ARP %d.%d.%d.%d: response received", v34, v35, v36, v37, v38);
      nullsub_1();
      v19 = *(a1 + 120);
      v20 = *(a1 + 121);
      v21 = *(a1 + 122);
      v22 = *(a1 + 123);
      *v18 = 136316162;
      *(v18 + 4) = v23;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v19;
      *(v18 + 18) = 1024;
      *(v18 + 20) = v20;
      *(v18 + 24) = 1024;
      *(v18 + 26) = v21;
      *(v18 + 30) = 1024;
      *(v18 + 32) = v22;
      __SC_log_send();
    }

    v13 = 0;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v24 = _os_log_pack_size();
      v25 = &v34 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = __error();
      v27 = _os_log_pack_fill(v25, v24, *v26, &dword_0, "service_resolve_router_complete %s: ARP router %d.%d.%d.%d: no response", v34, v35, v36, v37, v38);
      nullsub_1();
      v28 = *(a1 + 120);
      v29 = *(a1 + 121);
      v30 = *(a1 + 122);
      v31 = *(a1 + 123);
      *v27 = 136316162;
      *(v27 + 4) = v32;
      *(v27 + 12) = 1024;
      *(v27 + 14) = v28;
      *(v27 + 18) = 1024;
      *(v27 + 20) = v29;
      *(v27 + 24) = 1024;
      *(v27 + 26) = v30;
      *(v27 + 30) = 1024;
      *(v27 + 32) = v31;
      __SC_log_send();
    }

    if (*(a1 + 25))
    {
      *(a1 + 116) |= 0x10u;
    }

    v13 = 1;
  }

  return a2(a1, v13);
}

uint64_t sub_2AA6C(uint64_t a1, uint64_t a2)
{
  if (!G_discover_and_publish_router_mac_address)
  {
    return 0;
  }

  if ((*(a1 + 25) & 1) == 0 || (v3 = *(a1 + 116), *(a1 + 116) = v3 & 0xFFFFFFFB, (v3 & 1) == 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v5 = _os_log_pack_size();
    v6 = &v19 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "%s: service_populate_router_arpinfo gateway missing", v19);
    nullsub_1();
    *v8 = 136315138;
    *(v8 + 4) = v9;
    __SC_log_send();
    return 0;
  }

  v11 = *(a1 + 120);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v12 = _os_log_pack_size();
    v13 = &v19 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "%s: service_populate_router_arpinfo found gateway %d.%d.%d.%d", v19, v20, v21, v22, v23);
    nullsub_1();
    *v15 = 136316162;
    *(v15 + 4) = v16;
    *(v15 + 12) = 1024;
    *(v15 + 14) = v11;
    *(v15 + 18) = 1024;
    *(v15 + 20) = BYTE1(v11);
    *(v15 + 24) = 1024;
    *(v15 + 26) = BYTE2(v11);
    *(v15 + 30) = 1024;
    *(v15 + 32) = HIBYTE(v11);
    __SC_log_send();
  }

  *(a2 + 4) = v11;
  v17 = *(a1 + 24);
  if ((v17 & 0x100) != 0)
  {
    v18 = (a1 + 124);
  }

  else
  {
    v18 = 0;
  }

  memmove((a2 + 8), v18, (v17 >> 4) & 0x10);
  return 1;
}

uint64_t sub_2ACE8(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return a1 + 124;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AD0C(_DWORD *a1, uint64_t a2, int a3)
{
  v8 = 0;
  v4 = sub_274FC(a2, a3, &v8);
  v5 = a1[6];
  if (!v4)
  {
    if ((v5 & 0x100) != 0)
    {
      result = 0;
      a1[29] = 0;
      return result;
    }

    return 0;
  }

  if ((v5 & 0x100) == 0)
  {
    return 1;
  }

  v7 = v8;
  if ((~a1[29] & 7) == 0 && v8 == a1[30])
  {
    return 0;
  }

  result = 1;
  a1[29] = 1;
  a1[30] = v7;
  return result;
}

uint64_t sub_2ADA0(uint64_t result)
{
  if (*(result + 25))
  {
    *(result + 116) = 0;
  }

  return result;
}

uint64_t sub_2ADB0(uint64_t result, int a2)
{
  if (*(result + 25))
  {
    *(result + 120) = a2;
  }

  return result;
}

uint64_t sub_2ADC0(uint64_t result)
{
  if (*(result + 25))
  {
    *(result + 116) |= 1u;
  }

  return result;
}

uint64_t sub_2ADD8(uint64_t a1, int a2)
{
  if (sub_295C(qword_70160) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_42C0(qword_70160, v4);
    if (sub_295C(v5 + 24) >= 1)
    {
      break;
    }

LABEL_8:
    v4 = (v4 + 1);
    if (v4 >= sub_295C(qword_70160))
    {
      return 0;
    }
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_42C0(v5 + 24, v6);
    if (v7 != a1 && *(v7 + 100) == a2)
    {
      return 1;
    }

    v6 = (v6 + 1);
    if (v6 >= sub_295C(v5 + 24))
    {
      goto LABEL_8;
    }
  }
}

_DWORD *sub_2AEA4(_DWORD *result, _DWORD *a2)
{
  if (result)
  {
    *result = dword_70180;
  }

  if (a2)
  {
    *a2 = dword_70184;
  }

  return result;
}

void sub_2AEF8(uint64_t a1, __CFDictionary *a2, int a3)
{
  v6 = *(*(a1 + 16) + 8);
  v7 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", *(a1 + 120), *(a1 + 121), *(a1 + 122), *(a1 + 123));
  v8 = sub_AD1C(v6);
  sub_59EA8(cStr, 48, (a1 + 124), v8);
  v9 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v10 = v9;
  if (a3)
  {
    v11 = CFStringCreateWithFormat(0, 0, @"IPv4.Router=%@;IPv4.RouterHardwareAddress=%@", v7, v9);
    sub_2B7AC(a2, v11);
    CFRelease(v11);
  }

  CFDictionarySetValue(a2, @"ARPResolvedIPAddress", v7);
  CFDictionarySetValue(a2, @"ARPResolvedHardwareAddress", v10);
  CFRelease(v7);
  CFRelease(v10);
}

void sub_2B03C(uint64_t a1)
{
  v1 = *(a1 + 16);
  byte_701B4 = 1;
  *(v1 + 152) = 1;
  dispatch_source_merge_data(qword_701C0, 1uLL);
}

uint64_t sub_2B060(uint64_t result)
{
  v1 = *(result + 16);
  if ((*v1 & 0x80) == 0)
  {
    v2 = result;
    v3 = *(v1 + 8);
    *v1 |= 0x80u;
    result = sub_295C(v1 + 24);
    v4 = *(v1 + 88);
    if (v4)
    {
      if (result > 2)
      {
        return result;
      }

      v5 = v4 + 88;
    }

    else
    {
      if (result > 1)
      {
        return result;
      }

      v5 = 0;
    }

    result = sub_596EC(v3);
    if (result >= 1)
    {
      v7 = result;
      v8 = 0;
      v9 = 0;
      *&v6 = 136315138;
      v17 = v6;
      do
      {
        result = sub_596F4(v3, v8);
        if (*result != *(v2 + 100))
        {
          v10 = result;
          if (!v5 || *result != *(v5 + 12))
          {
            if (!v9)
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v11 = _os_log_pack_size();
                v18 = &v17;
                v12 = &v17 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
                v13 = __error();
                v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "%s: removing stale IP address(es)", v17);
                nullsub_1();
                *v14 = v17;
                *(v14 + 4) = v15;
                __SC_log_send();
              }
            }

            nullsub_1();
            result = sub_140BC(v16, *v10);
            v9 = 1;
          }
        }

        v8 = (v8 + 1);
      }

      while (v7 != v8);
    }
  }

  return result;
}

uint64_t sub_2B250(uint64_t a1, uint64_t a2)
{
  current_time = timer_get_current_time();
  if (!*(a2 + 20) && current_time - *(a1 + 144) <= dword_70084)
  {
    return 0;
  }

  v5 = *(a1 + 160);
  if (v5 >= 1 && current_time - *(a1 + 152) > dword_70084)
  {
    v5 = 0;
  }

  *(a1 + 152) = current_time;
  *(a1 + 160) = v5 + 1;
  if (v5 >= dword_70088)
  {
    return 0;
  }

  v6 = *(*(a1 + 16) + 8);
  v7 = sub_216C0(v6);
  v24 = v7;
  if (!v7)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      v19 = &v22 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      *_os_log_pack_fill(v19, v18, *v20, &dword_0, "IPConfiguration: ServiceDefendIPv4Address arp_client_init failed") = 0;
      __SC_log_send();
      return 0;
    }

    return 0;
  }

  v8 = v7;
  sub_2B55C(v6, a2);
  v9 = sub_21F60(v8, *(a1 + 100));
  sub_15000(&v24);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    v23 = &v22;
    v11 = &v22 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "%s %s: defending IP %d.%d.%d.%d against %s%02x:%02x:%02x:%02x:%02x:%02x %d (of %d)", v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, vars0);
    v14 = sub_6160(*(a1 + 24));
    nullsub_1();
    if (*(a2 + 20))
    {
      v16 = "BonjourSleepProxy ";
    }

    else
    {
      v16 = "";
    }

    v17 = *(a2 + 8);
    sub_2B710(v13, v14, v15, *(a1 + 100), *(a1 + 101), *(a1 + 102), *(a1 + 103), v16, *v17, v17[1], v17[2], v17[3], v17[4], v17[5], *(a1 + 160), dword_70088);
    __SC_log_send();
  }

  return v9;
}

uint64_t sub_2B55C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    nullsub_1();
    v5 = v4;
    v6 = sub_638C(v3);
    v7 = *(a2 + 8);
    BytePtr = CFDataGetBytePtr(*(a2 + 32));
    Length = CFDataGetLength(*(a2 + 32));
    v10 = sub_5A20(-1, v17, v5, v6, v7, *(a2 + 24), *a2, 0x14E9u, 5353, BytePtr, Length);
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v11 = _os_log_pack_size();
      v12 = &v17[-2] - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "%s: OPT record sent (status %d)", v16, v17[0]);
      nullsub_1();
      *v14 = 136315394;
      *(v14 + 4) = v15;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v10;
      return __SC_log_send();
    }
  }

  return result;
}

double sub_2B710(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16)
{
  *&result = 136318722;
  *a1 = 136318722;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a5;
  *(a1 + 34) = 1024;
  *(a1 + 36) = a6;
  *(a1 + 40) = 1024;
  *(a1 + 42) = a7;
  *(a1 + 46) = 2080;
  *(a1 + 48) = a8;
  *(a1 + 56) = 1024;
  *(a1 + 58) = a9;
  *(a1 + 62) = 1024;
  *(a1 + 64) = a10;
  *(a1 + 68) = 1024;
  *(a1 + 70) = a11;
  *(a1 + 74) = 1024;
  *(a1 + 76) = a12;
  *(a1 + 80) = 1024;
  *(a1 + 82) = a13;
  *(a1 + 86) = 1024;
  *(a1 + 88) = a14;
  *(a1 + 92) = 1024;
  *(a1 + 94) = a15;
  *(a1 + 98) = 1024;
  *(a1 + 100) = a16;
  return result;
}

void sub_2B7AC(__CFDictionary *a1, const __CFString *a2)
{
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, a2, 0x8000100u, 0);
  if (ExternalRepresentation)
  {
    v5 = ExternalRepresentation;
    memset(&v9, 0, sizeof(v9));
    CC_SHA256_Init(&v9);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    CC_SHA256_Update(&v9, BytePtr, Length);
    CC_SHA256_Final(md, &v9);
    CFRelease(v5);
    v8 = CFDataCreate(0, md, 20);
    CFDictionarySetValue(a1, @"NetworkSignatureHash", v8);
    CFDictionarySetValue(a1, @"NetworkSignature", a2);
    CFRelease(v8);
  }
}

void sub_2B8C0(uint64_t a1)
{
  if ((*(*(a1 + 16) + 2) & 0x40) != 0)
  {
    v9 = 0;
    v10 = kSCEntNetIPv4;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v2 = _os_log_pack_size();
      v3 = &v8 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      v4 = __error();
      v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "%s %s: unpublish IPv4 (CLAT46)", v8, v9);
      v6 = sub_6160(*(a1 + 24));
      nullsub_1();
      *v5 = 136315394;
      *(v5 + 4) = v6;
      *(v5 + 12) = 2080;
      *(v5 + 14) = v7;
      __SC_log_send();
    }

    sub_11F3C(qword_70188, *a1, &v10, &v9, 1, *(a1 + 36));
    dispatch_source_merge_data(qword_701C0, 1uLL);
  }
}

uint64_t sub_2BA58(uint64_t a1)
{
  v1 = sub_144D8(*(*(a1 + 16) + 8));
  sub_143CC(v1, 0, 0);
  nullsub_1();

  return sub_B778(v2, 0);
}

CFTypeRef *sub_2BAB0(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 48)) != 0)
  {
    return sub_498C(*(a1 + 16), v1, (*(a1 + 24) >> 8) & 1);
  }

  else
  {
    return 0;
  }
}

void sub_2BB1C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v78 = a4;
  v79 = a3;
  v7 = *(a1 + 100);
  v74 = (a1 + 100);
  v8 = *(*(a1 + 16) + 8);
  v77 = a2;
  if (v7)
  {
    v9 = v7 == a2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!a3)
    {
LABEL_11:
      v20 = bswap32(v77);
      if ((v20 & 0x80000000) != 0)
      {
        if (v20 >> 30 == 2)
        {
          v70 = 0;
          v71 = 0;
          v75 = 0xFFFF;
          v79 = 0xFFFF;
          LOBYTE(v5) = -1;
          v69 = 255;
        }

        else
        {
          v75 = 0xFFFFFF;
          v79 = 0xFFFFFF;
          LOBYTE(v5) = -1;
          v69 = 255;
          v70 = 0;
          v71 = (&stru_B8 + 71);
        }
      }

      else
      {
        v70 = 0;
        v71 = 0;
        v69 = 0;
        LOBYTE(v5) = -1;
        v79 = 255;
        v75 = 255;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v12 = &v60 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "%s(%s): address still assigned %d.%d.%d.%d", v60, v61, v62, v64, v65, v67);
      nullsub_1();
      v15 = *(v6 + 100);
      v16 = *(v6 + 101);
      v17 = *(v6 + 102);
      v18 = *(v6 + 103);
      *v14 = 136316418;
      *(v14 + 4) = "service_set_address";
      *(v14 + 12) = 2080;
      *(v14 + 14) = v19;
      *(v14 + 22) = 1024;
      *(v14 + 24) = v15;
      *(v14 + 28) = 1024;
      *(v14 + 30) = v16;
      *(v14 + 34) = 1024;
      *(v14 + 36) = v17;
      *(v14 + 40) = 1024;
      *(v14 + 42) = v18;
      __SC_log_send();
    }

    sub_FE80(v6);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v71 = (v5 >> 16);
  v75 = v5;
  v69 = v5 >> 8;
  v70 = v5 >> 24;
LABEL_16:
  v21 = v77 >> 24;
  if (v4)
  {
    v67 = (v4 >> 16);
    v68 = v4 >> 8;
    v22 = v77 >> 16;
    v23 = v77;
    v66 = v4;
    v24 = v77 >> 8;
  }

  else
  {
    v22 = v77 >> 16;
    v24 = v77 >> 8;
    v23 = v77;
    LODWORD(v4) = (v21 << 24) | (BYTE2(v77) << 16) | (BYTE1(v77) << 8) | ~v75;
    v66 = v4 | v77;
    v78 = v66;
    v68 = v4 >> 8;
    v67 = WORD1(v4);
  }

  v25 = BYTE3(v77);
  v26 = v22;
  v76 = v24;
  v27 = (v22 << 16) | (v21 << 24) | (v24 << 8) | v23;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v63 = BYTE3(v4);
    v28 = _os_log_pack_size();
    v73 = v26;
    v29 = v28;
    v64 = &v60;
    v30 = &v60 - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = __error();
    v61 = _os_log_pack_fill(v30, v29, *v31, &dword_0, "%s %s: setting %d.%d.%d.%d netmask %d.%d.%d.%d broadcast %d.%d.%d.%d", v60, v61, v62, v64, v65, v67, v68, v69, v70, v71, v72, v74, v75, v77);
    v32 = sub_6160(*(v6 + 24));
    LODWORD(v29) = v25;
    v33 = v6;
    v34 = v27;
    v35 = v23;
    v36 = v32;
    nullsub_1();
    v37 = v36;
    v23 = v35;
    v27 = v34;
    v6 = v33;
    v25 = v29;
    v26 = v73;
    sub_2C10C(v61, v37, v38, v23, v76, v73, v25, v5, v69, v71, v70, v66, v68, v67, v63);
    __SC_log_send();
  }

  v39 = v76;
  nullsub_1();
  if ((sub_40E30(v40, v27, &v79, &v78) & 0x80000000) != 0)
  {
    v41 = sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v42 = _os_log_pack_size();
      v73 = v26;
      v43 = v42;
      v71 = &v60;
      v44 = __chkstk_darwin(v42);
      v70 = v41;
      v45 = &v60 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = __error();
      v47 = _os_log_pack_fill(v45, v43, *v46, &dword_0, "service_set_address(%s) %d.%d.%d.%d inet_aifaddr() failed, %s (%d)", v60, v61, v62, v64, v65, v67, v68);
      nullsub_1();
      LODWORD(v69) = v25;
      v48 = v6;
      v49 = v27;
      v50 = v23;
      v52 = v51;
      v53 = __error();
      v54 = strerror(*v53);
      v55 = *__error();
      *v47 = 136316674;
      *(v47 + 4) = v52;
      *(v47 + 12) = 1024;
      *(v47 + 14) = v50;
      v27 = v49;
      v6 = v48;
      *(v47 + 18) = 1024;
      *(v47 + 20) = v39;
      *(v47 + 24) = 1024;
      *(v47 + 26) = v73;
      *(v47 + 30) = 1024;
      *(v47 + 32) = v69;
      *(v47 + 36) = 2080;
      *(v47 + 38) = v54;
      *(v47 + 46) = 1024;
      *(v47 + 48) = v55;
      __SC_log_send();
    }
  }

  v56 = v75 & v27;
  v57 = v74;
  *v74 = 0;
  v57[1] = 0;
  LODWORD(v57) = v78;
  v58 = v79;
  *(v6 + 100) = v77;
  *(v6 + 104) = v58;
  *(v6 + 108) = v56;
  *(v6 + 112) = v57;
  *(v6 + 144) = timer_get_current_time();
  *(v6 + 160) = 0;
  v59 = sub_144D8(v8);
  sub_143CC(v59, 0, v78);
  byte_70190 = 1;
  dispatch_source_merge_data(qword_701C0, 1uLL);
}

double sub_2C10C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15)
{
  *&result = 136318466;
  *a1 = 136318466;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a5;
  *(a1 + 34) = 1024;
  *(a1 + 36) = a6;
  *(a1 + 40) = 1024;
  *(a1 + 42) = a7;
  *(a1 + 46) = 1024;
  *(a1 + 48) = a8;
  *(a1 + 52) = 1024;
  *(a1 + 54) = a9;
  *(a1 + 58) = 1024;
  *(a1 + 60) = a10;
  *(a1 + 64) = 1024;
  *(a1 + 66) = a11;
  *(a1 + 70) = 1024;
  *(a1 + 72) = a12;
  *(a1 + 76) = 1024;
  *(a1 + 78) = a13;
  *(a1 + 82) = 1024;
  *(a1 + 84) = a14;
  *(a1 + 88) = 1024;
  *(a1 + 90) = a15;
  return result;
}

void sub_2C1A0(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (((*v2 >> 22) & 1) != a2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = v10 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "%s: CLAT46 %sactive", v10[0], v10[1]);
      nullsub_1();
      v9 = "";
      if (!a2)
      {
        v9 = "not ";
      }

      *v7 = 136315394;
      *(v7 + 4) = v8;
      *(v7 + 12) = 2080;
      *(v7 + 14) = v9;
      __SC_log_send();
    }

    *v2 = *v2 & 0xFFBFFFFF | ((a2 != 0) << 22);
    byte_70190 = 1;
    dispatch_source_merge_data(qword_701C0, 1uLL);
  }
}

uint64_t sub_2C358(uint64_t a1)
{
  if ((*(a1 + 25) & 2) != 0)
  {
    return *(a1 + 128);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C394(uint64_t result, int a2)
{
  if (*(result + 25))
  {
    *(result + 88) = a2;
  }

  return result;
}

uint64_t sub_2C3A4(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C3BC(uint64_t result, int a2)
{
  if (*(result + 25))
  {
    *(result + 92) = a2;
  }

  return result;
}

uint64_t sub_2C3CC(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 92);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C3E4(uint64_t result, int a2)
{
  if (*(result + 25))
  {
    *(result + 96) = a2;
  }

  return result;
}

uint64_t sub_2C3F4(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C40C(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return (*(a1 + 116) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C428(uint64_t result)
{
  if (*(result + 25))
  {
    *(result + 116) |= 2u;
  }

  return result;
}

uint64_t sub_2C440(uint64_t result)
{
  if (*(result + 25))
  {
    *(result + 116) |= 7u;
  }

  return result;
}

uint64_t sub_2C464(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 104);
  }

  else
  {
    return 0;
  }
}

__n128 sub_2C47C(uint64_t a1, _OWORD *a2, int a3, __n128 *a4)
{
  if ((*(a1 + 25) & 2) != 0)
  {
    *(a1 + 88) = *a2;
    *(a1 + 104) = a3;
    result = *a4;
    *(a1 + 108) = *a4;
  }

  return result;
}

__n128 sub_2C49C(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  if ((*(a1 + 25) & 2) != 0)
  {
    result = *(a1 + 88);
    *a2 = result;
    *a3 = *(a1 + 104);
  }

  return result;
}

uint64_t sub_2C4B8(uint64_t a1, _OWORD *a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((*(a1 + 25) & 2) == 0)
  {
    return 22;
  }

  v8 = a5;
  v9 = a4;
  v13 = sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    HIDWORD(v35) = a6;
    v14 = _os_log_pack_size();
    v34 = &v33;
    v15 = &v33 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = __error();
    v17 = _os_log_pack_fill(v15, v14, *v16, &dword_0, "%s %s: setting %s/%d", v33, v34, v35, v36);
    v18 = sub_6160(*(a1 + 24));
    nullsub_1();
    v33 = v13;
    v20 = v19;
    v21 = inet_ntop(30, a2, &v36 + 2, 0x2Eu);
    *v17 = 136315906;
    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    *(v17 + 14) = v20;
    *(v17 + 22) = 2080;
    *(v17 + 24) = v21;
    *(v17 + 32) = 1024;
    *(v17 + 34) = a3;
    a6 = HIDWORD(v35);
    __SC_log_send();
  }

  nullsub_1();
  if ((sub_420DC(v22, a2, 0, a3, v9, v8, a6) & 0x80000000) == 0)
  {
    return 0;
  }

  v6 = *__error();
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v23 = _os_log_pack_size();
    v24 = &v33 - ((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = __error();
    v26 = _os_log_pack_fill(v24, v23, *v25, &dword_0, "ServiceSetIPv6Address(%s): inet6_aifaddr() failed, %s (%d)", v33, v34, v35);
    nullsub_1();
    v28 = v27;
    v29 = __error();
    v30 = strerror(*v29);
    v31 = *__error();
    *v26 = 136315650;
    *(v26 + 4) = v28;
    *(v26 + 12) = 2080;
    *(v26 + 14) = v30;
    *(v26 + 22) = 1024;
    *(v26 + 24) = v31;
    __SC_log_send();
  }

  return v6;
}

uint64_t sub_2C7AC(uint64_t result, _DWORD *a2, int a3)
{
  if ((*(result + 25) & 2) != 0)
  {
    v5 = result;
    if (*a2 || a2[2] || a2[3])
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        v7 = &v16[-1] - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = __error();
        v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s %s: removing %s/%d", v15, v16[0], v16[1], v17);
        v10 = sub_6160(*(v5 + 24));
        nullsub_1();
        v12 = v11;
        v13 = inet_ntop(30, a2, v16 + 2, 0x2Eu);
        *v9 = 136315906;
        *(v9 + 4) = v10;
        *(v9 + 12) = 2080;
        *(v9 + 14) = v12;
        *(v9 + 22) = 2080;
        *(v9 + 24) = v13;
        *(v9 + 32) = 1024;
        *(v9 + 34) = a3;
        __SC_log_send();
      }

      nullsub_1();
      return sub_41CE4(v14, a2);
    }
  }

  return result;
}

uint64_t sub_2C964(uint64_t a1)
{
  result = *(*(a1 + 16) + 96);
  if (result)
  {
    return sub_395C4(result);
  }

  return result;
}

uint64_t remove_unused_ip(const char *a1, int a2)
{
  result = sub_4220(a1, 0);
  if (result)
  {
    v5 = a2 & 0xFF000000 | (BYTE2(a2) << 16) | (BYTE1(a2) << 8) | a2;
    result = sub_1404C(result, v5);
    if (!result)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v16 = HIBYTE(a2);
        v15 = BYTE2(a2);
        v6 = a2;
        v7 = BYTE1(a2);
        v8 = _os_log_pack_size();
        v9 = &v13 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        v10 = __error();
        v11 = _os_log_pack_fill(v9, v8, *v10, &dword_0, "IPConfiguration %s: removing unused %d.%d.%d.%d", v13, v14, v16, v17, v18);
        *v11 = 136316162;
        *(v11 + 4) = a1;
        *(v11 + 12) = 1024;
        *(v11 + 14) = v6;
        *(v11 + 18) = 1024;
        *(v11 + 20) = v7;
        *(v11 + 24) = 1024;
        *(v11 + 26) = v15;
        *(v11 + 30) = 1024;
        *(v11 + 32) = v16;
        __SC_log_send();
      }

      nullsub_1();
      return sub_140BC(v12, v5);
    }
  }

  return result;
}

const __CFString *sub_2CB40(const __CFString *result, in_addr *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v3) != TypeID)
  {
    return (&dword_0 + 3);
  }

  Value = CFDictionaryGetValue(v3, kSCEntNetIPv4);
  if (Value)
  {
    v6 = Value;
    v7 = 0;
  }

  else
  {
    v8 = CFDictionaryGetValue(v3, kSCEntNetIPv6);
    v7 = v8 != 0;
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v6 = v3;
    }
  }

  v9 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v6) != v9 || v6 == 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v12 = &v17 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "IPConfiguration: invalid IPv%c entity", v17);
      if (v7)
      {
        v15 = 54;
      }

      else
      {
        v15 = 52;
      }

      *v14 = 67109120;
      v14[1] = v15;
      __SC_log_send();
      return (&dword_0 + 3);
    }

    return (&dword_0 + 3);
  }

  result = CFDictionaryGetCount(v6);
  if (result)
  {
    if (v7)
    {

      return sub_2D518(v6, a2);
    }

    else
    {

      return sub_2CDA4(v6, a2);
    }
  }

  else
  {
    if (v7)
    {
      v16 = 512;
    }

    else
    {
      v16 = 256;
    }

    a2->s_addr = v16;
  }

  return result;
}

uint64_t sub_2CDA4(const __CFDictionary *a1, in_addr *a2)
{
  Value = CFDictionaryGetValue(a1, kSCPropNetIPv4ConfigMethod);
  if (!sub_33950(Value, a2))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = &v47[-2] - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      *_os_log_pack_fill(v8, v7, *v9, &dword_0, "IPConfiguration: IPv4 ConfigMethod is missing/invalid") = 0;
      __SC_log_send();
      return 3;
    }

    return 3;
  }

  result = 0;
  s_addr = a2->s_addr;
  if (a2->s_addr <= 259)
  {
    if (s_addr != 257)
    {
      if (s_addr != 259)
      {
        return result;
      }

      v10 = CFDictionaryGetValue(a1, kSCPropNetIPv4DHCPClientID);
      TypeID = CFStringGetTypeID();
      if (v10)
      {
        if (CFGetTypeID(v10) == TypeID)
        {
          v12 = sub_4160(v10, v47, 256, 0);
          v13 = v12 - (v12 > 0);
          if (v13 >= 1)
          {
            a2[2].s_addr = v13;
            v14 = strdup(v47);
            *&a2[4].s_addr = v14;
            if (!v14)
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v15 = _os_log_pack_size();
                v16 = &v47[-2] - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
                v17 = __error();
                *_os_log_pack_fill(v16, v15, *v17, &dword_0, "IPConfiguration: strdup DHCP client ID failed") = 0;
                __SC_log_send();
              }

              return 5;
            }
          }
        }
      }

      return 0;
    }

LABEL_18:
    v47[0].s_addr = 0;
    v46 = 0;
    if (sub_33B40(a1, kSCPropNetIPv4Addresses, v47))
    {
      if (v47[0].s_addr)
      {
        v18 = kSCPropNetIPv4SubnetMasks;
        if (CFDictionaryContainsKey(a1, kSCPropNetIPv4SubnetMasks) && !sub_33B40(a1, kSCPropNetIPv4SubnetMasks, &v46))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
LABEL_42:
            v35 = _os_log_pack_size();
            v36 = &v47[-2] - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
            v37 = *__error();
            v38 = _os_log_pack_fill(v36, v35, v37, &dword_0, "%s: %@ invalid", v46);
            v39 = sub_6160(a2->s_addr);
            *v38 = 136315394;
            *(v38 + 4) = v39;
            *(v38 + 12) = 2112;
            *(v38 + 14) = v18;
            goto LABEL_43;
          }
        }

        else
        {
          v18 = kSCPropNetIPv4DestAddresses;
          if (!CFDictionaryContainsKey(a1, kSCPropNetIPv4DestAddresses))
          {
            v19 = 0;
            goto LABEL_29;
          }

          if (sub_33B40(a1, kSCPropNetIPv4DestAddresses, &v46 + 1))
          {
            v19 = HIDWORD(v46);
LABEL_29:
            v25 = v46;
            a2[2].s_addr = v47[0];
            a2[3].s_addr = v25;
            a2[5].s_addr = v19;
            if (a2->s_addr == 262)
            {
              v29 = CFDictionaryGetValue(a1, @"FailoverAddressTimeout");
              if (!v29)
              {
                return 0;
              }

              v30 = v29;
              v31 = CFNumberGetTypeID();
              if (CFGetTypeID(v30) == v31)
              {
                if (CFNumberGetValue(v30, kCFNumberSInt32Type, &a2[7]))
                {
                  return 0;
                }
              }

              sub_2424();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                return 0;
              }

              v32 = _os_log_pack_size();
              v33 = &v47[-2] - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
              v34 = __error();
              *_os_log_pack_fill(v33, v32, *v34, &dword_0, "IPConfiguration: FailoverAddressTimeout invalid") = 0;
            }

            else
            {
              if (a2->s_addr != 257)
              {
                return 0;
              }

              v26 = CFDictionaryGetValue(a1, kSCPropNetIgnoreLinkStatus);
              v27 = CFBooleanGetTypeID();
              if (v26 && CFGetTypeID(v26) == v27)
              {
                v28 = CFBooleanGetValue(v26);
              }

              else
              {
                v28 = 0;
              }

              a2[6].s_addr = v28;
              v40 = CFDictionaryGetValue(a1, kSCPropNetIPv4Router);
              if (!v40)
              {
                return 0;
              }

              if (sub_575A4(v40, a2 + 4))
              {
                return 0;
              }

              sub_2424();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                return 0;
              }

              v41 = _os_log_pack_size();
              v42 = &v47[-2] - ((__chkstk_darwin(v41) + 15) & 0xFFFFFFFFFFFFFFF0);
              v43 = __error();
              v44 = _os_log_pack_fill(v42, v41, *v43, &dword_0, "%s: %@ invalid");
              v45 = sub_6160(a2->s_addr);
              *v44 = 136315394;
              *(v44 + 4) = v45;
              *(v44 + 12) = 2112;
              *(v44 + 14) = kSCPropNetIPv4Router;
            }

            __SC_log_send();
            return 0;
          }

          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v20 = _os_log_pack_size();
          v21 = &v47[-2] - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = __error();
          v23 = _os_log_pack_fill(v21, v20, *v22, &dword_0, "%s 0.0.0.0 is not a valid address", v46);
          v24 = sub_6160(a2->s_addr);
          *v23 = 136315138;
          *(v23 + 4) = v24;
LABEL_43:
          __SC_log_send();
        }
      }
    }

    return 3;
  }

  switch(s_addr)
  {
    case 262:
      goto LABEL_18;
    case 261:
      result = 0;
      a2[2].s_addr = 1;
      return result;
    case 260:
      goto LABEL_18;
  }

  return result;
}

const __CFString *sub_2D518(const __CFDictionary *a1, uint64_t a2)
{
  v88 = 0uLL;
  Value = CFDictionaryGetValue(a1, kSCPropNetIPv6LinkLocalAddress);
  if (sub_57658(Value, &v88) && v88 == 254 && (BYTE1(v88) & 0xC0) == 0x80)
  {
    *(a2 + 52) = v88;
  }

  if (!sub_33210(a1, kSCPropNetIPv6EnableCGA, 1))
  {
    *(a2 + 48) = 1;
  }

  v5 = CFDictionaryGetValue(a1, kSCPropNetIPv6ConfigMethod);
  TypeID = CFStringGetTypeID();
  if (!v5 || CFGetTypeID(v5) != TypeID)
  {
    goto LABEL_74;
  }

  if (!CFEqual(v5, kSCValNetIPv6ConfigMethodManual))
  {
    if (CFEqual(v5, kSCValNetIPv6ConfigMethodAutomatic))
    {
      v10 = 514;
LABEL_42:
      v26 = 0;
      *a2 = v10;
      return v26;
    }

    if (CFEqual(v5, kSCValNetIPv6ConfigMethodRouterAdvertisement))
    {
      v10 = 515;
      goto LABEL_42;
    }

    if (CFEqual(v5, kSCValNetIPv6ConfigMethod6to4))
    {
      *a2 = 516;
      v26 = CFDictionaryGetValue(a1, @"6to4Relay");
      if (!v26)
      {
        return v26;
      }

      v87.s_addr = 0;
      v86 = 0uLL;
      v34 = CFStringGetTypeID();
      if (CFGetTypeID(v26) == v34)
      {
        if (sub_4160(v26, v89, 256, 0))
        {
          if (inet_aton(v89, &v87) == 1)
          {
            *(a2 + 8) = 1;
            *(a2 + 16) = v87;
          }

          else if (inet_pton(30, v89, &v86) == 1)
          {
            *(a2 + 8) = 2;
            *(a2 + 16) = v86;
          }

          else
          {
            *(a2 + 8) = 3;
            v68 = strdup(v89);
            *(a2 + 16) = v68;
            if (!v68)
            {
              sub_2424();
              v26 = (&dword_4 + 1);
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v79 = _os_log_pack_size();
                v80 = &v86 - ((__chkstk_darwin(v79) + 15) & 0xFFFFFFFFFFFFFFF0);
                v81 = __error();
                *_os_log_pack_fill(v80, v79, *v81, &dword_0, "IPConfiguration: malloc relay dns address failed") = 0;
                v26 = (&dword_4 + 1);
                __SC_log_send();
              }

              return v26;
            }
          }

          return 0;
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          return (&dword_0 + 3);
        }

        v63 = _os_log_pack_size();
        v64 = &v86 - ((__chkstk_darwin(v63) + 15) & 0xFFFFFFFFFFFFFFF0);
        v65 = *__error();
        v44 = _os_log_pack_fill(v64, v63, v65, &dword_0, "IPConfiguration: %s 6to4 Relay empty");
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          return (&dword_0 + 3);
        }

        v41 = _os_log_pack_size();
        v42 = &v86 - ((__chkstk_darwin(v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v43 = *__error();
        v44 = _os_log_pack_fill(v42, v41, v43, &dword_0, "IPConfiguration: %s 6to4 Relay invalid");
      }

      v66 = v44;
      v67 = sub_6160(*a2);
      *v66 = 136315138;
      *(v66 + 4) = v67;
      __SC_log_send();
      return (&dword_0 + 3);
    }

    if (CFEqual(v5, kSCValNetIPv6ConfigMethodLinkLocal))
    {
      v10 = 517;
      goto LABEL_42;
    }

    if (CFEqual(v5, @"DHCPv6PD"))
    {
      *a2 = 518;
      v50 = @"RequestedPrefix";
      v51 = CFDictionaryGetValue(a1, @"RequestedPrefix");
      if (v51)
      {
        v52 = v51;
        v53 = CFStringGetTypeID();
        if (CFGetTypeID(v52) != v53)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            return (&dword_0 + 3);
          }

          v69 = _os_log_pack_size();
          v70 = &v86 - ((__chkstk_darwin(v69) + 15) & 0xFFFFFFFFFFFFFFF0);
          v71 = *__error();
          v72 = _os_log_pack_fill(v70, v69, v71, &dword_0, "%s: %@ not a string");
          goto LABEL_93;
        }

        if ((sub_57658(v52, (a2 + 8)) & 1) == 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            return (&dword_0 + 3);
          }

          v76 = _os_log_pack_size();
          v77 = &v86 - ((__chkstk_darwin(v76) + 15) & 0xFFFFFFFFFFFFFFF0);
          v78 = *__error();
          v72 = _os_log_pack_fill(v77, v76, v78, &dword_0, "%s: %@ not an IPv6 address");
          goto LABEL_93;
        }

        inet_ntop(30, (a2 + 8), v89, 0x2Eu);
      }

      v50 = @"RequestedPrefixLength";
      v26 = CFDictionaryGetValue(a1, @"RequestedPrefixLength");
      if (!v26)
      {
        return v26;
      }

      *v89 = 0;
      v54 = CFNumberGetTypeID();
      if (CFGetTypeID(v26) == v54)
      {
        if (sub_577B0(v26, v89))
        {
          if (*v89 < 0x81u)
          {
            v26 = 0;
            *(a2 + 24) = v89[0];
            return v26;
          }

          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            return (&dword_0 + 3);
          }

          v55 = _os_log_pack_size();
          v56 = &v86 - ((__chkstk_darwin(v55) + 15) & 0xFFFFFFFFFFFFFFF0);
          v57 = __error();
          v58 = _os_log_pack_fill(v56, v55, *v57, &dword_0, "%s: %@ %d > 128");
          v59 = *v89;
          *v58 = 136315650;
          *(v58 + 4) = "method_info_from_ipv6_dict";
          *(v58 + 12) = 2112;
          *(v58 + 14) = @"RequestedPrefixLength";
          *(v58 + 22) = 1024;
          *(v58 + 24) = v59;
          goto LABEL_62;
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          return (&dword_0 + 3);
        }

        v82 = _os_log_pack_size();
        v83 = &v86 - ((__chkstk_darwin(v82) + 15) & 0xFFFFFFFFFFFFFFF0);
        v84 = *__error();
        v72 = _os_log_pack_fill(v83, v82, v84, &dword_0, "%s: %@ invalid number");
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          return (&dword_0 + 3);
        }

        v73 = _os_log_pack_size();
        v74 = &v86 - ((__chkstk_darwin(v73) + 15) & 0xFFFFFFFFFFFFFFF0);
        v75 = *__error();
        v72 = _os_log_pack_fill(v74, v73, v75, &dword_0, "%s: %@ not a number");
      }

LABEL_93:
      *v72 = 136315394;
      *(v72 + 4) = "method_info_from_ipv6_dict";
      *(v72 + 12) = 2112;
      *(v72 + 14) = v50;
      goto LABEL_62;
    }

LABEL_74:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return (&dword_0 + 3);
    }

    v60 = _os_log_pack_size();
    v61 = &v86 - ((__chkstk_darwin(v60) + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = __error();
    *_os_log_pack_fill(v61, v60, *v62, &dword_0, "IPConfiguration: IPv6 ConfigMethod is missing/invalid") = 0;
    __SC_log_send();
    return (&dword_0 + 3);
  }

  *a2 = 513;
  *v89 = 0;
  *&v89[8] = 0;
  LODWORD(v86) = 0;
  v7 = CFDictionaryGetValue(a1, kSCPropNetIPv6Addresses);
  v8 = CFArrayGetTypeID();
  if (v7)
  {
    if (CFGetTypeID(v7) == v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = CFDictionaryGetValue(a1, kSCPropNetIPv6PrefixLength);
  v12 = CFArrayGetTypeID();
  if (v11)
  {
    if (CFGetTypeID(v11) == v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (!v9)
    {
LABEL_38:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v27 = _os_log_pack_size();
        v28 = &v86 - ((__chkstk_darwin(v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = *__error();
        v30 = _os_log_pack_fill(v28, v27, v29, &dword_0, "IPConfiguration: %s Addresses missing/invalid\n");
LABEL_61:
        v48 = v30;
        v49 = sub_6160(*a2);
        *v48 = 136315138;
        *(v48 + 4) = v49;
LABEL_62:
        __SC_log_send();
        return (&dword_0 + 3);
      }

      return (&dword_0 + 3);
    }
  }

  else
  {
    v13 = 0;
    if (!v9)
    {
      goto LABEL_38;
    }
  }

  Count = CFArrayGetCount(v9);
  if (!Count)
  {
    goto LABEL_38;
  }

  v15 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
  if ((sub_57658(ValueAtIndex, v89) & 1) == 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v31 = _os_log_pack_size();
      v32 = &v86 - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *__error();
      v30 = _os_log_pack_fill(v32, v31, v33, &dword_0, "IPConfiguration: %s Addresses invalid");
      goto LABEL_61;
    }

    return (&dword_0 + 3);
  }

  if (v13)
  {
    if (v15 != CFArrayGetCount(v13))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v35 = _os_log_pack_size();
        v36 = &v86 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = *__error();
        v30 = _os_log_pack_fill(v36, v35, v37, &dword_0, "IPConfiguration: %s Addresses/PrefixLength are different sizes");
        goto LABEL_61;
      }

      return (&dword_0 + 3);
    }

    v17 = CFArrayGetValueAtIndex(v13, 0);
    v18 = CFNumberGetTypeID();
    if (!v17 || CFGetTypeID(v17) != v18 || !CFNumberGetValue(v17, kCFNumberIntType, &v86))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v38 = _os_log_pack_size();
        v39 = &v86 - ((__chkstk_darwin(v38) + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = *__error();
        v30 = _os_log_pack_fill(v39, v38, v40, &dword_0, "IPConfiguration: %s PrefixLength invalid");
        goto LABEL_61;
      }

      return (&dword_0 + 3);
    }
  }

  if (v15 >= 2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      v20 = &v86 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = __error();
      v22 = _os_log_pack_fill(v20, v19, *v21, &dword_0, "IPConfiguration: %s multiple addresses specified - ignoring all but first", v86);
      v23 = sub_6160(*a2);
      *v22 = 136315138;
      *(v22 + 4) = v23;
      __SC_log_send();
    }
  }

  v24 = CFDictionaryGetValue(a1, kSCPropNetIPv6Router);
  v25 = CFStringGetTypeID();
  if (v24 && CFGetTypeID(v24) == v25 && (sub_57658(v24, (a2 + 28)) & 1) == 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v45 = _os_log_pack_size();
      v46 = &v86 - ((__chkstk_darwin(v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = *__error();
      v30 = _os_log_pack_fill(v46, v45, v47, &dword_0, "IPConfiguration: %s Router is invalid");
      goto LABEL_61;
    }

    return (&dword_0 + 3);
  }

  v26 = 0;
  *(a2 + 8) = *v89;
  *(a2 + 24) = v86;
  return v26;
}

uint64_t sub_2E2C4(const char *a1, _DWORD *a2)
{
  v3 = sub_4220(a1, 0);
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  if (sub_295C(v3 + 24) < 1)
  {
    return 17;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(sub_42C0(v4 + 24, v5) + 100);
    if (v6)
    {
      break;
    }

    v5 = (v5 + 1);
    if (v5 >= sub_295C(v4 + 24))
    {
      return 17;
    }
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t sub_2E350(const char *a1, int a2, vm_address_t *a3, _DWORD *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (sub_295C(qword_70160) < 1)
  {
    return 2;
  }

  v8 = 0;
  while (1)
  {
    v9 = sub_42C0(qword_70160, v8);
    if (*a1)
    {
      nullsub_1();
      if (strcmp(v10, a1))
      {
        v11 = 0;
        goto LABEL_16;
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    if (sub_295C(v9 + 24) >= 1)
    {
      break;
    }

LABEL_16:
    v16 = sub_295C(qword_70160);
    if (!v11)
    {
      v8 = (v8 + 1);
      if (v8 < v16)
      {
        continue;
      }
    }

    if (v11)
    {
      return 17;
    }

    else
    {
      return 2;
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = sub_42C0(v9 + 24, v12);
    if ((*(v13 + 24) - 258) <= 2)
    {
      size[0] = 0;
      if (*(v13 + 40))
      {
        v20 = 0;
        *&size[1] = 0u;
        v19 = 0u;
        sub_8DB0(v13, 13, &size[1]);
        if (size[3])
        {
          v14 = sub_1CEA4(v19, a2, size, 0);
          if (v14)
          {
            v15 = sub_2E5CC(v14, size[0], a4);
            *a3 = v15;
            if (v15)
            {
              return 0;
            }
          }
        }
      }
    }

    v12 = (v12 + 1);
    if (v12 >= sub_295C(v9 + 24))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_2E4E0(const char *a1, vm_address_t *a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  v5 = sub_4220(a1, 0);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  v13 = 0;
  *size = 0u;
  v12 = 0u;
  if (sub_295C(v5 + 24) < 1)
  {
    return 17;
  }

  v7 = 0;
  while (1)
  {
    v8 = sub_42C0(v6 + 24, v7);
    if ((*(v8 + 24) - 258) <= 2)
    {
      if (*(v8 + 40))
      {
        v13 = 0;
        *size = 0u;
        v12 = 0u;
        sub_8DB0(v8, 13, size);
        if (LODWORD(size[1]))
        {
          v9 = sub_2E5CC(size[0], SLODWORD(size[1]), a3);
          *a2 = v9;
          if (v9)
          {
            break;
          }
        }
      }
    }

    v7 = (v7 + 1);
    if (v7 >= sub_295C(v6 + 24))
    {
      return 17;
    }
  }

  return 0;
}

vm_address_t sub_2E5CC(const void *a1, vm_size_t size, _DWORD *a3)
{
  address = 0;
  *a3 = 0;
  v6 = vm_allocate(mach_task_self_, &address, size, 1);
  result = 0;
  if (!v6)
  {
    memmove(address, a1, size);
    *a3 = size;
    return address;
  }

  return result;
}

uint64_t sub_2E64C(const char *a1, vm_address_t *a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  v5 = sub_4220(a1, 0);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *size = 0u;
  if (sub_295C(v5 + 56) < 1)
  {
    return 17;
  }

  v7 = 0;
  while (1)
  {
    v8 = sub_42C0(v6 + 56, v7);
    if ((*(v8 + 24) & 0xFFFFFFFE) == 0x202)
    {
      if (*(v8 + 40))
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        *size = 0u;
        sub_8DB0(v8, 14, size);
        if (LODWORD(size[1]))
        {
          v9 = sub_2E5CC(size[0], SLODWORD(size[1]), a3);
          *a2 = v9;
          if (v9)
          {
            break;
          }
        }
      }
    }

    v7 = (v7 + 1);
    if (v7 >= sub_295C(v6 + 56))
    {
      return 17;
    }
  }

  return 0;
}

uint64_t sub_2E748(const char *a1, const __CFData **a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  v5 = sub_4220(a1, 0);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (sub_295C(v5 + 56) < 1)
  {
    return 17;
  }

  v7 = 0;
  v8 = 17;
  do
  {
    v9 = sub_42C0(v6 + 56, v7);
    if ((*(v9 + 24) & 0xFFFFFFFE) == 0x202)
    {
      if (*(v9 + 40))
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
        sub_8DB0(v9, 14, &v13);
        if (*(&v15 + 1))
        {
          v10 = sub_58DE8(*(&v15 + 1));
          if (v10)
          {
            v11 = v10;
            *a2 = sub_57D48(v10, a3);
            CFRelease(v11);
            if (*a2)
            {
              v8 = 0;
            }

            else
            {
              v8 = v8;
            }
          }
        }
      }
    }

    v7 = (v7 + 1);
  }

  while (v7 < sub_295C(v6 + 56));
  return v8;
}

uint64_t sub_2E868(const char *a1, uint64_t *a2)
{
  v3 = sub_4220(a1, 0);
  if (v3)
  {
    v3 = sub_2E8B4(v3);
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 17;
    }
  }

  else
  {
    v4 = 2;
  }

  *a2 = v3;
  return v4;
}

__CFDictionary *sub_2E8B4(uint64_t a1)
{
  v41 = *(a1 + 8);
  v1 = a1 + 24;
  v47[0] = a1 + 24;
  v47[1] = a1 + 56;
  v47[2] = 0;
  v46[0] = kSCEntNetIPv4;
  v46[1] = kSCEntNetIPv6;
  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v2 = 0;
  v43 = kSCValNetIPv4ConfigMethodFailover;
  v3 = kIPConfigurationServiceOptionAPNName;
  v4 = v47;
  do
  {
    v44 = v2;
    allocator = 0;
    v5 = sub_295C(v1);
    if (v5 >= 1)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = sub_42C0(*v4, v7);
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v10 = Mutable;
        v11 = *(v8 + 24);
        if (v11 > 512)
        {
          if (v11 > 515)
          {
            v12 = kSCValNetIPv6ConfigMethod6to4;
            if (v11 != 516)
            {
              v12 = kSCValNetIPv6ConfigMethodLinkLocal;
              if (v11 != 517)
              {
                v12 = @"DHCPv6PD";
                if (v11 != 518)
                {
LABEL_21:
                  v12 = @"<unknown>";
                }
              }
            }
          }

          else
          {
            v12 = kSCValNetIPv6ConfigMethodManual;
            if (v11 != 513)
            {
              v12 = kSCValNetIPv6ConfigMethodAutomatic;
              if (v11 != 514)
              {
                v12 = kSCValNetIPv6ConfigMethodRouterAdvertisement;
              }
            }
          }
        }

        else if (v11 > 259)
        {
          v12 = kSCValNetIPv4ConfigMethodINFORM;
          if (v11 != 260)
          {
            v12 = kSCValNetIPv4ConfigMethodLinkLocal;
            if (v11 != 261)
            {
              v12 = v43;
              if (v11 != 262)
              {
                goto LABEL_21;
              }
            }
          }
        }

        else
        {
          v12 = kSCValNetIPv4ConfigMethodManual;
          if (v11 != 257)
          {
            v12 = kSCValNetIPv4ConfigMethodBOOTP;
            if (v11 != 258)
            {
              v12 = kSCValNetIPv4ConfigMethodDHCP;
              if (v11 != 259)
              {
                goto LABEL_21;
              }
            }
          }
        }

        CFDictionarySetValue(Mutable, kSCPropNetIPv4ConfigMethod, v12);
        if (!*(v8 + 40) || (v13 = kCFBooleanTrue, *(v8 + 28)))
        {
          v13 = kCFBooleanFalse;
        }

        CFDictionarySetValue(v10, @"IsPublished", v13);
        if (*(v8 + 32))
        {
          CFDictionarySetValue(v10, @"IsDynamic", kCFBooleanTrue);
        }

        v14 = *(v8 + 28);
        if (v14)
        {
          v15 = "<unknown>";
          if (v14 <= 0x15)
          {
            v15 = off_68E70[v14];
          }

          v16 = CFStringCreateWithCString(0, v15, 0x600u);
          CFDictionarySetValue(v10, @"LastFailureStatus", v16);
          CFRelease(v16);
        }

        CFDictionarySetValue(v10, @"ServiceID", *v8);
        v17 = *(v8 + 56);
        if (v17)
        {
          v18 = v10;
          v19 = @"ChildServiceID";
        }

        else
        {
          v17 = *(v8 + 48);
          if (!v17)
          {
            goto LABEL_36;
          }

          v18 = v10;
          v19 = @"ParentServiceID";
        }

        CFDictionarySetValue(v18, v19, v17);
LABEL_36:
        if (*(v8 + 25))
        {
          v20 = *(v8 + 100);
          if (v20)
          {
            sub_10DF0(v10, kSCPropNetIPv4Addresses, v20);
          }

          v21 = *(v8 + 104);
          if (v21)
          {
            sub_10DF0(v10, kSCPropNetIPv4SubnetMasks, v21);
          }

          if (*(v8 + 25))
          {
            if (*(v8 + 100))
            {
              v22 = *(v8 + 120);
              if (v22)
              {
                sub_57874(v10, kSCPropNetIPv4Router, v22);
                if ((*(v8 + 116) & 4) != 0)
                {
                  v23 = kCFBooleanTrue;
                }

                else
                {
                  v23 = kCFBooleanFalse;
                }

                CFDictionarySetValue(v10, @"RouterARPVerified", v23);
              }
            }
          }

          v24 = *(v8 + 88);
          if (v24)
          {
            sub_57874(v10, @"ManualAddress", v24);
            v25 = *(v8 + 92);
            if (v25)
            {
              sub_57874(v10, @"ManualSubnetMask", v25);
            }
          }

          if ((*(v8 + 25) & 1) == 0)
          {
            goto LABEL_62;
          }

          v26 = *(v8 + 116);
          if ((v26 & 8) == 0)
          {
            goto LABEL_60;
          }

          CFDictionarySetValue(v10, @"RouterARPInProgress", kCFBooleanTrue);
          if (*(v8 + 25))
          {
            v26 = *(v8 + 116);
LABEL_60:
            if ((v26 & 0x10) != 0)
            {
              CFDictionarySetValue(v10, @"RouterARPTimedOut", kCFBooleanTrue);
            }
          }
        }

        else if (*(v8 + 88) || *(v8 + 92) || *(v8 + 96) || *(v8 + 100))
        {
          sub_1CCE0(v10, @"ManualAddress", (v8 + 88));
          sub_1DF6C(v10, @"ManualPrefixLength", *(v8 + 104));
        }

LABEL_62:
        v27 = *(v8 + 8);
        if (v27)
        {
          CFDictionarySetValue(v10, v3, v27);
        }

        sub_8DB0(v8, 22, v10);
        if (v10)
        {
          v28 = allocator;
          if (!allocator)
          {
            v28 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            allocator = v28;
          }

          CFArrayAppendValue(v28, v10);
          CFRelease(v10);
        }

        v7 = (v7 + 1);
      }

      while (v6 != v7);
    }

    if (allocator)
    {
      CFDictionarySetValue(theDict, v46[v44], allocator);
      sub_41E8(&allocator);
    }

    v29 = v4[1];
    ++v4;
    v1 = v29;
    v2 = v44 + 1;
  }

  while (v29);
  v30 = sub_2430(v41);
  if (v30)
  {
    if (HIDWORD(v30))
    {
      v31 = *(a1 + 96);
      CFDictionarySetValue(theDict, @"LinkStatusActive", kCFBooleanTrue);
      if (sub_73DC(v41) && v31)
      {
        v32 = sub_395BC(v31);
        v33 = sub_38B24(v32);
        sub_578FC(theDict, @"Security", v33);
        v34 = sub_39534(v31);
        v35 = sub_3952C(v31);
        v36 = sub_395C4(v31);
        CFDictionarySetValue(theDict, @"BSSID", v34);
        CFDictionarySetValue(theDict, @"SSID", v35);
        if (v36)
        {
          CFDictionarySetValue(theDict, @"NetworkID", v36);
        }

        v37 = sub_395CC(v31);
        sub_1DF6C(theDict, @"ConnectionID", v37);
      }
    }

    else
    {
      CFDictionarySetValue(theDict, kSCPropNetLinkActive, kCFBooleanFalse);
    }
  }

  v38 = sub_597F4(v41);
  if (v38)
  {
    sub_578FC(theDict, @"InterfaceType", v38);
  }

  if (sub_12E14(v41))
  {
    CFDictionarySetValue(theDict, @"IsExpensive", kCFBooleanTrue);
  }

  if (sub_597E8(v41))
  {
    CFDictionarySetValue(theDict, @"IsTethered", kCFBooleanTrue);
  }

  return theDict;
}

uint64_t sub_2EFB4(__CFArray **a1)
{
  if (sub_295C(qword_70160) < 1)
  {
    Mutable = 0;
  }

  else
  {
    v2 = 0;
    Mutable = 0;
    do
    {
      v4 = sub_42C0(qword_70160, v2);
      if (sub_295C(v4 + 24) || sub_295C(v4 + 56))
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        }

        CFArrayAppendValue(Mutable, *(v4 + 16));
      }

      v2 = (v2 + 1);
    }

    while (v2 < sub_295C(qword_70160));
  }

  *a1 = Mutable;
  return 0;
}

uint64_t sub_2F080(vm_address_t *a1, _DWORD *a2)
{
  v4 = sub_5386C();
  if (!v4)
  {
    return 17;
  }

  v5 = v4;
  BytePtr = CFDataGetBytePtr(v4);
  Length = CFDataGetLength(v5);
  v8 = sub_2E5CC(BytePtr, Length, a2);
  *a1 = v8;
  if (v8)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_2F0F0(char *a1, _DWORD *a2)
{
  v4 = sub_4220(a1, 0);
  if (!v4)
  {
    return 2;
  }

  if (sub_295C(v4 + 56) < 1 || !sub_5386C())
  {
    return 17;
  }

  v5 = sub_542B0(a1);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_2F15C(const char *a1, __CFDictionary **a2)
{
  v3 = sub_4220(a1, 0);
  if (v3)
  {
    v4 = v3;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = sub_295C(v4 + 24);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = v6;
      while (1)
      {
        v9 = sub_42C0(v4 + 24, v7);
        if ((*(v9 + 25) & 1) != 0 && (~*(v9 + 116) & 7) == 0)
        {
          break;
        }

        if (v8 == ++v7)
        {
          goto LABEL_10;
        }
      }

      sub_2AEF8(v9, Mutable, 0);
    }

LABEL_10:
    if (Mutable)
    {
      result = 0;
    }

    else
    {
      result = 17;
    }
  }

  else
  {
    Mutable = 0;
    result = 2;
  }

  *a2 = Mutable;
  return result;
}

uint64_t sub_2F230(char *__s2, int *a2)
{
  v4 = sub_4348(qword_70198, __s2);
  v5 = *a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    v7 = v14 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "set %s %s", v14[0], v14[1]);
    v10 = sub_6160(v5);
    *v9 = 136315394;
    *(v9 + 4) = __s2;
    *(v9 + 12) = 2080;
    *(v9 + 14) = v10;
    __SC_log_send();
  }

  if (!v4)
  {
    return 2;
  }

  v11 = sub_2F404(v4);
  if (!v11)
  {
    return 5;
  }

  v12 = v11;
  if ((v5 & 0xFFFFFEFF) == 0 || (v5 & 0x100) != 0)
  {
    sub_2F45C(v11, 1);
  }

  else
  {
    sub_2F4D0(v11, 1);
  }

  result = 0;
  if (v5 && v5 != 256 && v5 != 512)
  {
    return sub_2F544(v12, 0, a2, 0, 0, 0);
  }

  return result;
}

uint64_t sub_2F404(__int128 *a1)
{
  nullsub_1();
  v3 = sub_4220(v2, 0);
  if (!v3)
  {
    v3 = sub_32BFC(a1);
    if (v3)
    {
      sub_59348(qword_70160, v3);
    }
  }

  return v3;
}

void sub_2F45C(_DWORD *a1, int a2)
{
  v4 = sub_295C((a1 + 6));
  v5 = (a1 + 6);
  if (a2)
  {
    DHCPLeaseListFree_0(v5);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_330B0(v5);
    if (!v4)
    {
      return;
    }
  }

  sub_15204(a1);
}

void sub_2F4D0(uint64_t a1, int a2)
{
  v4 = sub_295C(a1 + 56);
  v5 = (a1 + 56);
  if (a2)
  {
    DHCPLeaseListFree_0(v5);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_330B0(v5);
    if (!v4)
    {
      return;
    }
  }

  sub_33120(a1);
}

uint64_t sub_2F544(uint64_t a1, const char **a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t *a6)
{
  v6 = a6;
  v12 = &off_70000;
  v56 = *a3;
  if ((v56 & 0x100) != 0)
  {
    if (a4 || !dword_700C0 || !*(a1 + 164) || !*(a1 + 168))
    {
      nullsub_1();
      sub_7A40(v31, 1);
      goto LABEL_22;
    }
  }

  else
  {
    if (*(a3 + 48))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v55 = a5;
        v14 = a2;
        v15 = _os_log_pack_size();
        v54 = &v52;
        v16 = &v52 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = __error();
        v18 = _os_log_pack_fill(v16, v15, *v17, &dword_0, "%s: CGA is disabled\n", v52);
        nullsub_1();
        *v18 = 136315138;
        *(v18 + 4) = v19;
        a2 = v14;
        a5 = v55;
        v12 = &off_70000;
        __SC_log_send();
      }

      *a1 |= 0x10000u;
      v6 = a6;
    }

    if (*(a3 + 52) == 254 && (*(a3 + 53) & 0xC0) == 0x80)
    {
      *(a1 + 128) = *(a3 + 52);
      v20 = sub_2424();
      LODWORD(v55) = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v21 = _os_log_pack_size();
        v54 = a2;
        v22 = v21;
        v53 = &v52;
        v23 = &v52 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = __error();
        v25 = _os_log_pack_fill(v23, v22, *v24, &dword_0, "%s: link-local IPv6 address specified %s", v52, v53);
        nullsub_1();
        v52 = v20;
        v26 = v6;
        v28 = v27;
        v29 = inet_ntop(30, (a3 + 52), v57, 0x2Eu);
        *v25 = 136315394;
        *(v25 + 4) = v28;
        v6 = v26;
        *(v25 + 12) = 2080;
        *(v25 + 14) = v29;
        a2 = v54;
        v12 = &off_70000;
        __SC_log_send();
      }
    }

    if (a4 || !*(v12 + 48) || !*(a1 + 164) || !*(a1 + 168))
    {
      sub_12E30(a1, 1);
      goto LABEL_22;
    }
  }

  if (!*(a1 + 160))
  {
    *(a1 + 160) = 1;
    nullsub_1();
    sub_40874(v30, 0);
  }

LABEL_22:
  v32 = *a3;
  if (*a3 == 261)
  {
    v33 = *(a1 + 88);
    if (v33)
    {
      sub_13CE0(a1, *v33, (*(v33 + 24) >> 8) & 1);
    }
  }

  v34 = malloc_type_malloc(0xA8uLL, 0x10E00404F7B8AA8uLL);
  if (!v34)
  {
    v37 = 5;
    v38 = v56;
    goto LABEL_38;
  }

  v35 = v34;
  v34[20] = 0;
  *(v34 + 8) = 0u;
  *(v34 + 9) = 0u;
  *(v34 + 6) = 0u;
  *(v34 + 7) = 0u;
  *(v34 + 4) = 0u;
  *(v34 + 5) = 0u;
  *(v34 + 2) = 0u;
  *(v34 + 3) = 0u;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 6) = v32;
  v34[2] = a1;
  if (a2)
  {
    v36 = CFRetain(a2);
  }

  else
  {
    v39 = sub_6160(v32);
    nullsub_1();
    v36 = CFStringCreateWithFormat(0, 0, @"%s-%s", v39, v40);
  }

  *v35 = v36;
  v38 = v56;
  if (a4)
  {
    *(v35 + 48) = CFRetain(*a4);
  }

  if (a5)
  {
    (*(a5 + 16))(a5, v35);
  }

  v41 = *a3;
  v42 = sub_E4B8(*(*(v35 + 16) + 8));
  if (v41 == 516 && v42 != 57)
  {
    goto LABEL_36;
  }

  if (v42 > 134)
  {
    if ((v42 - 135) < 2)
    {
      goto LABEL_56;
    }

    if (v42 == 144)
    {
      if (v41 == 258)
      {
        goto LABEL_36;
      }

LABEL_56:
      v50 = sub_5324(v41);
      if (v50)
      {
        v37 = v50(v35, 0, (a3 + 8));
        if (!v37)
        {
          if (a4)
          {
            sub_41E8(a4 + 7);
            a4[7] = CFRetain(*v35);
          }

          if (*(v35 + 24) == 261)
          {
            *(a1 + 88) = v35;
          }

          if ((v38 & 0x100) != 0)
          {
            v51 = (a1 + 24);
          }

          else
          {
            v51 = (a1 + 56);
          }

          sub_59348(v51, v35);
          v37 = 0;
          if (v6)
          {
            goto LABEL_53;
          }

          return v37;
        }
      }

      else
      {
        v37 = 7;
      }

      goto LABEL_37;
    }

LABEL_68:
    if ((v41 - 258) < 4)
    {
      goto LABEL_36;
    }

    goto LABEL_56;
  }

  if (v42 == 6)
  {
    goto LABEL_56;
  }

  if (v42 == 24)
  {
    if (v41 != 257 && v41 != 513)
    {
      goto LABEL_36;
    }

    goto LABEL_56;
  }

  if (v42 != 57)
  {
    goto LABEL_68;
  }

  if (v41 == 516)
  {
    goto LABEL_56;
  }

LABEL_36:
  v37 = 4;
LABEL_37:
  sub_41E8(v35);
  sub_41E8((v35 + 48));
  free(v35);
LABEL_38:
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v43 = _os_log_pack_size();
    v44 = &v52 - ((__chkstk_darwin(v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = __error();
    v46 = _os_log_pack_fill(v44, v43, *v45, &dword_0, "status from %s was %s", v52, v53);
    v47 = sub_6160(v38);
    if (v37 <= 0x15)
    {
      v48 = off_68E70[v37];
    }

    else
    {
      v48 = "<unknown>";
    }

    *v46 = 136315394;
    *(v46 + 4) = v47;
    *(v46 + 12) = 2080;
    *(v46 + 14) = v48;
    __SC_log_send();
  }

  if ((v38 & 0x100) != 0)
  {
    sub_15204(a1);
  }

  else
  {
    sub_33120(a1);
  }

  sub_12244();
  v35 = 0;
  if (v6)
  {
LABEL_53:
    *v6 = v35;
  }

  return v37;
}

uint64_t sub_2FBA0(char *__s2, unsigned int *a2, int a3, uint64_t a4, const __CFDictionary *Value, int a6)
{
  v12 = sub_4348(qword_70198, __s2);
  v13 = *a2;
  v14 = 3;
  if (!*a2 || v13 == 256 || v13 == 512)
  {
    return v14;
  }

  v15 = v12;
  if (!v12)
  {
    return 2;
  }

  v16 = sub_2F404(v12);
  if (!v16)
  {
    return 5;
  }

  v17 = v16;
  v18 = sub_30608(v16, a2, 0);
  v72 = v18;
  if (v18)
  {
    v71 = 0;
    if (a3)
    {
      return 15;
    }

    v19 = v18;
    v20 = sub_4A28(v18, a2, &v71);
    if (!(v20 | v71))
    {
      return 0;
    }

    sub_13CE0(v17, *v19, (*(v19 + 6) >> 8) & 1);
  }

  v21 = sub_12E28(v15);
  v62 = v21 == 255;
  v66 = v17;
  if (!Value)
  {
    v60 = 0;
    v61 = 0;
    v30 = 0;
    v56 = 0;
    v26 = 1;
    v63 = 0;
    v64 = -1;
    HIDWORD(v57) = -1;
    v59 = 1;
    goto LABEL_39;
  }

  v22 = v21;
  Value = CFDictionaryGetValue(Value, @"__IPConfigurationServiceOptions");
  TypeID = CFDictionaryGetTypeID();
  if (!Value)
  {
LABEL_26:
    v60 = 0;
    v61 = 0;
    v30 = 0;
    v56 = 0;
    v26 = 1;
    v63 = 0;
    v64 = -1;
    HIDWORD(v57) = -1;
    v59 = 1;
    v17 = v66;
    goto LABEL_39;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    Value = 0;
    goto LABEL_26;
  }

  LODWORD(v65) = v22 != 255;
  if (sub_331B4(Value, @"MonitorPID", 0))
  {
    v24 = a6;
  }

  else
  {
    v24 = -1;
  }

  HIDWORD(v57) = v24;
  LODWORD(v58) = sub_331B4(Value, @"NoPublish", 0);
  v64 = sub_33210(Value, kIPConfigurationServiceOptionMTU, 0xFFFFFFFFLL);
  HIDWORD(v60) = sub_331B4(Value, kIPConfigurationServiceOptionPerformNUD, 1);
  LODWORD(v60) = sub_331B4(Value, kIPConfigurationServiceOptionEnableDAD, 1);
  v25 = kIPConfigurationServiceOptionEnableCLAT46;
  v63 = sub_331B4(Value, kIPConfigurationServiceOptionEnableCLAT46, 0);
  v26 = CFDictionaryContainsKey(Value, v25) == 0;
  v62 = sub_331B4(Value, kIPConfigurationServiceOptionEnableDHCPv6, v65) == 0;
  v27 = CFDictionaryGetValue(Value, kIPConfigurationServiceOptionEnableL4S);
  v28 = CFBooleanGetTypeID();
  if (v27)
  {
    if (CFGetTypeID(v27) == v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v61 = v29;
  }

  else
  {
    v61 = 0;
  }

  v31 = CFDictionaryGetValue(Value, @"ServiceID");
  v32 = CFStringGetTypeID();
  if (v31 && CFGetTypeID(v31) == v32)
  {
    v65 = CFRetain(v31);
  }

  else
  {
    v65 = 0;
  }

  v59 = sub_331B4(Value, kIPConfigurationServiceOptionClearState, 0);
  v33 = CFDictionaryGetValue(Value, kIPConfigurationServiceOptionAPNName);
  v34 = CFStringGetTypeID();
  v30 = v58;
  if (v33)
  {
    if (CFGetTypeID(v33) == v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v56 = v35;
  }

  else
  {
    v56 = 0;
  }

  Value = v65;
  v17 = v66;
  v59 = v59 == 0;
  LODWORD(v60) = (v60 == 0) << 18;
  HIDWORD(v60) = (HIDWORD(v60) == 0) << 17;
LABEL_39:
  if (v26 && dword_701BC && sub_12E28(v15) == 255 && v30)
  {
    v65 = Value;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v36 = _os_log_pack_size();
      v58 = &v56;
      v37 = &v56 - ((__chkstk_darwin(v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = __error();
      v39 = v36;
      v17 = v66;
      v40 = _os_log_pack_fill(v37, v39, *v38, &dword_0, "[DEBUG] auto-enabling clat46 on %s", v56);
      *v40 = 136315138;
      *(v40 + 4) = __s2;
      __SC_log_send();
    }

    v63 = 1;
    Value = v65;
  }

  if (!Value)
  {
    Value = sub_57C70(0);
    if (!Value)
    {
      return 5;
    }
  }

  v65 = Value;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v41 = _os_log_pack_size();
    LODWORD(v58) = v30;
    v42 = &v56 - ((__chkstk_darwin(v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = __error();
    v44 = _os_log_pack_fill(v42, v41, *v43, &dword_0, "%s %s %s", v56, v57, v58);
    if (a3)
    {
      v45 = "add_service";
    }

    else
    {
      v45 = "set_service";
    }

    v46 = sub_6160(v13);
    *v44 = 136315650;
    *(v44 + 4) = v45;
    *(v44 + 12) = 2080;
    *(v44 + 14) = __s2;
    *(v44 + 22) = 2080;
    *(v44 + 24) = v46;
    v17 = v66;
    __SC_log_send();
    v30 = v58;
  }

  v47 = v64;
  if (v64 >= 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v48 = _os_log_pack_size();
      v49 = &v56 - ((__chkstk_darwin(v48) + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = __error();
      v51 = v48;
      v17 = v66;
      v52 = _os_log_pack_fill(v49, v51, *v50, &dword_0, "set interface %s mtu to %d", v56, v57);
      *v52 = 136315394;
      *(v52 + 4) = __s2;
      *(v52 + 12) = 1024;
      *(v52 + 14) = v64;
      v47 = v64;
      __SC_log_send();
    }

    sub_40628(__s2, v47);
  }

  sub_33288(__s2, v61);
  *v17 = *v17 & 0xFFE1FFFF | HIDWORD(v60) | v60;
  v53 = v59;
  if ((v13 & 0x200) == 0)
  {
    v53 = 1;
  }

  if ((v53 & 1) == 0)
  {
    sub_33120(v17);
  }

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 0x40000000;
  v67[2] = sub_3341C;
  v67[3] = &unk_68F20;
  v68 = v30;
  v69 = v62;
  v70 = v63;
  v54 = v65;
  v14 = sub_2F544(v17, v65, a2, 0, v67, &v72);
  if (!v14)
  {
    if (v56)
    {
      sub_33070(v72, v56);
    }

    if (HIDWORD(v57) != -1)
    {
      sub_3344C(v72, SHIDWORD(v57));
    }

    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    sub_4160(v54, a4, 128, 0);
  }

  CFRelease(v54);
  return v14;
}

uint64_t sub_3038C(const char *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v3)
  {
    return 5;
  }

  v4 = v3;
  v5 = sub_303E8(a1, v3);
  CFRelease(v4);
  return v5;
}

uint64_t sub_303E8(const char *a1, const void *a2)
{
  v5 = 0;
  if (a1)
  {
    v3 = sub_30B04(a1, a2, &v5);
    if (!v3)
    {
      return 14;
    }
  }

  else
  {
    v3 = sub_337FC(a2, &v5, 0);
    if (!v3)
    {
      v3 = sub_337FC(a2, &v5, 1);
      if (!v3)
      {
        return 14;
      }
    }
  }

  return sub_307E0(v3, v5);
}

uint64_t sub_30460(const char *a1, int a2, int *a3, uint64_t a4)
{
  v5 = *a3;
  result = 3;
  if (*a3 && v5 != 256 && v5 != 512)
  {
    v10 = sub_4220(a1, 0);
    if (v10)
    {
      if (a2)
      {
        v11 = sub_3051C(v10, a3);
        if (v11)
        {
LABEL_7:
          v12 = *v11;
          *(a4 + 96) = 0u;
          *(a4 + 112) = 0u;
          *(a4 + 64) = 0u;
          *(a4 + 80) = 0u;
          *(a4 + 32) = 0u;
          *(a4 + 48) = 0u;
          *a4 = 0u;
          *(a4 + 16) = 0u;
          sub_4160(v12, a4, 128, 0);
          return 0;
        }
      }

      else
      {
        v11 = sub_30608(v10, a3, 0);
        if (v11)
        {
          goto LABEL_7;
        }
      }

      return 14;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_3051C(uint64_t a1, int *a2)
{
  v4 = *a2;
  if ((*a2 & 0x100) != 0)
  {
    v6 = v4 - 1;
    v7 = (v4 - 257) > 5;
    if (sub_295C(a1 + 24) < 1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      v9 = v7 | (0x16u >> v6);
      while (1)
      {
        result = sub_42C0(a1 + 24, v8);
        if (*a2 == *(result + 24))
        {
          if (v9)
          {
            break;
          }

          v10 = (*a2 & 0x100) != 0 ? *(result + 88) : 0;
          if (a2[2] == v10)
          {
            break;
          }
        }

        v8 = (v8 + 1);
        if (v8 >= sub_295C(a1 + 24))
        {
          return 0;
        }
      }
    }
  }

  else
  {

    return sub_338B0(a1, a2, 0);
  }

  return result;
}

_DWORD *sub_30608(uint64_t a1, int *a2, int a3)
{
  v6 = *a2;
  if ((*a2 & 0x100) != 0)
  {
    v8 = (v6 - 257) > 5 || ((1 << (v6 - 1)) & 0x29) == 0;
    v9 = v8;
    v10 = v8 && (v6 & 0xFFFFFFFE) == 258;
    if (sub_295C(a1 + 24) >= 1)
    {
      v11 = 0;
      do
      {
        result = sub_42C0(a1 + 24, v11);
        if (!a3 || result[8])
        {
          v12 = result[6];
          if (v9)
          {
            v13 = (v12 & 0xFFFFFFFE) == 0x102 && v10;
            if (v13 || v12 == v6)
            {
              return result;
            }
          }

          else
          {
            v14 = v12 - 257;
            v15 = v14 > 5;
            v16 = (1 << v14) & 0x29;
            v17 = v15 || v16 == 0;
            if (!v17 && a2[2] == result[22])
            {
              return result;
            }
          }
        }

        v11 = (v11 + 1);
      }

      while (v11 < sub_295C(a1 + 24));
    }

    return 0;
  }

  else
  {

    return sub_338B0(a1, a2, a3);
  }
}

uint64_t sub_30750(const char *a1, int *a2)
{
  v3 = *a2;
  result = 3;
  if (*a2 && v3 != 256 && v3 != 512)
  {
    v6 = sub_4220(a1, 0);
    if (v6)
    {
      v7 = v6;
      v8 = sub_3051C(v6, a2);
      if (v8)
      {

        return sub_307E0(v7, v8);
      }

      else
      {
        return 14;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_307E0(_DWORD *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    return 4;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = v12 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &dword_0, "remove_service %s %s", v12[0], v12[1]);
    nullsub_1();
    v9 = v8;
    v10 = sub_6160(*(a2 + 24));
    *v7 = 136315394;
    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    *(v7 + 14) = v10;
    __SC_log_send();
  }

  sub_13CE0(a1, *a2, (*(a2 + 24) >> 8) & 1);
  return 0;
}

uint64_t sub_30948(const char *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v3)
  {
    return 5;
  }

  v4 = v3;
  v17 = 0;
  if (sub_30B04(a1, v3, &v17))
  {
    LODWORD(v16) = 0;
    v5 = v17;
    *(&v16 + 4) = sub_2430(*(*(v17 + 16) + 8));
    HIDWORD(v16) = v6;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = &v16 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "%s %s: refresh", v16, *(&v16 + 1));
      nullsub_1();
      v12 = v11;
      v13 = sub_6160(*(v5 + 24));
      *v10 = 136315394;
      *(v10 + 4) = v12;
      *(v10 + 12) = 2080;
      *(v10 + 14) = v13;
      __SC_log_send();
    }

    v14 = sub_8DB0(v5, 8, &v16);
  }

  else
  {
    v14 = 14;
  }

  CFRelease(v4);
  return v14;
}

uint64_t sub_30B04(const char *a1, const void *a2, uint64_t *a3)
{
  v5 = sub_4220(a1, 0);
  if (v5)
  {
    v6 = v5;
    v5 = sub_498C(v5, a2, 0);
    if (!v5)
    {
      v5 = sub_498C(v6, a2, 1);
    }

    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a3 = v5;
  return v7;
}

uint64_t sub_30B78(const char *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v3)
  {
    return 5;
  }

  v4 = v3;
  if (sub_30B04(a1, v3, &v7))
  {
    v5 = 0;
  }

  else
  {
    v5 = 14;
  }

  CFRelease(v4);
  return v5;
}

uint64_t sub_30BE8(const char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 3;
  }

  v3 = sub_4220(a1, 0);
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  if (!sub_73DC(*(v3 + 8)))
  {
    return 3;
  }

  sub_8D44(v4 + 24, 20, a2);
  sub_8D44(v4 + 56, 20, a2);
  return 0;
}

uint64_t sub_30C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8D44(a1 + 24, a2, a3);

  return sub_8D44(a1 + 56, a2, a3);
}

void **get_interface_list()
{
  result = qword_70198;
  if (!qword_70198)
  {
    result = sub_59608(0);
    qword_70198 = result;
  }

  return result;
}

CFStringRef sub_30CEC(uint64_t a1)
{
  v1 = sub_6160(*(a1 + 24));
  nullsub_1();
  return CFStringCreateWithFormat(0, 0, @"com.apple.networking.IPConfiguration.%s.%s", v2, v1);
}

uint64_t (*load(const void *a1))(void)
{
  v2 = os_log_create("com.apple.IPConfiguration", "Server");
  sub_5B738(v2);
  qword_701A0 = CFRetain(a1);
  Current = CFRunLoopGetCurrent();
  sub_39960(Current);
  sub_CB80();
  if (&_wd_endpoint_add_queue)
  {
    wd_endpoint_add_queue();
  }

  v4 = sub_CB80();
  v5 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v4);
  qword_701C0 = v5;
  dispatch_source_set_event_handler(v5, &stru_68F98);
  dispatch_activate(v5);

  return sub_40554(sub_8D28);
}

void start()
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v31 = 0;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    v1 = &v30 - ((__chkstk_darwin(v0) + 15) & 0xFFFFFFFFFFFFFFF0);
    v2 = __error();
    *_os_log_pack_fill(v1, v0, *v2, &dword_0, "IPConfiguration starting") = 0;
    __SC_log_send();
  }

  v3 = sub_CB80();
  sub_5A138(v3, sub_31744);
  sub_31744();
  sub_31CC0();
  sub_3AD6C(dword_701A8 != 0);
  v37 = 0;
  if (qword_701A0)
  {
    InfoDictionary = CFBundleGetInfoDictionary(qword_701A0);
    if (InfoDictionary)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"IPConfiguration");
      TypeID = CFDictionaryGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID)
        {
          G_must_broadcast = sub_33F38(Value, @"MustBroadcast", 0);
          G_max_retries = sub_34090(Value, @"RetryCount", 9);
          G_gather_secs = sub_34090(Value, @"GatherTimeSeconds", 1);
          qword_700C8 = sub_341D0(Value, @"LinkInactiveWaitTimeSeconds", *&qword_700C8);
          G_initial_wait_secs = sub_34090(Value, @"InitialRetryTimeSeconds", 1);
          G_max_wait_secs = sub_34090(Value, @"MaximumRetryTimeSeconds", 8);
          dword_7008C = sub_34090(Value, @"ARPProbeCount", 3);
          dword_70090 = sub_34090(Value, @"ARPGratuitousCount", 2);
          qword_70098 = sub_341D0(Value, @"ARPRetryTimeSeconds", *&qword_70098);
          dword_700A0 = sub_34090(Value, @"ARPDetectCount", 6);
          qword_700A8 = sub_341D0(Value, @"ARPDetectRetryTimeSeconds", *&qword_700A8);
          dword_70310 = sub_33F38(Value, @"DHCPAcceptsBOOTP", 0);
          dword_70024 = sub_33F38(Value, @"DHCPFailureConfiguresLinkLocal", 1);
          dword_70028 = sub_33F38(Value, @"DHCPSuccessDeconfiguresLinkLocal", 1);
          dword_70038 = sub_34090(Value, @"DHCPInitRebootRetryCount", 2);
          dword_7003C = sub_34090(Value, @"DHCPSelectRetryCount", 3);
          dword_7002C = sub_34090(Value, @"DHCPAllocateLinkLocalAtRetryCount", 4);
          dword_70030 = sub_34090(Value, @"DHCPGenerateFailureSymptomAtRetryCount", 6);
          dword_70034 = sub_34090(Value, @"DHCPRouterARPAtRetryCount", 3);
          v7 = sub_34350(Value, @"DHCPRequestedParameterList", 1, &v37);
          sub_24180(v7, v37);
          G_router_arp = sub_33F38(Value, @"RouterARPEnabled", 1);
          G_router_arp_wifi_lease_start_threshold_secs = sub_34090(Value, @"RouterARPWiFiLeaseStartThresholdSeconds", G_router_arp_wifi_lease_start_threshold_secs);
          dword_700D0 = sub_34090(Value, @"DHCPLocalHostNameLengthMax", 15);
          G_discover_and_publish_router_mac_address = sub_33F38(Value, @"DiscoverAndPublishRouterMACAddress", 1);
          dword_70080 = sub_34090(Value, @"DiscoverRouterMACAddressTimeSeconds", 60);
          dword_70084 = sub_34090(Value, @"DefendIPAddressIntervalSeconds", 10);
          dword_70088 = sub_34090(Value, @"DefendIPAddressCount", 5);
          dword_70040 = sub_34090(Value, @"DHCPLeaseWriteT1ThresholdSeconds", 3600);
          dword_700B0 = sub_34090(Value, @"ARPConflictRetryCount", 2);
          qword_700B8 = sub_341D0(Value, @"ARPConflictRetryDelaySeconds", *&qword_700B8);
          dword_70048 = sub_34090(Value, @"ManualConflictRetryIntervalSeconds", 300);
          dword_70074 = sub_34090(Value, @"MinimumShortWakeIntervalSeconds", 60);
          dword_70078 = sub_34090(Value, @"MinimumWakeIntervalSeconds", 900);
          dword_7007C = sub_34090(Value, @"WakeSkewSeconds", 30);
          dword_700C4 = sub_33F38(Value, @"ConfigureIPv6", 1);
          if (dword_700C4)
          {
            v36 = 0;
            G_dhcpv6_enabled = sub_33F38(Value, @"DHCPv6Enabled", 1);
            v8 = sub_34350(Value, @"DHCPv6RequestedOptions", 2, &v36);
            sub_46AF8(v8, v36);
            G_dhcpv6_stateful_enabled = sub_33F38(Value, @"DHCPv6StatefulEnabled", 1);
          }

          dword_700C0 = sub_33F38(Value, @"DisableUnneededInterfaces", 1);
        }
      }
    }
  }

  v9 = SCPreferencesCreate(0, @"IPConfiguration.DHCPClient", @"DHCPClient.plist");
  v31 = v9;
  if (v9)
  {
    v10 = v9;
    if (SCPreferencesSetCallback(v9, sub_31E08, 0) && (v11 = sub_CB80(), SCPreferencesSetDispatchQueue(v10, v11)))
    {
      sub_31EF8(v10);
      SCPreferencesSynchronize(v10);
      qword_70188 = SCDynamicStoreCreate(0, @"IPConfiguration", sub_30B8, 0);
      if (!qword_70188)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v12 = _os_log_pack_size();
          v13 = &v30 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
          v14 = __error();
          v15 = _os_log_pack_fill(v13, v12, *v14, &dword_0, "SCDynamicStoreCreate failed: %s", v30);
          v16 = SCError();
          v17 = SCErrorString(v16);
          *v15 = 136315138;
          *(v15 + 4) = v17;
          __SC_log_send();
        }
      }

      bootp_session_init(word_70020);
      *&v32 = &dword_7008C;
      *(&v32 + 1) = &dword_70090;
      *&v33 = &qword_70098;
      *(&v33 + 1) = &dword_700A0;
      *&v34 = &qword_700A8;
      *(&v34 + 1) = &dword_700B0;
      v35 = &qword_700B8;
      sub_22194(sub_31F5C, &v32);
      sub_592AC(qword_70160, sub_32020, 0);
      sub_32188();
      sub_37BA0();
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v18 = _os_log_pack_size();
        v19 = &v30 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = __error();
        v21 = _os_log_pack_fill(v19, v18, *v20, &dword_0, "IPConfigurationSCPreferencesSetCallback failed: %s", v30);
        v22 = SCError();
        v23 = SCErrorString(v22);
        *v21 = 136315138;
        *(v21 + 4) = v23;
        __SC_log_send();
      }

      sub_41E8(&v31);
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v24 = _os_log_pack_size();
      v25 = &v30 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = __error();
      v27 = _os_log_pack_fill(v25, v24, *v26, &dword_0, "IPConfiguration: SCPreferencesCreate failed: %s", v30);
      v28 = SCError();
      v29 = SCErrorString(v28);
      *v27 = 136315138;
      *(v27 + 4) = v29;
      __SC_log_send();
    }
  }
}

void sub_31744()
{
  v0 = sub_5A270(0);
  if (G_IPConfiguration_verbose == v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  G_IPConfiguration_verbose = v0;
  sub_2424();
  _SC_syslog_os_log_mapping();
  v2 = __SC_log_enabled();
  if (v1)
  {
    if (v2)
    {
      v3 = _os_log_pack_size();
      v4 = &v39 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = *__error();
      v6 = _os_log_pack_fill(v4, v3, v5, &dword_0, "IPConfiguration: verbose mode enabled");
LABEL_7:
      *v6 = 0;
      __SC_log_send();
    }
  }

  else if (v2)
  {
    v7 = _os_log_pack_size();
    v8 = &v39 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = *__error();
    v6 = _os_log_pack_fill(v8, v7, v9, &dword_0, "IPConfiguration: verbose mode disabled");
    goto LABEL_7;
  }

  v10 = v1 != 0;
  bootp_session_set_verbose(v10);
  DHCPv6SocketSetVerbose(v10);
  sub_42B68(v10);
LABEL_9:
  v11 = sub_5A2C0();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 2;
  }

  if (v12 != dword_7004C)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      v14 = &v39 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v13, *v15, &dword_0, "IPConfiguration: AWD interface types %@");
      v17 = sub_5A23C(v12);
      *v16 = 138412290;
      *(v16 + 4) = v17;
      __SC_log_send();
    }

    dword_7004C = v12;
  }

  v18 = sub_5A390(0);
  if (dword_701BC != v18)
  {
    v19 = v18;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v20 = _os_log_pack_size();
      v21 = &v39 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = __error();
      v23 = _os_log_pack_fill(v21, v20, *v22, &dword_0, "IPConfiguration: cellular CLAT46 %sauto-enabled", v39);
      v24 = "";
      if (!v19)
      {
        v24 = "not ";
      }

      *v23 = 136315138;
      *(v23 + 4) = v24;
      __SC_log_send();
    }

    dword_701BC = v19;
  }

  v25 = sub_5A3E0(1);
  if (dword_701A8 != v25)
  {
    v26 = v25;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v27 = _os_log_pack_size();
      v28 = &v39 - ((__chkstk_darwin(v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v28, v27, *v29, &dword_0, "IPConfiguration: IPv6 linklocal modifier %s", v39);
      v31 = "expires";
      if (!v26)
      {
        v31 = "does not expire";
      }

      *v30 = 136315138;
      *(v30 + 4) = v31;
      __SC_log_send();
    }

    dword_701A8 = v26;
  }

  if (dword_70314)
  {
    G_dhcp_duid_type = 3;
  }

  else
  {
    if (os_variant_is_darwinos())
    {
      v32 = 4;
    }

    else
    {
      v32 = 1;
    }

    G_dhcp_duid_type = v32;
    v33 = sub_5A430();
    v34 = v33;
    if ((v33 - 3) < 2)
    {
      goto LABEL_36;
    }

    if (!v33)
    {
      goto LABEL_37;
    }

    if (v33 == 1)
    {
LABEL_36:
      G_dhcp_duid_type = v33;
      goto LABEL_37;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v35 = _os_log_pack_size();
      v36 = &v39 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = __error();
      v38 = _os_log_pack_fill(v36, v35, *v37, &dword_0, "%s: unsupported DHCP DUID type %d specified", v39, v40);
      *v38 = 136315394;
      *(v38 + 4) = "check_prefs";
      *(v38 + 12) = 1024;
      *(v38 + 14) = v34;
      __SC_log_send();
    }
  }

LABEL_37:
  sub_5A0F4();
}

uint64_t sub_31CC0()
{
  result = sub_59D78("/var/db/dhcpclient/leases", 0x1C0u);
  if ((result & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v1 = _os_log_pack_size();
      v2 = &v8 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = __error();
      v4 = _os_log_pack_fill(v2, v1, *v3, &dword_0, "failed to create /var/db/dhcpclient/leases, %s (%d)", v8, v9);
      v5 = __error();
      v6 = strerror(*v5);
      v7 = *__error();
      *v4 = 136315394;
      *(v4 + 4) = v6;
      *(v4 + 12) = 1024;
      *(v4 + 14) = v7;
      return __SC_log_send();
    }
  }

  return result;
}

const __SCPreferences *sub_31E08(const __SCPreferences *result, char a2)
{
  if ((a2 & 2) != 0)
  {
    v2 = result;
    sub_31EF8(result);
    SCPreferencesSynchronize(v2);
    result = sub_295C(qword_70160);
    if (result >= 1)
    {
      v3 = 0;
      do
      {
        v4 = sub_42C0(qword_70160, v3);
        v8 = 0uLL;
        *(&v8 + 4) = sub_2430(*(v4 + 8));
        HIDWORD(v8) = v5;
        if (sub_295C(v4 + 24) >= 1)
        {
          v6 = 0;
          do
          {
            v7 = sub_42C0(v4 + 24, v6);
            if (*(v7 + 25))
            {
              *(v7 + 116) &= ~4u;
            }

            sub_8DB0(v7, 8, &v8);
            v6 = (v6 + 1);
          }

          while (v6 < sub_295C(v4 + 24));
        }

        v3 = (v3 + 1);
        result = sub_295C(qword_70160);
      }

      while (v3 < result);
    }
  }

  return result;
}

void sub_31EF8(const __SCPreferences *a1)
{
  v5 = 0;
  v1 = sub_34500(a1);
  v4 = v1;
  if (v1)
  {
    v2 = sub_343D0(v1, 1u, &v5);
    sub_41E8(&v4);
    v3 = v5;
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  sub_24320(v2, v3);
}

uint64_t sub_31F5C(uint64_t a1, int a2, const void *a3, int a4)
{
  if (sub_59428(qword_70198) < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = sub_59434(qword_70198, v7);
    if (sub_AD1C(v8) == a4 && sub_638C(v8) == a2)
    {
      v9 = sub_A840(v8);
      if (!bcmp(a3, v9, a4))
      {
        break;
      }
    }

    if (++v7 >= sub_59428(qword_70198))
    {
      return 0;
    }
  }

  return 1;
}

void sub_32020(uint64_t a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v7 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &dword_0, "IFState_free(%s)", v7);
    nullsub_1();
    *v5 = 136315138;
    *(v5 + 4) = v6;
    __SC_log_send();
  }

  sub_2F45C(a1, 1);
  sub_2F4D0(a1, 1);
  sub_41E8((a1 + 16));
  sub_41E8((a1 + 144));
  sub_41E8((a1 + 96));
  *(a1 + 96) = 0;
  sub_596FC((a1 + 8));
  timer_callout_free((a1 + 112));
  free(a1);
}

void sub_32188()
{
  v0 = IOPMCopyScheduledPowerEvents();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v6 = @"scheduledby";
      *&v3 = 138412290;
      v17 = v3;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v5);
        Value = CFDictionaryGetValue(ValueAtIndex, v6);
        if (CFStringHasPrefix(Value, @"com.apple.networking.IPConfiguration"))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v9 = _os_log_pack_size();
            v18 = &v17;
            v10 = v1;
            v11 = v4;
            v12 = v6;
            v13 = &v17 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
            v14 = __error();
            v15 = _os_log_pack_fill(v13, v9, *v14, &dword_0, "IOPMCancelScheduledPowerEvent(%@)");
            *v15 = v17;
            *(v15 + 4) = Value;
            v6 = v12;
            v4 = v11;
            v1 = v10;
            __SC_log_send();
          }

          v16 = CFDictionaryGetValue(ValueAtIndex, @"time");
          IOPMCancelScheduledPowerEvent(v16, Value, @"wake");
        }

        ++v5;
      }

      while (v4 != v5);
    }

    CFRelease(v1);
  }
}

void prime()
{
  v0 = sub_CB80();

  dispatch_async(v0, &stru_68E30);
}

void sub_32390(id a1)
{
  v1 = qword_70188;
  if (!qword_70188)
  {
    sub_3509C();
    goto LABEL_22;
  }

  qword_701E0 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/", kSCDynamicStoreDomainSetup, kSCCompNetwork, kSCCompService);
  qword_701E8 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/", kSCDynamicStoreDomainState, kSCCompNetwork, kSCCompInterface);
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v3 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv4);
  CFArrayAppendValue(v3, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v5 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv6);
  CFArrayAppendValue(v3, v5);
  CFRelease(v5);
  v6 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNet6to4);
  CFArrayAppendValue(v3, v6);
  CFRelease(v6);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6);
  CFArrayAppendValue(v3, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  v8 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
  CFArrayAppendValue(v3, v8);
  CFRelease(v8);
  v9 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetLink);
  CFArrayAppendValue(v3, v9);
  CFRelease(v9);
  v10 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetAirPort);
  CFArrayAppendValue(v3, v10);
  CFRelease(v10);
  v11 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetNAT64);
  CFArrayAppendValue(v3, v11);
  CFRelease(v11);
  v12 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetRefreshConfiguration);
  CFArrayAppendValue(v3, v12);
  CFRelease(v12);
  v13 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4ARPCollision);
  MutableCopy = CFStringCreateMutableCopy(0, 0, v13);
  CFStringAppend(MutableCopy, @".*");
  CFRelease(v13);
  CFArrayAppendValue(v3, MutableCopy);
  CFRelease(MutableCopy);
  v15 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetInterfaceActiveDuringSleepRequested);
  CFArrayAppendValue(v3, v15);
  CFRelease(v15);
  v16 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, 0);
  CFArrayAppendValue(v3, v16);
  CFRelease(v16);
  v17 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6RouterExpired);
  CFArrayAppendValue(v3, v17);
  CFRelease(v17);
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
  CFArrayAppendValue(Mutable, NetworkInterface);
  CFRelease(NetworkInterface);
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  CFRelease(NetworkGlobalEntity);
  qword_701D0 = SCDynamicStoreKeyCreateComputerName(0);
  CFArrayAppendValue(Mutable, qword_701D0);
  qword_701D8 = SCDynamicStoreKeyCreateHostNames(0);
  CFArrayAppendValue(Mutable, qword_701D8);
  SCDynamicStoreSetNotificationKeys(v1, Mutable, v3);
  CFRelease(Mutable);
  CFRelease(v3);
  v20 = sub_CB80();
  SCDynamicStoreSetDispatchQueue(v1, v20);
  sub_347CC(v1);
  sub_3509C();
  v36 = 0;
  v37 = 0;
  thePortRef[0] = 0x2800000001;
  v38 = 4;
  sysctl(thePortRef, 2u, &v37, &v38, 0, 0);
  if (v37)
  {
    v21 = sub_598A0("IODeviceTree:/chosen");
    v36 = v21;
    if (v21)
    {
      v22 = v21;
      Value = CFDictionaryGetValue(v21, @"dhcp-response");
      TypeID = CFDataGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        v25 = 0;
        goto LABEL_11;
      }

      Value = CFDictionaryGetValue(v22, @"bootp-response");
      v26 = CFDataGetTypeID();
      if (Value && CFGetTypeID(Value) == v26)
      {
        v25 = 1;
LABEL_11:
        BytePtr = CFDataGetBytePtr(Value);
        Length = CFDataGetLength(Value);
        v29 = *(BytePtr + 4);
        if (v29 || (v29 = *(BytePtr + 3)) != 0)
        {
          dword_70180 = v29;
          dword_70184 = *(BytePtr + 5);
          v30 = sub_59468(qword_70198, v29);
          if (v30)
          {
            v31 = sub_2F404(v30);
            *v31 |= 0x10u;
            if ((v25 & 1) == 0)
            {
              thePortRef[0] = 0;
              thePortRef[1] = 0;
              sub_585E0(thePortRef, BytePtr, Length, 0);
              v32 = sub_58598(thePortRef, 54, 4);
              if (v32)
              {
                dword_70184 = *v32;
              }

              sub_58494(thePortRef);
            }

            nullsub_1();
            __strlcpy_chk();
            dword_70314 = 1;
          }
        }
      }
    }
  }

  sub_41E8(&v36);
  sub_37DF0(v1);
  LODWORD(v38) = 0;
  thePortRef[0] = 0;
  v33 = IORegisterForSystemPower(0, thePortRef, sub_690C, &v38);
  if (v33)
  {
    v34 = thePortRef[0];
    v35 = sub_CB80();
    IONotificationPortSetDispatchQueue(v34, v35);
  }

  qword_70218 = thePortRef[0];
  dword_70200 = v33;
LABEL_22:
  sub_3D6E4();
  sub_CB80();
  os_state_add_handler();
}

void stop(uint64_t a1)
{
  v2 = sub_CB80();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_32AD8;
  block[3] = &unk_68E50;
  block[4] = a1;
  dispatch_async(v2, block);
}

void sub_32AD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_295C(qword_70160);
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      v5 = sub_42C0(qword_70160, v4);
      sub_8D44(v5 + 24, 12, 0);
      sub_8D44(v5 + 56, 12, 0);
      v4 = (v4 + 1);
    }

    while (v3 != v4);
  }

  CFRunLoopSourceSignal(v1);
}

_DWORD *sub_32B7C(uint64_t a1)
{
  if (sub_295C(a1) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = sub_42C0(a1, v2);
    if (v3[10])
    {
      v4 = v3;
      if (!v3[7])
      {
        if (sub_12330(v3))
        {
          break;
        }
      }
    }

    v2 = (v2 + 1);
    if (v2 >= sub_295C(a1))
    {
      return 0;
    }
  }

  return v4;
}

void *sub_32BFC(__int128 *a1)
{
  v2 = malloc_type_malloc(0xB8uLL, 0x10E00405985B266uLL);
  v3 = v2;
  if (v2)
  {
    v2[22] = 0;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *v2 = 0u;
    v2[1] = sub_59740(a1);
    nullsub_1();
    *(v3 + 16) = CFStringCreateWithCString(0, v4, 0x600u);
    sub_32E1C(v3);
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, *(v3 + 16), kSCEntNetInterfaceActiveDuringSleepRequested);
    v6 = SCDynamicStoreCopyValue(qword_70188, NetworkInterfaceEntity);
    CFRelease(NetworkInterfaceEntity);
    if (v6)
    {
      *(v3 + 156) = 1;
      CFRelease(v6);
    }

    nullsub_1();
    *(v3 + 112) = timer_callout_init(v7);
    *(v3 + 124) = dword_701B8;
    sub_592AC((v3 + 24), sub_13E90, 0);
    sub_592AC((v3 + 56), sub_13E90, 0);
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      v9 = &v12 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      *_os_log_pack_fill(v9, v8, *v10, &dword_0, "IFState_init: malloc ifstate failed") = 0;
      __SC_log_send();
    }
  }

  return v3;
}

void sub_32E1C(uint64_t a1)
{
  nullsub_1();
  v3 = v2;
  v4 = sub_43CC(*(a1 + 8));
  sub_2424();
  _SC_syslog_os_log_mapping();
  v5 = __SC_log_enabled();
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = _os_log_pack_size();
    v7 = v15 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_0, "%s link is %s", v15[0], v15[1]);
    v10 = "up";
    if (!HIDWORD(v4))
    {
      v10 = "down";
    }

    *v9 = 136315394;
    *(v9 + 4) = v3;
    *(v9 + 12) = 2080;
    *(v9 + 14) = v10;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    v11 = _os_log_pack_size();
    v12 = v15 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v11, *v13, &dword_0, "%s link is unknown", v15[0]);
    *v14 = 136315138;
    *(v14 + 4) = v3;
  }

  __SC_log_send();
LABEL_9:
  if (sub_73DC(*(a1 + 8)))
  {
    v15[0] = sub_73E8(*(a1 + 16));
    sub_33018(a1, v15[0]);
    sub_41E8(v15);
  }
}

void sub_33018(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
    sub_41E8((a1 + 96));
    *(a1 + 96) = cf;
    *(a1 + 104) = sub_395CC(cf);
  }

  else
  {
    sub_41E8((a1 + 96));
    *(a1 + 96) = 0;
  }
}

void sub_33070(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 8) = cf;
}

uint64_t sub_330B0(uint64_t *a1)
{
  result = sub_295C(a1);
  if (result >= 1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = sub_42C0(a1, v4);
      if (*(result + 32))
      {
        v4 = (v4 + 1);
      }

      else
      {
        result = sub_13DB8(a1, v4);
        --v3;
      }
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t sub_33120(uint64_t a1)
{
  result = sub_295C(a1 + 56);
  if (!result)
  {
    v3 = sub_12E28(*(a1 + 8));
    if (v3 != 24 && v3 != 57)
    {
      nullsub_1();
      sub_4195C(v4);
      nullsub_1();
      sub_41660(v5);
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *a1 &= ~0x10000u;
    }

    nullsub_1();

    return sub_40F2C(v6);
  }

  return result;
}

uint64_t sub_331B4(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFBooleanGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    return CFBooleanGetValue(Value);
  }

  return a3;
}

uint64_t sub_33210(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

uint64_t sub_33288(uint64_t a1, const __CFBoolean *a2)
{
  HIDWORD(v11[0]) = 0;
  result = sub_407A4(a1, v11 + 1);
  if (a2)
  {
    result = CFBooleanGetValue(a2);
    if (result)
    {
      LODWORD(a2) = 1;
    }

    else
    {
      LODWORD(a2) = 2;
    }
  }

  if (HIDWORD(v11[0]) != a2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = v11 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "%s: changing L4S mode from '%s' to '%s'", v11[0], v11[1], v11[2]);
      if (HIDWORD(v11[0]) > 2)
      {
        v9 = "<unknown>";
      }

      else
      {
        v9 = off_68F40[HIDWORD(v11[0])];
      }

      v10 = off_68F40[a2];
      *v8 = 136315650;
      *(v8 + 4) = a1;
      *(v8 + 12) = 2080;
      *(v8 + 14) = v9;
      *(v8 + 22) = 2080;
      *(v8 + 24) = v10;
      __SC_log_send();
    }

    return sub_406DC(a1, a2);
  }

  return result;
}

_DWORD *sub_3341C(_DWORD *result, uint64_t a2)
{
  v2 = result[8];
  *(a2 + 32) = 1;
  *(a2 + 36) = v2;
  if ((*(a2 + 25) & 2) != 0)
  {
    *(a2 + 128) = result[9];
    if (result[10])
    {
      *(a2 + 124) = 1;
    }
  }

  return result;
}

void sub_3344C(uint64_t a1, int a2)
{
  v3 = a2;
  v4 = sub_CB80();
  v5 = dispatch_source_create(&_dispatch_source_type_proc, v3, 0x80000000uLL, v4);
  if (v5)
  {
    v6 = v5;
    CFRetain(*a1);
    dispatch_set_context(v6, *a1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_335F0;
    handler[3] = &unk_68F58;
    handler[4] = v6;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    *(a1 + 64) = v6;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = handler - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      *_os_log_pack_fill(v8, v7, *v9, &dword_0, "IPConfiguration: dispatch_source_create failed") = 0;
      __SC_log_send();
    }
  }
}

uint64_t sub_335F8(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    v4 = &v15 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = __error();
    v6 = _os_log_pack_fill(v4, v3, *v5, &dword_0, "IPConfiguration: pid %d exited", v15);
    *v6 = 67109120;
    v6[1] = handle;
    __SC_log_send();
  }

  context = dispatch_get_context(a1);
  result = sub_303E8(0, context);
  if (result)
  {
    v9 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v10 = _os_log_pack_size();
      v11 = &v15 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v10, *v12, &dword_0, "IPConfiguration: failed to stop service %@, %s");
      v14 = off_68E70[v9];
      *v13 = 138412546;
      *(v13 + 4) = context;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v14;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_337FC(const void *a1, CFTypeRef **a2, int a3)
{
  if (sub_295C(qword_70160) < 1)
  {
LABEL_5:
    v8 = 0;
    v7 = 0;
    v9 = 0;
    if (!a2)
    {
      return v9;
    }

LABEL_6:
    *a2 = v8;
    return v7;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_42C0(qword_70160, v6);
    v8 = sub_498C(v7, a1, a3);
    if (v8)
    {
      break;
    }

    v6 = (v6 + 1);
    if (v6 >= sub_295C(qword_70160))
    {
      goto LABEL_5;
    }
  }

  v9 = v7;
  if (a2)
  {
    goto LABEL_6;
  }

  return v9;
}

uint64_t sub_338B0(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_295C(a1 + 56) < 1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    result = sub_42C0(a1 + 56, v6);
    if (!a3 || *(result + 32))
    {
      v8 = *(result + 24);
      if (v8 == *a2)
      {
        if (v8 != 513)
        {
          break;
        }

        if (*(a2 + 8) == *result && *(a2 + 16) == *(result + 8))
        {
          break;
        }
      }
    }

    v6 = (v6 + 1);
    if (v6 >= sub_295C(a1 + 56))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_33950(const void *a1, int *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodBOOTP))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v10 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      *_os_log_pack_fill(v6, v5, *v7, &dword_0, "BOOTP is deprecated, using DHCP instead") = 0;
      __SC_log_send();
      v8 = 259;
LABEL_9:
      *a2 = v8;
      return 1;
    }

LABEL_8:
    v8 = 259;
    goto LABEL_9;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodDHCP))
  {
    goto LABEL_8;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodManual))
  {
    v8 = 257;
    goto LABEL_9;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodINFORM))
  {
    v8 = 260;
    goto LABEL_9;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodLinkLocal))
  {
    v8 = 261;
    goto LABEL_9;
  }

  result = CFEqual(a1, kSCValNetIPv4ConfigMethodFailover);
  if (result)
  {
    v8 = 262;
    goto LABEL_9;
  }

  return result;
}

const void *sub_33B40(const __CFDictionary *a1, const void *a2, in_addr *a3)
{
  a3->s_addr = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v6 = result;
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v6) != TypeID)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

      v9 = _os_log_pack_size();
      v10 = &v19 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = *__error();
      v12 = _os_log_pack_fill(v10, v9, v11, &dword_0, "%@ is not an array");
      goto LABEL_12;
    }

    if (!CFArrayGetCount(v6))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

      v13 = _os_log_pack_size();
      v14 = &v19 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v12 = _os_log_pack_fill(v14, v13, v15, &dword_0, "%@ empty array");
      goto LABEL_12;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    if (sub_575A4(ValueAtIndex, a3))
    {
      return &dword_0 + 1;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v16 = _os_log_pack_size();
      v17 = &v19 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = *__error();
      v12 = _os_log_pack_fill(v17, v16, v18, &dword_0, "%@[0] is not an IP address");
LABEL_12:
      *v12 = 138412290;
      *(v12 + 4) = a2;
      __SC_log_send();
      return 0;
    }
  }

  return result;
}

uint64_t sub_33DA4(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v12 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  LODWORD(v13[0]) = 261;
  DWORD2(v13[0]) = a2;
  result = sub_2F544(v2, 0, v13, a1, 0, &v12);
  if (result)
  {
    v4 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v5 = _os_log_pack_size();
      v6 = &v11 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "IPConfiguration: failed to start link-local service on %s, %s", v11, v12);
      nullsub_1();
      if (v4 <= 0x15)
      {
        v10 = off_68E70[v4];
      }

      else
      {
        v10 = "<unknown>";
      }

      *v8 = 136315394;
      *(v8 + 4) = v9;
      *(v8 + 12) = 2080;
      *(v8 + 14) = v10;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_33F38(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v4 = sub_331B4(a1, a2, a3);
  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v11 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "%@ = %s");
      v9 = "false";
      if (v4 == 1)
      {
        v9 = "true";
      }

      *v8 = 138412546;
      *(v8 + 4) = a2;
      *(v8 + 12) = 2080;
      *(v8 + 14) = v9;
      __SC_log_send();
    }
  }

  return v4;
}

uint64_t sub_34090(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v4 = sub_33210(a1, a2, a3);
  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v10 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_0, "%@ = %d");
      *v8 = 138412546;
      *(v8 + 4) = a2;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v4;
      __SC_log_send();
    }
  }

  return v4;
}

double sub_341D0(const __CFDictionary *a1, const void *a2, double a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFNumberGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      valuePtr = 0.0;
      if (CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr) == 1)
      {
        a3 = valuePtr;
      }
    }
  }

  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = &valuePtr - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &dword_0, "%@ = %g");
      *v10 = 138412546;
      *(v10 + 4) = a2;
      *(v10 + 12) = 2048;
      *(v10 + 14) = a3;
      __SC_log_send();
    }
  }

  return a3;
}

void *sub_34350(const __CFDictionary *a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  v5 = a3;
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  return sub_343D0(Value, v5, a4);
}

void *sub_343D0(const __CFArray *a1, unsigned int a2, _DWORD *a3)
{
  Count = CFArrayGetCount(a1);
  if (Count && (v7 = Count, (v8 = malloc_type_malloc(Count * a2, 0xB69BA314uLL)) != 0))
  {
    v9 = v8;
    if (v7 <= 0)
    {
      *a3 = 0;
LABEL_17:
      free(v9);
      return 0;
    }

    v16 = a3;
    v10 = 0;
    v11 = 0;
    v12 = v8;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      TypeID = CFNumberGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == TypeID)
        {
          valuePtr = 0;
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            if (a2 == 1)
            {
              *v12 = valuePtr;
            }

            else
            {
              *v12 = valuePtr;
            }

            ++v11;
            v12 += a2;
          }
        }
      }

      ++v10;
    }

    while (v7 != v10);
    *v16 = v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    *a3 = 0;
  }

  return v9;
}

CFMutableArrayRef sub_34500(const __SCPreferences *a1)
{
  Value = SCPreferencesGetValue(a1, @"Application");
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      v4 = &v9 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = __error();
      v6 = _os_log_pack_fill(v4, v3, *v5, &dword_0, "dictionary is %@");
      *v6 = 138412290;
      *(v6 + 4) = Value;
      __SC_log_send();
    }
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    CFDictionaryApplyFunction(Value, sub_3469C, Mutable);
    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

void sub_3469C(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (a2)
  {
    if (CFGetTypeID(a2) == TypeID)
    {
      Value = CFDictionaryGetValue(a2, @"DHCPRequestedParameterList");
      v7 = CFArrayGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v7)
        {
          v8.length = CFArrayGetCount(Value);
          v8.location = 0;

          CFArrayApplyFunction(Value, v8, sub_3475C, a3);
        }
      }
    }
  }
}

void sub_3475C(const void *a1, const __CFArray *a2)
{
  TypeID = CFNumberGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {

    sub_57964(a2, a1);
  }
}

void sub_347CC(SCDynamicStoreRef store)
{
  v5 = 0;
  if (store)
  {
    if (qword_70150)
    {
      free(qword_70150);
      qword_70150 = 0;
    }

    if (qword_70158)
    {
      free(qword_70158);
      qword_70158 = 0;
    }

    nameEncoding = 0;
    cf = SCDynamicStoreCopyComputerName(store, &nameEncoding);
    if (cf && _SC_CFStringIsValidDNSName())
    {
      v2 = CFRetain(cf);
    }

    else
    {
      sub_41E8(&cf);
      cf = SCDynamicStoreCopyLocalHostName(store);
      if (!cf || !_SC_CFStringIsValidDNSName())
      {
LABEL_15:
        sub_41E8(&v5);
        sub_41E8(&cf);
        return;
      }

      v2 = sub_57E6C(cf, dword_700D0);
    }

    v5 = v2;
    if (v2)
    {
      qword_70150 = sub_57C28(v2, 0x8000100u);
    }

    qword_70158 = sub_57C28(cf, 0x8000100u);
    goto LABEL_15;
  }
}