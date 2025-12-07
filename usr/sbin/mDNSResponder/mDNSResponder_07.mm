uint64_t BuildQuestion(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 **a4, uint64_t a5, uint64_t **a6, unsigned int *a7)
{
  if ((*(a5 + 232) || *(a5 + 352)) && *(a1 + 12))
  {
    v13 = a3 + 1452;
    v14 = a3 + 1452 - *a7;
    v15 = *(a2 + 3677) != 0;
    if (*(a2 + 3677))
    {
      v16 = 0x8000;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v13 = a3 + 1452;
    v14 = a3 + 1452 - *a7;
  }

  result = putQuestion(a3, *a4, v14, (a5 + 376), *(a5 + 342), *(a5 + 344) | v16);
  if (result)
  {
    v18 = result;
    v33 = v15;
    v35 = *a7;
    v19 = CacheGroupForName(a1, *(a5 + 200), (a5 + 376));
    v20 = v19;
    v21 = *a6;
    v34 = a6;
    if (v19)
    {
      v32 = v13;
      v22 = v19[2];
      if (v22)
      {
        while (1)
        {
          if (*(v22 + 32) != *(a5 + 64) || (*(v22 + 8) & 0x10) != 0 || ((v23 = (v22 + 72), !*(v22 + 72)) ? (v24 = v21 == v23) : (v24 = 1), v24 || *(v22 + 20) > 0x400u || !SameNameRecordAnswersQuestion((v22 + 8), 0, a5) || *(v22 + 80) - *(a1 + 64) + ((1000 * *(v22 + 16)) >> 1) < 1001))
          {
            v23 = v21;
          }

          else
          {
            *v21 = v22;
            v25 = v35 + *(v22 + 22) + 12;
            v26 = *(a3 + 4);
            v35 += *(v22 + 22) + 12;
            if (v26 >= 2 && v18 + v25 >= v32)
            {
              *(a3 + 4) = v26 - 1;
              v30 = *v34;
              v31 = **v34;
              if (!v31)
              {
                return 0;
              }

              result = 0;
              do
              {
                *v30 = 0;
                v30 = (v31 + 72);
                v31 = *(v31 + 72);
              }

              while (v31);
              return result;
            }
          }

          v22 = *v22;
          v21 = v23;
          if (!v22)
          {
            goto LABEL_27;
          }
        }
      }
    }

    v23 = *a6;
LABEL_27:
    *a4 = v18;
    *a7 = v35;
    *v34 = v23;
    if (v33)
    {
      v27 = *(a1 + 64);
      if (v27 <= 1)
      {
        v27 = 1;
      }

      *(a5 + 216) = v27;
    }

    if (v20)
    {
      for (i = v20[2]; i; i = *i)
      {
        if (*(i + 32) == *(a5 + 64))
        {
          if (*(i + 72))
          {
            v29 = 1;
          }

          else
          {
            v29 = v23 == (i + 72);
          }

          if (!v29 && SameNameRecordAnswersQuestion((i + 8), 0, a5))
          {
            ++*(i + 108);
            *(i + 104) = *(a1 + 64);
            SetNextCacheCheckTimeForRecord(a1, i);
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t UnsafeBufferPointer(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  while (1)
  {
    a3 = *a3;
    if (!a3)
    {
      break;
    }

    if (SameDomainNameBytes(a3[2], v5))
    {
      if (a3[1])
      {
        return 0;
      }

      return *(a2 + 48) + 8;
    }
  }

  return *(a2 + 48) + 8;
}

BOOL AddRecordInProbe(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 194) || *(a3 + 12) == 41 || !a2 && *(a3 + 88))
  {
    return 0;
  }

  v7 = *(a3 + 32);
  if (v7)
  {
    if (v7 != a4)
    {
      return 0;
    }
  }

  else if (!mDNSPlatformValidRecordForInterface(a3, a4))
  {
    return 0;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v8 = *(a1 + 96);
  if (!v8)
  {
    v8 = a1;
  }

  v9 = *(a3 + 96);
  if (!v9)
  {
    v9 = a3;
  }

  if (v8 != v9)
  {
LABEL_16:
    if (*(a3 + 8) != 2 && !*(a3 + 88))
    {
      return 0;
    }
  }

  return SameResourceRecordNameClassInterface(a1, a3);
}

uint64_t *UnsafeBufferPointer(uint64_t *a1, uint64_t a2, void *a3)
{
  result = mDNSGetTSRForAuthRecordNamed(a1, *(a2 + 40), *(a2 + 24));
  if (result)
  {

    return UnsafeBufferPointer(a2, result, a3);
  }

  return result;
}

char *AddTSRROptsToMessage(void *a1, unint64_t a2, _WORD *a3, char *__dst, unint64_t a5)
{
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = __rev16(*a3);
  LOWORD(v33) = 264;
  memset(v22, 0, sizeof(v22));
  WORD2(v22[0]) = 41;
  *(&v23 + 1) = &v33;
  WORD6(v22[0]) = 24;
  v11 = __dst;
  while (1)
  {
    a1 = *a1;
    if (!a1)
    {
      break;
    }

    v12 = a1[1];
    HIDWORD(v33) = *(v12 + 4);
    LOWORD(v34) = *(v12 + 8);
    LODWORD(v12) = *v12;
    DWORD1(v33) = 720362;
    DWORD2(v33) = v12;
    v11 = putRData(a2, v11, a5, v22);
    if (!v11)
    {
      v13 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          v14 = a1[2];
          if (v14)
          {
            v18 = a1[2];
            while (1)
            {
              if (!v18 || (v19 = *v18, v19 > 0x3F))
              {
LABEL_23:
                v17 = 257;
                goto LABEL_28;
              }

              if (!*v18)
              {
                break;
              }

              v18 += v19 + 1;
              if (&v18[-v14] >= 256)
              {
                goto LABEL_23;
              }
            }

            v17 = (v18 - v14 + 1);
          }

          else
          {
            v17 = 0;
          }

LABEL_28:
          v20 = *(a1[1] + 4);
          *buf = 141558787;
          v26 = 1752392040;
          v27 = 1040;
          v28 = v17;
          v29 = 2101;
          v30 = v14;
          v31 = 1024;
          v32 = v20;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "AddTSRRDataToMessage: TSR can't be written -- name %{sensitive, mask.hash, mdnsresponder:domain_name}.*P hashkey %x", buf, 0x22u);
        }
      }

      else
      {
        v13 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          v14 = a1[2];
          if (v14)
          {
            v15 = a1[2];
            while (1)
            {
              if (!v15 || (v16 = *v15, v16 > 0x3F))
              {
LABEL_13:
                v17 = 257;
                goto LABEL_28;
              }

              if (!*v15)
              {
                break;
              }

              v15 += v16 + 1;
              if (&v15[-v14] >= 256)
              {
                goto LABEL_13;
              }
            }

            v17 = (v15 - v14 + 1);
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_28;
        }
      }

      return 0;
    }
  }

  if (v11 != __dst)
  {
    *a3 = bswap32(v11 - __dst + v10) >> 16;
  }

  return v11;
}

void TimeoutQuestions_internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 208);
  if (v6)
  {
    v7 = mDNSLogCategory_Default;
    v8 = v6 + 376;
    v9 = DNSTypeName(*(v6 + 342));
    LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "TimeoutQuestions ERROR m->CurrentQuestion already set: %##s (%s)", v8, v9);
  }

  *(a1 + 208) = a2;
  if (a2)
  {
    do
    {
      v10 = *(a2 + 240);
      if (v10)
      {
        if (!*(a2 + 637))
        {
          v11 = mDNSLogCategory_Default;
          v12 = DNSTypeName(*(a2 + 342));
          LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "TimeoutQuestions: ERROR!! TimeoutQuestion not set, but StopTime set for %##s (%s)", a2 + 376, v12);
          v10 = *(a2 + 240);
        }

        v13 = (*(a1 + 64) - v10);
        if (v13 < 0)
        {
          if (*(a1 + 184) - v10 >= 1)
          {
            *(a1 + 184) = v10;
          }
        }

        else
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "TimeoutQuestions: question %p %##s timed out, time %d", a2, a2 + 376, v13);
          }

          *(a2 + 355) = 0;
          GenerateNegativeResponseEx(a1, a3, 3, 0);
          if (*(a1 + 208) == a2)
          {
            *(a2 + 240) = 0;
          }
        }
      }

      v14 = *(a1 + 208);
      if (v14 == a2)
      {
        v14 = *(a2 + 8);
        *(a1 + 208) = v14;
      }

      a2 = v14;
    }

    while (v14);
  }

  *(a1 + 208) = 0;
}

void SendWakeup(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  v7 = (a1 + 28972);
  v8 = (a1 + 12656);
  do
  {
    v8 = *v8;
    if (!v8)
    {
      v22 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v23 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v25 = 134217984;
        v26 = a2;
      }

      else
      {
        v22 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v25 = 134217984;
        v26 = a2;
      }

      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SendARP: No interface with InterfaceID %p found", &v25, 0xCu);
      return;
    }
  }

  while (v8[444] != a2);
  v9 = 6;
  v10 = a3;
  v11 = (a1 + 28972);
  do
  {
    v12 = *v10++;
    *v11++ = v12;
    --v9;
  }

  while (v9);
  v13 = *(v8 + 3600);
  v14 = 6;
  do
  {
    v15 = v11;
    *v11++ = v13;
    --v14;
  }

  while (v14);
  v16 = 0;
  *v11 = 16904;
  *(v15 + 3) = -1;
  *(v15 + 7) = -1;
  v17 = (a1 + 28992);
  do
  {
    v18 = a3;
    v19 = 6;
    do
    {
      v20 = *v18++;
      *v17++ = v20;
      --v19;
    }

    while (v19);
    ++v16;
  }

  while (v16 != 16);
  for (i = 0; i != 6; ++i)
  {
    v17[i] = *(a4 + i);
  }

  mDNSPlatformSendRawPacket((a1 + 28972), (v17 + 6), a2);
  if (!a5)
  {
    v7[2] = -1;
    *v7 = -1;

    mDNSPlatformSendRawPacket(v7, (v17 + 6), a2);
  }
}

BOOL ResourceRecordIsValidInterfaceAnswer(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    result = v3 == a2;
    if (v3 != a2)
    {
      return result;
    }
  }

  else
  {
    result = mDNSPlatformValidRecordForInterface(a1, a2);
    if (!result)
    {
      return result;
    }
  }

  return ResourceRecordIsValidAnswer(a1);
}

uint64_t AddRRSetAdditionalsToResponseList(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a4 + 8) & 0x32) != 0)
  {
    for (i = *(result + 12616); i; i = *i)
    {
      if (*(i + 24) == *(a4 + 24) && i != a4 && *(i + 12) == *(a4 + 12) && (*(i + 8) & 0x32) != 0 && *(i + 14) == *(a4 + 14))
      {
        result = ResourceRecordIsValidInterfaceAnswer(i, a5);
        if (result)
        {
          result = SameDomainNameBytes(*(i + 40), *(a4 + 40));
          if (result)
          {
            if (!*(i + 256) && *a2 != (i + 256))
            {
              **a2 = i;
              v10 = *(a3 + 272);
              if (!v10)
              {
                v10 = a3;
              }

              *(i + 272) = v10;
              *a2 = (i + 256);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t IPv6CheckSum(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  v14 = 0;
  v15 = BYTE1(a4);
  v16 = a4;
  v17 = 973078528;
  if (a4 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a4 + 2;
    do
    {
      v6 = *a3++;
      v4 += v6;
      v5 -= 2;
    }

    while (v5 > 2);
  }

  v7 = ((HIWORD(v4) + v4) >> 16) + (HIWORD(v4) + v4);
  if (v7 == 0xFFFF)
  {
    v7 = 0;
  }

  else
  {
    v7 = v7;
  }

  v8 = &v13;
  for (i = 42; i > 2; i -= 2)
  {
    v10 = *v8++;
    v7 += v10;
  }

  v11 = ((HIWORD(v7) + v7) >> 16) + (HIWORD(v7) + v7);
  if (v11 == 0xFFFF)
  {
    LOWORD(v11) = 0;
  }

  return v11;
}

void SendSleepGoodbyes(uint64_t a1, int a2, int a3)
{
  *(a1 + 141) = 2;
  if (a2)
  {
    v4 = *(a1 + 12656);
    if (v4)
    {
      while (!*(v4 + 16))
      {
        v4 = *v4;
        if (!v4)
        {
          goto LABEL_5;
        }
      }

LABEL_28:
      *(v4 + 3675) = 1;
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (*(v4 + 16))
        {
          goto LABEL_28;
        }
      }
    }
  }

LABEL_5:
  if (a3)
  {
    for (i = *(a1 + 12616); i; i = *i)
    {
      if (!*(i + 32) && !*(i + 122) && !IsLocalDomain(*(i + 40)))
      {
        v6 = *(i + 376);
        if (v6)
        {
          *(i + 358) = 0;
          CancelGetZoneData(a1, v6);
          *(i + 376) = 0;
        }

        if (*(i + 584))
        {
          mDNS_StopNATOperation_internal(a1, i + 392);
          *(i + 584) = 0;
        }

        if (*(i + 344) == 7)
        {
          *(i + 344) = 2;
          v7 = *(i + 320);
          if (v7)
          {
            v7(a1, i, *(i + 624), *(i + 616));
          }

          SetNewRData(i + 8, *(i + 632), *(i + 618));
          *(i + 624) = 0u;
        }

        uDNS_DeregisterRecord(a1, i);
      }
    }
  }

  for (j = *(a1 + 12616); j; j = *j)
  {
    if (*(j + 8) == 8 && *(j + 192))
    {
      j[26] = -1;
    }
  }

  SendResponses(a1);
}

uint64_t mDNS_GetDomains_Internal(uint64_t a1, uint64_t a2, int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a2 + 136) = a5;
  *(a2 + 324) = 0;
  *(a2 + 342) = 65548;
  *(a2 + 641) = 0;
  *(a2 + 639) = 0;
  *(a2 + 653) = 0;
  *(a2 + 632) = 0;
  *(a2 + 636) = 0;
  *(a2 + 244) = getpid();
  *(a2 + 248) = 0;
  *(a2 + 152) = a6;
  *(a2 + 176) = a7;
  v13 = mDNS_DomainTypeNames[a3];
  *(a2 + 376) = 0;
  if (!AppendDNSNameString((a2 + 376), v13))
  {
    return 4294901756;
  }

  v14 = a4 ? a4 : "\x05local";
  if (!AppendDomainName((a2 + 376), v14))
  {
    return 4294901756;
  }

  return mDNS_StartQuery_internal(a1, a2);
}

void mDNS_DeregisterDomainsDiscoveredForDomainEnumeration(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 256;
  v4 = *(a2 + 256 + 8 * a3);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = a3;
      do
      {
        v8 = *(v5 + 256);
        DeregisterLocalOnlyDomainEnumPTR_Internal(a1, v5, v6, 1);
        free(v5);
        v5 = v8;
      }

      while (v8);
      v4 = *(v3 + 8 * v6);
    }

    *v4 = 0;
  }
}

void mDNSCoreRestartAddressQueries(int a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *, uint64_t), uint64_t a4)
{
  mDNS_VerifyLockState("Check Lock", 1, dword_10016D248, dword_10016D24C, "mDNSCoreRestartAddressQueries", 7227);
  if (a2)
  {
    a2(mDNSStorage);
  }

  if (qword_10016D300)
  {
    v6 = mDNSLogCategory_Default;
    v7 = qword_10016D300 + 376;
    v8 = DNSTypeName(*(qword_10016D300 + 342));
    LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: ERROR!! m->RestartQuestion already set: %##s (%s)", v7, v8);
  }

  v9 = xmmword_10016D2D8;
  qword_10016D300 = xmmword_10016D2D8;
  for (i = 0; qword_10016D300; v9 = qword_10016D300)
  {
    v11 = *(v9 + 8);
    qword_10016D300 = v11;
    if (*(v9 + 152) == GetZoneData_QuestionCallback)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v19 = mDNSLogCategory_Default;
        v20 = DNSTypeName(*(v9 + 342));
        LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Skipping GetZoneDataQuestion %p %##s (%s)", v9, v9 + 376, v20);
      }

      if (v11)
      {
        v21 = mDNS_LoggingEnabled;
        do
        {
          if (v9 == *(v11 + 104) + 832 && v21 != 0)
          {
            v23 = mDNSLogCategory_Default;
            v24 = DNSTypeName(*(v11 + 342));
            LogMsgWithLevel(v23, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Question %p %##s (%s) referring to GetZoneDataQuestion %p, not stopping", v11, v11 + 376, v24, v9);
            v21 = mDNS_LoggingEnabled;
          }

          v11 = *(v11 + 8);
        }

        while (v11);
      }
    }

    else
    {
      v12 = *(v9 + 342);
      v13 = v12 > 0x1C;
      v14 = (1 << v12) & 0x10000022;
      v15 = v13 || v14 == 0;
      if (!v15 && (!a1 || *(v9 + 641)))
      {
        if (CacheRecordRmvEventsForQuestion(v9))
        {
          if (LocalRecordRmvEventsForQuestion(v9))
          {
            if (mDNS_LoggingEnabled)
            {
              v16 = mDNSLogCategory_Default;
              v17 = DNSTypeName(*(v9 + 342));
              LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Stop question %p %##s (%s), AppendSearchDomains %d", v9, v9 + 376, v17, *(v9 + 641));
            }

            mDNS_StopQuery_internal(mDNSStorage, v9);
            v18 = *(v9 + 160);
            if (v18)
            {
              v18(v9);
            }

            *(v9 + 8) = i;
            goto LABEL_36;
          }

          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Question deleted while delivering Local Record RMV events");
          }
        }

        else if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Question deleted while delivering Cache Record RMV events");
        }
      }
    }

    v9 = i;
LABEL_36:
    i = v9;
  }

  if (a3)
  {
    a3(mDNSStorage, a4);
  }

  if (i)
  {
    do
    {
      v25 = *(i + 8);
      *(i + 8) = 0;
      if (mDNS_LoggingEnabled == 1)
      {
        v26 = mDNSLogCategory_Default;
        v27 = DNSTypeName(*(i + 342));
        LogMsgWithLevel(v26, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartAddressQueries: Start question %p %##s (%s)", i, i + 376, v27);
      }

      mDNS_StartQuery_internal(mDNSStorage, i);
      i = v25;
    }

    while (v25);
  }
}

BOOL CacheRecordRmvEventsForQuestion(uint64_t a1)
{
  if (unk_10016D2E8)
  {
    v2 = mDNSLogCategory_Default;
    v3 = unk_10016D2E8 + 376;
    v4 = DNSTypeName(*(unk_10016D2E8 + 342));
    LogMsgWithLevel(v2, OS_LOG_TYPE_DEFAULT, "CacheRecordRmvEventsForQuestion: ERROR m->CurrentQuestion already set: %##s (%s)", v3, v4);
  }

    ;
  }

  if (!i && !*(a1 + 355))
  {
    unk_10016D2E8 = a1;
    v10 = CacheGroupForName(mDNSStorage, *(a1 + 200), (a1 + 376));
    if (!v10 || (v11 = v10[2]) == 0)
    {
LABEL_84:
      result = unk_10016D2E8 == a1;
      unk_10016D2E8 = 0;
      return result;
    }

    while (*(v11 + 8) == 240)
    {
      v12 = *(a1 + 144);
      if (v12)
      {
        if (*(v12 + 24))
        {
          break;
        }
      }

      v19 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v20 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v19 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_83;
        }

        v21 = *(v11 + 40);
        if (v21)
        {
          v29 = *(v11 + 40);
          while (1)
          {
            if (!v29 || (v30 = *v29, v30 > 0x3F))
            {
LABEL_61:
              v24 = 257;
              goto LABEL_80;
            }

            if (!*v29)
            {
              break;
            }

            v29 += v30 + 1;
            if (&v29[-v21] >= 256)
            {
              goto LABEL_61;
            }
          }

          v24 = (v29 - v21 + 1);
        }

        else
        {
          v24 = 0;
        }

LABEL_80:
        v34 = *(v11 + 96);
        if (v34)
        {
          LODWORD(v34) = bswap32(*(v34 + 340)) >> 16;
        }

        goto LABEL_82;
      }

      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(v11 + 40);
        if (v21)
        {
          v22 = *(v11 + 40);
          while (1)
          {
            if (!v22 || (v23 = *v22, v23 > 0x3F))
            {
LABEL_45:
              v24 = 257;
              goto LABEL_76;
            }

            if (!*v22)
            {
              break;
            }

            v22 += v23 + 1;
            if (&v22[-v21] >= 256)
            {
              goto LABEL_45;
            }
          }

          v24 = (v22 - v21 + 1);
        }

        else
        {
          v24 = 0;
        }

LABEL_76:
        v34 = *(v11 + 96);
        if (v34)
        {
          LODWORD(v34) = bswap32(*(v34 + 340)) >> 16;
        }

LABEL_82:
        v35 = bswap32(*(a1 + 340));
        v36 = *(v11 + 12);
        v37 = *(a1 + 228);
        *buf = 67110659;
        v39 = HIWORD(v35);
        v40 = 2160;
        v41 = 1752392040;
        v42 = 1040;
        v43 = v24;
        v44 = 2101;
        v45 = v21;
        v46 = 1024;
        v47 = v36;
        v48 = 1024;
        v49 = v34;
        v50 = 1024;
        v51 = v37;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Q%u] CacheRecordRmvEventsForCurrentQuestion: Suppressing RMV events for question - rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, current active question: Q%d, current answers: %u", buf, 0x34u);
      }

LABEL_83:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_84;
      }
    }

    if (!SameNameRecordAnswersQuestion((v11 + 8), 0, a1))
    {
      goto LABEL_83;
    }

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
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      v15 = *(v11 + 40);
      if (v15)
      {
        v16 = *(v11 + 40);
        while (1)
        {
          if (!v16 || (v17 = *v16, v17 > 0x3F))
          {
LABEL_32:
            v18 = 257;
            goto LABEL_68;
          }

          if (!*v16)
          {
            break;
          }

          v16 += v17 + 1;
          if (&v16[-v15] >= 256)
          {
            goto LABEL_32;
          }
        }

        v18 = (v16 - v15 + 1);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v13 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_69:
        --*(a1 + 228);
        if (*(v11 + 20) >= 0x401u)
        {
          --*(a1 + 232);
        }

        if ((*(v11 + 8) & 0x10) != 0)
        {
          --*(a1 + 236);
        }

        AnswerCurrentQuestionWithResourceRecord(mDNSStorage, v11, 0);
        if (unk_10016D2E8 != a1)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      v15 = *(v11 + 40);
      if (v15)
      {
        v26 = *(v11 + 40);
        while (1)
        {
          if (!v26 || (v27 = *v26, v27 > 0x3F))
          {
LABEL_53:
            v18 = 257;
            goto LABEL_68;
          }

          if (!*v26)
          {
            break;
          }

          v26 += v27 + 1;
          if (&v26[-v15] >= 256)
          {
            goto LABEL_53;
          }
        }

        v18 = (v26 - v15 + 1);
      }

      else
      {
        v18 = 0;
      }
    }

LABEL_68:
    v31 = bswap32(*(a1 + 340));
    v32 = *(v11 + 12);
    v33 = *(a1 + 355);
    *buf = 67110403;
    v39 = HIWORD(v31);
    v40 = 2160;
    v41 = 1752392040;
    v42 = 1040;
    v43 = v18;
    v44 = 2101;
    v45 = v15;
    v46 = 1024;
    v47 = v32;
    v48 = 1024;
    v49 = v33;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Q%u] CacheRecordRmvEventsForCurrentQuestion: Calling AnswerCurrentQuestionWithResourceRecord (RMV) for question - rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, local answers: %u", buf, 0x2Eu);
    goto LABEL_69;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v7 = mDNSLogCategory_Default;
    v8 = DNSTypeName(*(a1 + 342));
    LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "CacheRecordRmvEventsForQuestion: Question %p %##s (%s) is a new question", a1, a1 + 376, v8);
  }

  return 1;
}

uint64_t LocalRecordRmvEventsForQuestion(uint64_t a1)
{
  if (qword_10016D2E8)
  {
    v2 = mDNSLogCategory_Default;
    v3 = qword_10016D2E8 + 376;
    v4 = DNSTypeName(*(qword_10016D2E8 + 342));
    LogMsgWithLevel(v2, OS_LOG_TYPE_DEFAULT, "LocalRecordRmvEventsForQuestion: ERROR m->CurrentQuestion already set: %##s (%s)", v3, v4);
  }

    ;
  }

  if (i)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      v7 = mDNSLogCategory_Default;
      v8 = DNSTypeName(*(a1 + 342));
      LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "LocalRecordRmvEventsForQuestion: New Question %##s (%s)", a1 + 376, v8);
    }
  }

  else
  {
    qword_10016D2E8 = a1;
    v9 = AuthGroupForName(&qword_10016D2E8 + &loc_1000017A8, *(a1 + 200), (a1 + 376));
    if (v9)
    {
      v10 = v9[2];
      if (v10)
      {
        v11 = &unk_10016D000;
        do
        {
          if (*(v10 + 172) == 4 && (*(v10 + 8) & 0x32) != 0)
          {
            v12 = *(v10 + 12);
            v13 = v12 > 0x1C;
            v14 = (1 << v12) & 0x10001022;
            v15 = v13 || v14 == 0;
            if (!v15 && LocalOnlyRecordAnswersQuestion(v10, a1))
            {
              if (v11[208] == 1)
              {
                v16 = v11;
                v17 = mDNSLogCategory_Default;
                GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), word_1001789D0);
                v18 = v17;
                v11 = v16;
                LogMsgWithLevel(v18, OS_LOG_TYPE_DEFAULT, "LocalRecordRmvEventsForQuestion: Delivering possible Rmv events with record %s", word_1001789D0);
              }

              if (*(a1 + 228) && *(a1 + 355))
              {
                AnswerLocalQuestionWithLocalAuthRecord(mDNSStorage, v10, 0);
                if (qword_10016D2E8 != a1)
                {
                  result = 0;
                  qword_10016D2E8 = 0;
                  return result;
                }
              }

              else
              {
                v19 = mDNSLogCategory_Default;
                v20 = DNSTypeName(*(a1 + 342));
                LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "LocalRecordRmvEventsForQuestion: ERROR!! CurrentAnswers or LOAddressAnswers is zero %p %##s (%s) CurrentAnswers %d, LOAddressAnswers %d", a1, a1 + 376, v20, *(a1 + 228), *(a1 + 355));
              }
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }

    qword_10016D2E8 = 0;
  }

  return 1;
}

void mDNSCoreRestartQueries(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    v3 = mDNSLogCategory_Default;
    v4 = v2 + 376;
    v5 = DNSTypeName(*(v2 + 342));
    LogMsgWithLevel(v3, OS_LOG_TYPE_DEFAULT, "mDNSCoreRestartQueries: ERROR m->CurrentQuestion already set: %##s (%s)", v4, v5);
  }

  v6 = *(a1 + 192);
  *(a1 + 208) = v6;
  if (v6)
  {
    do
    {
      v7 = *(v6 + 8);
      *(a1 + 208) = v7;
      if (*(v6 + 340) && *(v6 + 212) >= 1 && !*(v6 + 40))
      {
        v8 = *(v6 + 96);
        if (v8)
        {
          mdns_client_invalidate(v8);
          os_release(*(v6 + 96));
          *(v6 + 96) = 0;
        }

        ActivateUnicastQuery(a1, v6, 1);
        v7 = *(a1 + 208);
      }

      v6 = v7;
    }

    while (v7);
    for (i = *(a1 + 192); i; i = *(i + 8))
    {
      mDNSCoreRestartQuestion(a1, i);
    }
  }
}

void mDNSCoreRestartRegistration(char *a1, uint64_t a2, int a3)
{
  if (!*(a2 + 32) && !*(a2 + 122) && !IsLocalDomain(*(a2 + 40)))
  {
    return;
  }

  v6 = *(a2 + 8);
  if (v6 != 2)
  {
    if (v6 != 16 || *(a2 + 88))
    {
      v7 = 0;
      goto LABEL_10;
    }

    *(a2 + 8) = 2;
  }

  v7 = 3;
LABEL_10:
  *(a2 + 190) = v7;
  if (*(a2 + 12) == 10 && ((v8 = *(a2 + 40), *v8) ? (v9 = *v8 + 1) : (v9 = 0), SameDomainLabelPointer(&v8[v9], "\n_keepalive")))
  {
    *(a2 + 191) = 0;
  }

  else
  {
    if (a3 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = 4;
    }

    if (*(a2 + 191) < v10)
    {
      *(a2 + 191) = v10;
    }
  }

  *(a2 + 200) = 0;

  InitializeLastAPTime(a1, a2);
}

void mDNSCoreMachineSleep(uint64_t a1, int a2)
{
  v4 = (a1 + 19960);
  v5 = (a1 + 15104);
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
      goto LABEL_14;
    }

    v8 = "Sleeping";
    v9 = *(a1 + 141);
    v10 = *(a1 + 64);
    if (!a2)
    {
      v8 = "Waking";
    }

    goto LABEL_13;
  }

  v6 = mDNSLogCategory_SPS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "Sleeping";
    v9 = *(a1 + 141);
    v10 = *(a1 + 64);
    if (!a2)
    {
      v8 = "Waking";
    }

LABEL_13:
    *buf = 136446722;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = v9;
    *&buf[18] = 1024;
    *&buf[20] = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s (old state %d) at %d", buf, 0x18u);
  }

