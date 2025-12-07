uint64_t OSLogCopyFormattedString(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x29EDB9F30]);
  v3 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"liblog_SystemConfiguration: Not yet supported os_log formatting type: %s", a1];
  v4 = [v2 initWithString:v3];

  return v4;
}

__CFString *OSStateCreateStringWithData(char *__s1, uint64_t a2, unsigned int *a3)
{
  v6 = 0;
  for (i = 1; ; i = 0)
  {
    v8 = i;
    v9 = &(&OSStateCreateStringWithData_formatters)[2 * v6];
    if (!strcmp(__s1, *v9))
    {
      break;
    }

    v6 = 1;
    if ((v8 & 1) == 0)
    {
      return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"liblog_SystemConfiguration: Not yet supported os_state formatting type: %s", __s1];
    }
  }

  v11 = v9[1];

  return v11(a2, a3);
}

__CFString *_SC_OSStateCopyFormattedString_dnsinfo(uint64_t a1, unsigned int *a2)
{
  v100 = *MEMORY[0x29EDCA608];
  v2 = @"No DNS configuration";
  if (!a1 || !a2)
  {
    return v2;
  }

  if (a1 <= 0x37)
  {
    return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"DNS configuration: size error (%u < %zu)", a1, 56];
  }

  v5 = a1;
  v6 = bswap32(a2[12]) + 56;
  if (v6 != a1)
  {
    v8 = _SC_LOG_DEFAULT();
    v13 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_36;
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v14 = *MEMORY[0x29EDBCC58] <= 0 ? 2 : 3;
    v15 = os_log_type_enabled(v8, v13) ? v14 : 2;
    v80 = 134218240;
    v81 = v6;
    v82 = 2048;
    v83 = v5;
    v16 = _os_log_send_and_compose_impl(v15, 0, &v84, 256, &dword_2999D0000, v8, v13, "DNS configuration: size error (%zu != %zu)", &v80, 22);
    __SC_log_send2();
    if (v16 == &v84)
    {
      goto LABEL_36;
    }

    v17 = v16;
    goto LABEL_35;
  }

  v7 = bswap32(a2[13]);
  if (0x100000 - a1 < v7)
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_36;
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    if (*MEMORY[0x29EDBCC58] <= 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v10;
    }

    else
    {
      v11 = 2;
    }

    v12 = _os_log_send_and_compose_impl(v11, 0, &v84, 256, &dword_2999D0000, v8, v9, "DNS configuration: padding error (%u > %zu)", COERCE_DOUBLE(67109376), &v80, 18);
LABEL_33:
    v21 = v12;
    __SC_log_send2();
    if (v21 != &v84)
    {
      v17 = v21;
LABEL_35:
      free(v17);
    }

