void DumpMDNSPacket(int a1, unsigned __int8 *a2, unint64_t a3, _DWORD *a4, __int16 a5, unsigned int *a6, unsigned __int16 a7, unsigned int a8, uint64_t a9)
{
  v15 = a2 + 12;
  v16 = (a3 - a2);
  v96 = a2[2];
  if (a6)
  {
    IsDNSMulticast = mDNSAddrIsDNSMulticast(a6);
    v18 = a7 == 59668;
    if (IsDNSMulticast)
    {
      v18 = 0;
    }

    v93 = v18;
  }

  else
  {
    v93 = 0;
  }

  v19 = -2128831035;
  if (v16)
  {
    v20 = a2;
    v21 = v16;
    do
    {
      v22 = *v20++;
      v19 = 16777619 * (v19 ^ v22);
      --v21;
    }

    while (v21);
    v23 = a2;
    v24 = v16;
    do
    {
      v25 = *v23++;
      LODWORD(v21) = v25 + 65599 * v21;
      --v24;
    }

    while (v24);
  }

  else
  {
    LODWORD(v21) = 0;
  }

  v26 = v21;
  v27 = v19;
  if (a4)
  {
    v28 = 0;
    v29 = a4 + 1;
    v30 = v19;
    do
    {
      v30 = 16777619 * (v30 ^ *(v29 + v28++));
    }

    while (v28 != 4);
    v31 = 0;
    v32 = v30 ^ a5;
    v33 = v21;
    do
    {
      v33 = *(v29 + v31++) + 65599 * v33;
    }

    while (v31 != 4);
    v26 = HIBYTE(a5) + 65599 * (a5 + 65599 * v33);
    v27 = 16777619 * ((16777619 * v32) ^ HIBYTE(a5));
  }

  v92 = v16;
  if (a6)
  {
    v34 = 0;
    v35 = a6 + 1;
    do
    {
      v27 = 16777619 * (v27 ^ *(v35 + v34++));
    }

    while (v34 != 4);
    for (i = 0; i != 4; ++i)
    {
      v26 = *(v35 + i) + 65599 * v26;
    }

    v26 = HIBYTE(a7) + 65599 * (a7 + 65599 * v26);
    v27 = 16777619 * ((16777619 * (v27 ^ a7)) ^ HIBYTE(a7));
  }

  v37 = 0;
  v38 = a9;
  *buf = bswap32(a8);
  do
  {
    v27 = 16777619 * (v27 ^ buf[v37++]);
  }

  while (v37 != 4);
  for (j = 0; j != 4; ++j)
  {
    v26 = buf[j] + 65599 * v26;
  }

  v40 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot;
  if (DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot)
  {
    if (DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot >= 0x14)
    {
      v41 = 20;
    }

    else
    {
      v41 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot;
    }

    v42 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousMsg2ndHashes;
    v43 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousMsgHashes;
    while (1)
    {
      v44 = *v43++;
      if (v44 == v19 && *v42 == v21)
      {
        break;
      }

      ++v42;
      if (!--v41)
      {
        goto LABEL_37;
      }
    }

    v46 = 0;
  }

  else
  {
LABEL_37:
    v45 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashSlot;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousMsgHashes[DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashSlot] = v19;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousMsg2ndHashes[v45] = v21;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashSlot = (v45 + 1) % 0x14u;
    if (v40 <= 0x13)
    {
      DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextMsgHashUninitializedSlot = v40 + 1;
    }

    v46 = 1;
  }

  v47 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot;
  if (DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot)
  {
    if (DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot >= 0x14)
    {
      v48 = 20;
    }

    else
    {
      v48 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot;
    }

    v49 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousComplete2ndHashes;
    v50 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousCompleteHashes;
    while (1)
    {
      v51 = *v50++;
      if (v51 == v27 && *v49 == v26)
      {
        break;
      }

      ++v49;
      if (!--v48)
      {
        goto LABEL_49;
      }
    }

    v53 = 0;
  }

  else
  {
LABEL_49:
    v52 = DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashSlot;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousCompleteHashes[DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashSlot] = v27;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_previousComplete2ndHashes[v52] = v26;
    DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashSlot = (v52 + 1) % 0x14u;
    if (v47 <= 0x13)
    {
      DumpMDNSPacket_CalculateAndCheckIfMsgAppearsBefore_nextCompleteHashUninitializedSlot = v47 + 1;
    }

    v53 = 1;
  }

  v54 = *(a2 + 2);
  v55 = *(a2 + 3);
  if (!a4)
  {
    if (!a6)
    {
      v56 = 1;
      goto LABEL_60;
    }

LABEL_58:
    v56 = *a6 != 6;
    goto LABEL_60;
  }

  v56 = *a4 != 6;
  if (a6 && *a4 != 6)
  {
    goto LABEL_58;
  }

LABEL_60:
  v57 = a2[3];
  v58 = (v96 << 8) | (*a2 << 24) | (a2[1] << 16);
  v59 = (*(a2 + 2) << 48) & 0xFF00000000000000 | (*(a2 + 2) << 48) | (HIBYTE(*(a2 + 3)) << 40) | (*(a2 + 3) << 32) | (HIBYTE(*(a2 + 4)) << 24) | (*(a2 + 4) << 16);
  v60 = *(a2 + 5);
  memset(v116, 0, 60);
  v90 = a6;
  if (!v46)
  {
    v66 = 0;
    goto LABEL_102;
  }

  v91 = a8;
  v88 = v53;
  v89 = v46;
  v86 = v57;
  v87 = v56;
  v85 = v60;
  if (v54)
  {
    v61 = v58;
    v62 = 0;
    v63 = v116;
    while (1)
    {
      *buf = 0;
      v97 = 0;
      if (!DumpMDNSPacket_GetNameHashTypeClass(a2, v15, a3, buf, &v97))
      {
        break;
      }

      *v63 = bswap32(*buf);
      *(v63 + 2) = bswap32(v97) >> 16;
      v64 = skipDomainName(a2, v15, a3);
      v15 = v64 + 4;
      if (v64 == -4 || !v64 || v15 > a3)
      {
        break;
      }

      v63 = (v63 + 6);
      v65 = v62 + 1;
      if (v62 <= 8)
      {
        ++v62;
        if (v65 < *(a2 + 2))
        {
          continue;
        }
      }

      v55 = *(a2 + 3);
      v58 = v61;
      a8 = v91;
      goto LABEL_73;
    }

    v58 = v61;
    a8 = v91;
    goto LABEL_101;
  }

  v65 = 0;
  v63 = v116;
LABEL_73:
  v84 = v58;
  if (v65 <= 9 && v55)
  {
    v67 = 1;
    while (1)
    {
      v62 = v65 + v67 - 1;
      *buf = 0;
      v97 = 0;
      if (!DumpMDNSPacket_GetNameHashTypeClass(a2, v15, a3, buf, &v97))
      {
        break;
      }

      *v63 = bswap32(*buf);
      *(v63 + 2) = bswap32(v97) >> 16;
      v68 = skipResourceRecord(a2, v15, a3);
      if (!v68)
      {
LABEL_97:
        v74 = v65 + v67;
LABEL_98:
        v62 = v74 - 1;
        break;
      }

      v15 = v68;
      v63 = (v63 + 6);
      v69 = v67 + 1;
      if (v67 < *(a2 + 3))
      {
        ++v67;
        if (v62 < 9)
        {
          continue;
        }
      }

      v65 = v65 + v69 - 1;
      a8 = v91;
      v58 = v84;
      goto LABEL_81;
    }
  }

  else
  {
LABEL_81:
    if (*(a2 + 4) && v65 <= 9)
    {
      v67 = 1;
      while (1)
      {
        v62 = v65 + v67 - 1;
        *buf = 0;
        v97 = 0;
        if (!DumpMDNSPacket_GetNameHashTypeClass(a2, v15, a3, buf, &v97))
        {
          break;
        }

        *v63 = bswap32(*buf);
        *(v63 + 2) = bswap32(v97) >> 16;
        v70 = skipResourceRecord(a2, v15, a3);
        if (!v70)
        {
          goto LABEL_97;
        }

        v15 = v70;
        v63 = (v63 + 6);
        v71 = v67 + 1;
        if (v67 < *(a2 + 4))
        {
          ++v67;
          if (v62 < 9)
          {
            continue;
          }
        }

        v65 = v65 + v71 - 1;
        a8 = v91;
        v58 = v84;
        goto LABEL_89;
      }
    }

    else
    {
LABEL_89:
      if (!*(a2 + 5) || v65 > 9)
      {
        v62 = v65;
        goto LABEL_101;
      }

      v67 = 1;
      while (1)
      {
        v62 = v65 + v67 - 1;
        *buf = 0;
        v97 = 0;
        if (!DumpMDNSPacket_GetNameHashTypeClass(a2, v15, a3, buf, &v97))
        {
          break;
        }

        *v63 = bswap32(*buf);
        *(v63 + 2) = bswap32(v97) >> 16;
        v72 = skipResourceRecord(a2, v15, a3);
        if (!v72)
        {
          goto LABEL_97;
        }

        v73 = v67 + 1;
        if (v67 < *(a2 + 5))
        {
          v15 = v72;
          v63 = (v63 + 6);
          ++v67;
          if (v62 < 9)
          {
            continue;
          }
        }

        v74 = v65 + v73;
        goto LABEL_98;
      }
    }
  }

  a8 = v91;
  v58 = v84;
LABEL_101:
  v66 = 6 * v62;
  v38 = a9;
  v53 = v88;
  LOBYTE(v46) = v89;
  v57 = v86;
  v56 = v87;
  v60 = v85;
LABEL_102:
  v75 = v58 | v57;
  v76 = (v59 | v60);
  v77 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v78 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v78 = 1;
  }

  v79 = v78;
  if (!v93)
  {
    if (v56)
    {
      if (!a1)
      {
        if ((v96 & 0x80) != 0)
        {
          if (v53)
          {
            if (v46)
            {
              if (v79)
              {
                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              else
              {
                v77 = mDNSLogCategory_mDNS_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              *buf = 67112195;
              v99 = v19;
              v100 = 1024;
              v101 = v27;
              v102 = 1024;
              *v103 = v92;
              *&v103[4] = 2160;
              *&v103[6] = 1752392040;
              v104 = 1045;
              *v105 = 20;
              *&v105[4] = 2101;
              *&v105[6] = a4;
              *&v105[14] = 2082;
              *&v105[16] = v38;
              v106 = 1024;
              *v107 = a8;
              *&v107[4] = 2048;
              *&v107[6] = v75;
              v108 = 2048;
              v109 = v76;
              v110 = 2160;
              v111 = 1752392040;
              v112 = 1040;
              v113 = v66;
              v114 = 2101;
              v115 = v116;
              v80 = "[Q(%x, %x)] Received %u-byte IPv4 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
              goto LABEL_392;
            }

            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67110659;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 2160;
            *v103 = 1752392040;
            *&v103[8] = 1045;
            *&v103[10] = 20;
            v104 = 2101;
            *v105 = a4;
            *&v105[8] = 2082;
            *&v105[10] = v38;
            *&v105[18] = 1024;
            *&v105[20] = a8;
            v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u";
            goto LABEL_401;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response over multicast";
        }

        else
        {
          if (v53)
          {
            if (v46)
            {
              if (v79)
              {
                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              else
              {
                v77 = mDNSLogCategory_mDNS_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              *buf = 67112195;
              v99 = v19;
              v100 = 1024;
              v101 = v27;
              v102 = 1024;
              *v103 = v92;
              *&v103[4] = 2160;
              *&v103[6] = 1752392040;
              v104 = 1045;
              *v105 = 20;
              *&v105[4] = 2101;
              *&v105[6] = a4;
              *&v105[14] = 2082;
              *&v105[16] = v38;
              v106 = 1024;
              *v107 = a8;
              *&v107[4] = 2048;
              *&v107[6] = v75;
              v108 = 2048;
              v109 = v76;
              v110 = 2160;
              v111 = 1752392040;
              v112 = 1040;
              v113 = v66;
              v114 = 2101;
              v115 = v116;
              v80 = "[A(%x, %x)] Received %u-byte IPv4 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
              goto LABEL_392;
            }

            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67110659;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 2160;
            *v103 = 1752392040;
            *&v103[8] = 1045;
            *&v103[10] = 20;
            v104 = 2101;
            *v105 = a4;
            *&v105[8] = 2082;
            *&v105[10] = v38;
            *&v105[18] = 1024;
            *&v105[20] = a8;
            v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u";
            goto LABEL_401;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query over multicast";
        }

        goto LABEL_348;
      }

      if ((v96 & 0x80) != 0)
      {
        if ((v53 & 1) == 0)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over multicast";
          goto LABEL_348;
        }

        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67111427;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2082;
          *&v103[6] = v38;
          v104 = 1024;
          *v105 = a8;
          *&v105[4] = 2048;
          *&v105[6] = v75;
          *&v105[14] = 2048;
          *&v105[16] = v76;
          v106 = 2160;
          *v107 = 1752392040;
          *&v107[8] = 1040;
          *&v107[10] = v66;
          v108 = 2101;
          v109 = v116;
          v80 = "[A(%x, %x)] Sent %u-byte IPv4 mDNS response over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_366;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67109890;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2082;
        *v103 = v38;
        *&v103[8] = 1024;
        *&v103[10] = a8;
        v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over multicast via %{public}s/%u";
      }

      else
      {
        if ((v53 & 1) == 0)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over multicast";
LABEL_348:
          v82 = v81;
          goto LABEL_349;
        }

        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67111427;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2082;
          *&v103[6] = v38;
          v104 = 1024;
          *v105 = a8;
          *&v105[4] = 2048;
          *&v105[6] = v75;
          *&v105[14] = 2048;
          *&v105[16] = v76;
          v106 = 2160;
          *v107 = 1752392040;
          *&v107[8] = 1040;
          *&v107[10] = v66;
          v108 = 2101;
          v109 = v116;
          v80 = "[Q(%x, %x)] Sent %u-byte IPv4 mDNS query over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
LABEL_366:
          v82 = v77;
          v83 = 82;
          goto LABEL_402;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67109890;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2082;
        *v103 = v38;
        *&v103[8] = 1024;
        *&v103[10] = a8;
        v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over multicast via %{public}s/%u";
      }
    }

    else
    {
      if (!a1)
      {
        if ((v96 & 0x80) != 0)
        {
          if (v53)
          {
            if (v46)
            {
              if (v79)
              {
                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              else
              {
                v77 = mDNSLogCategory_mDNS_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              *buf = 67112195;
              v99 = v19;
              v100 = 1024;
              v101 = v27;
              v102 = 1024;
              *v103 = v92;
              *&v103[4] = 2160;
              *&v103[6] = 1752392040;
              v104 = 1045;
              *v105 = 20;
              *&v105[4] = 2101;
              *&v105[6] = a4;
              *&v105[14] = 2082;
              *&v105[16] = v38;
              v106 = 1024;
              *v107 = a8;
              *&v107[4] = 2048;
              *&v107[6] = v75;
              v108 = 2048;
              v109 = v76;
              v110 = 2160;
              v111 = 1752392040;
              v112 = 1040;
              v113 = v66;
              v114 = 2101;
              v115 = v116;
              v80 = "[Q(%x, %x)] Received %u-byte IPv6 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
              goto LABEL_392;
            }

            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67110659;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 2160;
            *v103 = 1752392040;
            *&v103[8] = 1045;
            *&v103[10] = 20;
            v104 = 2101;
            *v105 = a4;
            *&v105[8] = 2082;
            *&v105[10] = v38;
            *&v105[18] = 1024;
            *&v105[20] = a8;
            v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u";
            goto LABEL_401;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response over multicast";
        }

        else
        {
          if (v53)
          {
            if (v46)
            {
              if (v79)
              {
                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              else
              {
                v77 = mDNSLogCategory_mDNS_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }
              }

              *buf = 67112195;
              v99 = v19;
              v100 = 1024;
              v101 = v27;
              v102 = 1024;
              *v103 = v92;
              *&v103[4] = 2160;
              *&v103[6] = 1752392040;
              v104 = 1045;
              *v105 = 20;
              *&v105[4] = 2101;
              *&v105[6] = a4;
              *&v105[14] = 2082;
              *&v105[16] = v38;
              v106 = 1024;
              *v107 = a8;
              *&v107[4] = 2048;
              *&v107[6] = v75;
              v108 = 2048;
              v109 = v76;
              v110 = 2160;
              v111 = 1752392040;
              v112 = 1040;
              v113 = v66;
              v114 = 2101;
              v115 = v116;
              v80 = "[A(%x, %x)] Received %u-byte IPv6 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
              goto LABEL_392;
            }

            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67110659;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 2160;
            *v103 = 1752392040;
            *&v103[8] = 1045;
            *&v103[10] = 20;
            v104 = 2101;
            *v105 = a4;
            *&v105[8] = 2082;
            *&v105[10] = v38;
            *&v105[18] = 1024;
            *&v105[20] = a8;
            v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over multicast via %{public}s/%u";
            goto LABEL_401;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query over multicast";
        }

        goto LABEL_348;
      }

      if ((v96 & 0x80) != 0)
      {
        if ((v53 & 1) == 0)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over multicast";
          goto LABEL_348;
        }

        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67111427;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2082;
          *&v103[6] = v38;
          v104 = 1024;
          *v105 = a8;
          *&v105[4] = 2048;
          *&v105[6] = v75;
          *&v105[14] = 2048;
          *&v105[16] = v76;
          v106 = 2160;
          *v107 = 1752392040;
          *&v107[8] = 1040;
          *&v107[10] = v66;
          v108 = 2101;
          v109 = v116;
          v80 = "[A(%x, %x)] Sent %u-byte IPv6 mDNS response over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_366;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67109890;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2082;
        *v103 = v38;
        *&v103[8] = 1024;
        *&v103[10] = a8;
        v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over multicast via %{public}s/%u";
      }

      else
      {
        if ((v53 & 1) == 0)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 67109376;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over multicast";
            goto LABEL_271;
          }

          v81 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over multicast";
          goto LABEL_348;
        }

        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67111427;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2082;
          *&v103[6] = v38;
          v104 = 1024;
          *v105 = a8;
          *&v105[4] = 2048;
          *&v105[6] = v75;
          *&v105[14] = 2048;
          *&v105[16] = v76;
          v106 = 2160;
          *v107 = 1752392040;
          *&v107[8] = 1040;
          *&v107[10] = v66;
          v108 = 2101;
          v109 = v116;
          v80 = "[Q(%x, %x)] Sent %u-byte IPv6 mDNS query over multicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_366;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67109890;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2082;
        *v103 = v38;
        *&v103[8] = 1024;
        *&v103[10] = a8;
        v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over multicast via %{public}s/%u";
      }
    }

    v82 = v77;
    v83 = 30;
    goto LABEL_402;
  }

  if (!v56)
  {
    if (a1)
    {
      if ((v96 & 0x80) != 0)
      {
        if (v53)
        {
          if (v46)
          {
            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67112195;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 1024;
            *v103 = v92;
            *&v103[4] = 2160;
            *&v103[6] = 1752392040;
            v104 = 1045;
            *v105 = 20;
            *&v105[4] = 2101;
            *&v105[6] = v90;
            *&v105[14] = 2082;
            *&v105[16] = v38;
            v106 = 1024;
            *v107 = a8;
            *&v107[4] = 2048;
            *&v107[6] = v75;
            v108 = 2048;
            v109 = v76;
            v110 = 2160;
            v111 = 1752392040;
            v112 = 1040;
            v113 = v66;
            v114 = 2101;
            v115 = v116;
            v80 = "[A(%x, %x)] Sent %u-byte IPv6 mDNS response to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
            goto LABEL_392;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67110659;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 2160;
          *v103 = 1752392040;
          *&v103[8] = 1045;
          *&v103[10] = 20;
          v104 = 2101;
          *v105 = v90;
          *&v105[8] = 2082;
          *&v105[10] = v38;
          *&v105[18] = 1024;
          *&v105[20] = a8;
          v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
          goto LABEL_401;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over unicast";
          goto LABEL_271;
        }

        v81 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[A(%x, %x)] Sent a previous IPv6 mDNS response over unicast";
      }

      else
      {
        if (v53)
        {
          if (v46)
          {
            if (v79)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            else
            {
              v77 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }
            }

            *buf = 67112195;
            v99 = v19;
            v100 = 1024;
            v101 = v27;
            v102 = 1024;
            *v103 = v92;
            *&v103[4] = 2160;
            *&v103[6] = 1752392040;
            v104 = 1045;
            *v105 = 20;
            *&v105[4] = 2101;
            *&v105[6] = v90;
            *&v105[14] = 2082;
            *&v105[16] = v38;
            v106 = 1024;
            *v107 = a8;
            *&v107[4] = 2048;
            *&v107[6] = v75;
            v108 = 2048;
            v109 = v76;
            v110 = 2160;
            v111 = 1752392040;
            v112 = 1040;
            v113 = v66;
            v114 = 2101;
            v115 = v116;
            v80 = "[Q(%x, %x)] Sent %u-byte IPv6 mDNS query to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
            goto LABEL_392;
          }

          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67110659;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 2160;
          *v103 = 1752392040;
          *&v103[8] = 1045;
          *&v103[10] = 20;
          v104 = 2101;
          *v105 = v90;
          *&v105[8] = 2082;
          *&v105[10] = v38;
          *&v105[18] = 1024;
          *&v105[20] = a8;
          v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
LABEL_401:
          v82 = v77;
          v83 = 56;
          goto LABEL_402;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 67109376;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over unicast";
          goto LABEL_271;
        }

        v81 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[Q(%x, %x)] Sent a previous IPv6 mDNS query over unicast";
      }
    }

    else if ((v96 & 0x80) != 0)
    {
      if (v53)
      {
        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67112195;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2160;
          *&v103[6] = 1752392040;
          v104 = 1045;
          *v105 = 20;
          *&v105[4] = 2101;
          *&v105[6] = a4;
          *&v105[14] = 2082;
          *&v105[16] = v38;
          v106 = 1024;
          *v107 = a8;
          *&v107[4] = 2048;
          *&v107[6] = v75;
          v108 = 2048;
          v109 = v76;
          v110 = 2160;
          v111 = 1752392040;
          v112 = 1040;
          v113 = v66;
          v114 = 2101;
          v115 = v116;
          v80 = "[Q(%x, %x)] Received %u-byte IPv6 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_392;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67110659;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2160;
        *v103 = 1752392040;
        *&v103[8] = 1045;
        *&v103[10] = 20;
        v104 = 2101;
        *v105 = a4;
        *&v105[8] = 2082;
        *&v105[10] = v38;
        *&v105[18] = 1024;
        *&v105[20] = a8;
        v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
        goto LABEL_401;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response over unicast";
        goto LABEL_271;
      }

      v81 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[Q(%x, %x)] Received a previous IPv6 mDNS response over unicast";
    }

    else
    {
      if (v53)
      {
        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67112195;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2160;
          *&v103[6] = 1752392040;
          v104 = 1045;
          *v105 = 20;
          *&v105[4] = 2101;
          *&v105[6] = a4;
          *&v105[14] = 2082;
          *&v105[16] = v38;
          v106 = 1024;
          *v107 = a8;
          *&v107[4] = 2048;
          *&v107[6] = v75;
          v108 = 2048;
          v109 = v76;
          v110 = 2160;
          v111 = 1752392040;
          v112 = 1040;
          v113 = v66;
          v114 = 2101;
          v115 = v116;
          v80 = "[A(%x, %x)] Received %u-byte IPv6 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_392;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67110659;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2160;
        *v103 = 1752392040;
        *&v103[8] = 1045;
        *&v103[10] = 20;
        v104 = 2101;
        *v105 = a4;
        *&v105[8] = 2082;
        *&v105[10] = v38;
        *&v105[18] = 1024;
        *&v105[20] = a8;
        v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
        goto LABEL_401;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query over unicast";
        goto LABEL_271;
      }

      v81 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[A(%x, %x)] Received a previous IPv6 mDNS query over unicast";
    }

    goto LABEL_348;
  }

  if (!a1)
  {
    if ((v96 & 0x80) != 0)
    {
      if (v53)
      {
        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67112195;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2160;
          *&v103[6] = 1752392040;
          v104 = 1045;
          *v105 = 20;
          *&v105[4] = 2101;
          *&v105[6] = a4;
          *&v105[14] = 2082;
          *&v105[16] = v38;
          v106 = 1024;
          *v107 = a8;
          *&v107[4] = 2048;
          *&v107[6] = v75;
          v108 = 2048;
          v109 = v76;
          v110 = 2160;
          v111 = 1752392040;
          v112 = 1040;
          v113 = v66;
          v114 = 2101;
          v115 = v116;
          v80 = "[Q(%x, %x)] Received %u-byte IPv4 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_392;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67110659;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2160;
        *v103 = 1752392040;
        *&v103[8] = 1045;
        *&v103[10] = 20;
        v104 = 2101;
        *v105 = a4;
        *&v105[8] = 2082;
        *&v105[10] = v38;
        *&v105[18] = 1024;
        *&v105[20] = a8;
        v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
        goto LABEL_401;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response over unicast";
        goto LABEL_271;
      }

      v81 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[Q(%x, %x)] Received a previous IPv4 mDNS response over unicast";
    }

    else
    {
      if (v53)
      {
        if (v46)
        {
          if (v79)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            v77 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          *buf = 67112195;
          v99 = v19;
          v100 = 1024;
          v101 = v27;
          v102 = 1024;
          *v103 = v92;
          *&v103[4] = 2160;
          *&v103[6] = 1752392040;
          v104 = 1045;
          *v105 = 20;
          *&v105[4] = 2101;
          *&v105[6] = a4;
          *&v105[14] = 2082;
          *&v105[16] = v38;
          v106 = 1024;
          *v107 = a8;
          *&v107[4] = 2048;
          *&v107[6] = v75;
          v108 = 2048;
          v109 = v76;
          v110 = 2160;
          v111 = 1752392040;
          v112 = 1040;
          v113 = v66;
          v114 = 2101;
          v115 = v116;
          v80 = "[A(%x, %x)] Received %u-byte IPv4 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
          goto LABEL_392;
        }

        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67110659;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 2160;
        *v103 = 1752392040;
        *&v103[8] = 1045;
        *&v103[10] = 20;
        v104 = 2101;
        *v105 = a4;
        *&v105[8] = 2082;
        *&v105[10] = v38;
        *&v105[18] = 1024;
        *&v105[20] = a8;
        v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
        goto LABEL_401;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 67109376;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query over unicast";
        goto LABEL_271;
      }

      v81 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[A(%x, %x)] Received a previous IPv4 mDNS query over unicast";
    }

    goto LABEL_348;
  }

  if ((v96 & 0x80) != 0)
  {
    if (v53)
    {
      if (v46)
      {
        if (v79)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v77 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        *buf = 67112195;
        v99 = v19;
        v100 = 1024;
        v101 = v27;
        v102 = 1024;
        *v103 = v92;
        *&v103[4] = 2160;
        *&v103[6] = 1752392040;
        v104 = 1045;
        *v105 = 20;
        *&v105[4] = 2101;
        *&v105[6] = v90;
        *&v105[14] = 2082;
        *&v105[16] = v38;
        v106 = 1024;
        *v107 = a8;
        *&v107[4] = 2048;
        *&v107[6] = v75;
        v108 = 2048;
        v109 = v76;
        v110 = 2160;
        v111 = 1752392040;
        v112 = 1040;
        v113 = v66;
        v114 = 2101;
        v115 = v116;
        v80 = "[A(%x, %x)] Sent %u-byte IPv4 mDNS response to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
        goto LABEL_392;
      }

      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      else
      {
        v77 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      *buf = 67110659;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v102 = 2160;
      *v103 = 1752392040;
      *&v103[8] = 1045;
      *&v103[10] = 20;
      v104 = 2101;
      *v105 = v90;
      *&v105[8] = 2082;
      *&v105[10] = v38;
      *&v105[18] = 1024;
      *&v105[20] = a8;
      v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
      goto LABEL_401;
    }

    if (v79)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109376;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over unicast";
      goto LABEL_271;
    }

    v81 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109376;
    v99 = v19;
    v100 = 1024;
    v101 = v27;
    v80 = "[A(%x, %x)] Sent a previous IPv4 mDNS response over unicast";
    goto LABEL_348;
  }

  if (v53)
  {
    if (v46)
    {
      if (v79)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      else
      {
        v77 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      *buf = 67112195;
      v99 = v19;
      v100 = 1024;
      v101 = v27;
      v102 = 1024;
      *v103 = v92;
      *&v103[4] = 2160;
      *&v103[6] = 1752392040;
      v104 = 1045;
      *v105 = 20;
      *&v105[4] = 2101;
      *&v105[6] = v90;
      *&v105[14] = 2082;
      *&v105[16] = v38;
      v106 = 1024;
      *v107 = a8;
      *&v107[4] = 2048;
      *&v107[6] = v75;
      v108 = 2048;
      v109 = v76;
      v110 = 2160;
      v111 = 1752392040;
      v112 = 1040;
      v113 = v66;
      v114 = 2101;
      v115 = v116;
      v80 = "[Q(%x, %x)] Sent %u-byte IPv4 mDNS query to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX %{sensitive, mask.hash, mdnsresponder:mdns_name_hash_type_bytes}.*P";
LABEL_392:
      v82 = v77;
      v83 = 108;
      goto LABEL_402;
    }

    if (v79)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    else
    {
      v77 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    *buf = 67110659;
    v99 = v19;
    v100 = 1024;
    v101 = v27;
    v102 = 2160;
    *v103 = 1752392040;
    *&v103[8] = 1045;
    *&v103[10] = 20;
    v104 = 2101;
    *v105 = v90;
    *&v105[8] = 2082;
    *&v105[10] = v38;
    *&v105[18] = 1024;
    *&v105[20] = a8;
    v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P over unicast via %{public}s/%u";
    goto LABEL_401;
  }

  if (!v79)
  {
    v81 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109376;
    v99 = v19;
    v100 = 1024;
    v101 = v27;
    v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over unicast";
    goto LABEL_348;
  }

  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  *buf = 67109376;
  v99 = v19;
  v100 = 1024;
  v101 = v27;
  v80 = "[Q(%x, %x)] Sent a previous IPv4 mDNS query over unicast";
LABEL_271:
  v82 = v77;
LABEL_349:
  v83 = 14;
LABEL_402:
  _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, v80, buf, v83);
}

unsigned __int8 *DumpMDNSPacket_GetNameHashTypeClass(unint64_t a1, unsigned __int8 *a2, unint64_t a3, _DWORD *a4, _WORD *a5)
{
  memset(v12, 0, sizeof(v12));
  result = getDomainName(a1, a2, a3, v12);
  if (result)
  {
    v9 = result;
    v10 = mDNS_DomainNameFNV1aHash(v12);
    if ((v9 + 4) <= a3)
    {
      v11 = *v9;
      if (a4)
      {
        *a4 = v10;
      }

      if (a5)
      {
        *a5 = bswap32(v11) >> 16;
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

BOOL DNSQuestionNeedsSensitiveLogging(uint64_t a1)
{
  if (is_apple_internal_build_s_once != -1)
  {
    dispatch_once(&is_apple_internal_build_s_once, &__block_literal_global_6175);
  }

  return is_apple_internal_build_is_internal == 1 && *(a1 + 690) == 1;
}

BOOL DNSQuestionIsEligibleForMDNSAlternativeService(uint64_t a1)
{
  if (*(a1 + 340))
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    v4 = AWDLInterfaceID == v2 || WiFiAwareInterfaceID == v2;
  }

  else
  {
    v4 = (*(a1 + 324) >> 20) & 1;
  }

  return v4 == 0;
}

void mDNS_VerifyLockState(unsigned __int8 *a1, int a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, int a6)
{
  if (!a2)
  {
    if (a3 != a4)
    {
      v16 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v17 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v17 = 1;
      }

      v18 = v17;
      if (a3 <= a4)
      {
        if (v18)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        else
        {
          v16 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        v24 = 136447746;
        v25 = a1;
        v26 = 2082;
        *v27 = a5;
        *&v27[8] = 1024;
        *&v27[10] = a6;
        v28 = 2082;
        *v29 = mDNS_VerifyLockState_lastLockOperator;
        *&v29[8] = 1024;
        *v30 = mDNS_VerifyLockState_lineNumberlastLockOperator;
        *&v30[4] = 1024;
        v31 = a3;
        v32 = 1024;
        v33 = a4;
        v12 = "Lock failure: %{public}s, last lock dropper dropped the lock before grabbing it - caller: %{public}s at line %u, last lock dropper: %{public}s at line %u, mDNS_busy (%u) != mDNS_reentrancy (%u).";
      }

      else
      {
        if (v18)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        else
        {
          v16 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        v24 = 136447746;
        v25 = a1;
        v26 = 2082;
        *v27 = a5;
        *&v27[8] = 1024;
        *&v27[10] = a6;
        v28 = 2082;
        *v29 = mDNS_VerifyLockState_lastLockOperator;
        *&v29[8] = 1024;
        *v30 = mDNS_VerifyLockState_lineNumberlastLockOperator;
        *&v30[4] = 1024;
        v31 = a3;
        v32 = 1024;
        v33 = a4;
        v12 = "Lock failure: %{public}s, last lock holder still holds the lock - caller: %{public}s at line %u, last successful lock holder: %{public}s at line %u, mDNS_busy (%u) != mDNS_reentrancy (%u).";
      }

      v21 = v16;
      v22 = 56;
      goto LABEL_57;
    }

    v14 = *a1;
    if (v14 <= 0x4B)
    {
      if (v14 == 67)
      {
        return;
      }

      if (v14 == 68)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 == 85 || v14 == 82)
      {
        os_unfair_lock_lock(&mDNS_VerifyLockState_logLock);
        mDNS_VerifyLockState_lastLockOperator = 0;
        mDNS_VerifyLockState_lineNumberlastLockOperator = 0;
        goto LABEL_49;
      }

      if (v14 == 76)
      {
LABEL_15:
        os_unfair_lock_lock(&mDNS_VerifyLockState_logLock);
        mDNS_VerifyLockState_lastLockOperator = a5;
        mDNS_VerifyLockState_lineNumberlastLockOperator = a6;
LABEL_49:

        os_unfair_lock_unlock(&mDNS_VerifyLockState_logLock);
        return;
      }
    }

    v23 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v24 = 136446210;
      v25 = a1;
      v12 = "Invalid lock operation - %{public}s";
    }

    else
    {
      v23 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v24 = 136446210;
      v25 = a1;
      v12 = "Invalid lock operation - %{public}s";
    }

    v21 = v23;
    v22 = 12;
    goto LABEL_57;
  }

  if (a4 + 1 >= a3)
  {
    if (a4 + 1 <= a3)
    {
      return;
    }

    v10 = mDNSLogCategory_Default;
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
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v10 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    v24 = 136447490;
    v25 = a5;
    v26 = 1024;
    *v27 = a6;
    *&v27[4] = 2082;
    *&v27[6] = mDNS_VerifyLockState_lastLockOperator;
    v28 = 1024;
    *v29 = mDNS_VerifyLockState_lineNumberlastLockOperator;
    *&v29[4] = 1024;
    *&v29[6] = a3;
    *v30 = 1024;
    *&v30[2] = a4;
    v12 = "Lock failure: Check Lock, last lock dropper dropped the lock before grabbing it - caller: %{public}s at line %u, last lock dropper: %{public}s at line %u, mDNS_busy (%u) != mDNS_reentrancy (%u).";
    goto LABEL_41;
  }

  v10 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v11 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_9;
  }

  v10 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
  {
LABEL_9:
    v24 = 136447490;
    v25 = a5;
    v26 = 1024;
    *v27 = a6;
    *&v27[4] = 2082;
    *&v27[6] = mDNS_VerifyLockState_lastLockOperator;
    v28 = 1024;
    *v29 = mDNS_VerifyLockState_lineNumberlastLockOperator;
    *&v29[4] = 1024;
    *&v29[6] = a3;
    *v30 = 1024;
    *&v30[2] = a4;
    v12 = "Lock failure: Check Lock, lock was grabbed by multiple callers - caller: %{public}s at line %u, last successful lock holder: %{public}s at line %u, mDNS_busy (%u) != mDNS_reentrancy (%u).";
LABEL_41:
    v21 = v10;
    v22 = 46;
LABEL_57:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, v12, &v24, v22);
  }
}

uint64_t GetReverseIPv6Addr(_BYTE *a1, _OWORD *a2)
{
  v3 = 0;
  v10 = 0uLL;
  do
  {
    if (*a1 != 1)
    {
      return 0;
    }

    v4 = a1;
    v5 = a1[1];
    if ((v5 - 48) >= 0xA)
    {
      if ((v5 - 97) >= 6)
      {
        if ((v5 - 65) > 5)
        {
          return 0;
        }

        v6 = -55;
      }

      else
      {
        v6 = -87;
      }
    }

    else
    {
      v6 = -48;
    }

    v7 = 15 - (v3 >> 1);
    v8 = v6 + v5;
    if (v3)
    {
      v8 = *(&v10 + v7) | (16 * v8);
    }

    *(&v10 + v7) = v8;
    ++v3;
    a1 += 2;
  }

  while (v3 != 32);
  result = SameDomainNameBytes(v4 + 2, "\x03ip6\x04arpa");
  if (result)
  {
    if (a2)
    {
      *a2 = v10;
    }

    return 1;
  }

  return result;
}

id _mdns_ne_dns_proxy_state_watch_log()
{
  if (_mdns_ne_dns_proxy_state_watch_log_s_once != -1)
  {
    dispatch_once(&_mdns_ne_dns_proxy_state_watch_log_s_once, &__block_literal_global_15);
  }

  v1 = _mdns_ne_dns_proxy_state_watch_log_s_log;

  return v1;
}

id _mdns_ne_dns_proxy_state_watch_queue()
{
  if (_mdns_ne_dns_proxy_state_watch_queue_s_once != -1)
  {
    dispatch_once(&_mdns_ne_dns_proxy_state_watch_queue_s_once, &__block_literal_global_8_2219);
  }

  v1 = _mdns_ne_dns_proxy_state_watch_queue_s_queue;

  return v1;
}

void _mdns_ne_dns_proxy_state_watch_fetch_manager_status(void *a1)
{
  v1 = a1;
  v2 = [g_managers indexOfObjectIdenticalTo:v1];
  v3 = [g_managers count];
  v4 = _mdns_ne_dns_proxy_state_watch_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 >= v3)
  {
    if (v5)
    {
      *buf = 134217984;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not fetching status for stale manager -- address: %p", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 134217984;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Fetching status for manager -- address: %p", buf, 0xCu);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke;
    v6[3] = &unk_100150028;
    v6[4] = v1;
    [v1 fetchStatusWithCompletionHandler:v6];
  }
}

void ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (a2 > 4)
    {
      v6 = "«UNKNOWN STATUS»";
    }

    else
    {
      v6 = off_100150060[a2];
    }

    *buf = 134218498;
    v10 = v5;
    v11 = 2082;
    v12 = v6;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched status for manager -- address: %p, status: %{public}s (%lld)", buf, 0x20u);
  }

  v7 = _mdns_ne_dns_proxy_state_watch_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke_29;
  v8[3] = &unk_100150000;
  v8[4] = *(a1 + 32);
  v8[5] = a2;
  dispatch_async(v7, v8);
}

void ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke_29(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = [g_managers indexOfObjectIdenticalTo:v2];
  if (v3 >= [g_managers count])
  {
    v6 = _mdns_ne_dns_proxy_state_watch_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not handling status update for stale manager -- address: %p", &v7, 0xCu);
    }
  }

  else
  {
    if (v1 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = [NSNumber numberWithUnsignedInt:v4];
    [g_states setObject:v5 atIndexedSubscript:v3];

    _mdns_ne_dns_proxy_state_watch_check_for_collective_state_change();
  }
}

void _mdns_ne_dns_proxy_state_watch_check_for_collective_state_change()
{
  v0 = g_current_state;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = g_states;
  v2 = [v1 countByEnumeratingWithState:&v12 objects:buf count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v13;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v12 + 1) + 8 * i) unsignedIntValue];
        if (v7)
        {
          v8 = v7;
          if (v7 == 2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v4 = 1;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:buf count:16];
    }

    while (v3);
    v8 = (v4 & 1) == 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  if (v8 != v0)
  {
    g_current_state = v8;
    v9 = off_100150048[v0];
    v10 = off_100150048[v8];
    v11 = _mdns_ne_dns_proxy_state_watch_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = v9;
      v18 = 2082;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "State change: %{public}s -> %{public}s", buf, 0x16u);
    }

    if ((g_current_state - 1) <= 1)
    {
      if (g_user_updater)
      {
        dispatch_source_merge_data(g_user_updater, g_current_state);
      }
    }
  }
}

