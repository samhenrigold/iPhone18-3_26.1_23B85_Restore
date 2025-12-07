uint64_t IsResponseMDNSEquivalent(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2 != &_mdns_querier_kind)
  {
    if (v2 == &_mdns_subscriber_kind && a2 != 0)
    {
      return (*(a2 + 276) >> 14) & 1;
    }

    return 1;
  }

  return 0;
}

_BYTE *DomainNamePtrAtTSRIndex(unsigned __int16 *a1, unint64_t a2, unsigned int a3)
{
  v6 = a1[3];
  if (v6 >= a3)
  {
    Answers = LocateAnswers(a1, a2);
    LOWORD(v6) = 0;
    if (!Answers)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v7 = a1[4];
  if (v7 + v6 >= a3)
  {
    Answers = LocateAuthorities(a1, a2);
    if (!Answers)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v7 + v6 + a1[5] < a3)
  {
    Answers = 0;
    goto LABEL_13;
  }

  Answers = LocateAdditionals(a1, a2);
  LOWORD(v6) = v7 + v6;
  if (Answers)
  {
LABEL_10:
    while (a3 > v6)
    {
      Answers = skipResourceRecord(a1, Answers, a2);
      if (!Answers)
      {
        break;
      }

      LOWORD(v6) = v6 + 1;
    }
  }

LABEL_13:
  if (Answers >= a2)
  {
    return 0;
  }

  else
  {
    return Answers;
  }
}

char *UnsafeBufferPointer(unint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  memset(__src, 0, sizeof(__src));
  if (!getDomainName(a1, a2, a3, __src))
  {
    v9 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        v10 = *(a4 + 4);
        v11 = *(a4 + 8);
        v12 = *(a4 + 12);
        v15[0] = 67109632;
        v15[1] = v10;
        v16 = 1024;
        v17 = v11;
        v18 = 1024;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TSRDataRecCreate: Bad RR domain name for TSR - tsrTime %d tsrHost %x recIndex %u", v15, 0x14u);
      }
    }

    else
    {
      v9 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x118uLL, 0xD0BE6688uLL);
  if (result)
  {
    v6 = result;
    v7 = __src;
    do
    {
      if (!v7)
      {
        break;
      }

      v8 = *v7;
      if (v8 > 0x3F)
      {
        break;
      }

      if (!*v7)
      {
        v13 = v7 - __src + 1;
        if (v13 <= 0x100u)
        {
          memcpy(result + 20, __src, v13);
          goto LABEL_19;
        }

        break;
      }

      v7 += v8 + 1;
    }

    while (v7 - __src <= 255);
    result[20] = 0;
LABEL_19:
    v14 = *(a4 + 4);
    *(v6 + 4) = *(a4 + 12);
    *(v6 + 1) = v14;
    return v6;
  }

  __break(1u);
  return result;
}

BOOL PacketRRMatchesSignature(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PacketRRMatchesSignature ERROR: pktrr is NULL");
    return 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a2 + 32);
    if (v5 && v4 != v5)
    {
      return 0;
    }
  }

  if (((*(a2 + 8) & 0x32) == 0 || *(a2 + 126)) && *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(a2 + 32) || (result = mDNSPlatformValidRecordForInterface(a2, v4), result))
  {
    if (*(a1 + 14) == *(a2 + 14) && *(a1 + 24) == *(a2 + 24))
    {
      return SameDomainNameBytes(*(a1 + 40), *(a2 + 40)) != 0;
    }

    return 0;
  }

  return result;
}

BOOL SameNameCacheRecordsMatchInSourceTypeClass(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 != *(a2 + 32))
  {
    return 0;
  }

  if (!v2)
  {
    v4 = *(a1 + 56);
    v5 = *(a2 + 56);
    if (v4)
    {
      v4 = *(v4 + 24);
    }

    if (v5)
    {
      v5 = *(v5 + 24);
    }

    if (v4 != v5)
    {
      return 0;
    }
  }

  return *(a1 + 12) == *(a2 + 12) && *(a1 + 14) == *(a2 + 14);
}

uint64_t RecordInTheRRSet(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 4);
  covered_type = resource_record_as_rrsig_get_covered_type(a1);
  v7 = v4 == v5 || covered_type == v4;
  if (!v7 || *(a2 + 2) != *(a1 + 16))
  {
    return 0;
  }

  v8 = *a2;
  v9 = *(a1 + 32);

  return SameDomainNameBytes(v8, v9);
}

void mDNSCoreReceiveUpdate(uint64_t a1, unsigned __int8 *a2, unint64_t a3, __int128 *a4, unsigned int a5, unsigned int *a6, unsigned int a7, const void *a8)
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v12 = a4;
  v120 = 0uLL;
  v121 = 0;
  if (mDNS_LoggingEnabled == 1)
  {
    v16 = bswap32(a5) >> 16;
    v17 = bswap32(a7) >> 16;
    v18 = "s,";
    v19 = *(a2 + 2);
    if (v19 == 1)
    {
      v20 = ", ";
    }

    else
    {
      v20 = "s,";
    }

    v21 = *(a2 + 3);
    if (v21 == 1)
    {
      v18 = ", ";
    }

    v22 = "ies,";
    v23 = *(a2 + 4);
    if (v23 == 1)
    {
      v22 = "y,  ";
    }

    v24 = *(a2 + 5);
    v25 = "s";
    if (v24 == 1)
    {
      v25 = " ";
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Received Update from %#-15a:%-5d to %#-15a:%-5d on 0x%p with %2d Question%s %2d Answer%s %2d Authorit%s %2d Additional%s %d bytes", *&a4, v16, *&a6, v17, a8, v19, v20, v21, v18, v23, v22, v24, v25, a3 - a2 - 12);
  }

  v119 = a3;
  if (v8)
  {
    v26 = *(a1 + 15120);
    if (v26)
    {
      bzero(v122, 0x498uLL);
      if (*v26 == v9)
      {
        v27 = (a1 + 37920);
        if (mDNS_PacketLoggingEnabled == 1)
        {
          DumpPacket(0, 0, "UDP", v12, v11, a6, v9, a2, v119, v8);
        }

        v28 = (a1 + 28972);
        v29 = v119;
        OptRR = LocateOptRR(a2, v119, 0x14u);
        if (OptRR)
        {
          v31 = a1 + 28960;
          if (GetLargeResourceRecord(a1, a2, OptRR, v119, 0, 128, a1 + 37912) && *v27 != 240 && *(a1 + 37924) == 41 && (v32 = (*(a1 + 37960) + 4), v33 = (v32 + *(a1 + 37932)), v32 < v33))
          {
            v34 = 0;
            do
            {
              v35 = *v32;
              if (v35 == 4)
              {
                if (!*(v32 + 4))
                {
                  v36 = *(v32 + 2);
                  v121 = *(v32 + 5);
                  v120 = v36;
                }
              }

              else if (v35 == 2)
              {
                v34 = *(v32 + 1);
              }

              v32 += 12;
            }

            while (v32 < v33);
          }

          else
          {
            v34 = 0;
          }

          *v27 = 0;
          *(a1 + 38022) = 0;
          v37 = *(a1 + 37976);
          if (v37)
          {
            ref_count_obj_release(v37);
            *(a1 + 37976) = 0;
          }
        }

        else
        {
          v34 = 0;
          v31 = a1 + 28960;
        }

        *v31 = *a2;
        *(v31 + 2) = 168;
        *(v31 + 4) = 0;
        if (v34 && *(&v120 + 2))
        {
          v38 = *(a1 + 19888);
          v39 = *(a2 + 4);
          if (v38 + v39 < 10001)
          {
            v113 = v11;
            v114 = *&v12;
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Received Update for H-MAC %.6a I-MAC %.6a Password %.6a seq %d", COERCE_DOUBLE((&v120 + 2)), COERCE_DOUBLE((&v120 + 8)), COERCE_DOUBLE(&v120 | 0xE), SBYTE1(v120));
            }

            if (v34 >= 0x15180)
            {
              v45 = 86400;
            }

            else
            {
              v45 = v34;
            }

            v112 = v45;
            Authorities = LocateAuthorities(a2, v119);
            ClearKeepaliveProxyRecords(a1, &v120, *(a1 + 12624), v8);
            ClearKeepaliveProxyRecords(a1, &v120, *(a1 + 12616), v8);
            if (*(a2 + 4) && Authorities && Authorities < v119)
            {
              v47 = 0;
              v115 = (a1 + 47032);
              v116 = v8;
              v117 = 1000 * v112;
              do
              {
                Authorities = GetLargeResourceRecord(a1, a2, Authorities, v29, v8, 160, a1 + 37912);
                if (Authorities && *v27 != 240)
                {
                  v48 = *(a1 + 37924);
                  switch(v48)
                  {
                    case 6:
                      v49 = 532;
                      break;
                    case 26:
                      v49 = 514;
                      break;
                    case 17:
                      v49 = 512;
                      break;
                    default:
                      v49 = *(a1 + 37932);
                      break;
                  }

                  v50 = malloc_type_calloc(1uLL, v49 + 912, 0xAF4C32F7uLL);
                  if (!v50)
                  {
                    __break(1u);
                    return;
                  }

                  v51 = v50;
                  if ((*v27 & 0x10) != 0)
                  {
                    v52 = 2;
                  }

                  else
                  {
                    v52 = 8;
                  }

                  v118 = v52;
                  *(a1 + 37926) &= ~0x8000u;
                  if (*(a1 + 37924) != 10 || ((v53 = *(a1 + 37952), *v53) ? (v54 = *v53 + 1) : (v54 = 0), !SameDomainLabelPointer(&v53[v54], "\n_keepalive")))
                  {
                    ClearIdenticalProxyRecords(a1, &v120, *(a1 + 12624));
                    ClearIdenticalProxyRecords(a1, &v120, *(a1 + 12616));
                  }

                  mDNS_SetupResourceRecord(v51, 0, v8, *(a1 + 37924), *(a1 + 37928), v118, 0, SPSRecordCallback, v51);
                  v55 = *(a1 + 37952);
                  v56 = v55;
                  do
                  {
                    if (!v56)
                    {
                      break;
                    }

                    v57 = *v56;
                    if (v57 > 0x3F)
                    {
                      break;
                    }

                    if (!*v56)
                    {
                      v58 = v56 - v55 + 1;
                      if (v58 <= 0x100u)
                      {
                        memcpy((v51 + 652), v55, v58);
                        goto LABEL_86;
                      }

                      break;
                    }

                    v56 += v57 + 1;
                  }

                  while (v56 - v55 <= 255);
                  *(v51 + 652) = 0;
LABEL_86:
                  *(v51 + 20) = GetRDLength(a1 + 37920, 0);
                  v59 = *(v51 + 48);
                  *v59 = v49;
                  memcpy(v59 + 2, (*(a1 + 37960) + 4), v49);
                  *(v51 + 122) = 1;
                  *(v51 + 140) = v121;
                  *(v51 + 124) = v120;
                  if (*(a1 + 37924) == 12)
                  {
                    v60 = *(a1 + 37952);
                    v61 = *v60;
                    if (*v60)
                    {
                      v62 = 0;
                      v63 = -1;
                      v64 = *(a1 + 37952);
                      do
                      {
                        v65 = v62;
                        v66 = v64 + v61;
                        v67 = *(v66 + 1);
                        v64 = v66 + 1;
                        v61 = v67;
                        ++v63;
                        ++v62;
                      }

                      while (v67);
                      if (v63 - 1 >= 0)
                      {
                        if (v63 != 1)
                        {
                          do
                          {
                            if (!*v60)
                            {
                              break;
                            }

                            v60 += *v60 + 1;
                            --v65;
                          }

                          while (v65 > 1);
                        }

                        if (SameDomainNameBytes(v60, "\ain-addr\x04arpa"))
                        {
                          v68 = *(a1 + 37952);
                          v69 = *v68;
                          if (!*v68)
                          {
                            goto LABEL_119;
                          }

                          v70 = -1;
                          v71 = -2;
                          v72 = -3;
                          v73 = -4;
                          v74 = *(a1 + 37952);
                          do
                          {
                            v75 = v70;
                            v76 = v71;
                            v77 = v72;
                            v78 = v73;
                            v79 = v74 + v69;
                            v80 = *(v79 + 1);
                            v74 = v79 + 1;
                            v69 = v80;
                            ++v70;
                            ++v71;
                            ++v72;
                            ++v73;
                          }

                          while (v80);
                          if (v70 - 5 >= 0)
                          {
                            v81 = *(a1 + 37952);
                            if (v70 - 2 >= 1)
                            {
                              v81 = *(a1 + 37952);
                              do
                              {
                                if (!*v81)
                                {
                                  break;
                                }

                                v81 += *v81 + 1;
                                --v75;
                              }

                              while (v75 > 1);
                            }

                            v111 = *(a1 + 37952);
                            if (!GetLabelDecimalValue(v81, (v51 + 148)))
                            {
                              v82 = v111;
                              if (v70 - 3 >= 1)
                              {
                                v82 = v111;
                                do
                                {
                                  if (!*v82)
                                  {
                                    break;
                                  }

                                  v82 += *v82 + 1;
                                  --v76;
                                }

                                while (v76 > 1);
                              }

                              if (!GetLabelDecimalValue(v82, (v51 + 149)))
                              {
                                v83 = v111;
                                if (v70 - 4 >= 1)
                                {
                                  v83 = v111;
                                  do
                                  {
                                    if (!*v83)
                                    {
                                      break;
                                    }

                                    v83 += *v83 + 1;
                                    --v77;
                                  }

                                  while (v77 > 1);
                                }

                                if (!GetLabelDecimalValue(v83, (v51 + 150)))
                                {
                                  if (v70 == 5)
                                  {
                                    v84 = v111;
                                  }

                                  else
                                  {
                                    v84 = v111;
                                    do
                                    {
                                      if (!*v84)
                                      {
                                        break;
                                      }

                                      v84 += *v84 + 1;
                                      --v78;
                                    }

                                    while (v78 > 1);
                                  }

                                  if (!GetLabelDecimalValue(v84, (v51 + 151)))
                                  {
                                    v101 = 4;
LABEL_147:
                                    *(v51 + 144) = v101;
                                  }
                                }
                              }
                            }
                          }

                          else
                          {
LABEL_119:
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetIPFromName: Need six labels in IPv4 reverse mapping name %##s", *(a1 + 37952));
                          }
                        }

                        else if (SameDomainNameBytes(v60, "\x03ip6\x04arpa"))
                        {
                          v85 = *(a1 + 37952);
                          v86 = *v85;
                          if (!*v85)
                          {
                            goto LABEL_148;
                          }

                          v87 = -1;
                          v88 = -32;
                          v89 = *(a1 + 37952);
                          do
                          {
                            v90 = v88;
                            v91 = v89 + v86;
                            v92 = *(v91 + 1);
                            v89 = v91 + 1;
                            v86 = v92;
                            ++v87;
                            ++v88;
                          }

                          while (v92);
                          if (v87 - 33 >= 0)
                          {
                            if (v87 != 33)
                            {
                              do
                              {
                                if (!*v85)
                                {
                                  break;
                                }

                                v85 += *v85 + 1;
                                --v90;
                              }

                              while (v90 > 1);
                            }

                            v93 = 0;
                            while (*v85 == 1)
                            {
                              v94 = v85[1];
                              v95 = v94 - 48;
                              v96 = v94 - 65;
                              if ((v94 - 97) >= 6)
                              {
                                v97 = -1;
                              }

                              else
                              {
                                v97 = v94 - 87;
                              }

                              v98 = v94 - 55;
                              if (v96 > 5)
                              {
                                v98 = v97;
                              }

                              if (v95 <= 9)
                              {
                                v98 = v95;
                              }

                              if (v85[2] != 1)
                              {
                                break;
                              }

                              v99 = v85[3];
                              if ((v99 - 48) >= 0xA)
                              {
                                if ((v99 - 65) >= 6)
                                {
                                  if ((v99 - 97) > 5)
                                  {
                                    break;
                                  }

                                  v100 = -87;
                                }

                                else
                                {
                                  v100 = -55;
                                }
                              }

                              else
                              {
                                v100 = -48;
                              }

                              if ((v98 & 0x80000000) != 0)
                              {
                                break;
                              }

                              *(v51 + 163 + v93--) = v98 | (16 * (v100 + v99));
                              v85 += 4;
                              if (v93 == -16)
                              {
                                v101 = 6;
                                goto LABEL_147;
                              }
                            }
                          }

                          else
                          {
LABEL_148:
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetIPFromName: Need 34 labels in IPv6 reverse mapping name %##s", *(a1 + 37952));
                          }
                        }
                      }
                    }

                    v8 = v116;
                    v29 = v119;
                    if (*(v51 + 144))
                    {
                      v102 = *(a1 + 15112);
                      if (v102)
                      {
                        v103 = v102 == v116;
                      }

                      else
                      {
                        v103 = 1;
                      }

                      if (!v103)
                      {
                        mDNSPlatformUpdateProxyList(v102);
                      }

                      *(a1 + 15112) = v116;
                    }
                  }

                  v104 = *(a1 + 64);
                  *(v51 + 164) = v104;
                  *(v51 + 168) = v117 + v104;
                  if (*(a1 + 108) - (v117 + v104) >= 1)
                  {
                    *(a1 + 108) = v117 + v104;
                  }

                  *(v51 + 176) = 0;
                  mDNS_Register_internal(a1, v51);
                  ++*(a1 + 19888);
                  mDNS_UpdateAllowSleep(a1);
                  if (mDNS_LoggingEnabled == 1)
                  {
                    v105 = mDNSLogCategory_Default;
                    v106 = *(a1 + 19888);
                    GetRRDisplayString_rdb((v51 + 8), (*(v51 + 48) + 4), v115);
                    v110 = v106;
                    v29 = v119;
                    LogMsgWithLevel(v105, OS_LOG_TYPE_DEFAULT, "SPS Registered %4d %X %s", v110, v118, v115);
                  }
                }

                *v27 = 0;
                *(a1 + 38022) = 0;
                v107 = *(a1 + 37976);
                if (v107)
                {
                  ref_count_obj_release(v107);
                  *(a1 + 37976) = 0;
                }
              }

              while (++v47 < *(a2 + 4) && Authorities != 0 && Authorities < v29);
            }

            v31 = a1 + 28960;
            if ((*(a1 + 28963) & 0xF) != 0)
            {
              LOWORD(v11) = v113;
              v12 = *&v114;
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Refusing sleep proxy registration from %#a:%d: Out of memory", v114, bswap32(v113) >> 16);
              ClearProxyRecords(a1, &v120, *(a1 + 12624));
              ClearProxyRecords(a1, &v120, *(a1 + 12616));
              v28 = (a1 + 28972);
            }

            else
            {
              v123[0] = 32;
              v128 = 0;
              v129 = v163;
              v124 = 41;
              v164[0] = 264;
              v130 = v164;
              v131 = 0;
              v139 = 0;
              v140 = 0;
              v141 = 0;
              v142 = 0;
              v143 = 0;
              v132 = 0u;
              v133 = 0u;
              v134 = 0u;
              v135 = 0u;
              v136 = 0u;
              v137 = 0u;
              v138 = 0;
              v144 = v163;
              v159 = 0;
              v160 = 0;
              v162 = 0;
              v161 = 0u;
              v158 = 0;
              v163[0] = 0;
              v145 = 0u;
              v146 = 0u;
              v147 = 0u;
              v148 = 0u;
              v149 = 0u;
              v150 = 0u;
              v151 = 0u;
              v152 = 0u;
              v153 = 0u;
              v154 = 0u;
              v155 = 0u;
              v156 = 0u;
              memset(v157, 0, sizeof(v157));
              v125 = 1440;
              v126 = 4500;
              v127 = 1572888;
              v164[2] = 2;
              v165 = v112;
              v28 = PutResourceRecordTTLWithLimit(a1 + 28960, (a1 + 28972), (a1 + 28970), v123, 4500, a1 + 37912);
              LOWORD(v11) = v113;
              v12 = *&v114;
              if (!v28)
              {
LABEL_178:
                mDNS_SendKeepalives(a1);
                return;
              }
            }
          }

          else
          {
            v40 = 5;
            if (mDNSCoreReceiveUpdate_msgs_264 <= 99)
            {
              ++mDNSCoreReceiveUpdate_msgs_264;
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Refusing sleep proxy registration from %#a:%d: Too many records %d + %d = %d > %d", *&v12, bswap32(v11) >> 16, v38, v39, v38 + v39, 10000);
              v40 = *(v31 + 3) | 5;
            }

            *(v31 + 3) = v40;
          }
        }

        else
        {
          if (mDNSCoreReceiveUpdate_msgs > 99)
          {
            v44 = 1;
          }

          else
          {
            ++mDNSCoreReceiveUpdate_msgs;
            v41 = bswap32(v11) >> 16;
            v42 = " No lease";
            if (v34)
            {
              v42 = "";
            }

            if (*(&v120 + 2))
            {
              v43 = "";
            }

            else
            {
              v43 = " No owner";
            }

            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Refusing sleep proxy registration from %#a:%d:%s%s", *&v12, v41, v42, v43);
            v44 = *(v31 + 3) | 1;
          }

          *(v31 + 3) = v44;
        }

        mDNSSendDNSMessage(a1, v31, v28, v8, 0, *(a1 + 15120), v12, v11, 0, 0);
        goto LABEL_178;
      }
    }
  }
}

