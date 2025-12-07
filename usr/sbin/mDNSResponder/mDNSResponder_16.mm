void AllocAndCopy(void *a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    v5 = v4 + 1;
    if ((v4 + 1) >> 32)
    {
      v6 = mDNSLogCategory_Default;

      LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "AllocAndCopy: can't allocate string");
    }

    else if (v4 == -1 || (v7 = malloc_type_malloc(v4 + 1, 0xDDCB1BE0uLL)) == 0)
    {
      __break(1u);
    }

    else
    {
      *a1 = v7;

      memcpy(v7, __s, v5);
    }
  }
}

void GetDeviceDescription(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 12288;
  if (!*(a1 + 15036))
  {
    if (!*(a1 + 15040) || !*(a1 + 15064))
    {
      v7 = mDNSLogCategory_NAT;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v8 = mDNSLogCategory_NAT == mDNSLogCategory_State;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
      }

      else
      {
        v7 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
      }

      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GetDeviceDescription: no router URL or address string!", buf, 2u);
      return;
    }

    v5 = *(a2 + 64);
    if (v5)
    {
      bzero(v5, 0x2000uLL);
      v6 = *(a2 + 64);
    }

    else
    {
      v6 = malloc_type_malloc(0x2000uLL, 0xFDD85A49uLL);
      if (!v6)
      {
        __break(1u);
        return;
      }

      *(a2 + 64) = v6;
    }

    *(a2 + 72) = mDNS_snprintf(v6, 0x2000, "GET %s HTTP/1.1\r\nAccept: text/xml, application/xml\r\nUser-Agent: Mozilla/4.0 (compatible; UPnP/1.0; Windows NT/5.1)\r\nHost: %s\r\nConnection: close\r\n\r\n", *(a1 + 15040), *(a1 + 15064));
    v10 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a2 + 64);
        *buf = 136446210;
        v14 = v12;
        goto LABEL_25;
      }
    }

    else
    {
      v10 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 64);
        *buf = 136446210;
        v14 = v11;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Describe Device: [%{public}s]", buf, 0xCu);
      }
    }

    MakeTCPConnection(a1, a2, (a1 + 12696), *(v2 + 2746), 1);
  }
}

void LNT_SendDiscoveryMsg(uint64_t a1)
{
  if (!*(a1 + 141))
  {
    v2 = a1 + 12288;
    if (*(a1 + 15034))
    {
      v3 = *(a1 + 15024);
      if (v3)
      {
        CloseSocketSet(*(a1 + 15024));
        free(v3);
        *(a1 + 15024) = 0;
      }

      if (!*(v2 + 2748) && !*(a1 + 14920))
      {

        GetDeviceDescription(a1, a1 + 14896);
      }
    }

    else
    {
      v4 = a1 + 28960;
      if (*(a1 + 14736) < 251)
      {
        *(a1 + 15032) = 0;
        v5 = "IP";
      }

      else if (*(a1 + 15032))
      {
        v5 = "PPP";
      }

      else
      {
        v5 = "IP";
      }

      v6 = mDNS_snprintf((a1 + 28960), 8952, "M-SEARCH * HTTP/1.1\r\nHost:239.255.255.250:1900\r\nST:urn:schemas-upnp-org:service:WAN%sConnection:1\r\nMan:ssdp:discover\r\nMX:3\r\n\r\n", v5);
      if (*(a1 + 12700))
      {
        v7 = v6;
        v8 = *(a1 + 15024);
        if (!v8)
        {
          v8 = mDNSPlatformUDPSocket(0);
          *(a1 + 15024) = v8;
        }

        v9 = v4 + v7;
        mDNSPlatformSendUDP(a1, (a1 + 28960), v9, 0, v8, (a1 + 12696), 0x6C07u, 0);
        mDNSPlatformSendUDP(a1, (a1 + 28960), v9, 0, *(a1 + 15024), LNT_SendDiscoveryMsg_multicastDest, 0x6C07u, 0);
      }

      *(v2 + 2744) = *(v2 + 2744) == 0;
    }
  }
}