LABEL_36:

    return @"DNS configuration: data error";
  }

  if (v7 + a1 > 0x100000)
  {
    v8 = _SC_LOG_DEFAULT();
    v18 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_36;
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    if (*MEMORY[0x29EDBCC58] <= 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = 3;
    }

    if (os_log_type_enabled(v8, v18))
    {
      v20 = v19;
    }

    else
    {
      v20 = 2;
    }

    v12 = _os_log_send_and_compose_impl(v20, 0, &v84, 256, &dword_2999D0000, v8, v18, "DNS configuration: length error (%zu > %d)", COERCE_DOUBLE(134218240), &v80, 18);
    goto LABEL_33;
  }

  v22 = malloc_type_malloc(v7 + a1, 0xAC30884BuLL);
  memcpy(v22, a2, v5);
  bzero(v22 + v5, v7);
  if (!v22)
  {
    return @"DNS configuration: data error";
  }

  v23 = v22[12];
  v24 = bswap32(v22[13]);
  v25 = bswap32(*v22);
  *v22 = v25;
  if (v24 < 8 * v25 || ((v26 = bswap32(v23), v27 = v22 + 14, (v28 = 8 * v25) != 0) ? (v29 = v22 + v26 + 56) : (v29 = 0), (v30 = v24 - v28, *(v22 + 1) = v29, v31 = bswap32(v22[3]), v22[3] = v31, v30 < 8 * v31) || ((v32 = 8 * v31, v33 = v22 + v26 + v28 + 56, v32) ? (v34 = v33) : (v34 = 0), v35 = v30 - v32, *(v22 + 2) = v34, v36 = bswap32(v22[8]), v22[8] = v36, v35 < 8 * v36)))
  {
LABEL_127:
    free(v22);
    return @"DNS configuration: expansion error";
  }

  v37 = 8 * v36;
  v38 = v33 + v32;
  if (8 * v36)
  {
    v39 = v33 + v32;
  }

  else
  {
    v39 = 0;
  }

  *(v22 + 9) = v39;
  if (v26 < 8)
  {
    v42 = 0;
    v41 = 0;
    v40 = 0;
    goto LABEL_108;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = v35 - v37;
  v44 = v38 + v37;
  do
  {
    v45 = bswap32(v27[1]);
    v46 = bswap32(*v27);
    if (v46 - 1 > 2)
    {
      goto LABEL_105;
    }

    if (v45 - 8 < 0x64)
    {
      goto LABEL_127;
    }

    *(v27 + 1) = 0;
    v47 = bswap32(v27[4]);
    v27[4] = v47;
    if (v43 < 8 * v47)
    {
      goto LABEL_127;
    }

    v48 = 8 * v47;
    v49 = 8 * v47 ? v44 : 0;
    v50 = v43 - v48;
    *(v27 + 5) = v49;
    *(v27 + 14) = bswap32(*(v27 + 14)) >> 16;
    v51 = bswap32(v27[8]);
    v27[8] = v51;
    if (v50 < 8 * v51)
    {
      goto LABEL_127;
    }

    v52 = 8 * v51;
    v53 = v44 + v48;
    v54 = 8 * v51 ? v53 : 0;
    v55 = v50 - v52;
    *(v27 + 9) = v54;
    v56 = bswap32(v27[11]);
    v27[11] = v56;
    if (v55 < 8 * v56)
    {
      goto LABEL_127;
    }

    v57 = 8 * v56;
    v58 = v53 + v52;
    v59 = 8 * v56 ? v58 : 0;
    *(v27 + 6) = v59;
    *(v27 + 7) = 0;
    *(v27 + 4) = vrev32q_s8(*(v27 + 4));
    *(v27 + 10) = vrev32_s8(*(v27 + 20));
    v60 = v45 - 108;
    if (v45 - 108 != bswap32(v27[26]))
    {
      goto LABEL_127;
    }

    v61 = v27 + 2;
    if (v60 < 8)
    {
      v64 = 0;
      v63 = 0;
      v62 = 0;
    }

    else
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = (v27 + 27);
      do
      {
        v66 = v65[1];
        v67 = bswap32(*v65);
        if (v67 <= 12)
        {
          switch(v67)
          {
            case 10:
              *v61 = v65 + 2;
              break;
            case 11:
              v70 = *(v27 + 5);
              if (!v70)
              {
                goto LABEL_127;
              }

              *(v70 + 8 * v64++) = v65 + 2;
              break;
            case 12:
              v68 = *(v27 + 9);
              if (!v68)
              {
                goto LABEL_127;
              }

              *(v68 + 8 * v63++) = v65 + 2;
              break;
          }
        }

        else if (v67 > 14)
        {
          if (v67 == 15)
          {
            *(v27 + 11) = v65 + 2;
          }

          else if (v67 == 16)
          {
            *(v27 + 12) = v65 + 2;
          }
        }

        else if (v67 == 13)
        {
          v69 = *(v27 + 6);
          if (!v69)
          {
            goto LABEL_127;
          }

          *(v69 + 8 * v62++) = v65 + 2;
        }

        else
        {
          *(v27 + 7) = v65 + 2;
        }

        v71 = bswap32(v66);
        v65 = (v65 + v71);
        v60 -= v71;
      }

      while (v60 > 7);
    }

    if (v64 != v47 || v63 != v51 || v62 != v56)
    {
      goto LABEL_127;
    }

    v44 = v58 + v57;
    v43 = v55 - v57;
    switch(v46)
    {
      case 3u:
        v72 = *(v22 + 9);
        if (!v72)
        {
          goto LABEL_127;
        }

        v73 = v40++;
        break;
      case 2u:
        v72 = *(v22 + 2);
        if (!v72)
        {
          goto LABEL_127;
        }

        v73 = v41++;
        break;
      case 1u:
        v72 = *(v22 + 1);
        if (!v72)
        {
          goto LABEL_127;
        }

        v73 = v42++;
        break;
      default:
        goto LABEL_105;
    }

    *(v72 + 8 * v73) = v61;
LABEL_105:
    v27 = (v27 + v45);
    v26 -= v45;
  }

  while (v26 > 7);
  v25 = *v22;