void ___mdns_ne_dns_proxy_state_watch_queue_block_invoke(id a1)
{
  _mdns_ne_dns_proxy_state_watch_queue_s_queue = dispatch_queue_create("com.apple.mdns.ne-dns-proxy-state-watch", 0);

  _objc_release_x1();
}

void ___mdns_ne_dns_proxy_state_watch_log_block_invoke(id a1)
{
  _mdns_ne_dns_proxy_state_watch_log_s_log = os_log_create("com.apple.mdns", "ne_dns_proxy_state_watch");

  _objc_release_x1();
}

id _mdns_ne_dns_proxy_state_watch_load_managers()
{
  v0 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Loading new manager array", v2, 2u);
  }

  return [NEDNSProxyManager loadAllFromPreferencesWithCompletionHandler:&__block_literal_global_20];
}

void ___mdns_ne_dns_proxy_state_watch_load_managers_block_invoke(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = _mdns_ne_dns_proxy_state_watch_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___mdns_ne_dns_proxy_state_watch_load_managers_block_invoke_2;
  block[3] = &unk_10014FEF0;
  block[4] = v2;
  dispatch_async(v3, block);
}

void ___mdns_ne_dns_proxy_state_watch_load_managers_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSMutableArray);
  v3 = g_managers;
  g_managers = v2;

  v4 = objc_alloc_init(NSMutableArray);
  v5 = g_states;
  g_states = v4;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v1;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([g_managers indexOfObjectIdenticalTo:{v11, v14}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [g_managers addObject:v11];
          [g_states addObject:&off_1001555D8];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v8);
  }

  _mdns_ne_dns_proxy_state_watch_check_for_collective_state_change();
  v12 = [g_managers count];
  v13 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated DNS proxy managers -- count: %llu", &buf, 0xCu);
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v19 = ___mdns_ne_dns_proxy_state_watch_handle_new_managers_block_invoke;
  v20 = &__block_descriptor_40_e34_v32__0__NEDNSProxyManager_8Q16_B24l;
  v21 = v12;
  [g_managers enumerateObjectsUsingBlock:&buf];
}

void ___mdns_ne_dns_proxy_state_watch_handle_new_managers_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 134218754;
    v9 = a3 + 1;
    v10 = 2048;
    v11 = v7;
    v12 = 2048;
    v13 = v5;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DNS proxy manager (%llu/%llu) -- address: %p, description: %@", &v8, 0x2Au);
  }

  [v5 setDelegate:g_watcher];
  _mdns_ne_dns_proxy_state_watch_fetch_manager_status(v5);
}