LABEL_14:
  if (a2)
  {
    if (*(a1 + 141))
    {
      return;
    }

    mDNS_Lock_(a1, "mDNSCoreMachineSleep", 8361);
    if (*(a1 + 15120))
    {
      v12 = v5[5];
      v13 = *(a1 + 48);
      v14 = *(a1 + 52) + 1;
      *(a1 + 52) = v14;
      mDNS_VerifyLockState("Drop Lock", 0, v13, v14, "mDNSCoreMachineSleep", 8366);
      v5[5] = 2;
      if (v12 == 1)
      {
        mDNS_DeregisterService_drt(a1, a1 + 15128, 0);
      }

      mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNSCoreMachineSleep", 8373);
      --*(a1 + 52);
    }

    v15 = *(a1 + 15024);
    if (v15)
    {
      CloseSocketSet(*(a1 + 15024));
      free(v15);
      *(a1 + 15024) = 0;
    }

    *(a1 + 141) = 1;
    if (!*(a1 + 143) || (v16 = *(a1 + 148)) == 0)
    {
      v47 = *(a1 + 64) + 10000;
      if (v47 <= 1)
      {
        v47 = 1;
      }

      *(a1 + 148) = 0;
      *(a1 + 152) = v47;
      ++*v4;
      DNSServiceManager = Querier_GetDNSServiceManager();
      if (DNSServiceManager)
      {
        mdns_dns_service_manager_enumerate(DNSServiceManager, &__block_literal_global_50);
        if (_mdns_resolver_queue_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
        }

        dispatch_async(_mdns_resolver_queue_s_queue, &__block_literal_global_4925);
      }

      BeginSleepProcessing(a1);
LABEL_114:
      v51 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          v52 = "?";
          v55 = *(a1 + 141);
          if (v55 == 2)
          {
            v52 = "Sleeping";
          }

          v54 = *(a1 + 142);
          *buf = 67109634;
          *&buf[4] = v55;
          if (v55 == 1)
          {
            v52 = "Transferring";
          }

          goto LABEL_127;
        }
      }

      else
      {
        v51 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          v52 = "?";
          v53 = *(a1 + 141);
          if (v53 == 2)
          {
            v52 = "Sleeping";
          }

          v54 = *(a1 + 142);
          *buf = 67109634;
          *&buf[4] = v53;
          if (v53 == 1)
          {
            v52 = "Transferring";
          }

LABEL_127:
          *&buf[8] = 2082;
          *&buf[10] = v52;
          *&buf[18] = 1024;
          *&buf[20] = v54;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep: m->SleepState %d (%{public}s) seq %d", buf, 0x18u);
        }
      }

      v45 = a1;
      v46 = 8409;
      goto LABEL_129;
    }

    v17 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        v49 = v16 - *(a1 + 64);
        *buf = 67109120;
        *&buf[4] = v49;
        goto LABEL_110;
      }
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        v18 = v16 - *(a1 + 64);
        *buf = 67109120;
        *&buf[4] = v18;
LABEL_110:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep: Re-sleeping immediately after waking; will delay for %d ticks", buf, 8u);
      }
    }

    v50 = *(a1 + 148) + 10000;
    if (v50 <= 1)
    {
      v50 = 1;
    }

    *(a1 + 152) = v50;
    goto LABEL_114;
  }

  mDNS_Lock_(a1, "mDNSCoreMachineSleep", 8418);
  *(a1 + 152) = 0;
  if (*(a1 + 141))
  {
    *(a1 + 141) = 0;
    ++*(a1 + 142);
    v19 = *(a1 + 64) + 5000;
    if (v19 <= 1)
    {
      v19 = 1;
    }

    *(a1 + 148) = v19;
  }

  if (v5[5] == 3)
  {
    v5[5] = 0;
    mDNSCoreBeSleepProxyServer_internal(a1, *v5, v5[1], v5[2], v5[3], v5[4]);
  }

  ++v4[1];
  v20 = Querier_GetDNSServiceManager();
  if (v20)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = __mdns_dns_service_manager_handle_wake_block_invoke;
    *&v58 = &__block_descriptor_tmp_51;
    *(&v58 + 1) = v20;
    mdns_dns_service_manager_enumerate(v20, buf);
  }

  mDNSCoreRestartQueries(a1);
  v21 = *(a1 + 64);
  if ((v21 + 1000) <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21 + 1000;
  }

  *(a1 + 12684) = v22;
  v23 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
LABEL_44:
      *buf = 67109376;
      *&buf[4] = v22 - v21;
      *&buf[8] = 1024;
      *&buf[10] = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep waking: NextSRVUpdate in %d %d", buf, 0xEu);
    }
  }

  else
  {
    v23 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_44;
    }
  }

  v24 = time(0);
  v25 = 0;
  v26 = v24 - *(a1 + 156);
  do
  {
    v56 = v25;
    v27 = *(a1 + 272 + 8 * v25);
    if (v27)
    {
      while (1)
      {
        v28 = v27[2];
        if (v28)
        {
          break;
        }

LABEL_80:
        v27 = *v27;
        if (!v27)
        {
          goto LABEL_81;
        }
      }

      while (1)
      {
        if (*(v28 + 32))
        {
          mDNS_Reconfirm_internal(a1, v28, 0x1388u);
          goto LABEL_79;
        }

        if (v26 < 1)
        {
          goto LABEL_79;
        }

        v30 = (4 * *(v28 + 16) - 8) / 5u;
        v31 = *(a1 + 64);
        v32 = *(v28 + 80);
        v33 = (v31 - v32) / -1000 + v30;
        if (v26 > 0x2A300 || v26 >= v33)
        {
          v38 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_78;
            }
          }

          else
          {
            v38 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_78;
            }
          }

          GetRRDisplayString_rdb((v28 + 8), (*(v28 + 48) + 4), (a1 + 47032));
          *buf = 141558787;
          *&buf[4] = 1752392040;
          *&buf[12] = 2085;
          *&buf[14] = a1 + 47032;
          *&buf[22] = 1024;
          LODWORD(v58) = v26;
          WORD2(v58) = 1024;
          *(&v58 + 6) = v33;
          v39 = v38;
          v40 = "mDNSCoreMachineSleep: %{sensitive, mask.hash}s: Purging cache entry SleptTime %d, Remaining TTL %d";
          goto LABEL_77;
        }

        v34 = -1000 * v26 + v32;
        *(v28 + 80) = v34;
        v35 = v31 - (v34 + 1000 * v30);
        v29 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v36 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v36 = 1;
        }

        v37 = v36;
        if ((v35 & 0x80000000) == 0)
        {
          if (v37)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
            {
LABEL_76:
              GetRRDisplayString_rdb((v28 + 8), (*(v28 + 48) + 4), (a1 + 47032));
              *buf = 141558787;
              *&buf[4] = 1752392040;
              *&buf[12] = 2085;
              *&buf[14] = a1 + 47032;
              *&buf[22] = 1024;
              LODWORD(v58) = v33;
              WORD2(v58) = 1024;
              *(&v58 + 6) = v26;
              v39 = v29;
              v40 = "mDNSCoreMachineSleep: %{sensitive, mask.hash}s: Purging after adjusting the remaining TTL %d by %d seconds";
LABEL_77:
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, v40, buf, 0x22u);
            }
          }

          else
          {
            v29 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_76;
            }
          }

LABEL_78:
          mDNS_PurgeCacheResourceRecord(a1, v28);
          goto LABEL_79;
        }

        if (v37)
        {
          break;
        }

        v29 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_50;
        }

LABEL_79:
        v28 = *v28;
        if (!v28)
        {
          goto LABEL_80;
        }
      }

      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_79;
      }

LABEL_50:
      GetRRDisplayString_rdb((v28 + 8), (*(v28 + 48) + 4), (a1 + 47032));
      *buf = 141558787;
      *&buf[4] = 1752392040;
      *&buf[12] = 2085;
      *&buf[14] = a1 + 47032;
      *&buf[22] = 1024;
      LODWORD(v58) = v33;
      WORD2(v58) = 1024;
      *(&v58 + 6) = v26;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep: %{sensitive, mask.hash}s: Adjusted the remain ttl %d by %d seconds", buf, 0x22u);
      goto LABEL_79;
    }

LABEL_81:
    v25 = v56 + 1;
  }

  while (v56 != 498);
  for (i = *(a1 + 12616); i; i = *i)
  {
    if (*(i + 32) || *(i + 122) || IsLocalDomain(*(i + 40)))
    {
      mDNSCoreRestartRegistration(a1, i, -1);
    }

    else
    {
      ActivateUnicastRegistration(a1, i);
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
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      goto LABEL_99;
    }
  }

  else
  {
    v42 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
LABEL_99:
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "mDNSCoreMachineSleep: recreating NAT mappings in 5 seconds", buf, 2u);
    }
  }

  RecreateNATMappings(a1, 5000);
  v45 = a1;
  v46 = 8554;
LABEL_129:
  mDNS_Unlock_(v45, "mDNSCoreMachineSleep", v46);
}

uint64_t mDNS_DeregisterService_drt(unsigned int *a1, uint64_t a2, int a3)
{
  if (*(*(a2 + 2456) + 8))
  {
    if (*(a2 + 1240))
    {
      if (*(a2 + 1240) == 1)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Service set for %##s already in the process of deregistering", *(a2 + 2448));
        }

        result = 0;
        *(a2 + 16) = 0;
      }

      else
      {
        mDNS_Lock_(a1, "mDNS_DeregisterService_drt", 17918);
        v8 = *(a2 + 24);
        mDNS_Deregister_internal(a1, (a2 + 2408), 3);
        mDNS_Deregister_internal(a1, (a2 + 3584), 3);
        mDNS_Deregister_internal(a1, (a2 + 56), a3);
        for (; v8; v8 = *v8)
        {
          mDNS_Deregister_internal(a1, v8 + 2, 3);
        }

        if (*(a2 + 32))
        {
          v9 = 0;
          v10 = 0;
          do
          {
            mDNS_Deregister_internal(a1, (*(a2 + 40) + v9), a3);
            ++v10;
            v9 += 1176;
          }

          while (v10 < *(a2 + 32));
        }

        v11 = mDNS_Deregister_internal(a1, (a2 + 1232), a3);
        mDNS_Unlock_(a1, "mDNS_DeregisterService_drt", 17939);
        return v11;
      }
    }

    else
    {
      return 4294901755;
    }
  }

  else
  {
    v6 = (a2 + 2408);

    return mDNS_Deregister(a1, v6);
  }

  return result;
}

void mDNSCoreBeSleepProxyServer_internal(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6)
{
  v12 = (a1 + 12288);
  v13 = *(a1 + 48);
  v14 = *(a1 + 52) + 1;
  *(a1 + 52) = v14;
  mDNS_VerifyLockState("Drop Lock", 0, v13, v14, "mDNSCoreBeSleepProxyServer_internal", 18519);
  if (!a2)
  {
    v15 = *(a1 + 15120);
    if (v15)
    {
      CloseSocketSet(*(a1 + 15120));
      free(v15);
      *(a1 + 15120) = 0;
    }
  }

  if (v12[2821] == 1 && v12[2816] != a2)
  {
    v12[2821] = 2;
    mDNS_DeregisterService_drt(a1, a1 + 15128, a2 != 0);
  }

  v12[2816] = a2;
  v12[2817] = a3;
  v12[2818] = a4;
  v12[2819] = a5;
  v12[2820] = a6;
  if (a2)
  {
    if (*(a1 + 15120) || (v16 = mDNSPlatformUDPSocket(0), (*(a1 + 15120) = v16) != 0))
    {
      if (!v12[2821])
      {
        SleepProxyServerCallback(a1, a1 + 15128, -65792);
      }
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreBeSleepProxyServer: Failed to allocate SPSSocket");
    }
  }

  else if (v12[2821])
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreBeSleepProxyServer turning off from state %d; will wake clients", v12[2821]);
    }

    *(a1 + 108) = *(a1 + 64);
  }

  mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNSCoreBeSleepProxyServer_internal", 18555);
  --*(a1 + 52);
}

void SleepProxyServerCallback(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -65792)
  {
    if (*(a1 + 141))
    {
      *(a1 + 15109) = 3;
    }

    else
    {
      v5 = *(a1 + 15120);
      *(a1 + 15109) = v5 != 0;
      if (v5)
      {
        memset(v7, 0, sizeof(v7));
        LOBYTE(v7[0]) = mDNS_snprintf(v7 + 1, 62, "%d-%d-%d-%d.%d %#s", *(a1 + 15104), *(a1 + 15105), *(a1 + 15106), *(a1 + 15107), *(a1 + 15108), (a1 + 10280));
        mDNS_RegisterService(a1, a2, v7, "\f_sleep-proxy\x04_udp", "\x05local", 0, **(a1 + 15120), 0, "", 1u, 0, 0, 0, SleepProxyServerCallback, 0, 0);
      }

      if (mDNS_LoggingEnabled == 1)
      {
        if (*(a1 + 15109))
        {
          v6 = "started";
        }

        else
        {
          v6 = "stopped";
        }

        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Sleep Proxy Server %#s %s", *(a2 + 2448), v6);
      }
    }
  }

  else if (a3 == -65548)
  {

    mDNS_RenameAndReregisterService(a1, a2, 0);
  }
}

size_t mDNS_RenameAndReregisterService(unsigned int *a1, uint64_t a2, const char *a3)
{
  if (*(a2 + 2528))
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(a2 + 2456) + 10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v7 = *(a2 + 24);
  DeconstructServiceName(*(a2 + 2448), &v19, v14, v13);
  if (!a3)
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    a3 = &v15;
    IncrementLabelSuffix(&v15, 1);
  }

  SameDomainNameBytes(v13, "\x05local");
  if (*(a2 + 3888))
  {
    CompleteRDataUpdate(a1, a2 + 3584);
  }

  v8 = *(a2 + 3632);
  if (v8 == a2 + 4492)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a2 + 3632);
  }

  result = mDNS_RegisterService(a1, a2, a3, v14, v13, v6, *(*(a2 + 2456) + 8), v9, (v8 + 4), *(a2 + 3604), *(a2 + 40), *(a2 + 32), *(a2 + 1264), *a2, *(a2 + 8), *(a2 + 48));
  if (!result && v7)
  {
    do
    {
      v11 = *v7;
      result = mDNS_AddRecordToService(a1, a2, v7, *(v7 + 64), *(v7 + 32), 0);
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      v7 = v11;
    }

    while (!v12);
  }

  return result;
}

uint64_t NSSCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (*v2)
  {
    return (*v2)(a1);
  }

  return a1;
}

size_t mDNS_AddRecordToService(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v9 = a2[158];
  v10 = (a6 & 0x100000) == 0;
  v11 = (a6 & 0x20000) != 0 && v9 == 0;
  v12 = !v11;
  if (!v11)
  {
    v10 = 1;
  }

  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  if (v9)
  {
    v14 = 1;
  }

  else
  {
    v14 = (a6 & 0x100000) == 0;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  if (v12 == 1)
  {
    v13 = v15;
  }

  if (v9 == -5 || v9 == -3)
  {
    v17 = 5;
  }

  else
  {
    v17 = v13;
  }

  if (v9 == -2)
  {
    v18 = 4;
  }

  else
  {
    v18 = v17;
  }

  *a3 = 0;
  mDNS_SetupResourceRecord(a3 + 16, a4, v9, *(a3 + 28), a5, 2, v18, ServiceCallback, a2);
  v19 = a2 + 302;
  v20 = a2[306];
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
      v23 = v21 - v20 + 1;
      if (v23 <= 0x100u)
      {
        memcpy((a3 + 668), v20, v23);
        goto LABEL_38;
      }

      break;
    }

    v21 += v22 + 1;
  }

  while (v21 - v20 <= 255);
  *(a3 + 668) = 0;
LABEL_38:
  mDNS_Lock_(a1, "mDNS_AddRecordToService", 17765);
  v24 = *(a3 + 28);
  if (v24 == 33)
  {
    if ((*v19 & 0x32) != 0)
    {
      goto LABEL_49;
    }
  }

  else if (v24 == 16 && (a2[449] & 0x32) != 0)
  {
    v19 = a2 + 449;
    goto LABEL_49;
  }

  v25 = a2[3];
  if (!v25)
  {
    goto LABEL_51;
  }

  while (*(v25 + 14) != v24 || (v25[3] & 0x32) == 0)
  {
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_51;
    }
  }

  v19 = v25 + 3;
LABEL_49:
  v26 = *(a3 + 32);
  v27 = *(v19 + 2);
  if (v26 != v27)
  {
    v28 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a3 + 24), (*(a3 + 64) + 4), (a1 + 47032));
    LogMsgWithLevel(v28, OS_LOG_TYPE_DEFAULT, "mDNS_AddRecordToService: Correcting TTL from %4d to %4d for %s", v26, v27, (a1 + 47032));
    *(a3 + 32) = *(v19 + 2);
  }

LABEL_51:
  v29 = a2 + 3;
  do
  {
    v30 = v29;
    v29 = *v29;
  }

  while (v29);
  *(a3 + 104) = a2 + 301;
  v31 = mDNS_Register_internal(a1, a3 + 16);
  if (!v31)
  {
    *v30 = a3;
  }

  mDNS_Unlock_(a1, "mDNS_AddRecordToService", 17808);
  return v31;
}

uint64_t CheckTSRForResourceRecord(unsigned int *a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v4 = *(a2 + 40);
  if (*(v4 + 12) != a1[1])
  {
    return 0;
  }

  v5 = 604800;
  v6 = *(v4 + 8);
  v7 = *a1;
  if (*a1 <= 0x93A80)
  {
    v5 = *a1;
    goto LABEL_14;
  }

  v8 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LODWORD(v16.tv_sec) = 67109120;
    HIDWORD(v16.tv_sec) = v7;
  }

  else
  {
    v8 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LODWORD(v16.tv_sec) = 67109120;
    HIDWORD(v16.tv_sec) = v7;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CheckTSR - Out of range pktTimeSinceReceived %d in Pkt record", &v16, 8u);
LABEL_14:
  v16.tv_sec = 0;
  v16.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &v16);
  v9 = LODWORD(v16.tv_sec) - v5;
  v10 = v6 - v9;
  if (v6 - v9 < 0)
  {
    v10 = v9 - v6;
  }

  if (v10 < 3)
  {
    return 1;
  }

  if (v6 < v9)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 2;
  }

  v11 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[1];
      v13 = "win";
      v14 = *(v4 + 12);
      if (v6 < v9)
      {
        v13 = "lose";
      }

      goto LABEL_30;
    }
  }

  else
  {
    v11 = mDNSLogCategory_mDNS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[1];
      v13 = "win";
      v14 = *(v4 + 12);
      if (v6 < v9)
      {
        v13 = "lose";
      }

LABEL_30:
      LODWORD(v16.tv_sec) = 67110146;
      HIDWORD(v16.tv_sec) = v9;
      LOWORD(v16.tv_nsec) = 1024;
      *(&v16.tv_nsec + 2) = v12;
      HIWORD(v16.tv_nsec) = 2082;
      v17 = v13;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CheckTSR - pktTimeOfReceipt: %d %x %{public}s ourTimeOfReceipt: %d %x", &v16, 0x24u);
    }
  }

  return v2;
}

uint64_t CreateNewCacheEntryEx(uint64_t a1, unsigned int a2, uint64_t *a3, int a4, int a5, uint64_t a6, char a7)
{
  v8 = a6;
  v10 = a3;
  v12 = a1 + 36864;
  v13 = *(a1 + 37924);
  switch(v13)
  {
    case 6:
      v14 = 532;
      break;
    case 26:
      v14 = 514;
      break;
    case 17:
      v14 = 512;
      break;
    default:
      v14 = *(a1 + 37932);
      break;
  }

  if ((a7 & 0xC) != 0)
  {
    v16 = (a7 & 8) >> 2;
    if ((a7 & 4) != 0)
    {
      v16 = 1;
    }

    if ((a7 & 2) != 0)
    {
      return 0;
    }

    v92 = (a7 & 4) == 0;
    v93 = a7 & 0xC;
    v87 = v16;
    v94 = a4;
    v17 = ((a7 & 8) == 0) | ((a7 & 4) >> 2);
  }

  else
  {
    v93 = 0;
    v94 = a4;
    v87 = 0;
    v17 = 1;
    v92 = 1;
  }

  v90 = v17;
  if (!a3)
  {
    v18 = *(a1 + 37952);
    v19 = v18;
    while (1)
    {
      if (!v19 || (v20 = *v19, v20 > 0x3F))
      {
LABEL_20:
        v21 = a6;
        v22 = 257;
        goto LABEL_22;
      }

      if (!*v19)
      {
        break;
      }

      v19 += v20 + 1;
      if (v19 - v18 >= 256)
      {
        goto LABEL_20;
      }
    }

    v21 = a6;
    v22 = v19 - v18 + 1;
LABEL_22:
    CacheEntity = GetCacheEntity(a1, 0);
    if (!CacheEntity)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetCacheGroup: Failed to allocate memory for %##s", *(v12 + 1088));
LABEL_51:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "No cache space: Delivering non-cached result for %##s", *(v12 + 1088));
      v45 = *(a1 + 208);
      if (v45)
      {
        v46 = mDNSLogCategory_Default;
        v47 = v45 + 376;
        v48 = DNSTypeName(*(v45 + 342));
        LogMsgWithLevel(v46, OS_LOG_TYPE_DEFAULT, "NoCacheAnswer ERROR m->CurrentQuestion already set: %##s (%s)", v47, v48);
      }

      v49 = *(a1 + 192);
      *(a1 + 208) = v49;
      if (v49)
      {
        do
        {
          if (RecordAnswersQuestion(a1 + 37920, 0, v49))
          {
            AnswerCurrentQuestionWithResourceRecord(a1, a1 + 37912, 2);
          }

          v50 = *(a1 + 208);
          if (v50 == v49)
          {
            v50 = *(v49 + 8);
            *(a1 + 208) = v50;
          }

          v49 = v50;
        }

        while (v50);
      }

      v21 = 0;
      *(a1 + 208) = 0;
      return v21;
    }

    v10 = CacheEntity;
    *CacheEntity = *(a1 + 272 + 8 * a2);
    *(CacheEntity + 8) = *(v12 + 1072);
    *(CacheEntity + 16) = 0;
    *(CacheEntity + 24) = CacheEntity + 16;
    if (v22 < 0xB9u)
    {
      v24 = (CacheEntity + 40);
      v8 = v21;
    }

    else
    {
      v24 = malloc_type_malloc(v22, 0x4CAE1D07uLL);
      v8 = v21;
      if (!v24)
      {
        goto LABEL_142;
      }
    }

    v10[4] = v24;
    v25 = *(v12 + 1088);
    v26 = v25;
    do
    {
      if (!v26)
      {
        break;
      }

      v27 = *v26;
      if (v27 > 0x3F)
      {
        break;
      }

      if (!*v26)
      {
        v28 = v26 - v25 + 1;
        if (v28 <= 0x100u)
        {
          memcpy(v24, v25, v28);
          goto LABEL_37;
        }

        break;
      }

      v26 += v27 + 1;
    }

    while (v26 - v25 <= 255);
    *v24 = 0;
LABEL_37:
    if (CacheGroupForName(a1, *(v12 + 1072), *(v12 + 1088)))
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetCacheGroup: Already have CacheGroup for %##s", *(v12 + 1088));
    }

    *(a1 + 272 + 8 * a2) = v10;
    if (CacheGroupForName(a1, *(v12 + 1072), *(v12 + 1088)) != v10)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetCacheGroup: Not finding CacheGroup for %##s", *(v12 + 1088));
    }
  }

  v29 = GetCacheEntity(a1, v10);
  if (!v29)
  {
    goto LABEL_51;
  }

  v21 = v29;
  v86 = v8;
  v91 = a5;
  v30 = (v29 + 152);
  *(v29 + 48) = v29 + 152;
  v89 = v14;
  v31 = (v29 + 152);
  if (v14 >= 0x45)
  {
    v32 = malloc_type_calloc(1uLL, v14 + 4, 0xA10E7D09uLL);
    if (!v32)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v31 = v32;
    *(v21 + 48) = v32;
    *(v21 + 20) = v14;
    *v32 = v14;
  }

  v33 = *(a1 + 37928);
  *v21 = *(a1 + 37912);
  *(v21 + 16) = v33;
  v34 = *(a1 + 37944);
  v35 = *(a1 + 37960);
  v36 = *(a1 + 37992);
  *(v21 + 64) = *(a1 + 37976);
  *(v21 + 80) = v36;
  *(v21 + 32) = v34;
  *(v21 + 48) = v35;
  v37 = *(a1 + 38008);
  v38 = *(a1 + 38024);
  v39 = *(a1 + 38056);
  *(v21 + 128) = *(a1 + 38040);
  *(v21 + 144) = v39;
  *(v21 + 96) = v37;
  *(v21 + 112) = v38;
  v40 = *(a1 + 38072);
  v41 = *(a1 + 38088);
  v42 = *(a1 + 38120);
  *(v21 + 192) = *(a1 + 38104);
  *(v21 + 208) = v42;
  *(v21 + 160) = v40;
  *(v21 + 176) = v41;
  v43 = *(v21 + 56);
  if (v43)
  {
    os_retain(v43);
  }

  *(v21 + 40) = v10[4];
  *(v21 + 48) = v31;
  *(v21 + 10) = 0;
  if ((a7 & 2) != 0)
  {
    v51 = *(v21 + 8) != 240;
    v52 = _dnssec_obj_resource_record_member_new();
    v52[8] = 0;
    *(v52 + 2) = v21;
    *(v52 + 40) = v51;
LABEL_63:
    ++*v52;
    ref_count_obj_release(v52);
    *(v21 + 64) = v52;
    v31 = *(v21 + 48);
    v44 = v94;
    goto LABEL_64;
  }

  v44 = v94;
  if (v93)
  {
    if (v92 & v90)
    {
      return 0;
    }

    if (!v87)
    {
LABEL_143:
      *(v21 + 64) = 0;
      return 0;
    }

    v52 = _dnssec_obj_resource_record_member_new();
    v52[8] = 1;
    *(v52 + 2) = v21;
    v52[10] = v87;
    *(v52 + 44) = (a7 & 0x10) != 0;
    goto LABEL_63;
  }

LABEL_64:
  *(v21 + 84) = v44;
  if (v31 == v30 && v14 >= 0x45)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "rr->resrec.rdata == &rr->rdatastorage but length > InlineCacheRDSize %##s", *(v12 + 1088));
    v31 = *(v21 + 48);
    v53 = v91;
LABEL_67:
    memcpy(v31, *(v12 + 1096), v89 + 4);
    goto LABEL_72;
  }

  if (v31 == v30 || v14 > 0x44)
  {
    v54 = v14 >= 0x45;
    v53 = v91;
    if (v54)
    {
      goto LABEL_67;
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "rr->resrec.rdata != &rr->rdatastorage but length <= InlineCacheRDSize %##s", *(v12 + 1088));
    v53 = v91;
  }

LABEL_72:
  *v21 = 0;
  *(v21 + 120) = 0;
  if (v86)
  {
    v55 = *v86;
    *(v21 + 148) = *(v86 + 16);
    *(v21 + 132) = v55;
  }

  if (!*(v21 + 32))
  {
    *(a1 + 248) += *(v21 + 20);
  }

  if (a7)
  {
    *(v21 + 109) = 1;
  }

  *(v21 + 129) = 0;
  if (v53)
  {
    AddCacheRecordToCacheGroup(v10, v21);
    for (i = *(a1 + 192); i; i = *(i + 8))
    {
      if (i == *(a1 + 200))
      {
        break;
      }

      if (RecordAnswersQuestion(v21 + 8, 0, i))
      {
        v57 = *(a1 + 132);
        if (*(i + 220) != v57)
        {
          *(i + 220) = v57;
          if (!*(i + 340))
          {
            v62 = *(i + 212);
            if (v62 >= 1 && !*(i + 40))
            {
              v63 = *(i + 224) + 1;
              *(i + 224) = v63;
              if (v63 >= 0xA && v62 >= 9019 && *(a1 + 64) - *(i + 256) <= 999)
              {
                v64 = mDNSLogCategory_Default;
                v65 = DNSTypeName(*(i + 342));
                LogMsgWithLevel(v64, OS_LOG_TYPE_DEFAULT, "CacheRecordAdd: %##s (%s) got immediate answer burst (%d); restarting exponential backoff sequence (%d)", i + 376, v65, *(i + 224), *(i + 212));
                v66 = *(a1 + 64);
                do
                {
                  v67 = arc4random() & 0xFFF;
                }

                while (v67 > 0xFA0);
                *(i + 208) = v67 + v66 - 334;
                *(i + 212) = 334;
                SetNextQueryTime(a1, i);
              }
            }
          }
        }

        v58 = *(i + 228) + 1;
        *(i + 228) = v58;
        if (*(v21 + 20) >= 0x401u)
        {
          ++*(i + 232);
        }

        if ((*(v21 + 8) & 0x10) != 0)
        {
          ++*(i + 236);
        }

        if (v58 >= 0xFA1)
        {
          v59 = CacheRecordAdd_msgcount++;
          if (v59 <= 9)
          {
            v60 = mDNSLogCategory_Default;
            v61 = DNSTypeName(*(i + 342));
            LogMsgWithLevel(v60, OS_LOG_TYPE_DEFAULT, "CacheRecordAdd: %##s (%s) has %d answers; shedding records to resist DOS attack", i + 376, v61, *(i + 228));
          }

          *(v21 + 16) = 0;
          *(v21 + 108) = 4;
        }
      }
    }

    if (!*(v21 + 84))
    {
      v68 = *(a1 + 208);
      if (v68)
      {
        v69 = mDNSLogCategory_Default;
        v70 = v68 + 376;
        v71 = DNSTypeName(*(v68 + 342));
        LogMsgWithLevel(v69, OS_LOG_TYPE_DEFAULT, "CacheRecordAdd ERROR m->CurrentQuestion already set: %##s (%s)", v70, v71);
      }

      v72 = *(a1 + 192);
      *(a1 + 208) = v72;
      if (v72)
      {
        do
        {
          if (v72 == *(a1 + 200))
          {
            break;
          }

          if (RecordAnswersQuestion(v21 + 8, 0, v72))
          {
            AnswerCurrentQuestionWithResourceRecord(a1, v21, 1);
          }

          v73 = *(a1 + 208);
          if (v73 == v72)
          {
            v73 = *(v72 + 8);
            *(a1 + 208) = v73;
          }

          v72 = v73;
        }

        while (v73);
      }

      *(a1 + 208) = 0;
    }

    SetNextCacheCheckTimeForRecord(a1, v21);
    if (*(v21 + 12) != 47)
    {
      v74 = *(v21 + 132);
      if (v74 == 6)
      {
        if (!*&vorr_s8(*(v21 + 136), *&vextq_s8(*(v21 + 136), *(v21 + 136), 8uLL)))
        {
          return v21;
        }
      }

      else if (v74 != 4 || !*(v21 + 136))
      {
        return v21;
      }

      if (mDNS_AddressIsLocalSubnet(a1, *(v21 + 32), (v21 + 132)) && !IsSubdomain(*(v21 + 40), "\x03ip6\x04arpa") && !IsSubdomain(*(v21 + 40), "\ain-addr\x04arpa"))
      {
        unicast_assist_addr_add(*(v21 + 40), *(v21 + 24), *(v21 + 12), *(v21 + 8), (v21 + 132), *(v21 + 32));
      }
    }
  }

  else
  {
    v75 = v10[4];
    v76 = v75;
    while (1)
    {
      if (!v76 || (v77 = *v76, v77 > 0x3F))
      {
LABEL_123:
        LOWORD(v78) = 257;
        goto LABEL_130;
      }

      if (!*v76)
      {
        break;
      }

      v76 += v77 + 1;
      if (&v76[-v75] > 255)
      {
        goto LABEL_123;
      }
    }

    v78 = (v76 - v75) + 1;
    if ((v78 & 0x10000) != 0)
    {
      goto LABEL_142;
    }

LABEL_130:
    v79 = malloc_type_malloc(v78, 0x57C0F561uLL);
    if (!v79)
    {
      goto LABEL_142;
    }

    v80 = v79;
    v81 = v10[4];
    v82 = v81;
    do
    {
      if (!v82)
      {
        break;
      }

      v83 = *v82;
      if (v83 > 0x3F)
      {
        break;
      }

      if (!*v82)
      {
        v84 = v82 - v81 + 1;
        if (v84 <= 0x100u)
        {
          memcpy(v79, v81, v84);
          goto LABEL_140;
        }

        break;
      }

      v82 += v83 + 1;
    }

    while (v82 - v81 <= 255);
    *v79 = 0;
LABEL_140:
    *(v21 + 40) = v80;
  }

  return v21;
}