uint64_t dump_state_to_fd(unsigned int a1)
{
  time(0);
  v1279 = mDNS_TimeNow(mDNSStorage);
  memset(v1295, 0, sizeof(v1295));
  LogToFD(a1, "---- BEGIN STATE LOG ---- %s %s %d", v2, v3, v4, v5, v6, v7, "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)");
  v1298.tv_sec = 0;
  *&v1298.tv_usec = 0;
  gettimeofday(&v1298, 0);
  getLocalTimestampFromTimeval(&v1298, v1295);
  LogToFD(a1, "Date: %s", v8, v9, v10, v11, v12, v13, v1295);
  v14 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v1298.tv_sec) = 136446210;
      *(&v1298.tv_sec + 4) = v1295;
      goto LABEL_7;
    }
  }

  else
  {
    v14 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v1298.tv_sec) = 136446210;
      *(&v1298.tv_sec + 4) = v1295;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "---- BEGIN STATE LOG ---- (%{public}s)", &v1298, 0xCu);
    }
  }

  v15 = mDNS_TimeNow(mDNSStorage);
  LODWORD(v1298.tv_sec) = 0;
  LODWORD(v1296[0]) = 0;
  v1294 = 0;
  LogToFD(a1, "------------ Cache -------------", v16, v17, v18, v19, v20, v21, v1219);
  v1291 = a1;
  LogToFD(a1, "Slt Q     TTL if     U Type     DNSSEC                                   rdlen", v22, v23, v24, v25, v26, v27, v1220);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v1289 = v15;
  v37 = a1;
  do
  {
    v38 = mDNSStorage[v34 + 34];
    if (v38)
    {
      do
      {
        v1282 = v38;
        v1284 = v36;
        for (i = *(v38 + 16); i; v15 = v1289)
        {
          v40 = *(i + 32);
          if (v40)
          {
            v41 = (&v1294 + 4);
          }

          else
          {
            v41 = &v1294;
          }

          v42 = *(i + 56);
          if (v42)
          {
            if (!v40)
            {
              v43 = *(v42 + 24);
              if (v43)
              {
                v44 = *(v43 + 280);
                if (v44 == 5 || v44 == 2)
                {
                  v40 = *(v43 + 256);
                }

                else
                {
                  v40 = 0;
                }
              }
            }
          }

          v46 = *(i + 16);
          v47 = -274877907 * (v15 - *(i + 80));
          v48 = (v47 >> 63) + (SHIDWORD(v47) >> 6);
          v49 = &xmmword_100170388;
          while (1)
          {
            v49 = *v49;
            if (!v49)
            {
              break;
            }

            v50 = v49;
            if (*(v49 + 444) == v40)
            {
              goto LABEL_28;
            }
          }

          v50 = 0;
LABEL_28:
          if (v49)
          {
            v51 = v50 + 3606;
          }

          else
          {
            v51 = 0;
          }

          if (*(i + 96))
          {
            ++v35;
          }

          PrintOneCacheRecordToFD(v37, i, v34, (v48 + v46), v51, v41);
          v52 = *(i + 120);
          if (v52)
          {
            PrintOneCacheRecordToFD(v37, v52, v34, (v48 + v46), v51, v41);
          }

          i = *i;
        }

        v36 = v1284 + 1;
        v38 = *v1282;
      }

      while (*v1282);
    }

    ++v34;
  }

  while (v34 != 499);
  if (dword_10016D30C != HIDWORD(v1294) + v36 + v1294)
  {
    LogToFD(v1291, "Cache use mismatch: rrcache_totalused is %lu, true count %lu", v28, v29, v30, v31, v32, v33, dword_10016D30C);
  }

  if (qword_10016D314 != v35)
  {
    LogToFD(v1291, "Cache use mismatch: rrcache_active is %lu, true count %lu", v28, v29, v30, v31, v32, v33, qword_10016D314);
  }

  v53 = v1291;
  LogToFD(v1291, "Cache size %u entities; %u in use (%u group, %u multicast, %u unicast); %u referenced by active questions", v28, v29, v30, v31, v32, v33, dword_10016D308);
  LogToFD(v1291, "--------- Auth Records ---------", v54, v55, v56, v57, v58, v59, v1221);
  LogAuthRecordsToFD(v1291, v15, xmmword_100170360, 0, v60, v61, v62, v63);
  LogToFD(v1291, "--------- LocalOnly, P2P Auth Records ---------", v64, v65, v66, v67, v68, v69, v1222);
  v76 = 0;
  v77 = 1;
  do
  {
    v1285 = v76;
    for (j = mDNSStorage[v76 + 786]; j; j = *j)
    {
      for (k = j[2]; k; k = *k)
      {
        if (k[13] != FreeEtcHosts)
        {
          if (v77)
          {
            LogToFD(v53, "  State       Interface", v70, v71, v72, v73, v74, v75, v1223);
          }

          v80 = *(k + 43);
          if (v80 == 5)
          {
            v88 = k[4];
            v89 = RecordTypeName(*(k + 8));
            GetRRDisplayString_rdb(k + 8, (k[6] + 4), word_1001789D0);
            if (v88 == -5)
            {
              v53 = v1291;
              LogToFD(v1291, " %s   BLE %s", v90, v91, v92, v93, v94, v95, v89);
            }

            else
            {
              v53 = v1291;
              LogToFD(v1291, " %s   PP  %s", v90, v91, v92, v93, v94, v95, v89);
            }
          }

          else if (v80 == 4)
          {
            v81 = RecordTypeName(*(k + 8));
            GetRRDisplayString_rdb(k + 8, (k[6] + 4), word_1001789D0);
            LogToFD(v53, " %s   LO  %s", v82, v83, v84, v85, v86, v87, v81);
          }

          v77 = 0;
        }
      }
    }

    v76 = v1285 + 1;
  }

  while (v1285 != 498);
  if (v77)
  {
    LogToFD(v53, "<None>", v70, v71, v72, v73, v74, v75, v1223);
  }

  LogToFD(v53, "--------- /etc/hosts ---------", v70, v71, v72, v73, v74, v75, v1223);
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 1;
  do
  {
    v107 = mDNSStorage[v102 + 786];
    if (v107)
    {
      ++v104;
    }

    for (m = v104; v107; v105 = v109)
    {
      v108 = v107[2];
      if (v108)
      {
        do
        {
          if (*(v108 + 13) == FreeEtcHosts)
          {
            if (v106)
            {
              LogToFD(v1291, "  State       Interface", v96, v97, v98, v99, v100, v101, v1224);
            }

            v109 = (v105 + 1);
            if (v105 <= 49)
            {
              if (*(v108 + 43) == 4)
              {
                if (*(v108 + 4) == -2)
                {
                  v117 = RecordTypeName(v108[8]);
                  GetRRDisplayString_rdb(v108 + 8, (*(v108 + 6) + 4), word_1001789D0);
                  LogToFD(v1291, " %s   LO %s", v118, v119, v120, v121, v122, v123, v117);
                }

                else
                {
                  v110 = RecordTypeName(v108[8]);
                  GetRRDisplayString_rdb(v108 + 8, (*(v108 + 6) + 4), word_1001789D0);
                  LogToFD(v1291, " %s   %u  %s", v111, v112, v113, v114, v115, v116, v110);
                }
              }

              v106 = 0;
            }

            else
            {
              v106 = 0;
              v103 = 1;
            }
          }

          else
          {
            v109 = v105;
          }

          v108 = *v108;
          v105 = v109;
        }

        while (v108);
      }

      else
      {
        v109 = v105;
      }

      v107 = *v107;
    }

    ++v102;
    v104 = m;
  }

  while (v102 != 499);
  if (v106)
  {
    v124 = v1291;
    LogToFD(v1291, "<None>", v96, v97, v98, v99, v100, v101, v1224);
    v125 = v1289;
  }

  else
  {
    v124 = v1291;
    v125 = v1289;
    if (v103)
    {
      LogToFD(v1291, "<Truncated: to 50 records, Total records %d, Total Auth Groups %d, Auth Slots %d>", v96, v97, v98, v99, v100, v101, v105);
    }
  }

  LogToFD(v124, "------ Duplicate Records -------", v96, v97, v98, v99, v100, v101, v1224);
  LogAuthRecordsToFD(v124, v125, *(&xmmword_100170360 + 1), 0, v126, v127, v128, v129);
  LogToFD(v124, "----- Auth Records Proxied -----", v130, v131, v132, v133, v134, v135, v1225);
  LogAuthRecordsToFD(v124, v125, xmmword_100170360, &v1298, v136, v137, v138, v139);
  LogToFD(v124, "-- Duplicate Records Proxied ---", v140, v141, v142, v143, v144, v145, v1226);
  LogAuthRecordsToFD(v124, v125, *(&xmmword_100170360 + 1), v1296, v146, v147, v148, v149);
  LogToFD(v124, "---------- Questions -----------", v150, v151, v152, v153, v154, v155, v1227);
  if (xmmword_10016D2D8)
  {
    LogToFD(v124, "   Int  Next if     T NumAns Qptr               DupOf              SU SQ DNSSEC Type    Name", v156, v157, v158, v159, v160, v161, v1228);
    v168 = xmmword_10016D2D8;
    v169 = 0;
    for (n = 0; v168; v168 = *(v168 + 8))
    {
      v171 = *(v168 + 212);
      v1287 = v171 / 1000;
      v172 = &xmmword_100170388;
      do
      {
        v172 = *v172;
      }

      while (v172 && *(v172 + 444) != *(v168 + 136));
      ++v169;
      if (v171)
      {
        ++n;
      }

      DNSTypeName(*(v168 + 342));
      LODWORD(v124) = v1291;
      LogToFD(v1291, "%6d%6d %-7s%s %6d 0x%p 0x%p %1d %2d  %-7s%-8s%##s%s", v173, v174, v175, v176, v177, v178, v1287);
    }

    LogToFD(v124, "%lu question%s; %lu active", v162, v163, v164, v165, v166, v167, v169);
  }

  else
  {
    LogToFD(v124, "<None>", v156, v157, v158, v159, v160, v161, v1228);
  }

  LogToFD(v124, "----- LocalOnly, P2P Questions -----", v179, v180, v181, v182, v183, v184, v1229);
  v191 = unk_10016D2F0;
  if (unk_10016D2F0)
  {
    do
    {
      v192 = *(v191 + 136);
      v193 = "P2P";
      if (v192 == -5)
      {
        v193 = "BLE";
      }

      if (v192 == -2)
      {
        v194 = "LO ";
      }

      else
      {
        LODWORD(v194) = v193;
      }

      DNSTypeName(*(v191 + 342));
      LogToFD(v124, "                 %3s   %5d  %-6s%##s%s", v195, v196, v197, v198, v199, v200, v194);
      v191 = *(v191 + 8);
    }

    while (v191);
  }

  else
  {
    LogToFD(v124, "<None>", v185, v186, v187, v188, v189, v190, v1230);
  }

  LogToFD(v124, "---- Active UDS Client Requests ----", v201, v202, v203, v204, v205, v206, v1231);
  v213 = all_requests;
  if (all_requests)
  {
    do
    {
      v214 = *(v213 + 24);
      if (v214)
      {
        for (ii = all_requests; ii && ii != v213; ii = *(ii + 16))
        {
          if (ii == v214)
          {
            goto LABEL_115;
          }
        }

        LogToFD(v1291, "%3d: Orhpan operation %p; parent %p not found in request list", v207, v208, v209, v210, v211, v212, *(v213 + 184));
      }

      LogClientInfoToFD(v1291, v213);
LABEL_115:
      v213 = *(v213 + 16);
    }

    while (v213);
  }

  else
  {
    LogToFD(v124, "<None>", v207, v208, v209, v210, v211, v212, v1232);
  }

  LogToFD(v1291, "-------- NAT Traversals --------", v207, v208, v209, v210, v211, v212, v1232);
  LogToFD(v1291, "ExtAddress %.4a Retry %d Interval %d", v217, v218, v219, v220, v221, v222, &dword_100170BB0);
  for (jj = xmmword_100170B98; jj; jj = *jj)
  {
    LogToFD(v1291, "%p %s Int %5d %s Err %d Retry %5d Interval %5d Expire %5d Req %.4a:%d Ext %.4a:%d", v223, v224, v225, v226, v227, v228, jj);
  }

  LogToFD(v1291, "--------- AuthInfoList ---------", v223, v224, v225, v226, v227, v228, v1233);
  v236 = qword_1001703F0;
  if (qword_1001703F0)
  {
    v237 = v1289;
    do
    {
      LogToFD(v1291, "%##s %##s %##s %d %d", v230, v231, v232, v233, v234, v235, v236 + 12);
      v236 = *v236;
    }

    while (v236);
  }

  else
  {
    LogToFD(v1291, "<None>", v230, v231, v232, v233, v234, v235, v1234);
    v237 = v1289;
  }

  LogToFD(v1291, "---------- Misc State ----------", v230, v231, v232, v233, v234, v235, v1235);
  LogToFD(v1291, "PrimaryMAC:   %.6a", v238, v239, v240, v241, v242, v243, &dword_10016D230);
  LogToFD(v1291, "m->SleepState %d (%s) seq %d", v244, v245, v246, v247, v248, v249, BYTE1(dword_10016D2A4));
  if (*(&dword_10016D2A4 + &loc_100003A80 + 2 + 2))
  {
    LogToFD(v1291, "Offering Sleep Proxy Service: %#s", v250, v251, v252, v253, v254, v255, qword_1001716C0);
  }

  else
  {
    LogToFD(v1291, "Not offering Sleep Proxy Service", v250, v251, v252, v253, v254, v255, v1236);
  }

  if (dword_100171FC8 == LODWORD(v1296[0]) + LODWORD(v1298.tv_sec))
  {
    LogToFD(v1291, "ProxyRecords: %d + %d = %d", v256, v257, v258, v259, v260, v261, v1298.tv_sec);
  }

  else
  {
    LogToFD(v1291, "ProxyRecords: MISMATCH %d + %d = %d ≠ %d", v256, v257, v258, v259, v260, v261, v1298.tv_sec);
  }

  LogToFD(v1291, "------ Auto Browse Domains -----", v262, v263, v264, v265, v266, v267, v1237);
  v274 = AutoBrowseDomains;
  if (AutoBrowseDomains)
  {
    do
    {
      LogToFD(v1291, "%##s", v268, v269, v270, v271, v272, v273, v274 + 12);
      v274 = *v274;
    }

    while (v274);
  }

  else
  {
    LogToFD(v1291, "<None>", v268, v269, v270, v271, v272, v273, v1238);
  }

  LogToFD(v1291, "--- Auto Registration Domains --", v268, v269, v270, v271, v272, v273, v1239);
  v281 = AutoRegistrationDomains;
  if (AutoRegistrationDomains)
  {
    do
    {
      LogToFD(v1291, "%##s", v275, v276, v277, v278, v279, v280, v281 + 12);
      v281 = *v281;
    }

    while (v281);
  }

  else
  {
    LogToFD(v1291, "<None>", v275, v276, v277, v278, v279, v280, v1240);
  }

  LogToFD(v1291, "--- Search Domains --", v275, v276, v277, v278, v279, v280, v1241);
  v288 = SearchList;
  if (SearchList)
  {
    do
    {
      v289 = &xmmword_100170388;
      do
      {
        v289 = *v289;
      }

      while (v289 && *(v289 + 444) != v288[34]);
      LogToFD(v1291, "%##s %s", v282, v283, v284, v285, v286, v287, v288 + 8);
      v288 = *v288;
    }

    while (v288);
  }

  else
  {
    LogToFD(v1291, "<None>", v282, v283, v284, v285, v286, v287, v1242);
  }

  v290 = v1291;
  LogToFD(v1291, "--- MDNS Statistics ---", v282, v283, v284, v285, v286, v287, v1243);
  LogToFD(v1291, "Name Conflicts                 %u", v291, v292, v293, v294, v295, v296, *&byte_10016D290[&loc_100004D50]);
  LogToFD(v1291, "KnownUnique Name Conflicts     %u", v297, v298, v299, v300, v301, v302, *&byte_10016D290[&loc_100004D54]);
  LogToFD(v1291, "Duplicate Query Suppressions   %u", v303, v304, v305, v306, v307, v308, *&byte_10016D290[&loc_100004D58]);
  LogToFD(v1291, "KA Suppressions                %u", v309, v310, v311, v312, v313, v314, *&byte_10016D290[&loc_100004D5C]);
  LogToFD(v1291, "KA Multiple Packets            %u", v315, v316, v317, v318, v319, v320, *&byte_10016D290[&loc_100004D60]);
  LogToFD(v1291, "Poof Cache Deletions           %u", v321, v322, v323, v324, v325, v326, *&byte_10016D290[&loc_100004D64]);
  LogToFD(v1291, "--------------------------------", v327, v328, v329, v330, v331, v332, v1244);
  LogToFD(v1291, "Multicast packets Sent         %u", v333, v334, v335, v336, v337, v338, dword_10016D2C4);
  LogToFD(v1291, "Multicast packets Received     %u", v339, v340, v341, v342, v343, v344, dword_10016D2A0);
  LogToFD(v1291, "Remote Subnet packets          %u", v345, v346, v347, v348, v349, v350, dword_10016D2C8);
  LogToFD(v1291, "QU questions  received         %u", v351, v352, v353, v354, v355, v356, *&byte_10016D290[&loc_100004D68]);
  LogToFD(v1291, "Normal multicast questions     %u", v357, v358, v359, v360, v361, v362, *&byte_10016D290[&loc_100004D68 + 4]);
  LogToFD(v1291, "Answers for questions          %u", v363, v364, v365, v366, v367, v368, *&byte_10016D290[&loc_100004D70]);
  LogToFD(v1291, "Unicast responses              %u", v369, v370, v371, v372, v373, v374, *&byte_10016D290[&loc_100004D74]);
  LogToFD(v1291, "Multicast responses            %u", v375, v376, v377, v378, v379, v380, *&byte_10016D290[&loc_100004D78]);
  LogToFD(v1291, "Unicast response Demotions     %u", v381, v382, v383, v384, v385, v386, *&byte_10016D290[&loc_100004D78 + 4]);
  LogToFD(v1291, "--------------------------------", v387, v388, v389, v390, v391, v392, v1245);
  LogToFD(v1291, "Sleeps                         %u", v393, v394, v395, v396, v397, v398, *&byte_10016D290[&loc_100004D80]);
  LogToFD(v1291, "Wakeups                        %u", v399, v400, v401, v402, v403, v404, *&byte_10016D290[&loc_100004D84]);
  LogToFD(v1291, "Interface UP events            %u", v405, v406, v407, v408, v409, v410, *&byte_10016D290[&loc_100004D84 + 4]);
  LogToFD(v1291, "Interface UP Flap events       %u", v411, v412, v413, v414, v415, v416, *&byte_10016D290[&loc_100004D8C]);
  LogToFD(v1291, "Interface Down events          %u", v417, v418, v419, v420, v421, v422, *&byte_10016D290[&loc_100004D90]);
  LogToFD(v1291, "Interface DownFlap events      %u", v423, v424, v425, v426, v427, v428, *&byte_10016D290[&loc_100004D94]);
  LogToFD(v1291, "Cache refresh queries          %u", v429, v430, v431, v432, v433, v434, *&byte_10016D290[&loc_100004D98]);
  LogToFD(v1291, "Cache refreshed                %u", v435, v436, v437, v438, v439, v440, *&byte_10016D290[&loc_100004D9C]);
  LogToFD(v1291, "Wakeup on Resolves             %u", v441, v442, v443, v444, v445, v446, *&byte_10016D290[&loc_100004DA0]);
  LogToFD(v1291, "---- Task Scheduling Timers ----", v447, v448, v449, v450, v451, v452, v1246);
  LogToFD(v1291, "BonjourEnabled %d", v453, v454, v455, v456, v457, v458, byte_10016D290[0]);
  if (*(&xmmword_10016D2D8 + 1))
  {
    v465 = *(*(&xmmword_10016D2D8 + 1) + 204);
    DNSTypeName(*(*(&xmmword_10016D2D8 + 1) + 342));
    v290 = v1291;
    LogToFD(v1291, "NewQuestion DelayAnswering %d %d %##s (%s)", v466, v467, v468, v469, v470, v471, v465);
  }

  else
  {
    LogToFD(v1291, "NewQuestion <NONE>", v459, v460, v461, v462, v463, v464, v1247);
  }

  if (qword_10016D2F8)
  {
    v478 = qword_10016D2F8 + 376;
    DNSTypeName(*(qword_10016D2F8 + 342));
    v290 = v1291;
    LogToFD(v1291, "NewLocalOnlyQuestions %##s (%s)", v479, v480, v481, v482, v483, v484, v478);
  }

  else
  {
    LogToFD(v290, "NewLocalOnlyQuestions <NONE>", v472, v473, v474, v475, v476, v477, v1248);
  }

  if (qword_100170370)
  {
    v491 = *(qword_100170370 + 8);
    GetRRDisplayString_rdb((qword_100170370 + 8), (*(qword_100170370 + 48) + 4), word_1001789D0);
    LogToFD(v290, "NewLocalRecords %02X %s", v492, v493, v494, v495, v496, v497, v491);
  }

  else
  {
    LogToFD(v290, "NewLocalRecords <NONE>", v485, v486, v487, v488, v489, v490, v1249);
  }

  if (xmmword_100170D20)
  {
    v504 = "";
  }

  else
  {
    v504 = " <NONE>";
  }

  LogToFD(v290, "SPSProxyListChanged%s", v498, v499, v500, v501, v502, v503, v504);
  if (dword_10016D2A4)
  {
    v511 = "";
  }

  else
  {
    v511 = " <NONE>";
  }

  LogToFD(v290, "LocalRemoveEvents%s", v505, v506, v507, v508, v509, v510, v511);
  LogToFD(v290, "m->WABBrowseQueriesCount %d", v512, v513, v514, v515, v516, v517, SDWORD2(xmmword_100170B70));
  LogToFD(v290, "m->WABLBrowseQueriesCount %d", v518, v519, v520, v521, v522, v523, SHIDWORD(xmmword_100170B70));
  LogToFD(v290, "m->WABRegQueriesCount %d", v524, v525, v526, v527, v528, v529, dword_100170B80);
  LogToFD(v290, "m->AutoTargetServices %u", v530, v531, v532, v533, v534, v535, *(mDNSStorage + &loc_100004DBC));
  LogToFD(v290, "m->AutoTargetAWDLIncludedCount %u", v536, v537, v538, v539, v540, v541, dword_10016FCC0);
  LogToFD(v290, "m->AutoTargetAWDLOnlyCount     %u", v542, v543, v544, v545, v546, v547, dword_10016FCC4);
  LogToFD(v290, "                         ABS (hex)  ABS (dec)  REL (hex)  REL (dec)", v548, v549, v550, v551, v552, v553, v1250);
  LogToFD(v290, "m->timenow               %08X %11d", v554, v555, v556, v557, v558, v559, v237);
  LogToFD(v290, "m->timenow_adjust        %08X %11d", v560, v561, v562, v563, v564, v565, dword_10016D254);
  LogToFD(v290, "m->NextScheduledEvent    %08X %11d  %08X %11d", v566, v567, v568, v569, v570, v571, dword_10016D260);
  LogToFD(v290, "m->NextuDNSEvent         %08X %11d  %08X %11d", v572, v573, v574, v575, v576, v577, dword_1001703A0);
  LogToFD(v290, "m->NextSRVUpdate         %08X %11d  %08X %11d", v578, v579, v580, v581, v582, v583, dword_1001703A4);
  LogToFD(v290, "m->NextScheduledNATOp    %08X %11d  %08X %11d", v584, v585, v586, v587, v588, v589, dword_10016D280);
  LogToFD(v290, "m->retryGetAddr          %08X %11d  %08X %11d", v590, v591, v592, v593, v594, v595, dword_100170BAC);
  LogToFD(v290, "m->NextCacheCheck        %08X %11d  %08X %11d", v596, v597, v598, v599, v600, v601, dword_10016D270);
  LogToFD(v290, "m->NextScheduledSPS      %08X %11d  %08X %11d", v602, v603, v604, v605, v606, v607, dword_10016D284);
  LogToFD(v290, "m->NextScheduledKA       %08X %11d  %08X %11d", v608, v609, v610, v611, v612, v613, dword_10016D288);
  LogToFD(v290, "m->NextBonjourDisableTime  %08X %11d  %08X %11d", v614, v615, v616, v617, v618, v619, dword_10016D28C);
  LogToFD(v290, "m->NextScheduledSPRetry  %08X %11d  %08X %11d", v620, v621, v622, v623, v624, v625, dword_10016D2CC);
  LogToFD(v290, "m->DelaySleep            %08X %11d  %08X %11d", v626, v627, v628, v629, v630, v631, qword_10016D2AC);
  LogToFD(v290, "m->NextScheduledQuery    %08X %11d  %08X %11d", v632, v633, v634, v635, v636, v637, dword_10016D274);
  LogToFD(v290, "m->NextScheduledProbe    %08X %11d  %08X %11d", v638, v639, v640, v641, v642, v643, dword_10016D278);
  LogToFD(v290, "m->NextScheduledResponse %08X %11d  %08X %11d", v644, v645, v646, v647, v648, v649, dword_10016D27C);
  LogToFD(v290, "m->SuppressQueries       %08X %11d  %08X %11d", v650, v651, v652, v653, v654, v655, qword_10016D268);
  LogToFD(v290, "m->SuppressResponses     %08X %11d  %08X %11d", v656, v657, v658, v659, v660, v661, SHIDWORD(qword_10016D268));
  LogToFD(v290, "m->SuppressProbes        %08X %11d  %08X %11d", v662, v663, v664, v665, v666, v667, dword_100170398);
  LogToFD(v290, "m->ProbeFailTime         %08X %11d  %08X %11d", v668, v669, v670, v671, v672, v673, SDWORD2(xmmword_100170388));
  LogToFD(v290, "m->DelaySleep            %08X %11d  %08X %11d", v674, v675, v676, v677, v678, v679, qword_10016D2AC);
  LogToFD(v290, "m->SleepLimit            %08X %11d  %08X %11d", v680, v681, v682, v683, v684, v685, SHIDWORD(qword_10016D2AC));
  LogToFD(v290, "m->NextScheduledStopTime  %08X %11d  %08X %11d", v686, v687, v688, v689, v690, v691, dword_10016D2D0);
  LogToFD(v290, "----- Platform Timers -----", v692, v693, v694, v695, v696, v697, v1251);
  LogToFD(v290, "m->NextCacheCheck        %08X %11d  %08X %11d", v698, v699, v700, v701, v702, v703, dword_10016D270);
  LogToFD(v290, "m->NetworkChanged        %08X %11d  %08X %11d", v704, v705, v706, v707, v708, v709, dword_10016D220);
  LogToFD(v290, "m->p->NotifyUser         %08X %11d  %08X %11d", v710, v711, v712, v713, v714, v715, *(mDNSStorage[0] + 492));
  LogToFD(v290, "m->p->HostNameConflict   %08X %11d  %08X %11d", v716, v717, v718, v719, v720, v721, *(mDNSStorage[0] + 496));
  LogToFD(v290, "m->p->KeyChainTimer      %08X %11d  %08X %11d", v722, v723, v724, v725, v726, v727, *(mDNSStorage[0] + 500));
  LogToFD(v290, "----- KQSocketEventSources -----", v728, v729, v730, v731, v732, v733, v1252);
  v740 = gEventSources;
  if (gEventSources)
  {
    do
    {
      LogToFD(v290, "%3d %s %s", v734, v735, v736, v737, v738, v739, *(v740 + 8));
      v740 = *v740;
    }

    while (v740);
  }

  else
  {
    LogToFD(v290, "<None>", v734, v735, v736, v737, v738, v739, v1253);
  }

  LogToFD(v290, "------ Network Interfaces ------", v734, v735, v736, v737, v738, v739, v1254);
  if (*mDNSStorage[0])
  {
    LogToFD(v290, "Struct addr          Registered                     MAC               BSSID                                Functional Type  Interface Address", v741, v742, v743, v744, v745, v746, v1255);
    for (kk = *mDNSStorage[0]; kk; kk = *(kk + 3680))
    {
      if (*(kk + 3696))
      {
        v754 = *(kk + 3748);
        v755 = "Unrecognized";
        if (v754 <= 7)
        {
          v755 = off_100152328[v754];
        }

        LogToFD(v1291, "%p %2ld, %p,  %s %-8.8s %.6a %.6a %s %s %s %s %s %s %-16.16s %#a", v755, kk + 3560, v749, v750, v751, v752, kk);
      }

      else
      {
        LogToFD(v1291, "%p %2ld, %p,  %s %-6s %.6a %.6a %#-14a dormant for %d seconds", v747, v748, v749, v750, v751, v752, kk);
      }
    }
  }

  else
  {
    LogToFD(v290, "<None>", v741, v742, v743, v744, v745, v746, v1255);
  }

  LogToFD(v1291, "----------- DNS Services -----------", v747, v748, v749, v750, v751, v752, v1256);
  DNSServiceManager = Querier_GetDNSServiceManager();
  if (DNSServiceManager)
  {
    v1292[0] = _NSConcreteStackBlock;
    v1292[1] = 0x40000000;
    v1292[2] = __dump_state_to_fd_block_invoke;
    v1292[3] = &__block_descriptor_tmp_5199;
    v1293 = v1291;
    mdns_dns_service_manager_enumerate(DNSServiceManager, v1292);
  }

  LogToFD(v1291, "v4answers %d", v757, v758, v759, v760, v761, v762, *(mDNSStorage[0] + 688));
  LogToFD(v1291, "v6answers %d", v763, v764, v765, v766, v767, v768, *(mDNSStorage[0] + 689));
  LogToFD(v1291, "Last DNS Trigger: %d ms ago", v769, v770, v771, v772, v773, v774, v1279 - *(mDNSStorage[0] + 692));
  LogToFD(v1291, "--------- Mcast Resolvers ----------", v775, v776, v777, v778, v779, v780, v1257);
  v787 = qword_1001703A8;
  if (qword_1001703A8)
  {
    do
    {
      LogToFD(v1291, "Mcast Resolver %##s timeout %u", v781, v782, v783, v784, v785, v786, v787 + 20);
      v787 = *v787;
    }

    while (v787);
  }

  else
  {
    LogToFD(v1291, "<None>", v781, v782, v783, v784, v785, v786, v1258);
  }

  LogToFD(v1291, "------------ Hostnames -------------", v781, v782, v783, v784, v785, v786, v1259);
  v794 = xmmword_100170B70;
  if (xmmword_100170B70)
  {
    do
    {
      GetRRDisplayString_rdb(v794 + 472, (*(v794 + 64) + 4), word_1001789D0);
      LogToFD(v1291, "%##s v4 %d %s", v795, v796, v797, v798, v799, v800, v794 + 208);
      GetRRDisplayString_rdb(v794 + 1648, (*(v794 + 211) + 4), word_1001789D0);
      LogToFD(v1291, "%##s v6 %d %s", v801, v802, v803, v804, v805, v806, v794 + 208);
      v794 = *v794;
    }

    while (v794);
  }

  else
  {
    LogToFD(v1291, "<None>", v788, v789, v790, v791, v792, v793, v1260);
  }

  LogToFD(v1291, "--------------- FQDN ---------------", v807, v808, v809, v810, v811, v812, v1261);
  if (byte_100170A70[0])
  {
    LogToFD(v1291, "%##s", v813, v814, v815, v816, v817, v818, byte_100170A70);
  }

  else
  {
    LogToFD(v1291, "<None>", v813, v814, v815, v816, v817, v818, v1262);
  }

  LogToFD(v1291, "----    DNS Cache Analytics     -----", v819, v820, v821, v822, v823, v824, v1263);
  LogToFD(v1291, "----    Unicast Requests", v825, v826, v827, v828, v829, v830, v1264);
  LogToFD(v1291, "Cache Hit: %llu", v831, v832, v833, v834, v835, v836, sCacheRequest_UnicastHitCount);
  LogToFD(v1291, "Cache Miss: %llu", v837, v838, v839, v840, v841, v842, sCacheRequest_UnicastMissCount);
  LogToFD(v1291, "----    Unicast Usage", v843, v844, v845, v846, v847, v848, v1265);
  LogToFD(v1291, "Cache Hit: %llu", v849, v850, v851, v852, v853, v854, sCacheUsage_UnicastHitCount);
  LogToFD(v1291, "Cache Miss: %llu", v855, v856, v857, v858, v859, v860, sCacheUsage_UnicastMissCount);
  LogToFD(v1291, "----    Multicast Requests", v861, v862, v863, v864, v865, v866, v1266);
  LogToFD(v1291, "Cache Hit: %llu", v867, v868, v869, v870, v871, v872, sCacheRequest_MulticastHitCount);
  LogToFD(v1291, "Cache Miss: %llu", v873, v874, v875, v876, v877, v878, sCacheRequest_MulticastMissCount);
  LogToFD(v1291, "----    Multicast Usage", v879, v880, v881, v882, v883, v884, v1267);
  LogToFD(v1291, "Cache Hit: %llu", v885, v886, v887, v888, v889, v890, sCacheUsage_MulticastHitCount);
  LogToFD(v1291, "Cache Miss: %llu", v891, v892, v893, v894, v895, v896, sCacheUsage_MulticastMissCount);
  LogToFD(v1291, "----    DNS Query Analytics     -----", v897, v898, v899, v900, v901, v902, v1268);
  v909 = 0;
  v910 = &qword_100178C00;
  do
  {
    if (*(v910 - 6))
    {
      LogToFD(v1291, "----    Network:   %s\n        Transport: %s", v903, v904, v905, v906, v907, v908, off_100153BE8[v909]);
      LogToFD(v1291, "Latency: %llums", v911, v912, v913, v914, v915, v916, *(v910 - 5) / *(v910 - 6));
      LogToFD(v1291, "Query Bytes: %llu", v917, v918, v919, v920, v921, v922, *(v910 - 4));
      LogToFD(v1291, "Reply Bytes: %llu", v923, v924, v925, v926, v927, v928, *(v910 - 3));
      LogToFD(v1291, "----    V4", v929, v930, v931, v932, v933, v934, v1270);
      LogToFD(v1291, "Queries: %llu", v935, v936, v937, v938, v939, v940, *(v910 - 2));
      LogToFD(v1291, "Reply Pos: %llu", v941, v942, v943, v944, v945, v946, *(v910 - 1));
      LogToFD(v1291, "Reply Neg: %llu", v947, v948, v949, v950, v951, v952, *v910);
      LogToFD(v1291, "----    V6", v953, v954, v955, v956, v957, v958, v1271);
      LogToFD(v1291, "Queries: %llu", v959, v960, v961, v962, v963, v964, v910[1]);
      LogToFD(v1291, "Reply Pos: %llu", v965, v966, v967, v968, v969, v970, v910[2]);
      LogToFD(v1291, "Reply Neg: %llu", v971, v972, v973, v974, v975, v976, v910[3]);
      LogToFD(v1291, "----    HTTPS", v977, v978, v979, v980, v981, v982, v1272);
      LogToFD(v1291, "Queries: %llu", v983, v984, v985, v986, v987, v988, v910[4]);
      LogToFD(v1291, "Reply Pos: %llu", v989, v990, v991, v992, v993, v994, v910[5]);
      LogToFD(v1291, "Reply Neg: %llu", v995, v996, v997, v998, v999, v1000, v910[6]);
    }

    ++v909;
    v910 += 13;
  }

  while (v909 != 4);
  v1001 = v1291;
  LogToFD(v1291, "----    Unicast Assist", v903, v904, v905, v906, v907, v908, v1269);
  LogToFD(v1291, "Assist Unicast: %llu", v1002, v1003, v1004, v1005, v1006, v1007, sUnicastAssist_UnicastCount);
  LogToFD(v1291, "Assist Multicast: %llu", v1008, v1009, v1010, v1011, v1012, v1013, sUnicastAssist_MulticastCount);
  LogToFD(v1291, "Non-assist Unicast: %llu", v1014, v1015, v1016, v1017, v1018, v1019, sNonUnicastAssist_UnicastCount);
  LogToFD(v1291, "Non-assist Multicast: %llu", v1020, v1021, v1022, v1023, v1024, v1025, sNonUnicastAssist_MulticastCount);
  LogToFD(v1291, "----    Unicast Assist Presence", v1026, v1027, v1028, v1029, v1030, v1031, v1273);
  LogToFD(v1291, "Enabled: %llu", v1032, v1033, v1034, v1035, v1036, v1037, sUAPresence_Count_enabled);
  LogToFD(v1291, "Asserts: %llu", v1038, v1039, v1040, v1041, v1042, v1043, sUAPresence_Count_assert);
  LogToFD(v1291, "Assert addrs: %llu", v1044, v1045, v1046, v1047, v1048, v1049, sUAPresence_Count_assert_addrs);
  LogToFD(v1291, "Assert hashes: %llu", v1050, v1051, v1052, v1053, v1054, v1055, sUAPresence_Count_assert_hashes);
  LogToFD(v1291, "Updates received: %llu", v1056, v1057, v1058, v1059, v1060, v1061, sUAPresence_Count_update);
  LogToFD(v1291, "Update devices: %llu", v1062, v1063, v1064, v1065, v1066, v1067, sUAPresence_Count_update_devices);
  LogToFD(v1291, "Update devices old: %llu", v1068, v1069, v1070, v1071, v1072, v1073, sUAPresence_Count_update_devices_old);
  LogToFD(v1291, "Update devices invalid: %llu", v1074, v1075, v1076, v1077, v1078, v1079, sUAPresence_Count_update_devices_invalid);
  LogToFD(v1291, "Update devices missing: %llu", v1080, v1081, v1082, v1083, v1084, v1085, sUAPresence_Count_update_devices_missing);
  LogToFD(v1291, "Addrs: %llu", v1086, v1087, v1088, v1089, v1090, v1091, sUAPresence_Count_addrs);
  LogToFD(v1291, "Invalid addrs: %llu", v1092, v1093, v1094, v1095, v1096, v1097, sUAPresence_Count_addrs_invalid);
  LogToFD(v1291, "Qhashes: %llu", v1098, v1099, v1100, v1101, v1102, v1103, sUAPresence_Count_qhashes);
  LogToFD(v1291, "Qhashes found via multicast: %llu", v1104, v1105, v1106, v1107, v1108, v1109, sUAPresence_Count_qhashes_found_multicast);
  LogToFD(v1291, "Qhashes found via unicast: %llu", v1110, v1111, v1112, v1113, v1114, v1115, sUAPresence_Count_qhashes_found_unicast);
  LogToFD(v1291, "Qhashes not found: %llu", v1116, v1117, v1118, v1119, v1120, v1121, sUAPresence_Count_qhashes_not_found);
  if (_os_feature_enabled_impl())
  {
    v1128 = mDNS_TimeNow(mDNSStorage);
    if (v1128 <= 1)
    {
      v1129 = 1;
    }

    else
    {
      v1129 = v1128;
    }

    v1290 = v1129;
    bzero(&v1298, 0x400uLL);
    v1297 = 0;
    memset(v1296, 0, sizeof(v1296));
    LogToFD(v1291, "----    Unicast Assist Cache    -----", v1130, v1131, v1132, v1133, v1134, v1135, v1274);
    LogToFD(v1291, "----    p=presence, P=presence-only", v1136, v1137, v1138, v1139, v1140, v1141, v1275);
    LogToFD(v1291, "----    Cache Records", v1142, v1143, v1144, v1145, v1146, v1147, v1276);
    v1154 = s_interface_head_0;
    if (s_interface_head_0)
    {
      v1155 = 0;
      v1156 = 0;
      v1157 = 0;
      v1158 = 0;
      do
      {
        v1281 = v1155;
        LogToFD(v1001, "ifhash %x ifid %2.2d", v1148, v1149, v1150, v1151, v1152, v1153, *(v1154 + 32));
        v1156 += 40;
        v1280 = v1154;
        v1159 = *(v1154 + 8);
        if (v1159)
        {
          do
          {
            v1288 = v1158;
            if (*(v1159 + 16) == 4)
            {
              mDNS_snprintf(v1296, 40, "%.4a");
            }

            else
            {
              mDNS_snprintf(v1296, 40, "%.16a");
            }

            LOBYTE(v1298.tv_sec) = 0;
            v1160 = mDNS_snprintf(&v1298, 1024, "%-39s - ", v1296);
            v1156 += 40;
            v1283 = v1159;
            v1167 = *(v1159 + 8);
            if (v1167)
            {
              v1168 = v1160;
              v1169 = 0;
              v1170 = v1160;
              do
              {
                if ((v1169 + 1) < 6)
                {
                  ++v1169;
                }

                else
                {
                  v1170 += mDNS_snprintf(&v1298 + v1170, 1024 - v1170, ", \n%-44s", " ");
                  v1169 -= 4;
                  v1168 = v1170;
                }

                v1171 = v1290 - *(v1167 + 3);
                v1172 = "";
                if (v1168 != v1170)
                {
                  v1172 = ", ";
                }

                v1173 = mDNS_snprintf(&v1298 + v1170, 1024 - v1170, "%s", v1172) + v1170;
                v1174 = &v1298 + v1173;
                v1175 = 1024 - v1173;
                if (v1171 < 3600000)
                {
                  if (v1171 < 60000)
                  {
                    v1176 = mDNS_snprintf(v1174, v1175, "%ds");
                  }

                  else
                  {
                    v1176 = mDNS_snprintf(v1174, v1175, "%d:%2.2d");
                  }
                }

                else
                {
                  v1176 = mDNS_snprintf(v1174, v1175, "%d:%2.2d:%2.2d");
                }

                v1170 = mDNS_snprintf(&v1298 + v1176 + v1173, 1024 - (v1176 + v1173), "|%x", *(v1167 + 2)) + v1176 + v1173;
                if (*(v1167 + 18) == 1)
                {
                  v1177 = &v1298 + v1170;
                  v1178 = 1024 - v1170;
                  if (*(v1167 + 19))
                  {
                    v1179 = mDNS_snprintf(v1177, v1178, "|p");
                  }

                  else
                  {
                    v1179 = mDNS_snprintf(v1177, v1178, "|P");
                  }

                  v1170 += v1179;
                }

                v1156 += 24;
                ++v1157;
                v1167 = *v1167;
              }

              while (v1167);
            }

            v1158 = v1288 + 1;
            v1001 = v1291;
            LogToFD(v1291, "  %s", v1161, v1162, v1163, v1164, v1165, v1166, &v1298);
            v1159 = *v1283;
          }

          while (*v1283);
        }

        v1155 = v1281 + 1;
        v1154 = *v1280;
      }

      while (*v1280);
    }

    else
    {
      LODWORD(v1158) = 0;
      v1157 = 0;
      LODWORD(v1156) = 0;
      LODWORD(v1155) = 0;
    }

    LogToFD(v1001, "----    Cache Record Stats", v1148, v1149, v1150, v1151, v1152, v1153, v1277);
    LogToFD(v1001, "If Hash Count: %lu", v1187, v1188, v1189, v1190, v1191, v1192, v1155);
    LogToFD(v1001, "Addr Count:    %lu", v1193, v1194, v1195, v1196, v1197, v1198, v1158);
    LogToFD(v1001, "Qhash Count:   %lu", v1199, v1200, v1201, v1202, v1203, v1204, v1157);
    v1278 = v1156;
    v1186 = "Total Size:    %lu bytes";
  }

  else
  {
    LogToFD(v1291, "----    Unicast Assist Cache    -----", v1122, v1123, v1124, v1125, v1126, v1127, v1274);
    v1186 = "Feature Flag: mDNSResponder/unicast_assist_cache DISABLED";
  }

  LogToFD(v1001, v1186, v1180, v1181, v1182, v1183, v1184, v1185, v1278);
  LogToFD(v1001, "Date: %s", v1205, v1206, v1207, v1208, v1209, v1210, v1295);
  v1211 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v1298.tv_sec) = 136446210;
      *(&v1298.tv_sec + 4) = v1295;
      goto LABEL_232;
    }
  }

  else
  {
    v1211 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v1298.tv_sec) = 136446210;
      *(&v1298.tv_sec + 4) = v1295;
