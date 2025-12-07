uint64_t sub_100000970(const char **a1)
{
  byte_10004799D = 1;
  v1 = strdup(*a1);
  if (!v1)
  {
    novm("+ua file name");
  }

  v2 = v1;
  v3 = getuid();
  seteuid(v3);
  v4 = fopen(v2, "r");
  seteuid(0);
  if (!v4)
  {
    option_error("unable to open user login data file %s");
    return 0;
  }

  sub_1000031D0(v4);
  qword_10004A200 = v2;
  if (!fgets(__s, 255, v4) || !fgets(v8, 255, v4))
  {
    fclose(v4);
    option_error("unable to read user login data file %s");
    return 0;
  }

  fclose(v4);
  v5 = strlen(__s);
  if (v5 && __s[v5 - 1] == 10)
  {
    __s[v5 - 1] = 0;
  }

  v6 = strlen(v8);
  if (v6 && v8[v6 - 1] == 10)
  {
    v8[v6 - 1] = 0;
  }

  if (override_value("user", option_priority, v2))
  {
    __strlcpy_chk();
  }

  if (override_value("passwd", option_priority, v2))
  {
    __strlcpy_chk();
  }

  return 1;
}

uint64_t sub_100000B94(const char **a1)
{
  v2 = getgrnam(*a1);
  if (v2)
  {
    v3 = ngroups;
    if (ngroups < 1)
    {
      return 1;
    }

    else
    {
      v4 = groups;
      while (1)
      {
        v5 = *v4++;
        if (v5 == v2->gr_gid)
        {
          break;
        }

        if (!--v3)
        {
          return 1;
        }
      }

      result = 1;
      privileged = 1;
    }
  }

  else
  {
    option_error("group %s is unknown", *a1);
    return 0;
  }

  return result;
}

uint64_t sub_100000C30(const char **a1)
{
  v1 = *a1;
  v2 = strlen(*a1);
  v3 = malloc_type_malloc(v2 + 17, 0x30040E4270A41uLL);
  if (!v3)
  {
    novm("allow-ip argument");
  }

  v4 = v3;
  v5 = v3 + 2;
  *v4 = qword_10004A220;
  v4[1] = v5;
  memcpy(v5, v1, v2 + 1);
  qword_10004A220 = v4;
  return 1;
}

uint64_t sub_100000CB4(const char **a1)
{
  v1 = *a1;
  v2 = strlen(*a1);
  v3 = malloc_type_malloc(v2 + 17, 0x30040E4270A41uLL);
  if (!v3)
  {
    novm("allow-number argument");
  }

  v4 = v3;
  v5 = v3 + 2;
  *v4 = qword_10004A240;
  v4[1] = v5;
  memcpy(v5, v1, v2 + 1);
  qword_10004A240 = v4;
  return 1;
}

void link_terminated()
{
  if (phase)
  {
    if (pap_logout_hook)
    {
      pap_logout_hook();
    }

    else if (byte_10004A208 == 1)
    {
      if (devnam ^ 0x7665642F | byte_100048CEC ^ 0x2F)
      {
        v0 = &devnam;
      }

      else
      {
        v0 = &unk_100048CED;
      }

      bzero(&v1, 0x280uLL);
      v1.ut_type = -16376;
      strncpy(v1.ut_line, v0, 0x20uLL);
      pututxline(&v1);
      byte_10004A208 = 0;
    }

    new_phase(0);
    notice("Connection terminated.");
  }
}

uint64_t link_down(uint64_t a1)
{
  result = notify(link_down_notifier, 0);
  byte_10004A20C = 0;
  if (byte_10004A210 == 1 && dword_10004A214 == 0)
  {
    update_link_stats(a1);
    byte_10004A210 = 0;
    result = sub_100000F78("/etc/ppp/auth-down");
  }

  v4 = protocols;
  if (protocols)
  {
    v5 = &off_100043898;
    do
    {
      if (*(v4 + 80))
      {
        v6 = *v4;
        if (v6 != 49185)
        {
          v7 = *(v4 + 5);
          if (v7)
          {
            result = v7(a1);
            v6 = *v4;
          }

          if (v6 >> 14 <= 2)
          {
            v8 = *(v4 + 7);
            if (v8)
            {
              result = v8(a1, "LCP down");
            }
          }
        }
      }

      v9 = *v5++;
      v4 = v9;
    }

    while (v9);
  }

  dword_10004A218 = 0;
  dword_10004A21C = 0;
  if (phase)
  {

    return new_phase(9);
  }

  return result;
}

uint64_t sub_100000F78(char *a1)
{
  v7[7] = 0;
  v2 = getuid();
  v3 = getpwuid(v2);
  if (!v3 || (pw_name = v3->pw_name) == 0)
  {
    v5 = getuid();
    pw_name = v8;
    slprintf(v8, 32, "%d", v5);
  }

  slprintf(v9, 32, "%d", baud_rate);
  v7[0] = a1;
  v7[1] = &ifname;
  v7[2] = peer_authname;
  v7[3] = pw_name;
  v7[4] = &devnam;
  v7[5] = v9;
  v7[6] = 0;
  result = run_program(a1, v7, 0, sub_100003B38, 0);
  dword_10004A214 = result;
  return result;
}

void link_established(uint64_t a1)
{
  v2 = 17 * a1;
  v3 = protocols;
  if (protocols)
  {
    v4 = &off_100043898;
    do
    {
      if (*v3 != 49185)
      {
        if (*(v3 + 80))
        {
          v5 = *(v3 + 4);
          if (v5)
          {
            v5(a1);
          }
        }
      }

      v6 = *v4++;
      v3 = v6;
    }

    while (v6);
  }

  v7 = &lcp_gotoptions[v2];
  v8 = auth_required;
  if (auth_required)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_10004A220 == 0;
  }

  if (!v9)
  {
    sub_1000013D4(a1, 0, 0);
    v8 = auth_required;
  }

  if (v8 && !v7[5] && !v7[6] && !v7[7])
  {
    if (qword_10004A220)
    {
      sub_1000013D4(a1, 0, 0);
    }

    else
    {
      if (*(&lcp_wantoptions + 68 * a1 + 5))
      {
        v19 = uselogin == 0;
      }

      else
      {
        v19 = 0;
      }

      if (!v19 || !sub_1000017B8(a1))
      {
        warning("peer refused to authenticate: terminating link");
        lcp_close(a1, "peer refused to authenticate");
        *status = 11;
        return;
      }
    }
  }

  v10 = &lcp_hisoptions[4 * v2];
  new_phase(5);
  if (v7[7])
  {
    EapAuthPeer(a1);
    v11 = 0;
    v12 = 32;
  }

  else if (v7[6])
  {
    v13 = v7[24];
    if (v13)
    {
      v14 = 129;
    }

    else if ((v13 & 2) != 0)
    {
      v14 = 128;
    }

    else
    {
      v14 = (v13 << 29 >> 31) & 5;
    }

    chap_auth_peer(a1, our_name, v14);
    v11 = 0;
    v12 = 8;
  }

  else if (v7[5])
  {
    upap_authpeer(a1);
    v11 = 0;
    v12 = 2;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  if (v10[7])
  {
    EapAuthWithPeer(a1);
    v15 = 16;
LABEL_44:
    v12 |= v15;
    dword_10004A22C[a1] = v12;
    auth_done[a1] = 0;
LABEL_45:
    v18 = auth_start_notify;

    notify(v18, v12);
    return;
  }

  if (v10[6])
  {
    v16 = v10[24];
    if (v16)
    {
      v17 = 129;
    }

    else if ((v16 & 2) != 0)
    {
      v17 = 128;
    }

    else
    {
      v17 = (v16 << 29 >> 31) & 5;
    }

    chap_auth_with_peer(a1, user, v17);
    v15 = 4;
    goto LABEL_44;
  }

  if (v10[5])
  {
    if (!passwd)
    {
      byte_10004A228 = 1;
      if (!sub_100001918(&passwd))
      {
        error("No secret found for PAP login");
      }
    }

    upap_authwithpeer(a1, user, &passwd);
    v15 = 1;
    goto LABEL_44;
  }

  dword_10004A22C[a1] = v12;
  auth_done[a1] = 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_45;
  }

  sub_100001A28(a1);
}

void *sub_1000013D4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v44 = a2;
  v6 = qword_10004A238[a1];
  if (v6)
  {
    free(v6);
  }

  qword_10004A238[a1] = 0;
  result = qword_10004A248;
  if (qword_10004A248)
  {
    do
    {
      v8 = *result;
      free(result);
      result = v8;
    }

    while (v8);
  }

  qword_10004A248 = a3;
  for (i = 0; v4; v4 = *v4)
  {
    ++i;
  }

  v10 = qword_10004A220;
  if (qword_10004A220)
  {
    v11 = 0;
    do
    {
      ++v11;
      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 + i;
  if (!v12)
  {
    return result;
  }

  result = malloc_type_malloc(12 * (v12 + 1), 0x10000403E1C8BA9uLL);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v40 = &ipcp_wantoptions + 52 * a1;
  v41 = a1;
  v14 = &v44;
  do
  {
    v15 = v14;
    v14 = *v14;
  }

  while (v14);
  *v15 = qword_10004A220;
  v16 = v44;
  if (!v44)
  {
    v42 = 0;
    v17 = 0;
    goto LABEL_68;
  }

  v42 = 0;
  v17 = 0;
  while (1)
  {
    v18 = v16[1];
    v19 = *v18;
    if (v19 == 42)
    {
      break;
    }

    if (v19 == 45 && !v18[1])
    {
      goto LABEL_68;
    }

LABEL_23:
    v20 = v13 + 3 * v17;
    *v20 = 1;
    if (*v18 == 33)
    {
      *v20 = 0;
      ++v18;
    }

    v21 = strchr(v18, 47);
    v22 = v21;
    if (v21)
    {
      __endptr = 0;
      v23 = strtol(v21 + 1, &__endptr, 10);
      v24 = "invalid address length %v in auth. address list";
      if ((v23 - 33) < 0xFFFFFFE0 || ((v25 = *__endptr, v25 != 43) ? (v26 = 0) : (v26 = ifunit + 1, v25 = __endptr[1]), v24 = "invalid address length syntax: %v", v25))
      {
        warning(v24, v22 + 1);
        goto LABEL_64;
      }

      *v22 = 0;
      v27 = -1 << (32 - v23);
    }

    else
    {
      v26 = 0;
      v27 = -1;
    }

    v28 = gethostbyname(v18);
    if (v28 && v28->h_addrtype == 2)
    {
      v29 = **v28->h_addr_list;
      if (v22)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v30 = getnetbyname(v18);
      if (!v30 || v30->n_addrtype != 2)
      {
        v29 = inet_addr(v18);
        if (!v22)
        {
          goto LABEL_52;
        }

LABEL_51:
        *v22 = 47;
        goto LABEL_52;
      }

      v29 = htonl();
      if (v22)
      {
        goto LABEL_51;
      }

      v31 = ntohl();
      if (v31 >> 29 == 6)
      {
        v32 = -256;
      }

      else
      {
        v32 = v27;
      }

      if (v31 >> 30 == 2)
      {
        v33 = -65536;
      }

      else
      {
        v33 = v32;
      }

      if (v31 < 0)
      {
        v27 = v33;
      }

      else
      {
        v27 = -16777216;
      }
    }

LABEL_52:
    if (v29 == -1)
    {
      warning("unknown host %s in auth. address list");
    }

    else
    {
      if (!v26)
      {
        goto LABEL_56;
      }

      if (v26 < ~v27)
      {
        ntohl();
        v29 = htonl();
        v27 = -1;
LABEL_56:
        v34 = htonl();
        v20[1] = v34 & v29;
        v20[2] = v34;
        ++v17;
        v35 = v42;
        if (v42)
        {
          v36 = 0;
        }

        else
        {
          v36 = v27 == -1;
        }

        if (v36)
        {
          v35 = v29;
        }

        v42 = v35;
        goto LABEL_64;
      }

      warning("interface unit %d too large for subnet %v", ifunit, v18);
    }

LABEL_64:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_68;
    }
  }

  if (v18[1])
  {
    goto LABEL_23;
  }

  v37 = v13 + 12 * v17;
  *(v37 + 2) = 0;
  *v37 = 1;
  ++v17;
LABEL_68:
  *v15 = 0;
  v38 = v13 + 12 * v17;
  *v38 = 0;
  *(v38 + 2) = 0;
  result = v41;
  qword_10004A238[v41] = v13;
  if (v42)
  {
    v39 = *(v40 + 8);
    if (!v39 || (result = auth_ip_addr(v41, v39), !result))
    {
      *(v40 + 8) = v42;
      if (v17 >= 2)
      {
        v40[8] = 1;
      }
    }
  }

  return result;
}