void mDNSCoreReceiveUpdateR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = v8;
  if (v12)
  {
    v14 = v12;
    v15 = v9;
    v61 = v11;
    v69 = 0;
    PktLease = GetPktLease(v8, v9, v10, &v69);
    if (PktLease)
    {
      v17 = v69;
    }

    else
    {
      v17 = 3600;
    }

    v63 = v17;
    if (PktLease && mDNS_LoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DNS Update response contains lease option granting %4d seconds, updateid %d, InterfaceID %p", v69, bswap32(*v15) >> 16, v14);
    }

    v18 = *(v13 + 12640);
    if (v18)
    {
      v19 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v18 + 8), (*(v18 + 48) + 4), (v13 + 47032));
      LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveUpdateR ERROR m->CurrentRecord already set %s", (v13 + 47032));
    }

    v20 = *(v13 + 12616);
    *(v13 + 12640) = v20;
    if (v20)
    {
      v21 = 0;
      v62 = (v13 + 47032);
      do
      {
        v22 = *(v20 + 32);
        if (v22 == v14 || !v22 && (*(v20 + 122) || IsLocalDomain(*(v20 + 40))))
        {
          v23 = *(v20 + 358);
          if (v23 == *v15)
          {
            if ((v14 + 5 > 3 || v14 == -4) && v14 <= 0x3F)
            {
              *(v20 + 4 * ((v14 >> 5) & 1) + 360) &= ~(1 << v14);
            }

            v24 = *(v20 + 360);
            v25 = *(v20 + 364);
            if (!*(v20 + 360))
            {
              v23 = 0;
              *(v20 + 358) = 0;
            }

            v26 = 1000 * v63 + *(v13 + 64);
            if (v26 <= 1)
            {
              v26 = 1;
            }

            *(v20 + 352) = v26;
            ++v21;
            if (mDNS_LoggingEnabled == 1)
            {
              v27 = "transferred";
              if (!*(v20 + 126))
              {
                v27 = "registered";
              }

              v64 = v27;
              cfa = mDNSLogCategory_Default;
              v28 = __rev16(v23);
              GetRRDisplayString_rdb((v20 + 8), (*(v20 + 48) + 4), v62);
              LogMsgWithLevel(cfa, OS_LOG_TYPE_DEFAULT, "Sleep Proxy %s record %2d %5d 0x%x 0x%x (%d) %s", v64, v21, v63, v25, v24, v28, v62);
            }

            if (*(v20 + 126))
            {
              *(v20 + 130) = 0;
              *(v20 + 126) = 0;
              *(v20 + 192) = 0;
              mDNS_Deregister_internal(v13, v20, 0);
            }
          }
        }

        v29 = *(v13 + 12640);
        if (v29 == v20)
        {
          v29 = *v20;
          *(v13 + 12640) = *v20;
        }

        v20 = v29;
      }

      while (v29);
      if (v21)
      {
        memset(v68, 0, sizeof(v68));
        bzero(bytes, 0x22F8uLL);
        v30 = v13 + 12656;
        v31 = (v13 + 12656);
        while (1)
        {
          v31 = *v31;
          if (!v31)
          {
            break;
          }

          v32 = v31;
          if (v31[444] == v14)
          {
            goto LABEL_41;
          }
        }

        v32 = 0;
LABEL_41:
        v33 = v32 + 3606;
        if (v31)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        *v68 = *v61;
        *&v68[16] = *(v61 + 16);
        v35 = *v68;
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformStoreSPSMACAddr : Storing %#a on interface %s", COERCE_DOUBLE(v68), v34);
        }

        if (v35 == 4)
        {
          v36 = 2;
        }

        else
        {
          v36 = 30;
        }

        v115 = *&v68[4];
        v71 = 0;
        v70 = 0;
        memset(v75, 0, 46);
        v37 = SCDynamicStoreCreate(0, @"mDNSResponder:StoreSPSMACAddress", 0, 0);
        v38 = SCDynamicStoreCreate(0, @"mDNSResponder:GetIPv6Addresses", 0, 0);
        v39 = v38;
        v65 = v34;
        if (!v37 || !v38)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "StoreSPSMACAddressinternal: Unable to accesss SC Dynamic Store");
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          cf = 0;
          v44 = 0;
          if (!v37)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        v71 = 0;
        v70 = 0;
        if (GetRemoteMacinternal(v36, &v115, &v70))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "StoreSPSMACAddressinternal: Failed to determine the MAC address");
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          cf = 0;
LABEL_68:
          v44 = 0;
LABEL_69:
          CFRelease(v37);
LABEL_70:
          if (v39)
          {
            CFRelease(v39);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v43)
          {
            CFRelease(v43);
          }

          if (v41)
          {
            CFRelease(v41);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if ((v44 & 1) == 0)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSStoreSPSMACAddress : failed");
          }

          *bytes = 8650752;
          v73 = 0;
          bzero(v75, 0x498uLL);
          v75[8] = 32;
          *&v75[12] = 94371881;
          v105 = 264;
          *&v75[40] = v104;
          v76 = &v105;
          v84 = 0;
          v85 = 0;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0;
          v86 = v104;
          v100 = 0;
          v101 = 0;
          v103 = 0;
          v102 = 0;
          v104[0] = 0;
          v87 = 0u;
          v88 = 0u;
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
          memset(v99, 0, sizeof(v99));
          *&v75[16] = 0x18001800001194;
          do
          {
            v30 = *v30;
          }

          while (v30 && *(v30 + 3552) != v14);
          v107 = 0;
          v108 = *(v13 + 142);
          v109 = *(v13 + 24);
          v110 = *(v13 + 28);
          v111 = *(v30 + 3600);
          v112 = *(v30 + 3604);
          v113 = 0;
          v114 = 0;
          v106[0] = 4;
          if (*(v13 + 24) == *(v30 + 3600))
          {
            v51 = 14;
            if (*(v13 + 26) == *(v30 + 3602))
            {
              if (*(v13 + 28) == *(v30 + 3604))
              {
                v51 = 8;
              }

              else
              {
                v51 = 14;
              }
            }
          }

          else
          {
            v51 = 14;
          }

          v106[1] = v51;
          if (mDNS_LoggingEnabled == 1)
          {
            v52 = mDNSLogCategory_Default;
            GetRRDisplayString_rdb(&v75[8], v106, v62);
            LogMsgWithLevel(v52, OS_LOG_TYPE_DEFAULT, "Generated OPT record : %s", v62);
            v53 = *&v75[16];
          }

          else
          {
            v53 = 4500;
          }

          v54 = PutResourceRecordTTLWithLimit(bytes, v74, &v73 + 3, &v75[8], v53, v75);
          if (v54)
          {
            LOWORD(v73) = bswap32(v73) >> 16;
            WORD1(v73) = bswap32(WORD1(v73)) >> 16;
            WORD2(v73) = bswap32(WORD2(v73)) >> 16;
            HIWORD(v73) = bswap32(HIWORD(v73)) >> 16;
            v55 = v54 - v74;
            if (v54 != v74)
            {
              v56 = SCDynamicStoreCreate(0, @"mDNSResponder:StoreOwnerOPTRecord", 0, 0);
              if (v56)
              {
                v57 = v56;
                v58 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%s%s", "State:/Network/Interface/", v65, "/BonjourSleepProxyOPTRecord");
                Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (Mutable)
                {
                  v60 = CFDataCreate(0, bytes, v55 + 12);
                  CFDictionarySetValue(Mutable, @"OwnerOPTRecord", v60);
                  if (v60)
                  {
                    CFRelease(v60);
                  }

                  SCDynamicStoreSetValue(v57, v58, Mutable);
                }

                else
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformStoreOwnerOptRecord: Could not create CFDictionary dictionary to store OPT Record");
                }

                CFRelease(v57);
                if (v58)
                {
                  CFRelease(v58);
                }

                if (Mutable)
                {
                  CFRelease(Mutable);
                }
              }

              else
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformStoreOwnerOptRecord: Unable to accesss SC Dynamic Store");
              }
            }
          }

          else if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSGenerateOwnerOptForInterface: Failed to generate owner OPT record");
          }

          goto LABEL_111;
        }

        cf = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%s%s", "State:/Network/Interface/", v34, "/BonjourSleepProxyAddress");
        v43 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v43)
        {
          v45 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%02x:%02x:%02x:%02x:%02x:%02x", v70, BYTE1(v70), BYTE2(v70), HIBYTE(v70), v71, HIBYTE(v71));
          CFDictionarySetValue(v43, @"MACAddress", v45);
          if (v45)
          {
            CFRelease(v45);
          }

          if (inet_ntop(v36, &v115, v75, 0x2Eu))
          {
            v46 = CFStringCreateWithCString(0, v75, 0x8000100u);
            CFDictionarySetValue(v43, @"IPAddress", v46);
            if (v46)
            {
              CFRelease(v46);
            }

            v42 = CFStringCreateWithFormat(0, 0, @"State:/Network/Interface/%s/IPv6", v65);
            if (v42)
            {
              v47 = SCDynamicStoreCopyValue(v39, v42);
              v41 = v47;
              if (v47)
              {
                Value = CFDictionaryGetValue(v47, @"Addresses");
                if (Value)
                {
                  v40 = CFRetain(Value);
                  CFDictionarySetValue(v43, @"RegisteredAddresses", v40);
LABEL_116:
                  SCDynamicStoreSetValue(v37, cf, v43);
                  v44 = 1;
                  goto LABEL_69;
                }
              }
            }

            else
            {
              v41 = 0;
            }

            v40 = 0;
            goto LABEL_116;
          }

          v49 = mDNSLogCategory_Default;
          v50 = __error();
          strerror(*v50);
          LogMsgWithLevel(v49, OS_LOG_TYPE_DEFAULT, "StoreSPSMACAddressinternal: inet_ntop failed: %s");
        }

        else
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "StoreSPSMACAddressinternal: SPSCreateDict() Could not create CFDictionary dict");
        }

        v40 = 0;
        v41 = 0;
        v42 = 0;
        goto LABEL_68;
      }
    }
  }

LABEL_111:
  if (*(v13 + 152))
  {
    *(v13 + 180) = *(v13 + 64);
  }
}

void ClearKeepaliveProxyRecords(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(a1 + 12640);
  v9 = &unk_100178000;
  if (v8)
  {
    v10 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v8 + 8), (*(v8 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v10, OS_LOG_TYPE_DEFAULT, "ClearKeepaliveProxyRecords ERROR m->CurrentRecord already set %s", (a1 + 47032));
  }

  *(a1 + 12640) = a3;
  if (a3)
  {
    p_opt_inst_meths = &OBJC_PROTOCOL___NSURLSessionDelegate.opt_inst_meths;
    do
    {
      if (a3[4] == a4 && *(a2 + 2) == *(a3 + 63) && *(a2 + 4) == *(a3 + 64) && *(a2 + 6) == *(a3 + 65) && *(a1 + 37924) == 10)
      {
        v12 = *(a1 + 37952);
        v13 = *v12 ? *v12 + 1 : 0;
        if ((p_opt_inst_meths[303])(&v12[v13], "\n_keepalive"))
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v21 = *(v9 + 434);
            v14 = p_opt_inst_meths;
            v15 = v9;
            v16 = *(a2 + 1);
            v19 = *(a1 + 19888);
            v20 = *(a3 + 125);
            GetRRDisplayString_rdb(a3 + 8, (a3[6] + 4), (a1 + 47032));
            v18 = v16;
            v9 = v15;
            p_opt_inst_meths = v14;
            LogMsgWithLevel(v21, OS_LOG_TYPE_DEFAULT, "ClearKeepaliveProxyRecords: Removing %3d H-MAC %.6a I-MAC %.6a %d %d %s", v19, COERCE_DOUBLE((a3 + 126)), COERCE_DOUBLE((a3 + 132)), v20, v18, (a1 + 47032));
          }

          DeregisterProxyRecord(a1, a3);
        }
      }

      v17 = *(a1 + 12640);
      if (v17 == a3)
      {
        v17 = *a3;
        *(a1 + 12640) = *a3;
      }

      a3 = v17;
    }

    while (v17);
  }
}

void ClearIdenticalProxyRecords(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 12640);
  if (v6)
  {
    v7 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v6 + 8), (*(v6 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "ClearIdenticalProxyRecords ERROR m->CurrentRecord already set %s", (a1 + 47032));
  }

  *(a1 + 12640) = a3;
  if (a3)
  {
    do
    {
      if (*(a1 + 37944) == a3[4] && *(a2 + 2) == *(a3 + 63) && *(a2 + 4) == *(a3 + 64) && *(a2 + 6) == *(a3 + 65) && *(a3 + 6) == *(a1 + 37936) && resource_records_have_same_dnssec_rr_category(a3[8], *(a1 + 37976)) && *(a3 + 6) == *(a1 + 37924) && *(a3 + 7) == *(a1 + 37926) && *(a3 + 10) == *(a1 + 37932) && *(a3 + 7) == *(a1 + 37940) && SameRDataBody((a3 + 1), (*(a1 + 37960) + 4), SameDomainName) && SameDomainNameBytes(a3[5], *(a1 + 37952)))
      {
        if (mDNS_LoggingEnabled == 1)
        {
          v12 = mDNSLogCategory_Default;
          v9 = *(a2 + 1);
          v10 = *(a1 + 19888);
          v11 = *(a3 + 125);
          GetRRDisplayString_rdb(a3 + 8, (a3[6] + 4), (a1 + 47032));
          LogMsgWithLevel(v12, OS_LOG_TYPE_DEFAULT, "ClearIdenticalProxyRecords: Removing %3d H-MAC %.6a I-MAC %.6a %d %d %s", v10, COERCE_DOUBLE((a3 + 126)), COERCE_DOUBLE((a3 + 132)), v11, v9, (a1 + 47032));
        }

        DeregisterProxyRecord(a1, a3);
      }

      v8 = *(a1 + 12640);
      if (v8 == a3)
      {
        v8 = *a3;
        *(a1 + 12640) = *a3;
      }

      a3 = v8;
    }

    while (v8);
  }
}

uint64_t GetLabelDecimalValue(unsigned __int8 *a1, _BYTE *a2)
{
  result = 4294901747;
  v4 = *a1;
  if ((v4 - 4) >= 0xFFFFFFFD)
  {
    v5 = 0;
    v6 = a1 + 1;
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if ((v8 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v5 = v7 + 10 * v5 - 48;
      if (!--v4)
      {
        if (v5 <= 255)
        {
          result = 0;
          *a2 = v5;
        }

        return result;
      }
    }
  }

  return result;
}

void SPSRecordCallback(char *a1, char *a2, int a3)
{
  if (a3 == -65792)
  {
    --*(a1 + 4972);
    if (!a2)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (!a3)
  {
    return;
  }

  v6 = mDNSLogCategory_SPS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v7 = mDNSLogCategory_SPS == mDNSLogCategory_State;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = mDNSLogCategory_SPS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
  {
LABEL_11:
    GetRRDisplayString_rdb(a2 + 8, (*(a2 + 6) + 4), a1 + 47032);
    v15 = 67109635;
    *v16 = a3;
    *&v16[4] = 2160;
    *&v16[6] = 1752392040;
    *&v16[14] = 2085;
    *&v16[16] = a1 + 47032;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SPS Callback %d %{sensitive, mask.hash}s", &v15, 0x1Cu);
  }

LABEL_12:
  if (a3 != -65548)
  {
    return;
  }

  mDNS_Lock_(a1, "SPSRecordCallback", 13145);
  v9 = mDNSLogCategory_SPS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (a1 + 12656);
      while (1)
      {
        v12 = *v12;
        if (!v12)
        {
          break;
        }

        v13 = v12;
        if (*(v12 + 444) == *(a2 + 4))
        {
          goto LABEL_28;
        }
      }

      v13 = 0;
LABEL_28:
      if (v12)
      {
        v14 = v13 + 3606;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v9 = mDNSLogCategory_SPS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a1 + 12656);
      while (1)
      {
        v10 = *v10;
        if (!v10)
        {
          break;
        }

        v11 = v10;
        if (*(v10 + 444) == *(a2 + 4))
        {
          goto LABEL_32;
        }
      }

      v11 = 0;
LABEL_32:
      if (v10)
      {
        v14 = v11 + 3606;
      }

      else
      {
        v14 = 0;
      }

LABEL_35:
      GetRRDisplayString_rdb(a2 + 8, (*(a2 + 6) + 4), a1 + 47032);
      v15 = 136447491;
      *v16 = v14;
      *&v16[8] = 2160;
      *&v16[10] = 1752392040;
      *&v16[18] = 1045;
      *&v16[20] = 6;
      v17 = 2101;
      v18 = a2 + 126;
      v19 = 2160;
      v20 = 1752392040;
      v21 = 2085;
      v22 = (a1 + 47032);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Conflicting mDNS -- waking %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P %{sensitive, mask.hash}s", &v15, 0x3Au);
    }
  }

  if (*(a2 + 126))
  {
    SendWakeup(a1, *(a2 + 4), a2 + 132, (a2 + 138), 0);
    ScheduleWakeup(a1, *(a2 + 4), a2 + 63);
  }

  mDNS_Unlock_(a1, "SPSRecordCallback", 13153);
  --*(a1 + 4972);
LABEL_39:
  free(a2);
LABEL_40:
  mDNS_UpdateAllowSleep(a1);
}

void ScheduleWakeup(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (!*a3)
  {
    v7 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v8 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v12 = 0;
      v9 = &v12;
    }

    else
    {
      v7 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v11 = 0;
      v9 = &v11;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ScheduleWakeup ERROR: Target HMAC is zero", v9, 2u);
    return;
  }

  ScheduleWakeupForList(a1, a2, a3, *(a1 + 12624));
  v6 = *(a1 + 12616);

  ScheduleWakeupForList(a1, a2, a3, v6);
}

void ScheduleWakeupForList(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (*a3)
  {
    v5 = a4;
    *(a1 + 12640) = a4;
    if (a4)
    {
      do
      {
        if (*(v5 + 32) != a2 || *(v5 + 8) == 1 || *(v5 + 126) != *a3 || *(v5 + 128) != a3[1] || *(v5 + 130) != a3[2])
        {
          goto LABEL_11;
        }

        if (mDNS_LoggingEnabled == 1)
        {
          v9 = mDNSLogCategory_Default;
          GetRRDisplayString_rdb((v5 + 8), (*(v5 + 48) + 4), (a1 + 47032));
          LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "ScheduleWakeupForList: Scheduling wakeup packets for %s", (a1 + 47032));
        }

        mDNS_Deregister_internal(a1, v5, 0);
        v10 = *(a1 + 12640);
        if (v10 == v5)
        {
LABEL_11:
          v10 = *v5;
          *(a1 + 12640) = *v5;
        }

        v5 = v10;
      }

      while (v10);
    }
  }

  else
  {
    v11 = mDNSLogCategory_Default;

    LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "ScheduleWakeupForList ERROR: Target HMAC is zero", a4);
  }
}

void DeregisterProxyRecord(uint64_t a1, uint64_t a2)
{
  *(a2 + 130) = 0;
  *(a2 + 126) = 0;
  *(a2 + 192) = 0;
  mDNS_Deregister_internal(a1, a2, 0);
  v3 = *(a1 + 15112);
  if (v3 && v3 != *(a1 + 37944))
  {
    mDNSPlatformUpdateProxyList(v3);
  }

  *(a1 + 15112) = *(a1 + 37944);
}

void mDNS_StartDomainEnumeration()
{
  mDNS_Lock_(mDNSStorage, "mDNS_StartDomainEnumeration", 16322);
  v0 = qword_100170968;
  if (qword_100170968)
  {
    while (!SameDomainNameBytes(v0, "\x05local"))
    {
      v0 = *(v0 + 296);
      if (!v0)
      {
        goto LABEL_9;
      }
    }

    v1 = *(v0 + 272);
    if (!v1)
    {
      v1 = malloc_type_calloc(1uLL, 0x2D0uLL, 0xAD894E89uLL);
      if (!v1)
      {
        __break(1u);
        return;
      }

      *(v0 + 272) = v1;
    }

    ++v1[177];
    mDNS_SetUpDomainEnumeration(mDNSStorage, v0, 2);
  }

LABEL_9:

  mDNS_Unlock_(mDNSStorage, "mDNS_StartDomainEnumeration", 16355);
}

uint64_t UpdateInterfaceProtocols(uint64_t result)
{
  *(result + 17) = 0;
  v1 = xmmword_100170388;
  if (xmmword_100170388)
  {
    v2 = *(result + 3552);
    do
    {
      if (v1[444] == v2)
      {
        v3 = *(v1 + 890);
        if (v3 == 6)
        {
          if (*(v1 + 3671))
          {
            *(result + 18) = 1;
          }
        }

        else if (v3 == 4)
        {
          if (*(v1 + 3671))
          {
            *(result + 17) = 1;
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

void AdjustAddressRecordSetsEx(uint64_t a1, int a2)
{
  v2 = *(a1 + 3552);
  if (AWDLInterfaceID)
  {
    v3 = AWDLInterfaceID == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = &unk_100164000;
    if (!WiFiAwareInterfaceID || WiFiAwareInterfaceID != v2)
    {
      v7 = a2 ? 2376 : 24;
      v8 = xmmword_100170388;
      FirstAddressRecord = GetFirstAddressRecordEx(xmmword_100170388, a2);
      if (v8)
      {
        v10 = FirstAddressRecord;
        do
        {
          v11 = v8[444];
          if (AWDLInterfaceID)
          {
            v12 = AWDLInterfaceID == v11;
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
            goto LABEL_38;
          }

          v13 = v4[259];
          if (v13 && v13 == v11)
          {
            goto LABEL_38;
          }

          v15 = v8 + v7;
          if (*(v8 + v7 + 96) != a1 + v7)
          {
            goto LABEL_38;
          }

          if (v10)
          {
            v16 = v10;
          }

          else
          {
            v16 = (v8 + v7);
          }

          *(v15 + 12) = v16;
          v17 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
LABEL_31:
              GetRRDisplayString_rdb(v15 + 8, (*(v15 + 6) + 4), word_1001789D0);
              *buf = 141558275;
              v21 = 1752392040;
              v22 = 2085;
              v23 = word_1001789D0;
              v4 = &unk_100164000;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Changed RRSet for %{sensitive, mask.hash}s", buf, 0x16u);
            }
          }

          else
          {
            v17 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_31;
            }
          }

          v18 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
LABEL_37:
              v19 = *(v15 + 12);
              *buf = 134217984;
              v21 = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "New RRSet:        %lx", buf, 0xCu);
            }
          }

          else
          {
            v18 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_37;
            }
          }

LABEL_38:
          v8 = *v8;
        }

        while (v8);
      }
    }
  }
}

void RestartARPProbing(char *a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 190) = 3;
  ++*(a2 + 189);
  v2 = *(a1 + 16);
  if (*(a2 + 191) == 4 && v2 - *(a2 + 284) >= 0)
  {
    InitializeLastAPTime(a1, a2);
  }

  else
  {
    *(a2 + 191) = 4;
    *(a2 + 280) = 1000;
    *(a2 + 284) = v2 + 9000;
    SetNextAnnounceProbeTime(a1, a2);
  }
}