LABEL_232:
      _os_log_impl(&_mh_execute_header, v1211, OS_LOG_TYPE_DEFAULT, "---- END STATE LOG ---- (%{public}s)", &v1298, 0xCu);
    }
  }

  return LogToFD(v1001, "----  END STATE LOG  ---- %s %s %d", v1212, v1213, v1214, v1215, v1216, v1217, "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)");
}

uint64_t __dump_state_to_fd_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a2 + 16);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    v10 = v9[3];
    if (v10)
    {
      v11 = v10(a2, 0, 0, a4, a5, a6, a7, a8);
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = "<missing description>";
  if (v11)
  {
    LODWORD(v12) = v11;
  }

  LogToFD(*(a1 + 32), "%s", a3, a4, a5, a6, a7, a8, v12);
  if (v11)
  {
    free(v11);
  }

  return 1;
}

void UpdateDebugState()
{
  v12 = 0;
  valuePtr = 1;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v1 = Mutable;
    v2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v2)
    {
      v3 = v2;
      v4 = CFNumberCreate(0, kCFNumberSInt32Type, &v12);
      if (v4)
      {
        v5 = v4;
        if (mDNS_LoggingEnabled)
        {
          v6 = v3;
        }

        else
        {
          v6 = v4;
        }

        CFDictionarySetValue(v1, @"VerboseLogging", v6);
        if (mDNS_PacketLoggingEnabled)
        {
          v7 = v3;
        }

        else
        {
          v7 = v5;
        }

        CFDictionarySetValue(v1, @"PacketLogging", v7);
        if (mDNS_McastLoggingEnabled)
        {
          v8 = v3;
        }

        else
        {
          v8 = v5;
        }

        CFDictionarySetValue(v1, @"McastLogging", v8);
        if (mDNS_McastTracingEnabled)
        {
          v9 = v3;
        }

        else
        {
          v9 = v5;
        }

        CFDictionarySetValue(v1, @"McastTracing", v9);
        CFRelease(v3);
        CFRelease(v5);
        mDNSDynamicStoreSetConfig(6, v1);
        v10 = v1;
      }

      else
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UpdateDebugState: Could not create CFNumber zero");
        v10 = v3;
      }

      CFRelease(v10);
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UpdateDebugState: Could not create CFNumber one");
    }
  }

  else
  {
    v11 = mDNSLogCategory_Default;

    LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "UpdateDebugState: Could not create dict");
  }
}

BOOL PreferencesGetValueBool(const __CFString *a1, _BOOL8 a2)
{
  v3 = CFPreferencesCopyAppValue(a1, @"com.apple.mDNSResponder");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      a2 = CFBooleanGetValue(v4) != 0;
    }

    CFRelease(v4);
  }

  return a2;
}

uint64_t PreferencesGetValueInt(const __CFString *a1, uint64_t a2)
{
  v3 = CFPreferencesCopyAppValue(a1, @"com.apple.mDNSResponder");
  if (v3)
  {
    v4 = v3;
    valuePtr = 0;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberIntType, &valuePtr))
      {
        a2 = valuePtr;
      }

      else
      {
        a2 = a2;
      }
    }

    CFRelease(v4);
  }

  return a2;
}

void mDNSPreferencesSetNames(int a1, __int128 *a2, __int128 *a3)
{
  v6 = (mDNSStorage[0] + 364);
  v7 = (mDNSStorage[0] + 428);
  v8 = (mDNSStorage[0] + 236);
  v9 = (mDNSStorage[0] + 300);
  if (a1 == 1)
  {
    v10 = (mDNSStorage[0] + 428);
  }

  else
  {
    v10 = (mDNSStorage[0] + 300);
  }

  if (a1 == 1)
  {
    v11 = (mDNSStorage[0] + 364);
  }

  else
  {
    v11 = (mDNSStorage[0] + 236);
  }

  if (a2 && a3)
  {
    v12 = *a2;
    if (v12 == *a3 && !memcmp(a2 + 1, a3 + 1, *a2) && v12 == *v11 && !memcmp(a2 + 1, v11 + 1, v12) && v12 == *v10 && !memcmp(a3 + 1, v10 + 1, v12))
    {
      return;
    }
  }

  else if (!a2)
  {
    *v11 = 0;
    if (a3)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v13 = *a2;
  v14 = a2[1];
  v15 = a2[3];
  *(v11 + 2) = a2[2];
  *(v11 + 3) = v15;
  *v11 = v13;
  *(v11 + 1) = v14;
  if (a3)
  {
LABEL_18:
    v16 = *a3;
    v17 = a3[1];
    v18 = a3[3];
    v10[2] = a3[2];
    v10[3] = v18;
    *v10 = v16;
    v10[1] = v17;
    goto LABEL_21;
  }

LABEL_20:
  *v10 = 0;
LABEL_21:
  v19 = mDNSLogCategory_State;
  v20 = os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT);
  if (a1 != 1)
  {
    if (!v20)
    {
      goto LABEL_37;
    }

    v25 = *v8 + 1;
    v26 = *v9 + 1;
    if (a2)
    {
      v27 = *a2 + 1;
      if (a3)
      {
LABEL_29:
        v28 = *a3 + 1;
LABEL_35:
        *buf = 141560835;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v25;
        *&buf[18] = 2101;
        *&buf[20] = v8;
        *&buf[28] = 2160;
        *&buf[30] = 1752392040;
        *&buf[38] = 1040;
        *&buf[40] = v26;
        *&buf[44] = 2101;
        *&buf[46] = v9;
        *&buf[54] = 2160;
        *&buf[56] = 1752392040;
        LOWORD(v57) = 1040;
        *(&v57 + 2) = v27;
        WORD3(v57) = 2101;
        *(&v57 + 1) = a2;
        LOWORD(v58) = 2160;
        *(&v58 + 2) = 1752392040;
        WORD5(v58) = 1040;
        HIDWORD(v58) = v28;
        LOWORD(v59) = 2101;
        *(&v59 + 2) = a3;
        v29 = "mDNSPreferencesSetNames: changing local host name -- last change: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P -> %{sensitive, mask.hash, mdnsresponder:domain_label}.*P, current change: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P -> %{sensitive, mask.hash, mdnsresponder:domain_label}.*P";
        goto LABEL_36;
      }
    }

    else
    {
      v27 = 0;
      if (a3)
      {
        goto LABEL_29;
      }
    }

    v28 = 0;
    goto LABEL_35;
  }

  if (!v20)
  {
    goto LABEL_37;
  }

  v21 = *v6 + 1;
  v22 = *v7 + 1;
  if (!a2)
  {
    v23 = 0;
    if (a3)
    {
      goto LABEL_25;
    }

LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

  v23 = *a2 + 1;
  if (!a3)
  {
    goto LABEL_31;
  }

LABEL_25:
  v24 = *a3 + 1;
LABEL_32:
  *buf = 141560835;
  *&buf[4] = 1752392040;
  *&buf[12] = 1040;
  *&buf[14] = v21;
  *&buf[18] = 2101;
  *&buf[20] = v6;
  *&buf[28] = 2160;
  *&buf[30] = 1752392040;
  *&buf[38] = 1040;
  *&buf[40] = v22;
  *&buf[44] = 2101;
  *&buf[46] = v7;
  *&buf[54] = 2160;
  *&buf[56] = 1752392040;
  LOWORD(v57) = 1040;
  *(&v57 + 2) = v23;
  WORD3(v57) = 2101;
  *(&v57 + 1) = a2;
  LOWORD(v58) = 2160;
  *(&v58 + 2) = 1752392040;
  WORD5(v58) = 1040;
  HIDWORD(v58) = v24;
  LOWORD(v59) = 2101;
  *(&v59 + 2) = a3;
  v29 = "mDNSPreferencesSetNames: changing computer name -- last change: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P -> %{sensitive, mask.hash, mdnsresponder:domain_label}.*P, current change: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P -> %{sensitive, mask.hash, mdnsresponder:domain_label}.*P";
LABEL_36:
  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v29, buf, 0x6Au);
LABEL_37:
  v32 = *a2;
  v31 = a2 + 1;
  v30 = v32;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  memset(buf, 0, sizeof(buf));
  if (v32 <= 0x3FuLL)
  {
    if (v31 >= &v31[v30])
    {
      v33 = buf;
    }

    else
    {
      v33 = buf;
      do
      {
        v34 = *v31++;
        *v33++ = v34;
        --v30;
      }

      while (v30);
    }

    *v33 = 0;
  }

  if (a3)
  {
    v37 = *a3;
    v36 = a3 + 1;
    v35 = v37;
    if (v37 <= 0x3FuLL)
    {
      v38 = &v57;
      if (v36 < &v36[v35])
      {
        v38 = &v57;
        do
        {
          v39 = *v36++;
          *v38 = v39;
          v38 = (v38 + 1);
          --v35;
        }

        while (v35);
      }

      *v38 = 0;
    }
  }

  if (v57 && strcmp(buf, &v57))
  {
    v40 = CFStringCreateWithCString(kCFAllocatorDefault, &v57, 0x8000100u);
    v41 = v40;
    if (a1 == 1)
    {
      if (!v40)
      {
        v48 = -6700;
LABEL_70:
        v49 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          v49 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        nameEncoding = 141558531;
        v62 = 1752392040;
        v63 = 2085;
        v64 = &v57;
        v65 = 2048;
        v66 = v48;
        v50 = "Failed to set computer name -- name: %{sensitive, mask.hash}s, error: %ld";
LABEL_86:
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, v50, &nameEncoding, 0x20u);
        return;
      }

      v55 = 0;
      v42 = _mdns_system_create_locked_prefs(&v55);
      v54 = v42;
      if (!v55)
      {
        v43 = v42;
        nameEncoding = 0;
        v44 = SCDynamicStoreCopyComputerName(0, &nameEncoding);
        if (v44)
        {
          v45 = nameEncoding;
        }

        else
        {
          v45 = 134217984;
        }

        if (v44)
        {
          CFRelease(v44);
        }

        if (SCPreferencesSetComputerName(v43, v41, v45))
        {
          v55 = 0;
LABEL_68:
          v55 = _mdns_system_commit_and_apply_prefs(v43);
          goto LABEL_69;
        }

        if (SCError())
        {
          v55 = SCError();
          if (!v55)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v55 = -6700;
        }

        if (mdns_system_log_s_once != -1)
        {
          dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
        }

        v52 = mdns_system_log_s_log;
        if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
        {
          nameEncoding = 138412802;
          v62 = v41;
          v63 = 2048;
          v64 = v45;
          v65 = 2048;
          v66 = v55;
          _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "SCPreferencesSetComputerName failed -- name: '%@', encoding: 0x%lX, error: %{mdns:err}ld", &nameEncoding, 0x20u);
        }
      }

LABEL_69:
      _mdns_system_unlock_and_forget_prefs(&v54);
      v48 = v55;
      CFRelease(v41);
      if (!v48)
      {
        return;
      }

      goto LABEL_70;
    }

    if (!v40)
    {
      v51 = -6700;
LABEL_78:
      v49 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        v49 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      nameEncoding = 141558531;
      v62 = 1752392040;
      v63 = 2085;
      v64 = &v57;
      v65 = 2048;
      v66 = v51;
      v50 = "Failed to set local hostname -- name: %{sensitive, mask.hash}s, error: %ld";
      goto LABEL_86;
    }

    v55 = 0;
    v46 = _mdns_system_create_locked_prefs(&v55);
    v54 = v46;
    if (!v55)
    {
      v47 = v46;
      if (SCPreferencesSetLocalHostName(v46, v41))
      {
        v55 = 0;
LABEL_76:
        v55 = _mdns_system_commit_and_apply_prefs(v47);
        goto LABEL_77;
      }

      if (SCError())
      {
        v55 = SCError();
        if (!v55)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v55 = -6700;
      }

      if (mdns_system_log_s_once != -1)
      {
        dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
      }

      v53 = mdns_system_log_s_log;
      if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
      {
        nameEncoding = 138412546;
        v62 = v41;
        v63 = 2048;
        v64 = v55;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "SCPreferencesSetLocalHostName failed -- name: '%@', error: %{mdns:err}ld", &nameEncoding, 0x16u);
      }
    }

LABEL_77:
    _mdns_system_unlock_and_forget_prefs(&v54);
    v51 = v55;
    CFRelease(v41);
    if (!v51)
    {
      return;
    }

    goto LABEL_78;
  }
}

void SetLowWater(uint64_t a1, int a2)
{
  v17 = a2;
  v3 = *(a1 + 16);
  if ((v3 & 0x80000000) == 0 && setsockopt(v3, 0xFFFF, 4100, &v17, 4u) < 0)
  {
    v4 = mDNSLogCategory_Default;
    v5 = *(a1 + 16);
    v6 = v17;
    v7 = *__error();
    v8 = __error();
    v9 = strerror(*v8);
    LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, "SO_RCVLOWAT IPv4 %d error %d errno %d (%s)", v5, v6, v7, v9);
  }

  v10 = *(a1 + 48);
  if ((v10 & 0x80000000) == 0 && setsockopt(v10, 0xFFFF, 4100, &v17, 4u) < 0)
  {
    v11 = mDNSLogCategory_Default;
    v12 = *(a1 + 48);
    v13 = v17;
    v14 = *__error();
    v15 = __error();
    v16 = strerror(*v15);
    LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "SO_RCVLOWAT IPv6 %d error %d errno %d (%s)", v12, v13, v14, v16);
  }
}

void EnableSocketReadEvent(int a1, void *a2)
{
  v3 = KQueueSet(a1, 4u, -1, a2);
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
  if (v3)
  {
    v7 = v3;
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v4 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    v12 = 67109376;
    v13 = a1;
    v14 = 2048;
    v15 = v7;
    v8 = "Failed to enable read kevent for socket -- socket: %d, error: %{mdns:err}ld";
    v9 = v4;
    v10 = OS_LOG_TYPE_FAULT;
    v11 = 18;
  }

  else
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v12 = 67109120;
      v13 = a1;
      v8 = "Enabled read kevent for socket -- socket: %d";
    }

    else
    {
      v4 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v12 = 67109120;
      v13 = a1;
      v8 = "Enabled read kevent for socket -- socket: %d";
    }

    v9 = v4;
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 8;
  }

  _os_log_impl(&_mh_execute_header, v9, v10, v8, &v12, v11);
}

