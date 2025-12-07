void DisposeTCPConn(uint64_t a1)
{
  mDNSPlatformTCPCloseConnection(*(a1 + 8));
  v2 = *(a1 + 9016);
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void mDNSPlatformTCPCloseConnection(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2 != -1)
    {
      shutdown(v2, 2);
      close(a1[4]);
    }

    free(a1);
  }
}

uint64_t GetPktLease(uint64_t a1, unint64_t a2, unint64_t a3, _DWORD *a4)
{
  OptRR = LocateOptRR(a2, a3, 8u);
  if (!OptRR)
  {
    return 0;
  }

  if (GetLargeResourceRecord(a1, a2, OptRR, a3, 0, 128, a1 + 37912) && *(a1 + 37920) != 240 && *(a1 + 37924) == 41)
  {
    v9 = *(a1 + 37960) + 4;
    v10 = v9 + *(a1 + 37932);
    while (v9 < v10)
    {
      if (*v9 == 2)
      {
        *a4 = *(v9 + 4);
        *(a1 + 37920) = 0;
        *(a1 + 38022) = 0;
        v12 = *(a1 + 37976);
        v11 = 1;
        if (v12)
        {
          goto LABEL_10;
        }

        return v11;
      }

      v9 += 24;
    }
  }

  v11 = 0;
  *(a1 + 37920) = 0;
  *(a1 + 38022) = 0;
  v12 = *(a1 + 37976);
  if (v12)
  {
LABEL_10:
    ref_count_obj_release(v12);
    *(a1 + 37976) = 0;
  }

  return v11;
}

void HostnameCallback(size_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 112);
  if (a3)
  {
    if (a3 == -65792)
    {
      if (!v5)
      {
        return;
      }

      if (mDNS_LoggingEnabled == 1)
      {
        v7 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "HostnameCallback: Got mStatus_MemFree for %p %p %s", v5, a2, (a1 + 47032));
      }

      v8 = (a1 + 14680);
      while (1)
      {
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        if (v8 + 58 == a2 || v8 + 205 == a2)
        {
          mDNS_Lock_(a1, "HostnameCallback", 2500);
          AdvertiseHostname(a1, v8);

          mDNS_Unlock_(a1, "HostnameCallback", 2500);
          return;
        }
      }

      if (*(v5 + 472) || *(v5 + 1648))
      {
        return;
      }

      if (*(v5 + 200))
      {
        mDNS_StopNATOperation_internal(a1, v5 + 8);
      }

      v17 = v5;
      goto LABEL_41;
    }

    v15 = *(a2 + 48) + 4;
    if (*(a2 + 12) == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "HostnameCallback: Error %d for registration of %##s IP %.4a", a3, *(a2 + 40), v15);
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "HostnameCallback: Error %d for registration of %##s IP %.16a", a3, *(a2 + 40), v15);
    }

    if (!v5)
    {
      v17 = a2;
LABEL_41:

      free(v17);
      return;
    }

    if (*(a2 + 344) != 4)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error: HostnameCallback invoked with error code for record not in regState_Unregistered!");
    }

    if (*(v5 + 808) == 4 && *(v5 + 1984) == 4)
    {
      *(a2 + 112) = *(v5 + 2824);
      v11 = *(v5 + 2816);
      if (!v11)
      {
        goto LABEL_26;
      }

      v12 = a1;
      v13 = a2;
      v14 = a3;
LABEL_25:
      v11(v12, v13, v14);
LABEL_26:
      *(a2 + 112) = v5;
    }
  }

  else
  {
    mDNS_Lock_(a1, "HostnameCallback", 2537);
    v10 = *(a1 + 64);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    *(a1 + 12684) = v10;
    mDNS_Unlock_(a1, "HostnameCallback", 2539);
    if (v5)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        if (*(a2 + 12) == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Registered hostname %##s IP %.4a", *(a2 + 40), *(a2 + 48) + 4);
        }

        else
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Registered hostname %##s IP %.16a", *(a2 + 40), *(a2 + 48) + 4);
        }
      }

      *(a2 + 112) = *(v5 + 2824);
      v11 = *(v5 + 2816);
      if (!v11)
      {
        goto LABEL_26;
      }

      v12 = a1;
      v13 = a2;
      v14 = 0;
      goto LABEL_25;
    }

    v16 = mDNSLogCategory_Default;

    LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "HostnameCallback invoked with orphaned address record");
  }
}

void AbortUnlinkAndFree(void *a1)
{
  v9 = a1;
  abort_request(a1);
  v2 = &all_requests;
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 16);
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (v4)
  {
    *v3 = a1[2];
    request_state_forget(&v9);
    return;
  }

  v6 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v7 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 134217984;
    v11 = a1;
    goto LABEL_18;
  }

  v6 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a1;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AbortUnlinkAndFree: ERROR: Attempt to abort operation %p not in list", buf, 0xCu);
  }
}

void *add_domain_to_browser(uint64_t a1, _BYTE *a2)
{
  v106 = 0;
  v107 = &v106;
  v108 = 0x2000000000;
  v109 = 0;
  v4 = *(a1 + 152);
  v5 = (v4 + 272);
  v6 = (v4 + 272);
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (SameDomainNameBytes(v6 + 8, a2))
    {
      v7 = 4294901749;
      goto LABEL_151;
    }
  }

  if (!*(a1 + 290) || !SameDomainNameBytes(a2, "\x05local"))
  {
    goto LABEL_121;
  }

  if (*(a1 + 32))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    if (!Mutable)
    {
      goto LABEL_121;
    }

    v96 = (v4 + 272);
    v9 = *(a1 + 32);
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 0x40000000;
    v110[2] = ___get_unicast_discovery_dns_services_block_invoke;
    v110[3] = &__block_descriptor_tmp_188;
    v92 = Mutable;
    v110[4] = Mutable;
    v10 = v110;
    context = objc_autoreleasePoolPush();
    v127 = 0;
    v11 = +[NSMutableSet set];
    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = __util_device_media_access_unicast_addr_enumerate_block_invoke;
    v124[3] = &unk_100152CC8;
    v89 = v11;
    v125 = v89;
    v91 = v10;
    v126 = v10;
    v99 = objc_retainBlock(v124);
    v94 = a2;
    if (objc_opt_class())
    {
      v128[0] = 0;
      v12 = *(v9 + 40);
      buf = *(v9 + 24);
      v136 = v12;
      v13 = [DASession getPartialIPsWithAuditToken:&buf error:v128];
      v14 = v128[0];
      if (v14)
      {
        v15 = _system_util_log();
        v5 = (v4 + 272);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [v14 description];
          v87 = v86 = v4;
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v87;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "DASession getPartialIPsWithAuditToken err %@", &buf, 0xCu);

          v4 = v86;
        }

        v16 = 0;
        a2 = v94;
      }

      else
      {
        v5 = (v4 + 272);
        if ([v13 count] < 0xB)
        {
          v16 = v13;
        }

        else
        {
          v19 = _system_util_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v88 = [v13 count];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v88;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "DASession getPartialIPsWithAuditToken returned too many results (%lu)", &buf, 0xCu);
          }

          if ([v13 count] > 9)
          {
            v20 = 10;
          }

          else
          {
            v20 = [v13 count];
          }

          a2 = v94;
          v16 = [v13 subarrayWithRange:{0, v20}];
        }
      }

      v22 = v16;
    }

    else
    {
      v22 = 0;
      v5 = (v4 + 272);
    }

    v95 = v22;
    if (![v22 count])
    {
      goto LABEL_118;
    }

    if (!getifaddrs(&v127))
    {
      goto LABEL_34;
    }

    if (*__error())
    {
      v23 = *__error();
      if (!v23)
      {
LABEL_34:
        v24 = v127;
        if (!v127)
        {
          goto LABEL_120;
        }

        v93 = v4;
        while (1)
        {
          ifa_addr = v24->ifa_addr;
          if (ifa_addr)
          {
            ifa_netmask = v24->ifa_netmask;
            if (ifa_netmask)
            {
              ifa_name = v24->ifa_name;
              if (ifa_name)
              {
                sa_family = ifa_addr->sa_family;
                if (sa_family == 30)
                {
                  v119 = *&ifa_addr->sa_data[6];
                  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v119, xmmword_10010D2A0)))) & 1) != 0 && (v119.i16[0] & 0xC0FF) != 0x80FE)
                  {
                    v100 = v24;
                    v118 = *&ifa_netmask->sa_data[6];
                    v102 = if_nametoindex(ifa_name);
                    v51 = 0;
                    v52 = 0;
                    v53 = 0;
                    while (1)
                    {
                      v54 = *(&v118 + v51) != 0;
                      if (*(&v118 + v51))
                      {
                        ++v53;
                      }

                      else if (v52)
                      {
                        goto LABEL_82;
                      }

                      ++v51;
                      v52 = v54;
                      if (v51 == 16)
                      {
LABEL_82:
                        v116 = 0u;
                        v117 = 0u;
                        v114 = 0u;
                        v115 = 0u;
                        v55 = v95;
                        v56 = [v55 countByEnumeratingWithState:&v114 objects:v128 count:16];
                        if (!v56)
                        {
                          goto LABEL_108;
                        }

                        v57 = v56;
                        v58 = *v115;
                        obja = (v53 + 16);
                        while (1)
                        {
                          for (i = 0; i != v57; i = i + 1)
                          {
                            if (*v115 != v58)
                            {
                              objc_enumerationMutation(v55);
                            }

                            v60 = *(*(&v114 + 1) + 8 * i);
                            v113[0] = 0;
                            v113[1] = 0;
                            v112[0] = 0;
                            v112[1] = 0;
                            v61 = [v60 address];
                            v62 = [v60 mask];
                            if ([v61 length] != 16 || objc_msgSend(v62, "length") != 16)
                            {
                              goto LABEL_106;
                            }

                            [v61 getBytes:v113 length:16];
                            [v62 getBytes:v112 length:16];
                            v63 = 0;
                            v64 = 0;
                            LOBYTE(v65) = 1;
                            do
                            {
                              v65 = v65 & (*(v112 + v63) == 0);
                              if (v65 == 1)
                              {
                                ++v64;
                              }

                              else
                              {
                                *(v112 + v63) = -1;
                              }

                              ++v63;
                            }

                            while (v63 != 16);
                            if (&obja[-v64] <= 0x10)
                            {
                              v66 = _system_util_log();
                              if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                              {
                                v67 = v100->ifa_name;
                                *v129 = 136446466;
                                *v130 = v67;
                                *&v130[8] = 1024;
                                *&v130[10] = v102;
                                v68 = v66;
                                v69 = "PartialIP - Mask doesn't overlap IPv6 Interface %{public}s(%u)";
                                goto LABEL_104;
                              }

                              goto LABEL_105;
                            }

                            v70 = 0;
                            v111[0] = 0;
                            v111[1] = 0;
                            do
                            {
                              v71 = v119.u8[v70];
                              v72 = (*(v113 + v70) & *(v112 + v70)) | v71 & (*(v112 + v70) ^ 0xFF);
                              *(v111 + v70) = *(v113 + v70) & *(v112 + v70) | v71 & ~*(v112 + v70);
                              if (((v72 ^ v71) & *(&v118 + v70)) != 0)
                              {
                                v66 = _system_util_log();
                                if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                                {
                                  v73 = v100->ifa_name;
                                  *v129 = 136446466;
                                  *v130 = v73;
                                  *&v130[8] = 1024;
                                  *&v130[10] = v102;
                                  v68 = v66;
                                  v69 = "PartialIP - Addr and Mask don't apply to IPv6 Interface %{public}s(%u)";
LABEL_104:
                                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, v69, v129, 0x12u);
                                }

LABEL_105:

                                goto LABEL_106;
                              }

                              ++v70;
                            }

                            while (v70 != 16);
                            if (((v99[2])(v99, 30, v111, v102) & 1) == 0)
                            {

                              goto LABEL_113;
                            }

LABEL_106:
                          }

                          v57 = [v55 countByEnumeratingWithState:&v114 objects:v128 count:16];
                          if (!v57)
                          {
LABEL_108:

                            v4 = v93;
                            a2 = v94;
                            v5 = v96;
                            goto LABEL_110;
                          }
                        }
                      }
                    }
                  }
                }

                else if (sa_family == 2)
                {
                  v29 = bswap32(*&ifa_addr->sa_data[2]);
                  v98 = v29;
                  if (HIBYTE(v29) != 127 && (v29 & 0xFFFF0000) != -1442971648)
                  {
                    v100 = v24;
                    v119.i32[0] = bswap32(*&ifa_netmask->sa_data[2]);
                    v97 = if_nametoindex(ifa_name);
                    v31 = 0;
                    v32 = 0;
                    v33 = 0;
                    do
                    {
                      v34 = v119.i8[v31] != 0;
                      if (v119.i8[v31])
                      {
                        ++v33;
                      }

                      else if (v32)
                      {
                        break;
                      }

                      ++v31;
                      v32 = v34;
                    }

                    while (v31 != 4);
                    v122 = 0u;
                    v123 = 0u;
                    v120 = 0u;
                    v121 = 0u;
                    obj = v95;
                    v35 = [obj countByEnumeratingWithState:&v120 objects:&buf count:16];
                    if (v35)
                    {
                      v36 = v35;
                      v37 = 0;
                      v38 = *v121;
                      v101 = v33 + 4;
                      for (j = *v121; ; j = *v121)
                      {
                        if (j != v38)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v40 = *(*(&v120 + 1) + 8 * v37);
                        LODWORD(v118) = 0;
                        LODWORD(v113[0]) = 0;
                        v41 = [v40 address];
                        v42 = [v40 mask];
                        if ([v41 length] == 4 && objc_msgSend(v42, "length") == 4)
                        {
                          [v41 getBytes:&v118 length:4];
                          [v42 getBytes:v113 length:4];
                          v43 = 0;
                          v44 = 0;
                          LOBYTE(v45) = 1;
                          do
                          {
                            v45 = v45 & (*(v113 + v43) == 0);
                            if (v45 == 1)
                            {
                              ++v44;
                            }

                            else
                            {
                              *(v113 + v43) = -1;
                            }

                            ++v43;
                          }

                          while (v43 != 4);
                          if ((v101 - v44) <= 4)
                          {
                            v46 = _system_util_log();
                            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                            {
                              v47 = v100->ifa_name;
                              *v129 = 67109890;
                              *v130 = v113[0];
                              *&v130[4] = 2082;
                              *&v130[6] = v47;
                              *&v130[14] = 1024;
                              *&v130[16] = v97;
                              v131 = 1024;
                              v132 = v119.i32[0];
                              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "PartialIP - with (Mask 0x%08X) doesn't overlap IPv4 Interface %{public}s(%u) with (Mask 0x%08X)", v129, 0x1Eu);
                            }

LABEL_64:

                            goto LABEL_65;
                          }

                          LODWORD(v112[0]) = bswap32(v118 & LODWORD(v113[0])) | v98 & bswap32(~LODWORD(v113[0]));
                          v49 = v119.i32[0];
                          if (((LODWORD(v112[0]) ^ v98) & v119.i32[0]) != 0)
                          {
                            v46 = _system_util_log();
                            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                            {
                              v50 = v100->ifa_name;
                              *v129 = 67110146;
                              *v130 = v112[0];
                              *&v130[4] = 1024;
                              *&v130[6] = v49;
                              *&v130[10] = 2082;
                              *&v130[12] = v50;
                              v131 = 1024;
                              v132 = v97;
                              v133 = 1024;
                              v134 = v98;
                              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "PartialIP - Addr 0x%08X and (Mask 0x%08X) doesn't apply to Interface %{public}s(%u) with Addr 0x%08X", v129, 0x24u);
                            }

                            goto LABEL_64;
                          }

                          if (((v99[2])(v99, 2, v112, v97) & 1) == 0)
                          {

LABEL_113:
                            v4 = v93;
                            a2 = v94;
                            v5 = v96;
LABEL_118:
                            if (v127)
                            {
                              freeifaddrs(v127);
                              v127 = 0;
                            }

LABEL_120:

                            objc_autoreleasePoolPop(context);
                            *(v107 + 6) = 0;
                            v105[0] = _NSConcreteStackBlock;
                            v105[1] = 0x40000000;
                            v105[2] = __add_domain_to_browser_block_invoke;
                            v105[3] = &unk_100150238;
                            v105[4] = &v106;
                            v105[5] = a2;
                            v105[6] = a1;
                            v105[7] = v4;
                            mdns_cfarray_enumerate(v92, v105);
                            CFRelease(v92);
                            v7 = *(v107 + 6);
                            if (!v7)
                            {
                              goto LABEL_121;
                            }

LABEL_151:
                            _Block_object_dispose(&v106, 8);
                            return v7;
                          }
                        }

LABEL_65:

                        if (++v37 >= v36)
                        {
                          v48 = [obj countByEnumeratingWithState:&v120 objects:&buf count:16];
                          if (!v48)
                          {
                            break;
                          }

                          v36 = v48;
                          v37 = 0;
                        }
                      }
                    }

                    v4 = v93;
                    a2 = v94;
                    v5 = v96;
LABEL_110:
                    v24 = v100;
                  }
                }
              }
            }
          }

          v24 = v24->ifa_next;
          if (!v24)
          {
            goto LABEL_118;
          }
        }
      }
    }

    else
    {
      v23 = -6700;
    }

    v74 = _system_util_log();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v23;
      _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "getifaddrs() failed: %{mdns:err}ld", &buf, 0xCu);
    }

    goto LABEL_118;
  }

  v17 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_121;
    }

    v21 = *(a1 + 200);
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v21;
  }

  else
  {
    v17 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_121;
    }

    v18 = *(a1 + 200);
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v18;
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[R%u] No peer audit token to get unicast discovery IP addresses", &buf, 8u);
LABEL_121:
  result = malloc_type_calloc(1uLL, 0x3C0uLL, 0x2B0832CAuLL);
  if (result)
  {
    v76 = result;
    v77 = a2;
    do
    {
      if (!v77)
      {
        break;
      }

      v78 = *v77;
      if (v78 > 0x3F)
      {
        break;
      }

      if (!*v77)
      {
        v79 = v77 - a2 + 1;
        if (v79 <= 0x100u)
        {
          memcpy(result + 1, a2, v79);
          goto LABEL_131;
        }

        break;
      }

      v77 += v78 + 1;
    }

    while (v77 - a2 <= 255);
    *(result + 8) = 0;
LABEL_131:
    *(v76 + 128) = *(a1 + 196);
    if (*(a1 + 288))
    {
      v80 = 0;
      *(v76 + 921) = *(a1 + 272);
    }

    else
    {
      v80 = *(a1 + 188);
    }

    *(v76 + 127) = v80;
    *(v76 + 129) = *(a1 + 200);
    started = mDNS_StartBrowse((v76 + 33), (v4 + 10), a2, *v4, *(a1 + 248), *(v4 + 9), (*(a1 + 248) & 0x80000) != 0, FoundInstance, a1);
    *(v107 + 6) = started;
    if (started)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_StartBrowse returned %d for type %##s domain %##s", started, v4 + 10, a2);
      free(v76);
    }

    else
    {
      *v76 = *v5;
      *v5 = v76;
      if (*(a1 + 252) != -1 && SameDomainNameBytes(a2, "\x05local"))
      {
        v82 = *(a1 + 252);
        if (v82)
        {
          v83 = AWDLInterfaceID == v82 || WiFiAwareInterfaceID == v82;
        }

        else
        {
          v83 = (*(a1 + 250) >> 4) & 1;
        }

        monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
        bzero(&buf, 0x3F1uLL);
        service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v4 + 10), &buf);
        _mdns_powerlog_bonjour_event(1u, v83, (a1 + 256), service_type_from_domain_name, monotonic_time_ns);
        *(a1 + 8) = monotonic_time_ns;
      }

      if (mDNS_McastLoggingEnabled)
      {
        LogMcastQuestion((v76 + 33), a1, 1);
      }

      if (callExternalHelpers(*v4, v76 + 8, *(a1 + 248)))
      {
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        buf = 0u;
        v136 = 0u;
        ConstructServiceName(&buf, 0, (v4 + 10), v76 + 8);
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG, "add_domain_to_browser: calling external_start_browsing_for_service()");
        }

        external_start_browsing_for_service(*v4, &buf, 12, *(a1 + 248), *(a1 + 188));
      }
    }

    v7 = *(v107 + 6);
    goto LABEL_151;
  }

  __break(1u);
  return result;
}

uint64_t mDNS_StartBrowse(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4, int a5, char a6, char a7, uint64_t a8, uint64_t a9)
{
  mDNS_Lock_(mDNSStorage, "mDNS_StartBrowse", 16152);
  started = mDNS_StartBrowse_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  mDNS_Unlock_(mDNSStorage, "mDNS_StartBrowse", 16154);
  return started;
}

uint64_t ReconfirmAntecedents(uint64_t result, _BYTE *a2, int a3, uint64_t a4, int a5)
{
  if (a4)
  {
    v9 = result;
    v10 = 0;
    v19 = result + 272;
    v22 = (result + 47032);
    v21 = result;
    while (1)
    {
      v20 = v10;
      v11 = *(v19 + 8 * v10);
      if (v11)
      {
        break;
      }

LABEL_26:
      v10 = v20 + 1;
      if (v20 == 498)
      {
        return result;
      }
    }

    while (1)
    {
      v12 = v11[2];
      if (v12)
      {
        break;
      }

LABEL_25:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      if (*(v12 + 109))
      {
        goto LABEL_24;
      }

      if (*(v12 + 32) != a4)
      {
        goto LABEL_24;
      }

      if (*(v12 + 28) != a3)
      {
        goto LABEL_24;
      }

      v13 = *(v12 + 12);
      if (v13 > 0x27)
      {
        goto LABEL_24;
      }

      if (((1 << v13) & 0x1000248000) != 0)
      {
        v14 = 6;
      }

      else if (((1 << v13) & 0x8000001024) != 0)
      {
        v14 = 4;
      }

      else
      {
        if (v13 != 33)
        {
          goto LABEL_24;
        }

        v14 = 10;
      }

      v15 = *(v12 + 48);
      result = SameDomainNameBytes((v15 + v14), a2);
      if (result)
      {
        v16 = mDNS_DomainNameFNV1aHash(*(v12 + 40));
        v17 = mDNS_DomainNameFNV1aHash((v15 + v14));
        v18 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }
        }

        else
        {
          v18 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
LABEL_21:
            GetRRDisplayString_rdb((v12 + 8), (*(v12 + 48) + 4), v22);
            *buf = 67110403;
            v24 = a5;
            v25 = 2048;
            v26 = a4;
            v27 = 1024;
            v28 = v16;
            v29 = 1024;
            v30 = v17;
            v31 = 2160;
            v32 = 1752392040;
            v33 = 2085;
            v34 = v22;
            v9 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ReconfirmAntecedents: Reconfirming (depth=%d, InterfaceID=%p, name_hash=%x, target_name_hash=%x) %{sensitive, mask.hash}s", buf, 0x32u);
          }
        }

        result = mDNS_Reconfirm_internal(v9, v12, 0x1388u);
        if (a5 <= 4)
        {
          result = ReconfirmAntecedents(v9, *(v12 + 40), *(v12 + 24), a4, a5 + 1);
        }
      }

LABEL_24:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }

  return result;
}