void mDNSCoreReceiveRawTransportPacket(uint64_t a1, char *a2, _DWORD *a3, _DWORD *a4, int a5, int a6, int8x8_t *a7, int8x8_t *a8, uint64_t a9, unsigned __int16 a10)
{
  v10 = a8;
  v14 = a4;
  v16 = a1;
  v17 = a5 == 17 || a5 == 6;
  v18 = a7 + 1;
  if (!v17)
  {
    v18 = &zeroIPPort;
  }

  v19 = *v18;
  if (a5 > 16)
  {
    if (a5 != 17)
    {
      if (a5 != 58)
      {
        goto LABEL_56;
      }

      if (&a7->i8[a10] > a8)
      {
        return;
      }

      v37 = (a3 + 1);
      if (IPv6CheckSum((a3 + 1), (a4 + 1), a7, a10))
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "IPv6CheckSum bad %04X %02X%02X from %#a to %#a");
        }

        return;
      }

      v46 = v16 + 12656;
      do
      {
        v46 = *v46;
        if (!v46)
        {
          return;
        }
      }

      while (*(v46 + 3552) != a9);
      v47 = v16;
      mDNS_Lock_(v16, "mDNSCoreReceiveRawND", 18172);
      if (a7->u8[0] != 135 || (v48 = *(v16 + 12616)) == 0)
      {
LABEL_119:
        if (*a2 != *(v46 + 3600) || *(a2 + 1) != *(v46 + 3602) || *(a2 + 2) != *(v46 + 3604))
        {
          v64 = a7->u8[0] == 136 ? &a7[1] : v37;
          if (v64->i32[0] || v64->i32[1] || v64[1].i32[0] || v64[1].i32[1])
          {
            v65 = *(v47 + 12616);
            if (v65)
            {
              v66 = (v46 + 3606);
              do
              {
                if (*(v65 + 32) == a9 && *(v65 + 8) != 1 && *(v65 + 144) == 6 && *(v65 + 148) == v64->i32[0] && *(v65 + 152) == v64->i32[1] && *(v65 + 156) == v64[1].i32[0] && *(v65 + 160) == v64[1].i32[1] && *(v65 + 189) <= 0x13u)
                {
                  v113 = (v65 + 126);
                  if (*(v65 + 126) || *(v65 + 128) || *(v65 + 130))
                  {
                    RestartARPProbing(v47, v65);
                    if (*a2 == *(v65 + 132) && *(a2 + 1) == *(v65 + 134) && *(a2 + 2) == *(v65 + 136))
                    {
                      if (mDNS_LoggingEnabled == 1)
                      {
                        v114 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb((v65 + 8), (*(v65 + 48) + 4), (v47 + 47032));
                        LogMsgWithLevel(v114, OS_LOG_TYPE_DEFAULT, "%-7s NDP %s from owner %.6a %.16a for %.16a -- re-starting probing for %s");
                      }
                    }

                    else
                    {
                      v109 = mDNSLogCategory_Default;
                      GetRRDisplayString_rdb((v65 + 8), (*(v65 + 48) + 4), (v47 + 47032));
                      LogMsgWithLevel(v109, OS_LOG_TYPE_DEFAULT, "%-7s Conflicting NDP from %.6a %.16a for %.16a -- waking H-MAC %.6a I-MAC %.6a %s", v66, *&a2, *&v64, COERCE_DOUBLE(a7 + 1), *&v113, COERCE_DOUBLE(v65 + 132), (v47 + 47032));
                      ScheduleWakeup(v47, *(v65 + 32), v113);
                    }
                  }

                  else if (mDNS_LoggingEnabled == 1)
                  {
                    v110 = mDNSLogCategory_Default;
                    GetRRDisplayString_rdb((v65 + 8), (*(v65 + 48) + 4), (v47 + 47032));
                    LogMsgWithLevel(v110, OS_LOG_TYPE_DEFAULT, "%-7s NDP from %.6a %.16a for %.16a -- Invalid H-MAC %.6a I-MAC %.6a %s");
                  }
                }

                v65 = *v65;
              }

              while (v65);
            }
          }
        }

        v67 = "mDNSCoreReceiveRawND";
        v68 = v47;
        v69 = 18248;
LABEL_217:

        mDNS_Unlock_(v68, v67, v69);
        return;
      }

      v49 = (v46 + 3606);
      v50 = (v16 + 47032);
      v51 = "NDP Req from owner -- re-probing";
      v52 = &unk_10016D000;
      v53 = &unk_100178000;
      v54 = "33";
      while (1)
      {
        if (*(v48 + 32) != a9 || *(v48 + 8) == 1 || *(v48 + 144) != 6 || *(v48 + 148) != a7[1].i32[0] || *(v48 + 152) != a7[1].i32[1] || *(v48 + 156) != a7[2].i32[0] || *(v48 + 160) != a7[2].i32[1])
        {
          goto LABEL_118;
        }

        v55 = *a2;
        v105 = (v48 + 132);
        v108 = v49;
        if (v55 != *(v48 + 132) || *(a2 + 1) != *(v48 + 134) || (v56 = v51, *(a2 + 2) != *(v48 + 136)))
        {
          v56 = "Ignoring  NDP Request from      ";
          if (*(v48 + 191) != 4)
          {
            if (v55 != *(v46 + 3600) || *(a2 + 1) != *(v46 + 3602) || (v56 = "Creating Local NDP Cache entry  ", *(a2 + 2) != *(v46 + 3604)))
            {
              if (vorr_s8(*v37, *&vextq_s8(*v37->i8, *v37->i8, 8uLL)))
              {
                v56 = "Answering NDP Probe   from      ";
              }

              else
              {
                v56 = "Answering NDP Request from      ";
              }
            }
          }
        }

        v112 = v50;
        if (v52[208] == 1)
        {
          v102 = *(v53 + 434);
          GetRRDisplayString_rdb((v48 + 8), (*(v48 + 48) + 4), v50);
          LogMsgWithLevel(v102, OS_LOG_TYPE_DEFAULT, "%-7s %s %.6a %.16a for %.16a -- H-MAC %.6a I-MAC %.6a %s", v108, v56, *&a2, *&v37, COERCE_DOUBLE(a7 + 1), COERCE_DOUBLE(v48 + 126), *&v105, v112);
          v54 = "33";
          v53 = &unk_100178000;
          v52 = &unk_10016D000;
          v51 = "NDP Req from owner -- re-probing";
          v50 = v112;
        }

        if (v56 == v51)
        {
          v49 = v108;
          if (*(v48 + 189) > 0x13u)
          {
            if (v52[208] == 1)
            {
              v61 = *(v53 + 434);
              v62 = v50;
              GetRRDisplayString_rdb((v48 + 8), (*(v48 + 48) + 4), v50);
              v63 = v61;
              v49 = v108;
              LogMsgWithLevel(v63, OS_LOG_TYPE_DEFAULT, "Reached maximum number of restarts for probing - %s", v62);
              v54 = "33";
              v53 = &unk_100178000;
              v52 = &unk_10016D000;
              v51 = "NDP Req from owner -- re-probing";
              v50 = v62;
            }

            goto LABEL_118;
          }

          v58 = v51;
          RestartARPProbing(v47, v48);
          v54 = "33";
          v53 = &unk_100178000;
          v52 = &unk_10016D000;
          v51 = v58;
        }

        else
        {
          if (v56 == "Creating Local NDP Cache entry  ")
          {
            v59 = v51;
            v60 = v52;
            mDNSPlatformSetLocalAddressCacheEntry((v48 + 144), v105, a9);
LABEL_117:
            v54 = "33";
            v53 = &unk_100178000;
            v52 = v60;
            v51 = v59;
            v49 = v108;
            v50 = v112;
            goto LABEL_118;
          }

          if (v56 == "Answering NDP Request from      ")
          {
            v59 = v51;
            v60 = v52;
            SendNDP(v47, 136, 64, v48, a7 + 1, 0, v37, a2);
            goto LABEL_117;
          }

          v17 = v56 == "Answering NDP Probe   from      ";
          v49 = v108;
          if (!v17)
          {
            goto LABEL_118;
          }

          v57 = v54;
          SendNDP(v47, 136, 0, v48, a7 + 1, 0, &AllHosts_v6, v54);
          v54 = v57;
          v53 = &unk_100178000;
          v52 = &unk_10016D000;
          v51 = "NDP Req from owner -- re-probing";
        }

        v50 = v112;
LABEL_118:
        v48 = *v48;
        if (!v48)
        {
          goto LABEL_119;
        }
      }
    }

    v38 = __rev16(a7->u16[2]);
    if (v38 < 8)
    {
      return;
    }

    v39 = v38 - 8;
    if (v19 == 54028)
    {
      v43 = 0;
      if (&a7[1].i16[1] > a8 || v39 < 0x6Eu)
      {
        goto LABEL_159;
      }

      if (a7[1].i8[0] == 19)
      {
        v43 = a7[1].u8[1] == 136;
        goto LABEL_159;
      }
    }

    else
    {
      if (v19 != 37905)
      {
        v43 = 1;
        goto LABEL_159;
      }

      if (&a7[1].i8[1] > a8 || v39 != 1 || a7[1].u8[0] != 255)
      {
        if (&a7[1].u8[4] > a8 || a7[1].i8[0] || a7[1].i8[1] || a7[1].i8[2])
        {
          v40 = 0;
          v41 = 24;
        }

        else
        {
          v41 = 36;
          if (a7[1].i8[3])
          {
            v41 = 24;
            v40 = 0;
          }

          else
          {
            v40 = -4;
          }
        }

        v42 = &a7[v41];
        v43 = 1;
        if (&v42[3].u8[4] <= a8 && (v40 + v39) >= 0x1Cu && (v42[2].i8[1] & 0x10) != 0)
        {
          v44 = v42[2].u8[2];
          if (v44 == 34 || v44 == 5)
          {
            v43 = 0;
            v45 = "Ignoring";
          }

          else
          {
            v45 = "Received";
          }

          if (mDNS_LoggingEnabled != 1)
          {
            goto LABEL_163;
          }

          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s %d-byte IKE ExchangeType %d", v45, a8 - a6, v44);
        }

LABEL_159:
        if (mDNS_LoggingEnabled == 1)
        {
          v70 = "Received";
          if (!v43)
          {
            v70 = "Ignoring";
          }

          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s %d-byte UDP from %#a:%d to %#a:%d", v70, v10 - a6, *&a3, bswap32(a7->u16[0]) >> 16, *&v14, __rev16(v19));
        }

LABEL_163:
        LOBYTE(v35) = 0;
        if (!v43)
        {
          return;
        }

        goto LABEL_164;
      }
    }

    v43 = 0;
    goto LABEL_159;
  }

  if (a5 == 1)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Ignoring %d-byte ICMP from %#a to %#a");
    }

    return;
  }

  if (a5 != 6)
  {
LABEL_56:
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Ignoring %d-byte IP packet unknown protocol %d from %#a to %#a");
    }

    return;
  }

  v111 = *v18;
  v20 = *(a1 + 12616);
  if (!v20)
  {
LABEL_29:
    v25 = a7[1].i8[5];
    v27 = (v25 & 4) == 0 && (v25 & 3) != 1;
    v19 = v111;
    if (v111 == 5632)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & ((v25 & 2) >> 1);
    }

    if (mDNS_LoggingEnabled == 1)
    {
      v29 = "Received";
      if (!v28)
      {
        v29 = "Ignoring";
      }

      v30 = bswap32(a7->u16[0]) >> 16;
      v31 = __rev16(v111);
      v32 = " SYN";
      if ((a7[1].i8[5] & 2) == 0)
      {
        v32 = "";
      }

      v33 = " FIN";
      if ((a7[1].i8[5] & 1) == 0)
      {
        v33 = "";
      }

      if ((a7[1].i8[5] & 4) != 0)
      {
        v34 = " RST";
      }

      else
      {
        v34 = "";
      }

      v14 = a4;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s %d-byte TCP from %#a:%d to %#a:%d%s%s%s", v29, a8 - a6, *&a3, v30, *&a4, v31, v32, v33, v34);
      LOBYTE(v35) = 0;
      v16 = a1;
      if (!v28)
      {
        return;
      }
    }

    else
    {
      LOBYTE(v35) = 0;
      v16 = a1;
      v14 = a4;
      if (!v28)
      {
        return;
      }
    }

    goto LABEL_164;
  }

  v97 = a7->u16[0];
  while (1)
  {
    v117 = 0;
    v118 = 0;
    v116 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v119 = 0;
    if (*(v20 + 126))
    {
      mDNS_ExtractKeepaliveInfo(v20, &v118, &v124, &v121, v120, &v117 + 1, &v117, &v119 + 1, &v119, &v116);
      if (v118)
      {
        if (v124 != 4 && (v124 != 6 || v125 | HIDWORD(v125) | v126 | HIDWORD(v124)) && v121 != 4 && (v121 != 6 || v122 | HIDWORD(v122) | v123 | HIDWORD(v121)))
        {
          v21 = HIDWORD(v117);
          if (HIDWORD(v117))
          {
            v22 = v117;
            if (v117)
            {
              v23 = HIWORD(v119);
              if (HIWORD(v119))
              {
                v24 = v119;
                if (v119)
                {
                  if (v116 && mDNSSameAddress(&v124, a4) && mDNSSameAddress(&v121, a3) && v23 == v111 && v24 == v97)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    v20 = *v20;
    if (!v20)
    {
      goto LABEL_29;
    }
  }

  v19 = v111;
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveRawTransportPacket: Found a Keepalive record from %#a:%d  to %#a:%d", *&a3, bswap32(a7->u16[0]) >> 16, *&a4, __rev16(v111));
  }

  v86 = a7[1].i8[5];
  v16 = a1;
  if ((v86 & 5) != 0)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveRawTransportPacket: waking because of RST or FIN th_flags %d", a7[1].u8[5]);
    }

    v35 = 1;
  }

  else
  {
    v87 = bswap32(v21);
    v88 = bswap32(v22);
    v89 = bswap32(a7->u32[1]);
    v90 = bswap32(a7[1].u32[0]);
    v91 = (a7[1].u8[4] >> 2) & 0x3C;
    v92 = a8 - a7 - v91;
    v35 = (v90 - v87) >= 1 && (v89 - v88) >= 0 && v92 > 0;
    if ((v86 & 0x10) != 0 && v92 <= 0 && v88 - v89 == 1)
    {
      v94 = v20;
      v95 = v87;
      v96 = v89;
      mDNS_SendKeepaliveACK(a1, v94);
      v89 = v96;
      v87 = v95;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveRawTransportPacket: End %p, hlen %d, Datalen %d, pack %u, seq %u, pseq %u, ack %u, wake %d", a8, v91, v92, v90, v87, v89, v88, v35);
    }

    v16 = a1;
  }

  v14 = a4;
  if (v35)
  {
LABEL_164:
    mDNS_Lock_(v16, "mDNSCoreReceiveRawTransportPacket", 18404);
    v71 = *(v16 + 12616);
    if (v71)
    {
      if (a5 == 6)
      {
        v72 = "\x04_tcp";
      }

      else
      {
        v72 = "\x04_udp";
      }

      v103 = v72;
      v106 = (v16 + 47032);
      v100 = __rev16(v19);
      v115 = v19;
      do
      {
        if (v71[4] == a9 && *(v71 + 8) != 1 && *(v71 + 36) && mDNSSameAddress(v71 + 36, v14))
        {
          v73 = *(v16 + 12616);
          if (v73)
          {
            while (1)
            {
              if (v73[4] == a9 && *(v73 + 63) == *(v71 + 63) && *(v73 + 64) == *(v71 + 64) && *(v73 + 65) == *(v71 + 65) && *(v73 + 8) != 1 && *(v73 + 6) == 33 && *(v73[6] + 8) == v19)
              {
                v74 = v73[5];
                v75 = *v74 ? *v74 + 1 : 0;
                v76 = &v74[v75];
                v77 = *v76 ? *v76 + 1 : 0;
                if (SameDomainLabelPointer(&v76[v77], v103))
                {
                  break;
                }
              }

              v73 = *v73;
              if (!v73)
              {
                goto LABEL_189;
              }
            }
          }

          else
          {
LABEL_189:
            if (v19 == 37905)
            {
              v73 = v71;
            }

            else
            {
              v73 = 0;
            }
          }

          if (v35 && v73 == 0)
          {
            v78 = v71;
          }

          else
          {
            v78 = v73;
          }

          if (v78)
          {
            v79 = mDNSLogCategory_Default;
            v80 = (v16 + 12656);
            while (1)
            {
              v80 = *v80;
              if (!v80)
              {
                break;
              }

              v81 = v80;
              if (v80[444] == v71[4])
              {
                goto LABEL_206;
              }
            }

            v81 = 0;
LABEL_206:
            if (v80)
            {
              v84 = v81 + 3606;
            }

            else
            {
              v84 = 0;
            }

            GetRRDisplayString_rdb(v78 + 8, (*(v78 + 6) + 4), v106);
            LogMsgWithLevel(v79, OS_LOG_TYPE_DEFAULT, "Waking host at %s %#a H-MAC %.6a I-MAC %.6a for %s", v84, *&v14, COERCE_DOUBLE((v71 + 126)), COERCE_DOUBLE((v71 + 132)), v106);
            ScheduleWakeup(v16, v71[4], v71 + 63);
            v19 = v115;
          }

          else if (mDNS_LoggingEnabled == 1)
          {
            v82 = (v16 + 12656);
            while (1)
            {
              v82 = *v82;
              if (!v82)
              {
                break;
              }

              v83 = v82;
              if (v82[444] == v71[4])
              {
                goto LABEL_211;
              }
            }

            v83 = 0;
LABEL_211:
            if (v82)
            {
              v85 = v83 + 3606;
            }

            else
            {
              v85 = 0;
            }

            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Sleeping host at %s %#a %.6a has no service on %#s %d", v85, *&v14, COERCE_DOUBLE((v71 + 126)), v103, v100);
          }
        }

        v71 = *v71;
      }

      while (v71);
    }

    v67 = "mDNSCoreReceiveRawTransportPacket";
    v68 = v16;
    v69 = 18429;
    goto LABEL_217;
  }
}

void mDNS_SendKeepaliveACK(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v8 = 0;
  v9 = 0;
  mDNS_ExtractKeepaliveInfo(a2, &v19, &v14, &v11, v10, &v18 + 1, &v18, &v9, &v8, &v17);
  if (v19 && v14 != 4 && (v14 != 6 || v15 | HIDWORD(v15) | v16 | HIDWORD(v14)) && v11 != 4 && (v11 != 6 || v12 | HIDWORD(v12) | v13 | HIDWORD(v11)) && HIDWORD(v18) && (v4 = v18) != 0 && v9 && v8 && (v5 = v17) != 0)
  {
    HIDWORD(v18) = bswap32(bswap32(HIDWORD(v18)) + 1);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SendKeepaliveACK: laddr %#a raddr %#a lport %d rport %d", COERCE_DOUBLE(&v14), COERCE_DOUBLE(&v11), __rev16(v9), __rev16(v8));
    mDNSPlatformSendKeepalive(&v14, &v11, &v9, &v8, HIDWORD(v18), v4, v5);
  }

  else if (mDNS_LoggingEnabled == 1)
  {
    v6 = mDNSLogCategory_Default;
    v7 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v7);
    LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "mDNS_SendKeepaliveACK: not a valid record %s for keepalive", v7);
  }
}

void SetDynDNSHostNameIfChanged(_BYTE *a1)
{
  if (!SameDomainNameBytes(a1, byte_100170A70))
  {
    if (byte_100170A70[0])
    {
      mDNS_RemoveDynDNSHostName(byte_100170A70);
    }

    v2 = a1;
    while (1)
    {
      if (!v2)
      {
        goto LABEL_18;
      }

      v3 = *v2;
      if (v3 > 0x3F)
      {
        goto LABEL_18;
      }

      if (!*v2)
      {
        break;
      }

      v2 += v3 + 1;
      if (v2 - a1 > 255)
      {
        goto LABEL_18;
      }
    }

    v4 = v2 - a1 + 1;
    if (v4 >= 0x101u)
    {
LABEL_18:
      byte_100170A70[0] = 0;
      return;
    }

    memcpy(byte_100170A70, a1, v4);
    if (byte_100170A70[0])
    {
      mDNSPlatformDynDNSHostNameStatusChanged(byte_100170A70, 1);
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_AddDynDNSHostName %##s", byte_100170A70);
      }

      v5 = &xmmword_100170B70;
      v6 = xmmword_100170B70;
      if (!xmmword_100170B70)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v7 = SameDomainNameBytes(byte_100170A70, (v6 + 208));
        v8 = *v5;
        if (v7)
        {
          break;
        }

        v6 = *v8;
        v5 = *v5;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }

      if (v8)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DynDNSHostName %##s already in list", byte_100170A70);
      }

      else
      {
LABEL_22:
        v9 = malloc_type_calloc(1uLL, 0xB10uLL, 0x26571802uLL);
        if (v9)
        {
          *v5 = v9;
          v10 = byte_100170A70;
          do
          {
            if (!v10)
            {
              break;
            }

            v11 = *v10;
            if (v11 > 0x3F)
            {
              break;
            }

            if (!*v10)
            {
              v12 = v10 - mDNSStorage - 14423;
              if (v12 <= 0x100u)
              {
                memcpy(v9 + 208, byte_100170A70, v12);
                goto LABEL_32;
              }

              break;
            }

            v10 += v11 + 1;
          }

          while (v10 - mDNSStorage - 14424 <= 255);
          v9[208] = 0;
LABEL_32:
          v13 = *v5;
          *(v13 + 202) = 4;
          *(v13 + 496) = 4;
          *(v13 + 352) = DynDNSHostNameCallback;
          *(*v5 + 2824) = 0;
          v14 = *v5;

          AdvertiseHostname(mDNSStorage, v14);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void mDNS_StartExit()
{
  mDNS_Lock_(mDNSStorage, "mDNS_StartExit", 19391);
  v0 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v1 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    goto LABEL_10;
  }

  v0 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit", buf, 2u);
  }

LABEL_11:
  v3 = dword_10016D258 + 5000;
  if ((dword_10016D258 + 5000) <= 1)
  {
    v3 = 1;
  }

  dword_10016D264 = v3;
  mDNSCoreBeSleepProxyServer_internal(mDNSStorage, 0, 0, 0, 0, 0);
  for (i = xmmword_100170B70; xmmword_100170B70; i = xmmword_100170B70)
  {
    mDNS_RemoveDynDNSHostName((i + 208));
  }

  v5 = SearchList;
  if (SearchList)
  {
    do
    {
      while (1)
      {
        v6 = v5[471];
        if (!v6)
        {
          break;
        }

        v5[471] = *v6;
        mDNS_Deregister_internal(mDNSStorage, v6 + 1, 0);
      }

      v5 = *v5;
    }

    while (v5);
  }

  for (j = qword_100170968; j; j = *(j + 296))
  {
    v8 = 0;
    do
    {
      mDNS_DeregisterDomainsDiscoveredForDomainEnumeration(mDNSStorage, j, v8);
      v8 = (v8 + 1);
    }

    while (v8 != 5);
  }

  DeadvertiseAllInterfaceRecords(mDNSStorage, 3);
  while (1)
  {
    v9 = xmmword_100170B98;
    if (!xmmword_100170B98)
    {
      break;
    }

    mDNS_StopNATOperation_internal(mDNSStorage, xmmword_100170B98);
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
    *(v9 + 176) = 0;
    *(v9 + 164) = 0;
  }

  v10 = qword_100170378;
  if (qword_100170378)
  {
    v11 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v12 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v11 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }
    }

    GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), word_1001789D0);
    *buf = 141558275;
    *v29 = 1752392040;
    *&v29[8] = 2085;
    *&v29[10] = word_1001789D0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: ERROR m->CurrentRecord already set %{sensitive, mask.hash}s", buf, 0x16u);
  }