void SignalCallback(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  v3 = *(a2 + 20);
  if (v3 > 26)
  {
    if (v3 > 28)
    {
      if (v3 == 29)
      {
        v11 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_136;
          }

          LOWORD(v35) = 0;
          v12 = "Sending SIGINFO to mDNSResponder daemon is deprecated. To trigger state dump, please use 'dns-sd -O', enter 'dns-sd -h' for more information";
        }

        else
        {
          v11 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_136;
          }

          LOWORD(v35) = 0;
          v12 = "Sending SIGINFO to mDNSResponder daemon is deprecated. To trigger state dump, please use 'dns-sd -O', enter 'dns-sd -h' for more information";
        }

LABEL_131:
        v33 = v11;
        v34 = 2;
LABEL_135:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v12, &v35, v34);
        goto LABEL_136;
      }

      if (v3 != 30)
      {
        if (v3 == 31)
        {
          mDNS_PacketLoggingEnabled = 1;
          v4 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_103;
            }

            v35 = 136446210;
            v36 = "Enabled";
          }

          else
          {
            v4 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_103;
            }

            v35 = 136446210;
            v36 = "Enabled";
          }

          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SIGUSR2: Packet Logging %{public}s on Apple Platforms", &v35, 0xCu);
LABEL_103:
          if (mDNS_McastLoggingEnabled)
          {
            v29 = mDNS_PacketLoggingEnabled;
          }

          else
          {
            v29 = 0;
          }

          mDNS_McastTracingEnabled = v29;
          v26 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              v31 = "Disabled";
              if (v29)
              {
                v31 = "Enabled";
              }

              v35 = 136446210;
              v36 = v31;
              v6 = "SIGUSR2: Multicast Tracing is %{public}s";
              goto LABEL_116;
            }
          }

          else
          {
            v26 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v30 = "Disabled";
              if (v29)
              {
                v30 = "Enabled";
              }

              v35 = 136446210;
              v36 = v30;
              v6 = "SIGUSR2: Multicast Tracing is %{public}s";
LABEL_116:
              v18 = v26;
              v19 = 12;
              goto LABEL_117;
            }
          }

LABEL_118:
          UpdateDebugState();
          goto LABEL_136;
        }

        goto LABEL_57;
      }

      mDNS_LoggingEnabled = 1;
      v16 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_122;
        }

        v35 = 136446210;
        v36 = "Enabled";
      }

      else
      {
        v16 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_122;
        }

        v35 = 136446210;
        v36 = "Enabled";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SIGUSR1: Logging %{public}s on Apple Platforms", &v35, 0xCu);
LABEL_122:
      if (mDNS_LoggingEnabled)
      {
        v32 = 50;
      }

      else
      {
        v32 = 250;
      }

      WatchDogReportingThreshold = v32;
      UpdateDebugState();
      v11 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_136;
        }

        LOWORD(v35) = 0;
        v12 = "USR1 Logging Enabled";
      }

      else
      {
        v11 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_136;
        }

        LOWORD(v35) = 0;
        v12 = "USR1 Logging Enabled";
      }

      goto LABEL_131;
    }

    if (v3 != 27)
    {
      v7 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }

        LOWORD(v35) = 0;
      }

      else
      {
        v7 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }

        LOWORD(v35) = 0;
      }

      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SIGWINCH: Purge unicast assist cache", &v35, 2u);
LABEL_67:
      if (_os_feature_enabled_impl())
      {
        while (1)
        {
          v20 = s_interface_head_0;
          if (!s_interface_head_0)
          {
            break;
          }

          s_interface_head_0 = *s_interface_head_0;
          _unicast_assist_cache_free_interface(v20);
        }
      }

      goto LABEL_136;
    }

    v13 = mDNS_McastLoggingEnabled;
    mDNS_McastLoggingEnabled = mDNS_McastLoggingEnabled == 0;
    v14 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_87;
      }

      v24 = "Disabled";
      if (!v13)
      {
        v24 = "Enabled";
      }

      v35 = 136446210;
      v36 = v24;
    }

    else
    {
      v14 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_87;
      }

      v15 = "Disabled";
      if (!v13)
      {
        v15 = "Enabled";
      }

      v35 = 136446210;
      v36 = v15;
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SIGPROF: Multicast Logging %{public}s", &v35, 0xCu);
LABEL_87:
    LogMcastStateInfo(0, 1, 1);
    if (mDNS_McastLoggingEnabled)
    {
      v25 = mDNS_PacketLoggingEnabled;
    }

    else
    {
      v25 = 0;
    }

    mDNS_McastTracingEnabled = v25;
    v26 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v28 = "Disabled";
        if (v25)
        {
          v28 = "Enabled";
        }

        v35 = 136446210;
        v36 = v28;
        v6 = "SIGPROF: Multicast Tracing is %{public}s";
        goto LABEL_116;
      }
    }

    else
    {
      v26 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v27 = "Disabled";
        if (v25)
        {
          v27 = "Enabled";
        }

        v35 = 136446210;
        v36 = v27;
        v6 = "SIGPROF: Multicast Tracing is %{public}s";
        goto LABEL_116;
      }
    }

    goto LABEL_118;
  }

  if (v3 > 14)
  {
    if (v3 != 15)
    {
      if (v3 == 18)
      {
        mDNS_McastTracingEnabled = 0;
        mDNS_McastLoggingEnabled = 0;
        mDNS_PacketLoggingEnabled = 0;
        mDNS_LoggingEnabled = 0;
        v5 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_118;
          }

          LOWORD(v35) = 0;
          v6 = "All mDNSResponder Debug Logging/Tracing Disabled (USR1/USR2/PROF)";
        }

        else
        {
          v5 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_118;
          }

          LOWORD(v35) = 0;
          v6 = "All mDNSResponder Debug Logging/Tracing Disabled (USR1/USR2/PROF)";
        }

        v18 = v5;
        v19 = 2;
LABEL_117:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v6, &v35, v19);
        goto LABEL_118;
      }

      goto LABEL_57;
    }

LABEL_25:
    v8 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136446210;
        v36 = "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)";
        goto LABEL_31;
      }
    }

    else
    {
      v8 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136446210;
        v36 = "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s stopping", &v35, 0xCu);
      }
    }

    while (all_requests)
    {
      AbortUnlinkAndFree(all_requests);
    }

    for (i = LocalDomainEnumRecords; LocalDomainEnumRecords; i = LocalDomainEnumRecords)
    {
      LocalDomainEnumRecords = *i;
      mDNS_Deregister(mDNSStorage, i + 1);
    }

    if ((listenfd & 0x80000000) == 0)
    {
      close(listenfd);
      unlink("/var/run/mDNSResponder");
    }

    mDNS_StartExit();
    goto LABEL_136;
  }

  if (v3 == 1)
  {
    v10 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      LOWORD(v35) = 0;
    }

    else
    {
      v10 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      LOWORD(v35) = 0;
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SIGHUP: Purge cache", &v35, 2u);
LABEL_73:
    mDNS_Lock_(mDNSStorage, "SignalCallback", 637);
    for (j = 0; j != 499; ++j)
    {
      for (k = mDNSStorage[j + 34]; k; k = *k)
      {
        for (m = k[2]; m; m = *m)
        {
          mDNS_PurgeCacheResourceRecord(mDNSStorage, m);
        }
      }
    }

    mDNSCoreRestartQueries(mDNSStorage);
    mDNS_Unlock_(mDNSStorage, "SignalCallback", 649);
    goto LABEL_136;
  }

  if (v3 == 2)
  {
    goto LABEL_25;
  }

LABEL_57:
  v17 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_136;
    }

    v35 = 67109120;
    LODWORD(v36) = v3;
    v12 = "SignalCallback: Unknown signal %d";
    goto LABEL_134;
  }

  v17 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 67109120;
    LODWORD(v36) = v3;
    v12 = "SignalCallback: Unknown signal %d";
LABEL_134:
    v33 = v17;
    v34 = 8;
    goto LABEL_135;
  }

LABEL_136:
  KQueueUnlock("Unix Signal");
}

void HandleSIG(mach_msg_id_t a1)
{
  msg.msgh_remote_port = signal_port;
  msg.msgh_local_port = 0;
  *&msg.msgh_bits = 0x1800000014;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = a1;
  v2 = mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0);
  if (v2)
  {
    if (v2 == 268435460)
    {
      mach_msg_destroy(&msg);
    }

    if (a1 == 15 || a1 == 2)
    {
      exit(-1);
    }
  }
}

uint64_t SendDict_ToServer(void *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = -3;
  HelperLog("SendDict_ToServer Sending msg to Daemon", a1);
  mach_service = xpc_connection_create_mach_service("com.apple.mDNSResponder_Helper", HelperQueue, 2uLL);
  if (mach_service)
  {
    v3 = mach_service;
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_5437);
    xpc_connection_activate(v3);
    v4 = dispatch_semaphore_create(0);
    if (v4)
    {
      v5 = v4;
      dispatch_retain(v4);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = __SendDict_ToServer_block_invoke;
      handler[3] = &unk_100152370;
      handler[4] = &v11;
      handler[5] = &v15;
      handler[6] = v5;
      xpc_connection_send_message_with_reply(v3, a1, HelperQueue, handler);
      v6 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v5, v6))
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendDict_ToServer: UNEXPECTED WAIT_TIME in dispatch_semaphore_wait");
        xpc_connection_cancel(v3);
        dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      }

      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendDict_ToServer returning with errorcode[%d]", *(v12 + 6));
      }

      xpc_connection_cancel(v3);
      xpc_release(v3);
      dispatch_release(v5);
    }

    else
    {
      xpc_connection_cancel(v3);
      xpc_release(v3);
    }
  }

  v7 = v16[3];
  if (v7)
  {
    xpc_release(v7);
    v16[3] = 0;
  }

  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void HelperLog(const char *a1, xpc_object_t object)
{
  v3 = xpc_copy_description(object);
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "HelperLog %s: %s", a1, v3);
  }

  if (v3)
  {

    free(v3);
  }
}

char *_mdns_obj_copy_description(void *a1)
{
  v2 = 0;
  asprintf(&v2, "<%s: %p>", *(a1[2] + 8), a1);
  return v2;
}

char *_mdns_obj_copy_description_as_cfstring(uint64_t a1)
{
  v1 = (a1 + 16);
  do
  {
    v1 = *v1;
    if (!v1)
    {
      return 0;
    }

    v2 = v1[3];
  }

  while (!v2);
  result = v2();
  if (result)
  {
    v4 = result;
    result = CFStringCreateWithCStringNoCopy(0, result, 0x8000100u, kCFAllocatorMalloc);
    if (!result)
    {
      free(v4);
      return 0;
    }
  }

  return result;
}

char *_dnssec_obj_rr_rrsig_copy_rdata_rfc_description(uint64_t a1, int *a2)
{
  *&v42[7] = 0;
  *v42 = 0;
  *&v41[7] = 0;
  *v41 = 0;
  v4 = *(a1 + 24);
  v39 = bswap32(*(v4 + 12));
  v38 = bswap32(*(v4 + 8));
  memset(&v37, 0, sizeof(v37));
  gmtime_r(&v39, &v37);
  strftime(v42, 0xFuLL, "%Y%m%d%H%M%S", &v37);
  gmtime_r(&v38, &v37);
  strftime(v41, 0xFuLL, "%Y%m%d%H%M%S", &v37);
  v5 = *(a1 + 80);
  v6 = v40;
  bzero(v40, 0x3F1uLL);
  v7 = *(v5 + 16);
  v8 = *v7;
  if (*v7)
  {
    v9 = &v7[*(v5 + 24)];
    v6 = v40;
    v10 = *(v5 + 16);
    do
    {
      if (v8 > 0x3F || (v11 = v8 + 1, v12 = &v10[v11], &v10[v11] - v7 > 255))
      {
        v26 = 0;
        v29 = -6742;
        goto LABEL_143;
      }

      if (v12 >= v9)
      {
        v26 = 0;
        v29 = -6750;
        goto LABEL_143;
      }

      v13 = v10 + 1;
      if (v10 + 1 < v12)
      {
        v14 = v11 - 1;
        do
        {
          v15 = *v13;
          v16 = v15 - 32;
          if ((v15 - 32) > 0x5E)
          {
            *v6 = 92;
            v6[1] = (*v13 / 0x64u) | 0x30;
            v6[2] = (*v13 / 0xAu - 10 * ((26 * (*v13 / 0xAu)) >> 8)) | 0x30;
            v6[3] = (*v13 % 0xAu) | 0x30;
            v6 += 4;
          }

          else
          {
            v17 = v16 > 0x3C;
            v18 = (1 << v16) & 0x1000000000004001;
            if (!v17 && v18 != 0)
            {
              *v6++ = 92;
            }

            *v6++ = v15;
          }

          ++v13;
          --v14;
        }

        while (v14);
      }

      *v6++ = 46;
      v8 = *v12;
      v10 = v12;
    }

    while (*v12);
    if (v12 != v7)
    {
      goto LABEL_20;
    }
  }

  *v6++ = 46;
LABEL_20:
  *v6 = 0;
  v20 = *(a1 + 24);
  v21 = *(v20 + 18);
  v22 = v20 + 9;
  if (*(v20 + 18))
  {
    v22 = v20 + 9;
    do
    {
      v23 = v22 + v21;
      v24 = v23[1];
      v22 = (v23 + 1);
      v21 = v24;
    }

    while (v24);
  }

  v25 = (~(v22 - (v20 + 18)) + *(a1 + 36) - 18);
  v26 = (4 * (((v25 + 2) * 0x5555555555555556uLL) >> 64));
  v27 = __rev16(*v20);
  if (v27 > 248)
  {
    if (v27 <= 255)
    {
      if (v27 <= 251)
      {
        if (v27 == 249)
        {
          v28 = "TKEY";
        }

        else if (v27 == 250)
        {
          v28 = "TSIG";
        }

        else
        {
          v28 = "IXFR";
        }
      }

      else if (v27 > 253)
      {
        if (v27 == 254)
        {
          v28 = "MAILA";
        }

        else
        {
          v28 = "ANY";
        }
      }

      else if (v27 == 252)
      {
        v28 = "AXFR";
      }

      else
      {
        v28 = "MAILB";
      }
    }

    else
    {
      if (v27 > 259)
      {
        if (v27 > 0x8000)
        {
          if (v27 == 32769)
          {
            v28 = "DLV";
            goto LABEL_132;
          }

          if (v27 == 0xFFFF)
          {
            v28 = "Reserved";
            goto LABEL_132;
          }
        }

        else
        {
          if (v27 == 260)
          {
            v28 = "AMTRELAY";
            goto LABEL_132;
          }

          if (v27 == 0x8000)
          {
            v28 = "TA";
            goto LABEL_132;
          }
        }

LABEL_131:
        v28 = 0;
        goto LABEL_132;
      }

      if (v27 > 257)
      {
        if (v27 == 258)
        {
          v28 = "AVC";
        }

        else
        {
          v28 = "DOA";
        }
      }

      else if (v27 == 256)
      {
        v28 = "URI";
      }

      else
      {
        v28 = "CAA";
      }
    }
  }

  else
  {
    v28 = "A";
    switch(v27)
    {
      case 1:
        break;
      case 2:
        v28 = "NS";
        break;
      case 3:
        v28 = "MD";
        break;
      case 4:
        v28 = "MF";
        break;
      case 5:
        v28 = "CNAME";
        break;
      case 6:
        v28 = "SOA";
        break;
      case 7:
        v28 = "MB";
        break;
      case 8:
        v28 = "MG";
        break;
      case 9:
        v28 = "MR";
        break;
      case 10:
        v28 = "NULL";
        break;
      case 11:
        v28 = "WKS";
        break;
      case 12:
        v28 = "PTR";
        break;
      case 13:
        v28 = "HINFO";
        break;
      case 14:
        v28 = "MINFO";
        break;
      case 15:
        v28 = "MX";
        break;
      case 16:
        v28 = "TXT";
        break;
      case 17:
        v28 = "RP";
        break;
      case 18:
        v28 = "AFSDB";
        break;
      case 19:
        v28 = "X25";
        break;
      case 20:
        v28 = "ISDN";
        break;
      case 21:
        v28 = "RT";
        break;
      case 22:
        v28 = "NSAP";
        break;
      case 23:
        v28 = "NSAP-PTR";
        break;
      case 24:
        v28 = "SIG";
        break;
      case 25:
        v28 = "KEY";
        break;
      case 26:
        v28 = "PX";
        break;
      case 27:
        v28 = "GPOS";
        break;
      case 28:
        v28 = "AAAA";
        break;
      case 29:
        v28 = "LOC";
        break;
      case 30:
        v28 = "NXT";
        break;
      case 31:
        v28 = "EID";
        break;
      case 32:
        v28 = "NIMLOC";
        break;
      case 33:
        v28 = "SRV";
        break;
      case 34:
        v28 = "ATMA";
        break;
      case 35:
        v28 = "NAPTR";
        break;
      case 36:
        v28 = "KX";
        break;
      case 37:
        v28 = "CERT";
        break;
      case 38:
        v28 = "A6";
        break;
      case 39:
        v28 = "DNAME";
        break;
      case 40:
        v28 = "SINK";
        break;
      case 41:
        v28 = "OPT";
        break;
      case 42:
        v28 = "APL";
        break;
      case 43:
        v28 = "DS";
        break;
      case 44:
        v28 = "SSHFP";
        break;
      case 45:
        v28 = "IPSECKEY";
        break;
      case 46:
        v28 = "RRSIG";
        break;
      case 47:
        v28 = "NSEC";
        break;
      case 48:
        v28 = "DNSKEY";
        break;
      case 49:
        v28 = "DHCID";
        break;
      case 50:
        v28 = "NSEC3";
        break;
      case 51:
        v28 = "NSEC3PARAM";
        break;
      case 52:
        v28 = "TLSA";
        break;
      case 53:
        v28 = "SMIMEA";
        break;
      case 55:
        v28 = "HIP";
        break;
      case 56:
        v28 = "NINFO";
        break;
      case 57:
        v28 = "RKEY";
        break;
      case 58:
        v28 = "TALINK";
        break;
      case 59:
        v28 = "CDS";
        break;
      case 60:
        v28 = "CDNSKEY";
        break;
      case 61:
        v28 = "OPENPGPKEY";
        break;
      case 62:
        v28 = "CSYNC";
        break;
      case 63:
        v28 = "ZONEMD";
        break;
      case 64:
        v28 = "SVCB";
        break;
      case 65:
        v28 = "HTTPS";
        break;
      case 99:
        v28 = "SPF";
        break;
      case 100:
        v28 = "UINFO";
        break;
      case 101:
        v28 = "UID";
        break;
      case 102:
        v28 = "GID";
        break;
      case 103:
        v28 = "UNSPEC";
        break;
      case 104:
        v28 = "NID";
        break;
      case 105:
        v28 = "L32";
        break;
      case 106:
        v28 = "L64";
        break;
      case 107:
        v28 = "LP";
        break;
      case 108:
        v28 = "EUI48";
        break;
      case 109:
        v28 = "EUI64";
        break;
      default:
        goto LABEL_131;
    }
  }

LABEL_132:
  v30 = &v26[snprintf(0, 0, "%s %u %u %u %s %s %u %s ", v28, *(v20 + 2), *(v20 + 3), bswap32(*(v20 + 1)), v42, v41, __rev16(v20[8]), v40)];
  v31 = (v30 + 1);
  if (v30 == -1 || (v32 = malloc_type_calloc(1uLL, (v30 + 1), 0x3824D972uLL)) == 0)
  {
    __break(1u);
  }

  else
  {
    v26 = v32;
    v33 = snprintf(v32, v31, "%s %u %u %u %s %s %u %s ", v28, *(*(a1 + 24) + 2), *(*(a1 + 24) + 3), bswap32(*(*(a1 + 24) + 4)), v42, v41, __rev16(*(*(a1 + 24) + 16)), v40);
    if (v33 >= 1)
    {
      base_x_encode(0, v22 + 1, v25, &v26[v33]);
      v34 = 0;
      v29 = 0;
      if (!a2)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }
  }

  v29 = -6700;
LABEL_143:
  v34 = 1;
  if (a2)
  {
LABEL_136:
    *a2 = v29;
  }

LABEL_137:
  v35 = v34 ^ 1;
  if (!v26)
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    free(v26);
    return 0;
  }

  return v26;
}

void _dnssec_obj_rr_rrsig_finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 80) = 0;
  }
}