void FoundInstance(uint64_t **a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v4 = *(a2 + 176);
  if (*(a3 + 2) != 12)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: FoundInstance: Should not be called with rrtype %d (not a PTR record)");
    return;
  }

  v9 = 2 * (a4 != 0);
  v10 = *(a2 + 340);
  if (!*(a2 + 340) && *(a2 + 351) && *(a2 + 228) >= *(a2 + 351))
  {
    v9 |= 0x2000000u;
  }

  *&__n[3] = 0;
  if (*a3 == 240)
  {
    v11 = *(a3 + 3);
    v12 = (a2 + 376);
    v13 = v4;
    v14 = v9;
    v15 = -65554;
LABEL_12:
    GenerateBrowseReply(v12, v11, v13, &__n[3], v14, v15);
    goto LABEL_13;
  }

  if (GenerateNTDResponse((*(a3 + 5) + 4), *(a3 + 3), v4, &__n[3], 0x42, v9, 0))
  {
    if (!SameDomainNameBytes((*(v4 + 152) + 10), "\t_services\a_dns-sd\x04_udp"))
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: FoundInstance: %##s PTR %##s received from network is not valid DNS-SD service pointer", *(v4 + 184), *(a3 + 4), *(a3 + 5) + 4);
      return;
    }

    v11 = *(a3 + 3);
    v12 = (*(a3 + 5) + 4);
    v13 = v4;
    v14 = v9;
    v15 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v16 = mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a3 + 3), 0);
  v17 = (a2 + 376);
  v18 = mDNS_DomainNameFNV1aHash((a2 + 376));
  v19 = *(v4 + 208);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  if (!v19 || LODWORD(__tp.tv_sec) - v19 >= 300)
  {
    *(v4 + 208) = __tp.tv_sec;
    v32 = *(a3 + 7);
    if (v32)
    {
      v328 = v16;
      validation_result = dnssec_obj_resource_record_member_get_validation_result(v32);
      v35 = a3 + 12;
      v34 = *(a3 + 6);
      v36 = v34 < 0x201;
      if (validation_result)
      {
        if (*(a2 + 340))
        {
          if (v34 >= 0x201)
          {
            v76 = malloc_type_malloc(v34, 0x822ABD11uLL);
            if (!v76)
            {
              goto LABEL_465;
            }

            v26 = v76;
            v38 = *v35;
            v37 = v76;
            if (*v35)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v26 = 0;
            v37 = &word_1001787D0;
            v38 = 512;
            if (*(a3 + 6))
            {
LABEL_28:
              *&__n[1] = 0;
              __n[0] = 0;
              RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a3, v37, v38, __n, &__n[1]);
              if (!*&__n[1])
              {
                v298 = RDataBytesPointer;
                if (__n[0] >= 0x1FFuLL)
                {
                  v304 = __n[0] + 2;
                  v40 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
                  if (!v40)
                  {
                    goto LABEL_465;
                  }

                  v41 = v40;
                }

                else
                {
                  v40 = 0;
                  v41 = word_1001789D0;
                  v304 = 512;
                }

                v297 = v41;
                v311 = v40;
                if (v10)
                {
                  v149 = mDNSLogCategory_Default;
                }

                else
                {
                  v149 = mDNSLogCategory_mDNS;
                }

                if (!mDNS_SensitiveLoggingEnableCount || v149 == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_429;
                  }

                  v166 = a4 != 0;
                  v167 = *(v4 + 200);
                  v168 = bswap32(*(a2 + 340)) >> 16;
                  v169 = (a2 + 376);
                  while (1)
                  {
                    if (!v169 || (v170 = *v169, v170 > 0x3F))
                    {
LABEL_289:
                      v171 = 257;
                      goto LABEL_418;
                    }

                    if (!*v169)
                    {
                      break;
                    }

                    v169 += v170 + 1;
                    if (v169 - v17 >= 256)
                    {
                      goto LABEL_289;
                    }
                  }

                  v171 = (v169 - v17 + 1);
LABEL_418:
                  v256 = *(a3 + 2);
                  v257 = __n[0];
                  v258 = __n[0] + 2;
                  if (v258 <= v304)
                  {
                    v259 = v297;
                    v260 = v298;
                    *v297 = __rev16(v256);
                    v295 = v166;
                    v307 = v168;
                    v261 = v171;
                    v301 = v258;
                    memcpy(v297 + 1, v260, v257);
                    v258 = v301;
                    v171 = v261;
                    v168 = v307;
                    v166 = v295;
                  }

                  else
                  {
                    v259 = 0;
                  }

                  LODWORD(__tp.tv_sec) = 67112451;
                  HIDWORD(__tp.tv_sec) = v167;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v168;
                  HIWORD(__tp.tv_nsec) = 1024;
                  v336 = v166;
                  v337 = 1024;
                  v338 = 0;
                  v339 = 1024;
                  *v340 = v328;
                  *&v340[4] = 2160;
                  *&v340[6] = 1752392040;
                  *&v340[14] = 1040;
                  *&v340[16] = v171;
                  *&v340[20] = 2101;
                  *&v340[22] = v17;
                  *&v340[30] = 1024;
                  *&v340[32] = v18;
                  *&v340[36] = 1026;
                  *&v340[38] = validation_result;
                  *&v340[42] = 1024;
                  *&v340[44] = v256;
                  *&v340[48] = 2160;
                  *&v340[50] = 1752392040;
                  *&v340[58] = 1040;
                  *&v340[60] = v258;
                  *&v340[64] = 2101;
                  *&v340[66] = v259;
                  v226 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                }

                else
                {
                  if (v10)
                  {
                    v149 = mDNSLogCategory_Default_redacted;
                  }

                  else
                  {
                    v149 = mDNSLogCategory_mDNS;
                  }

                  if (!os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_429;
                  }

                  v150 = a4 != 0;
                  v151 = *(v4 + 200);
                  v152 = bswap32(*(a2 + 340)) >> 16;
                  v153 = (a2 + 376);
                  while (1)
                  {
                    if (!v153 || (v154 = *v153, v154 > 0x3F))
                    {
LABEL_269:
                      v155 = 257;
                      goto LABEL_423;
                    }

                    if (!*v153)
                    {
                      break;
                    }

                    v153 += v154 + 1;
                    if (v153 - v17 >= 256)
                    {
                      goto LABEL_269;
                    }
                  }

                  v155 = (v153 - v17 + 1);
LABEL_423:
                  v262 = *(a3 + 2);
                  v263 = __n[0];
                  v264 = __n[0] + 2;
                  if (v264 <= v304)
                  {
                    v265 = v297;
                    v266 = v298;
                    *v297 = __rev16(v262);
                    v308 = v149;
                    v296 = v152;
                    v267 = v155;
                    v302 = v264;
                    v268 = v262;
                    memcpy(v297 + 1, v266, v263);
                    v262 = v268;
                    v264 = v302;
                    v155 = v267;
                    v152 = v296;
                    v149 = v308;
                  }

                  else
                  {
                    v265 = 0;
                  }

                  LODWORD(__tp.tv_sec) = 67112451;
                  HIDWORD(__tp.tv_sec) = v151;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v152;
                  HIWORD(__tp.tv_nsec) = 1024;
                  v336 = v150;
                  v337 = 1024;
                  v338 = 0;
                  v339 = 1024;
                  *v340 = v328;
                  *&v340[4] = 2160;
                  *&v340[6] = 1752392040;
                  *&v340[14] = 1040;
                  *&v340[16] = v155;
                  *&v340[20] = 2101;
                  *&v340[22] = v17;
                  *&v340[30] = 1024;
                  *&v340[32] = v18;
                  *&v340[36] = 1026;
                  *&v340[38] = validation_result;
                  *&v340[42] = 1024;
                  *&v340[44] = v262;
                  *&v340[48] = 2160;
                  *&v340[50] = 1752392040;
                  *&v340[58] = 1040;
                  *&v340[60] = v264;
                  *&v340[64] = 2101;
                  *&v340[66] = v265;
                  v226 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                }

                v227 = v149;
                v230 = 102;
                goto LABEL_428;
              }

              goto LABEL_449;
            }
          }

          if (v10)
          {
            v77 = mDNSLogCategory_Default;
          }

          else
          {
            v77 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v77 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_449;
            }

            v78 = a4 != 0;
            v79 = *(v4 + 200);
            v80 = bswap32(*(a2 + 340)) >> 16;
            v115 = (a2 + 376);
            while (1)
            {
              if (!v115 || (v116 = *v115, v116 > 0x3F))
              {
LABEL_201:
                v83 = 257;
                goto LABEL_400;
              }

              if (!*v115)
              {
                break;
              }

              v115 += v116 + 1;
              if (v115 - v17 >= 256)
              {
                goto LABEL_201;
              }
            }

            v83 = (v115 - v17 + 1);
          }

          else
          {
            if (v10)
            {
              v77 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v77 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_449;
            }

            v78 = a4 != 0;
            v79 = *(v4 + 200);
            v80 = bswap32(*(a2 + 340)) >> 16;
            v81 = (a2 + 376);
            while (1)
            {
              if (!v81 || (v82 = *v81, v82 > 0x3F))
              {
LABEL_99:
                v83 = 257;
                goto LABEL_400;
              }

              if (!*v81)
              {
                break;
              }

              v81 += v82 + 1;
              if (v81 - v17 >= 256)
              {
                goto LABEL_99;
              }
            }

            v83 = (v81 - v17 + 1);
          }

LABEL_400:
          v234 = *(a3 + 2);
          LODWORD(__tp.tv_sec) = 67111683;
          HIDWORD(__tp.tv_sec) = v79;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v80;
          HIWORD(__tp.tv_nsec) = 1024;
          v336 = v78;
          v337 = 1024;
          v338 = 0;
          v339 = 1024;
          *v340 = v328;
          *&v340[4] = 2160;
          *&v340[6] = 1752392040;
          *&v340[14] = 1040;
          *&v340[16] = v83;
          *&v340[20] = 2101;
          *&v340[22] = a2 + 376;
          *&v340[30] = 1024;
          *&v340[32] = v18;
          *&v340[36] = 1026;
          *&v340[38] = validation_result;
          *&v340[42] = 1024;
          *&v340[44] = v234;
          v63 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
          v120 = v77;
          v121 = 76;
LABEL_435:
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, v63, &__tp, v121);
          goto LABEL_449;
        }

        if (v34 >= 0x201)
        {
          v34 = malloc_type_malloc(v34, 0x822ABD11uLL);
          if (!v34)
          {
            goto LABEL_465;
          }

          v26 = v34;
          LODWORD(v34) = *v35;
          v73 = v34;
          v72 = v26;
        }

        else
        {
          v26 = 0;
          v72 = &word_1001787D0;
          v73 = 512;
        }

        if (v34)
        {
          *&__n[1] = 0;
          __n[0] = 0;
          v100 = ResourceRecordGetRDataBytesPointer(a3, v72, v73, __n, &__n[1]);
          if (*&__n[1])
          {
            goto LABEL_449;
          }

          v101 = v100;
          v325 = v18;
          if (__n[0] >= 0x1FFuLL)
          {
            v315 = __n[0] + 2;
            v199 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
            if (!v199)
            {
              goto LABEL_465;
            }

            v102 = v199;
            v305 = v199;
          }

          else
          {
            v102 = 0;
            v305 = word_1001789D0;
            v315 = 512;
          }

          if (v10)
          {
            v200 = mDNSLogCategory_Default;
          }

          else
          {
            v200 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v200 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
            {
LABEL_463:
              if (!v102)
              {
                goto LABEL_449;
              }

              v233 = v102;
              goto LABEL_448;
            }

            v213 = a4 != 0;
            v214 = *(v4 + 200);
            v215 = v17;
            while (1)
            {
              if (!v215 || (v216 = *v215, v216 > 0x3F))
              {
LABEL_379:
                v217 = 257;
                goto LABEL_453;
              }

              if (!*v215)
              {
                break;
              }

              v215 += v216 + 1;
              if (v215 - v17 >= 256)
              {
                goto LABEL_379;
              }
            }

            v217 = (v215 - v17 + 1);
LABEL_453:
            v282 = *(a3 + 2);
            v283 = __n[0];
            v284 = __n[0] + 2;
            if (v284 <= v315)
            {
              *v305 = __rev16(v282);
              v286 = v101;
              v287 = v214;
              v318 = v284;
              memcpy(v305 + 1, v286, v283);
              v285 = v305;
              v284 = v318;
              v214 = v287;
            }

            else
            {
              v285 = 0;
            }

            LODWORD(__tp.tv_sec) = 67112195;
            HIDWORD(__tp.tv_sec) = v214;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v213;
            HIWORD(__tp.tv_nsec) = 1024;
            v336 = 0;
            v337 = 1024;
            v338 = v328;
            v339 = 2160;
            *v340 = 1752392040;
            *&v340[8] = 1040;
            *&v340[10] = v217;
            *&v340[14] = 2101;
            *&v340[16] = v17;
            *&v340[24] = 1024;
            *&v340[26] = v325;
            *&v340[30] = 1026;
            *&v340[32] = validation_result;
            *&v340[36] = 1024;
            *&v340[38] = v282;
            *&v340[42] = 2160;
            *&v340[44] = 1752392040;
            *&v340[52] = 1040;
            *&v340[54] = v284;
            *&v340[58] = 2101;
            *&v340[60] = v285;
          }

          else
          {
            if (v10)
            {
              v200 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v200 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_463;
            }

            v201 = a4 != 0;
            v202 = *(v4 + 200);
            v203 = v17;
            while (1)
            {
              if (!v203 || (v204 = *v203, v204 > 0x3F))
              {
LABEL_359:
                v205 = 257;
                goto LABEL_458;
              }

              if (!*v203)
              {
                break;
              }

              v203 += v204 + 1;
              if (v203 - v17 >= 256)
              {
                goto LABEL_359;
              }
            }

            v205 = (v203 - v17 + 1);
LABEL_458:
            v288 = *(a3 + 2);
            v289 = __n[0];
            v290 = __n[0] + 2;
            if (v290 <= v315)
            {
              *v305 = __rev16(v288);
              v292 = v101;
              v293 = v202;
              v319 = v200;
              v294 = v288;
              memcpy(v305 + 1, v292, v289);
              v288 = v294;
              v291 = v305;
              v200 = v319;
              v202 = v293;
            }

            else
            {
              v291 = 0;
            }

            LODWORD(__tp.tv_sec) = 67112195;
            HIDWORD(__tp.tv_sec) = v202;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v201;
            HIWORD(__tp.tv_nsec) = 1024;
            v336 = 0;
            v337 = 1024;
            v338 = v328;
            v339 = 2160;
            *v340 = 1752392040;
            *&v340[8] = 1040;
            *&v340[10] = v205;
            *&v340[14] = 2101;
            *&v340[16] = v17;
            *&v340[24] = 1024;
            *&v340[26] = v325;
            *&v340[30] = 1026;
            *&v340[32] = validation_result;
            *&v340[36] = 1024;
            *&v340[38] = v288;
            *&v340[42] = 2160;
            *&v340[44] = 1752392040;
            *&v340[52] = 1040;
            *&v340[54] = v290;
            *&v340[58] = 2101;
            *&v340[60] = v291;
          }

          _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__tp, 0x60u);
          goto LABEL_463;
        }

        if (v10)
        {
          v65 = mDNSLogCategory_Default;
        }

        else
        {
          v65 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v65 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_449;
          }

          v110 = a4 != 0;
          v111 = *(v4 + 200);
          v179 = (a2 + 376);
          while (1)
          {
            if (!v179 || (v180 = *v179, v180 > 0x3F))
            {
LABEL_299:
              v114 = 257;
              goto LABEL_433;
            }

            if (!*v179)
            {
              break;
            }

            v179 += v180 + 1;
            if (v179 - v17 >= 256)
            {
              goto LABEL_299;
            }
          }

          v114 = (v179 - v17 + 1);
        }

        else
        {
          if (v10)
          {
            v65 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v65 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_449;
          }

          v110 = a4 != 0;
          v111 = *(v4 + 200);
          v112 = (a2 + 376);
          while (1)
          {
            if (!v112 || (v113 = *v112, v113 > 0x3F))
            {
LABEL_184:
              v114 = 257;
              goto LABEL_433;
            }

            if (!*v112)
            {
              break;
            }

            v112 += v113 + 1;
            if (v112 - v17 >= 256)
            {
              goto LABEL_184;
            }
          }

          v114 = (v112 - v17 + 1);
        }

LABEL_433:
        v269 = *(a3 + 2);
        LODWORD(__tp.tv_sec) = 67111427;
        HIDWORD(__tp.tv_sec) = v111;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v110;
        HIWORD(__tp.tv_nsec) = 1024;
        v336 = 0;
        v337 = 1024;
        v338 = v328;
        v339 = 2160;
        *v340 = 1752392040;
        *&v340[8] = 1040;
        *&v340[10] = v114;
        *&v340[14] = 2101;
        *&v340[16] = a2 + 376;
        *&v340[24] = 1024;
        *&v340[26] = v18;
        *&v340[30] = 1026;
        *&v340[32] = validation_result;
        *&v340[36] = 1024;
        *&v340[38] = v269;
        v63 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_434:
        v120 = v65;
        v121 = 70;
        goto LABEL_435;
      }

      v16 = v328;
      if (!*(a2 + 340))
      {
        goto LABEL_46;
      }
    }

    else
    {
      v35 = a3 + 12;
      LODWORD(v34) = *(a3 + 6);
      v36 = v34 < 0x201;
      if (!*(a2 + 340))
      {
LABEL_46:
        if (v36)
        {
          v26 = 0;
          v54 = &word_1001787D0;
          v55 = 512;
        }

        else
        {
          v34 = malloc_type_malloc(v34, 0x822ABD11uLL);
          if (!v34)
          {
            goto LABEL_465;
          }

          v26 = v34;
          LODWORD(v34) = *v35;
          v55 = v34;
          v54 = v26;
        }

        if (!v34)
        {
          if (v10)
          {
            v93 = mDNSLogCategory_Default;
          }

          else
          {
            v93 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v93 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_449;
            }

            v94 = a4 != 0;
            v95 = *(v4 + 200);
            v145 = (a2 + 376);
            while (1)
            {
              if (!v145 || (v146 = *v145, v146 > 0x3F))
              {
LABEL_250:
                v98 = 257;
                goto LABEL_414;
              }

              if (!*v145)
              {
                break;
              }

              v145 += v146 + 1;
              if (v145 - v17 >= 256)
              {
                goto LABEL_250;
              }
            }

            v98 = (v145 - v17 + 1);
          }

          else
          {
            if (v10)
            {
              v93 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v93 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_449;
            }

            v94 = a4 != 0;
            v95 = *(v4 + 200);
            v96 = (a2 + 376);
            while (1)
            {
              if (!v96 || (v97 = *v96, v97 > 0x3F))
              {
LABEL_138:
                v98 = 257;
                goto LABEL_414;
              }

              if (!*v96)
              {
                break;
              }

              v96 += v97 + 1;
              if (v96 - v17 >= 256)
              {
                goto LABEL_138;
              }
            }

            v98 = (v96 - v17 + 1);
          }

LABEL_414:
          v253 = *(a3 + 2);
          LODWORD(__tp.tv_sec) = 67111171;
          HIDWORD(__tp.tv_sec) = v95;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v94;
          HIWORD(__tp.tv_nsec) = 1024;
          v336 = 0;
          v337 = 1024;
          v338 = v16;
          v339 = 2160;
          *v340 = 1752392040;
          *&v340[8] = 1040;
          *&v340[10] = v98;
          *&v340[14] = 2101;
          *&v340[16] = a2 + 376;
          *&v340[24] = 1024;
          *&v340[26] = v18;
          *&v340[30] = 1024;
          *&v340[32] = v253;
          v63 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
          v120 = v93;
          v121 = 64;
          goto LABEL_435;
        }

        *&__n[1] = 0;
        __n[0] = 0;
        v86 = ResourceRecordGetRDataBytesPointer(a3, v54, v55, __n, &__n[1]);
        if (*&__n[1])
        {
          goto LABEL_449;
        }

        v87 = v86;
        v323 = v18;
        v331 = v16;
        if (__n[0] >= 0x1FFuLL)
        {
          v88 = __n[0] + 2;
          v183 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
          if (!v183)
          {
            goto LABEL_465;
          }

          v46 = v183;
          v314 = v183;
        }

        else
        {
          v46 = 0;
          v314 = word_1001789D0;
          v88 = 512;
        }

        if (v10)
        {
          v184 = mDNSLogCategory_Default;
        }

        else
        {
          v184 = mDNSLogCategory_mDNS;
        }

        if (mDNS_SensitiveLoggingEnableCount && v184 != mDNSLogCategory_State)
        {
          if (v10)
          {
            v184 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v184 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_446;
          }

          v185 = a4 != 0;
          v186 = *(v4 + 200);
          v187 = v17;
          while (1)
          {
            if (!v187 || (v188 = *v187, v188 > 0x3F))
            {
LABEL_319:
              v189 = 257;
              goto LABEL_441;
            }

            if (!*v187)
            {
              break;
            }

            v187 += v188 + 1;
            if (v187 - v17 >= 256)
            {
              goto LABEL_319;
            }
          }

          v189 = (v187 - v17 + 1);
LABEL_441:
          v270 = *(a3 + 2);
          v277 = __n[0];
          v272 = __n[0] + 2;
          if (v272 <= v88)
          {
            v273 = v314;
            *v314 = __rev16(v270);
            v278 = v87;
            v279 = v185;
            v310 = v184;
            v280 = v270;
            v281 = v272;
            memcpy(v314 + 1, v278, v277);
            v272 = v281;
            v270 = v280;
            v184 = v310;
            v185 = v279;
          }

          else
          {
            v273 = 0;
          }

          goto LABEL_444;
        }

        if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
        {
          v185 = a4 != 0;
          v186 = *(v4 + 200);
          v197 = v17;
          while (1)
          {
            if (!v197 || (v198 = *v197, v198 > 0x3F))
            {
LABEL_339:
              v189 = 257;
              goto LABEL_437;
            }

            if (!*v197)
            {
              break;
            }

            v197 += v198 + 1;
            if (v197 - v17 >= 256)
            {
              goto LABEL_339;
            }
          }

          v189 = (v197 - v17 + 1);
LABEL_437:
          v270 = *(a3 + 2);
          v271 = __n[0];
          v272 = __n[0] + 2;
          if (v272 <= v88)
          {
            v273 = v314;
            *v314 = __rev16(v270);
            v274 = v87;
            v275 = v185;
            v276 = v270;
            v309 = v272;
            memcpy(v314 + 1, v274, v271);
            v272 = v309;
            v270 = v276;
            v185 = v275;
          }

          else
          {
            v273 = 0;
          }

LABEL_444:
          LODWORD(__tp.tv_sec) = 67111939;
          HIDWORD(__tp.tv_sec) = v186;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v185;
          HIWORD(__tp.tv_nsec) = 1024;
          v336 = 0;
          v337 = 1024;
          v338 = v331;
          v339 = 2160;
          *v340 = 1752392040;
          *&v340[8] = 1040;
          *&v340[10] = v189;
          *&v340[14] = 2101;
          *&v340[16] = v17;
          *&v340[24] = 1024;
          *&v340[26] = v323;
          *&v340[30] = 1024;
          *&v340[32] = v270;
          *&v340[36] = 2160;
          *&v340[38] = 1752392040;
          *&v340[46] = 1040;
          *&v340[48] = v272;
          *&v340[52] = 2101;
          *&v340[54] = v273;
          v242 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          v251 = v184;
          v252 = 90;
          goto LABEL_445;
        }

LABEL_446:
        if (!v46)
        {
          goto LABEL_449;
        }

        v233 = v46;
        goto LABEL_448;
      }
    }

    if (v36)
    {
      v26 = 0;
      v42 = &word_1001787D0;
      v43 = 512;
      if (v34)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v64 = malloc_type_malloc(v34, 0x822ABD11uLL);
      if (!v64)
      {
        goto LABEL_465;
      }

      v26 = v64;
      v43 = *v35;
      v42 = v64;
      if (*v35)
      {
LABEL_34:
        *&__n[1] = 0;
        __n[0] = 0;
        v44 = ResourceRecordGetRDataBytesPointer(a3, v42, v43, __n, &__n[1]);
        if (*&__n[1])
        {
          goto LABEL_449;
        }

        v45 = v44;
        v321 = v18;
        v329 = v16;
        if (__n[0] >= 0x1FFuLL)
        {
          v312 = __n[0] + 2;
          v131 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
          if (!v131)
          {
            goto LABEL_465;
          }

          v46 = v131;
          v47 = v131;
        }

        else
        {
          v46 = 0;
          v47 = word_1001789D0;
          v312 = 512;
        }

        v306 = v47;
        if (v10)
        {
          v132 = mDNSLogCategory_Default;
        }

        else
        {
          v132 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v132 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_446;
          }

          v139 = a4 != 0;
          v140 = *(v4 + 200);
          v141 = bswap32(*(a2 + 340)) >> 16;
          v142 = (a2 + 376);
          while (1)
          {
            if (!v142 || (v143 = *v142, v143 > 0x3F))
            {
LABEL_243:
              v144 = 257;
              goto LABEL_402;
            }

            if (!*v142)
            {
              break;
            }

            v142 += v143 + 1;
            if (v142 - v17 >= 256)
            {
              goto LABEL_243;
            }
          }

          v144 = (v142 - v17 + 1);
LABEL_402:
          v235 = *(a3 + 2);
          v236 = __n[0];
          v237 = __n[0] + 2;
          if (v237 <= v312)
          {
            v238 = v306;
            *v306 = __rev16(v235);
            v239 = v45;
            v240 = v139;
            v299 = v141;
            v241 = v144;
            v316 = v237;
            memcpy(v306 + 1, v239, v236);
            v237 = v316;
            v144 = v241;
            v141 = v299;
            v139 = v240;
          }

          else
          {
            v238 = 0;
          }

          LODWORD(__tp.tv_sec) = 67112195;
          HIDWORD(__tp.tv_sec) = v140;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v141;
          HIWORD(__tp.tv_nsec) = 1024;
          v336 = v139;
          v337 = 1024;
          v338 = 0;
          v339 = 1024;
          *v340 = v329;
          *&v340[4] = 2160;
          *&v340[6] = 1752392040;
          *&v340[14] = 1040;
          *&v340[16] = v144;
          *&v340[20] = 2101;
          *&v340[22] = v17;
          *&v340[30] = 1024;
          *&v340[32] = v321;
          *&v340[36] = 1024;
          *&v340[38] = v235;
          *&v340[42] = 2160;
          *&v340[44] = 1752392040;
          *&v340[52] = 1040;
          *&v340[54] = v237;
          *&v340[58] = 2101;
          *&v340[60] = v238;
          v242 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        }

        else
        {
          if (v10)
          {
            v132 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v132 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_446;
          }

          v133 = a4 != 0;
          v134 = *(v4 + 200);
          v135 = bswap32(*(a2 + 340)) >> 16;
          v136 = (a2 + 376);
          while (1)
          {
            if (!v136 || (v137 = *v136, v137 > 0x3F))
            {
LABEL_233:
              v138 = 257;
              goto LABEL_407;
            }

            if (!*v136)
            {
              break;
            }

            v136 += v137 + 1;
            if (v136 - v17 >= 256)
            {
              goto LABEL_233;
            }
          }

          v138 = (v136 - v17 + 1);
LABEL_407:
          v243 = *(a3 + 2);
          v244 = __n[0];
          v245 = __n[0] + 2;
          if (v245 <= v312)
          {
            v246 = v306;
            *v306 = __rev16(v243);
            v247 = v45;
            v248 = v133;
            v317 = v132;
            v300 = v135;
            v249 = v138;
            v250 = v243;
            memcpy(v306 + 1, v247, v244);
            v243 = v250;
            v138 = v249;
            v135 = v300;
            v132 = v317;
            v133 = v248;
          }

          else
          {
            v246 = 0;
          }

          LODWORD(__tp.tv_sec) = 67112195;
          HIDWORD(__tp.tv_sec) = v134;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v135;
          HIWORD(__tp.tv_nsec) = 1024;
          v336 = v133;
          v337 = 1024;
          v338 = 0;
          v339 = 1024;
          *v340 = v329;
          *&v340[4] = 2160;
          *&v340[6] = 1752392040;
          *&v340[14] = 1040;
          *&v340[16] = v138;
          *&v340[20] = 2101;
          *&v340[22] = v17;
          *&v340[30] = 1024;
          *&v340[32] = v321;
          *&v340[36] = 1024;
          *&v340[38] = v243;
          *&v340[42] = 2160;
          *&v340[44] = 1752392040;
          *&v340[52] = 1040;
          *&v340[54] = v245;
          *&v340[58] = 2101;
          *&v340[60] = v246;
          v242 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        }

        v251 = v132;
        v252 = 96;
LABEL_445:
        _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, v242, &__tp, v252);
        goto LABEL_446;
      }
    }

    if (v10)
    {
      v65 = mDNSLogCategory_Default;
    }

    else
    {
      v65 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v65 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }

      v66 = a4 != 0;
      v67 = *(v4 + 200);
      v68 = bswap32(*(a2 + 340)) >> 16;
      v108 = (a2 + 376);
      while (1)
      {
        if (!v108 || (v109 = *v108, v109 > 0x3F))
        {
LABEL_169:
          v71 = 257;
          goto LABEL_386;
        }

        if (!*v108)
        {
          break;
        }

        v108 += v109 + 1;
        if (v108 - v17 >= 256)
        {
          goto LABEL_169;
        }
      }

      v71 = (v108 - v17 + 1);
    }

    else
    {
      if (v10)
      {
        v65 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v65 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }

      v66 = a4 != 0;
      v67 = *(v4 + 200);
      v68 = bswap32(*(a2 + 340)) >> 16;
      v69 = (a2 + 376);
      while (1)
      {
        if (!v69 || (v70 = *v69, v70 > 0x3F))
        {
LABEL_78:
          v71 = 257;
          goto LABEL_386;
        }

        if (!*v69)
        {
          break;
        }

        v69 += v70 + 1;
        if (v69 - v17 >= 256)
        {
          goto LABEL_78;
        }
      }

      v71 = (v69 - v17 + 1);
    }