LABEL_36:
  v14 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v15 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
LABEL_45:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: Deregistering duplicate resource records", buf, 2u);
    }
  }

  else
  {
    v14 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      goto LABEL_45;
    }
  }

  DeregLoop(*(&xmmword_100170360 + 1));
  v17 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
  }

  else
  {
    v17 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: Deregistering resource records", buf, 2u);
LABEL_53:
  DeregLoop(xmmword_100170360);
  if (dword_10016D27C - dword_10016D258 <= 999)
  {
    dword_10016D27C = dword_10016D258;
    HIDWORD(qword_10016D268) = 0;
  }

  v18 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v19 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  if (xmmword_100170360)
  {
    if (v20)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v21 = "mDNS_StartExit: Sending final record deregistrations";
    }

    else
    {
      v18 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v21 = "mDNS_StartExit: Sending final record deregistrations";
    }
  }

  else if (v20)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v21 = "mDNS_StartExit: No deregistering records remain";
  }

  else
  {
    v18 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v21 = "mDNS_StartExit: No deregistering records remain";
  }

  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
LABEL_73:
  v22 = *(&xmmword_100170360 + 1);
  if (*(&xmmword_100170360 + 1))
  {
    while (1)
    {
      v23 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
      {
        break;
      }

      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_82;
      }

LABEL_83:
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_84;
      }
    }

    v23 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

LABEL_82:
    v26 = v22[8];
    GetRRDisplayString_rdb(v22 + 8, (*(v22 + 6) + 4), word_1001789D0);
    *buf = 67109635;
    *v29 = v26;
    *&v29[4] = 2160;
    *&v29[6] = 1752392040;
    *&v29[14] = 2085;
    *&v29[16] = word_1001789D0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: Should not still have Duplicate Records remaining: %02X %{sensitive, mask.hash}s", buf, 0x1Cu);
    goto LABEL_83;
  }

LABEL_84:
  if (dword_10016D228)
  {
    DiscardDeregistrations(mDNSStorage);
  }

  mDNS_Unlock_(mDNSStorage, "mDNS_StartExit", 19506);
  v27 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
  }

  else
  {
    v27 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
  }

  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "mDNS_StartExit: done", buf, 2u);
}

void DeregLoop(uint64_t a1)
{
  qword_100170378 = a1;
  if (a1)
  {
    v1 = a1;
    while (1)
    {
      v2 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
      {
        break;
      }

      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v4 = (v1 + 8);
        v5 = *(v1 + 8);
        if (v5 == 1)
        {
          v6 = "Accelerating";
        }

        else
        {
          v6 = "Initiating  ";
        }

LABEL_16:
        GetRRDisplayString_rdb(v4, (*(v1 + 48) + 4), word_1001789D0);
        *buf = 136447235;
        v10 = v6;
        v11 = 2048;
        v12 = v1;
        v13 = 1024;
        v14 = v5;
        v15 = 2160;
        v16 = 1752392040;
        v17 = 2085;
        v18 = word_1001789D0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeregLoop: %{public}s deregistration for %p %02X %{sensitive, mask.hash}s", buf, 0x30u);
      }

LABEL_17:
      if (*(v1 + 8) == 1)
      {
        if (*(v1 + 191) >= 2u)
        {
          *(v1 + 191) = 1;
          *(v1 + 284) = dword_10016D258 - *(v1 + 280);
          SetNextAnnounceProbeTime(mDNSStorage, v1);
        }
      }

      else
      {
        mDNS_Deregister_internal(mDNSStorage, v1, 1);
      }

      v8 = qword_100170378;
      if (qword_100170378 == v1)
      {
        v8 = *v1;
        qword_100170378 = *v1;
      }

      v1 = v8;
      if (!v8)
      {
        return;
      }
    }

    v2 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v4 = (v1 + 8);
    v5 = *(v1 + 8);
    if (v5 == 1)
    {
      v6 = "Accelerating";
    }

    else
    {
      v6 = "Initiating  ";
    }

    goto LABEL_16;
  }
}

void mDNS_FinalExit()
{
  v0 = dword_10016D30C;
  v1 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v2 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    goto LABEL_10;
  }

  v1 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "mDNS_FinalExit: mDNSPlatformClose", buf, 2u);
  }

LABEL_11:
  v4 = mDNSStorage[0];
  if (*(mDNSStorage[0] + 568))
  {
    Main = CFRunLoopGetMain();
    RunLoopSource = IONotificationPortGetRunLoopSource(*(mDNSStorage[0] + 560));
    CFRunLoopRemoveSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
    IODeregisterForSystemPower((mDNSStorage[0] + 572));
    IOServiceClose(*(mDNSStorage[0] + 568));
    IONotificationPortDestroy(*(mDNSStorage[0] + 560));
    v4 = mDNSStorage[0];
    *(mDNSStorage[0] + 568) = 0;
  }

  if (*(v4 + 504))
  {
    v7 = CFRunLoopGetMain();
    CFRunLoopRemoveSource(v7, *(mDNSStorage[0] + 512), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(mDNSStorage[0] + 512));
    v4 = mDNSStorage[0];
    v8 = *(mDNSStorage[0] + 512);
    if (v8)
    {
      CFRelease(v8);
      v4 = mDNSStorage[0];
      *(mDNSStorage[0] + 512) = 0;
    }

    v9 = *(v4 + 504);
    if (v9)
    {
      CFRelease(v9);
      v4 = mDNSStorage[0];
      *(mDNSStorage[0] + 504) = 0;
    }
  }

  if (*(v4 + 520))
  {
    v10 = CFRunLoopGetMain();
    CFRunLoopRemoveSource(v10, *(mDNSStorage[0] + 520), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(mDNSStorage[0] + 520));
    v4 = mDNSStorage[0];
    v11 = *(mDNSStorage[0] + 520);
    if (v11)
    {
      CFRelease(v11);
      v4 = mDNSStorage[0];
      *(mDNSStorage[0] + 520) = 0;
    }
  }

  v12 = *(v4 + 528);
  if ((v12 & 0x80000000) == 0)
  {
    close(v12);
    *(mDNSStorage[0] + 528) = -1;
  }

  if (&_D2DTerminate)
  {
    v13 = D2DTerminate();
    v14 = mDNSLogCategory_D2D;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v15 = mDNSLogCategory_D2D == mDNSLogCategory_State;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v13)
    {
      v17 = v13;
      if (v16)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_44;
        }

        *buf = 67109120;
        *v39 = v17;
        v18 = "D2DTerminate failed: %u";
      }

      else
      {
        v14 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_44;
        }

        *buf = 67109120;
        *v39 = v17;
        v18 = "D2DTerminate failed: %u";
      }

      v19 = v14;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 8;
    }

    else
    {
      if (v16)
      {
        if (!os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        *buf = 0;
        v18 = "D2DTerminate succeeded";
      }

      else
      {
        v14 = mDNSLogCategory_D2D_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        *buf = 0;
        v18 = "D2DTerminate succeeded";
      }

      v19 = v14;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 2;
    }

    _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);
  }

LABEL_44:
  v22 = time(0);
  for (i = *mDNSStorage[0]; i; i = *(i + 3680))
  {
    if (*(i + 3696))
    {
      *(i + 3704) = v22;
    }

    *(i + 3696) = 0;
  }

  ClearInactiveInterfaces(v22);
  CloseSocketSet(mDNSStorage[0] + 8);
  v24 = 0;
  v25 = 0;
  do
  {
    for (j = &mDNSStorage[v24]; ; ReleaseCacheGroup(mDNSStorage, j + 34))
    {
      v27 = j[34];
      if (!v27)
      {
        break;
      }

      v29 = (v27 + 16);
      v28 = *(v27 + 16);
      if (v28)
      {
        do
        {
          *v29 = *v28;
          if (v28[12])
          {
            ++v25;
          }

          ReleaseCacheRecord(mDNSStorage, v28);
          v28 = *v29;
        }

        while (*v29);
      }

      *(v27 + 24) = v29;
    }

    ++v24;
  }

  while (v24 != 499);
  v30 = qword_10016D314;
  if (v25 != qword_10016D314)
  {
    v31 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }
    }

    else
    {
      v31 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }
    }

    *buf = 67109632;
    *v39 = v0;
    *&v39[4] = 1024;
    *&v39[6] = v25;
    *v40 = 1024;
    *&v40[2] = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "*** ERROR *** rrcache_totalused %u; rrcache_active %u != m->rrcache_active %u", buf, 0x14u);
  }

LABEL_64:
  v32 = xmmword_100170360;
  if (xmmword_100170360)
  {
    while (1)
    {
      v33 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
      {
        break;
      }

      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

LABEL_74:
      v32 = *v32;
      if (!v32)
      {
        goto LABEL_75;
      }
    }

    v33 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

LABEL_73:
    v36 = v32[8];
    GetRRDisplayString_rdb(v32 + 8, (*(v32 + 6) + 4), word_1001789D0);
    *buf = 134218755;
    *v39 = v32;
    *&v39[8] = 1024;
    *v40 = v36;
    *&v40[4] = 2160;
    v41 = 1752392040;
    v42 = 2085;
    v43 = word_1001789D0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "mDNS_FinalExit failed to send goodbye for: %p %02X %{sensitive, mask.hash}s", buf, 0x26u);
    goto LABEL_74;
  }

LABEL_75:
  if (qword_100172038)
  {
    ref_count_obj_release(qword_100172038);
    qword_100172038 = 0;
  }

  v37 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
  }

  else
  {
    v37 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
  }

  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "mDNS_FinalExit: done", buf, 2u);
}

uint64_t _DNS64RestartQuestion(uint64_t a1, uint64_t a2, int a3)
{
  mDNS_StopQuery_internal(a1, a2);
  *(a2 + 673) = a3;
  if ((a3 - 3) >= 2)
  {
    v7 = (a2 + 376);
    *(a2 + 674) = *(a2 + 376);
    *(a2 + 681) = *(a2 + 383);
    v8 = "\bipv4only\x04arpa";
    do
    {
      if (!v8)
      {
        break;
      }

      v9 = *v8;
      if (v9 > 0x3F)
      {
        break;
      }

      if (!*v8)
      {
        v10 = v8 - "\bipv4only\x04arpa" + 1;
        if (v10 <= 0x100u)
        {
          memcpy(v7, "\bipv4only\x04arpa", v10);
          goto LABEL_12;
        }

        break;
      }

      v8 += v9 + 1;
    }

    while (v8 - "\bipv4only\x04arpa" <= 255);
    *v7 = 0;
LABEL_12:
    if (_DNS64IPv4OnlyFQDNHash_sHashOnce != -1)
    {
      dispatch_once(&_DNS64IPv4OnlyFQDNHash_sHashOnce, &__block_literal_global_610);
    }

    *(a2 + 200) = _DNS64IPv4OnlyFQDNHash_sHash;
    v6 = 28;
  }

  else
  {
    v6 = 1;
  }

  *(a2 + 342) = v6;

  return mDNS_StartQuery_internal(a1, a2);
}

uint64_t _DNS64TestIPv6Synthesis(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = 0;
  v8 = 0;
  if (_DNS64GetPrefixes(a1, a2, &v9, &v8))
  {
    v6 = 0;
    v4 = v9;
    if (!v9)
    {
      return v6;
    }

    goto LABEL_9;
  }

  v3 = v8;
  v4 = v9;
  if (!v8)
  {
LABEL_6:
    v6 = 0;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_9;
  }

  v5 = v9;
  while (!nw_nat64_synthesize_v6())
  {
    v5 += 16;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }

  v6 = 1;
  if (v4)
  {
LABEL_9:
    free(v4);
  }

  return v6;
}

uint64_t _DNS64GetPrefixes(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  if (_DNS64IPv4OnlyFQDNHash_sHashOnce != -1)
  {
    dispatch_once(&_DNS64IPv4OnlyFQDNHash_sHashOnce, &__block_literal_global_610);
  }

  v8 = 4294901742;
  v9 = CacheGroupForName(a1, _DNS64IPv4OnlyFQDNHash_sHash, "\bipv4only\x04arpa");
  if (!v9)
  {
    return v8;
  }

  v10 = v9;
  v11 = v9[2];
  if (!v11)
  {
    return v8;
  }

  v12 = 0;
  do
  {
    v13 = *(v11 + 56);
    if (v13)
    {
      v13 = *(v13 + 24);
    }

    if (v13 == a2 && *(v11 + 12) == 28 && *(v11 + 8) != 240 && !*(v11 + 32))
    {
      ++v12;
    }

    v11 = *v11;
  }

  while (v11);
  if (!v12)
  {
    return v8;
  }

  result = malloc_type_calloc(v12, 0x10uLL, 0xE1FCF8BEuLL);
  if (result)
  {
    v15 = result;
    v16 = v10[2];
    if (v16)
    {
      v17 = 0;
      do
      {
        v18 = *(v16 + 56);
        if (v18)
        {
          v18 = *(v18 + 24);
        }

        if (v18 == a2 && *(v16 + 12) == 28 && *(v16 + 8) != 240 && !*(v16 + 32))
        {
          *(result + 16 * v17++) = *(*(v16 + 48) + 4);
        }

        v16 = *v16;
        if (v16)
        {
          v19 = v17 >= v12;
        }

        else
        {
          v19 = 1;
        }
      }

      while (!v19);
    }

    v20 = nw_nat64_copy_prefixes_from_ipv4only_records();
    free(v15);
    if (v20 < 1)
    {
      return 4294901759;
    }

    v8 = 0;
    *a3 = 0;
    *a4 = v20;
    return v8;
  }

  __break(1u);
  return result;
}

void DNS64AnswerCurrentQuestion(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  memset(v21, 0, 268);
  v16 = 0;
  v4 = *(a1 + 208);
  v5 = *(v4 + 80);
  if (v5)
  {
    v15 = 0;
    if (_DNS64GetPrefixes(a1, v5, &v16, &v15))
    {
      v12 = v16;
      if (!v16)
      {
        return;
      }

      goto LABEL_14;
    }

    v9 = a2[1];
    v8 = a2[2];
    v17[0] = *a2;
    v17[1] = v9;
    v10 = a2[3];
    v18 = v8;
    v20 = v10;
    WORD2(v17[0]) = 28;
    WORD6(v17[0]) = 16;
    LOWORD(v21[0]) = 16;
    v19 = v21;
    v11 = v15;
    v12 = v16;
    if (v15)
    {
      v13 = 0;
      do
      {
        while (!nw_nat64_synthesize_v6())
        {
          if (++v13 >= v11)
          {
            goto LABEL_13;
          }
        }

        *(v21 + 4) = 0uLL;
        (*(v4 + 152))(a1, v4, v17, a3);
        ++v13;
      }

      while (*(a1 + 208) == v4 && v13 < v11);
    }

LABEL_13:
    if (v12)
    {
LABEL_14:
      free(v12);
    }
  }
}

void _dns_obj_domain_name_finalize(uint64_t a1)
{
  if (*(a1 + 37) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
      *(a1 + 16) = 0;
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    ref_count_obj_release(v3);
    *(a1 + 40) = 0;
  }
}

uint64_t _dns_obj_domain_name_compare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a2 + 16);
  if (*(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_10;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    *(a1 + 32) = domain_name_labels_compute_hash(*(a1 + 16));
    *(a1 + 36) = 1;
  }

  if (*(a2 + 36) == 1)
  {
    v7 = *(a2 + 32);
  }

  else
  {
    v7 = domain_name_labels_compute_hash(v6);
    *(a2 + 32) = v7;
    *(a2 + 36) = 1;
  }

  if (*(a1 + 32) != v7)
  {
LABEL_10:
    if (v3)
    {
      return 2;
    }
  }

  return domain_name_labels_canonical_compare();
}

void *dns_obj_domain_name_create_with_labels(_BYTE *a1, int *a2)
{
  result = malloc_type_calloc(1uLL, 0x30uLL, 0xB7BBD98FuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = &_dns_obj_domain_name_kind;
  result[1] = &_dns_obj_domain_name_kind;
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
  ++*v5;
  v15 = 0;
  v8 = domain_name_labels_create(a1, &v15);
  v9 = v15;
  if (v15)
  {
    if (!v8 || (free(v8), (v9 = v15) != 0))
    {
      v14 = 0;
      if (!a2)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = *v8;
    v11 = v8;
    if (*v8)
    {
      v11 = v8;
      do
      {
        v12 = &v11[v10];
        v13 = v12[1];
        v11 = v12 + 1;
        v10 = v13;
      }

      while (v13);
    }

    v5[2] = v8;
    v5[3] = v11 - v8 + 1;
    *(v5 + 8) = 0;
    *(v5 + 18) = 256;
    v5[5] = 0;
  }

  v9 = 0;
  v14 = v5;
  v5 = 0;
  if (a2)
  {
LABEL_12:
    *a2 = v9;
  }

LABEL_13:
  if (v5)
  {
    ref_count_obj_release(v5);
  }

  return v14;
}

void *dns_obj_domain_name_create_concatenation(_BYTE *a1, _BYTE *a2, _DWORD *a3)
{
  v5 = 0;
  memset(__dst, 0, sizeof(__dst));
  domain_name_labels_concatenate(a1, a2, __dst, &v5);
  if (v5)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = dns_obj_domain_name_create_with_labels(__dst, &v5);
    if (!a3)
    {
      return result;
    }
  }

  *a3 = v5;
  return result;
}

void *dns_obj_domain_name_create_with_cstring(char *a1, int *a2)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_23;
  }

  if (v3 == 46)
  {
    if (a1[1])
    {
      LOBYTE(v3) = 46;
      goto LABEL_5;
    }

LABEL_23:
    v16 = 0;
    result = dns_obj_domain_name_create_with_labels(v17, &v16);
    if (a2)
    {
LABEL_24:
      *a2 = v16;
    }

    return result;
  }

LABEL_5:
  v4 = v17;
  while (2)
  {
    if (v4 + 64 >= &v18 + 15)
    {
      v5 = &v18 + 15;
    }

    else
    {
      v5 = v4 + 64;
    }

    v6 = v4 + 1;
    v7 = v4 + 1;
    v8 = a1;
    do
    {
      a1 = v8 + 1;
      if (v3 == 92)
      {
        v9 = *a1;
        if (!*a1)
        {
          v15 = -6750;
          goto LABEL_28;
        }

        LOBYTE(v3) = *a1;
        a1 = v8 + 2;
        if (v9 - 48 <= 9)
        {
          v10 = *a1;
          if ((v10 - 48) <= 9)
          {
            v11 = v8[3];
            if ((v11 - 48) <= 9)
            {
              v12 = 100 * v9 + 10 * v10 + v11;
              v13 = v8 + 4;
              if (v12 < 5584)
              {
                a1 = v13;
                LOBYTE(v3) = v12 + 48;
              }
            }
          }
        }
      }

      else if (v3 == 46)
      {
        break;
      }

      if (v7 >= v5)
      {
        v15 = -6751;
        goto LABEL_28;
      }

      *v7++ = v3;
      LOBYTE(v3) = *a1;
      v8 = a1;
    }

    while (*a1);
    if (v7 != v6)
    {
      *v4 = v7 - v6;
      *v7 = 0;
      LOBYTE(v3) = *a1;
      v4 = v7;
      if (*a1)
      {
        continue;
      }

      goto LABEL_23;
    }

    break;
  }

  v15 = -6742;
LABEL_28:
  result = 0;
  v16 = v15;
  if (a2)
  {
    goto LABEL_24;
  }

  return result;
}

void _mdns_cache_metadata_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    os_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    os_release(v3);
    *(a1 + 32) = 0;
  }
}

void *_mdns_cache_metadata_copy_description(void *a1, int a2)
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

uint64_t mdns_cache_metadata_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_cache_metadata_kind;
    *(v0 + 16) = &_mdns_cache_metadata_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    *(v1 + 40) = 0;
  }

  return v1;
}

void mdns_cache_metadata_set_extended_dns_error(uint64_t a1, void *object)
{
  if (object)
  {
    os_retain(object);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    os_release(v4);
  }

  *(a1 + 32) = object;
}

NSObject *_mdns_dispatch_create_monotonic_timer(unsigned int a1, uint64_t a2, unsigned int a3, NSObject *a4)
{
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a4);
  if (v7)
  {
    if (a3 >= 0x64)
    {
      v8 = 100;
    }

    else
    {
      v8 = a3;
    }

    v9 = 10000 * v8 * a1;
    v10 = dispatch_time(0x8000000000000000, 1000000 * a1);
    dispatch_source_set_timer(v7, v10, a2, v9);
  }

  return v7;
}

char *_mdns_multicast_delay_histogram_copy_description(uint64_t a1)
{
  v2 = 0;
  v9[0] = 0;
  for (i = 28; i != 62; i += 2)
  {
    v2 += *(a1 + i);
  }

  if (v2)
  {
    v8 = *(a1 + 28);
    v7 = *(a1 + 32) + *(a1 + 30) + *(a1 + 34);
    v6 = *(a1 + 38) + *(a1 + 36) + *(a1 + 40);
    v4 = vaddlvq_u16(*(a1 + 42));
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 50);
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 75);
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 90);
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 95);
    _mdns_multicast_delay_histogram_calculate_percentile_rank(a1, 99);
    asprintf(v9, "delay distribution: [0] %u(%u%%) [1] %u(%u%%) [4] %u(%u%%) [7] %u(%u%%) [15] %u(%u%%) [20] %u(%u%%) [INF], cache hit rate: %u%%(hit: %u, miss:%u), percentile rank: P50(%us), P75(%us), P90(%us), P95(%us), P99(%us)", v8, 100 * v8 / v2, v7, 100 * v7 / v2, v6, 100 * v6 / v2, v4);
  }

  else
  {
    asprintf(v9, "<< No Data Available >>");
  }

  return v9[0];
}