void __mdns_ne_dns_proxy_state_watch_start_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  if (_mdns_ne_dns_proxy_state_watch_init_s_once != -1)
  {
    dispatch_once(&_mdns_ne_dns_proxy_state_watch_init_s_once, &__block_literal_global_11);
  }

  if (g_user_updater)
  {
    v4 = g_user_updater;
    dispatch_source_cancel(v4);
    v5 = g_user_updater;
    g_user_updater = 0;
  }

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6 = dispatch_source_create(&_dispatch_source_type_data_replace, 0, 0, v2);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = ___mdns_ne_dns_proxy_state_watch_start_block_invoke;
  handler[3] = &unk_10014FF38;
  handler[5] = v3;
  handler[6] = v8;
  handler[4] = v6;
  dispatch_source_set_event_handler(v6, handler);
  dispatch_activate(v6);
  objc_storeStrong(&g_user_updater, v6);
  if ((g_current_state - 1) <= 1 && g_user_updater)
  {
    dispatch_source_merge_data(g_user_updater, g_current_state);
  }

  _Block_object_dispose(v8, 8);
}

uintptr_t ___mdns_ne_dns_proxy_state_watch_start_block_invoke(uint64_t a1)
{
  result = dispatch_source_get_data(*(a1 + 32));
  v3 = result;
  if ((result - 1) <= 1 && *(*(*(a1 + 48) + 8) + 24) != result)
  {
    v4 = _mdns_ne_dns_proxy_state_watch_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5[0] = 67109120;
      v5[1] = v3 == 2;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Calling user's update handler -- running: %{BOOL}d", v5, 8u);
    }

    result = (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = v3;
  }

  return result;
}

void ___mdns_ne_dns_proxy_state_watch_init_block_invoke(id a1)
{
  v1 = objc_alloc_init(MDNSNEDNSProxyWatcher);
  v2 = g_watcher;
  g_watcher = v1;

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:g_watcher selector:"configurationChanged:" name:NEDNSProxyConfigurationDidChangeNotification object:0];

  _mdns_ne_dns_proxy_state_watch_load_managers();
}

void _dnssec_obj_dns_question_member_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t resolver_discovery_get_next_scheduled_event()
{
  if (!g_discover_resolvers)
  {
    return 0;
  }

  v0 = *g_discover_resolvers;
  if (!*g_discover_resolvers)
  {
    return 0;
  }

  v1 = 0;
  v2 = *g_discover_resolvers;
  do
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = *(v3 + 272);
      if (v4)
      {
        v5 = *(v4 + 696);
        if (v5)
        {
          v6 = *(v5 + 1664);
          if (v6)
          {
            if ((v6 - v1) < 0 || v1 == 0)
            {
              v1 = v6;
            }
          }
        }
      }
    }

    v2 = *v2;
  }

  while (v2);
  do
  {
    v8 = v0[1];
    if (!*(v8 + 264))
    {
      v9 = *(v8 + 256);
      if (v9)
      {
        if (v2 - v9 > 0 || v2 == 0)
        {
          LODWORD(v2) = v9;
        }
      }
    }

    v0 = *v0;
  }

  while (v0);
  if ((v2 - v1) < 0 || v1 == 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = v1;
  }

  if (v2)
  {
    return v12;
  }

  else
  {
    return v1;
  }
}

void *dns_push_handle_question_start(void *a1, uint64_t a2)
{
  if (*(a2 + 656))
  {
    v4 = 4294960591;
LABEL_42:
    dns_push_handle_question_stop(a1, a2);
    return v4;
  }

  result = malloc_type_calloc(1uLL, 0x18uLL, 0xB7BBD98FuLL);
  if (!result)
  {
    goto LABEL_54;
  }

  v6 = result;
  v7 = &_dns_push_obj_dns_question_member_kind;
  result[1] = &_dns_push_obj_dns_question_member_kind;
  do
  {
    v8 = v7[2];
    if (v8)
    {
      v8(v6);
    }

    v7 = *v7;
  }

  while (v7);
  v9 = (*v6)++;
  v6[2] = 0;
  v10 = *(a2 + 184);
  if (v10 != v6)
  {
    *v6 = v9 + 2;
    if (v10)
    {
      ref_count_obj_release(v10);
    }

    *(a2 + 184) = v6;
  }

  *(a2 + 632) = 0;
  v26 = 0;
  v11 = a2 + 376;
  v12 = dns_obj_domain_name_create_with_labels((a2 + 376), &v26);
  v13 = v12;
  v4 = v26;
  if (v26)
  {
    v16 = 0;
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = v12[2];
  v15 = *v14 + 2;
  if (v15 != v12[3])
  {
    result = malloc_type_calloc(1uLL, 0x48uLL, 0xB7BBD98FuLL);
    if (!result)
    {
      goto LABEL_54;
    }

    v16 = result;
    v4 = &_dns_push_obj_context_kind;
    result[1] = &_dns_push_obj_context_kind;
    do
    {
      v17 = *(v4 + 16);
      if (v17)
      {
        v17(v16);
      }

      v4 = *v4;
    }

    while (v4);
    ++*v16;
    v16[5] = a2;
    v26 = 0;
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v23 = *(a2 + 342);
  v24 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
LABEL_52:
      v25 = bswap32(*(a2 + 340));
      *buf = 67110147;
      v28 = HIWORD(v25);
      v29 = 2160;
      v30 = 1752392040;
      v31 = 1040;
      v32 = v15;
      v33 = 2101;
      v34 = v14;
      v35 = 1024;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[Q%u] Unable to start DNS push server discovery for the single-label name (TLD) -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d", buf, 0x28u);
    }
  }

  else
  {
    v24 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }
  }

  v16 = 0;
  v4 = 4294960591;
  v26 = -6705;
LABEL_20:
  ref_count_obj_release(v13);
LABEL_21:
  if (v4)
  {
LABEL_40:
    ref_count_obj_release(v6);
    if (v16)
    {
      ref_count_obj_release(v16);
    }

    goto LABEL_42;
  }

  v18 = v6[2];
  if (v18 != v16)
  {
    if (v16)
    {
      ++*v16;
    }

    if (v18)
    {
      ref_count_obj_release(v18);
    }

    v6[2] = v16;
  }

  result = malloc_type_calloc(1uLL, 0x2B8uLL, 0x101219ECuLL);
  if (result)
  {
    v19 = result;
    result[17] = *(a2 + 136);
    v20 = (a2 + 376);
    do
    {
      if (!v20)
      {
        break;
      }

      v21 = *v20;
      if (v21 > 0x3F)
      {
        break;
      }

      if (!*v20)
      {
        v22 = v20 - v11 + 1;
        if (v22 <= 0x100u)
        {
          memcpy(result + 47, (a2 + 376), v22);
          goto LABEL_38;
        }

        break;
      }

      v20 += v21 + 1;
    }

    while (&v20[-v11] <= 255);
    *(result + 376) = 0;
LABEL_38:
    *(v19 + 171) = 6;
    *(v19 + 172) = *(a2 + 344);
    *(v19 + 61) = getpid();
    v19[19] = _dns_push_discovery_soa_result_reply;
    v19[22] = v16;
    *(v19 + 635) = 1;
    *(v19 + 632) = 0;
    if (!mDNS_StartQuery_internal(a1, v19))
    {
      v16[6] = v19;
      ref_count_obj_release(v6);
      ref_count_obj_release(v16);
      return 0;
    }

    free(v19);
    v4 = 4294960567;
    goto LABEL_40;
  }

LABEL_54:
  __break(1u);
  return result;
}

void dns_push_handle_question_stop(unsigned int *result, uint64_t a2)
{
  v2 = *(a2 + 184);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v13 = v3[6];
      if (v13)
      {
        _dns_push_discovery_stop(result, &v13, v3, 0);
        v3[6] = 0;
      }

      v5 = v3[4];
      if (v5)
      {
        DNSServiceManager = Querier_GetDNSServiceManager();
        if (DNSServiceManager)
        {
          mdns_dns_service_manager_deregister_discovered_push_service(DNSServiceManager, v5);
          v3[4] = 0;
        }
      }

      v7 = v3[7];
      if (v7)
      {
        v8 = g_interface_monitors;
        if (!g_interface_monitors)
        {
          goto LABEL_20;
        }

        if (*g_interface_monitors == v7)
        {
          v10 = &g_interface_monitors;
LABEL_15:
          v11 = *(v8 + 8) - 1;
          *(v8 + 8) = v11;
          if (!v11)
          {
            *v10 = *(v8 + 16);
            if (*v8)
            {
              mdns_interface_monitor_invalidate(*v8);
              os_release(*v8);
            }

            free(v8);
            v7 = v3[7];
          }
        }

        else
        {
          while (1)
          {
            v9 = v8;
            v8 = *(v8 + 16);
            if (!v8)
            {
              break;
            }

            if (*v8 == v7)
            {
              v10 = (v9 + 16);
              goto LABEL_15;
            }
          }
        }

        if (v7)
        {
LABEL_20:
          os_release(v7);
        }

        v3[7] = 0;
      }

      v12 = *(a2 + 184);
      if (v12)
      {
        ref_count_obj_release(v12);
        *(a2 + 184) = 0;
      }

      *(a2 + 632) = 1;
    }
  }
}

void _dns_push_discovery_stop(unsigned int *a1, unsigned __int16 **a2, uint64_t a3, int a4)
{
  v8 = *a2;
  if (*a2 != *(a3 + 48))
  {
    v9 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v10 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v9 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
    {
LABEL_10:
      v12 = bswap32(v8[170]) >> 16;
      v13[0] = 67109120;
      v13[1] = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "[Q%u] Question being stopped is not the currently active discovery question", v13, 8u);
    }
  }

LABEL_11:
  if (a4)
  {
    mDNS_StopQuery(a1, v8);
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  mDNS_StopQuery_internal(a1, v8);
  if (v8)
  {
LABEL_15:
    free(v8);
  }

LABEL_16:
  *a2 = 0;
  *(a3 + 48) = 0;
}

void _dns_push_discovery_soa_result_reply(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v41 = a2;
  if (a4 != 1)
  {
    return;
  }

  v7 = *(a2 + 176);
  v40 = 0;
  if (*a3 != 240)
  {
    if (*(a3 + 2) != 6)
    {
      goto LABEL_59;
    }

    v10 = dns_obj_domain_name_create_with_labels(*(a3 + 4), &v40);
    v11 = v10;
    v12 = v40;
    if (v40)
    {
LABEL_56:
      if (!v11)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (!v10)
    {
      goto LABEL_3;
    }

    ++*v10;
    v13 = *(v7 + 16);
    if (v13)
    {
      ref_count_obj_release(v13);
    }

    *(v7 + 16) = v11;
    _dns_push_discovery_stop(a1, &v41, v7, 1);
    mDNS_Lock_(a1, "_dns_push_discovery_soa_result_reply", 256);
    v14 = *(a3 + 3);
    v15 = v14 + 5;
    if (v14 + 5) < 6 && ((0x2Du >> v15))
    {
      LODWORD(v14) = dword_10010DEF8[v15];
    }

    mDNS_Unlock_(a1, "_dns_push_discovery_soa_result_reply", 258);
    *(v7 + 64) = v14;
    v16 = *(a3 + 3);
    v17 = malloc_type_calloc(1uLL, 0x2B8uLL, 0x73360BF4uLL);
    if (!v17)
    {
      goto LABEL_72;
    }

    v18 = v17;
    v19 = *(v7 + 24);
    if (v19)
    {
LABEL_17:
      v20 = *(v19 + 16);
      v21 = v20;
      do
      {
        if (!v21)
        {
          break;
        }

        v22 = *v21;
        if (v22 > 0x3F)
        {
          break;
        }

        if (!*v21)
        {
          v27 = v21 - v20 + 1;
          if (v27 <= 0x100u)
          {
            memcpy((v18 + 376), v20, v27);
            goto LABEL_35;
          }

          break;
        }

        v21 += v22 + 1;
      }

      while (v21 - v20 <= 255);
      *(v18 + 376) = 0;
LABEL_35:
      v28 = *(v7 + 40);
      if (!v28)
      {
        goto LABEL_54;
      }

      *(v18 + 342) = 33;
      *(v18 + 344) = *(v28 + 344);
      *(v18 + 136) = v16;
      *(v18 + 244) = getpid();
      *(v18 + 152) = _dns_push_discovery_srv_result_reply;
      *(v18 + 176) = v7;
      *(v18 + 635) = 1;
      *(v18 + 632) = 0;
      v29 = *(v7 + 64);
      v30 = g_interface_monitors;
      if (g_interface_monitors)
      {
        while (1)
        {
          v31 = *v30;
          if (*(*v30 + 136) == v29)
          {
            break;
          }

          v30 = v30[2];
          if (!v30)
          {
            goto LABEL_39;
          }
        }

        os_retain(*v30);
        ++v30[1];
        goto LABEL_51;
      }

LABEL_39:
      v32 = malloc_type_calloc(1uLL, 0x18uLL, 0x9ACE5A8BuLL);
      if (v32)
      {
        v33 = v32;
        v34 = mdns_interface_monitor_create(v29);
        if (v34)
        {
          v31 = v34;
          if (_dns_push_discovery_interface_monitor_queue_s_once != -1)
          {
            dispatch_once(&_dns_push_discovery_interface_monitor_queue_s_once, &__block_literal_global_2296);
          }

          mdns_interface_monitor_set_queue(v31, _dns_push_discovery_interface_monitor_queue_s_queue);
          os_retain(v31);
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 0x40000000;
          aBlock[2] = ___dns_push_discovery_start_mdns_interface_monitor_block_invoke;
          aBlock[3] = &__block_descriptor_tmp_2297;
          aBlock[4] = v31;
          mdns_interface_monitor_set_event_handler(v31, aBlock);
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 0x40000000;
          v42[2] = ___dns_push_discovery_start_mdns_interface_monitor_block_invoke_2;
          v42[3] = &__block_descriptor_tmp_3_2298;
          v42[4] = v31;
          mdns_interface_monitor_set_update_handler(v31, v42);
          if ((*(v31 + 154) & 1) == 0)
          {
            if (*(v31 + 32))
            {
              _mdns_interface_monitor_activate_async(v31);
            }

            *(v31 + 154) = 1;
          }

          *v33 = v31;
          os_retain(v31);
          v35 = &g_interface_monitors;
          do
          {
            v36 = v35;
            v37 = *v35;
            v35 = (*v35 + 16);
          }

          while (v37);
          *v36 = v33;
          ++v33[1];
LABEL_51:
          dns_push_obj_context_set_interface_monitor(v7, v31);
          if (!mDNS_StartQuery(a1, v18))
          {
            os_release(v31);
            *(v7 + 48) = v18;
            if (!v11)
            {
LABEL_58:
              if (!v12)
              {
                return;
              }

              goto LABEL_59;
            }

LABEL_57:
            ref_count_obj_release(v11);
            goto LABEL_58;
          }

          free(v18);
          os_release(v31);
          goto LABEL_55;
        }

        free(v33);
LABEL_54:
        free(v18);
LABEL_55:
        v40 = -6729;
        goto LABEL_56;
      }

LABEL_72:
      __break(1u);
      return;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_54;
    }

    LODWORD(aBlock[0]) = 0;
    v24 = dns_obj_domain_name_create_with_cstring("_dns-push-tls._tcp", aBlock);
    v25 = v24;
    if (LODWORD(aBlock[0]))
    {
      v26 = v24;
      if (!v24)
      {
        goto LABEL_30;
      }
    }

    else
    {
      concatenation = dns_obj_domain_name_create_concatenation(v24[2], *(*(v7 + 16) + 16), aBlock);
      v26 = concatenation;
      if (!LODWORD(aBlock[0]))
      {
        if (concatenation)
        {
          ++*concatenation;
        }

        v39 = *(v7 + 24);
        if (v39)
        {
          ref_count_obj_release(v39);
        }

        *(v7 + 24) = v26;
      }

      ref_count_obj_release(v25);
      if (!v26)
      {
LABEL_30:
        v19 = *(v7 + 24);
        if (!v19)
        {
          goto LABEL_54;
        }

        goto LABEL_17;
      }
    }

    ref_count_obj_release(v26);
    goto LABEL_30;
  }

LABEL_3:
  if (!*(a2 + 376))
  {
LABEL_59:
    _dns_push_discovery_stop(a1, &v41, v7, 1);
    return;
  }

  v8 = dns_obj_domain_name_create_with_labels((*(a2 + 376) + a2 + 376 + 1), &v40);
  v9 = v8;
  if (v40)
  {
    if (v8)
    {
      ref_count_obj_release(v8);
    }

    goto LABEL_59;
  }

  *(a1 + 232) = a2;
  mDNS_StopQuery(a1, a2);
  *(a1 + 232) = 0;
  v23 = v9[3];
  if (v23 >= 0x100)
  {
    fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "labels_length < sizeof(question->qname.c)", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dns_push/dns_push_discovery.c", 385, 0);
  }

  else
  {
    memcpy((a2 + 376), v9[2], v23);
    *(a2 + 200) = DomainNameHashValue(a2 + 376);
    mDNS_StartQuery(a1, a2);
  }

  ref_count_obj_release(v9);
}

void ___dns_push_discovery_start_mdns_interface_monitor_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    _dns_push_discovery_process_interface_changes(*(a1 + 32));
  }

  else if (a2 == 2)
  {
    os_release(*(a1 + 32));
  }
}

void ___dns_push_discovery_start_mdns_interface_monitor_block_invoke_2(uint64_t result, char a2)
{
  if (a2 < 0)
  {
    _dns_push_discovery_process_interface_changes(*(result + 32));
  }
}

void _dns_push_discovery_process_interface_changes(uint64_t a1)
{
  v15 = *(a1 + 136);
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  mDNS_Lock_(mDNSStorage, "_dns_push_discovery_process_interface_changes", 487);
  DNSServiceManager = Querier_GetDNSServiceManager();
  v3 = xmmword_10016D2D8;
  if (!xmmword_10016D2D8)
  {
    goto LABEL_20;
  }

  v4 = DNSServiceManager;
  v5 = 0;
  v6 = xmmword_10016D2D8;
  do
  {
    ++v5;
    v6 = *(v6 + 8);
  }

  while (v6);
  qword_10016D300 = xmmword_10016D2D8;
  if (v5)
  {
    v7 = 0;
    do
    {
      if (!v3)
      {
        break;
      }

      v8 = *(v3 + 184);
      if (!v8)
      {
        goto LABEL_17;
      }

      v9 = *(v8 + 16);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = *(v9 + 56);
      if (!v10 || v10 != a1)
      {
        goto LABEL_17;
      }

      v12 = *(v9 + 32);
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2000000000;
      v17 = 0;
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      ++v7;
      block = _NSConcreteStackBlock;
      *&v19 = 0x40000000;
      *(&v19 + 1) = __mdns_dns_service_manager_terminate_discovered_push_service_block_invoke;
      v20 = &unk_10014E580;
      v21 = v16;
      v22 = v4;
      v23 = v12;
      dispatch_sync(_mdns_dns_service_queue_s_queue, &block);
      _Block_object_dispose(v16, 8);
      dns_push_handle_question_stop(mDNSStorage, v3);
      dns_push_handle_question_start(mDNSStorage, v3);
      v13 = qword_10016D300;
      if (qword_10016D300 == v3)
      {
LABEL_17:
        v13 = *(v3 + 8);
        qword_10016D300 = v13;
      }

      v3 = v13;
      --v5;
    }

    while (v5);
  }

  else
  {
LABEL_20:
    v7 = 0;
  }

  qword_10016D300 = 0;
  v14 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:
      LODWORD(block) = 67109376;
      HIDWORD(block) = v15;
      LOWORD(v19) = 2048;
      *(&v19 + 2) = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Network changes, restarting all push questions that are related to the changed interface -- if_index: %u, restarted count: %zu", &block, 0x12u);
    }
  }

  else
  {
    v14 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }
  }

  mDNS_Unlock_(mDNSStorage, "_dns_push_discovery_process_interface_changes", 529);
  KQueueUnlock("DNS push interface monitor");
}

void _dns_push_discovery_srv_result_reply(unsigned int *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v44 = a2;
  if (a4 != 1)
  {
    return;
  }

  v6 = *(a2 + 176);
  v7 = bswap32(*(*(v6 + 40) + 340)) >> 16;
  if (*a3 == 240)
  {
    v8 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 80);
        if (v10)
        {
          v10 = *(v10 + 24);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v8 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 80);
        if (v10)
        {
          v10 = *(v10 + 24);
        }

LABEL_24:
        *buf = 67109376;
        v48 = v7;
        v49 = 2048;
        *v50 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Q%u] Current network does not support DNS push, falling back to DNS polling -- service ID: %llu", buf, 0x12u);
      }
    }

    v21 = *(v6 + 40);
    v22 = *(v21 + 252);
    v23 = bswap32(*(v21 + 340)) >> 16;
    v24 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:
        *buf = 67109376;
        v48 = v22;
        v49 = 1024;
        *v50 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Starting long-lived DNS polling -- polling interval: 15 min", buf, 0xEu);
      }
    }

    else
    {
      v24 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }
    }

    *(v6 + 68) = 1;