uint64_t sub_1000017B8(void *a1)
{
  v12 = 0;
  v13 = 0;
  if (null_auth_hook)
  {
    v2 = null_auth_hook(&v13, &v12);
    if (v2 > 0)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
  v3 = fopen("/etc/ppp/pap-secrets", "r");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000031D0(v3);
  v5 = sub_100003248(v4, &unk_10002F9F2, our_name, v14, &v13, &v12, "/etc/ppp/pap-secrets", 0);
  v6 = v14[0] || v5 < 0;
  v2 = !v6;
  bzero(v14, 0x400uLL);
  fclose(v4);
  if (v2 == 1)
  {
LABEL_11:
    sub_1000013D4(a1, v13, v12);
  }

  else
  {
    v10 = v12;
    if (v12)
    {
      do
      {
        v11 = *v10;
        free(v10);
        v10 = v11;
      }

      while (v11);
    }

    else
    {
      v2 = 0;
    }
  }

  v7 = v13;
  if (v13)
  {
    do
    {
      v8 = *v7;
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  return v2;
}

uint64_t sub_100001918(char *a1)
{
  if (!pap_passwd_hook || (result = pap_passwd_hook(user, a1), (result & 0x80000000) != 0))
  {
    result = fopen("/etc/ppp/pap-secrets", "r");
    if (result)
    {
      v3 = result;
      sub_1000031D0(result);
      if (remote_name)
      {
        v4 = &remote_name;
      }

      else
      {
        v4 = 0;
      }

      v5 = sub_100003248(v3, user, v4, __source, 0, 0, "/etc/ppp/pap-secrets", 0);
      fclose(v3);
      if (v5 < 0)
      {
        return 0;
      }

      else
      {
        if (a1)
        {
          strlcpy(a1, __source, 0x100uLL);
        }

        return 1;
      }
    }
  }

  return result;
}

void sub_100001A28(uint64_t result)
{
  if ((phase - 7) >= 2)
  {
    v2 = result;
    v3 = &lcp_gotoptions[17 * result];
    if (remote_number)
    {
      notice("peer from calling number %q authorized", &remote_number);
    }

    if (v3[6] || v3[5] || v3[7])
    {
      notify(auth_up_notifier, 0);
      byte_10004A20C = 1;
      if ((byte_10004A210 & 1) == 0 && !dword_10004A214)
      {
        byte_10004A210 = 1;
        sub_100000F78("/etc/ppp/auth-up");
      }
    }

    if (qword_10004A248)
    {
      options_from_list(qword_10004A248, 1);
      v4 = qword_10004A248;
      if (qword_10004A248)
      {
        do
        {
          v5 = *v4;
          free(v4);
          v4 = v5;
        }

        while (v5);
      }

      qword_10004A248 = 0;
    }

    start_networks(v2);
  }
}

BOOL unexpected_network_packet(int a1, __int16 a2)
{
  v2 = phase;
  if (phase == 5 && a2 < 0 && lcp_hisoptions[68 * a1 + 7])
  {
    EapLostSuccess(a1);
    v2 = phase;
  }

  return v2 < 6;
}

void start_networks(int a1)
{
  new_phase(7);
  v2 = protocols;
  if (protocols)
  {
    v3 = &off_100043898;
    do
    {
      v4 = *v2;
      if (v4 == 33021 || v4 == 32851)
      {
        if (*(v2 + 80))
        {
          v6 = *(v2 + 6);
          if (v6)
          {
            v6(0);
          }
        }
      }

      v7 = *v3++;
      v2 = v7;
    }

    while (v7);
  }

  if (!(ecp_gotoptions[8 * a1] | ccp_gotoptions[14 * a1 + 6]))
  {

    continue_networks();
  }
}

void continue_networks()
{
  v0 = protocols;
  if (protocols)
  {
    v1 = &off_100043898;
    do
    {
      v2 = *v0;
      if ((*v0 >> 14) <= 2u && v2 != 32851 && v2 != 33021)
      {
        if (*(v0 + 80))
        {
          v6 = *(v0 + 6);
          if (v6)
          {
            v6(0);
            ++dword_10004A218;
          }
        }
      }

      v5 = *v1++;
      v0 = v5;
    }

    while (v5);
  }

  if (!dword_10004A218)
  {

    lcp_close(0, "No network protocols running");
  }
}

void check_protocols_ready()
{
  if (dword_10004A218)
  {
    v0 = protocols;
    if (protocols)
    {
      v1 = &off_100043898;
      while (1)
      {
        v2 = *v0;
        v3 = (*v0 >> 14) > 2u || v2 == 32851;
        v4 = v3 || v2 == 33021;
        if (!v4 && *(v0 + 80) && *(v0 + 6))
        {
          v6 = (*(v0 + 19))(0);
          if (v6 != 9 && v6 != 3)
          {
            break;
          }
        }

        v5 = *v1++;
        v0 = v5;
        if (!v5)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v8 = protocolsready_notifier;

      notify(v8, 0);
    }
  }
}

void auth_peer_success(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (acl_hook && !acl_hook(a4, a5))
  {
    lcp_close(a1, "Authorization failed");
    *status = 23;
    return;
  }

  v12[0] = a2;
  v12[1] = a3;
  v13 = a4;
  v14 = v5;
  notify_with_ptr(auth_peer_success_notify, v12);
  switch(a2)
  {
    case 49187:
      v10 = 2;
      break;
    case 49703:
      v10 = 32;
      break;
    case 49699:
      switch(a3)
      {
        case 129:
          v10 = 2056;
          break;
        case 128:
          v10 = 520;
          break;
        case 5:
          v10 = 136;
          break;
        default:
          v10 = 8;
          break;
      }

      break;
    default:
      warning("auth_peer_success: unknown protocol %x", a2);
      return;
  }

  if (v5 >= 0xFF)
  {
    v5 = 255;
  }

  __memcpy_chk();
  peer_authname[v5] = 0;
  script_setenv("PEERNAME", peer_authname);
  auth_done[a1] |= v10;
  v11 = (dword_10004A22C[a1] & ~v10) == 0;
  dword_10004A22C[a1] &= ~v10;
  if (v11)
  {
    sub_100001A28(a1);
  }
}

void auth_withpeer_fail(int a1, uint64_t a2)
{
  notify(auth_withpeer_fail_notify, a2);
  if (byte_10004A228 == 1)
  {
    xmmword_1000495E4 = 0u;
    unk_1000495F4 = 0u;
    xmmword_1000495C4 = 0u;
    unk_1000495D4 = 0u;
    xmmword_1000495A4 = 0u;
    unk_1000495B4 = 0u;
    xmmword_100049584 = 0u;
    unk_100049594 = 0u;
    xmmword_100049564 = 0u;
    unk_100049574 = 0u;
    xmmword_100049544 = 0u;
    unk_100049554 = 0u;
    xmmword_100049524 = 0u;
    unk_100049534 = 0u;
    passwd = 0u;
    unk_100049514 = 0u;
  }

  lcp_close(a1, "Failed to authenticate ourselves to peer");
  *status = 19;
}

void auth_withpeer_cancelled(int a1)
{
  if (byte_10004A228 == 1)
  {
    xmmword_1000495E4 = 0u;
    unk_1000495F4 = 0u;
    xmmword_1000495C4 = 0u;
    unk_1000495D4 = 0u;
    xmmword_1000495A4 = 0u;
    unk_1000495B4 = 0u;
    xmmword_100049584 = 0u;
    unk_100049594 = 0u;
    xmmword_100049564 = 0u;
    unk_100049574 = 0u;
    xmmword_100049544 = 0u;
    unk_100049554 = 0u;
    xmmword_100049524 = 0u;
    unk_100049534 = 0u;
    passwd = 0u;
    unk_100049514 = 0u;
  }

  lcp_close(a1, "User cancelled authentication");
  *status = 5;
}

void auth_withpeer_success(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  notify(auth_withpeer_success_notify, a2);
  switch(v4)
  {
    case 49187:
      if (byte_10004A228 == 1)
      {
        xmmword_1000495E4 = 0u;
        unk_1000495F4 = 0u;
        xmmword_1000495C4 = 0u;
        unk_1000495D4 = 0u;
        xmmword_1000495A4 = 0u;
        unk_1000495B4 = 0u;
        xmmword_100049584 = 0u;
        unk_100049594 = 0u;
        xmmword_100049564 = 0u;
        unk_100049574 = 0u;
        xmmword_100049544 = 0u;
        unk_100049554 = 0u;
        xmmword_100049524 = 0u;
        unk_100049534 = 0u;
        passwd = 0u;
        unk_100049514 = 0u;
      }

      v6 = 1;
      break;
    case 49703:
      v6 = 16;
      break;
    case 49699:
      switch(a3)
      {
        case 129:
          v6 = 1028;
          break;
        case 128:
          v6 = 260;
          break;
        case 5:
          v6 = 68;
          break;
        default:
          v6 = 4;
          break;
      }

      break;
    default:
      warning("auth_withpeer_success: unknown protocol %x", v4);
      v6 = 0;
      break;
  }

  auth_done[a1] |= v6;
  v7 = dword_10004A22C[a1] & ~v6;
  dword_10004A22C[a1] = v7;
  if (!v7)
  {

    sub_100001A28(a1);
  }
}

void option_change_idle()
{
  untimeout(check_idle, 0);
  if (phase == 8)
  {
    v0 = idle_time_hook ? idle_time_hook(0) : idle_time_limit;
    if (v0 >= 1)
    {

      timeout(check_idle);
    }
  }
}

void check_idle()
{
  v2 = 0;
  if (get_idle_time(0, &v2))
  {
    if (idle_time_hook)
    {
      v0 = idle_time_hook(&v2);
    }

    else
    {
      if (noidlerecv)
      {
        v1 = v2;
      }

      else if (noidlesend)
      {
        v1 = HIDWORD(v2);
      }

      else if (v2 >= HIDWORD(v2))
      {
        v1 = HIDWORD(v2);
      }

      else
      {
        v1 = v2;
      }

      v0 = idle_time_limit - v1;
    }

    if (v0 <= 0)
    {
      notice("Terminating connection due to lack of activity.");
      lcp_close(0, "Link inactive");
      need_holdoff = 0;
      *status = 12;
    }

    else
    {
      timeout(check_idle);
    }
  }
}

void np_up()
{
  if (!dword_10004A21C)
  {
    *status = 0;
    unsuccess = 0;
    new_phase(8);
    if (idle_time_hook)
    {
      v0 = idle_time_hook(0);
    }

    else
    {
      v0 = idle_time_limit;
    }

    if (v0 >= 1)
    {
      timeout(check_idle);
    }

    if (maxconnect >= 1)
    {
      timeout(sub_1000024B0);
    }

    if (updetach)
    {
      v1 = nodetach == 0;
    }

    else
    {
      v1 = 0;
    }

    if (v1)
    {
      detach();
    }
  }

  ++dword_10004A21C;

  check_protocols_ready();
}

void sub_1000024B0()
{
  info("Connect time expired");
  lcp_close(0, "Connect time expired");
  *status = 13;
}

void np_down()
{
  if (!--dword_10004A21C)
  {
    untimeout(check_idle, 0);
    untimeout(sub_1000024B0, 0);
    if (phase != 9)
    {

      new_phase(7);
    }
  }
}

void np_finished()
{
  if (dword_10004A218-- <= 1)
  {
    lcp_close(0, "No network protocols running");
  }

  check_protocols_ready();
}

void auth_hold()
{
  untimeout(check_idle, 0);

  untimeout(sub_1000024B0, 0);
}

void auth_cont()
{
  if (idle_time_hook)
  {
    v0 = idle_time_hook(0);
  }

  else
  {
    v0 = idle_time_limit;
  }

  if (v0 >= 1)
  {
    timeout(check_idle);
  }

  if (maxconnect >= 1)
  {

    timeout(sub_1000024B0);
  }
}

uint64_t auth_check_options()
{
  if (our_name[0])
  {
    v0 = usehostname == 0;
  }

  else
  {
    v0 = 0;
  }

  if (!v0)
  {
    __strlcpy_chk();
  }

  if (!user[0])
  {
    __strlcpy_chk();
  }

  if (!(auth_required | allow_any_ip) && have_route_to() && !privileged)
  {
    auth_required = 1;
    byte_10004A230 = 1;
  }

  if (byte_100047928)
  {
    byte_100047916 = 1;
  }

  if (!auth_required)
  {
    byte_100047928 = 0;
    *&byte_100047915 = 0;
    byte_100047917 = 0;
    goto LABEL_19;
  }

  allow_any_ip = 0;
  if (!byte_100047916)
  {
    if (byte_100047915)
    {
LABEL_28:
      v3 = 0;
      goto LABEL_29;
    }

    if (!byte_100047917)
    {
      byte_100047928 = 7;
      *&byte_100047915 = 257;
      byte_100047917 = 1;
      goto LABEL_28;
    }

LABEL_19:
    v3 = 0;
    goto LABEL_20;
  }

  v3 = 0;
  if (!byte_100047915)
  {
    goto LABEL_21;
  }

LABEL_29:
  if (uselogin || sub_100002940(&v3))
  {
    goto LABEL_35;
  }

  if (byte_100047916)
  {
LABEL_21:
    if (explicit_remote)
    {
      v1 = &remote_name;
    }

    else
    {
      v1 = 0;
    }

    if (sub_100002A68(v1, our_name, 1, &v3) || byte_100047917)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_20:
  if (byte_100047917)
  {
    goto LABEL_21;
  }

LABEL_33:
  if (auth_required && !qword_10004A220)
  {
    if (byte_10004A230 == 1)
    {
      option_error("By default the remote system is required to authenticate itself");
      option_error("(because this system has a default route to the internet)");
    }

    else if (explicit_remote)
    {
      option_error("The remote system (%s) is required to authenticate itself");
    }

    else
    {
      option_error("The remote system is required to authenticate itself");
    }

    option_error("but I couldn't find any suitable secret (password) for it to use to do so.");
    if (v3)
    {
      option_error("(None of the available passwords would let it use an IP address.)");
    }

    exit(1);
  }

LABEL_35:
  result = auth_number();
  if (!result)
  {
    warning("calling number %q is not authorized", &remote_number);
    exit(24);
  }

  return result;
}

uint64_t sub_100002940(_DWORD *a1)
{
  if (!pap_check_hook || (v2 = pap_check_hook(), (v2 & 0x80000000) != 0))
  {
    v3 = fopen("/etc/ppp/pap-secrets", "r");
    v2 = v3;
    if (v3)
    {
      v11 = 0;
      if (explicit_remote)
      {
        v4 = &remote_name;
      }

      else
      {
        v4 = 0;
      }

      v5 = sub_100003248(v3, v4, our_name, 0, &v11, 0, "/etc/ppp/pap-secrets", 0);
      fclose(v2);
      v6 = v11;
      if ((v5 & 0x80000000) == 0)
      {
        if (v11)
        {
          v7 = v11;
          while (1)
          {
            v8 = *v7[1];
            if (v8 != 33)
            {
              break;
            }

            v7 = *v7;
            if (!v7)
            {
              goto LABEL_14;
            }
          }

          if (v8 != 45)
          {
            v2 = 1;
            do
            {
LABEL_18:
              v9 = *v6;
              free(v6);
              v6 = v9;
            }

            while (v9);
            return v2;
          }
        }

LABEL_14:
        if (a1)
        {
          v2 = 0;
          *a1 = 1;
          if (!v6)
          {
            return v2;
          }

          goto LABEL_18;
        }
      }

      v2 = 0;
      if (!v11)
      {
        return v2;
      }

      goto LABEL_18;
    }
  }

  return v2;
}

FILE *sub_100002A68(const char *a1, const char *a2, int a3, _DWORD *a4)
{
  if (!chap_check_hook || (result = chap_check_hook(), (result & 0x80000000) != 0))
  {
    result = fopen("/etc/ppp/chap-secrets", "r");
    if (result)
    {
      v9 = result;
      if (a1 && !*a1)
      {
        a1 = 0;
      }

      else if (a2 && !*a2)
      {
        a2 = 0;
      }

      v15 = 0;
      v10 = sub_100003248(result, a1, a2, 0, &v15, 0, "/etc/ppp/chap-secrets", 0);
      fclose(v9);
      v11 = v15;
      if (a3 && (v10 & 0x80000000) == 0)
      {
        if (!v15)
        {
          goto LABEL_19;
        }

        v12 = v15;
        while (1)
        {
          v13 = *v12[1];
          if (v13 != 33)
          {
            break;
          }

          v12 = *v12;
          if (!v12)
          {
            goto LABEL_19;
          }
        }

        if (v13 == 45)
        {
LABEL_19:
          if (a4)
          {
            *a4 = 1;
          }

          v10 = -1;
        }
      }

      if (v11)
      {
        do
        {
          v14 = *v11;
          free(v11);
          v11 = v14;
        }

        while (v14);
      }

      return (v10 >= 0);
    }
  }

  return result;
}

uint64_t auth_number()
{
  v0 = qword_10004A240;
  if (qword_10004A240)
  {
    while (1)
    {
      v1 = strlen(*(v0 + 8));
      if (!strncasecmp(*(v0 + 8), &remote_number, v1 - (*(*(v0 + 8) + v1 - 1) == 42)))
      {
        break;
      }

      v0 = *v0;
      if (!v0)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t auth_reset(uint64_t result)
{
  v1 = &lcp_gotoptions[17 * result];
  v2 = &lcp_allowoptions + 68 * result;
  if (refuse_pap)
  {
    v3 = 0;
  }

  else if (passwd)
  {
    v3 = 1;
  }

  else
  {
    result = sub_100001918(0);
    v3 = result != 0;
  }

  v2[5] = v3;
  if (refuse_chap)
  {
    v4 = refuse_mschap == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || refuse_mschap_v2 == 0)
  {
    if (passwd)
    {
      v6 = 1;
    }

    else
    {
      if (explicit_remote)
      {
        v7 = &remote_name;
      }

      else
      {
        v7 = 0;
      }

      result = sub_100002A68(user, v7, 0, 0);
      v6 = result != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v2[6] = v6;
  v2[7] = refuse_eap == 0;
  if (*(v1 + 5))
  {
    v8 = uselogin == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = sub_100002940(0);
    if (!result)
    {
      *(v1 + 5) = 0;
    }
  }

  if (*(v1 + 6))
  {
    if (explicit_remote)
    {
      v9 = &remote_name;
    }

    else
    {
      v9 = 0;
    }

    result = sub_100002A68(v9, our_name, 1, 0);
    if (!result)
    {
      *(v1 + 6) = 0;
    }
  }

  return result;
}

uint64_t check_passwd(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = 0;
  v35 = 0;
  slprintf(__s1, 256, "%.*v", a5, a4);
  slprintf(v37, 256, "%.*v", a3, a2);
  *a6 = &unk_10002F9F2;
  if (pap_auth_hook)
  {
    v10 = pap_auth_hook(v37, __s1, a6, &v35, &v34);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = v10;
      if (v10)
      {
        sub_1000013D4(a1, v35, v34);
      }

      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      *__s1 = 0u;
      v12 = v35;
      if (v35)
      {
        do
        {
          v13 = *v12;
          free(v12);
          v12 = v13;
        }

        while (v13);
      }

      v14 = v34;
      if (v34)
      {
        do
        {
          v15 = *v14;
          free(v14);
          v14 = v15;
        }

        while (v15);
      }

      if (v11)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }

  v34 = 0;
  v35 = 0;
  v17 = fopen("/etc/ppp/pap-secrets", "r");
  if (!v17)
  {
    error("Can't open PAP password file %s: %m", "/etc/ppp/pap-secrets");
    goto LABEL_36;
  }

  v18 = v17;
  sub_1000031D0(v17);
  if ((sub_100003248(v18, v37, our_name, __s2, &v35, &v34, "/etc/ppp/pap-secrets", 0) & 0x80000000) != 0)
  {
    warning("no PAP secret found for %s", v37);
LABEL_34:
    fclose(v18);
    goto LABEL_36;
  }

  v20 = *__s2 != 1735355456 || *&__s2[3] != 7235943;
  if (uselogin || !v20)
  {
    v22 = getpwnam(v37);
    endpwent();
    if (!v22 || (pw_passwd = v22->pw_passwd) == 0 || strlen(v22->pw_passwd) < 2)
    {
      v21 = 1;
      goto LABEL_29;
    }

    v32 = crypt(__s1, pw_passwd);
    v21 = 1;
    if (strcmp(v32, v22->pw_passwd))
    {
      goto LABEL_29;
    }

    if (devnam ^ 0x7665642F | byte_100048CEC ^ 0x2F)
    {
      v33 = &devnam;
    }

    else
    {
      v33 = &unk_100048CED;
    }

    bzero(&v54, 0x280uLL);
    v54.ut_type = -32762;
    strncpy(v54.ut_line, v33, 0x20uLL);
    pututxline(&v54);
    info("user %s logged in", v37);
    byte_10004A208 = 1;
  }

  v21 = 0;
LABEL_29:
  if (__s2[0] && v20 && (cryptpap || strcmp(__s1, __s2)))
  {
    v24 = crypt(__s1, __s2);
    if (strcmp(v24, __s2))
    {
      goto LABEL_34;
    }
  }

  fclose(v18);
  if (!v21)
  {
    dword_10004A234 = 0;
    if (!**a6)
    {
      *a6 = "Login ok";
    }

    sub_1000013D4(a1, v35, v34);
    v16 = 2;
    goto LABEL_45;
  }

LABEL_36:
  if (!**a6)
  {
    *a6 = "Login incorrect";
  }

  v25 = dword_10004A234;
  v26 = ++dword_10004A234;
  if (v25 >= 10)
  {
    warning("%d LOGIN FAILURES ON %s, %s", v26, &devnam, v37);
    lcp_close(a1, "login failed");
    v26 = dword_10004A234;
  }

  if (v26 >= 4)
  {
    sleep(5 * v26 - 15);
  }

  v27 = v34;
  if (v34)
  {
    do
    {
      v28 = *v27;
      free(v27);
      v27 = v28;
    }

    while (v28);
  }

  v16 = 3;
LABEL_45:
  v29 = v35;
  if (v35)
  {
    do
    {
      v30 = *v29;
      free(v29);
      v29 = v30;
    }

    while (v30);
  }

  return v16;
}

void sub_1000031D0(FILE *a1)
{
  memset(&v2, 0, sizeof(v2));
  v1 = fileno(a1);
  if (fstat(v1, &v2) < 0)
  {
    warning("cannot stat secret file %s: %m");
  }

  else if ((v2.st_mode & 0x3F) != 0)
  {
    warning("Warning - secret file %s has world and/or group access");
  }
}

uint64_t sub_100003248(FILE *a1, const char *a2, const char *a3, char *a4, void **a5, void *a6, const char *a7, int a8)
{
  v9 = a6;
  v10 = a5;
  v48 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v49 = 0;
  v50 = 0;
  if (!getword(a1, &__s1, &v50 + 1, a7))
  {
    return 0xFFFFFFFFLL;
  }

  v45 = 0;
  __dst = a4;
  v15 = 1;
  HIDWORD(v50) = 1;
  v16 = 0xFFFFFFFFLL;
  do
  {
    v17 = v16;
    v18 = 1;
    do
    {
      while (1)
      {
        do
        {
          while (1)
          {
            if (!v18)
            {
              do
              {
                v19 = getword(a1, &__s1, &v50 + 1, a7);
                v15 = HIDWORD(v50);
              }

              while (v19 && !HIDWORD(v50));
            }

            if (!v15)
            {
LABEL_61:
              v16 = v17;
              goto LABEL_62;
            }

            if (!a2)
            {
              break;
            }

            v20 = strcmp(&__s1, a2);
            v21 = __s1;
            v22 = v54[0];
            if (!v20)
            {
              goto LABEL_18;
            }

            if (__s1 == 42 && !v54[0])
            {
              v21 = 42;
              goto LABEL_18;
            }

            v15 = 0;
            v18 = 0;
            HIDWORD(v50) = 0;
          }

          v21 = __s1;
          v22 = v54[0];
LABEL_18:
          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = v21 == 42;
          }

          if (v23)
          {
            v16 = 0;
          }

          else
          {
            v16 = 2;
          }

          if (!getword(a1, &__s1, &v50 + 1, a7))
          {
            goto LABEL_61;
          }

          v15 = HIDWORD(v50);
          v18 = HIDWORD(v50);
        }

        while (HIDWORD(v50));
        if (__s1 == 42 && !v54[0])
        {
          break;
        }

        if (!a3 || !strcmp(&__s1, a3))
        {
          v16 = v16 | 1;
          break;
        }

LABEL_46:
        v15 = HIDWORD(v50);
        v18 = HIDWORD(v50);
      }

      if (v16 <= v17)
      {
        goto LABEL_46;
      }

      if (!getword(a1, &__s1, &v50 + 1, a7))
      {
        goto LABEL_61;
      }

      v15 = HIDWORD(v50);
      v18 = HIDWORD(v50);
    }

    while (HIDWORD(v50));
    if (a8)
    {
      v24 = strchr(&__s1, 58);
      if (!v24 || !strchr(v24 + 1, 58))
      {
        goto LABEL_46;
      }
    }

    v44 = v9;
    if (!__dst)
    {
      goto LABEL_49;
    }

    if (__s1 != 64 || v54[0] != 47)
    {
      goto LABEL_48;
    }

    __strlcpy_chk();
    v25 = fopen(__filename, "r");
    if (!v25)
    {
      warning("can't open indirect secret file %s", __filename);
      goto LABEL_45;
    }

    v26 = v25;
    sub_1000031D0(v25);
    if (!getword(v26, &__s1, &v50, __filename))
    {
      warning("no secret in indirect secret file %s", __filename);
      fclose(v26);
LABEL_45:
      v9 = v44;
      goto LABEL_46;
    }

    fclose(v26);
LABEL_48:
    __strlcpy_chk();
LABEL_49:
    v27 = &v48;
    v43 = v10;
    if (getword(a1, &__s1, &v50 + 1, a7) && !HIDWORD(v50))
    {
      v28 = &v48;
      do
      {
        v29 = (strlen(&__s1) + 1);
        v30 = malloc_type_malloc(v29 + 16, 0x30040E4270A41uLL);
        if (!v30)
        {
          novm("authorized addresses");
        }

        v27 = v30;
        v31 = v30 + 16;
        v27[1] = v31;
        strlcpy(v31, &__s1, v29);
        *v28 = v27;
        if (!getword(a1, &__s1, &v50 + 1, a7))
        {
          break;
        }

        v28 = v27;
      }

      while (!HIDWORD(v50));
    }

    *v27 = 0;
    v32 = v45;
    if (v45)
    {
      do
      {
        v33 = *v32;
        free(v32);
        v32 = v33;
      }

      while (v33);
    }

    v45 = v48;
    v49 = v48;
    v9 = v44;
    if (__dst)
    {
      strlcpy(__dst, __source, 0x400uLL);
    }

    v15 = HIDWORD(v50);
    v10 = v43;
  }

  while (HIDWORD(v50));
LABEL_62:
  v34 = v49;
  if (!v49)
  {
LABEL_68:
    if (!v9)
    {
      goto LABEL_71;
    }

    v38 = 0;
LABEL_70:
    *v9 = v38;
    goto LABEL_71;
  }

  v35 = &v49;
  while (1)
  {
    v36 = v35;
    v35 = v34;
    v37 = v34[1];
    if (*v37 == 45 && v37[1] == 45 && !v37[2])
    {
      break;
    }

    v34 = *v35;
    if (!*v35)
    {
      goto LABEL_68;
    }
  }

  v38 = *v35;
  free(v35);
  *v36 = 0;
  if (v9)
  {
    goto LABEL_70;
  }

  if (v38)
  {
    do
    {
      v42 = *v38;
      free(v38);
      v38 = v42;
    }

    while (v42);
  }

LABEL_71:
  v39 = v49;
  if (v10)
  {
    *v10 = v49;
  }

  else if (v49)
  {
    do
    {
      v40 = *v39;
      free(v39);
      v39 = v40;
    }

    while (v40);
  }

  return v16;
}

uint64_t get_secret(void *a1, const char *a2, const char *a3, void *a4, int *a5, int a6)
{
  v21 = 0;
  v22 = 0;
  if (a6 || !passwd)
  {
    if (a6 || !chap_passwd_hook)
    {
      v22 = 0;
      __s[0] = 0;
      v12 = fopen("/etc/ppp/chap-secrets", "r");
      if (v12)
      {
        v13 = v12;
        sub_1000031D0(v12);
        v14 = sub_100003248(v13, a2, a3, __s, &v22, &v21, "/etc/ppp/chap-secrets", 0);
        fclose(v13);
        if ((v14 & 0x80000000) == 0)
        {
          if (a6)
          {
            sub_1000013D4(a1, v22, v21);
          }

          else
          {
            v16 = v21;
            if (v21)
            {
              do
              {
                v17 = *v16;
                free(v16);
                v16 = v17;
              }

              while (v17);
            }
          }

          v18 = v22;
          if (v22)
          {
            do
            {
              v19 = *v18;
              free(v18);
              v18 = v19;
            }

            while (v19);
          }

          goto LABEL_18;
        }
      }

      else
      {
        error("Can't open chap secret file %s: %m");
      }
    }

    else
    {
      if ((chap_passwd_hook(a2, __s) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      error("Unable to obtain CHAP password for %s on %s from plugin");
    }

    return 0;
  }

  __strlcpy_chk();
LABEL_18:
  v20 = strlen(__s);
  if (v20 >= 257)
  {
    error("Secret for %s on %s is too long", a2, a3);
    v20 = 256;
  }

  memcpy(a4, __s, v20);
  *a5 = v20;
  return 1;
}

uint64_t get_srp_secret(void *a1, const char *a2, const char *a3, char *__dst, int a5)
{
  if (!a5 && passwd)
  {
    strlcpy(__dst, &passwd, 0x400uLL);
    return 1;
  }

  v19 = 0;
  v11 = fopen("/etc/ppp/srp-secrets", "r");
  if (v11)
  {
    v12 = v11;
    v18 = 0;
    sub_1000031D0(v11);
    *__dst = 0;
    v13 = sub_100003248(v12, a2, a3, __dst, &v19, &v18, "/etc/ppp/srp-secrets", a5);
    fclose(v12);
    if ((v13 & 0x80000000) == 0)
    {
      if (a5)
      {
        sub_1000013D4(a1, v19, v18);
      }

      else
      {
        v14 = v18;
        if (v18)
        {
          do
          {
            v15 = *v14;
            free(v14);
            v14 = v15;
          }

          while (v15);
        }
      }

      v16 = v19;
      if (v19)
      {
        do
        {
          v17 = *v16;
          free(v16);
          v16 = v17;
        }

        while (v17);
      }

      return 1;
    }
  }

  else
  {
    error("Can't open srp secret file %s: %m", "/etc/ppp/srp-secrets");
  }

  return 0;
}

uint64_t auth_ip_addr(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = ntohl();
  if (v4 >> 28 == 15 || v4 == 2130706433 || (v4 & 0xF0000000) == -536870912)
  {
    return 0;
  }

  if (!allowed_address_hook || (result = allowed_address_hook(a2), (result & 0x80000000) != 0))
  {
    if ((auth_done[v3] & 0x20) == 0 || (result = EAPAllowedAddr(), (result & 0x80000000) != 0))
    {
      v8 = qword_10004A238[v3];
      if (!v8)
      {
        goto LABEL_18;
      }

      v9 = (v8 + 8);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9 & a2;
        v9 += 3;
      }

      while (v11 != v10);
      result = *(v9 - 5);
      if ((result & 0x80000000) != 0)
      {
LABEL_18:
        if (!auth_required)
        {
          if (allow_any_ip)
          {
            v12 = 0;
          }

          else
          {
            v12 = privileged == 0;
          }

          return !v12 || have_route_to() == 0;
        }

        return 0;
      }
    }
  }

  return result;
}

BOOL bad_ip_adrs(uint64_t a1)
{
  v1 = ntohl();
  v2 = v1 == 2130706433;
  if (v1 >> 28 == 14)
  {
    v2 = 1;
  }

  return v1 >> 28 == 15 || v2;
}

void sub_100003B38()
{
  dword_10004A214 = 0;
  if (byte_10004A210 == 1)
  {
    if (byte_10004A20C)
    {
      return;
    }

    v0 = "/etc/ppp/auth-down";
  }

  else
  {
    if (!byte_10004A20C)
    {
      return;
    }

    v0 = "/etc/ppp/auth-up";
  }

  byte_10004A210 ^= 1u;
  sub_100000F78(v0);
}

void sub_100003B84(int a1)
{
  v2 = &ccp_fsm + 80 * a1;
  *v2 = a1;
  *(v2 + 1) = 33021;
  *(v2 + 7) = off_100041E50;
  fsm_init(v2);
  v3 = 7 * a1;
  v4 = &ccp_wantoptions[v3];
  *(v4 + 3) = 0;
  *v4 = 0;
  v5 = &ccp_gotoptions[v3 * 2];
  *v5 = 0;
  *(v5 + 6) = 0;
  v6 = &ccp_allowoptions[v3];
  *(v6 + 3) = 0;
  *v6 = 0;
  v7 = (&ccp_hisoptions + v3 * 2);
  *v7 = 0;
  *(v7 + 6) = 0;
  word_10004764C = 257;
  word_100047668 = 257;
  ccp_wantoptions[0] = 257;
  dword_100047650 = 983055;
  ccp_allowoptions[0] = 257;
  dword_10004766C = 983055;
  byte_100047666 = 1;
}

void sub_100003C4C(uint64_t a1, char *a2, unsigned int a3)
{
  v5 = a1;
  v6 = &ccp_fsm + 80 * a1;
  v7 = *(v6 + 2);
  fsm_input(v6, a2, a3);
  if (v7 == 6)
  {
    if (*a2 == 6)
    {
      v8 = &ccp_gotoptions[14 * v5];
      if (!v8[1] && !*v8 && !v8[2] && !v8[3] && !v8[6])
      {

        sub_100003EFC(a1, "No compression negotiated");
      }
    }
  }

  else if (v7 == 9 && *a2 == 5 && *(v6 + 2) != 9)
  {
    notice("Compression disabled by peer.");
    if (ccp_gotoptions[14 * v5 + 6])
    {
      error("MPPE disabled, closing LCP");

      lcp_close(a1, "MPPE disabled by peer");
    }
  }
}

void sub_100003D9C(uint64_t a1)
{
  v1 = a1;
  ccp_flags_set(a1, 0, 0);
  fsm_protreject(&ccp_fsm + 80 * v1);
  if (ccp_gotoptions[14 * v1 + 6])
  {
    error("MPPE required but peer negotiation failed");

    lcp_close(v1, "MPPE required but peer negotiation failed");
  }
}

void sub_100003E50(uint64_t a1)
{
  v1 = a1;
  v2 = (&ccp_fsm + 80 * a1);
  if (v2[2] != 9)
  {
    ccp_flags_set(a1, 1, 0);
  }

  sub_1000047EC(v2);
  v3 = &ccp_gotoptions[14 * v1];
  if (!v3[1] && !*v3 && !v3[2] && !v3[3] && !v3[6])
  {
    v2[3] |= 4u;
  }

  fsm_open(v2);
}

void sub_100003EFC(uint64_t a1, char *a2)
{
  v3 = a1;
  ccp_flags_set(a1, 0, 0);

  fsm_close(&ccp_fsm + 80 * v3, a2);
}

uint64_t sub_100003F50(char *a1, unsigned int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = (v11 - 1);
  if (v13 <= 0xE && (v13 - 7) >= 6)
  {
    v14 = " %s";
  }

  else
  {
    v14 = " code=0x%x";
  }

  a3(a4, v14);
  (a3)(a4, " id=0x%x", v12);
  v15 = (a1 + 4);
  if (v13 < 4)
  {
    if (v6 >= 6)
    {
      while (1)
      {
        v16 = v15[1];
        if (v16 < 2 || v7 < v16)
        {
          goto LABEL_76;
        }

        v18 = *v15;
        a3(a4, " <");
        if (v18 > 20)
        {
          if (v18 == 21)
          {
            v19 = v15;
            if (v16 != 2)
            {
              (a3)(a4, "bsd v%d %d", v15[2] >> 5, v15[2] & 0x1F);
              v19 = v15 + 3;
            }
          }

          else if (v18 == 24 || (v19 = v15, v18 == 26))
          {
            v19 = v15;
            if (v16 >= 4)
            {
              v33 = &unk_10002F9F2;
              if (v18 == 24)
              {
                v33 = "(old#)";
              }

              (a3)(a4, "deflate%s %d", v33, (v15[2] >> 4) + 8);
              if ((v15[2] & 0xF) != 8)
              {
                (a3)(a4, " method %d", v15[2] & 0xF);
              }

              if (v15[3])
              {
                (a3)(a4, " check %d", v15[3]);
              }

              v19 = v15 + 4;
            }
          }

          goto LABEL_64;
        }

        if (v18 == 1)
        {
          v34 = a4;
          v35 = "predictor 1";
        }

        else
        {
          if (v18 != 2)
          {
            v19 = v15;
            if (v18 == 18)
            {
              v19 = v15;
              if (v16 >= 6)
              {
                v20 = v15[2];
                v21 = v20 & 1;
                if (v15[3] || (v20 >= 2 ? (v22 = 64) : (v22 = 4 * v21), v15[4]))
                {
                  v22 = 64;
                }

                v23 = v15[5];
                v24 = v23 & 0xE | v22 & 0x40;
                v25 = v21 == 0;
                v26 = "+H";
                if (v25)
                {
                  v26 = "-H";
                }

                v27 = "+M";
                if (v23 >= 0)
                {
                  v27 = "-M";
                }

                v28 = "+S";
                if ((v15[5] & 0x40) == 0)
                {
                  v28 = "-S";
                }

                v29 = "+L";
                if ((v15[5] & 0x20) == 0)
                {
                  v29 = "-L";
                }

                v30 = "+D";
                if ((v15[5] & 0x10) == 0)
                {
                  v30 = "-D";
                }

                v25 = (v23 & 1) == 0;
                v31 = "+C";
                if (v25)
                {
                  v31 = "-C";
                }

                v32 = " +U";
                if (!v24)
                {
                  v32 = &unk_10002F9F2;
                }

                (a3)(a4, "mppe %s %s %s %s %s %s%s", v26, v27, v28, v29, v30, v31, v32);
                if (v24)
                {
                  (a3)(a4, " (%.2x %.2x %.2x %.2x)", v15[2], v15[3], v15[4], v15[5]);
                }

                v19 = v15 + 6;
              }
            }

            goto LABEL_64;
          }

          v34 = a4;
          v35 = "predictor 2";
        }

        a3(v34, v35);
        v19 = v15 + 2;
LABEL_64:
        if (v19 < &v15[v16])
        {
          v36 = &v15[v16];
          v37 = &v15[v16] - v19;
          do
          {
            v38 = *v19++;
            (a3)(a4, " %.2x", v38);
            --v37;
          }

          while (v37);
          v19 = v36;
        }

        v7 -= v16;
        a3(a4, ">");
        v15 = v19;
        if (v7 <= 1)
        {
          goto LABEL_75;
        }
      }
    }

LABEL_74:
    v19 = (a1 + 4);
LABEL_75:
    v15 = v19;
    if (v7 < 1)
    {
      return (v15 - a1);
    }

    goto LABEL_76;
  }

  if ((v11 - 5) >= 2)
  {
    goto LABEL_74;
  }

  if (v6 != 4)
  {
    if (*v15 - 32 > 0x5E)
    {
LABEL_76:
      v39 = v7 + 1;
      do
      {
        v40 = *v15++;
        (a3)(a4, " %.2x", v40);
        --v39;
      }

      while (v39 > 1);
      return (v15 - a1);
    }

    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v15) = v15 + v7;
  }

  return (v15 - a1);
}

void sub_1000043BC(uint64_t a1)
{
  v1 = (&ccp_fsm + 80 * a1);
  if (v1[2] == 9)
  {
    if (ccp_fatal_error())
    {
      error("Lost compression sync: disabling compression");
      ccp_flags_set(a1, 0, 0);
      fsm_close(v1, "Lost compression sync");
      if (ccp_gotoptions[14 * a1 + 6])
      {
        error("Too many MPPE errors, closing LCP");

        lcp_close(a1, "Too many MPPE errors");
      }
    }

    else
    {
      v3 = *v1;
      v4 = dword_10004A2A4[v3];
      if (v4)
      {
        v6 = v4 | 2;
      }

      else
      {
        v5 = *(v1 + 16) + 1;
        *(v1 + 16) = v5;
        *(v1 + 17) = v5;
        fsm_sdata(v1, 14, v5, 0, 0);
        timeout(sub_100006374);
        v3 = *v1;
        v6 = dword_10004A2A4[v3] | 1;
      }

      dword_10004A2A4[v3] = v6;
    }
  }
}

uint64_t sub_1000044EC(char **a1)
{
  __endptr = 0;
  v1 = *a1;
  v2 = strtol(*a1, &__endptr, 0);
  v3 = v2;
  v4 = __endptr;
  if (__endptr != v1 && *__endptr == 44)
  {
    v1 = __endptr + 1;
    v2 = strtol(__endptr + 1, &__endptr, 0);
    v4 = __endptr;
  }

  if (v4 == v1 || *v4 != 0)
  {
    option_error("invalid parameter '%s' for bsdcomp option");
    return 0;
  }

  v7 = (v3 - 9) < 7 || v3 == 0;
  if (!v7 || ((v2 - 9) >= 7 ? (v8 = v2 == 0) : (v8 = 1), !v8))
  {
    option_error("bsdcomp option values must be 0 or %d .. %d");
    return 0;
  }

  if (v3)
  {
    LOWORD(dword_100047650) = v3;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(ccp_wantoptions[0]) = v9;
  if (v2)
  {
    LOWORD(dword_10004766C) = v2;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(ccp_allowoptions[0]) = v10;
  if (v2 == v3)
  {
    slprintf(byte_10004A250, 8, "%d");
  }

  else
  {
    slprintf(byte_10004A250, 8, "%d,%d");
  }

  return 1;
}

uint64_t sub_100004648(char **a1)
{
  __endptr = 0;
  v1 = *a1;
  v2 = strtol(*a1, &__endptr, 0);
  v3 = v2;
  v4 = __endptr;
  if (__endptr == v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2;
    if (*__endptr == 44)
    {
      v1 = __endptr + 1;
      v6 = strtol(__endptr + 1, &__endptr, 0);
      v4 = __endptr;
      v5 = v6;
    }
  }

  if (v4 == v1 || *v4 != 0)
  {
    option_error("invalid parameter '%s' for deflate option");
    return 0;
  }

  v9 = (v3 - 8) < 8 || v3 == 0;
  if (!v9 || ((v5 - 8) >= 8 ? (v10 = v5 == 0) : (v10 = 1), !v10))
  {
    option_error("deflate option values must be 0 or %d .. %d");
    return 0;
  }

  if (v3 != 8 && v5 != 8)
  {
    goto LABEL_26;
  }

  v11 = 9;
  if (v5 == 8)
  {
    v5 = 9;
  }

  warning("deflate option value of %d changed to %d to avoid zlib bug", 8, 9);
  if (v3 != 8)
  {
LABEL_26:
    if (!v3)
    {
      v11 = 0;
      HIBYTE(ccp_wantoptions[0]) = 0;
      if (v5)
      {
        goto LABEL_29;
      }

LABEL_31:
      v12 = 0;
      goto LABEL_32;
    }

    v11 = v3;
  }

  HIBYTE(ccp_wantoptions[0]) = 1;
  HIWORD(dword_100047650) = v11;
  if (!v5)
  {
    goto LABEL_31;
  }

LABEL_29:
  HIWORD(dword_10004766C) = v5;
  v12 = 1;
LABEL_32:
  HIBYTE(ccp_allowoptions[0]) = v12;
  if (v11 == v5)
  {
    slprintf(byte_10004A258, 8, "%d");
  }

  else
  {
    slprintf(byte_10004A258, 8, "%d,%d");
  }

  return 1;
}

void sub_1000047EC(int *a1)
{
  v2 = 7 * *a1;
  v3 = &ccp_gotoptions[v2 * 2];
  v4 = &ccp_wantoptions[v2];
  *v3 = *v4;
  *(v3 + 6) = *(v4 + 3);
  v5 = *a1;
  dword_10004A260[v5] = 0;
  v6 = v3[6];
  if (!v3[6])
  {
LABEL_6:
    if (*v3)
    {
      *v14 = 789;
      v14[2] = 41;
      if (ccp_test(*a1, v14, 3, 0) <= 0)
      {
        *v3 = 0;
      }
    }

    if (v3[1])
    {
      if (v3[4])
      {
        *v14 = 1573914;
        if (ccp_test(*a1, v14, 4, 0) <= 0)
        {
          v3[4] = 0;
        }
      }

      if (v3[5])
      {
        *v14 = 1573912;
        if (ccp_test(*a1, v14, 4, 0) <= 0)
        {
          v3[5] = 0;
        }
      }

      if (!v3[4] && !v3[5])
      {
        v3[1] = 0;
      }
    }

    if (v3[2])
    {
      *v14 = 513;
      if (ccp_test(*a1, v14, 2, 0) <= 0)
      {
        v3[2] = 0;
      }
    }

    if (v3[3])
    {
      *v14 = 514;
      if (ccp_test(*a1, v14, 2, 0) <= 0)
      {
        v3[3] = 0;
      }
    }

    return;
  }

  v7 = v5;
  v8 = auth_done[v5];
  if ((v8 & 0x30) == 0)
  {
    v10 = 0;
    v11 = (v8 >> 8) & 0xF;
    do
    {
      v10 += v11 & 1;
      v12 = v11 > 1;
      v11 >>= 1;
    }

    while (v12);
    if (v10 >= 2)
    {
      error("MPPE required, but auth done in both directions.");
      goto LABEL_38;
    }

    if (!v10)
    {
      error("MPPE required, but MS-CHAP[v2] auth not performed.");
      goto LABEL_38;
    }

    if (!mppe_keys_set)
    {
      error("MPPE required, but keys are not available.  Possible plugin problem?");
      goto LABEL_38;
    }

    if ((v6 & 1) != 0 && (v8 & 0x300) != 0)
    {
      notice("Disabling 40-bit MPPE; MS-CHAP LM not supported");
      v6 = v3[6] & 0xFE;
      v3[6] &= ~1u;
      v5 = *a1;
      LOBYTE(ccp_wantoptions[7 * v5 + 3]) &= ~1u;
    }
  }

  if ((v6 & 3) != 0)
  {
    v9 = &ccp_allowoptions[7 * v7];
    *(v9 + 6) = v6;
    *v3 = 0;
    *v9 = 0;
    *v14 = 1554;
    v14[2] = ((v6 >> 2) & 1) == 0;
    *&v14[3] = 0;
    v15 = 32 * (v6 & 3);
    if (ccp_test(v5, v14, 22, 0) <= 0)
    {
      error("MPPE required, but kernel has no support.");
      lcp_close(*a1, "MPPE required but not available");
    }

    goto LABEL_6;
  }

  error("MPPE required, but both 40-bit and 128-bit disabled.");
LABEL_38:
  v13 = *a1;

  lcp_close(v13, "MPPE required but not available");
}

uint64_t sub_100004B34(int *a1)
{
  v1 = &ccp_gotoptions[14 * *a1];
  if (*v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  v3 = (v2 | (4 * (v1[1] != 0))) + 2 * (v1[2] != 0) + 2 * (v1[3] != 0);
  if (v1[6])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return (v3 + v4);
}

void sub_100004BA0(int *result, char *a2, _DWORD *a3)
{
  v6 = &ccp_gotoptions[14 * *result];
  v7 = a2;
  if (v6[6])
  {
    v17 = 1554;
    *a2 = 1554;
    a2[2] = (v6[6] & 4) == 0;
    *(a2 + 3) = 0;
    a2[5] = 0;
    v8 = (32 * v6[6]) & 0x40;
    a2[5] = v8;
    v9 = v6[6];
    if (v9)
    {
      a2[5] = v8 | 0x20;
      v9 = v6[6];
    }

    v18 = (v9 & 4) == 0;
    v19 = 0;
    v20 = 32 * (v9 & 3);
    v21 = mppe_recv_key;
    if (ccp_test(*result, &v17, 22, 0) < 1)
    {
      lcp_close(*result, "MPPE required but not available in kernel");
      v7 = a2;
    }

    else
    {
      v7 = a2 + 6;
    }
  }

  if (v6[1])
  {
    if (v6[4])
    {
      v10 = 26;
    }

    else
    {
      v10 = 24;
    }

    *v7 = v10;
    v7[1] = 4;
    v7[2] = 16 * v6[10] - 120;
    v7[3] = 0;
    if (v7 == a2)
    {
      while (1)
      {
        if (*(v6 + 5) < 9u)
        {
LABEL_20:
          v6[1] = 0;
          v7 = a2;
          goto LABEL_22;
        }

        v12 = ccp_test(*result, a2, 4, 0);
        if (v12 >= 1)
        {
          break;
        }

        if (v12 < 0)
        {
          goto LABEL_20;
        }

        v13 = *(v6 + 5) - 1;
        *(v6 + 5) = v13;
        v7[2] = 16 * v13 - 120;
      }

      v11 = a2 + 4;
    }

    else
    {
      v11 = v7 + 4;
      v7 = a2;
      if (v11 == a2)
      {
        goto LABEL_22;
      }
    }

    if (v6[4] && v6[5])
    {
      *v11 = 1048;
      *(v11 + 1) = *(v11 - 2);
      v7 = v11 + 4;
    }

    else
    {
      v7 = v11;
    }
  }

LABEL_22:
  if (*v6)
  {
    *v7 = 789;
    v7[2] = v6[8] | 0x20;
    if (v7 == a2)
    {
      while (1)
      {
        if (*(v6 + 4) < 9u)
        {
LABEL_29:
          *v6 = 0;
          v7 = a2;
          goto LABEL_30;
        }

        v14 = ccp_test(*result, a2, 3, 0);
        if (v14 >= 1)
        {
          break;
        }

        if (v14 < 0)
        {
          goto LABEL_29;
        }

        v15 = *(v6 + 4) - 1;
        *(v6 + 4) = v15;
        v7[2] = v15 | 0x20;
      }

      v7 = a2 + 3;
    }

    else
    {
      v7 += 3;
    }
  }

LABEL_30:
  if (v6[2])
  {
    *v7 = 513;
    if (v7 == a2 && ccp_test(*result, a2, 2, 0) <= 0)
    {
      v6[2] = 0;
      v7 = a2;
    }

    else
    {
      v7 += 2;
    }
  }

  if (v6[3])
  {
    *v7 = 514;
    if (v7 == a2 && ccp_test(*result, a2, 2, 0) <= 0)
    {
      v6[3] = 0;
      v16 = -1;
      LODWORD(v7) = a2;
      goto LABEL_41;
    }

    v7 += 2;
  }

  if (v7 <= a2)
  {
    v16 = -1;
  }

  else
  {
    v16 = *a2;
  }

LABEL_41:
  *(v6 + 6) = v16;
  *a3 = v7 - a2;
}

BOOL sub_100004ED4(int *a1, unsigned __int8 *a2, int a3)
{
  v3 = &ccp_gotoptions[14 * *a1];
  v4 = v3[6];
  if (v3[6])
  {
    *v12 = 1554;
    v12[2] = ((v4 >> 2) & 1) == 0;
    *&v12[3] = 0;
    if (a3 < 6)
    {
      return 0;
    }

    if (*v12 == *a2)
    {
      v12[5] = 32 * (v4 & 3);
      v5 = *&v12[4] == *(a2 + 2);
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      return 0;
    }

    a3 -= 6;
    if (!a3)
    {
      return 1;
    }

    v6 = a2 + 6;
  }

  else
  {
    v6 = a2;
  }

  if (!v3[1])
  {
    goto LABEL_31;
  }

  if (a3 < 4)
  {
    return 0;
  }

  v7 = v3[4] ? 26 : 24;
  if (v7 != *v6)
  {
    return 0;
  }

  if (v6[1] != 4)
  {
    return 0;
  }

  v8 = v6[2];
  if (16 * *(v3 + 5) - 120 != v8 || v6[3])
  {
    return 0;
  }

  if (a3 == 4)
  {
    return 1;
  }

  if (v3[4] && v3[5])
  {
    v9 = a3 >= 8;
    a3 -= 8;
    if (!v9 || v6[4] != 24 || v6[5] != 4 || v8 != v6[6] || v6[7])
    {
      return 0;
    }

    v6 += 8;
  }

  else
  {
    a3 -= 4;
    v6 += 4;
  }

LABEL_31:
  if (*v3)
  {
    v10 = __OFSUB__(a3, 3);
    a3 -= 3;
    if (a3 < 0 != v10 || *v6 != 21 || v6[1] != 3 || (*(v3 + 4) | 0x20) != v6[2])
    {
      return 0;
    }

    v6 += 3;
    if (v6 == a2 && !a3)
    {
      return 1;
    }
  }

  if (v3[2])
  {
    v10 = __OFSUB__(a3, 2);
    a3 -= 2;
    if (a3 < 0 != v10 || *v6 != 1 || v6[1] != 2)
    {
      return 0;
    }

    v6 += 2;
    if (v6 == a2 && !a3)
    {
      return 1;
    }
  }

  if (!v3[3])
  {
    return a3 == 0;
  }

  v10 = __OFSUB__(a3, 2);
  a3 -= 2;
  if (a3 < 0 != v10 || *v6 != 2 || v6[1] != 2)
  {
    return 0;
  }

  if (v6 + 2 == a2 && !a3)
  {
    return 1;
  }

  return a3 == 0;
}

uint64_t sub_1000050E0(int *a1, unsigned __int8 *a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v6 = 14 * *a1;
  v7 = &ccp_gotoptions[v6];
  v8 = ccp_gotoptions[v6];
  v9 = ccp_gotoptions[v6 + 1];
  v10 = *&ccp_gotoptions[v6 + 2];
  v11 = ccp_gotoptions[v6 + 6];
  v12 = ccp_gotoptions[v6 + 7];
  v13 = *&ccp_gotoptions[v6 + 8];
  v14 = *&ccp_gotoptions[v6 + 10];
  v15 = *&ccp_gotoptions[v6 + 12];
  if (a3 < 6 || !ccp_gotoptions[v6 + 6] || *a2 != 18)
  {
    goto LABEL_24;
  }

  v16 = ccp_gotoptions[v6 + 1];
  if (a2[1] != 6)
  {
    goto LABEL_25;
  }

  v17 = &ccp_allowoptions[v6 / 2];
  v18 = a2[2];
  v19 = a2[5];
  v20 = ((4 * (v18 & 1)) & 0xCF | (v19 >> 5) & 3 | (v19 >> 4) & 8 | (32 * ((v19 >> 4) & 1)) | (16 * (v19 & 1))) ^ 4 | 0x40;
  if (a2[3] || (v18 >= 2 ? (v21 = ((4 * (v18 & 1)) & 0xCF | (v19 >> 5) & 3 | (v19 >> 4) & 8 | (32 * ((v19 >> 4) & 1)) | (16 * (v19 & 1))) ^ 4 | 0x40) : (v21 = ((4 * (v18 & 1)) & 0xCF | (v19 >> 5) & 3 | (v19 >> 4) & 8 | (32 * ((v19 >> 4) & 1)) | (16 * (v19 & 1))) ^ 4), a2[4]))
  {
    v21 = v20;
  }

  if ((v19 & 0xE) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  if (((refuse_mppe_stateful != 0) & (v22 >> 2)) != 0)
  {
    v11 = v22 & 0xFB;
  }

  else
  {
    v11 = v22;
  }

  if ((v11 & 1) != 0 && (v17[3] & 1) == 0)
  {
    v11 &= ~1u;
  }

  if ((v11 & 2) != 0 && (v17[3] & 2) == 0)
  {
    v11 &= ~2u;
  }

  if ((v11 & 3) == 0)
  {
    v31 = v12;
    v32 = v10;
    error("MPPE required but peer negotiation failed");
    lcp_close(*a1, "MPPE required but peer negotiation failed");
    v12 = v31;
    v10 = v32;
    v16 = v7[1];
  }

  else
  {
LABEL_24:
    v16 = v9;
  }

LABEL_25:
  if (v3 >= 4 && v16)
  {
    v23 = v7[4] ? 26 : 24;
    if (v23 == *v4 && v4[1] == 4)
    {
      v24 = v4[2];
      if ((v24 & 0xF) == 8 && v24 >= 0x10 && !v4[3])
      {
        v30 = (v24 >> 4) + 8;
        if (v30 < *(v7 + 5))
        {
          v14 = v30;
        }
      }

      else
      {
        LOBYTE(v9) = 0;
      }

      if (v7[4] && v3 >= 8 && v7[5] && v4[4] == 24)
      {
        v25 = v4[5];
        if (v25 == 4)
        {
          v3 -= 8;
        }

        else
        {
          v3 -= 4;
        }

        if (v25 == 4)
        {
          v4 += 8;
        }

        else
        {
          v4 += 4;
        }
      }

      else
      {
        v3 -= 4;
        v4 += 4;
      }
    }
  }

  if (*v7)
  {
    v26 = v3 < 3;
  }

  else
  {
    v26 = 1;
  }

  if (!v26 && *v4 == 21 && v4[1] == 3)
  {
    v27 = v4[2];
    if ((v27 & 0xE0) == 0x20)
    {
      v28 = v27 & 0x1F;
      if (v28 < *(v7 + 4))
      {
        v13 = v28;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  if (a1[2] != 9)
  {
    *v7 = v8;
    v7[1] = v9;
    *(v7 + 2) = v10;
    v7[6] = v11;
    v7[7] = v12;
    *(v7 + 4) = v13;
    *(v7 + 5) = v14;
    *(v7 + 6) = v15;
  }

  return 1;
}

uint64_t sub_1000053A0(int *a1, _BYTE *a2, int a3)
{
  v3 = a2;
  v5 = *a1;
  v6 = &ccp_gotoptions[14 * v5];
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v12 = v6[5];
  v13 = *(v6 + 6);
  if (a3)
  {
    v14 = a3 - 6;
    if (a3 >= 6 && *(v6 + 6) && *a2 == 18 && a2[1] == 6)
    {
      v23 = *v6;
      error("MPPE required but peer refused");
      lcp_close(*a1, "MPPE required but peer refused");
      v7 = v23;
      v3 += 6;
      v15 = v6[4];
      a3 = v14;
    }

    else
    {
      v15 = v6[4];
    }

    if (v15)
    {
      v16 = a3 < 4;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && *v3 == 26 && v3[1] == 4)
    {
      if (16 * *(v6 + 5) - 120 != v3[2] || v3[3])
      {
        return 0;
      }

      v11 = 0;
      v3 += 4;
      a3 -= 4;
    }

    if (v6[5])
    {
      v17 = a3 < 4;
    }

    else
    {
      v17 = 1;
    }

    if (!v17 && *v3 == 24 && v3[1] == 4)
    {
      if (16 * *(v6 + 5) - 120 != v3[2] || v3[3])
      {
        return 0;
      }

      v12 = 0;
      v3 += 4;
      a3 -= 4;
    }
  }

  else
  {
    if (dword_10004A260[v5])
    {
      return 0xFFFFFFFFLL;
    }

    a3 = 0;
  }

  if (v11 | v12)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  if (*v6)
  {
    v20 = a3 < 3;
  }

  else
  {
    v20 = 1;
  }

  if (!v20 && *v3 == 21 && v3[1] == 3)
  {
    if ((*(v6 + 4) | 0x20) != v3[2])
    {
      return 0;
    }

    v7 = 0;
    v3 += 3;
    a3 -= 3;
  }

  if (v6[2])
  {
    v21 = a3 < 2;
  }

  else
  {
    v21 = 1;
  }

  if (!v21 && *v3 == 1 && v3[1] == 2)
  {
    v3 += 2;
    a3 -= 2;
    v9 = 0;
  }

  if (v6[3])
  {
    v22 = a3 < 2;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    if (!a3)
    {
      goto LABEL_53;
    }

    return 0;
  }

  if (*v3 != 2)
  {
    return 0;
  }

  if (v3[1] != 2)
  {
    return 0;
  }

  v10 = 0;
  if (a3 != 2)
  {
    return 0;
  }

LABEL_53:
  if (a1[2] == 9)
  {
    return 1;
  }

  *v6 = v7;
  v6[1] = v19;
  v6[2] = v9;
  v6[3] = v10;
  v6[4] = v11;
  v6[5] = v12;
  result = 1;
  *(v6 + 6) = v13;
  return result;
}

uint64_t sub_100005644(int *a1, unsigned __int8 *__src, int *a3, int a4)
{
  v4 = 14 * *a1;
  v5 = *a3;
  v6 = &ccp_hisoptions + v4;
  *(v6 + 6) = 0;
  *v6 = 0;
  if (v5 <= 0)
  {
    *(v6 + 6) = -1;
    return 2;
  }

  v9 = a1;
  v41 = &ccp_hisoptions + v4;
  v42 = &ccp_allowoptions[v4 / 2];
  *(v6 + 6) = *__src;
  v10 = 2;
  v11 = __src;
  v38 = 1;
  v12 = __src;
  do
  {
    if (v5 == 1)
    {
      LODWORD(v13) = 4;
      v14 = 1;
      goto LABEL_10;
    }

    v14 = v11[1];
    if (v14 < 2 || v5 < v14)
    {
      LODWORD(v13) = 4;
      v14 = v5;
      goto LABEL_10;
    }

    v20 = *v11;
    LODWORD(v13) = 4;
    if (v20 <= 0x14)
    {
      switch(v20)
      {
        case 1u:
          if (v14 != 2 || !*(v42 + 2))
          {
            goto LABEL_10;
          }

          v41[2] = 1;
          break;
        case 2u:
          if (v14 != 2 || !*(v42 + 3))
          {
            goto LABEL_10;
          }

          v41[3] = 1;
          break;
        case 0x12u:
          if (v14 != 6)
          {
            goto LABEL_10;
          }

          v21 = *(v42 + 6);
          if (!v21)
          {
            goto LABEL_10;
          }

          v41[6] = 0;
          v22 = ~(4 * v11[2]) & 4;
          v41[6] = v22;
          v23 = v11[5];
          if ((v23 & 0x40) != 0)
          {
            v22 |= 2u;
            v41[6] = v22;
            v23 = v11[5];
            if ((v23 & 0x20) == 0)
            {
LABEL_38:
              if ((v23 & 0x80) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_97;
            }
          }

          else if ((v11[5] & 0x20) == 0)
          {
            goto LABEL_38;
          }

          v22 |= 1u;
          v41[6] = v22;
          v23 = v11[5];
          if ((v23 & 0x80) == 0)
          {
LABEL_39:
            if ((v23 & 0x10) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_98;
          }

LABEL_97:
          v22 |= 8u;
          v41[6] = v22;
          v23 = v11[5];
          if ((v23 & 0x10) == 0)
          {
LABEL_40:
            if ((v23 & 1) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_98:
          v22 |= 0x20u;
          v41[6] = v22;
          if ((v11[5] & 1) == 0)
          {
LABEL_42:
            if (v11[2] >= 2u)
            {
              v22 |= 0x40u;
              v41[6] = v22;
            }

            if (v11[3] || v11[4])
            {
              v22 |= 0x40u;
              v41[6] = v22;
            }

            v24 = v22 | 0x40;
            if ((v11[5] & 0xE) == 0)
            {
              v24 = v22;
            }

            v25 = v24 & 7;
            v26 = (v24 & 0x78) == 0;
            if (v11[5] & 0xE | v24 & 0x78)
            {
              v41[6] = v25;
            }

            if (v25 >= 4 && refuse_mppe_stateful)
            {
              error("Refusing MPPE stateful mode offered by peer");
LABEL_139:
              v14 = 6;
              goto LABEL_10;
            }

            if ((~v25 & 3) == 0)
            {
              if ((v21 & 2) != 0)
              {
                v25 = v24 & 6;
              }

              else
              {
                if ((v21 & 1) == 0)
                {
                  goto LABEL_139;
                }

                v25 = v24 & 5;
              }

              goto LABEL_115;
            }

            if ((v24 & 2) != 0)
            {
              if ((v21 & 2) == 0)
              {
                goto LABEL_139;
              }
            }

            else if (v24)
            {
              if ((v21 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

            else
            {
              v31 = v21 & 3;
              v25 |= v31;
              if (v31)
              {
LABEL_115:
                v26 = 0;
                v41[6] = v25;
                goto LABEL_130;
              }

              v26 = 0;
            }

LABEL_130:
            v11[2] = (v25 >> 2) ^ 1;
            *(v11 + 3) = 0;
            v11[5] = 0;
            v35 = (32 * v41[6]) & 0x40;
            v11[5] = v35;
            if (v41[6])
            {
              v11[5] = v35 | 0x20;
            }

            if (v26)
            {
              v43 = *v11;
              v44 = *(v11 + 2);
              v45 = mppe_send_key;
              if (ccp_test(*v9, &v43, 22, 1) < 1)
              {
                error("MPPE required, but kernel has no support.");
                lcp_close(*v9, "MPPE required but not available");
              }

              else
              {
                mtu = netif_get_mtu();
                if (mtu)
                {
                  netif_set_mtu(*v9, mtu - 4);
                  LODWORD(v13) = 2;
                }

                v38 = 0;
              }
            }

            else
            {
              v38 = 0;
              LODWORD(v13) = 3;
            }

            goto LABEL_139;
          }

LABEL_41:
          v22 |= 0x10u;
          v41[6] = v22;
          goto LABEL_42;
        default:
          goto LABEL_10;
      }

      v14 = 2;
      if (v11 == __src)
      {
        if (ccp_test(*v9, __src, 2, 1) >= 1)
        {
          LODWORD(v13) = 2;
        }

        else
        {
          LODWORD(v13) = 4;
        }
      }

      else
      {
        LODWORD(v13) = 2;
      }

      goto LABEL_10;
    }

    if (v20 == 21)
    {
      if (v14 != 3 || !*v42)
      {
        goto LABEL_10;
      }

      v40 = v9;
      *v41 = 1;
      v28 = v11[2] & 0x1F;
      *(v41 + 4) = v28;
      if ((v11[2] & 0xE0) == 0x20 && v28 >= 9 && v42[4] >= v28)
      {
        LODWORD(v13) = 2;
      }

      else
      {
        if (a4)
        {
          v14 = 3;
          LODWORD(v13) = 3;
          goto LABEL_123;
        }

        v11[2] = *(v42 + 8) | 0x20;
        LODWORD(v13) = 3;
      }

      if (v11 == __src)
      {
        v14 = 3;
        v32 = ccp_test(*v40, __src, 3, 1);
        if (v32 > 0)
        {
          goto LABEL_123;
        }

        v33 = v28 - 1;
        v9 = v40;
        while (!(v32 | a4) && v33 != 8)
        {
          v11[2] = v33 | 0x20;
          v14 = 3;
          v32 = ccp_test(*v40, __src, 3, 1);
          --v33;
          if (v32 > 0)
          {
            LODWORD(v13) = 3;
            goto LABEL_10;
          }
        }

        v11[2] = v41[8] | 0x20;
        LODWORD(v13) = 4;
        v14 = 3;
        goto LABEL_10;
      }

      v14 = 3;
LABEL_123:
      v9 = v40;
      goto LABEL_10;
    }

    if ((v20 == 24 || v20 == 26) && v14 == 4 && *(v42 + 1))
    {
      if (v20 == 26 && !*(v42 + 4) || v20 == 24 && !*(v42 + 5))
      {
        v14 = 4;
        goto LABEL_10;
      }

      v40 = v9;
      v41[1] = 1;
      v29 = v11[2];
      v30 = (v29 >> 4) + 8;
      *(v41 + 5) = (v29 >> 4) + 8;
      if ((v11[2] & 0xF) != 8 || v11[3] || v42[5] < v30 || v29 <= 0xF)
      {
        if (a4)
        {
          LODWORD(v13) = 3;
LABEL_122:
          v14 = 4;
          goto LABEL_123;
        }

        v11[2] = 16 * *(v42 + 10) - 120;
        v11[3] = 0;
        LODWORD(v13) = 3;
      }

      else
      {
        LODWORD(v13) = 2;
      }

      if (v11 == __src)
      {
        v14 = 4;
        v34 = ccp_test(*v40, __src, 4, 1);
        while (v34 <= 0)
        {
          if (v34 | a4 || v30 == 9)
          {
            v11[2] = 16 * v41[10] - 120;
            v14 = 4;
            LODWORD(v13) = 4;
            goto LABEL_123;
          }

          v11[2] = 16 * v30 + 120;
          v14 = 4;
          v34 = ccp_test(*v40, __src, 4, 1);
          LODWORD(v13) = 3;
          --v30;
        }

        goto LABEL_123;
      }

      goto LABEL_122;
    }

LABEL_10:
    if (v13 != 3 || a4 == 0)
    {
      v13 = v13;
    }

    else
    {
      v13 = 4;
    }

    if (v13 != 2)
    {
      if (v13 == 3 && v10 == 4)
      {
        v10 = 4;
      }

      else
      {
        if (v10 == 3 && v13 == 4)
        {
          v19 = __src;
        }

        else
        {
          v19 = v12;
        }

        if (v11 != v19)
        {
          memcpy(v19, v11, v14);
        }

        v12 = &v19[v14];
        v10 = v13;
      }
    }

    v11 += v14;
    v27 = __OFSUB__(v5, v14);
    v5 -= v14;
  }

  while (!((v5 < 0) ^ v27 | (v5 == 0)));
  if (v10 != 2)
  {
    if (v10 == 4)
    {
      if (v12 - __src == *a3)
      {
        dword_10004A260[*v9] = 1;
      }

      else
      {
        *a3 = v12 - __src;
      }

      v10 = 4;
      if (*(v42 + 6) && v38)
      {
        error("MPPE required but peer negotiation failed");
        lcp_close(*v9, "MPPE required but peer negotiation failed");
      }
    }

    else
    {
      *a3 = v12 - __src;
    }
  }

  return v10;
}

void sub_100005DB8(int *a1)
{
  v1 = *a1;
  v2 = &ccp_gotoptions[14 * v1];
  v3 = &ccp_hisoptions + 14 * v1;
  ccp_flags_set(v1, 1, 1);
  if (v2[1] || *v2 || v2[2] || v2[3] || v2[6])
  {
    if (v3[1] || *v3 || v3[2] || v3[3] || v3[6])
    {
      if (*(v2 + 6) == *(v3 + 6))
      {
        sub_100006120(v2, v3);
        notice("%s compression enabled");
      }

      else
      {
        sub_100006120(v2, 0);
        __strlcpy_chk();
        sub_100006120(v3, 0);
        notice("%s / %s compression enabled");
      }
    }

    else
    {
      sub_100006120(v2, 0);
      notice("%s receive compression enabled");
    }
  }

  else if (v3[1] || *v3 || v3[2] || v3[3] || v3[6])
  {
    sub_100006120(v3, 0);
    notice("%s transmit compression enabled");
  }

  if (v2[6])
  {
    mppe_recv_key = 0uLL;
    mppe_send_key = 0uLL;
    continue_networks();
  }
}

void sub_100005F84(unsigned int *a1)
{
  v2 = *a1;
  if (dword_10004A2A4[v2])
  {
    untimeout(sub_100006374, a1);
    v2 = *a1;
  }

  dword_10004A2A4[v2] = 0;
  ccp_flags_set(v2, 1, 0);
  v3 = *a1;
  v4 = &ccp_gotoptions[14 * *a1];
  v6 = v4[6];
  v5 = v4 + 6;
  if (v6)
  {
    *v5 = 0;
    if (*(&lcp_fsm + 20 * v3 + 2) == 9)
    {
      error("MPPE disabled");
      v7 = *a1;

      lcp_close(v7, "MPPE disabled");
    }
  }
}

uint64_t sub_100006060(unsigned int *a1, int a2, int a3)
{
  v3 = a3;
  if (a2 == 15)
  {
    v5 = *a1;
    v6 = dword_10004A2A4[v5];
    if ((v6 & 1) != 0 && *(a1 + 17) == a3)
    {
      dword_10004A2A4[v5] = v6 & 0xFFFFFFFC;
      untimeout(sub_100006374, a1);
    }

    notice("received CCP RESETACK");
    return 1;
  }

  if (a2 == 14)
  {
    if (a1[2] == 9)
    {
      notice("received CCP RESETREQ");
      fsm_sdata(a1, 15, v3, 0, 0);
    }

    return 1;
  }

  return 0;
}

char *sub_100006120(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1) && !*a1 && !*(a1 + 2) && !*(a1 + 3) && !*(a1 + 6))
  {
    return "(none)";
  }

  v3 = *(a1 + 12);
  if (v3 <= 0x14)
  {
    switch(v3)
    {
      case 1u:
        return "Predictor 1";
      case 2u:
        return "Predictor 2";
      case 0x12u:
        slprintf(byte_10004A264, 64, "MPPE ");
        v4 = *(a1 + 6);
        if ((v4 & 2) != 0)
        {
          slprintf(byte_10004A269, 59, "128-bit ");
          v4 = *(a1 + 6);
          v5 = &unk_10004A271;
          if ((v4 & 1) == 0)
          {
LABEL_31:
            v8 = byte_10004A264 - v5;
            if ((v4 & 4) != 0)
            {
              slprintf(v5, v8 + 64, "stateful");
            }

            else
            {
              slprintf(v5, v8 + 64, "stateless");
            }

            return byte_10004A264;
          }
        }

        else
        {
          v5 = byte_10004A269;
          if ((*(a1 + 6) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        slprintf(v5, byte_10004A264 - v5 + 64, "40-bit ");
        v5 += 7;
        v4 = *(a1 + 6);
        goto LABEL_31;
    }

LABEL_26:
    v7 = byte_10004A264;
    slprintf(byte_10004A264, 64, "Method %d");
    return v7;
  }

  if (v3 == 21)
  {
    if (!a2 || *(a2 + 8) == *(a1 + 8))
    {
      v7 = byte_10004A264;
      slprintf(byte_10004A264, 64, "BSD-Compress (%d)");
    }

    else
    {
      v7 = byte_10004A264;
      slprintf(byte_10004A264, 64, "BSD-Compress (%d/%d)");
    }
  }

  else
  {
    if (v3 != 24 && v3 != 26)
    {
      goto LABEL_26;
    }

    if (!a2 || *(a2 + 10) == *(a1 + 10))
    {
      v7 = byte_10004A264;
      slprintf(byte_10004A264, 64, "Deflate%s (%d)");
    }

    else
    {
      v7 = byte_10004A264;
      slprintf(byte_10004A264, 64, "Deflate%s (%d/%d)");
    }
  }

  return v7;
}

void sub_100006374(int *a1)
{
  v1 = *a1;
  if (a1[2] != 9 || (dword_10004A2A4[v1] & 2) == 0)
  {
    v4 = dword_10004A2A4[v1] & 0xFFFFFFFE;
  }

  else
  {
    fsm_sdata(a1, 14, *(a1 + 17), 0, 0);
    timeout(sub_100006374);
    v1 = *a1;
    v4 = dword_10004A2A4[v1] & 0xFFFFFFFD;
  }

  dword_10004A2A4[v1] = v4;
}

double mppe_set_keys(const void *a1, const void *a2)
{
  memset(&v5, 0, sizeof(v5));
  CC_SHA1_Init(&v5);
  CC_SHA1_Update(&v5, a2, 0x10u);
  CC_SHA1_Update(&v5, a2, 0x10u);
  CC_SHA1_Update(&v5, a1, 8u);
  CC_SHA1_Final(&md, &v5);
  result = *&md;
  mppe_send_key = md;
  mppe_recv_key = md;
  return result;
}

void ChapMS(const void *a1, char *a2, unsigned int a3, uint64_t a4)
{
  *(a4 + 48) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  sub_100006A98(a2, a3, data);
  CC_MD4(data, 2 * a3, &md);
  sub_100006AF4(a1, &md, (a4 + 24), v8, v9);
  *(a4 + 48) = 1;
  sub_100006A98(a2, a3, data);
  CC_MD4(data, 2 * a3, &md);
  CC_MD4(&md, 0x10u, v10);
  mppe_set_keys(a1, v10);
  mppe_keys_set = 1;
}

uint64_t ChapMS2(const void *a1, _OWORD *a2, char *__s, char *a4, unsigned int a5, _BYTE *a6, char *a7, int a8)
{
  a6[48] = 0;
  *(a6 + 1) = 0u;
  *(a6 + 2) = 0u;
  *a6 = 0u;
  if (a2)
  {
    *a6 = *a2;
  }

  else
  {
    for (i = 0; i != 16; ++i)
    {
      v16 = drand48() * 254.0;
      a6[i] = v16 + 1;
      byte_10004A2A8[i] = v16 + 1;
    }
  }

  sub_100006BA4(a6, a1, __s, v27);
  sub_100006A98(a4, a5, data);
  CC_MD4(data, 2 * a5, &md);
  sub_100006AF4(v27, &md, a6 + 24, v17, v18);
  qmemcpy(v26, "Magic server to client signing constant", 39);
  qmemcpy(v27, "Pad to make it do more than one iteration", 41);
  memset(&md, 0, sizeof(md));
  sub_100006A98(a4, a5, data);
  CC_MD4(data, 2 * a5, v29);
  CC_MD4(v29, 0x10u, v28);
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v28, 0x10u);
  CC_SHA1_Update(&md, a6 + 24, 0x18u);
  CC_SHA1_Update(&md, v26, 0x27u);
  v19 = v32;
  CC_SHA1_Final(v32, &md);
  sub_100006BA4(a6, a1, __s, v36);
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v32, 0x14u);
  CC_SHA1_Update(&md, v36, 8u);
  v20 = 41;
  CC_SHA1_Update(&md, v27, 0x29u);
  CC_SHA1_Final(v32, &md);
  do
  {
    v21 = *v19++;
    snprintf(a7, v20, "%02X", v21);
    v20 -= 2;
    a7 += 2;
  }

  while (v20 != 1);
  memset(&md, 0, sizeof(md));
  v34 = 0;
  *v32 = 0u;
  v33 = 0u;
  v31 = 0xF2F2F2F2F2F2F2F2;
  *&v22 = 0xF2F2F2F2F2F2F2F2;
  *(&v22 + 1) = 0xF2F2F2F2F2F2F2F2;
  *v29 = v22;
  v30 = v22;
  qmemcpy(v28, "This is the MPPE Master Key", 27);
  qmemcpy(v27, "On the client side, this is the send key; on the server side, it is the receive key.", 84);
  qmemcpy(v26, "On the client side, this is the receive key; on the server side, it is the send key.", 84);
  sub_100006A98(a4, a5, data);
  CC_MD4(data, 2 * a5, v38);
  CC_MD4(v38, 0x10u, v37);
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v37, 0x10u);
  CC_SHA1_Update(&md, a6 + 24, 0x18u);
  CC_SHA1_Update(&md, v28, 0x1Bu);
  CC_SHA1_Final(v36, &md);
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v36, 0x10u);
  CC_SHA1_Update(&md, v32, 0x28u);
  if (a8)
  {
    v23 = v26;
  }

  else
  {
    v23 = v27;
  }

  if (a8)
  {
    v24 = v27;
  }

  else
  {
    v24 = v26;
  }

  CC_SHA1_Update(&md, v23, 0x54u);
  CC_SHA1_Update(&md, v29, 0x28u);
  CC_SHA1_Final(v35, &md);
  mppe_send_key = *v35;
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v36, 0x10u);
  CC_SHA1_Update(&md, v32, 0x28u);
  CC_SHA1_Update(&md, v24, 0x54u);
  CC_SHA1_Update(&md, v29, 0x28u);
  result = CC_SHA1_Final(v35, &md);
  mppe_recv_key = *v35;
  mppe_keys_set = 1;
  return result;
}

void *chapms_init()
{
  chap_register_digest(&unk_100041EC8);
  chap_register_digest(&unk_100041F10);

  return add_options(&unk_10004A2B8);
}

void sub_100006A98(char *a1, unsigned int a2, _BYTE *a3)
{
  v3 = a3;
  bzero(a3, (2 * a2));
  if (a2 >= 1)
  {
    v6 = a2;
    do
    {
      v7 = *a1++;
      *v3 = v7;
      v3 += 2;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_100006AF4(uint64_t a1, __int128 *a2, _BYTE *a3, double a4, uint8x8_t a5)
{
  v14 = 0;
  v13 = 0;
  v12 = *a2;
  DesSetkey(&v12, *&v12, a5);
  DesEncrypt(a1, a3);
  DesSetkey(&v12 + 7, v7, v8);
  DesEncrypt(a1, a3 + 8);
  DesSetkey(&v12 | 0xE, v9, v10);
  return DesEncrypt(a1, a3 + 16);
}

uint64_t sub_100006BA4(const void *a1, const void *a2, char *__s, void *a4)
{
  v5 = __s;
  memset(&v11, 0, sizeof(v11));
  v8 = strrchr(__s, 92);
  if (v8)
  {
    v5 = v8 + 1;
  }

  CC_SHA1_Init(&v11);
  CC_SHA1_Update(&v11, a1, 0x10u);
  CC_SHA1_Update(&v11, a2, 0x10u);
  v9 = strlen(v5);
  CC_SHA1_Update(&v11, v5, v9);
  result = CC_SHA1_Final(md, &v11);
  *a4 = *md;
  return result;
}

uint64_t sub_100006C94(int a1, uint64_t a2, char *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v8 = a8;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v10 = a5 + 1;
  v11 = *a5;
  if (*a6 == 49)
  {
    if (*(a6 + 49))
    {
      ChapMS(a5 + 1, a3, a4, &v16);
      if (*(a6 + 25) == *(&v17 + 1) && *(a6 + 33) == v18 && *(a6 + 41) == *(&v18 + 1))
      {
        slprintf(a7, v8, "Access granted");
        return 1;
      }
    }

    else
    {
      notice("Peer request for LANMAN auth not supported", a2, a3, a4);
    }
  }

  slprintf(a7, v8, "E=691 R=1 C=%0.*B V=0", v11, v10, v16, v17);
  return 0;
}

uint64_t sub_100006DCC(const void *a1, uint64_t a2, char *a3, int a4)
{
  v8 = malloc_type_malloc(a2 + 1, 0x284A10DuLL);
  if (!v8)
  {
    notice("Out of memory in chapms_handle_failure");
    return 0;
  }

  v9 = v8;
  memcpy(v8, a1, a2);
  v10 = &v9[a2];
  *v10 = 0;
  if (*v9 == 69 && v9[1] == 61)
  {
    v11 = strtol(v9 + 2, 0, 10);
    v12 = v11;
    if (a2)
    {
      v13 = strstr(v9, " R=");
      if (v13)
      {
        if (retry_password_hook)
        {
          v14 = v13[3] == 49;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          v15 = 2;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      if (change_password_hook)
      {
        v19 = v12 == 648;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      v20 = strstr(v9, " M=");
      if (v20)
      {
        v10 = v20 + 3;
        strncpy(a3, v20 + 3, a4 - 1);
        a3[a4] = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = v11 == 648 && change_password_hook != 0;
    }

    if (v12 > 648)
    {
      switch(v12)
      {
        case 649:
          v10 = "E=649 No dialin permission";
          goto LABEL_13;
        case 691:
          v10 = "E=691 Authentication failure";
          goto LABEL_13;
        case 709:
          v10 = "E=709 Error changing password";
          goto LABEL_13;
      }
    }

    else
    {
      switch(v12)
      {
        case 646:
          v10 = "E=646 Restricted logon hours";
          goto LABEL_13;
        case 647:
          v10 = "E=647 Account disabled";
          goto LABEL_13;
        case 648:
          v10 = "E=648 Password expired";
          goto LABEL_13;
      }
    }

    free(v9);
    error("error %d", v12);
    error("Unknown MS-CHAP authentication failure: %.*v", a2, a1);
    return 0;
  }

  v16 = 0;
LABEL_13:
  error("MS-CHAP authentication failed: %v", v10);
  free(v9);
  return v16;
}

uint64_t sub_100007014(int a1, char *__s, char *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v8 = a8;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v10 = a5 + 1;
  v11 = *a5;
  if (*a6 == 49 && ((ChapMS2(v10, (a6 + 1), __s, a3, a4, &v17, v16, 1), *(&v18 + 1) == *(a6 + 25)) ? (v13 = v19 == *(a6 + 33)) : (v13 = 0), v13 ? (v14 = *(&v19 + 1) == *(a6 + 41)) : (v14 = 0), v14))
  {
    if (*(a6 + 49))
    {
      slprintf(a7, v8, "S=%s");
    }

    else
    {
      slprintf(a7, v8, "S=%s M=%s");
    }

    return 1;
  }

  else
  {
    slprintf(a7, v8, "E=691 R=1 C=%0.*B V=0 M=%s", a4, v11, v10, "Access denied");
    return 0;
  }
}

uint64_t sub_10000715C(_BYTE *a1, int a2, char *a3, uint64_t a4, char *a5, unsigned int a6, char *a7)
{
  v7 = a2;
  *a1 = 49;
  if (byte_10004A2A8[0])
  {
    v8 = byte_10004A318 == a2;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = byte_10004A2A8;
  }

  else
  {
    v9 = 0;
  }

  result = ChapMS2((a4 + 1), v9, a3, a5, a6, a1 + 1, a7, 0);
  byte_10004A318 = v7;
  return result;
}

uint64_t sub_1000071C4(_BYTE *a1, unsigned int a2, void *__s2)
{
  v3 = a2 - 42;
  if (a2 < 42 || *a1 != 83 || a1[1] != 61)
  {
    goto LABEL_16;
  }

  if (!memcmp(a1 + 2, __s2, 0x28uLL))
  {
    if (a2 < 0x2D)
    {
      if (!v3)
      {
        return 1;
      }

      dbglog("Rcvd non-conforming MSCHAPv2 Success packet, len=%d", v3);
      if (a2 != 44)
      {
LABEL_16:
        error("MS-CHAPv2 Success packet is badly formed.");
        return 0;
      }
    }

    else
    {
      if (a1[42] == 32 && a1[43] == 77 && a1[44] == 61)
      {
        return 1;
      }

      dbglog("Rcvd non-conforming MSCHAPv2 Success packet, len=%d", v3);
    }

    if (a1[42] == 77 && a1[43] == 61)
    {
      return 1;
    }

    goto LABEL_16;
  }

  error("MS-CHAPv2 mutual authentication failed.");
  return 0;
}

uint64_t sub_1000072C4(uint64_t a1, char *a2, _BYTE *a3, char *a4, unsigned int a5, char *a6, unsigned int a7, char *a8)
{
  v34 = a3[2];
  v13 = a3[3];
  *a1 = 7;
  *(a1 + 1) = a3[1] + 1;
  *(a1 + 2) = 18946;
  sub_100006A98(a4, a5, data);
  CC_MD4(data, 2 * a5, md);
  v36 = a6;
  sub_100006A98(a6, a7, __src);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *v42 = 0u;
  v43 = 0u;
  random_bytes(v40, 0x204u);
  memcpy(&v40[512 - 2 * a7], __src, (2 * a7));
  v14 = 0;
  v41 = 2 * a7;
  v15 = xmmword_10002E910;
  v16.i64[0] = 0x1010101010101010;
  v16.i64[1] = 0x1010101010101010;
  do
  {
    *&v42[v14] = v15;
    v14 += 16;
    v15 = vaddq_s8(v15, v16);
  }

  while (v14 != 256);
  v17 = 0;
  v18 = 0;
  v58 = 0;
  v19 = v13 | (v34 << 8);
  do
  {
    v20 = v42[v17];
    v18 += v20 + md[v17 & 0xF];
    v42[v17] = v42[v18];
    v42[v18] = v20;
    ++v17;
  }

  while (v17 != 256);
  v21 = 0;
  v22 = v58;
  v23 = HIBYTE(v58);
  do
  {
    v24 = v42[++v22];
    v23 += v24;
    v42[v22] = v42[v23];
    v42[v23] = v24;
    *(a1 + 4 + v21) = v42[(v42[v22] + v24)] ^ v40[v21];
    ++v21;
  }

  while (v21 != 516);
  sub_100006A98(a4, a5, v40);
  CC_MD4(v40, 2 * a5, __src);
  sub_100006A98(v36, a7, data);
  CC_MD4(data, 2 * a7, v42);
  DesSetkey(v42, v25, v26);
  DesEncrypt(__src, (a1 + 520));
  DesSetkey(&v42[7], v27, v28);
  DesEncrypt(&v38, (a1 + 528));
  v29 = v19 - 4;
  if (v19 != 4)
  {
    v30 = a3 + 7;
    while (*(v30 - 3) != 32 || *(v30 - 2) != 67 || *(v30 - 1) != 61)
    {
      ++v30;
      if (!--v29)
      {
        goto LABEL_15;
      }
    }

    sub_1000076FC(v30, v40);
    ChapMS2(v40, 0, a2, v36, a7, (a1 + 536), a8, 0);
  }

LABEL_15:
  *(a1 + 585) = 0;
  return 0;
}

uint64_t sub_1000075BC(_BYTE *a1, char *__s, uint64_t a3, char *a4, unsigned int a5, char *a6)
{
  v12 = strlen(__s);
  v13 = __rev16(*(a3 + 2));
  *a1 = 2;
  a1[1] = *(a3 + 1) + 1;
  a1[2] = (v12 + 54) >> 8;
  a1[3] = v12 + 54;
  v14 = v13 - 4;
  if (v14)
  {
    for (i = (a3 + 7); *(i - 3) != 32 || *(i - 2) != 67 || *(i - 1) != 61; ++i)
    {
      if (!--v14)
      {
        return 0;
      }
    }

    sub_1000076FC(i, v17);
    a1[4] = 49;
    ChapMS2(v17, 0, __s, a4, a5, a1 + 5, a6, 0);
    memcpy(a1 + 54, __s, v12);
  }

  return 0;
}

unsigned __int8 *sub_1000076FC(unsigned __int8 *result, uint64_t a2)
{
  for (i = 0; i != 64; ++i)
  {
    v3 = *result;
    v4 = v3 - 48;
    if ((v3 - 48) >= 0xA)
    {
      if ((v3 - 97) > 5)
      {
        if ((v3 - 65) >= 6)
        {
          v4 = *(a2 + i);
        }

        else
        {
          v4 = v3 - 55;
        }
      }

      else
      {
        v4 = v3 - 87;
      }
    }

    v5 = 16 * v4;
    *(a2 + i) = 16 * v4;
    v6 = result[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      if ((v6 - 97) > 5)
      {
        if ((v6 - 65) > 5)
        {
          goto LABEL_14;
        }

        v7 = v6 - 55;
      }

      else
      {
        v7 = v6 - 87;
      }
    }

    *(a2 + i) = v7 | v5;
LABEL_14:
    result += 2;
  }

  return result;
}

uint64_t demand_conf()
{
  framemax = 1506;
  frame = malloc_type_malloc(0x5E2uLL, 0x9DCF17DDuLL);
  if (!frame)
  {
    novm("demand frame");
  }

  framelen = 0;
  pend_q = 0;
  escape_flag = 0;
  flush_flag = 0;
  fcs = 0xFFFF;
  if (dword_1000479A8 >= 1500)
  {
    v0 = 1500;
  }

  else
  {
    v0 = dword_1000479A8;
  }

  netif_set_mtu(0, v0);
  if ((ppp_send_config(0, 1500, 0, 0, 0) & 0x80000000) != 0 || (result = ppp_recv_config(0, 1500, 0, 0, 0), (result & 0x80000000) != 0))
  {
    fatal("Couldn't set up demand-dialled PPP interface: %m");
  }

  v2 = protocols;
  if (protocols)
  {
    v3 = &off_100043898;
    do
    {
      if (*(v2 + 80))
      {
        v4 = *(v2 + 15);
        if (v4)
        {
          result = v4(0);
          if (!result)
          {
            die(1);
          }
        }
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t demand_block()
{
  v1 = protocols;
  if (protocols)
  {
    v2 = &off_100043898;
    do
    {
      if (*(v1 + 80) && *(v1 + 15))
      {
        sifnpmode(0, *v1 & 0x7FFF, 3);
      }

      v3 = *v2++;
      v1 = v3;
    }

    while (v3);
    v0 = vars8;
  }

  return get_loop_output();
}

void *demand_discard()
{
  v0 = protocols;
  if (protocols)
  {
    v1 = &off_100043898;
    do
    {
      if (*(v0 + 80) && *(v0 + 15))
      {
        sifnpmode(0, *v0 & 0x7FFF, 2);
      }

      v2 = *v1++;
      v0 = v2;
    }

    while (v2);
  }

  get_loop_output();
  result = pend_q;
  if (pend_q)
  {
    do
    {
      v4 = result[1];
      free(result);
      result = v4;
    }

    while (v4);
  }

  pend_q = 0;
  framelen = 0;
  flush_flag = 0;
  escape_flag = 0;
  fcs = 0xFFFF;
  return result;
}

uint64_t demand_unblock()
{
  v0 = protocols;
  if (protocols)
  {
    v1 = &off_100043898;
    do
    {
      if (*(v0 + 80))
      {
        if (*(v0 + 15))
        {
          result = sifnpmode(0, *v0 & 0x7FFF, 0);
        }
      }

      v3 = *v1++;
      v0 = v3;
    }

    while (v3);
  }

  return result;
}

uint64_t loop_chars(unsigned __int8 *a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = a2 + 1;
    while (1)
    {
      v6 = *a1++;
      v5 = v6;
      if (v6 == 126)
      {
        v7 = framelen;
        if (escape_flag)
        {
          v8 = 0;
        }

        else
        {
          v8 = flush_flag == 0;
        }

        if (v8 && framelen >= 3 && fcs == 61624)
        {
          framelen -= 2;
          if (loop_frame(frame, (v7 - 2)))
          {
            v3 = 1;
          }

          else
          {
            v3 = v3;
          }
        }

        framelen = 0;
        flush_flag = 0;
        escape_flag = 0;
        fcs = 0xFFFF;
        goto LABEL_20;
      }

      if (!flush_flag)
      {
        if (escape_flag)
        {
          LOBYTE(v5) = v5 ^ 0x20;
          escape_flag = 0;
LABEL_26:
          v11 = framelen;
          if (framelen >= framemax)
          {
            flush_flag = 1;
          }

          else
          {
            ++framelen;
            *(frame + v11) = v5;
            fcs = word_10002EA34[(fcs ^ v5)] ^ (fcs >> 8);
          }

          goto LABEL_20;
        }

        if (v5 != 125)
        {
          goto LABEL_26;
        }

        escape_flag = 1;
      }

LABEL_20:
      if (--v4 <= 1)
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t loop_frame(uint64_t a1, uint64_t a2)
{
  dbglog("Dial on demand: %P", a1, a2);
  if (a2 < 4)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  if (v4 < 0)
  {
    return 0;
  }

  v5 = protocols;
  if (!protocols)
  {
    return 0;
  }

  v6 = *(a1 + 3) | (v4 << 8);
  for (i = &off_100043898; ; ++i)
  {
    v8 = *v5;
    v9 = v8 >> 14;
    v10 = v8 & 0x7FFF;
    if (v9 <= 2 && v6 == v10)
    {
      break;
    }

    v12 = *i;
    v5 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  if (!*(v5 + 80))
  {
    return 0;
  }

  v14 = *(v5 + 16);
  if (!v14 || (result = v14(a1, a2), result))
  {
    v15 = malloc_type_malloc(a2 + 24, 0x10200406FCD4940uLL);
    if (v15)
    {
      v16 = v15;
      *v15 = a2;
      v15[1] = 0;
      memcpy(v15 + 2, a1, a2);
      v17 = &pend_q;
      if (pend_q)
      {
        v17 = (pend_qtail + 8);
      }

      *v17 = v16;
      pend_qtail = v16;
    }

    return 1;
  }

  return result;
}

void demand_rexmit(int a1)
{
  v1 = pend_q;
  pend_q = 0;
  if (!v1)
  {
    v5 = &pend_qtail;
    goto LABEL_13;
  }

  v3 = 0;
  do
  {
    while (1)
    {
      v4 = v1;
      v1 = *(v1 + 8);
      if (a1 != bswap32(v4[9]) >> 16)
      {
        break;
      }

      output(0, (v4 + 8), *v4);
      free(v4);
      if (!v1)
      {
        goto LABEL_10;
      }
    }

    if (v3)
    {
      *(v3 + 8) = v4;
    }

    else
    {
      pend_q = v4;
    }

    v3 = v4;
  }

  while (v1);
LABEL_10:
  pend_qtail = v3;
  if (v3)
  {
    v5 = (v3 + 8);
LABEL_13:
    *v5 = 0;
  }
}

double fsm_init(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *&result = 0xA00000003;
  *(a1 + 20) = 0xA00000003;
  *(a1 + 32) = 2;
  *(a1 + 40) = 5;
  *(a1 + 48) = 255;
  *(a1 + 72) = 0;
  return result;
}

void fsm_lowerup(uint64_t result)
{
  v2 = *(result + 8);
  if (v2)
  {
    if (v2 != 1)
    {
      return;
    }

    if ((*(result + 12) & 4) != 0)
    {
      v3 = 3;
    }

    else
    {
      sub_100007DEC(result, 0);
      v3 = 6;
    }
  }

  else
  {
    v3 = 2;
  }

  *(result + 8) = v3;
}

void sub_100007DEC(int *a1, int a2)
{
  if ((a1[2] - 6) >= 3)
  {
    v4 = **(a1 + 7);
    if (v4)
    {
      v4(a1);
    }

    a1[9] = 0;
    a1[11] = 0;
  }

  if (!a2)
  {
    a1[7] = a1[6];
    v5 = *(a1 + 16) + 1;
    *(a1 + 16) = v5;
    *(a1 + 17) = v5;
    ++a1[11];
  }

  *(a1 + 18) = 0;
  v6 = *(a1 + 7);
  v7 = *(v6 + 8);
  if (v7 && *(v6 + 16))
  {
    v8 = v7(a1);
    if (v8 >= peer_mru[*a1] - 4)
    {
      v9 = peer_mru[*a1] - 4;
    }

    else
    {
      v9 = v8;
    }

    v11 = v9;
    v10 = *(*(a1 + 7) + 16);
    if (v10)
    {
      v10(a1, &byte_100048124, &v11);
      v9 = v11;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  fsm_sdata(a1, 1, *(a1 + 17), &byte_100048124, v9);
  --a1[7];
  timeout(sub_100008014);
}

void fsm_lowerdown(uint64_t result)
{
  v2 = *(result + 8);
  if (v2 <= 4)
  {
    if (v2 == 2)
    {
      *(result + 8) = 0;
      return;
    }

    if (v2 != 3)
    {
      if (v2 != 4)
      {
        return;
      }

      *(result + 8) = 0;
      goto LABEL_4;
    }

    *(result + 8) = 1;
    v4 = *(*(result + 56) + 72);
    if (v4)
    {

      v4();
    }
  }

  else
  {
    if ((v2 - 5) < 4)
    {
      *(result + 8) = 1;
LABEL_4:

      untimeout(sub_100008014, result);
      return;
    }

    if (v2 == 9)
    {
      v3 = *(*(result + 56) + 64);
      if (v3)
      {
        v3(result);
      }

      *(result + 8) = 1;
    }
  }
}

void sub_100008014(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 - 6) >= 3)
  {
    if ((v2 - 4) > 1)
    {
      return;
    }

    if (*(a1 + 28) > 0)
    {
      v5 = *(a1 + 16) + 1;
      *(a1 + 16) = v5;
      *(a1 + 17) = v5;
      fsm_sdata(a1, 5, v5, *(a1 + 64), *(a1 + 72));
      timeout(sub_100008014);
      --*(a1 + 28);
      return;
    }

    if (v2 == 4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v3 = *(a1 + 56);
    if (*(a1 + 28) > 0)
    {
      v4 = *(v3 + 96);
      if (v4)
      {
        v4(a1);
      }

      sub_100007DEC(a1, 1);
      if (*(a1 + 8) == 7)
      {
        *(a1 + 8) = 6;
      }

      return;
    }

    warning("%s: timeout sending Config-Requests\n", *(v3 + 112));
    *(a1 + 8) = 3;
    if (*(a1 + 12))
    {
      return;
    }
  }

  v7 = *(*(a1 + 56) + 80);
  if (v7)
  {

    v7(a1);
  }
}

void fsm_open(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 2)
      {
        if ((*(a1 + 12) & 4) != 0)
        {
          v3 = 3;
        }

        else
        {
          sub_100007DEC(a1, 0);
          v3 = 6;
        }

        *(a1 + 8) = v3;
      }
    }

    else
    {
      *(a1 + 8) = 1;
      v4 = *(*(a1 + 56) + 72);
      if (v4)
      {

        v4();
      }
    }
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        *(a1 + 8) = 5;
      }

      else if (v2 != 9)
      {
        return;
      }
    }

    if ((*(a1 + 12) & 2) != 0)
    {
      fsm_lowerdown(a1);

      fsm_lowerup(a1);
    }
  }
}

void fsm_close(uint64_t a1, char *__s)
{
  *(a1 + 64) = __s;
  if (__s)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 72) = v3;
  v4 = *(a1 + 8);
  if (v4 <= 5)
  {
    switch(v4)
    {
      case 1:
        v6 = 0;
        goto LABEL_9;
      case 3:
        v6 = 2;
        goto LABEL_9;
      case 5:
LABEL_8:
        v6 = 4;
LABEL_9:
        *(a1 + 8) = v6;
        break;
    }
  }

  else
  {
    if ((v4 - 6) < 3)
    {
      untimeout(sub_100008014, a1);
LABEL_7:
      *(a1 + 28) = *(a1 + 32);
      v5 = *(a1 + 16) + 1;
      *(a1 + 16) = v5;
      *(a1 + 17) = v5;
      fsm_sdata(a1, 5, v5, *(a1 + 64), *(a1 + 72));
      timeout(sub_100008014);
      --*(a1 + 28);
      goto LABEL_8;
    }

    if (v4 == 9)
    {
      v7 = *(*(a1 + 56) + 64);
      if (v7)
      {
        v7(a1);
      }

      goto LABEL_7;
    }
  }
}

void fsm_sdata(unsigned int *a1, char a2, char a3, char *__src, int a5)
{
  if (peer_mru[*a1] - 4 >= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = peer_mru[*a1] - 4;
  }

  if (v8)
  {
    v9 = __src == &byte_100048124;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    memcpy(&byte_100048124, __src, v8);
  }

  LOWORD(outpacket_buf) = 1023;
  v10 = a1[1];
  BYTE2(outpacket_buf) = BYTE1(v10);
  HIBYTE(outpacket_buf) = v10;
  LOBYTE(word_100048120) = a2;
  HIBYTE(word_100048120) = a3;
  LOBYTE(word_100048122) = (v8 + 4) >> 8;
  HIBYTE(word_100048122) = v8 + 4;
  v11 = *a1;

  output(v11, &outpacket_buf, (v8 + 8));
}

void fsm_input(uint64_t a1, char *__src, unsigned int a3)
{
  if (a3 < 4)
  {
    return;
  }

  v4 = __rev16(*(__src + 1));
  v5 = v4 < 4 || v4 > a3;
  if (v5 || *(a1 + 8) < 2u)
  {
    return;
  }

  v7 = *__src;
  v8 = __src[1];
  if (*__src <= 4u)
  {
    if ((v7 - 3) >= 2)
    {
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          v9 = __src[1];

          sub_100008AA0(a1, v9, (__src + 4), v4 - 4);
          return;
        }

        goto LABEL_33;
      }

      v23 = __src[1];

      sub_100008808(a1, v23, __src + 4, v4 - 4);
      return;
    }

    if (*(a1 + 17) != v8 || *(a1 + 18))
    {
      return;
    }

    v10 = 40;
    if (v7 == 3)
    {
      v10 = 32;
    }

    v11 = *(*(a1 + 56) + v10);
    if (!v11 || (v12 = v11(a1, __src + 4, v4 - 4)) == 0)
    {
      error("Received bad configure-nak/rej: %P", __src + 4, v4 - 4);
      return;
    }

    v13 = v12;
    *(a1 + 18) = 1;
    v14 = *(a1 + 8);
    if (v14 <= 6)
    {
      if ((v14 - 2) < 2)
      {
        v15 = a1;
        v16 = 6;
        v17 = v8;
        v18 = 0;
        v19 = 0;
LABEL_36:

        fsm_sdata(v15, v16, v17, v18, v19);
        return;
      }

      if (v14 != 6)
      {
        return;
      }

      goto LABEL_52;
    }

    switch(v14)
    {
      case 7:
        untimeout(sub_100008014, a1);
        break;
      case 8:
LABEL_52:
        untimeout(sub_100008014, a1);
        if ((v13 & 0x80000000) == 0)
        {
          if (*(a1 + 44) >= *(a1 + 48))
          {
            warning("%s: Maximum Config-Requests exceeded\n", *(*(a1 + 56) + 112));
            *(a1 + 8) = 3;
            if ((*(a1 + 12) & 1) == 0)
            {
              v26 = *(*(a1 + 56) + 80);
              if (v26)
              {

                v26(a1);
              }
            }
          }

          else
          {

            sub_100007DEC(a1, 0);
          }

          return;
        }

        v25 = 3;
LABEL_60:
        *(a1 + 8) = v25;
        return;
      case 9:
        v24 = *(*(a1 + 56) + 64);
        if (v24)
        {
          v24(a1);
        }

        break;
      default:
        return;
    }

    sub_100007DEC(a1, 0);
    v25 = 6;
    goto LABEL_60;
  }

  switch(v7)
  {
    case 5:
      v20 = __src[1];

      sub_100008C54(a1, v20, (__src + 4), v4 - 4);
      break;
    case 6:

      sub_100008D3C(a1);
      break;
    case 7:

      sub_100008E20(a1, __src + 4, v4 - 4);
      break;
    default:
LABEL_33:
      v21 = *(*(a1 + 56) + 104);
      if (v21 && v21(a1))
      {
        return;
      }

      v22 = *(a1 + 16) + 1;
      *(a1 + 16) = v22;
      v17 = v22;
      v15 = a1;
      v16 = 7;
      v18 = __src;
      v19 = v4;
      goto LABEL_36;
  }
}

void sub_100008808(uint64_t result, char a2, char *__src, int a4)
{
  v5 = __src;
  v24 = a4;
  v8 = *(result + 8);
  if (v8 <= 3)
  {
    if (v8 == 2)
    {
      v13 = a2;
      v14 = 6;
      v15 = 0;
      v16 = 0;
LABEL_13:

      fsm_sdata(result, v14, v13, v15, v16);
      return;
    }

    if (v8 == 3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v8 - 4) < 2)
    {
      return;
    }

    if (v8 == 9)
    {
      if (*(result + 52) == a2)
      {
        if (a4 < 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = 0;
          v10 = a4;
          v11 = __src;
          do
          {
            v12 = *v11++;
            v9 = word_10002EC40[v12 ^ ((v9 & 0xFF00) >> 8)] ^ (v9 << 8);
            --v10;
          }

          while (v10);
        }

        if (*(result + 54) == v9)
        {
          v13 = a2;
          v14 = 2;
          v15 = v5;
          v16 = a4;
          goto LABEL_13;
        }
      }

      v17 = *(*(result + 56) + 64);
      if (v17)
      {
        v17(result);
      }

LABEL_21:
      sub_100007DEC(result, 0);
      *(result + 8) = 6;
    }
  }

  v18 = *(*(result + 56) + 48);
  if (v18)
  {
    v19 = v18(result, v5, &v24, *(result + 36) >= *(result + 40));
    fsm_sdata(result, v19, a2, v5, v24);
    if (v19 == 2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (!a4)
    {
      fsm_sdata(result, 2, a2, v5, 0);
LABEL_32:
      if (*(result + 8) == 7)
      {
        untimeout(sub_100008014, result);
        *(result + 8) = 9;
        v20 = *(*(result + 56) + 56);
        if (v20)
        {
          v20(result);
        }
      }

      else
      {
        *(result + 8) = 8;
      }

      *(result + 36) = 0;
      *(result + 52) = a2;
      v21 = v24;
      if (v24 < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        do
        {
          v23 = *v5++;
          v22 = word_10002EC40[v23 ^ ((v22 & 0xFF00) >> 8)] ^ (v22 << 8);
          --v21;
        }

        while (v21);
      }

      *(result + 54) = v22;
      return;
    }

    v19 = 4;
    fsm_sdata(result, 4, a2, v5, a4);
  }

  if (*(result + 8) != 7)
  {
    *(result + 8) = 6;
  }

  if (v19 == 3)
  {
    ++*(result + 36);
  }
}

void sub_100008AA0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 17) != a2 || *(a1 + 18))
  {
    return;
  }

  v7 = a2;
  v8 = *(*(a1 + 56) + 24);
  if (v8)
  {
    if (v8(a1, a3, a4))
    {
      goto LABEL_5;
    }

LABEL_11:
    error("Received bad configure-ack: %P", a3, a4);
    return;
  }

  if (a4)
  {
    goto LABEL_11;
  }

LABEL_5:
  *(a1 + 18) = 1;
  v9 = *(a1 + 8);
  if (v9 <= 6)
  {
    if ((v9 - 2) >= 2)
    {
      if (v9 == 6)
      {
        *(a1 + 8) = 7;
        *(a1 + 28) = *(a1 + 24);
      }
    }

    else
    {

      fsm_sdata(a1, 6, v7, 0, 0);
    }

    return;
  }

  if (v9 == 7)
  {
    untimeout(sub_100008014, a1);
LABEL_20:
    sub_100007DEC(a1, 0);
    *(a1 + 8) = 6;
    return;
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
      return;
    }

    v10 = *(*(a1 + 56) + 64);
    if (v10)
    {
      v10(a1);
    }

    goto LABEL_20;
  }

  untimeout(sub_100008014, a1);
  *(a1 + 8) = 9;
  *(a1 + 28) = *(a1 + 24);
  v11 = *(*(a1 + 56) + 56);
  if (v11)
  {

    v11(a1);
  }
}

void sub_100008C54(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  if ((v6 - 7) >= 2)
  {
    if (v6 == 9)
    {
      if (a4 < 1)
      {
        info("%s terminated by peer");
      }

      else
      {
        info("%s terminated by peer (%0.*v)", *(*(a1 + 56) + 112), a4, a3);
      }

      *(a1 + 28) = 0;
      *(a1 + 8) = 5;
      v7 = *(*(a1 + 56) + 64);
      if (v7)
      {
        v7(a1);
      }

      timeout(sub_100008014);
    }
  }

  else
  {
    *(a1 + 8) = 6;
  }

  fsm_sdata(a1, 6, a2, 0, 0);
}

void sub_100008D3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 > 6)
  {
    if (v2 != 7)
    {
      if (v2 != 9)
      {
        return;
      }

      v4 = *(*(a1 + 56) + 64);
      if (v4)
      {
        v4(a1);
      }

      sub_100007DEC(a1, 0);
    }

    *(a1 + 8) = 6;
  }

  else
  {
    if (v2 == 4)
    {
      untimeout(sub_100008014, a1);
      v3 = 2;
    }

    else
    {
      if (v2 != 5)
      {
        return;
      }

      untimeout(sub_100008014, a1);
      v3 = 3;
    }

    *(a1 + 8) = v3;
    v5 = *(*(a1 + 56) + 80);
    if (v5)
    {

      v5(a1);
    }
  }
}

void sub_100008E20(uint64_t result, unsigned __int8 *a2, int a3)
{
  if (a3 >= 4)
  {
    warning("%s: Rcvd Code-Reject for code %d, id %d", *(*(result + 56) + 112), *a2, a2[1]);
    if (*(result + 8) == 7)
    {
      *(result + 8) = 6;
    }
  }
}

uint64_t crc16(unsigned __int8 *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = *a1++;
      v2 = word_10002EC40[v3 ^ ((v2 & 0xFF00) >> 8)] ^ (v2 << 8);
      --a2;
    }

    while (a2);
  }

  return v2;
}

void fsm_protreject(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 <= 4)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        goto LABEL_4;
      }

      if (v2 != 4)
      {
        return;
      }

      untimeout(sub_100008014, a1);
    }

    v3 = 2;
LABEL_10:
    *(a1 + 8) = v3;
    v4 = *(*(a1 + 56) + 80);
    if (v4)
    {

      v4(a1);
    }

    return;
  }

  if ((v2 - 5) < 4)
  {
    untimeout(sub_100008014, a1);
LABEL_4:
    v3 = 3;
    goto LABEL_10;
  }

  if (v2 == 9)
  {
    v5 = *(*(a1 + 56) + 64);
    if (v5)
    {
      v5(a1);
    }

    *(a1 + 28) = *(a1 + 32);
    v6 = *(a1 + 16) + 1;
    *(a1 + 16) = v6;
    *(a1 + 17) = v6;
    fsm_sdata(a1, 5, v6, *(a1 + 64), *(a1 + 72));
    timeout(sub_100008014);
    --*(a1 + 28);
    *(a1 + 8) = 5;
  }
}

double sub_100009008(int a1)
{
  v1 = &ipcp_fsm + 80 * a1;
  v2 = &ipcp_wantoptions + 52 * a1;
  v3 = &ipcp_allowoptions + 52 * a1;
  *v1 = a1;
  *(v1 + 1) = 32801;
  *(v1 + 7) = off_100042CC0;
  fsm_init(v1);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 12) = 0;
  *(v2 + 2) = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 12) = 0;
  *v2 = 257;
  v2[5] = 1;
  *&result = 0xF0000002DLL;
  *(v2 + 2) = 0xF0000002DLL;
  v2[24] = 1;
  *v3 = 257;
  *(v3 + 5) = 15;
  v3[24] = 1;
  *(v3 + 2) = 257;
  v3[3] = 1;
  return result;
}

uint64_t sub_100009158(char *a1, unsigned int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = (a1 + 4);
  if ((v11 - 1) > 6)
  {
    v14 = " code=0x%x";
  }

  else
  {
    v14 = " %s";
  }

  a3(a4, v14);
  (a3)(a4, " id=0x%x", v12);
  if ((v11 - 1) < 4)
  {
    if (v6 >= 6)
    {
      while (1)
      {
        v15 = v13[1];
        if (v15 < 2 || v7 < v15)
        {
          goto LABEL_53;
        }

        v17 = *v13;
        a3(a4, " <");
        if (v17 <= 128)
        {
          break;
        }

        if (v17 <= 130)
        {
          if (v17 == 129)
          {
LABEL_31:
            v18 = v13 + 6;
            htonl();
            v19 = a4;
            v20 = "ms-dns%d %I";
          }

          else
          {
LABEL_30:
            v18 = v13 + 6;
            htonl();
            v19 = a4;
            v20 = "ms-wins%d %I";
          }

LABEL_32:
          a3(v19, v20);
          goto LABEL_33;
        }

        if (v17 == 131)
        {
          goto LABEL_31;
        }

        v18 = v13;
        if (v17 == 132)
        {
          goto LABEL_30;
        }

LABEL_33:
        if (v18 < &v13[v15])
        {
          v21 = &v13[v15] - v18;
          do
          {
            v22 = *v18++;
            (a3)(a4, " %.2x", v22);
            --v21;
          }

          while (v21);
          v18 = &v13[v15];
        }

        v7 -= v15;
        a3(a4, ">");
        v13 = v18;
        if (v7 <= 1)
        {
          goto LABEL_52;
        }
      }

      v18 = v13;
      switch(v17)
      {
        case 1:
          if (v15 != 10)
          {
            goto LABEL_33;
          }

          v23 = htonl();
          (a3)(a4, "addrs %I", v23);
          v18 = v13 + 10;
          htonl();
          v19 = a4;
          v20 = " %I";
          break;
        case 2:
          if (v15 < 4)
          {
            goto LABEL_33;
          }

          v18 = v13 + 4;
          v24 = __rev16(*(v13 + 1));
          a3(a4, "compress ");
          if (v24 == 55)
          {
            v19 = a4;
            v20 = "old-VJ";
          }

          else
          {
            v19 = a4;
            if (v24 == 45)
            {
              v20 = "VJ";
            }

            else
            {
              v20 = "0x%x";
            }
          }

          break;
        case 3:
          v18 = v13;
          if (v15 != 6)
          {
            goto LABEL_33;
          }

          v18 = v13 + 6;
          htonl();
          v19 = a4;
          v20 = "addr %I";
          break;
        default:
          goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_51:
    v18 = (a1 + 4);
LABEL_52:
    v13 = v18;
    if (v7 < 1)
    {
      return (v13 - a1);
    }

    goto LABEL_53;
  }

  if ((v11 - 5) >= 2)
  {
    goto LABEL_51;
  }

  if (v6 != 4)
  {
    if (*v13 - 32 > 0x5E)
    {
LABEL_53:
      v25 = v7 + 1;
      do
      {
        v26 = *v13++;
        (a3)(a4, " %.2x", v26);
        --v25;
      }

      while (v25 > 1);
      return (v13 - a1);
    }

    a3(a4, " ");
    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v13) = v13 + v7;
  }

  return (v13 - a1);
}

uint64_t sub_1000094E0(uint64_t result)
{
  if (*(&ipcp_fsm + 20 * result + 2) == 9 && ipdata_input_hook != 0)
  {
    return ipdata_input_hook();
  }

  return result;
}

void sub_100009524()
{
  if (dword_10004777C)
  {
    v0 = 0;
  }

  else
  {
    v0 = disable_defaultip == 0;
  }

  if (v0)
  {
    byte_100047767 = 1;
    v1 = gethostbyname(hostname);
    if (v1)
    {
      v2 = *v1->h_addr_list;
      v3 = *v2;
      if (*v2)
      {
        if (!bad_ip_adrs(*v2))
        {
          dword_10004777C = v3;
        }
      }
    }
  }

  if (disable_defaultip)
  {
    v4 = dword_10004777C == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  byte_10004A382 = v5;
}

uint64_t sub_1000095BC(uint64_t a1)
{
  v2 = &ipcp_wantoptions + 52 * a1;
  v3 = *(v2 + 8);
  if (!v3)
  {
    v3 = htonl();
    *(v2 + 8) = v3;
    v2[8] = 1;
  }

  v4 = *(v2 + 7);
  if (!v4)
  {
    v4 = htonl();
    *(v2 + 7) = v4;
    v2[7] = 1;
    byte_10004A382 = 0;
  }

  Mask = GetMask(v4);
  result = sifaddr(a1, v4, v3, Mask);
  if (result)
  {
    result = sifnpafmode(a1, 33, ip_src_address_filter);
    if (result)
    {
      result = sifup();
      if (result)
      {
        result = sifnpmode(a1, 33, 3);
        if (result)
        {
          if (v2[3] && sifdefaultroute())
          {
            dword_10004A384[a1] = 1;
          }

          if (v2[4] && sifproxyarp(a1, *(v2 + 8)))
          {
            dword_10004A388[a1] = 1;
          }

          if (byte_10004A36C)
          {
            sifdns(*(v2 + 8), *(v2 + 8));
          }

          if (byte_10004A36D)
          {
            sifwins();
          }

          notice("local  IP address %I", *(v2 + 7));
          notice("remote IP address %I", *(v2 + 8));
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_100009770(_BYTE *a1, int a2)
{
  result = 0;
  if (a2 >= 24 && !(a1[11] | ((a1[10] & 0x1F) << 8)))
  {
    if (a1[13] != 6)
    {
      return 1;
    }

    v3 = 4 * (a1[4] & 0xF);
    if (a2 - 4 >= (v3 + 20))
    {
      v4 = &a1[v3 + 4];
      if ((v4[13] & 1) == 0 || a2 - 4 != ((v4[12] >> 2) & 0x3C) + v3)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1000097FC()
{
  if (ipdata_print_hook)
  {
    return ipdata_print_hook();
  }

  else
  {
    return 0;
  }
}

uint64_t setipaddr(char *a1, uint64_t a2, int a3)
{
  result = strchr(a1, 58);
  if (result)
  {
    if (!a3)
    {
      return 1;
    }

    v6 = result;
    if (result != a1 && option_priority >= dword_10004A35C)
    {
      *result = 0;
      v7 = inet_addr(a1);
      if (v7 == -1)
      {
        v8 = gethostbyname(a1);
        if (!v8)
        {
          goto LABEL_25;
        }

        v7 = **v8->h_addr_list;
      }

      if (bad_ip_adrs(v7))
      {
        slprintf(byte_10004A31C, 64, "%I", v7);
        option_error("bad local IP address %s");
        return 0;
      }

      if (v7)
      {
        dword_10004777C = v7;
      }

      *v6 = 58;
      dword_10004A35C = option_priority;
    }

    v10 = v6[1];
    v9 = v6 + 1;
    if (!v10 || option_priority < dword_10004A360)
    {
      return 1;
    }

    v11 = inet_addr(v9);
    if (v11 != -1)
    {
      goto LABEL_16;
    }

    v12 = gethostbyname(v9);
    if (v12)
    {
      v11 = **v12->h_addr_list;
      if (!remote_name)
      {
        __strlcpy_chk();
      }

LABEL_16:
      if (bad_ip_adrs(v11))
      {
        slprintf(byte_10004A31C, 64, "%I", v11);
        option_error("bad remote IP address %s");
        return 0;
      }

      if (v11)
      {
        dword_100047780 = v11;
      }

      dword_10004A360 = option_priority;
      return 1;
    }

LABEL_25:
    option_error("unknown host: %s");
    return 0;
  }

  return result;
}

uint64_t parse_dotted_ip(char *a1, unsigned int *a2)
{
  __endptr = 0;
  v4 = strtoul(a1, &__endptr, 0);
  v5 = __endptr;
  if (__endptr == a1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 3;
  v8 = 24;
  while (v4 < 0x100)
  {
    v6 |= v4 << v8;
    if (!v7)
    {
      v4 = v6;
      goto LABEL_11;
    }

    if (*v5 == 46)
    {
      v9 = v5 + 1;
      --v7;
      v4 = strtoul(v5 + 1, &__endptr, 0);
      v5 = __endptr;
      v8 -= 8;
      if (__endptr != v9)
      {
        continue;
      }
    }

    return 0;
  }

  if (v7 < 3)
  {
    return 0;
  }

LABEL_11:
  *a2 = v4;
  return (v5 - a1);
}

uint64_t sub_100009B0C(char **a1)
{
  v2 = 0;
  result = int_option(*a1, &v2);
  if (result)
  {
    if ((v2 - 17) > 0xFFFFFFF0)
    {
      dword_1000477DC = v2 - 1;
      dword_100047774 = v2 - 1;
      slprintf(byte_10004A364, 8, "%d", v2);
      return 1;
    }

    else
    {
      option_error("vj-max-slots value must be between 2 and 16");
      return 0;
    }
  }

  return result;
}

uint64_t sub_100009B94(const char **a1)
{
  v2 = inet_addr(*a1);
  if (v2 == -1)
  {
    v3 = gethostbyname(*a1);
    if (!v3)
    {
      option_error("invalid address parameter '%s' for ms-dns option", *a1);
      return 0;
    }

    v2 = **v3->h_addr_list;
  }

  v4 = dword_1000477F0;
  if (!dword_1000477F0)
  {
    v4 = v2;
  }

  dword_1000477EC = v4;
  dword_1000477F0 = v2;
  return 1;
}

uint64_t sub_100009C1C(const char **a1)
{
  v2 = inet_addr(*a1);
  if (v2 == -1)
  {
    v3 = gethostbyname(*a1);
    if (!v3)
    {
      option_error("invalid address parameter '%s' for ms-wins option", *a1);
      return 0;
    }

    v2 = **v3->h_addr_list;
  }

  v4 = dword_1000477F8;
  if (!dword_1000477F8)
  {
    v4 = v2;
  }

  dword_1000477F4 = v4;
  dword_1000477F8 = v2;
  return 1;
}

uint64_t sub_100009CA4(char **a1)
{
  v6 = 0;
  v2 = *a1;
  v3 = parse_dotted_ip(*a1, &v6);
  v4 = htonl();
  if (!v3 || v2[v3] || (netmask & ~v4) != 0)
  {
    option_error("invalid netmask value '%s'", *a1);
    return 0;
  }

  else
  {
    netmask = v4;
    slprintf(byte_10004A36E, 20, "%I", v4);
    return 1;
  }
}

uint64_t sub_100009D54(uint64_t a1, uint64_t (*a2)(uint64_t, const char *), uint64_t a3)
{
  if (dword_10004777C)
  {
    (a2)(a3, "%I", dword_10004777C);
  }

  result = a2(a3, ":");
  if (dword_100047780)
  {
    return (a2)(a3, "%I", dword_100047780);
  }

  return result;
}

int *sub_100009DD0(int *result)
{
  v1 = *result;
  v2 = &ipcp_wantoptions + 52 * *result;
  if (*v2 || (v3 = v2[1]) != 0)
  {
    v4 = &ipcp_allowoptions + 52 * v1;
    if (*v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = v4[1] != 0;
    }
  }

  v5 = &ipcp_gotoptions + 52 * v1;
  v2[2] = v3;
  if (!*(v2 + 7))
  {
    v2[7] = 1;
  }

  if (!*(v2 + 8))
  {
    v2[8] = 1;
  }

  v6 = byte_10004A36C;
  v2[9] = byte_10004A36C;
  v2[10] = v6;
  v7 = byte_10004A36D;
  v2[11] = byte_10004A36D;
  v2[12] = v7;
  v8 = *(v2 + 2);
  *(v5 + 1) = *(v2 + 1);
  *(v5 + 2) = v8;
  *(v5 + 12) = *(v2 + 12);
  *v5 = *v2;
  if (!byte_10004A382)
  {
    *(v5 + 7) = 0;
  }

  if (ip_choose_hook)
  {
    result = ip_choose_hook(v2 + 32);
    if (*(v2 + 8))
    {
      v2[8] = 0;
    }
  }

  return result;
}

uint64_t sub_100009ED4(int *a1, uint8x8_t a2)
{
  v2 = *a1;
  v3 = &ipcp_gotoptions + 52 * *a1;
  v4 = &ipcp_wantoptions + 52 * *a1;
  if (*v4 && !*v3 && !v3[1])
  {
    v3[1] = 1;
  }

  if (v4[5])
  {
    if (!v3[5] && !v3[6])
    {
      v10 = &ipcp_hisoptions + 52 * v2;
      if (v10[5])
      {
        if (v10[6])
        {
          *(v3 + 5) = 257;
          *(v3 + 4) = *(v10 + 4);
        }
      }
    }
  }

  if (*v3)
  {
    v5 = 0;
  }

  else if (v3[1])
  {
    v5 = 10;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3[5];
  if (v3[5])
  {
    if (v3[6])
    {
      v6 = 4;
    }

    else
    {
      v6 = 6;
    }
  }

  if (*v3)
  {
    v7 = 6;
  }

  else
  {
    v7 = 0;
  }

  a2.i32[0] = *(v3 + 9);
  v8.i64[0] = 0x600000006;
  v8.i64[1] = 0x600000006;
  return (vaddvq_s32(vbicq_s8(v8, vceqzq_s32(vmovl_u16(*&vmovl_u8(a2))))) + v7 + v6 + v5);
}

int *sub_100009FDC(int *result, uint64_t a2, int *a3)
{
  v4 = a2;
  v5 = &ipcp_gotoptions + 52 * *result;
  v6 = *a3;
  if (!*v5 && v5[1])
  {
    v8 = v6 - 10;
    if (v6 < 10)
    {
      v5[1] = 0;
    }

    else
    {
      *a2 = 2561;
      *(a2 + 2) = bswap32(ntohl());
      result = ntohl();
      *(v4 + 6) = bswap32(result);
      v4 += 10;
      v6 = v8;
    }
  }

  if (v5[5])
  {
    if (v5[6])
    {
      v7 = 4;
    }

    else
    {
      v7 = 6;
    }

    if (v6 >= v7)
    {
      *v4 = 2;
      *(v4 + 1) = v7;
      *(v4 + 2) = BYTE1(*(v5 + 4));
      *(v4 + 3) = *(v5 + 4);
      if (v5[6])
      {
        v4 += 4;
      }

      else
      {
        *(v4 + 4) = *(v5 + 5);
        *(v4 + 5) = v5[24];
        v4 += 6;
      }

      v6 -= v7;
    }

    else
    {
      v5[5] = 0;
    }
  }

  if (*v5)
  {
    v9 = v6 - 6;
    if (v6 < 6)
    {
      *v5 = 0;
    }

    else
    {
      *v4 = 1539;
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v4 += 6;
      v6 = v9;
    }
  }

  if (v5[9])
  {
    v10 = v6 - 6;
    if (v6 < 6)
    {
      v5[9] = 0;
    }

    else
    {
      *v4 = 1665;
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v4 += 6;
      v6 = v10;
    }
  }

  if (v5[10])
  {
    v11 = v6 - 6;
    if (v6 < 6)
    {
      v5[10] = 0;
    }

    else
    {
      *v4 = 1667;
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v4 += 6;
      v6 = v11;
    }
  }

  if (v5[11])
  {
    v12 = v6 - 6;
    if (v6 < 6)
    {
      v5[11] = 0;
    }

    else
    {
      *v4 = 1666;
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v4 += 6;
      v6 = v12;
    }
  }

  if (v5[12])
  {
    v13 = v6 - 6;
    if (v6 < 6)
    {
      v5[12] = 0;
    }

    else
    {
      *v4 = 1668;
      result = ntohl();
      *(v4 + 2) = bswap32(result);
      v6 = v13;
    }
  }

  *a3 -= v6;
  return result;
}

uint64_t sub_10000A208(int *a1, unsigned __int8 *a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = &ipcp_gotoptions + 52 * *a1;
  v6 = *v5;
  if (!*v5 && v5[1])
  {
    v3 = a3 - 10;
    if (a3 < 10 || a2[1] != 10 || *a2 != 1 || *(v5 + 7) != htonl() || *(v5 + 8) != htonl())
    {
      goto LABEL_48;
    }

    v4 += 10;
  }

  if (v5[5])
  {
    if (v5[6])
    {
      v7 = 4;
    }

    else
    {
      v7 = 6;
    }

    v3 -= v7;
    if (v3 < 0)
    {
      goto LABEL_48;
    }

    v8 = v7 == v4[1] && *v4 == 2;
    if (!v8 || *(v5 + 4) != bswap32(*(v4 + 1)) >> 16)
    {
      goto LABEL_48;
    }

    if (!v5[6])
    {
      if (*(v5 + 5) != v4[4] || v4[5] != v5[24])
      {
        goto LABEL_48;
      }

      v4 += 6;
      if (!v6)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v4 += 4;
  }

  if (v6)
  {
LABEL_16:
    v9 = __OFSUB__(v3, 6);
    v3 -= 6;
    if (v3 < 0 != v9 || v4[1] != 6 || *v4 != 3 || *(v5 + 7) != htonl())
    {
      goto LABEL_48;
    }

    v4 += 6;
  }

LABEL_21:
  if (v5[9])
  {
    v9 = __OFSUB__(v3, 6);
    v3 -= 6;
    if (v3 < 0 != v9 || v4[1] != 6 || *v4 != 129 || *(v5 + 9) != htonl())
    {
      goto LABEL_48;
    }

    v4 += 6;
  }

  if (v5[10])
  {
    v9 = __OFSUB__(v3, 6);
    v3 -= 6;
    if (v3 < 0 != v9 || v4[1] != 6 || *v4 != 131 || *(v5 + 10) != htonl())
    {
      goto LABEL_48;
    }

    v4 += 6;
  }

  if (v5[11])
  {
    v9 = __OFSUB__(v3, 6);
    v3 -= 6;
    if (v3 < 0 != v9 || v4[1] != 6 || *v4 != 130 || *(v5 + 11) != htonl())
    {
      goto LABEL_48;
    }

    v4 += 6;
  }

  if (!v5[12] || (v9 = __OFSUB__(v3, 6), v3 -= 6, v3 < 0 == v9) && v4[1] == 6 && *v4 == 132 && *(v5 + 12) == htonl())
  {
    if (!v3)
    {
      return 1;
    }
  }

LABEL_48:
  if (debug)
  {
    dbglog("ipcp_ackci: received bad Ack!");
  }

  return 0;
}

uint64_t sub_10000A4AC(int *a1, unsigned __int8 *a2, int a3)
{
  v3 = a2;
  v4 = a1;
  v5 = &ipcp_gotoptions + 52 * *a1;
  v6 = *v5;
  v7 = v5[5];
  v41 = *(v5 + 5);
  v42 = v5[6];
  v39 = *(v5 + 4);
  v40 = v5[24];
  v8 = *(v5 + 8);
  v50 = *(v5 + 7);
  v43 = *(v5 + 10);
  v44 = *(v5 + 9);
  v45 = *(v5 + 12);
  v46 = *(v5 + 11);
  v48 = v5[1];
  if (*v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5[1] == 0;
  }

  if (v9)
  {
    goto LABEL_6;
  }

  v10 = 0;
  v16 = a3 - 10;
  if (a3 < 10 || a2[1] != 10)
  {
    goto LABEL_7;
  }

  if (*a2 != 1)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v18 = htonl();
  v19 = htonl();
  if (v18)
  {
    v20 = v5[7] == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v50;
  if (!v20)
  {
    v21 = v18;
  }

  v50 = v21;
  v4 = a1;
  if (v19)
  {
    v22 = v5[8] == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v8 = v19;
  }

  v10 = 1;
  v3 += 10;
  a3 = v16;
LABEL_7:
  if (v7)
  {
    v11 = v3[1];
    if ((v11 | 2) == 6 && (v12 = a3 - v11, a3 >= v11) && *v3 == 2)
    {
      v13 = __rev16(*(v3 + 1));
      if (v11 != 6)
      {
        v3 += 4;
        if (v13 == 55 || v13 == 45)
        {
          v49 = 1;
          v38 = v7;
          v39 = v13;
          v42 = 1;
        }

        else
        {
          v38 = 0;
          v49 = 1;
        }

        goto LABEL_35;
      }

      if (v13 != 45)
      {
        v38 = 0;
        v49 = 1;
        v3 += 6;
        goto LABEL_35;
      }

      v14 = v41;
      if (v41 >= v3[4])
      {
        v14 = v3[4];
      }

      v41 = v14;
      v42 = 0;
      v15 = v40;
      if (!v3[5])
      {
        v15 = 0;
      }

      v40 = v15;
      v49 = 1;
      v3 += 6;
    }

    else
    {
      v49 = 0;
      v12 = a3;
    }

    v38 = v7;
  }

  else
  {
    v49 = 0;
    v38 = 0;
    v12 = a3;
  }

LABEL_35:
  v47 = v7;
  if (!v6)
  {
    goto LABEL_45;
  }

  v23 = 0;
  if (v3[1] != 6 || v12 < 6)
  {
    goto LABEL_46;
  }

  if (*v3 != 3)
  {
LABEL_45:
    v23 = 0;
    goto LABEL_46;
  }

  v24 = htonl();
  if (v24)
  {
    v25 = v5[7] == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v50;
  if (!v25)
  {
    v26 = v24;
  }

  v50 = v26;
  v23 = 1;
  v3 += 6;
  v12 -= 6;
LABEL_46:
  if (v5[9] && v3[1] == 6 && v12 >= 6 && *v3 == 129)
  {
    v44 = htonl();
    v3 += 6;
    v12 -= 6;
  }

  if (v5[10] && v3[1] == 6 && v12 >= 6 && *v3 == 131)
  {
    v43 = htonl();
    v3 += 6;
    v12 -= 6;
  }

  if (v5[11] && v3[1] == 6 && v12 >= 6 && *v3 == 130)
  {
    v46 = htonl();
    v3 += 6;
    v12 -= 6;
  }

  if (v5[12] && v3[1] == 6 && v12 >= 6)
  {
    if (*v3 != 132)
    {
      goto LABEL_67;
    }

    v45 = htonl();
    v3 += 6;
    v12 -= 6;
  }

  if (v12 < 2)
  {
    v28 = v6;
    v27 = v48;
LABEL_105:
    if (v4[2] == 9)
    {
      return 1;
    }

    *v5 = v28;
    v5[1] = v27;
    v5[5] = v38;
    v5[6] = v42;
    *(v5 + 4) = v39;
    *(v5 + 5) = v41;
    v5[24] = v40;
    *(v5 + 7) = v50;
    *(v5 + 8) = v8;
    *(v5 + 9) = v44;
    *(v5 + 10) = v43;
    result = 1;
    *(v5 + 11) = v46;
    *(v5 + 12) = v45;
    return result;
  }

LABEL_67:
  v37 = v4;
  v27 = v48;
  v28 = v6;
  while (1)
  {
    v29 = v3[1];
    if (v29 < 2)
    {
      break;
    }

    v12 -= v29;
    if (v12 < 0)
    {
      break;
    }

    v30 = *v3;
    switch(v30)
    {
      case 1:
        if (!v6 && v48 || v10 || v29 != 10)
        {
          goto LABEL_101;
        }

        v33 = htonl();
        if (v33)
        {
          v34 = v50;
          if (v5[7])
          {
            v34 = v33;
          }

          v50 = v34;
        }

        v35 = htonl();
        v28 = 0;
        if (v35 && v5[8])
        {
          v8 = v35;
        }

        v10 = 1;
        break;
      case 3:
        if (v6 || v23 || v29 != 6)
        {
          goto LABEL_101;
        }

        v31 = htonl();
        if (v31)
        {
          v32 = v50;
          if (v5[7])
          {
            v32 = v31;
          }
        }

        else
        {
          v32 = v50;
        }

        v27 = 0;
        v50 = v32;
        if (v32)
        {
          v28 = 1;
        }

        v23 = 1;
        break;
      case 2:
        if (v47 || v49 || (v29 & 0xFFFFFFFD) != 4)
        {
          goto LABEL_101;
        }

        v49 = 1;
        break;
    }

    v3 += v29;
    if (v12 <= 1)
    {
      v4 = v37;
      goto LABEL_105;
    }
  }

LABEL_101:
  if (debug)
  {
    dbglog("ipcp_nakci: received bad Nak!");
  }

  return 0;
}

uint64_t sub_10000A9F4(int *a1, unsigned __int8 *a2, int a3)
{
  v3 = a2;
  v5 = &ipcp_gotoptions + 52 * *a1;
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[5];
  v9 = v5[9];
  v10 = v5[10];
  v11 = v5[11];
  v12 = v5[12];
  if (!*v5)
  {
    if (v5[1])
    {
      v22 = a3 - 10;
      if (a3 >= 10 && a2[1] == 10 && *a2 == 1)
      {
        if (htonl() != *(v5 + 7) || htonl() != *(v5 + 8))
        {
          goto LABEL_45;
        }

        v7 = 0;
        v3 += 10;
        a3 = v22;
      }
    }
  }

  v23 = v7;
  if (v8)
  {
    v13 = v3[1];
    v14 = v5[6] ? 4 : 6;
    v15 = v14 != v13 || a3 < v13;
    if (!v15 && *v3 == 2)
    {
      if (*(v5 + 4) != bswap32(*(v3 + 1)) >> 16)
      {
        goto LABEL_45;
      }

      a3 -= v13;
      if (!v5[6])
      {
        if (*(v5 + 5) != v3[4] || v3[5] != v5[24])
        {
          goto LABEL_45;
        }

        LOBYTE(v8) = 0;
        v3 += 6;
        if (!v6)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      LOBYTE(v8) = 0;
      v3 += 4;
    }
  }

  if (v6)
  {
LABEL_15:
    if (v3[1] == 6)
    {
      v16 = a3 - 6;
      if (a3 >= 6 && *v3 == 3)
      {
        if (htonl() != *(v5 + 7))
        {
          goto LABEL_45;
        }

        LOBYTE(v6) = 0;
        v3 += 6;
        a3 = v16;
      }
    }
  }

LABEL_20:
  if (v9)
  {
    if (v3[1] == 6)
    {
      v17 = a3 - 6;
      if (a3 >= 6 && *v3 == 129)
      {
        if (htonl() != *(v5 + 9))
        {
          goto LABEL_45;
        }

        LOBYTE(v9) = 0;
        v3 += 6;
        a3 = v17;
      }
    }
  }

  if (v10)
  {
    if (v3[1] == 6)
    {
      v18 = a3 - 6;
      if (a3 >= 6 && *v3 == 131)
      {
        if (htonl() != *(v5 + 10))
        {
          goto LABEL_45;
        }

        LOBYTE(v10) = 0;
        v3 += 6;
        a3 = v18;
      }
    }
  }

  if (v11)
  {
    if (v3[1] == 6)
    {
      v19 = a3 - 6;
      if (a3 >= 6 && *v3 == 130)
      {
        if (htonl() != *(v5 + 11))
        {
          goto LABEL_45;
        }

        LOBYTE(v11) = 0;
        v3 += 6;
        a3 = v19;
      }
    }
  }

  if (v12)
  {
    if (v3[1] == 6)
    {
      v20 = a3 - 6;
      if (a3 >= 6)
      {
        if (*v3 != 132 || htonl() != *(v5 + 12))
        {
          goto LABEL_45;
        }

        LOBYTE(v12) = 0;
        a3 = v20;
      }
    }
  }

  if (!a3)
  {
    if (a1[2] == 9)
    {
      return 1;
    }

    *v5 = v6;
    v5[1] = v23;
    v5[5] = v8;
    v5[9] = v9;
    v5[10] = v10;
    v5[11] = v11;
    result = 1;
    v5[12] = v12;
    return result;
  }

LABEL_45:
  if (debug)
  {
    dbglog("ipcp_rejci: received bad Reject!");
  }

  return 0;
}

uint64_t sub_10000AD2C(int *a1, unsigned __int8 *a2, int *a3, int a4)
{
  v4 = a4;
  v5 = a2;
  v6 = &ipcp_wantoptions + 52 * *a1;
  v7 = &ipcp_hisoptions + 52 * *a1;
  v8 = &ipcp_allowoptions + 52 * *a1;
  v9 = *a3;
  *(v7 + 12) = 0;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *v7 = 0u;
  v35 = v8;
  v36 = v6;
  v33 = v8 + 36;
  v34 = v8 + 44;
  v10 = a2;
  v11 = 2;
  while (v9)
  {
    v12 = v10;
    if (v9 < 2 || ((v13 = v10[1], v13 >= 2) ? (v14 = v9 >= v13) : (v14 = 0), !v14))
    {
      if (debug)
      {
        dbglog("ipcp_reqci: bad CI length!");
      }

      LOWORD(v13) = v9;
      v9 = 0;
      goto LABEL_100;
    }

    v15 = *v10;
    v9 -= v13;
    v10 += v13;
    if (*v12 > 0x80u)
    {
      if (v15 > 130)
      {
        if (v15 == 131)
        {
          goto LABEL_27;
        }

        if (v15 != 132)
        {
          goto LABEL_100;
        }

LABEL_25:
        v18 = v15 == 132;
        if (v13 != 6)
        {
          goto LABEL_100;
        }

        v19 = v34;
      }

      else
      {
        if (v15 != 129)
        {
          if (v15 != 130)
          {
            goto LABEL_100;
          }

          goto LABEL_25;
        }

LABEL_27:
        v18 = v15 == 131;
        if (v13 != 6)
        {
          goto LABEL_100;
        }

        v19 = v33;
      }

      v20 = *&v19[4 * v18];
      if (!v20)
      {
        goto LABEL_100;
      }

      if (htonl() != v20)
      {
        *(v12 + 2) = bswap32(ntohl());
        goto LABEL_93;
      }

      v17 = 2;
      goto LABEL_90;
    }

    if (v15 == 1)
    {
      if (!v35[1] || v13 != 10 || *v7)
      {
        goto LABEL_100;
      }

      v25 = htonl();
      if (v25 == *(v36 + 8))
      {
        if (!v25)
        {
          v36[2] = 0;
          LOWORD(v13) = 10;
          goto LABEL_100;
        }

        v17 = 2;
        goto LABEL_82;
      }

      if (v25)
      {
        if (v36[8])
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }

        if (v36[8] || v4)
        {
          goto LABEL_82;
        }

LABEL_80:
        *(v12 + 2) = bswap32(ntohl());
      }

      else if (!v4)
      {
        goto LABEL_80;
      }

      v17 = 3;
LABEL_82:
      v26 = htonl();
      if (v26 != *(v36 + 7))
      {
        if (v26 && v36[7])
        {
          *(v36 + 7) = v26;
        }

        else
        {
          if (!a4)
          {
            *(v12 + 6) = bswap32(ntohl());
          }

          v17 = 3;
        }
      }

      v7[1] = 1;
      *(v7 + 7) = v26;
      *(v7 + 8) = v25;
      v4 = a4;
      goto LABEL_90;
    }

    if (v15 != 2)
    {
      if (v15 != 3 || !*v35 || v13 != 6 || v7[1])
      {
        goto LABEL_100;
      }

      v16 = htonl();
      if (v16 == *(v36 + 8))
      {
        if (!v16)
        {
          v36[2] = 0;
          LOWORD(v13) = 6;
LABEL_100:
          if (v11 != 4)
          {
            v5 = a2;
          }

          v11 = 4;
          goto LABEL_103;
        }

        v17 = 2;
        goto LABEL_78;
      }

      if (v16)
      {
        if (v36[8])
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }

        if (v36[8] || v4)
        {
          goto LABEL_78;
        }

LABEL_76:
        *(v12 + 2) = bswap32(ntohl());
      }

      else if (!v4)
      {
        goto LABEL_76;
      }

      v17 = 3;
LABEL_78:
      *v7 = 1;
      *(v7 + 8) = v16;
      goto LABEL_90;
    }

    if ((v13 & 0xFFFFFFFD) != 4 || !v35[5])
    {
      goto LABEL_100;
    }

    v21 = __rev16(*(v12 + 1));
    if (v21 == 45)
    {
      v7[5] = 1;
      *(v7 + 4) = 45;
      if (v13 == 6)
      {
        v22 = v12[4];
        v23 = *(v35 + 5);
        if (v23 >= v22)
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }

        if (v23 < v22 && !v4)
        {
          v12[4] = v23;
          v17 = 3;
        }

        v24 = v12[5];
        if (v24)
        {
          if (!v35[24])
          {
            v17 = 3;
            if (!v4)
            {
              v12[5] = v36[24];
              v17 = 3;
            }
          }
        }

        *(v7 + 5) = v22;
        v7[24] = v24;
        goto LABEL_90;
      }
    }

    else
    {
      if (v13 != 4 || v21 != 55)
      {
        goto LABEL_100;
      }

      v7[5] = 1;
      *(v7 + 4) = 55;
    }

    v7[6] = 1;
    *(v7 + 5) = 15;
    v17 = 2;
    v7[24] = 1;
LABEL_90:
    if (v17 != 2 || v11 == 2)
    {
      if (v17 != 3)
      {
        goto LABEL_103;
      }

LABEL_93:
      if (v4)
      {
        goto LABEL_100;
      }

      if (v11 != 4)
      {
        if (v11 == 2)
        {
          v5 = a2;
        }

        v11 = 3;
LABEL_103:
        if (v5 != v12)
        {
          memcpy(v5, v12, v13);
        }

        v5 += v13;
      }
    }
  }

  if (v11 == 4 || *v7 || v7[1])
  {
    v27 = a3;
  }

  else
  {
    v27 = a3;
    if (!v4 && v36[2])
    {
      if (v11 == 2)
      {
        v36[2] = 0;
        v5 = a2;
      }

      *v5 = 1539;
      *(v5 + 2) = bswap32(ntohl());
      LODWORD(v5) = v5 + 6;
      v11 = 3;
    }
  }

  *v27 = v5 - a2;
  if (debug)
  {
    v28 = "REJ";
    if (v11 == 3)
    {
      v28 = "NAK";
    }

    if (v11 == 2)
    {
      v28 = "ACK";
    }

    dbglog("ipcp: returning Configure-%s", v28);
  }

  return v11;
}

void sub_10000B288(unsigned int *a1)
{
  v2 = &ipcp_hisoptions + 52 * *a1;
  v3 = &ipcp_gotoptions + 52 * *a1;
  v4 = &ipcp_wantoptions + 52 * *a1;
  if (debug)
  {
    dbglog("ipcp: up");
  }

  if (!*v2 && !v2[1])
  {
    *(v2 + 8) = *(v4 + 8);
  }

  v5 = *(v3 + 7);
  if (v5)
  {
    if (!*(v2 + 8))
    {
      v6 = htonl();
      *(v2 + 8) = v6;
      warning("Could not determine remote IP address: defaulting to %I", v6);
      v5 = *(v3 + 7);
    }

    slprintf(byte_10004A31C, 64, "%I", v5);
    script_setenv("IPLOCAL", byte_10004A31C);
    slprintf(byte_10004A31C, 64, "%I", *(v2 + 8));
    script_setenv("IPREMOTE", byte_10004A31C);
    if (*(v3 + 9))
    {
      slprintf(byte_10004A31C, 64, "%I", *(v3 + 9));
      script_setenv("DNS1", byte_10004A31C);
    }

    if (*(v3 + 10))
    {
      slprintf(byte_10004A31C, 64, "%I", *(v3 + 10));
      script_setenv("DNS2", byte_10004A31C);
    }

    if (byte_10004A36C && (*(v3 + 9) || *(v3 + 10)))
    {
      script_setenv("USEPEERDNS", "1");
      sifdns(*(v3 + 9), *(v3 + 10));
    }

    if (byte_10004A36D && *(v3 + 44))
    {
      sifwins();
    }

    if (auth_ip_addr(*a1, *(v2 + 8)))
    {
      sifvjcomp(*a1, v2[5], v2[24], *(v2 + 5));
      v7 = *(v3 + 7);
      if (demand)
      {
        v8 = *(v4 + 7);
        if (v7 == v8)
        {
          v9 = *(v4 + 8);
          if (*(v2 + 8) == v9)
          {
LABEL_54:
            demand_rexmit(33);
            sifnpmode(*a1, 33, 0);
LABEL_55:
            np_up();
            byte_10004A38C = 1;
            v20 = notify(ip_up_notifier, 0);
            if (ipdata_up_hook)
            {
              v20 = ipdata_up_hook(*a1, *(v3 + 7), *(v2 + 8));
            }

            if (ip_up_hook)
            {
              ip_up_hook(v20);
            }

            notify(ip_up_notify, 0);
            if ((byte_10004A390 & 1) == 0 && !dword_10004A394)
            {
              byte_10004A390 = 1;
              if (ip_up_script)
              {
                v21 = ip_up_script;
              }

              else
              {
                v21 = "/etc/ppp/ip-up";
              }

              sub_10000BB8C(v21);
            }

            return;
          }
        }

        else
        {
          v9 = *(v4 + 8);
        }

        sub_10000BAFC(*a1, v8, v9);
        if (*(v3 + 7) == *(v4 + 7))
        {
          script_unsetenv("OLDIPLOCAL");
        }

        else
        {
          warning("Local IP address changed to %I", *(v3 + 7));
          slprintf(byte_10004A31C, 64, "%I", *(v4 + 7));
          script_setenv("OLDIPLOCAL", byte_10004A31C);
          *(v4 + 7) = *(v3 + 7);
        }

        if (*(v2 + 8) == *(v4 + 8))
        {
          script_unsetenv("OLDIPREMOTE");
        }

        else
        {
          warning("Remote IP address changed to %I", *(v2 + 8));
          slprintf(byte_10004A31C, 64, "%I", *(v4 + 8));
          script_setenv("OLDIPREMOTE", byte_10004A31C);
          *(v4 + 8) = *(v2 + 8);
        }

        Mask = GetMask(*(v3 + 7));
        if (sifaddr(*a1, *(v3 + 7), *(v2 + 8), Mask))
        {
          v17 = *a1;
          if (*(&ipcp_wantoptions + 52 * v17 + 3))
          {
            v18 = sifdefaultroute();
            v17 = *a1;
            v19 = *a1;
            if (v18)
            {
              dword_10004A384[v17] = 1;
            }
          }

          else
          {
            v19 = *a1;
          }

          if (*(&ipcp_wantoptions + 52 * v19 + 4) && sifproxyarp(v17, *(v2 + 8)))
          {
            dword_10004A388[*a1] = 1;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v12 = GetMask(v7);
        if (sifaddr(*a1, *(v3 + 7), *(v2 + 8), v12))
        {
          if (!sifnpafmode(*a1, 33, ip_src_address_filter))
          {
            return;
          }

          if (sifup())
          {
            sifnpmode(*a1, 33, 0);
            v13 = *a1;
            if (*(&ipcp_wantoptions + 52 * v13 + 3))
            {
              v14 = sifdefaultroute();
              v13 = *a1;
              v15 = *a1;
              if (v14)
              {
                dword_10004A384[v13] = 1;
              }
            }

            else
            {
              v15 = *a1;
            }

            if (*(&ipcp_wantoptions + 52 * v15 + 4) && sifproxyarp(v13, *(v2 + 8)))
            {
              dword_10004A388[*a1] = 1;
            }

            dword_10004777C = *(v3 + 7);
            notice("local  IP address %I", dword_10004777C);
            notice("remote IP address %I", *(v2 + 8));
            if (*(v3 + 9))
            {
              notice("primary   DNS address %I", *(v3 + 9));
            }

            if (*(v3 + 10))
            {
              notice("secondary DNS address %I", *(v3 + 10));
            }

            goto LABEL_55;
          }

          if (debug)
          {
            warning("Interface failed to come up");
          }

          goto LABEL_46;
        }
      }

      if (debug)
      {
        warning("Interface configuration failed");
      }

LABEL_46:
      v10 = &ipcp_fsm + 80 * *a1;
      v11 = "Interface configuration failed";
      goto LABEL_47;
    }

    error("Peer is not authorized to use remote address %I", *(v2 + 8));
    v10 = &ipcp_fsm + 80 * *a1;
    v11 = "Unauthorized remote IP address";
  }

  else
  {
    error("Could not determine local IP address");
    v10 = &ipcp_fsm + 80 * *a1;
    v11 = "Could not determine local IP address";
  }

LABEL_47:

  fsm_close(v10, v11);
}

uint64_t sub_10000B940(unsigned int *a1)
{
  if (debug)
  {
    dbglog("ipcp: down");
  }

  update_link_stats(*a1);
  v2 = notify(ip_down_notifier, 0);
  if (ipdata_down_hook)
  {
    v2 = ipdata_down_hook(*a1);
  }

  if (ip_down_hook)
  {
    ip_down_hook(v2);
  }

  if (byte_10004A38C == 1)
  {
    byte_10004A38C = 0;
    np_down();
  }

  sifvjcomp(*a1, 0, 0, 0);
  notify(ip_down_notify, 0);
  v3 = *a1;
  if (demand)
  {
    result = sifnpmode(v3, 33, 3);
  }

  else
  {
    sifnpmode(v3, 33, 1);
    sifdown();
    result = sub_10000BAFC(*a1, *(&ipcp_gotoptions + 13 * *a1 + 7), *(&ipcp_hisoptions + 13 * *a1 + 8));
  }

  if (byte_10004A390 == 1 && !dword_10004A394)
  {
    byte_10004A390 = 0;
    if (ip_down_script)
    {
      v5 = ip_down_script;
    }

    else
    {
      v5 = "/etc/ppp/ip-down";
    }

    return sub_10000BB8C(v5);
  }

  return result;
}

void sub_10000BAB0()
{
  if (byte_10004A398 == 1)
  {
    byte_10004A398 = 0;
    np_finished();
  }
}

uint64_t ***sub_10000BAD4(uint64_t ***result)
{
  if (*(result + 6) - *(result + 7) == 2)
  {
    return notify(protocolsready_notifier, 0);
  }

  return result;
}

uint64_t sub_10000BAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (dword_10004A388[a1])
  {
    cifproxyarp();
    dword_10004A388[a1] = 0;
  }

  if (dword_10004A384[a1])
  {
    cifdefaultroute();
    dword_10004A384[a1] = 0;
  }

  return cifaddr(a1, v4, v3);
}

uint64_t sub_10000BB8C(char *a1)
{
  slprintf(v6, 32, "%d", baud_rate);
  slprintf(v5, 32, "%I", dword_1000477B0);
  slprintf(v4, 32, "%I", dword_10004781C);
  v3[0] = a1;
  v3[1] = &ifname;
  v3[2] = &devnam;
  v3[3] = v6;
  v3[4] = v5;
  v3[5] = v4;
  v3[6] = ipparam;
  v3[7] = 0;
  result = run_program(a1, v3, 0, sub_10000BCB8, 0);
  dword_10004A394 = result;
  return result;
}

void sub_10000BCB8()
{
  dword_10004A394 = 0;
  if (byte_10004A390 == 1)
  {
    if (dword_100047838 == 9)
    {
      return;
    }

    v0 = "/etc/ppp/ip-down";
    v1 = &ip_down_script;
  }

  else
  {
    if (dword_100047838 != 9)
    {
      return;
    }

    v0 = "/etc/ppp/ip-up";
    v1 = &ip_up_script;
  }

  byte_10004A390 ^= 1u;
  if (*v1)
  {
    sub_10000BB8C(*v1);
  }

  else
  {
    sub_10000BB8C(v0);
  }
}

double sub_10000BD28(int a1)
{
  v1 = &lcp_fsm + 80 * a1;
  v2 = &lcp_wantoptions + 68 * a1;
  v3 = &lcp_allowoptions + 68 * a1;
  *v1 = a1;
  *(v1 + 1) = 49185;
  *(v1 + 7) = off_100043808;
  fsm_init(v1);
  result = 0.0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 16) = 0;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 3) = 257;
  *(v2 + 4) = 1500;
  *(v2 + 4) = 257;
  v2[10] = 1;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 16) = 0;
  *(v3 + 3) = 0x101010101010101;
  *(v3 + 4) = 0x4000;
  v3[24] = 7;
  v3[15] = 1;
  return result;
}

void sub_10000BDE4(int a1, char *__src, unsigned int a3)
{
  v5 = &lcp_fsm + 80 * a1;
  v6 = *(v5 + 3);
  if ((v6 & 0x100) != 0)
  {
    *(v5 + 3) = v6 & 0xFFFFFEFF;
    fsm_lowerup(&lcp_fsm + 80 * a1);
  }

  fsm_input(v5, __src, a3);
}

void sub_10000BE54(int a1)
{
  error("Received Protocol-Reject for LCP!");

  fsm_protreject(&lcp_fsm + 80 * a1);
}

void lcp_lowerup(uint64_t a1)
{
  if ((ppp_send_config(a1, 1500, 0xFFFFFFFFLL, 0, 0) & 0x80000000) == 0)
  {
    v2 = a1;
    v3 = lax_recv ? 0 : 0xFFFFFFFFLL;
    if ((ppp_recv_config(a1, 1500, v3, *(&lcp_wantoptions + 68 * a1 + 9), *(&lcp_wantoptions + 68 * a1 + 10)) & 0x80000000) == 0)
    {
      v4 = &lcp_fsm + 80 * a1;
      peer_mru[v2] = 1500;
      notify(lcp_lowerup_notify, 0);
      if (listen_time)
      {
        *(v4 + 3) |= 0x100u;

        timeout(sub_10000C7C8);
      }

      else
      {

        fsm_lowerup(v4);
      }
    }
  }
}

void lcp_lowerdown(int a1)
{
  v1 = &lcp_fsm + 80 * a1;
  notify(lcp_lowerdown_notify, 0);
  v2 = *(v1 + 3);
  if ((v2 & 0x100) != 0)
  {
    *(v1 + 3) = v2 & 0xFFFFFEFF;
  }

  else
  {

    fsm_lowerdown(v1);
  }
}

void lcp_open(int a1)
{
  v2 = &lcp_fsm + 80 * a1;
  v3 = &lcp_wantoptions + 68 * a1;
  v4 = *(v2 + 3) & 0xFFFFFFFA;
  *(v2 + 3) = v4;
  if (*v3)
  {
    v4 |= 1u;
    *(v2 + 3) = v4;
  }

  if (v3[1])
  {
    *(v2 + 3) = v4 | 4;
  }

  fsm_open(v2);
}

void lcp_close(int a1, char *__s)
{
  v3 = &lcp_fsm + 80 * a1;
  if (v3[13])
  {
    untimeout(sub_10000C7C8, v3);
    v4 = *(v3 + 3);
    if ((v4 & 0x100) != 0)
    {
      *(v3 + 3) = v4 & 0xFFFFFEFF;
      fsm_lowerup(v3);
    }
  }

  if (phase)
  {
    new_phase(9);
  }

  if (*(v3 + 2) == 3 && (v3[12] & 5) != 0)
  {
    notice("LCP close (%s).", __s);
    *(v3 + 2) = 2;
  }

  else
  {
    fsm_close(v3, __s);
    if (!*(v3 + 2))
    {
      notice("LCP close (%s).", __s);
    }
  }

  link_terminated();
}

uint64_t sub_10000C188(unsigned __int8 *a1, unsigned int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1 + 4;
  if (v11 - 1 > 0xA)
  {
    v14 = " code=0x%x";
  }

  else
  {
    v14 = " %s";
  }

  a3(a4, v14);
  (a3)(a4, " id=0x%x", v12);
  if (v11 > 0xB)
  {
LABEL_86:
    if (v7 >= 1)
    {
      goto LABEL_87;
    }

    return (v13 - a1);
  }

  if (((1 << v11) & 0x1E) != 0)
  {
    if (v6 < 6)
    {
      goto LABEL_86;
    }

    v16 = a1 + 4;
    while (1)
    {
      v17 = v16[1];
      v18 = v17 >= 2 && v7 >= v17;
      if (!v18)
      {
        v13 = v16;
        goto LABEL_87;
      }

      v19 = *v16;
      a3(a4, " <");
      v13 = v16;
      if (v19 <= 6)
      {
        if (v19 <= 2)
        {
          if (v19 != 1)
          {
            if (v19 != 2)
            {
              goto LABEL_67;
            }

            v13 = v16;
            if (v17 != 6)
            {
              goto LABEL_67;
            }

            v13 = v16 + 6;
            v20 = a4;
            v21 = "asyncmap 0x%x";
            goto LABEL_66;
          }

          if (v17 == 4)
          {
            v13 = v16 + 4;
            v20 = a4;
            v21 = "mru %d";
            goto LABEL_66;
          }
        }

        else
        {
          switch(v19)
          {
            case 3:
              if (v17 >= 4)
              {
                a3(a4, "auth ");
                v13 = v16 + 4;
                v22 = __rev16(*(v16 + 1));
                if (v22 == 49703)
                {
                  v20 = a4;
                  v21 = "eap";
                  goto LABEL_66;
                }

                if (v22 != 49699)
                {
                  if (v22 == 49187)
                  {
                    v20 = a4;
                    v21 = "pap";
                    goto LABEL_66;
                  }

LABEL_65:
                  v20 = a4;
                  v21 = "0x%x";
                  goto LABEL_66;
                }

                a3(a4, "chap");
                if (v17 != 4)
                {
                  v26 = *v13;
                  switch(v26)
                  {
                    case 129:
                      v27 = a4;
                      v28 = " MS-v2";
                      goto LABEL_81;
                    case 128:
                      v27 = a4;
                      v28 = " MS";
                      goto LABEL_81;
                    case 5:
                      v27 = a4;
                      v28 = " MD5";
LABEL_81:
                      a3(v27, v28);
                      v13 = v16 + 5;
                      break;
                  }
                }
              }

              break;
            case 4:
              if (v17 >= 4)
              {
                a3(a4, "quality ");
                v13 = v16 + 4;
                if (__rev16(*(v16 + 1)) != 49189)
                {
                  goto LABEL_65;
                }

                v20 = a4;
                v21 = "lqr";
LABEL_66:
                a3(v20, v21);
              }

              break;
            case 5:
              v13 = v16;
              if (v17 != 6)
              {
                break;
              }

              v13 = v16 + 6;
              v20 = a4;
              v21 = "magic 0x%x";
              goto LABEL_66;
            default:
              break;
          }
        }
      }

      else if (v19 > 16)
      {
        if (v19 == 17)
        {
          if (v17 == 4)
          {
            v13 = v16 + 4;
            v20 = a4;
            v21 = "mrru %d";
            goto LABEL_66;
          }
        }

        else
        {
          if (v19 != 18)
          {
            if (v19 == 19)
            {
              a3(a4, "endpoint");
              v13 = v16;
            }

            goto LABEL_67;
          }

          if (v17 == 2)
          {
            v13 = v16 + 2;
            v20 = a4;
            v21 = "ssnhf";
            goto LABEL_66;
          }
        }
      }

      else
      {
        switch(v19)
        {
          case 7:
            if (v17 == 2)
            {
              v13 = v16 + 2;
              v20 = a4;
              v21 = "pcomp";
              goto LABEL_66;
            }

            break;
          case 8:
            if (v17 == 2)
            {
              v13 = v16 + 2;
              v20 = a4;
              v21 = "accomp";
              goto LABEL_66;
            }

            break;
          case 13:
            v13 = v16;
            if (v17 == 2)
            {
              break;
            }

            a3(a4, "callback ");
            v13 = v16 + 3;
            if (v16[2] != 6)
            {
              goto LABEL_65;
            }

            v20 = a4;
            v21 = "CBCP";
            goto LABEL_66;
          default:
            break;
        }
      }

LABEL_67:
      if (v13 < &v16[v17])
      {
        v23 = &v16[v17];
        v24 = &v16[v17] - v13;
        do
        {
          v25 = *v13++;
          (a3)(a4, " %.2x", v25);
          --v24;
        }

        while (v24);
        v13 = v23;
      }

      v7 -= v17;
      a3(a4, ">");
      v16 = v13;
      if (v7 <= 1)
      {
        goto LABEL_86;
      }
    }
  }

  if (((1 << v11) & 0xE00) != 0)
  {
    v18 = v6 >= 8;
    v15 = v6 - 8;
    if (v18)
    {
      (a3)(a4, " magic=0x%x", bswap32(*(a1 + 1)));
      v13 = a1 + 12;
      v7 = v15;
    }

    goto LABEL_86;
  }

  if (((1 << v11) & 0x60) == 0)
  {
    goto LABEL_86;
  }

  if (v6 != 4)
  {
    if (*v13 - 32 > 0x5E)
    {
LABEL_87:
      v29 = 0;
      v30 = v7 - 1;
      if ((v7 - 1) >= 0x1F)
      {
        v30 = 31;
      }

      v31 = ~v30;
      v32 = v30 + 1;
      do
      {
        v33 = *v13++;
        (a3)(a4, " %.2x", v33);
        ++v29;
      }

      while (v32 != v29);
      if (v29 < v7)
      {
        a3(a4, " ...");
        LODWORD(v13) = v13 + v7 + v31;
      }

      return (v13 - a1);
    }

    a3(a4, " ");
    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v13) = v13 + v7;
  }

  return (v13 - a1);
}

void sub_10000C700(uint64_t result)
{
  if (byte_10004A3A0 == 1)
  {
    untimeout(sub_10000C8A4, &lcp_fsm + 80 * result);
    byte_10004A3A0 = 0;
  }
}

void sub_10000C754(int a1)
{
  dword_10004A39C = 0;
  dword_10004A980 = 0;
  byte_10004A3A0 = 0;
  ppp_auxiliary_probe_init();
  if (lcp_echo_interval)
  {

    sub_10000C8C0(&lcp_fsm + 20 * a1);
  }
}

void sub_10000C7C8(uint64_t result)
{
  v1 = *(result + 12);
  if ((v1 & 0x100) != 0)
  {
    *(result + 12) = v1 & 0xFFFFFEFF;
    fsm_lowerup(result);
  }
}

void lcp_sprotrej(int a1, uint64_t a2, int a3)
{
  v3 = (&lcp_fsm + 80 * a1);
  v4 = *(v3 + 16) + 1;
  *(v3 + 16) = v4;
  fsm_sdata(v3, 8, v4, (a2 + 2), a3 - 2);
}

void lcp_echo_restart(uint64_t result)
{
  v1 = (&lcp_fsm + 80 * result);
  dword_10004A39C = 0;
  if (byte_10004A3A0 == 1)
  {
    untimeout(sub_10000C8A4, v1);
    byte_10004A3A0 = 0;
  }

  if (lcp_echo_interval)
  {

    sub_10000C8C0(v1);
  }
}

void sub_10000C8A4(unsigned int *result)
{
  if (byte_10004A3A0 == 1)
  {
    byte_10004A3A0 = 0;
    sub_10000C8C0(result);
  }
}

void sub_10000C8C0(unsigned int *a1)
{
  v4 = 0;
  if (ppp_variable_echo_is_off() && get_idle_time(0, &v4) && HIDWORD(v4) < lcp_echo_interval)
  {
    dword_10004A39C = 0;
    ppp_auxiliary_probe_stop();
  }

  else
  {
    if (lcp_echo_fails)
    {
      v2 = dword_10004A39C;
      if (dword_10004A39C >= lcp_echo_fails)
      {
        sub_10000EEE4(a1);
        v2 = 0;
        dword_10004A39C = 0;
      }

      ppp_auxiliary_probe_check(v2, sub_10000EEE4, a1);
    }

    if (a1[2] == 9)
    {
      __src = bswap32(lcp_gotoptions[17 * *a1 + 8]);
      v3 = dword_10004A980++;
      fsm_sdata(a1, 9, v3, &__src, 4);
      ++dword_10004A39C;
    }
  }

  if (a1[2] == 9)
  {
    if (byte_10004A3A0 == 1)
    {
      warning("assertion lcp_echo_timer_running==0 failed", v4);
    }

    timeout(sub_10000C8A4);
    byte_10004A3A0 = 1;
  }
}

uint64_t sub_10000CA24()
{
  dword_100047950 = 0;
  xmmword_100047930 = 0u;
  unk_100047940 = 0u;
  lcp_wantoptions = 0u;
  unk_100047920 = 0u;
  lcp_allowoptions = 0u;
  *&dword_1000479A8 = 0u;
  xmmword_1000479B8 = 0u;
  unk_1000479C8 = 0u;
  dword_1000479D8 = 0;
  return 1;
}

uint64_t sub_10000CA58(unsigned int *a1)
{
  v2 = *a1;
  v3 = &lcp_wantoptions + 68 * v2;
  v4 = &lcp_gotoptions[17 * v2];
  *(v3 + 8) = magic();
  *(v3 + 9) = 0;
  v4[16] = *(v3 + 16);
  v5 = *(v3 + 1);
  *v4 = *v3;
  *(v4 + 1) = v5;
  v6 = *(v3 + 3);
  *(v4 + 2) = *(v3 + 2);
  *(v4 + 3) = v6;
  if (!multilink)
  {
    *(v4 + 13) = 0;
    *(v4 + 15) = 0;
  }

  if (noendpoint)
  {
    *(&lcp_allowoptions + 68 * v2 + 15) = 0;
  }

  peer_mru[*a1] = 1500;
  v7 = *a1;

  return auth_reset(v7);
}