uint64_t _mdns_multicast_delay_histogram_calculate_percentile_rank(uint64_t a1, int a2)
{
  v2 = 0;
  for (i = 28; i != 62; i += 2)
  {
    v2 += *(a1 + i);
  }

  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = (v2 * a2 + 99) / 0x64u;
  while (1)
  {
    v5 += *(a1 + 28 + 2 * v4);
    if (v5 >= v6)
    {
      break;
    }

    if (++v4 == 17)
    {
      return 0;
    }
  }

  if (v4 == 15)
  {
    v8 = 18;
  }

  else
  {
    v8 = 0;
  }

  if (v4 <= 0xE)
  {
    return (v4 + 1);
  }

  else
  {
    return v8;
  }
}

uint64_t mdns_multicast_delay_histogram_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_multicast_delay_histogram_kind;
    *(v0 + 16) = &_mdns_multicast_delay_histogram_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v1;
}

const char *mdns_signed_result_get_data(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = *(a1 + 16);
  result = (*(v3 + 48))();
  if (!result)
  {
    if (_mdns_signed_result_log_s_once != -1)
    {
      dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_689);
    }

    v5 = _mdns_signed_result_log_s_log;
    if (os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_FAULT))
    {
      v6 = *(v3 + 8);
      *buf = 136446210;
      v9 = v6;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "mdns_signed_result_get_data() failed for %{public}s", buf, 0xCu);
    }

    v7 = 0;
    result = "";
  }

  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

unsigned __int8 *_mdns_signed_browse_result_create_ex(const unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unsigned __int16 a5, int *a6)
{
  v9 = a3;
  bzero(__s, 0x3F1uLL);
  v12 = DomainNameToString(a2, 0, __s, 0);
  if (v12)
  {
    v20 = v12;
    v19 = 0;
    goto LABEL_7;
  }

  v13 = strlen(__s);
  if (v13 >> 16)
  {
    v19 = 0;
    v20 = -6743;
    goto LABEL_7;
  }

  v14 = v13;
  result = malloc_type_calloc(1uLL, v13 + 58, 0xCC385B7BuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  uuid_copy(result + 32, a1);
  v17 = _mdns_signed_result_compute_metadata_hash((v16 + 32), v9, a4, a5);
  *(v16 + 12) = 5;
  *(v16 + 13) = v17;
  *(v16 + 28) = v14;
  memcpy(v16 + 58, __s, v14);
  v18 = _mdns_necp_sign_result(v16, v14 + 58);
  if (v18 || (v18 = _mdns_necp_validate_result(v16, v14 + 58), (v21 = v18) != 0))
  {
    v20 = v18;
    v19 = 0;
    goto LABEL_11;
  }

  v19 = _mdns_signed_browse_result_create_no_copy(a2, v16, v14 + 58, &v21);
  v20 = v21;
  if (v21)
  {
LABEL_11:
    free(v16);
  }

LABEL_7:
  if (a6)
  {
    *a6 = v20;
  }

  return v19;
}

uint64_t _mdns_signed_result_compute_metadata_hash(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = 0;
  v5 = -2128831035;
  do
  {
    v5 = 16777619 * (v5 ^ *(a1 + v4++));
  }

  while (v4 != 16);
  v6 = 0;
  v12 = bswap32(a2);
  v7 = v5;
  do
  {
    v7 = 16777619 * (v7 ^ *(&v12 + v6++));
  }

  while (v6 != 4);
  v8 = 16777619 * ((16777619 * (v5 ^ (a4 >> 8))) ^ a4);
  if (a4)
  {
    v9 = a4;
    do
    {
      v10 = *a3++;
      v8 = 16777619 * (v8 ^ v10);
      --v9;
    }

    while (v9);
  }

  return v8 & 0xFFFFFF ^ HIBYTE(v8) | ((v7 ^ (v7 >> 8)) << 24);
}

uint64_t _mdns_necp_sign_result(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x20)
  {
    return 4294960546;
  }

  v5 = 0;
  _mdns_necp_get_shared_fd(&v5);
  result = v5;
  if (!v5)
  {
    result = necp_client_action();
    v5 = result;
    if (result)
    {
      if (*__error())
      {
        v5 = *__error();
        if (!v5)
        {
          return 0;
        }
      }

      else
      {
        v5 = -6700;
      }

      if (_mdns_signed_result_log_s_once != -1)
      {
        dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_689);
      }

      v3 = _mdns_signed_result_log_s_log;
      v4 = os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR);
      result = v5;
      if (v4)
      {
        *buf = 134217984;
        v7 = v5;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to sign data: %{mdns:err}ld", buf, 0xCu);
        return v5;
      }
    }
  }

  return result;
}

uint64_t _mdns_necp_validate_result(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  _mdns_necp_get_shared_fd(&v5);
  result = v5;
  if (!v5)
  {
    result = necp_client_action();
    v5 = result;
    if (result)
    {
      if (*__error())
      {
        v5 = *__error();
        if (!v5)
        {
          return 0;
        }
      }

      else
      {
        v5 = -6700;
      }

      if (_mdns_signed_result_log_s_once != -1)
      {
        dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_689);
      }

      v3 = _mdns_signed_result_log_s_log;
      v4 = os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR);
      result = v5;
      if (v4)
      {
        *buf = 134217984;
        v7 = v5;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to validate data: %{mdns:err}ld", buf, 0xCu);
        return v5;
      }
    }
  }

  return result;
}

uint64_t _mdns_signed_browse_result_create_no_copy(_BYTE *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = _os_object_alloc();
  v9 = v8;
  if (!v8)
  {
    v14 = -6728;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v10 = &_mdns_signed_browse_result_kind;
  *(v8 + 16) = &_mdns_signed_browse_result_kind;
  do
  {
    v11 = v10[2];
    if (v11)
    {
      v11(v9);
    }

    v10 = *v10;
  }

  while (v10);
  DomainNameDupEx(a1, (v9 + 24), 0);
  v12 = -2128831035;
  for (i = 32; i != 48; ++i)
  {
    v12 = 16777619 * (v12 ^ *(a2 + i));
  }

  v14 = 0;
  *(v9 + 48) = v12;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  if (a4)
  {
LABEL_9:
    *a4 = v14;
  }

  return v9;
}

uint64_t _mdns_signed_browse_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return *(a1 + 32);
}

void _mdns_signed_browse_result_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  a1[5] = 0;
}

void *_mdns_signed_browse_result_copy_description(void *a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || (v8 = a1[4], memset(out, 0, 37), uuid_unparse((v8 + 32), out), mdns_string_builder_append_formatted(v7, "client ID: %s, service instance: ", out)) || _mdns_string_builder_append_domain_name_string(v7, v8 + 58, *(v8 + 56), v3))
  {
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

uint64_t _mdns_string_builder_append_domain_name_string(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  if (a3 > 0x3F0)
  {
    return mdns_string_builder_append_formatted(a1, "«TOO LONG: %zu chars»");
  }

  if (!a4)
  {
    return mdns_string_builder_append_formatted(a1, "%.*s");
  }

  memset(v8, 0, 64);
  bzero(v7, 0x3F1uLL);
  __memcpy_chk();
  v7[a3] = 0;
  DNSMessagePrintObfuscatedString(v8, v7);
  return mdns_string_builder_append_formatted(a1, "%s");
}

uint64_t _mdns_necp_get_shared_fd(int *a1)
{
  os_unfair_lock_lock(&_mdns_necp_get_shared_fd_s_lock);
  if ((_mdns_necp_get_shared_fd_s_fd & 0x80000000) == 0 || (_mdns_necp_get_shared_fd_s_fd = necp_open(), (_mdns_necp_get_shared_fd_s_fd & 0x80000000) == 0))
  {
    os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
    v2 = 0;
    goto LABEL_4;
  }

  if (*__error())
  {
    v2 = *__error();
    os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
    v2 = -6700;
  }

  if (_mdns_signed_result_log_s_once != -1)
  {
    dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_689);
  }

  v4 = _mdns_signed_result_log_s_log;
  if (os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create NECP file descriptor: %{mdns:err}ld", &v5, 0xCu);
  }

LABEL_4:
  if (a1)
  {
    *a1 = v2;
  }

  return _mdns_necp_get_shared_fd_s_fd;
}

uint64_t mdns_signed_browse_result_contains(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!a3)
  {
    return DomainNameEqual(*(a1 + 24), a2);
  }

  v3 = 0;
  v4 = *(*(a1 + 32) + 52);
  v5 = *(a1 + 48);
  v7 = bswap32(a3);
  do
  {
    LOWORD(v5) = 403 * (v5 ^ *(&v7 + v3++));
  }

  while (v3 != 4);
  if (HIBYTE(v4) != (v5 ^ BYTE1(v5)))
  {
    return 0;
  }

  else
  {
    return DomainNameEqual(*(a1 + 24), a2);
  }
}

uint64_t _mdns_signed_resolve_result_create_no_copy(_BYTE *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = _os_object_alloc();
  v9 = v8;
  if (!v8)
  {
    v14 = -6728;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v10 = &_mdns_signed_resolve_result_kind;
  *(v8 + 16) = &_mdns_signed_resolve_result_kind;
  do
  {
    v11 = v10[2];
    if (v11)
    {
      v11(v9);
    }

    v10 = *v10;
  }

  while (v10);
  DomainNameDupEx(a1, (v9 + 24), 0);
  v12 = -2128831035;
  for (i = 32; i != 48; ++i)
  {
    v12 = 16777619 * (v12 ^ *(a2 + i));
  }

  v14 = 0;
  *(v9 + 48) = v12;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  if (a4)
  {
LABEL_9:
    *a4 = v14;
  }

  return v9;
}

uint64_t _mdns_signed_resolve_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return *(a1 + 32);
}

void _mdns_signed_resolve_result_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  a1[5] = 0;
}

void *_mdns_signed_resolve_result_copy_description(void *a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!a2 || !mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v8 = a1[4];
    memset(out, 0, 37);
    uuid_unparse((v8 + 32), out);
    if (!mdns_string_builder_append_formatted(v7, "client ID: %s", out))
    {
      v14[0] = "service instance";
      v14[1] = v8 + 62;
      v15 = *(v8 + 56);
      v16 = 0;
      v17 = 0;
      v18[0] = "hostname";
      v18[1] = v8 + 62 + v15;
      v19 = *(v8 + 60);
      v11 = v14;
      v12 = 1;
      while (1)
      {
        v13 = v12;
        if (mdns_string_builder_append_formatted(v7, ", %s: ", *v11) || _mdns_string_builder_append_domain_name_string(v7, v11[1], *(v11 + 8), a3))
        {
          break;
        }

        v12 = 0;
        v11 = v18;
        if ((v13 & 1) == 0)
        {
          if (mdns_string_builder_append_formatted(v7, ", port: %u", bswap32(*(v8 + 58)) >> 16))
          {
            break;
          }

          v9 = mdns_string_builder_copy_string(v7);
          goto LABEL_6;
        }
      }
    }
  }

  v9 = 0;
LABEL_6:
  os_release(v7);
  return v9;
}

void *mdns_signed_resolve_result_create_from_data(uint64_t a1, size_t a2, int *a3)
{
  v4 = a2 - 62;
  if (a2 < 0x3E)
  {
    result = 0;
    v14 = -6743;
  }

  else if (*(a1 + 48) == 6)
  {
    v6 = *(a1 + 56);
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v7 && (v9 = *(a1 + 60), v8 >= v9))
    {
      if (v9 > 0x3F0)
      {
        result = 0;
        v14 = -6744;
      }

      else
      {
        bzero(v17, 0x3F1uLL);
        __memcpy_chk();
        v17[v9] = 0;
        memset(v16, 0, sizeof(v16));
        v11 = DomainNameFromString(v16, v17);
        if (v11 || (v11 = _mdns_necp_validate_result(a1, a2)) != 0)
        {
          v14 = v11;
          result = 0;
        }

        else
        {
          v15 = 0;
          result = malloc_type_malloc(a2, 0xFE29915uLL);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v13 = result;
          memcpy(result, a1, a2);
          result = _mdns_signed_resolve_result_create_no_copy(v16, v13, a2, &v15);
          if (!result)
          {
            free(v13);
            result = 0;
          }

          v14 = v15;
        }
      }
    }

    else
    {
      result = 0;
      v14 = -6750;
    }
  }

  else
  {
    result = 0;
    v14 = -6756;
  }

  if (a3)
  {
    *a3 = v14;
  }

  return result;
}

uint64_t mdns_signed_resolve_result_contains(uint64_t a1, char *a2, unsigned int a3)
{
  v4 = 0;
  v5 = *(*(a1 + 32) + 52);
  v6 = *(a1 + 48);
  v8 = bswap32(a3);
  do
  {
    LOWORD(v6) = 403 * (v6 ^ *(&v8 + v4++));
  }

  while (v4 != 4);
  if (HIBYTE(v5) != (v6 ^ BYTE1(v6)))
  {
    return 0;
  }

  memset(v9, 0, sizeof(v9));
  if (DomainNameFromString(v9, a2))
  {
    return 0;
  }

  else
  {
    return DomainNameEqual(*(a1 + 24), v9);
  }
}

unsigned __int8 *mdns_signed_hostname_result_create_ipv4(uint64_t a1, int *a2, int *a3)
{
  v5 = 0;
  *(&v4 + 1) = 0;
  v6 = 0;
  LOWORD(v4) = 528;
  WORD1(v4) = *(*(a1 + 32) + 58);
  DWORD1(v4) = *a2;
  return _mdns_signed_hostname_result_create(a1, &v4, a3);
}

unsigned __int8 *_mdns_signed_hostname_result_create(uint64_t a1, __int128 *a2, int *a3)
{
  v6 = _os_object_alloc();
  v7 = v6;
  if (v6)
  {
    v8 = &_mdns_signed_hostname_result_kind;
    *(v6 + 16) = &_mdns_signed_hostname_result_kind;
    do
    {
      v9 = v8[2];
      if (v9)
      {
        v9(v7);
      }

      v8 = *v8;
    }

    while (v8);
    v10 = *(a1 + 32);
    v11 = *(v10 + 60) + 88;
    *(v7 + 32) = v11;
    result = malloc_type_calloc(1uLL, v11, 0x4F7EAAD2uLL);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    *(v7 + 24) = result;
    uuid_copy(result + 32, (v10 + 32));
    *(v13 + 6) = 4;
    v14 = *a2;
    *(v13 + 68) = *(a2 + 12);
    *(v13 + 56) = v14;
    v15 = *(v10 + 60);
    *(v13 + 21) = v15;
    memcpy(v13 + 88, (v10 + *(v10 + 56) + 62), v15);
    v16 = _mdns_necp_sign_result(*(v7 + 24), *(v7 + 32));
    if (v16 || (v16 = _mdns_necp_validate_result(*(v7 + 24), *(v7 + 32))) != 0)
    {
      v17 = v7;
      v7 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v16 = -6728;
  }

  if (a3)
  {
    *a3 = v16;
  }

  if (v17)
  {
    os_release(v17);
  }

  return v7;
}

uint64_t _mdns_signed_hostname_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return *(a1 + 24);
}

void _mdns_signed_hostname_result_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
}

void *_mdns_signed_hostname_result_copy_description(void *a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || (v8 = a1[3], memset(out, 0, 37), uuid_unparse((v8 + 32), out), mdns_string_builder_append_formatted(v7, "client ID: %s, hostname: ", out)) || _mdns_string_builder_append_domain_name_string(v7, v8 + 88, *(v8 + 84), a3) || mdns_string_builder_append_formatted(v7, ", address: ") || (v11[0] = *(v8 + 56), *(v11 + 12) = *(v8 + 68), mdns_string_builder_append_sockaddr_description(v7, v11, a3)))
  {
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

unsigned __int8 *mdns_signed_hostname_result_create_ipv6(uint64_t a1, _OWORD *a2, int a3, int *a4)
{
  memset(&v5[1], 0, 24);
  LOWORD(v5[0]) = 7708;
  HIWORD(v5[0]) = *(*(a1 + 32) + 58);
  *&v5[2] = *a2;
  if (LOBYTE(v5[2]) == 254 && (BYTE1(v5[2]) & 0xC0) == 0x80)
  {
    v5[6] = a3;
  }

  return _mdns_signed_hostname_result_create(a1, v5, a4);
}

void *_dnssec_obj_rrset_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 16) = 0;
  }

  result = *(a1 + 24);
  if (result)
  {
    do
    {
      v4 = result[1];
      free(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

void *dnssec_obj_rrset_create(_DWORD *a1, int a2, _DWORD *a3)
{
  result = malloc_type_calloc(1uLL, 0x40uLL, 0xB7BBD98FuLL);
  if (result)
  {
    v7 = result;
    v8 = &_dnssec_obj_rrset_kind;
    result[1] = &_dnssec_obj_rrset_kind;
    do
    {
      v9 = v8[2];
      if (v9)
      {
        v9(v7);
      }

      v8 = *v8;
    }

    while (v8);
    ++*v7;
    v7[2] = a1;
    ++*a1;
    v7[4] = 0;
    v7[5] = 0;
    *(v7 + 12) = -6718;
    *(v7 + 60) = 0;
    *(v7 + 14) = a2;
    ++*v7;
    if (a3)
    {
      *a3 = 0;
    }

    ref_count_obj_release(v7);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dnssec_obj_rrset_get_rr_type(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = **(a1 + 24);
    result = *(v1 + 4);
    if (result == 46)
    {
      return __rev16(*(*(v1 + 40) + 4));
    }

    return result;
  }

  v3 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

LABEL_13:
    v5 = 136447234;
    v6 = "rrset->rr_count > 0";
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v11 = 1024;
    v12 = 123;
    v13 = 2048;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v5, 0x30u);
    return 0;
  }

  v3 = mDNSLogCategory_DNSSEC_redacted;
  result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
  if (result)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t dnssec_obj_rrset_get_rr_class(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return *(**(a1 + 24) + 6);
  }

  v2 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v3 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_12:
      v4 = 136447234;
      v5 = "me->rr_count > 0";
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v10 = 1024;
      v11 = 138;
      v12 = 2048;
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v4, 0x30u);
      return 0;
    }
  }

  else
  {
    v2 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t dnssec_obj_rrset_get_time_received(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v4 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v5 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v4 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v8 = 136447234;
    v9 = "me->rr_count > 0";
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v14 = 1024;
    v15 = 147;
    v16 = 2048;
    v17 = 0;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v8, 0x30u);
    return 0;
  }

  v1 = *(**(a1 + 24) + 56);
  if (!v1)
  {
    v4 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v4 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v8 = 136447234;
    v9 = "rr->dnssec != NULL";
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v14 = 1024;
    v15 = 149;
    v16 = 2048;
    v17 = 0;
    goto LABEL_33;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v2 + 80);
  }

  v4 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v7 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_32:
      v8 = 136447234;
      v9 = "cr != NULL";
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v14 = 1024;
      v15 = 152;
      v16 = 2048;
      v17 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v4 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t dnssec_obj_rrset_get_rr_expire_time(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      v3 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    v6 = 136447234;
    v7 = "me->rr_count > 0";
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v12 = 1024;
    v13 = 185;
    v14 = 2048;
    v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v6, 0x30u);
    return 0;
  }

  v1 = *(**(a1 + 24) + 56);

  return resource_record_get_expiration_time(v1);
}

void *dnssec_obj_rrset_copy_signer_name(uint64_t a1, int *a2)
{
  v3 = -6727;
  if (!*(a1 + 32) || (v17 = -6727, (v4 = *(a1 + 24)) == 0))
  {
    result = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v5 = *v4;
    if (**v4 == 240)
    {
      break;
    }

    if (*(v5 + 4) == 46)
    {
      v13 = (*(v5 + 40) + 22);
LABEL_17:
      result = dnssec_obj_domain_name_create_with_labels(v13, 1, &v17);
      v3 = v17;
      if (v17)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    result = 0;
LABEL_20:
    v4 = *(v4 + 1);
    if (v4)
    {
      v16 = result == 0;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  v6 = *(v5 + 56);
  if (v6)
  {
    if (*(v6 + 32) || (*(v6 + 40) & 1) != 0 || (v7 = *(v6 + 48)) == 0)
    {
      result = 0;
      v3 = -6709;
      goto LABEL_27;
    }

    v8 = *(v7 + 72);
    if (!*(v7 + 72))
    {
LABEL_30:
      result = 0;
      v3 = -6727;
      goto LABEL_27;
    }

    v9 = (v7 + 104);
    v10 = (v7 + 80);
    while (1)
    {
      if (*v9++)
      {
        v12 = **v10;
        if (v12)
        {
          break;
        }
      }

      ++v10;
      if (!--v8)
      {
        goto LABEL_30;
      }
    }

    v14 = *(v12 + 80);
    v17 = 0;
    v13 = *(v14 + 16);
    goto LABEL_17;
  }

  result = 0;
  v3 = -6700;
LABEL_27:
  if (a2)
  {
    *a2 = v3;
  }

  return result;
}

BOOL dnssec_obj_rrset_is_non_dnskey(uint64_t a1)
{
  if (!*(a1 + 32) || (v1 = *(a1 + 24)) == 0)
  {
    v6 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v7 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v6 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v8 = 136447234;
    v9 = "me->rr_count > 0 && me->rrs != NULL";
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v14 = 1024;
    v15 = 267;
    v16 = 2048;
    v17 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v8, 0x30u);
    return 0;
  }

  v2 = *v1;
  if (*v2 == 240)
  {
    return 0;
  }

  v4 = *(v2 + 2);
  if (v4 == 46)
  {
    v5 = __rev16(*(*(v2 + 5) + 4)) == 48;
  }

  else
  {
    v5 = v4 == 48;
  }

  return !v5;
}

BOOL dnssec_obj_rrset_is_dnskey(uint64_t a1)
{
  if (!*(a1 + 32) || (v1 = *(a1 + 24)) == 0)
  {
    v6 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v7 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v6 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v8 = 136447234;
    v9 = "rrset->rr_count > 0 && rrset->rrs != NULL";
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v14 = 1024;
    v15 = 284;
    v16 = 2048;
    v17 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v8, 0x30u);
    return 0;
  }

  v2 = *v1;
  if (*v2 == 240)
  {
    return 0;
  }

  v4 = *(v2 + 2);
  if (v4 == 46)
  {
    return __rev16(*(*(v2 + 5) + 4)) == 48;
  }

  else
  {
    return v4 == 48;
  }
}

uint64_t dnssec_obj_rrset_get_denial_of_existence(uint64_t a1, int *a2)
{
  if (*(a1 + 32) != 1)
  {
    goto LABEL_14;
  }

  v2 = **(a1 + 24);
  if (*v2 != 240)
  {
    result = 0;
    v5 = -6727;
    goto LABEL_10;
  }

  v3 = *(v2 + 7);
  if (!v3)
  {
LABEL_14:
    result = 0;
    v5 = -6709;
    goto LABEL_10;
  }

  if (*(v3 + 32) || (*(v3 + 40) & 1) != 0)
  {
    result = 0;
  }

  else
  {
    result = *(v3 + 48);
  }

  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = -6727;
  }

LABEL_10:
  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL dnssec_obj_rrset_is_wildcard_answer(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == 2 || v1 == 4)
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      return 0;
    }

    while (1)
    {
      v4 = *v3;
      if (*(*v3 + 4) == 46)
      {
        break;
      }

      v3 = v3[1];
      if (!v3)
      {
        return 0;
      }
    }

    v7 = *(v4 + 32);
    v8 = *v7;
    if (*v7)
    {
      v9 = 0;
      do
      {
        ++v9;
        v10 = &v7[v8];
        v11 = v10[1];
        v7 = v10 + 1;
        v8 = v11;
      }

      while (v11);
    }

    else
    {
      v9 = 0;
    }

    return v9 > *(*(v4 + 40) + 7);
  }

  else
  {
    v5 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      goto LABEL_22;
    }

    v5 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_22:
      v13 = 136447234;
      v14 = "dnssec_obj_rrset_is_completed(me)";
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v19 = 1024;
      v20 = 396;
      v21 = 2048;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v13, 0x30u);
      return 0;
    }
  }

  return result;
}