LABEL_77:
    Querier_ProcessDNSServiceChangesAsync();
    return;
  }

  v11 = *(v6 + 16);
  if (!v11)
  {
    return;
  }

  mDNS_Lock_(a1, "_dns_push_discovery_srv_result_reply", 311);
  v13 = *(a3 + 3);
  v14 = v13 + 5;
  if (v13 + 5) < 6 && ((0x2Du >> v14))
  {
    LODWORD(v13) = dword_10010DF10[v14];
  }

  mDNS_Unlock_(a1, "_dns_push_discovery_srv_result_reply", 313);
  *buf = 0;
  v46 = 0;
  DNSServiceManager = Querier_GetDNSServiceManager();
  if (!DNSServiceManager)
  {
    v25 = 0;
    v19 = -6729;
    goto LABEL_44;
  }

  v16 = _dns_push_discovery_register_push_service_dns_push_service_type;
  if (!_dns_push_discovery_register_push_service_dns_push_service_type)
  {
    v16 = dns_obj_domain_name_create_with_cstring("_dns-push-tls._tcp", buf);
    _dns_push_discovery_register_push_service_dns_push_service_type = v16;
    v19 = *buf;
    if (*buf)
    {
LABEL_34:
      DNSServiceManager = 0;
      v25 = 0;
      goto LABEL_44;
    }
  }

  concatenation = dns_obj_domain_name_create_concatenation(v16[2], *(v11 + 16), buf);
  v18 = concatenation;
  v19 = *buf;
  if (*buf)
  {
    if (concatenation)
    {
      ref_count_obj_release(concatenation);
    }

    goto LABEL_34;
  }

  v26 = mdns_domain_name_create_with_labels(concatenation[2], 0);
  if (v26)
  {
    v45 = 0;
    v27 = mdns_dns_service_manager_register_discovered_push_service(DNSServiceManager, v26, v13, &v46, &v45);
    DNSServiceManager = v27;
    if (v27)
    {
      *(v6 + 32) = v27;
      if (v46 == 1)
      {
        Querier_ProcessDNSServiceChangesAsync();
      }

      goto LABEL_42;
    }

    v28 = v45;
  }

  else
  {
    DNSServiceManager = 0;
    v28 = -6729;
  }

  *buf = v28;
LABEL_42:
  v25 = v46;
  v19 = *buf;
  ref_count_obj_release(v18);
  if (v26)
  {
    os_release(v26);
  }

LABEL_44:
  if (DNSServiceManager || !v19)
  {
    v30 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v31 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v31 = 1;
    }

    v32 = v31;
    if (v25)
    {
      if (v32)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_66;
        }
      }

      else
      {
        v30 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_66:
          *buf = 67109632;
          v48 = v7;
          v49 = 2048;
          *v50 = DNSServiceManager;
          *&v50[8] = 1024;
          *&v50[10] = v25;
          v35 = "[Q%u] DNS push discovery finished -- service id: %llu, re registered: %{mdns:yesno}d";
          v36 = v30;
          v37 = 24;
LABEL_69:
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
        }
      }

LABEL_70:
      _dns_push_discovery_stop(a1, &v44, v6, 1);
      v40 = *(v6 + 40);
      v41 = *(v40 + 252);
      v42 = bswap32(*(v40 + 340)) >> 16;
      v43 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_75:
          *buf = 67109376;
          v48 = v41;
          v49 = 1024;
          *v50 = v42;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Stopping long-lived DNS polling", buf, 0xEu);
        }
      }

      else
      {
        v43 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_75;
        }
      }

      *(v6 + 68) = 0;
      goto LABEL_77;
    }

    if (v32)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }
    }

    else
    {
      v30 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }
    }

    v39 = *(v11 + 16);
    v38 = *(v11 + 24);
    *buf = 67110146;
    v48 = v7;
    v49 = 1040;
    *v50 = v38;
    *&v50[4] = 2098;
    *&v50[6] = v39;
    v51 = 2048;
    v52 = DNSServiceManager;
    v53 = 1024;
    v54 = 0;
    v35 = "[Q%u] DNS push discovery finished, using service with SRV name _dns-push-tls._tcp.%{public, mdnsresponder:domain_name}.*P -- service id: %llu, re registered: %{mdns:yesno}d";
    v36 = v30;
    v37 = 40;
    goto LABEL_69;
  }

  v29 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
    {
      return;
    }
  }

  else
  {
    v29 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
    {
      return;
    }
  }

  v34 = *(v11 + 16);
  v33 = *(v11 + 24);
  *buf = 67110402;
  v48 = v7;
  v49 = 2048;
  *v50 = 0;
  *&v50[8] = 1040;
  *&v50[10] = v33;
  v51 = 2098;
  v52 = v34;
  v53 = 1024;
  v54 = v13;
  v55 = 2048;
  v56 = v19;
  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "[Q%u] Failed to register push service -- id: %lluauthoritative zone: %{public, mdnsresponder:domain_name}.*P, interface index: %u, error: %{mdns:err}ld", buf, 0x32u);
}

uint64_t LogToFD(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  bzero(__b, 0x400uLL);
  mDNS_vsnprintf(__b, 1024, a2, &a9);
  return dprintf(a1, "%s\n", __b);
}

void mdns_free_context_finalizer(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void _dnssec_obj_rr_nsec_finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 80) = 0;
  }
}

uint64_t _dnssec_obj_rr_nsec_compare(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 3;
  }

  else
  {
    return domain_name_label_canonical_compare(*(*(a1 + 16) + 16), *(*(a2 + 16) + 16), 0);
  }
}

uint64_t dnssec_obj_rr_nsec_covers_dns_type(_BYTE *a1, __int16 a2, unsigned int a3)
{
  v3 = *a1;
  v4 = a1;
  if (*a1)
  {
    v4 = a1;
    do
    {
      v5 = &v4[v3];
      v6 = v5[1];
      v4 = v5 + 1;
      v3 = v6;
    }

    while (v6);
  }

  return rdata_parser_type_bit_maps_cover_dns_type(v4 + 1, (~(v4 - a1) + a2), a3);
}

BOOL dnssec_obj_rr_nsec_asserts_name_exists_data_does_not_exist(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (*(a1 + 34) != a3)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 36);
  return (dnssec_obj_rr_nsec_covers_dns_type(v6, v7, a4) & 1) == 0 && (dnssec_obj_rr_nsec_covers_dns_type(v6, v7, 5u) & 1) == 0 && ref_count_obj_compare(*(a1 + 16), a2, 1) == 0;
}

BOOL dnssec_obj_rr_nsec_asserts_name_does_not_exist(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 34) != a3)
  {
    return 0;
  }

  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = ref_count_obj_compare(*(a1 + 16), a2, 0);
  if (v5)
  {
    if (v6 == -1)
    {
      return 1;
    }
  }

  else if (v6 != -1)
  {
    return 0;
  }

  return ref_count_obj_compare(a2, v4, 0) == -1;
}

uint64_t _discovery_proxy_stop_handler()
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  v0 = mDNSPlatformRawTime();
  *(mDNSStorage[0] + 680) = v0;
  _discovery_proxy_stop_internal(v0);
  KQueueUnlock("discovery_proxy_stop_handler");
  return 0;
}

void _discovery_proxy_stop_internal(uint64_t a1)
{
  v1 = g_discovery_proxy_service_id;
  if (g_discovery_proxy_service_id)
  {
    DNSServiceManager = Querier_GetDNSServiceManager();
    if (DNSServiceManager)
    {
      mdns_dns_service_manager_deregister_custom_push_service(DNSServiceManager, v1);
    }

    v3 = mDNSLogCategory_uDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        g_discovery_proxy_service_id = 0;
        return;
      }

      v6 = 134217984;
      v7 = g_discovery_proxy_service_id;
    }

    else
    {
      v3 = mDNSLogCategory_uDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v6 = 134217984;
      v7 = g_discovery_proxy_service_id;
    }

    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Discovery proxy service deregistered -- id: %llu", &v6, 0xCu);
    goto LABEL_14;
  }
}

uint64_t _discovery_proxy_start_handler(uint64_t a1, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  v8 = mDNSPlatformRawTime();
  *(mDNSStorage[0] + 680) = v8;
  _discovery_proxy_stop_internal(v8);
  v9 = mdns_dns_push_service_definition_create();
  if (v9)
  {
    v10 = v9;
    if (a1)
    {
      mdns_dns_push_service_definition_set_interface_index(v9, a1, 2);
      *(v10 + 79) = 257;
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v12 = Count;
        for (i = 0; i != v12; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          CFArrayAppendValue(*(v10 + 40), ValueAtIndex);
        }
      }

      v15 = CFArrayGetCount(a3);
      if (v15 >= 1)
      {
        v16 = v15;
        for (j = 0; j != v16; ++j)
        {
          v18 = CFArrayGetValueAtIndex(a3, j);
          CFSetAddValue(*(v10 + 48), v18);
        }
      }

      v19 = CFArrayGetCount(a4);
      if (v19 >= 1)
      {
        v20 = v19;
        for (k = 0; k != v20; ++k)
        {
          v22 = CFArrayGetValueAtIndex(a4, k);
          CFArrayAppendValue(*(v10 + 56), v22);
        }
      }

      v23 = Querier_RegisterCustomPushDNSServiceWithConnectionErrorHandler(v10, 0, 0);
      g_discovery_proxy_service_id = v23;
      if (!v23)
      {
        v26 = 4294960582;
LABEL_24:
        os_release(v10);
        goto LABEL_25;
      }

      v24 = v23;
      v25 = mDNSLogCategory_uDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_uDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 134217984;
          v29 = v24;
          goto LABEL_22;
        }
      }

      else
      {
        v25 = mDNSLogCategory_uDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 134217984;
          v29 = v24;
LABEL_22:
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Discovery proxy service registered -- id: %llu", &v28, 0xCu);
        }
      }

      v26 = 0;
      goto LABEL_24;
    }

    os_release(v9);
    v26 = 4294960591;
  }

  else
  {
    v26 = 4294960567;
  }

LABEL_25:
  KQueueUnlock("discovery_proxy_start_handler");
  return v26;
}

const void *mdns_managed_defaults_create(const char *a1, int *a2)
{
  *cStr = 0;
  asprintf(cStr, "/Library/Managed Preferences/mobile/%s.plist", a1);
  if (!*cStr)
  {
    Code = -6728;
    goto LABEL_20;
  }

  v4 = CFStringCreateWithCStringNoCopy(0, *cStr, 0x8000100u, kCFAllocatorMalloc);
  if (!v4)
  {
    if (*cStr)
    {
      free(*cStr);
    }

    goto LABEL_19;
  }

  v5 = v4;
  *cStr = 0;
  v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v4, kCFURLPOSIXPathStyle, 0);
  CFRelease(v5);
  if (!v6)
  {
LABEL_19:
    Code = -6729;
LABEL_20:
    if (_mdns_managed_defaults_log_s_once != -1)
    {
      dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_2394);
    }

    v14 = _mdns_managed_defaults_log_s_log;
    if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *cStr = 136446466;
      *&cStr[4] = a1;
      v21 = 2048;
      v22 = Code;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create URL -- domain: %{public}s, error: %{mdns:err}ld", cStr, 0x16u);
    }

    v10 = 0;
    if (a2)
    {
      goto LABEL_14;
    }

    return v10;
  }

  v7 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v6);
  v8 = v7;
  if (!v7)
  {
    Code = -6729;
LABEL_28:
    if (_mdns_managed_defaults_log_s_once != -1)
    {
      dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_2394);
    }

    v15 = _mdns_managed_defaults_log_s_log;
    if (v8)
    {
      v16 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v16 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, v16))
    {
      *cStr = 138543618;
      *&cStr[4] = v6;
      v21 = 2048;
      v22 = Code;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create read stream -- url: %{public}@, error: %{mdns:err}ld", cStr, 0x16u);
    }

    goto LABEL_41;
  }

  if (!CFReadStreamOpen(v7))
  {
    CFRelease(v8);
    Code = -6755;
    goto LABEL_28;
  }

  error = 0;
  v9 = CFPropertyListCreateWithStream(0, v8, 0, 0, 0, &error);
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFDictionaryGetTypeID())
    {
      Code = 0;
    }

    else
    {
      CFRelease(v10);
      v10 = 0;
      Code = -6756;
    }
  }

  else
  {
    if (error)
    {
      Code = CFErrorGetCode(error);
    }

    else
    {
      Code = -6700;
    }

    if (_mdns_managed_defaults_log_s_once != -1)
    {
      dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_2394);
    }

    v18 = _mdns_managed_defaults_log_s_log;
    if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *cStr = 138543362;
      *&cStr[4] = error;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CFPropertyListCreateWithStream failed: %{public}@", cStr, 0xCu);
    }

    v10 = 0;
  }

  if (error)
  {
    CFRelease(error);
  }

  CFRelease(v8);
  if (v10)
  {
    Code = 0;
    goto LABEL_13;
  }

  if (_mdns_managed_defaults_log_s_once != -1)
  {
    dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_2394);
  }

  v17 = _mdns_managed_defaults_log_s_log;
  if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, OS_LOG_TYPE_ERROR))
  {
    *cStr = 138543618;
    *&cStr[4] = v6;
    v21 = 2048;
    v22 = Code;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create dictionary -- url: %{public}@, error: %{mdns:err}ld", cStr, 0x16u);
  }

LABEL_41:
  v10 = 0;
LABEL_13:
  CFRelease(v6);
  if (a2)
  {
LABEL_14:
    *a2 = Code;
  }

  return v10;
}

CFBooleanRef mdns_managed_defaults_get_BOOL_easy()
{
  v7 = 0;
  v0 = mdns_managed_defaults_create("com.apple.mDNSResponder", &v7);
  v1 = v0;
  if (v7)
  {
    v3 = 0;
    if (!v0)
    {
      return v3;
    }

    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(v0, @"EnableStateDump");
  v3 = Value;
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 == CFBooleanGetTypeID())
    {
      v5 = 0;
      v3 = (v3 == kCFBooleanTrue);
    }

    else
    {
      v3 = 0;
      v5 = -6756;
    }
  }

  else
  {
    v5 = -6727;
  }

  v7 = v5;
  if (v1)
  {
LABEL_6:
    CFRelease(v1);
  }

  return v3;
}

void _dnssec_obj_trust_anchor_manager_finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  while (v1)
  {
    v2 = v1;
    v1 = *v1;
    do
    {
      v4 = v2[1];
      v3 = v2[2];
      if (v3)
      {
        ref_count_obj_release(v3);
      }

      free(v2);
      v2 = v4;
    }

    while (v4);
  }
}

uint64_t dnssec_obj_trust_anchor_manager_add_anchor(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(1uLL, 0x18uLL, 0xBA270B20uLL);
  if (result)
  {
    v5 = result;
    v6 = *(*(a2 + 16) + 16);
    v7 = (a1 + 16);
    v8 = v7;
    while (1)
    {
      v9 = v8;
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (!ref_count_obj_compare(*(*(v8[2] + 16) + 16), v6, 1))
      {
        v10 = v8;
        while (ref_count_obj_compare(v10[2], a2, 1))
        {
          v10 = v10[1];
          if (!v10)
          {
            *v9 = v5;
            *v5 = *v8;
            *v8 = 0;
            v5[1] = v8;
            goto LABEL_12;
          }
        }

        free(v5);
        return 4294960566;
      }
    }

    do
    {
      v11 = v7;
      v7 = *v7;
    }

    while (v7 && ref_count_obj_compare(*(*(v7[2] + 16) + 16), v6, 0) != 1);
    *v11 = v5;
    *v5 = v7;
LABEL_12:
    result = 0;
    v5[2] = a2;
    ++*a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void LogMcastStateInfo(int a1, int a2, int a3)
{
  if (a3)
  {
    i_mcount = 0;
    if (a2)
    {
      mcount = 0;
    }

    if (mDNS_McastLoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "--- START MCAST STATE LOG ---");
    }

    v4 = all_requests;
    if (all_requests)
    {
      do
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          for (i = all_requests; i && i != v4; i = *(i + 16))
          {
            if (i == v5)
            {
              goto LABEL_18;
            }
          }

          if (mDNS_McastLoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Orphan operation; parent not found in request list", *(v4 + 184));
          }
        }

        LogMcastClientInfo(v4);
LABEL_18:
        v4 = *(v4 + 16);
      }

      while (v4);
      if (!mcount)
      {
        mcount = i_mcount;
        if (!i_mcount)
        {
LABEL_38:
          LogMcastStateInfo_i_mpktnum = dword_10016D2A0;
          if (mDNS_McastLoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "--- MCOUNT[%d]: IMPKTNUM[%d] ---", 0, dword_10016D2A0);
          }
        }
      }
    }

    else
    {
      mcount = 0;
      if (!mDNS_McastLoggingEnabled)
      {
        LogMcastStateInfo_i_mpktnum = dword_10016D2A0;
        goto LABEL_43;
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "<None>");
      if (!mcount)
      {
        goto LABEL_38;
      }
    }

LABEL_43:
    v14 = mDNS_McastLoggingEnabled;
    if (a1 && mDNS_McastLoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "--- MCOUNT[%d]: CMPKTNUM[%d] - IMPKTNUM[%d] = [%d]PKTS ---", mcount, dword_10016D2A0, LogMcastStateInfo_i_mpktnum, dword_10016D2A0 - LogMcastStateInfo_i_mpktnum);
      v14 = mDNS_McastLoggingEnabled;
    }

    if (v14)
    {
      v12 = mDNSLogCategory_Default;
      v13 = "--- END MCAST STATE LOG ---";
LABEL_48:

      LogMsgWithLevel(v12, OS_LOG_TYPE_DEFAULT, v13);
      return;
    }

    return;
  }

  v8 = all_requests;
  if (!all_requests)
  {
    if (!mDNS_McastLoggingEnabled)
    {
      return;
    }

    v12 = mDNSLogCategory_Default;
    v13 = "<None>";
    goto LABEL_48;
  }

  do
  {
    v9 = *(v8 + 24);
    if (v9)
    {
      for (j = all_requests; j && j != v8; j = *(j + 16))
      {
        if (j == v9)
        {
          goto LABEL_32;
        }
      }
    }

    GetMcastClients(v8);
LABEL_32:
    v8 = *(v8 + 16);
  }

  while (v8);
  if (mDNS_McastLoggingEnabled)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "--- MCAST RECORDS COUNT[%d] MCAST QUESTIONS COUNT[%d] ---", n_mrecords, n_mquests);
  }

  n_mquests = 0;
  n_mrecords = 0;
}

uint64_t GetMcastClients(uint64_t result)
{
  v1 = result;
  v2 = *(result + 112);
  if (v2 == connection_termination)
  {
    for (i = *(result + 176); i; i = *(i + 8))
    {
      v4 = *(i + 24);
      if (!*(v4 + 32) && !*(v4 + 122))
      {
        result = IsLocalDomain(*(v4 + 40));
        if (!result)
        {
          continue;
        }
      }

      ++n_mrecords;
    }

    for (j = *(v1 + 16); j; j = *(j + 16))
    {
      if (*(j + 24) == v1)
      {
        result = GetMcastClients(j);
      }
    }
  }

  else if (v2 == regservice_termination_callback)
  {
    for (k = *(*(result + 128) + 1624); k; k = *k)
    {
      if (!k[341] && !*(k + 2818))
      {
        result = IsLocalDomain(k[342]);
        if (!result)
        {
          continue;
        }
      }

      ++n_mrecords;
    }
  }

  else if (v2 == browse_termination_callback)
  {
    v7 = *(*(result + 152) + 272);
    if (v7)
    {
      v8 = n_mquests;
      do
      {
        if (!*(v7 + 302))
        {
          n_mquests = ++v8;
        }

        v7 = *v7;
      }

      while (v7);
    }
  }

  else if (v2 == resolve_termination_callback)
  {
    v9 = *(result + 136);
    if (!*(v9 + 1036) && *(v9 + 908) > 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v2 != queryrecord_termination_callback)
    {
      if (v2 != addrinfo_termination_callback)
      {
        return result;
      }

      result = GetAddrInfoClientRequestIsMulticast(*(result + 168));
      if (!result)
      {
        return result;
      }

LABEL_38:
      ++n_mquests;
      return result;
    }

    v10 = *(result + 144);
    if (!*(v10 + 340) && *(v10 + 212) >= 1)
    {
      goto LABEL_38;
    }
  }

  return result;
}