LABEL_386:
    v223 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67111427;
    HIDWORD(__tp.tv_sec) = v67;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = v68;
    HIWORD(__tp.tv_nsec) = 1024;
    v336 = v66;
    v337 = 1024;
    v338 = 0;
    v339 = 1024;
    *v340 = v16;
    *&v340[4] = 2160;
    *&v340[6] = 1752392040;
    *&v340[14] = 1040;
    *&v340[16] = v71;
    *&v340[20] = 2101;
    *&v340[22] = a2 + 376;
    *&v340[30] = 1024;
    *&v340[32] = v18;
    *&v340[36] = 1024;
    *&v340[38] = v223;
    v63 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_434;
  }

  v20 = *(a3 + 7);
  if (!v20)
  {
    v22 = *(a2 + 340);
    v24 = a3 + 12;
    LODWORD(v23) = *(a3 + 6);
    v25 = v23 < 0x201;
LABEL_38:
    if (v22)
    {
      if (v25)
      {
        v26 = 0;
        v48 = &word_1001787D0;
        v49 = 512;
        if (v23)
        {
LABEL_41:
          *&__n[1] = 0;
          __n[0] = 0;
          v50 = ResourceRecordGetRDataBytesPointer(a3, v48, v49, __n, &__n[1]);
          if (*&__n[1])
          {
            goto LABEL_449;
          }

          v51 = v50;
          v322 = v18;
          v330 = v16;
          if (__n[0] >= 0x1FFuLL)
          {
            v53 = __n[0] + 2;
            v122 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
            if (!v122)
            {
              goto LABEL_465;
            }

            v52 = v122;
            v313 = v122;
          }

          else
          {
            v52 = 0;
            v313 = word_1001789D0;
            v53 = 512;
          }

          if (v10)
          {
            v123 = mDNSLogCategory_Default;
          }

          else
          {
            v123 = mDNSLogCategory_mDNS;
          }

          if (mDNS_SensitiveLoggingEnableCount && v123 != mDNSLogCategory_State)
          {
            if (v10)
            {
              v123 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v123 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_396;
            }

            v124 = a4 != 0;
            v125 = *(v4 + 200);
            v126 = bswap32(*(a2 + 340)) >> 16;
            v127 = *(a3 + 2);
            v128 = __n[0];
            v129 = __n[0] + 2;
            if (v129 > v53)
            {
              v130 = 0;
LABEL_384:
              LODWORD(__tp.tv_sec) = 67111427;
              HIDWORD(__tp.tv_sec) = v125;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = v126;
              HIWORD(__tp.tv_nsec) = 1024;
              v336 = v124;
              v337 = 1024;
              v338 = 0;
              v339 = 1024;
              *v340 = v330;
              *&v340[4] = 1024;
              *&v340[6] = v322;
              *&v340[10] = 1024;
              *&v340[12] = v127;
              *&v340[16] = 2160;
              *&v340[18] = 1752392040;
              *&v340[26] = 1040;
              *&v340[28] = v129;
              *&v340[32] = 2101;
              *&v340[34] = v130;
              v220 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
              v221 = v123;
              v222 = 70;
LABEL_395:
              _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, v220, &__tp, v222);
              goto LABEL_396;
            }

            goto LABEL_383;
          }

          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
          {
            v124 = a4 != 0;
            v125 = *(v4 + 200);
            v126 = bswap32(*(a2 + 340)) >> 16;
            v127 = *(a3 + 2);
            v128 = __n[0];
            v129 = __n[0] + 2;
            if (v129 > v53)
            {
              v130 = 0;
              goto LABEL_384;
            }

LABEL_383:
            v130 = v313;
            *v313 = __rev16(v127);
            v218 = v51;
            v219 = v124;
            memcpy(v313 + 1, v218, v128);
            v124 = v219;
            goto LABEL_384;
          }

LABEL_396:
          if (!v52)
          {
            goto LABEL_449;
          }

          v233 = v52;
LABEL_448:
          free(v233);
          goto LABEL_449;
        }
      }

      else
      {
        v58 = malloc_type_malloc(v23, 0x822ABD11uLL);
        if (!v58)
        {
          goto LABEL_465;
        }

        v26 = v58;
        v49 = *v24;
        v48 = v58;
        if (*v24)
        {
          goto LABEL_41;
        }
      }

      if (v10)
      {
        v59 = mDNSLogCategory_Default;
      }

      else
      {
        v59 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v59 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_449;
        }
      }

      else
      {
        if (v10)
        {
          v59 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v59 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_449;
        }
      }

      v60 = *(v4 + 200);
      v61 = bswap32(*(a2 + 340)) >> 16;
      v62 = *(a3 + 2);
      LODWORD(__tp.tv_sec) = 67110656;
      HIDWORD(__tp.tv_sec) = v60;
      LOWORD(__tp.tv_nsec) = 1024;
      *(&__tp.tv_nsec + 2) = v61;
      HIWORD(__tp.tv_nsec) = 1024;
      v336 = a4 != 0;
      v337 = 1024;
      v338 = 0;
      v339 = 1024;
      *v340 = v16;
      *&v340[4] = 1024;
      *&v340[6] = v18;
      *&v340[10] = 1024;
      *&v340[12] = v62;
      v63 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
      goto LABEL_302;
    }

    if (v25)
    {
      v26 = 0;
      v56 = &word_1001787D0;
      v57 = 512;
    }

    else
    {
      v23 = malloc_type_malloc(v23, 0x822ABD11uLL);
      if (!v23)
      {
        goto LABEL_465;
      }

      v26 = v23;
      LODWORD(v23) = *v24;
      v57 = v23;
      v56 = v26;
    }

    if (!v23)
    {
      if (v10)
      {
        v99 = mDNSLogCategory_Default;
      }

      else
      {
        v99 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v99 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_449;
        }
      }

      else
      {
        if (v10)
        {
          v99 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v99 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_449;
        }
      }

      v147 = *(v4 + 200);
      v148 = *(a3 + 2);
      LODWORD(__tp.tv_sec) = 67110400;
      HIDWORD(__tp.tv_sec) = v147;
      LOWORD(__tp.tv_nsec) = 1024;
      *(&__tp.tv_nsec + 2) = a4 != 0;
      HIWORD(__tp.tv_nsec) = 1024;
      v336 = 0;
      v337 = 1024;
      v338 = v16;
      v339 = 1024;
      *v340 = v18;
      *&v340[4] = 1024;
      *&v340[6] = v148;
      v63 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
      v120 = v99;
      v121 = 38;
      goto LABEL_435;
    }

    *&__n[1] = 0;
    __n[0] = 0;
    v89 = ResourceRecordGetRDataBytesPointer(a3, v56, v57, __n, &__n[1]);
    if (*&__n[1])
    {
      goto LABEL_449;
    }

    v90 = v89;
    v324 = v18;
    v332 = v16;
    if (__n[0] >= 0x1FFuLL)
    {
      v92 = __n[0] + 2;
      v190 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
      if (!v190)
      {
        goto LABEL_465;
      }

      v52 = v190;
      v91 = v190;
    }

    else
    {
      v52 = 0;
      v91 = word_1001789D0;
      v92 = 512;
    }

    if (v10)
    {
      v191 = mDNSLogCategory_Default;
    }

    else
    {
      v191 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v191 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_396;
      }

      v192 = a4 != 0;
      v193 = *(v4 + 200);
      v194 = *(a3 + 2);
      v195 = __n[0];
      v196 = __n[0] + 2;
      if (v196 > v92)
      {
        v91 = 0;
        goto LABEL_394;
      }
    }

    else
    {
      if (v10)
      {
        v191 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v191 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_396;
      }

      v192 = a4 != 0;
      v193 = *(v4 + 200);
      v194 = *(a3 + 2);
      v195 = __n[0];
      v196 = __n[0] + 2;
      if (v196 > v92)
      {
        v91 = 0;
LABEL_394:
        LODWORD(__tp.tv_sec) = 67111171;
        HIDWORD(__tp.tv_sec) = v193;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v192;
        HIWORD(__tp.tv_nsec) = 1024;
        v336 = 0;
        v337 = 1024;
        v338 = v332;
        v339 = 1024;
        *v340 = v324;
        *&v340[4] = 1024;
        *&v340[6] = v194;
        *&v340[10] = 2160;
        *&v340[12] = 1752392040;
        *&v340[20] = 1040;
        *&v340[22] = v196;
        *&v340[26] = 2101;
        *&v340[28] = v91;
        v220 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v221 = v191;
        v222 = 64;
        goto LABEL_395;
      }
    }

    *v91 = __rev16(v194);
    v231 = v90;
    v232 = v192;
    memcpy(v91 + 1, v231, v195);
    v192 = v232;
    goto LABEL_394;
  }

  v21 = dnssec_obj_resource_record_member_get_validation_result(v20);
  v22 = *(a2 + 340);
  v24 = a3 + 12;
  v23 = *(a3 + 6);
  v25 = v23 < 0x201;
  if (!v21)
  {
    goto LABEL_38;
  }

  if (!*(a2 + 340))
  {
    if (v23 >= 0x201)
    {
      v23 = malloc_type_malloc(v23, 0x822ABD11uLL);
      if (!v23)
      {
        goto LABEL_465;
      }

      v75 = v23;
      LODWORD(v23) = *v24;
      v26 = v75;
      v74 = v23;
    }

    else
    {
      v26 = 0;
      v74 = 512;
      v75 = &word_1001787D0;
    }

    if (v23)
    {
      v326 = v18;
      *&__n[1] = 0;
      __n[0] = 0;
      v103 = ResourceRecordGetRDataBytesPointer(a3, v75, v74, __n, &__n[1]);
      if (*&__n[1])
      {
        goto LABEL_449;
      }

      v104 = v103;
      v333 = v16;
      if (__n[0] >= 0x1FFuLL)
      {
        v106 = __n[0] + 2;
        v206 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
        if (!v206)
        {
          goto LABEL_465;
        }

        v107 = v206;
        v105 = v206;
      }

      else
      {
        v105 = 0;
        v106 = 512;
        v107 = word_1001789D0;
      }

      v311 = v105;
      if (v10)
      {
        v207 = mDNSLogCategory_Default;
      }

      else
      {
        v207 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v207 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_429;
        }

        v208 = a4 != 0;
        v209 = *(v4 + 200);
        v210 = *(a3 + 2);
        v211 = __n[0];
        v212 = __n[0] + 2;
        if (v212 > v106)
        {
          v107 = 0;
          goto LABEL_416;
        }
      }

      else
      {
        if (v10)
        {
          v207 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v207 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_429;
        }

        v208 = a4 != 0;
        v209 = *(v4 + 200);
        v210 = *(a3 + 2);
        v211 = __n[0];
        v212 = __n[0] + 2;
        if (v212 > v106)
        {
          v107 = 0;
LABEL_416:
          LODWORD(__tp.tv_sec) = 67111427;
          HIDWORD(__tp.tv_sec) = v209;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v208;
          HIWORD(__tp.tv_nsec) = 1024;
          v336 = 0;
          v337 = 1024;
          v338 = v333;
          v339 = 1024;
          *v340 = v326;
          *&v340[4] = 1026;
          *&v340[6] = v21;
          *&v340[10] = 1024;
          *&v340[12] = v210;
          *&v340[16] = 2160;
          *&v340[18] = 1752392040;
          *&v340[26] = 1040;
          *&v340[28] = v212;
          *&v340[32] = 2101;
          *&v340[34] = v107;
          v226 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          v227 = v207;
          v230 = 70;
          goto LABEL_428;
        }
      }

      *v107 = __rev16(v210);
      v254 = v104;
      v255 = v208;
      memcpy(v107 + 1, v254, v211);
      v208 = v255;
      goto LABEL_416;
    }

    if (v10)
    {
      v59 = mDNSLogCategory_Default;
    }

    else
    {
      v59 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v59 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }
    }

    else
    {
      if (v10)
      {
        v59 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v59 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }
    }

    v181 = *(v4 + 200);
    v182 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110656;
    HIDWORD(__tp.tv_sec) = v181;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = a4 != 0;
    HIWORD(__tp.tv_nsec) = 1024;
    v336 = 0;
    v337 = 1024;
    v338 = v16;
    v339 = 1024;
    *v340 = v18;
    *&v340[4] = 1026;
    *&v340[6] = v21;
    *&v340[10] = 1024;
    *&v340[12] = v182;
    v63 = "[R%u->mDNS] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_302:
    v120 = v59;
    v121 = 44;
    goto LABEL_435;
  }

  if (v23 < 0x201)
  {
    v26 = 0;
    v27 = 512;
    v28 = &word_1001787D0;
    if (*(a3 + 6))
    {
      goto LABEL_20;
    }

    goto LABEL_102;
  }

  v84 = malloc_type_malloc(v23, 0x822ABD11uLL);
  if (!v84)
  {
    goto LABEL_465;
  }

  v28 = v84;
  v26 = v84;
  v27 = *v24;
  if (!*v24)
  {
LABEL_102:
    if (v10)
    {
      v85 = mDNSLogCategory_Default;
    }

    else
    {
      v85 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v85 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }
    }

    else
    {
      if (v10)
      {
        v85 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v85 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_449;
      }
    }

    v117 = *(v4 + 200);
    v118 = bswap32(*(a2 + 340)) >> 16;
    v119 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110912;
    HIDWORD(__tp.tv_sec) = v117;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = v118;
    HIWORD(__tp.tv_nsec) = 1024;
    v336 = a4 != 0;
    v337 = 1024;
    v338 = 0;
    v339 = 1024;
    *v340 = v16;
    *&v340[4] = 1024;
    *&v340[6] = v18;
    *&v340[10] = 1026;
    *&v340[12] = v21;
    *&v340[16] = 1024;
    *&v340[18] = v119;
    v63 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
    v120 = v85;
    v121 = 50;
    goto LABEL_435;
  }

LABEL_20:
  v320 = v18;
  *&__n[1] = 0;
  __n[0] = 0;
  v29 = ResourceRecordGetRDataBytesPointer(a3, v28, v27, __n, &__n[1]);
  if (!*&__n[1])
  {
    v30 = v29;
    v327 = v16;
    if (__n[0] < 0x1FFuLL)
    {
      v31 = 512;
      v303 = word_1001789D0;
      v311 = 0;
LABEL_272:
      if (v10)
      {
        v157 = mDNSLogCategory_Default;
      }

      else
      {
        v157 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v157 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_429;
        }

        v172 = a4 != 0;
        v173 = *(v4 + 200);
        v174 = bswap32(*(a2 + 340)) >> 16;
        v175 = *(a3 + 2);
        v176 = __n[0];
        v177 = __n[0] + 2;
        if (v177 <= v31)
        {
          v178 = v303;
          *v303 = __rev16(v175);
          v224 = v30;
          v225 = v172;
          memcpy(v303 + 1, v224, v176);
          v172 = v225;
        }

        else
        {
          v178 = 0;
        }

        LODWORD(__tp.tv_sec) = 67111683;
        HIDWORD(__tp.tv_sec) = v173;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v174;
        HIWORD(__tp.tv_nsec) = 1024;
        v336 = v172;
        v337 = 1024;
        v338 = 0;
        v339 = 1024;
        *v340 = v327;
        *&v340[4] = 1024;
        *&v340[6] = v320;
        *&v340[10] = 1026;
        *&v340[12] = v21;
        *&v340[16] = 1024;
        *&v340[18] = v175;
        *&v340[22] = 2160;
        *&v340[24] = 1752392040;
        *&v340[32] = 1040;
        *&v340[34] = v177;
        *&v340[38] = 2101;
        *&v340[40] = v178;
        v226 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v227 = v157;
        goto LABEL_392;
      }

      if (v10)
      {
        v158 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v158 = mDNSLogCategory_mDNS;
      }

      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        v159 = a4 != 0;
        v160 = *(v4 + 200);
        v161 = bswap32(*(a2 + 340)) >> 16;
        v162 = *(a3 + 2);
        v163 = __n[0];
        v164 = __n[0] + 2;
        if (v164 <= v31)
        {
          v165 = v303;
          *v303 = __rev16(v162);
          v228 = v30;
          v229 = v159;
          memcpy(v303 + 1, v228, v163);
          v159 = v229;
        }

        else
        {
          v165 = 0;
        }

        LODWORD(__tp.tv_sec) = 67111683;
        HIDWORD(__tp.tv_sec) = v160;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v161;
        HIWORD(__tp.tv_nsec) = 1024;
        v336 = v159;
        v337 = 1024;
        v338 = 0;
        v339 = 1024;
        *v340 = v327;
        *&v340[4] = 1024;
        *&v340[6] = v320;
        *&v340[10] = 1026;
        *&v340[12] = v21;
        *&v340[16] = 1024;
        *&v340[18] = v162;
        *&v340[22] = 2160;
        *&v340[24] = 1752392040;
        *&v340[32] = 1040;
        *&v340[34] = v164;
        *&v340[38] = 2101;
        *&v340[40] = v165;
        v226 = "[R%u->Q%u] DNSServiceBrowse result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v227 = v158;
LABEL_392:
        v230 = 76;
LABEL_428:
        _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, v226, &__tp, v230);
      }

