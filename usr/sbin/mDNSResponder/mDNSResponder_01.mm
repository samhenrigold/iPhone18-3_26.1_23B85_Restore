_BYTE *AppendDomainName(_BYTE *a1, _BYTE *a2)
{
  v3 = 257;
  v4 = a1;
  do
  {
    if (!v4)
    {
      break;
    }

    v5 = *v4;
    if (v5 > 0x3F)
    {
      break;
    }

    if (!*v4)
    {
      v3 = (v4 - a1 + 1);
      break;
    }

    v4 += v5 + 1;
  }

  while (v4 - a1 < 256);
  result = &a1[v3 - 1];
  v7 = *a2;
  if (*a2)
  {
    v8 = a1 + 255;
    while (&result[v7 + 1] <= v8)
    {
      v9 = 0;
      do
      {
        result[v9] = a2[v9];
        v10 = v9 + 1;
      }

      while (v9++ < *a2);
      result += v10;
      *result = 0;
      a2 += v10;
      v7 = *a2;
      if (!*a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t mDNS_StartQuery_internal(uint64_t a1, uint64_t a2)
{
  v2 = 4294901749;
  if (!*(a1 + 240))
  {
    return 4294901750;
  }

  v5 = a1 + 0x4000;
  v6 = (a2 + 376);
  v7 = (a2 + 376);
  while (1)
  {
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = *v7;
    if (v8 > 0x3F)
    {
      goto LABEL_22;
    }

    if (!*v7)
    {
      break;
    }

    v7 += v8 + 1;
    if (v7 - v6 > 255)
    {
      goto LABEL_22;
    }
  }

  if ((v7 - v6 + 1) > 0x100u)
  {
LABEL_22:
    v19 = mDNSLogCategory_Default;
    v20 = DNSTypeName(*(a2 + 342));
    LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "ValidateParameters: Attempt to start query with invalid qname %##s (%s)", v6, v20);
    return 4294901747;
  }

  v9 = *(a2 + 136);
  if (v9 != 0 && v9 < 0xFFFFFFFFFFFFFFFBLL || ((1 << (v9 + 5)) & 0x2D) == 0)
  {
    v22 = (a1 + 12656);
    while (1)
    {
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      if (v22[444] == v9)
      {
        goto LABEL_14;
      }
    }

    if (mDNS_LoggingEnabled == 1)
    {
      v25 = mDNSLogCategory_Default;
      v26 = DNSTypeName(*(a2 + 342));
      LogMsgWithLevel(v25, OS_LOG_TYPE_DEFAULT, "ValidateParameters: Note: InterfaceID %d for question %##s (%s) not currently found in active interface list", v9, v6, v26);
    }
  }

LABEL_14:
  v11 = *v6;
  if (*v6)
  {
    v12 = v6;
    do
    {
      v13 = v12;
      v14 = &v12[v11];
      v15 = v14[1];
      v12 = v14 + 1;
      v11 = v15;
    }

    while (v15);
    v16 = *v13;
    if (*v13)
    {
      v17 = v13 + 1;
      while (1)
      {
        v18 = *v17++;
        if (v18 < 0)
        {
          break;
        }

        if (!--v16)
        {
          goto LABEL_40;
        }
      }

      memset(__src, 0, 256);
      if (PerformNextPunycodeConversion(a2, __src))
      {
        v23 = __src;
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
            v27 = v23 - __src + 1;
            if (v27 <= 0x100u)
            {
              memcpy(v6, __src, v27);
              goto LABEL_40;
            }

            break;
          }

          v23 += v24 + 1;
        }

        while (v23 - __src <= 255);
        *v6 = 0;
      }
    }
  }

LABEL_40:
  if (IsSubdomain(v6, "\tlocalhost"))
  {
    v28 = "\tlocalhost";
    do
    {
      if (!v28)
      {
        break;
      }

      v29 = *v28;
      if (v29 > 0x3F)
      {
        break;
      }

      if (!*v28)
      {
        v30 = v28 - "\tlocalhost" + 1;
        if (v30 <= 0x100u)
        {
          memcpy(v6, "\tlocalhost", v30);
          goto LABEL_50;
        }

        break;
      }

      v28 += v29 + 1;
    }

    while (v28 - "\tlocalhost" <= 255);
    *v6 = 0;
  }

LABEL_50:
  if (*(a2 + 638) || *(a2 + 653) || ((v56 = *(a2 + 136) + 5, v56 <= 3) ? (v57 = v56 == 1) : (v57 = 1), v57 && !*(a2 + 634) && !IsLocalDomain(v6)))
  {
    v31 = mDNS_NewMessageID(a1);
  }

  else
  {
    v31 = 0;
  }

  *(a2 + 340) = v31;
  if (DNSQuestionIsEligibleForMDNSAlternativeService(a2) && Querier_IsMDNSAlternativeServiceAvailableForQuestion(a2))
  {
    *(a2 + 340) = mDNS_NewMessageID(a1);
  }

  if (DNSQuestionNeedsSensitiveLogging(a2))
  {
    mDNSEnableSensitiveLoggingForQuestion(bswap32(*(a2 + 340)) >> 16);
  }

  v32 = *(a2 + 136);
  v35 = v32 == -2 || v32 == -3 || v32 == -5;
  if (!&_NEHelperTrackerGetAppInfo || !*(a2 + 340) || *(a2 + 344) != 1 || (v32 + 5) <= 3 && v32 != -4)
  {
    goto LABEL_72;
  }

  v61 = *(a2 + 342);
  if (v61 > 0x1C || ((1 << v61) & 0x10000022) == 0)
  {
    goto LABEL_72;
  }

  v62 = &s_head_0;
  while (1)
  {
    v62 = *v62;
    if (!v62)
    {
      break;
    }

    if (v62[1] == a2)
    {
      v63 = kCFAllocatorDefault;
LABEL_206:
      bzero(__src, 0x3F1uLL);
      ConvertDomainNameToCString_withescape(v6, __src);
      v97 = CFStringCreateWithCString(v63, __src, 0x8000100u);
      if (v97)
      {
        v98 = v97;
        v99 = v62[5];
        v245.length = CFArrayGetCount(v99);
        v245.location = 0;
        if (CFArrayGetFirstIndexOfValue(v99, v245, v98) == -1)
        {
          CFArrayInsertValueAtIndex(v62[5], 0, v98);
        }

        CFRelease(v98);
      }

      goto LABEL_72;
    }
  }

  v94 = malloc_type_calloc(1uLL, 0x38uLL, 0xAEA45FD1uLL);
  if (!v94)
  {
    goto LABEL_553;
  }

  v62 = v94;
  v63 = kCFAllocatorDefault;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v62[5] = Mutable;
  if (Mutable)
  {
    v96 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v62[6] = v96;
    if (v96)
    {
      *v62 = s_head_0;
      v62[1] = a2;
      s_head_0 = v62;
      goto LABEL_206;
    }

    v241 = v62[5];
    if (v241)
    {
      CFRelease(v241);
      v62[5] = 0;
    }
  }

  v242 = v62[6];
  if (v242)
  {
    CFRelease(v242);
  }

  free(v62);
LABEL_72:
  v36 = 192;
  if (v35)
  {
    v36 = 216;
  }

    ;
  }

  if (!i)
  {
    v44 = *(a2 + 632);
    v45 = Querier_QuestionBelongsToSelf(a2);
    v46 = IsLocalDomain(v6);
    if (v44)
    {
      if (!v45 && !v46)
      {
        DNSServiceManager = Querier_GetDNSServiceManager();
        if ((!DNSServiceManager || !_Querier_GetCustomPushService(DNSServiceManager, a2)) && !*(a2 + 184) && dns_push_handle_question_start(a1, a2))
        {
          return 4294901756;
        }
      }
    }

    *(a2 + 8) = 0;
    *(a2 + 212) = 334;
    v48 = DomainNameHashValue(v6);
    *(a2 + 200) = v48;
    if (*(a2 + 340))
    {
      v49 = 0;
    }

    else
    {
      v49 = CheckForSoonToExpireRecordsEx(a1, v6, v48, *(a2 + 342), *(a2 + 344), *(a2 + 136));
    }

    *(a2 + 204) = v49;
    *(a2 + 208) = *(a1 + 64);
    *(a2 + 216) = 0;
    v53 = *(a1 + 132);
    *(a2 + 224) = 0;
    *(a2 + 220) = v53;
    v54 = *(a2 + 324);
    if ((v54 & 0x2000000) != 0)
    {
      v55 = 1;
    }

    else
    {
      if ((v54 & 0x4000000) == 0)
      {
        *(a2 + 351) = 0;
        goto LABEL_120;
      }

      v55 = 20;
    }

    *(a2 + 351) = v55;
LABEL_120:
    *(a2 + 359) = 0;
    *(a2 + 232) = 0;
    *(a2 + 355) = 0;
    *(a2 + 655) = 0;
    v35 = &unk_10016D000;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    if ((v54 & 0x10000000) != 0)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v59 = mDNSLogCategory_Default;
        v60 = DNSTypeName(*(a2 + 342));
        LogMsgWithLevel(v59, OS_LOG_TYPE_DEFAULT, "InitCommonState: Query for %##s (%s), PID[%d], EUID[%d], ServiceID[%d] is already set by client", v6, v60, *(a2 + 244), *(a2 + 248), *(a2 + 280));
      }

LABEL_140:
      v66 = *(a2 + 80);
      if (v66)
      {
        os_release(v66);
        *(a2 + 80) = 0;
      }

      *(a2 + 649) = 0;
      v67 = *(a2 + 637);
      if (*(a2 + 637))
      {
        v68 = *(a2 + 240);
      }

      else
      {
        v68 = 0;
      }

      *(a2 + 240) = v68;
      *(a2 + 268) = 0;
      *(a2 + 260) = 0;
      if ((*(a2 + 136) + 5) <= 3 && *(a2 + 136) != -4)
      {
        if (!v67)
        {
LABEL_349:
          if (*(a2 + 152) == GetZoneData_QuestionCallback || *(a2 + 342) == 6)
          {
            AuthInfoForName_internal = 0;
          }

          else
          {
            AuthInfoForName_internal = GetAuthInfoForName_internal(a1, v6);
          }

          *(a2 + 32) = AuthInfoForName_internal;
          if (*(a2 + 340))
          {
            Suppression = DetermineUnicastQuerySuppression(a2, *(a2 + 80));
          }

          else
          {
            Suppression = 0;
          }

          *(a2 + 354) = Suppression != 0;
          if (*(a2 + 645))
          {
            v165 = Suppression == 6;
          }

          else
          {
            v165 = 0;
          }

          v166 = v165;
          *(a2 + 646) = v166;
          *(a2 + 48) = 0;
          *(a2 + 64) = 0;
          *(a2 + 358) = 0;
          *(a2 + 352) = 2;
          *(a2 + 256) = *(a1 + 64);
          if (*(a2 + 639))
          {
            v167 = 3;
          }

          else
          {
            v167 = 0;
          }

          *(a2 + 356) = v167;
          *(a2 + 144) = 0;
          v168 = *(a2 + 204);
          if (v168 && *(v35 + 208))
          {
            v169 = mDNSLogCategory_Default;
            v170 = (v168 - *(a1 + 64));
            v171 = DNSTypeName(*(a2 + 342));
            LogMsgWithLevel(v169, OS_LOG_TYPE_DEFAULT, "InitCommonState: Delaying answering for %d ticks while cache stabilizes for %##s (%s)", v170, v6, v171);
          }

          *(a2 + 72) = 0;
          v172 = *(a2 + 96);
          if (v172)
          {
            mdns_client_invalidate(v172);
            os_release(*(a2 + 96));
            *(a2 + 96) = 0;
          }

          *(a2 + 300) = 0;
          *(a2 + 284) = 0u;
          *(a2 + 336) = 0;
          *(a2 + 104) = 0u;
          *(a2 + 350) = 1;
          *(a2 + 272) = 0;
          *(a2 + 328) = 0;
          *(a2 + 346) = 0;
          v2 = *(a1 + 192);
          if (!v2 || v2 == a2)
          {
LABEL_414:
            v2 = 0;
            *(a2 + 40) = 0;
            v181 = 1;
            goto LABEL_415;
          }

          v173 = QuestionSendsMDNSQueriesViaUnicast(a2);
          while (1)
          {
            if ((*(v2 + 340) == 0) == (*(a2 + 340) != 0) || *(v2 + 200) != *(a2 + 200) || *(v2 + 136) != *(a2 + 136) || *(v2 + 342) != *(a2 + 342) || *(v2 + 344) != *(a2 + 344))
            {
              goto LABEL_409;
            }

            v174 = !*(a2 + 340) || *(a2 + 632) == 0;
            v175 = !v174;
            v176 = !*(v2 + 340) || *(v2 + 632) == 0;
            v177 = v176;
            if (v177 == v175 || *(v2 + 32) && !*(a2 + 32))
            {
              goto LABEL_409;
            }

            if ((*(v2 + 354) == 0) == (*(a2 + 354) != 0))
            {
              goto LABEL_409;
            }

            if (*(v2 + 351) != *(a2 + 351))
            {
              goto LABEL_409;
            }

            if (((*(a2 + 324) ^ *(v2 + 324)) & 0x100000) != 0)
            {
              goto LABEL_409;
            }

            if (*(v2 + 80) != *(a2 + 80))
            {
              goto LABEL_409;
            }

            if ((*(v2 + 656) == 0) == (*(a2 + 656) != 0))
            {
              goto LABEL_409;
            }

            if (*(v2 + 656))
            {
              v178 = *(v2 + 144);
              if (!v178 || *(v178 + 24) != 1)
              {
                goto LABEL_409;
              }
            }

            if (!SameDomainNameBytes((v2 + 376), v6))
            {
              goto LABEL_409;
            }

            v179 = QuestionSendsMDNSQueriesViaUnicast(v2);
            if (!v173)
            {
              break;
            }

            if (v179 && mDNSSameAddress((a2 + 304), (v2 + 304)))
            {
              goto LABEL_407;
            }

LABEL_409:
            v2 = *(v2 + 8);
            if (v2)
            {
              v180 = v2 == a2;
            }

            else
            {
              v180 = 1;
            }

            if (v180)
            {
              goto LABEL_414;
            }
          }

          if (v179)
          {
            goto LABEL_409;
          }

LABEL_407:
          if ((*(v2 + 184) != 0) != (*(a2 + 184) != 0) || (*(v2 + 644) == 0) == (*(a2 + 644) != 0))
          {
            goto LABEL_409;
          }

          v181 = 0;
          *(a2 + 40) = v2;
          *(a2 + 32) = *(v2 + 32);
LABEL_415:
          v182 = *(a2 + 136) + 5;
          if (v182 > 3)
          {
            v184 = &xmmword_10016D2D8;
            v183 = &xmmword_10016D2D8 + 1;
          }

          else
          {
            v183 = (&off_100153F78)[v182];
            v184 = *(&off_100153F98 + v182);
          }

          v185 = *v183;
          v186 = *v184;
          if (*v184)
          {
            v187 = 0;
            v188 = 0;
            do
            {
              if (v185)
              {
                if (v188 || v186 == v185)
                {
                  v189 = *(v186 + 204);
                  if (v189)
                  {
                    if (v187)
                    {
                      v190 = 1;
                    }

                    else
                    {
                      v190 = v181;
                    }

                    if (v190 != 1)
                    {
                      v188 = 1;
LABEL_436:
                      v187 = v186 == v2;
                      goto LABEL_437;
                    }

                    v191 = *(a2 + 204);
                    if (!v191)
                    {
                      v191 = dword_10016D258;
                    }

                    if (v189 - v191 > 0)
                    {
                      break;
                    }
                  }

                  v188 = 1;
                }

                else
                {
                  v188 = 0;
                }

                if (!v187)
                {
                  goto LABEL_436;
                }

                v187 = 1;
              }

LABEL_437:
              v184 = (v186 + 8);
              v186 = *(v186 + 8);
            }

            while (v186);
          }

          *(a2 + 8) = v186;
          *v184 = a2;
          if (!v185 || v185 == v186)
          {
            *v183 = a2;
          }

          if (!*(a2 + 656))
          {
LABEL_475:
            if (!*(a2 + 252))
            {
              v214 = mDNSLogCategory_mDNS;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  v215 = bswap32(*(a2 + 340)) >> 16;
                  v219 = v6;
                  while (1)
                  {
                    if (!v219 || (v220 = *v219, v220 > 0x3F))
                    {
LABEL_491:
                      v218 = 257;
                      goto LABEL_494;
                    }

                    if (!*v219)
                    {
                      break;
                    }

                    v219 += v220 + 1;
                    if (v219 - v6 >= 256)
                    {
                      goto LABEL_491;
                    }
                  }

                  v218 = (v219 - v6 + 1);
                  goto LABEL_494;
                }
              }

              else
              {
                v214 = mDNSLogCategory_mDNS_redacted;
                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  v215 = bswap32(*(a2 + 340)) >> 16;
                  v216 = v6;
                  while (1)
                  {
                    if (!v216 || (v217 = *v216, v217 > 0x3F))
                    {
LABEL_484:
                      v218 = 257;
                      goto LABEL_494;
                    }

                    if (!*v216)
                    {
                      break;
                    }

                    v216 += v217 + 1;
                    if (v216 - v6 >= 256)
                    {
                      goto LABEL_484;
                    }
                  }

                  v218 = (v216 - v6 + 1);
LABEL_494:
                  v221 = mDNS_DomainNameFNV1aHash(v6);
                  v222 = *(a2 + 342);
                  LODWORD(__src[0]) = 67110403;
                  DWORD1(__src[0]) = v215;
                  WORD4(__src[0]) = 2160;
                  *(__src + 10) = 1752392040;
                  WORD1(__src[1]) = 1040;
                  DWORD1(__src[1]) = v218;
                  WORD4(__src[1]) = 2101;
                  *(&__src[1] + 10) = v6;
                  WORD1(__src[2]) = 1024;
                  DWORD1(__src[2]) = v221;
                  WORD4(__src[2]) = 1024;
                  *(&__src[2] + 10) = v222;
                  _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_DEFAULT, "[Q%u] mDNS_StartQuery_internal START -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), qtype: %{mdns:rrtype}d", __src, 0x2Eu);
                }
              }
            }

            if ((v32 + 5) <= 3 && v32 != -4)
            {
              return 0;
            }

            if (*(a2 + 340))
            {
              v223 = *(a2 + 40);
              if (v223)
              {
                v224 = *(v223 + 80);
                if (v224)
                {
                  os_retain(v224);
                }

                v225 = *(a2 + 80);
                if (v225)
                {
                  os_release(v225);
                }

                *(a2 + 80) = *(v223 + 80);
                v226 = mDNSLogCategory_Default;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                {
                  if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                  {
                    v227 = *(a2 + 252);
                    v228 = bswap32(*(a2 + 340)) >> 16;
                    v229 = bswap32(*(v223 + 340)) >> 16;
                    v235 = v6;
                    while (1)
                    {
                      if (!v235 || (v236 = *v235, v236 > 0x3F))
                      {
LABEL_527:
                        v232 = 257;
                        goto LABEL_533;
                      }

                      if (!*v235)
                      {
                        break;
                      }

                      v235 += v236 + 1;
                      if (v235 - v6 >= 256)
                      {
                        goto LABEL_527;
                      }
                    }

                    v232 = (v235 - v6 + 1);
                    goto LABEL_533;
                  }
                }

                else
                {
                  v226 = mDNSLogCategory_Default_redacted;
                  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                  {
                    v227 = *(a2 + 252);
                    v228 = bswap32(*(a2 + 340)) >> 16;
                    v229 = bswap32(*(v223 + 340)) >> 16;
                    v230 = v6;
                    while (1)
                    {
                      if (!v230 || (v231 = *v230, v231 > 0x3F))
                      {
LABEL_512:
                        v232 = 257;
                        goto LABEL_533;
                      }

                      if (!*v230)
                      {
                        break;
                      }

                      v230 += v231 + 1;
                      if (v230 - v6 >= 256)
                      {
                        goto LABEL_512;
                      }
                    }

                    v232 = (v230 - v6 + 1);
LABEL_533:
                    v238 = DNSTypeName(*(a2 + 342));
                    LODWORD(__src[0]) = 67110659;
                    DWORD1(__src[0]) = v227;
                    WORD4(__src[0]) = 1024;
                    *(__src + 10) = v228;
                    HIWORD(__src[0]) = 1024;
                    LODWORD(__src[1]) = v229;
                    WORD2(__src[1]) = 2160;
                    *(&__src[1] + 6) = 1752392040;
                    HIWORD(__src[1]) = 1040;
                    LODWORD(__src[2]) = v232;
                    WORD2(__src[2]) = 2101;
                    *(&__src[2] + 6) = v6;
                    HIWORD(__src[2]) = 2082;
                    *&__src[3] = v238;
                    _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "[R%u->DupQ%u->Q%u] Duplicate question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", __src, 0x38u);
                  }
                }
              }

              ActivateUnicastQuery(a1, a2, 0);
              return 0;
            }

            v233 = *(v5 + 3524) + 1;
            *(v5 + 3524) = v233;
            if (*(v5 + 3520) + v233 == 1)
            {
              *(a1 + 116) = 0;
              if (!*(a1 + 120))
              {
                *(a1 + 120) = 1;
                *(a1 + 8) = *(a1 + 64);
              }
            }

            if (!*(a2 + 639))
            {
              return 0;
            }

            v234 = mDNSLogCategory_mDNS;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
LABEL_529:
                v237 = bswap32(*(a2 + 340)) >> 16;
                LODWORD(__src[0]) = 67109120;
                DWORD1(__src[0]) = v237;
                _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "[Q%u] mDNS_StartQuery_internal: Purging records before resolving", __src, 8u);
              }
            }

            else
            {
              v234 = mDNSLogCategory_mDNS_redacted;
              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_529;
              }
            }

            mDNS_PurgeBeforeResolve(a1, a2);
            return 0;
          }

          v192 = *(a2 + 40);
          v193 = malloc_type_calloc(1uLL, 0x20uLL, 0xB7BBD98FuLL);
          if (!v193)
          {
            goto LABEL_553;
          }

          v2 = v193;
          v194 = &_dnssec_obj_dns_question_member_kind;
          v193[1] = &_dnssec_obj_dns_question_member_kind;
          do
          {
            v195 = v194[2];
            if (v195)
            {
              v195(v2);
            }

            v194 = *v194;
          }

          while (v194);
          v196 = *v2;
          *(v2 + 16) = 0;
          *(v2 + 24) = v192 == 0;
          *v2 = v196 + 2;
          ref_count_obj_release(v2);
          if (v192)
          {
            ++*v2;
            v197 = *(a2 + 144);
            if (v197)
            {
              ref_count_obj_release(v197);
            }

            *(a2 + 144) = v2;
LABEL_474:
            ref_count_obj_release(v2);
            goto LABEL_475;
          }

          v198 = *(a2 + 152);
          v199 = *(a2 + 635) != 0;
          LODWORD(__src[0]) = 0;
          if (v198)
          {
            v200 = malloc_type_calloc(1uLL, 0x48uLL, 0xB7BBD98FuLL);
            if (!v200)
            {
              goto LABEL_553;
            }

            v201 = v200;
            v202 = &_dnssec_obj_context_kind;
            v200[1] = &_dnssec_obj_context_kind;
            do
            {
              v203 = v202[2];
              if (v203)
              {
                v203(v201);
              }

              v202 = *v202;
            }

            while (v202);
            ++*v201;
            v201[2] = a1;
            v201[3] = a2;
            v204 = *(a2 + 136);
            v205 = v204 + 5;
            if (v204 + 5) < 6 && ((0x2Du >> v205))
            {
              LODWORD(v204) = dword_10010DE80[v205];
            }

            *(v201 + 8) = v204;
            v201[5] = v198;
            *(v201 + 36) = v199;
            *(v201 + 12) = 0;
            v206 = dnssec_obj_domain_name_create_with_labels(v6, 1, __src);
            if (!LODWORD(__src[0]))
            {
              v243 = v32;
              v35 = *(v201 + 12);
              v207 = malloc_type_calloc(1uLL, 0x98uLL, 0xB7BBD98FuLL);
              if (v207)
              {
                v208 = v207;
                v209 = &_dnssec_obj_validation_manager_kind;
                v207[1] = &_dnssec_obj_validation_manager_kind;
                do
                {
                  v210 = v209[2];
                  if (v210)
                  {
                    v210(v208);
                  }

                  v209 = *v209;
                }

                while (v209);
                ++*v208;
                v208[2] = v206;
                ++*v206;
                v208[4] = 0;
                v208[5] = 0;
                *(v208 + 12) = 0;
                *(v208 + 13) = -6718;
                *(v208 + 28) = 0;
                v208[7] = 0;
                v208[8] = 0;
                v208[11] = 0;
                v208[12] = 0;
                v208[10] = 0;
                v208[15] = 0;
                v208[16] = 0;
                *(v208 + 34) = v35;
                *(v208 + 35) = 0;
                *(v208 + 144) = 0;
                ++*v208;
                LODWORD(__src[0]) = 0;
                ref_count_obj_release(v208);
                v211 = __src[0];
                if (LODWORD(__src[0]))
                {
                  v35 = 0;
                }

                else
                {
                  v201[8] = v208;
                  ++*v208;
                  ++*v201;
                  v35 = v201;
                }

                ref_count_obj_release(v201);
                ref_count_obj_release(v206);
                ref_count_obj_release(v208);
                if (!v211)
                {
                  *(v35 + 48) = 0;
                  ++*v35;
                  v212 = *(v2 + 16);
                  if (v212)
                  {
                    ref_count_obj_release(v212);
                  }

                  *(v2 + 16) = v35;
                  ++*v2;
                  v213 = *(a2 + 144);
                  v32 = v243;
                  if (v213)
                  {
                    ref_count_obj_release(v213);
                  }

                  *(a2 + 144) = v2;
                  *(a2 + 152) = dnssec_query_record_result_reply;
                  *(a2 + 635) = 1;
                  ref_count_obj_release(v2);
                  v2 = v35;
                  goto LABEL_474;
                }

                goto LABEL_554;
              }

LABEL_553:
              __break(1u);
LABEL_554:
              ref_count_obj_release(v2);
              if (!v35)
              {
                return 4294901759;
              }

              v240 = v35;
LABEL_544:
              ref_count_obj_release(v240);
              return 4294901759;
            }

            ref_count_obj_release(v201);
            if (v206)
            {
              ref_count_obj_release(v206);
            }
          }

          v240 = v2;
          goto LABEL_544;
        }

        v69 = *(a2 + 340);
        if (!*(a2 + 340))
        {
          if (v68)
          {
            goto LABEL_344;
          }

          goto LABEL_150;
        }

LABEL_164:
        if (!v68)
        {
          v78 = *(a1 + 64) + 30000;
          if (v78 <= 1)
          {
            v78 = 1;
          }

          *(a2 + 240) = v78;
          v79 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
              v80 = __rev16(v69);
              v89 = v6;
              while (1)
              {
                if (!v89 || (v90 = *v89, v90 > 0x3F))
                {
LABEL_191:
                  v83 = 257;
                  goto LABEL_212;
                }

                if (!*v89)
                {
                  break;
                }

                v89 += v90 + 1;
                if (v89 - v6 >= 256)
                {
                  goto LABEL_191;
                }
              }

              v83 = (v89 - v6 + 1);
              goto LABEL_212;
            }
          }

          else
          {
            v79 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              v80 = __rev16(v69);
              v81 = v6;
              while (1)
              {
                if (!v81 || (v82 = *v81, v82 > 0x3F))
                {
LABEL_175:
                  v83 = 257;
                  goto LABEL_212;
                }

                if (!*v81)
                {
                  break;
                }

                v81 += v82 + 1;
                if (v81 - v6 >= 256)
                {
                  goto LABEL_175;
                }
              }

              v83 = (v81 - v6 + 1);
LABEL_212:
              v100 = DNSTypeName(*(a2 + 342));
              LODWORD(__src[0]) = 67110403;
              DWORD1(__src[0]) = v80;
              WORD4(__src[0]) = 2048;
              *(__src + 10) = a2;
              WORD1(__src[1]) = 2160;
              *(&__src[1] + 4) = 1752392040;
              WORD6(__src[1]) = 1040;
              *(&__src[1] + 14) = v83;
              WORD1(__src[2]) = 2101;
              *(&__src[2] + 4) = v6;
              WORD6(__src[2]) = 2082;
              *(&__src[2] + 14) = v100;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "[Q%u] InitDNSConfig: Setting StopTime on the uDNS question %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", __src, 0x36u);
            }
          }
        }

LABEL_213:
        v2 = _Querier_ExcludeEncryptedDNSServices(a2);
        if (!uuid_is_null((a2 + 360)) && v2)
        {
          uuid_clear((a2 + 360));
          v101 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_234;
            }

            v102 = *(a2 + 252);
            v103 = bswap32(*(a2 + 340)) >> 16;
            v107 = v6;
            while (1)
            {
              if (!v107 || (v108 = *v107, v108 > 0x3F))
              {
LABEL_230:
                v106 = 257;
                goto LABEL_233;
              }

              if (!*v107)
              {
                break;
              }

              v107 += v108 + 1;
              if (v107 - v6 >= 256)
              {
                goto LABEL_230;
              }
            }

            v106 = (v107 - v6 + 1);
          }

          else
          {
            v101 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_234;
            }

            v102 = *(a2 + 252);
            v103 = bswap32(*(a2 + 340)) >> 16;
            v104 = v6;
            while (1)
            {
              if (!v104 || (v105 = *v104, v105 > 0x3F))
              {
LABEL_223:
                v106 = 257;
                goto LABEL_233;
              }

              if (!*v104)
              {
                break;
              }

              v104 += v105 + 1;
              if (v104 - v6 >= 256)
              {
                goto LABEL_223;
              }
            }

            v106 = (v104 - v6 + 1);
          }

LABEL_233:
          v109 = DNSTypeName(*(a2 + 342));
          LODWORD(__src[0]) = 67110403;
          DWORD1(__src[0]) = v102;
          WORD4(__src[0]) = 1024;
          *(__src + 10) = v103;
          HIWORD(__src[0]) = 2160;
          *&__src[1] = 1752392040;
          WORD4(__src[1]) = 1040;
          *(&__src[1] + 10) = v106;
          HIWORD(__src[1]) = 2101;
          *&__src[2] = v6;
          WORD4(__src[2]) = 2082;
          *(&__src[2] + 10) = v109;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Cleared resolver UUID for question: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", __src, 0x32u);
          v35 = 0x10016D000;
        }

LABEL_234:
        v110 = *(a2 + 80);
        if (v110)
        {
          os_release(v110);
          *(a2 + 80) = 0;
        }

        DNSService = _Querier_GetDNSService(a2, v2);
        v112 = DNSService;
        if (v2)
        {
LABEL_237:
          *(a2 + 80) = v112;
          if (!v112)
          {
            goto LABEL_251;
          }

LABEL_297:
          os_retain(v112);
          v135 = *(a2 + 80);
          v115 = *(a2 + 144);
          if (v135)
          {
            v136 = *(v135 + 112);
            if (v136)
            {
              v137 = mach_continuous_time();
              v138 = v137 - *v136;
              if (mdns_mach_ticks_per_second_s_once != -1)
              {
                dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
              }

              if (v138 / mdns_mach_ticks_per_second_s_ticks_per_second < 0x3C)
              {
                v150 = mDNSLogCategory_Default;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_343;
                  }

                  v151 = *(a2 + 252);
                  v152 = bswap32(*(a2 + 340)) >> 16;
                  v153 = *(a2 + 80);
                  if (v153)
                  {
                    v153 = *(v153 + 24);
                  }
                }

                else
                {
                  v150 = mDNSLogCategory_Default_redacted;
                  if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_343;
                  }

                  v151 = *(a2 + 252);
                  v152 = bswap32(*(a2 + 340)) >> 16;
                  v153 = *(a2 + 80);
                  if (v153)
                  {
                    v153 = *(v153 + 24);
                  }
                }

                LODWORD(__src[0]) = 67109632;
                DWORD1(__src[0]) = v151;
                WORD4(__src[0]) = 1024;
                *(__src + 10) = v152;
                HIWORD(__src[0]) = 2048;
                *&__src[1] = v153;
                v154 = "[R%u->Q%u] Question assigned DNS service %llu";
                v155 = v150;
                v156 = OS_LOG_TYPE_DEFAULT;
                v157 = 24;
                goto LABEL_342;
              }

              *v136 = v137;
            }

            else
            {
              v139 = malloc_type_malloc(8uLL, 0xD7E1CE3CuLL);
              if (!v139)
              {
                goto LABEL_553;
              }

              v140 = v139;
              *v139 = mach_continuous_time();
              *(v135 + 112) = v140;
              *(v135 + 120) = mdns_free_context_finalizer;
            }
          }

LABEL_305:
          v141 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_343;
            }

            v147 = *(a2 + 252);
            v143 = bswap32(*(a2 + 340)) >> 16;
            v148 = v6;
            while (1)
            {
              if (!v148 || (v149 = *v148, v149 > 0x3F))
              {
LABEL_320:
                v146 = 257;
                goto LABEL_332;
              }

              if (!*v148)
              {
                break;
              }

              v148 += v149 + 1;
              if (v148 - v6 >= 256)
              {
                goto LABEL_320;
              }
            }

            v146 = (v148 - v6 + 1);
LABEL_332:
            v158 = DNSTypeName(*(a2 + 342));
            v159 = *(a2 + 80);
            v160 = ", DNSSEC";
            LODWORD(__src[0]) = 67110915;
            DWORD1(__src[0]) = v147;
            if (!v115)
            {
              v160 = "";
            }
          }

          else
          {
            v141 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_343;
            }

            v142 = *(a2 + 252);
            v143 = bswap32(*(a2 + 340)) >> 16;
            v144 = v6;
            while (1)
            {
              if (!v144 || (v145 = *v144, v145 > 0x3F))
              {
LABEL_313:
                v146 = 257;
                goto LABEL_336;
              }

              if (!*v144)
              {
                break;
              }

              v144 += v145 + 1;
              if (v144 - v6 >= 256)
              {
                goto LABEL_313;
              }
            }

            v146 = (v144 - v6 + 1);
LABEL_336:
            v158 = DNSTypeName(*(a2 + 342));
            v159 = *(a2 + 80);
            v160 = ", DNSSEC";
            LODWORD(__src[0]) = 67110915;
            DWORD1(__src[0]) = v142;
            if (!v115)
            {
              v160 = "";
            }
          }

          WORD4(__src[0]) = 1024;
          *(__src + 10) = v143;
          HIWORD(__src[0]) = 2160;
          *&__src[1] = 1752392040;
          WORD4(__src[1]) = 1040;
          *(&__src[1] + 10) = v146;
          HIWORD(__src[1]) = 2101;
          *&__src[2] = v6;
          WORD4(__src[2]) = 2082;
          *(&__src[2] + 10) = v158;
          WORD1(__src[3]) = 2082;
          *(&__src[3] + 4) = v160;
          WORD6(__src[3]) = 2112;
          *(&__src[3] + 14) = v159;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Question for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s%{public}s) assigned DNS service -- %@", __src, 0x46u);
          v35 = 0x10016D000;
LABEL_343:
          if (!*(a2 + 240))
          {
LABEL_346:
            if ((*(a2 + 136) + 5) > 3 || *(a2 + 136) == -4)
            {
              SetNextQueryTime(a1, a2);
            }

            goto LABEL_349;
          }

LABEL_344:
          mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "SetNextQueryStopTime", 398);
          v162 = *(a2 + 240);
          if (*(a1 + 184) - v162 >= 1)
          {
            *(a1 + 184) = v162;
          }

          goto LABEL_346;
        }

        if (DNSService)
        {
          if ((*(a2 + 327) & 0x40) != 0)
          {
            v113 = *(a2 + 88);
            if (v113)
            {
              if (!*(a2 + 136) && *(DNSService + 282) != 1)
              {
                if (*(DNSService + 24) != v113 && *(DNSService + 280) == 1 && *(DNSService + 281) - 2 >= 4 && (*(DNSService + 276) & 0x200) == 0)
                {
                  v114 = "avoid non-private DNS service";
                  goto LABEL_253;
                }

                if (!uuid_is_null((a2 + 360)) && _Querier_VPNDNSServiceExistsForQName(v6))
                {
                  v114 = "QNAME is in a VPN DNS service's domain";
                  goto LABEL_253;
                }
              }
            }
          }

          *(a2 + 80) = v112;
          goto LABEL_297;
        }

        if (uuid_is_null((a2 + 360)))
        {
          *(a2 + 80) = 0;
LABEL_251:
          v115 = *(a2 + 144);
          goto LABEL_305;
        }

        v114 = "ResolverUUID may be stale";
LABEL_253:
        v2 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
          {
            v116 = *(a2 + 252);
            v117 = bswap32(*(a2 + 340)) >> 16;
            v121 = v6;
            while (1)
            {
              if (!v121 || (v122 = *v121, v122 > 0x3F))
              {
LABEL_268:
                v120 = 257;
                goto LABEL_539;
              }

              if (!*v121)
              {
                break;
              }

              v121 += v122 + 1;
              if (v121 - v6 >= 256)
              {
                goto LABEL_268;
              }
            }

            v120 = (v121 - v6 + 1);
            goto LABEL_539;
          }
        }

        else
        {
          v2 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
          {
            v116 = *(a2 + 252);
            v117 = bswap32(*(a2 + 340)) >> 16;
            v118 = v6;
            while (1)
            {
              if (!v118 || (v119 = *v118, v119 > 0x3F))
              {
LABEL_261:
                v120 = 257;
                goto LABEL_539;
              }

              if (!*v118)
              {
                break;
              }

              v118 += v119 + 1;
              if (v118 - v6 >= 256)
              {
                goto LABEL_261;
              }
            }

            v120 = (v118 - v6 + 1);
LABEL_539:
            v239 = DNSTypeName(*(a2 + 342));
            LODWORD(__src[0]) = 67110659;
            DWORD1(__src[0]) = v116;
            WORD4(__src[0]) = 1024;
            *(__src + 10) = v117;
            HIWORD(__src[0]) = 2160;
            *&__src[1] = 1752392040;
            WORD4(__src[1]) = 1040;
            *(&__src[1] + 10) = v120;
            HIWORD(__src[1]) = 2101;
            *&__src[2] = v6;
            WORD4(__src[2]) = 2082;
            *(&__src[2] + 10) = v239;
            WORD1(__src[3]) = 2082;
            *(&__src[3] + 4) = v114;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[R%u->Q%u] Retrying path evaluation -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s, reason: %{public}s", __src, 0x3Cu);
            v35 = 0x10016D000;
          }
        }

        mDNSPlatformGetDNSRoutePolicy(a2);
        v112 = _Querier_GetDNSService(a2, 0);
        goto LABEL_237;
      }

      v69 = *(a2 + 340);
      if (*(a2 + 340))
      {
        if (!v67)
        {
          goto LABEL_213;
        }

        goto LABEL_164;
      }

      if (!v67)
      {
        goto LABEL_343;
      }

      if (v68)
      {
        goto LABEL_344;
      }

      v84 = *v6;
      if (*v6)
      {
        v85 = 0;
        v86 = v6;
        do
        {
          ++v85;
          v87 = &v86[v84];
          v88 = v87[1];
          v86 = v87 + 1;
          v84 = v88;
        }

        while (v88);
      }

      else
      {
        v85 = 0;
      }

      v123 = *(a1 + 12688);
      if (v123)
      {
        v124 = 0;
        v125 = -1;
        do
        {
          v126 = *(v123 + 20);
          if (*(v123 + 20))
          {
            v127 = 0;
            v128 = v123 + 20;
            do
            {
              ++v127;
              v129 = v128 + v126;
              v130 = *(v129 + 1);
              v128 = v129 + 1;
              v126 = v130;
            }

            while (v130);
          }

          else
          {
            v127 = 0;
          }

          if (v85 >= v127 && v127 >= v125)
          {
            v131 = v6;
            if (v85 - v127 >= 1)
            {
              v132 = v85 + 1 - v127;
              v131 = v6;
              do
              {
                if (!*v131)
                {
                  break;
                }

                v131 += *v131 + 1;
                --v132;
              }

              while (v132 > 1);
            }

            if (SameDomainNameBytes(v131, v123 + 20) != 0 && v125 != v127)
            {
              v125 = v127;
              v124 = v123;
            }
          }

          v123 = *v123;
        }

        while (v123);
        v35 = &unk_10016D000;
        if ((mDNS_LoggingEnabled & 1) == 0)
        {
LABEL_293:
          if (v124)
          {
            v70 = 1000 * *(v124 + 69);
            goto LABEL_151;
          }

LABEL_150:
          v70 = 5000;
LABEL_151:
          v71 = v70 + *(a1 + 64);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          *(a2 + 240) = v71;
          v72 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_343;
            }

            v73 = *(a2 + 252);
            v74 = bswap32(*(a2 + 340)) >> 16;
            v92 = v6;
            while (1)
            {
              if (!v92 || (v93 = *v92, v93 > 0x3F))
              {
LABEL_201:
                v77 = 257;
                goto LABEL_341;
              }

              if (!*v92)
              {
                break;
              }

              v92 += v93 + 1;
              if (v92 - v6 >= 256)
              {
                goto LABEL_201;
              }
            }

            v77 = (v92 - v6 + 1);
          }

          else
          {
            v72 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_343;
            }

            v73 = *(a2 + 252);
            v74 = bswap32(*(a2 + 340)) >> 16;
            v75 = v6;
            while (1)
            {
              if (!v75 || (v76 = *v75, v76 > 0x3F))
              {
LABEL_161:
                v77 = 257;
                goto LABEL_341;
              }

              if (!*v75)
              {
                break;
              }

              v75 += v76 + 1;
              if (v75 - v6 >= 256)
              {
                goto LABEL_161;
              }
            }

            v77 = (v75 - v6 + 1);
          }

LABEL_341:
          v161 = DNSTypeName(*(a2 + 342));
          LODWORD(__src[0]) = 67110659;
          DWORD1(__src[0]) = v73;
          WORD4(__src[0]) = 1024;
          *(__src + 10) = v74;
          HIWORD(__src[0]) = 2048;
          *&__src[1] = a2;
          WORD4(__src[1]) = 2160;
          *(&__src[1] + 10) = 1752392040;
          WORD1(__src[2]) = 1040;
          DWORD1(__src[2]) = v77;
          WORD4(__src[2]) = 2101;
          *(&__src[2] + 10) = v6;
          WORD1(__src[3]) = 2082;
          *(&__src[3] + 4) = v161;
          v154 = "[R%u->Q%u] InitDNSConfig: Setting StopTime on the uDNS question %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)";
          v155 = v72;
          v156 = OS_LOG_TYPE_DEBUG;
          v157 = 60;
LABEL_342:
          _os_log_impl(&_mh_execute_header, v155, v156, v154, __src, v157);
          goto LABEL_343;
        }

        v133 = mDNSLogCategory_Default;
        if (v124)
        {
          v134 = *(v124 + 69);
LABEL_292:
          LogMsgWithLevel(v133, OS_LOG_TYPE_DEFAULT, "GetTimeoutForMcastQuestion: question %##s curmatch %p, Timeout %d", v6, v124, v134);
          goto LABEL_293;
        }
      }

      else
      {
        if (mDNS_LoggingEnabled != 1)
        {
          goto LABEL_150;
        }

        v124 = 0;
        v133 = mDNSLogCategory_Default;
      }

      v134 = 5;
      goto LABEL_292;
    }

    *(a2 + 280) = -1;
    if ((v54 & 0x40000000) != 0)
    {
      if (!*(a2 + 642))
      {
        goto LABEL_140;
      }

      v58 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_138:
          v64 = *(a2 + 252);
          v65 = bswap32(*(a2 + 340)) >> 16;
          LODWORD(__src[0]) = 67109376;
          DWORD1(__src[0]) = v64;
          WORD4(__src[0]) = 1024;
          *(__src + 10) = v65;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Forcing another path evaluation", __src, 0xEu);
        }
      }

      else
      {
        v58 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_138;
        }
      }
    }

    *(a2 + 642) = 0;
    mDNSPlatformGetDNSRoutePolicy(a2);
    goto LABEL_140;
  }

  v39 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v40 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v40 = 1;
  }

  if (v40)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v6;
      while (1)
      {
        if (!v41 || (v42 = *v41, v42 > 0x3F))
        {
LABEL_92:
          v43 = 257;
          goto LABEL_194;
        }

        if (!*v41)
        {
          break;
        }

        v41 += v42 + 1;
        if (v41 - v6 >= 256)
        {
          goto LABEL_92;
        }
      }

      v43 = (v41 - v6 + 1);
      goto LABEL_194;
    }
  }

  else
  {
    v39 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v6;
      while (1)
      {
        if (!v51 || (v52 = *v51, v52 > 0x3F))
        {
LABEL_107:
          v43 = 257;
          goto LABEL_194;
        }

        if (!*v51)
        {
          break;
        }

        v51 += v52 + 1;
        if (v51 - v6 >= 256)
        {
          goto LABEL_107;
        }
      }

      v43 = (v51 - v6 + 1);
LABEL_194:
      v91 = DNSTypeName(*(a2 + 342));
      LODWORD(__src[0]) = 141559043;
      *(__src + 4) = 1752392040;
      WORD6(__src[0]) = 1040;
      *(__src + 14) = v43;
      WORD1(__src[1]) = 2101;
      *(&__src[1] + 4) = v6;
      WORD6(__src[1]) = 2082;
      *(&__src[1] + 14) = v91;
      WORD3(__src[2]) = 2048;
      *(&__src[2] + 1) = a2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "mDNS_StartQuery_internal: Error! Tried to add a question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) %p that's already in the active list", __src, 0x30u);
    }
  }

  return v2;
}

BOOL IsLocalDomain(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = a1;
    v7 = v3;
    v8 = v2;
    v9 = &a1[v1];
    v10 = v9[1];
    a1 = v9 + 1;
    v1 = v10;
    v2 = v3;
    v3 = v4;
    v4 = v5;
    v5 = v6;
  }

  while (v10);
  return SameDomainNameBytes(v6, "\x05local") || v7 && SameDomainNameBytes(v7, "\x03254\x03169\ain-addr\x04arpa") || v8 && (SameDomainNameBytes(v8, "\x018\x01e\x01f\x03ip6\x04arpa") || SameDomainNameBytes(v8, "\x019\x01e\x01f\x03ip6\x04arpa") || SameDomainNameBytes(v8, "\x01a\x01e\x01f\x03ip6\x04arpa") || SameDomainNameBytes(v8, "\x01b\x01e\x01f\x03ip6\x04arpa"));
}

uint64_t *GetAuthInfoForName_internal(uint64_t a1, unsigned __int8 *a2)
{
  mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "GetAuthInfoForName_internal", 398);
  v3 = *(a1 + 12760);
  if (v3)
  {
    v4 = (a1 + 12760);
    while (1)
    {
      v5 = *(v3 + 2);
      if (v5)
      {
        if (*(a1 + 64) - v5 >= 0)
        {
          break;
        }
      }

      v4 = v3;
LABEL_47:
      v3 = *v4;
      if (!*v4)
      {
        return GetAuthInfoForName_direct(a1, a2);
      }
    }

    v6 = mDNSLogCategory_uDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v7 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (!os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_42:
        *v4 = *v3;
        for (i = *(a1 + 192); i; i = *(i + 8))
        {
          if (*(i + 32) == v3)
          {
            *(i + 32) = GetAuthInfoForName_direct(a1, (i + 376));
          }
        }

        free(v3);
        goto LABEL_47;
      }

      v8 = v3 + 12;
      v9 = v3 + 12;
      while (1)
      {
        if (!v9 || (v10 = *v9, v10 > 0x3F))
        {
LABEL_16:
          v11 = 257;
          goto LABEL_26;
        }

        if (!*v9)
        {
          break;
        }

        v9 += v10 + 1;
        if (v9 - v8 >= 256)
        {
          goto LABEL_16;
        }
      }

      v11 = (v9 - v8 + 1);
LABEL_26:
      v16 = v3 + 268;
      v17 = v3 + 268;
      while (1)
      {
        if (!v17 || (v18 = *v17, v18 > 0x3F))
        {
LABEL_31:
          v19 = 257;
          goto LABEL_41;
        }

        if (!*v17)
        {
          break;
        }

        v17 += v18 + 1;
        if (v17 - v16 >= 256)
        {
          goto LABEL_31;
        }
      }

      v19 = (v17 - v16 + 1);
    }

    else
    {
      v6 = mDNSLogCategory_uDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v13 = v3 + 12;
      v14 = v3 + 12;
      while (1)
      {
        if (!v14 || (v15 = *v14, v15 > 0x3F))
        {
LABEL_24:
          v11 = 257;
          goto LABEL_33;
        }

        if (!*v14)
        {
          break;
        }

        v14 += v15 + 1;
        if (v14 - v13 >= 256)
        {
          goto LABEL_24;
        }
      }

      v11 = (v14 - v13 + 1);
LABEL_33:
      v20 = v3 + 268;
      v21 = v3 + 268;
      while (1)
      {
        if (!v21 || (v22 = *v21, v22 > 0x3F))
        {
LABEL_38:
          v19 = 257;
          goto LABEL_41;
        }

        if (!*v21)
        {
          break;
        }

        v21 += v22 + 1;
        if (v21 - v20 >= 256)
        {
          goto LABEL_38;
        }
      }

      v19 = (v21 - v20 + 1);
    }

LABEL_41:
    *buf = 141559299;
    v27 = 1752392040;
    v28 = 1040;
    v29 = v11;
    v30 = 2101;
    v31 = v3 + 12;
    v32 = 2160;
    v33 = 1752392040;
    v34 = 1040;
    v35 = v19;
    v36 = 2101;
    v37 = v3 + 268;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GetAuthInfoForName_internal deleting expired key %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x36u);
    goto LABEL_42;
  }

  return GetAuthInfoForName_direct(a1, a2);
}

void SetNextQueryTime(uint64_t a1, uint64_t a2)
{
  mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "SetNextQueryTime", 406);
  v4 = *(a2 + 212);
  if (v4 >= 1 && !*(a2 + 40))
  {
    v5 = 12680;
    if (!*(a2 + 340))
    {
      v5 = 92;
    }

    v6 = *(a2 + 208) + v4;
    if (*(a1 + v5) - v6 >= 1)
    {
      *(a1 + v5) = v6;
    }
  }
}

unsigned __int8 *ConvertDomainLabelToCString_withescape(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  if (v5 > 0x3FuLL)
  {
    return 0;
  }

  if (v3 < &v3[v4])
  {
    do
    {
      v7 = *v3++;
      v6 = v7;
      if (a3)
      {
        if (v6 == 46 || v6 == a3)
        {
          *a2++ = a3;
        }

        else if (v6 <= 0x20u)
        {
          *a2 = a3;
          a2[1] = 48;
          a2[2] = (v6 / 0xAu) | 0x30;
          a2 += 3;
          v6 = (v6 % 0xAu) | 0x30;
        }
      }

      *a2++ = v6;
      --v4;
    }

    while (v4);
  }

  *a2 = 0;
  return a2;
}

void mDNSDynamicStoreSetConfig(int a1, const void *a2)
{
  DeepCopy = CFPropertyListCreateDeepCopy(0, a2, 0);
  if (DeepCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __mDNSDynamicStoreSetConfig_block_invoke;
    block[3] = &__block_descriptor_tmp_3583;
    v6 = a1;
    block[4] = DeepCopy;
    block[5] = 0;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v4 = mDNSLogCategory_Default;

    LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, "mDNSDynamicStoreSetConfig: ERROR valueCopy NULL");
  }
}

unsigned __int8 *ConvertDomainNameToCString_withescape(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = *a1;
  if (*a1 || (*a2 = 46, ++a2, (v3 = *a1) != 0))
  {
    v4 = a1 + 256;
    while (&v2[v3 + 1] < v4)
    {
      v5 = ConvertDomainLabelToCString_withescape(v2, a2, 92);
      v6 = v5;
      if (!v5)
      {
        return v6;
      }

      v7 = &v2[*v2];
      *v5 = 46;
      a2 = v5 + 1;
      v8 = v7[1];
      v2 = v7 + 1;
      v3 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    *a2 = 0;
    return a2 + 1;
  }
}

void mDNS_StatusCallback(size_t a1, int a2)
{
  if (a2 <= -65549)
  {
    if (a2 == -65791)
    {
      mDNSPreferencesSetNames(1, (*a1 + 172), (a1 + 10280));
      mDNSPreferencesSetNames(2, (*a1 + 108), (a1 + 10344));

      udsserver_handle_configchange(a1);
    }

    else if (a2 == -65790 && mDNS_StatusCallback_allocated <= 0xF423F)
    {
      mDNS_StatusCallback_allocated += 32704;
      v3 = malloc_type_malloc(0x7FC0uLL, 0x74551A1FuLL);
      if (v3)
      {
        v4 = v3;
        mDNS_Lock_(a1, "mDNS_GrowCache", 18576);
        v5 = xmmword_10010D320;
        v6 = vdupq_n_s64(0x92uLL);
        v7 = vdupq_n_s64(1uLL);
        v8 = 0x1FFFFFFFFFFFF008;
        v9 = vdupq_n_s64(2uLL);
        do
        {
          v10 = vaddq_s64(v5, v7);
          if (vmovn_s64(vcgtq_u64(v6, v5)).u8[0])
          {
            v4[v8 + 4088] = &v4[28 * v10.i64[0]];
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x92uLL), *&v5)).i32[1])
          {
            v4[v8 + 4116] = &v4[28 * v10.i64[1]];
          }

          v5 = vaddq_s64(v5, v9);
          v8 += 56;
        }

        while (v8 * 8);
        v4[4060] = *(a1 + 264);
        *(a1 + 264) = v4;
        *(a1 + 240) += 146;

        mDNS_Unlock_(a1, "mDNS_GrowCache", 18578);
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  if (a2 != -65548)
  {
    if (a2)
    {
      return;
    }

    v12 = (*a1 + 108);
    v11 = *v12;
    if (v11 == *(a1 + 10344))
    {
      if (!memcmp((*a1 + 109), (a1 + 10345), v11) || (mDNS_LoggingEnabled & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (mDNS_LoggingEnabled != 1)
    {
LABEL_33:
      v16 = dword_10016D258 + 1000;
      if ((dword_10016D258 + 1000) <= 1)
      {
        v16 = 1;
      }

      *(mDNSStorage[0] + 492) = v16;
      return;
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Local Hostname changed from %#s.local to %#s.local", v12, (a1 + 10344));
    goto LABEL_33;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Local Hostname conflict for %#s.local", (a1 + 10344));
  }

  v13 = *a1;
  v14 = *(*a1 + 496);
  v15 = *(a1 + 64);
  if (v14)
  {
    if ((v15 - v14) >= 60001)
    {

      mDNSPreferencesSetNames(2, (v13 + 108), 0);
    }
  }

  else
  {
    if (v15 <= 1)
    {
      v15 = 1;
    }

    *(v13 + 496) = v15;
  }
}

void uDNS_SetupDNSConfig()
{
  memset(v29, 0, 20);
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, 20);
  memset(v30, 0, sizeof(v30));
  uDNS_SetupWABQueries();
  mDNS_Lock_(mDNSStorage, "uDNS_SetupDNSConfig", 19033);
  for (i = qword_1001703A8; i; i = *i)
  {
    *(i + 16) |= 1u;
  }

  if (!mDNSPlatformSetDNSConfig(1, 0, v30, 0, 0, 1))
  {
    SetDynDNSHostNameIfChanged(v30);
    for (j = qword_1001703A8; j; j = *j)
    {
      *(j + 16) &= ~1u;
    }

    mDNS_Unlock_(mDNSStorage, "uDNS_SetupDNSConfig", 19047);
    v9 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buffer[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "uDNS_SetupDNSConfig: No configuration change", buffer, 2u);
    }

    return;
  }

  v1 = qword_1001703A8;
  if (qword_1001703A8)
  {
    v2 = &qword_1001703A8;
    do
    {
      v3 = v1[4];
      if (v3)
      {
        *v2 = *v1;
        free(v1);
      }

      else
      {
        v1[4] = v3 & 0xFFFFFFFC;
        v2 = v1;
      }

      v1 = *v2;
    }

    while (*v2);
  }

  Querier_ProcessDNSServiceChanges(0);
  SetDynDNSHostNameIfChanged(v30);
  mDNS_Unlock_(mDNSStorage, "uDNS_SetupDNSConfig", 19329);
  *(&v27[1] + 4) = 0;
  *(v27 + 4) = 0;
  memset(v28, 0, sizeof(v28));
  *&v29[3] = 0;
  *&v29[1] = 0;
  LODWORD(v27[0]) = 4;
  v29[0] = 4;
  v4 = SCDynamicStoreCopyValue(0, NetworkChangedKey_IPv4);
  if (!v4)
  {
    v7 = 1;
    goto LABEL_69;
  }

  v5 = v4;
  memset(buffer, 0, sizeof(buffer));
  v27[0] = 4;
  Value = CFDictionaryGetValue(v4, kSCPropNetIPv4Router);
  if (!Value)
  {
    goto LABEL_20;
  }

  if (!CFStringGetCString(Value, buffer, 256, 0x8000100u))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Could not convert router to CString");
LABEL_20:
    v7 = 1;
    goto LABEL_21;
  }

  v31 = 0x210uLL;
  inet_aton(buffer, &v31 + 1);
  HIDWORD(v27[0]) = DWORD1(v31);
  v7 = DWORD1(v31) == 0;
LABEL_21:
  v10 = CFDictionaryGetValue(v5, kSCDynamicStorePropNetPrimaryInterface);
  if (!v10)
  {
    goto LABEL_64;
  }

  v11 = v10;
  IfAddrs = myGetIfAddrs();
  memset(v28, 0, sizeof(v28));
  memset(v29, 0, 20);
  if (!CFStringGetCString(v11, buffer, 256, 0x8000100u))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Could not convert router to CString");
    goto LABEL_64;
  }

  if (!IfAddrs)
  {
LABEL_64:
    v16 = 0;
    v15 = 0;
    goto LABEL_65;
  }

  v26 = v7;
  v13 = 0;
  do
  {
    v14 = v29[1];
    v15 = LOBYTE(v29[1]);
    v16 = BYTE1(v29[1]);
    v18 = BYTE1(v29[1]) == 254 || v13 == 0;
    while (1)
    {
      if (v14)
      {
        if (v15 == 169)
        {
          if (!v18)
          {
            goto LABEL_62;
          }
        }

        else if (v13)
        {
          goto LABEL_62;
        }
      }

      v19 = *(IfAddrs + 24);
      if (v19)
      {
        break;
      }

      v20 = *(IfAddrs + 8);
      if (!v20)
      {
        v20 = "name not found";
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Skip interface, %s, since ifa_addr is not set.", v20);
      IfAddrs = *IfAddrs;
      if (!IfAddrs)
      {
        goto LABEL_62;
      }
    }

    v32 = 0;
    v31 = 0uLL;
    if (!strcmp(buffer, *(IfAddrs + 8)))
    {
      v21 = *(v19 + 1);
      if (v21 == 30)
      {
        SetupAddr(&v31, v19);
        if ((BYTE4(v31) & 0xE0) == 0x20)
        {
          *v28 = v31;
          *&v28[16] = v32;
LABEL_43:
          v13 = 1;
        }
      }

      else if (v21 == 2 && (!v14 || v15 == 169 && v16 == 254))
      {
        SetupAddr(v29, v19);
      }
    }

    else
    {
      if (v13)
      {
        goto LABEL_43;
      }

      v22 = *(v19 + 1) == 30 && v28[4] == 0;
      if (v22 && (SetupAddr(&v31, v19), (BYTE4(v31) & 0xE0) == 0x20))
      {
        v13 = 0;
        *v28 = v31;
        *&v28[16] = v32;
      }

      else
      {
        v13 = 0;
      }
    }

    IfAddrs = *IfAddrs;
  }

  while (IfAddrs);
  v15 = LOBYTE(v29[1]);
  v16 = BYTE1(v29[1]);
LABEL_62:
  v7 = v26;
LABEL_65:
  CFRelease(v5);
  if (v15 == 169 && v16 == 254)
  {
    mDNS_SetPrimaryInterfaceInfo(0, 0, 0);
    if (byte_100170A70[0])
    {
      mDNSPlatformDynDNSHostNameStatusChanged(byte_100170A70, 1);
    }

    return;
  }

LABEL_69:
  if (v29[1])
  {
    v23 = v29;
  }

  else
  {
    v23 = 0;
  }

  if (vorr_s8(*&v28[4], *&vextq_s8(*&v28[4], *&v28[4], 8uLL)))
  {
    v24 = v28;
  }

  else
  {
    v24 = 0;
  }

  if (v7)
  {
    v25 = 0;
  }

  else
  {
    v25 = v27;
  }

  mDNS_SetPrimaryInterfaceInfo(v23, v24, v25);
}

uint64_t mDNSPlatformSetDNSConfig(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5, int a6)
{
  v9 = a2;
  v10 = a1;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  memset(&v84, 0, sizeof(v84));
  v11 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = v10;
    *&buf[8] = 1024;
    *&buf[10] = v9;
    *&buf[14] = 1024;
    *&buf[16] = a3 != 0;
    *&buf[20] = 1024;
    *&buf[22] = a4 != 0;
    *&buf[26] = 1024;
    *&buf[28] = a5 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetDNSConfig new updates -- setservers: %{mdns:yesno}d, setsearch: %{mdns:yesno}d, fqdn: %{mdns:yesno}d, RegDomains: %{mdns:yesno}d, BrowseDomains: %{mdns:yesno}d", buf, 0x20u);
  }

  if (v9)
  {
    *&v84.A = xmmword_10010D300;
    *&v84.Nl = 0;
    v84.num = 0;
    v87 = 0;
    *bytes = 528;
    v86 = DWORD1(xmmword_1001703B0);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v13 = CFDataCreate(0, bytes, 16);
    CFDictionarySetValue(Mutable, @"remote-address", v13);
    CFDictionarySetValue(Mutable, @"ServerBypass", kCFBooleanTrue);
    v14 = SCNetworkReachabilityCreateWithOptions();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      *buf = 0;
      if (SCNetworkReachabilityGetFlags(v14, buf))
      {
        v15 = buf[0];
        CFRelease(v14);
        if ((v15 & 4) != 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: AddrRequiresPPPConnection - SCNetworkReachabilityGetFlags");
        CFRelease(v14);
      }
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: RequiresConnection - SCNetworkReachabilityCreateWithOptions");
    }

    IfAddrs = myGetIfAddrs();
    if (IfAddrs)
    {
      v17 = IfAddrs;
      v18 = 0uLL;
      do
      {
        v82[0] = 0;
        v82[1] = 0;
        v83 = 0;
        v80[0] = 0;
        v80[1] = 0;
        v81 = 0;
        v90 = v18;
        v91 = v18;
        v88 = v18;
        v89 = v18;
        v19 = *(v17 + 24);
        if (*(v19 + 1) == 2)
        {
          if (*(v17 + 32))
          {
            if ((*(v17 + 16) & 8) == 0)
            {
              v20 = SetupAddr(v82, v19);
              v18 = 0uLL;
              if (!v20)
              {
                v21 = BYTE4(v82[0]);
                v22 = BYTE5(v82[0]);
                if (BYTE4(v82[0]) != 169 || BYTE5(v82[0]) != 254)
                {
                  v23 = *(v17 + 32);
                  *(v23 + 1) = *(*(v17 + 24) + 1);
                  SetupAddr(v80, v23);
                  mDNS_snprintf(&v88, 64, "%d.%d.%d.%d.in-addr.arpa.", HIBYTE(v80[0]) & HIBYTE(v82[0]), BYTE6(v80[0]) & BYTE6(v82[0]), BYTE5(v80[0]) & v22, BYTE4(v80[0]) & v21);
                  UpdateSearchDomainHash(&v84, &v88, 0);
                  v116 = 0u;
                  v117 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  v110 = 0u;
                  v111 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v105 = 0u;
                  memset(buf, 0, sizeof(buf));
                  if (AppendDNSNameString(buf, &v88) && buf[0])
                  {
                    mDNS_AddSearchDomain(buf, 0);
                  }

                  v18 = 0uLL;
                }
              }
            }
          }
        }

        v17 = *v17;
      }

      while (v17);
    }
  }

LABEL_33:
  if (!(v9 | v10))
  {
    goto LABEL_101;
  }

  v24 = dns_configuration_copy();
  if (!v24)
  {
    if (mDNSPlatformRawTime() >= 0x2BF21)
    {
      v38 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "mDNSPlatformSetDNSConfig Error: dns_configuration_copy returned NULL", buf, 2u);
      }
    }

    goto LABEL_101;
  }

  v25 = v24;
  v26 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *v25;
    v28 = *(v25 + 24);
    v29 = *(mDNSStorage[0] + 696);
    *buf = 67109888;
    *&buf[4] = v27;
    *&buf[8] = 2048;
    *&buf[10] = v28;
    *&buf[18] = 2048;
    *&buf[20] = v29;
    *&buf[28] = 1024;
    *&buf[30] = v28 != v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetDNSConfig -- config->n_resolver: %d, this config generagtion: %llu, last config generation: %llu, changed: %{mdns:yesno}d", buf, 0x22u);
  }

  if (v10 && *(mDNSStorage[0] + 696) == *(v25 + 24))
  {
    dns_configuration_free();
    v30 = 0;
    goto LABEL_102;
  }

  if (*v25 && (v31 = **(v25 + 4), (v32 = *v31) != 0) && *(v31 + 8) && **(v31 + 12))
  {
    ActiveDirectoryPrimaryDomain[0] = 0;
    AppendDNSNameString(ActiveDirectoryPrimaryDomain, v32);
    v33 = ActiveDirectoryPrimaryDomain[0];
    if (ActiveDirectoryPrimaryDomain[0])
    {
      v34 = ActiveDirectoryPrimaryDomain;
      v35 = -1;
      do
      {
        v36 = &v34[v33];
        v37 = v36[1];
        v34 = v36 + 1;
        v33 = v37;
        ++v35;
      }

      while (v37);
      goto LABEL_53;
    }
  }

  else
  {
    ActiveDirectoryPrimaryDomain[0] = 0;
  }

  v35 = -1;
  if (!*v25 || !*(**(v25 + 4) + 8))
  {
    goto LABEL_63;
  }

LABEL_53:
  if (v35 < 1)
  {
    v40 = ActiveDirectoryPrimaryDomain;
  }

  else
  {
    v39 = v35 + 1;
    v40 = ActiveDirectoryPrimaryDomain;
    do
    {
      if (!*v40)
      {
        break;
      }

      v40 += *v40 + 1;
      --v39;
    }

    while (v39 > 1);
  }

  if (SameDomainNameBytes(v40, "\x05local"))
  {
    SetupAddr(&ActiveDirectoryPrimaryDomainServer, **(**(v25 + 4) + 12));
  }

  else
  {
LABEL_63:
    ActiveDirectoryPrimaryDomain[0] = 0;
    ActiveDirectoryPrimaryDomainServer = 0;
    unk_100164840 = 0;
    dword_100164848 = 0;
  }

  if (v10)
  {
    DNSServiceManager = Querier_GetDNSServiceManager();
    if (DNSServiceManager)
    {
      v42 = DNSServiceManager;
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = __mdns_dns_service_manager_apply_dns_config_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_12_855;
      *&buf[32] = v42;
      *&buf[40] = v25;
      dispatch_sync(_mdns_dns_service_queue_s_queue, buf);
      _Querier_LogDNSServices(v42);
    }

    v10 = 1;
  }

  ConfigResolvers(v25, 0, v9, v10, &v84);
  ConfigResolvers(v25, 1, v9, v10, &v84);
  ConfigResolvers(v25, 2, v9, v10, &v84);
  if (a6)
  {
    *(mDNSStorage[0] + 696) = *(v25 + 24);
    v43 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetDNSConfig: acking configuration", buf, 2u);
    }

    AckConfigd(v25);
  }

  dns_configuration_free();
  if (v9)
  {
    num = v84.num;
    v45 = v84.num >> 2;
    v46 = v84.num & 3;
    if ((v84.num & 3) != 0)
    {
      v47 = v84.data[v45];
      v48 = &MD5_Final_end;
      if (v46 == 3)
      {
        goto LABEL_82;
      }

      if (v46 == 2)
      {
LABEL_81:
        v50 = *v48++;
        v47 |= v50 << 16;
LABEL_82:
        v84.data[v45] = v47 | (*v48 << 24);
        if (num < 0x38)
        {
          if (num > 0x33)
          {
            goto LABEL_89;
          }

          v51 = v45 + 1;
        }

        else
        {
          if (num <= 0x3B)
          {
            v84.data[15] = 0;
          }

          md5_block_host_order(&v84, v84.data);
          v51 = 0;
        }

        bzero(&v84.data[v51], (52 - 4 * v51) + 4);
LABEL_89:
        *&v84.data[14] = *&v84.Nl;
        md5_block_host_order(&v84, v84.data);
        *&buf[4] = *&v84.B;
        *buf = v84.A;
        *&buf[12] = v84.D;
        v84.num = 0;
        if (*buf != xmmword_100170B84 || *&buf[8] != *(&xmmword_100170B84 + 1))
        {
          *(&xmmword_10016D2D8 + &loc_1000038A8 + 4) = *buf;
          v53 = xmmword_10016D2D8;
          if (xmmword_10016D2D8)
          {
            while (!*(v53 + 641))
            {
              v53 = *(v53 + 8);
              if (!v53)
              {
                goto LABEL_96;
              }
            }

            if (mDNS_LoggingEnabled == 1)
            {
              v54 = mDNSLogCategory_Default;
              v55 = v53 + 376;
              v56 = DNSTypeName(*(v53 + 342));
              LogMsgWithLevel(v54, OS_LOG_TYPE_DEFAULT, "RetrySearchDomainQuestions: Question with AppendSearchDomain found %##s (%s)", v55, v56);
            }

            mDNSCoreRestartAddressQueries(1, FlushAddressCacheRecords, 0, 0);
          }

          else
          {
LABEL_96:
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RetrySearchDomainQuestions: Questions with AppendSearchDomain not found");
            }
          }
        }

        goto LABEL_101;
      }
    }

    else
    {
      v48 = &byte_10010D57D;
      v47 = 128;
    }

    v49 = *v48++;
    v47 |= v49 << 8;
    goto LABEL_81;
  }

LABEL_101:
  v30 = 1;
LABEL_102:
  v82[0] = a4;
  v80[0] = a5;
  v57 = SCDynamicStoreCopyValue(0, @"Setup:/Network/DynamicDNS");
  if (v57)
  {
    v58 = v57;
    bzero(buf, 0x3F1uLL);
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
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
    if (a3)
    {
      Value = CFDictionaryGetValue(v58, @"HostNames");
      if (Value)
      {
        v60 = Value;
        if (CFArrayGetCount(Value) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v60, 0);
          if (ValueAtIndex)
          {
            v62 = ValueAtIndex;
            if (DictionaryIsEnabled(ValueAtIndex))
            {
              v63 = CFDictionaryGetValue(v62, @"Domain");
              if (v63)
              {
                if (!CFStringGetCString(v63, buf, 1009, 0x8000100u) || (*a3 = 0, !AppendDNSNameString(a3, buf)) || !*a3)
                {
                  if (buf[0])
                  {
                    v64 = buf;
                  }

                  else
                  {
                    v64 = "(unknown)";
                  }

                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetUserSpecifiedDDNSConfig SCDynamicStore bad DDNS host name: %s", v64);
                }
              }
            }
          }
        }
      }
    }

    if (a4)
    {
      v65 = CFDictionaryGetValue(v58, @"RegistrationDomains");
      if (v65)
      {
        v66 = v65;
        if (CFArrayGetCount(v65) >= 1)
        {
          v67 = CFArrayGetValueAtIndex(v66, 0);
          if (v67)
          {
            v68 = v67;
            if (DictionaryIsEnabled(v67))
            {
              v69 = CFDictionaryGetValue(v68, @"Domain");
              if (v69)
              {
                if (CFStringGetCString(v69, buf, 1009, 0x8000100u) && (LOBYTE(v88) = 0, AppendDNSNameString(&v88, buf)) && v88)
                {
                  AppendDNameListElem(v82, &v88);
                }

                else
                {
                  if (buf[0])
                  {
                    v70 = buf;
                  }

                  else
                  {
                    v70 = "(unknown)";
                  }

                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetUserSpecifiedDDNSConfig SCDynamicStore bad DDNS registration domain: %s", v70);
                }
              }
            }
          }
        }
      }
    }

    if (a5)
    {
      v71 = CFDictionaryGetValue(v58, @"BrowseDomains");
      if (v71)
      {
        v72 = v71;
        for (i = 0; CFArrayGetCount(v72) > i; ++i)
        {
          v74 = CFArrayGetValueAtIndex(v72, i);
          if (v74)
          {
            v75 = v74;
            if (DictionaryIsEnabled(v74))
            {
              v76 = CFDictionaryGetValue(v75, @"Domain");
              if (v76)
              {
                if (CFStringGetCString(v76, buf, 1009, 0x8000100u) && (LOBYTE(v88) = 0, AppendDNSNameString(&v88, buf)) && v88)
                {
                  AppendDNameListElem(v80, &v88);
                }

                else
                {
                  if (buf[0])
                  {
                    v77 = buf;
                  }

                  else
                  {
                    v77 = "(unknown)";
                  }

                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetUserSpecifiedDDNSConfig SCDynamicStore bad DDNS browsing domain: %s", v77);
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v58);
  }

  return v30;
}

void mDNS_SetPrimaryInterfaceInfo(__int128 *a1, __int128 *a2, uint64_t a3)
{
  mDNS_Lock_(mDNSStorage, "mDNS_SetPrimaryInterfaceInfo", 2709);
  if (a1 && *a1 != 4)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo v4 address - incorrect type.  Discarding. %#a");
  }

  else if (a2 && *a2 != 6)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo v6 address - incorrect type.  Discarding. %#a");
  }

  else if (a3 && *a3 != 4)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo passed non-v4 router.  Discarding. %#a");
  }

  else
  {
    v6 = &zerov4Addr;
    if (a1)
    {
      v7 = a1 + 1;
    }

    else
    {
      v7 = &zerov4Addr;
    }

    v8 = a2 + 1;
    if (!a2)
    {
      v8 = &zerov6Addr;
    }

    if (xmmword_1001703DC != *v8)
    {
      goto LABEL_23;
    }

    v9 = a2 + 2;
    if (!a2)
    {
      v9 = &unk_10010D538;
    }

    if (DWORD1(xmmword_1001703DC) != *v9)
    {
      goto LABEL_23;
    }

    v10 = a2 + 3;
    if (!a2)
    {
      v10 = &unk_10010D53C;
    }

    if (DWORD2(xmmword_1001703DC) == *v10)
    {
      v11 = &unk_10010D540;
      if (a2)
      {
        v11 = a2 + 1;
      }

      v12 = HIDWORD(xmmword_1001703DC) != *v11;
    }

    else
    {
LABEL_23:
      v12 = 1;
    }

    v13 = dword_1001703C8;
    v14 = *v7;
    if (a3)
    {
      v6 = (a3 + 4);
    }

    v15 = *v6;
    if (a1)
    {
      v16 = *a1;
      unk_1001703D4 = *(a1 + 4);
      unk_1001703C4 = v16;
    }

    else
    {
      dword_1001703C8 = 0;
    }

    if (a2)
    {
      v17 = *a2;
      HIDWORD(xmmword_1001703DC) = *(a2 + 4);
      unk_1001703D8 = v17;
    }

    else
    {
      xmmword_1001703DC = 0uLL;
    }

    v18 = DWORD1(xmmword_1001703B0);
    if (a3)
    {
      v19 = *a3;
      dword_1001703C0 = *(a3 + 16);
      xmmword_1001703B0 = v19;
    }

    else
    {
      DWORD1(xmmword_1001703B0) = 0;
    }

    v21 = v13 != v14 || v18 != v15;
    if (v21 || v12)
    {
      v38 = v21;
      if (mDNS_LoggingEnabled == 1)
      {
        v22 = "v4Changed ";
        if (v13 == v14)
        {
          v22 = "";
        }

        v23 = "RouterChanged ";
        if (v18 == v15)
        {
          v23 = "";
        }

        if (v12)
        {
          v24 = "v6Changed ";
        }

        else
        {
          v24 = "";
        }

        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo: %s%s%s%#a %#a %#a", v22, v23, v24, *&a1, *&a2, *&a3);
      }

      v37 = v13;
      for (i = xmmword_100170B70; i; i = *i)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo updating host name registrations for %##s", i + 208);
        }

        if (*(i + 472) >= 2u)
        {
          v26 = *(i + 512);
          v28 = *(v26 + 4);
          v27 = (v26 + 4);
          if (v28 != dword_1001703C8)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v29 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((i + 472), v27, word_1001789D0);
              LogMsgWithLevel(v29, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo deregistering %s", word_1001789D0);
            }

            mDNS_Deregister_internal(mDNSStorage, (i + 464), 0);
          }
        }

        if (*(i + 1648) >= 2u)
        {
          v30 = *(i + 1688);
          if (*(v30 + 4) != xmmword_1001703DC || *(v30 + 8) != *(&xmmword_1001703DC + 4) || *(v30 + 16) != HIDWORD(xmmword_1001703DC))
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v31 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((i + 1648), (v30 + 4), word_1001789D0);
              LogMsgWithLevel(v31, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo deregistering %s", word_1001789D0);
            }

            mDNS_Deregister_internal(mDNSStorage, (i + 1640), 0);
          }
        }

        AdvertiseHostname(mDNSStorage, i);
      }

      if (v38)
      {
        if (a1)
        {
          v32 = 0;
        }

        else
        {
          v32 = 5;
        }

        dword_100170BB0 = 0;
        *(mDNSStorage + &loc_1000039B8) = 0;
        RecreateNATMappings(mDNSStorage, 1000 * v32);
        for (j = xmmword_100170B98; j; j = *j)
        {
          *(j + 39) = 0;
        }

        if (mDNS_LoggingEnabled == 1)
        {
          v34 = "";
          v35 = " v4Changed";
          if (v37 == v14)
          {
            v35 = "";
          }

          if (v18 != v15)
          {
            v34 = " RouterChanged";
          }

          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_SetPrimaryInterfaceInfo:%s%s: recreating NAT mappings in %d seconds", v35, v34, v32);
        }
      }

      if (dword_1001704CC != -1)
      {
        mDNS_StopQuery_internal(mDNSStorage, mDNSStorage + &loc_1000031E0);
      }

      *(&dword_10016D258 + &loc_100003718) = 0;
      v36 = dword_10016D258;
      if (dword_10016D258 <= 1)
      {
        v36 = 1;
      }

      dword_1001703A4 = v36;
    }
  }

  mDNS_Unlock_(mDNSStorage, "mDNS_SetPrimaryInterfaceInfo", 2786);
}

uint64_t udsSupportAddFDToEventLoop(int a1, uint64_t a2, uint64_t a3)
{
  v6 = &gEventSources;
  while (1)
  {
    v7 = *v6;
    if (!*v6)
    {
      break;
    }

    v6 = *v6;
    if (*(v7 + 8) == a1)
    {
      v8 = 4294901749;
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
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 67109120;
          v19 = a1;
          goto LABEL_19;
        }
      }

      else
      {
        v9 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 67109120;
          v19 = a1;
LABEL_19:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "udsSupportAddFDToEventLoop: ERROR fd %d already has EventLoop source entry", &v18, 8u);
        }
      }

      return v8;
    }
  }

  result = malloc_type_calloc(1uLL, 0x38uLL, 0xA1733B4AuLL);
  if (result)
  {
    v12 = result;
    *result = 0;
    *(result + 8) = a1;
    *(result + 40) = a2;
    *(result + 48) = a3;
    *(result + 16) = kqUDSEventCallback;
    *(result + 24) = result;
    *(result + 32) = "UDS client";
    if (!KQueueSet(a1, 1u, -1, (result + 16)))
    {
      v8 = 0;
      *v6 = v12;
      return v8;
    }

    v13 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:
        v15 = *__error();
        v16 = __error();
        v17 = strerror(*v16);
        v18 = 67109634;
        v19 = a1;
        v20 = 1024;
        v21 = v15;
        v22 = 2082;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "KQueueSet failed for fd %d errno %d (%{public}s)", &v18, 0x18u);
      }
    }

    else
    {
      v13 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }
    }

    free(v12);
    return 4294901756;
  }

  __break(1u);
  return result;
}

uint64_t mDNS_GetDomains(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  mDNS_Lock_(mDNSStorage, "mDNS_GetDomains", 16191);
  Domains_Internal = mDNS_GetDomains_Internal(mDNSStorage, a1, v10, a3, a4, a5, a6);
  mDNS_Unlock_(mDNSStorage, "mDNS_GetDomains", 16193);
  return Domains_Internal;
}

uint64_t mDNS_StartQuery(unsigned int *a1, uint64_t a2)
{
  mDNS_Lock_(a1, "mDNS_StartQuery", 15996);
  started = mDNS_StartQuery_internal(a1, a2);
  mDNS_Unlock_(a1, "mDNS_StartQuery", 15998);
  return started;
}

void RegisterLocalOnlyDomainEnumPTR(unsigned int *a1, _BYTE *a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x4A0uLL, 0x332D235AuLL);
  if (v6)
  {
    v7 = v6;
    mDNS_SetupResourceRecord((v6 + 1), 0, -2, 12, 0x1C20u, 8, 4, FreeARElemCallback_2637, v6);
    v8 = mDNS_DomainTypeNames[a3];
    *(v7 + 660) = 0;
    AppendDNSNameString(v7 + 660, v8);
    AppendDNSNameString(v7 + 660, "local");
    v9 = a2;
    do
    {
      if (!v9)
      {
        break;
      }

      v10 = *v9;
      if (v10 > 0x3F)
      {
        break;
      }

      if (!*v9)
      {
        v11 = v9 - a2 + 1;
        if (v11 <= 0x100u)
        {
          memcpy((v7[7] + 4), a2, v11);
          goto LABEL_11;
        }

        break;
      }

      v9 += v10 + 1;
    }

    while (v9 - a2 <= 255);
    *(v7[7] + 4) = 0;
LABEL_11:
    v12 = mDNS_Register(a1, (v7 + 1));
    if (v12)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetSCPrefsBrowseDomain: mDNS_Register returned error %d", v12);

      free(v7);
    }

    else
    {
      *v7 = LocalDomainEnumRecords;
      LocalDomainEnumRecords = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

size_t mDNS_Register(unsigned int *a1, uint64_t a2)
{
  mDNS_Lock_(a1, "mDNS_Register", 16514);
  v4 = mDNS_Register_internal(a1, a2);
  mDNS_Unlock_(a1, "mDNS_Register", 16516);
  return v4;
}

void AddAutoBrowseDomain(int a1, _BYTE *a2)
{
  v4 = AutoBrowseDomains;
  if (!AutoBrowseDomains)
  {
LABEL_5:
    v5 = malloc_type_calloc(1uLL, 0x110uLL, 0x66CAE357uLL);
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = a2;
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
        v9 = v7 - a2 + 1;
        if (v9 <= 0x100u)
        {
          memcpy(v5 + 12, a2, v9);
          goto LABEL_15;
        }

        break;
      }

      v7 += v8 + 1;
    }

    while (v7 - a2 <= 255);
    v5[12] = 0;
LABEL_15:
    *(v6 + 8) = a1;
    *v6 = AutoBrowseDomains;
    AutoBrowseDomains = v6;
    v10 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v11 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:
        udsserver_automatic_browse_domain_changed(v6, 1);
        return;
      }

      if (a2)
      {
        v12 = a2;
        while (1)
        {
          if (!v12 || (v13 = *v12, v13 > 0x3F))
          {
LABEL_27:
            v14 = 257;
            goto LABEL_40;
          }

          if (!*v12)
          {
            break;
          }

          v12 += v13 + 1;
          if (v12 - a2 >= 256)
          {
            goto LABEL_27;
          }
        }

        v14 = (v12 - a2 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v10 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      if (a2)
      {
        v16 = a2;
        while (1)
        {
          if (!v16 || (v17 = *v16, v17 > 0x3F))
          {
LABEL_35:
            v14 = 257;
            goto LABEL_40;
          }

          if (!*v16)
          {
            break;
          }

          v16 += v17 + 1;
          if (v16 - a2 >= 256)
          {
            goto LABEL_35;
          }
        }

        v14 = (v16 - a2 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_40:
    v18 = 141558787;
    v19 = 1752392040;
    v20 = 1040;
    v21 = v14;
    v22 = 2101;
    v23 = a2;
    v24 = 1024;
    v25 = a1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Automatic browsing domain is added - domain name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, uid: %u", &v18, 0x22u);
    goto LABEL_41;
  }

  while (!SameDomainNameBytes(a2, (v4 + 12)) || *(v4 + 8) != a1)
  {
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_5;
    }
  }
}

void udsserver_automatic_browse_domain_changed(uint64_t a1, int a2)
{
  v2 = all_requests;
  if (all_requests)
  {
    v5 = (a1 + 12);
    v6 = &unk_100162000;
    while (1)
    {
      if (*(v2 + 112) != browse_termination_callback)
      {
        goto LABEL_4;
      }

      v7 = *(v2 + 152);
      if (!*(v7 + 8))
      {
        goto LABEL_4;
      }

      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = *(v2 + 196);
        if (v9 >= 0x1F5 && v9 != v8)
        {
          goto LABEL_4;
        }
      }

      v11 = (v7 + 272);
      v12 = *(v7 + 272);
      if (v12)
      {
        while (1)
        {
          v13 = SameDomainNameBytes((v12 + 8), v5);
          v14 = *v11;
          if (v13)
          {
            break;
          }

          v12 = *v14;
          v11 = *v11;
          if (!*v14)
          {
            v15 = 0;
            v11 = v14;
            if (a2)
            {
              goto LABEL_19;
            }

            goto LABEL_22;
          }
        }

        v15 = *v11;
        if (a2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v15 = 0;
        if (a2)
        {
LABEL_19:
          if (!v15)
          {
            add_domain_to_browser(v2, v5);
          }

          goto LABEL_4;
        }
      }

LABEL_22:
      if (!v15)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsserver_automatic_browse_domain_changed ERROR %##s not found", v5);
        goto LABEL_4;
      }

      v16 = v6[139];
      if (v16)
      {
        while (1)
        {
          v17 = *(v16 + 2);
          if (!v17 || ((v18 = *(v2 + 196), v18 >= 0x1F5) ? (v19 = v18 == v17) : (v19 = 1), v19))
          {
            if (SameDomainNameBytes(v5, v16 + 12))
            {
              goto LABEL_4;
            }
          }

          v16 = *v16;
          if (!v16)
          {
            v15 = *v11;
            break;
          }
        }
      }

      *v11 = *v15;
      v20 = v15 + 33;
      mDNS_Lock_(mDNSStorage, "mDNS_StopQueryWithRemoves", 16043);
      v21 = &xmmword_10016D2D8 + 1;
      do
      {
        v22 = *v21;
        v21 = (*v21 + 8);
        if (v22)
        {
          v23 = v22 == v20;
        }

        else
        {
          v23 = 1;
        }
      }

      while (!v23);
      v24 = v15[50];
      v26 = v24 == -5 || v24 == -3 || v24 == -2;
      v27 = 24;
      if (v26)
      {
        v27 = 27;
      }

      v28 = &mDNSStorage[v27];
      do
      {
        v29 = *v28;
        v28 = (*v28 + 8);
        if (v29)
        {
          v30 = v29 == v20;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
      if (v29)
      {
        break;
      }

      if ((*(v15 + 119) & 0x80000000) == 0)
      {
        v31 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v32 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v32 = 1;
        }

        if (!v32)
        {
          v31 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_56;
          }

          v46 = v15 + 80;
          v47 = v15 + 80;
          while (1)
          {
            if (!v47 || (v48 = *v47, v48 > 0x3F))
            {
LABEL_93:
              v36 = v6;
              v37 = 257;
              goto LABEL_97;
            }

            if (!*v47)
            {
              break;
            }

            v47 += v48 + 1;
            if (v47 - v46 >= 256)
            {
              goto LABEL_93;
            }
          }

          v36 = v6;
          v37 = (v47 - v46 + 1);
          goto LABEL_97;
        }

        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          v33 = v15 + 80;
          v34 = v15 + 80;
          while (1)
          {
            if (!v34 || (v35 = *v34, v35 > 0x3F))
            {
LABEL_70:
              v36 = v6;
              v37 = 257;
              goto LABEL_97;
            }

            if (!*v34)
            {
              break;
            }

            v34 += v35 + 1;
            if (v34 - v33 >= 256)
            {
              goto LABEL_70;
            }
          }

          v36 = v6;
          v37 = (v34 - v33 + 1);
LABEL_97:
          v49 = DNSTypeName(*(v15 + 303));
          *buf = 141558787;
          *v57 = 1752392040;
          *&v57[8] = 1040;
          *&v57[10] = v37;
          v58 = 2101;
          *v59 = v15 + 80;
          *&v59[8] = 2082;
          *&v59[10] = v49;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Question not found in the active list - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s.", buf, 0x26u);
          v6 = v36;
        }
      }

LABEL_56:
      mDNS_Unlock_(mDNSStorage, "mDNS_StopQueryWithRemoves", 16080);
      free(v15);
LABEL_4:
      v2 = *(v2 + 16);
      if (!v2)
      {
        return;
      }
    }

    if (v22)
    {
LABEL_55:
      mDNS_StopQuery_internal(mDNSStorage, (v15 + 33));
      goto LABEL_56;
    }

    v38 = v15 + 80;
    v55 = CacheGroupForName(mDNSStorage, *(v15 + 116), v15 + 640);
    v39 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v15 + 80;
        v54 = bswap32(*(v15 + 302)) >> 16;
        while (1)
        {
          if (!v43 || (v44 = *v43, v44 > 0x3F))
          {
LABEL_86:
            v42 = 257;
            goto LABEL_99;
          }

          if (!*v43)
          {
            break;
          }

          v43 += v44 + 1;
          if (v43 - v38 >= 256)
          {
            goto LABEL_86;
          }
        }

        v42 = (v43 - v38 + 1);
        goto LABEL_99;
      }
    }

    else
    {
      v39 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v15 + 80;
        v54 = bswap32(*(v15 + 302)) >> 16;
        while (1)
        {
          if (!v40 || (v41 = *v40, v41 > 0x3F))
          {
LABEL_79:
            v42 = 257;
            goto LABEL_99;
          }

          if (!*v40)
          {
            break;
          }

          v40 += v41 + 1;
          if (v40 - v38 >= 256)
          {
            goto LABEL_79;
          }
        }

        v42 = (v40 - v38 + 1);
LABEL_99:
        v53 = v42;
        v50 = DNSTypeName(*(v15 + 303));
        *buf = 67110147;
        *v57 = v54;
        *&v57[4] = 2160;
        *&v57[6] = 1752392040;
        v58 = 1040;
        *v59 = v53;
        *&v59[4] = 2101;
        *&v59[6] = v15 + 80;
        *&v59[14] = 2082;
        *&v59[16] = v50;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[Q%u] Generating RMV events because the question will be stopped - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s.", buf, 0x2Cu);
      }
    }

    if (v55)
    {
      for (i = v55[2]; i; i = *i)
      {
        if (*(i + 8) != 240 && SameNameRecordAnswersQuestion((i + 8), 0, (v15 + 33)))
        {
          v52 = v15[52];
          if (v52)
          {
            v52(mDNSStorage, v15 + 33, i + 8, 0);
          }
        }
      }
    }

    goto LABEL_55;
  }
}

void udsserver_handle_configchange(size_t a1)
{
  v17 = 0;
  v18 = 0;
  UpdateDeviceInfoRecord(a1);
  v2 = all_requests;
  if (all_requests)
  {
    v3 = (a1 + 10280);
    do
    {
      if (*(v2 + 112) == regservice_termination_callback)
      {
        v4 = *(v2 + 128);
        if (*(v4 + 1612))
        {
          v5 = *(v4 + 26);
          if (v5 != *v3 || memcmp((v4 + 27), (a1 + 10281), v5))
          {
            v6 = *v3;
            v7 = *(a1 + 10296);
            v8 = *(a1 + 10328);
            *(v4 + 58) = *(a1 + 10312);
            *(v4 + 74) = v8;
            *(v4 + 26) = v6;
            *(v4 + 42) = v7;
            for (i = *(v4 + 1624); i; i = *i)
            {
              *(i + 24) = 1;
              if (*(i + 25))
              {
                SendServiceRemovalNotification((i + 36));
              }

              if (mDNS_LoggingEnabled == 1)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsserver_handle_configchange: Calling deregister for Service %##s", i[195]);
              }

              if (mDNS_DeregisterService_drt(a1, (i + 36), 1))
              {
                regservice_callback(a1, (i + 36), 0xFFFEFF00);
              }
            }
          }
        }
      }

      v2 = *(v2 + 16);
    }

    while (v2);
  }

  mDNS_Lock_(a1, "udsserver_handle_configchange", 4051);
  mDNSPlatformSetDNSConfig(0, 0, 0, &v18, &v17, 0);
  mDNS_Unlock_(a1, "udsserver_handle_configchange", 4053);
  if (v18)
  {
    SetPrefsBrowseDomains(a1, v18, 1);
  }

  if (AutoRegistrationDomains)
  {
    SetPrefsBrowseDomains(a1, AutoRegistrationDomains, 0);
  }

  for (j = v18; j; j = *j)
  {
    v11 = AutoRegistrationDomains;
    if (!AutoRegistrationDomains)
    {
      goto LABEL_28;
    }

    v12 = &AutoRegistrationDomains;
    while (1)
    {
      if (*(v11 + 2) == *(j + 2))
      {
        v13 = SameDomainNameBytes(v11 + 12, j + 12);
        v11 = *v12;
        if (v13)
        {
          break;
        }
      }

      v12 = v11;
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    if (v11)
    {
      *v12 = *v11;
      free(v11);
    }

    else
    {
LABEL_28:
      RegisterLocalOnlyDomainEnumPTR(a1, j + 12, 3);
      udsserver_default_reg_domain_changed(j, 1);
    }
  }

  while (1)
  {
    v14 = AutoRegistrationDomains;
    if (!AutoRegistrationDomains)
    {
      break;
    }

    AutoRegistrationDomains = *AutoRegistrationDomains;
    DeregisterLocalOnlyDomainEnumPTR_Internal(a1, v14 + 12, 3, 0);
    udsserver_default_reg_domain_changed(v14, 0);
    free(v14);
  }

  AutoRegistrationDomains = v18;
  if (v17)
  {
    SetPrefsBrowseDomains(a1, v17, 1);
  }

  if (SCPrefBrowseDomains)
  {
    SetPrefsBrowseDomains(a1, SCPrefBrowseDomains, 0);
    v15 = SCPrefBrowseDomains;
    if (SCPrefBrowseDomains)
    {
      do
      {
        v16 = *v15;
        free(v15);
        v15 = v16;
      }

      while (v16);
    }
  }

  SCPrefBrowseDomains = v17;
}

size_t UpdateDeviceInfoRecord(size_t result)
{
  v1 = result;
  v2 = result + 0x2000;
  v3 = all_requests;
  if (!all_requests)
  {
    if (!*(result + 11448))
    {
      return result;
    }

    v4 = 0;
    v5 = (result + 11440);
    v6 = (result + 11448);
    goto LABEL_15;
  }

  v4 = 0;
  do
  {
    if (*(v3 + 112) == regservice_termination_callback && *(*(v3 + 128) + 1612) && *(v3 + 252) != -1)
    {
      ++v4;
    }

    v3 = *(v3 + 16);
  }

  while (v3);
  v5 = (result + 11440);
  if (!*(result + 11448))
  {
    goto LABEL_43;
  }

  v6 = (result + 11448);
  if (!v4 || (v7 = *(result + 11480), v8 = *v7, v8 != *(result + 10280)) || (result = memcmp(v7 + 1, (result + 10281), v8), result))
  {
LABEL_15:
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
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v11 = *(v1 + 11480);
      if (v11)
      {
        v12 = *(v1 + 11480);
        while (1)
        {
          if (!v12 || (v13 = *v12, v13 > 0x3F))
          {
LABEL_27:
            v14 = 257;
            goto LABEL_41;
          }

          if (!*v12)
          {
            break;
          }

          v12 += v13 + 1;
          if (&v12[-v11] >= 256)
          {
            goto LABEL_27;
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
      v9 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_42:
        result = mDNS_Deregister(v1, v5);
        if (*v6)
        {
          return result;
        }

LABEL_43:
        if (v4 < 1)
        {
          return result;
        }

        mDNS_SetupResourceRecord(v5, 0, 0, 16, 0x1194u, 4, 0, 0, 0);
        ConstructServiceName((v1 + 12092), (v1 + 10280), "\f_device-info\x04_tcp", "\x05local");
        v18 = *(v1 + 11488);
        if (*(v2 + 2736) >= 0xDBu)
        {
          v19 = 219;
        }

        else
        {
          v19 = *(v2 + 2736);
        }

        *(v18 + 4) = v19 + 6;
        v20 = v18 + 4;
        *(v20 + 1) = 1701080941;
        *(v20 + 5) = 15724;
        memcpy((v20 + 7), (v1 + 10929), v19);
        v21 = v20 + 7 + v19;
        if (OSXVers)
        {
          buf[2] = 0;
          *buf = 0;
          *v21 = 10;
          *(v21 + 1) = 0x3D7372657678736FLL;
          snprintf(buf, 3uLL, "%d", OSXVers);
          *(v21 + 9) = *buf;
          LOWORD(v21) = v21 + 11;
        }

        *(v2 + 3268) = v21 - v20;
        v22 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(v1 + 11480);
            if (v23)
            {
              v27 = *(v1 + 11480);
              while (1)
              {
                if (!v27 || (v28 = *v27, v28 > 0x3F))
                {
LABEL_66:
                  v26 = 257;
                  goto LABEL_71;
                }

                if (!*v27)
                {
                  break;
                }

                v27 += v28 + 1;
                if (&v27[-v23] >= 256)
                {
                  goto LABEL_66;
                }
              }

              v26 = (v27 - v23 + 1);
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_71;
          }
        }

        else
        {
          v22 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(v1 + 11480);
            if (v23)
            {
              v24 = *(v1 + 11480);
              while (1)
              {
                if (!v24 || (v25 = *v24, v25 > 0x3F))
                {
LABEL_58:
                  v26 = 257;
                  goto LABEL_71;
                }

                if (!*v24)
                {
                  break;
                }

                v24 += v25 + 1;
                if (&v24[-v23] >= 256)
                {
                  goto LABEL_58;
                }
              }

              v26 = (v24 - v23 + 1);
            }

            else
            {
              v26 = 0;
            }

LABEL_71:
            *buf = 141558531;
            v30 = 1752392040;
            v31 = 1040;
            v32 = v26;
            v33 = 2101;
            v34 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "UpdateDeviceInfoRecord Register %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
          }
        }

        return mDNS_Register(v1, v5);
      }

      v11 = *(v1 + 11480);
      if (v11)
      {
        v16 = *(v1 + 11480);
        while (1)
        {
          if (!v16 || (v17 = *v16, v17 > 0x3F))
          {
LABEL_35:
            v14 = 257;
            goto LABEL_41;
          }

          if (!*v16)
          {
            break;
          }

          v16 += v17 + 1;
          if (&v16[-v11] >= 256)
          {
            goto LABEL_35;
          }
        }

        v14 = (v16 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_41:
    *buf = 141558531;
    v30 = 1752392040;
    v31 = 1040;
    v32 = v14;
    v33 = 2101;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UpdateDeviceInfoRecord Deregister %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
    goto LABEL_42;
  }

  return result;
}

_DWORD *AppendDNameListElem(void **a1, _BYTE *a2)
{
  result = malloc_type_calloc(1uLL, 0x110uLL, 0x79DFFD8AuLL);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  *result = 0;
  result[2] = 0;
  v6 = a2;
  while (1)
  {
    if (!v6 || (v7 = *v6, v7 > 0x3F))
    {
LABEL_7:
      result += 3;
LABEL_8:
      *result = 0;
      goto LABEL_9;
    }

    if (!*v6)
    {
      break;
    }

    v6 += v7 + 1;
    if (v6 - a2 >= 256)
    {
      goto LABEL_7;
    }
  }

  result += 3;
  if ((v6 - a2 + 1) > 0x100u)
  {
    goto LABEL_8;
  }

  result = __memcpy_chk();
LABEL_9:
  **a1 = v5;
  *a1 = v5;
  return result;
}

void SetPrefsBrowseDomains(unsigned int *a1, uint64_t *a2, int a3)
{
  if (a3)
  {
    v6 = "add";
  }

  else
  {
    v6 = "remove";
  }

  do
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
        goto LABEL_26;
      }

      v9 = a2 + 12;
      v10 = a2 + 12;
      while (1)
      {
        if (!v10 || (v11 = *v10, v11 > 0x3F))
        {
LABEL_15:
          v12 = 257;
          goto LABEL_25;
        }

        if (!*v10)
        {
          break;
        }

        v10 += v11 + 1;
        if (v10 - v9 >= 256)
        {
          goto LABEL_15;
        }
      }

      v12 = (v10 - v9 + 1);
    }

    else
    {
      v7 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v14 = a2 + 12;
      v15 = a2 + 12;
      while (1)
      {
        if (!v15 || (v16 = *v15, v16 > 0x3F))
        {
LABEL_22:
          v12 = 257;
          goto LABEL_25;
        }

        if (!*v15)
        {
          break;
        }

        v15 += v16 + 1;
        if (v15 - v14 >= 256)
        {
          goto LABEL_22;
        }
      }

      v12 = (v15 - v14 + 1);
    }

LABEL_25:
    v17 = *(a2 + 2);
    *buf = 141559043;
    v22 = 1752392040;
    v23 = 1040;
    v24 = v12;
    v25 = 2101;
    v26 = a2 + 12;
    v27 = 1024;
    v28 = v17;
    v29 = 2082;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SetPrefsBrowseDomains is adding/removing domain for Browsing and Automatic Browsing domains - domain name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, uid: %u, result: %{public}s", buf, 0x2Cu);
LABEL_26:
    v18 = a2 + 12;
    if (a3)
    {
      RegisterLocalOnlyDomainEnumPTR(a1, v18, 0);
      v19 = *(a2 + 2);
      if (v19)
      {
        AddAutoBrowseDomain(v19, a2 + 12);
      }

      else
      {
        RegisterLocalOnlyDomainEnumPTR(a1, a2 + 12, 2);
      }
    }

    else
    {
      DeregisterLocalOnlyDomainEnumPTR_Internal(a1, v18, 0, 0);
      v20 = *(a2 + 2);
      if (v20)
      {
        RmvAutoBrowseDomain(v20, a2 + 12);
      }

      else
      {
        DeregisterLocalOnlyDomainEnumPTR_Internal(a1, a2 + 12, 2, 0);
      }
    }

    a2 = *a2;
  }

  while (a2);
}

void udsserver_default_reg_domain_changed(uint64_t a1, int a2)
{
  v4 = "Adding";
  if (!a2)
  {
    v4 = "Removing";
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s registration domain %##s", v4, a1 + 12);
  for (i = all_requests; i; i = *(i + 16))
  {
    if (*(i + 112) == regservice_termination_callback)
    {
      v6 = *(i + 128);
      if (*(v6 + 1355))
      {
        v7 = *(a1 + 8);
        if (!v7 || ((v8 = *(i + 196), v8 >= 0x1F5) ? (v9 = v8 == v7) : (v9 = 1), v9))
        {
          v10 = (v6 + 1624);
          v11 = *(v6 + 1624);
          if (v11)
          {
            while (1)
            {
              v12 = SameDomainNameBytes((v11 + 28), (a1 + 12));
              v13 = *v10;
              if (v12)
              {
                break;
              }

              v11 = *v13;
              v10 = *v10;
              if (!*v13)
              {
                v14 = 0;
                v10 = v13;
                if (a2)
                {
                  goto LABEL_20;
                }

                goto LABEL_23;
              }
            }

            v14 = *v10;
            if (a2)
            {
              goto LABEL_20;
            }

LABEL_23:
            if (v14)
            {
              v15 = AutoRegistrationDomains;
              if (AutoRegistrationDomains)
              {
                while (1)
                {
                  v16 = *(v15 + 8);
                  if (!v16 || ((v17 = *(i + 196), v17 >= 0x1F5) ? (v18 = v17 == v16) : (v18 = 1), v18))
                  {
                    if (SameDomainNameBytes((a1 + 12), (v15 + 12)))
                    {
                      break;
                    }
                  }

                  v15 = *v15;
                  if (!v15)
                  {
                    v14 = *v10;
                    goto LABEL_34;
                  }
                }
              }

              else
              {
LABEL_34:
                *v10 = *v14;
                if (*(v14 + 25))
                {
                  SendServiceRemovalNotification((v14 + 36));
                }

                v14[1] = 0;
                v19 = mDNS_DeregisterService_drt(mDNSStorage, (v14 + 36), 0);
                if (v19)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsserver_default_reg_domain_changed err %d", v19);
                  unlink_and_free_service_instance(v14);
                }
              }
            }

            else
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsserver_default_reg_domain_changed domain %##s not found for service %#s type %s", a1 + 12, v6 + 26, v6 + 90);
            }

            continue;
          }

          v14 = 0;
          if (!a2)
          {
            goto LABEL_23;
          }

LABEL_20:
          if (!v14)
          {
            register_service_instance(i, (a1 + 12));
          }
        }
      }
    }
  }
}

void mDNSMacOSXNetworkChanged()
{
  if (dword_10016D220)
  {
    v0 = mDNS_TimeNow(mDNSStorage);
    v1 = dword_10016D220;
    v2 = v0 - dword_10016D220;
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  v3 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v1;
    *&buf[8] = 1024;
    *&buf[10] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change *** -- network changed: %{mdns:yesno}d, delay: %d ticks", buf, 0xEu);
  }

  dword_10016D220 = 0;
  v4 = socket(30, 2, 0);
  if (v4 < 1)
  {
    goto LABEL_21;
  }

  v5 = v4;
  IfAddrs = myGetIfAddrs();
  if (!IfAddrs)
  {
LABEL_19:
    close(v5);
    v14 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change ***  No IPv6 address TENTATIVE, will continue", buf, 2u);
    }

LABEL_21:
    v15 = time(0);
    SystemWakeForNetworkAccess();
    *(&dword_10016D2A4 + 3) = 0;
    for (i = *mDNSStorage[0]; i; i = *(i + 3680))
    {
      if (*(i + 3696))
      {
        *(i + 3704) = v15;
      }

      *(i + 3696) = 0;
    }

    UpdateInterfaceList(v15);
    ClearInactiveInterfaces(v15);
    SetupActiveInterfaces(v15);
    v17 = OfferSleepProxyService;
    if (OfferSleepProxyService)
    {
      *buf = -1;
      v18 = SCDynamicStoreCreate(0, @"mDNSResponder:GetSystemSleepTimerSetting", 0, 0);
      if (v18)
      {
        v19 = v18;
        v20 = SCDynamicStoreCopyValue(v18, @"State:/IOKit/PowerManagement/CurrentSettings");
        if (v20)
        {
          v21 = v20;
          Value = CFDictionaryGetValue(v20, @"System Sleep Timer");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, buf);
          }

          CFRelease(v21);
        }

        CFRelease(v19);
        if (*buf)
        {
          v17 = 0;
        }

        else
        {
          v17 = 80;
        }
      }

      else
      {
        v23 = mDNSLogCategory_Default;
        v24 = SCError();
        v25 = SCErrorString(v24);
        LogMsgWithLevel(v23, OS_LOG_TYPE_DEFAULT, "GetSystemSleepTimerSetting: SCDynamicStoreCreate failed: %s", v25);
        v17 = 0;
      }
    }

    if (SPMetricMarginalPower <= 0x3Cu && v17 == 0)
    {
      v17 = 70;
    }

    if (OfferSleepProxyService)
    {
      v27 = OfferSleepProxyService < 100;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    if (((v17 != 0) & v28) != 0)
    {
      v29 = OfferSleepProxyService;
    }

    else
    {
      v29 = v17;
    }

    mDNS_Lock_(mDNSStorage, "SetSPS", 6023);
    mDNSCoreBeSleepProxyServer_internal(mDNSStorage, v29, SPMetricPortability, SPMetricMarginalPower, SPMetricTotalPower, 1u);
    mDNS_Unlock_(mDNSStorage, "SetSPS", 6023);
    v30 = *mDNSStorage[0];
    if (!*mDNSStorage[0])
    {
LABEL_79:
      uDNS_SetupDNSConfig();
      mDNS_ConfigChanged(mDNSStorage);
      if (mDNS_McastTracingEnabled)
      {
        mDNS_McastTracingEnabled = 0;
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSMacOSXNetworkChanged: Multicast Tracing %s", "Disabled");
        }

        UpdateDebugState();
      }

      return;
    }

    v31 = &unk_100178000;
    while (1)
    {
      if (!*(&xmmword_100170D20 + 1))
      {
        if ((*(v30 + 3732) & 0x80000000) == 0 && !CountProxyTargets(v30, 0, 0))
        {
          CloseBPF(v30);
        }

        goto LABEL_68;
      }

      if (*(v30 + 3696) && *(v30 + 3768) == v30 && *(v30 + 3671) && (*(v30 + 3712) & 8) == 0 && !*(v30 + 3699) && *(v30 + 3732) == -1)
      {
        break;
      }

LABEL_68:
      v30 = *(v30 + 3680);
      if (!v30)
      {
        goto LABEL_79;
      }
    }

    LogMsgWithLevel(v31[434], OS_LOG_TYPE_DEFAULT, "%s mDNSMacOSXNetworkChanged: requesting BPF", (v30 + 3606));
    *(v30 + 3732) = -2;
    if (mDNSMacOSXNetworkChanged_once != -1)
    {
      dispatch_once(&mDNSMacOSXNetworkChanged_once, &__block_literal_global_3614);
    }

    v32 = mDNSMacOSXNetworkChanged_queue;
    v33 = v31[434];
    if (!mDNS_SensitiveLoggingEnableCount || v33 == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
LABEL_71:
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Requesting BPF from helper", buf, 2u);
      }
    }

    else
    {
      v33 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_71;
      }
    }

    v34 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v34, "command", "bpf_open");
    xpc_dictionary_set_int64(v34, "open_flags", 2);
    dispatch_retain(v32);
    v35 = _Block_copy(&__block_literal_global_138);
    *aBlock = _NSConcreteStackBlock;
    *&aBlock[8] = 0x40000000;
    *&aBlock[16] = __mhc_bpf_open_block_invoke;
    *&aBlock[24] = &unk_100153168;
    v58 = v35;
    v59 = v32;
    if (_mhc_queue_s_once != -1)
    {
      dispatch_once(&_mhc_queue_s_once, &__block_literal_global_14);
    }

    mach_service = xpc_connection_create_mach_service("com.apple.mDNSResponder_Helper", _mhc_queue_s_queue, 2uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___mhc_create_connection_block_invoke;
    handler[3] = &__block_descriptor_tmp_11_6682;
    handler[4] = mach_service;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
    xpc_retain(v34);
    v37 = _Block_copy(aBlock);
    if (_mhc_queue_s_once != -1)
    {
      dispatch_once(&_mhc_queue_s_once, &__block_literal_global_14);
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&v41[0] = ___mhc_send_message_with_reply_block_invoke;
    *(&v41[0] + 1) = &unk_1001531D0;
    *(&v41[1] + 1) = mach_service;
    *&v42 = v34;
    *&v41[1] = v37;
    xpc_connection_send_message_with_reply(mach_service, v34, _mhc_queue_s_queue, buf);
    if (v34)
    {
      xpc_release(v34);
    }

    v31 = &unk_100178000;
    goto LABEL_68;
  }

  v7 = IfAddrs;
  while (1)
  {
    v8 = v7[3];
    if (v8 && *(v8 + 1) == 30)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      *buf = 0u;
      memset(v41, 0, sizeof(v41));
      v9 = v7[1];
      if (!v9)
      {
        __break(1u);
      }

      v10 = 0;
      while (1)
      {
        v11 = *(v9 + v10);
        buf[v10] = v11;
        if (!v11)
        {
          break;
        }

        if (++v10 == 15)
        {
          buf[15] = 0;
          break;
        }
      }

      v12 = v7[3];
      v13 = *v12;
      *(v41 + 12) = *(v12 + 12);
      v41[0] = v13;
      if (ioctl(v5, 0xC1206949uLL, buf) != -1 && (v41[0] & 2) != 0)
      {
        break;
      }
    }

    v7 = *v7;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  v38 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    *aBlock = 141558531;
    *&aBlock[4] = 1752392040;
    *&aBlock[12] = 1045;
    *&aBlock[14] = 16;
    *&aBlock[18] = 2101;
    *&aBlock[20] = v41 + 8;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change ***  IPv6 address %{sensitive, mask.hash, network:in6_addr}.16P TENTATIVE, will retry", aBlock, 0x1Cu);
  }

  close(v5);
  mDNS_Lock_(mDNSStorage, "mDNSMacOSXNetworkChanged", 6461);
  SetNetworkChanged(500);
  mDNS_Unlock_(mDNSStorage, "mDNSMacOSXNetworkChanged", 6463);
}

BOOL mDNSSameAddress(int *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 == 6)
    {
      if (a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3])
      {
        v3 = a1[4];
        v4 = a2[4];
        return v3 == v4;
      }
    }

    else if (v2 == 4)
    {
      v3 = a1[1];
      v4 = a2[1];
      return v3 == v4;
    }

    return 0;
  }

  return 1;
}

void ClearInactiveInterfaces(int a1)
{
  v1 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
    return;
  }

  v2 = a1;
  v3 = &unk_100178000;
  do
  {
    v4 = SearchForInterfaceByName((v1 + 3606), 0);
    v5 = *(v1 + 3768);
    if (v5)
    {
      v6 = v4;
      if ((*(v1 + 3696) | 2) == 2 || v5 != v4)
      {
        v8 = (*(v1 + 3712) & 8) == 0 && v2 - *(v1 + 3700) < 60;
        *(v1 + 3697) = v8;
        v9 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v1 + 3720);
          v11 = *(v1 + 3552);
          v12 = CountMaskBits((v1 + 3580));
          v13 = *(v1 + 3698);
          v14 = *(v1 + 16);
          *buf = 136449795;
          *v78 = v1 + 3606;
          *&v78[8] = 1024;
          *&v78[10] = v10;
          *&v78[14] = 2160;
          *&v78[16] = 1752392040;
          v79 = 1045;
          *v80 = 6;
          *&v80[4] = 2101;
          *&v80[6] = v1 + 3724;
          v3 = &unk_100178000;
          v81 = 2048;
          v82 = v11;
          v83 = 2048;
          v84 = v1;
          v85 = 2048;
          v86 = v6;
          v87 = 2160;
          *v88 = 1752392040;
          *&v88[8] = 1045;
          *&v88[10] = 20;
          v89 = 2101;
          *v90 = v1 + 3560;
          v2 = a1;
          *&v90[8] = 1024;
          *v91 = v12;
          *&v91[4] = 1024;
          v92 = v8;
          v93 = 1024;
          v94 = v13;
          v95 = 1024;
          v96 = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ClearInactiveInterfaces: Deregistering %{public}s(%u) %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P InterfaceID %p(%p), primary %p, %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P/%d -- flashing: %{mdns:yesno}d, occulting: %{mdns:yesno}d, primary: %{mdns:yesno}d", buf, 0x7Cu);
        }

        if (*(v1 + 3606) == 112 && *(v1 + 3607) == 50 && *(v1 + 3608) == 112 || *(v1 + 3676))
        {
          v15 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *v78 = v1 + 3606;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ClearInactiveInterfaces: %{public}s DirectLink interface deregistering", buf, 0xCu);
          }
        }

        mDNS_Lock_(mDNSStorage, "mDNS_DeregisterInterface", 17321);
        v16 = (mDNSStorage + &loc_100003170);
        do
        {
          v17 = v16;
          v16 = *v16;
          if (v16)
          {
            v18 = v16 == v1;
          }

          else
          {
            v18 = 1;
          }
        }

        while (!v18);
        if (v16)
        {
          *v17 = *v16;
          *v1 = 0;
          if (!*(v1 + 16))
          {
            for (i = xmmword_100170388; i; i = *i)
            {
              if (*(i + 16) && *(i + 3552) == *(v1 + 3552))
              {
                UpdateInterfaceProtocols(i);
              }
            }

            goto LABEL_52;
          }

          v19 = *(v1 + 3552);
          v20 = &xmmword_100170388;
          do
          {
            v20 = *v20;
          }

          while (v20 && *(v20 + 444) != v19);
          v21 = mDNSLogCategory_mDNS;
          if (mDNS_SensitiveLoggingEnableCount)
          {
            v22 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
          }

          else
          {
            v22 = 1;
          }

          v23 = v22;
          if (v20)
          {
            if (v23)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }
            }

            else
            {
              v21 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }
            }

            *buf = 67110147;
            *v78 = v19;
            *&v78[4] = 2082;
            *&v78[6] = v1 + 3606;
            *&v78[14] = 2160;
            *&v78[16] = 1752392040;
            v79 = 1045;
            *v80 = 20;
            *&v80[4] = 2101;
            *&v80[6] = v1 + 3560;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Another representative of InterfaceID exists - ifid: %d, ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x2Cu);
LABEL_61:
            if (*(v20 + 16))
            {
              v31 = mDNSLogCategory_mDNS;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                {
LABEL_67:
                  *buf = 136446979;
                  *v78 = v1 + 3606;
                  *&v78[8] = 2160;
                  *&v78[10] = 1752392040;
                  *&v78[18] = 1045;
                  *&v78[20] = 20;
                  v79 = 2101;
                  *v80 = v1 + 3560;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "intf->InterfaceActive already set for interface - ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x26u);
                }
              }

              else
              {
                v31 = mDNSLogCategory_mDNS_redacted;
                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_67;
                }
              }
            }

            v27 = 1;
            *(v20 + 16) = 1;
            UpdateInterfaceProtocols(v20);
            v32 = xmmword_100170388;
            if (!xmmword_100170388)
            {
              goto LABEL_107;
            }

            while (v32[444] != *(v1 + 3552) || *(v32 + 890) != *(v1 + 3560))
            {
              v32 = *v32;
              if (!v32)
              {
                v27 = 1;
                goto LABEL_107;
              }
            }

LABEL_52:
            v27 = 0;
LABEL_107:
            AdjustAddressRecordSetsEx(v1, 0);
            AdjustAddressRecordSetsEx(v1, 1);
            if (*(v1 + 3670))
            {
              DeadvertiseInterface(mDNSStorage, v1, 3);
            }

            if (dword_10016D264)
            {
              v54 = 0;
            }

            else
            {
              v54 = v27;
            }

            if (v54 == 1)
            {
              for (j = 0; j != 499; ++j)
              {
                for (k = mDNSStorage[j + 34]; k; k = *k)
                {
                  for (m = k[2]; m; m = *m)
                  {
                    if (m[4] == *(v1 + 3552))
                    {
                      mDNS_Reconfirm_internal(mDNSStorage, m, 0x2710u);
                    }
                  }
                }
              }
            }

            mDNS_UpdateAllowSleep(mDNSStorage);
            v29 = 17496;
            goto LABEL_122;
          }

          if (v23)
          {
            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_76;
            }

            *buf = 67110147;
            *v78 = v19;
            *&v78[4] = 2082;
            *&v78[6] = v1 + 3606;
            *&v78[14] = 2160;
            *&v78[16] = 1752392040;
            v79 = 1045;
            *v80 = 20;
            *&v80[4] = 2101;
            *&v80[6] = v1 + 3560;
            v30 = v21;
          }

          else
          {
            v33 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_76;
            }

            *buf = 67110147;
            *v78 = v19;
            *&v78[4] = 2082;
            *&v78[6] = v1 + 3606;
            *&v78[14] = 2160;
            *&v78[16] = 1752392040;
            v79 = 1045;
            *v80 = 20;
            *&v80[4] = 2101;
            *&v80[6] = v1 + 3560;
            v30 = v33;
          }

          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Last representative of InterfaceID deregistered; marking questions etc. dormant - ifid: %d, ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x2Cu);
LABEL_76:
          ++dword_100172020;
          v34 = *(v1 + 3552);
          if (DPCFeatureEnabled_sOnce != -1)
          {
            dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
          }

          if (DPCFeatureEnabled_sEnabled)
          {
            _DPCRemovePushServer(v34);
          }

          v35 = xmmword_10016D2D8;
          if (!xmmword_10016D2D8)
          {
LABEL_88:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            do
            {
              for (n = mDNSStorage[v39 + 34]; n; n = *n)
              {
                for (ii = n[2]; ii; ii = *ii)
                {
                  if (*(ii + 32) == *(v1 + 3552))
                  {
                    v46 = *(ii + 56);
                    if (v46)
                    {
                      v47 = *(v46 + 24) == 0;
                    }

                    else
                    {
                      v47 = 1;
                    }

                    v48 = !v47;
                    v49 = v42 + v47;
                    v50 = *(ii + 92);
                    v51 = v40 + !v47;
                    v52 = v43 + v47;
                    v53 = v41 + v48;
                    if (v50)
                    {
                      v43 = v52;
                    }

                    else
                    {
                      v42 = v49;
                    }

                    if (v50)
                    {
                      v41 = v53;
                    }

                    else
                    {
                      v40 = v51;
                    }

                    mDNS_PurgeCacheResourceRecord(mDNSStorage, ii);
                  }
                }
              }

              ++v39;
            }

            while (v39 != 499);
            v27 = 0;
            sCacheUsage_MulticastHitCount += v43;
            sCacheUsage_MulticastMissCount += v42;
            sCacheUsage_UnicastHitCount += v41;
            sCacheUsage_UnicastMissCount += v40;
            v3 = &unk_100178000;
            goto LABEL_107;
          }

          while (1)
          {
            if (!*(v35 + 340))
            {
              v36 = *(v35 + 136);
              v37 = *(v1 + 3552);
              if (v36 == v37)
              {
                *(v35 + 212) = 0;
LABEL_86:
                v38 = *(v35 + 16);
                *(v35 + 16) = v37;
                *(v35 + 24) = v38;
                goto LABEL_87;
              }

              if (!v36)
              {
                goto LABEL_86;
              }
            }

LABEL_87:
            v35 = *(v35 + 8);
            if (!v35)
            {
              goto LABEL_88;
            }
          }
        }

        v24 = mDNSLogCategory_mDNS;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v25 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
          {
LABEL_55:
            v29 = 17328;
LABEL_122:
            mDNS_Unlock_(mDNSStorage, "mDNS_DeregisterInterface", v29);
            *(v1 + 3768) = 0;
            goto LABEL_123;
          }
        }

        else
        {
          v24 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_55;
          }
        }

        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "NetworkInterfaceInfo not found in list", buf, 2u);
        goto LABEL_55;
      }
    }

LABEL_123:
    v1 = *(v1 + 3680);
  }

  while (v1);
  v58 = mDNSStorage[0];
  v59 = *mDNSStorage[0];
  if (*mDNSStorage[0])
  {
    v60 = v2 - 1;
    do
    {
      while (*(v59 + 3696))
      {
LABEL_142:
        v58 = (v59 + 3680);
        v59 = *(v59 + 3680);
        if (!v59)
        {
          return;
        }
      }

      v61 = *(v59 + 3704);
      if (v61 == v2)
      {
        *(v59 + 3704) = v60;
        v61 = v60;
      }

      v62 = v2 - v61;
      v63 = *(v3 + 435);
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
      if (v62 < 60)
      {
        if (!v64)
        {
          goto LABEL_135;
        }

        v71 = *(v59 + 3720);
        v72 = *(v59 + 3552);
        v73 = CountMaskBits((v59 + 3580));
        v74 = *(v59 + 16);
        *buf = 136449283;
        *v78 = v59 + 3606;
        v2 = a1;
        *&v78[8] = 1024;
        *&v78[10] = v71;
        *&v78[14] = 2160;
        *&v78[16] = 1752392040;
        v79 = 1045;
        *v80 = 6;
        *&v80[4] = 2101;
        *&v80[6] = v59 + 3724;
        v3 = &unk_100178000;
        v81 = 2048;
        v82 = v72;
        v83 = 2048;
        v84 = v59;
        v85 = 2160;
        v86 = 1752392040;
        v87 = 1045;
        *v88 = 20;
        *&v88[4] = 2101;
        *&v88[6] = v59 + 3560;
        v89 = 1024;
        *v90 = v73;
        *&v90[4] = 1024;
        *&v90[6] = v62;
        *v91 = 1024;
        *&v91[2] = v74;
        v69 = v63;
        v70 = "ClearInactiveInterfaces: Holding %{public}s(%u) %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P InterfaceID %p(%p) %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P/%d Age %d -- primary: %{mdns:yesno}d";
      }

      else
      {
        if (!v64)
        {
          goto LABEL_135;
        }

        v65 = *(v59 + 3720);
        v66 = *(v59 + 3552);
        v67 = CountMaskBits((v59 + 3580));
        v68 = *(v59 + 16);
        *buf = 136449283;
        *v78 = v59 + 3606;
        *&v78[8] = 1024;
        *&v78[10] = v65;
        *&v78[14] = 2160;
        *&v78[16] = 1752392040;
        v79 = 1045;
        *v80 = 6;
        *&v80[4] = 2101;
        *&v80[6] = v59 + 3724;
        v2 = a1;
        v81 = 2048;
        v82 = v66;
        v3 = &unk_100178000;
        v83 = 2048;
        v84 = v59;
        v85 = 2160;
        v86 = 1752392040;
        v87 = 1045;
        *v88 = 20;
        *&v88[4] = 2101;
        *&v88[6] = v59 + 3560;
        v89 = 1024;
        *v90 = v67;
        *&v90[4] = 1024;
        *&v90[6] = v62;
        *v91 = 1024;
        *&v91[2] = v68;
        v69 = v63;
        v70 = "ClearInactiveInterfaces: Deleting %{public}s(%u) %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P InterfaceID %p(%p) %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P/%d Age %d -- primary: %{mdns:yesno}d";
      }

      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v70, buf, 0x6Cu);
LABEL_135:
      if ((*(v59 + 3732) & 0x80000000) == 0)
      {
        CloseBPF(v59);
      }

      if (v62 < 60)
      {
        goto LABEL_142;
      }

      *v58 = *(v59 + 3680);
      v75 = *(v59 + 8);
      if (v75)
      {
        os_release(v75);
      }

      free(v59);
      v59 = *v58;
    }

    while (*v58);
  }
}

uint64_t mDNS_ConfigChanged(uint64_t result)
{
  v1 = result;
  v2 = (result + 12288);
  if (*(result + 15109) == 1)
  {
    memset(v8, 0, sizeof(v8));
    memset(v7, 0, sizeof(v7));
    DeconstructServiceName(*(result + 17576), v8, v6, v5);
    v3 = mDNS_snprintf(v7 + 1, 62, "%d-%d-%d-%d.%d %#s", v2[2816], v2[2817], v2[2818], v2[2819], v2[2820], (v1 + 10280));
    LOBYTE(v7[0]) = v3;
    if (LOBYTE(v8[0]) != v3 || (result = memcmp(v8 + 1, v7 + 1, v3), result))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Renaming SPS from “%#s” to “%#s”", v8, v7);
      }

      v2[2821] = 2;
      result = mDNS_DeregisterService_drt(v1, v1 + 15128, 1);
    }
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    return v4(v1, 4294901505);
  }

  return result;
}

uint64_t SameRDataBody(uint64_t a1, unsigned __int16 *a2, uint64_t (*a3)(uint64_t, unsigned __int16 *))
{
  v3 = a2;
  v5 = *(a1 + 40);
  v6 = (v5 + 4);
  v7 = *(a1 + 4) - 2;
  result = 0;
  switch(v7)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 10:
    case 21:
    case 37:

      return SameDomainNameBytes((v5 + 4), a2);
    case 4:
      if (*(v5 + 516) != *(a2 + 128) || *(v5 + 520) != *(a2 + 129) || *(v5 + 524) != *(a2 + 130) || *(v5 + 528) != *(a2 + 131) || *(v5 + 532) != *(a2 + 132))
      {
        return 0;
      }

      goto LABEL_17;
    case 12:
    case 15:
LABEL_17:
      result = a3(v5 + 4, a2);
      if (!result)
      {
        return result;
      }

      v10 = v5 + 260;
      v11 = v3 + 128;
      return a3(v10, v11) != 0;
    case 13:
    case 16:
    case 19:
    case 34:
      if (*v6 != *a2)
      {
        return 0;
      }

      v10 = v5 + 6;
      v11 = a2 + 1;
      return a3(v10, v11) != 0;
    case 24:
      if (*v6 != *a2)
      {
        return 0;
      }

      result = a3(v5 + 6, a2 + 1);
      if (!result)
      {
        return result;
      }

      v10 = v5 + 262;
      v11 = v3 + 129;
      return a3(v10, v11) != 0;
    case 31:
      if (*v6 != *a2 || *(v5 + 6) != a2[1] || *(v5 + 8) != a2[2])
      {
        return 0;
      }

      v10 = v5 + 10;
      v11 = a2 + 3;
      return a3(v10, v11) != 0;
    case 39:
      return result;
    case 45:
      v14 = (v5 + 4);
      break;
    default:
      v12 = *(a1 + 12);
      v13 = (v5 + 4);
      return memcmp(v13, a2, v12) == 0;
  }

  while (1)
  {
    if (!v14 || (v15 = *v14, v15 > 0x3F))
    {
LABEL_25:
      v16 = 257;
      goto LABEL_30;
    }

    if (!*v14)
    {
      break;
    }

    v14 += v15 + 1;
    if (v14 - v6 >= 256)
    {
      goto LABEL_25;
    }
  }

  v16 = v14 - v6 + 1;
LABEL_30:
  v17 = v16;
  v18 = a2;
  while (1)
  {
    if (!v18 || (v19 = *v18, v19 > 0x3F))
    {
LABEL_35:
      v20 = 257;
      goto LABEL_37;
    }

    if (!*v18)
    {
      break;
    }

    v18 = (v18 + v19 + 1);
    if (v18 - a2 >= 256)
    {
      goto LABEL_35;
    }
  }

  v20 = v18 - a2 + 1;
LABEL_37:
  if (v17 != v20)
  {
    return 0;
  }

  result = a3(v6, a2);
  if (result)
  {
    v12 = *(a1 + 12) - v17;
    v13 = v6 + v17;
    a2 = (v3 + v17);
    return memcmp(v13, a2, v12) == 0;
  }

  return result;
}

uint64_t mDNS_Deregister(unsigned int *a1, uint64_t *a2)
{
  mDNS_Lock_(a1, "mDNS_Deregister", 16592);
  v4 = mDNS_Deregister_internal(a1, a2, 0);
  mDNS_Unlock_(a1, "mDNS_Deregister", 16594);
  return v4;
}

uint64_t mDNS_Deregister_internal(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = (a2 + 1);
  v7 = *(a2 + 8);
  v8 = *(a2 + 6);
  v9 = (a1 + 0x4000);
  v10 = (a1 + 12616);
  memset(__dst, 0, sizeof(__dst));
  v11 = a2[5];
  v12 = v11;
  do
  {
    if (!v12)
    {
      break;
    }

    v13 = *v12;
    if (v13 > 0x3F)
    {
      break;
    }

    if (!*v12)
    {
      v14 = v12 - v11 + 1;
      if (v14 <= 0x100u)
      {
        memcpy(__dst, a2[5], v14);
      }

      break;
    }

    v12 += v13 + 1;
  }

  while (v12 - v11 <= 255);
  v15 = *(a2 + 6);
  if ((*(a2 + 43) & 0xFFFFFFFE) == 4)
  {
    v16 = AuthGroupForName(a1 + 6264, v8, v11);
    if (!v16)
    {
      return 0;
    }

    v126 = v9;
    v127 = v15;
    v128 = v10;
    v10 = v16 + 2;
    do
    {
      v17 = v10;
      v10 = *v10;
      if (v10)
      {
        v18 = v10 == a2;
      }

      else
      {
        v18 = 1;
      }
    }

    while (!v18);
  }

  else
  {
    v126 = v9;
    v127 = *(a2 + 6);
    v128 = v10;
    do
    {
      v17 = v10;
      v10 = *v10;
      if (v10)
      {
        v19 = v10 == a2;
      }

      else
      {
        v19 = 1;
      }
    }

    while (!v19);
  }

  if (!v10)
  {
    v26 = (a1 + 12624);
    do
    {
      v17 = v26;
      v26 = *v26;
      if (v26)
      {
        v27 = v26 == a2;
      }

      else
      {
        v27 = 1;
      }
    }

    while (!v27);
    if (v26)
    {
      *(a2 + 65) = 0;
      *(a2 + 126) = 0;
      *(a2 + 192) = 0;
      *(a2 + 8) = 1;
      goto LABEL_109;
    }

LABEL_130:
    v51 = 4294901755;
    if (a3 == 3)
    {
      return v51;
    }

    v52 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v51;
    }

    v53 = (a1 + 47032);
    GetRRDisplayString_rdb(v6, (a2[6] + 4), v53);
    *buf = 134218499;
    *v130 = a2;
    *&v130[8] = 2160;
    *&v130[10] = 1752392040;
    *&v130[18] = 2085;
    *&v130[20] = v53;
    v54 = "mDNS_Deregister_internal: Record %p not found in list %{sensitive, mask.hash}s";
    v55 = v52;
    v56 = 32;
LABEL_135:
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
    return v51;
  }

  if (a3 == 4)
  {
    v28 = v8;
    v29 = a2[4];
    a2[4] = 0;
    for (i = *(a1 + 12624); i; i = *i)
    {
      if (i[4] == a2[4])
      {
        v31 = *(i + 8);
        v32 = *v6;
        v33 = v32 == 1 || v31 == 1;
        v34 = v33 || v31 == v32;
        v35 = v34 || (v32 | v31) == 18;
        if (v35 && *(i + 6) == *(a2 + 6) && resource_records_have_same_dnssec_rr_category(i[8], a2[8]) && *(i + 6) == *(a2 + 6) && *(i + 7) == *(a2 + 7) && *(i + 10) == *(a2 + 10) && *(i + 7) == *(a2 + 7) && SameRDataBody((i + 1), (a2[6] + 4), SameDomainName) && SameDomainNameBytes(i[5], a2[5]))
        {
          *(i + 190) = -1;
        }
      }
    }

    a2[4] = v29;
    v8 = v28;
    goto LABEL_109;
  }

  if (a3 == 2)
  {
    for (j = *(a1 + 12624); j; j = *j)
    {
      if (j[4] == a2[4])
      {
        v21 = *(j + 8);
        v22 = *v6;
        v23 = v22 == 1 || v21 == 1;
        v24 = v23 || v21 == v22;
        v25 = v24 || (v22 | v21) == 18;
        if (v25 && *(j + 6) == *(a2 + 6) && resource_records_have_same_dnssec_rr_category(j[8], a2[8]) && *(j + 6) == *(a2 + 6) && *(j + 7) == *(a2 + 7) && *(j + 10) == *(a2 + 10) && *(j + 7) == *(a2 + 7) && SameRDataBody((j + 1), (a2[6] + 4), SameDomainName) && SameDomainNameBytes(j[5], a2[5]))
        {
          *(j + 190) = -1;
        }
      }
    }

    goto LABEL_109;
  }

  v124 = v8;
  v36 = *(a1 + 12624);
  if (!v36)
  {
    goto LABEL_108;
  }

  v37 = (a1 + 12624);
  while (1)
  {
    if (*(v36 + 32) != a2[4])
    {
      goto LABEL_107;
    }

    v38 = *(v36 + 8);
    v39 = *v6;
    v40 = v39 == 1 || v38 == 1;
    v41 = v40 || v38 == v39;
    v42 = v41 || (v39 | v38) == 18;
    if (!v42 || *(v36 + 24) != *(a2 + 6) || !resource_records_have_same_dnssec_rr_category(*(v36 + 64), a2[8]) || *(v36 + 12) != *(a2 + 6) || *(v36 + 14) != *(a2 + 7) || *(v36 + 20) != *(a2 + 10) || *(v36 + 28) != *(a2 + 7))
    {
      goto LABEL_107;
    }

    if (!SameRDataBody(v36 + 8, (a2[6] + 4), SameDomainName))
    {
      v36 = *v37;
      goto LABEL_107;
    }

    v43 = SameDomainNameBytes(*(v36 + 40), a2[5]);
    v36 = *v37;
    if (v43)
    {
      break;
    }

LABEL_107:
    v37 = v36;
    v36 = *v36;
    if (!v36)
    {
      goto LABEL_108;
    }
  }

  if (v36)
  {
    *v37 = *v36;
    if ((*(a2 + 43) & 0xFFFFFFFE) == 4)
    {
      *v36 = 0;
      if (!InsertAuthRecord(a1 + 6264, v36))
      {
        v120 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          GetRRDisplayString_rdb((v36 + 8), (*(v36 + 48) + 4), (a1 + 47032));
          *buf = 141558275;
          *v130 = 1752392040;
          *&v130[8] = 2085;
          *&v130[10] = a1 + 47032;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "mDNS_Deregister_internal: ERROR!! cannot insert %{sensitive, mask.hash}s", buf, 0x16u);
        }
      }
    }

    else
    {
      *v36 = *a2;
      *a2 = v36;
    }

    *(v36 + 8) = *(a2 + 8);
    *(v36 + 189) = *(a2 + 189);
    *(v36 + 193) = *(a2 + 193);
    *(v36 + 195) = *(a2 + 195);
    *(v36 + 208) = *(a2 + 13);
    *(v36 + 232) = *(a2 + 58);
    *(v36 + 236) = *(a2 + 236);
    *(v36 + 280) = a2[35];
    *(v36 + 288) = *(a2 + 72);
    *(v36 + 296) = a2[37];
    *(v36 + 356) = *(a2 + 356);
    *(v36 + 344) = *(a2 + 86);
    *(a2 + 96) = 0;
  }

LABEL_108:
  v8 = v124;
LABEL_109:
  if (!*v17)
  {
    goto LABEL_130;
  }

  if (!a2[4] && !*(a2 + 122) && !IsLocalDomain(a2[5]))
  {
    if (*(a2 + 192))
    {
      v78 = a2[48];
      if (v78)
      {
        DisposeTCPConn(v78);
        a2[48] = 0;
      }

      *(a2 + 8) = 1;
      *(a1 + 140) = 1;
      uDNS_DeregisterRecord(a1, a2);
      return 0;
    }

    *(a2 + 179) = 0;
    if (a2[73])
    {
      mDNS_StopNATOperation_internal(a1, (a2 + 49));
      a2[73] = 0;
    }

    v93 = a2[47];
    if (v93)
    {
      CancelGetZoneData(a1, v93);
      a2[47] = 0;
    }

    v94 = a2[48];
    if (v94)
    {
      DisposeTCPConn(v94);
      a2[48] = 0;
    }
  }

  if (v7 == 1)
  {
    v51 = 4294901755;
    v57 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v51;
    }

    v58 = (a1 + 47032);
    GetRRDisplayString_rdb(v6, (a2[6] + 4), v58);
    *buf = 141558275;
    *v130 = 1752392040;
    *&v130[8] = 2085;
    *&v130[10] = v58;
    v54 = "mDNS_Deregister_internal: %{sensitive, mask.hash}s already marked kDNSRecordTypeDeregistering";
    v55 = v57;
    v56 = 22;
    goto LABEL_135;
  }

  if (!v7)
  {
    v44 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      GetRRDisplayString_rdb(v6, (a2[6] + 4), (a1 + 47032));
      *buf = 141558275;
      *v130 = 1752392040;
      *&v130[8] = 2085;
      *&v130[10] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "mDNS_Deregister_internal: %{sensitive, mask.hash}s already marked kDNSRecordTypeUnregistered", buf, 0x16u);
    }
  }

  v45 = *(a2 + 126);
  if (v45 || (v7 == 8 || *(a2 + 43) == 4) && (*(a2 + 192) || *(a2 + 193)))
  {
    *(a2 + 8) = 1;
    *(a2 + 4) = 0;
    if (a3 == 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = 3;
    }

    if (v45)
    {
      v47 = 18;
    }

    else
    {
      v47 = v46;
    }

    *(a2 + 191) = v47;
    *(a2 + 70) = 2000;
    v48 = *(a1 + 64);
    *(a2 + 71) = v48 - 2000;
    *(a1 + 140) = 1;
    v49 = v48 + 100;
    v50 = 0;
    if (*(a1 + 100) - v49 >= 0)
    {
      *(a1 + 100) = v49;
    }

    v59 = v128;
    v60 = v127;
    goto LABEL_137;
  }

  if (v10)
  {
    if ((*(a2 + 43) & 0xFFFFFFFE) == 4 || (*v6 & 0x32) == 0)
    {
      v50 = 0;
    }

    else
    {
      v69 = CacheGroupForName(a1, *(a2 + 6), a2[5]);
      v50 = v69;
      if (v69)
      {
        v70 = v8;
        for (k = v69[2]; k; k = *k)
        {
          v72 = *(k + 32);
          v73 = a2[4];
          if (v73)
          {
            if (v73 == v72)
            {
              goto LABEL_174;
            }
          }

          else if (mDNSPlatformValidRecordForInterface(a2, *(k + 32)))
          {
LABEL_174:
            if (resource_records_have_same_dnssec_rr_category(*(k + 64), a2[8]) && *(k + 12) == *(a2 + 6) && *(k + 14) == *(a2 + 7) && *(k + 20) == *(a2 + 10) && *(k + 28) == *(a2 + 7) && SameRDataBody(k + 8, (a2[6] + 4), SameDomainName))
            {
              v122 = mDNSLogCategory_State;
              if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
              {
                v74 = &xmmword_100170388;
                while (1)
                {
                  v74 = *v74;
                  if (!v74)
                  {
                    break;
                  }

                  v75 = v74;
                  if (*(v74 + 444) == v72)
                  {
                    goto LABEL_186;
                  }
                }

                v75 = 0;
LABEL_186:
                v76 = v75 + 3606;
                v18 = v74 == 0;
                v77 = "";
                if (!v18)
                {
                  v77 = v76;
                }

                v121 = v77;
                GetRRDisplayString_rdb((k + 8), (*(k + 48) + 4), (a1 + 47032));
                *buf = 136446979;
                *v130 = v121;
                *&v130[8] = 1024;
                *&v130[10] = v72;
                *&v130[14] = 2160;
                *&v130[16] = 1752392040;
                *&v130[24] = 2085;
                *&v130[26] = a1 + 47032;
                _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEBUG, "mDNS_Deregister_internal: Purging cached record that matches deregistered AuthRecord -- interface: %{public}s/%u, record: %{sensitive, mask.hash}s", buf, 0x26u);
              }

              mDNS_PurgeCacheResourceRecord(a1, k);
            }
          }
        }

        v8 = v70;
      }
    }

    if ((*(a2 + 43) & 0xFFFFFFFE) == 4)
    {
      v80 = RemoveAuthRecord(a1, a1 + 6264, a2);
      if (v80[5] == a2)
      {
        v80[5] = *a2;
      }

      goto LABEL_273;
    }
  }

  else
  {
    v50 = 0;
  }

  v81 = *a2;
  *v17 = *a2;
  if (*(a1 + 12632) == a2)
  {
    *(a1 + 12632) = v81;
  }

  v82 = v8;
  if ((*(a2 + 43) & 0xFFFFFFFE) == 4)
  {
    v83 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
    {
      GetRRDisplayString_rdb(v6, (a2[6] + 4), (a1 + 47032));
      *buf = 136446210;
      *v130 = a1 + 47032;
      v84 = "DecrementAutoTargetServices: called for RRLocalOnly() record: %{public}s";
      v85 = v83;
      v86 = 12;
      goto LABEL_271;
    }

    goto LABEL_272;
  }

  if (!a2[4] && !*(a2 + 122) && !IsLocalDomain(a2[5]) || *(a2 + 6) != 33 || *(a2 + 120) != 1)
  {
    goto LABEL_262;
  }

  v87 = *(a2 + 43) & 0xFFFFFFFE;
  if (v87 == 2)
  {
    v88 = *(a1 + 10920) - 1;
    *(a1 + 10920) = v88;
    v89 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
    {
      GetRRDisplayString_rdb(v6, (a2[6] + 4), (a1 + 47032));
      *buf = 67109635;
      *v130 = v88;
      *&v130[4] = 2160;
      *&v130[6] = 1752392040;
      *&v130[14] = 2085;
      *&v130[16] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "DecrementAutoTargetServices: AutoTargetAWDLIncludedCount %u Record %{sensitive, mask.hash}s", buf, 0x1Cu);
      v88 = *(a1 + 10920);
    }

    if (v88)
    {
      goto LABEL_262;
    }

    v125 = 2;
    v90 = *(a1 + 10924);
    v91 = v90 == 0;
    v92 = 2 * (v90 == 0);
    v123 = 2;
  }

  else
  {
    v95 = a2[4];
    if ((!AWDLInterfaceID || AWDLInterfaceID != v95) && (!WiFiAwareInterfaceID || WiFiAwareInterfaceID != v95))
    {
      v103 = v126[879] - 1;
      v126[879] = v103;
      v104 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
      {
        GetRRDisplayString_rdb(v6, (a2[6] + 4), (a1 + 47032));
        *buf = 67109635;
        *v130 = v103;
        *&v130[4] = 2160;
        *&v130[6] = 1752392040;
        *&v130[14] = 2085;
        *&v130[16] = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEBUG, "DecrementAutoTargetServices: AutoTargetServices %u Record %{sensitive, mask.hash}s", buf, 0x1Cu);
        v103 = v126[879];
      }

      if (!v103)
      {
        for (m = *(a1 + 12656); m; m = *m)
        {
          if (*(m + 3670))
          {
            DeadvertiseInterface(a1, m, 1);
          }
        }
      }

      goto LABEL_262;
    }

    v96 = *(a1 + 10924) - 1;
    *(a1 + 10924) = v96;
    v97 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
    {
      GetRRDisplayString_rdb(v6, (a2[6] + 4), (a1 + 47032));
      *buf = 67109635;
      *v130 = v96;
      *&v130[4] = 2160;
      *&v130[6] = 1752392040;
      *&v130[14] = 2085;
      *&v130[16] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEBUG, "DecrementAutoTargetServices: AutoTargetAWDLOnlyCount %u Record %{sensitive, mask.hash}s", buf, 0x1Cu);
    }

    if (*(a1 + 10920))
    {
      goto LABEL_262;
    }

    v90 = *(a1 + 10924);
    if (v90)
    {
      goto LABEL_262;
    }

    v125 = v87;
    v123 = 0;
    LOBYTE(v91) = 1;
    v92 = 2;
  }

  v98 = *(a1 + 12656);
  if (!v98)
  {
LABEL_253:
    if (!v90)
    {
      GetRandomUUIDLocalHostname((a1 + 10664));
    }

    goto LABEL_262;
  }

  while (2)
  {
    if (*(v98 + 3670))
    {
      v99 = *(v98 + 3552);
      if (AWDLInterfaceID)
      {
        v100 = AWDLInterfaceID == v99;
      }

      else
      {
        v100 = 0;
      }

      if (v100 || (WiFiAwareInterfaceID ? (v101 = WiFiAwareInterfaceID == v99) : (v101 = 0), v101))
      {
        v102 = v92;
        if (!v91)
        {
          goto LABEL_250;
        }
      }

      else
      {
        v102 = v123;
        if (v125 != 2)
        {
          goto LABEL_250;
        }
      }

      DeadvertiseInterface(a1, v98, v102);
    }

LABEL_250:
    v98 = *v98;
    if (v98)
    {
      continue;
    }

    break;
  }

  if (!*(a1 + 10920))
  {
    v90 = *(a1 + 10924);
    goto LABEL_253;
  }

LABEL_262:
  if (a2[4] || *(a2 + 122) || IsLocalDomain(a2[5]))
  {
    v106 = v126[880];
    v107 = v126[881];
    if (v107 + v106 == 1)
    {
      v108 = *(a1 + 64) + 60000;
      if (v108 <= 1)
      {
        v108 = 1;
      }

      *(a1 + 116) = v108;
    }

    v109 = v106 - 1;
    v126[880] = v106 - 1;
    v110 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
    {
      GetRRDisplayString_rdb(v6, (a2[6] + 4), (a1 + 47032));
      *buf = 67109891;
      *v130 = v109;
      *&v130[4] = 1024;
      *&v130[6] = v107;
      *&v130[10] = 2160;
      *&v130[12] = 1752392040;
      *&v130[20] = 2085;
      *&v130[22] = a1 + 47032;
      v84 = "DecrementAutoTargetServices: NumAllInterfaceRecords %u NumAllInterfaceQuestions %u %{sensitive, mask.hash}s";
      v85 = v110;
      v86 = 34;
LABEL_271:
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, v84, buf, v86);
    }
  }

LABEL_272:
  v8 = v82;
LABEL_273:
  v59 = v128;
  v60 = v127;
  if (*(a1 + 12640) == a2)
  {
    *(a1 + 12640) = *a2;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  if (a2[38])
  {
    CompleteRDataUpdate(a1, a2);
  }

  if (a3 == 2 || a3 == 4)
  {
    if (a3 == 2)
    {
      v111 = 4294901748;
    }

    else
    {
      v111 = 4294901724;
    }

    RecordProbeFailure(a1, a2);
    v112 = *(a1 + 48);
    v113 = *(a1 + 52) + 1;
    *(a1 + 52) = v113;
    mDNS_VerifyLockState("Drop Lock", 0, v112, v113, "mDNS_Deregister_internal", 2530);
    v114 = a2[13];
    if (v114)
    {
      v114(a1, a2, v111);
    }

    mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNS_Deregister_internal", 2533);
    --*(a1 + 52);
    for (n = *(a1 + 12624); n; n = *n)
    {
      if (*(n + 190) == 255)
      {
        D2D_stop_advertising_record(n);
        mDNS_Deregister_internal(a1, n, v111);
        n = a1 + 12624;
      }
    }
  }

  else
  {
    v116 = *(a1 + 48);
    v117 = *(a1 + 52) + 1;
    *(a1 + 52) = v117;
    mDNS_VerifyLockState("Drop Lock", 0, v116, v117, "mDNS_Deregister_internal", 2520);
    v118 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      GetRRDisplayString_rdb(v6, (a2[6] + 4), (a1 + 47032));
      *buf = 141558275;
      *v130 = 1752392040;
      *&v130[8] = 2085;
      *&v130[10] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "mDNS_Deregister_internal: callback with mStatus_MemFree for %{sensitive, mask.hash}s", buf, 0x16u);
    }

    v119 = a2[13];
    if (v119)
    {
      v119(a1, a2, 4294901504);
    }

    mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNS_Deregister_internal", 2524);
    --*(a1 + 52);
  }

LABEL_137:
  mDNS_UpdateAllowSleep(a1);
  if (v60 == 41)
  {
    return 0;
  }

  v61 = mDNSGetTSRForAuthRecordNamed(*v59, __dst, v8);
  v62 = v61;
  v63 = *v59;
  if (*v59 && v61)
  {
    do
    {
      if (*(v63 + 6) != 41 && *(v63 + 6) == v8 && SameDomainNameBytes(v63[5], __dst))
      {
        v62 = 0;
      }

      v63 = *v63;
      if (v63)
      {
        v64 = v62 == 0;
      }

      else
      {
        v64 = 1;
      }
    }

    while (!v64);
  }

  if (!v62)
  {
    return 0;
  }

  v65 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_158;
    }
  }

  else
  {
    v65 = mDNSLogCategory_mDNS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
LABEL_158:
      GetRRDisplayString_rdb(v62 + 8, (v62[6] + 4), (a1 + 47032));
      *buf = 141558275;
      *v130 = 1752392040;
      *&v130[8] = 2085;
      *&v130[10] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Deregistering orphaned TSR - %{sensitive, mask.hash}s", buf, 0x16u);
    }
  }

  mDNS_Deregister_internal(a1, v62, 3);
  if (!v50)
  {
    return 0;
  }

  v51 = mDNSGetTSRForCacheGroup(v50);
  if (v51)
  {
    v68 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_197;
      }
    }

    else
    {
      v68 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
LABEL_197:
        GetRRDisplayString_rdb((v51 + 8), (*(v51 + 48) + 4), (a1 + 47032));
        *buf = 141558275;
        *v130 = 1752392040;
        *&v130[8] = 2085;
        *&v130[10] = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "Purging cached TSR record that matches orphaned TSR -- %{sensitive, mask.hash}s", buf, 0x16u);
      }
    }

    mDNS_PurgeCacheResourceRecord(a1, v51);
    return 0;
  }

  return v51;
}

void RmvAutoBrowseDomain(int a1, _BYTE *a2)
{
  v3 = AutoBrowseDomains;
  if (AutoBrowseDomains)
  {
    v5 = &AutoBrowseDomains;
    while (1)
    {
      v6 = SameDomainNameBytes((v3 + 12), a2);
      v7 = *v5;
      if (v6)
      {
        if (v7[2] == a1)
        {
          break;
        }
      }

      v3 = *v7;
      v5 = *v5;
      if (!*v7)
      {
        goto LABEL_6;
      }
    }

    *v5 = *v7;
    udsserver_automatic_browse_domain_changed(v7, 0);
    free(v7);
    v8 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v12 = a2;
          while (1)
          {
            if (!v12 || (v13 = *v12, v13 > 0x3F))
            {
LABEL_25:
              v11 = 257;
              goto LABEL_30;
            }

            if (!*v12)
            {
              break;
            }

            v12 += v13 + 1;
            if (v12 - a2 >= 256)
            {
              goto LABEL_25;
            }
          }

          v11 = (v12 - a2 + 1);
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v8 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v9 = a2;
          while (1)
          {
            if (!v9 || (v10 = *v9, v10 > 0x3F))
            {
LABEL_17:
              v11 = 257;
              goto LABEL_30;
            }

            if (!*v9)
            {
              break;
            }

            v9 += v10 + 1;
            if (v9 - a2 >= 256)
            {
              goto LABEL_17;
            }
          }

          v11 = (v9 - a2 + 1);
        }

        else
        {
          v11 = 0;
        }

LABEL_30:
        *buf = 141558787;
        v15 = 1752392040;
        v16 = 1040;
        v17 = v11;
        v18 = 2101;
        v19 = a2;
        v20 = 1024;
        v21 = a1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Automatic browsing domain is removed - domain name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, uid: %u", buf, 0x22u);
      }
    }
  }

  else
  {
LABEL_6:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RmvAutoBrowseDomain: Got remove event for domain %##s not in list", a2);
  }
}

void KQueueLoop(char *a1)
{
  if (dnssd_server_init_s_once != -1)
  {
    dispatch_once(&dnssd_server_init_s_once, &__block_literal_global_982);
  }

  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = __mrcs_server_set_dns_service_registration_handlers_block_invoke;
  *&block[24] = &__block_descriptor_tmp_4_4323;
  *&block[32] = kMRCSServerDNSServiceRegistrationHandlers;
  dispatch_async(_mrcs_server_queue_s_queue, block);
  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = __mrcs_server_set_dns_proxy_handlers_block_invoke;
  *&block[24] = &__block_descriptor_tmp_4318;
  *&block[32] = kMRCSServerDNSProxyHandlers;
  dispatch_async(_mrcs_server_queue_s_queue, block);
  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = __mrcs_server_set_discovery_proxy_handlers_block_invoke;
  *&block[24] = &__block_descriptor_tmp_5_4324;
  *&block[32] = kMRCSServerDiscoveryProxyHandlers;
  dispatch_async(_mrcs_server_queue_s_queue, block);
  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  *block = _NSConcreteStackBlock;
  *&block[8] = 0x40000000;
  *&block[16] = __mrcs_server_set_record_cache_handlers_block_invoke;
  *&block[24] = &__block_descriptor_tmp_6_4325;
  *&block[32] = kMRCServerRecordCacheHandlers;
  dispatch_async(_mrcs_server_queue_s_queue, block);
  if (_mrcs_server_queue_s_once != -1)
  {
    dispatch_once(&_mrcs_server_queue_s_once, &__block_literal_global_20_4317);
  }

  dispatch_async(_mrcs_server_queue_s_queue, &__block_literal_global_4326);
  pthread_mutex_lock(&stru_100164CC8);
  v2 = &unk_100178000;
  v3 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:
      *block = 67109376;
      *&block[4] = dword_10016D25C;
      *&block[8] = 1024;
      *&block[10] = dword_10016D25C;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting time value 0x%08X (%d)", block, 0xEu);
    }
  }

  else
  {
    v3 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }
  }

  v258 = a1 + 10344;
  v259 = a1 + 10280;
  v4 = a1 + 47032;
  v260 = a1;
  v262 = a1 + 47032;
LABEL_20:
  memset(&eventlist, 0, sizeof(eventlist));
  v261 = mDNSPlatformRawTime();
  v5 = mDNS_TimeNow(a1);
  v6 = v5;
  v7 = *(*a1 + 500);
  if (v7 && ((v5 - v7) & 0x80000000) == 0)
  {
    *(*a1 + 500) = 0;
    mDNS_Lock_(a1, "mDNSDaemonIdle", 865);
    LogMsgWithLevel(v2[434], OS_LOG_TYPE_DEFAULT, "Note: SetDomainSecrets: no keychain support");
    mDNS_Unlock_(a1, "mDNSDaemonIdle", 867);
  }

  v8 = *(a1 + 2);
  if (v8 && ((v6 - v8) & 0x80000000) == 0)
  {
    mDNSMacOSXNetworkChanged();
  }

  v9 = *(*a1 + 608);
  if (v9 && ((v6 - v9) & 0x80000000) == 0)
  {
    *(*a1 + 608) = 0;
    mdns_power_cancel_all_events(@"com.apple.mDNSResponder");
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "HelperMode", 5uLL);
    xpc_dictionary_set_uint64(v10, "powerreq_key", 0);
    xpc_dictionary_set_uint64(v10, "powerreq_interval", 0);
    v11 = SendDict_ToServer(v10);
    if (v10)
    {
      xpc_release(v10);
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(v2[434], OS_LOG_TYPE_DEFAULT, "mDNSPowerRequest: Using XPC IPC returning error_code %d", v11);
    }
  }

  v12 = mDNS_Execute(a1);
  v13 = *(a1 + 2);
  if ((v12 - v13) <= 0 || v13 == 0)
  {
    v13 = v12;
  }

  v15 = *a1;
  v16 = *(*a1 + 500);
  if ((v13 - v16) > 0 && v16 != 0)
  {
    v13 = *(*a1 + 500);
  }

  v18 = *(v15 + 608);
  if ((v13 - v18) > 0 && v18 != 0)
  {
    v13 = *(v15 + 608);
  }

  v264 = v13;
  v20 = *(v15 + 492);
  if (v20)
  {
    if (v20 - v6 < 0)
    {
      v22 = *(v15 + 172);
      if (v22 != *v259 || memcmp((v15 + 173), a1 + 10281, v22))
      {
        LogMsgWithLevel(v2[434], OS_LOG_TYPE_DEFAULT, "Name Conflict: Updated Computer Name from %#s to %#s", (v15 + 172), v259);
        mDNSPreferencesSetNames(1, (*a1 + 172), v259);
        v23 = *a1;
        v24 = *v259;
        v25 = *(v259 + 1);
        v26 = *(v259 + 2);
        *(v23 + 220) = *(v259 + 3);
        *(v23 + 204) = v26;
        *(v23 + 188) = v25;
        *(v23 + 172) = v24;
        v15 = *a1;
      }

      v27 = *(v15 + 108);
      if (v27 != *v258 || memcmp((v15 + 109), a1 + 10345, v27))
      {
        LogMsgWithLevel(v2[434], OS_LOG_TYPE_DEFAULT, "Name Conflict: Updated Local Hostname from %#s.local to %#s.local", (v15 + 108), v258);
        mDNSPreferencesSetNames(2, (*a1 + 108), v258);
        v28 = *a1;
        *(v28 + 496) = 0;
        v29 = *v258;
        v30 = *(v258 + 1);
        v31 = *(v258 + 2);
        *(v28 + 156) = *(v258 + 3);
        *(v28 + 140) = v31;
        *(v28 + 124) = v30;
        *(v28 + 108) = v29;
        v15 = *a1;
      }

      *(v15 + 492) = 0;
    }

    else
    {
      v21 = v264;
      if ((v264 - v20) > 0)
      {
        v21 = *(v15 + 492);
      }

      v264 = v21;
    }
  }

  v32 = mDNS_TimeNow(mDNSStorage);
  v33 = all_requests;
  if (!all_requests)
  {
    goto LABEL_120;
  }

  v34 = v32;
  if (v32 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v32;
  }

  v277 = v32 + 1000;
  v36 = &all_requests;
  do
  {
    timeout.tv_sec = v33;
    if (*(v33 + 112) == resolve_termination_callback)
    {
      v46 = *(v33 + 136);
      v47 = *(v46 + 1408);
      if (v47)
      {
        if (((v34 - v47) & 0x80000000) == 0)
        {
          *(v46 + 1408) = 0;
          v48 = *(v46 + 1421) || *(v46 + 1392) != 0;
          v49 = *(v46 + 1422) || *(v46 + 1400) != 0;
          if (v48 && v49)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Client application PID[%d](%s) has received results for DNSServiceResolve(%##s) yet remains active over two minutes.", *(v33 + 188), v33 + 256, v46 + 1072);
          }
        }
      }
    }

    v38 = (v33 + 96);
    v37 = *(v33 + 96);
    if (!v37)
    {
      goto LABEL_106;
    }

    while (1)
    {
      if (v37->i64[0])
      {
        v37[2].i32[3] |= 0x1000000u;
      }

      v39 = v37->u32[3];
      v40 = (v37->i32[2] - v39);
      v37[1] = vrev32q_s8(v37[1]);
      v37[2].i32[2] = bswap32(v37[2].u32[2]);
      v41 = send(*(v33 + 184), &v37[1].i8[v39], v40, 0);
      v37[1] = vrev32q_s8(v37[1]);
      v37[2].i32[2] = bswap32(v37[2].u32[2]);
      if (v41 < 0)
      {
        break;
      }

LABEL_73:
      v42 = v37->i32[2];
      v43 = v37->i32[3] + v41;
      v37->i32[3] = v43;
      if (v43 != v42)
      {
        goto LABEL_95;
      }

      v44 = *v38;
      if (!*v38)
      {
        *(v33 + 244) = 0;
        *(v33 + 293) = 0;
        goto LABEL_106;
      }

      v45 = *v44;
      *v38 = *v44;
      if (!v45)
      {
        *(v33 + 104) = v38;
      }

      free(v44);
      v37 = *(v33 + 96);
      *(v33 + 244) = 0;
      *(v33 + 293) = 0;
      if (!v37)
      {
        goto LABEL_106;
      }
    }

    if (*__error() == 4 || *__error() == 35)
    {
      LODWORD(v41) = 0;
      goto LABEL_73;
    }

    if (*__error() == 32)
    {
      *(v33 + 291) = 4;
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Could not write data to client PID[%d](%s) because connection is terminated by the client", *(v33 + 184), *(v33 + 188), (v33 + 256));
      }
    }

    else
    {
      v271 = v37->i32[2];
      v274 = mDNSLogCategory_Default;
      v50 = v35;
      v51 = *(v33 + 184);
      v52 = a1;
      v53 = *__error();
      v54 = __error();
      v55 = strerror(*v54);
      v256 = v53;
      a1 = v52;
      v254 = v51;
      v35 = v50;
      LogMsgWithLevel(v274, OS_LOG_TYPE_DEFAULT, "send_msg ERROR: failed to write %u of %d bytes to fd %d errno %d (%s)", v40, v271, v254, v256, v55);
      v4 = v262;
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Could not write data to client PID[%d](%s) because of error - aborting connection", *(v33 + 184), *(v33 + 188), (v33 + 256));
      LogClientInfo(v33);
    }

    abort_request(v33);
LABEL_95:
    if (*v38)
    {
      v56 = v264;
      if ((v264 - v34) > 1000)
      {
        v56 = v277;
      }

      v264 = v56;
      v57 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_103;
        }
      }

      else
      {
        v57 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_103:
          v58 = *(v33 + 200);
          *block = 67109376;
          *&block[4] = v58;
          *&block[8] = 1024;
          *&block[10] = v264 - v34;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[R%u] Could not send all replies. Will try again in %d ticks.", block, 0xEu);
        }
      }

      if (BYTE1(dword_10016D2A4))
      {
        *(v33 + 244) = 0;
      }

      else
      {
        v59 = *(v33 + 244);
        if (v59)
        {
          v60 = v34 - v59;
          if ((v34 - v59) >= 10000 * *(v33 + 293) + 10000)
          {
            v61 = -1;
            do
            {
              v38 = *v38;
              ++v61;
            }

            while (v38);
            v62 = (v60 / 1000);
            v63 = "ies";
            if (v61 == 1)
            {
              v63 = "y";
            }

            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Could not write data to client PID[%d](%s) after %ld seconds, %d repl%s waiting", *(v33 + 184), *(v33 + 188), (v33 + 256), v62, v61, v63);
            v64 = ++*(v33 + 293);
            if (v64 >= 0x3C)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: Client PID[%d](%s) unresponsive; aborting connection", *(v33 + 184), *(v33 + 188), (v33 + 256));
              LogClientInfo(v33);
              abort_request(v33);
            }
          }
        }

        else
        {
          *(v33 + 244) = v35;
        }
      }
    }

LABEL_106:
    if ((*(v33 + 184) & 0x80000000) != 0)
    {
      *v36 = *(v33 + 16);
      request_state_forget(&timeout);
    }

    else
    {
      v36 = (v33 + 16);
    }

    v33 = *v36;
  }

  while (*v36);
LABEL_120:
  if (dnssd_server_idle_s_once != -1)
  {
    dispatch_once(&dnssd_server_idle_s_once, &__block_literal_global_16);
  }

  v65 = 0x100178000;
  dispatch_source_merge_data(dnssd_server_idle_s_source, 1uLL);
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_217;
  }

  v66 = mDNS_TimeNow(mDNSStorage);
  if (v66 <= 1)
  {
    v67 = 1;
  }

  else
  {
    v67 = v66;
  }

  if (!s_interface_head_0)
  {
    goto LABEL_198;
  }

  v68 = s_interface_head_0;
  v272 = 0;
  v263 = 0;
  v69 = 0;
  while (2)
  {
    v265 = *v68;
    v266 = v69;
    v272 += 40;
    v267 = v68;
    v70 = (v68 + 1);
    v71 = v68[1];
    if (!v71)
    {
      goto LABEL_167;
    }

    v269 = 0;
    v72 = 0;
    v268 = (v68 + 1);
    while (2)
    {
      v73 = *v71;
      v75 = (v71 + 1);
      v74 = v71[1];
      if (!v74)
      {
        goto LABEL_152;
      }

      v76 = 0;
      v77 = 0;
      v275 = *v71;
      while (2)
      {
        v78 = *v74;
        v79 = v67 - *(v74 + 3);
        v80 = "aged";
        if (v79 > 86399999 || v79 >= 10000 && (v80 = "pending", (v74[16] & 1) != 0))
        {
          if (v74[18])
          {
            v74[19] = 0;
            if (v74[16] == 1)
            {
              v74[16] = 0;
              ++sUAPresence_Count_qhashes_not_found;
              v81 = _unicast_assist_cache_log();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
              {
                v86 = *(v74 + 2);
                *block = 136316163;
                *&block[4] = v80;
                *&block[12] = 2160;
                *&block[14] = 1752392040;
                *&block[22] = 1045;
                *&block[24] = 20;
                *&block[28] = 2101;
                *&block[30] = v71 + 2;
                *&block[38] = 1024;
                *&block[40] = v86;
                _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "unicast assist qhash (%s) keeping presence - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P qhash %x", block, 0x2Cu);
              }
            }

            goto LABEL_140;
          }

          v82 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
          {
            v85 = *(v74 + 2);
            *block = 136316163;
            *&block[4] = v80;
            *&block[12] = 2160;
            *&block[14] = 1752392040;
            *&block[22] = 1045;
            *&block[24] = 20;
            *&block[28] = 2101;
            *&block[30] = v71 + 2;
            *&block[38] = 1024;
            *&block[40] = v85;
            _os_log_debug_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, "unicast assist qhash flushed (%s) - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P qhash %x", block, 0x2Cu);
          }

          v83 = *v75;
          if (*v75 == v74)
          {
            v84 = v71 + 1;
          }

          else
          {
            v83 = *v76;
            v84 = v76;
          }

          *v84 = *v83;
          free(v74);
          v74 = 0;
        }

        else
        {
LABEL_140:
          ++v77;
        }

        if (v74)
        {
          v76 = v74;
        }

        v74 = v78;
        if (v78)
        {
          continue;
        }

        break;
      }

      v70 = v268;
      v73 = v275;
      if (v77)
      {
        ++v269;
        v272 += 24 * v77 + 40;
        goto LABEL_158;
      }

LABEL_152:
      v87 = _unicast_assist_cache_log();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        v92 = v267[3];
        v93 = *(v267 + 8);
        *block = 141559043;
        *&block[4] = 1752392040;
        *&block[12] = 1045;
        *&block[14] = 20;
        *&block[18] = 2101;
        *&block[20] = v71 + 2;
        *&block[28] = 1024;
        *&block[30] = v92;
        *&block[34] = 1024;
        *&block[36] = v93;
        _os_log_debug_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "unicast assist record flushed (0 qhashes) - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P %2.2u ifhash %x", block, 0x28u);
      }

      v88 = *v70;
      if (*v70 == v71)
      {
        v91 = *v88;
        *v70 = *v88;
        v90 = v70;
        if (!v91)
        {
LABEL_156:
          v267[2] = v90;
        }
      }

      else
      {
        v89 = **v72;
        *v72 = v89;
        v90 = v72;
        if (!v89)
        {
          goto LABEL_156;
        }
      }

      _unicast_assist_cache_free_addr(v71);
      v71 = 0;
LABEL_158:
      if (v71)
      {
        v72 = v71;
      }

      v71 = v73;
      if (v73)
      {
        continue;
      }

      break;
    }

    if (v269)
    {
      v263 += v269;
      v65 = 0x100178000;
      v69 = v266;
      v94 = v267;
      goto LABEL_172;
    }

    v65 = &unk_100178000;
LABEL_167:
    v69 = v266;
    v95 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
    {
      v98 = v267[3];
      v99 = *(v267 + 8);
      *block = 67109376;
      *&block[4] = v98;
      *&block[8] = 1024;
      *&block[10] = v99;
      _os_log_debug_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEBUG, "unicast assist interface flushed (0 addrs) - interface %2.2u ifhash %x", block, 0xEu);
    }

    v96 = &s_interface_head_0;
    v97 = s_interface_head_0;
    if (s_interface_head_0 != v267)
    {
      v97 = *v266;
      v96 = v266;
    }

    *v96 = *v97;
    _unicast_assist_cache_free_interface(v267);
    v94 = 0;
LABEL_172:
    if (v94)
    {
      v69 = v94;
    }

    v68 = v265;
    if (v265)
    {
      continue;
    }

    break;
  }

  a1 = v260;
  v4 = v262;
  if (v272 > 0x8000)
  {
    v100 = 0;
    v101 = v263;
    while (1)
    {
      v102 = a1;
      v103 = s_interface_head_0;
      if (!s_interface_head_0)
      {
        break;
      }

      v104 = 0;
      v105 = 0;
      do
      {
        v106 = v103[1];
        if (v106)
        {
          v107 = *(v106 + 8);
          if (v107)
          {
            v108 = v67 - *(v107 + 12);
            if (v108 > v104)
            {
              v105 = v103;
              v104 = v108;
            }
          }
        }

        v103 = *v103;
      }

      while (v103);
      if (!v105)
      {
        break;
      }

      v110 = (v105 + 1);
      v109 = v105[1];
      if (!v109)
      {
        break;
      }

      v111 = v104 / 0x3E8u;
      v112 = v109 + 1;
      v100 += 16;
      do
      {
        v112 = *v112;
        v100 += 24;
      }

      while (v112);
      v113 = _unicast_assist_cache_log();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
      {
        v114 = v105[3];
        v115 = *(v105 + 8);
        *block = 67110146;
        *&block[4] = v111;
        *&block[8] = 1042;
        *&block[10] = 20;
        *&block[14] = 2098;
        *&block[16] = v109 + 2;
        *&block[24] = 1024;
        *&block[26] = v114;
        *&block[30] = 1024;
        *&block[32] = v115;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "unicast assist cache maintenance record flushed (memory) - age %ds %{public, mdnsresponder:ip_addr}.20P %2.2u ifhash %x", block, 0x24u);
      }

      v116 = **v110;
      *v110 = v116;
      if (!v116)
      {
        v105[2] = v110;
      }

      _unicast_assist_cache_free_addr(v109);
      --v101;
      v117 = v272 - v100;
      a1 = v260;
      v4 = v262;
      if (v272 - v100 <= 0x8000)
      {
        goto LABEL_195;
      }
    }

    v117 = v272 - v100;
    a1 = v102;
LABEL_195:
    v118 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
    {
      *block = 134218752;
      *&block[4] = v272;
      *&block[12] = 2048;
      *&block[14] = v263;
      *&block[22] = 2048;
      *&block[24] = v117;
      *&block[32] = 2048;
      *&block[34] = v101;
      _os_log_debug_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEBUG, "unicast assist cache maintenance - (Was) size %zu count %zu | (Is) size %zu count %zu", block, 0x2Au);
    }
  }

LABEL_198:
  v119 = objc_autoreleasePoolPush();
  if (v67 / 1000 != _unicast_assist_presence_idle_last_idle)
  {
    _unicast_assist_presence_idle_last_idle = v67 / 1000;
    if (_unicast_assist_should_activate_presence_s_once != -1)
    {
      dispatch_once(&_unicast_assist_should_activate_presence_s_once, &__block_literal_global_322);
    }

    v120 = s_presence;
    if (_unicast_assist_should_activate_presence_should_activate == 1 && !s_presence)
    {
      v121 = objc_alloc_init(UAPresenceManager);
      v122 = s_presence;
      s_presence = v121;

      goto LABEL_216;
    }

    if (s_presence)
    {
      if (s_shared_cache_enabled == 1)
      {
        v123 = [s_presence presenceReady];
        v120 = s_presence;
        if (v123)
        {
          if ([s_presence presenceSubscribed])
          {
            v120 = s_presence;
          }

          else
          {
            v124 = _unicast_assist_network_ready_for_presence();
            v120 = s_presence;
            if (v124)
            {
              [s_presence retainSubscription];
              ++sUAPresence_Count_enabled;
              goto LABEL_216;
            }
          }
        }
      }
    }

    if (![v120 presenceSubscribed] || s_shared_cache_enabled == 1 && ((v67 - objc_msgSend(s_presence, "lastUnsubscribeTime")) < 21600001 || (_unicast_assist_network_ready_for_presence() & 1) != 0))
    {
      [s_presence idlePresence:v67];
    }

    else
    {
      [s_presence setLastUnsubscribeTime:v67];
      [s_presence releaseSubscriptions];
    }
  }

LABEL_216:
  objc_autoreleasePoolPop(v119);
LABEL_217:
  v125 = mDNSPlatformRawTime() - v261;
  if (v125 >= WatchDogReportingThreshold)
  {
    v126 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == *(v65 + 3480))
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_223;
      }
    }

    else
    {
      v126 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_223:
        *block = 67109120;
        *&block[4] = v125;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "WARNING: Idle task took %d ms to complete", block, 8u);
      }
    }
  }

  v127 = mDNS_TimeNow(a1);
  v128 = *(a1 + 19);
  if (v128)
  {
    v129 = xmmword_100170360;
    if (xmmword_100170360)
    {
      while (1)
      {
        v130 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != *(v65 + 3480))
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_234;
        }

LABEL_235:
        if (mDNS_LoggingEnabled == 1)
        {
          usleep(0x2710u);
        }

        v129 = *v129;
        if (!v129)
        {
          v128 = *(a1 + 19);
          goto LABEL_239;
        }
      }

      v130 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_235;
      }

LABEL_234:
      GetRRDisplayString_rdb(v129 + 8, (*(v129 + 6) + 4), v4);
      *block = 141558275;
      *&block[4] = 1752392040;
      *&block[12] = 2085;
      *&block[14] = v4;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "Cannot exit yet; Resource Record still exists: %{sensitive, mask.hash}s", block, 0x16u);
      goto LABEL_235;
    }

LABEL_239:
    if (v127 - v128 >= 0 || !*(a1 + 1577))
    {
      goto LABEL_525;
    }

    v133 = v264;
    if ((v264 - v128) >= 0)
    {
      v133 = v128;
    }

    v264 = v133;
  }

  if (!*(a1 + 38))
  {
    goto LABEL_388;
  }

  mDNS_Lock_(mDNSStorage, "mDNSCoreReadyForSleep", 8575);
  if (!qword_10016D2AC && (HIDWORD(qword_10016D2AC) - v127 < 1 || dword_10016D2CC - v127 <= 0))
  {
    dword_10016D2CC = v127 + 0x40000000;
    v136 = xmmword_10016D2D8;
    if (xmmword_10016D2D8)
    {
      while (!*(v136 + 340) || !*(v136 + 632) || *(v136 + 272) || !*(v136 + 112))
      {
        v136 = *(v136 + 8);
        if (!v136)
        {
          goto LABEL_255;
        }
      }

      if (mDNS_LoggingEnabled == 1)
      {
        v245 = mDNSLogCategory_Default;
        v246 = v136 + 376;
        DNSTypeName(*(v136 + 342));
        LogMsgWithLevel(v245, OS_LOG_TYPE_DEFAULT, "mDNSCoreReadyForSleep: waiting for LLQ %##s (%s)", v246);
      }
    }

    else
    {
LABEL_255:
      v137 = xmmword_100170360;
      if (!xmmword_100170360)
      {
LABEL_262:
        v278 = 0;
        v134 = 1;
        v135 = 8640;
LABEL_263:
        mDNS_Unlock_(mDNSStorage, "mDNSCoreReadyForSleep", v135);
        v138 = BYTE1(dword_10016D2A4);
        if (!BYTE1(dword_10016D2A4) || (v134 & 1) != 0)
        {
          *(mDNSStorage[0] + 600) = 0;
          if (!v138)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Sleep request was canceled with %d ticks remaining", HIDWORD(qword_10016D2AC) - v127);
            v167 = 1;
LABEL_379:
            if (mDNS_LoggingEnabled == 1)
            {
              v200 = "IOCancelPowerChange";
              if (v167)
              {
                v200 = "IOAllowPowerChange";
              }

              v201 = "ready for sleep";
              if (v278)
              {
                v201 = "giving up";
              }

              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: %s(%lX) %s at %ld (%d ticks remaining)", v200, *(mDNSStorage[0] + 592), v201, v127, HIDWORD(qword_10016D2AC) - v127);
            }

            HIDWORD(qword_10016D2AC) = 0;
            dword_10016D2B4 = time(0);
            v202 = *(mDNSStorage[0] + 568);
            v203 = *(mDNSStorage[0] + 592);
            if (v167)
            {
              IOAllowPowerChange(v202, v203);
            }

            else
            {
              IOCancelPowerChange(v202, v203);
            }

            goto LABEL_388;
          }

LABEL_268:
          if (!HIBYTE(dword_10016D2A4) || !mDNSCoreHaveAdvertisedMulticastServices(xmmword_100170360))
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v163 = mDNSLogCategory_Default;
              if (HIBYTE(dword_10016D2A4))
              {
                v164 = "is";
              }

              else
              {
                v164 = "not";
              }

              HaveAdvertisedMulticastServices = mDNSCoreHaveAdvertisedMulticastServices(*(&dword_10016D2A4 + &loc_1000030B8 + 3));
              v166 = "have";
              if (!HaveAdvertisedMulticastServices)
              {
                v166 = "no";
              }

              LogMsgWithLevel(v163, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Not scheduling wakeup: SystemWakeOnLAN %s enabled; %s advertised services", v164, v166);
            }

            v167 = 1;
            goto LABEL_378;
          }

          *block = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetDHCP);
          if (!*block)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DHCPWakeTime: SCDynamicStoreKeyCreateNetworkServiceEntity failed\n");
            LODWORD(v65) = 86400;
            goto LABEL_323;
          }

          v139 = CFArrayCreate(0, block, 1, &kCFTypeArrayCallBacks);
          if (*block)
          {
            CFRelease(*block);
            *block = 0;
          }

          LODWORD(v65) = 86400;
          if (v139)
          {
            v140 = SCDynamicStoreCreate(0, @"DHCP-LEASES", 0, 0);
            LODWORD(v65) = 86400;
            if (!v140)
            {
              goto LABEL_322;
            }

            v141 = v140;
            v142 = SCDynamicStoreCopyMultiple(v140, 0, v139);
            LODWORD(v65) = 86400;
            if (!v142)
            {
              goto LABEL_321;
            }

            v143 = v142;
            Count = CFDictionaryGetCount(v142);
            v65 = 86400;
            if (Count < 1)
            {
              goto LABEL_320;
            }

            v145 = Count;
            if (!(Count >> 61))
            {
              v273 = v141;
              v276 = v143;
              v146 = malloc_type_calloc(Count, 8uLL, 0x483A91E7uLL);
              if (v146)
              {
                v147 = v146;
                v270 = v139;
                CFDictionaryGetKeysAndValues(v143, 0, v146);
                v148 = 0;
                LODWORD(v65) = 86400;
                while (1)
                {
                  v149 = v147[v148];
                  if (v149)
                  {
                    break;
                  }

LABEL_292:
                  if (v145 == ++v148)
                  {
                    free(v147);
                    v139 = v270;
                    v141 = v273;
                    v143 = v276;
LABEL_320:
                    CFRelease(v143);
LABEL_321:
                    CFRelease(v141);
LABEL_322:
                    CFRelease(v139);
                    goto LABEL_323;
                  }
                }

                LeaseStartTime = DHCPInfoGetLeaseStartTime(v147[v148]);
                OptionData = DHCPInfoGetOptionData(v149, 0x33u);
                v152 = OptionData;
                if (LeaseStartTime)
                {
                  v153 = OptionData == 0;
                }

                else
                {
                  v153 = 1;
                }

                if (v153)
                {
                  v154 = mDNSLogCategory_Default;
                  if (!OptionData)
                  {
                    goto LABEL_291;
                  }
                }

                else
                {
                  if (CFDataGetLength(OptionData) > 3)
                  {
                    BytePtr = CFDataGetBytePtr(v152);
                    if (BytePtr)
                    {
                      v156 = BytePtr;
                      Current = CFAbsoluteTimeGetCurrent();
                      v158 = Current - CFDateGetAbsoluteTime(LeaseStartTime);
                      v159 = fmin(v158, 4294967300.0);
                      if (v158 < 0.0)
                      {
                        v159 = 0;
                      }

                      v160 = bswap32(*v156);
                      v161 = v160 - v159;
                      if (v160 < v159)
                      {
                        v161 = 0;
                      }

                      if (v161 < 0x3D)
                      {
                        v162 = 54;
                      }

                      else
                      {
                        v162 = v161 - v161 / 0xA;
                      }

                      if (mDNS_LoggingEnabled == 1)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DHCP Address Lease Elapsed %6u Lifetime %6u Remaining %6u Wake %6u", v159, v160, v161, v162);
                      }

                      if (v65 >= v162)
                      {
                        LODWORD(v65) = v162;
                      }
                    }

                    else
                    {
                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DHCPWakeTime: CFDataGetBytePtr %ld failed");
                    }

                    goto LABEL_292;
                  }

                  v154 = mDNSLogCategory_Default;
                }

                CFDataGetLength(v152);
LABEL_291:
                LogMsgWithLevel(v154, OS_LOG_TYPE_DEFAULT, "DHCPWakeTime: SCDynamicStoreCopyDHCPInfo index %d failed CFDateRef start %p CFDataRef lease %p CFDataGetLength(lease) %d");
                goto LABEL_292;
              }
            }

            __break(1u);
LABEL_525:
            v253 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == *(v65 + 3480))
            {
              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_532;
              }

              *block = 0;
            }

            else
            {
              v253 = mDNSLogCategory_Default_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_532;
              }

              *block = 0;
            }

            _os_log_impl(&_mh_execute_header, v253, OS_LOG_TYPE_DEFAULT, "mDNS_FinalExit", block, 2u);
LABEL_532:
            mDNS_FinalExit();
            usleep(0x3E8u);
            exit(0);
          }

LABEL_323:
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ComputeWakeTime: DHCP Wake %d", v65);
          }

          v169 = v127 + 7200000;
          for (i = xmmword_100170B98; i; i = *i)
          {
            if (*(i + 172))
            {
              v171 = *(i + 2);
              if (v171)
              {
                v172 = v171 - v127;
                if (v171 - v127 >= 4001)
                {
                  v173 = v172 / -10 + v171;
                  if (v169 - v173 > 0)
                  {
                    v169 = v173;
                  }

                  if (mDNS_LoggingEnabled == 1)
                  {
                    v174 = "UDP";
                    if (*(i + 172) == 2)
                    {
                      v174 = "TCP";
                    }

                    v175 = bswap32(*(i + 87)) >> 16;
                    v176 = bswap32(*(i + 80)) >> 16;
                    v177 = *(i + 4);
                    if (v177)
                    {
                      v178 = (v177 - v127) / 1000;
                    }

                    else
                    {
                      v178 = 0;
                    }

                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ComputeWakeTime: %p %s Int %5d Ext %5d Err %d Retry %5d Interval %5d Expire %5d Wake %5d", i, v174, v175, v176, *(i + 42), v178, *(i + 3) / 1000, v172 / 0x3E8u, (v173 - v127) / 1000);
                  }
                }
              }
            }
          }

          for (j = xmmword_100170360; j; j = *j)
          {
            v180 = *(j + 88);
            if (v180)
            {
              v181 = v180 - v127;
              if (v180 - v127 >= 4001)
              {
                v182 = v181 / -10 + v180;
                if (v169 - v182 > 0)
                {
                  v169 = v182;
                }

                if (mDNS_LoggingEnabled == 1)
                {
                  v183 = mDNSLogCategory_Default;
                  v184 = *(j + 70);
                  v185 = v184 / 1000;
                  v186 = 274877907 * (v184 - v127 + *(j + 71));
                  v187 = (v186 >> 63) + (SHIDWORD(v186) >> 6);
                  v188 = v181 / 0x3E8u;
                  v189 = (v182 - v127) / 1000;
                  GetRRDisplayString_rdb(j + 8, (*(j + 6) + 4), word_1001789D0);
                  v255 = v187;
                  v257 = v188;
                  v4 = v262;
                  a1 = v260;
                  LogMsgWithLevel(v183, OS_LOG_TYPE_DEFAULT, "ComputeWakeTime: %p Int %7d Next %7d Expire %7d Wake %7d %s", j, v185, v255, v257, v189, word_1001789D0);
                }
              }
            }
          }

          if ((v169 - v127) / 1000 >= v65)
          {
            v190 = v65;
          }

          else
          {
            v190 = (v169 - v127) / 1000;
          }

          if (v169 - v127 <= -1000)
          {
            v191 = (v169 - v127) / 1000;
          }

          else
          {
            v191 = v190;
          }

          if (v191 <= 60)
          {
            v191 = 60;
          }

          if (v191 >= 3600)
          {
            v192 = 3600;
          }

          else
          {
            v192 = v191;
          }

          if (v278)
          {
            v193 = v192;
          }

          else
          {
            v193 = v191;
          }

          mdns_power_cancel_all_events(@"com.apple.mDNSResponder");
          v194 = mdns_power_schedule_wake(v193);
          v195 = v194;
          if (!v194)
          {
            v65 = 0x100178000;
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Requested wakeup in %d seconds");
            }

            goto LABEL_377;
          }

          v65 = &unk_100178000;
          if (v194 == -536870184)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Requested wakeup in %d seconds unsuccessful; retrying with longer intervals", v193);
            do
            {
              v196 = v193 + 3;
              if (v193 + 3 < 0)
              {
                v196 = v193 + 6;
              }

              v197 = v196 >> 2;
              if (v193 < 20)
              {
                v197 = 1;
              }

              v193 += v197;
              v198 = mdns_power_schedule_wake(v193);
            }

            while (v198 == -536870184);
            if (!v198)
            {
              if (mDNS_LoggingEnabled == 1)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Requested later wakeup in %d seconds; will also attempt IOCancelPowerChange");
              }

              goto LABEL_377;
            }

            v199 = mDNSLogCategory_Default;
          }

          else
          {
            v199 = mDNSLogCategory_Default;
          }

          LogMsgWithLevel(v199, OS_LOG_TYPE_DEFAULT, "AllowSleepNow: Requested wakeup in %d seconds unsuccessful: %d %X");
LABEL_377:
          *(mDNSStorage[0] + 600) = (v193 + time(0));
          v167 = v195 == 0;
LABEL_378:
          BYTE1(dword_10016D2A4) = 2;
          mDNSMacOSXNetworkChanged();
          goto LABEL_379;
        }

        if (v127 - HIDWORD(qword_10016D2AC) >= 0)
        {
          *(mDNSStorage[0] + 600) = 0;
          goto LABEL_268;
        }

        v168 = v264;
        if ((v264 - *(a1 + 38)) >= 0)
        {
          v168 = *(a1 + 38);
        }

        v264 = v168;
LABEL_388:
        v204 = v264 - v127;
        if ((v264 - v127) <= 1)
        {
          if (++KQueueLoop_RepeatedBusy < 1000)
          {
            v204 = 1;
LABEL_452:
            pthread_mutex_unlock(&stru_100164CC8);
            if (*(*a1 + 104))
            {
              SetLowWater(*a1 + 8, 0x10000);
              if (v204 >= 125)
              {
                v204 = 125;
              }
            }

            timeout.tv_sec = v204 / 1000;
            timeout.tv_nsec = 1000000 * (v204 % 1000);
            if ((kevent(KQueueFD, 0, 0, &eventlist, 1, &timeout) & 0x80000000) == 0)
            {
              goto LABEL_463;
            }

            v221 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == *(v65 + 3480))
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
LABEL_461:
                v222 = KQueueFD;
                v223 = *__error();
                v224 = __error();
                v225 = strerror(*v224);
                *block = 67109634;
                *&block[4] = v222;
                *&block[8] = 1024;
                *&block[10] = v223;
                *&block[14] = 2082;
                *&block[16] = v225;
                _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "kevent(%d) failed errno %d (%{public}s)", block, 0x18u);
              }
            }

            else
            {
              v221 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_461;
              }
            }

            sleep(1u);
LABEL_463:
            pthread_mutex_lock(&stru_100164CC8);
            if (*(*a1 + 104))
            {
              SetLowWater(*a1 + 8, 1);
              *(*a1 + 104) = 0;
            }

            v226 = 0;
            v227 = 0;
            while (1)
            {
              do
              {
                while (1)
                {
                  v228 = kevent(KQueueFD, 0, 0, &eventlist, 1, &KQueueLoop_zero_timeout);
                  if (!v228)
                  {
                    if (v226)
                    {
                      EnableSocketReadEvent(*(*a1 + 24), (*a1 + 32));
                    }

                    if (v227)
                    {
                      EnableSocketReadEvent(*(*a1 + 56), (*a1 + 64));
                    }

                    v2 = &unk_100178000;
                    goto LABEL_20;
                  }

                  if (v228 > 1)
                  {
                    goto LABEL_514;
                  }

                  if ((v228 & 0x80000000) == 0)
                  {
                    break;
                  }

                  if (*__error() != 4)
                  {
LABEL_514:
                    v248 = *__error();
                    v249 = mDNSLogCategory_Default;
                    if (mDNS_SensitiveLoggingEnableCount)
                    {
                      v250 = mDNSLogCategory_Default == mDNSLogCategory_State;
                    }

                    else
                    {
                      v250 = 1;
                    }

                    if (v250)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_522;
                      }
                    }

                    else
                    {
                      v249 = mDNSLogCategory_Default_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                      {
LABEL_522:
                        v252 = strerror(v248);
                        *block = 67109378;
                        *&block[4] = v248;
                        *&block[8] = 2082;
                        *&block[10] = v252;
                        _os_log_impl(&_mh_execute_header, v249, OS_LOG_TYPE_DEFAULT, "ERROR: KQueueLoop - kevent failed errno %d (%{public}s)", block, 0x12u);
                      }
                    }

                    exit(v248);
                  }
                }
              }

              while (v228 != 1);
              udata = eventlist.udata;
              v230 = mDNSPlatformRawTime();
              v231 = udata[2];
              (*udata)(LODWORD(eventlist.ident), eventlist.filter, udata[1], eventlist.flags >> 15);
              v232 = mDNSPlatformRawTime() - v230;
              if (v232 < WatchDogReportingThreshold)
              {
                goto LABEL_479;
              }

              v233 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
              {
                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_479;
                }
              }

              else
              {
                v233 = mDNSLogCategory_Default_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_479;
                }
              }

              *block = 136446466;
              *&block[4] = v231;
              *&block[12] = 1024;
              *&block[14] = v232;
              _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "WARNING: %{public}s took %d ms to complete", block, 0x12u);
LABEL_479:
              if (eventlist.filter == -1)
              {
                v234 = *a1 + 32;
                if (udata == v234 || udata == (*a1 + 64))
                {
                  ident = eventlist.ident;
                  v236 = KQueueSet(eventlist.ident, 8u, -1, udata);
                  v237 = mDNSLogCategory_Default;
                  if (mDNS_SensitiveLoggingEnableCount)
                  {
                    v238 = mDNSLogCategory_Default == mDNSLogCategory_State;
                  }

                  else
                  {
                    v238 = 1;
                  }

                  v239 = v238;
                  if (v236)
                  {
                    v240 = v236;
                    if (v239)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                      {
                        *block = 67109376;
                        *&block[4] = ident;
                        *&block[8] = 2048;
                        *&block[10] = v240;
                        v241 = v237;
                        goto LABEL_497;
                      }
                    }

                    else
                    {
                      v243 = mDNSLogCategory_Default_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                      {
                        *block = 67109376;
                        *&block[4] = ident;
                        *&block[8] = 2048;
                        *&block[10] = v240;
                        v241 = v243;
LABEL_497:
                        _os_log_impl(&_mh_execute_header, v241, OS_LOG_TYPE_ERROR, "Failed to disable read kevent for mDNS socket -- socket: %d, error: %{mdns:err}ld", block, 0x12u);
                      }
                    }
                  }

                  else
                  {
                    if (v239)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                      {
                        *block = 67109120;
                        *&block[4] = ident;
                        v242 = v237;
LABEL_500:
                        _os_log_impl(&_mh_execute_header, v242, OS_LOG_TYPE_DEBUG, "Temporarily disabled read kevent for mDNS socket -- socket: %d", block, 8u);
                      }
                    }

                    else
                    {
                      v244 = mDNSLogCategory_Default_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                      {
                        *block = 67109120;
                        *&block[4] = ident;
                        v242 = v244;
                        goto LABEL_500;
                      }
                    }

                    if (udata == v234)
                    {
                      v226 = 1;
                    }

                    else
                    {
                      v227 = 1;
                    }
                  }
                }
              }
            }
          }

          mDNS_Lock_(mDNSStorage, "ShowTaskSchedulingError", 5636);
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: *** Continuously busy for more than a second");
          if (!*(&xmmword_10016D2D8 + 1) || (v205 = *(*(&xmmword_10016D2D8 + 1) + 204)) != 0 && dword_10016D258 - v205 < 0)
          {
            v209 = 0;
          }

          else
          {
            v206 = mDNSLogCategory_Default;
            v207 = *(&xmmword_10016D2D8 + 1) + 376;
            v208 = DNSTypeName(*(*(&xmmword_10016D2D8 + 1) + 342));
            LogMsgWithLevel(v206, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NewQuestion %##s (%s)", v207, v208);
            v209 = 1;
          }

          if (qword_10016D2F8)
          {
            ++v209;
            v210 = mDNSLogCategory_Default;
            v211 = qword_10016D2F8 + 376;
            v212 = DNSTypeName(*(qword_10016D2F8 + 342));
            LogMsgWithLevel(v210, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NewLocalOnlyQuestions %##s (%s)", v211, v212);
          }

          v213 = qword_100170370;
          if (qword_100170370)
          {
            while (*(v213 + 8) == 2)
            {
              v213 = *v213;
              if (!v213)
              {
                goto LABEL_403;
              }
            }

            ++v209;
            v214 = mDNSLogCategory_Default;
            GetRRDisplayString_rdb((v213 + 8), (*(v213 + 48) + 4), word_1001789D0);
            LogMsgWithLevel(v214, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NewLocalRecords %s", word_1001789D0);
          }

LABEL_403:
          if (byte_100170380)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NewLocalOnlyRecords");
          }

          if (xmmword_100170D20)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: SPSProxyListChanged");
          }

          if (dword_10016D2A4)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: LocalRemoveEvents");
          }

          v215 = dword_10016D258;
          if (dword_10016D258 - dword_1001703A0 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextuDNSEvent %d", dword_10016D258 - dword_1001703A0);
            v215 = dword_10016D258;
          }

          if (v215 - dword_10016D280 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledNATOp %d", v215 - dword_10016D280);
            v215 = dword_10016D258;
          }

          if (dword_1001703A4 && v215 - dword_1001703A4 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextSRVUpdate %d", v215 - dword_1001703A4);
            v215 = dword_10016D258;
          }

          if (v215 - dword_10016D270 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextCacheCheck %d", v215 - dword_10016D270);
            v215 = dword_10016D258;
          }

          if (v215 - dword_10016D284 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledSPS %d", v215 - dword_10016D284);
            v215 = dword_10016D258;
          }

          v216 = v215 - dword_10016D288;
          if (v216 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledKA %d", v216);
          }

          v217 = qword_10016D2AC;
          if (qword_10016D2AC || HIDWORD(qword_10016D2AC) && dword_10016D258 - dword_10016D2CC >= 0 && (++v209, LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledSPRetry %d", dword_10016D258 - dword_10016D2CC), (v217 = qword_10016D2AC) != 0))
          {
            v218 = dword_10016D258 - v217;
            if (v218 >= 0)
            {
              ++v209;
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->DelaySleep %d", v218);
            }
          }

          v219 = dword_10016D258;
          if (qword_10016D268 && dword_10016D258 - qword_10016D268 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->SuppressQueries %d", dword_10016D258 - qword_10016D268);
            v219 = dword_10016D258;
          }

          if (HIDWORD(qword_10016D268) && v219 - HIDWORD(qword_10016D268) >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->SuppressResponses %d", v219 - HIDWORD(qword_10016D268));
            v219 = dword_10016D258;
          }

          if (v219 - dword_10016D274 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledQuery %d", v219 - dword_10016D274);
            v219 = dword_10016D258;
          }

          if (v219 - dword_10016D278 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledProbe %d", v219 - dword_10016D278);
            v219 = dword_10016D258;
          }

          if (v219 - dword_10016D27C >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledResponse %d", v219 - dword_10016D27C);
            v219 = dword_10016D258;
          }

          if (v219 - dword_10016D2D0 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledStopTime %d", v219 - dword_10016D2D0);
            v219 = dword_10016D258;
          }

          v220 = v219 - dword_10016D260;
          if (v220 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: m->NextScheduledEvent %d", v220);
          }

          if (dword_10016D220 && dword_10016D258 - dword_10016D220 >= 0)
          {
            ++v209;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: NetworkChanged %d", dword_10016D258 - dword_10016D220);
          }

          if (v209)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: *** %d potential cause%s identified (significant only if the same cause consistently appears)");
          }

          else
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Task Scheduling Error: *** No likely causes identified");
          }

          mDNS_Unlock_(mDNSStorage, "ShowTaskSchedulingError", 5704);
          v204 = 1;
        }

        KQueueLoop_RepeatedBusy = 0;
        goto LABEL_452;
      }

      while (v137[4] || *(v137 + 122) || IsLocalDomain(v137[5]) || *(v137 + 86) != 5 || !v137[48])
      {
        v137 = *v137;
        if (!v137)
        {
          goto LABEL_262;
        }
      }

      if (mDNS_LoggingEnabled == 1)
      {
        v247 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb(v137 + 8, (v137[6] + 4), word_1001789D0);
        LogMsgWithLevel(v247, OS_LOG_TYPE_DEFAULT, "mDNSCoreReadyForSleep: waiting for Record updateIntID 0x%x 0x%x (updateid %d) %s");
      }
    }
  }

  v134 = 0;
  v278 = 1;
  v135 = 8682;
  goto LABEL_263;
}

uint64_t mDNS_TimeNow(_DWORD *a1)
{
  if (!a1[12])
  {
    goto LABEL_20;
  }

  v2 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v3 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v9) = 0;
    goto LABEL_11;
  }

  v2 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9) = 0;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Lock failure: mDNS_TimeNow called while holding mDNS lock. This is incorrect. Code protected by lock should just use m->timenow.", &v9, 2u);
  }

LABEL_12:
  if (a1[16])
  {
    goto LABEL_20;
  }

  v5 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v7 = a1[12];
    v9 = 67109120;
    v10 = v7;
  }

  else
  {
    v5 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v6 = a1[12];
    v9 = 67109120;
    v10 = v6;
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Lock failure: mDNS_TimeNow: m->mDNS_busy is %u but m->timenow not set", &v9, 8u);
LABEL_20:
  result = a1[16];
  if (!result)
  {
    return a1[15] + mDNSPlatformRawTime();
  }

  return result;
}

uint64_t mDNS_Execute(uint64_t a1)
{
  mDNS_Lock_(a1, "mDNS_Execute", 6835);
  if (*(a1 + 64) - *(a1 + 72) < 0)
  {
    goto LABEL_1494;
  }

  v2 = *(a1 + 208);
  if (v2)
  {
    v3 = mDNSLogCategory_Default;
    v4 = v2 + 376;
    v5 = DNSTypeName(*(v2 + 342));
    LogMsgWithLevel(v3, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ERROR m->CurrentQuestion already set: %##s (%s)", v4, v5);
  }

  v6 = *(a1 + 12640);
  if (v6)
  {
    v7 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v6 + 8), (*(v6 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ERROR m->CurrentRecord already set: %s", (a1 + 47032));
  }

  v8 = *(a1 + 12672);
  v9 = *(a1 + 64);
  if (v8 && ((v9 - v8) & 0x80000000) == 0)
  {
    *(a1 + 12672) = 0;
  }

  if (*(a1 + 12668) && v9 - *(a1 + 12664) >= 10000)
  {
    *(a1 + 12668) = 0;
  }

  if (*(a1 + 240) && v9 - *(a1 + 88) >= 0)
  {
    v10 = 0;
    *(a1 + 88) = v9 + 939524096;
    v11 = a1 + 4264;
    do
    {
      v12 = *(a1 + 64);
      v13 = *(v11 + 4 * v10);
      if (v12 - v13 >= 0)
      {
        v14 = (a1 + 272 + 8 * v10);
        v13 = v12 + 939524096;
        *(v11 + 4 * v10) = v12 + 939524096;
        v15 = *v14;
        if (*v14)
        {
          do
          {
            CheckCacheExpiration(a1, v10, v15);
            v16 = *v14;
            if (!(*v14)[2])
            {
              ReleaseCacheGroup(a1, v14);
              v16 = v14;
            }

            v15 = *v16;
            v14 = v16;
          }

          while (*v16);
          v13 = *(v11 + 4 * v10);
        }
      }

      if (*(a1 + 88) - v13 >= 1)
      {
        *(a1 + 88) = v13;
      }

      ++v10;
    }

    while (v10 != 499);
    v9 = *(a1 + 64);
  }

  if (v9 - *(a1 + 108) >= 0)
  {
    *(a1 + 108) = v9 + 939524096;
    CheckProxyRecords(a1, *(a1 + 12624));
    CheckProxyRecords(a1, *(a1 + 12616));
  }

  v17 = *(a1 + 15112);
  if (v17)
  {
    mDNSPlatformUpdateProxyList(v17);
  }

  *(a1 + 15112) = 0;
  v18 = *(a1 + 64);
  if (v18 - *(a1 + 112) >= 0)
  {
    *(a1 + 112) = v18 + 939524096;
    mDNS_SendKeepalives(a1);
  }

  v19 = *(a1 + 116);
  if (v19)
  {
    v20 = *(a1 + 64);
    if (v20 - v19 >= 0)
    {
      *(a1 + 8) = v20;
      *(a1 + 116) = 0;
      *(a1 + 120) = 0;
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: Scheduled network changed processing to leave multicast group.");
      }
    }
  }

  for (i = *(a1 + 14160); i; i = *(i + 296))
  {
    for (j = 0; j != 5; ++j)
    {
      mDNS_SetUpDomainEnumeration(a1, i, j);
    }
  }

  if (!g_discover_resolvers)
  {
    goto LABEL_179;
  }

  v23 = *g_discover_resolvers;
  if (!*g_discover_resolvers)
  {
    goto LABEL_179;
  }

  v24 = dword_10016D258;
  v662 = dword_10016D258;
  do
  {
    v26 = v23;
    v23 = *v23;
    v25 = v26[1];
    if (!v25)
    {
      continue;
    }

    v27 = *(v25 + 272);
    if (!v27)
    {
      continue;
    }

    v28 = *(v27 + 696);
    if (!v28)
    {
      continue;
    }

    v29 = *(v28 + 1664);
    v30 = v29 && v29 - v24 <= 0;
    if (!v30)
    {
      continue;
    }

    v31 = *(v28 + 1672);
    if (v31)
    {
      DNSServiceManager = Querier_GetDNSServiceManager();
      if (DNSServiceManager)
      {
        mdns_dns_service_manager_deregister_native_service(DNSServiceManager, v31);
      }

      *(v28 + 1672) = 0;
    }

    v33 = *(v28 + 256);
    v34 = v33 + 5;
    if (v33 + 5) < 6 && ((0x2Du >> v34))
    {
      v33 = dword_10010DE98[v34];
    }

    v35 = mdns_dns_service_definition_create();
    if (!v35)
    {
      goto LABEL_135;
    }

    v36 = v35;
    mdns_dns_service_definition_set_interface_index(v35, v33, 2);
    bzero(buf, 0x3F1uLL);
    ConvertDomainNameToCString_withescape(v25, buf);
    v37 = mdns_domain_name_create(buf, 0);
    if (!v37)
    {
      os_release(v36);
LABEL_135:
      v57 = -1;
      v58 = &unk_100178000;
      goto LABEL_109;
    }

    v38 = v37;
    v665 = v31;
    CFSetAddValue(*(v36 + 32), v37);
    *(v36 + 53) = 1;
    os_release(v38);
    v39 = *(v28 + 1656);
    if (!v39)
    {
LABEL_105:
      if (v665)
      {
        v57 = 3;
      }

      else
      {
        v57 = 0;
      }

      goto LABEL_108;
    }

    v40 = 0;
    do
    {
      while (1)
      {
        v41 = *v39;
        if (*v39 == 6)
        {
          if (*(v39 + 4) == 254)
          {
            if ((*(v39 + 5) & 0xC0) == 0x80)
            {
              v53 = v33;
            }

            else
            {
              v53 = 0;
            }
          }

          else
          {
            v53 = 0;
          }

          v54 = _mdns_address_new();
          if (!v54)
          {
LABEL_133:
            v57 = -1;
            goto LABEL_108;
          }

          v52 = v54;
          *(v54 + 24) = 7708;
          *(v54 + 32) = *(v39 + 1);
          *(v54 + 48) = v53;
          goto LABEL_96;
        }

        if (v41 != 4)
        {
          break;
        }

        v50 = v39[1];
        v51 = _mdns_address_new();
        if (!v51)
        {
          goto LABEL_133;
        }

        v52 = v51;
        *(v51 + 24) = 528;
        *(v51 + 28) = v50;
LABEL_96:
        CFArrayAppendValue(*(v36 + 24), v52);
        os_release(v52);
        v39 = *(v39 + 3);
        v40 = 1;
        if (!v39)
        {
          goto LABEL_99;
        }
      }

      v42 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v43 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v43 = 1;
      }

      if (v43)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_85;
        }

        v44 = v28;
        while (1)
        {
          if (!v44 || (v45 = *v44, v45 > 0x3F))
          {
LABEL_74:
            v46 = 257;
            goto LABEL_84;
          }

          if (!*v44)
          {
            break;
          }

          v44 += v45 + 1;
          if (&v44[-v28] >= 256)
          {
            goto LABEL_74;
          }
        }

        v46 = (v44 - v28 + 1);
        goto LABEL_84;
      }

      v42 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        v48 = v28;
        while (1)
        {
          if (!v48 || (v49 = *v48, v49 > 0x3F))
          {
LABEL_81:
            v46 = 257;
            goto LABEL_84;
          }

          if (!*v48)
          {
            break;
          }

          v48 += v49 + 1;
          if (&v48[-v28] >= 256)
          {
            goto LABEL_81;
          }
        }

        v46 = (v48 - v28 + 1);
LABEL_84:
        *buf = 141559043;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v46;
        *&buf[18] = 2101;
        *&buf[20] = v28;
        *&buf[28] = 1024;
        *&buf[30] = v33;
        *&buf[34] = 1024;
        *&buf[36] = v41;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "Invalid mDNSAddrType - domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, interface index: %u, mDNSAddrType: v%d.", buf, 0x28u);
      }

LABEL_85:
      v39 = *(v39 + 3);
    }

    while (v39);
    if ((v40 & 1) == 0)
    {
      goto LABEL_105;
    }

LABEL_99:
    v55 = Querier_RegisterNativeDNSService(v36);
    *(v28 + 1672) = v55;
    if (v665)
    {
      v56 = 2;
    }

    else
    {
      v56 = 1;
    }

    if (v55)
    {
      v57 = v56;
    }

    else
    {
      v57 = -1;
    }

LABEL_108:
    os_release(v36);
    v58 = &unk_100178000;
    v24 = v662;
LABEL_109:
    v59 = *(v58 + 434);
    if (!mDNS_SensitiveLoggingEnableCount || v59 == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(*(v58 + 434), OS_LOG_TYPE_DEFAULT))
      {
        v64 = v25;
        while (1)
        {
          if (!v64 || (v65 = *v64, v65 > 0x3F))
          {
LABEL_124:
            v66 = 257;
            goto LABEL_126;
          }

          if (!*v64)
          {
            break;
          }

          v64 += v65 + 1;
          if (&v64[-v25] >= 256)
          {
            goto LABEL_124;
          }
        }

        v66 = (v64 - v25 + 1);
LABEL_126:
        *buf = 141558787;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v66;
        *&buf[18] = 2101;
        *&buf[20] = v25;
        *&buf[28] = 1024;
        *&buf[30] = v57;
        v67 = v59;
LABEL_129:
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Discovered local resolver configuration updated - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, result: %d", buf, 0x22u);
      }
    }

    else
    {
      v60 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v25;
        while (1)
        {
          if (!v61 || (v62 = *v61, v62 > 0x3F))
          {
LABEL_117:
            v63 = 257;
            goto LABEL_128;
          }

          if (!*v61)
          {
            break;
          }

          v61 += v62 + 1;
          if (&v61[-v25] >= 256)
          {
            goto LABEL_117;
          }
        }

        v63 = (v61 - v25 + 1);
LABEL_128:
        *buf = 141558787;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v63;
        *&buf[18] = 2101;
        *&buf[20] = v25;
        *&buf[28] = 1024;
        *&buf[30] = v57;
        v67 = v60;
        goto LABEL_129;
      }
    }

    *(v28 + 1664) = 0;
  }

  while (v23);
  if (g_discover_resolvers)
  {
    v68 = *g_discover_resolvers;
    if (*g_discover_resolvers)
    {
      v69 = dword_10016D258;
      while (2)
      {
        v70 = v68;
        v68 = *v68;
        v71 = v70[1];
        if (*(v71 + 264))
        {
          goto LABEL_178;
        }

        v72 = *(v71 + 256);
        if (!v72 || v69 - v72 < 0)
        {
          goto LABEL_178;
        }

        v73 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v74 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v74 = 1;
        }

        if (v74)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            v75 = v71;
            while (1)
            {
              if (!v75 || (v76 = *v75, v76 > 0x3F))
              {
LABEL_153:
                v77 = 257;
                goto LABEL_163;
              }

              if (!*v75)
              {
                break;
              }

              v75 += v76 + 1;
              if (&v75[-v71] >= 256)
              {
                goto LABEL_153;
              }
            }

            v77 = (v75 - v71 + 1);
LABEL_163:
            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 1040;
            *&buf[14] = v77;
            *&buf[18] = 2101;
            *&buf[20] = v71;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Stopping the resolver discovery -- domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
          }
        }

        else
        {
          v73 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v79 = v71;
            while (1)
            {
              if (!v79 || (v80 = *v79, v80 > 0x3F))
              {
LABEL_160:
                v77 = 257;
                goto LABEL_163;
              }

              if (!*v79)
              {
                break;
              }

              v79 += v80 + 1;
              if (&v79[-v71] >= 256)
              {
                goto LABEL_160;
              }
            }

            v77 = (v79 - v71 + 1);
            goto LABEL_163;
          }
        }

        v81 = v70[1];
        if (v81)
        {
          v82 = *(v81 + 260) - 1;
          *(v81 + 260) = v82;
          v83 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_170;
            }
          }

          else
          {
            v83 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
LABEL_170:
              *buf = 67109120;
              *&buf[4] = v82;
              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEBUG, "discover_resolver_t released - ref count after releasing: %u.", buf, 8u);
            }
          }

          v84 = v70[1];
          if (v84 && !*(v84 + 260))
          {
            (*(v84 + 280))();
          }
        }

        v85 = g_discover_resolvers;
        for (k = *g_discover_resolvers; k != v70; k = *k)
        {
          v85 = k;
        }

        *v85 = *k;
        free(v70);
LABEL_178:
        if (!v68)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_179:
  v87 = *(a1 + 148);
  if (v87)
  {
    if (*(a1 + 64) - v87 >= 0)
    {
      *(a1 + 148) = 0;
      if (*(a1 + 141) == 1)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Re-sleep delay passed; now checking for Sleep Proxy Servers");
        }

        BeginSleepProcessing(a1);
      }
    }
  }

  v88 = *(a1 + 160);
  if (v88)
  {
    if (*(a1 + 64) - v88 >= 0)
    {
      *(a1 + 160) = 0;
      v89 = *(a1 + 192);
      if (v89)
      {
        while (2)
        {
          if (v89 == *(a1 + 200))
          {
            goto LABEL_270;
          }

          v90 = *(v89 + 144);
          if (!v90)
          {
            goto LABEL_269;
          }

          if (*(v90 + 24) != 1)
          {
            goto LABEL_269;
          }

          v91 = *(*(v90 + 16) + 64);
          v92 = bswap32(*(v89 + 340));
          v93 = HIWORD(v92);
          *(v91 + 24) = HIWORD(v92);
          if ((*(v91 + 48) - 3) < 0xFFFFFFFE)
          {
            goto LABEL_269;
          }

          v94 = *(v91 + 32);
          if (v94)
          {
            v95 = *(v94 + 24);
            if (v95)
            {
              while (*(*v95 + 8))
              {
                v95 = v95[1];
                if (!v95)
                {
                  goto LABEL_196;
                }
              }

LABEL_217:
              v105 = mDNSLogCategory_DNSSEC;
              if (mDNS_SensitiveLoggingEnableCount)
              {
                v106 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
              }

              else
              {
                v106 = 1;
              }

              if (v106)
              {
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
                {
                  v107 = *(v91 + 16);
                  if (v107)
                  {
                    v108 = *(v107 + 24);
                    v107 = *(v107 + 16);
                  }

                  else
                  {
                    v108 = 0;
                  }

LABEL_268:
                  *buf = 67109891;
                  *&buf[4] = v93;
                  *&buf[8] = 2160;
                  *&buf[10] = 1752392040;
                  *&buf[18] = 1040;
                  *&buf[20] = v108;
                  *&buf[24] = 2101;
                  *&buf[26] = v107;
                  _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "[Q%u] Current DNSSEC validation manager contains record(s) that are to be removed soon, wait for the coming update before updating the cache - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x22u);
                }
              }

              else
              {
                v105 = mDNSLogCategory_DNSSEC_redacted;
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
                {
                  v107 = *(v91 + 16);
                  if (v107)
                  {
                    v108 = *(v107 + 24);
                    v107 = *(v107 + 16);
                  }

                  else
                  {
                    v108 = 0;
                  }

                  goto LABEL_268;
                }
              }

              goto LABEL_269;
            }
          }

LABEL_196:
          v96 = *(v91 + 40);
          if (v96)
          {
            v97 = *(v96 + 24);
            if (v97)
            {
              while (*(*v97 + 8))
              {
                v97 = v97[1];
                if (!v97)
                {
                  goto LABEL_200;
                }
              }

              goto LABEL_217;
            }
          }

LABEL_200:
          v98 = *(v91 + 64);
          if (v98)
          {
            v99 = *(v98 + 24);
            if (v99)
            {
              while (*(*v99 + 8))
              {
                v99 = v99[1];
                if (!v99)
                {
                  goto LABEL_204;
                }
              }

              goto LABEL_217;
            }
          }

LABEL_204:
          v100 = *(v91 + 88);
          if (v100 && !*(v100 + 8))
          {
            goto LABEL_217;
          }

          if (*(v91 + 52))
          {
            goto LABEL_269;
          }

          if (v94)
          {
            v101 = dword_10016D258;
            rr_expire_time = dnssec_obj_rrset_get_rr_expire_time(v94);
            if (rr_expire_time - dword_10016D258 < 1)
            {
              goto LABEL_269;
            }

            if (v101 + 939524096 - rr_expire_time <= 0 || rr_expire_time == 0)
            {
              v104 = v101 + 939524096;
            }

            else
            {
              v104 = rr_expire_time;
            }

            v96 = *(v91 + 40);
            if (!v96)
            {
LABEL_236:
              v112 = *(v91 + 64);
              if (v112)
              {
                v113 = dnssec_obj_rrset_get_rr_expire_time(v112);
                if (v113 - dword_10016D258 < 1)
                {
                  goto LABEL_269;
                }

                if (v104 - v113 > 0 && v113 != 0)
                {
                  v104 = v113;
                }
              }

              if (*(v91 + 112))
              {
                v115 = *(v91 + 88);
                if (!v115)
                {
                  goto LABEL_269;
                }

                expiration_time = resource_record_get_expiration_time(*(v115 + 56));
                if (expiration_time - dword_10016D258 < 1)
                {
                  goto LABEL_269;
                }

                if (v104 - expiration_time > 0 && expiration_time != 0)
                {
                  v104 = expiration_time;
                }
              }

              v118 = *(v91 + 32);
              if (!v118)
              {
                v118 = *(v91 + 40);
              }

              v119 = v104 - dnssec_obj_rrset_get_time_received(v118);
              if (v119 >= 1000)
              {
                v120 = v119 / 0x3E8u;
                if (v120 >= 0xE10)
                {
                  v120 = 3600;
                }

                v121 = v120 + (v120 >> 2) + 2;
                if (v121 <= 0xF)
                {
                  v122 = 15;
                }

                else
                {
                  v122 = v121;
                }

                v123 = *(v91 + 32);
                if (v123 && dnssec_obj_rrset_needs_to_update_cache(v123, v122))
                {
                  v124 = *(v91 + 32);
                }

                else
                {
                  v125 = *(v91 + 40);
                  if (!v125 || !dnssec_obj_rrset_needs_to_update_cache(v125, v122))
                  {
                    goto LABEL_269;
                  }

                  v124 = *(v91 + 40);
                }

                _update_validated_cache_with_rrset(v124, v122);
              }

LABEL_269:
              v89 = *(v89 + 8);
              if (!v89)
              {
                goto LABEL_270;
              }

              continue;
            }
          }

          else
          {
            if (!v96)
            {
              goto LABEL_269;
            }

            v104 = dword_10016D258 + 939524096;
          }

          break;
        }

        v110 = dnssec_obj_rrset_get_rr_expire_time(v96);
        if (v110 - dword_10016D258 < 1)
        {
          goto LABEL_269;
        }

        if (v104 - v110 > 0 && v110 != 0)
        {
          v104 = v110;
        }

        goto LABEL_236;
      }
    }
  }

LABEL_270:
  v126 = *(a1 + 164);
  if (v126 && *(a1 + 64) - v126 >= 0)
  {
    v127 = *(a1 + 12656);
    if (v127)
    {
      while (!*(v127 + 16))
      {
        v127 = *v127;
        if (!v127)
        {
          goto LABEL_275;
        }
      }

      v247 = 0;
      v248 = 0uLL;
      v249 = &unk_100164000;
LABEL_575:
      v250 = v127[1];
      if (!v250)
      {
        goto LABEL_606;
      }

      v251 = 0;
      for (m = 28; m != 62; m += 2)
      {
        v251 += *(v250 + m);
      }

      if (v251)
      {
        v253 = v249;
        v254 = v249[320];
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v255 = v254 == mDNSLogCategory_State;
        }

        else
        {
          v255 = 1;
        }

        if (v255)
        {
          if (os_log_type_enabled(v249[320], OS_LOG_TYPE_DEFAULT))
          {
            v256 = v127[444];
            v257 = v256 + 5;
            if (v256 + 5) < 6 && ((0x2Du >> v257))
            {
              LODWORD(v256) = dword_10010DEB0[v257];
            }

LABEL_593:
            *buf = 136446722;
            *&buf[4] = v127 + 3606;
            *&buf[12] = 1024;
            *&buf[14] = v256;
            *&buf[18] = 2112;
            *&buf[20] = v250;
            _os_log_impl(&_mh_execute_header, v254, OS_LOG_TYPE_DEFAULT, "mDNS response delay distribution - interface name: %{public}s, interface index: %u, report: %@", buf, 0x1Cu);
          }
        }

        else
        {
          v254 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v256 = v127[444];
            v259 = v256 + 5;
            if (v256 + 5) < 6 && ((0x2Du >> v259))
            {
              LODWORD(v256) = dword_10010DEC8[v259];
            }

            goto LABEL_593;
          }
        }

        v248 = 0uLL;
        if (v247)
        {
          v247 = 1;
          goto LABEL_604;
        }

        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = __mDNSPostResponseDelayMetrics_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_536;
        *&buf[32] = v250;
        if ((analytics_send_event_lazy() & 1) == 0)
        {
          v260 = v253[320];
          if (!mDNS_SensitiveLoggingEnableCount || v260 == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(v253[320], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_602;
            }
          }

          else
          {
            v260 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
LABEL_602:
              *__dst = 0;
              _os_log_impl(&_mh_execute_header, v260, OS_LOG_TYPE_DEFAULT, "com.apple.mDNSResponder.mDNSResponseDelayEvent: Analytic not posted", __dst, 2u);
            }
          }
        }

        v247 = 1;
        v248 = 0uLL;
LABEL_604:
        v249 = v253;
      }

      *(v250 + 54) = 0;
      *(v250 + 40) = v248;
      *(v250 + 24) = v248;
LABEL_606:
      while (1)
      {
        v127 = *v127;
        if (!v127)
        {
          break;
        }

        if (*(v127 + 16))
        {
          goto LABEL_575;
        }
      }
    }

LABEL_275:
    *(a1 + 164) = *(a1 + 64) + 1800000;
  }

  v670 = (a1 + 28960);
  v641 = (a1 + 12648);
  v128 = (a1 + 200);
  v129 = *(a1 + 200);
  v130 = &unk_100178000;
  v650 = (a1 + 200);
  if (!v129)
  {
    goto LABEL_482;
  }

  v131 = 0;
  v132 = (a1 + 47032);
  while (2)
  {
    v133 = v131;
    v134 = *(v129 + 204);
    if (v134)
    {
      if (*(a1 + 64) - v134 < 0)
      {
        goto LABEL_482;
      }
    }

    if (!*(v129 + 340))
    {
      goto LABEL_290;
    }

    if (*(v129 + 673) != 6)
    {
      goto LABEL_290;
    }

    *(v129 + 673) = 8;
    *__dst = 0;
    *&__dst[8] = 0;
    if (!*(v129 + 80))
    {
      goto LABEL_290;
    }

    if (!GetReverseIPv6Addr((v129 + 376), __dst))
    {
      goto LABEL_290;
    }

    v675[0] = 0;
    LODWORD(v676) = 0;
    LODWORD(v674) = 0;
    *buf = 0;
    *&buf[8] = 0;
    *&buf[22] = 0;
    *&buf[16] = 0;
    if (_DNS64GetPrefixes(a1, *(v129 + 80), v675, &v676))
    {
      goto LABEL_290;
    }

    v135 = v676;
    v136 = v675[0];
    v137 = v675[0];
    if (!v676)
    {
LABEL_288:
      if (!v136)
      {
        goto LABEL_290;
      }

      goto LABEL_289;
    }

    while (!nw_nat64_extract_v4())
    {
      v137 += 16;
      if (!--v135)
      {
        goto LABEL_288;
      }
    }

    snprintf(buf, 0x1EuLL, "%u.%u.%u.%u.in-addr.arpa.", BYTE3(v674), BYTE2(v674), BYTE1(v674), v674);
    *(v129 + 376) = 0;
    AppendDNSNameString((v129 + 376), buf);
    *(v129 + 200) = DomainNameHashValue(v129 + 376);
    *(v129 + 673) = 7;
    if (v136)
    {
LABEL_289:
      free(v136);
    }

LABEL_290:
    v138 = CacheGroupForName(a1, *(v129 + 200), (v129 + 376));
    if (v138)
    {
      CheckCacheExpiration(a1, *(v129 + 200) % 0x1F3u, v138);
    }

    if (*v128 != v129)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "AnswerNewQuestion: Question deleted while doing CheckCacheExpiration", v625, v626, v627, v630);
      }

      goto LABEL_339;
    }

    *(a1 + 200) = *(v129 + 8);
    if (*(a1 + 56))
    {
      LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "AnswerNewQuestion ERROR! Cache already locked!");
    }

    *(a1 + 56) = 1;
    v139 = *(a1 + 208);
    if (v139)
    {
      v140 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          v657 = v133;
          v147 = *(v139 + 252);
          v148 = bswap32(*(v139 + 340)) >> 16;
          v149 = v139 + 376;
          v150 = (v139 + 376);
          while (1)
          {
            if (!v150 || (v151 = *v150, v151 > 0x3F))
            {
LABEL_313:
              v152 = 257;
              goto LABEL_317;
            }

            if (!*v150)
            {
              break;
            }

            v150 += v151 + 1;
            if (&v150[-v149] >= 256)
            {
              goto LABEL_313;
            }
          }

          v152 = (v150 - v149 + 1);
LABEL_317:
          v153 = DNSTypeName(*(v139 + 342));
          *buf = 67110403;
          *&buf[4] = v147;
          *&buf[8] = 1024;
          *&buf[10] = v148;
          *&buf[14] = 2160;
          *&buf[16] = 1752392040;
          *&buf[24] = 1040;
          *&buf[26] = v152;
          *&buf[30] = 2101;
          *&buf[32] = v139 + 376;
          *&buf[40] = 2082;
          *&buf[42] = v153;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "[R%u->Q%d] AnswerNewQuestion ERROR m->CurrentQuestion already set: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x32u);
          v128 = (a1 + 200);
          v132 = (a1 + 47032);
          v133 = v657;
        }
      }

      else
      {
        v141 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v142 = *(v139 + 252);
          v143 = v139 + 376;
          v144 = (v139 + 376);
          v656 = bswap32(*(v139 + 340)) >> 16;
          while (1)
          {
            if (!v144 || (v145 = *v144, v145 > 0x3F))
            {
LABEL_306:
              v146 = 257;
              goto LABEL_319;
            }

            if (!*v144)
            {
              break;
            }

            v144 += v145 + 1;
            if (&v144[-v143] >= 256)
            {
              goto LABEL_306;
            }
          }

          v146 = (v144 - v143 + 1);
LABEL_319:
          v154 = DNSTypeName(*(v139 + 342));
          *buf = 67110403;
          *&buf[4] = v142;
          *&buf[8] = 1024;
          *&buf[10] = v656;
          *&buf[14] = 2160;
          *&buf[16] = 1752392040;
          *&buf[24] = 1040;
          *&buf[26] = v146;
          *&buf[30] = 2101;
          *&buf[32] = v139 + 376;
          *&buf[40] = 2082;
          *&buf[42] = v154;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "[R%u->Q%d] AnswerNewQuestion ERROR m->CurrentQuestion already set: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x32u);
          v128 = (a1 + 200);
          v132 = (a1 + 47032);
        }
      }
    }

    *(a1 + 208) = v129;
    v155 = *(a1 + 12640);
    if (v155)
    {
      v156 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v155 + 8), (*(v155 + 48) + 4), v132);
      LogMsgWithLevel(v156, OS_LOG_TYPE_DEFAULT, "AnswerQuestionWithLORecord ERROR m->CurrentRecord already set %s", v132);
    }

    v157 = AuthGroupForName(a1 + 6264, *(v129 + 200), (v129 + 376));
    v158 = v157;
    if (v157)
    {
      v159 = v157[2];
      if (v159)
      {
        while (2)
        {
          if (v159 == v158[5])
          {
            goto LABEL_333;
          }

          v160 = *v159;
          *(a1 + 12640) = *v159;
          v161 = *(v159 + 172);
          if (v161 != 4)
          {
            if (v161 == 5)
            {
              v162 = *(v129 + 136);
              if (!v162 || v162 == -5)
              {
                break;
              }

LABEL_331:
              v160 = *(a1 + 12640);
            }

            v159 = v160;
            if (!v160)
            {
              goto LABEL_333;
            }

            continue;
          }

          break;
        }

        if (LocalOnlyRecordAnswersQuestion(v159, v129))
        {
          AnswerLocalQuestionWithLocalAuthRecord(a1, v159, 1);
          if (*(a1 + 208) != v129)
          {
            goto LABEL_333;
          }
        }

        goto LABEL_331;
      }
    }

LABEL_333:
    *(a1 + 12640) = 0;
    if (*(a1 + 208) != v129)
    {
      v130 = &unk_100178000;
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AnswerQuestionWithLORecord: Question deleted while while answering LocalOnly record answers", v625, v626, v627, v630);
      }

      goto LABEL_339;
    }

    if (*(v129 + 355))
    {
      v130 = &unk_100178000;
      if (mDNS_LoggingEnabled == 1)
      {
        v163 = mDNSLogCategory_Default;
        v628 = DNSTypeName(*(v129 + 342));
        LogMsgWithLevel(v163, OS_LOG_TYPE_DEFAULT, "AnswerQuestionWithLORecord: Question %p %##s (%s) answered using local auth records LOAddressAnswers %d", v129, v129 + 376, v628, *(v129 + 355));
      }

      goto LABEL_339;
    }

    if (!v158 || (v164 = v158[5]) == 0)
    {
LABEL_352:
      v130 = &unk_100178000;
      if (SameDomainNameBytes((v129 + 376), "\tlocalhost"))
      {
        GenerateNegativeResponseEx(a1, *(v129 + 136), 4, 0);
        goto LABEL_339;
      }

      if (*(v129 + 340))
      {
        v168 = *(v129 + 647) == 1;
      }

      else
      {
        v168 = 0;
      }

      v169 = v168;
      if (!*(v129 + 354) || *(v129 + 646))
      {
        if (!v138 || (v170 = v138[2]) == 0)
        {
          v186 = 0;
          v187 = 0;
          v171 = 0;
          v188 = 1;
          LOBYTE(v173) = 1;
          goto LABEL_410;
        }

        v171 = 0;
        v658 = 0;
        v645 = 0;
        v172 = 0;
        LOBYTE(v173) = 1;
        while (1)
        {
          if (!SameNameRecordAnswersQuestion((v170 + 8), 0, v129))
          {
            if (!*(v129 + 340))
            {
              v180 = *(v170 + 12);
              if (v180 == 28 || v180 == 1)
              {
                v182 = *(v129 + 342);
                if (v182 == 28 || v182 == 1)
                {
                  LOBYTE(v173) = 0;
                }
              }
            }

            goto LABEL_395;
          }

          v174 = (*(a1 + 64) - *(v170 + 80)) / 0x3E8u;
          v175 = *(v170 + 16);
          if (v175 <= v174)
          {
            if (!v169)
            {
              goto LABEL_395;
            }

            v176 = *(v170 + 8);
            if (v176 == 240)
            {
              goto LABEL_395;
            }
          }

          else
          {
            v176 = *(v170 + 8);
          }

          if ((v176 & 0x10) != 0 || *(v129 + 633))
          {
            if (v175 > v174)
            {
              LOBYTE(v173) = 0;
            }

            v177 = *(v129 + 144);
            if (v177)
            {
              if (*(v177 + 24) == 1)
              {
                v178 = *(v170 + 64);
                if (v178)
                {
                  if (!*(v178 + 32))
                  {
                    ++v171;
                    if (v176 == 240)
                    {
                      v645 = (*(v178 + 40) & 1) == 0 && (v183 = *(v178 + 48)) != 0 && *(v183 + 16) == 5;
                    }

                    else
                    {
                      if (resource_record_as_rrsig_get_covered_type(v170 + 8) == 5)
                      {
                        v184 = resource_record_as_rrsig_covers_wildcard_rr(v170 + 8);
                        v185 = v658;
                        if (v184)
                        {
                          v185 = 1;
                        }

                        v658 = v185;
                      }

                      if (!v172)
                      {
                        v172 = *(*(v170 + 64) + 24);
                      }
                    }
                  }
                }
              }
            }
          }

          ++*(v129 + 228);
          if (*(v170 + 20) >= 0x401u)
          {
            ++*(v129 + 232);
          }

          if ((*(v170 + 8) & 0x10) != 0)
          {
            ++*(v129 + 236);
          }

          *(v170 + 92) = *(a1 + 64);
          v179 = &sCacheRequest_UnicastHitCount;
          if (!*(v129 + 340))
          {
            v179 = &sCacheRequest_MulticastHitCount;
          }

          ++*v179;
          AnswerCurrentQuestionWithResourceRecord(a1, v170, 1);
          if (*(a1 + 208) != v129)
          {
LABEL_409:
            v187 = v658 != 0;
            v188 = v172 + 1;
            v186 = v645;
            v130 = &unk_100178000;
LABEL_410:
            if (*(a1 + 208) != v129 || (v190 = *(v129 + 144)) == 0 || (*(v190 + 24) == 1 ? (v191 = !v173) : (v191 = 0), !v191))
            {
LABEL_411:
              v189 = !v173;
              goto LABEL_431;
            }

            v192 = v171 != v188 && v187;
            v173 = v171 == 1 && v186;
            if (v192 || v173)
            {
              v193 = mDNSLogCategory_DNSSEC;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_475;
                }
              }

              else
              {
                v193 = mDNSLogCategory_DNSSEC_redacted;
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEFAULT))
                {
LABEL_475:
                  v206 = bswap32(*(v129 + 340));
                  *buf = 67109632;
                  *&buf[4] = HIWORD(v206);
                  *&buf[8] = 1024;
                  *&buf[10] = v192;
                  *&buf[14] = 1024;
                  *&buf[16] = v173;
                  _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "[Q%u] Continue sending out query for the primary DNSSEC question due to incomplete answer set - only positive: %{mdns:yesno}d, only negative: %{mdns:yesno}d", buf, 0x14u);
                }
              }

              LOBYTE(v173) = 1;
            }

            v128 = (a1 + 200);
            goto LABEL_411;
          }

LABEL_395:
          v170 = *v170;
          if (!v170)
          {
            goto LABEL_409;
          }
        }
      }

      v189 = 0;
LABEL_431:
      v194 = *(a1 + 208);
      if (v194 != v129)
      {
        goto LABEL_432;
      }

      if (v169)
      {
        if (*(v129 + 168))
        {
          v195 = *(a1 + 48);
          v196 = *(a1 + 52) + 1;
          *(a1 + 52) = v196;
          mDNS_VerifyLockState("Drop Lock", 0, v195, v196, "AnswerNewQuestion", 6330);
          (*(v129 + 168))(v129, 1);
          mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "AnswerNewQuestion", 6332);
          --*(a1 + 52);
          v194 = *(a1 + 208);
          if (v194 != v129)
          {
LABEL_432:
            if (v194 != v129)
            {
              goto LABEL_339;
            }

            goto LABEL_444;
          }
        }

        *(v129 + 647) = 2;
      }

      if (*(v129 + 354))
      {
        if (*(v129 + 635))
        {
          GenerateNegativeResponseEx(a1, 0, 4, 0);
          v194 = *(a1 + 208);
          goto LABEL_432;
        }

        *(v129 + 212) = 0;
      }

LABEL_444:
      v198 = *(v129 + 340);
      v199 = &sCacheRequest_UnicastMissCount;
      if (!*(v129 + 340))
      {
        v199 = &sCacheRequest_MulticastMissCount;
      }

      ++*v199;
      *(v129 + 357) = 1;
      if (*(v129 + 644))
      {
        if (*(v129 + 228) || (GenerateNegativeResponseEx(a1, *(v129 + 136), 4, 0), *(a1 + 208) == v129))
        {
          mDNS_StopQuery_internal(a1, v129);
        }
      }

      else
      {
        if (!v189 && *(v129 + 212) >= 1 && !*(v129 + 40))
        {
          *(v129 + 212) = 334;
          v200 = *(a1 + 64) - 334;
          *(v129 + 208) = v200;
          if (!v198)
          {
            v201 = *(a1 + 124);
            if (!v201)
            {
              do
              {
                v202 = arc4random() & 0x1FFF;
              }

              while (v202 > 0x1388);
              v201 = ((85899346 * (v202 + 999)) >> 32) + 1;
              *(a1 + 124) = v201;
              v200 = *(v129 + 208);
            }

            *(v129 + 208) = v201 + v200;
          }
        }

        if (DPCFeatureEnabled_sOnce != -1)
        {
          dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
        }

        if (DPCFeatureEnabled_sEnabled && !*(v129 + 340) && *(v129 + 212) >= 1 && !*(v129 + 40))
        {
          v203 = *(v129 + 136);
          if (v203)
          {
            _DPCSubscribe(v129, v203);
          }

          else if (gDPCPushServers)
          {
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 0x40000000;
            *&buf[16] = __DPCHandleNewQuestion_block_invoke;
            *&buf[24] = &__block_descriptor_tmp_29_3333;
            *&buf[32] = v129;
            mdns_cfdictionary_apply(gDPCPushServers, buf);
          }
        }

        if (*(v129 + 212) >= 1 && !*(v129 + 40))
        {
          v204 = *(v129 + 184);
          if (v204)
          {
            v205 = *(v204 + 16);
            if (v205)
            {
              if (*(v205 + 68) == 1)
              {
                *(v129 + 632) = 1;
                *(v129 + 350) = 30;
                *(v129 + 212) = 900000;
                *(v129 + 208) = *(a1 + 64) - 899999;
              }
            }
          }
        }

        SetNextQueryTime(a1, v129);
      }

      goto LABEL_339;
    }

    while (1)
    {
      v130 = &unk_100178000;
      if (*(v164 + 172) == 4 && (*(v164 + 8) & 0x32) != 0)
      {
        v165 = *(v164 + 12);
        v30 = v165 > 0x1C;
        v166 = (1 << v165) & 0x10001022;
        v167 = v30 || v166 == 0;
        if (!v167 && LocalOnlyRecordAnswersQuestion(v164, v129))
        {
          break;
        }
      }

      v164 = *v164;
      if (!v164)
      {
        goto LABEL_352;
      }
    }

    if (mDNS_LoggingEnabled == 1)
    {
      v197 = mDNSLogCategory_Default;
      v629 = DNSTypeName(*(v129 + 342));
      LogMsgWithLevel(v197, OS_LOG_TYPE_DEFAULT, "AnswerQuestionWithLORecord: Question %p %##s (%s) will be answered using new local auth records  LOAddressAnswers %d", v129, v129 + 376, v629, *(v129 + 355));
    }

LABEL_339:
    *(a1 + 208) = 0;
    *(a1 + 56) = 0;
    v129 = *(a1 + 200);
    if (v129)
    {
      v131 = v133 + 1;
      if (v133 < 0x3E7)
      {
        continue;
      }
    }

    break;
  }

  if (v133 >= 0x3E7)
  {
    LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: AnswerNewQuestion exceeded loop limit");
  }

LABEL_482:
  v207 = 0;
  v661 = (a1 + 12616);
  v208 = a1 + 6288;
  while (*(a1 + 140))
  {
    *(a1 + 140) = 0;
    *(a1 + 12640) = *(a1 + 12616);
    CheckRmvEventsForLocalRecords(a1);
    for (n = 0; n != 499; ++n)
    {
      for (ii = *(v208 + 8 * n); ii; ii = *ii)
      {
        v211 = ii[2];
        *(a1 + 12640) = v211;
        if (v211)
        {
          CheckRmvEventsForLocalRecords(a1);
        }
      }
    }

    if (++v207 == 1000)
    {
      LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: m->LocalRemoveEvents exceeded loop limit");
      break;
    }
  }

  v212 = *(a1 + 224);
  if (v212)
  {
    v213 = 0;
    v214 = *(a1 + 208);
    do
    {
      v215 = v213;
      *(a1 + 224) = *(v212 + 8);
      if (v214)
      {
        v216 = mDNSLogCategory_Default;
        v217 = v214 + 376;
        v218 = DNSTypeName(*(v214 + 342));
        LogMsgWithLevel(v216, OS_LOG_TYPE_DEFAULT, "AnswerNewLocalOnlyQuestion ERROR m->CurrentQuestion already set: %##s (%s)", v217, v218);
      }

      *(a1 + 208) = v212;
      v219 = *(a1 + 12640);
      if (v219)
      {
        v220 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((v219 + 8), (*(v219 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v220, OS_LOG_TYPE_DEFAULT, "AnswerNewLocalOnlyQuestion ERROR m->CurrentRecord already set %s", (a1 + 47032));
      }

      v221 = AuthGroupForName(a1 + 6264, *(v212 + 200), (v212 + 376));
      if (v221 && (v222 = v221, v223 = v221[2], (*(a1 + 12640) = v223) != 0))
      {
        v224 = 0;
        do
        {
          if (v223 == v222[5])
          {
            break;
          }

          *(a1 + 12640) = *v223;
          if (LocalOnlyRecordAnswersQuestion(v223, v212))
          {
            v224 = 1;
            AnswerLocalQuestionWithLocalAuthRecord(a1, v223, 1);
            if (*(a1 + 208) != v212)
            {
              break;
            }
          }

          v223 = *(a1 + 12640);
        }

        while (v223);
      }

      else
      {
        v224 = 0;
      }

      if (*(a1 + 208) == v212)
      {
        v225 = *(a1 + 12616);
        *(a1 + 12640) = v225;
        if (v225)
        {
          while (v225 != *(a1 + 12632))
          {
            *(a1 + 12640) = *v225;
            if (RecordAnswersQuestion((v225 + 1), 1, v212))
            {
              v224 = 1;
              AnswerLocalQuestionWithLocalAuthRecord(a1, v225, 1);
              if (*(a1 + 208) != v212)
              {
                goto LABEL_512;
              }
            }

            v225 = *(a1 + 12640);
            if (!v225)
            {
              break;
            }
          }
        }
      }

      if (!v224 && *(a1 + 208) == v212 && *(v212 + 635))
      {
        GenerateNegativeResponseEx(a1, -2, 3, 0);
      }

LABEL_512:
      *(a1 + 208) = 0;
      *(a1 + 12640) = 0;
      v212 = *(a1 + 224);
      if (!v212)
      {
        break;
      }

      v214 = 0;
      v213 = v215 + 1;
    }

    while (v215 < 0x3E7);
    v226 = v215 >= 0x3E7;
    v130 = &unk_100178000;
    if (v226)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: AnswerNewLocalOnlyQuestion exceeded loop limit");
    }
  }

  v227 = 0;
  v228 = 0;
  v229 = 0;
  while (2)
  {
    v230 = *(a1 + 12632);
    if (v230)
    {
      v231 = v230 == v228;
    }

    else
    {
      v231 = 1;
    }

    if (!v231)
    {
      v232 = *v230;
      *(a1 + 12632) = *v230;
      if (*(v230 + 8) == 2)
      {
        v233 = (a1 + 12616);
        if (v232)
        {
          do
          {
            v234 = v233;
            v233 = *v233;
            if (v233)
            {
              v235 = v233 == v230;
            }

            else
            {
              v235 = 1;
            }
          }

          while (!v235);
          if (!v233)
          {
            v237 = v130[434];
            GetRRDisplayString_rdb((v230 + 8), (*(v230 + 48) + 4), (a1 + 47032));
            LogMsgWithLevel(v237, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ERROR!! Cannot find record %s in ResourceRecords list", (a1 + 47032));
            break;
          }

          *v234 = v232;
          if (v228)
          {
            *v229 = v230;
            *v230 = 0;
            v229 = v230;
            goto LABEL_545;
          }

          do
          {
            v236 = v232;
            v232 = *v232;
          }

          while (v232);
          *v236 = v230;
          *v230 = 0;
          v229 = v230;
        }

        else if (v228)
        {
          LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ERROR!!: head %p, NewLocalRecords %p", v228, 0);
        }

        v228 = v230;
      }

      else
      {
        AnswerAllLocalQuestionsWithLocalAuthRecord(a1, v230, 1);
      }

LABEL_545:
      if (++v227 == 1000)
      {
        *(a1 + 12632) = v228;
        LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: m->NewLocalRecords exceeded loop limit");
        goto LABEL_549;
      }

      continue;
    }

    break;
  }

  *(a1 + 12632) = v228;
LABEL_549:
  if (*v641)
  {
    v238 = 0;
    *v641 = 0;
    do
    {
      for (jj = *(v208 + 8 * v238); jj; jj = *jj)
      {
        v240 = 100;
        while (1)
        {
          v241 = jj[5];
          if (!v241)
          {
            break;
          }

          jj[5] = *v241;
          if (*(v241 + 8) == 2)
          {
            v242 = v130[434];
            GetRRDisplayString_rdb((v241 + 8), (*(v241 + 48) + 4), (a1 + 47032));
            LogMsgWithLevel(v242, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: LocalOnlyRecord %s not ready", (a1 + 47032));
          }

          else
          {
            AnswerAllLocalQuestionsWithLocalAuthRecord(a1, v241, 1);
          }

          if (!--v240)
          {
            LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: ag->NewLocalOnlyRecords exceeded loop limit");
            break;
          }
        }
      }

      ++v238;
    }

    while (v238 != 499);
  }

  if (*(a1 + 16) || *(a1 + 141) == 2)
  {
    DiscardDeregistrations(a1);
    v243 = *(a1 + 64);
    v244 = (a1 + 19920);
    if (*(a1 + 16))
    {
      goto LABEL_1156;
    }
  }

  else
  {
    v243 = *(a1 + 64);
    v244 = (a1 + 19920);
  }

  v245 = *(a1 + 80);
  if (v245 && ((v243 - v245) & 0x80000000) != 0)
  {
    goto LABEL_1151;
  }

  *(a1 + 80) = 0;
  if ((v243 - *(a1 + 92)) < 0 && (v243 - *(a1 + 96)) < 0)
  {
    goto LABEL_1149;
  }

  v246 = *(a1 + 12656);
  if (v246)
  {
    while (!*(v246 + 16))
    {
      v246 = *v246;
      if (!v246)
      {
        goto LABEL_573;
      }
    }

    v653 = v246;
  }

  else
  {
LABEL_573:
    v653 = 0;
  }

  v261 = 0;
  v676 = 0;
  v651 = a1 + 272;
  v663 = (a1 + 28972);
  while (2)
  {
    v646 = v261;
    v262 = *(v651 + 8 * v261);
    if (v262)
    {
      while (1)
      {
        v263 = v262[2];
        if (v263)
        {
          break;
        }

LABEL_660:
        v262 = *v262;
        if (!v262)
        {
          goto LABEL_661;
        }
      }

      while (2)
      {
        v264 = v263[12];
        if (!v264)
        {
          goto LABEL_659;
        }

        v265 = *(v263 + 108);
        if (v265 >= 4 && *(v263 + 130) != 2)
        {
          goto LABEL_659;
        }

        v266 = 1000 * *(v263 + 4);
        if ((v243 - *(v263 + 22) + v266 / 50) < 0)
        {
          goto LABEL_659;
        }

        v267 = *(v264 + 56);
        v268 = v263[4];
        if (v267)
        {
          v269 = v266 / 20 - v243;
          v270 = 8;
          do
          {
            if (*v267 == v268 && (v269 + *(v267 + 8)) < 0)
            {
              *v267 = 0;
            }

            v267 += 16;
            --v270;
          }

          while (v270);
        }

        if (*(v264 + 340))
        {
          *(v264 + 208) = v243 - *(v264 + 212);
          *(v263 + 108) = v265 + 1;
          ++v244[16];
          if (!*(v264 + 340))
          {
            goto LABEL_630;
          }

LABEL_659:
          v263 = *v263;
          if (!v263)
          {
            goto LABEL_660;
          }

          continue;
        }

        break;
      }

      v271 = *(v264 + 64);
      if (v271)
      {
        if (v271 == v268)
        {
          goto LABEL_630;
        }

        v268 = -1;
      }

      *(v264 + 64) = v268;
LABEL_630:
      v272 = *(v263 + 130);
      if (v272 != 1)
      {
        v273 = *(v263 + 33);
        if (v273 == 6)
        {
          if (vorr_s8(v263[17], *&vextq_s8(*(v263 + 17), *(v263 + 17), 8uLL)))
          {
            goto LABEL_634;
          }
        }

        else if (v273 == 4 && *(v263 + 34))
        {
LABEL_634:
          v274 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
            {
              v275 = v272 == 0;
              v280 = v264 + 376;
              v281 = (v264 + 376);
              while (1)
              {
                if (!v281 || (v282 = *v281, v282 > 0x3F))
                {
LABEL_651:
                  v279 = 257;
                  goto LABEL_654;
                }

                if (!*v281)
                {
                  break;
                }

                v281 += v282 + 1;
                if (&v281[-v280] >= 256)
                {
                  goto LABEL_651;
                }
              }

              v279 = (v281 - v280 + 1);
LABEL_654:
              v283 = *(v264 + 342);
              v284 = *(v264 + 200);
              *buf = 67111427;
              *&buf[4] = 0;
              *&buf[8] = 1024;
              *&buf[10] = v275;
              *&buf[14] = 2160;
              *&buf[16] = 1752392040;
              *&buf[24] = 1045;
              *&buf[26] = 20;
              *&buf[30] = 2101;
              *&buf[32] = v263 + 132;
              *&buf[40] = 2160;
              *&buf[42] = 1752392040;
              *&buf[50] = 1040;
              *&buf[52] = v279;
              v692 = 2101;
              v693 = v264 + 376;
              v694 = 1024;
              v695 = v283;
              LOWORD(v696) = 1024;
              *(&v696 + 2) = v284;
              _os_log_impl(&_mh_execute_header, v274, OS_LOG_TYPE_INFO, "[Q%u] Sending unicast assist query (refresh %{mdns:yesno}d) - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{mdns:rrtype}d qhash %x", buf, 0x4Eu);
            }
          }

          else
          {
            v274 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
            {
              v275 = v272 == 0;
              v276 = v264 + 376;
              v277 = (v264 + 376);
              while (1)
              {
                if (!v277 || (v278 = *v277, v278 > 0x3F))
                {
LABEL_642:
                  v279 = 257;
                  goto LABEL_654;
                }

                if (!*v277)
                {
                  break;
                }

                v277 += v278 + 1;
                if (&v277[-v276] >= 256)
                {
                  goto LABEL_642;
                }
              }

              v279 = (v277 - v276 + 1);
              goto LABEL_654;
            }
          }

          *v670 = *(v264 + 340);
          *(a1 + 28962) = 0;
          *(a1 + 28964) = 0;
          v285 = putQuestion(v670, v663, a1 + 37912, (v264 + 376), *(v264 + 342), *(v264 + 344) | 0x8000u);
          mDNSSendDNSMessage(a1, v670, v285, v263[4], 0, 0, v263 + 33, 0xE914u, 0, *(v264 + 640));
          v243 = *(a1 + 64);
          *(v264 + 208) = v243;
          *(v264 + 256) = v243;
          *(v264 + 224) = 0;
          if (v243 <= 1)
          {
            v286 = 1;
          }

          else
          {
            v286 = v243;
          }

          *(v264 + 216) = v286;
          *(v264 + 64) = 0;
          *(v263 + 130) = 1;
          *(v263 + 26) = v243;
          v244 = (a1 + 19920);
          goto LABEL_659;
        }
      }

      *(v264 + 359) = 1;
      goto LABEL_659;
    }

LABEL_661:
    v261 = v646 + 1;
    if (v646 != 498)
    {
      continue;
    }

    break;
  }

  v287 = *(a1 + 208);
  if (v287)
  {
    v288 = mDNSLogCategory_Default;
    v289 = v287 + 376;
    v290 = DNSTypeName(*(v287 + 342));
    LogMsgWithLevel(v288, OS_LOG_TYPE_DEFAULT, "SendQueries ERROR m->CurrentQuestion already set: %##s (%s)", v289, v290);
  }

  v291 = *(a1 + 192);
  *(a1 + 208) = v291;
  if (!v291)
  {
    *(a1 + 208) = 0;
    v301 = *(a1 + 64) + 939524096;
    *(a1 + 92) = v301;
    goto LABEL_760;
  }

  v292 = 0;
  while (2)
  {
    if (v291 != *v650)
    {
      if (!*(v291 + 340))
      {
        v294 = *(v291 + 212);
        if (v294 >= 1 && !*(v291 + 40) && *(a1 + 64) - (v294 + *(v291 + 208)) >= 0)
        {
          if (QuestionSendsMDNSQueriesViaUnicast(v291))
          {
            *v670 = 0;
            *(a1 + 28964) = 0;
            v295 = putQuestion(v670, v663, a1 + 37912, (v291 + 376), *(v291 + 342), *(v291 + 344) | 0x8000u);
            mDNSSendDNSMessage(a1, v670, v295, *(v291 + 136), 0, 0, (v291 + 304), 0xE914u, 0, *(v291 + 640));
            v296 = 3 * *(v291 + 212);
            if (v296 >= 3600000)
            {
              v296 = 3600000;
            }

            *(v291 + 212) = v296;
            v297 = *(a1 + 64);
            *(v291 + 208) = v297;
            *(v291 + 256) = v297;
            *(v291 + 224) = 0;
            *(v291 + 64) = 0;
            if (v297 <= 1)
            {
              v297 = 1;
            }

            *(v291 + 216) = v297;
          }

          else
          {
            if (!*(v291 + 689))
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              *&buf[24] = CacheGroupForName(a1, *(v291 + 200), (v291 + 376));
              *__dst = 0;
              *&__dst[8] = __dst;
              *&__dst[16] = 0x2000000000;
              LOBYTE(v678) = 0;
              *(v291 + 689) = 1;
              v298 = *(v291 + 200);
              v299 = *(v291 + 136);
              v675[0] = _NSConcreteStackBlock;
              v675[1] = 0x40000000;
              v675[2] = __SendQueries_block_invoke;
              v675[3] = &unk_10014E0B8;
              v675[6] = v291;
              v675[7] = a1;
              v675[4] = buf;
              v675[5] = __dst;
              unicast_assist_addr_enumerate(v298, v299, v675);
              v300 = *(*&__dst[8] + 24);
              _Block_object_dispose(__dst, 8);
              _Block_object_dispose(buf, 8);
              if (v300)
              {
                goto LABEL_668;
              }

              v294 = *(v291 + 212);
            }

            *(v291 + 64) = -1;
            if (v292 <= v294)
            {
              v292 = v294;
            }
          }
        }
      }

LABEL_668:
      v293 = *(a1 + 208);
      if (v291 == v293)
      {
        v293 = *(v293 + 8);
        *(a1 + 208) = v293;
      }

      v291 = v293;
      if (!v293)
      {
        goto LABEL_691;
      }

      continue;
    }

    break;
  }

  v302 = mDNS_LoggingEnabled;
  do
  {
    if (v302)
    {
      v303 = mDNSLogCategory_Default;
      v304 = DNSTypeName(*(v291 + 342));
      LogMsgWithLevel(v303, OS_LOG_TYPE_DEFAULT, "SendQueries question loop 1: Skipping NewQuestion %##s (%s)", v291 + 376, v304);
      v302 = mDNS_LoggingEnabled;
      v291 = *(a1 + 208);
    }

    v291 = *(v291 + 8);
    *(a1 + 208) = v291;
  }

  while (v291);
LABEL_691:
  v305 = *(a1 + 192);
  *(a1 + 208) = 0;
  v301 = *(a1 + 64) + 939524096;
  *(a1 + 92) = v301;
  if (!v305)
  {
    goto LABEL_759;
  }

  while (2)
  {
    if (v305 != *v650)
    {
      if (*(v305 + 340) || QuestionSendsMDNSQueriesViaUnicast(v305))
      {
        goto LABEL_737;
      }

      if (*(v305 + 64))
      {
        v306 = *(a1 + 64);
        v307 = *(v305 + 208);
        goto LABEL_697;
      }

      v310 = *(v305 + 212);
      if (v310 < 1 || *(v305 + 40) || v310 > v292)
      {
        goto LABEL_737;
      }

      v311 = *(a1 + 64);
      v312 = *(v305 + 208) + v310;
      if ((v311 + v310 / 0xAu - v312) >= 0)
      {
        goto LABEL_710;
      }

      if ((v311 + (v310 >> 1) - v312) < 0)
      {
LABEL_737:
        SetNextQueryTime(a1, v305);
        v305 = *(v305 + 8);
        if (!v305)
        {
          break;
        }

        continue;
      }

      v313 = (v305 + 376);
      v314 = (v305 + 376);
      while (1)
      {
        if (!v314 || (v315 = *v314, v315 > 0x3F))
        {
LABEL_718:
          v316 = 261;
          goto LABEL_749;
        }

        if (!*v314)
        {
          break;
        }

        v314 += v315 + 1;
        if (v314 - v313 >= 256)
        {
          goto LABEL_718;
        }
      }

      v316 = (v314 - v313 + 1) + 4;
LABEL_749:
      v328 = CacheGroupForName(a1, *(v305 + 200), v313);
      if (v328)
      {
        for (kk = v328[2]; kk; kk = *kk)
        {
          if (*(kk + 20) <= 0x400u && SameNameRecordAnswersQuestion((kk + 8), 0, v305))
          {
            v330 = *(a1 + 64);
            if (*(kk + 80) - v330 + ((1000 * *(kk + 16)) >> 1) >= 0 && *(kk + 88) - (v330 + *(v305 + 212)) >= 1)
            {
              v316 += *(kk + 22) + 12;
              if (v316 > 0x1FF)
              {
                goto LABEL_737;
              }
            }
          }
        }
      }

LABEL_710:
      v307 = *(v305 + 208);
      v306 = *(a1 + 64);
      if (v307 == v306)
      {
        goto LABEL_737;
      }

LABEL_697:
      v308 = *(v305 + 212);
      if (v306 - v307 - v308 / 2 >= 0)
      {
        if (!*(v305 + 351) || *(v305 + 228) < *(v305 + 351) || *(v305 + 359) || (*(v305 + 327) & 4) != 0 && v308 == 334)
        {
          *(v305 + 64) = -1;
          v309 = 3 * v308;
          *(v305 + 212) = 3 * v308;
          goto LABEL_704;
        }

        *(v305 + 64) = 0;
        *(v305 + 208) = v306;
        *(v305 + 212) = 3600000;
        *(v305 + 352) = 0;
        if (mDNS_LoggingEnabled == 1)
        {
          v317 = mDNSLogCategory_Default;
          v318 = DNSTypeName(*(v305 + 342));
          LogMsgWithLevel(v317, OS_LOG_TYPE_DEFAULT, "SendQueries: (%s) %##s reached threshold of %d answers", v318, v305 + 376, *(v305 + 351));
          v309 = *(v305 + 212);
LABEL_704:
          if (v309 > 3600000)
          {
            *(v305 + 212) = 3600000;
            goto LABEL_723;
          }
        }

        else
        {
          v309 = 3600000;
        }

        if (*(v305 + 340))
        {
          goto LABEL_723;
        }

        v326 = *(v305 + 136);
        if (!v326 || *(v305 + 228) || v309 != 9018 || *(v305 + 352))
        {
          goto LABEL_723;
        }

        v327 = *(v305 + 342);
        if (v327 == 28 || v327 == 1)
        {
          if (CacheHasAddressTypeForName(a1, (v305 + 376), *(v305 + 200)))
          {
            goto LABEL_723;
          }

          v326 = *(v305 + 136);
        }

        ReconfirmAntecedents(a1, (v305 + 376), *(v305 + 200), v326, 0);
      }

LABEL_723:
      v319 = *(v305 + 64);
      *(v305 + 358) = v319 == -1;
      if (v319 == -1)
      {
        if (v653)
        {
          v321 = *(v305 + 136);
          if (!v321)
          {
            v321 = *(v653 + 3552);
          }
        }

        else
        {
          v321 = 0;
        }

        *(v305 + 64) = v321;
        v320 = *(a1 + 64);
        *(v305 + 208) = v320;
      }

      else
      {
        v320 = *(a1 + 64);
      }

      v322 = *(v305 + 56);
      if (v322)
      {
        v323 = *(v305 + 212) / 2 - v320;
        v324 = (v322 + 8);
        v325 = 8;
        do
        {
          if (v323 + *v324 < 0)
          {
            *(v324 - 1) = 0;
          }

          v324 += 4;
          --v325;
        }

        while (v325);
      }

      *(v305 + 256) = v320;
      *(v305 + 224) = 0;
      if (*(v305 + 352))
      {
        --*(v305 + 352);
      }

      goto LABEL_737;
    }

    break;
  }

  v301 = *(a1 + 64) + 939524096;
LABEL_759:
  v244 = (a1 + 19920);
LABEL_760:
  *(a1 + 96) = v301;
  v331 = *(a1 + 12640);
  v332 = v653;
  if (v331)
  {
    v333 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v331 + 8), (*(v331 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v333, OS_LOG_TYPE_DEFAULT, "SendQueries ERROR m->CurrentRecord already set %s", (a1 + 47032));
  }

  v334 = *v661;
  v335 = (a1 + 200);
  if (*v661)
  {
    while (2)
    {
      *(a1 + 12640) = *v334;
      if (!v334[4] && !*(v334 + 122) && !IsLocalDomain(v334[5]) || *(v334 + 8) != 2 || *(v334 + 6) == 41)
      {
        goto LABEL_824;
      }

      v336 = *(a1 + 64);
      if (v336 - (*(v334 + 71) + *(v334 + 70)) >= 0)
      {
        v337 = *(v334 + 190);
        if (*(v334 + 190))
        {
          v338 = *(v334 + 36);
          if (v338 == 6)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v342 = mDNSLogCategory_Default;
              v343 = (a1 + 12656);
              while (1)
              {
                v343 = *v343;
                if (!v343)
                {
                  break;
                }

                v344 = v343;
                if (v343[444] == v334[4])
                {
                  goto LABEL_793;
                }
              }

              v344 = 0;
LABEL_793:
              if (v343)
              {
                v346 = v344 + 3606;
              }

              else
              {
                v346 = 0;
              }

              GetRRDisplayString_rdb(v334 + 8, (v334[6] + 4), (a1 + 47032));
              LogMsgWithLevel(v342, OS_LOG_TYPE_DEFAULT, "SendQueries NDP Probe %d %s %s", v337, v346, (a1 + 47032));
              v335 = (a1 + 200);
              v244 = (a1 + 19920);
            }

            SendNDP(a1, 135, 0, v334, &zerov6Addr, 0, v334 + 148, v334 + 132);
          }

          else if (v338 == 4)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v339 = mDNSLogCategory_Default;
              v340 = (a1 + 12656);
              while (1)
              {
                v340 = *v340;
                if (!v340)
                {
                  break;
                }

                v341 = v340;
                if (v340[444] == v334[4])
                {
                  goto LABEL_787;
                }
              }

              v341 = 0;
LABEL_787:
              if (v340)
              {
                v345 = v341 + 3606;
              }

              else
              {
                v345 = 0;
              }

              GetRRDisplayString_rdb(v334 + 8, (v334[6] + 4), (a1 + 47032));
              LogMsgWithLevel(v339, OS_LOG_TYPE_DEFAULT, "SendQueries ARP Probe %d %s %s", v337, v345, (a1 + 47032));
              v335 = (a1 + 200);
              v244 = (a1 + 19920);
            }

            SendARP(a1, 1, v334, &zerov4Addr, &zeroEthAddr, v334 + 148, v334 + 132);
          }

          v332 = v653;
          if (v653 && !*(v334 + 126))
          {
            v347 = v334[4];
            if (!v347)
            {
              v347 = *(v653 + 3552);
            }
          }

          else
          {
            v347 = 0;
          }

          v334[28] = v347;
          *(v334 + 71) = *(a1 + 64);
          v348 = *(v334 + 190);
          if (v348 >= 3)
          {
            LOBYTE(v348) = 3;
          }

          *(v334 + 190) = v348 - 1;
          SetNextAnnounceProbeTime(a1, v334);
          if (!*(v334 + 190))
          {
            for (mm = *(a1 + 12624); mm; mm = *mm)
            {
              if (*(mm + 8) == 2 && mm[4] == v334[4])
              {
                v350 = *(v334 + 8);
                v30 = v350 > 0x12;
                v351 = (1 << v350) & 0x50006;
                v352 = v30 || v351 == 0;
                if (!v352 && *(mm + 6) == *(v334 + 6) && resource_records_have_same_dnssec_rr_category(mm[8], v334[8]) && *(mm + 6) == *(v334 + 6) && *(mm + 7) == *(v334 + 7) && *(mm + 10) == *(v334 + 10) && *(mm + 7) == *(v334 + 7) && SameRDataBody((mm + 1), (v334[6] + 4), SameDomainName) && SameDomainNameBytes(mm[5], v334[5]))
                {
                  *(mm + 190) = 0;
                }
              }
            }

            v244 = (a1 + 19920);
            v332 = v653;
            if (!*(v334 + 188))
            {
              AcknowledgeRecord(a1, v334);
            }
          }

LABEL_824:
          v334 = *(a1 + 12640);
          if (!v334)
          {
            goto LABEL_828;
          }

          continue;
        }

        v332 = v653;
        if (!*(v334 + 188))
        {
          AcknowledgeRecord(a1, v334);
          v336 = *(a1 + 64);
        }

        *(v334 + 8) = 16;
        *(v334 + 70) = 500;
        *(v334 + 71) = v336 - 500;
      }

      break;
    }

    SetNextAnnounceProbeTime(a1, v334);
    goto LABEL_824;
  }

LABEL_828:
  v353 = *(a1 + 12624);
  *(a1 + 12640) = v353;
  v130 = &unk_100178000;
  v354 = a1 + 28960;
  if (v353)
  {
    do
    {
      v355 = *v353;
      *(a1 + 12640) = *v353;
      if (*(v353 + 8) == 2 && !*(v353 + 190) && !*(v353 + 188))
      {
        AcknowledgeRecord(a1, v353);
        v355 = *(a1 + 12640);
      }

      v353 = v355;
    }

    while (v355);
  }

  if (!v332)
  {
    goto LABEL_1100;
  }

  v635 = 0;
  v634 = 0;
  v639 = a1 + 30412;
  v659 = (a1 + 47032);
  while (2)
  {
    v654 = v332;
    v647 = mDNS_McastTracingEnabled;
    if (mDNS_McastTracingEnabled)
    {
      v356 = 20;
    }

    else
    {
      v356 = 0;
    }

    v673 = 0;
    v674 = (a1 + 28972);
    *v354 = 0;
    *(v354 + 4) = 0;
    v357 = v676;
    if (v676)
    {
      LOBYTE(v643) = 0;
      goto LABEL_841;
    }

    v672 = &v676;
    v633 = v356;
    v671 = v356;
    v363 = *(a1 + 192);
    if (!v363)
    {
      LOBYTE(v643) = 0;
      v364 = v654;
      goto LABEL_919;
    }

    v643 = 0;
    v364 = v654;
    while (v363 != *v335)
    {
      if (*(v363 + 340) || *(v363 + 64) != *(v364 + 3552))
      {
        goto LABEL_894;
      }

      if (!mDNSPlatformValidQuestionForInterface(v363, v364))
      {
        goto LABEL_891;
      }

      v365 = *(v364 + 3552);
      if (DPCFeatureEnabled_sOnce != -1)
      {
        dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
      }

      if (DPCFeatureEnabled_sEnabled && _DPCQuestionGetSubscriber(*(v363 + 192), v365))
      {
        goto LABEL_891;
      }

      v366 = *(v363 + 56);
      if (v366)
      {
        v367 = *(v364 + 17) == 0;
        v368 = *(v364 + 18) == 0;
        v369 = 8;
        while (1)
        {
          if (*v366 == *(v364 + 3552))
          {
            v370 = *(v366 + 12);
            v371 = v370 == 6 || v368;
            if (v370 == 4)
            {
              v367 = 1;
            }

            else
            {
              v368 = v371;
            }

            if (v367 && v368)
            {
              break;
            }
          }

          v366 += 16;
          if (!--v369)
          {
            goto LABEL_873;
          }
        }

        ++*v244;
      }

      else
      {
LABEL_873:
        if (!BuildQuestion(a1, v364, v354, &v674, v363, &v672, &v671))
        {
          goto LABEL_894;
        }

        if (!*(v363 + 40) && !*(v363 + 340))
        {
          if (!*(v363 + 264) || *(v363 + 268))
          {
            v372 = *(a1 + 64);
            if (v372 <= 1)
            {
              v372 = 1;
            }

            *(v363 + 264) = v372;
            *(v363 + 268) = 0;
          }

          ++*(v363 + 260);
        }
      }

      if (!*(v363 + 356))
      {
        goto LABEL_888;
      }

      v373 = *(v363 + 136);
      v374 = (v363 + 376);
      if ((v373 == 0 || v373 >= 0xFFFFFFFFFFFFFFFBLL) && ((1 << (v373 + 5)) & 0x2D) != 0)
      {
        v130 = &unk_100178000;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Invalid InterfaceID %p for question %##s", *(v363 + 136), v363 + 376);
        goto LABEL_887;
      }

      v377 = *v374;
      if (v377 < 2)
      {
LABEL_909:
        v130 = &unk_100178000;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Malformed WakeOnResolve name %##s", v363 + 376, v626);
        goto LABEL_910;
      }

      v378 = 0;
      v379 = (v363 + 377);
      v380 = 1;
      while (2)
      {
        v382 = *v379++;
        v381 = v382;
        if (v382 == 58)
        {
          v378 = (v378 + 1);
LABEL_908:
          if (v377 == ++v380)
          {
            goto LABEL_909;
          }

          continue;
        }

        break;
      }

      if (v381 != 64)
      {
        goto LABEL_908;
      }

      memset(__dst, 0, 18);
      memset(buf, 0, 47);
      if (v378 == 5)
      {
        if (v380 < 0x13)
        {
          v383 = v377 - v380;
          if (v383 < 47)
          {
            memcpy(__dst, (v363 + 377), (v380 - 1));
            __dst[(v380 - 1)] = 0;
            memcpy(buf, &v374[v380 + 1], v383);
            buf[v383] = 0;
            ++v244[18];
            mDNSPlatformSendWakeupPacket(v373, __dst, buf, 3 - *(v363 + 356));
            v130 = &unk_100178000;
          }

          else
          {
            v130 = &unk_100178000;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Malformed IP address %##s, length %d", v363 + 376, v377 - v380);
          }
        }

        else
        {
          v130 = &unk_100178000;
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Malformed Ethernet address %##s, length %d", v363 + 376, (v380 - 1));
        }
      }

      else
      {
        v130 = &unk_100178000;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSSendWakeOnResolve: ERROR!! Malformed Ethernet address %##s, cnt %d", v363 + 376, v378);
      }

LABEL_910:
      v335 = (a1 + 200);
LABEL_887:
      --*(v363 + 356);
      v364 = v654;
LABEL_888:
      v375 = v643;
      if (*(v363 + 640))
      {
        v375 = 1;
      }

      v643 = v375;
LABEL_891:
      if (*(v363 + 136) || !*(v363 + 358))
      {
        v376 = 0;
      }

      else
      {
        v376 = *v364;
        if (*v364)
        {
          while (!*(v376 + 16))
          {
            v376 = *v376;
            if (!v376)
            {
              goto LABEL_893;
            }
          }

          v376 = v376[444];
        }
      }

LABEL_893:
      *(v363 + 64) = v376;
LABEL_894:
      v363 = *(v363 + 8);
      if (v363)
      {
        continue;
      }

      break;
    }

LABEL_919:
    if (DPCFeatureEnabled_sOnce != -1)
    {
      dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
    }

    if (DPCFeatureEnabled_sEnabled)
    {
      v384 = v635 == 0;
    }

    else
    {
      v384 = 0;
    }

    if (v384)
    {
      if (*(v354 + 4))
      {
        v385 = 0;
        v386 = v674;
        v387 = (a1 + 28972);
        while (1)
        {
          bzero(buf, 0x2B8uLL);
          Question = getQuestion(v354, v387, v386, 0, buf);
          if (!Question)
          {
LABEL_937:
            v364 = v654;
            qword_1001624D8 = *(v654 + 3552);
            byte_1001625F8 = 2;
            BuildQuestion(a1, v654, v354, &v674, &DPCBrowse, &v672, &v671);
            qword_1001624D8 = 0;
            v635 = 1;
            goto LABEL_939;
          }

          v387 = Question;
          v389 = v705 & 0x7FFF;
          v705 &= ~0x8000u;
          v390 = v704 == word_1001625EE && v389 == word_1001625F0;
          if (v390 && v703 == dword_100162560 && SameDomainNameBytes(v709, byte_100162610))
          {
            break;
          }

          if (++v385 >= *(v354 + 4))
          {
            goto LABEL_937;
          }
        }

        v635 = 1;
        v364 = v654;
      }

      else
      {
        v635 = 0;
      }
    }

LABEL_939:
    v391 = *v661;
    if (!*v661)
    {
      v414 = v633;
      goto LABEL_1019;
    }

    v636 = 0;
    v392 = 0;
    v632 = v671;
    while (2)
    {
      if (!*(v391 + 194))
      {
        v393 = *(v364 + 3552);
        if (*(v391 + 224) == v393 && *(v391 + 12) != 41)
        {
          if (mDNSPlatformValidRecordForInterface(v391, v393))
          {
            v631 = v392;
            if (*(v391 + 190) < 2u)
            {
              v394 = 0;
              v395 = (a1 + 28972);
            }

            else
            {
              v394 = *(a1 + 12);
              v395 = (a1 + 28972);
              if (*(a1 + 12))
              {
                if (*(v364 + 3677))
                {
                  v394 = 0x8000;
                }

                else
                {
                  v394 = 0;
                }
              }
            }

            v397 = *(v354 + 4);
            v398 = 1440;
            if (!*(v354 + 4))
            {
              v398 = 8940;
            }

            v399 = &v395[v398];
            v400 = *(v391 + 14) | v394;
            bzero(buf, 0x2B8uLL);
            if (v397)
            {
              v401 = 0;
              while (1)
              {
                v395 = getQuestion(v354, v395, v399, 0, buf);
                if (v395)
                {
                  if (v704 == 255 && v705 == v400 && v703 == *(v391 + 24) && SameDomainNameBytes(v709, *(v391 + 40)))
                  {
                    break;
                  }
                }

                v402 = 0;
                if (v395)
                {
                  if (++v401 < *(v354 + 4))
                  {
                    continue;
                  }
                }

                goto LABEL_972;
              }

              v402 = 1;
            }

            else
            {
              v402 = 0;
            }

LABEL_972:
            v403 = mDNSGetTSRForAuthRecordNamed(*v661, *(v391 + 40), *(v391 + 24));
            v404 = UnsafeBufferPointer(v391, v403, &v673);
            v405 = v636;
            if (v636 | v647)
            {
              v406 = 14;
            }

            else
            {
              v406 = 25;
            }

            v407 = v632 + v406;
            if (v404)
            {
              v408 = v407;
            }

            else
            {
              v408 = v632;
            }

            if (v404)
            {
              v405 = v636 + 1;
            }

            v636 = v405;
            for (nn = *v661; nn; nn = *nn)
            {
              if (AddRecordInProbe(v391, v403 != 0, nn, *(v654 + 3552)))
              {
                v408 += *(nn + 11) + 12;
              }
            }

            if (v402)
            {
              v335 = (a1 + 200);
              v244 = (a1 + 19920);
              if (&v674[v408] >= v399)
              {
                goto LABEL_1002;
              }

              goto LABEL_989;
            }

            v410 = putQuestion(v354, v674, &v399[-v408], *(v391 + 40), 255, v400);
            v244 = (a1 + 19920);
            if (v410)
            {
              v674 = v410;
              v335 = (a1 + 200);
LABEL_989:
              v411 = *v661;
              if (*v661)
              {
                v412 = v403 != 0;
                do
                {
                  if (AddRecordInProbe(v391, v412, v411, *(v654 + 3552)))
                  {
                    if (*(v391 + 32))
                    {
                      v413 = 0;
                    }

                    else
                    {
                      v413 = v654;
                      while (1)
                      {
                        v413 = *v413;
                        if (!v413)
                        {
                          break;
                        }

                        if (*(v413 + 16))
                        {
                          v413 = *(v413 + 3552);
                          break;
                        }
                      }
                    }

                    v411[28] = v413;
                    *(v411 + 194) = 1;
                  }

                  v411 = *v411;
                }

                while (v411);
              }

              v632 = v408;
LABEL_1002:
              v130 = &unk_100178000;
              v364 = v654;
              v392 = v631;
            }

            else
            {
              v392 = v631 + 1;
              v130 = &unk_100178000;
              v335 = (a1 + 200);
              v364 = v654;
            }
          }

          else
          {
            if (*(v391 + 32))
            {
              v396 = 0;
            }

            else
            {
              v396 = *v364;
              if (*v364)
              {
                while (!*(v396 + 16))
                {
                  v396 = *v396;
                  if (!v396)
                  {
                    goto LABEL_952;
                  }
                }

                v396 = v396[444];
              }
            }

LABEL_952:
            *(v391 + 224) = v396;
            *(v391 + 194) = 0;
          }
        }
      }

      v391 = *v391;
      if (v391)
      {
        continue;
      }

      break;
    }

    v414 = v633;
    if (v392)
    {
      v415 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v416 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v416 = 1;
      }

      LOWORD(v391) = v636;
      if (v416)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_1018;
        }
      }

      else
      {
        v415 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
        {
LABEL_1018:
          v418 = *(v364 + 3552);
          *buf = 67109376;
          *&buf[4] = v392;
          *&buf[8] = 2048;
          *&buf[10] = v418;
          _os_log_impl(&_mh_execute_header, v415, OS_LOG_TYPE_DEBUG, "SendQueries: %u questions will be sent in a later request on InterfaceID= %p", buf, 0x12u);
        }
      }
    }

    else
    {
      LOWORD(v391) = v636;
    }

LABEL_1019:
    v357 = v676;
    if (v676)
    {
      v356 = v414 + 14 * v391;
      if (v391)
      {
        v358 = 11;
        goto LABEL_842;
      }

LABEL_841:
      v358 = 0;
LABEL_842:
      if (v647)
      {
        v358 = 0;
      }

      v359 = v639 - (v358 + v356);
      v360 = v674;
      while (1)
      {
        v361 = PutResourceRecordTTLWithLimit(v354, v360, (v354 + 6), v357 + 8, *(v357 + 16) - (*(a1 + 64) - *(v357 + 80)) / 0x3E8u, v359);
        if (!v361)
        {
          break;
        }

        v674 = v361;
        v676 = *(v357 + 72);
        v362 = v676;
        *(v357 + 72) = 0;
        v360 = v361;
        v357 = v362;
        if (!v362)
        {
          v360 = v361;
          goto LABEL_1023;
        }
      }

      if (*(v354 + 4) >= 2u)
      {
        LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "SendQueries:   Put %d answers; No more space for known answers", *(v354 + 6));
      }

      *(v354 + 2) |= 2u;
    }

    else
    {
      v360 = v674;
    }

LABEL_1023:
    v419 = *v661;
    if (*v661)
    {
      LOWORD(v420) = 0;
      v421 = v673;
      do
      {
        if (*(v419 + 194))
        {
          v422 = 30412;
          if (*(v354 + 4) <= 1u)
          {
            v422 = 37912;
          }

          v423 = PutResourceRecordTTLWithLimit(v354, v360, (v354 + 8), (v419 + 1), *(v419 + 4), a1 + v422);
          *(v419 + 194) = 0;
          if (!v423)
          {
            v424 = mDNSLogCategory_Default;
            GetRRDisplayString_rdb(v419 + 8, (v419[6] + 4), v659);
            LogMsgWithLevel(v424, OS_LOG_TYPE_DEFAULT, "SendQueries:   How did we fail to have space for the Update record %s", v659);
            v423 = v360;
          }

          v425 = UnsafeBufferPointer(*v661, v419, &v673);
          if (v425)
          {
            v426 = v425;
            v427 = v419[5];
            v428 = *(v354 + 6);
            v429 = *(v354 + 10);
            v430 = *(v354 + 8);
            v431 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
            if (!v431)
            {
              __break(1u);
            }

            *(v426 + 4) = v428 + v429 + v430 - 1;
            v431[1] = v426;
            v431[2] = v427;
            LOWORD(v420) = v420 + 1;
            *v431 = v421;
            v673 = v431;
            v421 = v431;
            v360 = v423;
            v354 = a1 + 28960;
            v244 = (a1 + 19920);
          }

          else
          {
            v360 = v423;
          }
        }

        v419 = *v419;
      }

      while (v419);
      v420 = v420;
      v335 = (a1 + 200);
    }

    else
    {
      v420 = 0;
    }

    v674 = v360;
    v130 = &unk_100178000;
    if (v360 <= v663)
    {
      v434 = v654;
      do
      {
        v434 = *v434;
      }

      while (v434 && !*(v434 + 16));
      v635 = 0;
      goto LABEL_1094;
    }

    v432 = v673;
    if (v647 || v673)
    {
      bzero(buf, 0x498uLL);
      buf[8] = 32;
      strcpy(&buf[12], ")");
      *&buf[16] = 4500;
      v715 = 264;
      *&buf[40] = v714;
      *&buf[48] = &v715;
      v706 = 0;
      v707 = 0;
      v696 = 0u;
      v697 = 0u;
      v698 = 0u;
      v699 = 0u;
      v700 = 0u;
      v701 = 0u;
      v702 = 0;
      v708 = v714;
      v710 = 0;
      v712 = 0;
      v713 = 0;
      v711 = 0;
      v714[0] = 0;
      memset(v709, 0, 217);
      *&buf[14] = 1440;
      *&buf[22] = 0;
      if (v647)
      {
        v717 = *(a1 + 12676);
        v718 = -1413927278;
        *&buf[20] = 1572888;
        v716 = 392681;
        v435 = 48;
        v436 = 1;
        if (v432)
        {
          goto LABEL_1047;
        }

LABEL_1049:
        v440 = 4500;
      }

      else
      {
        v436 = 0;
        v435 = 24;
        if (!v432)
        {
          goto LABEL_1049;
        }

LABEL_1047:
        *&buf[20] = v435;
        *&buf[22] = v435;
        v437 = v432[1];
        v438 = &v716 + 6 * v436;
        v438[2] = v437[1];
        *(v438 + 6) = *(v437 + 4);
        v439 = *v437;
        *v438 = 720362;
        v438[1] = v439;
        v673 = *v432;
        free(v432);
        v440 = *&buf[16];
      }

      v433 = PutResourceRecordTTLWithLimit(v354, v360, (v354 + 10), &buf[8], v440, a1 + 37912);
      v674 = v433;
      if (v433 && v673)
      {
        v433 = AddTSRROptsToMessage(&v673, v354, v360 + 9, v433, a1 + 37912);
        v674 = v433;
      }

      if (!v433)
      {
        v441 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            if (v647)
            {
              v442 = "TRACER";
            }

            else
            {
              v442 = "";
            }

LABEL_1064:
            v443 = *(v354 + 4);
            v444 = *(v354 + 6);
            v445 = *(a1 + 28968);
            v637 = *(a1 + 28970);
            GetRRDisplayString_rdb(&buf[8], (*&buf[48] + 4), v659);
            *__dst = 136316930;
            *&__dst[4] = "";
            *&__dst[12] = 2080;
            *&__dst[14] = v442;
            *&__dst[22] = 1024;
            v678 = v420;
            v679 = 1024;
            *v680 = v443;
            *&v680[4] = 1024;
            *&v680[6] = v444;
            LOWORD(v681) = 1024;
            *(&v681 + 2) = v445;
            v354 = a1 + 28960;
            HIWORD(v681) = 1024;
            LODWORD(v682) = v637;
            WORD2(v682) = 2080;
            *(&v682 + 6) = a1 + 47032;
            v244 = (a1 + 19920);
            _os_log_impl(&_mh_execute_header, v441, OS_LOG_TYPE_ERROR, "SendQueries: How did we fail to have space for %s %s TSR(%d) OPT record (%d/%d/%d/%d) %s", __dst, 0x3Eu);
          }
        }

        else
        {
          v441 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            if (v647)
            {
              v442 = "TRACER";
            }

            else
            {
              v442 = "";
            }

            goto LABEL_1064;
          }
        }
      }

      if (v433 > v639)
      {
        v446 = *(v354 + 4);
        if (v446 != 1 || *(v354 + 6) || *(v354 + 8) != 1 || *(v354 + 10) != 1)
        {
          v447 = mDNSLogCategory_mDNS;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
            {
              if (v647)
              {
                v448 = "TRACER";
              }

              else
              {
                v448 = "";
              }

LABEL_1080:
              v449 = *(v354 + 6);
              v638 = *(a1 + 28968);
              v648 = *(a1 + 28970);
              GetRRDisplayString_rdb(&buf[8], (*&buf[48] + 4), v659);
              *__dst = 136317698;
              *&__dst[4] = "";
              *&__dst[12] = 2080;
              *&__dst[14] = v448;
              *&__dst[22] = 1024;
              v678 = v420;
              v679 = 2048;
              *v680 = a1 + 28972;
              *&v680[8] = 2048;
              v681 = a1 + 30412;
              LOWORD(v682) = 2048;
              *(&v682 + 2) = v433;
              WORD5(v682) = 1024;
              HIDWORD(v682) = v446;
              v683 = 1024;
              v684 = v449;
              v685 = 1024;
              v686 = v638;
              v354 = a1 + 28960;
              v687 = 1024;
              v688 = v648;
              v689 = 2080;
              v690 = a1 + 47032;
              v244 = (a1 + 19920);
              _os_log_impl(&_mh_execute_header, v447, OS_LOG_TYPE_ERROR, "SendQueries: Why did we generate oversized packet with %s %s TSR(%d) OPT record %p %p %p (%d/%d/%d/%d) %s", __dst, 0x5Cu);
            }
          }

          else
          {
            v447 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
            {
              if (v647)
              {
                v448 = "TRACER";
              }

              else
              {
                v448 = "";
              }

              goto LABEL_1080;
            }
          }
        }
      }

      v335 = (a1 + 200);
      goto LABEL_1082;
    }

    v433 = v360;
LABEL_1082:
    v434 = v654;
    if ((*(v354 + 2) & 2) != 0 && *(v354 + 4) >= 2u)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendQueries: Should not have more than one question (%d) in a truncated packet", *(v354 + 4));
    }

    if (*(v654 + 17))
    {
      mDNSSendDNSMessage(a1, v354, v433, *(v654 + 3552), 0, 0, AllDNSLinkGroup_v4, 0xE914u, 0, v643);
    }

    if (*(v654 + 18))
    {
      mDNSSendDNSMessage(a1, v354, v674, *(v654 + 3552), 0, 0, &AllDNSLinkGroup_v6, 0xE914u, 0, v643);
    }

    v130 = &unk_100178000;
    if (!*(a1 + 80))
    {
      v450 = *(a1 + 64) + 100;
      if (v450 <= 1)
      {
        v450 = 1;
      }

      *(a1 + 80) = v450;
    }

    if (++v634 >= 1000)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendQueries exceeded loop limit %d: giving up", v634);
      break;
    }

LABEL_1094:
    v451 = v434;
    v452 = v673;
    if (v673)
    {
      do
      {
        v453 = *v452;
        free(v452);
        v452 = v453;
      }

      while (v453);
    }

    v332 = v451;
    if (v451)
    {
      continue;
    }

    break;
  }

LABEL_1100:
  for (i1 = *v661; i1; i1 = *i1)
  {
    v455 = i1[28];
    if (v455)
    {
      if ((*(i1 + 43) & 0xFFFFFFFE) != 4 && *(i1 + 6) != 41 && mDNS_LoggingEnabled != 0)
      {
        v457 = v130[434];
        v458 = i1[4];
        GetRRDisplayString_rdb(i1 + 8, (i1[6] + 4), (a1 + 47032));
        LogMsgWithLevel(v457, OS_LOG_TYPE_DEFAULT, "SendQueries: No active interface %d to send probe: %d %s", v455, v458, (a1 + 47032));
      }

      i1[28] = 0;
    }
  }

  for (i2 = 0; i2 != 499; ++i2)
  {
    for (i3 = *(v651 + 8 * i2); i3; i3 = *i3)
    {
      for (i4 = i3[2]; i4; i4 = *i4)
      {
        v462 = *(i4 + 96);
        if (v462)
        {
          v463 = *(i4 + 108);
          if (v463 <= 3)
          {
            v464 = *(a1 + 64);
            v465 = 1374389535000 * *(i4 + 16);
            if ((v464 - *(i4 + 88) + (v465 >> 36) + (v465 >> 63)) >= 0)
            {
              if (*(i4 + 104) != v464)
              {
                *(i4 + 108) = v463 + 1;
              }

              *(v462 + 64) = 0;
              SetNextCacheCheckTimeForRecord(a1, i4);
            }
          }
        }
      }
    }
  }

  for (i5 = *(a1 + 192); i5; i5 = *(i5 + 8))
  {
    v467 = *(i5 + 64);
    if (v467)
    {
      v468 = (a1 + 200);
      do
      {
        v469 = *v468;
        v468 = (*v468 + 8);
        if (v469)
        {
          v470 = v469 == i5;
        }

        else
        {
          v470 = 1;
        }
      }

      while (!v470);
      v471 = *(i5 + 136);
      if (v471 != -5 && mDNS_LoggingEnabled != 0)
      {
        v473 = v130[434];
        if (v469)
        {
          v474 = "new";
        }

        else
        {
          v474 = "old";
        }

        v475 = DNSTypeName(*(i5 + 342));
        v130 = &unk_100178000;
        LogMsgWithLevel(v473, OS_LOG_TYPE_DEFAULT, "SendQueries: No active interface %d to send %s question: %d %##s (%s)", v467, v474, v471, i5 + 376, v475);
      }

      *(i5 + 64) = 0;
    }

    *(i5 + 359) = 0;
  }

  v243 = *(a1 + 64);
  v476 = *(a1 + 92);
  if ((v243 - v476) >= 0)
  {
    LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: SendQueries didn't send all its queries (%d - %d = %d) will try again in one second", v243, *(a1 + 92), v243 - v476);
    v243 = *(a1 + 64);
    *(a1 + 92) = v243 + 1000;
    v477 = *(a1 + 192);
    if (v477)
    {
      do
      {
        if (v477 == *v650)
        {
          break;
        }

        v478 = *(v477 + 212);
        if (v478 >= 1 && !*(v477 + 40) && *(a1 + 64) - (v478 + *(v477 + 208)) >= 0)
        {
          v479 = v130[434];
          v480 = DNSTypeName(*(v477 + 342));
          LogMsgWithLevel(v479, OS_LOG_TYPE_DEFAULT, "mDNS_Execute: SendQueries didn't send %##s (%s)", v477 + 376, v480);
        }

        v477 = *(v477 + 8);
      }

      while (v477);
      v243 = *(a1 + 64);
    }
  }

LABEL_1149:
  v481 = *(a1 + 96);
  if ((v243 - v481) >= 0)
  {
    LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: SendQueries didn't send all its probes (%d - %d = %d) will try again in one second", v243, *(a1 + 96), v243 - v481);
    v243 = *(a1 + 64);
    *(a1 + 96) = v243 + 1000;
  }

LABEL_1151:
  v482 = *(a1 + 84);
  if (!v482 || ((v243 - v482) & 0x80000000) == 0)
  {
    *(a1 + 84) = 0;
    if ((v243 - *(a1 + 100)) >= 0)
    {
      SendResponses(a1);
      v243 = *(a1 + 64);
      if ((v243 - *(a1 + 100)) >= 0)
      {
        LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "mDNS_Execute: SendResponses didn't send all its responses; will try again in one second");
        v243 = *(a1 + 64);
        *(a1 + 100) = v243 + 1000;
      }
    }
  }

LABEL_1156:
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  v483 = *(a1 + 184);
  if (v483 && ((v243 - v483) & 0x80000000) == 0)
  {
    *(a1 + 184) = v243 + 939524096;
    TimeoutQuestions_internal(a1, *(a1 + 192), 0);
    TimeoutQuestions_internal(a1, *(a1 + 216), -2);
    v243 = *(a1 + 64);
  }

  v484 = *(a1 + 12684);
  if (v484 && ((v243 - v484) & 0x80000000) == 0)
  {
    *(a1 + 12684) = 0;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "UpdateAllSRVRecords %d", *(a1 + 141));
    }

    v485 = *(a1 + 12640);
    if (v485)
    {
      v486 = v130[434];
      GetRRDisplayString_rdb((v485 + 8), (*(v485 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v486, OS_LOG_TYPE_DEFAULT, "UpdateAllSRVRecords ERROR m->CurrentRecord already set %s", (a1 + 47032));
    }

    v487 = *(a1 + 12616);
    *(a1 + 12640) = v487;
    if (v487)
    {
      do
      {
        v488 = *v487;
        *(a1 + 12640) = *v487;
        if (!*(v487 + 32))
        {
          if (!*(v487 + 122) && !IsLocalDomain(*(v487 + 40)) && *(v487 + 12) == 33)
          {
            UpdateOneSRVRecord(a1, v487);
          }

          v488 = *(a1 + 12640);
        }

        v487 = v488;
      }

      while (v488);
    }

    v243 = *(a1 + 64);
  }

  if ((v243 - *(a1 + 104)) < 0)
  {
    goto LABEL_1285;
  }

  v489 = *(a1 + 12720);
  if (v489 == 10)
  {
    goto LABEL_1182;
  }

  if (v489 == 172)
  {
    if ((*(a1 + 12721) & 0xF0) == 0x10)
    {
      goto LABEL_1182;
    }

LABEL_1179:
    v490 = *(a1 + 12720);
    v491 = v490 != 0;
    *(a1 + 104) = v243 + 939524096;
    if (v490)
    {
      *(a1 + 14744) = v490;
    }

    goto LABEL_1186;
  }

  if (v489 != 192 || *(a1 + 12721) != 168)
  {
    goto LABEL_1179;
  }

LABEL_1182:
  *(a1 + 104) = v243 + 939524096;
  if (!*(a1 + 14720))
  {
    v491 = 0;
LABEL_1186:
    v492 = *(a1 + 14760);
    if (v492)
    {
      CloseSocketSet(*(a1 + 14760));
      free(v492);
      *(a1 + 14760) = 0;
    }

    v493 = *(a1 + 15024);
    if (v493)
    {
      CloseSocketSet(*(a1 + 15024));
      free(v493);
      *(a1 + 15024) = 0;
    }

    goto LABEL_1190;
  }

  if (*(a1 + 14760))
  {
    goto LABEL_1184;
  }

  v497 = mDNSPlatformUDPSocket(58900);
  *(a1 + 14760) = v497;
  if (v497)
  {
    v491 = 0;
    CheckNATMappings_needLog = 0;
  }

  else if (CheckNATMappings_needLog)
  {
LABEL_1184:
    v491 = 0;
  }

  else
  {
    LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "CheckNATMappings: Failed to allocate port 5350 UDP multicast socket for PCP & NAT-PMP announcements");
    v491 = 0;
    CheckNATMappings_needLog = 1;
  }

LABEL_1190:
  v494 = *(a1 + 64);
  if (*(a1 + 14720))
  {
    v495 = *(a1 + 14740);
    if ((v494 - v495) >= 0)
    {
      v496 = *(a1 + 12700);
      if (v496 != 10)
      {
        if (v496 == 172)
        {
          if ((*(a1 + 12701) & 0xF0) != 0x10)
          {
            goto LABEL_1209;
          }
        }

        else if (v496 != 192 || *(a1 + 12701) != 168)
        {
          goto LABEL_1209;
        }
      }

      mDNSPlatformSendUDP(a1, &uDNS_RequestAddress_req, &unk_10016219A, 0, 0, (a1 + 12696), 0xE714u, 0);
      if (*(a1 + 15034) && *(a1 + 15036))
      {
        v498 = SendSOAPMsgControlAction(a1, a1 + 14784, "GetExternalIPAddress", 0, 0, 2);
        if (v498)
        {
          LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "uDNS_RequestAddress: LNT_GetExternalAddress returned error %d", v498);
        }
      }

      else
      {
        LNT_SendDiscoveryMsg(a1);
      }

LABEL_1209:
      v499 = *(a1 + 14736);
      v500 = 2 * v499;
      if (v499 >= 450000)
      {
        v500 = 900000;
      }

      if (v499 >= 250)
      {
        v501 = v500;
      }

      else
      {
        v501 = 250;
      }

      *(a1 + 14736) = v501;
      v495 = *(a1 + 64) + v501;
      if (v495 <= 1)
      {
        v495 = 1;
      }

      *(a1 + 14740) = v495;
    }
  }

  else
  {
    v495 = v494 + 939524096;
    if ((v494 + 939524096) <= 1)
    {
      v495 = 1;
    }

    *(a1 + 14740) = v495;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "uDNS_RequestAddress: Setting retryGetAddr to future");
      v495 = *(a1 + 14740);
    }
  }

  if ((*(a1 + 104) - v495) >= 1)
  {
    *(a1 + 104) = v495;
  }

  if (*(a1 + 14728))
  {
    LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "WARNING m->CurrentNATTraversal already in use");
  }

  v502 = *(a1 + 14720);
  *(a1 + 14728) = v502;
  if (v502)
  {
    while (2)
    {
      v503 = (v502 + 156);
      v504 = *v502;
      if (v491)
      {
        v503 = (a1 + 12720);
      }

      *buf = *v503;
      *(a1 + 14728) = v504;
      if (v491)
      {
        *(v502 + 8) = 0;
        *(v502 + 20) = 0;
      }

      else
      {
        v505 = *(a1 + 64);
        v506 = *(v502 + 16);
        if (v505 - v506 >= 0)
        {
          v507 = *(v502 + 8);
          if (v507 && v507 - v505 < 0)
          {
            *(v502 + 8) = 0xFA00000000;
          }

          uDNS_SendNATMsg(a1, v502, 1, 0);
          v508 = *(v502 + 8);
          if (v508)
          {
            v509 = (v508 - *(a1 + 64)) / 2;
            if (v509 <= 2000)
            {
              v509 = 2000;
            }

            *(v502 + 12) = v509;
            v506 = *(a1 + 64) + v509;
          }

          else
          {
            v510 = *(v502 + 12);
            v511 = 2 * v510;
            if (v510 >= 450000)
            {
              v511 = 900000;
            }

            if (v510 >= 250)
            {
              v512 = v511;
            }

            else
            {
              v512 = 250;
            }

            *(v502 + 12) = v512;
            v506 = v512 + *(a1 + 64);
          }

          *(v502 + 16) = v506;
        }

        if (*(a1 + 104) - v506 >= 1)
        {
          *(a1 + 104) = v506;
        }
      }

      v513 = *buf;
      if (!*buf && *(v502 + 12) < 2001)
      {
        goto LABEL_1283;
      }

      v514 = *(v502 + 20);
      if (v514)
      {
        if (v491)
        {
          goto LABEL_1247;
        }

LABEL_1256:
        if (*buf)
        {
          if (*(v502 + 8))
          {
            v517 = (v502 + 176);
          }

          else
          {
            v517 = &zeroIPPort;
          }
        }

        else
        {
          v517 = &zeroIPPort;
        }

        v515 = *v517;
        v516 = *(v502 + 172);
        if (*(v502 + 172))
        {
          if (*(v502 + 8) || *(v502 + 12) >= 2001)
          {
            v516 = 1;
            goto LABEL_1265;
          }

LABEL_1283:
          v502 = *(a1 + 14728);
          v130 = &unk_100178000;
          if (!v502)
          {
            goto LABEL_1284;
          }

          continue;
        }

LABEL_1265:
        if (*(v502 + 152) == *buf && *(v502 + 160) == v515 && *(v502 + 168) == v514)
        {
          goto LABEL_1283;
        }

        if (v515)
        {
          v516 = 0;
        }

        if (v516 == 1)
        {
          if (*(a1 + 12700))
          {
            v518 = v514;
            if (v514)
            {
              goto LABEL_1275;
            }

            if (mDNS_LoggingEnabled == 1)
            {
              v518 = 0;
LABEL_1275:
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "CheckNATMapping: Failed to obtain NAT port mapping %p from router %#a external address %.4a internal port %5d interval %d error %d", v502, COERCE_DOUBLE(a1 + 12696), COERCE_DOUBLE(buf), bswap32(*(v502 + 174)) >> 16, *(v502 + 12), v518);
              v513 = *buf;
            }
          }

          v519 = 0;
          *(v502 + 152) = v513;
          *(v502 + 160) = 0;
        }

        else
        {
          v519 = 0;
          *(v502 + 152) = *buf;
          *(v502 + 160) = v515;
          v520 = *(v502 + 8);
          if (v520 && v515)
          {
            v521 = 274877907 * (v520 - *(a1 + 64) + 500);
            v519 = (v521 >> 38) + (v521 >> 63);
          }
        }

        *(v502 + 164) = v519;
        *(v502 + 168) = v514;
        v522 = *(a1 + 48);
        v523 = *(a1 + 52) + 1;
        *(a1 + 52) = v523;
        mDNS_VerifyLockState("Drop Lock", 0, v522, v523, "CheckNATMappings", 5111);
        v524 = *(v502 + 184);
        if (v524)
        {
          v524(a1, v502);
        }

        mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "CheckNATMappings", 5114);
        --*(a1 + 52);
        goto LABEL_1283;
      }

      break;
    }

    if (buf[0] == 10)
    {
      goto LABEL_1255;
    }

    if (buf[0] == 172)
    {
      if ((buf[1] & 0xF0) == 0x10)
      {
        goto LABEL_1255;
      }

LABEL_1252:
      v514 = 0;
      if (!v491)
      {
        goto LABEL_1256;
      }
    }

    else
    {
      if (buf[0] != 192 || buf[1] != 168)
      {
        goto LABEL_1252;
      }

LABEL_1255:
      v514 = -65558;
      if (!v491)
      {
        goto LABEL_1256;
      }
    }

LABEL_1247:
    v515 = *(v502 + 174);
    v516 = *(v502 + 172) != 0;
    goto LABEL_1265;
  }

LABEL_1284:
  v243 = *(a1 + 64);
LABEL_1285:
  if ((v243 - *(a1 + 12680)) < 0)
  {
    goto LABEL_1494;
  }

  v640 = v243 + 939524096;
  *(a1 + 12680) = v243 + 939524096;
  v525 = *(a1 + 12616);
  if (!v525)
  {
    goto LABEL_1456;
  }

  v664 = (a1 + 47032);
  v644 = (a1 + 28972);
LABEL_1290:
  v526 = v525;
  if (!IsRecordMergeable(a1, v525, v243 + 1000))
  {
    v525 = *v525;
    if (v525)
    {
      goto LABEL_1379;
    }

    v576 = *v661;
    if (!*v661)
    {
      goto LABEL_1456;
    }

    v577 = a1 + 37912;
    v578 = "SendRecordDeregistration: Error formatting message for %s";
    while (1)
    {
      if (!v576[4] && !*(v576 + 122) && !IsLocalDomain(v576[5]))
      {
        v579 = *(v576 + 86);
        if (v579 > 8)
        {
          goto LABEL_1452;
        }

        v580 = 1 << v579;
        if ((v580 & 0xAE) != 0)
        {
          if (*(v576 + 70) + *(v576 + 71) - *(a1 + 64) > 0)
          {
            goto LABEL_1452;
          }

          v581 = v576[48];
          if (v581)
          {
            DisposeTCPConn(v581);
            v576[48] = 0;
          }

          v582 = v576[47];
          if (v582)
          {
            if (*(v582 + 792))
            {
              if (*(v576 + 86) == 3)
              {
                mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "SendRecordDeregistration", 4294);
                v583 = v576[47];
                if (v583 && *(v583 + 792))
                {
                  AuthInfoForName_internal = GetAuthInfoForName_internal(a1, v576[5]);
                  if (AuthInfoForName_internal)
                  {
                    v585 = AuthInfoForName_internal + 268;
                    v586 = AuthInfoForName_internal + 268;
                    do
                    {
                      if (!v586)
                      {
                        break;
                      }

                      v587 = *v586;
                      if (v587 > 0x3F)
                      {
                        break;
                      }

                      if (!*v586)
                      {
                        v588 = -103 - (v586 - v585 + 1);
                        goto LABEL_1431;
                      }

                      v586 += v587 + 1;
                    }

                    while (v586 - v585 < 256);
                    v588 = -360;
                  }

                  else
                  {
                    v588 = -35;
                  }

LABEL_1431:
                  v592 = mDNS_NewMessageID(a1);
                  *(v576 + 179) = v592;
                  *v670 = v592;
                  *(a1 + 28962) = 40;
                  *(a1 + 28964) = 0;
                  v593 = putZone(v670, v644, v577 + v588, v576[46], bswap32(*(v576 + 7)) >> 16);
                  if (v593 && (updated = BuildUpdateMessage(a1, v593, v576, v577 + v588)) != 0)
                  {
                    v595 = updated;
                    if (*(v576 + 356))
                    {
                      if (!mDNS_LoggingEnabled)
                      {
                        goto LABEL_1438;
                      }

                      v668 = mDNSLogCategory_Default;
                      v596 = v576[48];
                      GetRRDisplayString_rdb(v576 + 8, (v576[6] + 4), v664);
                      LogMsgWithLevel(v668, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration TCP %p %s", v596, v664);
                      v597 = v576[48];
                      if (v597 && mDNS_LoggingEnabled)
                      {
                        v598 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb(v576 + 8, (v576[6] + 4), v664);
                        LogMsgWithLevel(v598, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration: Disposing existing TCP connection for %s", v664);
LABEL_1438:
                        v597 = v576[48];
                      }

                      if (v597)
                      {
                        DisposeTCPConn(v597);
                        v576[48] = 0;
                      }

                      v599 = v576[47];
                      if (v599)
                      {
                        v576[48] = MakeTCPConn(a1, v670, v595, 1, (v599 + 788), *(v599 + 786), (v599 + 530), 0, v576);
                        goto LABEL_1448;
                      }

                      v606 = mDNSLogCategory_Default;
                      GetRRDisplayString_rdb(v576 + 8, (v576[6] + 4), v664);
                      LogMsgWithLevel(v606, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration:Private:ERROR!! nta is NULL for %s");
                    }

                    else
                    {
                      if (mDNS_LoggingEnabled)
                      {
                        v603 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb(v576 + 8, (v576[6] + 4), v664);
                        LogMsgWithLevel(v603, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration UDP %s", v664);
                      }

                      v604 = v576[47];
                      if (v604)
                      {
                        v605 = GetAuthInfoForName_internal(a1, v576[5]);
                        mDNSSendDNSMessage(a1, v670, v595, 0, 0, 0, (v604 + 788), *(v604 + 786), v605, 0);
LABEL_1448:
                        SetRecordRetry(a1, v576, 0);
                      }

                      else
                      {
                        v607 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb(v576 + 8, (v576[6] + 4), v664);
                        LogMsgWithLevel(v607, OS_LOG_TYPE_DEFAULT, "SendRecordDeregistration:ERROR!! nta is NULL for %s");
                      }
                    }

                    v578 = "SendRecordDeregistration: Error formatting message for %s";
                  }

                  else
                  {
                    v669 = v577;
                    v600 = v578;
                    v601 = mDNSLogCategory_Default;
                    GetRRDisplayString_rdb(v576 + 8, (v576[6] + 4), v664);
                    v602 = v601;
                    v578 = v600;
                    v577 = v669;
                    LogMsgWithLevel(v602, OS_LOG_TYPE_DEFAULT, v578, v664);
                  }
                }

                else
                {
                  v667 = v577;
                  v589 = v578;
                  v590 = mDNSLogCategory_Default;
                  GetRRDisplayString_rdb(v576 + 8, (v576[6] + 4), v664);
                  v591 = v590;
                  v578 = v589;
                  v577 = v667;
                  LogMsgWithLevel(v591, OS_LOG_TYPE_DEFAULT, "SendRecordDeRegistration: No zone info for Resource record %s RecordType %d", v664, *(v576 + 8));
                }
              }

              else
              {
                SendRecordRegistration(a1, v576);
              }

LABEL_1452:
              v608 = v640;
              if ((v640 - (*(v576 + 70) + *(v576 + 71))) > 0)
              {
                v608 = *(v576 + 70) + *(v576 + 71);
              }

              v640 = v608;
              goto LABEL_1455;
            }

            *(v576 + 179) = 0;
            CancelGetZoneData(a1, v582);
          }

          v576[47] = StartGetZoneData(a1, v576[5], RecordRegistrationGotZoneData, v576);
          SetRecordRetry(a1, v576, 0);
          goto LABEL_1452;
        }

        if ((v580 & 0x140) == 0)
        {
          goto LABEL_1452;
        }
      }

LABEL_1455:
      v576 = *v576;
      if (!v576)
      {
        goto LABEL_1456;
      }
    }
  }

LABEL_1291:
  if (v525[28])
  {
    v527 = v130[434];
    GetRRDisplayString_rdb(v525 + 8, (v525[6] + 4), v664);
    LogMsgWithLevel(v527, OS_LOG_TYPE_DEFAULT, "MarkRRForSending: Resourcerecord %s already marked for sending", v664);
  }

  v525[28] = -4;
LABEL_1294:
  v525 = *v525;
  if (v525)
  {
    goto LABEL_1380;
  }

  v528 = *v661;
  if (!*v661)
  {
    goto LABEL_1456;
  }

  v529 = 0;
  do
  {
    v530 = *(v528 + 86);
    v531 = v530 == 5 || v530 == 2;
    if (v531 && v528[28] != -4 && AreRecordsMergeable(a1, v526, v528, *(a1 + 64) + *(v528 + 70) / 2))
    {
      v528[28] = -4;
      ++v529;
    }

    v528 = *v528;
  }

  while (v528);
  if (v529 && mDNS_LoggingEnabled)
  {
    LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "MarkRRForSending: Accelereated %d records", v529);
  }

  v532 = *v661;
  if (!*v661)
  {
    goto LABEL_1456;
  }

  v652 = 0;
  v655 = 0;
  v533 = 0;
  v642 = 1;
  v534 = (a1 + 28972);
  while (2)
  {
    v649 = 0;
    v535 = 0;
    v660 = 0;
    v536 = 0;
    while (2)
    {
      if (v532[28] != -4)
      {
LABEL_1361:
        v532 = *v532;
        if (!v532)
        {
          goto LABEL_1371;
        }

        continue;
      }

      break;
    }

    v532[28] = 0;
    if (v660)
    {
LABEL_1334:
      v549 = *(v532 + 86);
      if (v549 == 7)
      {
        v550 = *(v532 + 309) + *(v532 + 308);
      }

      else
      {
        v550 = *(v532 + 11);
        if (v549 == 3)
        {
          v551 = 12;
          goto LABEL_1344;
        }
      }

      v552 = *(v532 + 8);
      if (v552 == 32)
      {
        v553 = 24;
      }

      else
      {
        v553 = 12;
      }

      if (v552 == 16)
      {
        v551 = 24;
      }

      else
      {
        v551 = v553;
      }

LABEL_1344:
      v554 = v532[5];
      v555 = v554;
      v666 = v535;
      while (1)
      {
        if (!v555 || (v556 = *v555, v556 > 0x3F))
        {
LABEL_1349:
          v557 = 257;
          goto LABEL_1351;
        }

        if (!*v555)
        {
          break;
        }

        v555 += v556 + 1;
        if (&v555[-v554] >= 256)
        {
          goto LABEL_1349;
        }
      }

      v557 = (v555 - v554 + 1);
LABEL_1351:
      v558 = v551 - v536 + v550 + v557 + 4;
      if (v533 - v558 < 0)
      {
        if (v666)
        {
          if (mDNS_LoggingEnabled)
          {
            v565 = v130[434];
            GetRRDisplayString_rdb((v660 + 8), (*(v660 + 48) + 4), v664);
            LogMsgWithLevel(v565, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates:1: Parsed %d records and sending using %s, spaceleft %d, rrSize %d", v666, v664, v533, v558);
          }

          SendGroupRRMessage(a1, v660, v534, v649);
        }

        else
        {
          if (mDNS_LoggingEnabled)
          {
            v566 = v130[434];
            GetRRDisplayString_rdb(v532 + 8, (v532[6] + 4), v664);
            LogMsgWithLevel(v566, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: Skipping message %s, spaceleft %d, rrSize %d", v664, v533, v558);
          }

          v660 = 0;
          v642 = 0;
          v532[28] = -4;
          *(v532 + 70) = 1000;
          *(v532 + 71) = *(a1 + 64) - 1000;
          v532 = *v532;
        }

        v535 = v666;
        if (v532)
        {
          continue;
        }

LABEL_1371:
        if (v660)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v567 = v130[434];
            GetRRDisplayString_rdb((v660 + 8), (*(v660 + 48) + 4), v664);
            LogMsgWithLevel(v567, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: Parsed %d records and sending using %s", v535, v664);
          }

          SendGroupRRMessage(a1, v660, v534, v649);
        }

        if (!v642)
        {
LABEL_1390:
          v572 = *v661;
          if (!*v661)
          {
            goto LABEL_1456;
          }

          while (1)
          {
LABEL_1391:
            v573 = v572;
            v572 = *v572;
            if (*(v573 + 224) != -4)
            {
              goto LABEL_1394;
            }

            if (*(v573 + 280) + *(v573 + 284) - *(a1 + 64) >= 1)
            {
              break;
            }

            *(v573 + 224) = 0;
            SendRecordRegistration(a1, v573);
            if (!v572)
            {
              goto LABEL_1376;
            }
          }

          v574 = v130[434];
          GetRRDisplayString_rdb((v573 + 8), (*(v573 + 48) + 4), v664);
          LogMsgWithLevel(v574, OS_LOG_TYPE_DEFAULT, "CheckGroupRecordUpdates: ERROR!! Resourcerecord %s not ready", v664);
LABEL_1394:
          if (!v572)
          {
            goto LABEL_1376;
          }

          goto LABEL_1391;
        }

LABEL_1376:
        v525 = *v661;
        if (!*v661)
        {
          goto LABEL_1456;
        }

LABEL_1379:
        v526 = 0;
LABEL_1380:
        v243 = *(a1 + 64);
        if (!v526)
        {
          goto LABEL_1290;
        }

        if (AreRecordsMergeable(a1, v526, v525, v243 + 1000))
        {
          goto LABEL_1291;
        }

        goto LABEL_1294;
      }

      if (mDNS_LoggingEnabled == 1)
      {
        v559 = v130[434];
        GetRRDisplayString_rdb(v532 + 8, (v532[6] + 4), v664);
        LogMsgWithLevel(v559, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: Building a message with resource record %s, next %p, state %d, ttl %d", v664, v534, *(v532 + 86), *(v532 + 4));
      }

      v560 = BuildUpdateMessage(a1, v534, v532, v655);
      if (!v560)
      {
        v568 = v130[434];
        GetRRDisplayString_rdb(v532 + 8, (v532[6] + 4), v664);
        LogMsgWithLevel(v568, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ptr NULL while building message with %s", v664);
        v569 = *v661;
        if (*v661)
        {
          do
          {
            *(v569 + 149) = 1;
            v569[28] = 0;
            ActivateUnicastRegistration(a1, v569);
            v569 = *v569;
          }

          while (v569);
          goto LABEL_1390;
        }

        goto LABEL_1456;
      }

      v561 = v560;
      v562 = v560 - v534;
      if (v560 - v534 <= v558)
      {
        v533 -= v562;
      }

      else
      {
        v563 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb(v532 + 8, (v532[6] + 4), v664);
        LogMsgWithLevel(v563, OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ERROR!! Record size estimation is wrong for %s, Estimate %d, Actual %d, state %d", v664, v558, v562, *(v532 + 86));
        v533 -= v558;
      }

      v564 = v532[48];
      if (v564)
      {
        DisposeTCPConn(v564);
        v532[48] = 0;
      }

      v535 = v666 + 1;
      *(v532 + 179) = v652;
      SetRecordRetry(a1, v532, 0);
      v534 = v561;
      v130 = &unk_100178000;
      goto LABEL_1361;
    }

    break;
  }

  v537 = GetAuthInfoForName_internal(a1, v532[46]);
  v538 = v537;
  if (!v537)
  {
    v542 = 35;
LABEL_1324:
    v544 = 1440 - v542;
    v652 = mDNS_NewMessageID(a1);
    *v670 = v652;
    *(a1 + 28962) = 40;
    *(a1 + 28964) = 0;
    v545 = v532[46];
    v546 = v545;
    while (1)
    {
      if (!v546 || (v547 = *v546, v547 > 0x3F))
      {
LABEL_1329:
        v536 = 261;
        goto LABEL_1331;
      }

      if (!*v546)
      {
        break;
      }

      v546 += v547 + 1;
      if (v546 - v545 >= 256)
      {
        goto LABEL_1329;
      }
    }

    v536 = (v546 - v545 + 1) + 4;
LABEL_1331:
    v533 = v544 - v536;
    if (v544 <= v536)
    {
      LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ERROR no space for zone information, disabling merge");
      v570 = *v661;
      if (*v661)
      {
        do
        {
          *(v570 + 149) = 1;
          v570[28] = 0;
          ActivateUnicastRegistration(a1, v570);
          v570 = *v570;
        }

        while (v570);
        goto LABEL_1390;
      }

      goto LABEL_1456;
    }

    v649 = v538;
    v655 = &v644[v544];
    v548 = putZone(v670, v644, v655, v545, bswap32(*(v532 + 7)) >> 16);
    if (!v548)
    {
      LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ERROR! Cannot put zone, disabling merge");
      v571 = *v661;
      if (*v661)
      {
        do
        {
          *(v571 + 149) = 1;
          v571[28] = 0;
          ActivateUnicastRegistration(a1, v571);
          v571 = *v571;
        }

        while (v571);
        goto LABEL_1390;
      }

      goto LABEL_1456;
    }

    v534 = v548;
    v660 = v532;
    goto LABEL_1334;
  }

  v539 = v537 + 268;
  v540 = v537 + 268;
  while (1)
  {
    if (!v540 || (v541 = *v540, v541 > 0x3F))
    {
LABEL_1320:
      v542 = 360;
      goto LABEL_1324;
    }

    if (!*v540)
    {
      break;
    }

    v540 += v541 + 1;
    if (v540 - v539 > 255)
    {
      goto LABEL_1320;
    }
  }

  v543 = (v540 - v539 + 1);
  if (v543 < 0x539)
  {
    v542 = v543 + 103;
    goto LABEL_1324;
  }

  LogMsgWithLevel(v130[434], OS_LOG_TYPE_DEFAULT, "SendGroupUpdates: ERROR!!: spaceleft is zero at the beginning");
  v575 = *v661;
  if (*v661)
  {
    do
    {
      *(v575 + 149) = 1;
      v575[28] = 0;
      ActivateUnicastRegistration(a1, v575);
      v575 = *v575;
    }

    while (v575);
    goto LABEL_1390;
  }

LABEL_1456:
  if ((*(a1 + 12680) - v640) >= 1)
  {
    *(a1 + 12680) = v640;
  }

  v609 = *(a1 + 208);
  if (v609)
  {
    v610 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v615 = v609 + 376;
        v616 = (v609 + 376);
        while (1)
        {
          if (!v616 || (v617 = *v616, v617 > 0x3F))
          {
LABEL_1474:
            v614 = 257;
            goto LABEL_1479;
          }

          if (!*v616)
          {
            break;
          }

          v616 += v617 + 1;
          if (&v616[-v615] >= 256)
          {
            goto LABEL_1474;
          }
        }

        v614 = (v616 - v615 + 1);
LABEL_1479:
        v618 = DNSTypeName(*(v609 + 342));
        *buf = 141559043;
        *&buf[4] = 1752392040;
        *&buf[12] = 1040;
        *&buf[14] = v614;
        *&buf[18] = 2101;
        *&buf[20] = v609 + 376;
        *&buf[28] = 2160;
        *&buf[30] = 1752392040;
        *&buf[38] = 2085;
        *&buf[40] = v618;
        _os_log_impl(&_mh_execute_header, v610, OS_LOG_TYPE_DEFAULT, "uDNS_Tasks ERROR m->CurrentQuestion already set: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{sensitive, mask.hash}s)", buf, 0x30u);
      }
    }

    else
    {
      v610 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v611 = v609 + 376;
        v612 = (v609 + 376);
        while (1)
        {
          if (!v612 || (v613 = *v612, v613 > 0x3F))
          {
LABEL_1467:
            v614 = 257;
            goto LABEL_1479;
          }

          if (!*v612)
          {
            break;
          }

          v612 += v613 + 1;
          if (&v612[-v611] >= 256)
          {
            goto LABEL_1467;
          }
        }

        v614 = (v612 - v611 + 1);
        goto LABEL_1479;
      }
    }
  }

  v619 = *(a1 + 192);
  *(a1 + 208) = v619;
  if (v619)
  {
    while (v619 != *v650)
    {
      v620 = *(v619 + 212);
      if (v620 < 1 || *(v619 + 40) || !*(v619 + 340))
      {
LABEL_1484:
        v621 = *(v619 + 8);
        *(a1 + 208) = v621;
      }

      else
      {
        v622 = v620 + *(v619 + 208);
        v621 = v619;
        if (*(a1 + 64) - v622 >= 0)
        {
          Querier_HandleUnicastQuestion(v619);
          v621 = *(a1 + 208);
        }

        if (v619 == v621)
        {
          v623 = *(v619 + 212) + *(v619 + 208);
          if (*(a1 + 12680) - v623 >= 1)
          {
            *(a1 + 12680) = v623;
          }

          goto LABEL_1484;
        }
      }

      v619 = v621;
      if (!v621)
      {
        break;
      }

      continue;
    }
  }

  *(a1 + 208) = 0;
LABEL_1494:
  mDNS_Unlock_(a1, "mDNS_Execute", 7154);
  return *(a1 + 72);
}