void *dnssec_obj_rr_rrsig_create(_BYTE *a1, const void *a2, uint64_t a3, int a4, int *a5)
{
  v7 = a3;
  v17 = 0;
  if (!rdata_parser_rrsig_check_validity(a2, a3))
  {
    v15 = 0;
    v16 = 0;
    v14 = -6705;
    v17 = -6705;
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  result = malloc_type_calloc(1uLL, 0x58uLL, 0xB7BBD98FuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = &_dnssec_obj_rr_rrsig_kind;
  result[1] = &_dnssec_obj_rr_rrsig_kind;
  do
  {
    v13 = v12[2];
    if (v13)
    {
      v13(v11);
    }

    v12 = *v12;
  }

  while (v12);
  ++*v11;
  dnssec_obj_rr_init_fields(v11, a1, 46, 1, a2, v7, a4, _dnssec_obj_rr_rrsig_copy_rdata_rfc_description, &v17);
  v11[10] = dnssec_obj_domain_name_create_with_labels((v11[3] + 18), 0, &v17);
  v14 = v17;
  if (v17)
  {
    v15 = v11;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v17)
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
  }

  if (a5)
  {
LABEL_14:
    *a5 = v14;
  }

LABEL_15:
  if (v15)
  {
    ref_count_obj_release(v15);
  }

  return v16;
}

BOOL dnssec_obj_rr_rrsig_covers_rr(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = -90005;
  v5 = *(a1 + 24);
  if (*(a2 + 32) == bswap32(*v5) >> 16)
  {
    v8 = *(a2 + 16);
    v9 = *(v8 + 16);
    v10 = *v9;
    if (*v9)
    {
      v11 = 0;
      do
      {
        ++v11;
        v12 = &v9[v10];
        v13 = v12[1];
        v9 = v12 + 1;
        v10 = v13;
      }

      while (v13);
    }

    else
    {
      v11 = 0;
    }

    if (v11 < *(v5 + 3))
    {
      result = 0;
      v4 = -90002;
    }

    else if (ref_count_obj_compare(*(a1 + 16), *(a2 + 16), 1))
    {
      result = 0;
      v4 = -90003;
    }

    else if (*(a1 + 34) == *(a2 + 34))
    {
      v14 = *(a1 + 80);
      if (!ref_count_obj_compare(v8, v14, 1) || (result = dnssec_obj_domain_name_is_sub_domain_of(*(v8 + 16), *(v14 + 16))))
      {
        v4 = 0;
        result = 1;
      }
    }

    else
    {
      result = 0;
      v4 = -90004;
    }
  }

  else
  {
    result = 0;
    v4 = -90001;
  }

  if (a3)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t DNSMessageExtractDomainName(unint64_t a1, uint64_t a2, char *__src, char *__dst, char **a5)
{
  if (__dst)
  {
    v6 = __dst + 256;
  }

  else
  {
    v6 = 0;
  }

  result = 4294960586;
  if (__src < a1)
  {
    return result;
  }

  v8 = a1 + a2;
  if (a1 + a2 <= __src)
  {
    return result;
  }

  v10 = __dst;
  v11 = *__src;
  if (*__src)
  {
    v12 = 0;
    do
    {
      if (v11 > 0x3F)
      {
        if ((~v11 & 0xC0) != 0)
        {
          return 4294960554;
        }

        if ((v8 - __src) < 2)
        {
          return 4294960546;
        }

        if (!v12)
        {
          v12 = __src + 2;
          if (!v10)
          {
            goto LABEL_23;
          }
        }

        __src = (a1 + (__src[1] | ((v11 & 0x3F) << 8)));
        if (__src >= v8)
        {
          return 4294960546;
        }

        v11 = *__src;
        if (v11 > 0xBF)
        {
          return 4294960554;
        }
      }

      else
      {
        v13 = &__src[v11 + 1];
        if (v13 >= v8)
        {
          return 4294960546;
        }

        if (v10)
        {
          v14 = v11 + 1;
          if (v6 - v10 <= v14)
          {
            return 4294960545;
          }

          memcpy(v10, __src, v11 + 1);
          v10 += v14;
        }

        v11 = *v13;
        __src = v13;
      }
    }

    while (v11);
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v12 = 0;
  if (__dst)
  {
LABEL_22:
    *v10 = 0;
  }

LABEL_23:
  result = 0;
  if (a5)
  {
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = __src + 1;
    }

    *a5 = v15;
  }

  return result;
}

uint64_t DNSMessageExtractDomainNameString(unint64_t a1, uint64_t a2, char *a3, unsigned __int8 *a4, void *a5)
{
  v8 = 0;
  memset(__dst, 0, sizeof(__dst));
  result = DNSMessageExtractDomainName(a1, a2, a3, __dst, &v8);
  if (!result)
  {
    result = DomainNameToString(__dst, 0, a4, 0);
    if (a5)
    {
      if (!result)
      {
        *a5 = v8;
      }
    }
  }

  return result;
}

uint64_t DomainNameToString(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (a2 && (a2 - a1) < 1)
  {
    return 4294960546;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1;
    do
    {
      if (v4 > 0x3F)
      {
        return 4294960554;
      }

      v6 = v4 + 1;
      v7 = &v5[v6];
      if (&v5[v6] - a1 > 255)
      {
        return 4294960554;
      }

      if (a2 && v7 >= a2)
      {
        return 4294960546;
      }

      v8 = v5 + 1;
      if (v5 + 1 < v7)
      {
        for (i = v6 - 1; i; --i)
        {
          v10 = *v8;
          if ((*v8 - 32) > 0x5E)
          {
            if ((*v8 & 0x80) == 0)
            {
              *a3 = 92;
              if (v10 <= 0x63u)
              {
                v12 = 48;
              }

              else
              {
                v12 = 49;
              }

              a3[1] = v12;
              if (v10 >= 0x64u)
              {
                v13 = v10 / 0xAu - 10;
              }

              else
              {
                v13 = v10 / 0xAu;
              }

              a3[2] = v13 + 48;
              a3[3] = (v10 % 0xAu) | 0x30;
              a3 += 4;
              goto LABEL_26;
            }
          }

          else if (*v8 - 32 <= 0x3C && ((1 << (v10 - 32)) & 0x1000000000004001) != 0)
          {
            *a3++ = 92;
          }

          *a3++ = v10;
LABEL_26:
          ++v8;
        }
      }

      *a3++ = 46;
      v4 = *v7;
      v5 = v7;
    }

    while (*v7);
    if (v7 != a1)
    {
      goto LABEL_30;
    }
  }

  *a3++ = 46;
  v7 = a1;
LABEL_30:
  *a3 = 0;
  result = 0;
  if (a4)
  {
    *a4 = v7 + 1;
  }

  return result;
}

uint64_t DNSMessageExtractQuestion(unint64_t a1, uint64_t a2, char *a3, char *a4, _WORD *a5, _WORD *a6, void *a7)
{
  v14 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, a4, &v14);
  if (!result)
  {
    v13 = v14;
    if (a1 + a2 - v14 < 4)
    {
      return 4294960546;
    }

    else
    {
      if (a5)
      {
        *a5 = bswap32(*v14) >> 16;
      }

      if (a6)
      {
        *a6 = bswap32(*(v13 + 1)) >> 16;
      }

      result = 0;
      if (a7)
      {
        *a7 = v13 + 4;
      }
    }
  }

  return result;
}

uint64_t _DNSMessageExtractRecordEx(unint64_t a1, uint64_t a2, char *a3, char *a4, _WORD *a5, _WORD *a6, _DWORD *a7, unsigned __int16 **a8, unint64_t *a9, char *a10, size_t a11, void *a12, void *a13, void *a14)
{
  v27 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, a4, &v27);
  if (!result)
  {
    v20 = v27;
    if (a1 + a2 - v27 < 0xA)
    {
      return 4294960546;
    }

    v21 = (v27 + 10);
    v22 = __rev16(*(v27 + 4));
    if (a1 + a2 - (v27 + 10) < v22)
    {
      return 4294960546;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v23 = bswap32(*v27) >> 16;
      if (!a11 && !a13 || (result = DNSMessageExtractRData(a1, a2, v27 + 10, v22, v23, a10, a11, &v26, &v25), !result))
      {
        if (a5)
        {
          *a5 = v23;
        }

        if (a6)
        {
          *a6 = bswap32(*(v20 + 1)) >> 16;
        }

        if (a7)
        {
          *a7 = bswap32(*(v20 + 1));
        }

        if (a8)
        {
          *a8 = v21;
        }

        if (a9)
        {
          *a9 = v22;
        }

        if (a12)
        {
          *a12 = v26;
        }

        if (a13)
        {
          *a13 = v25;
        }

        result = 0;
        if (a14)
        {
          *a14 = v21 + v22;
        }
      }
    }
  }

  return result;
}

uint64_t DNSMessageExtractRData(unint64_t a1, uint64_t a2, char *__src, size_t a4, int a5, char *a6, size_t a7, size_t *a8, unint64_t *a9)
{
  v10 = a7;
  v12 = a4;
  v76 = 0;
  memset(__srca, 0, 256);
  memset(__dst, 0, sizeof(__dst));
  v16 = &__src[a4];
  switch(a5)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 12:
    case 39:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v76);
      if (!result)
      {
        if (v76 != v16)
        {
          goto LABEL_80;
        }

        v18 = __srca[0];
        v19 = __srca;
        if (__srca[0])
        {
          do
          {
            v20 = &v19[v18];
            v21 = v20[1];
            v19 = v20 + 1;
            v18 = v21;
          }

          while (v21);
        }

        v12 = v19 - __srca + 1;
        if (v12 < v10)
        {
          v10 = v19 - __srca + 1;
        }

        v22 = __srca;
        v23 = a6;
        goto LABEL_9;
      }

      break;
    case 6:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v76);
      if (!result)
      {
        result = DNSMessageExtractDomainName(a1, a2, v76, __dst, &v76);
        if (!result)
        {
          v59 = v76;
          if (v16 - v76 != 20)
          {
            goto LABEL_80;
          }

          v60 = __srca[0];
          v61 = __srca;
          if (__srca[0])
          {
            do
            {
              v62 = &v61[v60];
              v63 = v62[1];
              v61 = v62 + 1;
              v60 = v63;
            }

            while (v63);
          }

          v64 = &a6[v10];
          v65 = v61 - __srca;
          v66 = LOBYTE(__dst[0]);
          v67 = __dst;
          if (LOBYTE(__dst[0]))
          {
            do
            {
              v68 = &v67[v66];
              v69 = v68[1];
              v67 = v68 + 1;
              v66 = v69;
            }

            while (v69);
          }

          v70 = v67 - __dst;
          v71 = v67 - __dst + 1;
          v12 = v65 + v71 + 21;
          if (v65 + 1 >= v10)
          {
            v72 = v10;
          }

          else
          {
            v72 = v65 + 1;
          }

          memcpy(a6, __srca, v72);
          if (v10 - v72 >= v71)
          {
            v73 = v70 + 1;
          }

          else
          {
            v73 = v10 - v72;
          }

          memcpy(&a6[v72], __dst, v73);
          v74 = &a6[v72 + v73];
          if ((v64 - v74) >= 0x14)
          {
            v75 = 20;
          }

          else
          {
            v75 = v64 - v74;
          }

          memcpy(v74, v59, v75);
          v10 = &v74[v75] - a6;
          goto LABEL_75;
        }
      }

      break;
    case 14:
    case 17:
    case 26:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v76);
      if (!result)
      {
        result = DNSMessageExtractDomainName(a1, a2, v76, __dst, &v76);
        if (!result)
        {
          if (v76 != v16)
          {
            goto LABEL_80;
          }

          v36 = __srca[0];
          v37 = __srca;
          if (__srca[0])
          {
            do
            {
              v38 = &v37[v36];
              v39 = v38[1];
              v37 = v38 + 1;
              v36 = v39;
            }

            while (v39);
          }

          v40 = v37 - __srca + 1;
          v41 = LOBYTE(__dst[0]);
          v42 = __dst;
          if (LOBYTE(__dst[0]))
          {
            do
            {
              v43 = &v42[v41];
              v44 = v43[1];
              v42 = v43 + 1;
              v41 = v44;
            }

            while (v44);
          }

          v45 = v42 - __dst;
          v46 = v42 - __dst + 1;
          v12 = v46 + v40;
          if (v40 >= v10)
          {
            v47 = v10;
          }

          else
          {
            v47 = v37 - __srca + 1;
          }

          memcpy(a6, __srca, v47);
          if (v10 - v47 >= v46)
          {
            v48 = v45 + 1;
          }

          else
          {
            v48 = v10 - v47;
          }

          memcpy(&a6[v47], __dst, v48);
          v10 = v48 + v47;
          goto LABEL_75;
        }
      }

      break;
    case 15:
    case 18:
    case 21:
    case 36:
      if (a4 < 3)
      {
        goto LABEL_80;
      }

      result = DNSMessageExtractDomainName(a1, a2, __src + 2, __srca, &v76);
      if (!result)
      {
        if (v76 != v16)
        {
          goto LABEL_80;
        }

        v24 = __srca[0];
        v25 = __srca;
        if (__srca[0])
        {
          do
          {
            v26 = &v25[v24];
            v27 = v26[1];
            v25 = v26 + 1;
            v24 = v27;
          }

          while (v27);
        }

        v28 = v25 - __srca;
        v29 = v25 - __srca + 1;
        v12 = v25 - __srca + 3;
        v30 = v10 >= 2;
        v31 = 2;
        goto LABEL_16;
      }

      break;
    case 33:
      if (a4 < 7)
      {
        goto LABEL_80;
      }

      result = DNSMessageExtractDomainName(a1, a2, __src + 6, __srca, &v76);
      if (!result)
      {
        if (v76 != v16)
        {
          goto LABEL_80;
        }

        v49 = __srca[0];
        v50 = __srca;
        if (__srca[0])
        {
          do
          {
            v51 = &v50[v49];
            v52 = v51[1];
            v50 = v51 + 1;
            v49 = v52;
          }

          while (v52);
        }

        v28 = v50 - __srca;
        v29 = v50 - __srca + 1;
        v12 = v50 - __srca + 7;
        v30 = v10 >= 6;
        v31 = 6;
LABEL_16:
        if (v30)
        {
          v32 = v31;
        }

        else
        {
          v32 = v10;
        }

        memcpy(a6, __src, v32);
        if (v10 - v32 >= v29)
        {
          v33 = v28 + 1;
        }

        else
        {
          v33 = v10 - v32;
        }

        v34 = &a6[v32];
        v35 = __srca;
        goto LABEL_23;
      }

      break;
    case 47:
      result = DNSMessageExtractDomainName(a1, a2, __src, __srca, &v76);
      if (!result)
      {
        v53 = v76;
        if (v76 <= v16)
        {
          v54 = __srca[0];
          v55 = __srca;
          if (__srca[0])
          {
            do
            {
              v56 = &v55[v54];
              v57 = v56[1];
              v55 = v56 + 1;
              v54 = v57;
            }

            while (v57);
          }

          v58 = v16 - v76;
          v12 = v55 - __srca + 1 + v16 - v76;
          if (v55 - __srca + 1 < v10)
          {
            v32 = v55 - __srca + 1;
          }

          else
          {
            v32 = v10;
          }

          memcpy(a6, __srca, v32);
          if (v10 - v32 >= v58)
          {
            v33 = v16 - v53;
          }

          else
          {
            v33 = v10 - v32;
          }

          v34 = &a6[v32];
          v35 = v53;
LABEL_23:
          memcpy(v34, v35, v33);
          v10 = v33 + v32;
          goto LABEL_75;
        }

LABEL_80:
        result = 4294960554;
      }

      break;
    default:
      if (a7 >= a4)
      {
        v10 = a4;
      }

      v23 = a6;
      v22 = __src;
LABEL_9:
      memcpy(v23, v22, v10);
LABEL_75:
      if (a8)
      {
        *a8 = v10;
      }

      result = 0;
      if (a9)
      {
        *a9 = v12;
      }

      break;
  }

  return result;
}