LABEL_429:
      v233 = v311;
      if (!v311)
      {
        goto LABEL_449;
      }

      goto LABEL_448;
    }

    v31 = __n[0] + 2;
    v156 = malloc_type_malloc(__n[0] + 2, 0x822ABD11uLL);
    if (v156)
    {
      v303 = v156;
      v311 = v156;
      goto LABEL_272;
    }

LABEL_465:
    __break(1u);
    return;
  }

LABEL_449:
  if (v26)
  {
    free(v26);
  }

  append_reply(v4, *&__n[3]);
}

void connection_termination(uint64_t a1)
{
  v2 = mDNSLogCategory_Default;
  v3 = &unk_100178000;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v2 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    v6 = *(a1 + 200);
    v7 = *(a1 + 188);
    LODWORD(__n_6.tv_sec) = 67109634;
    HIDWORD(__n_6.tv_sec) = v6;
    LOWORD(__n_6.tv_nsec) = 1024;
    *(&__n_6.tv_nsec + 2) = v7;
    HIWORD(__n_6.tv_nsec) = 2082;
    *v106 = a1 + 256;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceCreateConnection STOP PID[%d](%{public}s)", &__n_6, 0x18u);
  }

LABEL_10:
  v8 = all_requests;
  if (all_requests)
  {
    v9 = &all_requests;
    do
    {
      if (*(v8 + 24) == a1)
      {
        __n_6.tv_sec = v8;
        if (v8 == a1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "connection_termination ERROR (*req)->primary == *req for %p %d", v8, *(v8 + 184));
        }

        if (*(v8 + 96))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "connection_termination ERROR How can subordinate req %p %d have replies queued?", v8, *(v8 + 184));
        }

        abort_request(v8);
        *v9 = *(v8 + 16);
        request_state_forget(&__n_6);
      }

      else
      {
        v9 = (v8 + 16);
      }

      v8 = *v9;
    }

    while (*v9);
  }

  v10 = *(a1 + 176);
  if (v10)
  {
    v11 = &unk_100164000;
    while (1)
    {
      v12 = *(v10 + 3);
      v13 = mDNS_DomainNameFNV1aHash(*(v12 + 40));
      if (_shouldLogFullRequestInfo(v10 + 12, v10 + 13))
      {
        v14 = *(v12 + 20);
        if (v14 < 0x201)
        {
          v15 = 0;
          v16 = 512;
          v17 = &word_1001787D0;
          if (*(v12 + 20))
          {
            goto LABEL_25;
          }

LABEL_37:
          v25 = mDNSLogCategory_mDNS;
          if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_mDNS != v3[435])
          {
            v26 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(v12 + 40);
              v101 = v13;
              if (v27)
              {
                v28 = *(v12 + 40);
                while (1)
                {
                  if (!v28 || (v29 = *v28, v29 > 0x3F))
                  {
LABEL_46:
                    v30 = 257;
                    goto LABEL_85;
                  }

                  if (!*v28)
                  {
                    break;
                  }

                  v28 += v29 + 1;
                  if (&v28[-v27] >= 256)
                  {
                    goto LABEL_46;
                  }
                }

                v30 = (v28 - v27 + 1);
LABEL_85:
                v99 = v30;
              }

              else
              {
                v99 = 0;
              }

              v57 = *(a1 + 200);
              v58 = v10[14];
              v59 = *(a1 + 252);
              v60 = *(a1 + 188);
              __n_6.tv_sec = 0;
              __n_6.tv_nsec = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
              v61 = LODWORD(__n_6.tv_sec) - v10[12];
              v62 = *(v12 + 12);
              LODWORD(__n_6.tv_sec) = 67111683;
              HIDWORD(__n_6.tv_sec) = v57;
              LOWORD(__n_6.tv_nsec) = 1024;
              *(&__n_6.tv_nsec + 2) = v58;
              HIWORD(__n_6.tv_nsec) = 2160;
              *v106 = 1752392040;
              *&v106[8] = 1040;
              v107 = v99;
              v108 = 2101;
              v109 = v27;
              v110 = 1024;
              v111 = v101;
              v112 = 1024;
              v113 = v59;
              v114 = 2082;
              v115 = a1 + 256;
              v116 = 1024;
              v117 = v60;
              v118 = 1024;
              v119 = v61;
              v120 = 1024;
              v121 = v62;
              v56 = v26;
              goto LABEL_87;
            }

LABEL_102:
            if (v15)
            {
              free(v15);
            }

            goto LABEL_104;
          }

          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_102;
          }

          v35 = *(v12 + 40);
          v102 = v13;
          if (v35)
          {
            v36 = *(v12 + 40);
            while (1)
            {
              if (!v36 || (v37 = *v36, v37 > 0x3F))
              {
LABEL_56:
                v38 = 257;
                goto LABEL_82;
              }

              if (!*v36)
              {
                break;
              }

              v36 += v37 + 1;
              if (&v36[-v35] >= 256)
              {
                goto LABEL_56;
              }
            }

            v38 = (v36 - v35 + 1);
LABEL_82:
            v98 = v38;
          }

          else
          {
            v98 = 0;
          }

          v50 = *(a1 + 200);
          v51 = v10[14];
          v52 = *(a1 + 252);
          v53 = *(a1 + 188);
          __n_6.tv_sec = 0;
          __n_6.tv_nsec = 0;
          clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
          v54 = LODWORD(__n_6.tv_sec) - v10[12];
          v55 = *(v12 + 12);
          LODWORD(__n_6.tv_sec) = 67111683;
          HIDWORD(__n_6.tv_sec) = v50;
          LOWORD(__n_6.tv_nsec) = 1024;
          *(&__n_6.tv_nsec + 2) = v51;
          HIWORD(__n_6.tv_nsec) = 2160;
          *v106 = 1752392040;
          *&v106[8] = 1040;
          v107 = v98;
          v108 = 2101;
          v109 = v35;
          v110 = 1024;
          v111 = v102;
          v112 = 1024;
          v113 = v52;
          v114 = 2082;
          v115 = a1 + 256;
          v116 = 1024;
          v117 = v53;
          v118 = 1024;
          v119 = v54;
          v120 = 1024;
          v121 = v55;
          v56 = v25;
LABEL_87:
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord STOP -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), index: %d, client: %{public}s(pid: %d), duration: %{mdns:time_duration}utype: %{mdns:rrtype}d, rdata: <none>", &__n_6, 0x50u);
          v3 = &unk_100178000;
LABEL_101:
          v11 = &unk_100164000;
          goto LABEL_102;
        }

        v24 = malloc_type_malloc(v14, 0x4574576EuLL);
        if (!v24)
        {
          goto LABEL_117;
        }

        v15 = v24;
        v16 = *(v12 + 20);
        v17 = v24;
        if (!*(v12 + 20))
        {
          goto LABEL_37;
        }

LABEL_25:
        __n_2 = 0;
        __n = 0;
        RDataBytesPointer = ResourceRecordGetRDataBytesPointer(v12 + 8, v17, v16, &__n, &__n_2);
        if (__n_2)
        {
          goto LABEL_101;
        }

        v19 = RDataBytesPointer;
        v100 = v13;
        if (__n >= 0x1FFuLL)
        {
          v21 = __n + 2;
          v39 = malloc_type_malloc(__n + 2, 0x4574576EuLL);
          if (!v39)
          {
LABEL_117:
            __break(1u);
          }

          v20 = v39;
          v97 = v39;
        }

        else
        {
          v20 = 0;
          v21 = 512;
          v97 = word_1001789D0;
        }

        v40 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == v3[435])
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *(v12 + 40);
            __src = v19;
            if (v46)
            {
              v47 = *(v12 + 40);
              while (1)
              {
                if (!v47 || (v48 = *v47, v48 > 0x3F))
                {
LABEL_76:
                  v49 = 257;
                  goto LABEL_89;
                }

                if (!*v47)
                {
                  break;
                }

                v47 += v48 + 1;
                if (&v47[-v46] >= 256)
                {
                  goto LABEL_76;
                }
              }

              v49 = (v47 - v46 + 1);
LABEL_89:
              loga = v49;
            }

            else
            {
              loga = 0;
            }

            v87 = *(a1 + 200);
            v89 = v10[14];
            v91 = *(a1 + 252);
            v94 = *(a1 + 188);
            __n_6.tv_sec = 0;
            __n_6.tv_nsec = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
            v63 = 0;
            tv_sec = __n_6.tv_sec;
            v65 = v10[12];
            v66 = *(v12 + 12);
            v67 = __n;
            v68 = __n + 2;
            if (v68 <= v21)
            {
              *v97 = __rev16(v66);
              v85 = v66;
              memcpy(v97 + 1, __src, v67);
              v66 = v85;
              v63 = v97;
            }

            LODWORD(__n_6.tv_sec) = 67112451;
            HIDWORD(__n_6.tv_sec) = v87;
            LOWORD(__n_6.tv_nsec) = 1024;
            *(&__n_6.tv_nsec + 2) = v89;
            HIWORD(__n_6.tv_nsec) = 2160;
            *v106 = 1752392040;
            *&v106[8] = 1040;
            v107 = loga;
            v108 = 2101;
            v109 = v46;
            v110 = 1024;
            v111 = v100;
            v112 = 1024;
            v113 = v91;
            v114 = 2082;
            v115 = a1 + 256;
            v116 = 1024;
            v117 = v94;
            v118 = 1024;
            v119 = tv_sec - v65;
            v120 = 1024;
            v121 = v66;
            v122 = 2160;
            v123 = 1752392040;
            v124 = 1040;
            v125 = v68;
            v126 = 2101;
            v127 = v63;
            v69 = v40;
LABEL_98:
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord STOP -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), index: %d, client: %{public}s(pid: %d), duration: %{mdns:time_duration}utype: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__n_6, 0x6Au);
            v3 = &unk_100178000;
          }
        }

        else
        {
          v41 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(v12 + 40);
            log = v41;
            if (v42)
            {
              v43 = *(v12 + 40);
              while (1)
              {
                if (!v43 || (v44 = *v43, v44 > 0x3F))
                {
LABEL_68:
                  v45 = 257;
                  goto LABEL_94;
                }

                if (!*v43)
                {
                  break;
                }

                v43 += v44 + 1;
                if (&v43[-v42] >= 256)
                {
                  goto LABEL_68;
                }
              }

              v45 = (v43 - v42 + 1);
LABEL_94:
              v93 = v45;
            }

            else
            {
              v93 = 0;
            }

            v86 = *(a1 + 200);
            v88 = v10[14];
            v90 = *(a1 + 252);
            v92 = *(a1 + 188);
            __n_6.tv_sec = 0;
            __n_6.tv_nsec = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
            v70 = 0;
            v71 = __n_6.tv_sec;
            v72 = v10[12];
            v73 = *(v12 + 12);
            v74 = __n;
            v75 = __n + 2;
            if (v75 <= v21)
            {
              *v97 = __rev16(v73);
              v76 = v19;
              v77 = v71;
              memcpy(v97 + 1, v76, v74);
              v71 = v77;
              v70 = v97;
            }

            LODWORD(__n_6.tv_sec) = 67112451;
            HIDWORD(__n_6.tv_sec) = v86;
            LOWORD(__n_6.tv_nsec) = 1024;
            *(&__n_6.tv_nsec + 2) = v88;
            HIWORD(__n_6.tv_nsec) = 2160;
            *v106 = 1752392040;
            *&v106[8] = 1040;
            v107 = v93;
            v108 = 2101;
            v109 = v42;
            v110 = 1024;
            v111 = v100;
            v112 = 1024;
            v113 = v90;
            v114 = 2082;
            v115 = a1 + 256;
            v116 = 1024;
            v117 = v92;
            v118 = 1024;
            v119 = v71 - v72;
            v120 = 1024;
            v121 = v73;
            v122 = 2160;
            v123 = 1752392040;
            v124 = 1040;
            v125 = v75;
            v126 = 2101;
            v127 = v70;
            v69 = log;
            goto LABEL_98;
          }
        }

        if (v20)
        {
          free(v20);
        }

        goto LABEL_101;
      }

      v22 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_mDNS != v3[435])
      {
        break;
      }

      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

LABEL_104:
      *(a1 + 176) = *(*(a1 + 176) + 8);
      v78 = *(v10 + 3);
      v78[14] = 0;
      if (*(v10 + 60))
      {
        *(v10 + 60) = 0;
        internal_stop_advertising_service((v78 + 1), *(a1 + 248), *(a1 + 188));
        v78 = *(v10 + 3);
      }

      if (v11[635])
      {
        LogMcastService(v78, a1, 0);
        v78 = *(v10 + 3);
      }

      v79 = *v10;
      if (*v10)
      {
        v80 = *(a1 + 252);
        if (v80)
        {
          v81 = AWDLInterfaceID == v80 || WiFiAwareInterfaceID == v80;
        }

        else
        {
          v81 = (*(a1 + 250) >> 4) & 1;
        }

        v82 = v78[5];
        bzero(&__n_6, 0x3F1uLL);
        service_type_from_domain_name = _mdns_get_service_type_from_domain_name(v82, &__n_6);
        _mdns_powerlog_bonjour_event(0xCu, v81, (a1 + 256), service_type_from_domain_name, v79);
        v78 = *(v10 + 3);
      }

      mDNS_Deregister(mDNSStorage, v78);
      free(v10);
      v10 = *(a1 + 176);
      if (!v10)
      {
        return;
      }
    }

    v22 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_104;
    }

LABEL_48:
    v32 = *(a1 + 200);
    v33 = v10[14];
    __n_6.tv_sec = 0;
    __n_6.tv_nsec = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, &__n_6);
    v34 = LODWORD(__n_6.tv_sec) - v10[12];
    __n_6.tv_sec = __PAIR64__(v32, 67109888);
    LOWORD(__n_6.tv_nsec) = 1024;
    *(&__n_6.tv_nsec + 2) = v33;
    HIWORD(__n_6.tv_nsec) = 1024;
    *v106 = v13;
    *&v106[4] = 1024;
    *&v106[6] = v34;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord STOP -- name hash: %x, duration: %{mdns:time_duration}u", &__n_6, 0x1Au);
    goto LABEL_104;
  }
}

void mDNS_AddSearchDomain(_BYTE *a1, uint64_t a2)
{
  v4 = &SearchList;
  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      break;
    }

    if (*(v5 + 272) == a2)
    {
      if (SameDomainNameBytes((v5 + 8), a1))
      {
        v6 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          v7 = a1;
          while (1)
          {
            if (!v7 || (v8 = *v7, v8 > 0x3F))
            {
LABEL_13:
              v9 = 257;
              goto LABEL_15;
            }

            if (!*v7)
            {
              break;
            }

            v7 += v8 + 1;
            if (v7 - a1 >= 256)
            {
              goto LABEL_13;
            }
          }

          v9 = (v7 - a1 + 1);
LABEL_15:
          v20 = 141558531;
          v21 = 1752392040;
          v22 = 1040;
          v23 = v9;
          v24 = 2101;
          v25 = a1;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "mDNS_AddSearchDomain: domain already in list -- search domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v20, 0x1Cu);
        }

        v5 = *v4;
        v10 = *(*v4 + 264);
        if (v10)
        {
          *(v5 + 264) = v10 & 0xFFFFFFFE;
        }

        *v4 = *v5;
        *v5 = 0;
        goto LABEL_19;
      }

      v4 = *v4;
    }

    else
    {
      v4 = *v4;
    }
  }

  do
  {
LABEL_19:
    v11 = v4;
    v4 = *v4;
  }

  while (v4);
  if (v5)
  {
    *v11 = v5;
  }

  else
  {
    v12 = malloc_type_calloc(1uLL, 0xEC0uLL, 0x9EF88D38uLL);
    if (v12)
    {
      *v11 = v12;
      v13 = a1;
      do
      {
        if (!v13)
        {
          break;
        }

        v14 = *v13;
        if (v14 > 0x3F)
        {
          break;
        }

        if (!*v13)
        {
          v15 = v13 - a1 + 1;
          if (v15 <= 0x100u)
          {
            memcpy(v12 + 8, a1, v15);
            goto LABEL_32;
          }

          break;
        }

        v13 += v14 + 1;
      }

      while (v13 - a1 <= 255);
      v12[8] = 0;
LABEL_32:
      **v11 = 0;
      *(*v11 + 272) = a2;
      v16 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1;
        while (1)
        {
          if (!v17 || (v18 = *v17, v18 > 0x3F))
          {
LABEL_38:
            v19 = 257;
            goto LABEL_40;
          }

          if (!*v17)
          {
            break;
          }

          v17 += v18 + 1;
          if (v17 - a1 >= 256)
          {
            goto LABEL_38;
          }
        }

        v19 = (v17 - a1 + 1);
LABEL_40:
        v20 = 141558787;
        v21 = 1752392040;
        v22 = 1040;
        v23 = v19;
        v24 = 2101;
        v25 = a1;
        v26 = 2048;
        v27 = a2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mDNS_AddSearchDomain: new search domain added -- search domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, InterfaceID %p", &v20, 0x26u);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void AnswerLocalQuestionWithLocalAuthRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 208);
  if (!v5)
  {
    v15 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v16 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    else
    {
      v15 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    v21 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v21);
    v27 = 136446210;
    v28 = v21;
    v22 = "AnswerLocalQuestionWithLocalAuthRecord: ERROR!! CurrentQuestion NULL while answering with %{public}s";
    v23 = v15;
    v24 = 12;
LABEL_46:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &v27, v24);
    return;
  }

  v7 = FollowCNAME(*(a1 + 208), (a2 + 8), a3);
  v8 = *(a2 + 8);
  if ((v8 & 0x3C) == 0)
  {
    v17 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v18 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (a3)
      {
        v19 = "Add";
      }

      else
      {
        v19 = "Rmv";
      }
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (a3)
      {
        v19 = "Add";
      }

      else
      {
        v19 = "Rmv";
      }
    }

    v26 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v26);
    v27 = 136446979;
    v28 = v19;
    v29 = 1024;
    v30 = v8;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2085;
    v34 = v26;
    v22 = "AnswerLocalQuestionWithLocalAuthRecord: *NOT* delivering %{public}s event for local record type %X %{sensitive, mask.hash}s";
    v23 = v17;
    v24 = 38;
    goto LABEL_46;
  }

  v9 = v7;
  if (a3)
  {
    *(a2 + 193) = 1;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 52) + 1;
  *(a1 + 52) = v11;
  mDNS_VerifyLockState("Drop Lock", 0, v10, v11, "AnswerLocalQuestionWithLocalAuthRecord", 905);
  v12 = *(v5 + 152);
  if (!v12)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  *(v5 + 228) += v13;
  if (*(a2 + 172) != 4 || (*(a2 + 8) & 0x32) == 0 || (v14 = *(a2 + 12), v14 > 0x1C) || ((1 << v14) & 0x10001022) == 0)
  {
    v12(a1, v5, a2 + 8, a3);
LABEL_40:
    mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "AnswerLocalQuestionWithLocalAuthRecord", 930);
    --*(a1 + 52);
    return;
  }

  if (!v9 || *(v5 + 635))
  {
    *(v5 + 212) = 0;
    *(v5 + 355) += v13;
    v12(a1, v5, a2 + 8, a3);
  }

  mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "AnswerLocalQuestionWithLocalAuthRecord", 918);
  --*(a1 + 52);
  if (v9 && *(a1 + 208) == v5)
  {

    AnswerQuestionByFollowingCNAME(a1, v5, a2 + 8);
  }
}

void enum_result_callback(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 4) != 12)
  {
    return;
  }

  v7 = *(a2 + 176);
  bzero(__s, 0x3F1uLL);
  v8 = *(v7 + 120) + 704;
  if (!a4 && v8 == a2)
  {
    return;
  }

  ConvertDomainNameToCString_withescape((*(a3 + 40) + 4), __s);
  v9 = strlen(__s);
  reply = create_reply(0x40, v9 + 13, v7);
  v11 = reply;
  if (v8 == a2)
  {
    v12 = 100663296;
  }

  else
  {
    v12 = 0x2000000;
  }

  *(reply + 6) = 0;
  if (!a4)
  {
    v12 = 0;
  }

  *(reply + 11) = v12;
  v13 = strlen(__s);
  memcpy(v11 + 56, __s, v13 + 1);
  v14 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  v15 = *(v7 + 200);
  v16 = bswap32(*(a2 + 340));
  v17 = *(a2 + 376) + 1;
  v19[0] = 67110915;
  v19[1] = v15;
  v20 = 1024;
  v21 = HIWORD(v16);
  v22 = 2160;
  v23 = 1752392040;
  v24 = 1040;
  v25 = v17;
  v26 = 2101;
  v27 = a2 + 376;
  v28 = 1024;
  v29 = a4 != 0;
  v30 = 2160;
  v31 = 1752392040;
  v32 = 2085;
  v33 = __s;
  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[R%u->Q%d] DNSServiceEnumerateDomains(%{sensitive, mask.hash, mdnsresponder:domain_label}.*P) RESULT %{mdns:addrmv_upper}d: %{sensitive, mask.hash}s", v19, 0x42u);
LABEL_15:
  if (*(v7 + 292))
  {
    free(v11);
  }

  else
  {
    v18 = *(v7 + 24);
    if (!v18)
    {
      v18 = v7;
    }

    *v11 = 0;
    **(v18 + 104) = v11;
    *(v18 + 104) = v11;
  }
}