BOOL dnssec_obj_rrset_is_non_wildcard_answer(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == 2 || v1 == 4)
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      return 0;
    }

    while (1)
    {
      v4 = *v3;
      if (*(*v3 + 4) == 46)
      {
        break;
      }

      v3 = v3[1];
      if (!v3)
      {
        return 0;
      }
    }

    v7 = *(v4 + 32);
    v8 = *v7;
    if (*v7)
    {
      v9 = 0;
      do
      {
        ++v9;
        v10 = &v7[v8];
        v11 = v10[1];
        v7 = v10 + 1;
        v8 = v11;
      }

      while (v11);
    }

    else
    {
      v9 = 0;
    }

    return v9 == *(*(v4 + 40) + 7);
  }

  else
  {
    v5 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      goto LABEL_22;
    }

    v5 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_22:
      v13 = 136447234;
      v14 = "dnssec_obj_rrset_is_completed(me)";
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v19 = 1024;
      v20 = 416;
      v21 = 2048;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v13, 0x30u);
      return 0;
    }
  }

  return result;
}

BOOL dnssec_obj_rrset_needs_to_update_cache(uint64_t a1, int a2)
{
  if (!*(a1 + 32))
  {
    v11 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v12 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v11 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v14 = 136447234;
    v15 = "me->rr_count > 0";
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v20 = 1024;
    v21 = 455;
    v22 = 2048;
    v23 = 0;
LABEL_41:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v14, 0x30u);
    return 0;
  }

  v3 = **(a1 + 24);
  if (*v3 != 240)
  {
    goto LABEL_10;
  }

  v4 = *(v3 + 7);
  if (!v4)
  {
    v11 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v13 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v11 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v14 = 136447234;
    v15 = "me->rrs->rr->dnssec != NULL";
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v20 = 1024;
    v21 = 457;
    v22 = 2048;
    v23 = 0;
    goto LABEL_41;
  }

  if (!*(v4 + 32) && (*(v4 + 40) & 1) == 0)
  {
    v5 = *(v4 + 48);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6 < 6 && ((0x27u >> v6) & 1) != 0)
      {
        return 0;
      }
    }
  }

LABEL_10:
  if ((*(a1 + 60) & 1) == 0)
  {
    return 1;
  }

  v8 = *(a1 + 52);
  cache_record = resource_record_get_cache_record(*(v3 + 7));
  if (!cache_record)
  {
    v11 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v11 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v14 = 136447234;
    v15 = "cr != NULL";
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v20 = 1024;
    v21 = 488;
    v22 = 2048;
    v23 = 0;
    goto LABEL_41;
  }

  v10 = *(cache_record + 80) + 1000 * a2;
  if (v10 <= 1)
  {
    v10 = 1;
  }

  return (v10 - v8) > 999;
}

void *dnssec_obj_rrset_copy_rrs(void *result, size_t *a2, _DWORD *a3)
{
  v3 = result[3];
  if (!v3)
  {
    goto LABEL_17;
  }

  v6 = result;
  v7 = 0;
  do
  {
    v8 = *v3;
    v3 = v3[1];
    if (*(v8 + 4) != 46)
    {
      ++v7;
    }
  }

  while (v3);
  if (v7 && !(v7 >> 61) && (result = malloc_type_calloc(v7, 8uLL, 0xC86B52FDuLL)) != 0)
  {
    v9 = v6[3];
    if (v9)
    {
      v10 = 0;
      do
      {
        if (*(*v9 + 4) != 46)
        {
          result[v10++] = *v9;
        }

        v9 = v9[1];
      }

      while (v9);
    }

    *a2 = v7;
    if (a3)
    {
      *a3 = 0;
    }
  }

  else
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void *dnssec_obj_rrset_copy_dses_with_supported_algorithm(uint64_t a1, size_t *a2, int *a3)
{
  v18 = 0;
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_18;
  }

  v7 = 0;
  do
  {
    result = *v5;
    if (*(*v5 + 4) == 43)
    {
      result = resource_record_as_ds_refers_to_supported_key_algorithm(result);
      v7 += result;
    }

    v5 = v5[1];
  }

  while (v5);
  if (!v7)
  {
LABEL_18:
    v15 = *(a1 + 40);
    v13 = 0;
    v9 = 0;
    if (v15 == 4 || v15 == 2)
    {
      v14 = -6727;
    }

    else
    {
      v14 = -6745;
    }

    v18 = v14;
LABEL_25:
    if (!a3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!(v7 >> 61))
  {
    result = malloc_type_calloc(v7, 8uLL, 0x50B25FD1uLL);
    if (result)
    {
      v9 = result;
      v10 = *(a1 + 24);
      if (v10)
      {
        v11 = 0;
        while (1)
        {
          v12 = *v10;
          if (*(*v10 + 4) == 43)
          {
            goto LABEL_14;
          }

          if ((resource_record_as_ds_refers_to_supported_key_algorithm(v12) & 1) == 0)
          {
            break;
          }

LABEL_16:
          v10 = v10[1];
          if (!v10)
          {
            goto LABEL_38;
          }
        }

        v12 = *v10;
LABEL_14:
        v13 = v11 + 1;
        v9[v11] = dnssec_obj_rr_ds_create(*(v12 + 32), *(v12 + 6), (*(v12 + 40) + 4), *(v12 + 12), 0, &v18);
        v14 = v18;
        if (v18)
        {
          goto LABEL_25;
        }

        ++v11;
        goto LABEL_16;
      }

      v11 = 0;
LABEL_38:
      v14 = 0;
      *a2 = v7;
      v18 = 0;
      v13 = v11;
      if (!a3)
      {
LABEL_27:
        if (v14)
        {
          if (v13)
          {
            v17 = v9;
            do
            {
              if (*v17)
              {
                ref_count_obj_release(*v17);
                *v17 = 0;
              }

              ++v17;
              --v13;
            }

            while (v13);
            goto LABEL_35;
          }

          if (v9)
          {
LABEL_35:
            free(v9);
            return 0;
          }
        }

        return v9;
      }

LABEL_26:
      *a3 = v14;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void **dnssec_obj_rrset_copy_dnskeys(void **result, size_t *a2, int *a3)
{
  v3 = result[3];
  if (!v3)
  {
    goto LABEL_28;
  }

  v6 = result;
  v7 = 0;
  do
  {
    v8 = *v3;
    v3 = v3[1];
    if (*(v8 + 4) == 48)
    {
      ++v7;
    }
  }

  while (v3);
  if (v7 && !(v7 >> 61) && (result = malloc_type_calloc(v7, 8uLL, 0x843DE06DuLL)) != 0)
  {
    v9 = result;
    v15 = 0;
    v10 = v6[3];
    if (v10)
    {
      v11 = 0;
      do
      {
        if (*(*v10 + 4) == 48)
        {
          v12 = v11 + 1;
          v9[v11] = dnssec_obj_rr_dnskey_create(*(*v10 + 32), *(*v10 + 6), (*(*v10 + 40) + 4), *(*v10 + 12), &v15);
          v13 = v15;
          if (v15)
          {
            goto LABEL_18;
          }

          ++v11;
        }

        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
    *a2 = v7;
    v15 = 0;
    v12 = v11;
LABEL_18:
    if (a3)
    {
      *a3 = v13;
    }

    if (v13)
    {
      if (v12)
      {
        v14 = v9;
        do
        {
          if (*v14)
          {
            ref_count_obj_release(*v14);
            *v14 = 0;
          }

          ++v14;
          --v12;
        }

        while (v12);
      }

      free(v9);
      return 0;
    }

    return v9;
  }

  else
  {
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t dnssec_obj_rrset_add_rr(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a2 + 7);
  if (!v2)
  {
    return 4294960591;
  }

  v5 = *(a1 + 40);
  if (v5 == 2)
  {
    if (!*(a1 + 32))
    {
      return 4294960591;
    }
  }

  else if (v5 == 1)
  {
    if (!*(a1 + 32))
    {
      return 4294960587;
    }
  }

  else if (!v5 && *(a1 + 32))
  {
    return 4294960587;
  }

  if (*a2 == 240)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      if (v7 == 1)
      {
        if (**(a1 + 24) == a2)
        {
          return 4294960566;
        }

        else
        {
          return 4294960587;
        }
      }

      return 4294960587;
    }

LABEL_20:
    if (domain_name_labels_canonical_compare())
    {
      return 4294960548;
    }

    result = malloc_type_calloc(1uLL, 0x10uLL, 0x5687AE29uLL);
    if (!result)
    {
      __break(1u);
      return result;
    }

    *result = a2;
    *(result + 8) = *(a1 + 24);
    *(a1 + 40) = 1;
    v9 = *(a1 + 32) + 1;
    *(a1 + 24) = result;
    *(a1 + 32) = v9;
    if (*a2 == 240 || v9 == v7)
    {
      *(a1 + 40) = 2;
    }

    v10 = *(a2 + 7);
    if (v10)
    {
      v11 = *(v10 + 32);
      if (v11 == 1)
      {
        validation_result = dnssec_obj_resource_record_member_get_validation_result(v10);
        result = 0;
        *(a1 + 44) = validation_result;
        return result;
      }

      if (!v11)
      {
        result = 0;
        *(a1 + 44) = 0xFFFFE5C200000000;
        return result;
      }
    }

    v12 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        v14 = *(v10 + 32);
        v16 = 67109120;
        v17 = v14;
        goto LABEL_35;
      }
    }

    else
    {
      v12 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        v13 = *(v10 + 32);
        v16 = 67109120;
        v17 = v13;
LABEL_35:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "DNSSEC aware RR is neither to-be-validated or validated - aware type: %u.", &v16, 8u);
      }
    }

    return 4294960540;
  }

  v7 = *(v2 + 24);
  v8 = *(a1 + 24);
  if (!v8)
  {
LABEL_19:
    if (*(a1 + 32) < v7)
    {
      goto LABEL_20;
    }

    return 4294960591;
  }

  while (*v8 != a2)
  {
    v8 = *(v8 + 8);
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  return 4294960566;
}

uint64_t dnssec_obj_rrset_remove_rr(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(a2 + 7))
  {
    return 4294960591;
  }

  v4 = (a1 + 24);
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_10;
  }

  v6 = *a2;
  if (*v3 != a2)
  {
    while (1)
    {
      v7 = v3;
      v3 = v3[1];
      if (!v3)
      {
        break;
      }

      if (*v3 == a2)
      {
        v4 = v7 + 1;
        goto LABEL_7;
      }
    }

LABEL_10:
    v9 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v10 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return 4294960569;
      }

      v17 = 0;
      v11 = &v17;
    }

    else
    {
      v9 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 4294960569;
      }

      v16 = 0;
      v11 = &v16;
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Record to be removed is not found.", v11, 2u);
    return 4294960569;
  }

LABEL_7:
  v8 = *(a1 + 32);
  if (v6 == 240)
  {
    if (v8 != 1)
    {
      return 4294960587;
    }
  }

  else if (!v8)
  {
    return 4294960587;
  }

  if (!*(a1 + 40))
  {
    return 4294960587;
  }

  *v4 = v3[1];
  free(v3);
  *(a1 + 40) = 3;
  v14 = *(a1 + 32) - 1;
  *(a1 + 32) = v14;
  v15 = *(a2 + 7);
  if (v6 == 240)
  {
    *(a1 + 40) = 4;
    if (!v15)
    {
      return 0;
    }
  }

  else if (*(v15 + 36) == 1 && v14 == *(v15 + 24))
  {
    *(a1 + 40) = 4;
  }

  if (*(v15 + 32))
  {
    return 0;
  }

  result = 0;
  *(a1 + 44) = 0xFFFFE5C200000000;
  return result;
}

BOOL dnssec_obj_rrset_matches_dnskey_key_tag(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (!*(a1 + 32))
  {
    v24 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v26 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v24 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    *buf = 136447234;
    v29 = "me->rr_count > 0";
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    v34 = 1024;
    v35 = 847;
    v36 = 2048;
    v37 = 0;
    goto LABEL_62;
  }

  v5 = *(a1 + 24);
  if (**v5 == 240)
  {
    v27 = 0;
    denial_of_existence = dnssec_obj_rrset_get_denial_of_existence(a1, &v27);
    v7 = v27;
    if (v27)
    {
      v24 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v24 = mDNSLogCategory_DNSSEC_redacted;
        result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      *buf = 136447234;
      v29 = "err == 0";
      v30 = 2082;
      v31 = "";
      v32 = 2082;
      v33 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
      v34 = 1024;
      v35 = 867;
      v36 = 2048;
      v37 = v7;
    }

    else
    {
      v8 = *(denial_of_existence + 72);
      if (*(denial_of_existence + 72))
      {
        v9 = 0;
        v10 = denial_of_existence + 104;
        v11 = denial_of_existence + 80;
        while (1)
        {
          v12 = *(v10 + v9);
          if (!*(v10 + v9))
          {
            break;
          }

          v13 = 0;
          do
          {
            while (!a3)
            {
              if (++v13 >= v12)
              {
                return 0;
              }
            }

            v14 = __rev16(*(*(*(*(v11 + 8 * v9) + 8 * v13) + 24) + 16));
            v15 = a2;
            v16 = 1;
            do
            {
              v17 = *v15++;
              v18 = *(v17 + 80);
              result = v18 == v14;
              if (v16 >= a3)
              {
                break;
              }

              ++v16;
            }

            while (v18 != v14);
            ++v13;
          }

          while (v13 < v12 && v18 != v14);
          ++v9;
          if (v18 != v14 || v9 == v8)
          {
            return result;
          }
        }

        v24 = mDNSLogCategory_DNSSEC;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v25 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v24 = mDNSLogCategory_DNSSEC_redacted;
          result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
          if (!result)
          {
            return result;
          }
        }

        *buf = 136447234;
        v29 = "me->nsec_rrsig_count[i] > 0";
        v30 = 2082;
        v31 = "";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_denial_of_existence.c";
        v34 = 1024;
        v35 = 230;
        v36 = 2048;
        v37 = 0;
      }

      else
      {
        v24 = mDNSLogCategory_DNSSEC;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
        {
          result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v24 = mDNSLogCategory_DNSSEC_redacted;
          result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
          if (!result)
          {
            return result;
          }
        }

        *buf = 136447234;
        v29 = "me->nsec_count > 0";
        v30 = 2082;
        v31 = "";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_denial_of_existence.c";
        v34 = 1024;
        v35 = 227;
        v36 = 2048;
        v37 = 0;
      }
    }

LABEL_62:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
    return 0;
  }

  while (*(*v5 + 4) != 46 || !a3)
  {
LABEL_28:
    v5 = *(v5 + 1);
    if (!v5)
    {
      return 0;
    }
  }

  v21 = __rev16(*(*(*v5 + 40) + 20));
  v22 = a3;
  v23 = a2;
  while (*(*v23 + 80) != v21)
  {
    ++v23;
    if (!--v22)
    {
      goto LABEL_28;
    }
  }

  return 1;
}

uint64_t dnssec_obj_rrset_matches_ds_key_tag(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    while (*(*result + 4) != 46 || !a3)
    {
LABEL_7:
      result = *(result + 8);
      if (!result)
      {
        return result;
      }
    }

    v3 = __rev16(*(*(*result + 40) + 20));
    v4 = a3;
    v5 = a2;
    while (v3 != bswap32(**(*v5 + 24)) >> 16)
    {
      v5 += 8;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }

  return result;
}