void *AddCacheRecordToCacheGroup(uint64_t a1, void *a2)
{
  v2 = a2[8];
  if (!v2 || *(v2 + 32))
  {
    v4 = *(a1 + 24);
    result = (a1 + 24);
    *v4 = a2;
LABEL_4:
    *result = a2;
    return result;
  }

  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    while (1)
    {
      v7 = v5;
      v5 = v6;
      if (*(v6 + 6) == 5)
      {
        v8 = v6[8];
        if (v8)
        {
          if (!*(v8 + 32))
          {
            break;
          }
        }
      }

      v6 = *v5;
      if (!*v5)
      {
        goto LABEL_13;
      }
    }

    v6 = v5;
    v5 = v7;
  }

LABEL_13:
  *a2 = v6;
  *v5 = a2;
  v9 = *(a1 + 24);
  result = (a1 + 24);
  if (v5 == v9)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t RefreshCacheRecord(uint64_t result, uint64_t a2, int a3)
{
  *(a2 + 80) = *(result + 64);
  *(a2 + 16) = a3;
  *(a2 + 108) = 0;
  if (*(a2 + 10))
  {
    *(a2 + 10) = 1;
  }

  v3 = *(result + 37968);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      v5 = *(a2 + 56);
      if (v5)
      {
        if (*(v4 + 281) == 5 && v4 == *(v5 + 24))
        {
          *(v5 + 40) = *(v3 + 40);
          *(a2 + 109) = 1;
        }
      }
    }
  }

  return SetNextCacheCheckTimeForRecord(result, a2);
}

void mDNSCoreReceiveForQuerier(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *(mDNSStorage + &loc_100004E2C) = bswap32(*(mDNSStorage + &loc_100004E2C)) >> 16;
  *(mDNSStorage + &loc_100004E2C + 2) = bswap32(*(mDNSStorage + &loc_100004E2C + 2)) >> 16;
  *(mDNSStorage + &loc_100004E30) = bswap32(*(mDNSStorage + &loc_100004E30)) >> 16;
  *(mDNSStorage + &loc_100004E30 + 2) = bswap32(*(mDNSStorage + &loc_100004E30 + 2)) >> 16;
  mDNS_Lock_(mDNSStorage, "mDNSCoreReceiveForQuerier", 13939);
  mDNSCoreReceiveResponse(mDNSStorage, mDNSStorage + &loc_100004E28, a1, 0, 0, 0, 0, a2, a3, a4, 0);

  mDNS_Unlock_(mDNSStorage, "mDNSCoreReceiveForQuerier", 13941);
}

void mDNSCoreReceiveResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, int a11)
{
  v11 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = v14;
  v759 = v16;
  v17 = v13;
  v785 = v18;
  v19 = v12;
  v21 = v20;
  v23 = v22;
  v24 = v11;
  v25 = a10;
  if (v13)
  {
    IsDNSMulticast = mDNSAddrIsDNSMulticast(v13);
    if (v19)
    {
LABEL_3:
      v26 = mDNS_AddressIsLocalSubnet(v24, a10, v19) != 0;
      goto LABEL_6;
    }
  }

  else
  {
    IsDNSMulticast = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v26 = 1;
LABEL_6:
  v795 = v26;
  v839 = 1;
  if (a10)
  {
    for (i = *(v24 + 12656); i; i = *i)
    {
      if (i[444] == a10 && *(i + 890) == 4 && *(i + 3564) == 169 && *(i + 3565) == 254)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
  }

  v823 = v24;
  v778 = i;
  v788 = v17;
  v787 = v19;
  if (v15)
  {
    v28 = *(v15 + 16);
    if (v28 == &_mdns_querier_kind)
    {
      v29 = v15;
    }

    else
    {
      v29 = 0;
    }

    v30 = v15;
    if (v28 == &_mdns_subscriber_kind)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = 0;
LABEL_23:
  v835 = v30;
  v815 = v23[3];
  v31 = v23[4];
  v32 = v23[5];
  v824 = IsResponseMDNSEquivalent(v15, a9);
  v838 = 0;
  if (!a10 && !v15 && (v23[1] & 2) != 0 && (!v815 || !(v31 | v32)))
  {
    return;
  }

  v812 = v31 + v815;
  v33 = (v823 + 37920);
  OptRR = LocateOptRR(v23, v21, 0xEu);
  v805 = v23;
  v826 = v21;
  v837 = v29;
  v790 = (v823 + 37920);
  v797 = v15;
  if (!OptRR)
  {
    v38 = 0;
    goto LABEL_69;
  }

  if (!GetLargeResourceRecord(v823, v23, OptRR, v21, a10, 128, v823 + 37912) || *v33 == 240 || *(v823 + 37924) != 41)
  {
    v38 = 0;
    goto LABEL_61;
  }

  v35 = *(v823 + 37960);
  v36 = v35 + 4 + *(v823 + 37932);
  if (v35 + 4 >= v36)
  {
    v38 = 0;
    v838 = 0;
    v25 = a10;
    goto LABEL_61;
  }

  v37 = 0;
  v38 = 0;
  v39 = (v35 + 16);
  do
  {
    if (*(v39 - 6) != -534)
    {
      goto LABEL_51;
    }

    ++v37;
    v40 = *v39;
    v41 = DomainNamePtrAtTSRIndex(v805, v21, v40);
    if (v41)
    {
      v42 = UnsafeBufferPointer(v805, v41, v21, (v39 - 6));
      if (v42)
      {
        *v42 = v38;
        v38 = v42;
        goto LABEL_51;
      }

      v50 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          v57 = *(v823 + 37944);
          v58 = *(v39 - 2);
          v59 = *(v39 - 1);
          v60 = *v39;
          *v888 = 67110144;
          *&v888[4] = v37;
          *&v888[8] = 2048;
          *&v888[10] = v57;
          *&v888[18] = 1024;
          *&v888[20] = v58;
          *&v888[24] = 1024;
          *&v888[26] = v59;
          *&v888[30] = 1024;
          *&v888[32] = v60;
          v48 = v50;
          v49 = "mDNSCoreReceiveResponse: Create TSR(%u) failed - if %p tsrTime %d tsrHost %x recIndex %d";
          goto LABEL_49;
        }
      }

      else
      {
        v51 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          v52 = *(v823 + 37944);
          v53 = *(v39 - 2);
          v54 = *(v39 - 1);
          v55 = *v39;
          *v888 = 67110144;
          *&v888[4] = v37;
          *&v888[8] = 2048;
          *&v888[10] = v52;
          *&v888[18] = 1024;
          *&v888[20] = v53;
          *&v888[24] = 1024;
          *&v888[26] = v54;
          *&v888[30] = 1024;
          *&v888[32] = v55;
          v48 = v51;
          v49 = "mDNSCoreReceiveResponse: Create TSR(%u) failed - if %p tsrTime %d tsrHost %x recIndex %d";
          goto LABEL_49;
        }
      }
    }

    else
    {
      v43 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v44 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v44 = 1;
      }

      if (!v44)
      {
        v43 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

LABEL_40:
        v45 = *(v823 + 37944);
        v46 = *(v39 - 2);
        v47 = *(v39 - 1);
        *v888 = 67110144;
        *&v888[4] = v37;
        *&v888[8] = 2048;
        *&v888[10] = v45;
        *&v888[18] = 1024;
        *&v888[20] = v46;
        *&v888[24] = 1024;
        *&v888[26] = v47;
        *&v888[30] = 1024;
        *&v888[32] = v40;
        v48 = v43;
        v49 = "mDNSCoreReceiveResponse: No Domain Name for TSR(%u) if %p tsrTime %d tsrHost %x recIndex %d";
LABEL_49:
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, v49, v888, 0x24u);
        goto LABEL_50;
      }

      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }
    }

LABEL_50:
    v21 = v826;
LABEL_51:
    v61 = v39 + 6;
    v39 += 12;
  }

  while (v61 < v36);
  v838 = v38;
  v25 = a10;
  if (v38)
  {
    v62 = v37;
    v63 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v64 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      v33 = (v823 + 37920);
      v15 = v797;
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_1939;
      }
    }

    else
    {
      v63 = mDNSLogCategory_mDNS_redacted;
      v749 = os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG);
      v33 = (v823 + 37920);
      v15 = v797;
      if (v749)
      {
LABEL_1939:
        v750 = *(v823 + 37944);
        GetRRDisplayString_rdb((v823 + 37920), (*(v823 + 37960) + 4), (v823 + 47032));
        *v888 = 67109634;
        *&v888[4] = v62;
        *&v888[8] = 2048;
        *&v888[10] = v750;
        *&v888[18] = 2082;
        *&v888[20] = v823 + 47032;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "mDNSCoreReceiveResponse: Received TSR(%u) if %p %{public}s", v888, 0x1Cu);
      }
    }

    v23 = v805;
    v29 = v837;
  }

  else
  {
    v23 = v805;
    v29 = v837;
    v33 = (v823 + 37920);
    v15 = v797;
  }

LABEL_61:
  *v33 = 0;
  *(v33 + 51) = 0;
  v65 = *(v33 + 7);
  if (v65)
  {
    ref_count_obj_release(v65);
    *(v33 + 7) = 0;
  }

LABEL_69:
  v817 = v812 + v32;
  if (IsDNSMulticast)
  {
    Answers = LocateAnswers(v23, v21);
    v67 = v835;
    goto LABEL_71;
  }

  v69 = 0xFDF6u >> (*(v23 + 3) & 0xF);
  Answers = (v23 + 6);
  v70 = v812 + v32;
  if (((v29 != 0) & v69) != 0)
  {
    v70 = 0;
  }

  v817 = v70;
  v67 = v835;
  if (v23[2] && Answers < v21)
  {
    v71 = 0;
    v72 = 0;
    v827 = (v29 != 0) & v69 ^ v69;
    while (1)
    {
      bzero(v888, 0x2B8uLL);
      Answers = getQuestion(v23, Answers, v21, a10, v888);
      if (Answers)
      {
        if (!v67)
        {
          break;
        }
      }

LABEL_125:
      v86 = ++v71 >= v23[2] || Answers == 0 || Answers >= v21;
      if (v86)
      {
        v25 = a10;
        if (!v72)
        {
          goto LABEL_71;
        }

        v87 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v363 = bswap32(*v23) >> 16;
          v364 = v23[3];
          v365 = "s,";
          v91 = v23[4];
          v92 = v23[5];
          *v888 = 67110658;
          if (v364 == 1)
          {
            v365 = ", ";
          }

          *&v888[4] = v363;
          *&v888[8] = 1024;
          if (v91 == 1)
          {
            v93 = "y,  ";
          }

          else
          {
            v93 = "ies,";
          }

          *&v888[10] = v364;
          v94 = "s";
          *&v888[14] = 2082;
          *&v888[16] = v365;
          if (v92 == 1)
          {
            v94 = "";
          }
        }

        else
        {
          v87 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v88 = bswap32(*v23) >> 16;
          v89 = v23[3];
          v90 = "s,";
          v91 = v23[4];
          v92 = v23[5];
          *v888 = 67110658;
          if (v89 == 1)
          {
            v90 = ", ";
          }

          *&v888[4] = v88;
          *&v888[8] = 1024;
          if (v91 == 1)
          {
            v93 = "y,  ";
          }

          else
          {
            v93 = "ies,";
          }

          *&v888[10] = v89;
          v94 = "s";
          *&v888[14] = 2082;
          *&v888[16] = v90;
          if (v92 == 1)
          {
            v94 = "";
          }
        }

        *&v888[24] = 1024;
        *&v888[26] = v91;
        *&v888[30] = 2082;
        *&v888[32] = v93;
        *&v888[40] = 1024;
        *&v888[42] = v92;
        *&v888[46] = 2082;
        *&v888[48] = v94;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[Q%d] Ignoring %2d Answer%{public}s %2d Authorit%{public}s %2d Additional%{public}s", v888, 0x38u);
        return;
      }
    }

    if (v15)
    {
      v73 = 0;
      goto LABEL_85;
    }

    v73 = ExpectingUnicastResponseForQuestion(*(v823 + 192), v759, *v23, v888, v788 == 0);
    if (v73)
    {
LABEL_85:
      if ((v827 & 1) == 0)
      {
        v831 = Answers;
        v74 = CacheGroupForName(v823, *(&v893 + 7), v897);
        if (!v74)
        {
          v29 = v837;
          goto LABEL_125;
        }

        v806 = v72;
        v75 = v74[2];
        if (!v75)
        {
LABEL_123:
          v29 = v837;
          Answers = v831;
          v72 = v806;
          goto LABEL_125;
        }

        while (2)
        {
          if (*(v75 + 12) != 5 || *(v75 + 8) == 240 || !*(v75 + 84))
          {
            if (v15)
            {
              v76 = *(v75 + 56);
              if (v76)
              {
                v76 = v76[3];
              }

              if (v76 == a9 && Client_SameNameCacheRecordIsAnswer(v75, v15))
              {
LABEL_101:
                if (!*(v75 + 109))
                {
                  v77 = mDNSLogCategory_Default;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                    {
                      v81 = v897;
                      v801 = *(&v889 + 7);
                      while (1)
                      {
                        if (!v81 || (v82 = *v81, v82 > 0x3F))
                        {
LABEL_117:
                          v80 = 257;
                          goto LABEL_120;
                        }

                        if (!*v81)
                        {
                          break;
                        }

                        v81 += v82 + 1;
                        if (v81 - v897 >= 256)
                        {
                          goto LABEL_117;
                        }
                      }

                      v80 = (v81 - v897 + 1);
LABEL_120:
                      v83 = DNSTypeName(v896);
                      v84 = *(v75 + 32);
                      GetRRDisplayString_rdb((v75 + 8), (*(v75 + 48) + 4), (v823 + 47032));
                      *v862 = 134220035;
                      *&v862[4] = v801;
                      *&v862[12] = 2160;
                      *&v862[14] = 1752392040;
                      v863 = 1040;
                      v864 = v80;
                      v865 = 2101;
                      v866 = v897;
                      v867 = 2160;
                      v868 = 1752392040;
                      v869 = 2085;
                      v870 = v83;
                      v871 = 2048;
                      v872 = v84;
                      v873 = 2160;
                      v874 = 1752392040;
                      v875 = 2085;
                      v876 = v823 + 47032;
                      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "Making record answered by the current response as expired if it is not refreshed in the response - Q interface ID: %p, qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, RR interface ID: %p, RR description: %{sensitive, mask.hash}s.", v862, 0x58u);
                      v23 = v805;
                      v67 = v835;
                      v15 = v797;
                    }
                  }

                  else
                  {
                    v77 = mDNSLogCategory_Default_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                    {
                      v78 = v897;
                      v801 = *(&v889 + 7);
                      while (1)
                      {
                        if (!v78 || (v79 = *v78, v79 > 0x3F))
                        {
LABEL_110:
                          v80 = 257;
                          goto LABEL_120;
                        }

                        if (!*v78)
                        {
                          break;
                        }

                        v78 += v79 + 1;
                        if (v78 - v897 >= 256)
                        {
                          goto LABEL_110;
                        }
                      }

                      v80 = (v78 - v897 + 1);
                      goto LABEL_120;
                    }
                  }

                  *(v75 + 80) = *(v823 + 64) + ~(1000 * *(v75 + 16));
                  *(v75 + 108) = 4;
                  v21 = v826;
                }
              }
            }

            else if (SameNameRecordAnswersQuestion((v75 + 8), 0, v73))
            {
              goto LABEL_101;
            }
          }

          v75 = *v75;
          if (!v75)
          {
            goto LABEL_123;
          }

          continue;
        }
      }

      v72 = 1;
    }

    v29 = v837;
    goto LABEL_125;
  }

LABEL_71:
  bzero(v845, 0x320uLL);
  bzero(v844, 0x960uLL);
  v810 = 0;
  if (!v824 && v29)
  {
    v68 = *(*(v29 + 96) + 70);
    if ((v68 & 4) != 0)
    {
      v810 = (v68 >> 1) & 1;
    }

    else
    {
      v810 = 0;
    }
  }

  object = 0;
  v802 = 0;
  v95 = 1;
  if (v817 < 1 || !Answers)
  {
    v791 = 0;
    goto LABEL_912;
  }

  v791 = 0;
  if (Answers >= v21)
  {
    goto LABEL_912;
  }

  v96 = v21;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v782 = 0;
  v791 = 0;
  v802 = 0;
  if (v788 | v15)
  {
    v100 = IsDNSMulticast;
  }

  else
  {
    v100 = 1;
  }

  __src = v100;
  v807 = (v29 | v67) != 0;
  v101 = "uni";
  if (IsDNSMulticast)
  {
    v101 = "multi";
  }

  v756 = v101;
  if (v810)
  {
    v102 = 2;
  }

  else
  {
    v102 = 0;
  }

  if (v67)
  {
    ++v102;
  }

  v765 = v102;
  v828 = v823 + 37912;
  v755 = bswap32(v759) >> 16;
  v793 = (v823 + 47032);
  v760 = bswap32(v785) >> 16;
  v762 = v823 + 4264;
  if (v788)
  {
    v103 = v787 == 0;
  }

  else
  {
    v103 = 1;
  }

  v104 = !v103;
  v757 = v104;
  v771 = &v839;
  v105 = Answers;
  while (2)
  {
    if (v98)
    {
      v106 = 1;
    }

    else
    {
      v106 = __src;
    }

    if (v97 >= v812)
    {
      v107 = 0x80;
    }

    else
    {
      v107 = -96;
    }

    if (v97 < v815)
    {
      v107 = -64;
    }

    LargeResourceRecord = GetLargeResourceRecord(v823, v23, v105, v96, v25, v107 & 0xE0, v828);
    if (!LargeResourceRecord)
    {
      object = v99;
      v358 = v826;
      v359 = v823 + 37920;
      v360 = v802;
      goto LABEL_972;
    }

    v832 = LargeResourceRecord;
    if (DPCFeatureEnabled_sOnce != -1)
    {
      dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
    }

    if (DPCFeatureEnabled_sEnabled)
    {
      if (v824)
      {
        if (!v67)
        {
          v109 = *(v823 + 37952);
          v110 = *(v823 + 37924);
          v111 = *(v823 + 37926);
          if (DPCFeatureEnabled_sEnabled)
          {
            if (_DPCGetRegisteredSubscriber(v25, v109, v110, v111))
            {
              goto LABEL_794;
            }
          }
        }
      }
    }

    if (v807)
    {
      if (v99)
      {
        goto LABEL_194;
      }

      v112 = mdns_cache_metadata_create();
      v99 = v112;
      if (v29)
      {
        v113 = *(*(*(v29 + 72) + 16) + 144);
        if (v113 == 1)
        {
          if (*(v29 + 250))
          {
            v113 = 2;
          }

          else
          {
            v113 = 1;
          }
        }

        *(v112 + 48) = v113;
        mdns_cache_metadata_set_extended_dns_error(v112, *(v29 + 160));
      }

      if (v67)
      {
        v99[5] = *(v67 + 128);
        mdns_dns_push_service_definition_set_srv_name(v99, a9);
        goto LABEL_194;
      }

      mdns_dns_push_service_definition_set_srv_name(v99, a9);
      if (v99)
      {
LABEL_194:
        os_retain(v99);
      }

      v115 = *(v823 + 37968);
      if (v115)
      {
        os_release(v115);
      }

      v114 = (v823 + 37920);
      *(v823 + 37968) = v99;
    }

    else
    {
      v114 = (v823 + 37920);
    }

    if (*v114 == 240)
    {
      goto LABEL_795;
    }

    objecta = v99;
    if (v810)
    {
      v116 = _dnssec_obj_resource_record_member_new();
      v116[8] = 0;
      *(v116 + 2) = v828;
      *(v116 + 40) = 1;
      ++*v116;
      ref_count_obj_release(v116);
      *(v823 + 37976) = v116;
      v99 = objecta;
    }

    v117 = *(v823 + 37924);
    if (v117 == 5)
    {
      if (SameDomainNameBytes(*(v823 + 37952), (*(v823 + 37960) + 4)))
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: CNAME loop domain name %##s", *(v823 + 37952));
        }

        goto LABEL_794;
      }

LABEL_217:
      if (!v824)
      {
        v123 = *(v823 + 37928);
        if (v123 >= 0x189374)
        {
          v123 = 1610612;
        }

        v124 = v123 + (v123 >> 2) + 2;
        if (v124 <= 0xF)
        {
          v124 = 15;
        }

        *(v823 + 37928) = v124;
      }

      if (IsDNSMulticast)
      {
        if (v778 && *(v778 + 3674) && *(v823 + 37924) == 1 && *(v823 + 38068) == 169 && *(v823 + 38069) == 254)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v125 = mDNSLogCategory_Default;
            GetRRDisplayString_rdb((v823 + 37920), (*(v823 + 37960) + 4), v793);
            v126 = v125;
            v99 = objecta;
            LogMsgWithLevel(v126, OS_LOG_TYPE_DEFAULT, "mDNSResponder: Dropping LinkLocal packet %s");
          }

          goto LABEL_794;
        }

        goto LABEL_289;
      }

      if (v788 && (v106 & 1) != 0)
      {
        v106 = 1;
        goto LABEL_289;
      }

      if (v797)
      {
        v127 = (*(*(v797 + 16) + 96))(v797, v109, v110, v111);
        v128 = (*(*(v797 + 16) + 88))(v797);
        if (v128)
        {
          v129 = v128;
          v130 = *(v823 + 37926);
          if (v130 == (*(*(v797 + 16) + 104))(v797))
          {
            if (*(v797 + 16) == &_mdns_querier_kind && (v131 = *(*(v797 + 96) + 70), (v131 & 4) != 0))
            {
              v132 = (v131 >> 1) & 1;
            }

            else
            {
              LOBYTE(v132) = 0;
            }

            if (RRTypeAnswersQuestionType(v790, v127, v132) && SameDomainNameBytes(*(v823 + 37952), *(v129 + 24)))
            {
              v106 = 1;
            }
          }
        }

        goto LABEL_288;
      }

      v133 = *(v823 + 192);
      if (!v133)
      {
        goto LABEL_286;
      }

      v134 = *v23;
      while (1)
      {
        if (!*(v133 + 40) && !*(v133 + 354))
        {
          v135 = *(v823 + 37944);
          if ((!v135 || (v136 = *(v133 + 136)) == 0 || v135 == v136) && ((v137 = *(v823 + 37968)) != 0 && *(v137 + 24) || !v135 || !*(v133 + 340)))
          {
            v138 = *(v133 + 144);
            v139 = v138 ? *(v138 + 24) : 0;
            if (RRTypeAnswersQuestionType(v790, *(v133 + 342), v139))
            {
              v140 = *(v133 + 344);
              if ((*(v823 + 37926) == v140 || v140 == 255) && *(v823 + 37936) == *(v133 + 200))
              {
                v141 = v133 + 376;
                if (SameDomainNameBytes(*(v823 + 37952), (v133 + 376)))
                {
                  if (*(v133 + 340))
                  {
                    if (*(v133 + 340) == v134)
                    {
                      if (v788)
                      {
                        v143 = *(v133 + 72);
                        if (!v143)
                        {
                          v143 = &zeroIPPort;
                        }
                      }

                      else
                      {
                        v143 = (v133 + 338);
                      }

                      if (*v143 == v759)
                      {
LABEL_279:
                        v144 = v782;
                        if (v25)
                        {
                          v144 = 1;
                        }

                        v782 = v144;
                        if (v25)
                        {
                          v98 = 1;
                        }

                        v106 = 1;
                        goto LABEL_288;
                      }

                      if (mDNS_LoggingEnabled == 1)
                      {
                        v145 = mDNSLogCategory_Default;
                        v146 = DNSTypeName(*(v133 + 342));
                        v147 = v98;
                        v148 = v146;
                        GetRRDisplayString_rdb((v823 + 37920), (*(v823 + 37960) + 4), v793);
                        v751 = v148;
                        v98 = v147;
                        LogMsgWithLevel(v145, OS_LOG_TYPE_DEFAULT, "WARNING: Ignoring suspect uDNS response for %##s (%s) from %#a:%d %s", v141, v751, v787, v755, v793);
                      }

LABEL_286:
                      if (!v25)
                      {
                        v106 = 0;
                      }

LABEL_288:
                      v29 = v837;
LABEL_289:
                      v780 = v98;
                      if (!v824 || *(v823 + 37924) == 47)
                      {
                        goto LABEL_486;
                      }

                      v149 = *(v823 + 12640);
                      if (v149)
                      {
                        v150 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb((v149 + 8), (*(v149 + 48) + 4), v793);
                        LogMsgWithLevel(v150, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse ERROR m->CurrentRecord already set %s", v793);
                      }

                      v151 = *(v823 + 12616);
                      *(v823 + 12640) = v151;
                      if (!v151)
                      {
                        goto LABEL_486;
                      }

                      while (2)
                      {
                        v152 = *v151;
                        *(v823 + 12640) = *v151;
                        if ((v106 & 1) == 0)
                        {
                          if (!v795)
                          {
                            goto LABEL_444;
                          }

                          if (*(v151 + 8) != 2)
                          {
                            goto LABEL_442;
                          }
                        }

                        if (!PacketRRMatchesSignature(v828, v151))
                        {
                          goto LABEL_442;
                        }

                        v153 = *(v823 + 37952);
                        v154 = &v838;
                        do
                        {
                          v154 = *v154;
                          if (!v154)
                          {
                            goto LABEL_315;
                          }
                        }

                        while (!SameDomainNameBytes(v154 + 20, v153));
                        v155 = mDNSGetTSRForAuthRecordNamed(*(v823 + 12616), *(v151 + 40), *(v151 + 24));
                        if (v155)
                        {
                          v156 = CheckTSRForResourceRecord(v154 + 2, (v155 + 1));
                          if (v156)
                          {
                            if (v156 != -1)
                            {
LABEL_442:
                              v164 = v823;
                              goto LABEL_443;
                            }

                            v157 = mDNSLogCategory_mDNS;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                            {
                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                v158 = *(v151 + 40);
                                if (v158)
                                {
                                  v180 = *(v151 + 40);
                                  while (1)
                                  {
                                    if (!v180 || (v181 = *v180, v181 > 0x3F))
                                    {
LABEL_383:
                                      v161 = 257;
                                      goto LABEL_433;
                                    }

                                    if (!*v180)
                                    {
                                      break;
                                    }

                                    v180 += v181 + 1;
                                    if (&v180[-v158] >= 256)
                                    {
                                      goto LABEL_383;
                                    }
                                  }

                                  v161 = (v180 - v158 + 1);
                                }

                                else
                                {
                                  v161 = 0;
                                }

LABEL_433:
                                v189 = DNSTypeName(*(v151 + 12));
                                *v888 = 141559043;
                                *&v888[4] = 1752392040;
                                *&v888[12] = 1040;
                                *&v888[14] = v161;
                                *&v888[18] = 2101;
                                *&v888[20] = v158;
                                *&v888[28] = 2082;
                                *&v888[30] = v189;
                                *&v888[38] = 1024;
                                *&v888[40] = v25;
                                _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse - deregistering %{sensitive, mask.hash, mdnsresponder:domain_name}.*P type %{public}s on interface %d due to TSR conflict", v888, 0x2Cu);
                                v29 = v837;
                              }
                            }

                            else
                            {
                              v157 = mDNSLogCategory_mDNS_redacted;
                              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                v158 = *(v151 + 40);
                                if (v158)
                                {
                                  v159 = *(v151 + 40);
                                  while (1)
                                  {
                                    if (!v159 || (v160 = *v159, v160 > 0x3F))
                                    {
LABEL_311:
                                      v161 = 257;
                                      goto LABEL_433;
                                    }

                                    if (!*v159)
                                    {
                                      break;
                                    }

                                    v159 += v160 + 1;
                                    if (&v159[-v158] >= 256)
                                    {
                                      goto LABEL_311;
                                    }
                                  }

                                  v161 = (v159 - v158 + 1);
                                }

                                else
                                {
                                  v161 = 0;
                                }

                                goto LABEL_433;
                              }
                            }

                            D2D_stop_advertising_record(v151);
                            v190 = v151;
                            v164 = v823;
                            mDNS_Deregister_internal(v823, v190, 4);
                            goto LABEL_443;
                          }
                        }

LABEL_315:
                        if (resource_records_have_same_dnssec_rr_category(*(v823 + 37976), *(v151 + 64)) && *(v823 + 37924) == *(v151 + 12) && *(v823 + 37926) == *(v151 + 14) && *(v823 + 37932) == *(v151 + 20) && *(v823 + 37940) == *(v151 + 28) && SameRDataBody(v790, (*(v151 + 48) + 4), SameDomainName))
                        {
                          if (*(v823 + 37928) >= *(v151 + 16) >> 1 || *(v823 + 141))
                          {
                            if (*(v151 + 208) == v25)
                            {
                              *(v151 + 208) = 0;
                              *(v151 + 195) = 0;
                            }

                            goto LABEL_442;
                          }

                          v205 = *(v151 + 208);
                          if (v205)
                          {
                            if (v205 == v25)
                            {
                              goto LABEL_442;
                            }

                            *(v151 + 208) = -1;
                          }

                          else
                          {
                            *(v151 + 208) = v25;
                          }

                          v164 = v823;
                          *(v823 + 100) = *(v823 + 64);
                          goto LABEL_443;
                        }

                        if (!*(v823 + 37928) || !PacketRRConflict(v823, v151, v828))
                        {
                          if (*(v823 + 37924) == *(v151 + 12) && (*v790 & 0x10) != 0)
                          {
                            v163 = *(v823 + 64);
                            if ((v163 - *(v151 + 288)) >= 0x1F5 && ResourceRecordIsValidAnswer(v151))
                            {
                              *(v151 + 208) = -1;
                              v164 = v823;
                              *(v823 + 100) = v163;
                              goto LABEL_443;
                            }
                          }

                          goto LABEL_442;
                        }

                        v162 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_337;
                          }
                        }

                        else
                        {
                          v162 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_337:
                            v165 = *(v823 + 37940);
                            GetRRDisplayString_rdb((v823 + 37920), (*(v823 + 37960) + 4), v793);
                            *v888 = 67109891;
                            *&v888[4] = v165;
                            *&v888[8] = 2160;
                            *&v888[10] = 1752392040;
                            *&v888[18] = 2085;
                            *&v888[20] = v823 + 47032;
                            *&v888[28] = 1024;
                            *&v888[30] = v25;
                            _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Pkt Record: %08X %{sensitive, mask.hash}s (interface %d)", v888, 0x22u);
                          }
                        }

                        v166 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_343;
                          }
                        }

                        else
                        {
                          v166 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_343:
                            v167 = *(v151 + 28);
                            GetRRDisplayString_rdb((v151 + 8), (*(v151 + 48) + 4), v793);
                            *v888 = 67109635;
                            *&v888[4] = v167;
                            *&v888[8] = 2160;
                            *&v888[10] = 1752392040;
                            *&v888[18] = 2085;
                            *&v888[20] = v823 + 47032;
                            _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Our Record: %08X %{sensitive, mask.hash}s", v888, 0x1Cu);
                          }
                        }

                        if (*(v151 + 88))
                        {
                          do
                          {
                            v168 = v151;
                            v151 = *(v151 + 88);
                          }

                          while (v151);
                          v169 = mDNSLogCategory_mDNS;
                          if (mDNS_SensitiveLoggingEnableCount)
                          {
                            v170 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                          }

                          else
                          {
                            v170 = 1;
                          }

                          if (v170)
                          {
                            v164 = v823;
                            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_355;
                            }
                          }

                          else
                          {
                            v169 = mDNSLogCategory_mDNS_redacted;
                            v171 = os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT);
                            v164 = v823;
                            if (v171)
                            {
LABEL_355:
                              v172 = *(v168 + 28);
                              GetRRDisplayString_rdb((v168 + 8), (*(v168 + 48) + 4), v793);
                              *v888 = 67109635;
                              *&v888[4] = v172;
                              *&v888[8] = 2160;
                              *&v888[10] = 1752392040;
                              *&v888[18] = 2085;
                              *&v888[20] = v823 + 47032;
                              _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Dep Record: %08X %{sensitive, mask.hash}s", v888, 0x1Cu);
                            }
                          }
                        }

                        else
                        {
                          v168 = v151;
                          v164 = v823;
                        }

                        v173 = *(v168 + 190);
                        if (v173 >= 4)
                        {
                          v174 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_387;
                            }
                          }

                          else
                          {
                            v174 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_387;
                            }
                          }

                          GetRRDisplayString_rdb((v168 + 8), (*(v168 + 48) + 4), v793);
                          *v888 = 141558275;
                          *&v888[4] = 1752392040;
                          *&v888[12] = 2085;
                          *&v888[14] = v823 + 47032;
                          v175 = v174;
                          v176 = "mDNSCoreReceiveResponse: Already reset to Probing: %{sensitive, mask.hash}s";