void SendDelayedUnicastResponse(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = a1 + 28672;
  v60 = 0;
  v6 = (a1 + 12656);
  do
  {
    v6 = *v6;
  }

  while (v6 && v6[444] != a3);
  v7 = *(a1 + 12616);
  if (v7)
  {
    v8 = &v60;
    while (1)
    {
      v9 = *(v7 + 208);
      if (v9 == -1 || *(v7 + 232) == -1 || *(v7 + 236) == -1 && *(v7 + 240) == -1 && *(v7 + 244) == -1 && *(v7 + 248) == -1)
      {
        *(v7 + 195) = 0;
      }

      v10 = v9 != a3 || *(v7 + 195) == 0;
      if (v10)
      {
        goto LABEL_30;
      }

      if (*a2 == 6)
      {
        if (*(v7 + 236) == a2[1] && *(v7 + 240) == a2[2] && *(v7 + 244) == a2[3])
        {
          v11 = *(v7 + 248);
          v12 = a2[4];
LABEL_20:
          if (v11 == v12)
          {
            *(v7 + 208) = 0;
            *(v7 + 195) = 0;
            *(v7 + 232) = 0;
            *(v7 + 240) = 0;
            *(v7 + 248) = 0;
            if ((!v6 || mDNSPlatformValidRecordForInterface(v7, v6[444])) && !*(v7 + 256) && v8 != (v7 + 256))
            {
              *(v7 + 264) = -1;
              *v8 = v7;
              v8 = (v7 + 256);
            }
          }
        }
      }

      else if (*a2 == 4)
      {
        v11 = *(v7 + 232);
        v12 = a2[1];
        goto LABEL_20;
      }

LABEL_30:
      v7 = *v7;
      if (!v7)
      {
        v13 = v60;
        goto LABEL_33;
      }
    }
  }

  v13 = 0;
  v8 = &v60;
LABEL_33:
  v59 = v8;
  v56 = a3;
  v14 = a3;
  v15 = a1;
  AddAdditionalsToResponseList(a1, v13, &v59, v14);
  v16 = v60;
  if (!v60)
  {
    return;
  }

  v17 = a1 + 28972;
  do
  {
    v18 = 0;
    v58 = 0;
    *(v5 + 288) = 8650752;
    v19 = (a1 + 28972);
    *(v5 + 292) = 0;
    do
    {
      if (!*(v16 + 264))
      {
        goto LABEL_66;
      }

      if ((*(v16 + 8) & 0x32) != 0)
      {
        *(v16 + 14) |= 0x8000u;
      }

      v20 = UnsafeBufferPointer(*(v15 + 12616), v16, &v58);
      if (v20)
      {
        v21 = v18 + 1;
      }

      else
      {
        v21 = v18;
      }

      if (*(v5 + 294) || *(v5 + 296))
      {
        v22 = 1440;
      }

      else
      {
        v22 = 1440;
        if (!*(v5 + 298))
        {
          v22 = 8940;
        }
      }

      v23 = v17 + v22;
      v24 = v21;
      v10 = v21 == 0;
      v25 = -11;
      if (v10)
      {
        v25 = 0;
      }

      v26 = PutResourceRecordTTLWithLimit(v5 + 288, v19, (v5 + 294), v16 + 8, *(v16 + 16), v23 - 14 * v24 + v25);
      v27 = v26;
      if (!v20)
      {
        *(v16 + 14) &= ~0x8000u;
        if (v26)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (!v26)
      {
        *(v16 + 14) &= ~0x8000u;
LABEL_54:
        if (!*(v5 + 294))
        {
          v27 = v19;
          goto LABEL_56;
        }

        v16 = v60;
        if (!v60)
        {
          v32 = v58;
          goto LABEL_93;
        }

        while (1)
        {
LABEL_66:
          if (*(v16 + 264))
          {
            v27 = v19;
            goto LABEL_92;
          }

          if ((*(v16 + 8) & 0x32) != 0)
          {
            *(v16 + 14) |= 0x8000u;
          }

          v34 = UnsafeBufferPointer(*(v15 + 12616), v16, &v58);
          if (v34)
          {
            v35 = v18 + 1;
          }

          else
          {
            v35 = v18;
          }

          if (*(v5 + 294) || *(v5 + 296))
          {
            v33 = 1440;
          }

          else
          {
            v33 = 1440;
            if (!*(v5 + 298))
            {
              v33 = 8940;
            }
          }

          v36 = v17 + v33;
          v37 = v35;
          v10 = v35 == 0;
          v38 = -11;
          if (v10)
          {
            v38 = 0;
          }

          v39 = PutResourceRecordTTLWithLimit(v5 + 288, v19, (v5 + 298), v16 + 8, *(v16 + 16), v36 - 14 * v37 + v38);
          v27 = v39;
          if (v34)
          {
            if (!v39)
            {
              *(v16 + 14) &= ~0x8000u;
LABEL_86:
              if ((*(v16 + 8) & 0x32) != 0)
              {
                *(v16 + 208) = -1;
              }

              v27 = v19;
              goto LABEL_89;
            }

            v40 = *(v16 + 40);
            v41 = *(v5 + 294);
            v42 = *(v5 + 298);
            v43 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
            if (!v43)
            {
              goto LABEL_124;
            }

            ++v18;
            *(v34 + 4) = v41 + v42 - 1;
            v43[1] = v34;
            v43[2] = v40;
            v15 = a1;
            *v43 = v58;
            v58 = v43;
            *(v16 + 14) &= ~0x8000u;
          }

          else
          {
            *(v16 + 14) &= ~0x8000u;
            if (!v39)
            {
              goto LABEL_86;
            }
          }

          if (!*(v5 + 294))
          {
            v19 = v27;
            goto LABEL_86;
          }

          *(v16 + 192) = 1;
LABEL_89:
          v60 = *(v16 + 256);
          v44 = v60;
          *(v16 + 264) = 0;
          *(v16 + 272) = 0;
          *(v16 + 256) = 0;
          v19 = v27;
          v16 = v44;
          if (!v44)
          {
            goto LABEL_92;
          }
        }
      }

      v28 = *(v16 + 40);
      v29 = *(v5 + 294);
      v30 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
      if (!v30)
      {
LABEL_124:
        __break(1u);
      }

      ++v18;
      *(v20 + 4) = v29 - 1;
      v30[1] = v20;
      v30[2] = v28;
      *v30 = v58;
      v58 = v30;
      *(v16 + 14) &= ~0x8000u;
LABEL_56:
      v60 = *(v16 + 256);
      v31 = v60;
      *(v16 + 264) = 0;
      *(v16 + 272) = 0;
      *(v16 + 256) = 0;
      *(v16 + 192) = 1;
      v16 = v31;
      v19 = v27;
    }

    while (v31);
LABEL_92:
    v32 = v58;
    v19 = v27;
    if (*(v5 + 294))
    {
LABEL_93:
      if (v32)
      {
        bzero(v71, 0x498uLL);
        v72[0] = 32;
        v73 = 41;
        v107 = 264;
        v77 = v106;
        v78 = &v107;
        v86 = 0;
        v87 = 0;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0;
        v88 = v106;
        v102 = 0;
        v104 = 0;
        v105 = 0;
        v103 = 0;
        v106[0] = 0;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        memset(v101, 0, sizeof(v101));
        v74 = 1440;
        v75 = 4500;
        v76 = 1572888;
        v45 = v32[1];
        v110 = v45[1];
        v111 = *(v45 + 4);
        v109 = *v45;
        v108 = 720362;
        v58 = *v32;
        free(v32);
        if (*(v5 + 294) || *(v5 + 296))
        {
          v46 = 1440;
        }

        else
        {
          v46 = 1440;
          if (!*(v5 + 298))
          {
            v46 = 8940;
          }
        }

        v47 = PutResourceRecordTTLWithLimit(v5 + 288, v19, (v5 + 298), v72, v75, v17 + v46);
        if (v47 && v58)
        {
          if (*(v5 + 294) || *(v5 + 296))
          {
            v48 = 1440;
          }

          else
          {
            v48 = 1440;
            if (!*(v5 + 298))
            {
              v48 = 8940;
            }
          }

          v47 = AddTSRROptsToMessage(&v58, v5 + 288, v19 + 9, v47, v17 + v48);
        }

        if (!v47)
        {
          v49 = mDNSLogCategory_mDNS;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v49 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
            {
LABEL_109:
              v50 = *(v5 + 292);
              v51 = *(v5 + 294);
              v52 = *(v5 + 296);
              v53 = *(v5 + 298);
              GetRRDisplayString_rdb(v72, v78 + 2, (a1 + 47032));
              *buf = 67110146;
              v62 = v50;
              v63 = 1024;
              v64 = v51;
              v65 = 1024;
              v66 = v52;
              v15 = a1;
              v67 = 1024;
              v68 = v53;
              v69 = 2080;
              v70 = a1 + 47032;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "SendDelayedUnicastResponse: How did we fail to have space for OPT record (%d/%d/%d/%d) %s", buf, 0x24u);
            }
          }

          v47 = v19;
        }

        v19 = v47;
      }

      mDNSSendDNSMessage(v15, (v5 + 288), v19, v56, 0, 0, a2, 0xE914u, 0, 0);
      v32 = v58;
    }

    if (v32)
    {
      do
      {
        v54 = *v32;
        free(v32);
        v32 = v54;
      }

      while (v54);
    }

    v16 = v60;
  }

  while (v60);
}

uint64_t mDNS_Reconfirm_internal(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  if (a3 <= 0x1388)
  {
    v5 = 5000;
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 0x10000000)
  {
    v6 = 0x10000000;
  }

  else
  {
    v6 = v5;
  }

  if (*(a2 + 109))
  {
    v7 = dword_10016D258 + 939524096;
  }

  else
  {
    v7 = *(a2 + 80) + 1000 * *(a2 + 16);
  }

  v8 = *(result + 64);
  if (v7 - v8 > ((1431655766 * (4 * v6)) >> 32))
  {
    v9 = *(result + 128);
    if (!v9)
    {
      do
      {
        v10 = arc4random() & 0x3FFFFFFF;
      }

      while (v10 > 0x38000000);
      v9 = v10 + 1;
      *(v4 + 128) = v10 + 1;
      v8 = *(v4 + 64);
    }

    v11 = v9 % (v6 / 3 + 1) + v6;
    *(a2 + 80) = -3 * v11 + v8;
    *(a2 + 16) = (4 * v11 + 999) / 0x3E8;

    return SetNextCacheCheckTimeForRecord(v4, a2);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_100162020 == -1)
  {
    if (qword_100162028)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100162028)
    {
      return _availability_version_check();
    }
  }

  if (qword_100162018 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10016200C > a3)
      {
        return 1;
      }

      if (dword_10016200C >= a3)
      {
        return dword_100162010 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v1 = qword_100162028;
  if (qword_100162028)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100162028 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_10016200C, &dword_100162010);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

void *_mdns_audit_token_copy_description(uint64_t a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(*(a1 + 16) + 8), a1) || (v6 = *(a1 + 40), *atoken.val = *(a1 + 24), *&atoken.val[4] = v6, v7 = audit_token_to_auid(&atoken), v8 = *(a1 + 40), *atoken.val = *(a1 + 24), *&atoken.val[4] = v8, v9 = audit_token_to_euid(&atoken), v10 = *(a1 + 40), *atoken.val = *(a1 + 24), *&atoken.val[4] = v10, v11 = audit_token_to_egid(&atoken), v12 = *(a1 + 40), *atoken.val = *(a1 + 24), *&atoken.val[4] = v12, v13 = audit_token_to_ruid(&atoken), v14 = *(a1 + 40), *atoken.val = *(a1 + 24), *&atoken.val[4] = v14, v15 = audit_token_to_rgid(&atoken), v16 = *(a1 + 40), *atoken.val = *(a1 + 24), *&atoken.val[4] = v16, v17 = audit_token_to_pid(&atoken), v18 = *(a1 + 40), *atoken.val = *(a1 + 24), *&atoken.val[4] = v18, v19 = audit_token_to_pidversion(&atoken), v20 = *(a1 + 40), *atoken.val = *(a1 + 24), *&atoken.val[4] = v20, v21 = audit_token_to_asid(&atoken), mdns_string_builder_append_formatted(v5, "audit user id: %u, effective user id: %u, effective group id: %u, real user id: %u, real group id: %u, pid: %d, pid version: %d, audit session id: %d", v7, v9, v11, v13, v15, v17, v19, v21)))
  {
    v22 = 0;
  }

  else
  {
    v22 = mdns_string_builder_copy_string(v5);
  }

  os_release(v5);
  return v22;
}

uint64_t mdns_audit_token_create(_OWORD *a1)
{
  v2 = _os_object_alloc();
  v3 = v2;
  if (v2)
  {
    v4 = &_mdns_audit_token_kind;
    *(v2 + 16) = &_mdns_audit_token_kind;
    do
    {
      v5 = v4[2];
      if (v5)
      {
        v5(v3);
      }

      v4 = *v4;
    }

    while (v4);
    v6 = a1[1];
    *(v3 + 24) = *a1;
    *(v3 + 40) = v6;
  }

  return v3;
}

void _mdns_message_builder_finalize(uint64_t a1)
{
  _mdns_message_builder_forget_questions_and_records(a1);
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }
}

void _mdns_message_builder_forget_questions_and_records(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    os_release(v2);
    *(a1 + 24) = 0;
  }

  *(a1 + 76) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }
}

void *_mdns_message_builder_copy_description(void *a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v6 = 0;
  }

  else
  {
    v6 = mdns_string_builder_copy_string(v5);
  }

  os_release(v5);
  return v6;
}

void _mdns_message_builder_write_record(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[3];
  v9 = *(a2 + 24);
  if (a3)
  {
    mdns_domain_name_append_to_copier(v9, a1, a3, a4);
    v10 = a1[2];
    v11 = a1[3];
  }

  else
  {
    v12 = *(v9 + 32);
    v10 = a1[2];
    if (a1[1] - v10 >= v12)
    {
      v13 = *(v9 + 32);
    }

    else
    {
      v13 = a1[1] - v10;
    }

    if (v13)
    {
      memcpy((*a1 + v10), *(v9 + 24), v13);
      v14 = a1[3];
      v10 = a1[2] + v13;
      a1[2] = v10;
    }

    else
    {
      v14 = v8;
    }

    v15 = __CFADD__(v14, v12);
    v16 = v14 + v12;
    if (v15)
    {
      v11 = -1;
    }

    else
    {
      v11 = v16;
    }

    a1[3] = v11;
  }

  v73 = 0;
  __src[0] = bswap32(*(a2 + 52)) >> 16;
  __src[1] = bswap32(*(a2 + 54)) >> 16;
  v72 = bswap32(*(a2 + 40));
  v17 = v11;
  v18 = a1[1] - v10;
  if (v18)
  {
    if (v18 >= 0xA)
    {
      v19 = 10;
    }

    else
    {
      v19 = a1[1] - v10;
    }

    memcpy((*a1 + v10), __src, v19);
    v17 = a1[3];
    a1[2] += v19;
  }

  if (v17 >= 0xFFFFFFFFFFFFFFF6)
  {
    v20 = -1;
  }

  else
  {
    v20 = v17 + 10;
  }

  a1[3] = v20;
  if (__CFADD__(a4, v20 - v8))
  {
    v21 = -1;
  }

  else
  {
    v21 = a4 + v20 - v8;
  }

  v22 = *(a2 + 32);
  v23 = *(a2 + 56);
  if (a3)
  {
    v24 = *(a2 + 52);
    switch(v24)
    {
      case 47:
        if (&v22[v23] <= v22)
        {
LABEL_50:
          v38 = 0;
        }

        else
        {
          v36 = *(a2 + 32);
          while (1)
          {
            v37 = *v36;
            if (!*v36)
            {
              break;
            }

            if (v37 > 0x3F)
            {
              goto LABEL_50;
            }

            v38 = 0;
            v39 = v37 + 1;
            v40 = &v36[v37 + 1];
            if (&v22[v23] - v36 >= v39)
            {
              v36 = v40;
              if (v40 - v22 < 256)
              {
                continue;
              }
            }

            goto LABEL_53;
          }

          v38 = v36 - v22 + 1;
        }

LABEL_53:
        if (v23 > (v38 - 1))
        {
          v41 = mdns_domain_name_create_with_labels(*(a2 + 32), 0);
          if (v41)
          {
            v42 = v41;
            mdns_domain_name_append_to_copier(v41, a1, a3, v21);
            v43 = v23 - v38;
            v44 = a1[2];
            if (a1[1] - v44 >= v43)
            {
              v45 = v23 - v38;
            }

            else
            {
              v45 = a1[1] - v44;
            }

            if (v45)
            {
              memcpy((*a1 + v44), &v22[v38], v45);
              a1[2] += v45;
            }

            v46 = a1[3];
            v15 = __CFADD__(v46, v43);
            v47 = v46 + v43;
            if (v15)
            {
              v47 = -1;
            }

            a1[3] = v47;
            goto LABEL_69;
          }
        }

        break;
      case 33:
        if (v23 >= 7)
        {
          v30 = v22 + 6;
          if (&v22[v23] > v22 + 6)
          {
            v31 = v22 + 6;
            while (1)
            {
              v32 = *v31;
              if (!*v31)
              {
                v33 = (v31 - v30 + 1);
                goto LABEL_71;
              }

              if (v32 > 0x3F)
              {
                break;
              }

              v33 = 0;
              v34 = v32 + 1;
              v35 = &v31[v32 + 1];
              if (&v22[v23] - v31 >= v34)
              {
                v31 = v35;
                if (v35 - v30 < 256)
                {
                  continue;
                }
              }

              goto LABEL_71;
            }

            v33 = 0;
LABEL_71:
            if (v23 - 6 == v33)
            {
              v49 = mdns_domain_name_create_with_labels(v30, 0);
              if (v49)
              {
                v42 = v49;
                v15 = __CFADD__(v21, 6);
                v21 += 6;
                if (!v15)
                {
                  v66 = a1[2];
                  v67 = a1[1] - v66;
                  if (v67)
                  {
                    if (v67 >= 6)
                    {
                      v68 = 6;
                    }

                    else
                    {
                      v68 = a1[1] - v66;
                    }

                    memcpy((*a1 + v66), v22, v68);
                    a1[2] += v68;
                  }

                  v69 = a1[3];
                  v15 = __CFADD__(v69, 6);
                  v70 = v69 + 6;
                  if (v15)
                  {
                    v70 = -1;
                  }

                  a1[3] = v70;
                  goto LABEL_68;
                }

                os_release(v49);
              }
            }
          }
        }

        break;
      case 12:
        if (&v22[v23] <= v22)
        {
LABEL_51:
          v27 = 0;
        }

        else
        {
          v25 = *(a2 + 32);
          while (1)
          {
            v26 = *v25;
            if (!*v25)
            {
              break;
            }

            if (v26 > 0x3F)
            {
              goto LABEL_51;
            }

            v27 = 0;
            v28 = v26 + 1;
            v29 = &v25[v26 + 1];
            if (&v22[v23] - v25 >= v28)
            {
              v25 = v29;
              if (v29 - v22 < 256)
              {
                continue;
              }
            }

            goto LABEL_65;
          }

          v27 = v25 - v22 + 1;
        }

LABEL_65:
        if (v23 == v27)
        {
          v48 = mdns_domain_name_create_with_labels(*(a2 + 32), 0);
          if (v48)
          {
            v42 = v48;
LABEL_68:
            mdns_domain_name_append_to_copier(v42, a1, a3, v21);
LABEL_69:
            os_release(v42);
            goto LABEL_85;
          }
        }

        break;
    }
  }

  v50 = a1[2];
  if (a1[1] - v50 >= v23)
  {
    v51 = v23;
  }

  else
  {
    v51 = a1[1] - v50;
  }

  if (v51)
  {
    memcpy((*a1 + v50), v22, v51);
    a1[2] += v51;
  }

  v52 = a1[3];
  v15 = __CFADD__(v52, v23);
  v53 = v52 + v23;
  if (v15)
  {
    v53 = -1;
  }

  a1[3] = v53;
LABEL_85:
  v54 = a1[3];
  v73 = bswap32(v54 - v20) >> 16;
  if (v54 >= v11)
  {
    if (v54 - v11 >= 0xA)
    {
      v55 = 10;
    }

    else
    {
      v55 = v54 - v11;
    }

    v56 = v54 - v11;
    if (v54 != v11)
    {
      v57 = a1[1];
      v58 = v57 > v11;
      v59 = v57 - v11;
      if (v58)
      {
        if (v55 >= v59)
        {
          v60 = v59;
        }

        else
        {
          v60 = v55;
        }

        memcpy((*a1 + v11), __src, v60);
      }
    }

    if (v56 <= 9)
    {
      v61 = 10 - v55;
      v62 = a1[2];
      if (a1[1] - v62 >= 10 - v55)
      {
        v63 = 10 - v55;
      }

      else
      {
        v63 = a1[1] - v62;
      }

      if (v63)
      {
        memcpy((*a1 + v62), __src + v55, v63);
        a1[2] += v63;
      }

      v64 = a1[3];
      v15 = __CFADD__(v64, v61);
      v65 = v64 + v61;
      if (v15)
      {
        v65 = -1;
      }

      a1[3] = v65;
    }
  }
}

uint64_t mdns_message_builder_write_message(uint64_t a1, void *a2, size_t a3)
{
  v37 = 0;
  __src[0] = bswap32(*(a1 + 72)) >> 16;
  __src[1] = bswap32(*(a1 + 74)) >> 16;
  if (*(a1 + 24))
  {
    BYTE1(v37) = 1;
  }

  Count = *(a1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
    v7 = Count >> 8;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  BYTE2(v37) = v7;
  BYTE3(v37) = Count;
  v8 = *(a1 + 48);
  if (v8)
  {
    v8 = CFArrayGetCount(v8);
    v9 = v8 >> 8;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  BYTE4(v37) = v9;
  BYTE5(v37) = v8;
  v10 = *(a1 + 56);
  if (v10)
  {
    v10 = CFArrayGetCount(v10);
    v11 = v10 >> 8;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  BYTE6(v37) = v11;
  HIBYTE(v37) = v10;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3800000000;
  v33 = a3;
  v34 = 0;
  v32 = a2;
  if (a3)
  {
    if (a3 >= 0xC)
    {
      a3 = 12;
    }

    memcpy(a2, __src, a3);
    v34 = a3;
  }

  v35 = 12;
  CFDictionaryRemoveAllValues(*(*(a1 + 32) + 24));
  v12 = *(a1 + 24);
  if (v12)
  {
    mdns_domain_name_append_to_copier(v12, v30 + 3, *(a1 + 32), v30[6]);
    v13 = *(a1 + 76);
    v14 = *(a1 + 78);
    v28[0] = HIBYTE(v13);
    v28[1] = v13;
    v28[2] = HIBYTE(v14);
    v28[3] = v14;
    v15 = v30;
    v16 = v30[5];
    v17 = v30[4] - v16;
    if (v17)
    {
      if (v17 >= 4)
      {
        v18 = 4;
      }

      else
      {
        v18 = v30[4] - v16;
      }

      memcpy((v30[3] + v16), v28, v18);
      v15[5] += v18;
    }

    v19 = v15[6];
    v20 = __CFADD__(v19, 4);
    v21 = v19 + 4;
    if (v20)
    {
      v21 = -1;
    }

    v15[6] = v21;
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 0x40000000;
  v27[2] = __mdns_message_builder_write_message_block_invoke;
  v27[3] = &unk_10014DC68;
  v27[4] = &v29;
  v27[5] = a1;
  v22 = *(a1 + 40);
  if (v22)
  {
    mdns_cfarray_enumerate(v22, v27);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    mdns_cfarray_enumerate(v23, v27);
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    mdns_cfarray_enumerate(v24, v27);
  }

  CFDictionaryRemoveAllValues(*(*(a1 + 32) + 24));
  v25 = v30[6];
  _Block_object_dispose(&v29, 8);
  return v25;
}

void _dnssec_obj_context_finalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    ref_count_obj_release(v3);
    *(a1 + 64) = 0;
  }
}

void _mdns_domain_name_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    free(v3);
    *(a1 + 40) = 0;
  }
}

uint64_t _mdns_domain_name_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  if (v2 != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 61) == 1 && *(a2 + 61) == 1)
  {
    return memcmp(*(a1 + 24), *(a2 + 24), v2) == 0;
  }

  return DomainNameEqual(*(a1 + 24), *(a2 + 24));
}