uint64_t dnssec_obj_rrset_validate_with_dnskeys(uint64_t a1, _DWORD **a2, size_t a3, int *a4)
{
  v5 = a4;
  v6 = *(a1 + 44);
  if (v6)
  {
    v4 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = -6719;
LABEL_16:
    v60 = v19;
    if (!a4)
    {
      goto LABEL_83;
    }

LABEL_82:
    *v5 = v60;
    goto LABEL_83;
  }

  v8 = *(a1 + 40);
  v9 = v8 == 2 || v8 == 4;
  if (!v9 || (v10 = *(a1 + 32)) == 0)
  {
    v6 = 0;
    v4 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = -6745;
    goto LABEL_16;
  }

  v13 = *(a1 + 24);
  if (**v13 == 240)
  {
    v14 = *(*v13 + 56);
    if (!v14)
    {
      v4 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = -6736;
LABEL_13:
      v60 = v18;
      v6 = 3;
      if (!a4)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    if (!*(v14 + 32) && (*(v14 + 40) & 1) == 0)
    {
      v34 = *(v14 + 48);
      if (v34)
      {
        v55 = a1;
        if (*(v34 + 16))
        {
          if (*(v34 + 72))
          {
            v35 = 0;
            v36 = v34 + 104;
            do
            {
              v37 = *(v36 + v35);
              if (!*(v36 + v35))
              {
LABEL_77:
                v6 = 0;
                v50 = -6745;
                goto LABEL_78;
              }

              v38 = 0;
              do
              {
                while (1)
                {
                  v39 = *(*(v34 + 80 + 8 * v35) + 8 * v38);
                  if (!v39)
                  {
                    v6 = 3;
                    v50 = -6750;
                    goto LABEL_78;
                  }

                  if (a3)
                  {
                    break;
                  }

                  if (++v38 >= v37)
                  {
                    goto LABEL_77;
                  }
                }

                v40 = 0;
                v41 = __rev16(*(*(v39 + 24) + 16));
                do
                {
                  v42 = *(a2[v40++] + 40);
                }

                while (v40 < a3 && v41 != v42);
                ++v38;
              }

              while (v38 < v37 && v41 != v42);
              if (v41 != v42)
              {
                goto LABEL_77;
              }

              ++v35;
            }

            while (v35 != *(v34 + 72));
            v4 = a4;
            v6 = 0;
            v44 = 0;
            v62 = -6736;
            while (1)
            {
              v45 = v36 + 8 * v44;
              v46 = *(v45 - 24);
              v47 = *(v36 + v44);
              v48 = *(v34 + 44);
              if (v48 != 2 && v48 != 1)
              {
                goto LABEL_100;
              }

              v61 = *(v45 - 56);
              v49 = dnssec_obj_rr_validator_create(&v61, 1uLL, v46, v47, a2, a3, 0, 0, 0, 0, &v62);
              v6 = dnssec_obj_rr_validator_validate_rrset(v49, &v62);
              ref_count_obj_release(v49);
              if (v6 == 1 && ++v44 < *(v34 + 72))
              {
                continue;
              }

              v50 = v62;
              goto LABEL_101;
            }
          }

          v6 = 3;
          v50 = -6736;
        }

        else
        {
          v6 = 3;
          v50 = -6720;
        }

LABEL_78:
        v4 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v60 = v50;
        goto LABEL_79;
      }
    }

LABEL_12:
    v4 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -6709;
    goto LABEL_13;
  }

  v20 = 0;
  v21 = 0;
  do
  {
    v22 = *v13;
    v13 = *(v13 + 1);
    if (*(v22 + 2) == 46)
    {
      ++v21;
    }

    else
    {
      ++v20;
    }
  }

  while (v13);
  if (v20 + v21 != v10)
  {
    goto LABEL_12;
  }

  if (!v20 || v20 >> 61 || (v23 = malloc_type_calloc(v20, 8uLL, 0xDB40BCC0uLL)) == 0 || !v21 || v21 >> 61 || (v17 = v23, v54 = v5, (v24 = malloc_type_calloc(v21, 8uLL, 0xC4D96EFBuLL)) == 0))
  {
LABEL_99:
    __break(1u);
LABEL_100:
    v50 = -6736;
LABEL_101:
    v5 = v4;
    goto LABEL_78;
  }

  v15 = v24;
  v60 = -6736;
  v55 = a1;
  v25 = *(a1 + 24);
  if (v25)
  {
    v16 = 0;
    v4 = 0;
    v56 = v24;
    v57 = v17;
    while (1)
    {
      v26 = *v25;
      v27 = *(*v25 + 4);
      v28 = *(*v25 + 32);
      if (v27 == 46)
      {
        v15[v4++] = dnssec_obj_rr_rrsig_create(*(*v25 + 32), (*(v26 + 40) + 4), *(v26 + 12), 0, &v60);
      }

      else
      {
        v29 = *(v26 + 40);
        v58 = *(v26 + 12);
        v59 = *(v26 + 6);
        LODWORD(v61) = 0;
        v30 = malloc_type_calloc(1uLL, 0x50uLL, 0xB7BBD98FuLL);
        if (!v30)
        {
          goto LABEL_99;
        }

        v6 = v30;
        v31 = &_dnssec_obj_rr_kind;
        v30[1] = &_dnssec_obj_rr_kind;
        do
        {
          v32 = v31[2];
          if (v32)
          {
            v32(v6);
          }

          v31 = *v31;
        }

        while (v31);
        ++*v6;
        dnssec_obj_rr_init_fields(v6, v28, v27, v59, (v29 + 4), v58, 0, 0, &v61);
        if (v61)
        {
          v60 = v61;
          ref_count_obj_release(v6);
          v6 = 0;
        }

        else
        {
          v60 = 0;
        }

        v15 = v56;
        v17 = v57;
        v57[v16++] = v6;
      }

      if (v60)
      {
        break;
      }

      v25 = v25[1];
      if (!v25)
      {
        goto LABEL_47;
      }
    }

    v6 = 0;
    v5 = v54;
    if (v54)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v4 = 0;
  v16 = 0;
LABEL_47:
  v33 = dnssec_obj_rr_validator_create(v17, v16, v15, v4, a2, a3, 0, 0, 0, 0, &v60);
  v6 = dnssec_obj_rr_validator_validate_rrset(v33, &v60);
  ref_count_obj_release(v33);
  v5 = v54;
LABEL_79:
  *(v55 + 44) = v6;
  if (v6)
  {
    *(v55 + 48) = v60;
  }

  if (v5)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v4)
  {
    v51 = v15;
    do
    {
      if (*v51)
      {
        ref_count_obj_release(*v51);
        *v51 = 0;
      }

      ++v51;
      --v4;
    }

    while (v4);
  }

  if (v16)
  {
    v52 = v17;
    do
    {
      if (*v52)
      {
        ref_count_obj_release(*v52);
        *v52 = 0;
      }

      ++v52;
      --v16;
    }

    while (v16);
  }

  if (v15)
  {
    free(v15);
  }

  if (v17)
  {
    free(v17);
  }

  return v6;
}

uint64_t dnssec_obj_rrset_validate_with_dses_or_trust_anchors(uint64_t a1, _DWORD **a2, size_t a3, _DWORD **a4, size_t a5, _DWORD *a6)
{
  v40 = 0;
  v7 = *(a1 + 44);
  if (v7)
  {
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v16 = 0;
    v30 = -6719;
    goto LABEL_37;
  }

  v9 = *(a1 + 40);
  v10 = v9 == 2 || v9 == 4;
  if (!v10 || !*(a1 + 32))
  {
    goto LABEL_36;
  }

  if (***(a1 + 24) == 240)
  {
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v16 = 0;
    v31 = -6736;
    goto LABEL_42;
  }

  if (!dnssec_obj_rrset_is_dnskey(a1))
  {
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v16 = 0;
    v31 = -6705;
    goto LABEL_42;
  }

  if (!(a5 | a3))
  {
LABEL_36:
    v7 = 0;
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v16 = 0;
    v30 = -6745;
    goto LABEL_37;
  }

  v15 = *(a1 + 16);
  v16 = dnssec_obj_rrset_copy_signer_name(a1, &v40);
  if (v40)
  {
    v7 = 0;
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v30 = -6728;
LABEL_37:
    v40 = v30;
    if (!a6)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (ref_count_obj_compare(v15, v16, 1))
  {
    v27 = 0;
    v24 = 0;
    v26 = 0;
    v22 = 0;
    v31 = -90005;
LABEL_42:
    v40 = v31;
    v7 = 3;
    if (!a6)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v17 = *(a1 + 24);
  if (!v17)
  {
    if (*(a1 + 32))
    {
LABEL_41:
      v27 = 0;
      v24 = 0;
      v26 = 0;
      v22 = 0;
      v31 = -6709;
      goto LABEL_42;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(*v17 + 4);
    if (v20 == 46)
    {
      ++v19;
    }

    else
    {
      if (v20 != 48)
      {
        goto LABEL_41;
      }

      ++v18;
    }

    v17 = v17[1];
  }

  while (v17);
  if (v18 + v19 != *(a1 + 32))
  {
    goto LABEL_41;
  }

  if (!v18)
  {
    goto LABEL_40;
  }

  if (v18 >> 61)
  {
    goto LABEL_40;
  }

  v21 = malloc_type_calloc(v18, 8uLL, 0x2F6DAC2AuLL);
  if (!v21)
  {
    goto LABEL_40;
  }

  if (!v19)
  {
    goto LABEL_40;
  }

  if (v19 >> 61)
  {
    goto LABEL_40;
  }

  v22 = v21;
  v39 = a6;
  v23 = malloc_type_calloc(v19, 8uLL, 0xF2BA0562uLL);
  if (!v23)
  {
    goto LABEL_40;
  }

  v24 = v23;
  v37 = a4;
  v38 = a2;
  v40 = -6736;
  v25 = *(a1 + 24);
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = *v25;
      v29 = *(*v25 + 4);
      if (v29 == 46)
      {
        v24[v27++] = dnssec_obj_rr_rrsig_create(*(v28 + 32), (*(v28 + 40) + 4), *(v28 + 12), 0, &v40);
      }

      else
      {
        if (v29 != 48)
        {
          v7 = 0;
          v40 = -6736;
LABEL_69:
          a6 = v39;
          if (!v39)
          {
            goto LABEL_50;
          }

LABEL_49:
          *a6 = v40;
          goto LABEL_50;
        }

        v22[v26++] = dnssec_obj_rr_dnskey_create(*(v28 + 32), *(v28 + 6), (*(v28 + 40) + 4), *(v28 + 12), &v40);
      }

      if (v40)
      {
        goto LABEL_67;
      }

      v25 = v25[1];
      if (!v25)
      {
        goto LABEL_45;
      }
    }
  }

  v27 = 0;
  v26 = 0;
LABEL_45:
  v32 = dnssec_obj_rr_validator_create(v22, v26, v24, v19, v22, v26, v38, a3, v37, a5, &v40);
  if (v40)
  {
LABEL_67:
    v7 = 0;
    goto LABEL_69;
  }

  v33 = v32;
  v7 = dnssec_obj_rr_validator_validate_rrset(v32, &v40);
  ref_count_obj_release(v33);
  *(a1 + 44) = v7;
  a6 = v39;
  if (v7)
  {
    *(a1 + 48) = v40;
  }

  if (v39)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (v16)
  {
    ref_count_obj_release(v16);
  }

  if (v27)
  {
    v34 = v24;
    do
    {
      if (*v34)
      {
        ref_count_obj_release(*v34);
        *v34 = 0;
      }

      ++v34;
      --v27;
    }

    while (v27);
  }

  if (v26)
  {
    v35 = v22;
    do
    {
      if (*v35)
      {
        ref_count_obj_release(*v35);
        *v35 = 0;
      }

      ++v35;
      --v26;
    }

    while (v26);
  }

  if (v24)
  {
    free(v24);
  }

  if (v22)
  {
    free(v22);
  }

  return v7;
}

void _mdns_dns_service_manager_finalize(void *a1)
{
  _mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, &__block_literal_global_110);
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    dispatch_release(v3);
    a1[11] = 0;
  }

  v4 = a1[13];
  if (v4)
  {
    _Block_release(v4);
    a1[13] = 0;
  }
}

uint64_t _mdns_dns_service_manager_enumerate_all_service_array_pointers(uint64_t a1, uint64_t a2)
{
  v7[0] = a1 + 32;
  v7[1] = a1 + 40;
  v7[2] = a1 + 48;
  v7[3] = a1 + 56;
  v7[4] = a1 + 64;
  v7[5] = a1 + 72;
  result = (*(a2 + 16))(a2);
  if (result)
  {
    v4 = v7;
    v5 = -1;
    while (v5 != 5)
    {
      v6 = *v4++;
      ++v5;
      if (((*(a2 + 16))(a2, v6) & 1) == 0)
      {
        return v5 > 5;
      }
    }

    v5 = 6;
    return v5 > 5;
  }

  return result;
}

BOOL ___mdns_dns_service_manager_finalize_block_invoke(id a1, __CFArray **a2)
{
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return 1;
}

void *_mdns_dns_service_manager_copy_description(void *a1, int a2, char a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2 && (appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1), (*(v20 + 6) = appended) != 0) || (v9 = mdns_string_builder_append_formatted(v7, "{"), (*(v20 + 6) = v9) != 0) || (v16[3] = "\n\t", v13[0] = _NSConcreteStackBlock, v13[1] = 0x40000000, v13[2] = ___mdns_dns_service_manager_copy_description_block_invoke, v13[3] = &unk_10014EE00, v13[4] = &v19, v13[5] = &v15, v13[6] = v7, v14 = a3, v23[0] = _NSConcreteStackBlock, v23[1] = 0x40000000, v23[2] = ___mdns_dns_service_manager_enumerate_all_services_block_invoke, v23[3] = &unk_10014F518, v23[4] = v13, v24[0] = _NSConcreteStackBlock, v24[1] = 0x40000000, v24[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke, v24[3] = &unk_10014F4F0, v24[4] = v23, _mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, v24), *(v20 + 6)) || (v10 = mdns_string_builder_append_formatted(v7, "\n}"), (*(v20 + 6) = v10) != 0))
    {
      v11 = 0;
    }

    else
    {
      v11 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v11;
}

BOOL ___mdns_dns_service_manager_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ",\n\t";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

BOOL ___mdns_dns_service_manager_enumerate_all_services_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___mdns_dns_service_enumerate_array_including_variants_and_discovered_alts_block_invoke;
  v4[3] = &unk_10014F540;
  v4[4] = v2;
  return mdns_cfarray_enumerate(a2, v4);
}

uint64_t ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke(uint64_t a1, void *a2)
{
  if (*a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return 1;
  }
}

uint64_t ___mdns_dns_service_enumerate_array_including_variants_and_discovered_alts_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v5 = *(a2 + 128);
    if (!v5 || (result = mdns_cfarray_enumerate(v5, *(a1 + 32)), result))
    {
      v6 = *(a2 + 144);
      if (v6)
      {
        v7 = *(a1 + 32);

        return mdns_cfarray_enumerate(v6, v7);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void _mdns_dns_service_finalize(void *a1)
{
  if (a1[14])
  {
    v2 = a1[15];
    if (v2)
    {
      v2();
    }

    a1[14] = 0;
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
    a1[10] = 0;
  }

  while (1)
  {
    v4 = a1[11];
    if (!v4)
    {
      break;
    }

    a1[11] = *v4;
    _domain_item_free(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    nw_release(v5);
    a1[6] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    nw_release(v6);
    a1[12] = 0;
  }

  v7 = a1[13];
  if (v7)
  {
    free(v7);
    a1[13] = 0;
  }

  v8 = a1[16];
  if (v8)
  {
    CFRelease(v8);
    a1[16] = 0;
  }

  v9 = a1[17];
  if (v9)
  {
    os_release(v9);
    a1[17] = 0;
  }

  v10 = a1[18];
  if (v10)
  {
    CFRelease(v10);
    a1[18] = 0;
  }

  v11 = a1[19];
  if (v11)
  {
    CFRelease(v11);
    a1[19] = 0;
  }

  v12 = a1[20];
  if (v12)
  {
    xpc_release(v12);
    a1[20] = 0;
  }

  v13 = a1[21];
  if (v13)
  {
    free(v13);
    a1[21] = 0;
  }

  v14 = a1[22];
  if (v14)
  {
    free(v14);
    a1[22] = 0;
  }

  v15 = a1[24];
  if (v15)
  {
    CFRelease(v15);
    a1[24] = 0;
  }

  v16 = a1[26];
  if (v16)
  {
    nw_release(v16);
    a1[26] = 0;
  }

  v17 = a1[27];
  if (v17)
  {
    os_release(v17);
    a1[27] = 0;
  }

  v18 = a1[29];
  if (v18)
  {
    CFRelease(v18);
    a1[29] = 0;
  }
}

void _domain_item_free(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    os_release(v2);
  }

  free(a1);
}

uint64_t _mdns_dns_service_equal_ex(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v5 = *(a1 + 280);
  if (v5 != *(a2 + 280) || *(a1 + 256) != *(a2 + 256) || v5 == 3 && *(a1 + 260) != *(a2 + 260))
  {
    return 0;
  }

  v7 = *(a1 + 80);
  v8 = *(a2 + 80);
  if (v7 == v8 || (result = 0, v7) && v8 && (result = CFEqual(*(a1 + 80), v8), result))
  {
    if (a3)
    {
      return 1;
    }

    v10 = a1 + 88;
    v11 = a2 + 88;
    while (1)
    {
      v11 = *v11;
      v10 = *v10;
      if (!v10 || v11 == 0)
      {
        break;
      }

      v13 = _domain_item_compare(v10, v11, 0);
      result = 0;
      if (v13)
      {
        return result;
      }
    }

    return !(v10 | v11);
  }

  return result;
}

uint64_t _domain_item_compare(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  v5 = *(a2 + 8);
  v6 = v4 - *(v5 + 48);
  if (v6)
  {
    if (v6 < 1)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (v3 != v5 && v4 >= 1)
    {
      v11 = *(v3 + 24);
      v12 = *(v5 + 24);
      v13 = v4 - 1;
      while (1)
      {
        v14 = v4;
        v15 = __OFSUB__(v4--, 1);
        if (v4 < 0 != v15)
        {
          return (a3 & 1) == 0 && *(a1 + 16) < *(a2 + 16);
        }

        v16 = v11;
        v17 = v12;
        if (v4)
        {
          v18 = v13;
          v16 = v11;
          do
          {
            if (!*v16)
            {
              break;
            }

            v16 += *v16 + 1;
            --v18;
          }

          while (v18);
          v19 = v13;
          v17 = v12;
          do
          {
            if (!*v17)
            {
              break;
            }

            v17 += *v17 + 1;
            --v19;
          }

          while (v19);
        }

        v22 = *v16;
        v20 = v16 + 1;
        v21 = v22;
        v25 = *v17;
        v23 = v17 + 1;
        v24 = v25;
        if (v21 >= v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = v21;
        }

        v27 = mdns_memcmp_us_ascii_case_insensitive(v20, v23, v26);
        if (v27)
        {
          goto LABEL_26;
        }

        if (v21 < v24)
        {
          break;
        }

        --v13;
        if (v21 > v24)
        {
          LOBYTE(v27) = 1;
LABEL_26:
          if (v14 < 1)
          {
            return (a3 & 1) == 0 && *(a1 + 16) < *(a2 + 16);
          }

          return v27;
        }
      }

      LOBYTE(v27) = -1;
      goto LABEL_26;
    }

    return (a3 & 1) == 0 && *(a1 + 16) < *(a2 + 16);
  }
}

void *_mdns_dns_service_copy_description(uint64_t a1, int a2, int a3)
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v69 + 6) = appended;
      if (appended)
      {
        goto LABEL_36;
      }
    }

    v9 = mdns_string_builder_append_formatted(v7, "id: %llu", *(a1 + 24));
    *(v69 + 6) = v9;
    if (v9)
    {
      goto LABEL_36;
    }

    v10 = mdns_string_builder_append_formatted(v7, ", type: ");
    *(v69 + 6) = v10;
    if (v10)
    {
      goto LABEL_36;
    }

    v11 = *(a1 + 281) > 5uLL ? mdns_string_builder_append_formatted(v7, "«INVALID %u»") : mdns_string_builder_append_formatted(v7, "%s");
    *(v69 + 6) = v11;
    if (v11)
    {
      goto LABEL_36;
    }

    v13 = mdns_string_builder_append_formatted(v7, ", source: ");
    *(v69 + 6) = v13;
    if (v13)
    {
      goto LABEL_36;
    }

    v14 = (*(a1 + 282) - 1) > 4 ? mdns_string_builder_append_formatted(v7, "«INVALID %u»") : mdns_string_builder_append_formatted(v7, "%s");
    *(v69 + 6) = v14;
    if (v14)
    {
      goto LABEL_36;
    }

    v15 = mdns_string_builder_append_formatted(v7, ", scope: ");
    *(v69 + 6) = v15;
    if (v15)
    {
      goto LABEL_36;
    }

    v16 = *(a1 + 280);
    if (v16 <= 2)
    {
      if (v16 == 1)
      {
        v17 = mdns_string_builder_append_formatted(v7, "none");
        goto LABEL_31;
      }

      if (v16 == 2)
      {
        v17 = mdns_string_builder_append_formatted(v7, "interface", v61);
        goto LABEL_31;
      }
    }

    else
    {
      switch(v16)
      {
        case 3u:
          v17 = mdns_string_builder_append_formatted(v7, "service (%u)");
          goto LABEL_31;
        case 4u:
          v18 = mdns_string_builder_append_formatted(v7, "uuid");
          *(v69 + 6) = v18;
          if (v18)
          {
            goto LABEL_36;
          }

          if (a3)
          {
LABEL_32:
            v19 = "";
            if (*(a1 + 104))
            {
              v19 = *(a1 + 104);
            }

            v20 = mdns_string_builder_append_formatted(v7, ", interface: %s/%u", v19, *(a1 + 256));
            *(v69 + 6) = v20;
            if (!v20)
            {
              v21 = mdns_string_builder_append_formatted(v7, ", servers: {");
              *(v69 + 6) = v21;
              if (!v21)
              {
                v65[3] = 0;
                v23 = *(a1 + 80);
                if (!v23 || (v62[0] = _NSConcreteStackBlock, v62[1] = 0x40000000, v62[2] = ___mdns_dns_service_copy_description_block_invoke, v62[3] = &unk_10014F1B0, v62[4] = &v68, v62[5] = &v64, v62[6] = v7, v63 = a3, mdns_cfarray_enumerate(v23, v62), !*(v69 + 6)))
                {
                  v24 = mdns_string_builder_append_formatted(v7, "}");
                  *(v69 + 6) = v24;
                  if (!v24)
                  {
                    v25 = mdns_string_builder_append_formatted(v7, ", domains: {");
                    *(v69 + 6) = v25;
                    if (!v25)
                    {
                      v65[3] = 0;
                      v26 = *(a1 + 136);
                      if (!v26)
                      {
                        v26 = a1;
                      }

                      v27 = *(v26 + 88);
                      if (v27)
                      {
                        v28 = 0;
                        do
                        {
                          v29 = mdns_string_builder_append_description_with_prefix(v7, v28, v27[1], a3);
                          *(v69 + 6) = v29;
                          if (v29)
                          {
                            goto LABEL_36;
                          }

                          if (*(v27 + 4))
                          {
                            v30 = mdns_string_builder_append_formatted(v7, " (%u)", *(v27 + 4));
                            *(v69 + 6) = v30;
                            if (v30)
                            {
                              goto LABEL_36;
                            }
                          }

                          v65[3] = ", ";
                          v27 = *v27;
                          v28 = ", ";
                        }

                        while (v27);
                      }

                      v31 = mdns_string_builder_append_formatted(v7, "}");
                      *(v69 + 6) = v31;
                      if (!v31)
                      {
                        v32 = mdns_string_builder_append_formatted(v7, ", attributes: {");
                        *(v69 + 6) = v32;
                        if (!v32)
                        {
                          v33 = v65;
                          v34 = &word_10014F1D8;
                          v65[3] = "";
                          v35 = 7;
                          do
                          {
                            if ((*v34 & *(a1 + 276)) != 0)
                            {
                              v36 = mdns_string_builder_append_formatted(v7, "%s%s", v33[3], *(v34 - 1));
                              *(v69 + 6) = v36;
                              if (v36)
                              {
                                goto LABEL_36;
                              }

                              v33 = v65;
                              v65[3] = ", ";
                            }

                            v34 += 8;
                            --v35;
                          }

                          while (v35);
                          if (*(a1 + 96) && nw_resolver_config_get_allow_failover())
                          {
                            v37 = mdns_string_builder_append_formatted(v7, "%sallows-failover", v65[3]);
                            *(v69 + 6) = v37;
                            if (v37)
                            {
                              goto LABEL_36;
                            }

                            v65[3] = ", ";
                          }

                          if (!*(a1 + 240) || !*(a1 + 248) || (v38 = mdns_string_builder_append_formatted(v7, "%sreports-push-connection-error", v65[3]), (*(v69 + 6) = v38) == 0))
                          {
                            v39 = mdns_string_builder_append_formatted(v7, "}");
                            *(v69 + 6) = v39;
                            if (!v39)
                            {
                              v40 = mdns_string_builder_append_formatted(v7, ", interface properties: {");
                              *(v69 + 6) = v40;
                              if (!v40)
                              {
                                v41 = v65;
                                v65[3] = "";
                                v42 = &word_10014F248;
                                v43 = 8;
                                do
                                {
                                  if ((*v42 & *(a1 + 276)) != 0)
                                  {
                                    v44 = mdns_string_builder_append_formatted(v7, "%s%s", v41[3], *(v42 - 1));
                                    *(v69 + 6) = v44;
                                    if (v44)
                                    {
                                      goto LABEL_36;
                                    }

                                    v41 = v65;
                                    v65[3] = ", ";
                                  }

                                  v42 += 8;
                                  --v43;
                                }

                                while (v43);
                                v45 = mdns_string_builder_append_formatted(v7, "}");
                                *(v69 + 6) = v45;
                                if (!v45)
                                {
                                  if (!*(a1 + 96))
                                  {
                                    goto LABEL_106;
                                  }

                                  v46 = mdns_string_builder_append_formatted(v7, ", resolver config: {");
                                  *(v69 + 6) = v46;
                                  if (!v46)
                                  {
                                    v47 = mdns_string_builder_append_formatted(v7, "provider name: ");
                                    *(v69 + 6) = v47;
                                    if (!v47)
                                    {
                                      provider_name_cstr = _mdns_dns_service_get_provider_name_cstr(a1);
                                      if (!provider_name_cstr)
                                      {
                                        goto LABEL_108;
                                      }

                                      v49 = provider_name_cstr;
                                      v73 = 0u;
                                      memset(out, 0, sizeof(out));
                                      if (a3)
                                      {
                                        if (DNSMessagePrintObfuscatedString(out, provider_name_cstr) < 0)
                                        {
                                          v49 = "«REDACTED»";
                                        }

                                        else
                                        {
                                          v49 = out;
                                        }
                                      }

                                      v50 = mdns_string_builder_append_formatted(v7, "%s", v49);
                                      *(v69 + 6) = v50;
                                      if (!v50)
                                      {
LABEL_108:
                                        v51 = mdns_string_builder_append_formatted(v7, ", provider path: ");
                                        *(v69 + 6) = v51;
                                        if (!v51)
                                        {
                                          v52 = *(a1 + 136);
                                          if (!v52 || !*(v52 + 96))
                                          {
                                            v52 = a1;
                                          }

                                          v53 = *(v52 + 168);
                                          if (!v53)
                                          {
                                            goto LABEL_107;
                                          }

                                          v73 = 0u;
                                          memset(out, 0, sizeof(out));
                                          if (a3)
                                          {
                                            if (DNSMessagePrintObfuscatedString(out, v53) < 0)
                                            {
                                              v53 = "«REDACTED»";
                                            }

                                            else
                                            {
                                              v53 = out;
                                            }
                                          }

                                          v54 = mdns_string_builder_append_formatted(v7, "%s", v53);
                                          *(v69 + 6) = v54;
                                          if (!v54)
                                          {
LABEL_107:
                                            v55 = mdns_string_builder_append_formatted(v7, "}");
                                            *(v69 + 6) = v55;
                                            if (!v55)
                                            {
LABEL_106:
                                              if (!*(a1 + 176) || (v56 = mdns_string_builder_append_formatted(v7, ", connection hostname: %s", *(a1 + 176)), (*(v69 + 6) = v56) == 0))
                                              {
                                                if (!*(a1 + 278) || (v57 = mdns_string_builder_append_formatted(v7, ", port: %d", *(a1 + 278)), (*(v69 + 6) = v57) == 0))
                                                {
                                                  v58 = *(a1 + 216);
                                                  if (!v58 || (v59 = mdns_string_builder_append_formatted(v7, ", SRV name: %s", *(v58 + 40)), (*(v69 + 6) = v59) == 0))
                                                  {
                                                    v60 = *(a1 + 136) ? mdns_string_builder_append_formatted(v7, ", parent: %llu") : mdns_string_builder_append_formatted(v7, ", use count: %d");
                                                    *(v69 + 6) = v60;
                                                    if (!v60)
                                                    {
                                                      v12 = mdns_string_builder_copy_string(v7);
                                                      goto LABEL_37;
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
                      }
                    }
                  }
                }
              }
            }

LABEL_36:
            v12 = 0;
LABEL_37:
            os_release(v7);
            goto LABEL_38;
          }

          *uu = 0;
          v75 = 0;
          nw_resolver_config_get_identifier();
          memset(out, 0, 37);
          uuid_unparse(uu, out);
          v17 = mdns_string_builder_append_formatted(v7, " (%s)");
LABEL_31:
          *(v69 + 6) = v17;
          if (v17)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        case 5u:
          v17 = mdns_string_builder_append_formatted(v7, "none+interface", v61);
          goto LABEL_31;
      }
    }

    v17 = mdns_string_builder_append_formatted(v7, "«INVALID %d»");
    goto LABEL_31;
  }

  v12 = 0;
LABEL_38:
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  return v12;
}

BOOL ___mdns_dns_service_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

char *_mdns_dns_service_get_provider_name_cstr(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1 || !*(v1 + 96))
  {
    v1 = a1;
  }

  result = *(v1 + 160);
  if (result)
  {
    return xpc_string_get_string_ptr(result);
  }

  return result;
}

BOOL __mdns_dns_service_manager_create_block_invoke(id a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
  *a2 = Mutable;
  return Mutable != 0;
}

void __mdns_dns_service_manager_activate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0 && !*(v1 + 96))
  {
    v2 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, *(v1 + 88));
    *(v1 + 96) = v2;
    if (v2)
    {
      os_retain(v1);
      v3 = *(v1 + 96);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = ___mdns_dns_service_manager_activate_internal_block_invoke;
      handler[3] = &__block_descriptor_tmp_5;
      handler[4] = v1;
      dispatch_source_set_event_handler(v3, handler);
      v4 = *(v1 + 96);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 0x40000000;
      v5[2] = ___mdns_dns_service_manager_activate_internal_block_invoke_2;
      v5[3] = &__block_descriptor_tmp_6;
      v5[4] = v1;
      dispatch_source_set_cancel_handler(v4, v5);
      dispatch_activate(*(v1 + 96));
    }

    else
    {
      _mdns_dns_service_manager_terminate(v1, -6729);
    }
  }
}

uint64_t ___mdns_dns_service_manager_activate_internal_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 104);
  if (result)
  {
    return (*(result + 16))(result, 3, 0);
  }

  return result;
}

void _mdns_dns_service_manager_terminate(uint64_t a1, int a2)
{
  if ((*(a1 + 130) & 1) == 0)
  {
    *(a1 + 131) = 1;
    v4 = *(a1 + 96);
    if (v4)
    {
      dispatch_source_cancel(*(a1 + 96));
      dispatch_release(v4);
      *(a1 + 96) = 0;
    }

    Count = CFArrayGetCount(*(a1 + 80));
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
        mdns_interface_monitor_invalidate(ValueAtIndex);
      }
    }

    CFArrayRemoveAllValues(*(a1 + 80));
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = ___mdns_dns_service_manager_terminate_block_invoke;
    v13[3] = &__block_descriptor_tmp_117;
    v13[4] = a1;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v14[3] = &unk_10014F4F0;
    v14[4] = v13;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, v14);
    v9 = *(a1 + 112);
    if (v9)
    {
      mdns_system_remove_network_policy(v9);
      *(a1 + 112) = 0;
    }

    os_retain(a1);
    v10 = *(a1 + 88);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___mdns_dns_service_manager_terminate_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_118;
    v11[4] = a1;
    v12 = a2;
    dispatch_async(v10, v11);
  }
}

uint64_t ___mdns_dns_service_manager_terminate_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___mdns_dns_service_manager_terminate_services_block_invoke;
  v5[3] = &__block_descriptor_tmp_119;
  v5[4] = v3;
  mdns_cfarray_enumerate(a2, v5);
  CFArrayRemoveAllValues(a2);
  return 1;
}

void ___mdns_dns_service_manager_terminate_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[13];
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    (*(v3 + 16))(v2[13], v4);
    v2 = *(a1 + 32);
  }

  os_release(v2);
}

void _mdns_dns_service_manager_terminate_service(uint64_t a1, uint64_t a2)
{
  _mdns_dns_service_clear_use_count(a2);
  _mdns_dns_service_make_defunct(a2);
  v4 = *(a2 + 96);
  if (v4 && *(a2 + 284) == 1)
  {
    *(a2 + 284) = 0;
    _mdns_dns_service_manager_cancel_resolver_config_updates(a1, v4);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = ___mdns_dns_service_manager_terminate_service_block_invoke;
  v11[3] = &__block_descriptor_tmp_127;
  v11[4] = a1;
  v5 = *(a2 + 128);
  if (v5)
  {
    mdns_cfarray_enumerate(v5, v11);
    v6 = *(a2 + 128);
    if (v6)
    {
      CFRelease(v6);
      *(a2 + 128) = 0;
    }
  }

  v7 = *(a2 + 144);
  if (v7)
  {
    mdns_cfarray_enumerate(v7, v11);
    v8 = *(a2 + 144);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 144) = 0;
    }
  }

  v9 = *(a2 + 152);
  if (v9)
  {
    mdns_cfarray_enumerate(v9, v11);
    v10 = *(a2 + 152);
    if (v10)
    {
      CFRelease(v10);
      *(a2 + 152) = 0;
    }
  }
}