void LogMcastClientInfo(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (!v1)
  {
    if (mDNS_McastLoggingEnabled)
    {
      v10 = mDNSLogCategory_Default;

      LogMsgWithLevel(v10, OS_LOG_TYPE_DEFAULT, "No operation yet on this socket");
    }

    return;
  }

  if (v1 == connection_termination)
  {
    v11 = *(a1 + 176);
    if (!v11)
    {
LABEL_33:
      for (i = *(a1 + 16); i; i = *(i + 16))
      {
        if (*(i + 24) == a1)
        {
          LogMcastClientInfo(i);
        }
      }

      return;
    }

    while (1)
    {
      v12 = *(v11 + 24);
      if (!*(v12 + 32) && !*(v12 + 122))
      {
        break;
      }

      if (mDNS_McastLoggingEnabled)
      {
        goto LABEL_25;
      }

LABEL_26:
      v11 = *(v11 + 8);
      if (!v11)
      {
        goto LABEL_33;
      }
    }

    if (!IsLocalDomain(*(v12 + 40)) || mDNS_McastLoggingEnabled == 0)
    {
      goto LABEL_26;
    }

    v12 = *(v11 + 24);
LABEL_25:
    v13 = mDNSLogCategory_Default;
    v14 = *(v12 + 40);
    v15 = DNSTypeName(*(v12 + 12));
    v16 = i_mcount++;
    LogMsgWithLevel(v13, OS_LOG_TYPE_DEFAULT, "R: ->  DNSServiceRegisterRecord:  %##s %s PID[%d](%s)", v14, v15, *(a1 + 188), a1 + 256, v16);
    goto LABEL_26;
  }

  if (v1 == regservice_termination_callback)
  {
    v19 = *(a1 + 128);
    v20 = *(v19 + 1624);
    if (!v20)
    {
      return;
    }

    while (v20[341] || *(v20 + 2818))
    {
      if (mDNS_McastLoggingEnabled)
      {
        goto LABEL_42;
      }

LABEL_43:
      v20 = *v20;
      if (!v20)
      {
        return;
      }
    }

    if (!IsLocalDomain(v20[342]) || mDNS_McastLoggingEnabled == 0)
    {
      goto LABEL_43;
    }

LABEL_42:
    v21 = v20[342];
    v22 = bswap32(*(v19 + 24));
    v23 = bswap32(*(v20[343] + 8));
    v24 = i_mcount++;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "R: DNSServiceRegister:  %##s %u/%u PID[%d](%s)", v21, HIWORD(v22), HIWORD(v23), *(a1 + 188), a1 + 256, v24);
    goto LABEL_43;
  }

  if (v1 == browse_termination_callback)
  {
    v26 = *(*(a1 + 152) + 272);
    if (v26)
    {
      v27 = mDNS_McastLoggingEnabled;
      do
      {
        if (*(v26 + 302))
        {
          v28 = 1;
        }

        else
        {
          v28 = v27 == 0;
        }

        if (!v28)
        {
          v29 = mDNSLogCategory_Default;
          v30 = DNSTypeName(*(v26 + 303));
          v31 = i_mcount++;
          LogMsgWithLevel(v29, OS_LOG_TYPE_DEFAULT, "Q: DNSServiceBrowse  %##s %s PID[%d](%s)", v26 + 80, v30, *(a1 + 188), a1 + 256, v31);
          v27 = mDNS_McastLoggingEnabled;
        }

        v26 = *v26;
      }

      while (v26);
    }

    return;
  }

  if (v1 == resolve_termination_callback)
  {
    v32 = *(a1 + 136);
    if (*(v32 + 1036))
    {
      return;
    }

    if (*(v32 + 908) < 1 || mDNS_McastLoggingEnabled == 0)
    {
      return;
    }

    v34 = mDNSLogCategory_Default;
    v35 = (v32 + 1072);
    v36 = DNSTypeName(*(v32 + 1038));
    v37 = i_mcount++;
    v49 = a1 + 256;
    v50 = v37;
    v47 = v36;
    v48 = *(a1 + 188);
    v46 = v35;
    v38 = "Q: DNSServiceResolve  %##s %s PID[%d](%s)";
LABEL_72:
    v4 = v34;
LABEL_77:
    LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, v38, v46, v47, v48, v49, v50, v51);
    return;
  }

  if (v1 == queryrecord_termination_callback)
  {
    v39 = *(a1 + 144);
    if (*(v39 + 340))
    {
      return;
    }

    if (*(v39 + 212) < 1 || mDNS_McastLoggingEnabled == 0)
    {
      return;
    }

    v34 = mDNSLogCategory_Default;
    v41 = (v39 + 376);
    v42 = DNSTypeName(*(v39 + 342));
    v43 = i_mcount++;
    v49 = a1 + 256;
    v50 = v43;
    v47 = v42;
    v48 = *(a1 + 188);
    v46 = v41;
    v38 = "Q: DNSServiceQueryRecord  %##s %s PID[%d](%s)";
    goto LABEL_72;
  }

  if (v1 == addrinfo_termination_callback)
  {
    v3 = *(a1 + 168);
    if (GetAddrInfoClientRequestIsMulticast(v3))
    {
      if (mDNS_McastLoggingEnabled)
      {
        v4 = mDNSLogCategory_Default;
        v5 = *(v3 + 8);
        v6 = "v4";
        if ((v5 & 1) == 0)
        {
          v6 = "  ";
        }

        if ((v5 & 2) != 0)
        {
          v7 = "v6";
        }

        else
        {
          v7 = "  ";
        }

        v8 = *(v3 + 16);
        if (v8)
        {
          v9 = (v8 + 376);
        }

        else
        {
          v44 = *(v3 + 24);
          if (v44)
          {
            v9 = (v44 + 376);
          }

          else
          {
            v9 = "";
          }
        }

        v45 = i_mcount++;
        v50 = a1 + 256;
        v51 = v45;
        v48 = v9;
        v49 = *(a1 + 188);
        v46 = v6;
        v47 = v7;
        v38 = "Q: DNSServiceGetAddrInfo  %s%s %##s PID[%d](%s)";
        goto LABEL_77;
      }
    }
  }
}

void addrinfo_termination_callback(uint64_t a1)
{
  v2 = *(a1 + 168);
  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
  v4 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (shouldLogFullRequestInfo)
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v7 = *(v2 + 16);
      if (v7)
      {
        v8 = (v7 + 376);
      }

      else
      {
        v15 = *(v2 + 24);
        if (v15)
        {
          v8 = (v15 + 376);
        }

        else
        {
          v8 = "";
        }
      }

      v16 = *(a1 + 200);
      v17 = v8;
      while (1)
      {
        if (!v17 || (v18 = *v17, v18 > 0x3F))
        {
LABEL_30:
          v19 = 257;
          goto LABEL_41;
        }

        if (!*v17)
        {
          break;
        }

        v17 += v18 + 1;
        if (v17 - v8 >= 256)
        {
          goto LABEL_30;
        }
      }

      v19 = (v17 - v8 + 1);
LABEL_41:
      v43 = v19;
      if (v7)
      {
        v24 = (v7 + 376);
        v25 = *(a1 + 248);
        v26 = *(a1 + 252);
        v27 = a1 + 256;
        v28 = *(a1 + 188);
      }

      else
      {
        v29 = *(v2 + 24);
        if (v29)
        {
          v24 = (v29 + 376);
        }

        else
        {
          v24 = "";
        }

        v25 = *(a1 + 248);
        v26 = *(a1 + 252);
        v28 = *(a1 + 188);
        v27 = a1 + 256;
      }
    }

    else
    {
      v4 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v12 = *(v2 + 16);
      if (v12)
      {
        v13 = (v12 + 376);
      }

      else
      {
        v20 = *(v2 + 24);
        if (v20)
        {
          v13 = (v20 + 376);
        }

        else
        {
          v13 = "";
        }
      }

      v16 = *(a1 + 200);
      v21 = v13;
      while (1)
      {
        if (!v21 || (v22 = *v21, v22 > 0x3F))
        {
LABEL_39:
          v23 = 257;
          goto LABEL_48;
        }

        if (!*v21)
        {
          break;
        }

        v21 += v22 + 1;
        if (v21 - v13 >= 256)
        {
          goto LABEL_39;
        }
      }

      v23 = (v21 - v13 + 1);
LABEL_48:
      v43 = v23;
      if (v12)
      {
        v24 = (v12 + 376);
        v25 = *(a1 + 248);
        v26 = *(a1 + 252);
        v27 = a1 + 256;
        v28 = *(a1 + 188);
      }

      else
      {
        v30 = *(v2 + 24);
        if (v30)
        {
          v24 = (v30 + 376);
        }

        else
        {
          v24 = "";
        }

        v25 = *(a1 + 248);
        v26 = *(a1 + 252);
        v28 = *(a1 + 188);
        v27 = a1 + 256;
      }
    }

    v31 = mDNS_DomainNameFNV1aHash(v24);
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v32 = *__tp - *(a1 + 204);
    *__tp = 67111427;
    *&__tp[4] = v16;
    *&__tp[8] = 2160;
    *&__tp[10] = 1752392040;
    *&__tp[18] = 1040;
    v45 = v43;
    v46 = 2101;
    v47 = v24;
    v48 = 1024;
    v49 = v25;
    v50 = 1024;
    v51 = v26;
    v52 = 1024;
    v53 = v28;
    v54 = 2082;
    v55 = v27;
    v56 = 1024;
    v57 = v31;
    v58 = 1024;
    v59 = v32;
    v33 = "[R%u] DNSServiceGetAddrInfo STOP -- hostname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u";
    v34 = v4;
    v35 = 74;
  }

  else
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v9 = *(a1 + 200);
      v10 = *(v2 + 16);
      if (v10)
      {
        v11 = (v10 + 376);
      }

      else
      {
        v36 = *(v2 + 24);
        if (v36)
        {
          v11 = (v36 + 376);
        }

        else
        {
          v11 = "";
        }
      }
    }

    else
    {
      v4 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v9 = *(a1 + 200);
      v14 = *(v2 + 16);
      if (v14)
      {
        v11 = (v14 + 376);
      }

      else
      {
        v37 = *(v2 + 24);
        if (v37)
        {
          v11 = (v37 + 376);
        }

        else
        {
          v11 = "";
        }
      }
    }

    v38 = mDNS_DomainNameFNV1aHash(v11);
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v39 = *__tp - *(a1 + 204);
    *__tp = 67109632;
    *&__tp[4] = v9;
    *&__tp[8] = 1024;
    *&__tp[10] = v38;
    *&__tp[14] = 1024;
    *&__tp[16] = v39;
    v33 = "[R%u] DNSServiceGetAddrInfo STOP -- name hash: %x, duration: %{mdns:time_duration}u";
    v34 = v4;
    v35 = 20;
  }

  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, __tp, v35);
LABEL_63:
  GetAddrInfoClientRequestStop(v2);
  v40 = *(a1 + 8);
  if (v40)
  {
    v41 = *(a1 + 252);
    if (v41)
    {
      v42 = AWDLInterfaceID == v41 || WiFiAwareInterfaceID == v41;
    }

    else
    {
      v42 = (*(a1 + 250) >> 4) & 1;
    }

    _mdns_powerlog_bonjour_event(6u, v42, (a1 + 256), 0, v40);
    *(a1 + 8) = 0;
  }
}

BOOL _shouldLogFullRequestInfo(int *a1, _DWORD *a2)
{
  v4 = *a1;
  v7.tv_sec = 0;
  v7.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &v7);
  tv_sec = v7.tv_sec;
  if (v4)
  {
    result = LODWORD(v7.tv_sec) - v4 > 299;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v7.tv_sec = 0;
    v7.tv_nsec = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, &v7);
    *a1 = v7.tv_sec;
    result = 1;
    if (!a2)
    {
      return result;
    }
  }

  if (result)
  {
    *a2 = tv_sec;
  }

  return result;
}

void resolve_termination_callback(uint64_t a1)
{
  v2 = *(a1 + 136);
  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
  v4 = v2 + 376;
  v5 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v6 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (shouldLogFullRequestInfo)
  {
    if (v7)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v8 = *(a1 + 200);
      v9 = (v2 + 376);
      while (1)
      {
        if (!v9 || (v10 = *v9, v10 > 0x3F))
        {
LABEL_15:
          v11 = 257;
          goto LABEL_29;
        }

        if (!*v9)
        {
          break;
        }

        v9 += v10 + 1;
        if (&v9[-v4] >= 256)
        {
          goto LABEL_15;
        }
      }

      v11 = (v9 - v4 + 1);
LABEL_29:
      v51 = v11;
      v20 = *(a1 + 248);
      v19 = *(a1 + 252);
      v21 = *(a1 + 188);
      v22 = mDNS_DomainNameFNV1aHash((v2 + 376));
      *__tp = 0;
      *&__tp[8] = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
      v23 = *__tp - *(a1 + 204);
      *__tp = 67111427;
      *&__tp[4] = v8;
      *&__tp[8] = 2160;
      *&__tp[10] = 1752392040;
      *&__tp[18] = 1040;
      *&__tp[20] = v51;
      *&__tp[24] = 2101;
      *&__tp[26] = v2 + 376;
      *&__tp[34] = 1024;
      *&__tp[36] = v20;
      *&__tp[40] = 1024;
      *&__tp[42] = v19;
      *&__tp[46] = 1024;
      LODWORD(v60) = v21;
      WORD2(v60) = 2082;
      *(&v60 + 6) = a1 + 256;
      HIWORD(v60) = 1024;
      LODWORD(v61) = v22;
      WORD2(v61) = 1024;
      *(&v61 + 6) = v23;
    }

    else
    {
      v5 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v12 = *(a1 + 200);
      v13 = (v2 + 376);
      while (1)
      {
        if (!v13 || (v14 = *v13, v14 > 0x3F))
        {
LABEL_25:
          v15 = 257;
          goto LABEL_31;
        }

        if (!*v13)
        {
          break;
        }

        v13 += v14 + 1;
        if (&v13[-v4] >= 256)
        {
          goto LABEL_25;
        }
      }

      v15 = (v13 - v4 + 1);
LABEL_31:
      v52 = v15;
      v24 = *(a1 + 248);
      v25 = *(a1 + 252);
      v26 = *(a1 + 188);
      v27 = mDNS_DomainNameFNV1aHash((v2 + 376));
      *__tp = 0;
      *&__tp[8] = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
      v28 = *__tp - *(a1 + 204);
      *__tp = 67111427;
      *&__tp[4] = v12;
      *&__tp[8] = 2160;
      *&__tp[10] = 1752392040;
      *&__tp[18] = 1040;
      *&__tp[20] = v52;
      *&__tp[24] = 2101;
      *&__tp[26] = v2 + 376;
      *&__tp[34] = 1024;
      *&__tp[36] = v24;
      *&__tp[40] = 1024;
      *&__tp[42] = v25;
      *&__tp[46] = 1024;
      LODWORD(v60) = v26;
      WORD2(v60) = 2082;
      *(&v60 + 6) = a1 + 256;
      HIWORD(v60) = 1024;
      LODWORD(v61) = v27;
      WORD2(v61) = 1024;
      *(&v61 + 6) = v28;
    }

    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceResolve STOP -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u", __tp, 0x4Au);
  }

  else
  {
    if (v7)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v5 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }
    }

    v16 = *(a1 + 200);
    v17 = mDNS_DomainNameFNV1aHash((v2 + 376));
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v18 = *__tp - *(a1 + 204);
    *__tp = 67109632;
    *&__tp[4] = v16;
    *&__tp[8] = 1024;
    *&__tp[10] = v17;
    *&__tp[14] = 1024;
    *&__tp[16] = v18;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceResolve STOP -- name hash: %x, duration: %{mdns:time_duration}u", __tp, 0x14u);
  }

LABEL_33:
  mDNS_StopQuery(mDNSStorage, v2);
  mDNS_StopQuery(mDNSStorage, v2 + 696);
  if (mDNS_McastLoggingEnabled)
  {
    LogMcastQuestion(v2 + 696, a1, 0);
  }

  if (*(v2 + 1420))
  {
    v29 = *(v2 + 832);
    v30 = v2 + 1072;
    v31 = *(a1 + 248);
    v32 = *(a1 + 188);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    *&__tp[32] = 0u;
    v60 = 0u;
    if (*(v2 + 1072))
    {
      v33 = (v2 + *(v2 + 1072) + 1073);
    }

    else
    {
      v33 = (v2 + 1072);
    }

    memset(__tp, 0, 32);
    DomainnameToLower(v33, __tp);
    v34 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v38 = (v2 + 1072);
      while (1)
      {
        if (!v38 || (v39 = *v38, v39 > 0x3F))
        {
LABEL_54:
          v37 = 257;
          goto LABEL_57;
        }

        if (!*v38)
        {
          break;
        }

        v38 += v39 + 1;
        if (&v38[-v30] >= 256)
        {
          goto LABEL_54;
        }
      }

      v37 = (v38 - v30 + 1);
    }

    else
    {
      v34 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v35 = (v2 + 1072);
      while (1)
      {
        if (!v35 || (v36 = *v35, v36 > 0x3F))
        {
LABEL_47:
          v37 = 257;
          goto LABEL_57;
        }

        if (!*v35)
        {
          break;
        }

        v35 += v36 + 1;
        if (&v35[-v30] >= 256)
        {
          goto LABEL_47;
        }
      }

      v37 = (v35 - v30 + 1);
    }

LABEL_57:
    *buf = 141558531;
    v54 = 1752392040;
    v55 = 1040;
    v56 = v37;
    v57 = 2101;
    v58 = v2 + 1072;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "external_stop_resolving_service - fqdn: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
LABEL_58:
    v40 = putDomainNameAsLabels(&compression_base_msg, byte_10015DD07, &compression_base_msg + &loc_1000022F8, __tp);
    if (v40)
    {
      *v40 = 3072;
      v40[2] = 1;
      v41 = v40 + 3;
    }

    else
    {
      v41 = 0;
    }

    *buf = 0;
    v42 = putDomainNameAsLabels(&compression_base_msg, v41, &compression_base_msg + &loc_1000022F8, (v2 + 1072));
    PrintHelper("external_stop_resolving_service", byte_10015DD07, (v41 - byte_10015DD07), v41, (v42 - v41));
    v43 = xD2DMapToTransportType(v29, v31, buf);
    if (v43 == 4)
    {
      v44 = 0;
      v45 = *buf;
      do
      {
        if (&_D2DStopResolvingPairOnTransport)
        {
          if (v45 != v44)
          {
            D2DStopResolvingPairOnTransport();
            if (v44 >= 2)
            {
              _mdns_powerlog_awdl_event(@"stopAWDLResolve", __tp, 12, v32);
            }
          }
        }

        ++v44;
      }

      while (v44 != 4);
    }

    else if (&_D2DStopResolvingPairOnTransport)
    {
      v46 = v43;
      D2DStopResolvingPairOnTransport();
      if ((v46 & 6) == 2)
      {
        _mdns_powerlog_awdl_event(@"stopAWDLResolve", __tp, 12, v32);
      }
    }
  }

  v47 = *(a1 + 8);
  if (v47)
  {
    v48 = *(a1 + 252);
    if (v48)
    {
      v49 = AWDLInterfaceID == v48 || WiFiAwareInterfaceID == v48;
    }

    else
    {
      v49 = (*(a1 + 250) >> 4) & 1;
    }

    bzero(__tp, 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v2 + 1072), __tp);
    _mdns_powerlog_bonjour_event(0xFu, v49, (a1 + 256), service_type_from_domain_name, v47);
    *(a1 + 8) = 0;
  }
}

void LogMcastQuestion(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 340))
  {
    if (a3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    if (mcount)
    {
      v5 = 0;
    }

    else
    {
      v5 = a3 == 1;
    }

    mcount += v4;
    if (mDNS_McastLoggingEnabled)
    {
      v8 = mDNSLogCategory_Default;
      if (a3)
      {
        v9 = "+Question";
      }

      else
      {
        v9 = "-Question";
      }

      v10 = a1 + 376;
      v11 = DNSTypeName(*(a1 + 342));
      v12 = *(a1 + 136);
      v13 = v12 + 5;
      if (v12 + 5) < 6 && ((0x2Du >> v13))
      {
        v14 = (&off_100153FB8)[v13];
      }

      else
      {
        v15 = &xmmword_100170388;
        while (1)
        {
          v15 = *v15;
          if (!v15)
          {
            break;
          }

          v16 = v15;
          if (*(v15 + 444) == v12)
          {
            goto LABEL_20;
          }
        }

        v16 = 0;
LABEL_20:
        v14 = v16 + 3606;
        if (!v15)
        {
          v14 = 0;
        }
      }

      LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "%s: %##s  (%s) (%s)  Client(%d)[%s]", v9, v10, v11, v14, *(a2 + 188), a2 + 256);
    }

    LogMcastStateInfo(v5, 0, 0);
  }
}

void browse_termination_callback(uint64_t a1)
{
  v2 = *(a1 + 152);
  v3 = &unk_100162000;
  v4 = &unk_100164000;
  v5 = &unk_100178000;
  if (!*(v2 + 8))
  {
    goto LABEL_28;
  }

  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
  v7 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v8 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  if (!shouldLogFullRequestInfo)
  {
    if (v9)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    v18 = *(a1 + 200);
    __tp[0].tv_sec = 0;
    __tp[0].tv_nsec = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v19 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
    LODWORD(__tp[0].tv_sec) = 67109376;
    HIDWORD(__tp[0].tv_sec) = v18;
    LOWORD(__tp[0].tv_nsec) = 1024;
    *(&__tp[0].tv_nsec + 2) = v19;
    v15 = "[R%u] DNSServiceBrowse Cancel domain enumeration for WAB and mDNS -- , duration: %{mdns:time_duration}u";
    v16 = v7;
    v17 = 14;
    goto LABEL_19;
  }

  if (v9)
  {
    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = mDNSLogCategory_mDNS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:
      v10 = *(a1 + 200);
      v11 = *(a1 + 248);
      v12 = *(a1 + 252);
      v13 = *(a1 + 188);
      __tp[0].tv_sec = 0;
      __tp[0].tv_nsec = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
      v14 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
      LODWORD(__tp[0].tv_sec) = 67110402;
      HIDWORD(__tp[0].tv_sec) = v10;
      LOWORD(__tp[0].tv_nsec) = 1024;
      *(&__tp[0].tv_nsec + 2) = v11;
      HIWORD(__tp[0].tv_nsec) = 1024;
      LODWORD(__tp[1].tv_sec) = v12;
      v3 = &unk_100162000;
      WORD2(__tp[1].tv_sec) = 1024;
      *(&__tp[1].tv_sec + 6) = v13;
      v4 = &unk_100164000;
      WORD1(__tp[1].tv_nsec) = 2082;
      *(&__tp[1].tv_nsec + 4) = a1 + 256;
      v5 = &unk_100178000;
      WORD2(__tp[2].tv_sec) = 1024;
      *(&__tp[2].tv_sec + 6) = v14;
      v15 = "[R%u] DNSServiceBrowse Cancel domain enumeration for WAB and mDNS -- , flags: 0x%X, interface index: %d, client pid: %d (%{public}s), , duration: %{mdns:time_duration}u";
      v16 = v7;
      v17 = 42;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, __tp, v17);
    }
  }

LABEL_20:
  uDNS_StopWABQueries(2);
  mDNS_Lock_(mDNSStorage, "mDNS_StopDomainEnumeration", 16362);
  v20 = qword_100170968;
  if (qword_100170968)
  {
    while (!SameDomainNameBytes(v20, "\x05local"))
    {
      v20 = *(v20 + 296);
      if (!v20)
      {
        goto LABEL_27;
      }
    }

    v21 = *(v20 + 272);
    if (v21)
    {
      v22 = *(v21 + 708);
      if (v22)
      {
        *(v21 + 708) = v22 - 1;
        mDNS_SetUpDomainEnumeration(mDNSStorage, v20, 2);
      }
    }
  }