LABEL_386:
                          _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, v176, v888, 0x16u);
                          goto LABEL_387;
                        }

                        v177 = mDNSLogCategory_mDNS;
                        if (mDNS_SensitiveLoggingEnableCount)
                        {
                          v178 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                        }

                        else
                        {
                          v178 = 1;
                        }

                        v179 = v178;
                        if (v173 == 3)
                        {
                          if (v179)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_387;
                            }
                          }

                          else
                          {
                            v177 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_387;
                            }
                          }

                          GetRRDisplayString_rdb((v168 + 8), (*(v168 + 48) + 4), v793);
                          *v888 = 141558275;
                          *&v888[4] = 1752392040;
                          *&v888[12] = 2085;
                          *&v888[14] = v823 + 47032;
                          v175 = v177;
                          v176 = "mDNSCoreReceiveResponse: Ignoring response received before we even began probing: %{sensitive, mask.hash}s";
                          goto LABEL_386;
                        }

                        if (v179)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_390:
                            GetRRDisplayString_rdb((v823 + 37920), (*(v823 + 37960) + 4), v793);
                            *v888 = 141559299;
                            *&v888[4] = 1752392040;
                            *&v888[12] = 1045;
                            *&v888[14] = 20;
                            *&v888[18] = 2101;
                            *&v888[20] = v787;
                            *&v888[28] = 1024;
                            *&v888[30] = v760;
                            *&v888[34] = 2160;
                            *&v888[36] = 1752392040;
                            *&v888[44] = 2085;
                            *&v888[46] = v823 + 47032;
                            _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Received from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d %{sensitive, mask.hash}s", v888, 0x36u);
                          }
                        }

                        else
                        {
                          v177 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_390;
                          }
                        }

                        v182 = *(v168 + 8);
                        if (v182 != 2)
                        {
                          if (v182 != 32)
                          {
                            if (v182 == 16)
                            {
                              v183 = mDNSLogCategory_mDNS;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_426;
                                }
                              }

                              else
                              {
                                v183 = mDNSLogCategory_mDNS_redacted;
                                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
LABEL_426:
                                  GetRRDisplayString_rdb((v168 + 8), (*(v168 + 48) + 4), v793);
                                  *v888 = 141558275;
                                  *&v888[4] = 1752392040;
                                  *&v888[12] = 2085;
                                  *&v888[14] = v823 + 47032;
                                  _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: Resetting to Probing: %{sensitive, mask.hash}s", v888, 0x16u);
                                }
                              }

                              *(v168 + 8) = 2;
                              *(v168 + 190) = 1028;
                              v164 = v823;
                              InitializeLastAPTime(v823, v168);
                              RecordProbeFailure(v823, v168);
                              goto LABEL_387;
                            }

                            v188 = mDNSLogCategory_mDNS;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                            {
                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_429;
                              }
                            }

                            else
                            {
                              v188 = mDNSLogCategory_mDNS_redacted;
                              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                              {
LABEL_429:
                                GetRRDisplayString_rdb((v168 + 8), (*(v168 + 48) + 4), v793);
                                *v888 = 67109635;
                                *&v888[4] = v182;
                                *&v888[8] = 2160;
                                *&v888[10] = 1752392040;
                                *&v888[18] = 2085;
                                *&v888[20] = v823 + 47032;
                                _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_ERROR, "mDNSCoreReceiveResponse: Unexpected record type %X %{sensitive, mask.hash}s", v888, 0x1Cu);
                              }
                            }

                            v782 = 1;
                            v164 = v823;
                            goto LABEL_388;
                          }

                          v184 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_423;
                            }
                          }

                          else
                          {
                            v184 = mDNSLogCategory_mDNS_redacted;
                            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                            {
LABEL_423:
                              GetRRDisplayString_rdb((v168 + 8), (*(v168 + 48) + 4), v793);
                              *v888 = 141558275;
                              *&v888[4] = 1752392040;
                              *&v888[12] = 2085;
                              *&v888[14] = v823 + 47032;
                              _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_ERROR, "mDNSCoreReceiveResponse: Unexpected conflict discarding %{sensitive, mask.hash}s", v888, 0x16u);
                            }
                          }

                          ++*(v823 + 19916);
LABEL_475:
                          D2D_stop_advertising_record(v168);
                          v164 = v823;
                          mDNS_Deregister_internal(v823, v168, 2);
                          goto LABEL_387;
                        }

                        v185 = *(v823 + 15096);
                        v29 = v837;
                        if (!v185)
                        {
                          goto LABEL_439;
                        }

                        do
                        {
                          if (*(v185 + 6) == *(v168 + 24) && resource_records_have_same_dnssec_rr_category(v185[8], *(v168 + 64)) && *(v185 + 6) == *(v168 + 12) && *(v185 + 7) == *(v168 + 14) && *(v185 + 10) == *(v168 + 20) && *(v185 + 7) == *(v168 + 28) && SameRDataBody((v185 + 1), (*(v168 + 48) + 4), SameDomainName) && SameDomainNameBytes(v185[5], *(v168 + 40)))
                          {
                            if (mDNS_LoggingEnabled == 1)
                            {
                              v208 = mDNSLogCategory_Default;
                              GetRRDisplayString_rdb((v168 + 8), (*(v168 + 48) + 4), v793);
                              v209 = v208;
                              v29 = v837;
                              LogMsgWithLevel(v209, OS_LOG_TYPE_DEFAULT, "mDNSCoreRegisteredProxyRecord: Ignoring packet registered with sleep proxy : %s ", v793);
                            }

                            goto LABEL_441;
                          }

                          v185 = *v185;
                        }

                        while (v185);
                        v186 = *(v823 + 15096);
                        if (v186)
                        {
                          if (mDNS_LoggingEnabled != 1)
                          {
                            v187 = 0;
                            goto LABEL_436;
                          }

                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Stored Proxy records :");
                          v186 = *(v823 + 15096);
                          if (v186)
                          {
                            v187 = mDNS_LoggingEnabled;
                            do
                            {
LABEL_436:
                              if (v187)
                              {
                                v191 = mDNSLogCategory_Default;
                                GetRRDisplayString_rdb(v186 + 8, (*(v186 + 6) + 4), v793);
                                v192 = v191;
                                v29 = v837;
                                LogMsgWithLevel(v192, OS_LOG_TYPE_DEFAULT, "%s", v793);
                                v187 = mDNS_LoggingEnabled;
                              }

                              v186 = *v186;
                            }

                            while (v186);
                          }
                        }

LABEL_439:
                        v193 = *(v168 + 180);
                        if (v193 && *(v823 + 136) == *(v168 + 184))
                        {
LABEL_441:
                          v782 = 1;
                          goto LABEL_442;
                        }

                        v194 = v823 + 12656;
                        while (2)
                        {
                          v194 = *v194;
                          if (!v194)
                          {
                            v195 = v193 + 1;
                            *(v168 + 180) = v193 + 1;
                            *(v168 + 184) = *(v823 + 136);
                            v199 = v193 - 1 < 0;
                            v200 = IsDNSMulticast;
                            if (v199 == __OFSUB__(v195, 2))
                            {
                              v200 = 0;
                            }

                            if (v200)
                            {
                              goto LABEL_455;
                            }

LABEL_465:
                            v201 = mDNSLogCategory_mDNS;
                            if (mDNS_SensitiveLoggingEnableCount)
                            {
                              v202 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                            }

                            else
                            {
                              v202 = 1;
                            }

                            if (v202)
                            {
                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_473;
                              }
                            }

                            else
                            {
                              v201 = mDNSLogCategory_mDNS_redacted;
                              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
LABEL_473:
                                v204 = *(v168 + 190);
                                GetRRDisplayString_rdb((v168 + 8), (*(v168 + 48) + 4), v793);
                                *v888 = 67110147;
                                *&v888[4] = v204;
                                *&v888[8] = 2160;
                                *&v888[10] = 1752392040;
                                *&v888[18] = 2085;
                                *&v888[20] = v823 + 47032;
                                *&v888[28] = 2082;
                                *&v888[30] = v756;
                                *&v888[38] = 1024;
                                *&v888[40] = v25;
                                _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: ProbeCount %u; will deregister %{sensitive, mask.hash}s due to %{public}scast conflict via interface %d", v888, 0x2Cu);
                              }
                            }

                            ++*(v823 + 19912);
                            goto LABEL_475;
                          }

                          if (*(v194 + 3552) != v25)
                          {
                            continue;
                          }

                          break;
                        }

                        v195 = v193 + 1;
                        *(v168 + 180) = v193 + 1;
                        *(v168 + 184) = *(v823 + 136);
                        if (!IsDNSMulticast)
                        {
                          goto LABEL_465;
                        }

                        if (!*(v194 + 3677) || v195 > 1)
                        {
                          goto LABEL_465;
                        }

LABEL_455:
                        v197 = mDNSLogCategory_mDNS;
                        if (mDNS_SensitiveLoggingEnableCount)
                        {
                          v198 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                        }

                        else
                        {
                          v198 = 1;
                        }

                        if (v198)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_480;
                          }
                        }

                        else
                        {
                          v197 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_480:
                            v207 = *(v168 + 190);
                            GetRRDisplayString_rdb((v168 + 8), (*(v168 + 48) + 4), v793);
                            *v888 = 67110659;
                            *&v888[4] = v207;
                            v23 = v805;
                            *&v888[8] = 1024;
                            *&v888[10] = 1000;
                            *&v888[14] = 1024;
                            *&v888[16] = v195;
                            *&v888[20] = 1024;
                            *&v888[22] = 1;
                            *&v888[26] = 1024;
                            *&v888[28] = v25;
                            *&v888[32] = 2160;
                            *&v888[34] = 1752392040;
                            *&v888[42] = 2085;
                            *&v888[44] = v823 + 47032;
                            _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse: ProbeCount %u; restarting probing after %d-tick pause due to possibly spurious multicast conflict (%d/%d) via interface %d for %{sensitive, mask.hash}s", v888, 0x34u);
                          }
                        }

                        *(v168 + 190) = 3;
                        v164 = v823;
                        *(v168 + 284) = *(v823 + 64) - *(v168 + 280) + 1000;
                        SetNextAnnounceProbeTime(v823, v168);
LABEL_387:
                        v782 = 1;
LABEL_388:
                        v29 = v837;
LABEL_443:
                        v152 = *(v164 + 12640);
LABEL_444:
                        v151 = v152;
                        if (v152)
                        {
                          continue;
                        }

                        break;
                      }

LABEL_486:
                      if (v106)
                      {
                        goto LABEL_487;
                      }

                      v222 = v839;
                      if (v839 == 1)
                      {
                        v99 = objecta;
LABEL_530:
                        v98 = v780;
                        goto LABEL_794;
                      }

                      v99 = objecta;
                      v98 = v780;
                      while (2)
                      {
                        v223 = *(v222 + 12);
                        if (v223 > 0x27)
                        {
                          goto LABEL_516;
                        }

                        if (((1 << v223) & 0x1000248000) != 0)
                        {
                          v224 = 6;
                          goto LABEL_514;
                        }

                        if (((1 << v223) & 0x8000001024) == 0)
                        {
                          if (v223 == 33)
                          {
                            v224 = 10;
                            goto LABEL_514;
                          }

                          goto LABEL_516;
                        }

                        v224 = 4;
LABEL_514:
                        if (*(v222 + 28) != *(v823 + 37936) || !SameDomainNameBytes((*(v222 + 48) + v224), *(v823 + 37952)))
                        {
LABEL_516:
                          v222 = *(v222 + 112);
                          if (v222 == 1)
                          {
                            goto LABEL_794;
                          }

                          continue;
                        }

                        break;
                      }

                      v225 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                        {
                          v226 = DNSTypeName(*(v823 + 37924));
                          v227 = *(v823 + 37952);
                          if (v227)
                          {
                            v231 = *(v823 + 37952);
                            while (1)
                            {
                              if (!v231 || (v232 = *v231, v232 > 0x3F))
                              {
LABEL_538:
                                v230 = 257;
                                goto LABEL_553;
                              }

                              if (!*v231)
                              {
                                break;
                              }

                              v231 += v232 + 1;
                              if (&v231[-v227] >= 256)
                              {
                                goto LABEL_538;
                              }
                            }

                            v230 = (v231 - v227 + 1);
                          }

                          else
                          {
                            v230 = 0;
                          }

LABEL_553:
                          GetRRDisplayString_rdb((v222 + 8), (*(v222 + 48) + 4), v793);
                          *v888 = 141559555;
                          *&v888[4] = 1752392040;
                          *&v888[12] = 2085;
                          *&v888[14] = v226;
                          *&v888[22] = 2160;
                          *&v888[24] = 1752392040;
                          *&v888[32] = 1040;
                          *&v888[34] = v230;
                          *&v888[38] = 2101;
                          *&v888[40] = v227;
                          *&v888[48] = 2160;
                          *&v888[50] = 1752392040;
                          *&v888[58] = 2085;
                          *&v888[60] = v823 + 47032;
                          _os_log_impl(&_mh_execute_header, v225, OS_LOG_TYPE_DEBUG, "Found a matching entry in the CacheFlushRecords - new rrtype: %{sensitive, mask.hash}s, matched name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, description: %{sensitive, mask.hash}s", v888, 0x44u);
                        }
                      }

                      else
                      {
                        v225 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                        {
                          v226 = DNSTypeName(*(v823 + 37924));
                          v227 = *(v823 + 37952);
                          if (v227)
                          {
                            v228 = *(v823 + 37952);
                            while (1)
                            {
                              if (!v228 || (v229 = *v228, v229 > 0x3F))
                              {
LABEL_528:
                                v230 = 257;
                                goto LABEL_553;
                              }

                              if (!*v228)
                              {
                                break;
                              }

                              v228 += v229 + 1;
                              if (&v228[-v227] >= 256)
                              {
                                goto LABEL_528;
                              }
                            }

                            v230 = (v228 - v227 + 1);
                          }

                          else
                          {
                            v230 = 0;
                          }

                          goto LABEL_553;
                        }
                      }

LABEL_487:
                      v210 = *(v823 + 37952);
                      v211 = &v838;
                      v212 = v823;
                      do
                      {
                        v211 = *v211;
                        if (!v211)
                        {
                          goto LABEL_504;
                        }
                      }

                      while (!SameDomainNameBytes(v211 + 20, v210));
                      v213 = CacheGroupForName(v823, *(v823 + 37936), *(v823 + 37952));
                      if (!v213)
                      {
LABEL_504:
                        v221 = 0;
                        v99 = objecta;
                        v98 = v780;
                        goto LABEL_636;
                      }

                      v775 = v213;
                      v214 = mDNSGetTSRForCacheGroup(v213);
                      v99 = objecta;
                      if (!v214)
                      {
                        goto LABEL_569;
                      }

                      v215 = CheckTSRForResourceRecord(v211 + 2, (v214 + 1));
                      if (v215 == 2)
                      {
                        v29 = v837;
                        goto LABEL_530;
                      }

                      if (v215 == -1)
                      {
                        v216 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            v217 = *(v823 + 37952);
                            if (v217)
                            {
                              v233 = *(v823 + 37952);
                              while (1)
                              {
                                if (!v233 || (v234 = *v233, v234 > 0x3F))
                                {
LABEL_546:
                                  v220 = 257;
                                  goto LABEL_556;
                                }

                                if (!*v233)
                                {
                                  break;
                                }

                                v233 += v234 + 1;
                                if (&v233[-v217] >= 256)
                                {
                                  goto LABEL_546;
                                }
                              }

                              v220 = (v233 - v217 + 1);
                            }

                            else
                            {
                              v220 = 0;
                            }

LABEL_556:
                            v235 = DNSTypeName(*(v823 + 37924));
                            *v888 = 141559043;
                            *&v888[4] = 1752392040;
                            *&v888[12] = 1040;
                            *&v888[14] = v220;
                            *&v888[18] = 2101;
                            *&v888[20] = v217;
                            *&v888[28] = 2082;
                            *&v888[30] = v235;
                            *&v888[38] = 1024;
                            *&v888[40] = v25;
                            _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse - flushing cache group %{sensitive, mask.hash, mdnsresponder:domain_name}.*P type %{public}s on interface %d due to TSR conflict", v888, 0x2Cu);
                          }
                        }

                        else
                        {
                          v216 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            v217 = *(v823 + 37952);
                            if (v217)
                            {
                              v218 = *(v823 + 37952);
                              while (1)
                              {
                                if (!v218 || (v219 = *v218, v219 > 0x3F))
                                {
LABEL_503:
                                  v220 = 257;
                                  goto LABEL_556;
                                }

                                if (!*v218)
                                {
                                  break;
                                }

                                v218 += v219 + 1;
                                if (&v218[-v217] >= 256)
                                {
                                  goto LABEL_503;
                                }
                              }

                              v220 = (v218 - v217 + 1);
                            }

                            else
                            {
                              v220 = 0;
                            }

                            goto LABEL_556;
                          }
                        }

                        v236 = *(v775 + 16);
                        if (v236)
                        {
                          while (2)
                          {
                            if (*(v236 + 12) != 41)
                            {
                              mDNS_PurgeCacheResourceRecord(v823, v236);
                              v237 = mDNSLogCategory_mDNS;
                              if (mDNS_SensitiveLoggingEnableCount)
                              {
                                v238 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                              }

                              else
                              {
                                v238 = 1;
                              }

                              if (v238)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_567;
                                }
                              }

                              else
                              {
                                v237 = mDNSLogCategory_mDNS_redacted;
                                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
LABEL_567:
                                  v240 = *(v236 + 32);
                                  GetRRDisplayString_rdb((v236 + 8), (*(v236 + 48) + 4), v793);
                                  *v888 = 67109635;
                                  *&v888[4] = v240;
                                  *&v888[8] = 2160;
                                  *&v888[10] = 1752392040;
                                  *&v888[18] = 2085;
                                  *&v888[20] = v823 + 47032;
                                  _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveResponse - flushed interface %d %{sensitive, mask.hash}s", v888, 0x1Cu);
                                }
                              }
                            }

                            v236 = *v236;
                            if (!v236)
                            {
                              break;
                            }

                            continue;
                          }
                        }
                      }

LABEL_569:
                      v241 = *(v823 + 37928);
                      v242 = *(v211 + 2);
                      v243 = a11;
                      if (!a11)
                      {
                        *&v888[8] = 0;
                        *v888 = 0;
                        clock_gettime(_CLOCK_MONOTONIC_RAW, v888);
                        v243 = *v888;
                      }

                      if (v242 >= 0x93A81)
                      {
                        v252 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          v253 = v823;
                          v25 = a10;
                          v99 = objecta;
                          v98 = v780;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                          {
                            v254 = *(v775 + 32);
                            if (v254)
                            {
                              v258 = *(v775 + 32);
                              while (1)
                              {
                                if (!v258 || (v259 = *v258, v259 > 0x3F))
                                {
LABEL_602:
                                  v257 = 257;
                                  goto LABEL_633;
                                }

                                if (!*v258)
                                {
                                  break;
                                }

                                v258 += v259 + 1;
                                if (&v258[-v254] >= 256)
                                {
                                  goto LABEL_602;
                                }
                              }

                              v257 = (v258 - v254 + 1);
                            }

                            else
                            {
                              v257 = 0;
                            }

LABEL_633:
                            v268 = *(v211 + 2);
                            *v888 = 67110147;
                            *&v888[4] = v268;
                            *&v888[8] = 1024;
                            *&v888[10] = 604800;
                            *&v888[14] = 2160;
                            *&v888[16] = 1752392040;
                            *&v888[24] = 1040;
                            *&v888[26] = v257;
                            *&v888[30] = 2101;
                            *&v888[32] = v254;
                            _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_ERROR, "AddOrUpdateTSRForCacheGroup: tsrTimestamp[%d] out of range (%d) on TSR for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v888, 0x28u);
                          }
                        }

                        else
                        {
                          v252 = mDNSLogCategory_mDNS_redacted;
                          v253 = v823;
                          v25 = a10;
                          v99 = objecta;
                          v98 = v780;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                          {
                            v254 = *(v775 + 32);
                            if (v254)
                            {
                              v255 = *(v775 + 32);
                              while (1)
                              {
                                if (!v255 || (v256 = *v255, v256 > 0x3F))
                                {
LABEL_594:
                                  v257 = 257;
                                  goto LABEL_633;
                                }

                                if (!*v255)
                                {
                                  break;
                                }

                                v255 += v256 + 1;
                                if (&v255[-v254] >= 256)
                                {
                                  goto LABEL_594;
                                }
                              }

                              v257 = (v255 - v254 + 1);
                            }

                            else
                            {
                              v257 = 0;
                            }

                            goto LABEL_633;
                          }
                        }

                        v212 = v253;
                        goto LABEL_635;
                      }

                      v244 = v214;
                      if (v214)
                      {
                        goto LABEL_575;
                      }

                      CacheEntity = GetCacheEntity(v823, v775);
                      if (!CacheEntity)
                      {
                        v260 = mDNSLogCategory_Default;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          v261 = v823;
                          v25 = a10;
                          v99 = objecta;
                          v98 = v780;
                          v221 = v775;
                          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                          {
                            v262 = *(v775 + 32);
                            if (v262)
                            {
                              v266 = *(v775 + 32);
                              while (1)
                              {
                                if (!v266 || (v267 = *v266, v267 > 0x3F))
                                {
LABEL_630:
                                  v265 = 257;
                                  goto LABEL_836;
                                }

                                if (!*v266)
                                {
                                  break;
                                }

                                v266 += v267 + 1;
                                if (&v266[-v262] >= 256)
                                {
                                  goto LABEL_630;
                                }
                              }

                              v265 = (v266 - v262 + 1);
                            }

                            else
                            {
                              v265 = 0;
                            }

LABEL_836:
                            *v888 = 141558531;
                            *&v888[4] = 1752392040;
                            *&v888[12] = 1040;
                            *&v888[14] = v265;
                            *&v888[18] = 2101;
                            *&v888[20] = v262;
                            _os_log_impl(&_mh_execute_header, v260, OS_LOG_TYPE_ERROR, "AddOrUpdateTSRForCacheGroup: No cache record for new TSR %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v888, 0x1Cu);
                          }
                        }

                        else
                        {
                          v260 = mDNSLogCategory_Default_redacted;
                          v261 = v823;
                          v25 = a10;
                          v99 = objecta;
                          v98 = v780;
                          v221 = v775;
                          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                          {
                            v262 = *(v775 + 32);
                            if (v262)
                            {
                              v263 = *(v775 + 32);
                              while (1)
                              {
                                if (!v263 || (v264 = *v263, v264 > 0x3F))
                                {
LABEL_620:
                                  v265 = 257;
                                  goto LABEL_836;
                                }

                                if (!*v263)
                                {
                                  break;
                                }

                                v263 += v264 + 1;
                                if (&v263[-v262] >= 256)
                                {
                                  goto LABEL_620;
                                }
                              }

                              v265 = (v263 - v262 + 1);
                            }

                            else
                            {
                              v265 = 0;
                            }

                            goto LABEL_836;
                          }
                        }

                        v212 = v261;
                        goto LABEL_636;
                      }

                      v244 = CacheEntity;
                      *(CacheEntity + 48) = CacheEntity + 152;
                      *(CacheEntity + 12) = 94371881;
                      *(CacheEntity + 40) = *(v775 + 32);
                      v246 = *(v775 + 8);
                      *(CacheEntity + 20) = 917518;
                      *(CacheEntity + 24) = v246;
                      AddCacheRecordToCacheGroup(v775, CacheEntity);