uint64_t DNSMessageGetAnswerSection(unint64_t a1, unint64_t a2, char **a3)
{
  if (a2 < 0xC)
  {
    return 4294960553;
  }

  v12[7] = v3;
  v12[8] = v4;
  v7 = __rev16(*(a1 + 4));
  v8 = (a1 + 12);
  if (v7)
  {
    v10 = a1 + a2;
    while (1)
    {
      v12[0] = 0;
      result = DNSMessageExtractDomainName(a1, a2, v8, 0, v12);
      if (result)
      {
        break;
      }

      if (v10 - v12[0] <= 3)
      {
        return 4294960546;
      }

      v8 = v12[0] + 4;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 0;
    if (a3)
    {
      *a3 = v8;
    }
  }

  return result;
}

char *DNSMessageCollapse(char *a1, unint64_t a2, void *a3, char **a4)
{
  v53 = 0;
  v52 = 0;
  memset(__src, 0, 256);
  memset(__dst, 0, sizeof(__dst));
  if (a2 < 0xC)
  {
LABEL_68:
    v20 = 0;
    v36 = 0;
    DomainName = -6743;
  }

  else if (__rev16(*(a1 + 2)) == 1)
  {
    v53 = a1 + 12;
    DomainName = DNSMessageExtractQuestion(a1, a2, a1 + 12, __src, &v52 + 1, &v52, &v53);
    if (DomainName)
    {
LABEL_57:
      v20 = 0;
      v36 = 0;
      goto LABEL_61;
    }

    if (v52 == 1)
    {
      v9 = __src[0];
      v38 = a3;
      v10 = __src;
      if (__src[0])
      {
        do
        {
          v11 = &v10[v9];
          v12 = v11[1];
          v10 = v11 + 1;
          v9 = v12;
        }

        while (v12);
      }

      v13 = v10 - __src;
      __n = v10 - __src + 1;
      v41 = v53;
      __memcpy_chk();
      v14 = __rev16(*(a1 + 3));
      if (v14)
      {
        v15 = 0;
        v43 = -1;
LABEL_9:
        v16 = 0;
        v53 = v41;
        v17 = 1;
        while (1)
        {
          v51 = 0;
          LODWORD(v49) = 0;
          LOWORD(v48) = 0;
          v50 = 0;
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
          v54 = 0u;
          v55 = 0u;
          DomainName = _DNSMessageExtractRecordEx(a1, a2, v53, &v54, &v48, &v50, &v49, &v51, 0, 0, 0, 0, 0, &v53);
          if (DomainName)
          {
            goto LABEL_57;
          }

          if (v48 == 5 && v50 == v52 && DomainNameEqual(&v54, __dst))
          {
            DomainName = DNSMessageExtractDomainName(a1, a2, v51, __dst, 0);
            if (DomainName)
            {
              goto LABEL_57;
            }

            v17 = 0;
            v18 = v43;
            if (v43 >= v49)
            {
              v18 = v49;
            }

            v43 = v18;
            if (++v16 == v14)
            {
              goto LABEL_22;
            }
          }

          else if (v14 == ++v16)
          {
            if (v17)
            {
              goto LABEL_25;
            }

LABEL_22:
            if (++v15 != v14)
            {
              goto LABEL_9;
            }

            goto LABEL_25;
          }
        }
      }

      v43 = -1;
LABEL_25:
      v39 = a4;
      v46 = 0;
      v19 = 0;
      v20 = 0;
      size = v13 + 17;
      v21 = 1;
      a4 = &v53;
      while (1)
      {
        v42 = v21;
        v53 = v41;
        if (v14)
        {
          break;
        }

        v45 = 0;
        if (v20)
        {
          goto LABEL_52;
        }

LABEL_45:
        if (!size || (v29 = malloc_type_calloc(1uLL, size, 0x56016498uLL)) == 0)
        {
          __break(1u);
          goto LABEL_68;
        }

        v20 = v29;
        if (size < 0xC)
        {
          goto LABEL_66;
        }

        v30 = *a1;
        *(v29 + 2) = *(a1 + 2);
        *v29 = v30;
        *(v29 + 6) = 0;
        *(v29 + 5) = 0;
        if (size - 12 < __n)
        {
          goto LABEL_66;
        }

        v31 = &v29[size];
        v32 = v29 + 12;
        memcpy(v29 + 12, __src, __n);
        v33 = &v32[__n];
        v46 = v31;
        if ((v31 - &v32[__n]) < 4)
        {
          goto LABEL_66;
        }

        v21 = 0;
        v34 = BYTE2(v52);
        v35 = v52;
        *v33 = HIBYTE(v52);
        v33[1] = v34;
        v33[2] = HIBYTE(v35);
        v33[3] = v35;
        v19 = v33 + 4;
        *(v20 + 2) = 256;
        if ((v42 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v45 = 0;
      v22 = v14;
      do
      {
        v51 = 0;
        v49 = 0;
        v48 = 0;
        v50 = 0;
        v47 = 0;
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
        v54 = 0u;
        v55 = 0u;
        v23 = v53;
        DomainName = _DNSMessageExtractRecordEx(a1, a2, v53, &v54, &v50, &v47, &v48, 0, 0, 0, 0, 0, &v49, &v53);
        if (DomainName)
        {
          goto LABEL_59;
        }

        if (v50 == HIWORD(v52) && v47 == v52 && DomainNameEqual(&v54, __dst))
        {
          if (v20)
          {
            if (v46 - v19 < 2)
            {
              goto LABEL_58;
            }

            *v19 = 3264;
            if ((v46 - v19 - 2) < 0xA)
            {
              goto LABEL_58;
            }

            v24 = v48;
            if (v48 >= v43)
            {
              v24 = v43;
            }

            v48 = v24;
            v25 = v50;
            v26 = v47;
            v27 = v49;
            v19[2] = HIBYTE(v50);
            v19[3] = v25;
            v19[4] = HIBYTE(v26);
            v19[5] = v26;
            v19[6] = HIBYTE(v24);
            v19[7] = BYTE2(v24);
            v19[8] = BYTE1(v24);
            v19[9] = v24;
            v19[10] = HIBYTE(v27);
            v19[11] = v27;
            v28 = v19 + 12;
            if (v46 - v28 < v49)
            {
LABEL_58:
              DomainName = -6762;
LABEL_59:
              v36 = 0;
              goto LABEL_60;
            }

            DomainName = _DNSMessageExtractRecordEx(a1, a2, v23, 0, 0, 0, 0, 0, 0, v28, v49, &v51, 0, 0);
            if (DomainName)
            {
              goto LABEL_59;
            }

            v19 = v51 + v28;
            ++v45;
          }

          else
          {
            size += v49 + 12;
          }
        }

        --v22;
      }

      while (v22);
      if (!v20)
      {
        goto LABEL_45;
      }

LABEL_52:
      if (size >= 0xC)
      {
        *(v20 + 3) = bswap32(v45) >> 16;
LABEL_54:
        v36 = v20;
        a4 = v39;
        v20 = 0;
        DomainName = 0;
        if (v38)
        {
          *v38 = v19 - v36;
        }

        goto LABEL_61;
      }

LABEL_66:
      v36 = 0;
      DomainName = -6762;
LABEL_60:
      a4 = v39;
    }

    else
    {
      v20 = 0;
      v36 = 0;
      DomainName = -6756;
    }
  }

  else
  {
    v20 = 0;
    v36 = 0;
    DomainName = -6764;
  }

LABEL_61:
  if (a4)
  {
    *a4 = DomainName;
  }

  if (v20)
  {
    free(v20);
  }

  return v36;
}

uint64_t DomainNameEqual(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  while (1)
  {
    v4 = *v3;
    if (v3 != v2 && (v4 != *v2 || mdns_memcmp_us_ascii_case_insensitive(v3 + 1, v2 + 1, *v3)))
    {
      break;
    }

    v3 += v4 + 1;
    v2 += v4 + 1;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

_BYTE *DomainNameDupEx(_BYTE *result, void *a2, size_t *a3)
{
  v5 = result;
  v6 = *result;
  v7 = result;
  if (*result)
  {
    v7 = result;
    do
    {
      v8 = &v7[v6];
      v9 = v8[1];
      v7 = v8 + 1;
      v6 = v9;
    }

    while (v9);
  }

  v10 = v7 - result + 1;
  if (v7 - result == -1 || (result = malloc_type_malloc(v7 - result + 1, 0x1F4B2FEBuLL)) == 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    result = memcpy(result, v5, v10);
    *a2 = v11;
    if (a3)
    {
      *a3 = v10;
    }
  }

  return result;
}

uint64_t DomainNameFromString(_BYTE *a1, char *a2)
{
  *a1 = 0;
  v2 = *a2;
  if (*a2)
  {
    if (v2 == 46)
    {
      v2 = a2[1];
      if (!a2[1])
      {
        return v2;
      }

      LOBYTE(v2) = 46;
    }

    v3 = a1 + 255;
    while (2)
    {
      if (a1 + 64 >= v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = a1 + 64;
      }

      v5 = a1 + 1;
      v6 = a1 + 1;
      v7 = a2;
      do
      {
        a2 = v7 + 1;
        if (v2 == 92)
        {
          v8 = *a2;
          if (!*a2)
          {
            return 4294960546;
          }

          LOBYTE(v2) = *a2;
          a2 = v7 + 2;
          if (v8 - 48 <= 9)
          {
            v9 = *a2;
            if ((v9 - 48) <= 9)
            {
              v10 = v7[3];
              if ((v10 - 48) <= 9)
              {
                v11 = 100 * v8 + 10 * v9 + v10;
                v12 = v7 + 4;
                if (v11 < 5584)
                {
                  a2 = v12;
                  LOBYTE(v2) = v11 + 48;
                }
              }
            }
          }
        }

        else if (v2 == 46)
        {
          break;
        }

        if (v6 >= v4)
        {
          return 4294960545;
        }

        *v6++ = v2;
        LOBYTE(v2) = *a2;
        v7 = a2;
      }

      while (*a2);
      if (v6 == v5)
      {
        return 4294960554;
      }

      else
      {
        *a1 = v6 - v5;
        *v6 = 0;
        v2 = *a2;
        a1 = v6;
        if (*a2)
        {
          continue;
        }
      }

      break;
    }
  }

  return v2;
}

const char *DNSRecordTypeValueToString(int a1)
{
  if (a1 > 248)
  {
    switch(a1)
    {
      case 249:
        result = "TKEY";
        break;
      case 250:
        result = "TSIG";
        break;
      case 251:
        result = "IXFR";
        break;
      case 252:
        result = "AXFR";
        break;
      case 253:
        result = "MAILB";
        break;
      case 254:
        result = "MAILA";
        break;
      case 255:
        result = "ANY";
        break;
      case 256:
        result = "URI";
        break;
      case 257:
        result = "CAA";
        break;
      case 258:
        result = "AVC";
        break;
      case 259:
        result = "DOA";
        break;
      case 260:
        result = "AMTRELAY";
        break;
      case 261:
        result = "RESINFO";
        break;
      case 262:
        result = "WALLET";
        break;
      case 263:
        result = "CLA";
        break;
      case 264:
        result = "IPN";
        break;
      default:
        if (a1 == 0x8000)
        {
          result = "TA";
        }

        else if (a1 == 32769)
        {
          result = "DLV";
        }

        else
        {
LABEL_101:
          result = 0;
        }

        break;
    }
  }

  else
  {
    result = "Reserved";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "A";
        break;
      case 2:
        result = "NS";
        break;
      case 3:
        result = "MD";
        break;
      case 4:
        result = "MF";
        break;
      case 5:
        result = "CNAME";
        break;
      case 6:
        result = "SOA";
        break;
      case 7:
        result = "MB";
        break;
      case 8:
        result = "MG";
        break;
      case 9:
        result = "MR";
        break;
      case 10:
        result = "NULL";
        break;
      case 11:
        result = "WKS";
        break;
      case 12:
        result = "PTR";
        break;
      case 13:
        result = "HINFO";
        break;
      case 14:
        result = "MINFO";
        break;
      case 15:
        result = "MX";
        break;
      case 16:
        result = "TXT";
        break;
      case 17:
        result = "RP";
        break;
      case 18:
        result = "AFSDB";
        break;
      case 19:
        result = "X25";
        break;
      case 20:
        result = "ISDN";
        break;
      case 21:
        result = "RT";
        break;
      case 22:
        result = "NSAP";
        break;
      case 23:
        result = "NSAP-PTR";
        break;
      case 24:
        result = "SIG";
        break;
      case 25:
        result = "KEY";
        break;
      case 26:
        result = "PX";
        break;
      case 27:
        result = "GPOS";
        break;
      case 28:
        result = "AAAA";
        break;
      case 29:
        result = "LOC";
        break;
      case 30:
        result = "NXT";
        break;
      case 31:
        result = "EID";
        break;
      case 32:
        result = "NIMLOC";
        break;
      case 33:
        result = "SRV";
        break;
      case 34:
        result = "ATMA";
        break;
      case 35:
        result = "NAPTR";
        break;
      case 36:
        result = "KX";
        break;
      case 37:
        result = "CERT";
        break;
      case 38:
        result = "A6";
        break;
      case 39:
        result = "DNAME";
        break;
      case 40:
        result = "SINK";
        break;
      case 41:
        result = "OPT";
        break;
      case 42:
        result = "APL";
        break;
      case 43:
        result = "DS";
        break;
      case 44:
        result = "SSHFP";
        break;
      case 45:
        result = "IPSECKEY";
        break;
      case 46:
        result = "RRSIG";
        break;
      case 47:
        result = "NSEC";
        break;
      case 48:
        result = "DNSKEY";
        break;
      case 49:
        result = "DHCID";
        break;
      case 50:
        result = "NSEC3";
        break;
      case 51:
        result = "NSEC3PARAM";
        break;
      case 52:
        result = "TLSA";
        break;
      case 53:
        result = "SMIMEA";
        break;
      case 55:
        result = "HIP";
        break;
      case 56:
        result = "NINFO";
        break;
      case 57:
        result = "RKEY";
        break;
      case 58:
        result = "TALINK";
        break;
      case 59:
        result = "CDS";
        break;
      case 60:
        result = "CDNSKEY";
        break;
      case 61:
        result = "OPENPGPKEY";
        break;
      case 62:
        result = "CSYNC";
        break;
      case 63:
        result = "ZONEMD";
        break;
      case 64:
        result = "SVCB";
        break;
      case 65:
        result = "HTTPS";
        break;
      case 66:
        result = "DSYNC";
        break;
      case 99:
        result = "SPF";
        break;
      case 100:
        result = "UINFO";
        break;
      case 101:
        result = "UID";
        break;
      case 102:
        result = "GID";
        break;
      case 103:
        result = "UNSPEC";
        break;
      case 104:
        result = "NID";
        break;
      case 105:
        result = "L32";
        break;
      case 106:
        result = "L64";
        break;
      case 107:
        result = "LP";
        break;
      case 108:
        result = "EUI48";
        break;
      case 109:
        result = "EUI64";
        break;
      case 128:
        result = "NXNAME";
        break;
      default:
        goto LABEL_101;
    }
  }

  return result;
}

void DNSMessageToString(char *a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v125 = 0;
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global_5688);
  }

  v128 = 0;
  memset(v127, 0, sizeof(v127));
  v126 = 0;
  v124 = 0;
  memset(v138, 0, sizeof(v138));
  bzero(v137, 0x3F1uLL);
  memset(v136, 0, 256);
  memset(v135, 0, sizeof(v135));
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_647;
  }

  _GetCUSymAddr_DataBuffer_Init_sAddr(v127, v138, 512, -1);
  if (a2 < 0xC)
  {
    goto LABEL_647;
  }

  v113 = (a1[2] >> 3) & 0xF;
  v116 = a1[5];
  v110 = a1[4];
  v5 = v116 & 0xFFFF00FF | (v110 << 8);
  v108 = a1[6];
  v109 = a1[7];
  v115 = _byteswap_ushort(*(a1 + 3));
  v114 = __rev16(*(a1 + 4));
  v112 = __rev16(*(a1 + 5));
  v6 = "";
  if ((a3 & 0x20) != 0)
  {
LABEL_74:
    if ((a3 & 0x10) != 0)
    {
      goto LABEL_639;
    }

    goto LABEL_75;
  }

  v7 = a1[2] << 8;
  v8 = a1[3] | (a1[2] << 8);
  v9 = __rev16(*a1);
  if ((a3 & 4) != 0)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    v10 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
    v13 = 81;
    if (v7 < 0)
    {
      v13 = 82;
    }

    v106 = v8;
    v107 = v13;
    v105 = v9;
    v12 = "id: 0x%04X (%u), flags: 0x%04X (%c/";
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "ID:               0x%04X (%u)\n", v9, v9))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    v10 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
    v11 = 81;
    if (v7 < 0)
    {
      v11 = 82;
    }

    v105 = v11;
    v12 = "Flags:            0x%04X %c/";
  }

  if (v10(v127, v12))
  {
    goto LABEL_647;
  }

  if (v113 > 6 || v113 == 3)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "OPCODE%d");
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s");
  }

  if (CUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_647;
  }

  v15 = &word_100152418;
  v16 = 7;
  do
  {
    if ((*v15 & v8) != 0)
    {
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, ", %s", *(v15 - 1)))
      {
        goto LABEL_647;
      }
    }

    v15 += 8;
    --v16;
  }

  while (v16);
  if ((v8 & 0xF) > 0xB)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    v103 = (v8 & 0xF);
    v18 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, ", RCODE%d");
  }

  else
  {
    v17 = (&off_100154018)[v8 & 0xF];
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_647;
    }

    v103 = v17;
    v18 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, ", %s");
  }

  if (v18)
  {
    goto LABEL_647;
  }

  if ((a3 & 4) == 0)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "\n", v103, v105))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "Question count:   %u\n", v5))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "Answer count:     %u\n", v115))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "Authority count:  %u\n", v114))
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "Additional count: %u\n", v112))
    {
      goto LABEL_647;
    }

    v6 = "";
    goto LABEL_74;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, ")", v103, v105))
  {
    goto LABEL_647;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, ", counts: %u/%u/%u/%u", v5, v115, v114, v112))
  {
    goto LABEL_647;
  }

  v6 = ", ";
  if ((a3 & 0x10) != 0)
  {
    goto LABEL_639;
  }

LABEL_75:
  v120 = v6;
  v122 = (a3 >> 3) & 1;
  v126 = a1 + 12;
  if (!v5)
  {
    v20 = 0;
    v26 = v136;
    v22 = a2;
LABEL_200:
    if (v112 + v114 + v115)
    {
      v42 = 0;
      while (1)
      {
        __src[0] = 0;
        v139[0] = 0;
        LODWORD(v134) = 0;
        LOWORD(v133) = 0;
        LOWORD(v132) = 0;
        if (_DNSMessageExtractRecordEx(a1, v22, v126, v26, &v133, &v132, &v134, __src, v139, 0, 0, 0, 0, &v126) || DomainNameToString(v26, 0, v137, 0))
        {
          goto LABEL_647;
        }

        v43 = v132 < 0;
        if (a3)
        {
          LOWORD(v132) = v132 & 0x7FFF;
        }

        v44 = a3 & v43;
        if ((a3 & 4) == 0)
        {
          break;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s", v120))
        {
          goto LABEL_647;
        }

        if (v20 && (DomainNameEqual(v26, v20) & 1) != 0)
        {
          v46 = v26;
          v26 = v20;
        }

        else
        {
          if (DomainNameToString(v26, 0, v137, 0))
          {
            goto LABEL_647;
          }

          if (v122 && _NameIsPrivate(v137))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v47 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%~s ");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v47 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s ");
          }

          if (v47)
          {
            goto LABEL_647;
          }

          if (v26 == v136)
          {
            v46 = v135;
          }

          else
          {
            v46 = v136;
          }

          *v46 = 0;
        }

        if (v133 == 41)
        {
          if (v44)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "CF "))
            {
              goto LABEL_647;
            }
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "OPT %u", v132))
          {
            goto LABEL_647;
          }

          if (v134)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v48 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " 0x%08X");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v48 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " 0");
          }
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%u", v134))
          {
            goto LABEL_647;
          }

          if (v44)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " CF"))
            {
              goto LABEL_647;
            }
          }

          v49 = "ANY";
          if (v132 != 255)
          {
            v49 = 0;
          }

          if (v132 == 1)
          {
            v50 = "IN";
          }

          else
          {
            v50 = v49;
          }

          if (v50)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v51 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v51 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " CLASS%u");
          }

          if (v51)
          {
            goto LABEL_647;
          }

          if (DNSRecordTypeValueToString(v133))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v48 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v48 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " TYPE%u");
          }
        }

        if (v48)
        {
          goto LABEL_647;
        }

        v20 = v26;
        v120 = ", ";
        if ((a3 & 2) == 0)
        {
LABEL_365:
          DNSRecordDataToStringEx(__src[0], v139[0], v133, a1, v22, v122, &v125);
        }

LABEL_366:
        if (v125)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s", v125))
          {
            goto LABEL_647;
          }

          if (v125)
          {
            free(v125);
            v125 = 0;
          }
        }

        else
        {
          if (v122)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v102 = v139[0];
            v60 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " [%zu B]");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_647;
            }

            v104 = v139[0];
            v106 = v139[0];
            v102 = __src[0];
            v60 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %#H");
          }

          if (v60)
          {
            goto LABEL_647;
          }
        }

        if ((a3 & 4) != 0)
        {
          if (v133 == 5)
          {
            DomainName = DNSMessageExtractDomainName(a1, v22, __src[0], v46, 0);
            v62 = v136;
            if (v46 == v136)
            {
              v62 = v135;
            }

            if (!DomainName)
            {
              v20 = v46;
              v46 = v62;
            }

            *v46 = 0;
          }
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "\n"))
          {
            goto LABEL_647;
          }
        }

        ++v42;
        v26 = v46;
        if (v42 >= v112 + v114 + v115)
        {
          goto LABEL_404;
        }
      }

      if (!v115 || v42)
      {
        if (v114 && ((v108 << 8) + v109) == v42)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v45 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "\nAUTHORITY SECTION\n");
        }

        else
        {
          if (v114 + v115 != v42)
          {
            goto LABEL_282;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v45 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "\nADDITIONAL SECTION\n");
        }
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_647;
        }

        v45 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "\nANSWER SECTION\n");
      }

      if (v45)
      {
        goto LABEL_647;
      }

LABEL_282:
      if (v133 == 41)
      {
        if (v122 && _NameIsPrivate(v137))
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v52 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%~s");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v52 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s");
        }

        if (v52)
        {
          goto LABEL_647;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_647;
        }

        v54 = "";
        if (v44)
        {
          v54 = " CF";
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s OPT %u", v54, v132))
        {
          goto LABEL_647;
        }

        if (v134)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v55 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " 0x%08X");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v55 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " 0");
        }
      }

      else
      {
        if (v122)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v53 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%~-42s");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v53 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%-42s");
        }

        if (v53)
        {
          goto LABEL_647;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_647;
        }

        v56 = "";
        if (v44)
        {
          v56 = "CF";
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %6u %2s", v134, v56))
        {
          goto LABEL_647;
        }

        v57 = "ANY";
        if (v132 != 255)
        {
          v57 = 0;
        }

        if (v132 == 1)
        {
          v58 = "IN";
        }

        else
        {
          v58 = v57;
        }

        if (v58)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v59 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v59 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " CLASS%u");
        }

        if (v59)
        {
          goto LABEL_647;
        }

        if (DNSRecordTypeValueToString(v133))
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v55 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %-5s");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v55 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " TYPE%u");
        }
      }

      v46 = v26;
      if (v55)
      {
        goto LABEL_647;
      }

      if ((a3 & 2) == 0)
      {
        goto LABEL_365;
      }

      goto LABEL_366;
    }

LABEL_404:
    if (v113 == 6)
    {
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "["))
      {
        goto LABEL_647;
      }

      v63 = v126;
      v121 = &a1[a2];
      if (v126 < &a1[a2])
      {
        if ((a3 >> 2))
        {
          v64 = "";
        }

        else
        {
          v64 = "\n\t";
        }

        if ((a3 >> 2))
        {
          v65 = ", ";
        }

        else
        {
          v65 = ",\n\t";
        }

        v118 = v65;
        do
        {
          if (v63 < a1)
          {
            goto LABEL_647;
          }

          if ((v121 - v63) < 4)
          {
            goto LABEL_647;
          }

          v66 = __rev16(*(v63 + 1));
          v67 = v63 + 4;
          if (v121 - (v63 + 4) < v66)
          {
            goto LABEL_647;
          }

          v68 = *v63;
          v69 = &v67[v66];
          v126 = &v67[v66];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s", v64))
          {
            goto LABEL_647;
          }

          v70 = __rev16(v68);
          if (v70 > 63)
          {
            if (v70 <= 65)
            {
              if (v70 == 64)
              {
                v71 = "SUBSCRIBE";
              }

              else
              {
                v71 = "PUSH";
              }

              goto LABEL_441;
            }

            if (v70 == 66)
            {
              v71 = "UNSUBSCRIBE";
              goto LABEL_441;
            }

            if (v70 == 67)
            {
              v71 = "RECONFIRM";
              goto LABEL_441;
            }
          }

          else if (v70 > 1)
          {
            if (v70 == 2)
            {
              v71 = "Retry Delay";
              goto LABEL_441;
            }

            if (v70 == 3)
            {
              v71 = "Encryption Padding";
              goto LABEL_441;
            }
          }

          else
          {
            v71 = "Reserved";
            if (!v70)
            {
              goto LABEL_441;
            }

            if (v70 == 1)
            {
              v71 = "KeepAlive";
LABEL_441:
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_647;
              }

              v102 = v71;
              v72 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s: ");
              goto LABEL_445;
            }
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_647;
          }

          v102 = v70;
          v72 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "DSO-TYPE%u: ");