LABEL_27:
  mDNS_Unlock_(mDNSStorage, "mDNS_StopDomainEnumeration", 16391);
LABEL_28:
  v23 = *(v2 + 272);
  if (v23)
  {
    v24 = &unk_100164000;
    v57 = v2;
    do
    {
      if (callExternalHelpers(*(v23 + 50), v23 + 8, *(v23 + 147)))
      {
        v70 = 0u;
        v71 = 0u;
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
        v59 = 0u;
        memset(__tp, 0, sizeof(__tp));
        ConstructServiceName(__tp, 0, (v2 + 10), v23 + 8);
        external_stop_browsing_for_service(*(v23 + 50), __tp, 12, *(v23 + 147), *(a1 + 188));
      }

      v25 = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
      v26 = v23 + 640;
      v27 = *(v4 + 320);
      if (v3[256])
      {
        v28 = v27 == v5[435];
      }

      else
      {
        v28 = 1;
      }

      v29 = v28;
      if (v25)
      {
        if (v29)
        {
          if (os_log_type_enabled(*(v4 + 320), OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a1 + 200);
            v31 = v23 + 640;
            while (1)
            {
              if (!v31 || (v32 = *v31, v32 > 0x3F))
              {
LABEL_46:
                v33 = 257;
                goto LABEL_60;
              }

              if (!*v31)
              {
                break;
              }

              v31 += v32 + 1;
              if (v31 - v26 >= 256)
              {
                goto LABEL_46;
              }
            }

            v33 = (v31 - v26 + 1);
LABEL_60:
            v42 = *(a1 + 248);
            v43 = *(a1 + 252);
            v44 = *(a1 + 188);
            v45 = mDNS_DomainNameFNV1aHash(v23 + 640);
            __tp[0].tv_sec = 0;
            __tp[0].tv_nsec = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
            v46 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
            LODWORD(__tp[0].tv_sec) = 67111427;
            HIDWORD(__tp[0].tv_sec) = v30;
            LOWORD(__tp[0].tv_nsec) = 2160;
            *(&__tp[0].tv_nsec + 2) = 1752392040;
            WORD1(__tp[1].tv_sec) = 1040;
            HIDWORD(__tp[1].tv_sec) = v33;
            LOWORD(__tp[1].tv_nsec) = 2101;
            *(&__tp[1].tv_nsec + 2) = (v23 + 640);
            WORD1(__tp[2].tv_sec) = 1024;
            HIDWORD(__tp[2].tv_sec) = v42;
            LOWORD(__tp[2].tv_nsec) = 1024;
            *(&__tp[2].tv_nsec + 2) = v43;
            HIWORD(__tp[2].tv_nsec) = 1024;
            LODWORD(v59) = v44;
            WORD2(v59) = 2082;
            *(&v59 + 6) = a1 + 256;
            HIWORD(v59) = 1024;
            LODWORD(v60) = v45;
            WORD2(v60) = 1024;
            *(&v60 + 6) = v46;
            v47 = v27;
LABEL_63:
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse STOP -- service name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u", __tp, 0x4Au);
            v2 = v57;
            v3 = &unk_100162000;
            v4 = &unk_100164000;
            v5 = &unk_100178000;
            v24 = &unk_100164000;
          }
        }

        else
        {
          v34 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(a1 + 200);
            v36 = v23 + 640;
            while (1)
            {
              if (!v36 || (v37 = *v36, v37 > 0x3F))
              {
LABEL_56:
                v38 = 257;
                goto LABEL_62;
              }

              if (!*v36)
              {
                break;
              }

              v36 += v37 + 1;
              if (v36 - v26 >= 256)
              {
                goto LABEL_56;
              }
            }

            v38 = (v36 - v26 + 1);
LABEL_62:
            v48 = *(a1 + 248);
            v49 = *(a1 + 252);
            v50 = *(a1 + 188);
            v51 = mDNS_DomainNameFNV1aHash(v23 + 640);
            __tp[0].tv_sec = 0;
            __tp[0].tv_nsec = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
            v52 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
            LODWORD(__tp[0].tv_sec) = 67111427;
            HIDWORD(__tp[0].tv_sec) = v35;
            LOWORD(__tp[0].tv_nsec) = 2160;
            *(&__tp[0].tv_nsec + 2) = 1752392040;
            WORD1(__tp[1].tv_sec) = 1040;
            HIDWORD(__tp[1].tv_sec) = v38;
            LOWORD(__tp[1].tv_nsec) = 2101;
            *(&__tp[1].tv_nsec + 2) = (v23 + 640);
            WORD1(__tp[2].tv_sec) = 1024;
            HIDWORD(__tp[2].tv_sec) = v48;
            LOWORD(__tp[2].tv_nsec) = 1024;
            *(&__tp[2].tv_nsec + 2) = v49;
            HIWORD(__tp[2].tv_nsec) = 1024;
            LODWORD(v59) = v50;
            WORD2(v59) = 2082;
            *(&v59 + 6) = a1 + 256;
            HIWORD(v59) = 1024;
            LODWORD(v60) = v51;
            WORD2(v60) = 1024;
            *(&v60 + 6) = v52;
            v47 = v34;
            goto LABEL_63;
          }
        }
      }

      else if (v29)
      {
        if (os_log_type_enabled(*(v4 + 320), OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v27 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_58:
          v39 = *(a1 + 200);
          v40 = mDNS_DomainNameFNV1aHash(v23 + 640);
          __tp[0].tv_sec = 0;
          __tp[0].tv_nsec = 0;
          clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
          v41 = LODWORD(__tp[0].tv_sec) - *(a1 + 204);
          LODWORD(__tp[0].tv_sec) = 67109632;
          HIDWORD(__tp[0].tv_sec) = v39;
          LOWORD(__tp[0].tv_nsec) = 1024;
          *(&__tp[0].tv_nsec + 2) = v40;
          v24 = &unk_100164000;
          HIWORD(__tp[0].tv_nsec) = 1024;
          LODWORD(__tp[1].tv_sec) = v41;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse STOP -- name hash: %x, duration: %{mdns:time_duration}u", __tp, 0x14u);
        }
      }

      *(v2 + 272) = *v23;
      mDNS_StopQuery(mDNSStorage, (v23 + 264));
      if (v24[635])
      {
        LogMcastQuestion((v23 + 264), a1, 0);
      }

      free(v23);
      v23 = *(v2 + 272);
    }

    while (v23);
  }

  v53 = *(a1 + 8);
  if (v53)
  {
    v54 = *(a1 + 252);
    if (v54)
    {
      v55 = AWDLInterfaceID == v54 || WiFiAwareInterfaceID == v54;
    }

    else
    {
      v55 = (*(a1 + 250) >> 4) & 1;
    }

    bzero(__tp, 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v2 + 10), __tp);
    _mdns_powerlog_bonjour_event(3u, v55, (a1 + 256), service_type_from_domain_name, v53);
    *(a1 + 8) = 0;
  }
}

void regservice_termination_callback(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 128);
    v3 = *(v2 + 1624);
    if (v3)
    {
      v4 = (a1 + 256);
      v5 = &unk_100162000;
      v6 = &unk_100164000;
      v7 = &unk_100178000;
      v77 = (a1 + 256);
      do
      {
        *(v2 + 1624) = *v3;
        shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
        v9 = v3[342];
        v10 = v9 + 1;
        if (*v9)
        {
          v11 = &v9[*v9 + 1] == 0;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        v13 = v6[320];
        if (v5[256])
        {
          v14 = v13 == v7[435];
        }

        else
        {
          v14 = 1;
        }

        v15 = v14;
        if (shouldLogFullRequestInfo)
        {
          if (v12)
          {
            if (v15)
            {
              if (os_log_type_enabled(v6[320], OS_LOG_TYPE_DEFAULT))
              {
                v16 = v9;
                v74 = *(a1 + 200);
                while (1)
                {
                  if (!v16 || (v17 = *v16, v17 > 0x3F))
                  {
LABEL_25:
                    v18 = 257;
                    goto LABEL_73;
                  }

                  if (!*v16)
                  {
                    break;
                  }

                  v16 += v17 + 1;
                  if (v16 - v9 >= 256)
                  {
                    goto LABEL_25;
                  }
                }

                v18 = (v16 - v9 + 1);
LABEL_73:
                v72 = v18;
                v48 = mDNS_DomainNameFNV1aHash(v9);
                v49 = bswap32(*(v3[343] + 8)) >> 16;
                v51 = *(a1 + 248);
                v50 = *(a1 + 252);
                v52 = *(a1 + 188);
                *__tp = 0;
                *&__tp[8] = 0;
                clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
                v53 = *__tp - *(a1 + 204);
                *__tp = 67111683;
                *&__tp[4] = v74;
                *&__tp[8] = 2160;
                *&__tp[10] = 1752392040;
                *&__tp[18] = 1040;
                v79 = v72;
                v80 = 2101;
                v81 = v9;
                v82 = 1024;
                v83 = v48;
                v84 = 1024;
                v85 = v49;
                v86 = 1024;
                v87 = v51;
                v88 = 1024;
                v89 = v50;
                v90 = 1024;
                v91 = v52;
                v92 = 2082;
                v4 = v77;
                v93 = v77;
                v94 = 1024;
                v95 = v53;
                v46 = v13;
                v47 = "[R%u] DNSServiceRegister STOP -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), , duration: %{mdns:time_duration}u";
                v54 = 80;
                goto LABEL_80;
              }
            }

            else
            {
              v13 = mDNSLogCategory_mDNS_redacted;
              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                v28 = v9;
                v74 = *(a1 + 200);
                while (1)
                {
                  if (!v28 || (v29 = *v28, v29 > 0x3F))
                  {
LABEL_49:
                    v18 = 257;
                    goto LABEL_73;
                  }

                  if (!*v28)
                  {
                    break;
                  }

                  v28 += v29 + 1;
                  if (v28 - v9 >= 256)
                  {
                    goto LABEL_49;
                  }
                }

                v18 = (v28 - v9 + 1);
                goto LABEL_73;
              }
            }
          }

          else if (v15)
          {
            if (os_log_type_enabled(v6[320], OS_LOG_TYPE_DEFAULT))
            {
              v23 = v9;
              v75 = *(a1 + 200);
              while (1)
              {
                if (!v23 || (v24 = *v23, v24 > 0x3F))
                {
LABEL_37:
                  v25 = 257;
                  goto LABEL_68;
                }

                if (!*v23)
                {
                  break;
                }

                v23 += v24 + 1;
                if (v23 - v9 >= 256)
                {
                  goto LABEL_37;
                }
              }

              v25 = (v23 - v9 + 1);
LABEL_68:
              v71 = v25;
              v40 = mDNS_DomainNameFNV1aHash(v9);
              v41 = bswap32(*(v3[343] + 8)) >> 16;
              v42 = *(a1 + 248);
              v67 = *(a1 + 252);
              v69 = *(a1 + 188);
              if (*v9)
              {
                v43 = &v10[*v9];
              }

              else
              {
                v43 = v9;
              }

              v44 = mDNS_DomainNameFNV1aHash(v43);
              *__tp = 0;
              *&__tp[8] = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
              v45 = *__tp - *(a1 + 204);
              *__tp = 67111939;
              *&__tp[4] = v75;
              *&__tp[8] = 2160;
              *&__tp[10] = 1752392040;
              *&__tp[18] = 1040;
              v79 = v71;
              v80 = 2101;
              v81 = v9;
              v82 = 1024;
              v83 = v40;
              v84 = 1024;
              v85 = v41;
              v86 = 1024;
              v87 = v42;
              v88 = 1024;
              v89 = v67;
              v90 = 1024;
              v91 = v69;
              v92 = 2082;
              v4 = v77;
              v93 = v77;
              v94 = 1024;
              v95 = v44;
              v96 = 1024;
              v97 = v45;
              v46 = v13;
              v47 = "[R%u] DNSServiceRegister STOP -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u";
              goto LABEL_79;
            }
          }

          else
          {
            v30 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v31 = v9;
              v76 = *(a1 + 200);
              while (1)
              {
                if (!v31 || (v32 = *v31, v32 > 0x3F))
                {
LABEL_56:
                  v33 = 257;
                  goto LABEL_75;
                }

                if (!*v31)
                {
                  break;
                }

                v31 += v32 + 1;
                if (v31 - v9 >= 256)
                {
                  goto LABEL_56;
                }
              }

              v33 = (v31 - v9 + 1);
LABEL_75:
              v73 = v33;
              v55 = mDNS_DomainNameFNV1aHash(v9);
              v56 = bswap32(*(v3[343] + 8)) >> 16;
              v57 = *(a1 + 248);
              v68 = *(a1 + 252);
              v70 = *(a1 + 188);
              if (*v9)
              {
                v58 = &v10[*v9];
              }

              else
              {
                v58 = v9;
              }

              v59 = mDNS_DomainNameFNV1aHash(v58);
              *__tp = 0;
              *&__tp[8] = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
              v60 = *__tp - *(a1 + 204);
              *__tp = 67111939;
              *&__tp[4] = v76;
              *&__tp[8] = 2160;
              *&__tp[10] = 1752392040;
              *&__tp[18] = 1040;
              v79 = v73;
              v80 = 2101;
              v81 = v9;
              v82 = 1024;
              v83 = v55;
              v84 = 1024;
              v85 = v56;
              v86 = 1024;
              v87 = v57;
              v88 = 1024;
              v89 = v68;
              v90 = 1024;
              v91 = v70;
              v92 = 2082;
              v4 = v77;
              v93 = v77;
              v94 = 1024;
              v95 = v59;
              v96 = 1024;
              v97 = v60;
              v46 = v30;
              v47 = "[R%u] DNSServiceRegister STOP -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u";
LABEL_79:
              v54 = 86;
LABEL_80:
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v47, __tp, v54);
              v5 = &unk_100162000;
              v6 = &unk_100164000;
              v7 = &unk_100178000;
            }
          }
        }

        else if (v12)
        {
          if (v15)
          {
            if (os_log_type_enabled(v6[320], OS_LOG_TYPE_DEFAULT))
            {
              v19 = *(a1 + 200);
              *__tp = 0;
              *&__tp[8] = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
              v20 = *__tp - *(a1 + 204);
              *__tp = 67109376;
              *&__tp[4] = v19;
              v7 = &unk_100178000;
              *&__tp[8] = 1024;
              *&__tp[10] = v20;
              v21 = v13;
              v22 = "[R%u] DNSServiceRegister STOP -- , duration: %{mdns:time_duration}u";
LABEL_59:
              v37 = 14;
              goto LABEL_65;
            }
          }

          else
          {
            v34 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v35 = *(a1 + 200);
              *__tp = 0;
              *&__tp[8] = 0;
              clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
              v36 = *__tp - *(a1 + 204);
              *__tp = 67109376;
              *&__tp[4] = v35;
              v7 = &unk_100178000;
              *&__tp[8] = 1024;
              *&__tp[10] = v36;
              v21 = v34;
              v22 = "[R%u] DNSServiceRegister STOP -- , duration: %{mdns:time_duration}u";
              goto LABEL_59;
            }
          }
        }

        else if (v15)
        {
          if (os_log_type_enabled(v6[320], OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 200);
            if (*v9)
            {
              v27 = &v10[*v9];
            }

            else
            {
              v27 = v9;
            }

            goto LABEL_64;
          }
        }

        else
        {
          v13 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 200);
            if (*v9)
            {
              v27 = &v10[*v9];
            }

            else
            {
              v27 = v9;
            }

LABEL_64:
            v38 = mDNS_DomainNameFNV1aHash(v27);
            *__tp = 0;
            *&__tp[8] = 0;
            clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
            v39 = *__tp - *(a1 + 204);
            *__tp = 67109632;
            *&__tp[4] = v26;
            v7 = &unk_100178000;
            *&__tp[8] = 1024;
            *&__tp[10] = v38;
            v6 = &unk_100164000;
            *&__tp[14] = 1024;
            *&__tp[16] = v39;
            v21 = v13;
            v22 = "[R%u] DNSServiceRegister STOP -- name hash: %x, duration: %{mdns:time_duration}u";
            v37 = 20;
LABEL_65:
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, __tp, v37);
          }
        }

        external_stop_advertising_helper(v3);
        v3[1] = 0;
        if (mDNS_McastLoggingEnabled)
        {
          LogMcastService((v3 + 337), a1, 0);
        }

        if (mDNS_DeregisterService_drt(mDNSStorage, (v3 + 36), 0))
        {
          unlink_and_free_service_instance(v3);
        }

        v61 = *(a1 + 8);
        if (v61)
        {
          v62 = *(a1 + 252);
          if (v62)
          {
            v63 = AWDLInterfaceID == v62 || WiFiAwareInterfaceID == v62;
          }

          else
          {
            v63 = (*(a1 + 250) >> 4) & 1;
          }

          bzero(__tp, 0x3F1uLL);
          service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v2 + 1099), __tp);
          _mdns_powerlog_bonjour_event(0x12u, v63, v4, service_type_from_domain_name, v61);
          *(a1 + 8) = 0;
        }

        v3 = *(v2 + 1624);
      }

      while (v3);
    }

    v65 = *(v2 + 16);
    if (v65)
    {
      free(v65);
      *(v2 + 16) = 0;
    }

    if (*(v2 + 1612))
    {
      *(v2 + 1612) = 0;
      UpdateDeviceInfoRecord(mDNSStorage);
    }
  }

  else
  {
    v66 = mDNSLogCategory_Default;

    LogMsgWithLevel(v66, OS_LOG_TYPE_DEFAULT, "regservice_termination_callback context is NULL");
  }
}

void external_stop_advertising_helper(uint64_t a1)
{
  if (*(a1 + 27))
  {
    v2 = *(a1 + 16);
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "external_stop_advertising_helper: calling external_stop_advertising_service");
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = *(v3 + 188);
      if (*(*(v3 + 128) + 1616))
      {
        v5 = 0;
        v6 = v2 + 8;
        do
        {
          internal_stop_advertising_service(v6, *(v3 + 248), v4);
          ++v5;
          v3 = *(a1 + 8);
          v6 += 1176;
        }

        while (v5 < *(*(v3 + 128) + 1616));
      }

      internal_stop_advertising_service(a1 + 1528, *(v3 + 248), v4);
      internal_stop_advertising_service(a1 + 2704, *(*(a1 + 8) + 248), v4);
      internal_stop_advertising_service(a1 + 3880, *(*(a1 + 8) + 248), v4);
      for (i = *(a1 + 312); i; i = *i)
      {
        internal_stop_advertising_service((i + 3), *(*(a1 + 8) + 248), v4);
      }
    }

    *(a1 + 27) = 0;
  }
}

void LogMcastService(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 32) || *(a1 + 122) || IsLocalDomain(*(a1 + 40)))
  {
    if (a3 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (mcount)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3 == 1;
    }

    mcount += v6;
    if (mDNS_McastLoggingEnabled)
    {
      v8 = mDNSLogCategory_Default;
      if (a3)
      {
        v9 = "+Service";
      }

      else
      {
        v9 = "-Service";
      }

      v10 = *(a1 + 40);
      v11 = DNSTypeName(*(a1 + 12));
      v12 = *(a1 + 32);
      v13 = v12 + 5;
      if (v12 + 5) < 6 && ((0x2Du >> v13))
      {
        v14 = (&off_100153FE8)[v13];
      }

      else
      {
        v15 = &xmmword_100170388;
        while (1)
        {
          v15 = *v15;
          if (!v15)
          {
            break;
          }

          v16 = v15;
          if (*(v15 + 444) == v12)
          {
            goto LABEL_22;
          }
        }

        v16 = 0;
LABEL_22:
        v14 = v16 + 3606;
        if (!v15)
        {
          v14 = 0;
        }
      }

      LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "%s: %##s  (%s)  (%s)  Client(%d)[%s]", v9, v10, v11, v14, *(a2 + 188), a2 + 256);
    }

    LogMcastStateInfo(v7, 0, 0);
  }
}

void unlink_and_free_service_instance(void *a1)
{
  v2 = a1[39];
  external_stop_advertising_helper(a1);
  v3 = a1[1];
  if (v3)
  {
    v4 = (*(v3 + 128) + 1624);
    while (1)
    {
      v5 = v4;
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == a1)
      {
        *v5 = *v4;
        break;
      }
    }
  }

  if (v2)
  {
    do
    {
      v2[16] = v2;
      v6 = *v2;
      FreeExtraRR(mDNSStorage, (v2 + 2), -65792);
      v2 = v6;
    }

    while (v6);
  }

  v7 = a1[490];
  if (v7 != a1 + 4780 && v7 != 0)
  {
    free(v7);
    a1[490] = 0;
  }

  v9 = a1[2];
  if (v9)
  {
    free(v9);
  }

  free(a1);
}

void FreeExtraRR(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -65792)
  {
    v4 = *(a2 + 112);
    if (mDNS_LoggingEnabled == 1)
    {
      v5 = mDNSLogCategory_Default;
      v6 = (a1 + 47032);
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v5, OS_LOG_TYPE_DEFAULT, "     FreeExtraRR %s", v6);
    }

    v7 = *(a2 + 48);
    if (v7 != (a2 + 908) && v7 != 0)
    {
      free(v7);
      *(a2 + 48) = 0;
    }

    if (v4)
    {

      free(v4);
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error: FreeExtraRR invoked with unexpected error %d", a3);
  }
}