LABEL_575:
                      v247 = v243 - v242;
                      *(v244 + 80) = *(v823 + 64);
                      v248 = *(v244 + 16);
                      if (v248 <= v241)
                      {
                        v248 = v241;
                      }

                      *(v244 + 16) = v248;
                      v249 = *(v244 + 48);
                      if (v214 && (v247 - *(v249 + 8)) < 1)
                      {
                        v212 = v823;
                        v25 = a10;
                        v99 = objecta;
                      }

                      else
                      {
                        *(v249 + 4) = 720362;
                        *(v249 + 8) = v247;
                        *(v249 + 12) = *(v211 + 3);
                        *(v249 + 16) = 0;
                        v250 = mDNSLogCategory_Default;
                        v25 = a10;
                        v99 = objecta;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                          {
                            if (v214)
                            {
                              v251 = "Updated";
                            }

                            else
                            {
                              v251 = "Added";
                            }

LABEL_607:
                            GetRRDisplayString_rdb((v244 + 8), (*(v244 + 48) + 4), v793);
                            *v888 = 136315651;
                            *&v888[4] = v251;
                            *&v888[12] = 2160;
                            *&v888[14] = 1752392040;
                            *&v888[22] = 2085;
                            *&v888[24] = v823 + 47032;
                            _os_log_impl(&_mh_execute_header, v250, OS_LOG_TYPE_DEBUG, "AddOrUpdateTSRForCacheGroup: %s TSR %{sensitive, mask.hash}s", v888, 0x20u);
                          }
                        }

                        else
                        {
                          v250 = mDNSLogCategory_Default_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                          {
                            if (v214)
                            {
                              v251 = "Updated";
                            }

                            else
                            {
                              v251 = "Added";
                            }

                            goto LABEL_607;
                          }
                        }

                        v212 = v823;
                      }

                      v98 = v780;
LABEL_635:
                      v221 = v775;
LABEL_636:
                      v269 = *(v212 + 240);
                      if (v824 && v269)
                      {
                        v270 = CacheGroupForName(mDNSStorage, *(v823 + 37936), *(v823 + 37952));
                        if (v270)
                        {
                          v271 = v270[2];
                          if (v271)
                          {
                            v272 = 0;
                            while (!SameNameCacheRecordsMatchInSourceTypeClass(v828, v271) || ++v272 <= 0x7CF)
                            {
                              v271 = *v271;
                              if (!v271)
                              {
                                goto LABEL_646;
                              }
                            }

LABEL_771:
                            v29 = v837;
                            goto LABEL_794;
                          }
                        }
                      }

                      else if (!v269)
                      {
                        goto LABEL_771;
                      }

LABEL_646:
                      IsD2D = mDNSPlatformInterfaceIsD2D(v25);
                      v274 = v782;
                      if (IsD2D)
                      {
                        v274 = 1;
                      }

                      v782 = v274;
                      v275 = *(v823 + 37936);
                      v276 = v275 % 0x1F3;
                      if (v221 || (v221 = CacheGroupForName(v823, v275, *(v823 + 37952))) != 0)
                      {
                        v776 = v221;
                        v278 = v221 + 2;
                        v277 = v221[2];
                        if (v277)
                        {
                          v29 = v837;
                          while (1)
                          {
                            v279 = *(v823 + 37968);
                            if (!v25 || v279 && (v280 = *(v279 + 24)) != 0 && (*(v280 + 276) & 0x6000) == 0x2000)
                            {
                              v281 = *(v277 + 56);
                              if (v281)
                              {
                                v281 = *(v281 + 24);
                              }

                              if (v279)
                              {
                                v279 = *(v279 + 24);
                              }

                              if (v281 != v279)
                              {
                                goto LABEL_679;
                              }
                            }

                            else if (*(v277 + 32) != v25)
                            {
                              goto LABEL_679;
                            }

                            if (resource_records_have_same_dnssec_rr_category(*(v823 + 37976), *(v277 + 64)) && *(v823 + 37924) == *(v277 + 12) && *(v823 + 37926) == *(v277 + 14) && *(v823 + 37932) == *(v277 + 20) && *(v823 + 37940) == *(v277 + 28) && SameRDataBody(v790, (*(v277 + 48) + 4), SameDomainName))
                            {
                              v282 = *v790;
                              if ((*v790 & 0x10) != 0)
                              {
                                v99 = objecta;
                                if (*(v277 + 112))
                                {
                                  v300 = v771;
                                }

                                else
                                {
                                  v300 = v771;
                                  if (v771 != (v277 + 112))
                                  {
                                    *v771 = v277;
                                    *(v277 + 112) = 1;
                                    v300 = (v277 + 112);
                                  }
                                }

                                v771 = v300;
                                if ((*(v277 + 8) & 0x10) == 0)
                                {
                                  v301 = *(v823 + 192);
                                  if (v301)
                                  {
                                    do
                                    {
                                      if (RecordAnswersQuestion(v277 + 8, 0, v301))
                                      {
                                        ++*(v301 + 236);
                                      }

                                      v301 = *(v301 + 8);
                                    }

                                    while (v301);
                                    v282 = *v790;
                                  }

                                  *(v277 + 8) = v282;
                                  v29 = v837;
                                }
                              }

                              else
                              {
                                v99 = objecta;
                              }

                              if (SameRDataBody(v790, (*(v277 + 48) + 4), SameDomainNameCS))
                              {
                                v328 = *(v823 + 37928);
                                if (v328)
                                {
                                  ++*(v823 + 19988);
                                  if (*(v277 + 10) == 2 && !*(v277 + 84))
                                  {
                                    v329 = *(v823 + 64);
                                    if (v329 <= 1)
                                    {
                                      v329 = 1;
                                    }

                                    *(v277 + 84) = v329;
                                  }

                                  if (v328 == 120 && *(v277 + 16) == 4500)
                                  {
                                    if ((v330 = *(v277 + 32), AWDLInterfaceID) && AWDLInterfaceID == v330 || (v328 = 120, WiFiAwareInterfaceID) && WiFiAwareInterfaceID == v330)
                                    {
                                      v331 = *(v277 + 12);
                                      if (v331 == 33 || v331 == 28)
                                      {
                                        v332 = mDNSLogCategory_Default;
                                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                        {
                                          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                          {
                                            goto LABEL_851;
                                          }
                                        }

                                        else
                                        {
                                          v332 = mDNSLogCategory_Default_redacted;
                                          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                          {
LABEL_851:
                                            GetRRDisplayString_rdb((v277 + 8), (*(v277 + 48) + 4), v793);
                                            v340 = *(v277 + 32);
                                            *v888 = 141558531;
                                            *&v888[4] = 1752392040;
                                            *&v888[12] = 2085;
                                            *&v888[14] = v823 + 47032;
                                            *&v888[22] = 2048;
                                            *&v888[24] = v340;
                                            _os_log_impl(&_mh_execute_header, v332, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Keeping Standard TTL for %{sensitive, mask.hash}s %p", v888, 0x20u);
                                          }
                                        }

                                        v328 = 4500;
                                        v29 = v837;
                                      }

                                      else
                                      {
                                        v328 = 120;
                                      }
                                    }
                                  }

                                  RefreshCacheRecord(v823, v277, v328);
                                  if (*(v776 + 24) != v277)
                                  {
                                    while (1)
                                    {
                                      v341 = v278;
                                      v278 = *v278;
                                      if (!v278)
                                      {
                                        break;
                                      }

                                      if (v278 == v277)
                                      {
                                        *v341 = *v277;
                                        break;
                                      }
                                    }

                                    *v277 = 0;
                                    AddCacheRecordToCacheGroup(v776, v277);
                                  }

                                  v342 = v23[1];
                                  *(v277 + 110) = v342;
                                  *(v277 + 9) = HIBYTE(v342) & 0xF;
                                  v322 = v771;
                                  if (v25)
                                  {
LABEL_860:
                                    if ((*(v277 + 8) & 0x10) == 0)
                                    {
                                      goto LABEL_869;
                                    }

                                    v343 = *(v823 + 192);
                                    if (v343)
                                    {
                                      while (*(v343 + 40) || *(v343 + 632) || *(v343 + 212) < 1 || !RecordAnswersQuestion(v277 + 8, 0, v343))
                                      {
                                        v343 = *(v343 + 8);
                                        if (!v343)
                                        {
                                          goto LABEL_867;
                                        }
                                      }

                                      v357 = *(v823 + 64);
                                      *(v343 + 256) = v357;
                                      *(v343 + 224) = 0;
                                      *(v343 + 208) = v357;
                                      *(v343 + 212) = 3600000;
                                      *(v343 + 352) = 0;
                                      *(v343 + 649) = 0;
LABEL_867:
                                      v99 = objecta;
LABEL_868:
                                      v322 = v771;
                                      goto LABEL_869;
                                    }

                                    v99 = objecta;
LABEL_869:
                                    if (!v757 || (v344 = *(v277 + 96)) == 0 || *(v344 + 340))
                                    {
                                      v323 = 0;
                                      goto LABEL_793;
                                    }

                                    v772 = v322;
                                    if (*v787 == 6)
                                    {
                                      if (!*&vorr_s8(*(v787 + 4), *&vextq_s8(*(v787 + 4), *(v787 + 4), 8uLL)))
                                      {
                                        goto LABEL_907;
                                      }
                                    }

                                    else if (*v787 != 4 || !*(v787 + 4))
                                    {
                                      goto LABEL_907;
                                    }

                                    if (*(v277 + 104))
                                    {
                                      v345 = *(v277 + 130);
                                      if (*(v277 + 108))
                                      {
                                        v346 = &sUnicastAssist_MulticastCount;
                                        v347 = &sNonUnicastAssist_MulticastCount;
                                      }

                                      else
                                      {
                                        v354 = mDNSAddrIsDNSMulticast(v788);
                                        v346 = &sUnicastAssist_MulticastCount;
                                        if (!v354)
                                        {
                                          v346 = &sUnicastAssist_UnicastCount;
                                        }

                                        v347 = &sNonUnicastAssist_MulticastCount;
                                        if (!v354)
                                        {
                                          v347 = &sNonUnicastAssist_UnicastCount;
                                        }
                                      }

                                      if (v345 != 1)
                                      {
                                        v346 = v347;
                                      }

                                      ++*v346;
                                    }

                                    v355 = *(v277 + 12);
                                    if (v355 != 47)
                                    {
                                      v356 = *(v277 + 32);
                                      if (mDNS_AddressIsLocalSubnet(v823, v356, v787))
                                      {
                                        unicast_assist_addr_refresh(*(v277 + 40), *(v277 + 24), v355, *(v277 + 8), v787, v356);
                                      }
                                    }

LABEL_907:
                                    v323 = 0;
                                    *(v277 + 130) = 0;
                                    v29 = v837;
                                    v99 = objecta;
                                    v322 = v772;
LABEL_793:
                                    v771 = v322;
                                    if (!v824 && *(v277 + 16) && v791 != 100 && v802 != 100)
                                    {
                                      *(v277 + 128) = 1;
                                      v845[v791] = v277;
                                      if (v802)
                                      {
                                        v324 = v844;
                                        v325 = v802;
                                        while (!RecordInTheRRSet(v277 + 8, v324))
                                        {
                                          v324 += 3;
                                          if (!--v325)
                                          {
                                            goto LABEL_807;
                                          }
                                        }

                                        v327 = *(v324 + 3) + 1;
                                      }

                                      else
                                      {
LABEL_807:
                                        v324 = &v844[3 * v802];
                                        *v324 = *(v277 + 40);
                                        *(v324 + 2) = *(v277 + 24);
                                        v326 = *(v277 + 12);
                                        if (v326 == 46)
                                        {
                                          LOWORD(v326) = resource_record_as_rrsig_get_covered_type(v277 + 8);
                                        }

                                        ++v802;
                                        *(v324 + 8) = v326;
                                        *(v324 + 3) = 0;
                                        v327 = 1;
                                        *(v324 + 18) = 0;
                                      }

                                      v29 = v837;
                                      v98 = v780;
                                      ++v791;
                                      *(v324 + 3) = v327;
                                      *(v324 + 18) = v323;
                                      v99 = objecta;
                                    }

                                    goto LABEL_794;
                                  }

                                  v348 = mDNSLogCategory_Default;
                                  if (mDNS_SensitiveLoggingEnableCount)
                                  {
                                    v349 = mDNSLogCategory_Default == mDNSLogCategory_State;
                                  }

                                  else
                                  {
                                    v349 = 1;
                                  }

                                  if (v349)
                                  {
                                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_890;
                                    }
                                  }

                                  else
                                  {
                                    v348 = mDNSLogCategory_Default_redacted;
                                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                    {
LABEL_890:
                                      v351 = *(v277 + 16);
                                      GetRRDisplayString_rdb((v277 + 8), (*(v277 + 48) + 4), v793);
                                      *v888 = 67109635;
                                      *&v888[4] = v351;
                                      *&v888[8] = 2160;
                                      *&v888[10] = 1752392040;
                                      *&v888[18] = 2085;
                                      *&v888[20] = v823 + 47032;
                                      _os_log_impl(&_mh_execute_header, v348, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: rescuing RR with new TTL %u: %{sensitive, mask.hash}s", v888, 0x1Cu);
                                    }
                                  }

                                  v352 = *(v277 + 64);
                                  v99 = objecta;
                                  v322 = v771;
                                  if (v352 && !*(v352 + 32) && *(v277 + 96))
                                  {
                                    v353 = *(v823 + 64);
                                    if (v353 <= 1)
                                    {
                                      v353 = 1;
                                    }

                                    *(v823 + 160) = v353;
                                  }

                                  goto LABEL_860;
                                }

                                v322 = v771;
                                if (*(v277 + 109))
                                {
                                  v333 = dword_10016D258 + 939524096;
                                }

                                else
                                {
                                  v333 = *(v277 + 80) + 1000 * *(v277 + 16);
                                }

                                if (v333 - *(v823 + 64) < 1001)
                                {
                                  goto LABEL_869;
                                }

                                if (*(v277 + 12) == 12)
                                {
                                  v334 = *(v277 + 48);
                                  v335 = mDNS_DomainNameFNV1aHash(*(v277 + 40));
                                  v336 = mDNS_DomainNameFNV1aHash((v334 + 4));
                                }

                                else
                                {
                                  v335 = mDNS_DomainNameFNV1aHash(*(v277 + 40));
                                  v336 = 0;
                                }

                                *&v862[8] = 0;
                                *v862 = 0;
                                gettimeofday(v862, 0);
                                v337 = mDNSPlatformInterfaceIndexfromInterfaceID(v823, v25, 1);
                                v338 = mDNSLogCategory_Default;
                                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                {
                                  if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_848;
                                  }
                                }

                                else
                                {
                                  v338 = mDNSLogCategory_Default_redacted;
                                  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                  {
LABEL_848:
                                    v339 = *(v277 + 12);
                                    *v888 = 67111171;
                                    *&v888[4] = v335;
                                    *&v888[8] = 1024;
                                    *&v888[10] = v339;
                                    *&v888[14] = 1040;
                                    *&v888[16] = 16;
                                    *&v888[20] = 2098;
                                    *&v888[22] = v862;
                                    *&v888[30] = 1024;
                                    *&v888[32] = v337;
                                    *&v888[36] = 2160;
                                    *&v888[38] = 1752392040;
                                    *&v888[46] = 1045;
                                    *&v888[48] = 20;
                                    *&v888[52] = 2101;
                                    *&v888[54] = v277 + 132;
                                    *&v888[62] = 1024;
                                    *&v888[64] = v336;
                                    _os_log_impl(&_mh_execute_header, v338, OS_LOG_TYPE_DEFAULT, "Received Goodbye packet for cached record -- name hash: %x, type: %{mdns:rrtype}d, last time received: %{public, timeval}.*P, interface index: %u, source address: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, name hash if PTR: %x", v888, 0x44u);
                                  }
                                }

                                *(v277 + 16) = 1;
                                *(v277 + 80) = *(v823 + 64);
                                *(v277 + 108) = 4;
                                SetNextCacheCheckTimeForRecord(v823, v277);
                                v29 = v837;
                                v99 = objecta;
                                v98 = v780;
                                goto LABEL_868;
                              }

                              *(v277 + 16) = 0;
                              *(v277 + 80) = *(v823 + 64);
                              *(v277 + 108) = 4;
                              SetNextCacheCheckTimeForRecord(v823, v277);
                              v302 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_740;
                                }
                              }

                              else
                              {
                                v302 = mDNSLogCategory_Default_redacted;
                                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                {
LABEL_740:
                                  GetRRDisplayString_rdb((v277 + 8), (*(v277 + 48) + 4), v793);
                                  *v888 = 141558275;
                                  *&v888[4] = 1752392040;
                                  *&v888[12] = 2085;
                                  *&v888[14] = v823 + 47032;
                                  _os_log_impl(&_mh_execute_header, v302, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Discarding due to domainname case change old: %{sensitive, mask.hash}s", v888, 0x16u);
                                }
                              }

                              v303 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_746;
                                }
                              }

                              else
                              {
                                v303 = mDNSLogCategory_Default_redacted;
                                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                {
LABEL_746:
                                  GetRRDisplayString_rdb((v823 + 37920), (*(v823 + 37960) + 4), v793);
                                  *v888 = 141558275;
                                  *&v888[4] = 1752392040;
                                  *&v888[12] = 2085;
                                  *&v888[14] = v823 + 47032;
                                  _os_log_impl(&_mh_execute_header, v303, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Discarding due to domainname case change new: %{sensitive, mask.hash}s", v888, 0x16u);
                                }
                              }

                              v304 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_770;
                                }

                                if (*(v277 + 96))
                                {
                                  v308 = *(v277 + 16);
                                  v306 = v823 + 4264;
                                  if (*(v277 + 108) > 3u)
                                  {
                                    if (v308 <= 0xA)
                                    {
                                      if (v308)
                                      {
                                        v307 = 100;
                                      }

                                      else
                                      {
                                        v307 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v307 = 1000;
                                    }
                                  }

                                  else
                                  {
                                    v307 = (1000 * v308) / 50;
                                  }
                                }

                                else
                                {
                                  v307 = 60000;
                                  v306 = v823 + 4264;
                                }
                              }

                              else
                              {
                                v304 = mDNSLogCategory_Default_redacted;
                                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_770;
                                }

                                if (*(v277 + 96))
                                {
                                  v305 = *(v277 + 16);
                                  v306 = v823 + 4264;
                                  if (*(v277 + 108) > 3u)
                                  {
                                    if (v305 <= 0xA)
                                    {
                                      if (v305)
                                      {
                                        v307 = 100;
                                      }

                                      else
                                      {
                                        v307 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v307 = 1000;
                                    }
                                  }

                                  else
                                  {
                                    v307 = (1000 * v305) / 50;
                                  }
                                }

                                else
                                {
                                  v307 = 60000;
                                  v306 = v823 + 4264;
                                }
                              }

                              v309 = *(v823 + 64);
                              v310 = v307 + *(v277 + 88) - v309;
                              v311 = *(v306 + 4 * v276) - v309;
                              v312 = *(v823 + 88) - v309;
                              *v888 = 67109888;
                              *&v888[4] = v310;
                              *&v888[8] = 1024;
                              *&v888[10] = v276;
                              *&v888[14] = 1024;
                              *&v888[16] = v311;
                              *&v888[20] = 1024;
                              *&v888[22] = v312;
                              _os_log_impl(&_mh_execute_header, v304, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Discarding due to domainname case change in %d slot %3u in %d %d", v888, 0x1Au);
                              goto LABEL_770;
                            }

                            v283 = *(v277 + 12);
                            if (v283 == 5 && *(v277 + 8) != 240 && *(v277 + 84) && *(v823 + 37926) == *(v277 + 14))
                            {
                              goto LABEL_867;
                            }

                            if (resource_records_have_same_dnssec_rr_category(*(v823 + 37976), *(v277 + 64)))
                            {
                              v284 = *(v823 + 37924);
                              if ((v284 == 5 || v283 == 5) && *(v277 + 16) && v284 != v283)
                              {
                                v99 = objecta;
                                if (resource_record_as_rrsig_get_covered_type(v790) == 5)
                                {
                                  goto LABEL_679;
                                }

                                if (resource_record_as_rrsig_get_covered_type(v277 + 8) == 5)
                                {
                                  goto LABEL_679;
                                }

                                v285 = *(v823 + 37976);
                                if (v285)
                                {
                                  if (*v790 == 240 && !*(v285 + 32) && (*(v285 + 40) & 1) == 0)
                                  {
                                    v286 = *(v285 + 48);
                                    if (v286)
                                    {
                                      if (*(v286 + 16) == 5)
                                      {
                                        goto LABEL_679;
                                      }
                                    }
                                  }
                                }

                                v287 = *(v277 + 64);
                                if (v287)
                                {
                                  if (*(v277 + 8) == 240 && !*(v287 + 32) && (*(v287 + 40) & 1) == 0)
                                  {
                                    v288 = *(v287 + 48);
                                    if (v288)
                                    {
                                      if (*(v288 + 16) == 5)
                                      {
                                        goto LABEL_679;
                                      }
                                    }
                                  }
                                }

                                v289 = mDNSLogCategory_Default;
                                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                {
                                  if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v297 = *(v277 + 10);
                                    v298 = "ghost";
                                    if (v297 == 1)
                                    {
                                      v298 = "immortal";
                                    }

                                    v44 = v297 == 0;
                                    v299 = "mortal";
                                    if (!v44)
                                    {
                                      v299 = v298;
                                    }

                                    v753 = v299;
                                    v754 = v278;
                                    v293 = v823 + 47032;
                                    GetRRDisplayString_rdb((v277 + 8), (*(v277 + 48) + 4), v793);
                                    v752 = DNSTypeName(*(v277 + 12));
                                    if (*(v277 + 8) == 240)
                                    {
                                      v294 = ", Negative";
                                    }

                                    else
                                    {
                                      v294 = "";
                                    }

                                    v295 = DNSTypeName(*(v823 + 37924));
                                    if (*v790 == 240)
                                    {
                                      v296 = ", Negative";
                                    }

                                    else
                                    {
                                      v296 = "";
                                    }

LABEL_721:
                                    *v888 = 136447747;
                                    *&v888[4] = v753;
                                    v99 = objecta;
                                    *&v888[12] = 2160;
                                    *&v888[14] = 1752392040;
                                    *&v888[22] = 2085;
                                    *&v888[24] = v293;
                                    v278 = v754;
                                    *&v888[32] = 2082;
                                    *&v888[34] = v752;
                                    v98 = v780;
                                    *&v888[42] = 2082;
                                    *&v888[44] = v294;
                                    v23 = v805;
                                    *&v888[52] = 2082;
                                    *&v888[54] = v295;
                                    *&v888[62] = 2082;
                                    *&v888[64] = v296;
                                    _os_log_impl(&_mh_execute_header, v289, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveCacheCheck: Discarding (%{public}s) %{sensitive, mask.hash}s rrtype change from (%{public}s%{public}s) to (%{public}s%{public}s)", v888, 0x48u);
                                  }
                                }

                                else
                                {
                                  v289 = mDNSLogCategory_Default_redacted;
                                  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v290 = *(v277 + 10);
                                    v291 = "ghost";
                                    if (v290 == 1)
                                    {
                                      v291 = "immortal";
                                    }

                                    v44 = v290 == 0;
                                    v292 = "mortal";
                                    if (!v44)
                                    {
                                      v292 = v291;
                                    }

                                    v753 = v292;
                                    v754 = v278;
                                    v293 = v823 + 47032;
                                    GetRRDisplayString_rdb((v277 + 8), (*(v277 + 48) + 4), v793);
                                    v752 = DNSTypeName(*(v277 + 12));
                                    if (*(v277 + 8) == 240)
                                    {
                                      v294 = ", Negative";
                                    }

                                    else
                                    {
                                      v294 = "";
                                    }

                                    v295 = DNSTypeName(*(v823 + 37924));
                                    if (*v790 == 240)
                                    {
                                      v296 = ", Negative";
                                    }

                                    else
                                    {
                                      v296 = "";
                                    }

                                    goto LABEL_721;
                                  }
                                }

                                mDNS_PurgeCacheResourceRecord(v823, v277);
LABEL_770:
                                v29 = v837;
                                goto LABEL_679;
                              }
                            }

                            v99 = objecta;
LABEL_679:
                            v277 = *v277;
                            if (!v277)
                            {
                              v313 = v98;
                              goto LABEL_773;
                            }
                          }
                        }

                        v313 = v98;
                        v29 = v837;
LABEL_773:
                        v314 = v776;
                      }

                      else
                      {
                        v313 = v98;
                        v314 = 0;
                        v29 = v837;
                      }

                      if (*(v823 + 37928))
                      {
                        v315 = v276;
                        v316 = *v790;
                        if ((*v790 & 0x10) != 0)
                        {
                          v317 = v823;
                          v318 = (*(v823 + 64) + 1000) <= 1 ? 1 : *(v823 + 64) + 1000;
                        }

                        else
                        {
                          v317 = v823;
                          v318 = CheckForSoonToExpireRecordsEx(v823, *(v823 + 37952), *(v823 + 37936), -1, -1, 0);
                        }

                        NewCacheEntry = CreateNewCacheEntryEx(v317, v315, v314, v318, 1, v787, v765);
                        if (NewCacheEntry)
                        {
                          v277 = NewCacheEntry;
                          v320 = v23[1];
                          *(NewCacheEntry + 110) = v320;
                          *(NewCacheEntry + 9) = HIBYTE(v320) & 0xF;
                          if ((v316 & 0x10) != 0)
                          {
                            *v771 = NewCacheEntry;
                            v323 = 1;
                            *(NewCacheEntry + 112) = 1;
                            v322 = (NewCacheEntry + 112);
                          }

                          else
                          {
                            v321 = *(NewCacheEntry + 84);
                            v322 = v771;
                            if (v321)
                            {
                              if (*(v762 + 4 * v315) - v321 >= 1)
                              {
                                *(v762 + 4 * v315) = v321;
                              }

                              v98 = v313;
                              if (*(v823 + 88) - v321 >= 1)
                              {
                                *(v823 + 88) = v321;
                              }

                              v323 = 1;
                              goto LABEL_793;
                            }

                            v323 = 1;
                          }

                          v98 = v313;
                          goto LABEL_793;
                        }
                      }

                      v98 = v313;
LABEL_794:
                      v114 = (v823 + 37920);
LABEL_795:
                      *v114 = 0;
                      *(v114 + 51) = 0;
                      v122 = *(v114 + 7);
                      if (!v122)
                      {
                        goto LABEL_797;
                      }

LABEL_796:
                      ref_count_obj_release(v122);
                      *(v114 + 7) = 0;
                      goto LABEL_797;
                    }
                  }

                  else if (v795)
                  {
                    v142 = *(v133 + 216);
                    if (v142)
                    {
                      if ((*(v823 + 64) - v142) < 0x7D0)
                      {
                        goto LABEL_279;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v133 = *(v133 + 8);
        if (!v133)
        {
          goto LABEL_286;
        }
      }
    }

    if (v117 != 41)
    {
      if (v117 == 250)
      {
        goto LABEL_794;
      }

      goto LABEL_217;
    }

    v118 = *(v823 + 37960);
    v119 = v118 + 4 + *(v823 + 37932);
    if (v118 + 4 < v119)
    {
      v120 = v118 + 8;
      do
      {
        if (*(v120 - 4) == 4 && !*v120 && *(v120 + 2))
        {
          ClearProxyRecords(v823, v120, *(v823 + 12624));
          ClearProxyRecords(v823, v120, *(v823 + 12616));
        }

        v121 = v120 + 20;
        v120 += 24;
      }

      while (v121 < v119);
    }

    v114 = (v823 + 37920);
    *v790 = 0;
    *(v823 + 38022) = 0;
    v122 = *(v823 + 37976);
    v99 = objecta;
    if (v122)
    {
      goto LABEL_796;
    }

LABEL_797:
    ++v97;
    v96 = v826;
    v67 = v835;
    v105 = v832;
    if (v97 < v817 && v832 < v826)
    {
      continue;
    }

    break;
  }

  object = v99;
  v95 = v782 == 0;
  v38 = v838;
LABEL_912:
  v829 = v95;
  v360 = v802;
  if (v38)
  {
    do
    {
      v361 = *v38;
      free(v38);
      v38 = v361;
    }

    while (v361);
    v838 = 0;
  }

  if (!v824)
  {
    if (v791 == 100 || v802 == 100)
    {
      v362 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_932;
        }
      }

      else
      {
        v362 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
        {
LABEL_932:
          *v888 = 67109376;
          *&v888[4] = v791;
          *&v888[8] = 1024;
          *&v888[10] = v802;
          _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_FAULT, "Too many records contained in a single response - cached records: %u, record set: %u", v888, 0xEu);
        }
      }
    }

    if (v791)
    {
      v366 = 0;
      while (1)
      {
        v367 = v845[v366];
        if (v360)
        {
          v368 = v844;
          v369 = v802;
          while (!RecordInTheRRSet(v367 + 8, v368))
          {
            v368 += 3;
            if (!--v369)
            {
              goto LABEL_939;
            }
          }

          v379 = *(v367 + 64);
          if (v379)
          {
            *(v379 + 24) = *(v368 + 3);
            *(v379 + 36) = *(v368 + 18) != 0;
          }

          goto LABEL_967;
        }

LABEL_939:
        v370 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          v372 = *(v367 + 40);
          if (v372)
          {
            v373 = *(v367 + 40);
            while (1)
            {
              if (!v373 || (v374 = *v373, v374 > 0x3F))
              {
LABEL_951:
                v375 = 257;
                goto LABEL_966;
              }

              if (!*v373)
              {
                break;
              }

              v373 += v374 + 1;
              if (&v373[-v372] >= 256)
              {
                goto LABEL_951;
              }
            }

            v375 = (v373 - v372 + 1);
          }

          else
          {
            v375 = 0;
          }

LABEL_966:
          v380 = DNSTypeName(*(v367 + 12));
          *v888 = 141559043;
          *&v888[4] = 1752392040;
          *&v888[12] = 1040;
          *&v888[14] = v375;
          *&v888[18] = 2101;
          *&v888[20] = v372;
          *&v888[28] = 2160;
          *&v888[30] = 1752392040;
          *&v888[38] = 2085;
          *&v888[40] = v380;
          _os_log_impl(&_mh_execute_header, v370, OS_LOG_TYPE_FAULT, "Answer set counter not found for the cached record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rrtype: %{sensitive, mask.hash}s.", v888, 0x30u);
          v360 = v802;
        }

LABEL_967:
        if (++v366 == v791)
        {
          goto LABEL_968;
        }
      }

      v370 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_967;
      }

      v372 = *(v367 + 40);
      if (v372)
      {
        v377 = *(v367 + 40);
        while (1)
        {
          if (!v377 || (v378 = *v377, v378 > 0x3F))
          {
LABEL_959:
            v375 = 257;
            goto LABEL_966;
          }

          if (!*v377)
          {
            break;
          }

          v377 += v378 + 1;
          if (&v377[-v372] >= 256)
          {
            goto LABEL_959;
          }
        }

        v375 = (v377 - v372 + 1);
      }

      else
      {
        v375 = 0;
      }

      goto LABEL_966;
    }
  }