void *_mdns_domain_name_copy_description(void *a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    goto LABEL_9;
  }

  memset(v11, 0, sizeof(v11));
  v8 = a1[5];
  if (a3)
  {
    if (DNSMessagePrintObfuscatedString(v11, v8) < 0)
    {
      v8 = "«REDACTED»";
    }

    else
    {
      v8 = v11;
    }
  }

  if (mdns_string_builder_append_formatted(v7, "%s", v8))
  {
LABEL_9:
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

void _mdns_domain_name_offset_map_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

void *_mdns_domain_name_offset_map_copy_description(uint64_t a1, int a2, char a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2 && (appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1), (*(v18 + 6) = appended) != 0) || (v10 = mdns_string_builder_append_formatted(v7, "{"), (*(v18 + 6) = v10) != 0) || (v13[0] = _NSConcreteStackBlock, v13[1] = 0x40000000, v13[2] = ___mdns_domain_name_offset_map_copy_description_block_invoke, v13[3] = &unk_10014DDA8, v14 = a3, v13[4] = v15, v13[5] = &v17, v13[6] = v7, context = v13, v22 = 1, memset(v23, 0, sizeof(v23)), CFDictionaryApplyFunction(*(a1 + 24), _mdns_domain_name_offset_map_applier_function, &context), *(v18 + 6)) || (v11 = mdns_string_builder_append_formatted(v7, "\n}"), (*(v18 + 6) = v11) != 0))
    {
      v9 = 0;
    }

    else
    {
      v9 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
  return v9;
}

BOOL ___mdns_domain_name_offset_map_copy_description_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = ",";
  }

  else
  {
    v5 = "";
  }

  v6 = (a2 + 16);
  if (*(a1 + 56))
  {
    v7 = "«REDACTED»";
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v8 = v6[3];
      if (v8)
      {
        v9 = a2;
        v10 = 1;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = "«NAME»";
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v8 = v6[3];
      if (v8)
      {
        v9 = a2;
        v10 = 0;
LABEL_13:
        v11 = v8(v9, 0, v10);
        v12 = v11;
        if (v11)
        {
          v13 = 0;
          v7 = v11;
          goto LABEL_19;
        }

        v7 = "«NAME»";
        if (*(a1 + 56))
        {
          v7 = "«REDACTED»";
        }

        goto LABEL_18;
      }
    }
  }

  v12 = 0;
LABEL_18:
  v13 = 1;
LABEL_19:
  *(*(*(a1 + 40) + 8) + 24) = mdns_string_builder_append_formatted(*(a1 + 48), "%s\n\t%s: %u", v5, v7, a3);
  if ((v13 & 1) == 0)
  {
    free(v12);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  return *(*(*(a1 + 40) + 8) + 24) == 0;
}

uint64_t _mdns_domain_name_offset_map_applier_function(int a1, CFNumberRef number, _BYTE *a3)
{
  if (a3[8] == 1)
  {
    v8 = v3;
    v9 = v4;
    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    result = (*(*a3 + 16))();
    a3[8] = result;
  }

  return result;
}

uint64_t _mdns_domain_name_cf_callback_hash(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 52));
  if ((*(a1 + 60) & 1) == 0)
  {
    v2 = -2128831035;
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 24);
      do
      {
        v6 = *v4++;
        v5 = v6;
        v7 = v6 + 32;
        if ((v6 - 65) < 0x1A)
        {
          v5 = v7;
        }

        v2 = 16777619 * (v5 ^ v2);
        --v3;
      }

      while (v3);
    }

    *(a1 + 56) = v2;
    *(a1 + 60) = 1;
  }

  os_unfair_lock_unlock((a1 + 52));
  return *(a1 + 56);
}

void *mdns_domain_name_create(char *a1, _DWORD *a2)
{
  memset(v5, 0, sizeof(v5));
  v4 = DomainNameFromString(v5, a1);
  if (v4)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = mdns_domain_name_create_with_labels(v5, &v4);
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v4;
  return result;
}

void *mdns_domain_name_create_with_labels(_BYTE *a1, int *a2)
{
  v8 = 0;
  if (!*a1)
  {
    if (_mdns_domain_name_get_root_s_once != -1)
    {
      dispatch_once(&_mdns_domain_name_get_root_s_once, &__block_literal_global_10);
    }

    v4 = _mdns_domain_name_get_root_s_root;
    if (_mdns_domain_name_get_root_s_root)
    {
      goto LABEL_7;
    }
  }

  v4 = _mdns_domain_name_create(a1, &v8);
  v5 = v8;
  if (v8)
  {
    v6 = 0;
  }

  else
  {
LABEL_7:
    v5 = 0;
    v6 = v4;
    v8 = 0;
    v4 = 0;
  }

  if (a2)
  {
    *a2 = v5;
  }

  if (v4)
  {
    os_release(v4);
  }

  return v6;
}

void *_mdns_domain_name_create(_BYTE *a1, int *a2)
{
  v4 = _os_object_alloc();
  v5 = v4;
  if (v4)
  {
    v6 = &_mdns_domain_name_kind;
    v4[2] = &_mdns_domain_name_kind;
    do
    {
      v7 = v6[2];
      if (v7)
      {
        v7(v5);
      }

      v6 = *v6;
    }

    while (v6);
    DomainNameDupEx(a1, v5 + 3, v5 + 4);
    bzero(__s1, 0x3F1uLL);
    v8 = DomainNameToString(v5[3], 0, __s1, 0);
    if (v8)
    {
      v19 = v8;
      v4 = v5;
      v5 = 0;
    }

    else
    {
      v9 = strdup(__s1);
      if (!v9)
      {
        __break(1u);
      }

      v5[5] = v9;
      *(v5 + 13) = 0;
      v10 = v5[3];
      v11 = *v10;
      if (*v10)
      {
        v12 = 0;
        v13 = v5[3];
        while (v11 <= 0x3F)
        {
          v13 += v11 + 1;
          if (v13 - v10 > 255)
          {
            break;
          }

          ++v12;
          v11 = *v13;
          if (!*v13)
          {
            goto LABEL_15;
          }
        }

        v12 = -1;
      }

      else
      {
        v12 = 0;
      }

LABEL_15:
      *(v5 + 12) = v12;
      v14 = v5[4];
      if (v14)
      {
        if (*v10 - 65 >= 0x1A)
        {
          v16 = 0;
          v17 = v10 + 1;
          while (v14 - 1 != v16)
          {
            v18 = v17[v16++] - 65;
            if (v18 <= 0x19)
            {
              goto LABEL_24;
            }
          }

          v16 = v5[4];
LABEL_24:
          v15 = v16 >= v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 1;
      }

      v4 = 0;
      v19 = 0;
      *(v5 + 61) = v15;
    }
  }

  else
  {
    v19 = -6728;
  }

  if (a2)
  {
    *a2 = v19;
  }

  if (v4)
  {
    os_release(v4);
  }

  return v5;
}

void ___mdns_domain_name_get_root_block_invoke(id a1)
{
  v2 = 0;
  v1 = _mdns_domain_name_create(&v2, 0);
  *(v1 + 2) = 0x7FFFFFFF;
  *(v1 + 3) = 0x7FFFFFFF;
  _mdns_domain_name_get_root_s_root = v1;
}

void mdns_domain_name_append_to_copier(void *object, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = object[3];
  v6 = *v5;
  if (!*v5)
  {
    v33 = a2[2];
    if (a2[1] != v33)
    {
      *(*a2 + v33) = v6;
      ++a2[2];
    }

    v34 = a2[3];
    v20 = __CFADD__(v34, 1);
    v35 = v34 + 1;
    if (v20)
    {
      v35 = -1;
    }

    a2[3] = v35;
    return;
  }

  v9 = 0;
  if (a4 >= 0xFFFF)
  {
    v10 = 0xFFFF;
  }

  else
  {
    v10 = a4;
  }

  v11 = object[3];
  do
  {
    if (v9)
    {
      os_release(v9);
    }

    if (v11 == v5)
    {
      os_retain(object);
      v9 = object;
    }

    else
    {
      v42 = 0;
      v9 = mdns_domain_name_create_with_labels(v11, &v42);
      if (!v9)
      {
        if (_mdns_domain_name_log_s_once != -1)
        {
          dispatch_once(&_mdns_domain_name_log_s_once, &__block_literal_global);
        }

        v12 = _mdns_domain_name_log_s_log;
        if (os_log_type_enabled(_mdns_domain_name_log_s_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v44 = v42;
          _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Failed to create domain name object: %{mdns:err}ld", buf, 0xCu);
        }
      }
    }

    if (v9)
    {
      Value = CFDictionaryGetValue(*(a3 + 24), v9);
      if (Value)
      {
        *buf = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, buf);
        v14 = buf[0];
        if ((*buf & 0xC000) == 0)
        {
          buf[0] = buf[1] | 0xC0;
          buf[1] = v14;
          v36 = a2[1];
          v37 = a2[2];
          if (v36 != v37)
          {
            if (v36 - v37 >= 2)
            {
              v38 = 2;
            }

            else
            {
              v38 = v36 - v37;
            }

            memcpy((*a2 + v37), buf, v38);
            v36 = a2[2] + v38;
            a2[2] = v36;
          }

          v39 = a2[3];
          v20 = __CFADD__(v39, 2);
          v40 = v39 + 2;
          if (v20)
          {
            v40 = -1;
          }

          a2[3] = v40;
          if (!*v11)
          {
            if (a2[1] != v36)
            {
              *(*a2 + v36) = 0;
              v40 = a2[3];
              ++a2[2];
            }

            v41 = v40 + 1;
            if (v40 == -1)
            {
              v41 = -1;
            }

            a2[3] = v41;
          }

          goto LABEL_72;
        }
      }

      v15 = v6 + 1;
      v16 = a2[2];
      v17 = a2[1] - v16;
      if (v17)
      {
        if (v17 >= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = a2[1] - v16;
        }

        memcpy((*a2 + v16), v11, v18);
        a2[2] += v18;
      }

      v19 = a2[3];
      v20 = __CFADD__(v19, v15);
      v21 = v19 + v15;
      if (v20)
      {
        v21 = -1;
      }

      a2[3] = v21;
      if (!(v10 >> 14))
      {
        *buf = v10;
        v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
        if (v22)
        {
          v23 = v22;
          CFDictionarySetValue(*(a3 + 24), v9, v22);
          CFRelease(v23);
        }

        else
        {
          if (_mdns_domain_name_log_s_once != -1)
          {
            dispatch_once(&_mdns_domain_name_log_s_once, &__block_literal_global);
          }

          v29 = _mdns_domain_name_log_s_log;
          if (os_log_type_enabled(_mdns_domain_name_log_s_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v44 = -6729;
            _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Failed to insert domain name offset map pair: %{mdns:err}ld", buf, 0xCu);
          }
        }

LABEL_38:
        v10 += v15;
      }
    }

    else
    {
      v15 = v6 + 1;
      v24 = a2[2];
      v25 = a2[1] - v24;
      if (v25)
      {
        if (v25 >= v15)
        {
          v26 = v15;
        }

        else
        {
          v26 = a2[1] - v24;
        }

        memcpy((*a2 + v24), v11, v26);
        a2[2] += v26;
      }

      v27 = a2[3];
      v20 = __CFADD__(v27, v15);
      v28 = v27 + v15;
      if (v20)
      {
        v28 = -1;
      }

      a2[3] = v28;
      if (!(v10 >> 14))
      {
        goto LABEL_38;
      }
    }

    v11 += v15;
    v6 = *v11;
  }

  while (*v11);
  v30 = a2[2];
  if (a2[1] != v30)
  {
    *(*a2 + v30) = v6;
    ++a2[2];
  }

  v31 = a2[3];
  v20 = __CFADD__(v31, 1);
  v32 = v31 + 1;
  if (v20)
  {
    v32 = -1;
  }

  a2[3] = v32;
  if (v9)
  {
LABEL_72:
    os_release(v9);
  }
}

void mdns_system_remove_network_policy(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    [a1 removeAllPolicies];
    [a1 apply];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t mdns_system_is_signed_result_uuid_valid(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (_os_feature_enabled_impl())
  {
    if (objc_opt_class())
    {
      v3 = [[NSUUID alloc] initWithUUIDBytes:a1];
      v9 = 0;
      v4 = [DASession networkingAllowedWithUUID:v3 error:&v9];
      v5 = v9;

      if (mdns_system_log_s_once != -1)
      {
        dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
      }

      v6 = mdns_system_log_s_log;
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v11 = v4;
          v12 = 2112;
          v13 = v5;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed networkingAllowedWithUUID: -- allowed: %{BOOL}d, error: %@", buf, 0x12u);
        }

        v4 = 0;
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v11 = v4;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "networkingAllowedWithUUID: -- allowed: %{BOOL}d", buf, 8u);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t internal_start_advertising_service(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  memset(v29, 0, sizeof(v29));
  DomainnameToLower(*(a1 + 32), v29);
  v6 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v11 = *(a1 + 32);
      while (1)
      {
        if (!v11 || (v12 = *v11, v12 > 0x3F))
        {
LABEL_18:
          v10 = 257;
          goto LABEL_23;
        }

        if (!*v11)
        {
          break;
        }

        v11 += v12 + 1;
        if (&v11[-v7] >= 256)
        {
          goto LABEL_18;
        }
      }

      v10 = (v11 - v7 + 1);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v6 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(a1 + 32);
      while (1)
      {
        if (!v8 || (v9 = *v8, v9 > 0x3F))
        {
LABEL_10:
          v10 = 257;
          goto LABEL_23;
        }

        if (!*v8)
        {
          break;
        }

        v8 += v9 + 1;
        if (&v8[-v7] >= 256)
        {
          goto LABEL_10;
        }
      }

      v10 = (v8 - v7 + 1);
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_23:
  v13 = *(a1 + 4);
  v21 = 141558787;
  v22 = 1752392040;
  v23 = 1040;
  v24 = v10;
  v25 = 2101;
  v26 = v7;
  v27 = 1024;
  v28 = v13;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "internal_start_advertising_service - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rrtype: %{mdns:rrtype}d", &v21, 0x22u);
LABEL_24:
  v14 = *(a1 + 4);
  v15 = putDomainNameAsLabels(&compression_base_msg, byte_10015DD07, &compression_base_msg + &loc_1000022F8, v29);
  if (v15)
  {
    *v15 = HIBYTE(v14);
    v15[1] = v14;
    v15[2] = 1;
    v16 = (v15 + 3);
  }

  else
  {
    v16 = 0;
  }

  v21 = 0;
  v17 = putRData(&compression_base_msg, v16, &compression_base_msg + &loc_1000022F8, a1);
  PrintHelper("internal_start_advertising_service", byte_10015DD07, (v16 - byte_10015DD07), v16, (v17 - v16));
  result = xD2DMapToTransportType(*(a1 + 24), v4, &v21);
  if (result == 4)
  {
    v19 = 0;
    v20 = v21;
    do
    {
      if (&_D2DStartAdvertisingPairOnTransport && v20 != v19)
      {
        if (v19 >= 2)
        {
          _mdns_powerlog_awdl_event(@"startAWDLAdvertise", v29, *(a1 + 4), a3);
        }

        result = D2DStartAdvertisingPairOnTransport();
      }

      ++v19;
    }

    while (v19 != 4);
  }

  else if (&_D2DStartAdvertisingPairOnTransport)
  {
    if ((result & 6) == 2)
    {
      _mdns_powerlog_awdl_event(@"startAWDLAdvertise", v29, *(a1 + 4), a3);
    }

    return D2DStartAdvertisingPairOnTransport();
  }

  return result;
}

_BYTE *DomainnameToLower(_BYTE *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    do
    {
      *(a2 + v3 - result) = v2;
      v4 = &(v3++)[a2 - result + 1];
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = v6 + 32;
        if ((v6 - 65) < 0x1A)
        {
          v5 = v7;
        }

        *v4++ = v5;
        --v2;
      }

      while (v2);
      v2 = *v3;
    }

    while (*v3);
  }

  else
  {
    v3 = result;
  }

  *(a2 + v3 - result) = 0;
  return result;
}

void PrintHelper(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (mDNS_LoggingEnabled != 1)
  {
    return;
  }

  v10 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v11 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v10 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
  {
LABEL_10:
    v14 = 136447235;
    v15 = a1;
    v16 = 1024;
    v17 = a3;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 1040;
    v21 = a3;
    v22 = 2101;
    v23 = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: LHS: (%d bytes) %{sensitive, mask.hash, mdnsresponder:hex_sequence}.*P", &v14, 0x2Cu);
  }

LABEL_11:
  if (!a4)
  {
    return;
  }

  v13 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
    {
      return;
    }
  }

  else
  {
    v13 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
    {
      return;
    }
  }

  v14 = 136447235;
  v15 = a1;
  v16 = 1024;
  v17 = a5;
  v18 = 2160;
  v19 = 1752392040;
  v20 = 1040;
  v21 = a5;
  v22 = 2101;
  v23 = a4;
  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: RHS: (%d bytes) %{sensitive, mask.hash, mdnsresponder:hex_sequence}.*P", &v14, 0x2Cu);
}

uint64_t xD2DMapToTransportType(uint64_t a1, int a2, _DWORD *a3)
{
  *a3 = 1;
  if ((~a2 & 0x120000) == 0)
  {
    v3 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        return 4;
      }

      LOWORD(v19) = 0;
    }

    else
    {
      v3 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return 4;
      }

      LOWORD(v19) = 0;
    }

    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: call all active plugins since both kDNSServiceFlagsIncludeP2P and kDNSServiceFlagsIncludeAWDL are set", &v19, 2u);
    return 4;
  }

  if ((a2 & 0x20000) != 0)
  {
    v8 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      LOWORD(v19) = 0;
      v10 = "xD2DMapToTransportType: returning D2DBluetoothTransport since only kDNSServiceFlagsIncludeP2P is set";
    }

    else
    {
      v8 = mDNSLogCategory_D2D_redacted;
      result = os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      LOWORD(v19) = 0;
      v10 = "xD2DMapToTransportType: returning D2DBluetoothTransport since only kDNSServiceFlagsIncludeP2P is set";
    }

LABEL_37:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v19, 2u);
    return 0;
  }

  if ((a2 & 0x100000) != 0)
  {
    v12 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v13 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:
        *a3 = 0;
        return 4;
      }

      LOWORD(v19) = 0;
    }

    else
    {
      v12 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      LOWORD(v19) = 0;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: call AWDL and NAN plugins since kDNSServiceFlagsIncludeAWDL is set", &v19, 2u);
    goto LABEL_41;
  }

  if (a1 != -3)
  {
    if (AWDLInterfaceID && AWDLInterfaceID == a1)
    {
      v6 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = a1;
          goto LABEL_66;
        }
      }

      else
      {
        v6 = mDNSLogCategory_D2D_redacted;
        if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = a1;
LABEL_66:
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: returning D2DAWDLTransport for interface index %p", &v19, 0xCu);
        }
      }

      return 2;
    }

    v16 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v17 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    if (WiFiAwareInterfaceID && WiFiAwareInterfaceID == a1)
    {
      if (v18)
      {
        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = a1;
LABEL_74:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: returning D2DWiFiAwareTransport for interface index %p", &v19, 0xCu);
        }
      }

      else
      {
        v16 = mDNSLogCategory_D2D_redacted;
        if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = a1;
          goto LABEL_74;
        }
      }

      return 3;
    }

    if (v18)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = a1;
LABEL_70:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "xD2DMapToTransportType: no matching plugins for interface index %p", &v19, 0xCu);
      }
    }

    else
    {
      v16 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = a1;
        goto LABEL_70;
      }
    }

    return 1;
  }

  v8 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    result = os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      LOWORD(v19) = 0;
      v10 = "xD2DMapToTransportType: returning D2DBluetoothTransport for interface index mDNSInterface_P2P";
      goto LABEL_37;
    }
  }

  else
  {
    v8 = mDNSLogCategory_D2D_redacted;
    result = os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      LOWORD(v19) = 0;
      v10 = "xD2DMapToTransportType: returning D2DBluetoothTransport for interface index mDNSInterface_P2P";
      goto LABEL_37;
    }
  }

  return result;
}

void internal_stop_advertising_service(uint64_t a1, int a2, uint64_t a3)
{
  memset(v19, 0, sizeof(v19));
  DomainnameToLower(*(a1 + 32), v19);
  v6 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }
  }

  GetRRDisplayString_rdb(a1, (*(a1 + 40) + 4), word_1001789D0);
  v15 = 141558275;
  v16 = 1752392040;
  v17 = 2085;
  v18 = word_1001789D0;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "internal_stop_advertising_service: %{sensitive, mask.hash}s", &v15, 0x16u);
LABEL_7:
  v7 = *(a1 + 4);
  v8 = putDomainNameAsLabels(&compression_base_msg, byte_10015DD07, &compression_base_msg + &loc_1000022F8, v19);
  if (v8)
  {
    *v8 = HIBYTE(v7);
    v8[1] = v7;
    v8[2] = 1;
    v9 = (v8 + 3);
  }

  else
  {
    v9 = 0;
  }

  v15 = 0;
  v10 = putRData(&compression_base_msg, v9, &compression_base_msg + &loc_1000022F8, a1);
  PrintHelper("internal_stop_advertising_service", byte_10015DD07, (v9 - byte_10015DD07), v9, (v10 - v9));
  v11 = xD2DMapToTransportType(*(a1 + 24), a2, &v15);
  if (v11 == 4)
  {
    v12 = 0;
    v13 = v15;
    do
    {
      if (&_D2DStopAdvertisingPairOnTransport && v13 != v12)
      {
        D2DStopAdvertisingPairOnTransport();
        if (v12 >= 2)
        {
          _mdns_powerlog_awdl_event(@"stopAWDLAdvertise", v19, *(a1 + 4), a3);
        }
      }

      ++v12;
    }

    while (v12 != 4);
  }

  else if (&_D2DStopAdvertisingPairOnTransport)
  {
    v14 = v11;
    D2DStopAdvertisingPairOnTransport();
    if ((v14 & 6) == 2)
    {
      _mdns_powerlog_awdl_event(@"stopAWDLAdvertise", v19, *(a1 + 4), a3);
    }
  }
}

void D2D_stop_advertising_record(uint64_t a1)
{
  v2 = *(a1 + 172);
  if ((v2 & 0xFFFFFFFD) == 1)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = (v2 == 2) << 20;
  }

  if (callExternalHelpers(*(a1 + 32), *(a1 + 40), v3))
  {

    internal_stop_advertising_service(a1 + 8, v3, 0);
  }
}

uint64_t D2D_start_advertising_record(uint64_t a1)
{
  v2 = *(a1 + 172);
  if ((v2 & 0xFFFFFFFD) == 1)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = (v2 == 2) << 20;
  }

  result = callExternalHelpers(*(a1 + 32), *(a1 + 40), v3);
  if (result)
  {

    return internal_start_advertising_service(a1 + 8, v3, 0);
  }

  return result;
}

void external_connection_release(_BYTE *a1)
{
  for (i = D2DRecords; i; i = *i)
  {
    if (*(i + 36) != 12 || !SameDomainNameBytes((i + 936), a1))
    {
      continue;
    }

    v3 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }
    }

    v6 = *(i + 8);
    v7 = *(i + 16);
    *buf = 134218240;
    v9 = v6;
    v10 = 1024;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "external_connection_release: Calling D2DRelease - instanceHandle: %p, transportType: %u", buf, 0x12u);
LABEL_13:
    if (&_D2DRelease)
    {
      D2DRelease();
    }
  }
}

uint64_t xD2DParseCompressedPacket(char *a1, unsigned int a2, const void *a3, unsigned int a4, int a5, void *a6)
{
  v12 = 4294901745;
  v13 = &a1[a2];
  v14 = skipDomainName(a1, a1, v13);
  if (v14)
  {
    v15 = v14 + 3 == v13;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v16 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v17 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        return v12;
      }

      *buf = 0;
      v18 = "xD2DParseCompressedPacket: Could not parse DNS name in key";
    }

    else
    {
      v16 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
      {
        return v12;
      }

      *buf = 0;
      v18 = "xD2DParseCompressedPacket: Could not parse DNS name in key";
    }

    v31 = v16;
    v32 = 2;