LABEL_445:
          if (v72)
          {
            goto LABEL_647;
          }

          v133 = 0;
          v134 = (v63 + 4);
          bzero(__src, 0x3F1uLL);
          if (v70 > 65)
          {
            if (v70 == 66)
            {
              if (v66 != 2)
              {
                goto LABEL_647;
              }

              v84 = *(v63 + 2);
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%u", __rev16(v84));
                goto LABEL_578;
              }

              goto LABEL_631;
            }

            if (v70 != 67)
            {
LABEL_522:
              if (v122)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v102 = v66;
                  v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "[%u B]");
                  goto LABEL_578;
                }
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v104 = v66;
                  v106 = v66;
                  v102 = (v63 + 4);
                  v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "'%H'");
LABEL_578:
                  v91 = v81;
                  goto LABEL_626;
                }
              }

              goto LABEL_631;
            }

            v81 = DNSMessageExtractDomainNameString(a1, a2, v63 + 4, __src, &v134);
            if (v81)
            {
              goto LABEL_578;
            }

            v82 = v134;
            if (v69 - v134 >= 4)
            {
              v134 += 4;
              if (v122 && _NameIsPrivate(__src))
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v102 = __src;
                v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%~s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v102 = __src;
                v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s");
              }

              if (v81)
              {
                goto LABEL_578;
              }

              v85 = __rev16(*(v82 + 1));
              v86 = "ANY";
              if (v85 != 255)
              {
                v86 = 0;
              }

              if (v85 == 1)
              {
                v87 = "IN";
              }

              else
              {
                v87 = v86;
              }

              if (v87)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v102 = v87;
                v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v102 = v85;
                v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " CLASS%u");
              }

              if (v81)
              {
                goto LABEL_578;
              }

              v92 = __rev16(*v82);
              v93 = DNSRecordTypeValueToString(v92);
              if (v93)
              {
                v94 = v93;
                v95 = a2;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v102 = v94;
                v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
              }

              else
              {
                v95 = a2;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_631;
                }

                v102 = v92;
                v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " TYPE%u");
              }

              if (v81)
              {
                goto LABEL_578;
              }

              v99 = v134;
              v100 = v69 - v134;
              DNSRecordDataToStringEx(v134, v69 - v134, v92, a1, v95, v122, &v133);
              if (v133)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s", v133);
                  if (v81)
                  {
                    goto LABEL_578;
                  }

                  if (v133)
                  {
                    free(v133);
                    v133 = 0;
                  }

LABEL_625:
                  v91 = 0;
                  goto LABEL_626;
                }
              }

              else if (v122)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v102 = v100;
                  v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " [%zu B]");
                  goto LABEL_624;
                }
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v104 = v100;
                  v106 = v100;
                  v102 = v99;
                  v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " '%H'");
                  goto LABEL_624;
                }
              }
            }
          }

          else if (v70 == 64)
          {
            v81 = DNSMessageExtractDomainNameString(a1, a2, v63 + 4, __src, &v134);
            if (v81)
            {
              goto LABEL_578;
            }

            v83 = v134;
            if (v69 - v134 != 4)
            {
              goto LABEL_631;
            }

            if (v122 && _NameIsPrivate(__src))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_631;
              }

              v102 = __src;
              v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%~s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_631;
              }

              v102 = __src;
              v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s");
            }

            if (v81)
            {
              goto LABEL_578;
            }

            v88 = __rev16(*(v83 + 1));
            v89 = "ANY";
            if (v88 != 255)
            {
              v89 = 0;
            }

            if (v88 == 1)
            {
              v90 = "IN";
            }

            else
            {
              v90 = v89;
            }

            if (v90)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_631;
              }

              v102 = v90;
              v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_631;
              }

              v102 = v88;
              v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " CLASS%u");
            }

            if (v81)
            {
              goto LABEL_578;
            }

            v96 = __rev16(*v83);
            v97 = DNSRecordTypeValueToString(v96);
            if (v97)
            {
              v98 = v97;
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v102 = v98;
                v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
                goto LABEL_624;
              }
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v102 = v96;
                v81 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " TYPE%u");
LABEL_624:
                if (v81)
                {
                  goto LABEL_578;
                }

                goto LABEL_625;
              }
            }
          }

          else
          {
            if (v70 != 65)
            {
              goto LABEL_522;
            }

            if (v69 <= v67)
            {
              goto LABEL_647;
            }

            while (1)
            {
              v131 = 0;
              v132 = 0;
              v129 = 0;
              v130 = 0;
              memset(v139, 0, sizeof(v139));
              if (_DNSMessageExtractRecordEx(a1, a2, v67, v139, &v129 + 1, &v129, &v130, &v132, &v131, 0, 0, 0, 0, &v134) || v134 > v69 || DomainNameToString(v139, 0, __src, 0))
              {
                break;
              }

              if (v122 && _NameIsPrivate(__src))
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v102 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%~s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v102 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s");
              }

              if (v73)
              {
                break;
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " 0x%08X", v130))
              {
                break;
              }

              v74 = "ANY";
              if (v129 != 255)
              {
                v74 = 0;
              }

              if (v129 == 1)
              {
                v75 = "IN";
              }

              else
              {
                v75 = v74;
              }

              if (v75)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v102 = v75;
                v76 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v102 = v129;
                v76 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " CLASS%u");
              }

              if (v76)
              {
                break;
              }

              v77 = DNSRecordTypeValueToString(HIWORD(v129));
              if (v77)
              {
                v78 = v77;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v102 = v78;
                v79 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  break;
                }

                v102 = HIWORD(v129);
                v79 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " TYPE%u");
              }

              if (v79)
              {
                break;
              }

              DNSRecordDataToStringEx(v132, v131, HIWORD(v129), a1, a2, v122, &v133);
              if (v133)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s", v133))
                {
                  break;
                }

                if (v133)
                {
                  free(v133);
                  v133 = 0;
                }
              }

              else
              {
                if (v122)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    break;
                  }

                  v102 = v131;
                  v80 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " [%zu B]");
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    break;
                  }

                  v104 = v131;
                  v106 = v131;
                  v102 = v132;
                  v80 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %#H");
                }

                if (v80)
                {
                  break;
                }
              }

              v67 = v134;
              if (v134 >= v69)
              {
                goto LABEL_625;
              }
            }
          }

LABEL_631:
          v91 = -6735;
LABEL_626:
          if (v133)
          {
            free(v133);
          }

          if (v91)
          {
            goto LABEL_647;
          }

          v63 = v126;
          v64 = v118;
        }

        while (v126 < v121);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_647;
      }

      if (((a3 >> 2) & 1) != 0 ? _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "]", v102, v104, v106, v107) : _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "\n]", v102, v104, v106, v107))
      {
        goto LABEL_647;
      }
    }

LABEL_639:
    if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
    }

    if (_GetCUSymAddr_DataBuffer_Append_sAddr && !_GetCUSymAddr_DataBuffer_Append_sAddr(v127, "", 1))
    {
      if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
      }

      if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
      {
        _GetCUSymAddr_DataBuffer_Detach_sAddr(v127, a4, &v124);
      }
    }

    goto LABEL_647;
  }

  v19 = 0;
  v20 = 0;
  v117 = (v110 << 8) + v116;
  v21 = v136;
  v22 = a2;
  while (1)
  {
    LOWORD(__src[0]) = 0;
    LOWORD(v139[0]) = 0;
    if (DNSMessageExtractQuestion(a1, v22, v126, v21, __src, v139, &v126))
    {
      break;
    }

    v23 = SLOWORD(v139[0]) < 0;
    if (a3)
    {
      LOWORD(v139[0]) &= ~0x8000u;
    }

    v24 = a3 & v23;
    if ((a3 & 4) != 0)
    {
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s", v120))
      {
        break;
      }

      if (v20 && (DomainNameEqual(v21, v20) & 1) != 0)
      {
        v26 = v21;
        v21 = v20;
      }

      else
      {
        if (DomainNameToString(v21, 0, v137, 0))
        {
          break;
        }

        if (v122 && _NameIsPrivate(v137))
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v31 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%~s ");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v31 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s ");
        }

        if (v31)
        {
          break;
        }

        if (v21 == v136)
        {
          v26 = v135;
        }

        else
        {
          v26 = v136;
        }

        *v26 = 0;
      }

      v32 = "ANY";
      if (LOWORD(v139[0]) != 255)
      {
        v32 = 0;
      }

      if (LOWORD(v139[0]) == 1)
      {
        v33 = "IN";
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v34 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%s");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v34 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "CLASS%u");
      }

      if (v34)
      {
        break;
      }

      if (a3)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v35 = "QM";
        if (v24)
        {
          v35 = "QU";
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s", v35))
        {
          break;
        }
      }

      v36 = DNSRecordTypeValueToString(LOWORD(__src[0]));
      if (v36)
      {
        v37 = v36;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v102 = v37;
        v38 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s?");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v102 = LOWORD(__src[0]);
        v38 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " TYPE%u?");
      }

      if (v38)
      {
        break;
      }

      v20 = v21;
      v120 = ", ";
    }

    else
    {
      if (!v19)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr || _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "\nQUESTION SECTION\n"))
        {
          break;
        }
      }

      if (DomainNameToString(v21, 0, v137, 0))
      {
        break;
      }

      if (v122 && _NameIsPrivate(v137))
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v25 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%~-30s");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v25 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, "%-30s");
      }

      if (v25)
      {
        break;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        break;
      }

      v27 = "QM";
      if (v24)
      {
        v27 = "QU";
      }

      if ((a3 & 1) == 0)
      {
        v27 = "";
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %2s", v27))
      {
        break;
      }

      v28 = "ANY";
      if (LOWORD(v139[0]) != 255)
      {
        v28 = 0;
      }

      if (LOWORD(v139[0]) == 1)
      {
        v29 = "IN";
      }

      else
      {
        v29 = v28;
      }

      if (v29)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v30 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %s");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v30 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " CLASS%u");
      }

      if (v30)
      {
        break;
      }

      v39 = DNSRecordTypeValueToString(LOWORD(__src[0]));
      if (v39)
      {
        v40 = v39;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v102 = v40;
        v41 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " %-5s\n");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v102 = LOWORD(__src[0]);
        v41 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v127, " TYPE%u\n");
      }

      v26 = v21;
      if (v41)
      {
        break;
      }
    }

    ++v19;
    v21 = v26;
    v22 = a2;
    if (v117 == v19)
    {
      goto LABEL_200;
    }
  }

LABEL_647:
  if (v125)
  {
    free(v125);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v127);
  }
}

uint64_t _NameIsPrivate(const char *a1)
{
  result = strcasecmp(a1, ".");
  if (result)
  {
    return strcasecmp(a1, "ipv4only.arpa.") != 0;
  }

  return result;
}

uint64_t DNSRecordDataToStringEx(unsigned __int8 *a1, unint64_t a2, int a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global_5688);
  }

  v95 = 0;
  *v96 = 0;
  memset(v94, 0, sizeof(v94));
  v93 = 0;
  memset(v99, 0, sizeof(v99));
  bzero(v98, 0x3F1uLL);
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_464;
  }

  v88 = a7;
  v13 = &a1[a2];
  _GetCUSymAddr_DataBuffer_Init_sAddr(v94, v99, 256, -1);
  CUSymAddr_DataBuffer_Append_sAddr = 4294960582;
  if (a3 <= 32)
  {
    if (a3 <= 12)
    {
      if (a3 > 4)
      {
        if (a3 == 5)
        {
          goto LABEL_84;
        }

        if (a3 != 6)
        {
          if (a3 != 12)
          {
            goto LABEL_442;
          }

LABEL_84:
          if (a4)
          {
            DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v98, 0);
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }

          else
          {
            DomainNameString = DomainNameToString(a1, &a1[a2], v98, 0);
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }

LABEL_384:
          v82 = 0;
          goto LABEL_432;
        }

        if (a4)
        {
          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v98, v96);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          if (*v96 >= v13)
          {
            goto LABEL_467;
          }

          DomainNameString = _AppendDomainNameStringEx(v94, 0, a6, v98);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, *v96, v98, v96);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        else
        {
          DomainNameString = DomainNameToString(a1, &a1[a2], v98, v96);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = _AppendDomainNameStringEx(v94, 0, a6, v98);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = DomainNameToString(*v96, &a1[a2], v98, v96);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        DomainNameString = _AppendDomainNameStringEx(v94, " ", a6, v98);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        if (&v13[-*v96] == 20)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " %u %u %u %u %u");
          goto LABEL_377;
        }

LABEL_467:
        CUSymAddr_DataBuffer_Append_sAddr = 4294960554;
        goto LABEL_442;
      }

      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_442;
        }

        goto LABEL_84;
      }

      if (a2 != 4)
      {
        goto LABEL_467;
      }

      DomainNameString = _AppendIPv4Address(v94, 0, a1, a6);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

LABEL_433:
      if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
      }

      if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_Append_sAddr(v94, "", 1);
      if (!DomainNameString)
      {
        if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
        }

        if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
        {
          DomainNameString = _GetCUSymAddr_DataBuffer_Detach_sAddr(v94, v88, &v93);
          goto LABEL_441;
        }

LABEL_464:
        CUSymAddr_DataBuffer_Append_sAddr = 4294960561;
        goto LABEL_442;
      }

      goto LABEL_441;
    }

    if (a3 > 15)
    {
      if (a3 != 16)
      {
        if (a3 != 25)
        {
          if (a3 != 28)
          {
            goto LABEL_442;
          }

          if (a2 != 16)
          {
            goto LABEL_467;
          }

          DomainNameString = _AppendIPv6Address(v94, 0, a1, a6);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          goto LABEL_433;
        }

LABEL_227:
        if (a2 < 5)
        {
          goto LABEL_467;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        *v96 = a1 + 4;
        v100[0] = 0;
        if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253_5771);
        }

        if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v96, &v13[-*v96], 0, v100, 0);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_421;
        }

        goto LABEL_468;
      }

LABEL_240:
      if (a2)
      {
        if (a6)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "[%zu B]");
        }

        else if (a2 == 1)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%#H");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%#{txt}");
        }

LABEL_377:
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        goto LABEL_433;
      }

      goto LABEL_467;
    }

    if (a3 == 13)
    {
      goto LABEL_240;
    }

    if (a3 != 15)
    {
      goto LABEL_442;
    }

    if (a2 < 3)
    {
      goto LABEL_467;
    }

    v41 = *a1;
    v40 = (a1 + 2);
    v39 = v41;
    if (a4)
    {
      DomainNameString = DNSMessageExtractDomainNameString(a4, a5, v40, v98, 0);
      if (DomainNameString)
      {
        goto LABEL_441;
      }
    }

    else
    {
      DomainNameString = DomainNameToString(v40, v13, v98, 0);
      if (DomainNameString)
      {
        goto LABEL_441;
      }
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%u", __rev16(v39));
    if (!DomainNameString)
    {
LABEL_431:
      v82 = " ";
LABEL_432:
      DomainNameString = _AppendDomainNameStringEx(v94, v82, a6, v98);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      goto LABEL_433;
    }

LABEL_441:
    CUSymAddr_DataBuffer_Append_sAddr = DomainNameString;
    goto LABEL_442;
  }

  if (a3 > 46)
  {
    if (a3 <= 63)
    {
      if (a3 == 47)
      {
        if (a4)
        {
          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v98, v96);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        else
        {
          DomainNameString = DomainNameToString(a1, &a1[a2], v98, v96);
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        if (*v96 < v13)
        {
          DomainNameString = _AppendDomainNameStringEx(v94, 0, a6, v98);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          v21 = *v96;
LABEL_371:
          DomainNameString = _DNSRecordDataAppendTypeBitMap(v94, v21, v13);
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          goto LABEL_433;
        }

        goto LABEL_467;
      }

      if (a3 == 48)
      {
        goto LABEL_227;
      }

      if (a3 != 50)
      {
        goto LABEL_442;
      }

      if (a2 < 5)
      {
        goto LABEL_467;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%u %u %u", *a1, a1[1], __rev16(*(a1 + 1)));
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      *v96 = a1 + 4;
      if ((a2 - 4) < 1)
      {
        goto LABEL_467;
      }

      *v96 = a1 + 5;
      v16 = a1[4];
      if (a2 - 5 < v16)
      {
        goto LABEL_467;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " %.4H", *v96, v16, v16);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      v17 = (*v96 + v16);
      *v96 = v17;
      if (v13 - v17 < 1)
      {
        goto LABEL_467;
      }

      v18 = v17 + 1;
      *v96 = v17 + 1;
      v19 = *v17;
      if (v13 - (v17 + 1) < v19)
      {
        goto LABEL_467;
      }

      if (*v17)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " ");
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v18 = *v96;
      }

      v20 = &v18[v19];
      while (1)
      {
        v21 = *v96;
        v22 = &v20[-*v96];
        if (v20 == *v96)
        {
          goto LABEL_371;
        }

        v100[0] = 0;
        if (v22 > 2)
        {
          if (v22 == 4)
          {
            v27 = 0;
            goto LABEL_64;
          }

          if (v22 != 3)
          {
            goto LABEL_61;
          }

          v26 = *(*v96 + 2);
          v24 = (v26 << 16) | (*(*v96 + 1) << 24);
          v25 = v24 | (**v96 << 32);
          *v96 += 3;
          BYTE4(v100[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[2 * (v26 & 0xF)];
          v23 = 5;
        }

        else
        {
          if (v22 == 1)
          {
            v28 = 0;
            v25 = **v96 << 32;
            ++*v96;
            goto LABEL_74;
          }

          if (v22 != 2)
          {
LABEL_61:
            v27 = *(*v96 + 4);
LABEL_64:
            v29 = *(*v96 + 3);
            v30 = v27 | (v29 << 8);
            v24 = (*(*v96 + 1) << 24) | (*(*v96 + 2) << 16) | v30;
            v25 = v24 | (**v96 << 32);
            if (v22 >= 5)
            {
              v31 = 5;
            }

            else
            {
              v31 = &v20[-*v96];
            }

            *v96 += v31;
            if (v22 == 4)
            {
              v23 = 7;
            }

            else
            {
              HIBYTE(v100[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[v27 & 0x1F];
              v23 = 8;
            }

            v32 = DNSRecordDataToStringEx_kBase32ExtendedHex[(v29 >> 2) & 0x1F];
            BYTE6(v100[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v30 >> 5) & 0x1F];
            BYTE5(v100[0]) = v32;
            BYTE4(v100[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 15) & 0x1F];
            goto LABEL_71;
          }

          v23 = 0;
          v24 = *(*v96 + 1) << 24;
          v25 = v24 | (**v96 << 32);
          *v96 += 2;
        }

LABEL_71:
        BYTE3(v100[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 20) & 0x1F];
        BYTE2(v100[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 25) & 0x1F];
        if (v23)
        {
          v28 = v23;
        }

        else
        {
          v28 = 4;
        }

LABEL_74:
        BYTE1(v100[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v25 >> 30) & 0x1F];
        LOBYTE(v100[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[v25 >> 35];
        if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
        }

        if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
        {
          goto LABEL_464;
        }

        if (v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = 2;
        }

        CUSymAddr_DataBuffer_Append_sAddr = _GetCUSymAddr_DataBuffer_Append_sAddr(v94, v100, v33);
        if (CUSymAddr_DataBuffer_Append_sAddr)
        {
          goto LABEL_442;
        }
      }
    }

    if ((a3 - 64) >= 2)
    {
      goto LABEL_442;
    }

    if (v13 < a1)
    {
      goto LABEL_463;
    }

    if (a2 < 2)
    {
      goto LABEL_467;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%u", __rev16(*a1));
    if (DomainNameString)
    {
      goto LABEL_441;
    }

    bzero(v100, 0x3F1uLL);
    *v97 = a1 + 2;
    DomainNameString = DomainNameToString(a1 + 2, v13, v100, v97);
    if (DomainNameString)
    {
      goto LABEL_441;
    }

    DomainNameString = _AppendDomainNameStringEx(v94, " ", a6, v100);
    if (DomainNameString)
    {
      goto LABEL_441;
    }

    while (1)
    {
      v42 = *v97;
      if (*v97 >= v13)
      {
        goto LABEL_433;
      }

      if (&v13[-*v97] < 4)
      {
        goto LABEL_462;
      }

      v43 = __rev16(**v97);
      v44 = *(*v97 + 2);
      v45 = _DNSSVCBKeyToString(v43);
      if (v45)
      {
        v46 = v45;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        v87 = v46;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " %s=");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        v87 = v43;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " key%u=");
      }

      if (DomainNameString)
      {
        goto LABEL_441;
      }

      v47 = __rev16(v44);
      v48 = (v42 + 4);
      *v97 = v42 + 4;
      if (&v13[-v42 - 4] < v47)
      {
LABEL_462:
        CUSymAddr_DataBuffer_Append_sAddr = 4294960546;
        goto LABEL_442;
      }

      if (v43 > 4)
      {
        if (v43 > 32766)
        {
          if (v43 != 0x7FFF)
          {
            if (v43 == 32769)
            {
LABEL_163:
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              v87 = *v97;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%.4H");
LABEL_218:
              if (DomainNameString)
              {
                goto LABEL_441;
              }
            }

            else
            {
LABEL_213:
              if (a6)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_464;
                }

                v87 = v47;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "<%u redacted bytes>");
                goto LABEL_218;
              }

              DomainNameString = _AppendEscapedASCIIString(v94, (v42 + 4), &v48[v47], "");
              if (DomainNameString)
              {
                goto LABEL_441;
              }
            }

            *v97 += v47;
            goto LABEL_220;
          }

          v67 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v68 = 0;
            v69 = 1;
            do
            {
              if ((v69 & 1) == 0)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_464;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%s", v68);
                if (DomainNameString)
                {
                  goto LABEL_441;
                }

                v48 = *v97;
              }

              v70 = *v48;
              if (v70 > 2)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_464;
                }

                v87 = v70;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "sla%u");
              }

              else
              {
                v71 = off_1001526F8[*v48];
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_464;
                }

                v87 = v71;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%s");
              }

              if (DomainNameString)
              {
                goto LABEL_441;
              }

              v69 = 0;
              v48 = (*v97 + 1);
              *v97 = v48;
              v68 = ",";
            }

            while (v48 < v67);
          }
        }

        else
        {
          if (v43 == 5)
          {
            goto LABEL_163;
          }

          if (v43 != 6)
          {
            goto LABEL_213;
          }

          if ((v47 & 0xF) != 0)
          {
            goto LABEL_467;
          }

          v55 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v56 = "";
            v57 = v42 + 4;
            while (1)
            {
              CUSymAddr_DataBuffer_Append_sAddr = _AppendIPv6Address(v94, v56, v57, a6);
              if (CUSymAddr_DataBuffer_Append_sAddr)
              {
                goto LABEL_442;
              }

              v57 = *v97 + 16;
              *v97 = v57;
              if (v57 >= v55)
              {
                break;
              }

              v56 = ",";
            }
          }
        }
      }

      else if (v43 > 2)
      {
        if (v43 == 3)
        {
          if (v47 != 2)
          {
            goto LABEL_467;
          }

          v66 = *(v42 + 4);
          *v97 = &v48[v47];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%u", __rev16(v66));
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }

        else
        {
          if ((v47 & 3) != 0)
          {
            goto LABEL_467;
          }

          v58 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v59 = "";
            v60 = (v42 + 4);
            while (1)
            {
              CUSymAddr_DataBuffer_Append_sAddr = _AppendIPv4Address(v94, v59, v60, a6);
              if (CUSymAddr_DataBuffer_Append_sAddr)
              {
                goto LABEL_442;
              }

              v60 = (*v97 + 4);
              *v97 = v60;
              if (v60 >= v58)
              {
                break;
              }

              v59 = ",";
            }
          }
        }
      }

      else if (v43)
      {
        if (v43 != 1)
        {
          goto LABEL_213;
        }

        v49 = 0;
        v50 = &v48[v47];
        v51 = 1;
        while (*v97 < v50)
        {
          v53 = (*v97 + 1);
          v52 = **v97;
          if (*v97 + 1 > v50)
          {
            goto LABEL_463;
          }

          if (v50 - v53 < v52)
          {
            goto LABEL_462;
          }

          v54 = &v53[v52];
          *v97 = &v53[v52];
          if ((v51 & 1) == 0)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_464;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%s", v49);
            if (DomainNameString)
            {
              goto LABEL_441;
            }

            v54 = *v97;
          }

          DomainNameString = _AppendEscapedASCIIString(v94, v53, v54, ",");
          v51 = 0;
          v49 = ",";
          if (DomainNameString)
          {
            goto LABEL_441;
          }
        }
      }

      else
      {
        if (v47)
        {
          goto LABEL_467;
        }

        v61 = &v48[v47];
        if (v48 < v61)
        {
          v62 = 0;
          v63 = 1;
          do
          {
            v64 = __rev16(*v48);
            *v97 = v48 + 2;
            v65 = _DNSSVCBKeyToString(v64);
            if ((v63 & 1) == 0)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%s", v62);
              if (DomainNameString)
              {
                goto LABEL_441;
              }
            }

            if (v65)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              v87 = v65;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              v87 = v64;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "key%u");
            }

            if (DomainNameString)
            {
              goto LABEL_441;
            }

            v63 = 0;
            v48 = *v97;
            v62 = ",";
          }

          while (*v97 < v61);
        }
      }