LABEL_968:
  if (v829)
  {
    v23 = v805;
    v358 = v826;
  }

  else
  {
    v358 = v826;
    v23 = v805;
    DumpPacket(0, 0, "N/A", v787, v785, v788, v759, v805, v826, a10);
  }

  v29 = v837;
  v359 = v823 + 37920;
LABEL_972:
  v803 = v360;
  *v359 = 0;
  *(v359 + 102) = 0;
  v381 = *(v359 + 56);
  if (v381)
  {
    ref_count_obj_release(v381);
    *(v359 + 56) = 0;
  }

  v382 = v839;
  v383 = v835;
  if (v839 == 1)
  {
    goto LABEL_1090;
  }

  v833 = (v823 + 47032);
  v818 = bswap32(v785) >> 16;
  v384 = v823 + 4264;
  while (2)
  {
    v385 = *(v382 + 24);
    v386 = CacheGroupForName(v823, v385, *(v382 + 40));
    v839 = *(v839 + 112);
    *(v382 + 112) = 0;
    if (!v386 || ((v387 = v386[2]) != 0 ? (v388 = v383 == 0) : (v388 = 0), !v388))
    {
      v389 = 0;
      goto LABEL_1074;
    }

    v390 = 0;
    while (2)
    {
      if (!*(v387 + 109) && SameNameCacheRecordsMatchInSourceTypeClass(v382, v387))
      {
        if (resource_records_have_same_dnssec_rr_category(*(v382 + 64), *(v387 + 64)))
        {
          v391 = *(v382 + 12);
          if (v391 == *(v387 + 12))
          {
            if (v391 != 46 || (covered_type = resource_record_as_rrsig_get_covered_type(v382 + 8), v44 = covered_type == resource_record_as_rrsig_get_covered_type(v387 + 8), v29 = v837, v44))
            {
              if (!*(v382 + 10) && *(v387 + 10))
              {
                *(v382 + 10) = 1;
              }

              v393 = *(v823 + 64);
              v394 = *(v387 + 80);
              v395 = v393 - v394;
              if ((v393 - v394) <= 999)
              {
                v396 = *(v387 + 109) ? dword_10016D258 + 939524096 : v394 + 1000 * *(v387 + 16);
                if ((v396 - v393) >= 1001)
                {
                  v397 = *(v387 + 16);
                  v398 = *(v382 + 16);
                  if (v397 == v398 || v398 < 2)
                  {
                    goto LABEL_1063;
                  }

                  if (v397 == 240 && v398 == 60)
                  {
                    if (*(v387 + 12) == 16)
                    {
                      goto LABEL_1062;
                    }
                  }

                  else if (v397 == 120 && v398 == 4500)
                  {
                    if (!v824 || *(v387 + 12) == 33)
                    {
                      goto LABEL_1062;
                    }

LABEL_1043:
                    if (mDNSCoreReceiveResponse_lastLogWindowStartTime && v393 - mDNSCoreReceiveResponse_lastLogWindowStartTime < 0x36EE80)
                    {
                      v409 = mDNSCoreReceiveResponse_count;
                    }

                    else
                    {
                      v409 = 0;
                      if (v393 <= 1)
                      {
                        v410 = 1;
                      }

                      else
                      {
                        v410 = *(v823 + 64);
                      }

                      mDNSCoreReceiveResponse_lastLogWindowStartTime = v410;
                    }

                    mDNSCoreReceiveResponse_count = v409 + 1;
                    v411 = mDNSLogCategory_Default;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                    {
                      if (v409 <= 0x63)
                      {
                        v412 = OS_LOG_TYPE_INFO;
                      }

                      else
                      {
                        v412 = OS_LOG_TYPE_DEBUG;
                      }

                      if (!os_log_type_enabled(mDNSLogCategory_Default, v412))
                      {
                        goto LABEL_1062;
                      }
                    }

                    else
                    {
                      v411 = mDNSLogCategory_Default_redacted;
                      if (v409 <= 0x63)
                      {
                        v412 = OS_LOG_TYPE_INFO;
                      }

                      else
                      {
                        v412 = OS_LOG_TYPE_DEBUG;
                      }

                      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, v412))
                      {
                        goto LABEL_1062;
                      }
                    }

                    GetRRDisplayString_rdb((v387 + 8), (*(v387 + 48) + 4), v833);
                    *v888 = 67110915;
                    *&v888[4] = v397;
                    *&v888[8] = 1024;
                    *&v888[10] = v398;
                    *&v888[14] = 2160;
                    *&v888[16] = 1752392040;
                    *&v888[24] = 1045;
                    *&v888[26] = 20;
                    *&v888[30] = 2101;
                    *&v888[32] = v787;
                    *&v888[40] = 1024;
                    *&v888[42] = v818;
                    *&v888[46] = 2160;
                    *&v888[48] = 1752392040;
                    *&v888[56] = 2085;
                    *&v888[58] = v823 + 47032;
                    _os_log_impl(&_mh_execute_header, v411, v412, "Correcting TTL from %4u to %4u from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%u for records %{sensitive, mask.hash}s", v888, 0x42u);
LABEL_1062:
                    *(v387 + 16) = *(v382 + 16);
                    v393 = *(v823 + 64);
                    v29 = v837;
LABEL_1063:
                    *(v387 + 80) = v393;
                    SetNextCacheCheckTimeForRecord(v823, v387);
                    v358 = v826;
LABEL_1073:
                    v383 = v835;
                    goto LABEL_984;
                  }

                  if (!v824)
                  {
                    goto LABEL_1062;
                  }

                  goto LABEL_1043;
                }
              }

              v399 = *(v387 + 32);
              if (v399)
              {
                if (AWDLInterfaceID != v399 && WiFiAwareInterfaceID != v399)
                {
                  if (v393 == v394 && *(v387 + 16) == 1 && *(v387 + 108) == 4)
                  {
                    v383 = v835;
                    if (mDNS_LoggingEnabled == 1)
                    {
                      v400 = mDNSLogCategory_Default;
                      GetRRDisplayString_rdb((v387 + 8), (*(v387 + 48) + 4), v833);
                      v401 = v400;
                      v29 = v837;
                      LogMsgWithLevel(v401, OS_LOG_TYPE_DEFAULT, "Cache flush for DE record %s", v833);
                    }

                    *(v387 + 16) = 0;
                  }

                  else
                  {
                    v383 = v835;
                    if (*(v387 + 109))
                    {
                      v408 = dword_10016D258 + 939524096;
                    }

                    else
                    {
                      v408 = v394 + 1000 * *(v387 + 16);
                    }

                    if ((v408 - v393) >= 1001)
                    {
                      *(v387 + 16) = 1;
                      *(v387 + 108) = 4;
                      *(v387 + 80) = v393 - 1;
                    }
                  }

                  SetNextCacheCheckTimeForRecord(v823, v387);
                  v358 = v826;
                  goto LABEL_984;
                }

                v406 = mDNSLogCategory_Default;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                {
                  if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                  {
                    if (*(v387 + 109))
                    {
                      v407 = dword_10016D258 + 939524096;
                    }

                    else
                    {
                      v407 = v394 + 1000 * *(v387 + 16);
                    }

                    goto LABEL_1066;
                  }
                }

                else
                {
                  v406 = mDNSLogCategory_Default_redacted;
                  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                  {
                    if (*(v387 + 109))
                    {
                      v407 = dword_10016D258 + 939524096;
                    }

                    else
                    {
                      v407 = v394 + 1000 * *(v387 + 16);
                    }

LABEL_1066:
                    v413 = v407 - v393;
                    GetRRDisplayString_rdb((v387 + 8), (*(v387 + 48) + 4), v833);
                    *v888 = 67109891;
                    *&v888[4] = v395;
                    *&v888[8] = 1024;
                    *&v888[10] = v413;
                    *&v888[14] = 2160;
                    *&v888[16] = 1752392040;
                    *&v888[24] = 2085;
                    *&v888[26] = v823 + 47032;
                    _os_log_impl(&_mh_execute_header, v406, OS_LOG_TYPE_DEBUG, "Fast flushing AWDL cache record -- age: %d ticks, expire: %d ticks, record: %{sensitive, mask.hash}s", v888, 0x22u);
                  }
                }

                mDNS_PurgeCacheResourceRecord(v823, v387);
                v358 = v826;
LABEL_1072:
                v29 = v837;
                goto LABEL_1073;
              }

              v358 = v826;
              if (!v824 && *(v387 + 8) != 240)
              {
                if (v803)
                {
                  v402 = v844;
                  v403 = v803;
                  while (!RecordInTheRRSet(v387 + 8, v402))
                  {
                    v402 += 3;
                    if (!--v403)
                    {
                      goto LABEL_1021;
                    }
                  }

                  v404 = *(v387 + 64);
                  if (!v404)
                  {
                    goto LABEL_1071;
                  }

                  *(v404 + 24) = *(v402 + 3);
                  v405 = *(v402 + 18) != 0;
                  goto LABEL_1070;
                }

LABEL_1021:
                v404 = *(v387 + 64);
                if (v404)
                {
                  *(v404 + 24) = 0;
                  v405 = 1;
LABEL_1070:
                  *(v404 + 36) = v405;
                }
              }

LABEL_1071:
              mDNS_PurgeCacheResourceRecord(v823, v387);
              v390 = 1;
              goto LABEL_1072;
            }
          }
        }
      }

LABEL_984:
      v387 = *v387;
      if (v387)
      {
        continue;
      }

      break;
    }

    v389 = v390 != 0;
    v23 = v805;
LABEL_1074:
    if (*(v382 + 84))
    {
      if (*(v382 + 32))
      {
        v414 = CheckForSoonToExpireRecordsEx(v823, *(v382 + 40), *(v382 + 24), -1, -1, 0);
        *(v382 + 84) = v414;
        if (!v414)
        {
LABEL_1088:
          CacheRecordDeferredAdd(v823, v382);
          goto LABEL_1089;
        }
      }

      else
      {
        if (((v389 | v810) & 1) == 0)
        {
          *(v382 + 84) = 0;
          goto LABEL_1088;
        }

        if (*(v823 + 64) <= 1u)
        {
          v414 = 1;
        }

        else
        {
          v414 = *(v823 + 64);
        }

        *(v382 + 84) = v414;
      }

      if (*(v384 + 4 * (v385 % 0x1F3)) - v414 >= 1)
      {
        *(v384 + 4 * (v385 % 0x1F3)) = v414;
      }

      if (*(v823 + 88) - v414 >= 1)
      {
        *(v823 + 88) = v414;
      }
    }

LABEL_1089:
    v382 = v839;
    if (v839 != 1)
    {
      continue;
    }

    break;
  }