LABEL_37:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v18, buf, v32);
    return v12;
  }

  v19 = v14[2];
  if (v19 != 1)
  {
    v33 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        return v12;
      }

      *buf = 67109120;
      *&buf[4] = v19;
      v18 = "xD2DParseCompressedPacket: Invalid D2D packet version - version: %d";
    }

    else
    {
      v33 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
      {
        return v12;
      }

      *buf = 67109120;
      *&buf[4] = v19;
      v18 = "xD2DParseCompressedPacket: Invalid D2D packet version - version: %d";
    }

    v31 = v33;
    v32 = 8;
    goto LABEL_37;
  }

  v20 = &compression_base_msg + a2 + 39;
  if (&v20[a4 - 7] >= &compression_base_msg + &loc_1000022F8)
  {
    return 4294901757;
  }

  v21 = *v14;
  memcpy(byte_10015DD07, a1, a2);
  if (*(&compression_base_msg + a2 + 38) == 1)
  {
    v22 = __rev16(v21);
    *(&compression_base_msg + a2 + 38) = 384;
    *(&compression_base_msg + a2 + 42) = BYTE1(a5);
    *(&compression_base_msg + a2 + 43) = a5;
    *(&compression_base_msg + a2 + 44) = BYTE1(a4);
    *(&compression_base_msg + a2 + 45) = a4;
    memcpy(&compression_base_msg + a2 + 46, a3, a4);
    *a6 = &compression_base_msg + a2 + a4 + 46;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    *buf = 0u;
    v55 = 0u;
    if (!getDomainName(&compression_base_msg, byte_10015DD07, &compression_base_msg + &loc_1000022F8, buf))
    {
      buf[0] = 0;
    }

    if (v22 != 12)
    {
      goto LABEL_42;
    }

    v23 = buf[0];
    if (!buf[0])
    {
      goto LABEL_42;
    }

    v24 = 0;
    v25 = 0;
    v26 = buf;
    while (1)
    {
      v27 = v25;
      v25 = v24;
      v24 = v26;
      if (v25 | v27)
      {
        if (v25 && v27)
        {
          v34 = SameDomainLabelPointer(v25, "\x04_sub");
          if (v34 && LabelPairIsForService(v24))
          {
LABEL_41:
            *(v20 - 1) = 256;
          }

LABEL_42:
          if (mDNS_LoggingEnabled == 1)
          {
            v35 = mDNSLogCategory_D2D;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
              {
                v39 = buf;
                while (1)
                {
                  if (!v39 || (v40 = *v39, v40 > 0x3F))
                  {
LABEL_58:
                    v38 = 257;
                    goto LABEL_61;
                  }

                  if (!*v39)
                  {
                    break;
                  }

                  v39 += v40 + 1;
                  if (v39 - buf >= 256)
                  {
                    goto LABEL_58;
                  }
                }

                v38 = (v39 - buf + 1);
LABEL_61:
                v42 = 141559299;
                v43 = 1752392040;
                v44 = 1040;
                v45 = v38;
                v46 = 2101;
                v47 = buf;
                v48 = 1024;
                v49 = v22;
                v50 = 1024;
                v51 = a5;
                v52 = 1024;
                v53 = a4;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "xD2DParseCompressedPacket: Our Bytes - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, TTL: %u, rdata length: %u", &v42, 0x2Eu);
              }
            }

            else
            {
              v35 = mDNSLogCategory_D2D_redacted;
              if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
              {
                v36 = buf;
                while (1)
                {
                  if (!v36 || (v37 = *v36, v37 > 0x3F))
                  {
LABEL_51:
                    v38 = 257;
                    goto LABEL_61;
                  }

                  if (!*v36)
                  {
                    break;
                  }

                  v36 += v37 + 1;
                  if (v36 - buf >= 256)
                  {
                    goto LABEL_51;
                  }
                }

                v38 = (v36 - buf + 1);
                goto LABEL_61;
              }
            }
          }

          return 0;
        }
      }

      else if (LabelPairIsForService(v26))
      {
        goto LABEL_41;
      }

      v28 = &v24[v23];
      v29 = v28[1];
      v26 = v28 + 1;
      v23 = v29;
      if (!v29)
      {
        goto LABEL_42;
      }
    }
  }

  return v12;
}

void xD2DReceiveResponse(uint64_t a1, int a2)
{
  mDNS_Lock_(mDNSStorage, "xD2DReceiveResponse", 487);
  v4 = &AWDLInterfaceID;
  if (a2 != 2)
  {
    v4 = &WiFiAwareInterfaceID;
  }

  mDNSCoreReceiveResponse(mDNSStorage, &compression_base_msg, a1, 0, 59668, &AllDNSLinkGroup_v6, 59668, 0, 0, *v4, 0);

  mDNS_Unlock_(mDNSStorage, "xD2DReceiveResponse", 490);
}

char *xD2DParse(char *a1, unsigned int a2, const void *a3, unsigned int a4, char **a5)
{
  v28 = 0;
  v6 = xD2DParseCompressedPacket(a1, a2, a3, a4, 120, &v28);
  if (v6)
  {
    return v6;
  }

  LargeResourceRecord = GetLargeResourceRecord(mDNSStorage, &compression_base_msg, byte_10015DD07, v28, 0, 192, mDNSStorage + &loc_100009418);
  v8 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v9 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (!LargeResourceRecord || *(mDNSStorage + &loc_100009420) == 240)
  {
    if (v10)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = v8;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "xD2DParse: failed to get large RR", buf, 2u);
      }
    }

    else
    {
      v16 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = v16;
        goto LABEL_24;
      }
    }

    v6 = 4294901759;
LABEL_53:
    WORD4(xmmword_100176630) = 0;
    HIWORD(xmmword_100176690) = 0;
    if (xmmword_100176670)
    {
      ref_count_obj_release(xmmword_100176670);
      *&xmmword_100176670 = 0;
    }

    return v6;
  }

  if (v10)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v11 = qword_100176658;
    if (qword_100176658)
    {
      v12 = qword_100176658;
      while (1)
      {
        if (!v12 || (v13 = *v12, v13 > 0x3F))
        {
LABEL_18:
          v14 = 257;
          goto LABEL_38;
        }

        if (!*v12)
        {
          break;
        }

        v12 += v13 + 1;
        if (&v12[-qword_100176658] >= 256)
        {
          goto LABEL_18;
        }
      }

      v14 = (v12 - qword_100176658 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v8 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v11 = qword_100176658;
    if (qword_100176658)
    {
      v17 = qword_100176658;
      while (1)
      {
        if (!v17 || (v18 = *v17, v18 > 0x3F))
        {
LABEL_33:
          v14 = 257;
          goto LABEL_38;
        }

        if (!*v17)
        {
          break;
        }

        v17 += v18 + 1;
        if (&v17[-qword_100176658] >= 256)
        {
          goto LABEL_33;
        }
      }

      v14 = (v17 - qword_100176658 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_38:
  v19 = WORD6(xmmword_100176630);
  GetRRDisplayString_rdb(&xmmword_100176630 + 8, (qword_100176660 + 4), &xmmword_100176630 + &loc_100002398 + 8);
  *buf = 141559299;
  v30 = 1752392040;
  v31 = 1040;
  v32 = v14;
  v33 = 2101;
  v34 = v11;
  v35 = 1024;
  v36 = v19;
  v37 = 2160;
  v38 = 1752392040;
  v39 = 2085;
  v40 = &xmmword_100176630 + &loc_100002398 + 8;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "xD2DParse got record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rrtype: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash}s", buf, 0x36u);
LABEL_39:
  if (WORD2(xmmword_100176640) >= 0x109u)
  {
    v20 = WORD2(xmmword_100176640) + 936;
  }

  else
  {
    v20 = 1200;
  }

  result = malloc_type_calloc(1uLL, v20, 0xAD07AB66uLL);
  if (result)
  {
    v22 = result;
    *a5 = result;
    mDNS_SetupResourceRecord((result + 24), 0, -3, SWORD6(xmmword_100176630), 0x1C20u, 8, 5, FreeD2DARElemCallback, 0);
    v23 = &xmmword_100176630 + &loc_100002090 + 12;
    do
    {
      if (!v23)
      {
        break;
      }

      v24 = *v23;
      if (v24 > 0x3F)
      {
        break;
      }

      if (!*v23)
      {
        v25 = v23 - mDNSStorage + 19277;
        if (v25 <= 0x100u)
        {
          memcpy(v22 + 676, &byte_1001786CC, v25);
          goto LABEL_52;
        }

        break;
      }

      v23 += v24 + 1;
    }

    while (v23 - mDNSStorage - 46260 <= 255);
    v22[676] = 0;
LABEL_52:
    v26 = WORD2(xmmword_100176640);
    *(v22 + 22) = WORD2(xmmword_100176640);
    v27 = *(v22 + 9);
    *v27 = v26;
    memcpy(v27 + 2, (qword_100176660 + 4), v26);
    *(v22 + 12) = DomainNameHashValue(*(v22 + 8));
    SetNewRData((v22 + 32), 0, 0);
    v6 = 0;
    goto LABEL_53;
  }

  __break(1u);
  return result;
}

void FreeD2DARElemCallback(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 == -65792)
  {
    v5 = &D2DRecords;
    do
    {
      v6 = v5;
      v5 = *v5;
      if (v5)
      {
        v7 = v5 + 3 == a2;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    v8 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    if (v5)
    {
      if (v10)
      {
        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v8 = mDNSLogCategory_D2D_redacted;
        if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_22:
          v11 = (a1 + 47032);
          GetRRDisplayString_rdb(a2 + 8, (*(a2 + 6) + 4), v11);
          v14 = 141558275;
          v15 = 1752392040;
          v16 = 2085;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FreeD2DARElemCallback: Found in D2DRecords: %{sensitive, mask.hash}s", &v14, 0x16u);
        }
      }

      v12 = *v6;
      *v6 = **v6;
      free(v12);
      return;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    else
    {
      v8 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    v13 = (a1 + 47032);
    GetRRDisplayString_rdb(a2 + 8, (*(a2 + 6) + 4), v13);
    v14 = 141558275;
    v15 = 1752392040;
    v16 = 2085;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FreeD2DARElemCallback: Could not find in D2DRecords: %{sensitive, mask.hash}s", &v14, 0x16u);
  }
}

BOOL LabelPairIsForService(unsigned __int8 *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1 + 1;
  if (a1[1] != 95)
  {
    return 0;
  }

  if (SameDomainLabelPointer(&v2[v1], "\x04_tcp"))
  {
    return 1;
  }

  return SameDomainLabelPointer(&v2[v1], "\x04_udp") != 0;
}

void external_start_browsing_for_service(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5)
{
  memset(__src, 0, sizeof(__src));
  DomainnameToLower(a2, __src);
  v10 = D2DFindInBrowseList(__src, a3);
  if (*v10 && *(*v10 + 268))
  {
    goto LABEL_38;
  }

  v39 = 0;
  v11 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v15 = __src;
    while (1)
    {
      if (!v15 || (v16 = *v15, v16 > 0x3F))
      {
LABEL_18:
        v14 = 257;
        goto LABEL_21;
      }

      if (!*v15)
      {
        break;
      }

      v15 += v16 + 1;
      if (v15 - __src >= 256)
      {
        goto LABEL_18;
      }
    }

    v14 = (v15 - __src + 1);
  }

  else
  {
    v11 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v12 = __src;
    while (1)
    {
      if (!v12 || (v13 = *v12, v13 > 0x3F))
      {
LABEL_11:
        v14 = 257;
        goto LABEL_21;
      }

      if (!*v12)
      {
        break;
      }

      v12 += v13 + 1;
      if (v12 - __src >= 256)
      {
        goto LABEL_11;
      }
    }

    v14 = (v12 - __src + 1);
  }

LABEL_21:
  *buf = 141558787;
  v42 = 1752392040;
  v43 = 1040;
  v44 = v14;
  v45 = 2101;
  v46 = __src;
  v47 = 1024;
  v48 = a3;
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "internal_start_browsing_for_service: starting browse - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d", buf, 0x22u);
LABEL_22:
  v17 = putDomainNameAsLabels(&compression_base_msg, byte_10015DD07, &compression_base_msg + &loc_1000022F8, __src);
  if (v17)
  {
    *v17 = BYTE1(a3);
    v17[1] = a3;
    v17[2] = 1;
    v18 = v17 + 3;
  }

  else
  {
    v18 = 0;
  }

  PrintHelper("internal_start_browsing_for_service", byte_10015DD07, (v18 - byte_10015DD07), 0, 0);
  v19 = xD2DMapToTransportType(a1, a4, &v39);
  if (v19 == 4)
  {
    v20 = 0;
    v21 = v39;
    do
    {
      if (&_D2DStartBrowsingForKeyOnTransport && v21 != v20)
      {
        if (v20 >= 2)
        {
          _mdns_powerlog_awdl_event(@"startAWDLBrowse", a2, a3, a5);
        }

        D2DStartBrowsingForKeyOnTransport();
      }

      ++v20;
    }

    while (v20 != 4);
  }

  else if (&_D2DStartBrowsingForKeyOnTransport)
  {
    if ((v19 & 6) == 2)
    {
      _mdns_powerlog_awdl_event(@"startAWDLBrowse", a2, a3, a5);
    }

    D2DStartBrowsingForKeyOnTransport();
  }

LABEL_38:
  v22 = D2DFindInBrowseList(__src, a3);
  if (!*v22)
  {
    v23 = malloc_type_calloc(1uLL, 0x110uLL, 0x4D88EC95uLL);
    if (!v23)
    {
      __break(1u);
      return;
    }

    *v22 = v23;
    v23[132] = a3;
    v24 = __src;
    do
    {
      if (!v24)
      {
        break;
      }

      v25 = *v24;
      if (v25 > 0x3F)
      {
        break;
      }

      if (!*v24)
      {
        v26 = v24 - __src + 1;
        if (v26 <= 0x100u)
        {
          memcpy(v23 + 4, __src, v26);
          goto LABEL_49;
        }

        break;
      }

      v24 += v25 + 1;
    }

    while (v24 - __src <= 255);
    *(v23 + 8) = 0;
  }

LABEL_49:
  v27 = *v22;
  v28 = *(*v22 + 268) + 1;
  *(v27 + 268) = v28;
  v29 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v30 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v31 = (v27 + 8);
    v32 = (v27 + 8);
    while (1)
    {
      if (!v32 || (v33 = *v32, v33 > 0x3F))
      {
LABEL_60:
        v34 = 257;
        goto LABEL_70;
      }

      if (!*v32)
      {
        break;
      }

      v32 += v33 + 1;
      if (v32 - v31 >= 256)
      {
        goto LABEL_60;
      }
    }

    v34 = (v32 - v31 + 1);
    goto LABEL_70;
  }

  v29 = mDNSLogCategory_D2D_redacted;
  if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
  {
    v31 = (v27 + 8);
    v36 = (v27 + 8);
    while (1)
    {
      if (!v36 || (v37 = *v36, v37 > 0x3F))
      {
LABEL_67:
        v34 = 257;
        goto LABEL_70;
      }

      if (!*v36)
      {
        break;
      }

      v36 += v37 + 1;
      if (v36 - v31 >= 256)
      {
        goto LABEL_67;
      }
    }

    v34 = (v36 - v31 + 1);
LABEL_70:
    v38 = *(v27 + 264);
    *buf = 141559043;
    v42 = 1752392040;
    v43 = 1040;
    v44 = v34;
    v45 = 2101;
    v46 = v31;
    v47 = 1024;
    v48 = v38;
    v49 = 1024;
    v50 = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "D2DBrowseListRetain - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, ref count: %u", buf, 0x28u);
  }
}

uint64_t *D2DFindInBrowseList(_BYTE *a1, int a2)
{
  v2 = &D2DBrowseList;
  for (i = D2DBrowseList; i; i = *i)
  {
    if (*(i + 264) == a2)
    {
      if (SameDomainNameBytes((i + 8), a1))
      {
        return v2;
      }

      i = *v2;
    }

    v2 = i;
  }

  return v2;
}

void external_stop_browsing_for_service(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5)
{
  memset(v54, 0, sizeof(v54));
  DomainnameToLower(a2, v54);
  v10 = D2DFindInBrowseList(v54, a3);
  v11 = *v10;
  if (*v10)
  {
    v12 = v10;
    v13 = *(v11 + 268) - 1;
    *(v11 + 268) = v13;
    v14 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      v15 = (v11 + 8);
      v23 = (v11 + 8);
      while (1)
      {
        if (!v23 || (v24 = *v23, v24 > 0x3F))
        {
LABEL_26:
          v18 = 257;
          goto LABEL_36;
        }

        if (!*v23)
        {
          break;
        }

        v23 += v24 + 1;
        if (v23 - v15 >= 256)
        {
          goto LABEL_26;
        }
      }

      v18 = (v23 - v15 + 1);
    }

    else
    {
      v14 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      v15 = (v11 + 8);
      v16 = (v11 + 8);
      while (1)
      {
        if (!v16 || (v17 = *v16, v17 > 0x3F))
        {
LABEL_10:
          v18 = 257;
          goto LABEL_36;
        }

        if (!*v16)
        {
          break;
        }

        v16 += v17 + 1;
        if (v16 - v15 >= 256)
        {
          goto LABEL_10;
        }
      }

      v18 = (v16 - v15 + 1);
    }

LABEL_36:
    v27 = *(v11 + 264);
    *buf = 141559043;
    v56 = 1752392040;
    v57 = 1040;
    v58 = v18;
    v59 = 2101;
    v60 = v15;
    v61 = 1024;
    v62 = v27;
    v63 = 1024;
    LODWORD(v64) = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "D2DBrowseListRelease - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, ref count: %u", buf, 0x28u);
LABEL_37:
    v28 = *v12;
    if (!*(*v12 + 268))
    {
      *v12 = *v28;
      free(v28);
    }

    v29 = D2DFindInBrowseList(v54, a3);
    if (*v29 && *(*v29 + 268))
    {
      return;
    }

    v53 = 0;
    v30 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      v34 = v54;
      while (1)
      {
        if (!v34 || (v35 = *v34, v35 > 0x3F))
        {
LABEL_56:
          v33 = 257;
          goto LABEL_59;
        }

        if (!*v34)
        {
          break;
        }

        v34 += v35 + 1;
        if (v34 - v54 >= 256)
        {
          goto LABEL_56;
        }
      }

      v33 = (v34 - v54 + 1);
    }

    else
    {
      v30 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      v31 = v54;
      while (1)
      {
        if (!v31 || (v32 = *v31, v32 > 0x3F))
        {
LABEL_49:
          v33 = 257;
          goto LABEL_59;
        }

        if (!*v31)
        {
          break;
        }

        v31 += v32 + 1;
        if (v31 - v54 >= 256)
        {
          goto LABEL_49;
        }
      }

      v33 = (v31 - v54 + 1);
    }

LABEL_59:
    *buf = 141558787;
    v56 = 1752392040;
    v57 = 1040;
    v58 = v33;
    v59 = 2101;
    v60 = v54;
    v61 = 1024;
    v62 = a3;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "internal_stop_browsing_for_service: stopping browse - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d", buf, 0x22u);
LABEL_60:
    v36 = putDomainNameAsLabels(&compression_base_msg, byte_10015DD07, &compression_base_msg + &loc_1000022F8, v54);
    if (v36)
    {
      *v36 = BYTE1(a3);
      v36[1] = a3;
      v36[2] = 1;
      v37 = v36 + 3;
    }

    else
    {
      v37 = 0;
    }

    PrintHelper("internal_stop_browsing_for_service", byte_10015DD07, (v37 - byte_10015DD07), 0, 0);
    v38 = xD2DMapToTransportType(a1, a4, &v53);
    if (v38 == 4)
    {
      v39 = 0;
      v40 = v53;
      do
      {
        if (&_D2DStopBrowsingForKeyOnTransport)
        {
          if (v40 != v39)
          {
            D2DStopBrowsingForKeyOnTransport();
            if (v39 >= 2)
            {
              _mdns_powerlog_awdl_event(@"stopAWDLBrowse", a2, a3, a5);
            }
          }
        }

        ++v39;
      }

      while (v39 != 4);
    }

    else if (&_D2DStopBrowsingForKeyOnTransport)
    {
      v41 = v38;
      D2DStopBrowsingForKeyOnTransport();
      if ((v41 & 6) == 2)
      {
        _mdns_powerlog_awdl_event(@"stopAWDLBrowse", a2, a3, a5);
      }
    }

    v42 = D2DRecords;
    v43 = &unk_100178000;
    if (D2DRecords)
    {
      while (1)
      {
        v44 = v42;
        v42 = *v42;
        if (*(v44 + 18) != a3 || !SameDomainNameBytes(v44 + 676, v54))
        {
          goto LABEL_100;
        }

        v45 = mDNSLogCategory_D2D;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_D2D != v43[435])
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          v47 = v54;
          while (1)
          {
            if (!v47 || (v48 = *v47, v48 > 0x3F))
            {
LABEL_88:
              v49 = 257;
              goto LABEL_98;
            }

            if (!*v47)
            {
              break;
            }

            v47 += v48 + 1;
            if (v47 - v54 >= 256)
            {
              goto LABEL_88;
            }
          }

          v49 = (v47 - v54 + 1);
LABEL_98:
          GetRRDisplayString_rdb(v44 + 32, (v44[9] + 4), word_1001789D0);
          *buf = 141559299;
          v56 = 1752392040;
          v57 = 1040;
          v58 = v49;
          v59 = 2101;
          v60 = v54;
          v61 = 1024;
          v62 = a3;
          v63 = 2160;
          v64 = 1752392040;
          v65 = 2085;
          v66 = word_1001789D0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "xD2DClearCache: Clearing and deregistering cache record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rrtype: %{mdns:rrtype}d, auth record: %{sensitive, mask.hash}s", buf, 0x36u);
          v43 = &unk_100178000;
        }

LABEL_99:
        mDNS_Deregister(mDNSStorage, v44 + 3);
LABEL_100:
        if (!v42)
        {
          return;
        }
      }

      v45 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_99;
      }

      v51 = v54;
      while (1)
      {
        if (!v51 || (v52 = *v51, v52 > 0x3F))
        {
LABEL_95:
          v49 = 257;
          goto LABEL_98;
        }

        if (!*v51)
        {
          break;
        }

        v51 += v52 + 1;
        if (v51 - v54 >= 256)
        {
          goto LABEL_95;
        }
      }

      v49 = (v51 - v54 + 1);
      goto LABEL_98;
    }

    return;
  }

  v19 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v25 = v54;
    while (1)
    {
      if (!v25 || (v26 = *v25, v26 > 0x3F))
      {
LABEL_33:
        v22 = 257;
        goto LABEL_104;
      }

      if (!*v25)
      {
        break;
      }

      v25 += v26 + 1;
      if (v25 - v54 >= 256)
      {
        goto LABEL_33;
      }
    }

    v22 = (v25 - v54 + 1);
  }

  else
  {
    v19 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v20 = v54;
    while (1)
    {
      if (!v20 || (v21 = *v20, v21 > 0x3F))
      {
LABEL_19:
        v22 = 257;
        goto LABEL_104;
      }

      if (!*v20)
      {
        break;
      }

      v20 += v21 + 1;
      if (v20 - v54 >= 256)
      {
        goto LABEL_19;
      }
    }

    v22 = (v20 - v54 + 1);
  }