void request_state_forget(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = v1[15];
    if (v3)
    {
      free(v3);
      v1[15] = 0;
    }

    v4 = v1[16];
    if (v4)
    {
      free(v4);
      v1[16] = 0;
    }

    v5 = v1[17];
    if (v5)
    {
      v6 = v5[174];
      if (v6)
      {
        free(v6);
        v5[174] = 0;
      }

      v7 = v5[175];
      if (v7)
      {
        free(v7);
      }

      free(v5);
      v1[17] = 0;
    }

    v8 = v1[18];
    if (v8)
    {
      free(v8);
      v1[18] = 0;
    }

    v9 = v1[19];
    if (v9)
    {
      free(v9);
      v1[19] = 0;
    }

    v10 = v1[20];
    if (v10)
    {
      free(v10);
      v1[20] = 0;
    }

    v11 = v1[21];
    if (v11)
    {
      free(v11);
      v1[21] = 0;
    }

    v12 = v1[4];
    if (v12)
    {
      os_release(v12);
      v1[4] = 0;
    }

    v13 = v1[6];
    if (v13)
    {
      mdns_cfarray_enumerate(v13, &__block_literal_global_391);
      v14 = v1[6];
      if (v14)
      {
        CFRelease(v14);
        v1[6] = 0;
      }
    }

    v15 = v1[7];
    if (v15)
    {
      os_release(v15);
    }

    free(v1);
    *a1 = 0;
  }
}

uint64_t CountExistingRegistrations(_BYTE *a1, unsigned __int16 a2)
{
  v2 = xmmword_100170360;
  if (!xmmword_100170360)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2;
  do
  {
    if (*(v2 + 6) == 33 && *(v2[6] + 8) == v5)
    {
      v4 = v4 + SameDomainNameBytes(v2[5], a1);
    }

    v2 = *v2;
  }

  while (v2);
  return v4;
}

uint64_t DeregisterLocalOnlyDomainEnumPTR_Internal(unsigned int *a1, _BYTE *a2, int a3, int a4)
{
  memset(v27, 0, sizeof(v27));
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v7 = mDNS_DomainTypeNames[a3];
  v12 = 0;
  AppendDNSNameString(&v12, v7);
  result = AppendDNSNameString(&v12, "local");
  v9 = LocalDomainEnumRecords;
  if (LocalDomainEnumRecords)
  {
    v10 = &LocalDomainEnumRecords;
    while (1)
    {
      result = SameDomainNameBytes((*(v9 + 56) + 4), a2);
      if (result)
      {
        result = SameDomainNameBytes(*(*v10 + 48), &v12);
        if (result)
        {
          break;
        }
      }

      v10 = *v10;
      v9 = *v10;
      if (!*v10)
      {
        return result;
      }
    }

    v11 = (*v10 + 8);
    *v10 = **v10;
    if (a4)
    {
      return mDNS_Deregister_internal(a1, v11, 0);
    }

    else
    {
      return mDNS_Deregister(a1, v11);
    }
  }

  return result;
}

void SendServiceRemovalNotification(uint64_t a1)
{
  v3 = 0;
  v2 = *(a1 + 8);
  if (GenerateNTDResponse(*(a1 + 2448), *(a1 + 2440), *(v2 + 8), &v3, 0x41, 0, 0))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: SendServiceRemovalNotification: %##s is not valid DNS-SD SRV name", *(*(v2 + 8) + 184), *(a1 + 2448));
  }

  else
  {
    append_reply(*(v2 + 8), v3);
    *(v2 + 25) = 0;
  }
}

uint64_t get_service_attr_tsr_params(uint64_t a1, int *a2, _DWORD *a3)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  if (a3 && a2 && (*(a1 + 224) & 2) != 0)
  {
    v13 = 0;
    v8 = *(a1 + 88);
    *a2 = get_tlv_uint32(v3, v8, 5, &v13);
    if (v13)
    {
      return 0;
    }

    tlv_uint32 = get_tlv_uint32(v3, v8, 11, &v13);
    *a3 = tlv_uint32;
    if (v13)
    {
      return 0;
    }

    v10 = tlv_uint32;
    v11 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
LABEL_14:
        v12 = *a2;
        *buf = 67109376;
        v15 = v12;
        v16 = 1024;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "get_service_attr_tsr_params timestamp %u hostkeyHash %u", buf, 0xEu);
      }
    }

    else
    {
      v11 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }
    }

    return 1;
  }

  return result;
}

uint64_t conflictWithAuthRecordsOrFlush(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_10;
  }

  v4 = CheckTSRForResourceRecord(a2, a3 + 8);
  if (v4 == 2)
  {
    return 1;
  }

  if (v4 != -1)
  {
LABEL_10:
    v8 = 0;
    if (!a1 || v4)
    {
      return v8;
    }

    if (*(a1 + 96))
    {
      v9 = *(a1 + 96);
    }

    else
    {
      v9 = a1;
    }

    v10 = xmmword_100170360;
    if (!xmmword_100170360)
    {
      return 0;
    }

    while (1)
    {
      v11 = *(v10 + 96);
      if (!v11)
      {
        v11 = v10;
      }

      v12 = *(v10 + 12) == 41 || v9 == v11;
      if (!v12 && SameResourceRecordNameClassInterface(v10, a1) && (!resource_records_have_same_dnssec_rr_category(*(v10 + 64), *(a1 + 64)) || *(v10 + 12) != *(a1 + 12) || *(v10 + 14) != *(a1 + 14) || *(v10 + 20) != *(a1 + 20) || *(v10 + 28) != *(a1 + 28) || !SameRDataBody(v10 + 8, (*(a1 + 48) + 4), SameDomainName)) && ((*(a1 + 8) & 0x32) != 0 || (*(v10 + 8) & 0x32) != 0))
      {
        break;
      }

      v10 = *v10;
      if (!v10)
      {
        return 0;
      }
    }

    v13 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_68:
        GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), word_1001789D0);
        v21 = *(v10 + 32);
        *buf = 141558787;
        v24 = 1752392040;
        v25 = 2085;
        v26 = word_1001789D0;
        v27 = 2048;
        v28 = v10;
        v29 = 2048;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "conflictWithAuthRecordsOrFlush - Conflict with %{sensitive, mask.hash}s (%p), InterfaceID %p", buf, 0x2Au);
      }
    }

    else
    {
      v13 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_68;
      }
    }

    return 2;
  }

  mDNS_Lock_(mDNSStorage, "conflictWithAuthRecordsOrFlush", 2049);
  v6 = qword_100170378;
  if (!qword_100170378)
  {
    goto LABEL_40;
  }

  v7 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }
  }

  else
  {
    v7 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }
  }

  GetRRDisplayString_rdb((v6 + 8), (*(v6 + 48) + 4), word_1001789D0);
  *buf = 136315138;
  v24 = word_1001789D0;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "conflictWithAuthRecordsOrFlush ERROR m->CurrentRecord already set %s", buf, 0xCu);
LABEL_40:
  if (!a1 || (v14 = *(a1 + 96)) == 0)
  {
    v14 = a1;
  }

  v15 = xmmword_100170360;
  qword_100170378 = xmmword_100170360;
  v8 = 0;
  if (xmmword_100170360)
  {
    do
    {
      v16 = *(v15 + 96);
      if (!v16)
      {
        v16 = v15;
      }

      v17 = *(v15 + 12) == 41 || v14 == v16;
      if (v17 || (!a1 || !SameResourceRecordNameClassInterface(v15, a1) || (*(a1 + 8) & 0x32) == 0 && (*(v15 + 8) & 0x32) == 0) && (*(v15 + 24) != *(a3 + 24) || !SameDomainNameBytes(*(v15 + 40), *(a3 + 40))))
      {
        goto LABEL_63;
      }

      v18 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
LABEL_61:
          GetRRDisplayString_rdb((v15 + 8), (*(v15 + 48) + 4), word_1001789D0);
          v19 = *(v15 + 32);
          *buf = 141558531;
          v24 = 1752392040;
          v25 = 2085;
          v26 = word_1001789D0;
          v27 = 2048;
          v28 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "conflictWithAuthRecordsOrFlush - deregistering %{sensitive, mask.hash}s InterfaceID %p", buf, 0x20u);
        }
      }

      else
      {
        v18 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }
      }

      D2D_stop_advertising_record(v15);
      mDNS_Deregister_internal(mDNSStorage, v15, 4);
      v8 = 3;
LABEL_63:
      v20 = qword_100170378;
      if (qword_100170378 == v15)
      {
        v20 = *v15;
        qword_100170378 = *v15;
      }

      v15 = v20;
    }

    while (v20);
  }

  mDNS_Unlock_(mDNSStorage, "conflictWithAuthRecordsOrFlush", 2086);
  return v8;
}

uint64_t conflictWithCacheRecordsOrFlush(unsigned int a1, _BYTE *a2, int a3, int a4)
{
  result = CacheGroupForName(mDNSStorage, a1, a2);
  if (result)
  {
    v7 = result;
    v8 = mDNSGetTSRForCacheGroup(result);
    if (v8)
    {
      v15 = a4;
      *v16 = 0;
      *buf = a3;
      if (CheckTSRForResourceRecord(buf, (v8 + 1)) == 2)
      {
        return 1;
      }
    }

    mDNS_Lock_(mDNSStorage, "conflictWithCacheRecordsOrFlush", 2135);
    v9 = *(v7 + 16);
    if (v9)
    {
      while (1)
      {
        mDNS_PurgeCacheResourceRecord(mDNSStorage, v9);
        v10 = mDNSLogCategory_mDNS;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_mDNS != mDNSLogCategory_State)
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }

LABEL_15:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v10 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

LABEL_14:
      v13 = *(v9 + 32);
      GetRRDisplayString_rdb((v9 + 8), (*(v9 + 48) + 4), word_1001789D0);
      *buf = 67109635;
      v15 = v13;
      strcpy(v16, "p\bhash");
      v16[7] = 0;
      *&v16[8] = 0;
      v17 = 2085;
      v18 = word_1001789D0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "conflictWithCacheRecordsOrFlush - new TSR, flushing interface %d %{sensitive, mask.hash}s", buf, 0x1Cu);
      goto LABEL_15;
    }

LABEL_16:
    mDNS_Unlock_(mDNSStorage, "conflictWithCacheRecordsOrFlush", 2144);
    return 0;
  }

  return result;
}

uint64_t updateTSRRecord(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 + 48);
  v9 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v10 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v11 = *(a2 + 40);
    if (v11)
    {
      v12 = *(a2 + 40);
      while (1)
      {
        if (!v12 || (v13 = *v12, v13 > 0x3F))
        {
LABEL_13:
          v14 = 257;
          goto LABEL_26;
        }

        if (!*v12)
        {
          break;
        }

        v12 += v13 + 1;
        if (&v12[-v11] >= 256)
        {
          goto LABEL_13;
        }
      }

      v14 = (v12 - v11 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v9 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v11 = *(a2 + 40);
    if (v11)
    {
      v16 = *(a2 + 40);
      while (1)
      {
        if (!v16 || (v17 = *v16, v17 > 0x3F))
        {
LABEL_21:
          v14 = 257;
          goto LABEL_26;
        }

        if (!*v16)
        {
          break;
        }

        v16 += v17 + 1;
        if (&v16[-v11] >= 256)
        {
          goto LABEL_21;
        }
      }

      v14 = (v16 - v11 + 1);
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_26:
  v18 = *(v8 + 4);
  v20 = 141559043;
  v21 = 1752392040;
  v22 = 1040;
  v23 = v14;
  v24 = 2101;
  v25 = v11;
  v26 = 1024;
  v27 = a3;
  v28 = 1024;
  v29 = v18;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "TSR timestamp - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, new: %d  old: %d", &v20, 0x28u);
LABEL_27:
  if (a3 - *(v8 + 8) < 1)
  {
    return 0;
  }

  v20 = 167832317;
  LOBYTE(v21) = HIBYTE(a3);
  BYTE1(v21) = BYTE2(a3);
  BYTE2(v21) = BYTE1(a3);
  BYTE3(v21) = a3;
  BYTE4(v21) = HIBYTE(a4);
  BYTE5(v21) = BYTE2(a4);
  BYTE6(v21) = BYTE1(a4);
  HIBYTE(v21) = a4;
  v22 = 0;
  return update_record(a2, 0xEuLL, &v20, 4500, 0, *(a1 + 200));
}

size_t add_record_to_service(uint64_t a1, uint64_t a2, int a3, size_t a4, unsigned __int8 *a5, unsigned int a6)
{
  if (a4 <= 0x214)
  {
    v12 = 532;
  }

  else
  {
    v12 = a4;
  }

  v13 = malloc_type_calloc(1uLL, v12 + 928, 0x6328E1B3uLL);
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  v13[14] = a3;
  v15 = (v13 + 462);
  *(v13 + 8) = v13 + 462;
  v13[462] = v12;
  v13[18] = a4;
  v16 = *(a1 + 128);
  if (!SetRData(0, a5, &a5[a4], (v13 + 12), a4))
  {
    v19 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 200);
        v26 = v16[203];
        if (v26)
        {
          v22 = *(v26 + 2736);
          if (v22)
          {
            v27 = *(v26 + 2736);
            while (1)
            {
              if (!v27 || (v28 = *v27, v28 > 0x3F))
              {
LABEL_35:
                v25 = 257;
                goto LABEL_42;
              }

              if (!*v27)
              {
                break;
              }

              v27 += v28 + 1;
              if (&v27[-v22] >= 256)
              {
                goto LABEL_35;
              }
            }

            v25 = (v27 - v22 + 1);
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
          v22 = 0;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v19 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 200);
        v21 = v16[203];
        if (v21)
        {
          v22 = *(v21 + 2736);
          if (v22)
          {
            v23 = *(v21 + 2736);
            while (1)
            {
              if (!v23 || (v24 = *v23, v24 > 0x3F))
              {
LABEL_18:
                v25 = 257;
                goto LABEL_42;
              }

              if (!*v23)
              {
                break;
              }

              v23 += v24 + 1;
              if (&v23[-v22] >= 256)
              {
                goto LABEL_18;
              }
            }

            v25 = (v23 - v22 + 1);
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
          v22 = 0;
        }

LABEL_42:
        v30[0] = 67110147;
        v30[1] = v20;
        v31 = 2160;
        v32 = 1752392040;
        v33 = 1040;
        v34 = v25;
        v35 = 2101;
        v36 = v22;
        v37 = 2082;
        v38 = DNSTypeName(a3);
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[R%u] read_rr_from_ipc_msg: SetRData failed for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", v30, 0x2Cu);
      }
    }

    free(v14);
    return 4294901756;
  }

  SetNewRData(v14 + 24, 0, 0);
  *(v14 + 48) = *v16;
  v17 = mDNS_AddRecordToService(mDNSStorage, (a2 + 288), v14, v15, a6, *(a1 + 248));
  if (v17)
  {
    v18 = v17;
    free(v14);
  }

  else
  {
    if (mDNS_McastLoggingEnabled)
    {
      LogMcastService(a2 + 1520, a1, 1);
    }

    *(v14 + 8) = *(a1 + 240);
    if (*(a2 + 27) && callExternalHelpers(*v16, (a2 + 28), *(a1 + 248)))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "add_record_to_service: calling external_start_advertising_service");
      }

      internal_start_advertising_service(v14 + 24, *(a1 + 248), *(a1 + 188));
    }

    return 0;
  }

  return v18;
}

uint64_t update_record(uint64_t a1, size_t a2, unsigned __int8 *a3, int a4, uint64_t a5, int a6)
{
  if (a2 <= 0x214)
  {
    v12 = 532;
  }

  else
  {
    v12 = a2;
  }

  v13 = malloc_type_calloc(1uLL, v12 + 4, 0xD6172CA0uLL);
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  v44 = 0u;
  v45 = 0u;
  memset(v43, 0, sizeof(v43));
  v15 = *(a1 + 40);
  DWORD1(v43[0]) = *(a1 + 12);
  *&v44 = v15;
  *(&v44 + 1) = v13;
  *v13 = v12;
  WORD6(v43[0]) = a2;
  if (!SetRData(0, a3, &a3[a2], v43, a2))
  {
    updated = 4294901756;
    v21 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      v22 = v44;
      if (v44)
      {
        v28 = v44;
        while (1)
        {
          if (!v28 || (v29 = *v28, v29 > 0x3F))
          {
LABEL_45:
            v25 = 257;
            goto LABEL_63;
          }

          if (!*v28)
          {
            break;
          }

          v28 += v29 + 1;
          if (&v28[-v44] >= 256)
          {
            goto LABEL_45;
          }
        }

        v25 = (v28 - v44 + 1);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v21 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
LABEL_64:
        free(v14);
        return updated;
      }

      v22 = v44;
      if (v44)
      {
        v23 = v44;
        while (1)
        {
          if (!v23 || (v24 = *v23, v24 > 0x3F))
          {
LABEL_35:
            v25 = 257;
            goto LABEL_63;
          }

          if (!*v23)
          {
            break;
          }

          v23 += v24 + 1;
          if (&v23[-v44] >= 256)
          {
            goto LABEL_35;
          }
        }

        v25 = (v23 - v44 + 1);
      }

      else
      {
        v25 = 0;
      }
    }

LABEL_63:
    v35 = DNSTypeName(WORD2(v43[0]));
    *buf = 67110147;
    v47 = a6;
    v48 = 2160;
    v49 = 1752392040;
    v50 = 1040;
    v51 = v25;
    v52 = 2101;
    v53 = v22;
    v54 = 2082;
    v55 = v35;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[R%u] update_record: SetRData failed for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x2Cu);
    goto LABEL_64;
  }

  RDLength = GetRDLength(v43, 0);
  v17 = RDLength;
  if (*(a1 + 12) == 16 && !RDLength)
  {
    *(v14 + 4) = 0;
    v17 = 1;
  }

  if (a5)
  {
    *(a1 + 608) = a5;
  }

  if (!ValidateRData(*(a1 + 12), v17, v14))
  {
    v26 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a1 + 8), v14 + 2, word_1001789D0);
    LogMsgWithLevel(v26, OS_LOG_TYPE_DEFAULT, "Attempt to update record with invalid rdata: %s", word_1001789D0);
    updated = 4294901747;
LABEL_37:
    v27 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a1 + 8), (*(a1 + 48) + 4), word_1001789D0);
    LogMsgWithLevel(v27, OS_LOG_TYPE_DEFAULT, "update_record: Error %d for %s", updated, word_1001789D0);
    goto LABEL_64;
  }

  mDNS_Lock_(mDNSStorage, "mDNS_Update", 16529);
  if (!a4)
  {
    a4 = *(a1 + 16);
  }

  if (*(a1 + 304))
  {
    *(a1 + 304) = 0;
    v18 = *(a1 + 320);
    if (v18)
    {
      v18(mDNSStorage, a1);
    }
  }

  *(a1 + 304) = v14;
  *(a1 + 312) = v17;
  *(a1 + 320) = update_callback;
  v19 = *(a1 + 172) & 0xFFFFFFFE;
  if (v19 == 4)
  {
    goto LABEL_24;
  }

  if (!*(a1 + 32) && !*(a1 + 122))
  {
    if (IsLocalDomain(*(a1 + 40)))
    {
      v19 = *(a1 + 172) & 0xFFFFFFFE;
      goto LABEL_22;
    }

    updated = uDNS_UpdateRecord(a1);
    if (!updated)
    {
      mDNS_Unlock_(mDNSStorage, "mDNS_Update", 16553);
      return updated;
    }

    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    mDNS_Unlock_(mDNSStorage, "mDNS_Update", 16553);
    goto LABEL_37;
  }

LABEL_22:
  if (v19 != 4 && *(a1 + 12) != 41 && (*(a1 + 16) != a4 || *(a1 + 20) != v17 || memcmp((*(a1 + 48) + 4), v14 + 2, v17)))
  {
    *(a1 + 191) = 4;
    InitializeLastAPTime(mDNSStorage, a1);
    v30 = *(a1 + 332);
    if (v30)
    {
      v31 = dword_10016D258;
      while ((v31 - v30) >= 0)
      {
        v32 = *(a1 + 328) + 1;
        *(a1 + 328) = v32;
        v30 += 6000;
        if (v30 <= 1)
        {
          v30 = 1;
        }

        if (v32 <= 9)
        {
          v33 = v30;
        }

        else
        {
          v33 = 0;
        }

        *(a1 + 332) = v33;
        if (v32 >= 0xA)
        {
          goto LABEL_58;
        }
      }

      v34 = 0;
    }

    else
    {
LABEL_58:
      v34 = 1;
    }

    v37 = *(a1 + 336);
    if (!v37)
    {
      v38 = *(a1 + 328);
      if (v38)
      {
        *(a1 + 328) = v38 - 1;
      }
    }

    if (v34)
    {
      v39 = dword_10016D258 + 6000;
      if ((dword_10016D258 + 6000) <= 1)
      {
        v39 = 1;
      }

      *(a1 + 332) = v39;
    }

    v40 = *(a1 + 328);
    if (v40 + 1 < *(a1 + 191))
    {
      *(a1 + 191) = v40 + 1;
    }

    if (v40 <= 5)
    {
      if (!v37)
      {
        if (dword_10016D258 + 1000 * (6 - v40) <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = dword_10016D258 + 1000 * (6 - v40);
        }

        *(a1 + 336) = v37;
      }

      v41 = *(a1 + 280);
      *(a1 + 280) = 4 * v41;
      *(a1 + 284) = v37 - 4 * v41;
      v42 = "s";
      if (v40 == 5)
      {
        v42 = "";
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Excessive update rate for %##s; delaying announcement by %ld second%s", *(a1 + 40), 6 - v40, v42);
    }

    *(a1 + 16) = a4;
    goto LABEL_25;
  }

LABEL_24:
  CompleteRDataUpdate(mDNSStorage, a1);
LABEL_25:
  mDNS_Unlock_(mDNSStorage, "mDNS_Update", 16582);
  return 0;
}