LABEL_1090:
  if (!v824 && v791)
  {
    v415 = v791;
    v416 = v845;
    do
    {
      v417 = *v416++;
      *(v417 + 128) = 0;
      --v415;
    }

    while (v415);
  }

  v418 = v823;
  if (v383)
  {
    goto LABEL_1095;
  }

  v840 = 0;
  v419 = IsResponseMDNSEquivalent(v29, a9);
  v420 = 0;
  v421 = a10;
  if (v29 && !v419)
  {
    v422 = *(*(v29 + 96) + 70);
    if ((v422 & 4) != 0)
    {
      v420 = (v422 >> 1) & 1;
    }

    else
    {
      v420 = 0;
    }
  }

  memset(v887, 0, sizeof(v887));
  memset(v886, 0, sizeof(v886));
  memset(v885, 0, sizeof(v885));
  memset(v884, 0, sizeof(v884));
  if (v23[2])
  {
    Question = (v23 + 6);
    if ((v23 + 6) < v358)
    {
      v796 = v419;
      v424 = 0;
      v834 = 0;
      v825 = 0;
      v425 = v358;
      v813 = 0;
      LOBYTE(v792) = 0;
      LOBYTE(v794) = 0;
      v804 = 0;
      v758 = v788 == 0;
      v789 = (v823 + 47032);
      v836 = v420;
      v777 = v420 ^ 1;
      v426 = &loc_100009418;
      v798 = v823 + 4264;
      while (1)
      {
        bzero(v877, 0x2B8uLL);
        Question = getQuestion(v23, Question, v425, v421, v877);
        if (!Question)
        {
          goto LABEL_1890;
        }

        if (v29)
        {
          DNSQuestion = Querier_GetDNSQuestion(v29, 0);
          v781 = DNSQuestion == 0;
          v428 = v836;
          v830 = DNSQuestion;
          if (DNSQuestion)
          {
            v763 = bswap32(*(DNSQuestion + 340)) >> 16;
          }

          else
          {
            v763 = 0;
          }

          v430 = v878;
          v764 = (*(*(v29 + 16) + 104))(v29);
          v770 = (*(*(v29 + 16) + 96))(v29);
        }

        else
        {
          v429 = ExpectingUnicastResponseForQuestion(*(v418 + 192), v759, *v23, v877, v758);
          v428 = v836;
          if (!v429)
          {
            goto LABEL_1890;
          }

          v764 = 0;
          v781 = 0;
          v770 = 0;
          v430 = v878;
          v830 = v429;
          v763 = bswap32(*(v429 + 340)) >> 16;
        }

        bzero(v862, 0xB00uLL);
        v761 = v424;
        v779 = Question;
        if (v428)
        {
          v431 = v883;
          do
          {
            if (!v431)
            {
              break;
            }

            v432 = *v431;
            if (v432 > 0x3F)
            {
              break;
            }

            if (!*v431)
            {
              v434 = v431 - v883 + 1;
              if (v434 <= 0x100u)
              {
                memcpy(v862, v883, v434);
              }

              break;
            }

            v431 += v432 + 1;
          }

          while (v431 - v883 <= 255);
          v435 = v23[3];
          if (v23[3] && (v436 = LocateAnswers(v23, v826)) != 0)
          {
            v437 = v436;
            bzero(v888, 0x2C00uLL);
            v438 = 0;
            v439 = 0;
            do
            {
              if (v437 >= v826 || v438 >= 0x16)
              {
                break;
              }

              v437 = GetLargeResourceRecord(mDNSStorage, v23, v437, v826, v421, 160, mDNSStorage + v426);
              v440 = *(mDNSStorage + &loc_100009420) != 240 && *(mDNSStorage + &loc_100009424) == 5;
              if (v440 && *qword_100176658 && !SameDomainNameBytes(qword_100176658, (qword_100176660 + 4)))
              {
                v441 = qword_100176658;
                do
                {
                  if (!v441)
                  {
                    break;
                  }

                  v442 = *v441;
                  if (v442 > 0x3F)
                  {
                    break;
                  }

                  if (!*v441)
                  {
                    v443 = v441 - qword_100176658 + 1;
                    if (v443 <= 0x100u)
                    {
                      memcpy(&v888[512 * v438], qword_100176658, v443);
                      goto LABEL_1145;
                    }

                    break;
                  }

                  v441 += v442 + 1;
                }

                while (&v441[-qword_100176658] <= 255);
                v888[512 * v438] = 0;
LABEL_1145:
                v444 = (qword_100176660 + 4);
                v445 = (qword_100176660 + 4);
                do
                {
                  if (!v445)
                  {
                    break;
                  }

                  v446 = *v445;
                  if (v446 > 0x3F)
                  {
                    break;
                  }

                  if (!*v445)
                  {
                    v447 = v445 - v444 + 1;
                    if (v447 <= 0x100u)
                    {
                      memcpy(&v895[512 * v438 + 31], v444, v447);
                      goto LABEL_1154;
                    }

                    break;
                  }

                  v445 += v446 + 1;
                }

                while (v445 - v444 <= 255);
                v895[512 * v438 + 31] = 0;
LABEL_1154:
                ++v438;
              }

              WORD4(xmmword_100176630) = 0;
              HIWORD(xmmword_100176690) = 0;
              if (xmmword_100176670)
              {
                ref_count_obj_release(xmmword_100176670);
                *&xmmword_100176670 = 0;
              }

              ++v439;
            }

            while (v439 != v435);
            v448 = 1;
            v449 = v883;
            v29 = v837;
            while (v448 != v438 + 1)
            {
              v450 = v888;
              v451 = v438;
              while (!*v450 || !SameDomainNameBytes(v449, v450))
              {
                v450 += 512;
                if (!--v451)
                {
                  v23 = v805;
LABEL_1178:
                  v29 = v837;
                  goto LABEL_1179;
                }
              }

              *v450 = 0;
              v449 = v450 + 256;
              v23 = v805;
              if (v450 == -256)
              {
                goto LABEL_1178;
              }

              v452 = v450 + 256;
              v29 = v837;
              do
              {
                if (!v452)
                {
                  break;
                }

                v453 = *v452;
                if (v453 > 0x3F)
                {
                  break;
                }

                if (!*v452)
                {
                  v454 = v452 - v449 + 1;
                  if (v454 <= 0x100u)
                  {
                    memcpy(&v862[256 * v448], v449, v454);
                    goto LABEL_1175;
                  }

                  break;
                }

                v452 += v453 + 1;
              }

              while (v452 - v449 <= 255);
              v862[256 * v448] = 0;
LABEL_1175:
              if (++v448 == 11)
              {
                goto LABEL_1179;
              }
            }

            LODWORD(v448) = v438 + 1;
LABEL_1179:
            v418 = v823;
            v428 = v836;
          }

          else
          {
            LODWORD(v448) = 1;
            v29 = v837;
          }

          v786 = v448;
          v433 = v862;
          v430 = DomainNameHashValue(v862);
        }

        else
        {
          v786 = 1;
          v433 = v883;
        }

        v455 = 0;
        v808 = 0;
        do
        {
LABEL_1182:
          v456 = CacheGroupForName(v418, v430, v433);
          v457 = v456;
          if (!v428)
          {
            v816 = 0;
            v861 = 0u;
            v860 = 0u;
            v859 = 0u;
            v858 = 0u;
            v857 = 0u;
            v856 = 0u;
            v855 = 0u;
            v854 = 0u;
            v853 = 0u;
            v852 = 0u;
            v851 = 0u;
            v850 = 0u;
            v849 = 0u;
            v848 = 0u;
            v800 = 1;
            v819 = 3601;
            v847 = 0u;
            __dst = 0u;
            if (!v456)
            {
              goto LABEL_1251;
            }

            goto LABEL_1224;
          }

          v458 = v23[3];
          v861 = 0u;
          v860 = 0u;
          v859 = 0u;
          v858 = 0u;
          v857 = 0u;
          v856 = 0u;
          v855 = 0u;
          v854 = 0u;
          v853 = 0u;
          v852 = 0u;
          v851 = 0u;
          v850 = 0u;
          v849 = 0u;
          v848 = 0u;
          v847 = 0u;
          __dst = 0u;
          if (!v458)
          {
            v816 = 0;
            v428 = 0;
            v800 = 1;
            v819 = 3601;
            if (!v456)
            {
              goto LABEL_1251;
            }

            goto LABEL_1224;
          }

          if (!v456)
          {
            goto LABEL_1249;
          }

          v459 = v456[2];
          if (!v459)
          {
            goto LABEL_1249;
          }

          v460 = 0;
          v816 = 0;
          v819 = 3601;
          do
          {
            if (v29)
            {
              v461 = *(v459 + 56);
              if (v461)
              {
                v461 = v461[3];
              }

              if (v461 != a9 || !Client_SameNameCacheRecordIsAnswer(v459, v29))
              {
                goto LABEL_1220;
              }
            }

            else if (!SameNameRecordAnswersQuestion((v459 + 8), 0, v830))
            {
              goto LABEL_1220;
            }

            if (*(v459 + 8) != 240)
            {
              v819 = *(v459 + 16);
              v462 = *(v459 + 12);
              if (v462 == 46)
              {
                if (!resource_record_as_rrsig_covers_wildcard_rr(v459 + 8))
                {
                  goto LABEL_1249;
                }

                v463 = v459 + 8;
                if (v816)
                {
                  if (resource_record_as_rrsig_get_covered_type(v463) != v816)
                  {
                    goto LABEL_1249;
                  }

                  v464 = *(v459 + 40);
                  v465 = v464;
                  do
                  {
                    if (!v465)
                    {
                      break;
                    }

                    v466 = *v465;
                    if (v466 > 0x3F)
                    {
                      break;
                    }

                    if (!*v465)
                    {
                      goto LABEL_1216;
                    }

                    v465 += v466 + 1;
                  }

                  while (v465 - v464 <= 255);
                }

                else
                {
                  v816 = resource_record_as_rrsig_get_covered_type(v463);
                  v464 = *(v459 + 40);
                  v465 = v464;
                  do
                  {
                    if (!v465)
                    {
                      break;
                    }

                    v467 = *v465;
                    if (v467 > 0x3F)
                    {
                      break;
                    }

                    if (!*v465)
                    {
LABEL_1216:
                      v468 = v465 - v464 + 1;
                      if (v468 > 0x100u)
                      {
                        break;
                      }

                      memcpy(&__dst, v464, v468);
                      goto LABEL_1219;
                    }

                    v465 += v467 + 1;
                  }

                  while (v465 - v464 <= 255);
                }

                LOBYTE(__dst) = 0;
LABEL_1219:
                v460 = 1;
              }

              else if (v816)
              {
                if (v462 != v816)
                {
                  goto LABEL_1249;
                }
              }

              else
              {
                v816 = *(v459 + 12);
              }
            }

LABEL_1220:
            v459 = *v459;
          }

          while (v459);
          if (v460)
          {
            v800 = 0;
            v428 = 1;
            goto LABEL_1250;
          }

LABEL_1249:
          v819 = 0;
          v816 = 0;
          v428 = 0;
          v800 = 1;
LABEL_1250:
          v23 = v805;
          if (!v457)
          {
LABEL_1251:
            v474 = 1;
            goto LABEL_1256;
          }

LABEL_1224:
          v469 = v457[2];
          if (!v469)
          {
LABEL_1248:
            v474 = 1;
            goto LABEL_1255;
          }

          while (2)
          {
            v470 = v455;
            if (!v29)
            {
              if (SameNameRecordAnswersQuestion((v469 + 8), 0, v830))
              {
                goto LABEL_1233;
              }

              goto LABEL_1246;
            }

            v471 = *(v469 + 56);
            if (v471)
            {
              v471 = v471[3];
            }

            if (v471 != a9 || !Client_SameNameCacheRecordIsAnswer(v469, v29))
            {
              goto LABEL_1246;
            }

LABEL_1233:
            if (*(v469 + 109))
            {
              v472 = dword_10016D258 + 939524096;
            }

            else
            {
              v472 = *(v469 + 80) + 1000 * *(v469 + 16);
            }

            if (((v472 - *(v418 + 64) > 0) & ~v428) == 0)
            {
              v455 = v469;
              if (*(v469 + 8) != 240)
              {
                if (*(v469 + 10) == 2)
                {
                  v473 = mDNSLogCategory_Default;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_1244;
                    }
                  }

                  else
                  {
                    v473 = mDNSLogCategory_Default_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                    {
LABEL_1244:
                      GetRRDisplayString_rdb((v469 + 8), (*(v469 + 48) + 4), v789);
                      *v888 = 141558275;
                      *&v888[4] = 1752392040;
                      *&v888[12] = 2085;
                      *&v888[14] = v823 + 47032;
                      _os_log_impl(&_mh_execute_header, v473, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveNoUnicastAnswers: Removing expired record%{sensitive, mask.hash}s", v888, 0x16u);
                    }
                  }

                  v418 = v823;
                  mDNS_PurgeCacheResourceRecord(v823, v469);
                }

LABEL_1246:
                v455 = v470;
              }

              v469 = *v469;
              v29 = v837;
              if (!v469)
              {
                goto LABEL_1248;
              }

              continue;
            }

            break;
          }

          v474 = 0;
LABEL_1255:
          v23 = v805;
LABEL_1256:
          v475 = v825;
          if (v421 || v881 == 6)
          {
            goto LABEL_1944;
          }

          v476 = IsLocalDomain(v883);
          v477 = v836;
          if (!v476)
          {
            v477 = 1;
          }

          if (v477)
          {
LABEL_1944:
            if (v474)
            {
              if (v881 == 6)
              {
                v478 = SameDomainNameBytes(v883, "\x05local");
                v479 = v777;
                if (!v478)
                {
                  v479 = 0;
                }

                v480 = (v479 & 1) != 0 ? 86400 : 60;
              }

              else
              {
                v480 = 60;
              }

              if (v23[4])
              {
                Authorities = LocateAuthorities(v23, v826);
                if (Authorities)
                {
                  v779 = GetLargeResourceRecord(v418, v23, Authorities, v826, v421, 160, v418 + v426);
                  if (!v779)
                  {
                    goto LABEL_1349;
                  }

                  v29 = v837;
                  if (*v790 == 240 || *(v823 + 37924) != 6)
                  {
                    goto LABEL_1295;
                  }

                  v489 = CacheGroupForName(v418, *(v823 + 37936), *(v823 + 37952));
                  v490 = *(*(v823 + 37960) + 532);
                  if (v490 > *(v823 + 37928) && **(v823 + 37952))
                  {
                    v490 = *(v823 + 37928);
                  }

                  if (v480 <= v490)
                  {
                    v480 = v490;
                  }

                  v834 = CreateNewCacheEntryEx(v418, *(v823 + 37936) % 0x1F3u, v489, 1, 0, 0, 0);
                  if (!v781)
                  {
                    if (*(v830 + 653))
                    {
                      goto LABEL_1295;
                    }
                  }

                  v491 = v836;
                  if (v881 != 6)
                  {
                    v491 = 1;
                  }

                  if (v491)
                  {
LABEL_1295:
                    v492 = 0;
                    goto LABEL_1351;
                  }

                  v503 = v883[0];
                  if (v883[0])
                  {
                    v504 = 0;
                    v505 = v883;
                    do
                    {
                      ++v504;
                      v506 = &v505[v503];
                      v507 = v506[1];
                      v505 = v506 + 1;
                      v503 = v507;
                    }

                    while (v507);
                  }

                  else
                  {
                    v504 = 0;
                  }

                  v511 = *(v823 + 37952);
                  v512 = *v511;
                  if (*v511)
                  {
                    v513 = 0;
                    v514 = *(v823 + 37952);
                    do
                    {
                      ++v513;
                      v515 = v514 + v512;
                      v516 = *(v515 + 1);
                      v514 = v515 + 1;
                      v512 = v516;
                    }

                    while (v516);
                  }

                  else
                  {
                    v513 = 0;
                  }

                  v517 = v504 - 1 - v513;
                  if (v504 - 1 > v513)
                  {
                    v518 = v504 - v513;
                    v519 = v883;
                    if (v518 >= 1)
                    {
                      v520 = v518 + 1;
                      v519 = v883;
                      do
                      {
                        if (!*v519)
                        {
                          break;
                        }

                        v519 += *v519 + 1;
                        --v520;
                      }

                      while (v520 > 1);
                    }

                    v492 = SameDomainNameBytes(v519, v511) ? v517 : 0;
                  }

                  else
                  {
LABEL_1349:
                    v492 = 0;
                  }

                  v29 = v837;
LABEL_1351:
                  *v790 = 0;
                  *(v823 + 38022) = 0;
                  v521 = *(v823 + 37976);
                  if (v521)
                  {
                    ref_count_obj_release(v521);
                    *(v823 + 37976) = 0;
                  }

                  v475 = v825;
                }

                else
                {
                  v492 = 0;
                  v779 = 0;
                  v29 = v837;
                }
              }

              else
              {
                v492 = 0;
              }

              if (v455)
              {
                if (v480 <= 2 * *(v455 + 16))
                {
                  v522 = 2 * *(v455 + 16);
                }

                else
                {
                  v522 = v480;
                }

                if (v522 >= 0xE10)
                {
                  v480 = 3600;
                }

                else
                {
                  v480 = v522;
                }
              }

              v523 = v480 >= 0x189374 ? 1610612 : v480;
              v524 = v523 + (v523 >> 2) + 2;
              v525 = v524 <= 0xF ? 15 : v524;
              v526 = v836;
              v527 = v813 ? 0 : v836;
              if (v527 == 1)
              {
                v783 = v525;
                v840 = 0;
                v811 = v23[4];
                if (v23[4])
                {
                  v528 = LocateAuthorities(v23, v826);
                  v804 = 0;
                  v814 = 3601;
                  LOBYTE(v792) = 0;
                  if (v528)
                  {
                    v529 = v528;
                    LOBYTE(v794) = 0;
                    if (v528 < v826)
                    {
                      v530 = v826;
                      v804 = 0;
                      v792 = 0;
                      v794 = 0;
                      v531 = 0;
                      v841 = 0;
                      v814 = 3601;
                      while (1)
                      {
                        v532 = GetLargeResourceRecord(mDNSStorage, v23, v529, v530, a10, 160, mDNSStorage + &loc_100009418);
                        v529 = v532;
                        if (*(mDNSStorage + &loc_100009420) == 240)
                        {
                          goto LABEL_1376;
                        }

                        v534 = xmmword_100176640;
                        if (xmmword_100176640 == 3601)
                        {
                          v535 = 3600;
                        }

                        else
                        {
                          v535 = xmmword_100176640;
                        }

                        if (v814 < xmmword_100176640)
                        {
                          v534 = v814;
                        }

                        if (v814 == 3601)
                        {
                          v534 = v535;
                        }

                        v814 = v534;
                        if (WORD6(xmmword_100176630) <= 0x2Eu)
                        {
                          break;
                        }

                        v530 = v826;
                        if (WORD6(xmmword_100176630) == 47)
                        {
                          if (v792 == 10)
                          {
                            v792 = 10;
                            goto LABEL_1377;
                          }

                          v774 = v532;
                          v571 = qword_100176658;
                          v572 = WORD2(xmmword_100176640);
                          LODWORD(v899[0]) = 0;
                          if (WORD2(xmmword_100176640) <= 3uLL)
                          {
                            v622 = mDNSLogCategory_Default;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                            {
                              v418 = v823;
                              v529 = v532;
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1506;
                              }
                            }

                            else
                            {
                              v622 = mDNSLogCategory_Default_redacted;
                              v418 = v823;
                              v529 = v532;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1506;
                              }
                            }

                            *v888 = 136447234;
                            *&v888[4] = "rdata_len >= min_rdata_len_nsec";
                            *&v888[12] = 2082;
                            *&v888[14] = "";
                            *&v888[22] = 2082;
                            *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                            *&v888[32] = 1024;
                            *&v888[34] = 233;
                            *&v888[38] = 2048;
                            *&v888[40] = 0;
                            v618 = v622;
                          }

                          else
                          {
                            v573 = (qword_100176660 + 4);
                            v574 = *(qword_100176660 + 4);
                            v575 = qword_100176660 + 4;
                            if (*(qword_100176660 + 4))
                            {
                              v576 = v573 + WORD2(xmmword_100176640);
                              v577 = *(qword_100176660 + 4);
                              v575 = qword_100176660 + 4;
                              while (!v576 || v575 + v577 + 1 <= v576)
                              {
                                v578 = v577 + v575;
                                v579 = *(v578 + 1);
                                v575 = v578 + 1;
                                v577 = v579;
                                if (!v579)
                                {
                                  goto LABEL_1435;
                                }
                              }

LABEL_1463:
                              v598 = mDNSLogCategory_Default;
                              if (mDNS_SensitiveLoggingEnableCount)
                              {
                                v599 = mDNSLogCategory_Default == mDNSLogCategory_State;
                              }

                              else
                              {
                                v599 = 1;
                              }

                              if (v599)
                              {
                                v418 = v823;
                                v529 = v532;
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1504;
                                }
                              }

                              else
                              {
                                v598 = mDNSLogCategory_Default_redacted;
                                v617 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
                                v418 = v823;
                                v529 = v774;
                                if (v617)
                                {
LABEL_1504:
                                  *v888 = 136447234;
                                  *&v888[4] = "next_domain_name_len >= 1";
                                  *&v888[12] = 2082;
                                  *&v888[14] = "";
                                  *&v888[22] = 2082;
                                  *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                  *&v888[32] = 1024;
                                  *&v888[34] = 238;
                                  *&v888[38] = 2048;
                                  *&v888[40] = 0;
                                  v618 = v598;
                                  goto LABEL_1505;
                                }
                              }

LABEL_1506:
                              v586 = 0;
                              v592 = -6705;
                              v29 = v837;
LABEL_1507:
                              v841 = v592;
                              goto LABEL_1508;
                            }

LABEL_1435:
                            v580 = v575 - v573;
                            v86 = __CFADD__(v580, 1);
                            v581 = v580 + 1;
                            if (v86)
                            {
                              goto LABEL_1463;
                            }

                            if (v581 >= WORD2(xmmword_100176640))
                            {
                              v624 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                v418 = v823;
                                v529 = v532;
                                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1506;
                                }
                              }

                              else
                              {
                                v624 = mDNSLogCategory_Default_redacted;
                                v418 = v823;
                                v529 = v532;
                                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1506;
                                }
                              }

                              *v888 = 136447234;
                              *&v888[4] = "next_domain_name_len < rdata_len";
                              *&v888[12] = 2082;
                              *&v888[14] = "";
                              *&v888[22] = 2082;
                              *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                              *&v888[32] = 1024;
                              *&v888[34] = 240;
                              *&v888[38] = 2048;
                              *&v888[40] = 0;
                              v618 = v624;
                            }

                            else
                            {
                              v582 = qword_100176660 + 4;
                              if (*(qword_100176660 + 4))
                              {
                                do
                                {
                                  v583 = v582 + v574;
                                  v584 = *(v583 + 1);
                                  v582 = v583 + 1;
                                  v574 = v584;
                                }

                                while (v584);
                              }

                              if (type_bit_maps_check_length(v582 + 1, (~(v582 - v573) + WORD2(xmmword_100176640))))
                              {
                                v585 = malloc_type_calloc(1uLL, 0x60uLL, 0xB7BBD98FuLL);
                                if (!v585)
                                {
                                  goto LABEL_1941;
                                }

                                v586 = v585;
                                v587 = &_dnssec_obj_rr_nsec_kind;
                                v585[1] = &_dnssec_obj_rr_nsec_kind;
                                do
                                {
                                  v588 = v587[2];
                                  if (v588)
                                  {
                                    v588(v586);
                                  }

                                  v587 = *v587;
                                }

                                while (v587);
                                ++*v586;
                                dnssec_obj_rr_init_fields(v586, v571, 47, 1, v573, v572, 1, 0, v899);
                                v589 = v899[0];
                                if (LODWORD(v899[0]))
                                {
                                  v418 = v823;
                                  v29 = v837;
                                  v529 = v774;
                                }

                                else
                                {
                                  v590 = dnssec_obj_domain_name_create_with_labels(*(v586 + 24), 0, v899);
                                  *(v586 + 80) = v590;
                                  v589 = v899[0];
                                  v418 = v823;
                                  v29 = v837;
                                  v529 = v774;
                                  if (!LODWORD(v899[0]))
                                  {
                                    v591 = ref_count_obj_compare(*(v586 + 16), v590, 0);
                                    v592 = 0;
                                    *(v586 + 88) = v591 < 2;
                                    goto LABEL_1507;
                                  }
                                }

                                v841 = v589;
                                ref_count_obj_release(v586);
                                v586 = 0;
                                v592 = v841;
LABEL_1508:
                                *(v886 + v792) = v586;
                                if (v592)
                                {
                                  v619 = v792;
                                }

                                else
                                {
                                  v619 = v792 + 1;
                                }

                                v792 = v619;
                                v23 = v805;
LABEL_1376:
                                v530 = v826;
                                goto LABEL_1377;
                              }

                              v625 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                v418 = v823;
                                v529 = v774;
                                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1506;
                                }
                              }

                              else
                              {
                                v625 = mDNSLogCategory_Default_redacted;
                                v418 = v823;
                                v529 = v774;
                                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1506;
                                }
                              }

                              *v888 = 136447234;
                              *&v888[4] = "type_bit_maps_is_valid";
                              *&v888[12] = 2082;
                              *&v888[14] = "";
                              *&v888[22] = 2082;
                              *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                              *&v888[32] = 1024;
                              *&v888[34] = 246;
                              *&v888[38] = 2048;
                              *&v888[40] = 0;
                              v618 = v625;
                            }
                          }

LABEL_1505:
                          _os_log_impl(&_mh_execute_header, v618, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", v888, 0x30u);
                          goto LABEL_1506;
                        }

                        if (WORD6(xmmword_100176630) == 50)
                        {
                          if (v794 != 10)
                          {
                            v544 = qword_100176658;
                            v545 = qword_100176660;
                            v546 = WORD2(xmmword_100176640);
                            v842 = 0;
                            v547 = *qword_100176658;
                            if (*qword_100176658)
                            {
                              v548 = 0;
                              v549 = (qword_100176660 + 4);
                              v550 = qword_100176658;
                              do
                              {
                                ++v548;
                                v551 = v550 + v547;
                                v552 = *(v551 + 1);
                                v550 = v551 + 1;
                                v547 = v552;
                              }

                              while (v552);
                              if (v548 < 2)
                              {
                                v560 = 0;
                                v570 = -6705;
                                v418 = v823;
                                v29 = v837;
                                goto LABEL_1458;
                              }

                              if (WORD2(xmmword_100176640) <= 6u)
                              {
                                v626 = mDNSLogCategory_Default;
                                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                {
                                  v418 = v823;
                                  if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                  {
                                    goto LABEL_1582;
                                  }
                                }

                                else
                                {
                                  v626 = mDNSLogCategory_Default_redacted;
                                  v418 = v823;
                                  if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                  {
                                    goto LABEL_1582;
                                  }
                                }

                                *v888 = 136447234;
                                *&v888[4] = "rdata_len >= min_rdata_len_nsec3";
                                *&v888[12] = 2082;
                                *&v888[14] = "";
                                *&v888[22] = 2082;
                                *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                *&v888[32] = 1024;
                                *&v888[34] = 652;
                                *&v888[38] = 2048;
                                *&v888[40] = 0;
                                v627 = v626;
                              }

                              else
                              {
                                v553 = &v549[WORD2(xmmword_100176640)];
                                v554 = *(qword_100176660 + 8);
                                v555 = qword_100176660 + 9 + v554;
                                if (v555 >= v553)
                                {
                                  v628 = mDNSLogCategory_Default;
                                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                  {
                                    v418 = v823;
                                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                    {
                                      goto LABEL_1582;
                                    }
                                  }

                                  else
                                  {
                                    v628 = mDNSLogCategory_Default_redacted;
                                    v418 = v823;
                                    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                    {
                                      goto LABEL_1582;
                                    }
                                  }

                                  *v888 = 136447234;
                                  *&v888[4] = "salt + salt_len < limit";
                                  *&v888[12] = 2082;
                                  *&v888[14] = "";
                                  *&v888[22] = 2082;
                                  *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                  *&v888[32] = 1024;
                                  *&v888[34] = 659;
                                  *&v888[38] = 2048;
                                  *&v888[40] = 0;
                                  v627 = v628;
                                }

                                else
                                {
                                  v556 = v555 + v549[v554 + 5] + 1;
                                  if (v556 > v553)
                                  {
                                    v629 = mDNSLogCategory_Default;
                                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                    {
                                      v418 = v823;
                                      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                      {
                                        goto LABEL_1582;
                                      }
                                    }

                                    else
                                    {
                                      v629 = mDNSLogCategory_Default_redacted;
                                      v418 = v823;
                                      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                      {
                                        goto LABEL_1582;
                                      }
                                    }

                                    *v888 = 136447234;
                                    *&v888[4] = "next_hashed_owner_name + hash_len <= limit";
                                    *&v888[12] = 2082;
                                    *&v888[14] = "";
                                    *&v888[22] = 2082;
                                    *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                    *&v888[32] = 1024;
                                    *&v888[34] = 664;
                                    *&v888[38] = 2048;
                                    *&v888[40] = 0;
                                    v627 = v629;
                                  }

                                  else
                                  {
                                    v766 = qword_100176660 + 9;
                                    if (type_bit_maps_check_length(v556, (v553 - v556)))
                                    {
                                      v767 = v492;
                                      v557 = v545;
                                      v558 = v546;
                                      v773 = v544;
                                      v559 = malloc_type_calloc(1uLL, 0x60uLL, 0xB7BBD98FuLL);
                                      if (!v559)
                                      {
                                        goto LABEL_1941;
                                      }

                                      v560 = v559;
                                      v561 = &_dnssec_obj_rr_nsec3_kind;
                                      v559[1] = &_dnssec_obj_rr_nsec3_kind;
                                      do
                                      {
                                        v562 = v561[2];
                                        if (v562)
                                        {
                                          v562(v560);
                                        }

                                        v561 = *v561;
                                      }

                                      while (v561);
                                      ++*v560;
                                      dnssec_obj_rr_init_fields(v560, v773, 50, 1, v549, v558, 1, 0, &v842);
                                      v563 = v842;
                                      if (v842)
                                      {
                                        v418 = v823;
                                        v567 = v826;
                                        v29 = v837;
                                        v492 = v767;
                                        goto LABEL_1557;
                                      }

                                      v564 = *(v557 + 8);
                                      v565 = v549[v564 + 5];
                                      encoded_string_length = base_x_get_encoded_string_length(2, v565);
                                      v567 = v826;
                                      if (encoded_string_length > 0x3F)
                                      {
                                        v563 = -6705;
                                        v418 = v823;
                                        v29 = v837;
                                        v492 = v767;
                                      }

                                      else
                                      {
                                        v843 = 0;
                                        memset(&v888[1], 0, 128);
                                        v889 = 0u;
                                        v890 = 0u;
                                        v891 = 0u;
                                        v892 = 0u;
                                        v893 = 0u;
                                        v894 = 0u;
                                        memset(v895, 0, 31);
                                        memset(v899, 0, sizeof(v899));
                                        v900 = 0u;
                                        v901 = 0u;
                                        v902 = 0u;
                                        v903 = 0u;
                                        v904 = 0u;
                                        v905 = 0u;
                                        v906 = 0u;
                                        v907 = 0u;
                                        v908 = 0u;
                                        v909 = 0u;
                                        v910 = 0u;
                                        v911 = 0u;
                                        v912 = 0u;
                                        v913 = 0u;
                                        v888[0] = encoded_string_length;
                                        v888[encoded_string_length + 1] = 0;
                                        base_32_hex_encode((v766 + v564 + 1), v565, 1, &v888[1]);
                                        parent = domain_name_labels_get_parent(v773, 1uLL);
                                        v492 = v767;
                                        if (parent)
                                        {
                                          domain_name_labels_concatenate(v888, parent, v899, &v843);
                                          v563 = v843;
                                          v418 = v823;
                                          v29 = v837;
                                          if (!v843)
                                          {
                                            v569 = dnssec_obj_domain_name_create_with_labels(v899, 1, &v843);
                                            *(v560 + 80) = v569;
                                            v563 = v843;
                                            if (!v843)
                                            {
                                              *(v560 + 88) = ref_count_obj_compare(*(v560 + 16), v569, 0) < 2;
                                              v563 = v843;
                                              v842 = v843;
                                              if (!v843)
                                              {
                                                v570 = 0;
                                                v530 = v826;
                                                goto LABEL_1458;
                                              }

LABEL_1557:
                                              v841 = v563;
                                              ref_count_obj_release(v560);
                                              v560 = 0;
                                              v570 = v841;
                                              v530 = v567;
LABEL_1459:
                                              *(v885 + v794) = v560;
                                              if (v570)
                                              {
                                                v597 = v794;
                                              }

                                              else
                                              {
                                                v597 = v794 + 1;
                                              }

                                              v794 = v597;
                                              v23 = v805;
                                              goto LABEL_1377;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v563 = -6736;
                                          v418 = v823;
                                          v29 = v837;
                                        }
                                      }

                                      v842 = v563;
                                      goto LABEL_1557;
                                    }

                                    v630 = mDNSLogCategory_Default;
                                    if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
                                    {
                                      v630 = mDNSLogCategory_Default_redacted;
                                      v418 = v823;
                                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                      {
                                        goto LABEL_1552;
                                      }

LABEL_1582:
                                      v560 = 0;
                                      v570 = -6705;
                                      v29 = v837;
                                      v530 = v826;
LABEL_1458:
                                      v841 = v570;
                                      goto LABEL_1459;
                                    }

                                    v418 = v823;
                                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                    {
                                      goto LABEL_1582;
                                    }

LABEL_1552:
                                    *v888 = 136447234;
                                    *&v888[4] = "type_bit_maps_is_valid";
                                    *&v888[12] = 2082;
                                    *&v888[14] = "";
                                    *&v888[22] = 2082;
                                    *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                                    *&v888[32] = 1024;
                                    *&v888[34] = 670;
                                    *&v888[38] = 2048;
                                    *&v888[40] = 0;
                                    v627 = v630;
                                  }
                                }
                              }

                              _os_log_impl(&_mh_execute_header, v627, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", v888, 0x30u);
                              goto LABEL_1582;
                            }

                            v560 = 0;
                            v570 = -6705;
                            v418 = v823;
                            goto LABEL_1458;
                          }

                          v794 = 10;
                        }

LABEL_1377:
                        WORD4(xmmword_100176630) = 0;
                        HIWORD(xmmword_100176690) = 0;
                        if (xmmword_100176670)
                        {
                          v533 = v530;
                          ref_count_obj_release(xmmword_100176670);
                          v530 = v533;
                          *&xmmword_100176670 = 0;
                        }

                        if (++v531 >= v811 || v529 >= v530)
                        {
                          goto LABEL_1593;
                        }
                      }

                      v530 = v826;
                      if (WORD6(xmmword_100176630) != 6)
                      {
                        if (WORD6(xmmword_100176630) != 46)
                        {
                          goto LABEL_1377;
                        }

                        v536 = dnssec_obj_rr_rrsig_create(qword_100176658, (qword_100176660 + 4), WORD2(xmmword_100176640), 1, &v841);
                        if (v841)
                        {
                          if (!v536)
                          {
                            goto LABEL_1376;
                          }

                          goto LABEL_1456;
                        }

                        v593 = __rev16(*v536[3]);
                        if (v593 == 50 || v593 == 47)
                        {
                          v594 = v840;
                          if (v840 != 30)
                          {
                            v595 = &v840;
                            v596 = v884;
LABEL_1455:
                            *(v596 + v594) = v536;
                            ++*v536;
                            *v595 = v594 + 1;
                          }
                        }

                        else if (v593 == 6)
                        {
                          v594 = HIBYTE(v840);
                          if (HIBYTE(v840) != 30)
                          {
                            v595 = (&v840 + 1);
                            v596 = v887;
                            goto LABEL_1455;
                          }
                        }

LABEL_1456:
                        ref_count_obj_release(v536);
                        goto LABEL_1376;
                      }

                      if (v804)
                      {
                        goto LABEL_1377;
                      }

                      bzero(v888, 0x214uLL);
                      putRData(0, v888, &v898, &xmmword_100176630 + 8);
                      v537 = qword_100176658;
                      v538 = WORD2(xmmword_100176640);
                      v843 = 0;
                      if (WORD2(xmmword_100176640) <= 0x15uLL)
                      {
                        v623 = mDNSLogCategory_Default;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          v418 = v823;
                          v23 = v805;
                          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_1517;
                          }
                        }

                        else
                        {
                          v623 = mDNSLogCategory_Default_redacted;
                          v418 = v823;
                          v23 = v805;
                          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_1517;
                          }
                        }

                        LODWORD(v899[0]) = 136447234;
                        *(v899 + 4) = "rdata_len >= min_rdata_len_soa";
                        WORD6(v899[0]) = 2082;
                        *(v899 + 14) = "";
                        WORD3(v899[1]) = 2082;
                        LOWORD(v900) = 1024;
                        *(&v900 + 2) = 117;
                        WORD3(v900) = 2048;
                        *(&v899[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                        *(&v900 + 1) = 0;
                        v610 = v623;
                      }

                      else
                      {
                        v539 = &v888[WORD2(xmmword_100176640)];
                        v540 = v888[0];
                        if (v888[0])
                        {
                          v541 = v888;
                          while (!v539 || &v541[v540 + 1] <= v539)
                          {
                            v542 = &v541[v540];
                            v543 = v542[1];
                            v541 = v542 + 1;
                            v540 = v543;
                            if (!v543)
                            {
                              goto LABEL_1471;
                            }
                          }

                          goto LABEL_1479;
                        }

                        v541 = v888;
LABEL_1471:
                        v600 = v541 - v888;
                        v601 = v600 + 1;
                        if (v600 == -1)
                        {
LABEL_1479:
                          v608 = mDNSLogCategory_Default;
                          if (mDNS_SensitiveLoggingEnableCount)
                          {
                            v609 = mDNSLogCategory_Default == mDNSLogCategory_State;
                          }

                          else
                          {
                            v609 = 1;
                          }

                          if (v609)
                          {
                            v418 = v823;
                            v23 = v805;
                            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1517;
                            }
                          }

                          else
                          {
                            v608 = mDNSLogCategory_Default_redacted;
                            v620 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
                            v418 = v823;
                            v23 = v805;
                            if (!v620)
                            {
                              goto LABEL_1517;
                            }
                          }

                          LODWORD(v899[0]) = 136447234;
                          *(v899 + 4) = "primary_name_server_len >= 1";
                          WORD6(v899[0]) = 2082;
                          *(v899 + 14) = "";
                          WORD3(v899[1]) = 2082;
                          LOWORD(v900) = 1024;
                          *(&v900 + 2) = 122;
                          WORD3(v900) = 2048;
                          *(&v899[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                          *(&v900 + 1) = 0;
                          v610 = v608;
                        }

                        else
                        {
                          v602 = v600 + 21;
                          if (v602 >= WORD2(xmmword_100176640))
                          {
                            v631 = mDNSLogCategory_Default;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                            {
                              v418 = v823;
                              v23 = v805;
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1517;
                              }
                            }

                            else
                            {
                              v631 = mDNSLogCategory_Default_redacted;
                              v418 = v823;
                              v23 = v805;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1517;
                              }
                            }

                            LODWORD(v899[0]) = 136447234;
                            *(v899 + 4) = "primary_name_server_len + sizeof(rdata_soa_t) < rdata_len";
                            WORD6(v899[0]) = 2082;
                            *(v899 + 14) = "";
                            WORD3(v899[1]) = 2082;
                            LOWORD(v900) = 1024;
                            *(&v900 + 2) = 123;
                            WORD3(v900) = 2048;
                            *(&v899[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                            *(&v900 + 1) = 0;
                            v610 = v631;
                          }

                          else
                          {
                            v603 = &v888[v601];
                            v604 = *v603;
                            if (*v603)
                            {
                              v605 = v603;
                              while (!v539 || &v605[v604 + 1] <= v539)
                              {
                                v606 = &v605[v604];
                                v607 = v606[1];
                                v605 = v606 + 1;
                                v604 = v607;
                                if (!v607)
                                {
                                  goto LABEL_1487;
                                }
                              }

                              goto LABEL_1496;
                            }

                            v605 = v603;
LABEL_1487:
                            if (v605 - v603 == -1)
                            {
LABEL_1496:
                              v615 = mDNSLogCategory_Default;
                              if (mDNS_SensitiveLoggingEnableCount)
                              {
                                v616 = mDNSLogCategory_Default == mDNSLogCategory_State;
                              }

                              else
                              {
                                v616 = 1;
                              }

                              if (v616)
                              {
                                v418 = v823;
                                v23 = v805;
                                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1517;
                                }
                              }

                              else
                              {
                                v615 = mDNSLogCategory_Default_redacted;
                                v621 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
                                v418 = v823;
                                v23 = v805;
                                if (!v621)
                                {
                                  goto LABEL_1517;
                                }
                              }

                              LODWORD(v899[0]) = 136447234;
                              *(v899 + 4) = "mailbox_name_len >= 1";
                              WORD6(v899[0]) = 2082;
                              *(v899 + 14) = "";
                              WORD3(v899[1]) = 2082;
                              LOWORD(v900) = 1024;
                              *(&v900 + 2) = 127;
                              WORD3(v900) = 2048;
                              *(&v899[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                              *(&v900 + 1) = 0;
                              v610 = v615;
                            }

                            else
                            {
                              if (v602 + v605 - v603 + 1 == WORD2(xmmword_100176640))
                              {
                                v611 = malloc_type_calloc(1uLL, 0x50uLL, 0xB7BBD98FuLL);
                                if (!v611)
                                {
LABEL_1941:
                                  __break(1u);
                                }

                                v612 = &_dnssec_obj_rr_soa_kind;
                                v804 = v611;
                                v611[1] = &_dnssec_obj_rr_soa_kind;
                                do
                                {
                                  v613 = v612[2];
                                  if (v613)
                                  {
                                    v613(v804);
                                  }

                                  v612 = *v612;
                                }

                                while (v612);
                                ++*v804;
                                dnssec_obj_rr_init_fields(v804, v537, 6, 1, v888, v538, 1, 0, &v843);
                                v614 = v843;
                                if (v843)
                                {
                                  v841 = v843;
                                  ref_count_obj_release(v804);
                                  v804 = 0;
                                  v418 = v823;
                                  v23 = v805;
                                  v29 = v837;
                                  goto LABEL_1376;
                                }

                                v418 = v823;
                                v23 = v805;
                                goto LABEL_1518;
                              }

                              v632 = mDNSLogCategory_Default;
                              if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
                              {
                                v632 = mDNSLogCategory_Default_redacted;
                                v418 = v823;
                                v23 = v805;
                                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_1569;
                                }

LABEL_1517:
                                v804 = 0;
                                v614 = -6705;
LABEL_1518:
                                v29 = v837;
                                v841 = v614;
                                goto LABEL_1376;
                              }

                              v418 = v823;
                              v23 = v805;
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                              {
                                goto LABEL_1517;
                              }

LABEL_1569:
                              LODWORD(v899[0]) = 136447234;
                              *(v899 + 4) = "primary_name_server_len + mailbox_name_len + sizeof(rdata_soa_t) == rdata_len";
                              WORD6(v899[0]) = 2082;
                              *(v899 + 14) = "";
                              WORD3(v899[1]) = 2082;
                              LOWORD(v900) = 1024;
                              *(&v900 + 2) = 129;
                              WORD3(v900) = 2048;
                              *(&v899[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
                              *(&v900 + 1) = 0;
                              v610 = v632;
                            }
                          }
                        }
                      }

                      _os_log_impl(&_mh_execute_header, v610, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", v899, 0x30u);
                      goto LABEL_1517;
                    }
                  }

                  else
                  {
                    LOBYTE(v794) = 0;
                  }
                }

                else
                {
                  v804 = 0;
                  LOBYTE(v792) = 0;
                  LOBYTE(v794) = 0;
                  v814 = 3601;
                }

LABEL_1593:
                v633 = v819 == 3601 ? v814 : v819;
                v813 = 1;
                v526 = v836;
                v426 = 37912;
                v475 = v825;
                v525 = v783;
              }

              else
              {
                v633 = v819;
              }

              v634 = v526 ^ 1;
              if (!v455)
              {
                v634 = 1;
              }

              if (v634)
              {
                if ((v526 & (v633 != 3601)) != 0)
                {
                  v636 = v633;
                }

                else
                {
                  v636 = v525;
                }

                if (!v455)
                {
                  goto LABEL_1734;
                }

                v637 = 0;
                v421 = a10;
              }

              else
              {
                v635 = *(v455 + 64);
                if (!v635 || *(v635 + 32))
                {
                  v421 = a10;
                  goto LABEL_1603;
                }

                v784 = v525;
                if (!v475)
                {
                  if (v792 | v794)
                  {
                    LODWORD(v899[0]) = 0;
                    if (v800)
                    {
                      p_dst = 0;
                    }

                    else
                    {
                      p_dst = &__dst;
                    }

                    v645 = dnssec_obj_denial_of_existence_create(v433, v764, v770, p_dst, v816, v804, v887, HIBYTE(v840), v886, v792, v885, v794, v884, v840, v899);
                    v475 = v645;
                    v646 = mDNSLogCategory_DNSSEC;
                    if (mDNS_SensitiveLoggingEnableCount)
                    {
                      v647 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
                    }

                    else
                    {
                      v647 = 1;
                    }

                    v648 = v647;
                    if (v645)
                    {
                      if (v648)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEFAULT))
                        {
                          v649 = v433;
                          while (1)
                          {
                            if (!v649 || (v650 = *v649, v650 > 0x3F))
                            {
LABEL_1644:
                              v651 = v633;
                              v652 = 257;
                              goto LABEL_1674;
                            }

                            if (!*v649)
                            {
                              break;
                            }

                            v649 += v650 + 1;
                            if (v649 - v433 >= 256)
                            {
                              goto LABEL_1644;
                            }
                          }

                          v651 = v633;
                          v652 = (v649 - v433 + 1);
LABEL_1674:
                          v667 = DNSTypeName(v770);
                          v668 = *(v475 + 16);
                          v669 = "<fatal: this should never be returned>";
                          if (v668 <= 6)
                          {
                            v669 = off_100151348[v668];
                          }

                          *v888 = 67110659;
                          *&v888[4] = v763;
                          *&v888[8] = 2160;
                          *&v888[10] = 1752392040;
                          *&v888[18] = 1040;
                          *&v888[20] = v652;
                          *&v888[24] = 2101;
                          *&v888[26] = v433;
                          *&v888[34] = 2160;
                          *&v888[36] = 1752392040;
                          *&v888[44] = 2085;
                          *&v888[46] = v667;
                          *&v888[54] = 2082;
                          *&v888[56] = v669;
                          _os_log_impl(&_mh_execute_header, v646, OS_LOG_TYPE_DEFAULT, "[Q%u] Create the denial of existence record set - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, denial type: %{public}s", v888, 0x40u);
                          v633 = v651;
                        }

                        goto LABEL_1686;
                      }

                      v657 = mDNSLogCategory_DNSSEC_redacted;
                      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_1686;
                      }

                      v658 = v433;
                      while (1)
                      {
                        if (!v658 || (v659 = *v658, v659 > 0x3F))
                        {
LABEL_1662:
                          v660 = v633;
                          v661 = 257;
                          goto LABEL_1678;
                        }

                        if (!*v658)
                        {
                          break;
                        }

                        v658 += v659 + 1;
                        if (v658 - v433 >= 256)
                        {
                          goto LABEL_1662;
                        }
                      }

                      v660 = v633;
                      v661 = (v658 - v433 + 1);
LABEL_1678:
                      v670 = DNSTypeName(v770);
                      v671 = *(v475 + 16);
                      v672 = "<fatal: this should never be returned>";
                      if (v671 <= 6)
                      {
                        v672 = off_100151348[v671];
                      }

                      *v888 = 67110659;
                      *&v888[4] = v763;
                      *&v888[8] = 2160;
                      *&v888[10] = 1752392040;
                      *&v888[18] = 1040;
                      *&v888[20] = v661;
                      *&v888[24] = 2101;
                      *&v888[26] = v433;
                      *&v888[34] = 2160;
                      *&v888[36] = 1752392040;
                      *&v888[44] = 2085;
                      *&v888[46] = v670;
                      *&v888[54] = 2082;
                      *&v888[56] = v672;
                      _os_log_impl(&_mh_execute_header, v657, OS_LOG_TYPE_DEFAULT, "[Q%u] Create the denial of existence record set - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, denial type: %{public}s", v888, 0x40u);
LABEL_1685:
                      v633 = v660;
                      goto LABEL_1686;
                    }

                    if (!v648)
                    {
                      v662 = mDNSLogCategory_DNSSEC_redacted;
                      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_1686;
                      }

                      v660 = v633;
                      if (LODWORD(v899[0]))
                      {
                        v663 = "Unknown DNSSEC error.";
                      }

                      else
                      {
                        v663 = "No error.";
                      }

                      v664 = v433;
                      while (1)
                      {
                        if (!v664 || (v665 = *v664, v665 > 0x3F))
                        {
LABEL_1672:
                          v666 = 257;
                          goto LABEL_1684;
                        }

                        if (!*v664)
                        {
                          break;
                        }

                        v664 += v665 + 1;
                        if (v664 - v433 >= 256)
                        {
                          goto LABEL_1672;
                        }
                      }

                      v666 = (v664 - v433 + 1);
LABEL_1684:
                      v674 = DNSTypeName(v770);
                      *v888 = 67111683;
                      *&v888[4] = v763;
                      *&v888[8] = 2082;
                      *&v888[10] = v663;
                      *&v888[18] = 2160;
                      *&v888[20] = 1752392040;
                      *&v888[28] = 1040;
                      *&v888[30] = v666;
                      *&v888[34] = 2101;
                      *&v888[36] = v433;
                      *&v888[44] = 2160;
                      *&v888[46] = 1752392040;
                      *&v888[54] = 2085;
                      *&v888[56] = v674;
                      *&v888[64] = 1024;
                      *&v888[66] = HIBYTE(v840);
                      *&v888[70] = 1024;
                      *&v888[72] = v792;
                      *&v888[76] = 1024;
                      *&v888[78] = v794;
                      *&v888[82] = 1024;
                      *&v888[84] = v840;
                      _os_log_impl(&_mh_execute_header, v662, OS_LOG_TYPE_FAULT, "[Q%u] Unable to create the denial of existence record set - error: %{public}s, qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, soaRRSIGCount: %u, nsecCount: %u, nsec3Count: %u, rrsigCount: %u.", v888, 0x58u);
                      v418 = v823;
                      goto LABEL_1685;
                    }

                    if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                    {
                      v820 = v633;
                      if (LODWORD(v899[0]))
                      {
                        v653 = "Unknown DNSSEC error.";
                      }

                      else
                      {
                        v653 = "No error.";
                      }

                      v654 = v433;
                      while (1)
                      {
                        if (!v654 || (v655 = *v654, v655 > 0x3F))
                        {
LABEL_1655:
                          v656 = 257;
                          goto LABEL_1682;
                        }

                        if (!*v654)
                        {
                          break;
                        }

                        v654 += v655 + 1;
                        if (v654 - v433 >= 256)
                        {
                          goto LABEL_1655;
                        }
                      }

                      v656 = (v654 - v433 + 1);
LABEL_1682:
                      v673 = DNSTypeName(v770);
                      *v888 = 67111683;
                      *&v888[4] = v763;
                      *&v888[8] = 2082;
                      *&v888[10] = v653;
                      *&v888[18] = 2160;
                      *&v888[20] = 1752392040;
                      *&v888[28] = 1040;
                      *&v888[30] = v656;
                      *&v888[34] = 2101;
                      *&v888[36] = v433;
                      *&v888[44] = 2160;
                      *&v888[46] = 1752392040;
                      *&v888[54] = 2085;
                      *&v888[56] = v673;
                      *&v888[64] = 1024;
                      *&v888[66] = HIBYTE(v840);
                      *&v888[70] = 1024;
                      *&v888[72] = v792;
                      *&v888[76] = 1024;
                      *&v888[78] = v794;
                      *&v888[82] = 1024;
                      *&v888[84] = v840;
                      _os_log_impl(&_mh_execute_header, v646, OS_LOG_TYPE_FAULT, "[Q%u] Unable to create the denial of existence record set - error: %{public}s, qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, soaRRSIGCount: %u, nsecCount: %u, nsec3Count: %u, rrsigCount: %u.", v888, 0x58u);
                      v633 = v820;
                    }

LABEL_1686:
                    v635 = *(v455 + 64);
                    v23 = v805;
                    v29 = v837;
                    if (!v635)
                    {
                      goto LABEL_1689;
                    }
                  }
                }

                if (*(v635 + 32) || *(v635 + 40) == 1)
                {
LABEL_1689:
                  v675 = 0;
                  v676 = v475 != 0;
LABEL_1690:
                  if (v675 || v676)
                  {
LABEL_1711:
                    v687 = mDNSLogCategory_DNSSEC;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
                      {
                        v691 = v433;
                        v822 = v633;
                        while (1)
                        {
                          if (!v691 || (v692 = *v691, v692 > 0x3F))
                          {
LABEL_1726:
                            v690 = 257;
                            goto LABEL_1729;
                          }

                          if (!*v691)
                          {
                            break;
                          }

                          v691 += v692 + 1;
                          if (v691 - v433 >= 256)
                          {
                            goto LABEL_1726;
                          }
                        }

                        v690 = (v691 - v433 + 1);
LABEL_1729:
                        v693 = DNSTypeName(v770);
                        *v888 = 141558787;
                        *&v888[4] = 1752392040;
                        *&v888[12] = 1040;
                        *&v888[14] = v690;
                        *&v888[18] = 2101;
                        *&v888[20] = v433;
                        *&v888[28] = 2082;
                        *&v888[30] = v693;
                        _os_log_impl(&_mh_execute_header, v687, OS_LOG_TYPE_DEBUG, "Denial of existence record changes, purging the old negative record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{public}s", v888, 0x26u);
                        v633 = v822;
                      }
                    }

                    else
                    {
                      v687 = mDNSLogCategory_DNSSEC_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
                      {
                        v688 = v433;
                        v822 = v633;
                        while (1)
                        {
                          if (!v688 || (v689 = *v688, v689 > 0x3F))
                          {
LABEL_1719:
                            v690 = 257;
                            goto LABEL_1729;
                          }

                          if (!*v688)
                          {
                            break;
                          }

                          v688 += v689 + 1;
                          if (v688 - v433 >= 256)
                          {
                            goto LABEL_1719;
                          }
                        }

                        v690 = (v688 - v433 + 1);
                        goto LABEL_1729;
                      }
                    }

                    v825 = v475;
                    mDNS_PurgeCacheResourceRecord(v418, v455);
                    if (v633 == 3601)
                    {
                      v636 = v784;
                    }

                    else
                    {
                      v636 = v633;
                    }

                    v29 = v837;
LABEL_1734:
                    v637 = 0;
                    while (2)
                    {
                      MakeNegativeCacheRecord(v418, v418 + v426, v433, v430, v881, v882, v636, 0, a9, v23[1]);
                      if (v29)
                      {
                        v694 = *(v418 + 37968);
                        if (v694)
                        {
                          mdns_cache_metadata_set_extended_dns_error(v694, *(v29 + 160));
                        }
                      }

                      v695 = CacheGroupForName(v418, v430, v433);
                      if (v836)
                      {
                        if (*(v418 + 64) <= 1u)
                        {
                          v696 = 1;
                        }

                        else
                        {
                          v696 = *(v418 + 64);
                        }

                        v697 = 2;
                      }

                      else
                      {
                        v697 = 0;
                        v696 = 1;
                      }

                      v698 = v430 % 0x1F3;
                      v699 = CreateNewCacheEntryEx(v418, v698, v695, v696, 1, 0, v697);
                      v700 = v699;
                      v701 = v836;
                      if (v637)
                      {
                        v701 = 0;
                      }

                      if (v701 == 1)
                      {
                        if ((v699 + 1) < 2)
                        {
                          v637 = -1;
                          goto LABEL_1749;
                        }

                        *(v699 + 128) = 1;
                        v637 = v699;
LABEL_1752:
                        if (v834)
                        {
                          v702 = *(v699 + 120);
                          if (v702)
                          {
                            ReleaseCacheRecord(v418, v702);
                          }

                          *(v700 + 120) = v834;
                        }

                        if (v836)
                        {
                          v703 = *(v700 + 84);
                          if (*(v798 + 4 * v698) - v703 >= 1)
                          {
                            *(v798 + 4 * v698) = v703;
                          }

                          v29 = v837;
                          v834 = 0;
                          if (*(v418 + 88) - v703 >= 1)
                          {
                            *(v418 + 88) = v703;
                          }

                          goto LABEL_1763;
                        }

                        *(v700 + 84) = 0;
                        CacheRecordDeferredAdd(v418, v700);
                        v834 = 0;
                      }

                      else
                      {
LABEL_1749:
                        if (v699)
                        {
                          goto LABEL_1752;
                        }
                      }

                      v29 = v837;
LABEL_1763:
                      *v790 = 0;
                      *(v823 + 38022) = 0;
                      v704 = *(v823 + 37976);
                      if (v704)
                      {
                        ref_count_obj_release(v704);
                        *(v823 + 37976) = 0;
                      }

                      if (!v492)
                      {
                        v455 = 0;
                        v421 = a10;
                        v475 = v825;
                        goto LABEL_1771;
                      }

                      --v492;
                      if (*v433)
                      {
                        v433 += *v433 + 1;
                      }

                      v430 = DomainNameHashValue(v433);
                      continue;
                    }
                  }
                }

                else
                {
                  v686 = *(v635 + 48);
                  v675 = v686 != 0;
                  v676 = v475 != 0;
                  if (!v686 || !v475)
                  {
                    goto LABEL_1690;
                  }

                  if (ref_count_obj_compare(v686, v475, 1))
                  {
                    goto LABEL_1711;
                  }
                }

                v677 = mDNSLogCategory_DNSSEC;
                v825 = v475;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                {
                  v421 = a10;
                  if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
                  {
                    v683 = v433;
                    v821 = v633;
                    while (1)
                    {
                      if (!v683 || (v684 = *v683, v684 > 0x3F))
                      {
LABEL_1707:
                        v685 = 257;
                        goto LABEL_1835;
                      }

                      if (!*v683)
                      {
                        break;
                      }

                      v683 += v684 + 1;
                      if (v683 - v433 >= 256)
                      {
                        goto LABEL_1707;
                      }
                    }

                    v685 = (v683 - v433 + 1);
LABEL_1835:
                    v723 = DNSTypeName(v770);
                    *v888 = 141558787;
                    *&v888[4] = 1752392040;
                    *&v888[12] = 1040;
                    *&v888[14] = v685;
                    *&v888[18] = 2101;
                    *&v888[20] = v433;
                    *&v888[28] = 2082;
                    *&v888[30] = v723;
                    _os_log_impl(&_mh_execute_header, v677, OS_LOG_TYPE_DEBUG, "Denial of existence record does not change, rescuing the old negative record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{public}s", v888, 0x26u);
                    v633 = v821;
                  }
                }

                else
                {
                  v678 = mDNSLogCategory_DNSSEC_redacted;
                  v421 = a10;
                  if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
                  {
                    v679 = v433;
                    while (1)
                    {
                      if (!v679 || (v680 = *v679, v680 > 0x3F))
                      {
LABEL_1700:
                        v681 = v633;
                        v682 = 257;
                        goto LABEL_1837;
                      }

                      if (!*v679)
                      {
                        break;
                      }

                      v679 += v680 + 1;
                      if (v679 - v433 >= 256)
                      {
                        goto LABEL_1700;
                      }
                    }

                    v681 = v633;
                    v682 = (v679 - v433 + 1);
LABEL_1837:
                    v724 = DNSTypeName(v770);
                    *v888 = 141558787;
                    *&v888[4] = 1752392040;
                    *&v888[12] = 1040;
                    *&v888[14] = v682;
                    *&v888[18] = 2101;
                    *&v888[20] = v433;
                    *&v888[28] = 2082;
                    *&v888[30] = v724;
                    _os_log_impl(&_mh_execute_header, v678, OS_LOG_TYPE_DEBUG, "Denial of existence record does not change, rescuing the old negative record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{public}s", v888, 0x26u);
                    v633 = v681;
                  }
                }

                v525 = v784;