LABEL_104:
  *buf = 141558787;
  v56 = 1752392040;
  v57 = 1040;
  v58 = v22;
  v59 = 2101;
  v60 = v54;
  v61 = 1024;
  v62 = a3;
  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "D2DBrowseListRelease item not found in the list - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d", buf, 0x22u);
}

void xD2DServiceCallback(int a1, int a2, uint64_t a3, uint64_t a4, char *a5, unint64_t a6, _OWORD *a7, unint64_t a8)
{
  v12 = a4;
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  if (a6 >= 0x10000)
  {
    v16 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v17 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 134217984;
      *&buf[4] = a6;
      goto LABEL_11;
    }

    v16 = mDNSLogCategory_D2D_redacted;
    if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a6;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "xD2DServiceCallback: keySize too large - key size: %zu", buf, 0xCu);
    }
  }

LABEL_12:
  if (a8 < 0x10000)
  {
    goto LABEL_23;
  }

  v19 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v20 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 134217984;
    *&buf[4] = a8;
  }

  else
  {
    v19 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 134217984;
    *&buf[4] = a8;
  }

  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "xD2DServiceCallback: valueSize too large - value size: %zu", buf, 0xCu);
LABEL_23:
  v22 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v23 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 67240192;
    *&buf[4] = a1;
    goto LABEL_32;
  }

  v22 = mDNSLogCategory_D2D_redacted;
  if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = a1;
LABEL_32:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "xD2DServiceCallback -- event: %{public, mdnsresponder:d2d_service_event}u", buf, 8u);
  }

LABEL_33:
  PrintHelper("xD2DServiceCallback", a5, a6, a7, a8);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v33 = mDNSLogCategory_D2D;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v34 = mDNSLogCategory_D2D == mDNSLogCategory_State;
      }

      else
      {
        v34 = 1;
      }

      v35 = v34;
      if (a2)
      {
        if (!v35)
        {
          v32 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *buf = 67109120;
          *&buf[4] = a2;
          v28 = "xD2DRetainHappened: Unexpected result - result: %u";
          goto LABEL_158;
        }

        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v28 = "xD2DRetainHappened: Unexpected result - result: %u";
LABEL_84:
        v29 = buf;
LABEL_239:
        v30 = v33;
        goto LABEL_240;
      }

      if (v35)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_242;
        }

        *buf = 134217984;
        *&buf[4] = a3;
        v28 = "xD2DRetainHappened: Opening up PAN connection - instanceHandle: %p";
      }

      else
      {
        v33 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_242;
        }

        *buf = 134217984;
        *&buf[4] = a3;
        v28 = "xD2DRetainHappened: Opening up PAN connection - instanceHandle: %p";
      }
    }

    else
    {
      if (a1 != 4)
      {
        if (a1 != 5 || a2)
        {
          goto LABEL_242;
        }

        if (v12 == 2)
        {
          v31 = &AWDLInterfaceID;
        }

        else
        {
          if (v12 != 3)
          {
            goto LABEL_242;
          }

          v31 = &WiFiAwareInterfaceID;
        }

        if (a8 != 16)
        {
          goto LABEL_242;
        }

        v42 = *v31;
        *v112 = 6;
        *&v112[4] = *a7;
        mDNS_Lock_(mDNSStorage, "removeCachedPeerRecords", 696);
        v43 = 0;
        while (1)
        {
          v111 = v43;
          v44 = mDNSStorage[v43 + 34];
          if (v44)
          {
            break;
          }

LABEL_146:
          v43 = v111 + 1;
          if (v111 == 498)
          {
            mDNS_Unlock_(mDNSStorage, "removeCachedPeerRecords", 711);
            goto LABEL_242;
          }
        }

        while (1)
        {
          v45 = v44[2];
          if (v45)
          {
            break;
          }

LABEL_145:
          v44 = *v44;
          if (!v44)
          {
            goto LABEL_146;
          }
        }

        while (1)
        {
          if (*(v45 + 32) != v42 || !mDNSSameAddress((v45 + 132), v112))
          {
            goto LABEL_144;
          }

          v46 = mDNSLogCategory_D2D;
          if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_D2D != mDNSLogCategory_State)
          {
            break;
          }

          if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_INFO))
          {
            v48 = *(v45 + 40);
            if (v48)
            {
              v49 = *(v45 + 40);
              while (1)
              {
                if (!v49 || (v50 = *v49, v50 > 0x3F))
                {
LABEL_129:
                  v51 = 257;
                  goto LABEL_142;
                }

                if (!*v49)
                {
                  break;
                }

                v49 += v50 + 1;
                if (&v49[-v48] >= 256)
                {
                  goto LABEL_129;
                }
              }

              v51 = (v49 - v48 + 1);
            }

            else
            {
              v51 = 0;
            }

LABEL_142:
            v55 = *(v45 + 12);
            *buf = 141559555;
            *&buf[4] = 1752392040;
            *&buf[12] = 1045;
            *&buf[14] = 20;
            v114 = 2101;
            *v115 = v112;
            *&v115[8] = 2160;
            *&v115[10] = 1752392040;
            *&v115[18] = 1040;
            *&v115[20] = v51;
            *&v115[24] = 2101;
            *&v115[26] = v48;
            *&v115[34] = 1024;
            *&v115[36] = v55;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Removing cached peer record -- peer address: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d", buf, 0x3Cu);
          }

LABEL_143:
          mDNS_PurgeCacheResourceRecord(mDNSStorage, v45);
LABEL_144:
          v45 = *v45;
          if (!v45)
          {
            goto LABEL_145;
          }
        }

        v46 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_INFO))
        {
          goto LABEL_143;
        }

        v48 = *(v45 + 40);
        if (v48)
        {
          v53 = *(v45 + 40);
          while (1)
          {
            if (!v53 || (v54 = *v53, v54 > 0x3F))
            {
LABEL_137:
              v51 = 257;
              goto LABEL_142;
            }

            if (!*v53)
            {
              break;
            }

            v53 += v54 + 1;
            if (&v53[-v48] >= 256)
            {
              goto LABEL_137;
            }
          }

          v51 = (v53 - v48 + 1);
        }

        else
        {
          v51 = 0;
        }

        goto LABEL_142;
      }

      v33 = mDNSLogCategory_D2D;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v36 = mDNSLogCategory_D2D == mDNSLogCategory_State;
      }

      else
      {
        v36 = 1;
      }

      v37 = v36;
      if (a2)
      {
        if (!v37)
        {
          v32 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *buf = 67109120;
          *&buf[4] = a2;
          v28 = "xD2DReleaseHappened: Unexpected result - result: %u";
          goto LABEL_158;
        }

        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v28 = "xD2DReleaseHappened: Unexpected result - result: %u";
        goto LABEL_84;
      }

      if (v37)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_242;
        }

        *buf = 134217984;
        *&buf[4] = a3;
        v28 = "xD2DReleaseHappened: Closing PAN connection - instanceHandle: %p";
      }

      else
      {
        v33 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_242;
        }

        *buf = 134217984;
        *&buf[4] = a3;
        v28 = "xD2DReleaseHappened: Closing PAN connection - instanceHandle: %p";
      }
    }

    v29 = buf;
    v30 = v33;
    v60 = OS_LOG_TYPE_DEFAULT;
    v61 = 12;
LABEL_241:
    _os_log_impl(&_mh_execute_header, v30, v60, v28, v29, v61);
    goto LABEL_242;
  }

  if (!a1)
  {
    if (a2)
    {
      v32 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v28 = "xD2DAddToCache: Unexpected result - result: %u";
      }

      else
      {
        v32 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v28 = "xD2DAddToCache: Unexpected result - result: %u";
      }

LABEL_158:
      v29 = buf;
      v30 = v32;
      goto LABEL_240;
    }

    if (!a8 || !a6 || !a5 || !a7)
    {
      v62 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 0;
        v28 = "xD2DAddToCache: NULL Byte * passed in or length == 0";
      }

      else
      {
        v62 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 0;
        v28 = "xD2DAddToCache: NULL Byte * passed in or length == 0";
      }

LABEL_198:
      v29 = buf;
      v30 = v62;
      v60 = OS_LOG_TYPE_ERROR;
      v61 = 2;
      goto LABEL_241;
    }

    if ((v12 & 0xFFFFFFFE) == 2)
    {
      *buf = 0;
      v38 = xD2DParseCompressedPacket(a5, a6, a7, a8, 4500, buf);
      if (v38)
      {
        v39 = v38;
        v33 = mDNSLogCategory_D2D;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *v112 = 67109120;
          *&v112[4] = v39;
          v28 = "xD2DAddToCache: xD2DParseCompressedPacket failed - error: %d";
        }

        else
        {
          v33 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *v112 = 67109120;
          *&v112[4] = v39;
          v28 = "xD2DAddToCache: xD2DParseCompressedPacket failed - error: %d";
        }

        goto LABEL_238;
      }

LABEL_182:
      xD2DReceiveResponse(*buf, v12);
      goto LABEL_242;
    }

    *v112 = 0;
    v63 = xD2DParse(a5, a6, a7, a8, v112);
    if (v63)
    {
      v64 = v63;
      v65 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v64;
          goto LABEL_245;
        }
      }

      else
      {
        v65 = mDNSLogCategory_D2D_redacted;
        if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v64;
LABEL_245:
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "xD2DAddToCache: xD2DParse failed - error: %d", buf, 8u);
        }
      }

      PrintHelper("xD2DAddToCache", a5, a6, a7, a8);
      v66 = *v112;
      goto LABEL_247;
    }

    v66 = *v112;
    v67 = mDNS_Register(mDNSStorage, *v112 + 24);
    v68 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v69 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v69 = 1;
    }

    v70 = v69;
    if (v67)
    {
      v71 = v67;
      if (v70)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_247;
        }

        v72 = *(v66 + 64);
        if (v72)
        {
          v73 = *(v66 + 64);
          while (1)
          {
            if (!v73 || (v74 = *v73, v74 > 0x3F))
            {
LABEL_214:
              v75 = 257;
              goto LABEL_301;
            }

            if (!*v73)
            {
              break;
            }

            v73 += v74 + 1;
            if (&v73[-v72] >= 256)
            {
              goto LABEL_214;
            }
          }

          v75 = (v73 - v72 + 1);
        }

        else
        {
          v75 = 0;
        }

LABEL_301:
        v98 = *(v66 + 36);
        GetRRDisplayString_rdb((v66 + 32), (*(v66 + 72) + 4), word_1001789D0);
        *buf = 67110659;
        *&buf[4] = v71;
        *&buf[8] = 2160;
        *&buf[10] = 1752392040;
        v114 = 1040;
        *v115 = v75;
        *&v115[4] = 2101;
        *&v115[6] = v72;
        *&v115[14] = 1024;
        *&v115[16] = v98;
        *&v115[20] = 2160;
        *&v115[22] = 1752392040;
        *&v115[30] = 2085;
        *&v115[32] = word_1001789D0;
        v99 = v68;
      }

      else
      {
        v90 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
LABEL_247:
          if (!v66)
          {
            goto LABEL_242;
          }

          goto LABEL_305;
        }

        v91 = *(v66 + 64);
        if (v91)
        {
          v92 = *(v66 + 64);
          while (1)
          {
            if (!v92 || (v93 = *v92, v93 > 0x3F))
            {
LABEL_281:
              v94 = 257;
              goto LABEL_303;
            }

            if (!*v92)
            {
              break;
            }

            v92 += v93 + 1;
            if (&v92[-v91] >= 256)
            {
              goto LABEL_281;
            }
          }

          v94 = (v92 - v91 + 1);
        }

        else
        {
          v94 = 0;
        }

LABEL_303:
        v100 = *(v66 + 36);
        GetRRDisplayString_rdb((v66 + 32), (*(v66 + 72) + 4), word_1001789D0);
        *buf = 67110659;
        *&buf[4] = v71;
        *&buf[8] = 2160;
        *&buf[10] = 1752392040;
        v114 = 1040;
        *v115 = v94;
        *&v115[4] = 2101;
        *&v115[6] = v91;
        *&v115[14] = 1024;
        *&v115[16] = v100;
        *&v115[20] = 2160;
        *&v115[22] = 1752392040;
        *&v115[30] = 2085;
        *&v115[32] = word_1001789D0;
        v99 = v90;
      }

      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "xD2DAddToCache: mDNS_Register failed - error: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, auth record: %{sensitive, mask.hash}s", buf, 0x3Cu);
LABEL_305:
      v83 = v66;
      goto LABEL_306;
    }

    if (v70)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        v84 = *(v66 + 64);
        if (v84)
        {
          v85 = *(v66 + 64);
          while (1)
          {
            if (!v85 || (v86 = *v85, v86 > 0x3F))
            {
LABEL_262:
              v87 = 257;
              goto LABEL_309;
            }

            if (!*v85)
            {
              break;
            }

            v85 += v86 + 1;
            if (&v85[-v84] >= 256)
            {
              goto LABEL_262;
            }
          }

          v87 = (v85 - v84 + 1);
        }

        else
        {
          v87 = 0;
        }

LABEL_309:
        v101 = *(v66 + 36);
        v102 = *(v66 + 56);
        GetRRDisplayString_rdb((v66 + 32), (*(v66 + 72) + 4), word_1001789D0);
        *buf = 141559555;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v87;
        v114 = 2101;
        *v115 = v84;
        *&v115[8] = 1024;
        *&v115[10] = v101;
        *&v115[14] = 2048;
        *&v115[16] = v102;
        *&v115[24] = 2160;
        *&v115[26] = 1752392040;
        *&v115[34] = 2085;
        *&v115[36] = word_1001789D0;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "xD2DAddToCache: mDNS_Register succeeded - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, Interface ID: %p, auth record: %{sensitive, mask.hash}s", buf, 0x40u);
      }
    }

    else
    {
      v68 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v84 = *(v66 + 64);
        if (v84)
        {
          v95 = *(v66 + 64);
          while (1)
          {
            if (!v95 || (v96 = *v95, v96 > 0x3F))
            {
LABEL_289:
              v87 = 257;
              goto LABEL_309;
            }

            if (!*v95)
            {
              break;
            }

            v95 += v96 + 1;
            if (&v95[-v84] >= 256)
            {
              goto LABEL_289;
            }
          }

          v87 = (v95 - v84 + 1);
        }

        else
        {
          v87 = 0;
        }

        goto LABEL_309;
      }
    }

    *(v66 + 16) = v12;
    *v66 = D2DRecords;
    *(v66 + 8) = a3;
    D2DRecords = v66;
    goto LABEL_242;
  }

  if (a1 == 1)
  {
    if (a2)
    {
      v32 = mDNSLogCategory_D2D;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v28 = "xD2DRemoveFromCache: Unexpected result - result: %u";
      }

      else
      {
        v32 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_242;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v28 = "xD2DRemoveFromCache: Unexpected result - result: %u";
      }

      goto LABEL_158;
    }

    if ((v12 & 0xFFFFFFFE) == 2)
    {
      *buf = 0;
      v40 = xD2DParseCompressedPacket(a5, a6, a7, a8, 0, buf);
      if (v40)
      {
        v41 = v40;
        v33 = mDNSLogCategory_D2D;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *v112 = 67109120;
          *&v112[4] = v41;
          v28 = "xD2DRemoveFromCache: xD2DParseCompressedPacket failed - error: %d";
        }

        else
        {
          v33 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_242;
          }

          *v112 = 67109120;
          *&v112[4] = v41;
          v28 = "xD2DRemoveFromCache: xD2DParseCompressedPacket failed - error: %d";
        }

LABEL_238:
        v29 = v112;
        goto LABEL_239;
      }

      goto LABEL_182;
    }

    v56 = D2DRecords;
    *v112 = 0;
    if (a8 && a6 && a5 && a7)
    {
      v57 = xD2DParse(a5, a6, a7, a8, v112);
      if (v57)
      {
        v58 = v57;
        v59 = mDNSLogCategory_D2D;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_252;
          }

          *buf = 67109120;
          *&buf[4] = v58;
        }

        else
        {
          v59 = mDNSLogCategory_D2D_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_252;
          }

          *buf = 67109120;
          *&buf[4] = v58;
        }

        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "xD2DFindInList: xD2DParse failed - error: %d", buf, 8u);
LABEL_252:
        PrintHelper("xD2DFindInList", a5, a6, a7, a8);
        v83 = *v112;
        if (!*v112)
        {
          goto LABEL_242;
        }

        goto LABEL_306;
      }

      if (v56)
      {
        v76 = *v112;
        while (*(v76 + 48) != *(v56 + 48) || !resource_records_have_same_dnssec_rr_category(*(v76 + 88), *(v56 + 88)) || *(v76 + 36) != *(v56 + 36) || *(v76 + 38) != *(v56 + 38) || *(v76 + 44) != *(v56 + 44) || *(v76 + 52) != *(v56 + 52) || !SameRDataBody(v76 + 32, (*(v56 + 72) + 4), SameDomainName) || !SameDomainNameBytes(*(v76 + 64), *(v56 + 64)))
        {
          v56 = *v56;
          if (!v56)
          {
            goto LABEL_226;
          }
        }

        free(v76);
        v103 = mDNSLogCategory_D2D;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
          {
            v104 = *(v56 + 64);
            if (v104)
            {
              v108 = *(v56 + 64);
              while (1)
              {
                if (!v108 || (v109 = *v108, v109 > 0x3F))
                {
LABEL_328:
                  v107 = 257;
                  goto LABEL_333;
                }

                if (!*v108)
                {
                  break;
                }

                v108 += v109 + 1;
                if (&v108[-v104] >= 256)
                {
                  goto LABEL_328;
                }
              }

              v107 = (v108 - v104 + 1);
            }

            else
            {
              v107 = 0;
            }

            goto LABEL_333;
          }
        }

        else
        {
          v103 = mDNSLogCategory_D2D_redacted;
          if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v104 = *(v56 + 64);
            if (v104)
            {
              v105 = *(v56 + 64);
              while (1)
              {
                if (!v105 || (v106 = *v105, v106 > 0x3F))
                {
LABEL_320:
                  v107 = 257;
                  goto LABEL_333;
                }

                if (!*v105)
                {
                  break;
                }

                v105 += v106 + 1;
                if (&v105[-v104] >= 256)
                {
                  goto LABEL_320;
                }
              }

              v107 = (v105 - v104 + 1);
            }

            else
            {
              v107 = 0;
            }

LABEL_333:
            v110 = *(v56 + 36);
            GetRRDisplayString_rdb((v56 + 32), (*(v56 + 72) + 4), word_1001789D0);
            *buf = 141559299;
            *&buf[4] = 1752392040;
            *&buf[12] = 1040;
            *&buf[14] = v107;
            v114 = 2101;
            *v115 = v104;
            *&v115[8] = 1024;
            *&v115[10] = v110;
            *&v115[14] = 2160;
            *&v115[16] = 1752392040;
            *&v115[24] = 2085;
            *&v115[26] = word_1001789D0;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "xD2DRemoveFromCache: removing record from cache - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, auth record: %{sensitive, mask.hash}s", buf, 0x36u);
          }
        }

        mDNS_Deregister(mDNSStorage, (v56 + 24));
        goto LABEL_242;
      }

LABEL_226:
      v77 = mDNSLogCategory_D2D;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v78 = *v112;
        if (mDNSLogCategory_D2D != mDNSLogCategory_State)
        {
          v77 = mDNSLogCategory_D2D_redacted;
          if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
          {
            v79 = *(v78 + 64);
            if (v79)
            {
              v80 = *(v78 + 64);
              while (1)
              {
                if (!v80 || (v81 = *v80, v81 > 0x3F))
                {
LABEL_235:
                  v82 = 257;
                  goto LABEL_298;
                }

                if (!*v80)
                {
                  break;
                }

                v80 += v81 + 1;
                if (&v80[-v79] >= 256)
                {
                  goto LABEL_235;
                }
              }

              v82 = (v80 - v79 + 1);
            }

            else
            {
              v82 = 0;
            }

LABEL_298:
            v97 = *(v78 + 36);
            GetRRDisplayString_rdb((v78 + 32), (*(v78 + 72) + 4), word_1001789D0);
            *buf = 141559299;
            *&buf[4] = 1752392040;
            *&buf[12] = 1040;
            *&buf[14] = v82;
            v114 = 2101;
            *v115 = v79;
            *&v115[8] = 1024;
            *&v115[10] = v97;
            *&v115[14] = 2160;
            *&v115[16] = 1752392040;
            *&v115[24] = 2085;
            *&v115[26] = word_1001789D0;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "xD2DFindInList: Could not find in D2DRecords - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, auth record: %{sensitive, mask.hash}s", buf, 0x36u);
LABEL_299:
            v83 = v78;
LABEL_306:
            free(v83);
            goto LABEL_242;
          }

          goto LABEL_272;
        }
      }

      else
      {
        v78 = *v112;
      }

      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        v79 = *(v78 + 64);
        if (v79)
        {
          v88 = *(v78 + 64);
          while (1)
          {
            if (!v88 || (v89 = *v88, v89 > 0x3F))
            {
LABEL_271:
              v82 = 257;
              goto LABEL_298;
            }

            if (!*v88)
            {
              break;
            }

            v88 += v89 + 1;
            if (&v88[-v79] >= 256)
            {
              goto LABEL_271;
            }
          }

          v82 = (v88 - v79 + 1);
        }

        else
        {
          v82 = 0;
        }

        goto LABEL_298;
      }

LABEL_272:
      if (!v78)
      {
        goto LABEL_242;
      }

      goto LABEL_299;
    }

    v62 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_242;
      }

      *buf = 0;
      v28 = "xD2DFindInList: NULL Byte * passed in or length == 0";
    }

    else
    {
      v62 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_242;
      }

      *buf = 0;
      v28 = "xD2DFindInList: NULL Byte * passed in or length == 0";
    }

    goto LABEL_198;
  }

  if (a1 != 2)
  {
    goto LABEL_242;
  }

  v25 = mDNSLogCategory_D2D;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v26 = mDNSLogCategory_D2D == mDNSLogCategory_State;
  }

  else
  {
    v26 = 1;
  }

  v27 = v26;
  if (!a2)
  {
    if (v27)
    {
      if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *buf = 134217984;
      *&buf[4] = a3;
    }

    else
    {
      v25 = mDNSLogCategory_D2D_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *buf = 134217984;
      *&buf[4] = a3;
    }

    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "xD2DServiceResolved: Starting up PAN connection - instanceHandle: %p", buf, 0xCu);
LABEL_164:
    if (&_D2DRetain)
    {
      D2DRetain();
    }

    goto LABEL_242;
  }

  if (!v27)
  {
    v32 = mDNSLogCategory_D2D_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_242;
    }

    *buf = 67109120;
    *&buf[4] = a2;
    v28 = "xD2DServiceResolved: Unexpected result - result: %u";
    goto LABEL_158;
  }

  if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    v28 = "xD2DServiceResolved: Unexpected result - result: %u";
    v29 = buf;
    v30 = v25;
LABEL_240:
    v60 = OS_LOG_TYPE_ERROR;
    v61 = 8;
    goto LABEL_241;
  }

LABEL_242:
  KQueueUnlock("xD2DServiceCallback");
}