LABEL_108:
  if (v42 != v25 || v41 != v22[3] || v40 != v22[8])
  {
    goto LABEL_127;
  }

  v2 = [MEMORY[0x29EDBA050] string];
  [(__CFString *)v2 appendFormat:@"%s\n", "DNS configuration"];
  if (*v22 >= 1)
  {
    v74 = 0;
    do
    {
      v75 = *(*(v22 + 1) + 8 * v74++);
      _dns_resolver_log(v22[11], v75, v74, v2);
    }

    while (v74 < *v22);
  }

  if (v22[3] >= 1)
  {
    if (*(v22 + 2))
    {
      [(__CFString *)v2 appendFormat:@"%s\n", ""];
      [(__CFString *)v2 appendFormat:@"%s\n", "DNS configuration (for scoped queries)"];
      if (v22[3] >= 1)
      {
        v76 = 0;
        do
        {
          v77 = *(*(v22 + 2) + 8 * v76++);
          _dns_resolver_log(v22[11], v77, v76, v2);
        }

        while (v76 < v22[3]);
      }
    }
  }

  if (v22[8] >= 1)
  {
    if (*(v22 + 9))
    {
      [(__CFString *)v2 appendFormat:@"%s\n", ""];
      [(__CFString *)v2 appendFormat:@"%s\n", "DNS configuration (for service-specific queries)"];
      if (v22[8] >= 1)
      {
        v78 = 0;
        do
        {
          v79 = *(*(v22 + 9) + 8 * v78++);
          _dns_resolver_log(v22[11], v79, v78, v2);
        }

        while (v78 < v22[8]);
      }
    }
  }

  if (![(__CFString *)v2 length])
  {
    [(__CFString *)v2 appendString:@"DNS configuration: not available"];
  }

  free(v22);
  return v2;
}