LABEL_1603:
                *(v455 + 128) = 1;
                v636 = v633 == 3601 ? v525 : v633;
                v637 = v455;
              }

              v638 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_1617;
                }
              }

              else
              {
                v638 = mDNSLogCategory_Default_redacted;
                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                {
LABEL_1617:
                  v639 = v879;
                  v640 = bswap32(v880) >> 16;
                  v641 = *(v455 + 16);
                  GetRRDisplayString_rdb((v455 + 8), (*(v455 + 48) + 4), v789);
                  *v888 = 67110403;
                  *&v888[4] = v639;
                  v29 = v837;
                  *&v888[8] = 1024;
                  *&v888[10] = v640;
                  v418 = v823;
                  *&v888[14] = 1024;
                  *&v888[16] = v641;
                  v23 = v805;
                  *&v888[20] = 1024;
                  *&v888[22] = v636;
                  *&v888[26] = 2160;
                  *&v888[28] = 1752392040;
                  *&v888[36] = 2085;
                  *&v888[38] = v823 + 47032;
                  v426 = 37912;
                  _os_log_impl(&_mh_execute_header, v638, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] mDNSCoreReceiveNoUnicastAnswers: Renewing negative TTL from %u to %u %{sensitive, mask.hash}s", v888, 0x2Eu);
                }
              }

              RefreshCacheRecord(v418, v455, v636);
              if (!v781)
              {
                v642 = *(v418 + 64);
                *(v830 + 256) = v642;
                *(v830 + 224) = 0;
                *(v830 + 208) = v642;
                *(v830 + 212) = 3600000;
                *(v830 + 352) = 0;
                *(v830 + 649) = 0;
              }

              v475 = v825;
              if (v834)
              {
                v643 = *(v455 + 120);
                if (v643)
                {
                  ReleaseCacheRecord(v418, v643);
                }

                *(v455 + 120) = v834;
              }

              v834 = 0;
LABEL_1771:
              v705 = v836;
              if (v637 == -1)
              {
                v705 = 0;
              }

              if (v705 == 1)
              {
                v706 = *(v637 + 64);
                if (v706)
                {
                  *(v637 + 128) = 0;
                  if (*(v706 + 32) || (*(v706 + 40) & 1) != 0 || !*(v706 + 48))
                  {
                    if (v475 || !(v792 | v794))
                    {
                      goto LABEL_1848;
                    }

                    LODWORD(v899[0]) = 0;
                    if (v800)
                    {
                      v707 = 0;
                    }

                    else
                    {
                      v707 = &__dst;
                    }

                    v708 = dnssec_obj_denial_of_existence_create(v433, v764, v770, v707, v816, v804, v887, HIBYTE(v840), v886, v792, v885, v794, v884, v840, v899);
                    v709 = mDNSLogCategory_DNSSEC;
                    if (mDNS_SensitiveLoggingEnableCount)
                    {
                      v710 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
                    }

                    else
                    {
                      v710 = 1;
                    }

                    v711 = v710;
                    if (v708)
                    {
                      v475 = v708;
                      if (v711)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEFAULT))
                        {
                          if (v433)
                          {
                            v712 = v433;
                            while (1)
                            {
                              if (!v712 || (v713 = *v712, v713 > 0x3F))
                              {
LABEL_1798:
                                v714 = 257;
                                goto LABEL_1840;
                              }

                              if (!*v712)
                              {
                                break;
                              }

                              v712 += v713 + 1;
                              if (v712 - v433 >= 256)
                              {
                                goto LABEL_1798;
                              }
                            }

                            v714 = (v712 - v433 + 1);
                          }

                          else
                          {
                            v714 = 0;
                          }

LABEL_1840:
                          v725 = DNSTypeName(v770);
                          v726 = *(v475 + 16);
                          v727 = "<fatal: this should never be returned>";
                          if (v726 <= 6)
                          {
                            v727 = off_100151348[v726];
                          }

                          goto LABEL_1846;
                        }
                      }

                      else
                      {
                        v709 = mDNSLogCategory_DNSSEC_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          if (v433)
                          {
                            v719 = v433;
                            while (1)
                            {
                              if (!v719 || (v720 = *v719, v720 > 0x3F))
                              {
LABEL_1818:
                                v714 = 257;
                                goto LABEL_1844;
                              }

                              if (!*v719)
                              {
                                break;
                              }

                              v719 += v720 + 1;
                              if (v719 - v433 >= 256)
                              {
                                goto LABEL_1818;
                              }
                            }

                            v714 = (v719 - v433 + 1);
                          }

                          else
                          {
                            v714 = 0;
                          }

LABEL_1844:
                          v725 = DNSTypeName(v770);
                          v728 = *(v475 + 16);
                          v727 = "<fatal: this should never be returned>";
                          if (v728 <= 6)
                          {
                            v727 = off_100151348[v728];
                          }

LABEL_1846:
                          *v888 = 67110659;
                          *&v888[4] = v763;
                          *&v888[8] = 2160;
                          *&v888[10] = 1752392040;
                          *&v888[18] = 1040;
                          *&v888[20] = v714;
                          *&v888[24] = 2101;
                          *&v888[26] = v433;
                          *&v888[34] = 2160;
                          *&v888[36] = 1752392040;
                          *&v888[44] = 2085;
                          *&v888[46] = v725;
                          *&v888[54] = 2082;
                          *&v888[56] = v727;
                          _os_log_impl(&_mh_execute_header, v709, OS_LOG_TYPE_DEFAULT, "[Q%u] Create the denial of existence record set - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, denial type: %{public}s", v888, 0x40u);
                          v29 = v837;
                        }
                      }

                      v706 = *(v637 + 64);
                      if (v706)
                      {
LABEL_1848:
                        if (*(v706 + 32))
                        {
                          v734 = mDNSLogCategory_DNSSEC;
                          v428 = v836;
                          v481 = v808;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1860;
                            }
                          }

                          else
                          {
                            v734 = mDNSLogCategory_DNSSEC_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1860;
                            }
                          }

                          *v888 = 136447234;
                          *&v888[4] = "me->aware_type == dnssec_aware_rr_to_validate";
                          *&v888[12] = 2082;
                          *&v888[14] = "";
                          *&v888[22] = 2082;
                          *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_resource_record_member.c";
                          *&v888[32] = 1024;
                          *&v888[34] = 159;
                          *&v888[38] = 2048;
                          *&v888[40] = 0;
                          v733 = v734;
                        }

                        else
                        {
                          v428 = v836;
                          v481 = v808;
                          if (*(v706 + 40) != 1)
                          {
                            if (v475)
                            {
                              ++*v475;
                            }

                            v729 = *(v706 + 48);
                            if (v729)
                            {
                              ref_count_obj_release(v729);
                            }

                            *(v706 + 48) = v475;
                            goto LABEL_1860;
                          }

                          v735 = mDNSLogCategory_DNSSEC;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1860;
                            }
                          }

                          else
                          {
                            v735 = mDNSLogCategory_DNSSEC_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_1860;
                            }
                          }

                          *v888 = 136447234;
                          *&v888[4] = "!me->u.rr_to_validate.positive";
                          *&v888[12] = 2082;
                          *&v888[14] = "";
                          *&v888[22] = 2082;
                          *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_resource_record_member.c";
                          *&v888[32] = 1024;
                          *&v888[34] = 160;
                          *&v888[38] = 2048;
                          *&v888[40] = 0;
                          v733 = v735;
                        }
                      }

                      else
                      {
                        v732 = mDNSLogCategory_DNSSEC;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                        {
                          v428 = v836;
                          v481 = v808;
                          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_1860;
                          }
                        }

                        else
                        {
                          v732 = mDNSLogCategory_DNSSEC_redacted;
                          v428 = v836;
                          v481 = v808;
                          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_1860;
                          }
                        }

                        *v888 = 136447234;
                        *&v888[4] = "me->dnssec != NULL";
                        *&v888[12] = 2082;
                        *&v888[14] = "";
                        *&v888[22] = 2082;
                        *&v888[24] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
                        *&v888[32] = 1024;
                        *&v888[34] = 333;
                        *&v888[38] = 2048;
                        *&v888[40] = 0;
                        v733 = v732;
                      }

                      _os_log_impl(&_mh_execute_header, v733, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", v888, 0x30u);
                      goto LABEL_1860;
                    }

                    if (v711)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                      {
                        if (LODWORD(v899[0]))
                        {
                          v715 = "Unknown DNSSEC error.";
                        }

                        else
                        {
                          v715 = "No error.";
                        }

                        if (v433)
                        {
                          v716 = v433;
                          while (1)
                          {
                            if (!v716 || (v717 = *v716, v717 > 0x3F))
                            {
LABEL_1810:
                              v718 = 257;
                              goto LABEL_1857;
                            }

                            if (!*v716)
                            {
                              break;
                            }

                            v716 += v717 + 1;
                            if (v716 - v433 >= 256)
                            {
                              goto LABEL_1810;
                            }
                          }

                          v718 = (v716 - v433 + 1);
                        }

                        else
                        {
                          v718 = 0;
                        }

                        goto LABEL_1857;
                      }
                    }

                    else
                    {
                      v709 = mDNSLogCategory_DNSSEC_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                      {
                        if (LODWORD(v899[0]))
                        {
                          v715 = "Unknown DNSSEC error.";
                        }

                        else
                        {
                          v715 = "No error.";
                        }

                        if (v433)
                        {
                          v721 = v433;
                          while (1)
                          {
                            if (!v721 || (v722 = *v721, v722 > 0x3F))
                            {
LABEL_1829:
                              v718 = 257;
                              goto LABEL_1857;
                            }

                            if (!*v721)
                            {
                              break;
                            }

                            v721 += v722 + 1;
                            if (v721 - v433 >= 256)
                            {
                              goto LABEL_1829;
                            }
                          }

                          v718 = (v721 - v433 + 1);
                        }

                        else
                        {
                          v718 = 0;
                        }

LABEL_1857:
                        v730 = DNSTypeName(v770);
                        *v888 = 67111683;
                        *&v888[4] = v763;
                        *&v888[8] = 2082;
                        *&v888[10] = v715;
                        *&v888[18] = 2160;
                        *&v888[20] = 1752392040;
                        *&v888[28] = 1040;
                        *&v888[30] = v718;
                        *&v888[34] = 2101;
                        *&v888[36] = v433;
                        *&v888[44] = 2160;
                        *&v888[46] = 1752392040;
                        *&v888[54] = 2085;
                        *&v888[56] = v730;
                        *&v888[64] = 1024;
                        *&v888[66] = HIBYTE(v840);
                        *&v888[70] = 1024;
                        *&v888[72] = v792;
                        *&v888[76] = 1024;
                        *&v888[78] = v794;
                        *&v888[82] = 1024;
                        *&v888[84] = v840;
                        _os_log_impl(&_mh_execute_header, v709, OS_LOG_TYPE_FAULT, "[Q%u] Unable to create the denial of existence record set - error: %{public}s, qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s, soaRRSIGCount: %u, nsecCount: %u, nsec3Count: %u, rrsigCount: %u.", v888, 0x58u);
                        v29 = v837;
                      }
                    }

                    v475 = 0;
                  }
                }
              }
            }

            v428 = v836;
            v481 = v808;
            goto LABEL_1860;
          }

          if (!v474)
          {
            v493 = mDNSLogCategory_Default;
            v481 = v808;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
                v494 = v879;
                v495 = bswap32(v880) >> 16;
                v499 = v883;
                while (1)
                {
                  if (!v499 || (v500 = *v499, v500 > 0x3F))
                  {
LABEL_1313:
                    v498 = 257;
                    goto LABEL_1327;
                  }

                  if (!*v499)
                  {
                    break;
                  }

                  v499 += v500 + 1;
                  if (v499 - v883 >= 256)
                  {
                    goto LABEL_1313;
                  }
                }

                v498 = (v499 - v883 + 1);
LABEL_1327:
                v508 = DNSTypeName(v881);
                *v888 = 67110403;
                *&v888[4] = v494;
                *&v888[8] = 1024;
                *&v888[10] = v495;
                *&v888[14] = 2160;
                *&v888[16] = 1752392040;
                *&v888[24] = 1040;
                *&v888[26] = v498;
                *&v888[30] = 2101;
                *&v888[32] = v883;
                *&v888[40] = 2082;
                *&v888[42] = v508;
                _os_log_impl(&_mh_execute_header, v493, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] mDNSCoreReceiveNoUnicastAnswers: Skipping check and not creating a negative cache entry for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", v888, 0x32u);
                v418 = v823;
                v29 = v837;
              }
            }

            else
            {
              v493 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
                v494 = v879;
                v495 = bswap32(v880) >> 16;
                v496 = v883;
                while (1)
                {
                  if (!v496 || (v497 = *v496, v497 > 0x3F))
                  {
LABEL_1305:
                    v498 = 257;
                    goto LABEL_1327;
                  }

                  if (!*v496)
                  {
                    break;
                  }

                  v496 += v497 + 1;
                  if (v496 - v883 >= 256)
                  {
                    goto LABEL_1305;
                  }
                }

                v498 = (v496 - v883 + 1);
                goto LABEL_1327;
              }
            }

LABEL_1328:
            v428 = v836;
            goto LABEL_1860;
          }

          v481 = v808;
          if (v781)
          {
            goto LABEL_1328;
          }

          v482 = mDNSLogCategory_Default;
          v428 = v836;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              v483 = v879;
              v484 = bswap32(v880) >> 16;
              v501 = v883;
              while (1)
              {
                if (!v501 || (v502 = *v501, v502 > 0x3F))
                {
LABEL_1320:
                  v487 = 257;
                  goto LABEL_1331;
                }

                if (!*v501)
                {
                  break;
                }

                v501 += v502 + 1;
                if (v501 - v883 >= 256)
                {
                  goto LABEL_1320;
                }
              }

              v487 = (v501 - v883 + 1);
LABEL_1331:
              v509 = DNSTypeName(v881);
              *v888 = 67110403;
              *&v888[4] = v483;
              *&v888[8] = 1024;
              *&v888[10] = v484;
              *&v888[14] = 2160;
              *&v888[16] = 1752392040;
              *&v888[24] = 1040;
              *&v888[26] = v487;
              *&v888[30] = 2101;
              *&v888[32] = v883;
              *&v888[40] = 2082;
              *&v888[42] = v509;
              _os_log_impl(&_mh_execute_header, v482, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] mDNSCoreReceiveNoUnicastAnswers: Generate negative response for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", v888, 0x32u);
              v418 = v823;
              v29 = v837;
              v428 = v836;
            }
          }

          else
          {
            v482 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v483 = v879;
              v484 = bswap32(v880) >> 16;
              v485 = v883;
              while (1)
              {
                if (!v485 || (v486 = *v485, v486 > 0x3F))
                {
LABEL_1278:
                  v487 = 257;
                  goto LABEL_1331;
                }

                if (!*v485)
                {
                  break;
                }

                v485 += v486 + 1;
                if (v485 - v883 >= 256)
                {
                  goto LABEL_1278;
                }
              }

              v487 = (v485 - v883 + 1);
              goto LABEL_1331;
            }
          }

          *(v418 + 208) = v830;
          v510 = v23[1];
          if (*(v830 + 653))
          {
            *(v830 + 346) = v510;
          }

          GenerateNegativeResponseEx(v418, 0, 3, v510);
          *(v418 + 208) = 0;
LABEL_1860:
          if (v428 && (v731 = (v481 + 1), v808 = v731, v731 < v786))
          {
            v433 = &v862[256 * v731];
            v430 = DomainNameHashValue(v433);
          }

          else
          {
            v430 = 0;
            v433 = 0;
          }

          if (!v796 && v475)
          {
            ref_count_obj_release(v475);
            v825 = 0;
            if (!v433)
            {
              break;
            }

            goto LABEL_1182;
          }

          v825 = v475;
        }

        while (v433);
        v424 = v761;
        Question = v779;
LABEL_1890:
        v736 = ++v424 >= v23[2] || Question == 0;
        v425 = v826;
        if (v736 || Question >= v826)
        {
          if (v834)
          {
            v740 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
                *v888 = 0;
LABEL_1909:
                _os_log_impl(&_mh_execute_header, v740, OS_LOG_TYPE_DEFAULT, "mDNSCoreReceiveNoUnicastAnswers: SOARecord not used", v888, 2u);
              }
            }

            else
            {
              v740 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
                *v888 = 0;
                goto LABEL_1909;
              }
            }

            ReleaseCacheRecord(v418, v834);
          }

          if (!v796)
          {
            if (v804)
            {
              ref_count_obj_release(v804);
            }

            v739 = v792;
            v738 = v794;
LABEL_1915:
            v741 = HIBYTE(v840);
            if (HIBYTE(v840))
            {
              v742 = v887;
              do
              {
                if (*v742)
                {
                  ref_count_obj_release(*v742);
                  *v742 = 0;
                }

                ++v742;
                --v741;
              }

              while (v741);
            }

            if (v739)
            {
              v743 = v739;
              v744 = v886;
              do
              {
                if (*v744)
                {
                  ref_count_obj_release(*v744);
                  *v744 = 0;
                }

                ++v744;
                --v743;
              }

              while (v743);
            }

            if (v738)
            {
              v745 = v738;
              v746 = v885;
              do
              {
                if (*v746)
                {
                  ref_count_obj_release(*v746);
                  *v746 = 0;
                }

                ++v746;
                --v745;
              }

              while (v745);
            }

            v747 = v840;
            if (v840)
            {
              v748 = v884;
              do
              {
                if (*v748)
                {
                  ref_count_obj_release(*v748);
                  *v748 = 0;
                }

                ++v748;
                --v747;
              }

              while (v747);
            }
          }

          goto LABEL_1095;
        }
      }
    }
  }

  if (!v419)
  {
    v738 = 0;
    v739 = 0;
    goto LABEL_1915;
  }

LABEL_1095:
  if (object)
  {
    os_release(object);
  }
}