void _mdns_dns_service_clear_use_count(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 224));
    dispatch_release(v2);
    *(a1 + 224) = 0;
  }

  *(a1 + 264) = 0;
}

void _mdns_dns_service_make_defunct(uint64_t a1)
{
  *(a1 + 276) |= 1u;
  v2 = *(a1 + 200);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 200));
    dispatch_release(v2);
    *(a1 + 200) = 0;
  }

  _mdns_dns_service_forget_all_ddr_queriers(a1);
  if (*(a1 + 208))
  {
    nw_array_apply();
    v3 = *(a1 + 208);
    if (v3)
    {
      nw_release(v3);
      *(a1 + 208) = 0;
    }
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    mdns_resolver_invalidate(v4);
    os_release(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    mdns_push_server_invalidate(v5);
    os_release(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    v7 = *(a1 + 248);
    if (!v7 || (block[0] = _NSConcreteStackBlock, block[1] = 0x40000000, block[2] = ___mdns_dns_service_make_defunct_block_invoke, block[3] = &unk_10014EFB0, block[4] = v7, dispatch_async(v6, block), (v6 = *(a1 + 240)) != 0))
    {
      dispatch_release(v6);
      *(a1 + 240) = 0;
    }
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    _Block_release(v8);
    *(a1 + 248) = 0;
  }
}

uint64_t _mdns_dns_service_manager_cancel_resolver_config_updates(uint64_t a1, uint64_t a2)
{
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  return nw_resolver_config_cancel_updates();
}

void ___mdns_dns_service_manager_cancel_resolver_config_updates_block_invoke(uint64_t a1)
{
  os_release(*(a1 + 32));
  v2 = *(a1 + 40);

  nw_release(v2);
}

void _mdns_dns_service_forget_all_ddr_queriers(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    mdns_client_invalidate(v2);
    os_release(*(a1 + 184));
    *(a1 + 184) = 0;
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    mdns_cfarray_enumerate(v3, &__block_literal_global_132);
    v4 = *(a1 + 192);

    CFArrayRemoveAllValues(v4);
  }
}

void __mdns_dns_service_manager_register_native_service_block_invoke(void *a1)
{
  v2 = a1[6];
  if (*(v2 + 131) == 1)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *(*(a1[5] + 8) + 24) = -6752;
    return;
  }

  v3 = *(v2 + 24);
  v4 = a1[7];
  v5 = *(a1[5] + 8);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v6 = *(v4 + 48);
  v7 = *(v4 + 52);
  if (*(v4 + 52))
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || v7 > 2)
  {
    v10 = 0;
    v11 = -6705;
LABEL_20:
    *(v21 + 6) = v11;
    goto LABEL_21;
  }

  v12 = _mdns_dns_service_create(1, 1, (0x50201u >> (8 * (v7 & 0x1F))) & 7, &v23);
  v10 = v12;
  if (v12)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v25 = ___mdns_dns_service_create_native_source_service_from_definition_block_invoke;
    v26 = &unk_10014E9B8;
    v27 = &v20;
    v28 = v12;
    mdns_cfarray_enumerate(*(v4 + 24), &buf);
    v13 = *(v21 + 6);
    if (v13 || (v19[0] = _NSConcreteStackBlock, v19[1] = 0x40000000, v19[2] = ___mdns_dns_service_create_native_source_service_from_definition_block_invoke_2, v19[3] = &unk_10014E9E0, v19[4] = &v20, v19[5] = v10, mdns_cfset_enumerate(*(v4 + 32), v19), (v13 = *(v21 + 6)) != 0))
    {
      os_release(v10);
      _Block_object_dispose(&v20, 8);
      v16 = 0;
      *(v5 + 24) = v13;
      goto LABEL_30;
    }

    *(v10 + 256) = v6;
    if (v6)
    {
      *(v10 + 104) = mdns_system_interface_index_to_name(v6);
    }

    v11 = 0;
    *(v10 + 276) = 6;
    if (*(v4 + 53))
    {
      v14 = 8198;
    }

    else
    {
      v14 = 6;
    }

    *(v10 + 276) = v14;
    goto LABEL_20;
  }

  v11 = *(v21 + 6);
LABEL_21:
  _Block_object_dispose(&v20, 8);
  if (!v11)
  {
    _mdns_dns_service_increment_use_count(v10);
    CFArrayAppendValue(v3, v10);
    _mdns_dns_service_manager_update_interface_properties_for_service(v2, v10);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v17 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Registered native service -- %@", &buf, 0xCu);
    }

    v15 = *(v10 + 24);
    *(v5 + 24) = 0;
    goto LABEL_29;
  }

  v15 = 0;
  v16 = 0;
  *(v5 + 24) = v11;
  if (v10)
  {
LABEL_29:
    os_release(v10);
    v16 = v15;
  }

LABEL_30:
  *(*(a1[4] + 8) + 24) = v16;
  if (*(*(a1[4] + 8) + 24))
  {
    v18 = *(a1[6] + 96);
    if (v18)
    {
      dispatch_source_merge_data(v18, 1uLL);
    }
  }
}

uint64_t _mdns_dns_service_create(char a1, char a2, char a3, int *a4)
{
  v8 = _os_object_alloc();
  v9 = v8;
  if (!v8)
  {
    v12 = -6728;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_7;
  }

  v10 = &_mdns_dns_service_kind;
  *(v8 + 16) = &_mdns_dns_service_kind;
  do
  {
    v11 = v10[2];
    if (v11)
    {
      v11(v9);
    }

    v10 = *v10;
  }

  while (v10);
  v12 = 0;
  *(v9 + 24) = atomic_fetch_add_explicit(&_mdns_get_next_dns_service_id_s_next_id, 1uLL, memory_order_relaxed);
  *(v9 + 281) = a1;
  *(v9 + 282) = a2;
  *(v9 + 280) = a3;
  if (a4)
  {
LABEL_7:
    *a4 = v12;
  }

  return v9;
}

BOOL ___mdns_dns_service_create_native_source_service_from_definition_block_invoke_2(uint64_t a1, void *a2)
{
  _mdns_dns_service_add_domain(*(a1 + 40), a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t _mdns_dns_service_increment_use_count(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 224);
  if (v2 == 1)
  {
    if (!v3)
    {
      v2 = 1;
      goto LABEL_7;
    }

    *(a1 + 264) = 0;
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    dispatch_source_cancel(v3);
    dispatch_release(v3);
    *(a1 + 224) = 0;
    v2 = *(a1 + 264);
  }

LABEL_7:
  result = (v2 + 1);
  *(a1 + 264) = result;
  return result;
}

void _mdns_dns_service_manager_update_interface_properties_for_service(CFArrayRef *a1, uint64_t a2)
{
  v4 = *(a2 + 256);
  Count = CFArrayGetCount(a1[10]);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[10], v7);
      if (ValueAtIndex[34] == v4)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v10 = ValueAtIndex;
    goto LABEL_14;
  }

LABEL_5:
  v9 = mdns_interface_monitor_create(v4);
  if (v9)
  {
    v10 = v9;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    mdns_interface_monitor_set_queue(v10, _mdns_dns_service_queue_s_queue);
    os_retain(a1);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = ___mdns_dns_service_manager_get_interface_monitor_block_invoke;
    v19 = &__block_descriptor_tmp_58;
    v20 = a1;
    v21 = v10;
    mdns_interface_monitor_set_update_handler(v10, buf);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = ___mdns_dns_service_manager_get_interface_monitor_block_invoke_2;
    v17[3] = &__block_descriptor_tmp_60;
    v17[4] = v10;
    v17[5] = a1;
    mdns_interface_monitor_set_event_handler(v10, v17);
    if ((*(v10 + 154) & 1) == 0)
    {
      if (*(v10 + 32))
      {
        _mdns_interface_monitor_activate_async(v10);
      }

      *(v10 + 154) = 1;
    }

    CFArrayAppendValue(a1[10], v10);
LABEL_14:
    v11 = *(a2 + 276) & 0xF80F;
    *(a2 + 276) = v11;
    v12 = *(v10 + 144);
    v13 = v11 & 0xFF0F | (16 * (v12 & 0xF));
    if ((v12 & 0xF) != 0)
    {
      *(a2 + 276) = v13;
    }

    if (*(a2 + 282) == 2 && *(a2 + 256) && (v12 & 0x10) != 0)
    {
      v13 |= 0x100u;
      *(a2 + 276) = v13;
    }

    if ((v12 & 0x60) != 0)
    {
      *(a2 + 276) = v13 | (16 * v12) & 0x600;
    }

    return;
  }

  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v14 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a2 + 104);
    if (!v15)
    {
      v15 = "";
    }

    v16 = *(a2 + 256);
    *buf = 136446466;
    *&buf[4] = v15;
    *&buf[12] = 1024;
    *&buf[14] = v16;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get interface monitor for interface %{public}s/%u", buf, 0x12u);
  }
}

void ___mdns_dns_service_manager_get_interface_monitor_block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v18.length = CFArrayGetCount(*(v4 + 80));
    v18.location = 0;
    if (CFArrayContainsValue(*(v4 + 80), v18, v3))
    {
      if (a2 < 0)
      {
        v5 = v3[34];
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v6 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Network change event for interface index %u", buf, 8u);
        }

        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = ___mdns_dns_service_manager_handle_network_change_event_block_invoke;
        v11[3] = &__block_descriptor_tmp_61;
        v12 = v5;
        v7 = *(v4 + 40);
        *buf = _NSConcreteStackBlock;
        v14 = 0x40000000;
        v15 = ___mdns_dns_service_manager_enumerate_service_array_including_variants_block_invoke;
        v16 = &unk_10014EA88;
        v17 = v11;
        mdns_cfarray_enumerate(v7, buf);
        v8 = *(v4 + 56);
        *buf = _NSConcreteStackBlock;
        v14 = 0x40000000;
        v15 = ___mdns_dns_service_manager_enumerate_service_array_including_variants_block_invoke;
        v16 = &unk_10014EA88;
        v17 = v11;
        mdns_cfarray_enumerate(v8, buf);
        v9 = *(v4 + 48);
        *buf = _NSConcreteStackBlock;
        v14 = 0x40000000;
        v15 = ___mdns_dns_service_manager_handle_network_change_event_block_invoke_2;
        v16 = &__block_descriptor_tmp_62;
        LODWORD(v17) = v5;
        mdns_cfarray_enumerate(v9, buf);
      }

      v10 = *(v4 + 96);
      if (v10)
      {
        dispatch_source_merge_data(v10, 1uLL);
      }
    }
  }
}

void ___mdns_dns_service_manager_get_interface_monitor_block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v7.length = CFArrayGetCount(*(*(a1 + 40) + 80));
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(*(a1 + 40) + 80), v7, *(a1 + 32));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(*(*(a1 + 40) + 80), FirstIndexOfValue);
    }

    v5 = *(a1 + 32);

    mdns_interface_monitor_invalidate(v5);
  }

  else if (a2 == 2)
  {
    os_release(*(a1 + 32));
    v3 = *(a1 + 40);

    os_release(v3);
  }
}

uint64_t ___mdns_dns_service_manager_handle_network_change_event_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256) == *(a1 + 32))
  {
    *(a2 + 286) = 1;
  }

  return 1;
}

uint64_t ___mdns_dns_service_manager_enumerate_service_array_including_variants_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v5 = *(a2 + 128);
    if (v5)
    {
      v6 = *(a1 + 32);

      return mdns_cfarray_enumerate(v5, v6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ___mdns_dns_service_manager_handle_network_change_event_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256) == *(a1 + 32))
  {
    *(a2 + 264) = 0;
  }

  return 1;
}

void _mdns_dns_service_add_domain(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1E572DDFuLL);
  if (v6)
  {
    v7 = v6;
    v6[1] = a2;
    os_retain(a2);
    *(v7 + 16) = a3;
    v8 = a1 + 88;
    do
    {
      v9 = v8;
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_6;
      }

      v10 = _domain_item_compare(v7, v8, 1);
    }

    while (v10 > 0);
    if (v10)
    {
LABEL_6:
      *v7 = v8;
      *v9 = v7;
      return;
    }

    if (*(v8 + 16) > a3)
    {
      *(v8 + 16) = a3;
    }

    _domain_item_free(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _mdns_dns_service_append_address(uint64_t a1, void *value)
{
  Mutable = *(a1 + 80);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    *(a1 + 80) = Mutable;
    if (!Mutable)
    {
      return 4294960567;
    }
  }

  CFArrayAppendValue(Mutable, value);
  return 0;
}

void mdns_dns_service_manager_deregister_native_service(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = __mdns_dns_service_manager_deregister_native_service_block_invoke;
    v4[3] = &__block_descriptor_tmp_8_849;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
  }
}

void __mdns_dns_service_manager_deregister_native_service_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 131) & 1) == 0)
  {
    service_by_id = _mdns_dns_service_manager_get_service_by_id(*(v1 + 24), *(result + 40));
    if (service_by_id)
    {

      _mdns_dns_service_manager_deregister_service(v1, service_by_id);
    }
  }
}

uint64_t _mdns_dns_service_manager_get_service_by_id(const __CFArray *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___mdns_dns_service_manager_get_service_by_id_block_invoke;
  v4[3] = &unk_10014EED8;
  v4[4] = &v5;
  v4[5] = a2;
  mdns_cfarray_enumerate(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _mdns_dns_service_manager_deregister_service(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 264) - 1;
  *(a2 + 264) = v2;
  if (!v2)
  {
    v5 = *(a2 + 272);
    if (!v5)
    {
      goto LABEL_13;
    }

    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    monotonic_timer = _mdns_dispatch_create_monotonic_timer(v5, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dns_service_queue_s_queue);
    *(a2 + 224) = monotonic_timer;
    v7 = *(a2 + 264);
    if (monotonic_timer)
    {
      *(a2 + 264) = v7 + 1;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 0x40000000;
      v14[2] = ___mdns_dns_service_decrement_use_count_block_invoke;
      v14[3] = &__block_descriptor_tmp_76;
      v14[4] = a2;
      v14[5] = a1;
      dispatch_source_set_event_handler(monotonic_timer, v14);
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v8 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
      {
        v9 = *(a2 + 24);
        v10 = *(a2 + 272);
        *buf = 134218240;
        v16 = v9;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Keeping orphaned DNS service %llu for up to %u milliseconds", buf, 0x12u);
      }

      dispatch_activate(*(a2 + 224));
      v7 = *(a2 + 264);
    }

    if (!v7)
    {
LABEL_13:
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v11 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
      {
        v12 = *(a2 + 24);
        *buf = 134217984;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deregistered DNS service -- service id: %llu", buf, 0xCu);
      }

      v13 = *(a1 + 96);
      if (v13)
      {
        dispatch_source_merge_data(v13, 1uLL);
      }
    }
  }
}

void ___mdns_dns_service_decrement_use_count_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 224))
  {
    _mdns_dns_service_clear_use_count(v2);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v3 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 24);
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Deregistered orphaned DNS service due to timeout -- service id: %llu", &v6, 0xCu);
    }

    v5 = *(*(a1 + 40) + 96);
    if (v5)
    {
      dispatch_source_merge_data(v5, 1uLL);
    }
  }
}

BOOL ___mdns_dns_service_manager_get_service_by_id_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}