__CFString *_SC_OSStateCopyFormattedString_nwi(uint64_t a1, unsigned int *a2)
{
  v2 = @"No network information";
  if (!a1 || !a2)
  {
    return v2;
  }

  if (a1 <= 0x97)
  {
    return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: size error (%u < %zu)", a1, 56, v21, v22];
  }

  if (*a2 != 538379777)
  {
    return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: version error (%u != %u)", *a2, 538379777, v21, v22];
  }

  v5 = a2[1];
  v6 = 2 * v5;
  if (4 * v5 + 112 * (2 * v5) + 40 != a1)
  {
    return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: size error (%u != %zu)", a1, 4 * a2[1] + 224 * a2[1] + 40, v21, v22];
  }

  v7 = a2[2];
  if (v7 > v5)
  {
    return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: ipv4 count error (%d > %d)", a2[2], a2[1], v21, v22];
  }

  v8 = a2[3];
  if (v8 > v5)
  {
    return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: ipv6 count error (%d > %d)", a2[3], a2[1], v21, v22];
  }

  v9 = a2[4];
  if (v9 > v5)
  {
    return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: if_list count error (%d > %d)", a2[4], a2[1], v21, v22];
  }

  if (v7 < 1)
  {
LABEL_21:
    if (v8 >= 1)
    {
      v15 = 0;
      v16 = &a2[28 * v5 + 16];
      v17 = -v8;
      do
      {
        v19 = *v16;
        v16 += 28;
        v18 = v19;
        if (v19)
        {
          if ((v5 + v18) < 0 || (v5 + v18) >= v7)
          {
            return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: IPv6 alias [%d] offset error (%d < 0 || %d >= %d)", -v15, v5 + v18, v5 + v18, a2[2]];
          }
        }

        --v15;
        LODWORD(v5) = v5 + 1;
      }

      while (v17 != v15);
    }

    if (v9 >= 1)
    {
      v20 = &a2[28 * v6 + 10];
      while (*v20 < v6)
      {
        ++v20;
        if (!--v9)
        {
          goto LABEL_31;
        }
      }

      return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: if_list index error (%d > %d)", *v20, 2 * a2[1], v21, v22];
    }

LABEL_31:
    v2 = [MEMORY[0x29EDBA050] string];
    _nwi_state_log(a2, v2);
    if (![(__CFString *)v2 length])
    {
      [(__CFString *)v2 appendString:@"Network information: not available"];
    }

    return v2;
  }

  v10 = 0;
  v11 = -v5;
  v12 = a2 + 16;
  while (1)
  {
    v14 = *v12;
    v12 += 28;
    v13 = v14;
    if (v14)
    {
      if ((v11 + v13) < 0 || (v11 + v13) >= v8)
      {
        return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: IPv4 alias [%d] offset error (%d < 0 || %d >= %d)", -v10, v11 + v13, v11 + v13, a2[3]];
      }
    }

    --v10;
    ++v11;
    if (-v7 == v10)
    {
      goto LABEL_21;
    }
  }
}