LABEL_220:
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "", v87);
      if (DomainNameString)
      {
        goto LABEL_441;
      }
    }
  }

  if (a3 <= 40)
  {
    if (a3 == 33)
    {
      if (a2 < 7)
      {
        goto LABEL_467;
      }

      if (a4)
      {
        DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1 + 6, v98, 0);
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      else
      {
        DomainNameString = DomainNameToString(a1 + 6, &a1[a2], v98, 0);
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%u %u %u ", __rev16(*a1), __rev16(*(a1 + 1)), __rev16(*(a1 + 2)));
      if (!DomainNameString)
      {
        goto LABEL_384;
      }

      goto LABEL_441;
    }

    if (a3 != 35)
    {
      goto LABEL_442;
    }

    v34 = 1;
    *v96 = a1;
    while (1)
    {
      v35 = v34;
      if (*v96 > v13)
      {
        goto LABEL_463;
      }

      if (&v13[-*v96] < 2)
      {
        goto LABEL_462;
      }

      v36 = **v96;
      *v96 += 2;
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      v37 = __rev16(v36);
      if (v35)
      {
        v38 = "";
      }

      else
      {
        v38 = " ";
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%s%u", v38, v37);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      v34 = 0;
      if ((v35 & 1) == 0)
      {
        v84 = 3;
        while (*v96 <= v13)
        {
          if (v13 == *v96)
          {
            goto LABEL_462;
          }

          v86 = (*v96 + 1);
          v85 = **v96;
          if (*v96 + 1 > v13)
          {
            break;
          }

          if (v13 - v86 < v85)
          {
            goto LABEL_462;
          }

          *v96 = &v86[v85];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " ");
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          DomainNameString = _AppendEscapedASCIIString(v94, v86, *v96, "");
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "");
          if (DomainNameString)
          {
            goto LABEL_441;
          }

          if (!--v84)
          {
            DomainNameString = DomainNameToString(*v96, v13, v98, v96);
            if (DomainNameString)
            {
              goto LABEL_441;
            }

            goto LABEL_431;
          }
        }

        goto LABEL_463;
      }
    }
  }

  if (a3 == 41)
  {
    if (v13 >= a1)
    {
      v72 = "";
      while (1)
      {
        if (a1 >= v13)
        {
          goto LABEL_433;
        }

        if ((v13 - a1) < 4)
        {
          goto LABEL_462;
        }

        v73 = a1 + 4;
        v74 = __rev16(*(a1 + 1));
        if (v13 - (a1 + 4) < v74)
        {
          goto LABEL_462;
        }

        v75 = *a1;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%s{", v72);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v76 = __rev16(v75);
        if (v76 == 12)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "Padding");
        }

        else if (v76 == 15)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "EDE");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_464;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "CODE%u");
        }

        if (DomainNameString)
        {
          goto LABEL_441;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, ", ");
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v77 = &v73[v74];
        if (v76 != 15 || !v74)
        {
          break;
        }

        if (v74 < 2)
        {
          goto LABEL_462;
        }

        v78 = *(a1 + 2);
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        v79 = __rev16(v78);
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "code: %u", v79);
        if (DomainNameString)
        {
          goto LABEL_441;
        }

        v80 = (v77 - (a1 + 6));
        if (v80 | v79)
        {
          if (v79 <= 0x18)
          {
            v81 = off_100152710[v79];
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_464;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " (%s)", v81);
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }

          if (v80)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_464;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, ", extra-text: ");
            if (DomainNameString)
            {
              goto LABEL_441;
            }

            if (a6)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "«REDACTED»");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_464;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "'%.*s'");
            }

LABEL_333:
            if (DomainNameString)
            {
              goto LABEL_441;
            }
          }
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "}");
        a1 = v77;
        v72 = ", ";
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      if (a6)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "[%u B]");
      }

      else if (v76 == 12 && v74 && !*v73 && !memcmp(a1 + 4, a1 + 5, v74 - 1))
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "<%u zero bytes>");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "'%H'");
      }

      goto LABEL_333;
    }

LABEL_463:
    CUSymAddr_DataBuffer_Append_sAddr = 4294960586;
    goto LABEL_442;
  }

  if (a3 == 43)
  {
    if (a2 >= 4)
    {
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_464;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
      if (DomainNameString)
      {
        goto LABEL_441;
      }

      if (a2 != 4)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_464;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " %.4H", a1 + 4, a2 - 4, a2 - 4);
        if (DomainNameString)
        {
          goto LABEL_441;
        }
      }

      goto LABEL_433;
    }

    goto LABEL_467;
  }

  if (a3 != 46)
  {
    goto LABEL_442;
  }

  v97[0] = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  if (a2 < 0x13)
  {
    goto LABEL_467;
  }

  if (DNSRecordTypeValueToString(__rev16(*a1)))
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "%s");
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_464;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, "TYPE%u");
  }

  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " %u %u %u", a1[2], a1[3], bswap32(*(a1 + 1)));
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  v97[0] = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
  }

  if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
  {
    goto LABEL_464;
  }

  _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 2)) + 0xE77934880, v97, &v92 + 4, &v92, &v91 + 4, &v91, &v90);
  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " %u%02u%02u%02u%02u%02u", v97[0], HIDWORD(v92), v92, HIDWORD(v91), v91, v90);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
  }

  if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
  {
    goto LABEL_464;
  }

  _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 3)) + 0xE77934880, v97, &v92 + 4, &v92, &v91 + 4, &v91, &v90);
  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " %u%02u%02u%02u%02u%02u", v97[0], HIDWORD(v92), v92, HIDWORD(v91), v91, v90);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " %u", __rev16(*(a1 + 8)));
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  *v96 = a1 + 18;
  DomainNameString = DomainNameToString(a1 + 18, v13, v98, v96);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  DomainNameString = _AppendDomainNameStringEx(v94, " ", a6, v98);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  v100[0] = 0;
  if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253_5771);
  }

  if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
  {
    goto LABEL_464;
  }

  DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v96, &v13[-*v96], 0, v100, 0);
  if (DomainNameString)
  {
    goto LABEL_441;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
LABEL_421:
    CUSymAddr_DataBuffer_Append_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v94, " %s", v100[0]);
    goto LABEL_422;
  }

LABEL_468:
  CUSymAddr_DataBuffer_Append_sAddr = 4294960561;
LABEL_422:
  if (v100[0])
  {
    free(v100[0]);
  }

  if (!CUSymAddr_DataBuffer_Append_sAddr)
  {
    goto LABEL_433;
  }

LABEL_442:
  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v94);
  }

  return CUSymAddr_DataBuffer_Append_sAddr;
}

uint64_t _AppendIPv4Address(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4)
  {
    v4 = bswap32(*a3);
    if (v4)
    {
      v5 = v4 == 2130706433;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
  }

  else
  {
    v6 = 0;
  }

  return _AppendIPAddress(a1, a2, a3, 4, v6);
}

uint64_t _AppendIPv6Address(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (*a3 | *(a3 + 7))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(a3 + 15) > 1u;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return _AppendIPAddress(a1, a2, a3, 16, v5);
}

uint64_t _AppendDomainNameStringEx(uint64_t a1, const char *a2, int a3, const char *a4)
{
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = "";
  }

  if (a3 && _NameIsPrivate(a4))
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "%s%~s", v6, a4);
    }
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "%s%s");
    }
  }

  return 4294960561;
}

uint64_t _DNSRecordDataAppendTypeBitMap(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 - a2 >= 1)
  {
    while (2)
    {
      if (v3 < 3)
      {
        return 4294960554;
      }

      v5 = a2[1];
      if ((v5 - 33) < 0xFFFFFFE0)
      {
        return 4294960554;
      }

      v6 = a2 + 2;
      if (a3 - (a2 + 2) < v5)
      {
        return 4294960554;
      }

      v13 = a3 - (a2 + 2);
      v14 = a2[1];
      v7 = 0;
      v8 = 8 * v5;
      v9 = *a2 << 8;
      v10 = 1;
      while (1)
      {
        if ((v6[v7 >> 3] >> (~v7 & 7)))
        {
          *__str = 0u;
          v17 = 0u;
          v11 = DNSRecordTypeValueToString(v9 + v7);
          if (!v11)
          {
            v11 = __str;
            snprintf(__str, 0x20uLL, "TYPE%d", v9 + v7);
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            return 4294960561;
          }

          result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, " %s", v11);
          if (result)
          {
            break;
          }
        }

        v10 = ++v7 < v8;
        if (v8 == v7)
        {
          v6 += v14;
          v3 = a3 - v6;
          goto LABEL_16;
        }
      }

      v3 = v13;
      if (v10)
      {
        return result;
      }

LABEL_16:
      a2 = v6;
      if (v3 > 0)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

const char *_DNSSVCBKeyToString(int a1)
{
  if (a1 > 4)
  {
    if (a1 > 32766)
    {
      switch(a1)
      {
        case 32767:
          return "sla";
        case 32768:
          return "dohuri";
        case 32769:
          return "odohconfig";
      }
    }

    else
    {
      switch(a1)
      {
        case 5:
          return "echconfig";
        case 6:
          return "ipv6hint";
        case 7:
          return "dohpath";
      }
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return "mandatory";
    }

    if (a1 == 1)
    {
      return "alpn";
    }

    return 0;
  }

  if (a1 == 2)
  {
    return "no-default-alpn";
  }

  if (a1 == 3)
  {
    return "port";
  }

  return "ipv4hint";
}

uint64_t _AppendEscapedASCIIString(uint64_t a1, unsigned __int8 *a2, unint64_t a3, char *__s)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v6 = a2;
  while (v6 < a3)
  {
    v8 = 0;
    while (1)
    {
      v9 = v6[v8];
      if (v9 == 92 || (v9 - 127) < 0xFFFFFFA1 || __s && strchr(__s, v9))
      {
        break;
      }

      if (a3 - v6 == ++v8)
      {
        v8 = a3 - v6;
        break;
      }
    }

    if (!v8)
    {
      break;
    }

    if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
    }

    if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
    {
      return 4294960561;
    }

    result = _GetCUSymAddr_DataBuffer_Append_sAddr(a1, v6, v8);
    if (result)
    {
      return result;
    }

    v6 += v8;
LABEL_27:
    if (v6 >= a3)
    {
      return 0;
    }
  }

  v11 = *v6++;
  if ((v11 - 32) <= 0x5E)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return 4294960561;
    }

    result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "\\%c");
    goto LABEL_26;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "\\%03d");
LABEL_26:
    if (result)
    {
      return result;
    }

    goto LABEL_27;
  }

  return 4294960561;
}

uint64_t _AppendIPAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a4 != 16 && a4 != 4)
  {
    return 4294960553;
  }

  if (!a5)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "%s%.*a");
    }

    return 4294960561;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (!_GetCUSymAddr_SNPrintF_sAddr)
  {
    return 4294960561;
  }

  result = _GetCUSymAddr_SNPrintF_sAddr(v9, 33, "%.4H", a3, a4, a4);
  if ((result & 0x80000000) == 0)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "%s%~s");
    }

    return 4294960561;
  }

  return result;
}

uint64_t DNSMessagePrintObfuscatedString(uint64_t a1, const char *a2)
{
  if (_NameIsPrivate(a2))
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, 64, "%~s", a2);
    }
  }

  else
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, 64, "%s");
    }
  }

  return 4294960561;
}

uint64_t _DNSMessagePrintObfuscatedIPAddress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 16 && a3 != 4)
  {
    return 4294960553;
  }

  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (!_GetCUSymAddr_SNPrintF_sAddr)
  {
    return 4294960561;
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  result = _GetCUSymAddr_SNPrintF_sAddr(v7, 33, "%.4H", a2, a3, a3);
  if ((result & 0x80000000) == 0)
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, 64, "%~s", v7);
    }

    return 4294960561;
  }

  return result;
}

char *put_hex_from_bytes(unsigned __int8 *a1, uint64_t a2, char *__str, unint64_t a4)
{
  v4 = __str;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      if (2 * a2 < a4)
      {
        v6 = a1;
        v7 = &__str[a4];
        do
        {
          v8 = *v6++;
          v4 += snprintf(v4, v7 - v4, "%02X", v8);
          --v5;
        }

        while (v5);
      }
    }
  }

  return v4;
}

void _dnssec_obj_rr_nsec3_finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 80) = 0;
  }
}

uint64_t _dnssec_obj_rr_nsec3_compare(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 3;
  }

  v6 = *(*(a2 + 16) + 16);
  if (!domain_name_labels_get_parent(*(*(a1 + 16) + 16), 1uLL))
  {
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = mDNSLogCategory_DNSSEC;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return 2;
      }
    }

    else
    {
      v10 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 2;
      }
    }

    v12 = 136447234;
    v13 = "my_parent != NULL";
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_nsec3.c";
    v18 = 1024;
    v19 = 205;
    v20 = 2048;
    v21 = 0;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v12, 0x30u);
    return 2;
  }

  if (!domain_name_labels_get_parent(v6, 1uLL))
  {
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      v10 = mDNSLogCategory_DNSSEC;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return 2;
      }
    }

    else
    {
      v10 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return 2;
      }
    }

    v12 = 136447234;
    v13 = "others_parent != NULL";
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_nsec3.c";
    v18 = 1024;
    v19 = 208;
    v20 = 2048;
    v21 = 0;
    goto LABEL_25;
  }

  if (domain_name_labels_canonical_compare())
  {
    return 2;
  }

  v7 = *(*(a1 + 16) + 16);
  v8 = *(*(a2 + 16) + 16);

  return domain_name_label_canonical_compare(v7, v8, 0);
}

BOOL dnssec_obj_rr_nsec3_asserts_name_exists_data_does_not_exist(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (*(a1 + 34) != a3)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = (v6 + *(v6 + 4) + 5 + *(v6 + *(v6 + 4) + 5) + 1);
  v8 = *(a1 + 36) - (*(v6 + 4) + 5 + *(v6 + *(v6 + 4) + 5) + 1);
  if (rdata_parser_type_bit_maps_cover_dns_type(v7, v8, a4))
  {
    return 0;
  }

  v10 = &v7[v8];
  if ((v7 + 1) < v10)
  {
    v11 = 0;
    do
    {
      v12 = v7[1];
      v13 = &v7[v12 + 2];
      if (v13 > v10)
      {
        break;
      }

      if (!*v7 && v12 != 0)
      {
        v11 |= (v7[2] & 4) >> 2;
      }

      v7 += v12 + 2;
    }

    while (v13 + 1 < v10);
    if (v11)
    {
      return 0;
    }
  }

  nsec3_hashed_name = dnssec_obj_domain_name_get_nsec3_hashed_name(a2, a1);
  if (nsec3_hashed_name)
  {
    return ref_count_obj_compare(*(a1 + 16), nsec3_hashed_name, 1) == 0;
  }

  v16 = mDNSLogCategory_DNSSEC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_22:
      v17 = 136447234;
      v18 = "hashed_name != NULL";
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_nsec3.c";
      v23 = 1024;
      v24 = 316;
      v25 = 2048;
      v26 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v17, 0x30u);
      return 0;
    }
  }

  else
  {
    v16 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_22;
    }
  }

  return result;
}

BOOL dnssec_obj_rr_nsec3_asserts_name_does_not_exist(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 34) != a3)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 80);
  nsec3_hashed_name = dnssec_obj_domain_name_get_nsec3_hashed_name(a2, a1);
  if (nsec3_hashed_name)
  {
    v7 = nsec3_hashed_name;
    v8 = *(a1 + 88);
    v9 = ref_count_obj_compare(v4, nsec3_hashed_name, 0);
    if (v8)
    {
      if (v9 == -1)
      {
        return 1;
      }

      return ref_count_obj_compare(v7, v5, 0) == -1;
    }

    if (v9 == -1)
    {
      return ref_count_obj_compare(v7, v5, 0) == -1;
    }

    return 0;
  }

  if (mDNS_SensitiveLoggingEnableCount)
  {
    v11 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = mDNSLogCategory_DNSSEC;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_18:
      v13 = 136447234;
      v14 = "hashed_name != NULL";
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rr_nsec3.c";
      v19 = 1024;
      v20 = 339;
      v21 = 2048;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v13, 0x30u);
      return 0;
    }
  }

  else
  {
    v12 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_18;
    }
  }

  return result;
}