void update_callback(int a1, uint64_t a2, char *a3, size_t __n)
{
  v6 = *(a2 + 608);
  if (!v6 || !*v6)
  {
    goto LABEL_16;
  }

  v7 = __n;
  v8 = *(a2 + 24);
  v14[0] = *(a2 + 8);
  v14[1] = v8;
  v9 = *(a2 + 56);
  v15 = *(a2 + 40);
  v16 = v9;
  v10 = *(a2 + 172);
  v11 = (v10 & 0xFFFFFFFD) == 1 ? 0x20000 : (v10 == 2) << 20;
  if (WORD6(v14[0]) == __n && !memcmp((*(&v15 + 1) + 4), a3 + 4, __n))
  {
    goto LABEL_16;
  }

  SetNewRData(v14, a3, v7);
  internal_stop_advertising_service(v14, v11, 0);
  v12 = mDNSLogCategory_D2D;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v12 = mDNSLogCategory_D2D_redacted;
    if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "update_callback: calling external_start_advertising_service", v13, 2u);
    }
  }

  internal_start_advertising_service(a2 + 8, v11, 0);
LABEL_16:
  if ((a2 + 908) != a3)
  {
    if (a3)
    {
      free(a3);
    }
  }
}

void FreeARElemCallback_2637(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -65792)
  {
    v5 = &LocalDomainEnumRecords;
    do
    {
      v6 = v5;
      v5 = *v5;
      if (v5)
      {
        v7 = v5 + 1 == a2;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (!v5)
    {
      goto LABEL_18;
    }

    *v6 = *v5;
    v8 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }
    }

    v11 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v11);
    v13 = 141558275;
    v14 = 1752392040;
    v15 = 2085;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FreeARElemCallback: Have to cut %{sensitive, mask.hash}s", &v13, 0x16u);
LABEL_18:
    v12 = *(a2 + 112);
    if (v12)
    {
      free(v12);
    }
  }
}

uint64_t ___get_unicast_discovery_dns_services_block_invoke(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  if (a3)
  {
    v8 = mdns_dns_service_definition_create();
    if (v8)
    {
      v9 = v8;
      if (a2 == 30)
      {
        v15 = *a3;
        v13 = _mdns_address_new();
        if (!v13)
        {
LABEL_10:
          os_release(v9);
          return 1;
        }

        v12 = v13;
        *(v13 + 24) = -384557540;
        *(v13 + 32) = v15;
        *(v13 + 48) = a4;
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_10;
        }

        v10 = *a3;
        v11 = _mdns_address_new();
        if (!v11)
        {
          goto LABEL_10;
        }

        v12 = v11;
        *(v11 + 24) = -384564720;
        *(v11 + 28) = bswap32(v10);
      }

      CFArrayAppendValue(v9[3], v12);
      os_release(v12);
      mdns_dns_service_definition_set_interface_index(v9, a4, 1);
      CFArrayAppendValue(*(a1 + 32), v9);
      goto LABEL_10;
    }
  }

  return 1;
}

uint64_t __add_domain_to_browser_block_invoke(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (CFArrayGetCount(*(a2 + 24)) < 1)
  {
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 0);
  if (!ValueAtIndex)
  {
    return 1;
  }

  v6 = ValueAtIndex;
  result = malloc_type_calloc(1uLL, 0x3C0uLL, 0x12A9E533uLL);
  if (result)
  {
    v8 = result;
    v9 = a1[5];
    v10 = v9;
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
        v12 = v10 - v9 + 1;
        if (v12 <= 0x100u)
        {
          memcpy((result + 8), v9, v12);
          goto LABEL_13;
        }

        break;
      }

      v10 += v11 + 1;
    }

    while (v10 - v9 <= 255);
    *(result + 8) = 0;
LABEL_13:
    v13 = a1[6];
    *(v8 + 128) = *(v13 + 196);
    if (*(v13 + 288))
    {
      v14 = 0;
      *(v8 + 921) = *(v13 + 272);
      v13 = a1[6];
    }

    else
    {
      v14 = *(v13 + 188);
    }

    *(v8 + 127) = v14;
    *(v8 + 129) = *(v13 + 200);
    v15 = v6[25];
    if (v15 == 30)
    {
      v17 = *(v6 + 8);
      *buf = *(v6 + 36);
      *v35 = *(v6 + 11);
      v16 = 6;
    }

    else if (v15 == 2)
    {
      *v35 = 0;
      *buf = 0;
      v16 = 4;
      v17 = *(v6 + 7);
    }

    else
    {
      v17 = 0;
      v16 = 0;
      *v35 = 0;
      *buf = 0;
    }

    *(v8 + 142) = v16;
    *(v8 + 143) = v17;
    *(v8 + 72) = *buf;
    *(v8 + 146) = *v35;
    v18 = mDNSPlatformInterfaceIDfromInterfaceIndex(v4);
    *(*(a1[4] + 8) + 24) = mDNS_StartBrowse((v8 + 264), (a1[7] + 10), a1[5], v18, *(a1[6] + 248), 0, (*(a1[6] + 248) & 0x80000) != 0, 0, a1[6]);
    v19 = *(*(a1[4] + 8) + 24);
    if (!v19)
    {
      *v8 = *(a1[7] + 272);
      *(a1[7] + 272) = v8;
      if (mDNS_McastLoggingEnabled)
      {
        LogMcastQuestion((v8 + 264), a1[6], 1);
      }

      return 1;
    }

    v20 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1[6] + 200);
        v22 = a1[7] + 10;
        v26 = v22;
        while (1)
        {
          if (!v26 || (v27 = *v26, v27 > 0x3F))
          {
LABEL_39:
            v25 = 257;
            goto LABEL_41;
          }

          if (!*v26)
          {
            break;
          }

          v26 += v27 + 1;
          if (&v26[-v22] >= 256)
          {
            goto LABEL_39;
          }
        }

        v25 = (v26 - v22 + 1);
LABEL_41:
        v28 = a1[5];
        if (v28)
        {
          v29 = a1[5];
          while (1)
          {
            if (!v29 || (v30 = *v29, v30 > 0x3F))
            {
LABEL_47:
              v31 = 257;
              goto LABEL_60;
            }

            if (!*v29)
            {
              break;
            }

            v29 += v30 + 1;
            if (&v29[-v28] >= 256)
            {
              goto LABEL_47;
            }
          }

          v31 = (v29 - v28 + 1);
        }

        else
        {
          v31 = 0;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v20 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1[6] + 200);
        v22 = a1[7] + 10;
        v23 = v22;
        while (1)
        {
          if (!v23 || (v24 = *v23, v24 > 0x3F))
          {
LABEL_30:
            v25 = 257;
            goto LABEL_50;
          }

          if (!*v23)
          {
            break;
          }

          v23 += v24 + 1;
          if (&v23[-v22] >= 256)
          {
            goto LABEL_30;
          }
        }

        v25 = (v23 - v22 + 1);
LABEL_50:
        v28 = a1[5];
        if (v28)
        {
          v32 = a1[5];
          while (1)
          {
            if (!v32 || (v33 = *v32, v33 > 0x3F))
            {
LABEL_56:
              v31 = 257;
              goto LABEL_60;
            }

            if (!*v32)
            {
              break;
            }

            v32 += v33 + 1;
            if (&v32[-v28] >= 256)
            {
              goto LABEL_56;
            }
          }

          v31 = (v32 - v28 + 1);
        }

        else
        {
          v31 = 0;
        }

LABEL_60:
        *buf = 67110915;
        *&buf[4] = v21;
        *v35 = 1024;
        *&v35[2] = v19;
        v36 = 2160;
        v37 = 1752392040;
        v38 = 1040;
        v39 = v25;
        v40 = 2101;
        v41 = v22;
        v42 = 2160;
        v43 = 1752392040;
        v44 = 1040;
        v45 = v31;
        v46 = 2101;
        v47 = v28;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[R%u] mDNS_StartBrowse returned error (UNICAST_DISCOVERY) -- error: %d, type: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x42u);
      }
    }

    free(v8);
    return 1;
  }

  __break(1u);
  return result;
}

void *GenerateBrowseReply(unsigned __int8 *a1, char *a2, uint64_t a3, char **a4, unsigned int a5, unsigned int a6)
{
  memset(__s, 0, sizeof(__s));
  bzero(__src, 0x3F1uLL);
  *a4 = 0;
  if (a1)
  {
    v13 = a1 + 1;
    v12 = *a1;
    if (v12 <= 0x3F)
    {
      if (v13 >= &v13[v12])
      {
        v14 = __s;
      }

      else
      {
        v14 = __s;
        v15 = *a1;
        do
        {
          v16 = *v13++;
          *v14++ = v16;
          --v15;
        }

        while (v15);
      }

      *v14 = 0;
    }

    if (v12)
    {
      v17 = v12 + 1;
    }

    else
    {
      v17 = 0;
    }

    mDNS_snprintf(__src, 1009, "%#s.local.", &a1[v17]);
  }

  else
  {
    LOBYTE(__s[0]) = 0;
  }

  v18 = strlen(__s);
  v19 = strlen(__src);
  reply = create_reply(0x42, v18 + v19 + 16, a3);
  *a4 = reply;
  *(reply + 11) = bswap32(a5);
  v21 = mDNSPlatformInterfaceIndexfromInterfaceID(mDNSStorage, a2, 0);
  v22 = *a4;
  v22[12] = bswap32(v21);
  v22[13] = bswap32(a6);
  v23 = v22 + 14;
  memcpy(v22 + 14, __s, v18 + 1);
  v24 = v23 + v18 + 1;
  v25 = strlen(__src) + 1;
  result = memcpy(v24, __src, v25);
  *&v24[v25] = 46;
  return result;
}

void append_reply(uint64_t a1, void *a2)
{
  if (*(a1 + 292))
  {
    if (a2)
    {
      free(a2);
    }
  }

  else
  {
    v2 = *(a1 + 24);
    if (!v2)
    {
      v2 = a1;
    }

    *a2 = 0;
    **(v2 + 104) = a2;
    *(v2 + 104) = a2;
  }
}

void FoundNonLocalOnlyAutomaticBrowseDomain(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = *(a3 + 3) + 5;
  v6 = v4 <= 3 && v4 != 1 || a4 > 1;
  if (!v6 && *a3 != 240)
  {
    v10 = (*(a3 + 5) + 4);
    if (a4)
    {
      RegisterLocalOnlyDomainEnumPTR(a1, v10, 2);
      mDNS_Lock_(a1, "mDNS_AddDomainDiscoveredForDomainEnumeration", 16399);
      v11 = *(a1 + 14160);
      if (v11)
      {
        while (!SameDomainNameBytes(v11, "\x05local"))
        {
          v11 = *(v11 + 296);
          if (!v11)
          {
            goto LABEL_37;
          }
        }

        if (*(v11 + 272))
        {
          v13 = malloc_type_calloc(1uLL, 0x108uLL, 0x926E64E8uLL);
          if (!v13)
          {
            __break(1u);
            return;
          }

          v14 = v13;
          v15 = v10;
          do
          {
            if (!v15)
            {
              break;
            }

            v16 = *v15;
            if (v16 > 0x3F)
            {
              break;
            }

            if (!*v15)
            {
              v21 = v15 - v10 + 1;
              if (v21 <= 0x100u)
              {
                memcpy(v13, v10, v21);
                goto LABEL_36;
              }

              break;
            }

            v15 += v16 + 1;
          }

          while (v15 - v10 <= 255);
          *v13 = 0;
LABEL_36:
          *(v14 + 32) = **(v11 + 272);
          **(v11 + 272) = v14;
        }
      }

LABEL_37:
      v22 = "mDNS_AddDomainDiscoveredForDomainEnumeration";
      v23 = a1;
      v24 = 16434;
    }

    else
    {
      DeregisterLocalOnlyDomainEnumPTR_Internal(a1, v10, 2, 0);
      mDNS_Lock_(a1, "mDNS_RemoveDomainDiscoveredForDomainEnumeration", 16442);
      v12 = *(a1 + 14160);
      if (v12)
      {
        while (!SameDomainNameBytes(v12, "\x05local"))
        {
          v12 = *(v12 + 296);
          if (!v12)
          {
            goto LABEL_39;
          }
        }

        v17 = *(v12 + 272);
        if (v17)
        {
          v18 = *v17;
          if (*v17)
          {
            while (1)
            {
              v19 = SameDomainNameBytes(v18, v10);
              v20 = *(v18 + 256);
              if (v19)
              {
                break;
              }

              v17 = (v18 + 256);
              v18 = *(v18 + 256);
              if (!v20)
              {
                goto LABEL_39;
              }
            }

            *v17 = v20;
            free(v18);
          }
        }
      }

LABEL_39:
      v22 = "mDNS_RemoveDomainDiscoveredForDomainEnumeration";
      v23 = a1;
      v24 = 16479;
    }

    mDNS_Unlock_(v23, v22, v24);
    v25 = (a1 + 12656);
    while (1)
    {
      v25 = *v25;
      if (!v25)
      {
        break;
      }

      v26 = v25;
      if (v25[444] == *(a3 + 3))
      {
        goto LABEL_45;
      }
    }

    v26 = 0;
LABEL_45:
    if (v25)
    {
      v27 = v26 + 3606;
    }

    else
    {
      v27 = 0;
    }

    v28 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v29 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v30 = "removed";
        if (a4 == 1)
        {
          v30 = "added";
        }

        v31 = v10;
        while (1)
        {
          if (!v31 || (v32 = *v31, v32 > 0x3F))
          {
LABEL_61:
            v33 = 257;
            goto LABEL_73;
          }

          if (!*v31)
          {
            break;
          }

          v31 += v32 + 1;
          if (v31 - v10 >= 256)
          {
            goto LABEL_61;
          }
        }

        v33 = (v31 - v10 + 1);
        goto LABEL_73;
      }
    }

    else
    {
      v28 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v30 = "removed";
        if (a4 == 1)
        {
          v30 = "added";
        }

        v35 = v10;
        while (1)
        {
          if (!v35 || (v36 = *v35, v36 > 0x3F))
          {
LABEL_70:
            v33 = 257;
            goto LABEL_73;
          }

          if (!*v35)
          {
            break;
          }

          v35 += v36 + 1;
          if (v35 - v10 >= 256)
          {
            goto LABEL_70;
          }
        }

        v33 = (v35 - v10 + 1);
LABEL_73:
        v37 = 136447235;
        v38 = v30;
        v39 = 2082;
        v40 = v27;
        v41 = 2160;
        v42 = 1752392040;
        v43 = 1040;
        v44 = v33;
        v45 = 2101;
        v46 = v10;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Automatic browsing domain discovered via network - change: %{public}s, interface name: %{public}s, browsing domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v37, 0x30u);
      }
    }
  }
}

uint64_t uds_socket_setup(int a1)
{
  v5 = 0x100000001;
  if (setsockopt(a1, 0xFFFF, 4227, &v5, 8u) < 0)
  {
    my_perror("WARNING: could not set sockopt - SO_NP_EXTENSIONS");
  }

  v2 = fcntl(a1, 3, 0);
  if (fcntl(a1, 4, v2 | 4u))
  {
    v3 = "ERROR: could not set listen socket to non-blocking mode";
LABEL_9:
    my_perror(v3);
    return 0;
  }

  if (listen(a1, 100))
  {
    v3 = "ERROR: could not listen on listen socket";
    goto LABEL_9;
  }

  if (udsSupportAddFDToEventLoop(a1, connect_callback, 0))
  {
    v3 = "ERROR: could not add listen socket to event loop";
    goto LABEL_9;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Listening for incoming Unix Domain Socket client requests", a1);
  }

  dword_100171FD0 = a1;
  return 1;
}

void my_perror(const char *a1)
{
  v2 = mDNSLogCategory_Default;
  v3 = *__error();
  v4 = __error();
  v5 = strerror(*v4);
  LogMsgWithLevel(v2, OS_LOG_TYPE_DEFAULT, "%s: %d (%s)", a1, v3, v5);
}

void AutomaticBrowseDomainChange(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a3 + 24);
  v7 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v8 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v9 = *(a3 + 40) + 4;
    v10 = v9;
    while (1)
    {
      if (!v10 || (v11 = *v10, v11 > 0x3F))
      {
LABEL_12:
        v12 = 257;
        goto LABEL_21;
      }

      if (!*v10)
      {
        break;
      }

      v10 += v11 + 1;
      if (&v10[-v9] >= 256)
      {
        goto LABEL_12;
      }
    }

    v12 = (v10 - v9 + 1);
LABEL_21:
    v18 = "removing";
    v21 = 141559299;
    v22 = 1752392040;
    v23 = 1040;
    if (a4 == 1)
    {
      v18 = "adding";
    }

    v24 = v12;
    v25 = 2101;
    v26 = v9;
    v19 = ", ignored.";
    v27 = 2082;
    if (v6)
    {
      v19 = ".";
    }

    goto LABEL_31;
  }

  v7 = mDNSLogCategory_mDNS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a3 + 40) + 4;
    v15 = v14;
    while (1)
    {
      if (!v15 || (v16 = *v15, v16 > 0x3F))
      {
LABEL_19:
        v17 = 257;
        goto LABEL_27;
      }

      if (!*v15)
      {
        break;
      }

      v15 += v16 + 1;
      if (&v15[-v14] >= 256)
      {
        goto LABEL_19;
      }
    }

    v17 = (v15 - v14 + 1);
LABEL_27:
    v18 = "removing";
    v21 = 141559299;
    v22 = 1752392040;
    v23 = 1040;
    if (a4 == 1)
    {
      v18 = "adding";
    }

    v24 = v17;
    v25 = 2101;
    v26 = v14;
    v19 = ", ignored.";
    v27 = 2082;
    if (v6)
    {
      v19 = ".";
    }

LABEL_31:
    v28 = v18;
    v29 = 2048;
    v30 = v6;
    v31 = 2082;
    v32 = v19;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Automatic browsing domain changes - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, event: %{public}s, interface ID: %p%{public}s", &v21, 0x3Au);
  }

LABEL_32:
  if (v6)
  {
    v20 = (*(a3 + 40) + 4);
    if (a4)
    {
      AddAutoBrowseDomain(0, v20);
    }

    else
    {
      RmvAutoBrowseDomain(0, v20);
    }
  }
}

uint64_t set_peer_pid(uint64_t a1)
{
  *(a1 + 256) = 0;
  *(a1 + 188) = -1;
  v3 = 4;
  v4 = -1;
  result = *(a1 + 184);
  if ((result & 0x80000000) == 0)
  {
    result = getsockopt(result, 0, 3, &v4, &v3);
    if (!result)
    {
      result = mdns_system_pid_to_name(v4, a1 + 256);
      if (result)
      {
        *(a1 + 188) = v4;
      }
    }
  }

  return result;
}

void *get_signed_browse_tlvs(uint64_t a1)
{
  v19 = 0;
  signed_data_tlvs = _get_signed_data_tlvs(a1, &v19);
  if (!*(a1 + 290))
  {
    return 0;
  }

  v3 = signed_data_tlvs;
  if (!signed_data_tlvs)
  {
    v12 = 4294901747;
    v13 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v14 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        return v12;
      }

      *buf = 0;
      v15 = "get_signed_browse_tlvs data invalid";
    }

    else
    {
      v13 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        return v12;
      }

      *buf = 0;
      v15 = "get_signed_browse_tlvs data invalid";
    }

    v16 = v13;
    v17 = 2;
    goto LABEL_30;
  }

  v4 = v19;
  if (v19 < 0x3A)
  {
    v10 = -6743;
    goto LABEL_12;
  }

  if (*(signed_data_tlvs + 12) != 5)
  {
    v10 = -6756;
    goto LABEL_12;
  }

  v5 = signed_data_tlvs[28];
  if (v19 - 58 < v5)
  {
    v10 = -6750;
    goto LABEL_12;
  }

  if (v5 > 0x3F0)
  {
    v10 = -6744;
    goto LABEL_12;
  }

  bzero(buf, 0x3F1uLL);
  __memcpy_chk();
  buf[v5] = 0;
  memset(v21, 0, sizeof(v21));
  v6 = DomainNameFromString(v21, buf);
  if (v6 || (v6 = _mdns_necp_validate_result(v3, v4)) != 0)
  {
    v10 = v6;
LABEL_12:
    v11 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      v12 = 4294901747;
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
LABEL_26:
        *buf = 134218240;
        v23 = v19;
        v24 = 2048;
        v25 = v10;
        v15 = "get_signed_browse_tlvs len %zu data invalid %ld";
        v16 = v11;
        v17 = 22;
LABEL_30:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v15, buf, v17);
      }
    }

    else
    {
      v12 = 4294901747;
      v11 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_26;
      }
    }

    return v12;
  }

  v20 = 0;
  result = malloc_type_malloc(v4, 0xFE29915uLL);
  if (result)
  {
    v8 = result;
    memcpy(result, v3, v4);
    v9 = _mdns_signed_browse_result_create_no_copy(v21, v8, v4, &v20);
    if (v9)
    {
      v10 = v20;
      if (!v20)
      {
        v12 = 0;
        *(a1 + 56) = v9;
        return v12;
      }
    }

    else
    {
      free(v8);
      v10 = -6728;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t build_domainname_from_strings(_BYTE *a1, _BYTE *a2, const char *a3, const char *a4)
{
  v6 = v45;
  memset(v45, 0, sizeof(v45));
  LOBYTE(v7) = *a2;
  if (*a2)
  {
    v8 = a2 + 1;
    do
    {
      *v6 = v7;
      v6 = (v6 + 1);
      v9 = *v8++;
      v7 = v9;
      if (v9)
      {
        v10 = v6 >= &v46;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
    v44 = v6 + ~(&vars0 - 104);
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v44 = v45 + ~(&vars0 - 104);
  }

  memset(v43, 0, sizeof(v43));
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v12 = 0;
  if (!AppendDNSNameString(&v12, a3))
  {
    return 0xFFFFFFFFLL;
  }

  v28 = 0;
  if (!AppendDNSNameString(&v28, a4))
  {
    return 0xFFFFFFFFLL;
  }

  if (ConstructServiceName(a1, &v44, &v12, &v28))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}