void _dns_resolver_log(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v7 = a4;
  [v7 appendFormat:@"%s\n", ""];
  [v7 appendFormat:@"resolver #%d\n", a3];
  if (*a2)
  {
    [v7 appendFormat:@"  domain   : %s\n", *a2];
  }

  if (*(a2 + 24) >= 1)
  {
    v8 = 0;
    do
    {
      [v7 appendFormat:@"  search domain[%d] : %s\n", v8, *(*(a2 + 28) + 8 * v8)];
      ++v8;
    }

    while (v8 < *(a2 + 24));
  }

  if (*(a2 + 8) >= 1)
  {
    v9 = 0;
    do
    {
      _SC_sockaddr_to_string();
      [v7 appendFormat:@"  nameserver[%d] : %s\n", v9++, __str];
    }

    while (v9 < *(a2 + 8));
  }

  if (*(a2 + 36) >= 1)
  {
    v10 = 0;
    do
    {
      inet_ntop(2, *(*(a2 + 40) + 8 * v10), __str, 0x20u);
      inet_ntop(2, (*(*(a2 + 40) + 8 * v10) + 4), v19, 0x20u);
      [v7 appendFormat:@"  sortaddr[%d] : %s/%s\n", v10++, __str, v19];
    }

    while (v10 < *(a2 + 36));
  }

  if (*(a2 + 48))
  {
    [v7 appendFormat:@"  options  : %s\n", *(a2 + 48)];
  }

  if (*(a2 + 20))
  {
    [v7 appendFormat:@"  port     : %hu\n", *(a2 + 20)];
  }

  if (*(a2 + 56))
  {
    [v7 appendFormat:@"  timeout  : %u\n", *(a2 + 56)];
  }

  if (*(a2 + 64))
  {
    if (a1 < 0x133C785)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a2 + 88);
    }

    if (!v11)
    {
      v11 = "?";
    }

    [v7 appendFormat:@"  if_index : %u (%s)\n", *(a2 + 64), v11];
  }

  if (*(a2 + 76))
  {
    [v7 appendFormat:@"  service_identifier : %u\n", *(a2 + 76)];
  }

  v12 = *(a2 + 68);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"  flags    : ");
  CFStringAppendFormat(Mutable, 0, @"0x%08x", v12);
  if (v12)
  {
    CFStringAppendFormat(Mutable, 0, @" (");
    if ((v12 & 0x1000) != 0)
    {
      v12 = v12 & 0xFFFFEFFF;
      if (v12)
      {
        v14 = ", ";
      }

      else
      {
        v14 = "";
      }

      CFStringAppendFormat(Mutable, 0, @"Scoped%s", v14);
      if ((v12 & 0x2000) == 0)
      {
LABEL_30:
        if ((v12 & 0x4000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_49;
      }
    }

    else if ((v12 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    v12 = v12 & 0xFFFFDFFF;
    if (v12)
    {
      v15 = ", ";
    }

    else
    {
      v15 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"Service-specific%s", v15);
    if ((v12 & 0x4000) == 0)
    {
LABEL_31:
      if ((v12 & 2) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_53;
    }

LABEL_49:
    v12 = v12 & 0xFFFFBFFF;
    if (v12)
    {
      v16 = ", ";
    }

    else
    {
      v16 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"Supplemental%s", v16);
    if ((v12 & 2) == 0)
    {
LABEL_32:
      if ((v12 & 4) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_57;
    }

LABEL_53:
    v12 = v12 & 0xFFFFFFFD;
    if (v12)
    {
      v17 = ", ";
    }

    else
    {
      v17 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"Request A records%s", v17);
    if ((v12 & 4) == 0)
    {
LABEL_33:
      if (!v12)
      {
LABEL_35:
        CFStringAppend(Mutable, @""));
        goto LABEL_36;
      }

LABEL_34:
      CFStringAppendFormat(Mutable, 0, @"0x%08x", v12);
      goto LABEL_35;
    }

LABEL_57:
    v12 = v12 & 0xFFFFFFFB;
    if (v12)
    {
      v18 = ", ";
    }

    else
    {
      v18 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"Request AAAA records%s", v18);
    if (!v12)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_36:
  [v7 appendFormat:@"%@\n", Mutable];
  CFRelease(Mutable);
  __SCNetworkReachability_flags_string(*(a2 + 72), __str);
  [v7 appendFormat:@"  reach    : %s\n", __str];
  if (*(a2 + 60))
  {
    [v7 appendFormat:@"  order    : %u\n", *(a2 + 60)];
  }

  if (*(a2 + 80))
  {
    [v7 appendFormat:@"  config id: %s\n", *(a2 + 80)];
  }
}

unint64_t __SCNetworkReachability_flags_string(unsigned int a1, char *__str)
{
  result = snprintf(__str, 0x64uLL, "0x%08x (", a1);
  if (a1 || result > 0x53)
  {
    v6 = result;
    v5 = result;
    v7 = a1;
    if ((a1 & 2) != 0)
    {
      v5 = result;
      v7 = a1;
      if (result <= 0x57)
      {
        result = strlcat(__str, "Reachable,", 0x63uLL);
        v5 = result;
        v7 = a1 & 0xFFFFFFFD;
      }
    }

    if ((v7 & 1) != 0 && v5 <= 0x4C)
    {
      result = strlcat(__str, "Transient Connection,", 0x63uLL);
      v5 = result;
      v7 &= ~1u;
    }

    if ((v7 & 4) != 0 && v5 <= 0x4D)
    {
      result = strlcat(__str, "Connection Required,", 0x63uLL);
      v5 = result;
      v7 &= ~4u;
    }

    if ((v7 & 8) != 0 && v5 <= 0x41)
    {
      result = strlcat(__str, "Automatic Connection On Traffic,", 0x63uLL);
      v5 = result;
      v7 &= ~8u;
    }

    if ((v7 & 0x20) != 0 && v5 <= 0x42)
    {
      result = strlcat(__str, "Automatic Connection On Demand,", 0x63uLL);
      v5 = result;
      v7 &= ~0x20u;
    }

    if ((v7 & 0x10) != 0 && v5 <= 0x4B)
    {
      result = strlcat(__str, "Intervention Required,", 0x63uLL);
      v5 = result;
      v7 &= ~0x10u;
    }

    if ((v7 & 0x10000) != 0 && v5 <= 0x53)
    {
      result = strlcat(__str, "Local Address,", 0x63uLL);
      v5 = result;
      v7 &= ~0x10000u;
    }

    if ((v7 & 0x20000) != 0 && v5 <= 0x46)
    {
      result = strlcat(__str, "Directly Reachable Address,", 0x63uLL);
      v5 = result;
      v7 &= ~0x20000u;
    }

    if ((v7 & 0x40000) != 0 && v5 <= 0x5C)
    {
      result = strlcat(__str, "WWAN,", 0x63uLL);
      v5 = result;
      v7 &= ~0x40000u;
    }

    if (v7)
    {
      if (v5 >= 0x57)
      {
        __str[v6] = 0;
        v5 = v6;
        v7 = a1;
      }

      result = snprintf(&__str[v5], 99 - v5, "0x%08x,", v7);
      v5 += result;
    }
  }

  else
  {
    result = strlcat(__str, "Not Reachable,", 0x63uLL);
    v5 = result;
  }

  if (v5)
  {
    __str[v5 - 1] = 41;
  }

  return result;
}

void _nwi_state_log(unsigned int *a1, void *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = a2;
  [v3 appendFormat:@"Network information (generation %llu size=%lu)\n", nwi_state_get_generation(), 4 * a1[1] + 224 * a1[1] + 40];
  [v3 appendFormat:@"%s\n", "IPv4 network interface information"];
  if (a1[2] < 1)
  {
    [v3 appendFormat:@"%s\n", "   No IPv4 states found"];
  }

  else
  {
    v4 = 0;
    v5 = a1 + 10;
    do
    {
      _nwi_ifstate_log(v5, v3);
      ++v4;
      v5 += 28;
    }

    while (v4 < a1[2]);
  }

  v6 = v3;
  reachability_flags = nwi_state_get_reachability_flags();
  __SCNetworkReachability_flags_string(reachability_flags, __str);
  [v6 appendFormat:@"   REACH : flags %s\n", __str];

  [v6 appendFormat:@"%s\n", "IPv6 network interface information"];
  if (a1[3] < 1)
  {
    [v6 appendFormat:@"%s\n", "   No IPv6 states found\n"];
  }

  else
  {
    v8 = 0;
    v9 = &a1[28 * a1[1] + 10];
    do
    {
      _nwi_ifstate_log(v9, v6);
      ++v8;
      v9 += 28;
    }

    while (v8 < a1[3]);
  }

  v10 = v6;
  v11 = nwi_state_get_reachability_flags();
  __SCNetworkReachability_flags_string(v11, __str);
  [v10 appendFormat:@"   REACH : flags %s\n", __str];

  if (nwi_state_get_interface_names())
  {
    MEMORY[0x2A1C7C4A8]();
    v14 = &v20[-v13];
    v15 = v12 >= 0x200 ? 512 : v12;
    bzero(&v20[-v13], v15);
    interface_names = nwi_state_get_interface_names();
    if (interface_names)
    {
      v17 = interface_names;
      v18 = 17 * interface_names;
      MEMORY[0x2A1C7C4A8]();
      bzero(&v20[-((v18 + 15) & 0x1FFFFFFF0)], v18);
      v19 = 0;
      do
      {
        if (v19)
        {
          strlcat(&v20[-((v18 + 15) & 0x1FFFFFFF0)], " ", v18);
        }

        strlcat(&v20[-((v18 + 15) & 0x1FFFFFFF0)], *&v14[v19], v18);
        v19 += 8;
      }

      while (8 * v17 != v19);
      [v10 appendFormat:@"Network interfaces: %s\n", &v20[-((v18 + 15) & 0x1FFFFFFF0)]];
    }
  }
}

void _nwi_ifstate_log(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = a2;
  flags = nwi_ifstate_get_flags();
  v5 = *(a1 + 16) & 0xEFLL;
  v6 = v5 | flags & 0xFFFFFFFFFFFFFFEFLL;
  v7 = (v5 | flags & 0xEF);
  if (v5 | flags & 0xEF)
  {
    v8 = __strlcpy_chk();
    v9 = v8;
    v10 = v7;
    if ((v6 & 1) != 0 && v8 <= 0x5C)
    {
      v9 = __strlcat_chk();
      v10 = v6 & 0xEE;
    }

    if ((v10 & 2) != 0 && v9 <= 0x5C)
    {
      v9 = __strlcat_chk();
      v10 = v10 & 0xED;
    }

    if ((v10 & 4) != 0 && v9 <= 0x5D)
    {
      v9 = __strlcat_chk();
      v10 &= ~4uLL;
    }

    if ((v10 & 0x40) != 0 && v9 <= 0x5A)
    {
      v9 = __strlcat_chk();
      v10 &= ~0x40uLL;
    }

    if ((v10 & 8) != 0 && v9 <= 0x55)
    {
      v9 = __strlcat_chk();
      v10 &= ~8uLL;
    }

    if ((v10 & 0x10) != 0 && v9 <= 0x57)
    {
      v9 = __strlcat_chk();
      v10 &= ~0x10uLL;
    }

    if ((v10 & 0x20) != 0 && v9 <= 0x53)
    {
      v9 = __strlcat_chk();
      v10 &= ~0x20uLL;
    }

    if (v10)
    {
      if (v9 >= 0x57)
      {
        v9 = __strlcpy_chk();
        v10 = v7;
      }

      v9 += snprintf(&v19[v9], 99 - v9, ",%p", v10);
    }

    if (v9)
    {
      v19[v9 - 1] = 41;
    }
  }

  else
  {
    v19[0] = 0;
  }

  ifname = nwi_ifstate_get_ifname();
  reachability_flags = nwi_ifstate_get_reachability_flags();
  if (!inet_ntop(*(a1 + 32), (a1 + 36), v20, 0x2Eu))
  {
    __strlcpy_chk();
  }

  [v3 appendFormat:@" %7s : flags      : %p %s\n", ifname, v6, v19];
  [v3 appendFormat:@"           address    : %s\n", v20];
  if (nwi_ifstate_get_vpn_server())
  {
    _SC_sockaddr_to_string();
    [v3 appendFormat:@"           VPN server : %s\n", &length[6]];
  }

  __SCNetworkReachability_flags_string(reachability_flags, &length[6]);
  [v3 appendFormat:@"           reach      : %s\n", &length[6]];
  v13 = *(a1 + 28);
  if (HIBYTE(*(a1 + 28)) > 4u)
  {
    v14 = "???";
  }

  else
  {
    v14 = *(off_29F27B430 + ((v13 >> 21) & 0x7F8));
  }

  if ((v13 & 0xFFFFFF) == 0xFFFFFF)
  {
    [v3 appendFormat:@"           rank       : 0x%08x (%s, Last)\n", *(a1 + 28), v14, v17];
  }

  else
  {
    [v3 appendFormat:@"           rank       : 0x%08x (%s, %u)\n", v13, v14, v13 & 0xFFFFFF];
  }

  signature = nwi_ifstate_get_signature();
  if (signature)
  {
    v16 = CFDataCreate(0, signature, 0);
    [v3 appendFormat:@"           signature  : %@\n", v16];
    CFRelease(v16);
  }

  [v3 appendFormat:@"           generation : %llu\n", nwi_ifstate_get_generation()];
}