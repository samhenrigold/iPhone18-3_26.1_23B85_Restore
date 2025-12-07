_BYTE *LocateOptRR(unint64_t a1, unint64_t a2, unsigned int a3)
{
  Additionals = LocateAdditionals(a1, a2);
  if (Additionals)
  {
    v7 = *(a1 + 10) + 1;
    while (--v7)
    {
      if (&Additionals[a3 + 11] > a2 || *Additionals || Additionals[1] || Additionals[2] != 41 || a3 > bswap32(*(Additionals + 9)) >> 16)
      {
        Additionals = skipResourceRecord(a1, Additionals, a2);
        if (Additionals)
        {
          continue;
        }
      }

      return Additionals;
    }

    return 0;
  }

  return Additionals;
}

_BYTE *LocateAdditionals(unint64_t a1, unint64_t a2)
{
  Authorities = LocateAuthorities(a1, a2);
  v5 = *(a1 + 8);
  if (*(a1 + 8))
  {
    do
    {
      Authorities = skipResourceRecord(a1, Authorities, a2);
      --v5;
    }

    while (v5);
  }

  return Authorities;
}

_BYTE *LocateAuthorities(unint64_t a1, unint64_t a2)
{
  Answers = LocateAnswers(a1, a2);
  v5 = Answers;
  v6 = *(a1 + 6);
  if (*(a1 + 6))
  {
    v7 = Answers == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 1;
    do
    {
      v9 = skipResourceRecord(a1, v5, a2);
      v5 = v9;
      if (v8 >= v6)
      {
        break;
      }

      ++v8;
    }

    while (v9);
  }

  return v5;
}

_BYTE *LocateAnswers(unint64_t a1, unint64_t a2)
{
  v3 = (a1 + 12);
  v4 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    return (a1 + 12);
  }

  v6 = 1;
  do
  {
    v7 = skipDomainName(a1, v3, a2);
    v3 = v7 + 4;
    if ((v7 + 4) > a2 || v7 == 0)
    {
      result = 0;
    }

    else
    {
      result = v7 + 4;
    }

    if (v6 >= v4)
    {
      break;
    }

    ++v6;
  }

  while (result);
  return result;
}

_BYTE *skipResourceRecord(unint64_t a1, _BYTE *a2, unint64_t a3)
{
  result = skipDomainName(a1, a2, a3);
  if (result)
  {
    if ((result + 10) <= a3)
    {
      v5 = __rev16(*(result + 4));
      if (&result[v5 + 10] <= a3)
      {
        result += v5 + 10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *getQuestion(unint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, char *a5)
{
  bzero(a5, 0x2B8uLL);
  *(a5 + 17) = a4;
  if (!a4)
  {
    *(a5 + 170) = -1;
  }

  DomainName = getDomainName(a1, a2, a3, a5 + 376);
  if (!DomainName)
  {
    return 0;
  }

  v11 = DomainName;
  v12 = DomainName + 4;
  if ((DomainName + 4) > a3)
  {
    return 0;
  }

  *(a5 + 50) = DomainNameHashValue((a5 + 376));
  *(a5 + 171) = bswap32(*v11) >> 16;
  *(a5 + 172) = bswap32(*(v11 + 1)) >> 16;
  return v12;
}

unsigned __int8 *getDomainName(unint64_t a1, unsigned __int8 *a2, unint64_t a3, _BYTE *a4)
{
  v4 = 0;
  if (a2 >= a1 && a2 < a3)
  {
    *a4 = 0;
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2)
    {
      v6 = 0;
      v7 = a4 + 256;
      while (1)
      {
        if (v5 >> 6)
        {
          if (v5 >> 6 != 3 || v4 >= a3)
          {
            return 0;
          }

          v4 = (a1 + (*v4 | ((v5 & 0x3F) << 8)));
          if (v4 < a1 || v4 >= a3)
          {
            return 0;
          }

          if (!v6)
          {
            v6 = a2 + 2;
          }

          v5 = *v4;
          if (v5 >= 0x40)
          {
            return 0;
          }
        }

        else
        {
          if (&v4[v5] >= a3 || &a4[v5 + 1] >= v7)
          {
            return 0;
          }

          *a4++ = v5;
          do
          {
            v9 = *v4++;
            *a4++ = v9;
            --v5;
          }

          while (v5);
          *a4 = 0;
          v5 = *v4;
        }

        a2 = v4++;
        if (!v5)
        {
          goto LABEL_25;
        }
      }
    }

    v6 = 0;
LABEL_25:
    if (v6)
    {
      return v6;
    }
  }

  return v4;
}

char *GetLargeResourceRecord(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a5)
  {
    v13 = 4500;
  }

  else
  {
    v13 = 3600;
  }

  if (a1 + 37912 == a7)
  {
    if (*(a1 + 37920))
    {
      GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), (a1 + 47032));
      LogFatalError("GetLargeResourceRecord: m->rec appears to be already in use for %s", (a1 + 47032));
    }

    *a7 = 0;
    v14 = (a7 + 8348);
    v15 = (a7 + 8);
    *(a7 + 40) = a7 + 8348;
    v16 = (a7 + 40);
    *(a7 + 72) = 0;
  }

  else
  {
    *a7 = 0;
    v14 = (a7 + 8348);
    v15 = (a7 + 8);
    *(a7 + 40) = a7 + 8348;
    v16 = (a7 + 40);
    *(a7 + 72) = 0;
    if (!a1)
    {
      v17 = 0;
      goto LABEL_11;
    }
  }

  v17 = *(a1 + 64);
LABEL_11:
  *(a7 + 80) = v17;
  *(a7 + 84) = 0;
  *(a7 + 88) = v17;
  *(a7 + 112) = 0;
  *(a7 + 100) = 0;
  *(a7 + 92) = 0;
  *(a7 + 108) = 0;
  *(a7 + 32) = a5;
  v18 = *(a7 + 56);
  if (v18)
  {
    os_release(v18);
    *(a7 + 56) = 0;
  }

  DomainName = getDomainName(a2, a3, a4, v14);
  if (DomainName)
  {
    v20 = DomainName;
    *(a7 + 24) = DomainNameHashValue(*(a7 + 40));
    v21 = (v20 + 5);
    if ((v20 + 5) <= a4)
    {
      v22 = bswap32(*v20);
      v23 = HIWORD(v22);
      *(a7 + 12) = HIWORD(v22);
      v24 = *(v20 + 3) | ((v20[1] & 0x7F) << 8);
      *(a7 + 14) = *(v20 + 3) | ((v20[1] & 0x7F) << 8);
      v25 = bswap32(*(v20 + 1));
      v26 = v25 >= v13 ? v13 : v25;
      v27 = v25 == -1 ? -1 : v26;
      *(a7 + 16) = v27;
      v28 = *(v20 + 2) <= -1 || a5 == 0;
      v29 = __rev16(v20[4]);
      v30 = v28 ? a6 | 0x10 : a6;
      v31 = &v21[v29];
      if (&v21[v29] <= a4)
      {
        *(a7 + 152) = 0x2000;
        *(a7 + 48) = a7 + 152;
        if (v29 > 0x2000)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            v33 = mDNSLogCategory_Default;
            v34 = DNSTypeName(v23);
            LogMsgWithLevel(v33, OS_LOG_TYPE_DEFAULT, "GetLargeResourceRecord: %s rdata size (%d) exceeds storage (%d)", v34, v29, **(a7 + 48));
          }

          goto LABEL_33;
        }

        if (!v29 && v24 == 255)
        {
          *(a7 + 20) = 0;
LABEL_38:
          SetNewRData(v15, 0, 0);
          *v15 = v30;
          return v31;
        }

        if (SetRData(a2, v21, &v21[v29], v15, v29))
        {
          goto LABEL_38;
        }

        v35 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            v36 = *v16;
            if (*v16)
            {
              v40 = *v16;
              while (1)
              {
                if (!v40 || (v41 = *v40, v41 > 0x3F))
                {
LABEL_56:
                  v39 = 257;
                  goto LABEL_61;
                }

                if (!*v40)
                {
                  break;
                }

                v40 += v41 + 1;
                if (v40 - v36 >= 256)
                {
                  goto LABEL_56;
                }
              }

              v39 = (v40 - v36 + 1);
            }

            else
            {
              v39 = 0;
            }

            goto LABEL_61;
          }
        }

        else
        {
          v35 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            v36 = *v16;
            if (*v16)
            {
              v37 = *v16;
              while (1)
              {
                if (!v37 || (v38 = *v37, v38 > 0x3F))
                {
LABEL_48:
                  v39 = 257;
                  goto LABEL_61;
                }

                if (!*v37)
                {
                  break;
                }

                v37 += v38 + 1;
                if (v37 - v36 >= 256)
                {
                  goto LABEL_48;
                }
              }

              v39 = (v37 - v36 + 1);
            }

            else
            {
              v39 = 0;
            }

LABEL_61:
            v42 = DNSTypeName(*(a7 + 12));
            *buf = 141558787;
            v45 = 1752392040;
            v46 = 1040;
            v47 = v39;
            v48 = 2101;
            v49 = v36;
            v50 = 2082;
            v51 = v42;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "GetLargeResourceRecord: SetRData failed for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x26u);
          }
        }

LABEL_33:
        *(a7 + 8) = -16;
        *(a7 + 20) = 0;
        *(a7 + 28) = 0;
        return v31;
      }
    }
  }

  return 0;
}

BOOL PacketRRConflict(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 8) & 0x32) == 0 || *(a2 + 88))
  {
    return 0;
  }

  for (i = *(a1 + 12616); i; i = *i)
  {
    if (*(i + 6) == *(a3 + 24))
    {
      if (resource_records_have_same_dnssec_rr_category(i[8], *(a3 + 64)))
      {
        if (*(i + 6) == *(a3 + 12) && *(i + 7) == *(a3 + 14) && *(i + 10) == *(a3 + 20) && *(i + 7) == *(a3 + 28))
        {
          if (SameRDataBody((i + 1), (*(a3 + 48) + 4), SameDomainName))
          {
            if (SameDomainNameBytes(i[5], *(a3 + 40)))
            {
              v7 = i;
              do
              {
                v8 = v7;
                v7 = v7[11];
              }

              while (v7);
              if (v8 == a2)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  for (j = *(a1 + 12624); j; j = *j)
  {
    if (*(j + 6) == *(a3 + 24))
    {
      if (resource_records_have_same_dnssec_rr_category(j[8], *(a3 + 64)))
      {
        if (*(j + 6) == *(a3 + 12) && *(j + 7) == *(a3 + 14) && *(j + 10) == *(a3 + 20) && *(j + 7) == *(a3 + 28))
        {
          if (SameRDataBody((j + 1), (*(a3 + 48) + 4), SameDomainName))
          {
            if (SameDomainNameBytes(j[5], *(a3 + 40)))
            {
              v10 = j;
              do
              {
                v11 = v10;
                v10 = v10[11];
              }

              while (v10);
              if (v11 == a2)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  v12 = *(a2 + 96) ? *(a2 + 96) : a2;
  v13 = *(a1 + 12616);
  if (v13)
  {
    while (*(v13 + 6) != *(a3 + 24) || !resource_records_have_same_dnssec_rr_category(v13[8], *(a3 + 64)) || *(v13 + 6) != *(a3 + 12) || *(v13 + 7) != *(a3 + 14) || *(v13 + 10) != *(a3 + 20) || *(v13 + 7) != *(a3 + 28) || !SameRDataBody((v13 + 1), (*(a3 + 48) + 4), SameDomainName) || !SameDomainNameBytes(v13[5], *(a3 + 40)))
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_42;
      }
    }

    v14 = v13[12];
    if (!v14)
    {
      v14 = v13;
    }
  }

  else
  {
LABEL_42:
    v14 = 0;
  }

  if (v14 == v12 || v14 && *(a2 + 126))
  {
    return 0;
  }

  if (!SameDomainNameBytes(*(a3 + 40), (a1 + 10408)))
  {
    return 1;
  }

  v16 = time(0);
  v17 = *mDNSStorage[0];
  if (!*mDNSStorage[0])
  {
    return 1;
  }

  v18 = v16;
  while (*(v17 + 3768) || !*(v17 + 212) || (v18 - *(v17 + 3704)) > 3 || *(a3 + 24) != *(v17 + 48) || !resource_records_have_same_dnssec_rr_category(*(a3 + 64), *(v17 + 88)) || *(a3 + 12) != *(v17 + 36) || *(a3 + 14) != *(v17 + 38) || *(a3 + 20) != *(v17 + 44) || *(a3 + 28) != *(v17 + 52) || !SameRDataBody(a3 + 8, (*(v17 + 72) + 4), SameDomainName) || !SameDomainNameBytes(*(a3 + 40), *(v17 + 64)))
  {
    v17 = *(v17 + 3680);
    result = 1;
    if (!v17)
    {
      return result;
    }
  }

  v19 = mDNSLogCategory_State;
  result = os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v20 = *(a3 + 32);
    v21 = (a1 + 47032);
    GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), v21);
    v22[0] = 67109635;
    v22[1] = v20;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2085;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Ignoring conflict on interface %d with recently deregistered hostname record: %{sensitive, mask.hash}s", v22, 0x1Cu);
    return 0;
  }

  return result;
}

uint64_t AddAdditionalsToResponseList(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = result;
    v8 = result + 11440;
    v9 = (result + 11696);
    while (1)
    {
      v10 = *(v6 + 72);
      if (v10 && ResourceRecordIsValidInterfaceAnswer(v10, a4))
      {
        v11 = *(v6 + 72);
        if (!*(v11 + 256) && *a3 != (v11 + 256))
        {
          **a3 = v11;
          v12 = *(v6 + 272);
          if (!v12)
          {
            v12 = v6;
          }

          *(v11 + 272) = v12;
          *a3 = (v11 + 256);
          v11 = *(v6 + 72);
        }

        AddRRSetAdditionalsToResponseList(v7, a3, v6, v11, a4);
      }

      result = *(v6 + 80);
      if (result)
      {
        result = ResourceRecordIsValidInterfaceAnswer(result, a4);
        if (result)
        {
          v13 = *(v6 + 80);
          if (!*(v13 + 256) && *a3 != (v13 + 256))
          {
            **a3 = v13;
            v14 = *(v6 + 272);
            if (!v14)
            {
              v14 = v6;
            }

            *(v13 + 272) = v14;
            *a3 = (v13 + 256);
            v13 = *(v6 + 80);
          }

          result = AddRRSetAdditionalsToResponseList(v7, a3, v6, v13, a4);
        }
      }

      v15 = *(v6 + 12);
      if (v15 > 0x1B)
      {
        break;
      }

      if (v15 == 1)
      {
        goto LABEL_47;
      }

      if (v15 == 12)
      {
        result = ResourceRecordIsValidInterfaceAnswer(v8, a4);
        if (result)
        {
          result = SameDomainLabelPointer(*(v6 + 48) + 4, v7[1435]);
          if (result)
          {
            if (!*v9 && *a3 != v9)
            {
              **a3 = v8;
              v16 = *(v6 + 272);
              if (!v16)
              {
                v16 = v6;
              }

              v7[1464] = v16;
              *a3 = v9;
            }
          }
        }
      }

LABEL_62:
      v6 = *(v6 + 256);
      if (!v6)
      {
        return result;
      }
    }

    if (v15 != 28)
    {
      if (v15 == 33)
      {
        for (i = v7[1577]; i; i = *i)
        {
          v18 = *(i + 12);
          if (v18 == 28 || v18 == 1)
          {
            result = ResourceRecordIsValidInterfaceAnswer(i, a4);
            if (result)
            {
              if (*(v6 + 28) == *(i + 24))
              {
                result = SameDomainNameBytes((*(v6 + 48) + 10), *(i + 40));
                if (result)
                {
                  if (!*(i + 256) && *a3 != (i + 256))
                  {
                    **a3 = i;
                    v20 = *(v6 + 272);
                    if (!v20)
                    {
                      v20 = v6;
                    }

                    *(i + 272) = v20;
                    *a3 = (i + 256);
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_62;
    }

LABEL_47:
    for (j = v7[1577]; j; j = *j)
    {
      v22 = *(j + 12);
      if (v22 == 28 || v22 == 1)
      {
        result = ResourceRecordIsValidInterfaceAnswer(j, a4);
        if (result)
        {
          if (*(v6 + 24) == *(j + 24))
          {
            result = SameDomainNameBytes(*(v6 + 40), *(j + 40));
            if (result)
            {
              if (!*(j + 256) && *a3 != (j + 256))
              {
                **a3 = j;
                v24 = *(v6 + 272);
                if (!v24)
                {
                  v24 = v6;
                }

                *(j + 272) = v24;
                *a3 = (j + 256);
              }
            }
          }
        }
      }
    }

    goto LABEL_62;
  }

  return result;
}

void mDNS_HostNameCallback(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != -65792)
  {
    if (a3 == -65548)
    {
      v5 = *(a1 + 10360);
      v8[0] = *(a1 + 10344);
      v8[1] = v5;
      v6 = *(a1 + 10392);
      v8[2] = *(a1 + 10376);
      v8[3] = v6;
      v7 = *(a1 + 32);
      if (v7)
      {
        v7(a1, 4294901748);
      }

      if (SameDomainLabelPointer(a1 + 10344, v8))
      {
        IncrementLabelSuffix((a1 + 10344), 0);
      }

      mDNS_SetFQDN(a1);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Local Hostname %#s.local already in use; will try %#s.local instead");
    }

    else if (a3)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_HostNameCallback: Unknown error %d for registration of record %s");
    }

    else
    {
      v4 = *(a1 + 32);
      if (v4)
      {

        v4();
      }
    }
  }
}

void regservice_callback(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v75 = 0;
  if (!a2)
  {
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
        return;
      }

      *buf = 67109120;
      v77 = a3;
      v12 = "regservice_callback: srs is NULL %d";
    }

    else
    {
      v10 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v77 = a3;
      v12 = "regservice_callback: srs is NULL %d";
    }

LABEL_90:
    v37 = v10;
    v38 = 8;
LABEL_91:
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v12, buf, v38);
    return;
  }

  v5 = *(a2 + 8);
  if (!v5)
  {
    v10 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v13 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v77 = a3;
      v12 = "regservice_callback: srs->ServiceContext is NULL %d";
    }

    else
    {
      v10 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v77 = a3;
      v12 = "regservice_callback: srs->ServiceContext is NULL %d";
    }

    goto LABEL_90;
  }

  v7 = *(v5 + 8);
  if (v7)
  {
    v8 = "CALLBACK";
    if (*(*(v7 + 128) + 1355))
    {
      v9 = *(v5 + 26) != 0;
      if (!*(v5 + 26))
      {
        v8 = "suppressed error";
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
    v8 = "CALLBACK";
  }

  if (mDNS_LoggingEnabled == 1)
  {
    memset(v90, 0, sizeof(v90));
    v16 = *(v5 + 8);
    if (v16)
    {
      v17 = *(v16 + 200);
      if (a3)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
      if (a3)
      {
LABEL_30:
        if (a3 == -65548)
        {
          v18 = "NAME CONFLICT";
        }

        else
        {
          if (a3 != -65792)
          {
            v74 = v90;
            mDNS_snprintf(v90, 32, "%s %d", v8, a3);
            goto LABEL_38;
          }

          v18 = "DEREGISTERED";
        }

LABEL_36:
        v74 = v18;
LABEL_38:
        v19 = *(a2 + 2448);
        v20 = mDNS_DomainNameFNV1aHash(v19);
        v21 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            if (v19)
            {
              v25 = v19;
              while (1)
              {
                if (!v25 || (v26 = *v25, v26 > 0x3F))
                {
LABEL_55:
                  v24 = 257;
                  goto LABEL_60;
                }

                if (!*v25)
                {
                  break;
                }

                v25 += v26 + 1;
                if (v25 - v19 >= 256)
                {
                  goto LABEL_55;
                }
              }

              v24 = (v25 - v19 + 1);
            }

            else
            {
              v24 = 0;
            }

            goto LABEL_60;
          }
        }

        else
        {
          v21 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            if (v19)
            {
              v22 = v19;
              while (1)
              {
                if (!v22 || (v23 = *v22, v23 > 0x3F))
                {
LABEL_47:
                  v24 = 257;
                  goto LABEL_60;
                }

                if (!*v22)
                {
                  break;
                }

                v22 += v23 + 1;
                if (v22 - v19 >= 256)
                {
                  goto LABEL_47;
                }
              }

              v24 = (v22 - v19 + 1);
            }

            else
            {
              v24 = 0;
            }

LABEL_60:
            v27 = bswap32(*(*(a2 + 2456) + 8)) >> 16;
            *buf = 67110659;
            v77 = v17;
            v78 = 2160;
            v79 = 1752392040;
            v80 = 1040;
            v81 = v24;
            v82 = 2101;
            v83 = v19;
            v84 = 1024;
            v85 = v20;
            v86 = 1024;
            v87 = v27;
            v88 = 2080;
            v89 = v74;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceRegister(%{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), %u) %s", buf, 0x38u);
          }
        }

        v7 = *(v5 + 8);
        goto LABEL_62;
      }
    }

    v18 = "REGISTERED";
    goto LABEL_36;
  }

LABEL_62:
  if (a3 != -65792 && !v7)
  {
    v10 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v77 = a3;
      v12 = "regservice_callback: instance->request is NULL %d";
    }

    else
    {
      v10 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 67109120;
      v77 = a3;
      v12 = "regservice_callback: instance->request is NULL %d";
    }

    goto LABEL_90;
  }

  if (a3 == -65792)
  {
    if (v7 && *(v5 + 24))
    {
      external_stop_advertising_helper(v5);
      *(v5 + 24) = 0;
      v40 = mDNS_RenameAndReregisterService(a1, a2, (*(*(v5 + 8) + 128) + 26));
      if (!v40)
      {
        return;
      }

      v41 = v40;
      v42 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      else
      {
        v42 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      v60 = *(*(v5 + 8) + 200);
      *buf = 67109376;
      v77 = v60;
      v78 = 1024;
      LODWORD(v79) = v41;
      v12 = "[R%u] ERROR: regservice_callback - RenameAndReregisterService returned %d";
      v37 = v42;
      v38 = 14;
      goto LABEL_91;
    }

    goto LABEL_199;
  }

  if (a3 != -65548)
  {
    if (a3)
    {
      if (!v9)
      {
        return;
      }

      if (!GenerateNTDResponse(*(a2 + 2448), *(a2 + 2440), v7, &v75, 0x41, 2u, a3))
      {
        append_reply(*(v5 + 8), v75);
        *(v5 + 25) = 1;
        return;
      }

      v43 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v44 = *(*(v5 + 8) + 200);
        v45 = *(a2 + 2448);
        if (v45)
        {
          v58 = *(a2 + 2448);
          while (1)
          {
            if (!v58 || (v59 = *v58, v59 > 0x3F))
            {
LABEL_147:
              v48 = 257;
              goto LABEL_193;
            }

            if (!*v58)
            {
              break;
            }

            v58 += v59 + 1;
            if (v58 - v45 >= 256)
            {
              goto LABEL_147;
            }
          }

          v48 = (v58 - v45 + 1);
        }

        else
        {
          v48 = 0;
        }
      }

      else
      {
        v43 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v44 = *(*(v5 + 8) + 200);
        v45 = *(a2 + 2448);
        if (v45)
        {
          v46 = *(a2 + 2448);
          while (1)
          {
            if (!v46 || (v47 = *v46, v47 > 0x3F))
            {
LABEL_117:
              v48 = 257;
              goto LABEL_193;
            }

            if (!*v46)
            {
              break;
            }

            v46 += v47 + 1;
            if (v46 - v45 >= 256)
            {
              goto LABEL_117;
            }
          }

          v48 = (v46 - v45 + 1);
        }

        else
        {
          v48 = 0;
        }
      }

LABEL_193:
      *buf = 67109891;
      v77 = v44;
      v78 = 2160;
      v79 = 1752392040;
      v80 = 1040;
      v81 = v48;
      v82 = 2101;
      v83 = v45;
      v12 = "[R%u] regservice_callback: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P is not valid DNS-SD SRV name";
      v37 = v43;
      v38 = 34;
      goto LABEL_91;
    }

    v28 = *(v7 + 128);
    if (*(v28 + 1614))
    {
      *(a2 + 177) = 1;
      *(a2 + 1353) = 1;
      *(a2 + 2529) = 1;
      *(a2 + 3705) = 1;
      for (i = *(v5 + 312); i; i = *i)
      {
        *(i + 137) = 1;
      }
    }

    if (!GenerateNTDResponse(*(a2 + 2448), *(a2 + 2440), v7, &v75, 0x41, 2u, 0))
    {
      append_reply(*(v5 + 8), v75);
      *(v5 + 25) = 1;
      goto LABEL_167;
    }

    v30 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v31 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_167;
      }

      v32 = *(*(v5 + 8) + 200);
      v33 = *(a2 + 2448);
      if (v33)
      {
        v34 = *(a2 + 2448);
        while (1)
        {
          if (!v34 || (v35 = *v34, v35 > 0x3F))
          {
LABEL_87:
            v36 = 257;
            goto LABEL_166;
          }

          if (!*v34)
          {
            break;
          }

          v34 += v35 + 1;
          if (v34 - v33 >= 256)
          {
            goto LABEL_87;
          }
        }

        v36 = (v34 - v33 + 1);
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v30 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_167:
        if (!callExternalHelpers(*v28, (v5 + 28), *(*(v5 + 8) + 248)))
        {
LABEL_186:
          if (*(v28 + 1612) && !CountPeerRegistrations(a2))
          {
            v73 = dword_10016D258;
            if (dword_10016D258 <= 1)
            {
              v73 = 1;
            }

            *(mDNSStorage[0] + 492) = v73;
          }

          return;
        }

        v63 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_175;
          }

          v65 = *(*(v5 + 8) + 200);
          *buf = 67109120;
          v77 = v65;
        }

        else
        {
          v63 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_175;
          }

          v64 = *(*(v5 + 8) + 200);
          *buf = 67109120;
          v77 = v64;
        }

        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[R%u] regservice_callback: calling external_start_advertising_helper()", buf, 8u);
LABEL_175:
        v66 = *(v5 + 8);
        v67 = *(v66 + 128);
        if (*(v67 + 24))
        {
          v68 = *(v5 + 16);
          v69 = *(v66 + 188);
          if (*(v5 + 27))
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "external_start_advertising_helper: external_advertise already set!");
          }

          if (*(v67 + 1616))
          {
            v70 = 0;
            v71 = v68 + 8;
            do
            {
              internal_start_advertising_service(v71, *(*(v5 + 8) + 248), v69);
              ++v70;
              v71 += 1176;
            }

            while (v70 < *(v67 + 1616));
          }

          internal_start_advertising_service(v5 + 1528, *(*(v5 + 8) + 248), v69);
          internal_start_advertising_service(v5 + 2704, *(*(v5 + 8) + 248), v69);
          internal_start_advertising_service(v5 + 3880, *(*(v5 + 8) + 248), v69);
          for (j = *(v5 + 312); j; j = *j)
          {
            internal_start_advertising_service((j + 3), *(*(v5 + 8) + 248), v69);
          }

          *(v5 + 27) = 1;
        }

        else if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "external_start_advertising_helper: Not registering service with port number zero");
        }

        goto LABEL_186;
      }

      v32 = *(*(v5 + 8) + 200);
      v33 = *(a2 + 2448);
      if (v33)
      {
        v56 = *(a2 + 2448);
        while (1)
        {
          if (!v56 || (v57 = *v56, v57 > 0x3F))
          {
LABEL_138:
            v36 = 257;
            goto LABEL_166;
          }

          if (!*v56)
          {
            break;
          }

          v56 += v57 + 1;
          if (v56 - v33 >= 256)
          {
            goto LABEL_138;
          }
        }

        v36 = (v56 - v33 + 1);
      }

      else
      {
        v36 = 0;
      }
    }

LABEL_166:
    *buf = 67109891;
    v77 = v32;
    v78 = 2160;
    v79 = 1752392040;
    v80 = 1040;
    v81 = v36;
    v82 = 2101;
    v83 = v33;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[R%u] regservice_callback: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P is not valid DNS-SD SRV name", buf, 0x22u);
    goto LABEL_167;
  }

  v39 = *(v7 + 128);
  if (!*(v39 + 1613))
  {
    if (v9)
    {
      if (GenerateNTDResponse(*(a2 + 2448), *(a2 + 2440), v7, &v75, 0x41, 2u, 0xFFFEFFF4))
      {
        v49 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            v50 = *(*(v5 + 8) + 200);
            v51 = *(a2 + 2448);
            if (v51)
            {
              v61 = *(a2 + 2448);
              while (1)
              {
                if (!v61 || (v62 = *v61, v62 > 0x3F))
                {
LABEL_159:
                  v54 = 257;
                  goto LABEL_198;
                }

                if (!*v61)
                {
                  break;
                }

                v61 += v62 + 1;
                if (v61 - v51 >= 256)
                {
                  goto LABEL_159;
                }
              }

              v54 = (v61 - v51 + 1);
            }

            else
            {
              v54 = 0;
            }

            goto LABEL_198;
          }
        }

        else
        {
          v49 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v50 = *(*(v5 + 8) + 200);
            v51 = *(a2 + 2448);
            if (v51)
            {
              v52 = *(a2 + 2448);
              while (1)
              {
                if (!v52 || (v53 = *v52, v53 > 0x3F))
                {
LABEL_129:
                  v54 = 257;
                  goto LABEL_198;
                }

                if (!*v52)
                {
                  break;
                }

                v52 += v53 + 1;
                if (v52 - v51 >= 256)
                {
                  goto LABEL_129;
                }
              }

              v54 = (v52 - v51 + 1);
            }

            else
            {
              v54 = 0;
            }

LABEL_198:
            *buf = 67109891;
            v77 = v50;
            v78 = 2160;
            v79 = 1752392040;
            v80 = 1040;
            v81 = v54;
            v82 = 2101;
            v83 = v51;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[R%u] regservice_callback: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P is not valid DNS-SD SRV name", buf, 0x22u);
          }
        }
      }

      else
      {
        append_reply(*(v5 + 8), v75);
        *(v5 + 25) = 1;
      }
    }

LABEL_199:
    unlink_and_free_service_instance(v5);
    return;
  }

  external_stop_advertising_helper(v5);
  if (*(v39 + 1612) && !CountPeerRegistrations(a2))
  {
    IncrementLabelSuffix((a1 + 10280), 1);
    mDNS_ConfigChanged(a1);
  }

  else
  {
    if (*(v5 + 25))
    {
      SendServiceRemovalNotification(a2);
    }

    mDNS_RenameAndReregisterService(a1, a2, 0);
  }
}

uint64_t GenerateNTDResponse(char *a1, char *a2, uint64_t a3, char **a4, char *a5, unsigned int a6, unsigned int a7)
{
  memset(v49, 0, sizeof(v49));
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  *a4 = 0;
  if (a1)
  {
    if (!DeconstructServiceName(a1, v49, v48, v47))
    {
      return 4294901747;
    }

    memset(__s, 0, sizeof(__s));
    bzero(&__src, 0x3F1uLL);
    bzero(&v42, 0x3F1uLL);
    v14 = v49[0];
    if (v49[0] <= 0x3FuLL)
    {
      v15 = &v49[1];
      if (&v49[1] >= &v49[v49[0] + 1])
      {
        v16 = __s;
      }

      else
      {
        v16 = __s;
        do
        {
          v17 = *v15++;
          *v16++ = v17;
          --v14;
        }

        while (v14);
      }

      *v16 = 0;
    }

    v40 = a7;
    ConvertDomainNameToCString_withescape(v48, &__src);
    ConvertDomainNameToCString_withescape(v47, &v42);
  }

  else
  {
    v40 = a7;
    __s[3] = 0uLL;
    *(&__s[2] + 1) = 0uLL;
    *(&__s[1] + 1) = 0uLL;
    *(__s + 1) = 0uLL;
    bzero(&v45, 0x3F0uLL);
    bzero(&v43, 0x3F0uLL);
    LOBYTE(__s[0]) = 0;
    __src = 0;
    v42 = 0;
  }

  v19 = mDNSPlatformInterfaceIndexfromInterfaceID(mDNSStorage, a2, 0);
  v20 = strlen(__s);
  v21 = strlen(&__src);
  v22 = 0;
  v23 = 0;
  v24 = v20 + v21 + strlen(&v42) + 15;
  if (a1 && *(a3 + 290))
  {
    v41 = 0;
    *out = 0;
    *&out[8] = 0;
    uuid_generate_random(out);
    v25 = _mdns_signed_browse_result_create_ex(out, a1, v19, 0, 0, &v41);
    v26 = v25;
    if (v25 && !v41)
    {
      *out = 0;
      data = mdns_signed_result_get_data(v25, out);
      v28 = *out;
      if (*out >= 0x10000uLL)
      {
        v28 = 0;
      }

      v23 = v28;
      if (*out >= 0x10000uLL)
      {
        v22 = 0;
      }

      else
      {
        v22 = data;
      }

      if (*out >= 0x10000uLL)
      {
        v29 = 0;
      }

      else
      {
        v29 = *out + 4;
      }

      v24 += v29;
      goto LABEL_35;
    }

    v30 = v41;
    v31 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
        *out = 134217984;
        *&out[4] = v30;
        goto LABEL_33;
      }
    }

    else
    {
      v31 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
        *out = 134217984;
        *&out[4] = v30;
LABEL_33:
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "GenerateBrowseReply signed_browse failed %ld", out, 0xCu);
      }
    }

    v23 = 0;
    v22 = 0;
    goto LABEL_35;
  }

  v26 = 0;
LABEL_35:
  reply = create_reply(a5, v24, a3);
  *a4 = reply;
  *(reply + 11) = bswap32(a6);
  *(reply + 12) = bswap32(v19);
  *(reply + 13) = bswap32(v40);
  v33 = reply + 56;
  memcpy(reply + 56, __s, v20 + 1);
  v34 = &v33[v20 + 1];
  v35 = strlen(&__src) + 1;
  memcpy(v34, &__src, v35);
  v36 = &v34[v35];
  v37 = strlen(&v42) + 1;
  memcpy(v36, &v42, v37);
  if (v22)
  {
    v38 = *a4;
    v39 = &v36[v37];
    if (&v36[v37])
    {
      if (v39 <= &v39[v24] && v24 >= v23 + 4)
      {
        *v39 = 1792;
        v39[2] = BYTE1(v23);
        v39[3] = v23;
        if (v23)
        {
          memcpy(v39 + 4, v22, v23);
        }
      }
    }

    *(v38 + 24) |= 2u;
  }

  if (v26)
  {
    os_release(v26);
  }

  return 0;
}

uint64_t DeconstructServiceName(char *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v4 = *a1;
  if ((v4 - 64) < 0xFFFFFFC1)
  {
    return 0;
  }

  v5 = a1 + 256;
  v6 = v4 + 1;
  do
  {
    v7 = *a1++;
    *a2++ = v7;
    --v6;
  }

  while (v6);
  v8 = *a1;
  if ((v8 - 64) < 0xFFFFFFC1)
  {
    return 0;
  }

  if (a1[1] != 95)
  {
    return 0;
  }

  v9 = v8 + 1;
  do
  {
    v10 = *a1++;
    *a3++ = v10;
    --v9;
  }

  while (v9);
  if (*a1 != 4 || a1[1] != 95)
  {
    return 0;
  }

  v11 = a1[2] & 0xDF;
  if (v11 == 84)
  {
    if ((a1[3] & 0xDF) != 0x43)
    {
      return 0;
    }
  }

  else if (v11 != 85 || (a1[3] & 0xDF) != 0x44)
  {
    return 0;
  }

  if ((a1[4] & 0xDF) != 0x50)
  {
    return 0;
  }

  v12 = 0;
  do
  {
    v13 = *a1++;
    a3[v12++] = v13;
  }

  while (v12 != 5);
  a3[v12] = 0;
  while (1)
  {
    v14 = *a1;
    if (!*a1)
    {
      break;
    }

    v15 = 0;
    if (v14 > 0x3F || &a1[*a1 + 2] >= v5)
    {
      return v15;
    }

    v16 = v14 + 1;
    do
    {
      v17 = *a1++;
      *a4++ = v17;
      --v16;
    }

    while (v16);
  }

  *a4 = 0;
  return 1;
}

uint64_t CountPeerRegistrations(uint64_t a1)
{
  v1 = xmmword_100170360;
  if (!xmmword_100170360)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if (*(v1 + 6) == 33 && SameDomainNameBytes(v1[5], *(a1 + 2448)))
    {
      if (resource_records_have_same_dnssec_rr_category(v1[8], *(a1 + 2472)) && *(v1 + 6) == *(a1 + 2420) && *(v1 + 7) == *(a1 + 2422) && *(v1 + 10) == *(a1 + 2428) && *(v1 + 7) == *(a1 + 2436))
      {
        v4 = SameRDataBody((v1 + 1), (*(a1 + 2456) + 4), SameDomainName) ^ 1;
      }

      else
      {
        v4 = 1;
      }

      v3 = (v4 + v3);
    }

    v1 = *v1;
  }

  while (v1);
  return v3;
}

void ClearProxyRecords(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 12640);
  v7 = &unk_100178000;
  if (v6)
  {
    v8 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v6 + 8), (*(v6 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "ClearProxyRecords ERROR m->CurrentRecord already set %s", (a1 + 47032));
  }

  *(a1 + 12640) = a3;
  if (a3)
  {
    v9 = *(a1 + 37944);
    v24 = (a1 + 47032);
    v10 = &unk_10016D000;
    do
    {
      if (v9 != *(a3 + 32))
      {
        goto LABEL_19;
      }

      if (*(a2 + 2) != *(a3 + 126))
      {
        goto LABEL_19;
      }

      if (*(a2 + 4) != *(a3 + 128))
      {
        goto LABEL_19;
      }

      if (*(a2 + 6) != *(a3 + 130))
      {
        goto LABEL_19;
      }

      v11 = *(a2 + 1);
      v12 = *(a3 + 125);
      if (v11 == v12 && *(a1 + 64) - *(a3 + 164) < 60001)
      {
        goto LABEL_19;
      }

      if (v10[208] == 1)
      {
        v13 = v11;
        v21 = v12;
        v22 = *(a3 + 191);
        v23 = *(v7 + 434);
        v14 = *(a3 + 8);
        v15 = v7;
        v16 = *(a1 + 19888);
        GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), v24);
        v20 = v14;
        v10 = &unk_10016D000;
        v19 = v16;
        v7 = v15;
        LogMsgWithLevel(v23, OS_LOG_TYPE_DEFAULT, "ClearProxyRecords: Removing %3d AC %2d %02X H-MAC %.6a I-MAC %.6a %d %d %s", v19, v22, v20, COERCE_DOUBLE(a3 + 126), COERCE_DOUBLE(a3 + 132), v21, v13, v24);
      }

      if (*(a3 + 8) == 1)
      {
        *(a3 + 8) = 8;
      }

      *(a3 + 130) = 0;
      *(a3 + 126) = 0;
      *(a3 + 192) = 0;
      mDNS_Deregister_internal(a1, a3, 0);
      v17 = *(a1 + 15112);
      v9 = *(a1 + 37944);
      if (v17)
      {
        if (v17 != v9)
        {
          mDNSPlatformUpdateProxyList(v17);
          v9 = *(a1 + 37944);
        }
      }

      *(a1 + 15112) = v9;
      v18 = *(a1 + 12640);
      if (v18 == a3)
      {
LABEL_19:
        v18 = *a3;
        *(a1 + 12640) = *a3;
      }

      a3 = v18;
    }

    while (v18);
  }
}

void SendResponses(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 12656);
  if (v2)
  {
    while (!*(v2 + 16))
    {
      v2 = *v2;
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    v185 = v2;
  }

  else
  {
LABEL_4:
    v185 = 0;
  }

  *(a1 + 100) = *(a1 + 64) + 939524096;
  v3 = *(a1 + 12616);
  if (!v3)
  {
    goto LABEL_160;
  }

  v4 = (a1 + 47032);
  do
  {
    if (*(v3 + 195))
    {
      *v212 = xmmword_10010D568;
      *buf = 6;
      v5 = *(v3 + 58);
      v213 = 0;
      *&v212[4] = v5;
      *v199 = *(v3 + 236);
      if (v5)
      {
        SendDelayedUnicastResponse(v1, v212, v3[26]);
      }

      if (vorr_s8(*(v3 + 236), *&vextq_s8(*(v3 + 236), *(v3 + 236), 8uLL)))
      {
        SendDelayedUnicastResponse(v1, buf, v3[26]);
      }

      if (*(v3 + 195))
      {
        v6 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb(v3 + 8, (v3[6] + 4), (v1 + 47032));
        LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "SendResponses: ERROR: rr->ImmedUnicast still set: %s", (v1 + 47032));
        *(v3 + 195) = 0;
      }
    }

    v3 = *v3;
  }

  while (v3);
  v7 = *(v1 + 12616);
  if (!v7)
  {
    goto LABEL_160;
  }

  v8 = 0;
  do
  {
    v9 = *(v7 + 332);
    if (v9)
    {
      v10 = *(v1 + 64);
      do
      {
        if ((v10 - v9) < 0)
        {
          break;
        }

        v11 = *(v7 + 328) + 1;
        *(v7 + 328) = v11;
        v9 += 6000;
        if (v9 <= 1)
        {
          v9 = 1;
        }

        v12 = v11 <= 9 ? v9 : 0;
        *(v7 + 332) = v12;
      }

      while (v11 < 0xA);
    }

    v13 = *(v7 + 191);
    if (*(v7 + 191))
    {
      v14 = *(v1 + 64);
      v15 = *(v7 + 280);
      if (v14 - (*(v7 + 284) + v15) >= 0)
      {
        if (*(v7 + 8) == 1)
        {
          if (*(v7 + 126))
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v16 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((v7 + 8), (*(v7 + 48) + 4), v4);
              v1 = a1;
              LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "SendResponses: Sending wakeup %2d for %.6a %s", v13 - 3, COERCE_DOUBLE(v7 + 132), v4);
              v13 = *(v7 + 191);
            }

            SendWakeup(v1, *(v7 + 32), (v7 + 132), v7 + 138, (v13 - 17) < 2);
            v17 = v7;
            do
            {
              if (*(v17 + 8) == 1)
              {
                v18 = *(v17 + 191);
                if (*(v17 + 191))
                {
                  if (*(v17 + 32) == *(v7 + 32) && *(v17 + 132) == *(v7 + 132) && *(v17 + 134) == *(v7 + 134) && *(v17 + 136) == *(v7 + 136) && (*(v17 + 126) || *(v17 + 128) || *(v17 + 130)))
                  {
                    if (v18 == 18 && *(v17 + 144) == 6)
                    {
                      if (mDNS_LoggingEnabled == 1)
                      {
                        v19 = mDNSLogCategory_Default;
                        GetRRDisplayString_rdb((v17 + 8), (*(v17 + 48) + 4), v4);
                        LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "NDP Announcement %2d Releasing traffic for H-MAC %.6a I-MAC %.6a %s", 15, COERCE_DOUBLE(v17 + 126), COERCE_DOUBLE(v17 + 132), v4);
                      }

                      SendNDP(v1, 136, 32, v17, (v17 + 148), (v17 + 132), &AllHosts_v6, "33");
                      LOBYTE(v18) = *(v17 + 191);
                    }

                    *(v17 + 284) = *(v1 + 64);
                    v20 = v18 - 1;
                    *(v17 + 191) = v20;
                    if (v20 <= 3u)
                    {
                      *(v17 + 130) = 0;
                      *(v17 + 126) = 0;
                    }
                  }
                }
              }

              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            *(v7 + 208) = -1;
          }
        }

        else if (ResourceRecordIsValidAnswer(v7))
        {
          v21 = *(v7 + 144);
          if (v21)
          {
            if (*(v7 + 126) || *(v7 + 128) || *(v7 + 130))
            {
              v22 = v13 - 1;
              *(v7 + 191) = v22;
              *(v7 + 280) = 2 * v15;
              *(v7 + 284) = v14;
              if (v21 == 6)
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  v24 = mDNSLogCategory_Default;
                  GetRRDisplayString_rdb((v7 + 8), (*(v7 + 48) + 4), v4);
                  v1 = a1;
                  LogMsgWithLevel(v24, OS_LOG_TYPE_DEFAULT, "NDP Announcement %2d Capturing traffic for H-MAC %.6a I-MAC %.6a %s", v22, COERCE_DOUBLE(v7 + 126), COERCE_DOUBLE(v7 + 132), v4);
                }

                SendNDP(v1, 136, 32, v7, (v7 + 148), 0, &AllHosts_v6, "33");
              }

              else if (v21 == 4)
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  v23 = mDNSLogCategory_Default;
                  GetRRDisplayString_rdb((v7 + 8), (*(v7 + 48) + 4), v4);
                  v1 = a1;
                  LogMsgWithLevel(v23, OS_LOG_TYPE_DEFAULT, "ARP Announcement %2d Capturing traffic for H-MAC %.6a I-MAC %.6a %s", v22, COERCE_DOUBLE(v7 + 126), COERCE_DOUBLE(v7 + 132), v4);
                }

                SendARP(v1, 1, v7, v7 + 148, &zeroEthAddr, v7 + 148, onesEthAddr);
              }
            }
          }

          else
          {
            *(v7 + 208) = -1;
            if (v8 <= v15)
            {
              v8 = v15;
            }

            if (*(v7 + 336))
            {
              *(v7 + 336) = 0;
            }
          }
        }
      }
    }

    v7 = *v7;
  }

  while (v7);
  v25 = *(v1 + 12616);
  if (!v25)
  {
    goto LABEL_160;
  }

  do
  {
    if (*(v25 + 32) && *(v25 + 208) || (v26 = *(v25 + 280), v26 <= v8) && *(v25 + 191) && *(v1 + 64) + v26 / 2 - (v26 + *(v25 + 284)) >= 0 && !*(v25 + 144) && ResourceRecordIsValidAnswer(v25))
    {
      *(v25 + 208) = -1;
    }

    v25 = *v25;
  }

  while (v25);
  v27 = *(v1 + 12616);
  if (!v27)
  {
    goto LABEL_160;
  }

  do
  {
    if (v27[26])
    {
      if (*(v27 + 6) != 33)
      {
        goto LABEL_479;
      }

      v28 = *(v1 + 12616);
      if (!v28)
      {
        goto LABEL_479;
      }

      do
      {
        v29 = *(v28 + 12);
        if ((v29 == 28 || v29 == 1) && ResourceRecordIsValidAnswer(v28) && *(v27 + 72) - *(v28 + 288) >= 0 && *(v27 + 7) == *(v28 + 24))
        {
          if (SameDomainNameBytes((v27[6] + 10), *(v28 + 40)))
          {
            v31 = v27[26];
            v32 = *(v28 + 32);
            if (v31 == -1 || v31 == v32)
            {
              *(v28 + 216) = v32;
            }
          }
        }

        v28 = *v28;
      }

      while (v28);
      if (v27[26])
      {
LABEL_479:
        if (*(v27 + 8) == 8 && *(v27 + 6) == 12 && ResourceRecordIsValidAnswer(v1 + 11440) && SameDomainLabelPointer(v27[6] + 4, *(v1 + 11480)))
        {
          if (*(v1 + 11648))
          {
            v33 = -1;
          }

          else
          {
            v33 = v27[26];
          }

          *(v1 + 11648) = v33;
        }
      }
    }

    v27 = *v27;
  }

  while (v27);
  v34 = *(v1 + 12616);
  if (!v34)
  {
    goto LABEL_160;
  }

  do
  {
    if ((*(v34 + 8) & 0x32) == 0)
    {
      goto LABEL_145;
    }

    v35 = (v34 + 208);
    if (!*(v34 + 208))
    {
      if (!*(v34 + 216))
      {
        goto LABEL_145;
      }

      v41 = *(v1 + 12616);
      if (!v41)
      {
        goto LABEL_145;
      }

      while (1)
      {
        if ((*(v41 + 8) & 0x32) == 0 || !ResourceRecordIsValidAnswer(v41) || *(v41 + 216) == *(v34 + 216) || *(v41 + 12) != *(v34 + 12) || !SameResourceRecordNameClassInterface(v41, v34))
        {
          goto LABEL_141;
        }

        v42 = *(v34 + 216);
        v43 = *(v41 + 32);
        if (!v43)
        {
          break;
        }

        if (v43 == v42)
        {
          goto LABEL_140;
        }

LABEL_141:
        v41 = *v41;
        if (!v41)
        {
          goto LABEL_145;
        }
      }

      if (!mDNSPlatformValidRecordForInterface(v41, v42))
      {
        goto LABEL_141;
      }

LABEL_140:
      *(v41 + 216) = *(v34 + 216);
      goto LABEL_141;
    }

    for (i = *(v1 + 12616); i; i = *i)
    {
      if ((*(i + 8) & 0x32) != 0 && ResourceRecordIsValidAnswer(i))
      {
        v37 = *(i + 208);
        if (v37 != -1 && v37 != *v35 && *(i + 12) == *(v34 + 12) && SameResourceRecordNameClassInterface(i, v34))
        {
          v38 = *v35;
          if (*v35 == -1)
          {
            goto LABEL_123;
          }

          v39 = *(i + 32);
          if (v39)
          {
            if (v39 == v38)
            {
              goto LABEL_123;
            }
          }

          else if (mDNSPlatformValidRecordForInterface(i, v38))
          {
LABEL_123:
            if (*(i + 208))
            {
              v40 = &mDNSInterfaceMark;
            }

            else
            {
              v40 = (v34 + 208);
            }

            *(i + 208) = *v40;
          }
        }
      }
    }

LABEL_145:
    v34 = *v34;
  }

  while (v34);
  for (j = *(v1 + 12616); j; j = *j)
  {
    v45 = *(j + 208);
    if (v45)
    {
      if (v45 == -1)
      {
        if (v185)
        {
          v46 = *(j + 32);
          if (!v46)
          {
            v46 = v185[444];
          }
        }

        else
        {
          v46 = 0;
        }

        *(j + 216) = 0;
        *(j + 224) = v46;
        v47 = *(v1 + 64);
        *(j + 288) = v47;
        *(j + 296) = -1;
        *(j + 189) = 0;
        if (*(j + 191))
        {
          v48 = *(j + 280);
          if (v47 + v48 / 2 - (v48 + *(j + 284)) >= 0)
          {
            --*(j + 191);
            if (*(j + 8) != 1)
            {
              *(j + 280) = 2 * v48;
            }

            *(j + 284) = v47;
          }
        }
      }

      else
      {
        *(j + 216) = 0;
        *(j + 224) = v45;
        *(j + 288) = *(v1 + 64);
        *(j + 296) = v45;
      }
    }

    SetNextAnnounceProbeTime(v1, j);
  }

LABEL_160:
  v49 = v185;
  if (!v185)
  {
    goto LABEL_446;
  }

  v187 = 0;
  v50 = v1 + 28960;
  v189 = v1 + 28972;
  v183 = (v1 + 47032);
  v194 = v1 + 28960;
  do
  {
    v51 = mDNS_McastTracingEnabled;
    if (mDNS_McastTracingEnabled)
    {
      v52 = 20;
    }

    else
    {
      v52 = 0;
    }

    v188 = v52;
    v197 = 0;
    *v50 = 8650752;
    *(v50 + 4) = 0;
    v53 = *(v1 + 12616);
    v190 = v51;
    if (!v53)
    {
      LOWORD(v191) = 0;
      v195 = v189;
      goto LABEL_377;
    }

    v191 = 0;
    v195 = v189;
    v186 = v49;
    do
    {
      v54 = *(v53 + 224);
      v55 = v49[444];
      if (v54 == v55)
      {
        if (*(v53 + 32))
        {
          goto LABEL_171;
        }

        if (!mDNSPlatformValidRecordForInterface(v53, v55))
        {
          v84 = v195;
          goto LABEL_248;
        }

        v54 = *(v53 + 224);
        v55 = v49[444];
      }

      if (v54 != v55)
      {
        goto LABEL_243;
      }

LABEL_171:
      v56 = (v53 + 8);
      if (*(v53 + 8) != 1)
      {
        v58 = *(v1 + 141);
        if ((*(v53 + 123) & 1) == 0)
        {
          if (v58 != 2)
          {
            v59 = 0;
            goto LABEL_180;
          }

          v58 = *(v49 + 3675);
        }

        v59 = v58 != 0;
LABEL_180:
        v57 = !v59;
        goto LABEL_181;
      }

      v57 = 0;
LABEL_181:
      v60 = *(v53 + 48);
      v61 = *(v53 + 20);
      v62 = mDNSGetTSRForAuthRecordNamed(*(v1 + 12616), *(v53 + 40), *(v53 + 24));
      v63 = *(v53 + 304);
      if (!v63 || !v57)
      {
        goto LABEL_203;
      }

      if (!ResourceRecordIsValidAnswer(v53) || *v56 != 8 || !*(v53 + 192))
      {
        v72 = v195;
LABEL_202:
        SetNewRData(v53 + 8, v63, *(v53 + 312));
        v195 = v72;
        v50 = v194;
LABEL_203:
        if ((*v56 & 0x32) != 0)
        {
          *(v53 + 14) |= 0x8000u;
        }

        v75 = UnsafeBufferPointer(v53, v62, &v197);
        v76 = v191;
        if (v75)
        {
          v76 = v191 + 1;
        }

        if (v57)
        {
          v77 = *(v53 + 16);
        }

        else
        {
          v77 = 0;
        }

        if (*(v50 + 6) || *(v50 + 8))
        {
          v78 = 1440;
        }

        else
        {
          v78 = 1440;
          if (!*(v50 + 10))
          {
            v78 = 8940;
          }
        }

        if (v76)
        {
          v79 = v190 == 0;
        }

        else
        {
          v79 = 0;
        }

        v80 = v189 + v78;
        v81 = v188 + 14 * v76;
        if (v79)
        {
          v82 = 11;
        }

        else
        {
          v82 = 0;
        }

        v83 = PutResourceRecordTTLWithLimit(v50, v195, (v50 + 6), v53 + 8, v77, v80 - (v81 + v82));
        v84 = v83;
        if (v75)
        {
          if (v83)
          {
            v85 = *(v53 + 40);
            v86 = *(v50 + 6);
            v87 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
            if (!v87)
            {
              goto LABEL_476;
            }

            ++v191;
            *(v75 + 8) = v86 - 1;
            v87[1] = v75;
            v87[2] = v85;
            *v87 = v197;
            v197 = v87;
            *(v53 + 14) &= ~0x8000u;
            v1 = a1;
            v49 = v186;
LABEL_224:
            v88 = 0;
            *(v53 + 192) = v57;
          }

          else
          {
            *(v53 + 14) &= ~0x8000u;
            v88 = 1;
            v84 = v195;
            v49 = v186;
          }
        }

        else
        {
          *(v53 + 14) &= ~0x8000u;
          v49 = v186;
          if (v83)
          {
            goto LABEL_224;
          }

          v88 = 1;
          v84 = v195;
        }

        if (*(v53 + 304) && v57)
        {
          SetNewRData(v53 + 8, v60, v61);
        }

        if (!v187 && v57 && (*v56 & 0x30) != 0 && !*(v53 + 200))
        {
          *(v53 + 200) = -1;
          if ((v88 & 1) == 0)
          {
            goto LABEL_238;
          }
        }

        else if ((v88 & 1) == 0)
        {
LABEL_238:
          if (*(v53 + 208) != -1 || *(v53 + 32))
          {
            v89 = 0;
            goto LABEL_241;
          }

LABEL_248:
          v89 = *v49;
          if (*v49)
          {
            while (!*(v89 + 16))
            {
              v89 = *v89;
              if (!v89)
              {
                goto LABEL_241;
              }
            }

            v89 = v89[444];
          }

LABEL_241:
          *(v53 + 224) = v89;
        }

        v195 = v84;
        goto LABEL_243;
      }

      v64 = UnsafeBufferPointer(v53, v62, &v197);
      v65 = v191;
      if (v64)
      {
        v65 = v191 + 1;
      }

      if (*(v50 + 6) || *(v50 + 8))
      {
        v66 = 1440;
      }

      else
      {
        v66 = 1440;
        if (!*(v50 + 10))
        {
          v66 = 8940;
        }
      }

      if (v65)
      {
        v67 = v190 == 0;
      }

      else
      {
        v67 = 0;
      }

      v68 = v189 + v66;
      v69 = v188 + 14 * v65;
      if (v67)
      {
        v70 = 11;
      }

      else
      {
        v70 = 0;
      }

      v71 = PutResourceRecordTTLWithLimit(v50, v195, (v50 + 6), v53 + 8, 0, v68 - (v69 + v70));
      v72 = v71;
      if (v64)
      {
        if (v71)
        {
          v196 = *(v53 + 40);
          v73 = *(v194 + 6);
          v74 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
          if (!v74)
          {
            goto LABEL_476;
          }

          ++v191;
          *(v64 + 8) = v73 - 1;
          v74[1] = v64;
          v74[2] = v196;
          *v74 = v197;
          v197 = v74;
          v1 = a1;
LABEL_254:
          *(v53 + 192) = 0;
          v63 = *(v53 + 304);
          goto LABEL_202;
        }

        v49 = v186;
      }

      else
      {
        v49 = v186;
        if (v71)
        {
          goto LABEL_254;
        }
      }

LABEL_243:
      v53 = *v53;
      v50 = v194;
    }

    while (v53);
    v90 = *(v1 + 12616);
    v91 = v195;
    if (!v90)
    {
      goto LABEL_377;
    }

    while (2)
    {
      if (*(v90 + 216) == v49[444] && ResourceRecordIsValidAnswer(v90))
      {
        if (*(v50 + 6))
        {
          goto LABEL_265;
        }

        if ((*(v90 + 8) & 0x32) != 0 && (v105 = *(v1 + 12616)) != 0)
        {
          while (*(v105 + 288) != *(v1 + 64) || *(v105 + 296) != v49[444] || *(v105 + 12) != *(v90 + 12) || !SameResourceRecordNameClassInterface(v105, v90))
          {
            v105 = *v105;
            if (!v105)
            {
              goto LABEL_294;
            }
          }

LABEL_265:
          if (v91)
          {
            v92 = *(v90 + 8);
            if (!v187 && (*(v90 + 8) & 0x30) != 0 && !*(v90 + 200))
            {
              *(v90 + 200) = -1;
            }

            if ((v92 & 0x32) != 0)
            {
              *(v90 + 14) |= 0x8000u;
            }

            v93 = UnsafeBufferPointer(*(v1 + 12616), v90, &v197);
            v94 = v191;
            if (v93)
            {
              v94 = v191 + 1;
            }

            if (*(v50 + 6) || *(v50 + 8))
            {
              v95 = 1440;
            }

            else
            {
              v95 = 1440;
              if (!*(v50 + 10))
              {
                v95 = 8940;
              }
            }

            if (v94)
            {
              v96 = v190 == 0;
            }

            else
            {
              v96 = 0;
            }

            v97 = v189 + v95;
            v98 = v188 + 14 * v94;
            if (v96)
            {
              v99 = 11;
            }

            else
            {
              v99 = 0;
            }

            v100 = PutResourceRecordTTLWithLimit(v50, v91, (v50 + 10), v90 + 8, *(v90 + 16), v97 - (v98 + v99));
            v91 = v100;
            if (v93)
            {
              if (v100)
              {
                v101 = *(v90 + 40);
                v102 = *(v50 + 6);
                v103 = *(v50 + 10);
                v104 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
                if (!v104)
                {
                  goto LABEL_476;
                }

                LOWORD(v191) = v191 + 1;
                *(v93 + 4) = v102 + v103 - 1;
                v104[1] = v93;
                v104[2] = v101;
                *v104 = v197;
                v197 = v104;
                *(v90 + 14) &= ~0x8000u;
                v1 = a1;
                v50 = v194;
LABEL_296:
                *(v90 + 216) = 0;
                *(v90 + 192) = 1;
                *(v90 + 288) = *(v1 + 64);
                *(v90 + 296) = v49[444];
                v195 = v91;
              }

              else
              {
                *(v90 + 14) &= ~0x8000u;
              }
            }

            else
            {
              *(v90 + 14) &= ~0x8000u;
              if (v100)
              {
                goto LABEL_296;
              }
            }
          }
        }

        else
        {
LABEL_294:
          *(v90 + 216) = 0;
        }
      }

      v90 = *v90;
      if (v90)
      {
        continue;
      }

      break;
    }

    v106 = *(v1 + 12616);
    if (!v106)
    {
      goto LABEL_377;
    }

    do
    {
      v107 = *(v106 + 200);
      if (v107 != -1 && v107 != v49[444])
      {
        goto LABEL_334;
      }

      bzero(v212, 0x498uLL);
      v108 = *(v106 + 16);
      if (v108)
      {
        v109 = *(v106 + 16);
      }

      else
      {
        v109 = 4500;
      }

      v212[8] = 2;
      if (v108 <= 0x20C49B)
      {
        v110 = v109;
      }

      else
      {
        v110 = 2147483;
      }

      strcpy(&v212[12], "/");
      v213 = v110;
      v247[0] = 264;
      v217 = v246;
      v218 = v247;
      v226 = 0;
      v227 = 0;
      v219 = 0u;
      v220 = 0u;
      v221 = 0u;
      v222 = 0u;
      v223 = 0u;
      v224 = 0u;
      v225 = 0;
      v228 = v246;
      v242 = 0;
      v244 = 0;
      v245 = 0;
      v243 = 0;
      v246[0] = 0;
      v229 = 0u;
      v230 = 0u;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v234 = 0u;
      v235 = 0u;
      v236 = 0u;
      v237 = 0u;
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;
      memset(v241, 0, sizeof(v241));
      v111 = *(v106 + 40);
      v112 = v111;
      *&v212[14] = -32767;
      do
      {
        if (!v112)
        {
          break;
        }

        v113 = *v112;
        if (v113 > 0x3F)
        {
          break;
        }

        if (!*v112)
        {
          v114 = v112 - v111 + 1;
          if (v114 <= 0x100u)
          {
            memcpy(v246, v111, v114);
          }

          break;
        }

        v112 += v113 + 1;
      }

      while (v112 - v111 <= 255);
      v115 = *(v106 + 40);
      v116 = v115;
      while (1)
      {
        if (!v116 || (v117 = *v116, v117 > 0x3F))
        {
LABEL_323:
          v118 = 291;
          *v214 = 291;
LABEL_324:
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendResponses: not enough space (%d)  in authrecord for nsec", v118);
          goto LABEL_325;
        }

        if (!*v116)
        {
          break;
        }

        v116 += v117 + 1;
        if (v116 - v115 >= 256)
        {
          goto LABEL_323;
        }
      }

      v121 = v116 - v115;
      v118 = v121 + 35;
      *v214 = v121 + 35;
      if ((v121 + 35) > 0x108u)
      {
        goto LABEL_324;
      }

      v122 = v121 + 1;
      bzero(&v248, (v121 + 35));
      v123 = *(v106 + 40);
      v124 = v123;
      do
      {
        if (!v124)
        {
          break;
        }

        v125 = *v124;
        if (v125 > 0x3F)
        {
          break;
        }

        if (!*v124)
        {
          v126 = v124 - v123 + 1;
          if (v126 <= 0x100u)
          {
            memcpy(&v248, v123, v126);
            goto LABEL_346;
          }

          break;
        }

        v124 += v125 + 1;
      }

      while (v124 - v123 <= 255);
      LOBYTE(v248) = 0;
LABEL_346:
      v127 = (&v248 + v122);
      *v127 = 0x2000;
      v128 = v127 + 1;
      v129 = *(v1 + 12616);
      if (v129)
      {
        while (1)
        {
          if (ResourceRecordIsValidAnswer(v129) && SameResourceRecordNameClassInterface(v129, v106))
          {
            v130 = *(v129 + 12);
            if (v130 >= 0xFF)
            {
              v145 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((v129 + 8), (*(v129 + 48) + 4), v183);
              LogMsgWithLevel(v145, OS_LOG_TYPE_DEFAULT, "SendResponses: Can't create NSEC for record %s", v183);
              v91 = v195;
              goto LABEL_325;
            }

            *(v128 + (v130 >> 3)) |= 0x80u >> (v130 & 7);
          }

          v129 = *v129;
          if (!v129)
          {
            v131 = *(v1 + 12616);
            goto LABEL_354;
          }
        }
      }

      v131 = 0;
LABEL_354:
      v132 = UnsafeBufferPointer(v131, v106, &v197);
      v133 = v191;
      if (v132)
      {
        v133 = v191 + 1;
      }

      if (*(v50 + 6) || *(v50 + 8))
      {
        v134 = 1440;
      }

      else
      {
        v134 = 1440;
        if (!*(v50 + 10))
        {
          v134 = 8940;
        }
      }

      if (v133)
      {
        v135 = v190 == 0;
      }

      else
      {
        v135 = 0;
      }

      v136 = v189 + v134;
      v137 = v188 + 14 * v133;
      if (v135)
      {
        v138 = 11;
      }

      else
      {
        v138 = 0;
      }

      v139 = PutResourceRecordTTLWithLimit(v50, v195, (v50 + 10), &v212[8], v213, v136 - (v137 + v138));
      v91 = v139;
      if (v132 && v139)
      {
        v140 = *(v106 + 40);
        v141 = *(v50 + 6);
        v142 = *(v50 + 10);
        v143 = malloc_type_calloc(1uLL, 0x18uLL, 0xBF412013uLL);
        if (v143)
        {
          LOWORD(v191) = v191 + 1;
          *(v132 + 4) = v141 + v142 - 1;
          v143[1] = v132;
          v143[2] = v140;
          *v143 = v197;
          v197 = v143;
          v1 = a1;
          goto LABEL_369;
        }

LABEL_476:
        __break(1u);
      }

LABEL_369:
      v144 = v195;
      if (v91)
      {
        v144 = v91;
      }

      v195 = v144;
LABEL_325:
      if (v91 || *(v106 + 200) == -1)
      {
        *(v106 + 200) = 0;
        v119 = *v106;
        if (*v106)
        {
          do
          {
            if (SameResourceRecordNameClassInterface(v119, v106))
            {
              v120 = v119[25];
              if (v120 == -1 || v120 == v49[444])
              {
                v119[25] = 0;
              }
            }

            v119 = *v119;
          }

          while (v119);
        }
      }

LABEL_334:
      v106 = *v106;
    }

    while (v106);
LABEL_377:
    v146 = *(v50 + 6);
    if (!*(v50 + 6) && !*(v50 + 10))
    {
      do
      {
        v49 = *v49;
      }

      while (v49 && !*(v49 + 16));
      v187 = 0;
      goto LABEL_441;
    }

    v147 = v197;
    if (v190)
    {
      v148 = 0;
    }

    else
    {
      v148 = v197 == 0;
    }

    if (v148)
    {
      goto LABEL_431;
    }

    bzero(v212, 0x498uLL);
    v212[8] = 32;
    strcpy(&v212[12], ")");
    v213 = 4500;
    v247[0] = 264;
    v217 = v246;
    v218 = v247;
    v226 = 0;
    v227 = 0;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v223 = 0u;
    v224 = 0u;
    v225 = 0;
    v228 = v246;
    v242 = 0;
    v244 = 0;
    v245 = 0;
    v243 = 0;
    v246[0] = 0;
    v229 = 0u;
    v230 = 0u;
    v231 = 0u;
    v232 = 0u;
    v233 = 0u;
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v240 = 0u;
    memset(v241, 0, sizeof(v241));
    *&v212[14] = 1440;
    *&v214[2] = 0;
    if (v190)
    {
      v249 = *(v1 + 12676);
      v250 = -1413927278;
      *v214 = 1572888;
      v248 = 392681;
      v149 = 48;
      v150 = 1;
      if (v147)
      {
        goto LABEL_385;
      }

LABEL_391:
      v154 = 4500;
      if (!v146)
      {
        goto LABEL_392;
      }

LABEL_393:
      v155 = 1440;
    }

    else
    {
      v150 = 0;
      v149 = 24;
      if (!v147)
      {
        goto LABEL_391;
      }

LABEL_385:
      *v214 = v149;
      *&v214[2] = v149;
      v151 = v147[1];
      v152 = &v248 + 6 * v150;
      v152[2] = v151[1];
      *(v152 + 6) = *(v151 + 4);
      v153 = *v151;
      *v152 = 720362;
      v152[1] = v153;
      v197 = *v147;
      free(v147);
      v154 = v213;
      if (*(v50 + 6))
      {
        goto LABEL_393;
      }

LABEL_392:
      if (*(v50 + 8))
      {
        goto LABEL_393;
      }

      v155 = 1440;
      if (!*(v50 + 10))
      {
        v155 = 8940;
      }
    }

    v156 = PutResourceRecordTTLWithLimit(v50, v195, (v50 + 10), &v212[8], v154, v189 + v155);
    if (v156 && v197)
    {
      v156 = AddTSRROptsToMessage(&v197, v50, v195 + 9, v156, v1 + 37912);
    }

    if (v156)
    {
      goto LABEL_430;
    }

    v157 = v50;
    v158 = *(v50 + 6);
    v159 = *(v157 + 8);
    v160 = *(v157 + 10);
    v161 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v162 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v162 = 1;
    }

    v163 = v162;
    if (v159 + v158 + v160 != 1)
    {
      if (v163)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_429;
        }

        if (v190)
        {
          v168 = "TRACER";
        }

        else
        {
          v168 = "";
        }
      }

      else
      {
        v161 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_429;
        }

        if (v190)
        {
          v168 = "TRACER";
        }

        else
        {
          v168 = "";
        }
      }

      v169 = v191;
      v193 = *(v194 + 4);
      GetRRDisplayString_rdb(&v212[8], v218 + 2, v183);
      *buf = 136316930;
      *v199 = "";
      *&v199[8] = 2080;
      *&v199[10] = v168;
      v1 = a1;
      v200 = 1024;
      v201 = v169;
      v202 = 1024;
      v203 = v193;
      v204 = 1024;
      v205 = v158;
      v50 = v194;
      v206 = 1024;
      v207 = v159;
      v208 = 1024;
      v209 = v160;
      v210 = 2080;
      v211 = v183;
      v166 = v161;
      v167 = "SendResponses: How did we fail to have space for %s %s TSR(%d) OPT record (%d/%d/%d/%d) %s";
      goto LABEL_428;
    }

    if (!v163)
    {
      v161 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_429;
      }

      if (v190)
      {
        v164 = "TRACER";
      }

      else
      {
        v164 = "";
      }

LABEL_410:
      v165 = v191;
      v192 = *(v194 + 4);
      GetRRDisplayString_rdb(&v212[8], v218 + 2, v183);
      *buf = 136316930;
      *v199 = "";
      *&v199[8] = 2080;
      *&v199[10] = v164;
      v1 = a1;
      v200 = 1024;
      v201 = v165;
      v202 = 1024;
      v203 = v192;
      v204 = 1024;
      v205 = v158;
      v50 = v194;
      v206 = 1024;
      v207 = v159;
      v208 = 1024;
      v209 = v160;
      v210 = 2080;
      v211 = v183;
      v166 = v161;
      v167 = "SendResponses: No space in packet for %s %s TSR(%d) OPT record (%d/%d/%d/%d) %s";
LABEL_428:
      _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_ERROR, v167, buf, 0x3Eu);
      v156 = v195;
      goto LABEL_430;
    }

    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
    {
      if (v190)
      {
        v164 = "TRACER";
      }

      else
      {
        v164 = "";
      }

      goto LABEL_410;
    }

LABEL_429:
    v50 = v194;
    v156 = v195;
LABEL_430:
    v195 = v156;
LABEL_431:
    if (*(v49 + 17))
    {
      mDNSSendDNSMessage(v1, v50, v195, v49[444], 0, 0, AllDNSLinkGroup_v4, 0xE914u, 0, 0);
    }

    if (*(v49 + 18))
    {
      mDNSSendDNSMessage(v1, v50, v195, v49[444], 0, 0, &AllDNSLinkGroup_v6, 0xE914u, 0, 0);
    }

    if (!*(v1 + 84) && !*(v1 + 76))
    {
      v170 = *(v1 + 64) + 100;
      if (v170 <= 1)
      {
        v170 = 1;
      }

      *(v1 + 84) = v170;
    }

    if (++v187 >= 1000)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendResponses exceeded loop limit %d: giving up", v187);
      break;
    }

LABEL_441:
    v171 = v197;
    if (v197)
    {
      do
      {
        v172 = *v171;
        free(v171);
        v171 = v172;
      }

      while (v172);
    }

    v1 = a1;
  }

  while (v49);
LABEL_446:
  v173 = *(v1 + 12640);
  if (v173)
  {
    v174 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v173 + 8), (*(v173 + 48) + 4), (v1 + 47032));
    LogMsgWithLevel(v174, OS_LOG_TYPE_DEFAULT, "SendResponses ERROR m->CurrentRecord already set %s", (v1 + 47032));
  }

  v175 = *(v1 + 12616);
  *(v1 + 12640) = v175;
  if (v175)
  {
    v176 = (v1 + 47032);
    while (2)
    {
      *(v1 + 12640) = *v175;
      v177 = *(v175 + 224);
      if (!v177)
      {
        goto LABEL_462;
      }

      if ((*(v175 + 172) & 0xFFFFFFFE) != 4)
      {
        v178 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v179 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v179 = 1;
        }

        if (v179)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
          {
            goto LABEL_460;
          }
        }

        else
        {
          v178 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
          {
LABEL_460:
            v181 = *(v175 + 8);
            v182 = *(v175 + 32);
            GetRRDisplayString_rdb((v175 + 8), (*(v175 + 48) + 4), v176);
            *v212 = 67110147;
            *&v212[4] = v177;
            *&v212[8] = 1024;
            *&v212[10] = v182;
            *&v212[14] = 1024;
            v213 = v181;
            v1 = a1;
            strcpy(v214, "p\bhash");
            v214[7] = 0;
            *&v214[8] = 0;
            v215 = 2085;
            v216 = v176;
            _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_INFO, "SendResponses: No active interface %d to send: %d %02X %{sensitive, mask.hash}s", v212, 0x28u);
          }
        }
      }

      *(v175 + 224) = 0;
LABEL_462:
      if (*(v175 + 208) || *(v175 + 8) == 1)
      {
        if (*(v175 + 304))
        {
          CompleteRDataUpdate(v1, v175);
        }

        if (*(v175 + 8) == 1 && !*(v175 + 191))
        {
          if (*(v175 + 32) || *(v175 + 122) || IsLocalDomain(*(v175 + 40)))
          {
            CompleteDeregistration(v1, v175);
          }
        }

        else
        {
          *(v175 + 208) = 0;
          *(v175 + 195) = 0;
          *(v175 + 232) = 0;
          *(v175 + 240) = 0;
          *(v175 + 248) = 0;
        }
      }

      v175 = *(v1 + 12640);
      if (!v175)
      {
        return;
      }

      continue;
    }
  }
}

void AnswerAllLocalQuestionsWithLocalAuthRecord(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[26];
  if (v6)
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
        goto LABEL_24;
      }

      v9 = v6 + 376;
      v10 = (v6 + 376);
      while (1)
      {
        if (!v10 || (v11 = *v10, v11 > 0x3F))
        {
LABEL_13:
          v12 = 257;
          goto LABEL_23;
        }

        if (!*v10)
        {
          break;
        }

        v10 += v11 + 1;
        if (&v10[-v9] >= 256)
        {
          goto LABEL_13;
        }
      }

      v12 = (v10 - v9 + 1);
      goto LABEL_23;
    }

    v7 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v6 + 376;
      v15 = (v6 + 376);
      while (1)
      {
        if (!v15 || (v16 = *v15, v16 > 0x3F))
        {
LABEL_20:
          v12 = 257;
          goto LABEL_23;
        }

        if (!*v15)
        {
          break;
        }

        v15 += v16 + 1;
        if (&v15[-v14] >= 256)
        {
          goto LABEL_20;
        }
      }

      v12 = (v15 - v14 + 1);
LABEL_23:
      v17 = DNSTypeName(*(v6 + 342));
      v22 = 141558787;
      v23 = 1752392040;
      v24 = 1040;
      v25 = v12;
      v26 = 2101;
      v27 = v6 + 376;
      v28 = 2082;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AnswerAllLocalQuestionsWithLocalAuthRecord ERROR m->CurrentQuestion already set: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", &v22, 0x26u);
    }
  }

LABEL_24:
  v18 = a1[27];
  a1[26] = v18;
  if (v18)
  {
    while (1)
    {
      if (v18 == a1[28])
      {
        goto LABEL_34;
      }

      if (*(a2 + 172) <= 3u)
      {
        break;
      }

      if (LocalOnlyRecordAnswersQuestion(a2, v18))
      {
        goto LABEL_30;
      }

LABEL_31:
      v19 = a1[26];
      if (v19 == v18)
      {
        v19 = *(v18 + 8);
        a1[26] = v19;
      }

      v18 = v19;
      if (!v19)
      {
        goto LABEL_34;
      }
    }

    if (!RecordAnswersQuestion(a2 + 8, 1, v18))
    {
      goto LABEL_31;
    }

LABEL_30:
    AnswerLocalQuestionWithLocalAuthRecord(a1, a2, a3);
    goto LABEL_31;
  }

LABEL_34:
  a1[26] = 0;
  if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
  {
    v20 = a1[24];
    a1[26] = v20;
    if (v20)
    {
      while (1)
      {
        if (v20 == a1[25])
        {
          goto LABEL_45;
        }

        if (*(a2 + 172) <= 3u)
        {
          break;
        }

        if (LocalOnlyRecordAnswersQuestion(a2, v20))
        {
          goto LABEL_41;
        }

LABEL_42:
        v21 = a1[26];
        if (v21 == v20)
        {
          v21 = *(v20 + 8);
          a1[26] = v21;
        }

        v20 = v21;
        if (!v21)
        {
          goto LABEL_45;
        }
      }

      if (!RecordAnswersQuestion(a2 + 8, 1, v20))
      {
        goto LABEL_42;
      }

LABEL_41:
      AnswerLocalQuestionWithLocalAuthRecord(a1, a2, a3);
      goto LABEL_42;
    }

LABEL_45:
    a1[26] = 0;
  }
}

void *read_rr_from_ipc_msg(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = v6 + 1;
  if (v6)
  {
    v9 = v8 > v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
LABEL_12:
    *(a1 + 80) = 0;
    bzero(&v62, 0x3F0uLL);
    LODWORD(v24) = 0;
LABEL_13:
    v13 = 0;
    LOWORD(v14) = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v61 = 0;
    goto LABEL_14;
  }

  v11 = (v6 + 2);
  v10 = bswap32(*v6);
  *(a1 + 80) = v8;
  if (v6 == -4 || v11 > v7)
  {
    goto LABEL_12;
  }

  LODWORD(v24) = bswap32(v6[1]);
  *(a1 + 80) = v11;
  v25 = &v61;
  bzero(&v61, 0x3F1uLL);
  if (!v11)
  {
    goto LABEL_13;
  }

  do
  {
    if (v11 >= v7 || v25 >= v63)
    {
      v13 = 0;
      LOWORD(v14) = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v25[-(v25 == v63)] = 0;
      *(a1 + 80) = 0;
      goto LABEL_14;
    }

    v26 = (v11 + 1);
    *(a1 + 80) = v11 + 1;
    v27 = *v11;
    *v25++ = v27;
    ++v11;
  }

  while (v27);
  v16 = 0;
  LOWORD(v14) = 0;
  v13 = 1;
  if (!v26 || (v26 + 1) > v7)
  {
    v15 = 0;
LABEL_97:
    v17 = 0;
    goto LABEL_14;
  }

  v16 = 0;
  LOWORD(v14) = 0;
  v28 = v26 + 2;
  v15 = bswap32(*v26) >> 16;
  *(a1 + 80) = v26 + 1;
  v13 = 1;
  if (v26 == -2 || v28 > v7)
  {
    goto LABEL_97;
  }

  v17 = 0;
  v16 = 0;
  v14 = bswap32(v26[1]) >> 16;
  *(a1 + 80) = v28;
  v13 = 1;
  if (v26 != -4 && (v26 + 3) <= v7)
  {
    v17 = bswap32(v26[2]) >> 16;
    v13 = 1;
    v16 = (v26 + 3);
  }

LABEL_14:
  v18 = &v16[v17];
  if (v18 <= v7)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  if (v18 > v7 || v16 == 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = &v16[v17];
  }

  *(a1 + 80) = v21;
  v22 = 0;
  if (a2)
  {
    v23 = 0;
    if (v21 && (v21 + 1) <= v7)
    {
      v22 = bswap32(*v21);
      v23 = v21 + 1;
    }

    *(a1 + 80) = v23;
    v21 = v23;
  }

  *(a1 + 248) = v10;
  *(a1 + 252) = v24;
  if ((v13 & 1) == 0)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: read_rr_from_ipc_msg - get_string");
    return 0;
  }

  if (!v21)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error reading Resource Record from client");
    return 0;
  }

  if (a3 && (v10 & 0x830) == 0)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: Bad resource record flags (must be one of either kDNSServiceFlagsShared, kDNSServiceFlagsUnique or kDNSServiceFlagsKnownUnique)");
    return 0;
  }

  v50 = v15;
  v31 = mDNSPlatformInterfaceIDfromInterfaceIndex(v24);
  if (v24)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 0;
  }

  if (v32)
  {
    v24 = v24;
  }

  else
  {
    v24 = v31;
  }

  if (v17 <= 0x214)
  {
    v33 = 532;
  }

  else
  {
    v33 = v17;
  }

  result = malloc_type_calloc(1uLL, v33 + 912, 0xB784FAAAuLL);
  if (result)
  {
    v29 = result;
    if (v24 == -2)
    {
      v34 = 4;
    }

    else
    {
      v34 = 5;
      if (v24 != -5 && v24 != -3)
      {
        v35 = (v10 & 0x20000) != 0 && v24 == 0;
        v36 = !v35;
        v37 = (v10 & 0x100000) == 0 || v36;
        v34 = v37 ? 1 : 3;
        if (v36)
        {
          if ((v10 & 0x100000) != 0 && v24 == 0)
          {
            v34 = 2;
          }

          else
          {
            v34 = 0;
          }
        }
      }
    }

    if ((v10 & 0x800) != 0)
    {
      v39 = 32;
    }

    else
    {
      v39 = 2;
    }

    if ((v10 & 0x10) != 0)
    {
      v40 = 8;
    }

    else
    {
      v40 = v39;
    }

    mDNS_SetupResourceRecord(result, 0, v24, v50, 0, v40, v34, 0, 0);
    *(v29 + 652) = 0;
    if (AppendDNSNameString(v29 + 652, &v61))
    {
      if ((v10 & 0x200) != 0)
      {
        *(v29 + 121) = 1;
      }

      *(v29 + 7) = v14;
      *(v29 + 10) = v17;
      **(v29 + 6) = v33;
      if (SetRData(0, v19, &v19[v17], v29 + 8, v17))
      {
        if (a2)
        {
          *(v29 + 4) = v22;
        }

        *(v29 + 6) = DomainNameHashValue(*(v29 + 5));
        SetNewRData(v29 + 8, 0, 0);
        return v29;
      }

      v41 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          v42 = *(a1 + 200);
          v43 = *(v29 + 5);
          if (v43)
          {
            v48 = *(v29 + 5);
            v45 = v50;
            while (1)
            {
              if (!v48 || (v49 = *v48, v49 > 0x3F))
              {
LABEL_115:
                v47 = 257;
                goto LABEL_120;
              }

              if (!*v48)
              {
                break;
              }

              v48 += v49 + 1;
              if (&v48[-v43] >= 256)
              {
                goto LABEL_115;
              }
            }

            v47 = (v48 - v43 + 1);
          }

          else
          {
            v47 = 0;
            v45 = v50;
          }

          goto LABEL_120;
        }
      }

      else
      {
        v41 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          v42 = *(a1 + 200);
          v43 = *(v29 + 5);
          if (v43)
          {
            v44 = *(v29 + 5);
            v45 = v50;
            while (1)
            {
              if (!v44 || (v46 = *v44, v46 > 0x3F))
              {
LABEL_107:
                v47 = 257;
                goto LABEL_120;
              }

              if (!*v44)
              {
                break;
              }

              v44 += v46 + 1;
              if (&v44[-v43] >= 256)
              {
                goto LABEL_107;
              }
            }

            v47 = (v44 - v43 + 1);
          }

          else
          {
            v47 = 0;
            v45 = v50;
          }

LABEL_120:
          *buf = 67110147;
          v52 = v42;
          v53 = 2160;
          v54 = 1752392040;
          v55 = 1040;
          v56 = v47;
          v57 = 2101;
          v58 = v43;
          v59 = 2082;
          v60 = DNSTypeName(v45);
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[R%u] read_rr_from_ipc_msg: SetRData failed for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x2Cu);
        }
      }
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: bad name: %s", &v61);
    }

    free(v29);
    return 0;
  }

  __break(1u);
  return result;
}

void regrecord_callback(uint64_t **a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 112);
  if (!v6)
  {
    if (a3 != -65792)
    {
      if (!a3)
      {
        v19 = mDNSLogCategory_mDNS;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v20 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        else
        {
          v19 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }
        }

        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), a1 + 47032);
        *&__n[3] = 141558275;
        *v132 = 1752392040;
        *&v132[8] = 2085;
        v133 = a1 + 5879;
        v37 = "Error: regrecord_callback: successful registration of orphaned record %{sensitive, mask.hash}s";
        v38 = v19;
        v39 = 22;
LABEL_165:
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v37, &__n[3], v39);
        return;
      }

      v21 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v22 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          *&__n[3] = 67109120;
          *v132 = a3;
LABEL_49:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "regrecord_callback: error %d received after parent termination", &__n[3], 8u);
        }
      }

      else
      {
        v21 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          *&__n[3] = 67109120;
          *v132 = a3;
          goto LABEL_49;
        }
      }
    }

    v41 = *(a2 + 48);
    if (v41 != (a2 + 908) && v41 != 0)
    {
      free(v41);
    }

    v43 = a2;
    goto LABEL_147;
  }

  v7 = *(v6 + 16);
  if (mDNS_LoggingEnabled != 1)
  {
    goto LABEL_130;
  }

  v8 = *(a2 + 32);
  v9 = v8 + 5;
  if (v8 + 5) < 6 && ((0x2Du >> v9))
  {
    LODWORD(v8) = dword_10010DF28[v9];
  }

  v10 = mDNS_DomainNameFNV1aHash(*(a2 + 40));
  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((v6 + 48), (v6 + 52));
  v12 = *(a2 + 20);
  if (shouldLogFullRequestInfo)
  {
    if (v12 >= 0x201)
    {
      v28 = malloc_type_malloc(v12, 0xF146835EuLL);
      if (!v28)
      {
        goto LABEL_179;
      }

      v13 = v28;
      v15 = *(a2 + 20);
      v14 = v28;
      if (*(a2 + 20))
      {
LABEL_9:
        *&__n[1] = 0;
        __n[0] = 0;
        RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a2 + 8, v14, v15, __n, &__n[1]);
        if (*&__n[1])
        {
          goto LABEL_128;
        }

        v17 = RDataBytesPointer;
        v129 = v10;
        if (__n[0] < 0x1FFuLL)
        {
          v18 = 0;
          v123 = word_1001789D0;
          v125 = 512;
LABEL_72:
          v49 = mDNSLogCategory_mDNS;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
            {
              v121 = v18;
              v55 = *(a2 + 40);
              if (v55)
              {
                v56 = *(a2 + 40);
                while (1)
                {
                  if (!v56 || (v57 = *v56, v57 > 0x3F))
                  {
LABEL_89:
                    v58 = 257;
                    goto LABEL_115;
                  }

                  if (!*v56)
                  {
                    break;
                  }

                  v56 += v57 + 1;
                  if (&v56[-v55] >= 256)
                  {
                    goto LABEL_89;
                  }
                }

                v58 = (v56 - v55 + 1);
              }

              else
              {
                v58 = 0;
              }

LABEL_115:
              v77 = v7[50];
              v78 = *(v6 + 56);
              v79 = *(a2 + 12);
              v80 = __n[0];
              v81 = __n[0] + 2;
              if (v81 <= v125)
              {
                v116 = *(v6 + 56);
                logb = *(a2 + 12);
                *v123 = __rev16(v79);
                v83 = v17;
                v127 = v58;
                v84 = v81;
                v113 = v77;
                memcpy(v123 + 1, v83, v80);
                v77 = v113;
                v78 = v116;
                v82 = v123;
                v79 = logb;
                v81 = v84;
                v58 = v127;
              }

              else
              {
                v82 = 0;
              }

              *&__n[3] = 67111939;
              *v132 = v77;
              *&v132[4] = 1024;
              *&v132[6] = v78;
              LOWORD(v133) = 1026;
              *(&v133 + 2) = a3;
              HIWORD(v133) = 1024;
              v134 = v8;
              v135 = 2160;
              *v136 = 1752392040;
              *&v136[8] = 1040;
              LODWORD(v137) = v58;
              WORD2(v137) = 2101;
              *(&v137 + 6) = v55;
              HIWORD(v137) = 1024;
              *v138 = v129;
              *&v138[4] = 1024;
              *&v138[6] = v79;
              v139 = 2160;
              v140 = 1752392040;
              v141 = 1040;
              v142 = v81;
              v143 = 2101;
              v144 = v82;
              v85 = v49;
              goto LABEL_124;
            }
          }

          else
          {
            v50 = mDNSLogCategory_mDNS_redacted;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              log = v50;
              v121 = v18;
              v51 = *(a2 + 40);
              if (v51)
              {
                v52 = *(a2 + 40);
                while (1)
                {
                  if (!v52 || (v53 = *v52, v53 > 0x3F))
                  {
LABEL_81:
                    v54 = 257;
                    goto LABEL_120;
                  }

                  if (!*v52)
                  {
                    break;
                  }

                  v52 += v53 + 1;
                  if (&v52[-v51] >= 256)
                  {
                    goto LABEL_81;
                  }
                }

                v54 = (v52 - v51 + 1);
              }

              else
              {
                v54 = 0;
              }

LABEL_120:
              v86 = v7[50];
              v87 = *(v6 + 56);
              v88 = *(a2 + 12);
              v89 = __n[0];
              v90 = __n[0] + 2;
              if (v90 <= v125)
              {
                v114 = v54;
                v117 = *(v6 + 56);
                *v123 = __rev16(v88);
                v92 = v17;
                v128 = v90;
                v93 = v86;
                memcpy(v123 + 1, v92, v89);
                v86 = v93;
                v54 = v114;
                v87 = v117;
                v91 = v123;
                v90 = v128;
              }

              else
              {
                v91 = 0;
              }

              *&__n[3] = 67111939;
              *v132 = v86;
              *&v132[4] = 1024;
              *&v132[6] = v87;
              LOWORD(v133) = 1026;
              *(&v133 + 2) = a3;
              HIWORD(v133) = 1024;
              v134 = v8;
              v135 = 2160;
              *v136 = 1752392040;
              *&v136[8] = 1040;
              LODWORD(v137) = v54;
              WORD2(v137) = 2101;
              *(&v137 + 6) = v51;
              HIWORD(v137) = 1024;
              *v138 = v129;
              *&v138[4] = 1024;
              *&v138[6] = v88;
              v139 = 2160;
              v140 = 1752392040;
              v141 = 1040;
              v142 = v90;
              v143 = 2101;
              v144 = v91;
              v85 = log;
LABEL_124:
              _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord Result -- event: %{public, mdnsresponder:reg_result}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__n[3], 0x5Au);
              v18 = v121;
            }
          }

          if (!v18)
          {
            goto LABEL_128;
          }

          v75 = v18;
          goto LABEL_127;
        }

        v125 = __n[0] + 2;
        v48 = malloc_type_malloc(__n[0] + 2, 0xF146835EuLL);
        if (v48)
        {
          v18 = v48;
          v123 = v48;
          goto LABEL_72;
        }

LABEL_179:
        __break(1u);
        return;
      }
    }

    else
    {
      v13 = 0;
      v14 = &word_1001787D0;
      v15 = 512;
      if (*(a2 + 20))
      {
        goto LABEL_9;
      }
    }

    v29 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }

      v30 = v7[50];
      v31 = *(v6 + 56);
      v32 = *(a2 + 40);
      if (v32)
      {
        v46 = *(a2 + 40);
        while (1)
        {
          if (!v46 || (v47 = *v46, v47 > 0x3F))
          {
LABEL_69:
            v35 = 257;
            goto LABEL_112;
          }

          if (!*v46)
          {
            break;
          }

          v46 += v47 + 1;
          if (&v46[-v32] >= 256)
          {
            goto LABEL_69;
          }
        }

        v35 = (v46 - v32 + 1);
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v29 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }

      v30 = v7[50];
      v31 = *(v6 + 56);
      v32 = *(a2 + 40);
      if (v32)
      {
        v33 = *(a2 + 40);
        while (1)
        {
          if (!v33 || (v34 = *v33, v34 > 0x3F))
          {
LABEL_44:
            v35 = 257;
            goto LABEL_112;
          }

          if (!*v33)
          {
            break;
          }

          v33 += v34 + 1;
          if (&v33[-v32] >= 256)
          {
            goto LABEL_44;
          }
        }

        v35 = (v33 - v32 + 1);
      }

      else
      {
        v35 = 0;
      }
    }

LABEL_112:
    v76 = *(a2 + 12);
    *&__n[3] = 67111171;
    *v132 = v30;
    *&v132[4] = 1024;
    *&v132[6] = v31;
    LOWORD(v133) = 1026;
    *(&v133 + 2) = a3;
    HIWORD(v133) = 1024;
    v134 = v8;
    v135 = 2160;
    *v136 = 1752392040;
    *&v136[8] = 1040;
    LODWORD(v137) = v35;
    WORD2(v137) = 2101;
    *(&v137 + 6) = v32;
    HIWORD(v137) = 1024;
    *v138 = v10;
    *&v138[4] = 1024;
    *&v138[6] = v76;
    v62 = "[R%u->Rec%u] DNSServiceRegisterRecord Result -- event: %{public, mdnsresponder:reg_result}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: <none>";
    v63 = v29;
    v64 = 64;
LABEL_113:
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, v62, &__n[3], v64);
    goto LABEL_128;
  }

  if (v12 < 0x201)
  {
    v13 = 0;
    v23 = &word_1001787D0;
    v24 = 512;
    if (*(a2 + 20))
    {
      goto LABEL_30;
    }

LABEL_58:
    v45 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }
    }

    else
    {
      v45 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }
    }

    v59 = v7[50];
    v60 = *(v6 + 56);
    v61 = *(a2 + 12);
    *&__n[3] = 67110400;
    *v132 = v59;
    *&v132[4] = 1024;
    *&v132[6] = v60;
    LOWORD(v133) = 1026;
    *(&v133 + 2) = a3;
    HIWORD(v133) = 1024;
    v134 = v8;
    v135 = 1024;
    *v136 = v10;
    *&v136[4] = 1024;
    *&v136[6] = v61;
    v62 = "[R%u->Rec%u] DNSServiceRegisterRecord Result -- event: %{public, mdnsresponder:reg_result}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
    v63 = v45;
    v64 = 38;
    goto LABEL_113;
  }

  v44 = malloc_type_malloc(v12, 0x4F3BED33uLL);
  if (!v44)
  {
    goto LABEL_179;
  }

  v13 = v44;
  v24 = *(a2 + 20);
  v23 = v44;
  if (!*(a2 + 20))
  {
    goto LABEL_58;
  }

LABEL_30:
  *&__n[1] = 0;
  __n[0] = 0;
  v25 = ResourceRecordGetRDataBytesPointer(a2 + 8, v23, v24, __n, &__n[1]);
  if (*&__n[1])
  {
    goto LABEL_128;
  }

  v26 = v25;
  v130 = v10;
  if (__n[0] >= 0x1FFuLL)
  {
    v27 = __n[0] + 2;
    v65 = malloc_type_malloc(__n[0] + 2, 0x4F3BED33uLL);
    if (!v65)
    {
      goto LABEL_179;
    }

    v124 = v65;
    v126 = v65;
  }

  else
  {
    v124 = word_1001789D0;
    v126 = 0;
    v27 = 512;
  }

  v66 = mDNSLogCategory_mDNS;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_108;
    }

    v67 = v7[50];
    v68 = *(v6 + 56);
    v69 = *(a2 + 12);
    v70 = __n[0];
    v71 = __n[0] + 2;
    if (v71 > v27)
    {
      v72 = 0;
      goto LABEL_107;
    }

LABEL_106:
    v72 = v124;
    *v124 = __rev16(v69);
    v73 = v26;
    v122 = v71;
    v74 = v69;
    v115 = v67;
    loga = v68;
    memcpy(v124 + 1, v73, v70);
    v67 = v115;
    v68 = loga;
    v69 = v74;
    v71 = v122;
    goto LABEL_107;
  }

  v66 = mDNSLogCategory_mDNS_redacted;
  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_108;
  }

  v67 = v7[50];
  v68 = *(v6 + 56);
  v69 = *(a2 + 12);
  v70 = __n[0];
  v71 = __n[0] + 2;
  if (v71 <= v27)
  {
    goto LABEL_106;
  }

  v72 = 0;
LABEL_107:
  *&__n[3] = 67111171;
  *v132 = v67;
  *&v132[4] = 1024;
  *&v132[6] = v68;
  LOWORD(v133) = 1026;
  *(&v133 + 2) = a3;
  HIWORD(v133) = 1024;
  v134 = v8;
  v135 = 1024;
  *v136 = v130;
  *&v136[4] = 1024;
  *&v136[6] = v69;
  LOWORD(v137) = 2160;
  *(&v137 + 2) = 1752392040;
  WORD5(v137) = 1040;
  HIDWORD(v137) = v71;
  *v138 = 2101;
  *&v138[2] = v72;
  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRegisterRecord Result -- event: %{public, mdnsresponder:reg_result}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__n[3], 0x40u);
LABEL_108:
  v75 = v126;
  if (v126)
  {
LABEL_127:
    free(v75);
  }

LABEL_128:
  if (v13)
  {
    free(v13);
  }

LABEL_130:
  if (a3 == -65792)
  {
    goto LABEL_137;
  }

  reply = create_reply(0x45, 12, v7);
  *(reply + 4) = *(v6 + 40);
  *(reply + 11) = 0;
  *(reply + 12) = bswap32(mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a2 + 32), 0));
  *(reply + 13) = bswap32(a3);
  append_reply(v7, reply);
  if (!a3)
  {
    if (!*(v6 + 60))
    {
      goto LABEL_169;
    }

    v104 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_169;
      }

      v109 = v7[50];
      *&__n[3] = 67109120;
      *v132 = v109;
    }

    else
    {
      v104 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_169;
      }

      v105 = v7[50];
      *&__n[3] = 67109120;
      *v132 = v105;
    }

    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "[R%u] regrecord_callback: external_advertise already set!", &__n[3], 8u);
LABEL_169:
    if (!callExternalHelpers(*(v6 + 32), (a2 + 652), v7[62]))
    {
      return;
    }

    v110 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v112 = v7[50];
        *&__n[3] = 67109120;
        *v132 = v112;
        goto LABEL_176;
      }
    }

    else
    {
      v110 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v111 = v7[50];
        *&__n[3] = 67109120;
        *v132 = v111;
LABEL_176:
        _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "[R%u] regrecord_callback: calling external_start_advertising_service", &__n[3], 8u);
      }
    }

    internal_start_advertising_service(a2 + 8, v7[62], v7[47]);
    *(v6 + 60) = 1;
    return;
  }

  if (a3 == -65542)
  {
    v95 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v108 = v7[50];
        *&__n[3] = 67109120;
        *v132 = v108;
        v37 = "[R%u] regrecord_callback: Callback with error code mStatus_BadStateErr - not freeing the record.";
        goto LABEL_164;
      }
    }

    else
    {
      v95 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v96 = v7[50];
        *&__n[3] = 67109120;
        *v132 = v96;
        v37 = "[R%u] regrecord_callback: Callback with error code mStatus_BadStateErr - not freeing the record.";
LABEL_164:
        v38 = v95;
        v39 = 8;
        goto LABEL_165;
      }
    }

    return;
  }

LABEL_137:
  v97 = v7 + 44;
  do
  {
    v98 = v97;
    v99 = *v97;
    v97 = (*v97 + 8);
    if (v99)
    {
      v100 = v99 == v6;
    }

    else
    {
      v100 = 1;
    }
  }

  while (!v100);
  if (v99)
  {
    *v98 = *v97;
    v101 = *(v6 + 24);
    if (v101)
    {
      free(v101);
    }

    v43 = v6;
LABEL_147:
    free(v43);
    return;
  }

  v95 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v102 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v102 = 1;
  }

  if (v102)
  {
    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
    {
      v103 = v7[50];
      *&__n[3] = 67109120;
      *v132 = v103;
      v37 = "[R%u] regrecord_callback - record not in list!";
      goto LABEL_164;
    }
  }

  else
  {
    v95 = mDNSLogCategory_mDNS_redacted;
    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v107 = v7[50];
      *&__n[3] = 67109120;
      *v132 = v107;
      v37 = "[R%u] regrecord_callback - record not in list!";
      goto LABEL_164;
    }
  }
}

_BYTE *StartGetZoneData(unsigned int *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = malloc_type_calloc(1uLL, 0x5F8uLL, 0x495F8AC1uLL);
  if (result)
  {
    v9 = result;
    v10 = a2;
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
        v12 = v10 - a2 + 1;
        if (v12 <= 0x100u)
        {
          memcpy(result, a2, v12);
          goto LABEL_11;
        }

        break;
      }

      v10 += v11 + 1;
    }

    while (v10 - a2 <= 255);
    *result = 0;
LABEL_11:
    *(v9 + 64) = 0;
    *(v9 + 33) = v9;
    v9[272] = 0;
    *(v9 + 264) = 0;
    v9[530] = 0;
    *(v9 + 786) = 0u;
    *(v9 + 801) = 0;
    *(v9 + 102) = a3;
    *(v9 + 103) = a4;
    *(v9 + 126) = v9;
    v13 = a1[12];
    v14 = a1[13] + 1;
    a1[13] = v14;
    mDNS_VerifyLockState("Drop Lock", 0, v13, v14, "StartGetZoneData", 1995);
    v15 = *(v9 + 33);
    v16 = v15;
    do
    {
      if (!v16)
      {
        break;
      }

      v17 = *v16;
      if (v17 > 0x3F)
      {
        break;
      }

      if (!*v16)
      {
        v18 = v16 - v15 + 1;
        if (v18 <= 0x100u)
        {
          memcpy(v9 + 1208, v15, v18);
          goto LABEL_20;
        }

        break;
      }

      v16 += v17 + 1;
    }

    while (v16 - v15 <= 255);
    v9[1208] = 0;
LABEL_20:
    GetZoneData_StartQuery(a1, v9, 6);
    mDNS_VerifyLockState("Reclaim Lock", 0, a1[12], a1[13]--, "StartGetZoneData", 1998);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GetZoneData_StartQuery(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = a3;
  if (a3 != 33)
  {
    goto LABEL_21;
  }

  v6 = *(a2 + 256);
  if (v6 == 2)
  {
    v7 = *(a2 + 808);
    v8 = "\f_dns-llq-tls\x04_tcp";
    v9 = "\b_dns-llq\x04_udp";
  }

  else if (v6 == 1)
  {
    v7 = *(a2 + 808);
    v8 = "\x0E_dns-query-tls\x04_tcp";
    v9 = "";
  }

  else
  {
    if (v6)
    {
      v10 = "";
      if (v6 == 3)
      {
        v10 = "\r_dns-push-tls\x04_tcp";
      }

      goto LABEL_13;
    }

    v7 = *(a2 + 808);
    v8 = "\x0F_dns-update-tls\x04_tcp";
    v9 = "\v_dns-update\x04_udp";
  }

  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

LABEL_13:
  v11 = v10;
  while (1)
  {
    if (!v11 || (v12 = *v11, v12 > 0x3F))
    {
LABEL_18:
      v13 = (a2 + 1208);
LABEL_19:
      *v13 = 0;
      goto LABEL_20;
    }

    if (!*v11)
    {
      break;
    }

    v11 += v12 + 1;
    if (v11 - v10 >= 256)
    {
      goto LABEL_18;
    }
  }

  v15 = v11 - v10 + 1;
  v13 = (a2 + 1208);
  if (v15 > 0x100u)
  {
    goto LABEL_19;
  }

  switch(v6)
  {
    case 2:
      v16 = *(a2 + 808);
      v17 = "\f_dns-llq-tls\x04_tcp";
      v18 = "\b_dns-llq\x04_udp";
      goto LABEL_31;
    case 1:
      v16 = *(a2 + 808);
      v17 = "\x0E_dns-query-tls\x04_tcp";
      v18 = "";
LABEL_31:
      v19 = v16 == 0;
      goto LABEL_33;
    case 0:
      v16 = *(a2 + 808);
      v17 = "\x0F_dns-update-tls\x04_tcp";
      v18 = "\v_dns-update\x04_udp";
      goto LABEL_31;
  }

  v17 = "";
  v18 = "\r_dns-push-tls\x04_tcp";
  v19 = v6 == 3;
LABEL_33:
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  memcpy((a2 + 1208), v20, v15);
LABEL_20:
  AppendDomainName(v13, (a2 + 272));
LABEL_21:
  *(a2 + 1044) = -1;
  *(a2 + 968) = 0;
  *(a2 + 1156) = 0;
  *(a2 + 1174) = v3;
  *(a2 + 1176) = 1;
  *(a2 + 1464) = 16777472;
  *(a2 + 1468) = 0;
  *(a2 + 1473) = 0;
  *(a2 + 1471) = 0;
  *(a2 + 1485) = 0;
  *(a2 + 1076) = getpid();
  *(a2 + 1080) = 0;
  *(a2 + 984) = GetZoneData_QuestionCallback;
  *(a2 + 1008) = a2;

  return mDNS_StartQuery(a1, a2 + 832);
}

void SetRecordRetry(uint64_t a1, uint64_t a2, uint32_t a3)
{
  v5 = *(a1 + 64);
  *(a2 + 284) = v5;
  v6 = *(a2 + 352);
  if (v6 && (v7 = *(a2 + 600), v7 <= 4))
  {
    v8 = v6 - v5;
    *(a2 + 600) = v7 + 1;
    if (v8 <= 300000)
    {
      *(a2 + 280) = 300000;
      if (mDNS_LoggingEnabled == 1)
      {
        v17 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v17, OS_LOG_TYPE_DEFAULT, "SetRecordRetry clamping to min refresh in %d of %d for %s");
      }
    }

    else
    {
      v9 = v8 / 0xAu;
      v10 = 7 * (v8 / 0xAu);
      if (!a3)
      {
        v11 = 1;
        do
        {
          v11 = (2 * v11) | 1;
        }

        while (v11 < v9);
        do
        {
          a3 = arc4random() & v11;
        }

        while (a3 > v9);
      }

      v12 = a3 + v10;
      if ((a3 + v10) <= 300000)
      {
        v12 = 300000;
      }

      *(a2 + 280) = v12;
      if (mDNS_LoggingEnabled == 1)
      {
        v13 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v13, OS_LOG_TYPE_DEFAULT, "SetRecordRetry refresh in %d of %d for %s");
      }
    }
  }

  else
  {
    *(a2 + 352) = 0;
    v14 = 3 * *(a2 + 280);
    if (v14 <= 1000)
    {
      v14 = 1000;
    }

    if (v14 >= 900000)
    {
      v15 = 900000;
    }

    else
    {
      v15 = v14;
    }

    *(a2 + 280) = v15;
    if (mDNS_LoggingEnabled == 1)
    {
      v16 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "SetRecordRetry retry in %d ms for %s");
    }
  }
}

unsigned int *GetZoneData_QuestionCallback(unsigned int *result, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return result;
  }

  v6 = result;
  v7 = *(a2 + 176);
  if ((a4 == 4 || a4 == 2) && !*(a3 + 12))
  {
    return result;
  }

  v8 = *(a3 + 4);
  if (v8 != *(a2 + 342))
  {
    return result;
  }

  if (v8 == 1)
  {
    mDNS_StopQuery(result, a2);
    if (*(a2 + 212) != -1)
    {
      v19 = mDNSLogCategory_Default;
      v20 = DNSTypeName(*(a2 + 342));
      LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "GetZoneData_QuestionCallback: Question %##s (%s) ThisQInterval %d not -1", a2 + 376, v20, *(a2 + 212));
    }

    *(v7 + 197) = 4;
    if (*(a3 + 12) == 4)
    {
      v21 = (*(a3 + 40) + 4);
    }

    else
    {
      v21 = &zerov4Addr;
    }

    *(v7 + 198) = *v21;
LABEL_46:
    v22 = *(v7 + 102);
    v23 = v6;
    v24 = 0;
    goto LABEL_47;
  }

  if (v8 != 33)
  {
    if (v8 != 6)
    {
      return result;
    }

    mDNS_StopQuery(result, a2);
    if (*(a2 + 212) != -1)
    {
      v9 = mDNSLogCategory_Default;
      v10 = DNSTypeName(*(a2 + 342));
      LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "GetZoneData_QuestionCallback: Question %##s (%s) ThisQInterval %d not -1", a2 + 376, v10, *(a2 + 212));
    }

    if (*(a3 + 12))
    {
      v11 = *(a3 + 32);
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
          v33 = v12 - v11 + 1;
          if (v33 <= 0x100u)
          {
            memcpy(v7 + 272, v11, v33);
            goto LABEL_59;
          }

          break;
        }

        v12 += v13 + 1;
      }

      while (v12 - v11 <= 255);
      v7[272] = 0;
LABEL_59:
      *(v7 + 264) = *(a3 + 6);
      v34 = v6;
      v35 = v7;
      v36 = 33;
LABEL_71:

      return GetZoneData_StartQuery(v34, v35, v36);
    }

    v25 = *(v7 + 33);
    if (*v25)
    {
      v26 = &v25[*v25 + 1];
      *(v7 + 33) = v26;
      v27 = v26;
      do
      {
        if (!v27)
        {
          break;
        }

        v28 = *v27;
        if (v28 > 0x3F)
        {
          break;
        }

        if (!*v27)
        {
          v38 = v27 - v26 + 1;
          if (v38 <= 0x100u)
          {
            memcpy(v7 + 1208, v26, v38);
            goto LABEL_70;
          }

          break;
        }

        v27 += v28 + 1;
      }

      while (v27 - v26 <= 255);
      v7[1208] = 0;
LABEL_70:
      v34 = v6;
      v35 = v7;
      v36 = 6;
      goto LABEL_71;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetZoneData recursed to root label of %##s without finding SOA", v7);
    }

    v22 = *(v7 + 102);
    v24 = 4294901758;
    v23 = v6;
    goto LABEL_47;
  }

  mDNS_StopQuery(result, a2);
  if (*(a2 + 212) != -1)
  {
    v14 = mDNSLogCategory_Default;
    v15 = DNSTypeName(*(a2 + 342));
    LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "GetZoneData_QuestionCallback: Question %##s (%s) ThisQInterval %d not -1", a2 + 376, v15, *(a2 + 212));
  }

  if (*(a3 + 12))
  {
    v16 = (*(a3 + 40) + 10);
    v17 = v16;
    do
    {
      if (!v17)
      {
        break;
      }

      v18 = *v17;
      if (v18 > 0x3F)
      {
        break;
      }

      if (!*v17)
      {
        v29 = v17 - v16 + 1;
        if (v29 <= 0x100u)
        {
          memcpy(v7 + 530, v16, v29);
          goto LABEL_45;
        }

        break;
      }

      v17 += v18 + 1;
    }

    while (v17 - v16 <= 255);
    v7[530] = 0;
LABEL_45:
    *(v7 + 393) = *(*(a3 + 40) + 8);
    if (*(v7 + 64) != 3)
    {
      v30 = v7 + 530;
      v31 = v7 + 530;
      do
      {
        if (!v31)
        {
          break;
        }

        v32 = *v31;
        if (v32 > 0x3F)
        {
          break;
        }

        if (!*v31)
        {
          v37 = v31 - v30 + 1;
          if (v37 <= 0x100u)
          {
            memcpy(v7 + 1208, v30, v37);
            goto LABEL_66;
          }

          break;
        }

        v31 += v32 + 1;
      }

      while (v31 - v30 <= 255);
      v7[1208] = 0;
LABEL_66:
      v34 = v6;
      v35 = v7;
      v36 = 1;
      goto LABEL_71;
    }

    goto LABEL_46;
  }

  v7[530] = 0;
  *(v7 + 786) = 0u;
  *(v7 + 801) = 0;
  v22 = *(v7 + 102);
  v23 = v6;
  v24 = 4294901742;
LABEL_47:

  return v22(v23, v24, v7);
}

void RecordRegistrationGotZoneData(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    v20 = mDNSLogCategory_Default;

    LogMsgWithLevel(v20, OS_LOG_TYPE_DEFAULT, "ERROR: RecordRegistrationGotZoneData invoked with NULL result and no error");
    return;
  }

  v6 = *(a3 + 824);
  v7 = *(v6 + 376);
  if (v7 != a3)
  {
    v8 = mDNSLogCategory_Default;
    v9 = *(v6 + 40);
    v10 = DNSTypeName(*(v6 + 12));
    LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: nta (%p) != zoneData (%p)  %##s (%s)", v7, a3, v9, v10);
  }

  mDNS_VerifyLockState("Check Lock", 0, *(a1 + 48), *(a1 + 52), "RecordRegistrationGotZoneData", 4148);
  v11 = (a1 + 12616);
  do
  {
    v11 = *v11;
    if (v11)
    {
      v12 = v11 == v6;
    }

    else
    {
      v12 = 1;
    }
  }

  while (!v12);
  if (!v11)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData - RR no longer in list.  Discarding.", v42, v43, v44);
    goto LABEL_49;
  }

  if (a2 == -65538)
  {
LABEL_49:
    CancelGetZoneData(a1, *(v6 + 376));
    *(v6 + 376) = 0;
    return;
  }

  if (a2)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: error %d");
    goto LABEL_49;
  }

  if (*(v6 + 14) != *(a3 + 528))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: New resource record's class (%d) does not match zone class (%d)");
    goto LABEL_49;
  }

  v13 = *(a3 + 272);
  if (!*(a3 + 272))
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: No name server found claiming responsibility for %##s!", *(v6 + 40), v43, v44);
    }

    goto LABEL_49;
  }

  v14 = *(v6 + 40);
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    v17 = *(v6 + 40);
    do
    {
      ++v16;
      v18 = v17 + v15;
      v19 = *(v18 + 1);
      v17 = v18 + 1;
      v15 = v19;
    }

    while (v19);
  }

  else
  {
    v16 = 0;
  }

  v21 = 0;
  v22 = a3 + 272;
  do
  {
    ++v21;
    v23 = v22 + v13;
    v24 = *(v23 + 1);
    v22 = v23 + 1;
    v13 = v24;
  }

  while (v24);
  v25 = v16 - v21;
  if (v16 < v21)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: Zone %##s is longer than %##s", a3 + 272, v14, v44);
    goto LABEL_49;
  }

  if (v25 >= 1)
  {
    v26 = v25 + 1;
    do
    {
      if (!*v14)
      {
        break;
      }

      v14 += *v14 + 1;
      --v26;
    }

    while (v26 > 1);
  }

  *(v6 + 368) = v14;
  if (!SameDomainNameBytes(v14, (a3 + 272)))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: Zone %##s does not match %##s for %##s", *(v6 + 368), a3 + 272, *(v6 + 40));
    goto LABEL_49;
  }

  if (!*(a3 + 786))
  {
    goto LABEL_47;
  }

  v27 = *(a3 + 788);
  if (v27 == 6)
  {
    if (!(*(a3 + 796) | *(a3 + 792) | *(a3 + 800) | *(a3 + 804)))
    {
      goto LABEL_47;
    }
  }

  else if (v27 == 4 && !*(a3 + 792))
  {
    goto LABEL_47;
  }

  if (!*(a3 + 530))
  {
LABEL_47:
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: No _dns-update._udp service found for %##s!", *(v6 + 40), v43, v44);
    }

    goto LABEL_49;
  }

  *(v6 + 356) = *(a3 + 808);
  if (*(v6 + 344) == 3)
  {
    mDNS_Lock_(a1, "RecordRegistrationGotZoneData", 4222);
    uDNS_DeregisterRecord(a1, v6);
    v28 = a1;
    v29 = 4224;
LABEL_94:

    mDNS_Unlock_(v28, "RecordRegistrationGotZoneData", v29);
    return;
  }

  if (*(v6 + 12) != 33)
  {
LABEL_86:
    mDNS_Lock_(a1, "RecordRegistrationGotZoneData", 4267);
    if (*(v6 + 604))
    {
      v39 = *(a1 + 64);
    }

    else
    {
      *(v6 + 280) = 1000;
      v39 = *(a1 + 64);
      *(v6 + 284) = v39 - 1000;
    }

    if (IsRecordMergeable(a1, v6, v39 + 1000))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v40 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((v6 + 8), (*(v6 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v40, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: Delayed registration for %s", (a1 + 47032));
      }

      *(v6 + 284) += 1000;
    }

    v28 = a1;
    v29 = 4285;
    goto LABEL_94;
  }

  mDNS_Lock_(a1, "RecordRegistrationGotZoneData", 4233);
  ServiceTarget = GetServiceTarget(a1, v6);
  mDNS_Unlock_(a1, "RecordRegistrationGotZoneData", 4235);
  if (!ServiceTarget || !*ServiceTarget)
  {
    v33 = 0;
    v34 = *(v6 + 12);
    if (v34 <= 0x27)
    {
      if (((1 << v34) & 0x1000248000) != 0)
      {
        v35 = 6;
        goto LABEL_67;
      }

      if (((1 << v34) & 0x8000001024) != 0)
      {
        v35 = 4;
LABEL_67:
        v33 = (*(v6 + 48) + v35);
        goto LABEL_68;
      }

      if (v34 == 33)
      {
        v35 = 10;
        goto LABEL_67;
      }
    }

LABEL_68:
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData - no target for %##s", *(v6 + 40));
    }

    if (v33)
    {
      *v33 = 0;
    }

    *(v6 + 20) = 0;
    *(v6 + 344) = 8;
    goto LABEL_49;
  }

  if (*(v6 + 12) != 33)
  {
    goto LABEL_86;
  }

  v31 = *(v6 + 48);
  if (!*(v31 + 8))
  {
    goto LABEL_86;
  }

  v32 = *(a1 + 12720);
  if (v32 != 10)
  {
    if (v32 == 172)
    {
      if ((*(a1 + 12721) & 0xF0) != 0x10)
      {
        goto LABEL_86;
      }
    }

    else if (v32 != 192 || *(a1 + 12721) != 168)
    {
      goto LABEL_86;
    }
  }

  v36 = *(v6 + 376);
  if (!v36)
  {
    goto LABEL_86;
  }

  if (*(v36 + 788) == 4)
  {
    v37 = *(v36 + 792);
    if (v37 == 10)
    {
      goto LABEL_86;
    }

    if (v37 == 172)
    {
      if ((*(v36 + 793) & 0xF0) == 0x10)
      {
        goto LABEL_86;
      }
    }

    else if (v37 == 192 && *(v36 + 793) == 168)
    {
      goto LABEL_86;
    }
  }

  if (*(v6 + 120) != 2)
  {
    goto LABEL_86;
  }

  if (*(v6 + 584))
  {
    if (mDNS_LoggingEnabled)
    {
      v38 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v6 + 8), (v31 + 4), (a1 + 47032));
      LogMsgWithLevel(v38, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData: StartRecordNatMap for %s, state %d, context %p", (a1 + 47032), *(v6 + 344), *(v6 + 584));
    }

    goto LABEL_86;
  }

  if (mDNS_LoggingEnabled)
  {
    v41 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v6 + 8), (v31 + 4), (a1 + 47032));
    LogMsgWithLevel(v41, OS_LOG_TYPE_DEFAULT, "RecordRegistrationGotZoneData StartRecordNatMap %s", (a1 + 47032));
  }

  *(v6 + 344) = 6;

  StartRecordNatMap(a1, v6);
}

uint64_t FindIdenticalRecordInCache(uint64_t a1, uint64_t a2)
{
  v3 = CacheGroupForName(a1, *(a2 + 16), *(a2 + 32));
  if (!v3)
  {
    return 0;
  }

  for (i = v3[2]; i; i = *i)
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      v6 = *(i + 32);
    }

    else
    {
      v5 = *(a2 + 48);
      if (v5)
      {
        v5 = *(v5 + 24);
      }

      v6 = *(i + 56);
      if (v6)
      {
        v6 = *(v6 + 24);
      }
    }

    if (v5 == v6 && resource_records_have_same_dnssec_rr_category(*(a2 + 56), *(i + 64)) && *(a2 + 4) == *(i + 12) && *(a2 + 6) == *(i + 14) && *(a2 + 12) == *(i + 20) && *(a2 + 20) == *(i + 28) && SameRDataBody(a2, (*(i + 48) + 4), SameDomainName))
    {
      break;
    }
  }

  return i;
}

void SysEventCallBack(int a1, uint64_t a2, unsigned int *a3)
{
  mDNS_Lock_(a3, "SysEventCallBack", 6891);
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v5 = recv(a1, &v10, 0x11CuLL, 0);
  v6 = mDNSLogCategory_State;
  if (v5 < 0)
  {
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SysEventCallBack error -- error: %{mdns:err}ld", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67240192;
      LODWORD(v9) = DWORD1(v11);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SysEventCallBack -- event: %{public, mdnsresponder:kev_dl_event}u", &v8, 8u);
    }

    if (DWORD1(v11) == 17 || DWORD1(v11) == 13)
    {
      SetNetworkChanged(2000);
    }
  }

  mDNS_Unlock_(a3, "SysEventCallBack", 6914);
}

uint64_t mDNS_PurgeCacheResourceRecord(unsigned int *a1, uint64_t a2)
{
  mDNS_VerifyLockState("Check Lock", 1, a1[12], a1[13], "mDNS_PurgeCacheResourceRecord", 6630);
  *(a2 + 80) = a1[16] - 60000;
  *(a2 + 108) = 4;
  *(a2 + 16) = 0;

  return SetNextCacheCheckTimeForRecord(a1, a2);
}

void DeadvertiseInterface(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a2 + 3552);
  if (AWDLInterfaceID)
  {
    v7 = AWDLInterfaceID == v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    if (WiFiAwareInterfaceID)
    {
      v8 = WiFiAwareInterfaceID == v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = !v8;
    if (a3 & 1) != 0 && (v9)
    {
      v9 = 1;
      goto LABEL_18;
    }
  }

  if (a3 & 2) == 0 || (v9)
  {
    goto LABEL_50;
  }

  v9 = 0;
LABEL_18:
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
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      v12 = "randomized";
      if ((a3 & 2) == 0)
      {
        v12 = "normal";
      }

      goto LABEL_30;
    }
  }

  else
  {
    v10 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      v12 = "randomized";
      if ((a3 & 2) == 0)
      {
        v12 = "normal";
      }

LABEL_30:
      v17 = 136446466;
      v18 = v12;
      v19 = 2082;
      v20 = a2 + 3606;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "DeadvertiseInterface: Deadvertising %{public}s hostname on interface %{public}s", &v17, 0x16u);
    }
  }

  v14 = *(a2 + 3552);
  if (v14 == AWDLInterfaceID || v14 == WiFiAwareInterfaceID)
  {
    if (!*(a2 + 32) && !*(a2 + 1208))
    {
      goto LABEL_42;
    }

    v15 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446210;
        v18 = (a2 + 3606);
        goto LABEL_41;
      }
    }

    else
    {
      v15 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446210;
        v18 = (a2 + 3606);
LABEL_41:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "D2D_stop_advertising_interface - ifname: %{public}s", &v17, 0xCu);
      }
    }

LABEL_42:
    if (*(a2 + 32))
    {
      internal_stop_advertising_service(a2 + 32, 0, 0);
    }

    if (*(a2 + 1208))
    {
      internal_stop_advertising_service(a2 + 1208, 0, 0);
    }
  }

  if (*(a2 + 32))
  {
    mDNS_Deregister_internal(a1, (a2 + 24), 0);
  }

  if (*(a2 + 1208))
  {
    mDNS_Deregister_internal(a1, (a2 + 1200), 0);
  }

LABEL_50:
  if ((a3 & 2) != 0 && v9)
  {
    v16 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_59;
      }

      v17 = 136446210;
      v18 = (a2 + 3606);
    }

    else
    {
      v16 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_59;
      }

      v17 = 136446210;
      v18 = (a2 + 3606);
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "DeadvertiseInterface: Deadvertising randomized hostname on interface %{public}s", &v17, 0xCu);
LABEL_59:
    if (*(a2 + 2384))
    {
      mDNS_Deregister_internal(a1, (a2 + 2376), 0);
    }
  }
}

void LNT_ClearState(uint64_t a1)
{
  v2 = *(a1 + 14808);
  if (v2)
  {
    mDNSPlatformTCPCloseConnection(v2);
    *(a1 + 14808) = 0;
  }

  v3 = *(a1 + 14920);
  if (v3)
  {
    mDNSPlatformTCPCloseConnection(v3);
    *(a1 + 14920) = 0;
  }

  *(a1 + 15034) = 0;
}

void ReleaseCacheGroup(uint64_t a1, void **a2)
{
  v4 = *a2;
  if ((*a2)[3] == *a2 + 2)
  {
    goto LABEL_12;
  }

  v5 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v6 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = 0;
    v7 = &v13;
  }

  else
  {
    v5 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = 0;
    v7 = &v12;
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ERROR: (*cp)->members == mDNSNULL but (*cp)->rrcache_tail != &(*cp)->members)", v7, 2u);
LABEL_12:
  v9 = *a2;
  v10 = (*a2)[4];
  if (v10 != *a2 + 5 && v10 != 0)
  {
    free(v10);
    v9 = *a2;
  }

  v9[4] = 0;
  *a2 = **a2;
  *v4 = *(a1 + 264);
  *(a1 + 264) = v4;
  --*(a1 + 244);
}

uint64_t AdvertiseHostname(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (!*(result + 12720) || *(a2 + 472))
  {
    goto LABEL_23;
  }

  v4 = (result + 12720);
  mDNS_SetupResourceRecord(a2 + 464, 0, 0, 1, 0x1194u, 0, 0, HostnameCallback, a2);
  v5 = (a2 + 208);
  v6 = (a2 + 208);
  do
  {
    if (!v6)
    {
      break;
    }

    v7 = *v6;
    if (v7 > 0x3F)
    {
      break;
    }

    if (!*v6)
    {
      v8 = v6 - v5 + 1;
      if (v8 <= 0x100u)
      {
        memcpy((a2 + 1116), v5, v8);
        goto LABEL_12;
      }

      break;
    }

    v6 += v7 + 1;
  }

  while (v6 - v5 <= 255);
  *(a2 + 1116) = 0;
LABEL_12:
  *(*(a2 + 512) + 4) = *v4;
  *(a2 + 808) = 4;
  v9 = *v4;
  if (v9 != 10)
  {
    if (v9 == 172)
    {
      if ((*(v3 + 12721) & 0xF0) != 0x10)
      {
LABEL_16:
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Advertising hostname %##s IPv4 %.4a", *(a2 + 504), v3 + 12720);
        }

        *(a2 + 472) = 32;
        result = mDNS_Register_internal(v3, a2 + 464);
        goto LABEL_23;
      }
    }

    else if (v9 != 192 || *(v3 + 12721) != 168)
    {
      goto LABEL_16;
    }
  }

  if (*(a2 + 200))
  {
    mDNS_StopNATOperation_internal(v3, a2 + 8);
  }

  *(a2 + 180) = 0;
  *(a2 + 182) = 0;
  *(a2 + 188) = 0;
  *(a2 + 192) = hostnameGetPublicAddressCallback;
  *(a2 + 200) = a2;
  result = mDNS_StartNATOperation_internal(v3, (a2 + 8));
LABEL_23:
  if (*(v3 + 12744) | *(v3 + 12740) | *(v3 + 12748) | *(v3 + 12752) && !*(a2 + 1648))
  {
    mDNS_SetupResourceRecord(a2 + 1640, 0, 0, 28, 0x1194u, 32, 0, HostnameCallback, a2);
    v10 = (a2 + 208);
    v11 = (a2 + 208);
    do
    {
      if (!v11)
      {
        break;
      }

      v12 = *v11;
      if (v12 > 0x3F)
      {
        break;
      }

      if (!*v11)
      {
        v13 = v11 - v10 + 1;
        if (v13 <= 0x100u)
        {
          memcpy((a2 + 2292), v10, v13);
          goto LABEL_35;
        }

        break;
      }

      v11 += v12 + 1;
    }

    while (v11 - v10 <= 255);
    *(a2 + 2292) = 0;
LABEL_35:
    *(*(a2 + 1688) + 4) = *(v3 + 12740);
    *(a2 + 1984) = 4;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Advertising hostname %##s IPv6 %.16a", *(a2 + 1680), v3 + 12740);
    }

    return mDNS_Register_internal(v3, a2 + 1640);
  }

  return result;
}

void CancelGetZoneData(uint64_t a1, char *a2)
{
  if (*(a2 + 261) != -1)
  {
    mDNS_StopQuery_internal(a1, (a2 + 832));
    if (*(a2 + 261) != -1)
    {
      v3 = mDNSLogCategory_Default;
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
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          v5 = a2 + 1208;
          v6 = a2 + 1208;
          while (1)
          {
            if (!v6 || (v7 = *v6, v7 > 0x3F))
            {
LABEL_14:
              v8 = 257;
              goto LABEL_24;
            }

            if (!*v6)
            {
              break;
            }

            v6 += v7 + 1;
            if (v6 - v5 >= 256)
            {
              goto LABEL_14;
            }
          }

          v8 = (v6 - v5 + 1);
          goto LABEL_24;
        }
      }

      else
      {
        v3 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v10 = a2 + 1208;
          v11 = a2 + 1208;
          while (1)
          {
            if (!v11 || (v12 = *v11, v12 > 0x3F))
            {
LABEL_21:
              v8 = 257;
              goto LABEL_24;
            }

            if (!*v11)
            {
              break;
            }

            v11 += v12 + 1;
            if (v11 - v10 >= 256)
            {
              goto LABEL_21;
            }
          }

          v8 = (v11 - v10 + 1);
LABEL_24:
          v13 = DNSTypeName(*(a2 + 587));
          v14 = *(a2 + 261);
          v15 = 141559043;
          v16 = 1752392040;
          v17 = 1040;
          v18 = v8;
          v19 = 2101;
          v20 = a2 + 1208;
          v21 = 2082;
          v22 = v13;
          v23 = 1024;
          v24 = v14;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CancelGetZoneData: Question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) ThisQInterval %d not -1", &v15, 0x2Cu);
        }
      }
    }
  }

  free(a2);
}

void *mDNSPlatformUDPSocket(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x91C8E7BFuLL);
  if (result)
  {
    v3 = result;
    *result = 0;
    result[1] = mDNSStorage;
    *(result + 4) = -1;
    *(result + 12) = -1;
    *(result + 88) = 0;
    v4 = -9999;
    LOWORD(v5) = a1;
    do
    {
      v6 = v4;
      if (!a1)
      {
        v5 = bswap32(arc4random() | 0xC000) >> 16;
      }

      v7 = SetupSocket(v3, v5, 2, v3);
      if (!v7)
      {
        v8 = SetupSocket(v3, v5, 30, v3);
        if (!v8)
        {
          return v3;
        }

        v7 = v8;
        close(*(v3 + 4));
        *(v3 + 4) = -1;
      }

      if (v7 != 48)
      {
        break;
      }

      if (a1)
      {
        break;
      }

      v4 = v6 + 1;
    }

    while (v6);
    if (a1 != 58900 || mDNS_LoggingEnabled)
    {
      v9 = mDNSLogCategory_Default;
      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "mDNSPlatformUDPSocket: SetupSocket %d failed error %d errno %d (%s)", bswap32(a1) >> 16, v7, v10, v12);
    }

    free(v3);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void uDNS_ReceiveMsg(uint64_t a1, unsigned __int16 *a2, unint64_t a3, unsigned int *a4, __int16 a5)
{
  v7 = a2[1] & 0xF8;
  if (v7 != 168)
  {
    if (v7 == 128)
    {
      for (i = *(a1 + 192); i; i = *(i + 8))
      {
        if ((a2[1] & 2) != 0 && *(i + 340) == *a2 && *(a1 + 64) - *(i + 208) <= 59999)
        {
          if (a4)
          {
            v11 = *(i + 112);
            if (v11)
            {
              DisposeTCPConn(v11);
              *(i + 112) = 0;
            }

            *(i + 112) = MakeTCPConn(a1, 0, 0, 0, a4, a5, 0, i, 0);
          }

          else
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveMsg: TCP DNS response had TC bit set: ignoring");
          }
        }
      }
    }

    return;
  }

  v12 = *(a2 + 3) & 0xF;
  v69 = 0;
  if (GetPktLease(a1, a2, a3, &v69))
  {
    v13 = v69;
  }

  else
  {
    v13 = 3600;
  }

  v65 = 1000 * v13 + *(a1 + 64);
  v66 = v13;
  v14 = 1000 * v13 / 10;
  v15 = 1;
  if (v14 >= 2)
  {
    do
    {
      v15 = (2 * v15) | 1;
    }

    while (v15 < v14);
  }

  do
  {
    v16 = arc4random() & v15;
  }

  while (v16 > v14);
  v17 = *(a1 + 12640);
  if (v17)
  {
    v18 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((v17 + 8), (*(v17 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v18, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveMsg ERROR m->CurrentRecord already set %s", (a1 + 47032));
  }

  v19 = *(a1 + 12616);
  *(a1 + 12640) = v19;
  if (v19)
  {
    v67 = (a1 + 47032);
    v20 = &unk_100178000;
    while (1)
    {
      v21 = *v19;
      *(a1 + 12640) = *v19;
      if (!*(v19 + 32))
      {
        break;
      }

LABEL_145:
      v19 = v21;
      if (!v21)
      {
        return;
      }
    }

    if (*(v19 + 122) || IsLocalDomain(*(v19 + 40)) || *(v19 + 358) != *a2)
    {
      goto LABEL_144;
    }

    v22 = 4294901742;
    v23 = *(v19 + 40);
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v64 = 0;
        v22 = 4294901748;
        goto LABEL_53;
      }

      if (v12 == 8)
      {
        LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "Reregister refused (NXRRSET): %##s", *(v19 + 40));
        goto LABEL_48;
      }

      if (v12 != 9)
      {
LABEL_44:
        LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "Update %##s failed with rcode %d", *(v19 + 40), v12);
        goto LABEL_52;
      }

      v24 = ParseTSIGError(a1, a2, a3, *(v19 + 40));
      if (!v24)
      {
        LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "Permission denied (NOAUTH): %##s", v23, v60);
LABEL_52:
        v64 = 0;
        v22 = 4294901759;
        goto LABEL_53;
      }
    }

    else
    {
      if (!v12)
      {
        v22 = 0;
        v64 = 1;
        if (v66 && *(v19 + 348))
        {
          if (*(v19 + 352) - v65 < 0 && *(v19 + 344) == 7)
          {
            v22 = 0;
          }

          else
          {
            v22 = 0;
            *(v19 + 352) = v65;
            *(v19 + 600) = 0;
          }

          v64 = 1;
        }

LABEL_53:
        mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "hndlRecordUpdateReply", 3501);
        if (mDNS_LoggingEnabled == 1)
        {
          v62 = bswap32(*(v19 + 358)) >> 16;
          v63 = v20[434];
          v25 = *(v19 + 344);
          GetRRDisplayString_rdb((v19 + 8), (*(v19 + 48) + 4), v67);
          LogMsgWithLevel(v63, OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: err %d ID %d state %d %s(%p)", v22, v62, v25, v67, v19);
        }

        *(v19 + 604) = v22;
        SetRecordRetry(a1, v19, v16);
        *(v19 + 358) = 0;
        v26 = *(v19 + 376);
        if (v26)
        {
          if (*(v26 + 1044) != -1)
          {
            v27 = v20[434];
            GetRRDisplayString_rdb((v19 + 8), (*(v19 + 48) + 4), v67);
            v28 = *(v19 + 376);
            v29 = v28 + 1208;
            v30 = DNSTypeName(*(v28 + 1174));
            LogMsgWithLevel(v27, OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: ResourceRecord %s, zone info question %##s (%s) interval %d not -1", v67, v29, v30, *(*(v19 + 376) + 1044));
            v26 = *(v19 + 376);
          }

          v31 = *(v26 + 786);
          CancelGetZoneData(a1, v26);
          *(v19 + 376) = 0;
          v32 = v31 == 13568;
        }

        else
        {
          v32 = 0;
        }

        if (*(v19 + 8) == 1 && *(v19 + 344) == 3)
        {
          if ((v64 & 1) == 0)
          {
            LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "ERROR: Deregistration of record %##s type %d failed with error %d", *(v19 + 40), *(v19 + 12), v22);
          }

          *(v19 + 344) = 4;
          CompleteDeregistration(a1, v19);
          goto LABEL_144;
        }

        if (*(a1 + 141))
        {
          if (*(v19 + 12) != 33 || *(v19 + 344) != 3)
          {
            goto LABEL_144;
          }

          v33 = 8;
          goto LABEL_69;
        }

        if (*(v19 + 344) == 7)
        {
          if ((v64 & 1) == 0)
          {
            LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "Update record failed for %##s (err %d)", *(v19 + 40), v22);
          }

          *(v19 + 344) = 2;
          v34 = *(v19 + 320);
          if (v34)
          {
            v34(a1, v19, *(v19 + 624), *(v19 + 616));
          }

          SetNewRData(v19 + 8, *(v19 + 632), *(v19 + 618));
          *(v19 + 624) = 0u;
        }

        if (*(v19 + 592))
        {
          v35 = *(v19 + 12);
          if (v35 != 33)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v42 = v20;
              v43 = v20[434];
              v44 = *(v19 + 40);
              v61 = DNSTypeName(v35);
              v45 = v43;
              v20 = v42;
              LogMsgWithLevel(v45, OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: Deregistered %##s (%s), state %d", v44, v61, *(v19 + 344));
            }

            *(v19 + 592) = 0;
            if (*(v19 + 344) != 3)
            {
              v46 = v20;
              v47 = v20[434];
              GetRRDisplayString_rdb((v19 + 8), (*(v19 + 48) + 4), v67);
              v48 = v47;
              v20 = v46;
              LogMsgWithLevel(v48, OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: ResourceRecord %s not in DeregPending state %d", v67, *(v19 + 344));
            }

            *(v19 + 344) = 8;
            goto LABEL_144;
          }

          v36 = v20;
          ServiceTarget = GetServiceTarget(a1, v19);
          if (ServiceTarget)
          {
            v38 = ServiceTarget;
            if (*ServiceTarget)
            {
              v39 = *(v19 + 344);
              if (v39 != 3)
              {
                if (v39 != 1)
                {
LABEL_126:
                  *(v19 + 592) = 0;
LABEL_143:
                  v20 = v36;
                  goto LABEL_144;
                }

                if (SameDomainNameBytes(ServiceTarget, (*(v19 + 48) + 10)))
                {
                  if (*(v19 + 344) == 1)
                  {
                    *(v19 + 344) = 2;
                  }

                  goto LABEL_126;
                }
              }

              v58 = *(v19 + 12);
              if (v58 <= 0x27)
              {
                if (((1 << v58) & 0x1000248000) != 0)
                {
                  v59 = 6;
                  goto LABEL_139;
                }

                if (((1 << v58) & 0x8000001024) != 0)
                {
                  v59 = 4;
LABEL_139:
                  *(*(v19 + 48) + v59) = 0;
                  goto LABEL_140;
                }

                if (v58 == 33)
                {
                  v59 = 10;
                  goto LABEL_139;
                }
              }

LABEL_140:
              *(v19 + 344) = 8;
              *(v19 + 20) = 0;
              if (mDNS_LoggingEnabled == 1)
              {
                LogMsgWithLevel(v36[434], OS_LOG_TYPE_DEFAULT, "hndlSRVChanged: SRVChanged, Valid Target %##s, Registering all records for %##s, state %d", v38, *(v19 + 40), 8);
              }

              *(v19 + 592) = 0;
              UpdateOneSRVRecord(a1, v19);
              goto LABEL_143;
            }
          }

          v49 = *(v19 + 344);
          if (v49 == 1)
          {
            v20 = v36;
            if (mDNS_LoggingEnabled)
            {
              LogMsgWithLevel(v36[434], OS_LOG_TYPE_DEFAULT, "hndlSRVChanged: SRVChanged, No Target, Deregistering again %##s, state %d", *(v19 + 40), 1);
            }

            *(v19 + 280) = 1000;
            *(v19 + 284) = *(a1 + 64) - 1000;
            v33 = 3;
LABEL_69:
            *(v19 + 344) = v33;
            goto LABEL_144;
          }

          if (v49 != 3)
          {
            if (mDNS_LoggingEnabled)
            {
              LogMsgWithLevel(v36[434], OS_LOG_TYPE_DEFAULT, "hndlSRVChanged: Not in DeregPending or RegPending state %##s, state %d", *(v19 + 40), v49);
            }

            goto LABEL_126;
          }

          v20 = v36;
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(v36[434], OS_LOG_TYPE_DEFAULT, "hndlSRVChanged: SRVChanged, No Target, SRV Deregistered for %##s, state %d", *(v19 + 40), 3);
          }

          *(v19 + 592) = 0;
          v50 = *(v19 + 12);
          if (v50 <= 0x27)
          {
            if (((1 << v50) & 0x1000248000) != 0)
            {
              v51 = 6;
              goto LABEL_135;
            }

            if (((1 << v50) & 0x8000001024) != 0)
            {
              v51 = 4;
LABEL_135:
              *(*(v19 + 48) + v51) = 0;
              goto LABEL_136;
            }

            if (v50 == 33)
            {
              v51 = 10;
              goto LABEL_135;
            }
          }

LABEL_136:
          *(v19 + 344) = 8;
          *(v19 + 20) = 0;
          goto LABEL_144;
        }

        v40 = *(v19 + 344);
        if ((v40 | 4) == 5)
        {
          if (v64)
          {
            v41 = v40 != 5;
            *(v19 + 344) = 2;
LABEL_112:
            v55 = *(v19 + 640);
            if (!v55 || *(v19 + 344) != 2)
            {
              if ((v64 & v41) == 1 && *(v19 + 104))
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: Calling record callback on %##s", *(v19 + 40));
                }

                v56 = *(a1 + 48);
                v57 = *(a1 + 52) + 1;
                *(a1 + 52) = v57;
                mDNS_VerifyLockState("Drop Lock", 0, v56, v57, "hndlRecordUpdateReply", 3627);
                (*(v19 + 104))(a1, v19, 0);
                mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "hndlRecordUpdateReply", 3629);
                --*(a1 + 52);
              }

              goto LABEL_144;
            }

            *(v19 + 344) = 7;
            *(v19 + 632) = v55;
            *(v19 + 618) = *(v19 + 620);
            *(v19 + 624) = *(v19 + 48);
            *(v19 + 616) = *(v19 + 20);
            *(v19 + 640) = 0;
            *(v19 + 280) = 1000;
            v54 = *(a1 + 64);
            *(v19 + 284) = v54 - 1000;
            if (*(a1 + 12680) - v54 >= 0)
            {
LABEL_115:
              *(a1 + 12680) = v54;
            }

LABEL_144:
            v21 = *(a1 + 12640);
            goto LABEL_145;
          }

          LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: Registration of record %##s type %d failed with error %d", *(v19 + 40), *(v19 + 12), v22);
          if (!*(v19 + 356))
          {
            v52 = v22 != -65537 || *(v19 + 348) == 0;
            v53 = !v52;
            if (v53 && v32)
            {
              LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "hndlRecordUpdateReply: Will retry update of record %##s without lease option", *(v19 + 40));
              *(v19 + 348) = 0;
              *(v19 + 280) = 1000;
              v54 = *(a1 + 64);
              *(v19 + 284) = v54 - 1000;
              if (*(a1 + 12680) - v54 < 0)
              {
                goto LABEL_144;
              }

              goto LABEL_115;
            }
          }
        }

        v41 = 1;
        goto LABEL_112;
      }

      if (v12 != 1)
      {
        if (v12 == 5)
        {
          LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "Update %##s refused", *(v19 + 40));
          v64 = 0;
          v22 = 4294901743;
          goto LABEL_53;
        }

        goto LABEL_44;
      }

      v24 = ParseTSIGError(a1, a2, a3, *(v19 + 40));
      if (!v24)
      {
        LogMsgWithLevel(v20[434], OS_LOG_TYPE_DEFAULT, "Format Error: %##s", v23, v60);
        goto LABEL_52;
      }
    }

    v22 = v24;
LABEL_48:
    v64 = 0;
    goto LABEL_53;
  }
}

uint64_t ExpectingUnicastResponseForQuestion(uint64_t result, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4, int a5)
{
  if (result)
  {
    v8 = result;
    v9 = a2;
    while (1)
    {
      if (a5)
      {
        v10 = (v8 + 338);
      }

      else
      {
        v10 = *(v8 + 72);
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      if (*v10 == v9 && *(v8 + 342) == *(a4 + 342) && *(v8 + 344) == *(a4 + 344) && *(v8 + 200) == *(a4 + 200) && SameDomainNameBytes((v8 + 376), (a4 + 376)))
      {
        if (*(v8 + 340) == a3)
        {
          return v8;
        }

        else
        {
          return 0;
        }
      }

LABEL_11:
      v8 = *(v8 + 8);
      if (!v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CloseSocketSet(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    close(v2);
    *(a1 + 16) = -1;
  }

  result = *(a1 + 48);
  if (result != -1)
  {
    result = close(result);
    *(a1 + 48) = -1;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *v4 = 1;
  }

  return result;
}

void SendRecordRegistration(uint64_t a1, uint64_t a2)
{
  AuthInfoForName_internal = GetAuthInfoForName_internal(a1, *(a2 + 40));
  if (AuthInfoForName_internal)
  {
    v5 = AuthInfoForName_internal + 268;
    v6 = AuthInfoForName_internal + 268;
    while (1)
    {
      if (!v6 || (v7 = *v6, v7 > 0x3F))
      {
LABEL_7:
        v8 = -360;
        goto LABEL_10;
      }

      if (!*v6)
      {
        break;
      }

      v6 += v7 + 1;
      if (v6 - v5 >= 256)
      {
        goto LABEL_7;
      }
    }

    v8 = -103 - (v6 - v5 + 1);
  }

  else
  {
    v8 = -35;
  }

LABEL_10:
  mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "SendRecordRegistration", 2994);
  v9 = *(a2 + 376);
  if (!v9 || !*(v9 + 792))
  {
    v20 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v20, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration: No Zone information, should not happen %s");
    return;
  }

  v10 = a1 + 37912;
  v11 = mDNS_NewMessageID(a1);
  *(a2 + 358) = v11;
  *(a1 + 28960) = v11;
  *(a1 + 28962) = 40;
  *(a1 + 28964) = 0;
  v12 = putZone(a1 + 28960, (a1 + 28972), a1 + 37912 + v8, *(a2 + 368), bswap32(*(a2 + 14)) >> 16);
  if (!v12 || (updated = BuildUpdateMessage(a1, v12, a2, v10 + v8)) == 0 || (v14 = updated, *(a2 + 348)) && (v14 = putUpdateLeaseWithLimit(a1 + 28960, updated, v10 + v8)) == 0)
  {
    v21 = mDNSLogCategory_Default;
    v22 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v22);
    LogMsgWithLevel(v21, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration: Error formatting message for %s, disabling further updates", v22);
    *(a2 + 344) = 8;
    return;
  }

  if (*(a2 + 356))
  {
    if (mDNS_LoggingEnabled)
    {
      v15 = mDNSLogCategory_Default;
      v16 = (a2 + 384);
      v17 = *(a2 + 384);
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v15, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration TCP %p %s", v17, (a1 + 47032));
      v18 = *(a2 + 384);
      if (!v18 || !mDNS_LoggingEnabled)
      {
        goto LABEL_29;
      }

      v19 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration: Disposing existing TCP connection for %s", (a1 + 47032));
    }

    else
    {
      v16 = (a2 + 384);
    }

    v18 = *v16;
LABEL_29:
    if (v18)
    {
      DisposeTCPConn(v18);
      *v16 = 0;
    }

    v26 = *(a2 + 376);
    if (!v26)
    {
      v27 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v27, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration:Private:ERROR!! nta is NULL for %s");
      return;
    }

    *(a2 + 384) = MakeTCPConn(a1, (a1 + 28960), v14, 1, (v26 + 788), *(v26 + 786), (v26 + 530), 0, a2);
    goto LABEL_33;
  }

  if (mDNS_LoggingEnabled)
  {
    v23 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v23, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration UDP %s", (a1 + 47032));
  }

  v24 = *(a2 + 376);
  if (!v24)
  {
    v28 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v28, OS_LOG_TYPE_DEFAULT, "SendRecordRegistration:ERROR!! nta is NULL for %s");
    return;
  }

  v25 = GetAuthInfoForName_internal(a1, *(a2 + 40));
  mDNSSendDNSMessage(a1, (a1 + 28960), v14, 0, 0, 0, (v24 + 788), *(v24 + 786), v25, 0);
LABEL_33:

  SetRecordRetry(a1, a2, 0);
}

unsigned __int8 *putZone(unint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, __int16 a5)
{
  v8 = putDomainNameAsLabels(a1, a2, a3, a4);
  v9 = 0;
  if (v8 && (v8 + 4) <= a3)
  {
    *v8 = 1536;
    *(v8 + 1) = a5;
    ++*(a1 + 4);
    return v8 + 4;
  }

  return v9;
}

void *MakeTCPConn(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4, unsigned int *a5, __int16 a6, _BYTE *a7, unsigned __int8 *a8, uint64_t a9)
{
  v13 = a4;
  v34 = 0;
  if (a8)
  {
    v17 = a8[640];
    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (!a7 || !*a7)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "MakeTCPConn: TLS connection being setup with NULL hostname");
    return 0;
  }

LABEL_7:
  result = malloc_type_calloc(1uLL, 0x2358uLL, 0xC76966E2uLL);
  if (result)
  {
    v19 = result;
    if (a2)
    {
      v20 = a3 - a2;
      if (a3 < a2 || v20 >= 8953)
      {
        v21 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
LABEL_17:
            *buf = 134218240;
            v37 = a2;
            v38 = 2048;
            v39 = a3;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "MakeTCPConn: invalid DNS message pointers -- msg: %p, end: %p", buf, 0x16u);
          }
        }

        else
        {
          v21 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }
        }

LABEL_26:
        free(v19);
        return 0;
      }

      *(result + 2242) = v20;
      memcpy(result + 2, a2, v20);
    }

    *v19 = a1;
    v22 = mDNSPlatformTCPSocket(v13, *a5, &v34, a7, v17);
    v19[1] = v22;
    v19[1122] = a8;
    v19[1123] = a9;
    v23 = a5[4];
    *(v19 + 562) = *a5;
    *(v19 + 2252) = v23;
    *(v19 + 4506) = a6;
    v19[1127] = 0;
    *(v19 + 4512) = 0;
    v19[1129] = 0;
    *(v19 + 2260) = 0;
    *(v19 + 4507) = v34;
    if (!v22)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "MakeTCPConn: unable to create TCP socket");
      goto LABEL_26;
    }

    if (a8)
    {
      v24 = *(v22 + 4);
      if ((v24 & 0x80000000) == 0)
      {
        bzero(buf, 0x3F1uLL);
        if (*(a8 + 61))
        {
          if (setsockopt(v24, 0xFFFF, 4359, a8 + 244, 4u) == -1)
          {
            v25 = mDNSLogCategory_Default;
            v26 = __error();
            strerror(*v26);
            LogMsgWithLevel(v25, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetSocktOpt: Delegate PID failed %s for PID %d");
          }
        }

        else if (setsockopt(v24, 0xFFFF, 4360, a8 + 657, 0x10u) == -1)
        {
          v28 = mDNSLogCategory_Default;
          v29 = __error();
          strerror(*v29);
          LogMsgWithLevel(v28, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetSocktOpt: Delegate UUID failed %s");
        }

        ConvertDomainNameToCString_withescape(a8 + 376, buf);
        if ((ne_session_set_socket_attributes() & 1) == 0 && mDNS_LoggingEnabled)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetSocktOpt: ne_session_set_socket_attributes()-> setting domain failed for %s", buf);
        }

        v35 = 1;
        if (setsockopt(v24, 0xFFFF, 0x10000, &v35, 4u) == -1 && mDNS_LoggingEnabled)
        {
          v30 = mDNSLogCategory_Default;
          v31 = __error();
          v32 = strerror(*v31);
          LogMsgWithLevel(v30, OS_LOG_TYPE_DEFAULT, "mDNSPlatformSetSocktOpt: SO_NOWAKEFROMSLEEP failed %s", v32);
        }

        v22 = v19[1];
      }

      v27 = *(a8 + 17);
    }

    else
    {
      v27 = 0;
    }

    v33 = mDNSPlatformTCPConnect(v22, a5, a6, v27, tcpCallback, v19);
    if (v33 == -65787)
    {
      return v19;
    }

    if (v33 == -65789)
    {
      tcpCallback(v19[1], v19, 1, 0);
      return v19;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "MakeTCPConn: connection failed");
    }

    DisposeTCPConn(v19);
    return 0;
  }

  __break(1u);
  return result;
}

void *mDNSPlatformTCPSocket(int a1, int a2, _WORD *a3, _BYTE *a4, int a5)
{
  v43 = 0x4000;
  if (a4)
  {
    v10 = 344;
  }

  else
  {
    v10 = 88;
  }

  v11 = malloc_type_calloc(1uLL, v10, 0x40BBCBA5uLL);
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  if (a4)
  {
    v13 = v11 + 88;
    v12[6] = v12 + 11;
    v14 = a4;
    do
    {
      if (!v14)
      {
        break;
      }

      v15 = *v14;
      if (v15 > 0x3F)
      {
        break;
      }

      if (!*v14)
      {
        v16 = v14 - a4 + 1;
        if (v16 <= 0x100u)
        {
          memcpy(v13, a4, v16);
          goto LABEL_15;
        }

        break;
      }

      v14 += v15 + 1;
    }

    while (v14 - a4 <= 255);
    *v13 = 0;
  }

LABEL_15:
  if (a2 == 4)
  {
    v17 = 2;
  }

  else
  {
    v17 = 30;
  }

  v45 = 15384;
  v18 = socket(v17, 1, 6);
  v19 = v18;
  if (v18 < 0)
  {
    if (*__error() != 47)
    {
      v23 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_46:
          v29 = *__error();
          v30 = __error();
          v31 = strerror(*v30);
          *&v48[0].sa_len = 67109634;
          *&v48[0].sa_data[2] = v19;
          *&v48[0].sa_data[6] = 1024;
          *&v48[0].sa_data[8] = v29;
          *&v48[0].sa_data[12] = 2082;
          *&v48[1].sa_len = v31;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "mDNSPosixTCPSocketSetup: socket error %d errno %d (%{public}s)", &v48[0].sa_len, 0x18u);
        }
      }

      else
      {
        v23 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }
      }
    }

    v19 = -1;
    goto LABEL_48;
  }

  memset(v48, 0, 28);
  if (a3)
  {
    v20 = a2 == 4 ? 16 : 28;
    *&v48[0].sa_data[10] = 0;
    *&v48[0].sa_data[2] = 0;
    *&v48[1].sa_data[2] = 0;
    v48[0].sa_family = v17;
    v48[0].sa_len = v20;
    *v48[0].sa_data = *a3;
    if (bind(v18, v48, v20) < 0)
    {
      v22 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }
      }

      else
      {
        v22 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }
      }

      v27 = __error();
      v28 = strerror(*v27);
      *buf = 136446210;
      v47 = v28;
      v26 = "mDNSPosixTCPSocketSetup getsockname: %{public}s";
      goto LABEL_66;
    }
  }

  v44 = 28;
  if (getsockname(v19, v48, &v44) < 0)
  {
    v22 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }
    }

    else
    {
      v22 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }
    }

    v24 = __error();
    v25 = strerror(*v24);
    *buf = 136446210;
    v47 = v25;
    v26 = "mDNSPosixTCPSocketSetup getsockname: %{public}s";
LABEL_66:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
    goto LABEL_67;
  }

  v21 = *v48[0].sa_data;
  *v12 = *v48[0].sa_data;
  if (a3)
  {
    *a3 = v21;
  }

  if (setsockopt(v19, 6, 513, &v45, 4u) < 0)
  {
    v22 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_65:
        v35 = __error();
        v36 = strerror(*v35);
        *buf = 136446210;
        v47 = v36;
        v26 = "mDNSPosixTCPSocketSetup: TCP_NOTSENT_LOWAT failed: %{public}s";
        goto LABEL_66;
      }
    }

    else
    {
      v22 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }
    }

LABEL_67:
    close(v19);
    v37 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_72:
        v38 = *(v12 + 4);
        v39 = *__error();
        v40 = __error();
        v41 = strerror(*v40);
        *&v48[0].sa_len = 67109634;
        *&v48[0].sa_data[2] = v38;
        *&v48[0].sa_data[6] = 1024;
        *&v48[0].sa_data[8] = v39;
        *&v48[0].sa_data[12] = 2082;
        *&v48[1].sa_len = v41;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "mDNSPlatformTCPSocket: socket error %d errno %d (%{public}s)", &v48[0].sa_len, 0x18u);
      }
    }

    else
    {
      v37 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_72;
      }
    }

    free(v12);
    return 0;
  }

LABEL_48:
  if (a5)
  {
    v32 = 100;
  }

  else
  {
    v32 = 900;
  }

  *&v48[0].sa_len = v32;
  setsockopt(v19, 0xFFFF, 4230, v48, 4u);
  *(v12 + 4) = v19;
  v12[3] = tcpKQSocketCallback;
  v12[4] = v12;
  v12[5] = "mDNSPlatformTCPSocket";
  if (setsockopt(v19, 6, 513, &v43, 4u) < 0)
  {
    v33 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_58:
        v34 = *__error();
        *&v48[0].sa_len = 67109120;
        *&v48[0].sa_data[2] = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "mDNSPlatformTCPSocket: TCP_NOTSENT_LOWAT returned %d", &v48[0].sa_len, 8u);
      }
    }

    else
    {
      v33 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }
    }

    mDNSPlatformTCPCloseConnection(v12);
    return 0;
  }

  v12[1] = 0;
  *(v12 + 1) = a1;
  v12[7] = 0;
  *(v12 + 32) = 0;
  *(v12 + 17) = 0;
  v12[9] = mDNSStorage;
  *(v12 + 20) = 0;
  return v12;
}

uint64_t mDNSPlatformTCPConnect(uint64_t a1, _DWORD *a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(v46, 0, sizeof(v46));
  *(a1 + 8) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 80) = 0;
  v9 = a2 + 1;
  if (*a2 == 4)
  {
    *&v46[0].sa_data[2] = *v9;
    v10 = 16;
    v11 = 2;
  }

  else
  {
    memset(&v46[0].sa_data[6], 0, 20);
    *&v46[0].sa_len = 0;
    *&v46[0].sa_data[6] = *v9;
    v10 = 28;
    v11 = 30;
  }

  v46[0].sa_family = v11;
  *v46[0].sa_data = a3;
  v46[0].sa_len = v10;
  if (KQueueSet(*(a1 + 16), 1u, -2, (a1 + 24)))
  {
    v12 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v12 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPlatformTCPConnect - KQueueSet failed", buf, 2u);
      }
    }

    return *__error();
  }

  v13 = *(a1 + 16);
  v14 = fcntl(v13, 3, 0);
  if (fcntl(v13, 4, v14 | 4u) < 0)
  {
    v22 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:
        v24 = __error();
        v25 = strerror(*v24);
        *buf = 136446210;
        *v41 = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ERROR: setsockopt O_NONBLOCK - %{public}s", buf, 0xCu);
      }
    }

    else
    {
      v22 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }
    }

    return 4294901759;
  }

  if (!a4)
  {
    goto LABEL_30;
  }

  for (i = *mDNSStorage[0]; i; i = *(i + 3680))
  {
    if (*(i + 3768) && *(i + 3720) == a4)
    {
      break;
    }
  }

  if (*a2 != 4)
  {
    if (i)
    {
      v16 = *(a1 + 16);
      v17 = (i + 3720);
      v18 = 41;
      v19 = 125;
      goto LABEL_29;
    }

    v27 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v41 = a4;
        goto LABEL_66;
      }
    }

    else
    {
      v27 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v41 = a4;
        goto LABEL_66;
      }
    }

    return 4294901756;
  }

  if (!i)
  {
    v27 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v41 = a4;
        goto LABEL_66;
      }
    }

    else
    {
      v27 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v41 = a4;
LABEL_66:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "mDNSPlatformTCPConnect: Invalid interface index %p", buf, 0xCu);
        return 4294901756;
      }
    }

    return 4294901756;
  }

  v16 = *(a1 + 16);
  v17 = (i + 3720);
  v18 = 0;
  v19 = 25;
LABEL_29:
  setsockopt(v16, v18, v19, v17, 4u);
LABEL_30:
  if ((connect(*(a1 + 16), v46, v10) & 0x80000000) == 0)
  {
    v23 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v23 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_42:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NOTE: mDNSPlatformTCPConnect completed synchronously", buf, 2u);
      }
    }

    return 0;
  }

  v20 = 4294901508;
  if (*__error() != 36)
  {
    if (*__error() == 65 || *__error() == 49 || *__error() == 50)
    {
      v26 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          return v20;
        }
      }

      else
      {
        v26 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return v20;
        }
      }

      v28 = *(a1 + 16);
      v29 = *__error();
      v30 = __error();
      v31 = strerror(*v30);
      *buf = 67109634;
      *v41 = v28;
      *&v41[4] = 1024;
      *&v41[6] = v29;
      v42 = 2082;
      v43 = v31;
      v32 = "ERROR: mDNSPlatformTCPConnect - connect failed: socket %d: Error %d (%{public}s)";
      v33 = v26;
      v34 = 24;
    }

    else
    {
      v35 = mDNSLogCategory_NAT;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          return v20;
        }
      }

      else
      {
        v35 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return v20;
        }
      }

      v36 = *(a1 + 16);
      v37 = *__error();
      v38 = __error();
      v39 = strerror(*v38);
      *buf = 67109890;
      *v41 = v36;
      *&v41[4] = 1024;
      *&v41[6] = v37;
      v42 = 2082;
      v43 = v39;
      v44 = 1024;
      sa_len = v46[0].sa_len;
      v32 = "ERROR: mDNSPlatformTCPConnect - connect failed: socket %d: Error %d (%{public}s) length %d";
      v33 = v35;
      v34 = 30;
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
    return v20;
  }

  return 4294901509;
}

uint64_t tcpKQSocketCallback(int a1, int a2, uint64_t a3)
{
  *(a3 + 80) = 0;
  if (a2 == -2)
  {
    if (*(a3 + 65))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: TCPConnectCallback called with write event when socket is connected.");
      }
    }

    else
    {
      v15 = 4;
      __errnum = 0;
      if (getsockopt(a1, 0xFFFF, 4103, &__errnum, &v15) < 0)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          v6 = mDNSLogCategory_Default;
          v7 = *(a3 + 16);
          v8 = *__error();
          v9 = __error();
          v10 = strerror(*v9);
          LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "ERROR: TCPConnectCallback - unable to get connect error: socket %d: Error %d (%s)", v7, v8, v10);
        }

        *(a3 + 80) = -65788;
      }

      else
      {
        v4 = __errnum;
        if (__errnum)
        {
          *(a3 + 80) = -65788;
          if ((v4 - 49) > 0x10 || ((1 << (v4 - 49)) & 0x10003) == 0 || mDNS_LoggingEnabled == 1)
          {
            v5 = mDNSLogCategory_Default;
            strerror(v4);
            LogMsgWithLevel(v5, OS_LOG_TYPE_DEFAULT, "ERROR: TCPConnectCallback - connect failed: socket %d: Error %d (%s)");
          }
        }
      }
    }

    KQueueSet(*(a3 + 16), 2u, -2, (a3 + 24));
    if (!*(a3 + 80) && KQueueSet(*(a3 + 16), 1u, -1, (a3 + 24)))
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: tcpKQSocketCallback - KQueueSet failed");
      *(a3 + 80) = -65562;
    }
  }

  if (*(a3 + 4))
  {
    v11 = 4294901752;
    *(a3 + 80) = -65544;
    v12 = *(a3 + 65) == 0;
  }

  else
  {
    v11 = *(a3 + 80);
    v12 = *(a3 + 65) == 0;
    if (*(a3 + 65))
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v11 = 0;
      v12 = 1;
      *(a3 + 65) = 1;
    }
  }

  return (*(a3 + 8))(a3, *(a3 + 56), v12, v11);
}

void tcpCallback(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v4 = a4;
  v93 = 0;
  v8 = *a2;
  v9 = a2[1122];
  if (v9)
  {
    v10 = (v9 + 112);
  }

  else
  {
    v11 = a2[1123];
    if (!v11)
    {
      v10 = 0;
      v12 = 1;
      if (a4)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    v10 = (v11 + 384);
  }

  if (*v10 != a2)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "tcpCallback: %d backpointer %p incorrect tcpInfo %p question %p rr %p", *(a2[1] + 16), *v10, a2, a2[1122], a2[1123]);
  }

  v12 = 0;
  if (v4)
  {
LABEL_8:
    if ((v12 & 1) == 0)
    {
      *v10 = 0;
    }

    mDNS_Lock_(v8, "tcpCallback", 1541);
    if (!v9)
    {
      goto LABEL_152;
    }

    v14 = *(v9 + 212);
    if (v14)
    {
      v15 = *(v9 + 208) + v14;
      v16 = *(v8 + 64);
      v17 = v15 - v16;
      if (*(v9 + 632))
      {
        v18 = 900000;
      }

      else
      {
        v18 = 3600000;
      }

      if (v17 > v18)
      {
        *(v9 + 208) = v16;
        *(v9 + 212) = v18;
        SetNextQueryTime(v8, v9);
        v19 = mDNSLogCategory_Default;
        v20 = DNSTypeName(*(v9 + 342));
        LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "tcpCallback: stream connection for %##s (%s) failed, retrying in %d ms", v9 + 376, v20, *(v9 + 212));
      }
    }

    else
    {
      *(v9 + 208) = *(v8 + 64);
      if (*(v9 + 632))
      {
        v21 = *(v9 + 348);
        *(v9 + 212) = 334;
        if (v21 == -1)
        {
          goto LABEL_40;
        }

        v13.i32[0] = v21;
        v22 = xmmword_10010D280;
        v23 = (v21 & 0xFFFFFFFC) + 4;
        v24.i64[0] = 0x300000003;
        v24.i64[1] = 0x300000003;
        do
        {
          v25 = v22;
          v22 = vmulq_s32(v22, v24);
          v23 -= 4;
        }

        while (v23);
        v26 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(v21 & 0xFFFFFFFC), xmmword_10010D290), vdupq_lane_s32(v13, 0)), v25, v22);
        *v26.i8 = vmul_s32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
        *(v9 + 212) = v26.i32[0] * v26.i32[1];
        if (v26.i32[0] * v26.i32[1] <= 900000)
        {
LABEL_40:
          *(v9 + 348) = v21 + 1;
        }

        else
        {
          *(v9 + 212) = 900000;
        }

        v37 = mDNSLogCategory_Default;
        v38 = DNSTypeName(*(v9 + 342));
        LogMsgWithLevel(v37, OS_LOG_TYPE_DEFAULT, "tcpCallback: stream connection for LLQ %##s (%s) failed %d times, retrying in %d ms", v9 + 376, v38, *(v9 + 348), *(v9 + 212));
      }

      else
      {
        *(v9 + 212) = 3600000;
        v42 = mDNSLogCategory_Default;
        v89 = DNSTypeName(*(v9 + 342));
        LogMsgWithLevel(v42, OS_LOG_TYPE_DEFAULT, "tcpCallback: stream connection for %##s (%s) failed, retrying in %d ms", v9 + 376, v89, *(v9 + 212), v90);
      }

      SetNextQueryTime(v8, v9);
    }

    if (!*(v9 + 632))
    {
      goto LABEL_152;
    }

    v43 = *(v9 + 350);
    if (v43 == 21)
    {
      *(v9 + 350) = 20;
      if (v4 == -65788)
      {
        goto LABEL_152;
      }
    }

    else if (v4 == -65788 || v43 == 30)
    {
      goto LABEL_152;
    }

    v91 = *(v9 + 252);
    v92 = bswap32(*(v9 + 340)) >> 16;
    v44 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v45 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v45 = 1;
    }

    v46 = v45;
    if (*(v9 + 212) != -1)
    {
      if (v46)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_125;
        }

        v47 = v9 + 376;
        v48 = (v9 + 376);
        while (1)
        {
          if (!v48 || (v49 = *v48, v49 > 0x3F))
          {
LABEL_73:
            v50 = 257;
            goto LABEL_124;
          }

          if (!*v48)
          {
            break;
          }

          v48 += v49 + 1;
          if (&v48[-v47] >= 256)
          {
            goto LABEL_73;
          }
        }

        v50 = (v48 - v47 + 1);
      }

      else
      {
        v44 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_125;
        }

        v56 = v9 + 376;
        v57 = (v9 + 376);
        while (1)
        {
          if (!v57 || (v58 = *v57, v58 > 0x3F))
          {
LABEL_95:
            v50 = 257;
            goto LABEL_124;
          }

          if (!*v57)
          {
            break;
          }

          v57 += v58 + 1;
          if (&v57[-v56] >= 256)
          {
            goto LABEL_95;
          }
        }

        v50 = (v57 - v56 + 1);
      }

LABEL_124:
      v73 = DNSTypeName(*(v9 + 342));
      v74 = LLQStateToString(*(v9 + 350));
      *buf = 67110659;
      *&buf[4] = v91;
      *&buf[8] = 1024;
      *&buf[10] = v92;
      *&buf[14] = 2160;
      *v95 = 1752392040;
      *&v95[8] = 1040;
      *&v95[10] = v50;
      v96 = 2101;
      *v97 = v9 + 376;
      *&v97[8] = 2082;
      *&v97[10] = v73;
      *&v97[18] = 2082;
      *&v97[20] = v74;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] Starting long-lived query polling - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s, LLQ_State: %{public}s.", buf, 0x3Cu);
LABEL_125:
      v75 = *(v9 + 104);
      if (!v75)
      {
LABEL_148:
        *(v9 + 350) = 30;
        *(v9 + 212) = 3000;
        *(v9 + 208) = *(v8 + 64) - 2999;
        SetNextQueryTime(v8, v9);
        goto LABEL_152;
      }

      v76 = bswap32(*(v75 + 1172)) >> 16;
      v77 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          v82 = v75 + 1208;
          v83 = (v75 + 1208);
          while (1)
          {
            if (!v83 || (v84 = *v83, v84 > 0x3F))
            {
LABEL_141:
              v81 = 257;
              goto LABEL_146;
            }

            if (!*v83)
            {
              break;
            }

            v83 += v84 + 1;
            if (&v83[-v82] >= 256)
            {
              goto LABEL_141;
            }
          }

          v81 = (v83 - v82 + 1);
          goto LABEL_146;
        }
      }

      else
      {
        v77 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v78 = v75 + 1208;
          v79 = (v75 + 1208);
          while (1)
          {
            if (!v79 || (v80 = *v79, v80 > 0x3F))
            {
LABEL_134:
              v81 = 257;
              goto LABEL_146;
            }

            if (!*v79)
            {
              break;
            }

            v79 += v80 + 1;
            if (&v79[-v78] >= 256)
            {
              goto LABEL_134;
            }
          }

          v81 = (v79 - v78 + 1);
LABEL_146:
          v85 = DNSTypeName(*(v75 + 1174));
          *buf = 67110659;
          *&buf[4] = v91;
          *&buf[8] = 1024;
          *&buf[10] = v92;
          *&buf[14] = 1024;
          *v95 = v76;
          *&v95[4] = 2160;
          *&v95[6] = 1752392040;
          v96 = 1040;
          *v97 = v81;
          *&v97[4] = 2101;
          *&v97[6] = v75 + 1208;
          *&v97[14] = 2082;
          *&v97[16] = v85;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u->subQ%u] Stop getting the zone data - zone qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, zone qtype: %{public}s.", buf, 0x38u);
        }
      }

      CancelGetZoneData(v8, *(v9 + 104));
      *(v9 + 104) = 0;
      goto LABEL_148;
    }

    if (v46)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        v52 = v9 + 376;
        v53 = (v9 + 376);
        while (1)
        {
          if (!v53 || (v54 = *v53, v54 > 0x3F))
          {
LABEL_88:
            v55 = 257;
            goto LABEL_151;
          }

          if (!*v53)
          {
            break;
          }

          v53 += v54 + 1;
          if (&v53[-v52] >= 256)
          {
            goto LABEL_88;
          }
        }

        v55 = (v53 - v52 + 1);
LABEL_151:
        v86 = DNSTypeName(*(v9 + 342));
        v87 = LLQStateToString(*(v9 + 350));
        *buf = 67110659;
        *&buf[4] = v91;
        *&buf[8] = 1024;
        *&buf[10] = v92;
        *&buf[14] = 2160;
        *v95 = 1752392040;
        *&v95[8] = 1040;
        *&v95[10] = v55;
        v96 = 2101;
        *v97 = v9 + 376;
        *&v97[8] = 2082;
        *&v97[10] = v86;
        *&v97[18] = 2082;
        *&v97[20] = v87;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "[R%u->Q%u] Not starting long-lived query polling since the question has been stopped - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{public}s, LLQ_State: %{public}s.", buf, 0x3Cu);
      }
    }

    else
    {
      v44 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        v59 = v9 + 376;
        v60 = (v9 + 376);
        while (1)
        {
          if (!v60 || (v61 = *v60, v61 > 0x3F))
          {
LABEL_102:
            v55 = 257;
            goto LABEL_151;
          }

          if (!*v60)
          {
            break;
          }

          v60 += v61 + 1;
          if (&v60[-v59] >= 256)
          {
            goto LABEL_102;
          }
        }

        v55 = (v60 - v59 + 1);
        goto LABEL_151;
      }
    }

LABEL_152:
    mDNS_Unlock_(v8, "tcpCallback", 1603);
    DisposeTCPConn(a2);
    return;
  }

LABEL_24:
  if (!a3)
  {
    v31 = a2[1129];
    if (v31 >= 2)
    {
      v39 = a2[1127];
      v40 = a2[1129];
    }

    else
    {
      v32 = mDNSPlatformReadTCP(a1, a2 + v31 + 9024, 2 - v31, &v93);
      if (v32 < 0)
      {
        v4 = -65788;
        v62 = mDNSLogCategory_Default;
        v88 = v32;
        v63 = "ERROR: tcpCallback - attempt to read message length failed (%d)";
        goto LABEL_106;
      }

      if (v93)
      {
LABEL_45:
        if (*(a2 + 2260))
        {
          if ((v12 & 1) == 0)
          {
            *v10 = 0;
          }

          DisposeTCPConn(a2);
          return;
        }

        v4 = -65788;
        v64 = mDNSLogCategory_Default;
        v88 = a2[1129];
        v63 = "ERROR: socket closed prematurely tcpInfo->nread = %d";
LABEL_108:
        LogMsgWithLevel(v64, OS_LOG_TYPE_DEFAULT, v63, v88);
        goto LABEL_8;
      }

      v33 = a2[1129] + v32;
      a2[1129] = v33;
      if (v33 < 2)
      {
        return;
      }

      v34 = __rev16(*(a2 + 4512));
      *(a2 + 4512) = v34;
      if (v34 <= 0xB)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: tcpCallback - length too short (%d bytes)", v34);
LABEL_76:
        v4 = -65537;
        goto LABEL_8;
      }

      v39 = malloc_type_malloc(v34, 0x568240F1uLL);
      if (!v39)
      {
        __break(1u);
        return;
      }

      a2[1127] = v39;
      v40 = a2[1129];
    }

    v41 = mDNSPlatformReadTCP(a1, &v39[v40 - 2], *(a2 + 4512) - (v40 - 2), &v93);
    if ((v41 & 0x8000000000000000) == 0)
    {
      if (v93)
      {
        goto LABEL_45;
      }

      v65 = a2[1129] + v41;
      a2[1129] = v65;
      v66 = v65 - 2;
      if (v65 - 2 != *(a2 + 4512))
      {
        return;
      }

      v67 = a2[1127];
      *buf = *(a2 + 562);
      *v95 = *(a2 + 2252);
      v68 = *(a2 + 4506);
      ++*(a2 + 2260);
      a2[1127] = 0;
      a2[1129] = 0;
      *(a2 + 4512) = 0;
      v69 = *(a1 + 4);
      if (v9)
      {
        v70 = *(v9 + 112);
        if (v70)
        {
          v71 = *(v70 + 9014);
          *(v9 + 338) = v71;
        }

        else
        {
          v71 = 0;
        }

        if ((v12 & 1) == 0 && (!*(v9 + 632) || *(v8 + 141)))
        {
          goto LABEL_160;
        }
      }

      else
      {
        v71 = 0;
        if ((v12 & 1) == 0)
        {
LABEL_160:
          *v10 = 0;
          DisposeTCPConn(a2);
        }
      }

      mDNSCoreReceive(v8, v67, v67 + v66, buf, v68, (v69 & 1), v71, 0, 0);
      if (v67)
      {
        free(v67);
      }

      return;
    }

    if (v31 < 2)
    {
      return;
    }

    v4 = -65788;
    v62 = mDNSLogCategory_Default;
    v88 = v41;
    v63 = "ERROR: tcpCallback - read returned %d";
LABEL_106:
    v64 = v62;
    goto LABEL_108;
  }

  v27 = *(a2 + 2242);
  v28 = a2[1123];
  if (v28)
  {
    v29 = *(v28 + 40);
    if (v29 == (v28 + 652))
    {
LABEL_29:
      if (v29 != (v28 + 652))
      {
        return;
      }

      mDNS_Lock_(v8, "GetAuthInfoForName", 434);
      AuthInfoForName_internal = GetAuthInfoForName_internal(v8, v29);
      mDNS_Unlock_(v8, "GetAuthInfoForName", 436);
      goto LABEL_38;
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "tcpCallback: ERROR: tcpInfo->rr->resrec.name %p != &tcpInfo->rr->namestorage %p", v29, (v28 + 652));
    v28 = a2[1123];
    if (v28)
    {
      v29 = *(v28 + 40);
      goto LABEL_29;
    }
  }

  AuthInfoForName_internal = 0;
LABEL_38:
  v35 = a2 + 2;
  if (v9)
  {
    *(a2 + 8) = *(v9 + 340);
    *(a2 + 9) = 1;
    *(a2 + 20) = 0;
    v36 = putQuestion((a2 + 2), a2 + 28, (a2 + 1121), (v9 + 376), *(v9 + 342), *(v9 + 344));
    AuthInfoForName_internal = *(v9 + 32);
  }

  else
  {
    v36 = v35 + v27;
  }

  if (mDNSSendDNSMessage(v8, a2 + 8, v36, 0, a1, 0, a2 + 2248, *(a2 + 4506), AuthInfoForName_internal, 0))
  {
    goto LABEL_76;
  }

  if (*(a2 + 4506) == 13568)
  {
    if (v9)
    {
      v51 = *(v9 + 80);
      if (v51)
      {
        v51 = (*(v51 + 276) >> 3) & 1;
      }
    }

    else
    {
      LODWORD(v51) = 0;
    }

    v72 = &s_dns_analytics + 104 * v51;
    if (v72)
    {
      *(v72 + 2) += (v36 - v35);
    }
  }

  if (v9)
  {
    mDNS_Lock_(v8, "tcpCallback", 1406);
    *(v9 + 208) = *(v8 + 64);
    if (*(v9 + 212) < 256000)
    {
      *(v9 + 212) = 256000;
    }

    SetNextQueryTime(v8, v9);

    mDNS_Unlock_(v8, "tcpCallback", 1411);
  }
}

int MD5_Update(_MD5_CTX *c, const void *data, size_t len)
{
  if (!len)
  {
    return c;
  }

  v3 = len;
  v4 = data;
  v5 = c;
  v6 = data + len;
  Nl = c->Nl;
  v8 = Nl + 8 * len;
  if (Nl <= v8)
  {
    Nh = c->Nh;
  }

  else
  {
    Nh = c->Nh + 1;
  }

  c->Nl = v8;
  c->Nh = Nh + (len >> 29);
  num = c->num;
  v11 = len;
  v12 = data;
  if (!num)
  {
    goto LABEL_26;
  }

  v13 = c->data;
  v14 = num >> 2;
  v15 = num & 3;
  v16 = num + len;
  if (num + len < 0x40)
  {
    c->num = v16;
    if (v15 + len <= 3)
    {
      v20 = v13[v14];
      if (v15 <= 1)
      {
        if (!v15)
        {
          v21 = *v4++;
          v20 = v21;
          v3 = len - 1;
          if (len == 1)
          {
            goto LABEL_67;
          }
        }

        v22 = *v4++;
        v20 |= v22 << 8;
        if (v3 == 1)
        {
          goto LABEL_67;
        }

        goto LABEL_51;
      }

      if (v15 == 2)
      {
LABEL_51:
        v20 |= *v4 << 16;
      }

LABEL_67:
      v13[v14] = v20;
      return c;
    }

    v187 = v16 >> 2;
    v188 = v16 & 3;
    if ((num & 3) != 0)
    {
      v189 = v13[v14];
      v190 = v14;
      v191 = v4;
      if (v15 != 1)
      {
        if (v15 != 2)
        {
LABEL_55:
          v194 = (v191 + 1);
          v13[v190] = v189 | (*v191 << 24);
          if (++v14 < v187 && v6 - v194 >= 4)
          {
            v195 = num >> 2;
            v196 = &v4[len] - v191 - 5;
            do
            {
              v197 = *v194++;
              c->data[v195 + 1] = v197;
              v14 = v195 + 2;
              if (v195 + 2 >= v187)
              {
                break;
              }

              ++v195;
              v27 = v196 <= 3;
              v196 -= 4;
            }

            while (!v27);
          }

          if ((v16 & 3) == 0)
          {
            return c;
          }

          v198 = 0;
          v199 = v194 + (v16 & 3);
          if (v188 != 1)
          {
            if (v188 != 2)
            {
              v200 = *--v199;
              v198 = v200 << 16;
            }

            v201 = *--v199;
            v198 |= v201 << 8;
          }

          v20 = v198 | *(v199 - 1);
          goto LABEL_67;
        }

LABEL_54:
        v193 = *v191++;
        v189 |= v193 << 16;
        goto LABEL_55;
      }
    }

    else
    {
      v191 = v4 + 1;
      v189 = *v4;
      v190 = v14;
    }

    v192 = *v191++;
    v189 |= v192 << 8;
    goto LABEL_54;
  }

  v17 = v13[v14];
  v18 = v4;
  if ((c->num & 3) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((num & 3) == 0)
    {
      v18 = v4 + 1;
      v17 = *v4;
    }

    v19 = *v18++;
    v17 |= v19 << 8;
  }

  v23 = *v18++;
  v17 |= v23 << 16;
LABEL_19:
  v12 = (v18 + 1);
  v13[v14] = v17 | (*v18 << 24);
  if (num <= 0x3B && v6 - v12 >= 4)
  {
    v24 = num >> 2;
    v25 = &v4[len] - v18 - 5;
    do
    {
      v26 = *v12++;
      c->data[v24 + 1] = v26;
      if (v24 > 0xD)
      {
        break;
      }

      ++v24;
      v27 = v25 <= 3;
      v25 -= 4;
    }

    while (!v27);
  }

  LODWORD(c) = md5_block_host_order(c, v13);
  v11 = v3 - (64 - v5->num);
  v5->num = 0;
LABEL_26:
  if ((v11 >> 6) >= 1)
  {
    v204 = v11;
    v205 = v6;
    v206 = v3;
    v207 = v4;
    v29 = v5->C;
    D = v5->D;
    A = v5->A;
    B = v5->B;
    v203 = v11 >> 6;
    v32 = v12;
    v33 = v11 >> 6;
    v208 = v5;
    do
    {
      v34 = v32[1];
      v35 = A + (v29 & B | D & ~B) - 680876936 + *v32;
      v36 = B + (v35 << 7) + (v35 >> 25);
      v37 = D + v34 - 389564586 + (B & v36 | v29 & ~v36);
      v38 = v36 + (v37 << 12) + (v37 >> 20);
      v40 = v32[2];
      v39 = v32[3];
      v41 = v29 + v40 + 606105819 + (v36 & v38 | B & ~v38);
      v42 = v38 + (v41 << 17) + (v41 >> 15);
      v43 = B + v39 - 1044525330 + (v38 & v42 | v36 & ~v42);
      v44 = v42 + (v43 << 22) + (v43 >> 10);
      v46 = v32[4];
      v45 = v32[5];
      v47 = v36 + v46 - 176418897 + (v42 & v44 | v38 & ~v44);
      v48 = v44 + (v47 << 7) + (v47 >> 25);
      v49 = v38 + v45 + 1200080426 + (v44 & v48 | v42 & ~v48);
      v50 = v48 + (v49 << 12) + (v49 >> 20);
      v52 = v32[6];
      v51 = v32[7];
      v53 = v42 + v52 - 1473231341 + (v48 & v50 | v44 & ~v50);
      v54 = v50 + (v53 << 17) + (v53 >> 15);
      v55 = v51 + v44 - 45705983 + (v50 & v54 | v48 & ~v54);
      v56 = v54 + (v55 << 22) + (v55 >> 10);
      v57 = v32[8];
      v58 = v32[9];
      v59 = v57 + v48 + 1770035416 + (v54 & v56 | v50 & ~v56);
      v60 = v56 + (v59 << 7) + (v59 >> 25);
      v61 = v58 + v50 - 1958414417 + (v56 & v60 | v54 & ~v60);
      v62 = v60 + (v61 << 12) + (v61 >> 20);
      v63 = v32[10];
      v64 = v32[11];
      v65 = v63 + v54 - 42063 + (v60 & v62 | v56 & ~v62);
      v66 = v62 + (v65 << 17) + (v65 >> 15);
      v67 = v64 + v56 - 1990404162 + (v62 & v66 | v60 & ~v66);
      v68 = v66 + (v67 << 22) + (v67 >> 10);
      v70 = v32[12];
      v69 = v32[13];
      v71 = v70 + v60 + 1804603682 + (v66 & v68 | v62 & ~v68);
      v72 = v68 + (v71 << 7) + (v71 >> 25);
      v73 = v69 + v62 - 40341101 + (v68 & v72 | v66 & ~v72);
      v74 = v72 + (v73 << 12) + (v73 >> 20);
      v76 = v32[14];
      v75 = v32[15];
      v77 = v76 + v66 - 1502002290 + (v72 & v74 | v68 & ~v74);
      v78 = v74 + (v77 << 17) + (v77 >> 15);
      v79 = v75 + v68 + 1236535329 + (v74 & v78 | v72 & ~v78);
      v80 = v78 + (v79 << 22) + (v79 >> 10);
      v81 = v34 + v72 - 165796510 + (v80 & v74 | v78 & ~v74);
      v82 = v80 + 32 * v81 + (v81 >> 27);
      v83 = v52 + v74 - 1069501632 + (v82 & v78 | v80 & ~v78);
      v84 = v82 + (v83 << 9) + (v83 >> 23);
      v85 = v64 + v78 + 643717713 + (v84 & v80 | v82 & ~v80);
      v86 = v84 + (v85 << 14) + (v85 >> 18);
      v87 = *v32 + v80 - 373897302 + (v86 & v82 | v84 & ~v82);
      v88 = v86 + (v87 << 20) + (v87 >> 12);
      v89 = v45 + v82 - 701558691 + (v88 & v84 | v86 & ~v84);
      v90 = v88 + 32 * v89 + (v89 >> 27);
      v91 = v63 + v84 + 38016083 + (v90 & v86 | v88 & ~v86);
      v92 = v90 + (v91 << 9) + (v91 >> 23);
      v93 = v75 + v86 - 660478335 + (v92 & v88 | v90 & ~v88);
      v94 = v92 + (v93 << 14) + (v93 >> 18);
      v95 = v46 + v88 - 405537848 + (v94 & v90 | v92 & ~v90);
      v96 = v94 + (v95 << 20) + (v95 >> 12);
      v97 = v58 + v90 + 568446438 + (v96 & v92 | v94 & ~v92);
      v98 = v96 + 32 * v97 + (v97 >> 27);
      v99 = v76 + v92 - 1019803690 + (v98 & v94 | v96 & ~v94);
      v100 = v98 + (v99 << 9) + (v99 >> 23);
      v101 = v39 + v94 - 187363961 + (v100 & v96 | v98 & ~v96);
      v102 = v100 + (v101 << 14) + (v101 >> 18);
      v103 = v57 + v96 + 1163531501 + (v102 & v98 | v100 & ~v98);
      v104 = v102 + (v103 << 20) + (v103 >> 12);
      v105 = v69 + v98 - 1444681467 + (v104 & v100 | v102 & ~v100);
      v106 = v104 + 32 * v105 + (v105 >> 27);
      v107 = v40 + v100 - 51403784 + (v106 & v102 | v104 & ~v102);
      v108 = v106 + (v107 << 9) + (v107 >> 23);
      v109 = v51 + v102 + 1735328473 + (v108 & v104 | v106 & ~v104);
      v110 = v108 + (v109 << 14) + (v109 >> 18);
      v111 = v70 + v104 - 1926607734 + ((v110 ^ v108) & v106 ^ v108);
      v112 = v110 + (v111 << 20) + (v111 >> 12);
      v113 = v45 + v106 - 378558 + (v110 ^ v108 ^ v112);
      v114 = v112 + 16 * v113 + (v113 >> 28);
      v115 = v57 + v108 - 2022574463 + (v112 ^ v110 ^ v114);
      v116 = v114 + (v115 << 11) + (v115 >> 21);
      v117 = v64 + v110 + 1839030562 + (v114 ^ v112 ^ v116);
      v118 = v116 + (v117 << 16) + HIWORD(v117);
      v119 = v76 + v112 - 35309556 + (v116 ^ v114 ^ v118);
      v120 = v118 + (v119 << 23) + (v119 >> 9);
      v121 = v34 + v114 - 1530992060 + (v118 ^ v116 ^ v120);
      v122 = v120 + 16 * v121 + (v121 >> 28);
      v123 = v46 + v116 + 1272893353 + (v120 ^ v118 ^ v122);
      v124 = v122 + (v123 << 11) + (v123 >> 21);
      v125 = v51 + v118 - 155497632 + (v122 ^ v120 ^ v124);
      v126 = v124 + (v125 << 16) + HIWORD(v125);
      v127 = v63 + v120 - 1094730640 + (v124 ^ v122 ^ v126);
      v128 = v126 + (v127 << 23) + (v127 >> 9);
      v129 = v69 + v122 + 681279174 + (v126 ^ v124 ^ v128);
      v130 = v128 + 16 * v129 + (v129 >> 28);
      v131 = *v32 + v124 - 358537222 + (v128 ^ v126 ^ v130);
      v132 = v130 + (v131 << 11) + (v131 >> 21);
      v133 = v39 + v126 - 722521979 + (v130 ^ v128 ^ v132);
      v134 = v132 + (v133 << 16) + HIWORD(v133);
      v135 = v52 + v128 + 76029189 + (v132 ^ v130 ^ v134);
      v136 = v134 + (v135 << 23) + (v135 >> 9);
      v137 = v58 + v130 - 640364487 + (v134 ^ v132 ^ v136);
      v138 = v136 + 16 * v137 + (v137 >> 28);
      v139 = v70 + v132 - 421815835 + (v136 ^ v134 ^ v138);
      v140 = v138 + (v139 << 11) + (v139 >> 21);
      v141 = v75 + v134 + 530742520 + (v138 ^ v136 ^ v140);
      v142 = v140 + (v141 << 16) + HIWORD(v141);
      v143 = v40 + v136 - 995338651 + (v140 ^ v138 ^ v142);
      v144 = v142 + (v143 << 23) + (v143 >> 9);
      v145 = *v32 + v138 - 198630844 + ((v144 | ~v140) ^ v142);
      v146 = v144 + (v145 << 6) + (v145 >> 26);
      v147 = v51 + v140 + 1126891415 + ((v146 | ~v142) ^ v144);
      v148 = v146 + (v147 << 10) + (v147 >> 22);
      v149 = v76 + v142 - 1416354905 + ((v148 | ~v144) ^ v146);
      v150 = v148 + (v149 << 15) + (v149 >> 17);
      v151 = v45 + v144 - 57434055 + ((v150 | ~v146) ^ v148);
      v152 = v150 + (v151 << 21) + (v151 >> 11);
      v153 = v70 + v146 + 1700485571 + ((v152 | ~v148) ^ v150);
      v154 = v152 + (v153 << 6) + (v153 >> 26);
      v155 = v39 + v148 - 1894986606 + ((v154 | ~v150) ^ v152);
      v156 = v154 + (v155 << 10) + (v155 >> 22);
      v157 = v63 + v150;
      v5 = v208;
      v158 = v157 - 1051523 + ((v156 | ~v152) ^ v154);
      v159 = v156 + (v158 << 15) + (v158 >> 17);
      v160 = v34 + v152 - 2054922799 + ((v159 | ~v154) ^ v156);
      v161 = v159 + (v160 << 21) + (v160 >> 11);
      v162 = v57 + v154 + 1873313359 + ((v161 | ~v156) ^ v159);
      v163 = v161 + (v162 << 6) + (v162 >> 26);
      v164 = v75 + v156 - 30611744 + ((v163 | ~v159) ^ v161);
      v165 = v163 + (v164 << 10) + (v164 >> 22);
      v166 = v52 + v159 - 1560198380 + ((v165 | ~v161) ^ v163);
      v167 = v165 + (v166 << 15) + (v166 >> 17);
      v168 = v69 + v161 + 1309151649 + ((v167 | ~v163) ^ v165);
      v169 = v167 + (v168 << 21) + (v168 >> 11);
      LODWORD(c) = -145523070;
      v170 = v46 + v163 - 145523070 + ((v169 | ~v165) ^ v167);
      v171 = v169 + (v170 << 6) + (v170 >> 26);
      v172 = v64 + v165 - 1120210379 + ((v171 | ~v167) ^ v169);
      v173 = v171 + (v172 << 10) + (v172 >> 22);
      v174 = v40 + v167 + 718787259 + ((v173 | ~v169) ^ v171);
      v175 = v173 + (v174 << 15) + (v174 >> 17);
      v176 = v58 + v169 - 343485551 + ((v175 | ~v171) ^ v173);
      A += v171;
      B += v175 + (v176 << 21) + (v176 >> 11);
      v29 += v175;
      D += v173;
      v208->A = A;
      v208->B = B;
      v208->C = v29;
      v208->D = D;
      v32 += 16;
      LODWORD(v33) = v33 - 1;
    }

    while (v33);
    v12 = (v12 + (v203 << 6));
    v6 = v205;
    v11 = v204 - (v203 << 6);
    v3 = v206;
    v4 = v207;
  }

  if (v11)
  {
    v177 = v5->data;
    v5->num = v11;
    v178 = v11 & 3;
    if ((v11 >> 2) && v6 - v12 >= 4)
    {
      v179 = (v11 >> 2) - 1;
      v180 = &v4[v3] - v12 - 4;
      do
      {
        v181 = *v12++;
        *v177++ = v181;
        if (v179-- == 0)
        {
          break;
        }

        v27 = v180 <= 3;
        v180 -= 4;
      }

      while (!v27);
    }

    v183 = 0;
    v184 = v12 + (v11 & 3);
    if ((v11 & 3) > 1)
    {
      if (v178 != 2)
      {
        v185 = *--v184;
        v183 = v185 << 16;
      }

      v186 = *--v184;
      v183 |= v186 << 8;
    }

    else if ((v11 & 3) == 0)
    {
      goto LABEL_45;
    }

    v178 = v183 | *(v184 - 1);
LABEL_45:
    *v177 = v178;
  }

  return c;
}

_DWORD *md5_block_host_order(_DWORD *result, int *a2)
{
  v3 = result[2];
  v2 = result[3];
  v4 = result[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = *result + *a2 - 680876936 + (v3 & v4 | v2 & ~v4);
  v8 = v4 + (v7 << 7) + (v7 >> 25);
  v9 = v2 + v6 - 389564586 + (v4 & v8 | v3 & ~v8);
  v10 = v8 + (v9 << 12) + (v9 >> 20);
  v11 = a2[2];
  v12 = a2[3];
  v13 = v3 + v11 + 606105819 + (v8 & v10 | v4 & ~v10);
  v14 = v10 + (v13 << 17) + (v13 >> 15);
  v15 = v4 + v12 - 1044525330 + (v10 & v14 | v8 & ~v14);
  v16 = v14 + (v15 << 22) + (v15 >> 10);
  v18 = a2[4];
  v17 = a2[5];
  v19 = v18 + v8 - 176418897 + (v14 & v16 | v10 & ~v16);
  v20 = v16 + (v19 << 7) + (v19 >> 25);
  v21 = v17 + v10 + 1200080426 + (v16 & v20 | v14 & ~v20);
  v22 = v20 + (v21 << 12) + (v21 >> 20);
  v24 = a2[6];
  v23 = a2[7];
  v25 = v24 + v14 - 1473231341 + (v20 & v22 | v16 & ~v22);
  v26 = v22 + (v25 << 17) + (v25 >> 15);
  v27 = v23 + v16 - 45705983 + (v22 & v26 | v20 & ~v26);
  v28 = v26 + (v27 << 22) + (v27 >> 10);
  v29 = a2[8];
  v30 = a2[9];
  v31 = v29 + v20 + 1770035416 + (v26 & v28 | v22 & ~v28);
  v32 = v28 + (v31 << 7) + (v31 >> 25);
  v33 = v30 + v22 - 1958414417 + (v28 & v32 | v26 & ~v32);
  v34 = v32 + (v33 << 12) + (v33 >> 20);
  v36 = a2[10];
  v35 = a2[11];
  v37 = v36 + v26 - 42063 + (v32 & v34 | v28 & ~v34);
  v38 = v34 + (v37 << 17) + (v37 >> 15);
  v39 = v35 + v28 - 1990404162 + (v34 & v38 | v32 & ~v38);
  v40 = v38 + (v39 << 22) + (v39 >> 10);
  v42 = a2[12];
  v41 = a2[13];
  v43 = v42 + v32 + 1804603682 + (v38 & v40 | v34 & ~v40);
  v44 = v40 + (v43 << 7) + (v43 >> 25);
  v45 = v41 + v34 - 40341101 + (v40 & v44 | v38 & ~v44);
  v46 = v44 + (v45 << 12) + (v45 >> 20);
  v48 = a2[14];
  v47 = a2[15];
  v49 = v48 + v38 - 1502002290 + (v44 & v46 | v40 & ~v46);
  v50 = v46 + (v49 << 17) + (v49 >> 15);
  v51 = v47 + v40 + 1236535329 + (v46 & v50 | v44 & ~v50);
  v52 = v50 + (v51 << 22) + (v51 >> 10);
  v53 = v6 + v44 - 165796510 + (v52 & v46 | v50 & ~v46);
  v54 = v52 + 32 * v53 + (v53 >> 27);
  v55 = v24 + v46 - 1069501632 + (v54 & v50 | v52 & ~v50);
  v56 = v54 + (v55 << 9) + (v55 >> 23);
  v57 = v35 + v50 + 643717713 + (v56 & v52 | v54 & ~v52);
  v58 = v56 + (v57 << 14) + (v57 >> 18);
  v59 = v5 + v52 - 373897302 + (v58 & v54 | v56 & ~v54);
  v60 = v58 + (v59 << 20) + (v59 >> 12);
  v61 = v17 + v54 - 701558691 + (v60 & v56 | v58 & ~v56);
  v62 = v60 + 32 * v61 + (v61 >> 27);
  v63 = v36 + v56 + 38016083 + (v62 & v58 | v60 & ~v58);
  v64 = v62 + (v63 << 9) + (v63 >> 23);
  v65 = v47 + v58 - 660478335 + (v64 & v60 | v62 & ~v60);
  v66 = v64 + (v65 << 14) + (v65 >> 18);
  v67 = v18 + v60 - 405537848 + (v66 & v62 | v64 & ~v62);
  v68 = v66 + (v67 << 20) + (v67 >> 12);
  v69 = v30 + v62 + 568446438 + (v68 & v64 | v66 & ~v64);
  v70 = v68 + 32 * v69 + (v69 >> 27);
  v71 = v48 + v64 - 1019803690 + (v70 & v66 | v68 & ~v66);
  v72 = v70 + (v71 << 9) + (v71 >> 23);
  v73 = v12 + v66 - 187363961 + (v72 & v68 | v70 & ~v68);
  v74 = v72 + (v73 << 14) + (v73 >> 18);
  v75 = v29 + v68 + 1163531501 + (v74 & v70 | v72 & ~v70);
  v76 = v74 + (v75 << 20) + (v75 >> 12);
  v77 = v41 + v70 - 1444681467 + (v76 & v72 | v74 & ~v72);
  v78 = v76 + 32 * v77 + (v77 >> 27);
  v79 = v11 + v72 - 51403784 + (v78 & v74 | v76 & ~v74);
  v80 = v78 + (v79 << 9) + (v79 >> 23);
  v81 = v23 + v74 + 1735328473 + (v80 & v76 | v78 & ~v76);
  v82 = v80 + (v81 << 14) + (v81 >> 18);
  v83 = v42 + v76 - 1926607734 + ((v82 ^ v80) & v78 ^ v80);
  v84 = v82 + (v83 << 20) + (v83 >> 12);
  v85 = v17 + v78 - 378558 + (v82 ^ v80 ^ v84);
  v86 = v84 + 16 * v85 + (v85 >> 28);
  v87 = v29 + v80 - 2022574463 + (v84 ^ v82 ^ v86);
  v88 = v86 + (v87 << 11) + (v87 >> 21);
  v89 = v35 + v82 + 1839030562 + (v86 ^ v84 ^ v88);
  v90 = v88 + (v89 << 16) + HIWORD(v89);
  v91 = v48 + v84 - 35309556 + (v88 ^ v86 ^ v90);
  v92 = v90 + (v91 << 23) + (v91 >> 9);
  v93 = v6 + v86 - 1530992060 + (v90 ^ v88 ^ v92);
  v94 = v92 + 16 * v93 + (v93 >> 28);
  v95 = v18 + v88 + 1272893353 + (v92 ^ v90 ^ v94);
  v96 = v94 + (v95 << 11) + (v95 >> 21);
  v97 = v23 + v90 - 155497632 + (v94 ^ v92 ^ v96);
  v98 = v96 + (v97 << 16) + HIWORD(v97);
  v99 = v36 + v92 - 1094730640 + (v96 ^ v94 ^ v98);
  v100 = v98 + (v99 << 23) + (v99 >> 9);
  v101 = v41 + v94 + 681279174 + (v98 ^ v96 ^ v100);
  v102 = v100 + 16 * v101 + (v101 >> 28);
  v103 = v5 + v96 - 358537222 + (v100 ^ v98 ^ v102);
  v104 = v102 + (v103 << 11) + (v103 >> 21);
  v105 = v12 + v98 - 722521979 + (v102 ^ v100 ^ v104);
  v106 = v104 + (v105 << 16) + HIWORD(v105);
  v107 = v24 + v100 + 76029189 + (v104 ^ v102 ^ v106);
  v108 = v106 + (v107 << 23) + (v107 >> 9);
  v109 = v30 + v102 - 640364487 + (v106 ^ v104 ^ v108);
  v110 = v108 + 16 * v109 + (v109 >> 28);
  v111 = v42 + v104 - 421815835 + (v108 ^ v106 ^ v110);
  v112 = v110 + (v111 << 11) + (v111 >> 21);
  v113 = v47 + v106 + 530742520 + (v110 ^ v108 ^ v112);
  v114 = v112 + (v113 << 16) + HIWORD(v113);
  v115 = v11 + v108 - 995338651 + (v112 ^ v110 ^ v114);
  v116 = v114 + (v115 << 23) + (v115 >> 9);
  v117 = v5 + v110 - 198630844 + ((v116 | ~v112) ^ v114);
  v118 = v116 + (v117 << 6) + (v117 >> 26);
  v119 = v23 + v112 + 1126891415 + ((v118 | ~v114) ^ v116);
  v120 = v118 + (v119 << 10) + (v119 >> 22);
  v121 = v48 + v114 - 1416354905 + ((v120 | ~v116) ^ v118);
  v122 = v120 + (v121 << 15) + (v121 >> 17);
  v123 = v17 + v116 - 57434055 + ((v122 | ~v118) ^ v120);
  v124 = v122 + (v123 << 21) + (v123 >> 11);
  v125 = v42 + v118 + 1700485571 + ((v124 | ~v120) ^ v122);
  v126 = v124 + (v125 << 6) + (v125 >> 26);
  v127 = v12 + v120 - 1894986606 + ((v126 | ~v122) ^ v124);
  v128 = v126 + (v127 << 10) + (v127 >> 22);
  v129 = v36 + v122 - 1051523 + ((v128 | ~v124) ^ v126);
  v130 = v128 + (v129 << 15) + (v129 >> 17);
  v131 = v6 + v124 - 2054922799 + ((v130 | ~v126) ^ v128);
  v132 = v130 + (v131 << 21) + (v131 >> 11);
  v133 = v29 + v126 + 1873313359 + ((v132 | ~v128) ^ v130);
  v134 = v132 + (v133 << 6) + (v133 >> 26);
  v135 = v47 + v128 - 30611744 + ((v134 | ~v130) ^ v132);
  v136 = v134 + (v135 << 10) + (v135 >> 22);
  v137 = v24 + v130 - 1560198380 + ((v136 | ~v132) ^ v134);
  v138 = v136 + (v137 << 15) + (v137 >> 17);
  v139 = v41 + v132 + 1309151649 + ((v138 | ~v134) ^ v136);
  v140 = v138 + (v139 << 21) + (v139 >> 11);
  v141 = v18 + v134 - 145523070 + ((v140 | ~v136) ^ v138);
  v142 = v140 + (v141 << 6) + (v141 >> 26);
  v143 = v35 + v136 - 1120210379 + ((v142 | ~v138) ^ v140);
  v144 = v142 + (v143 << 10) + (v143 >> 22);
  v145 = v11 + v138 + 718787259 + ((v144 | ~v140) ^ v142);
  v146 = v144 + (v145 << 15) + (v145 >> 17);
  v147 = v30 + v140 - 343485551 + ((v146 | ~v142) ^ v144);
  *result += v142;
  result[1] = v4 + v146 + (v147 << 21) + (v147 >> 11);
  result[2] = v3 + v146;
  result[3] = v2 + v144;
  return result;
}

ssize_t mDNSPlatformWriteTCP(uint64_t a1, const void *a2, size_t a3)
{
  if (!*(a1 + 65))
  {
    return -65569;
  }

  if (*(a1 + 4))
  {
    return -1;
  }

  result = write(*(a1 + 16), a2, a3);
  if (result < 0)
  {
    if (*__error() == 35)
    {
      return 0;
    }

    else
    {
      v4 = mDNSLogCategory_Default;
      v5 = __error();
      v6 = strerror(*v5);
      LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPosixWriteTCP - send %s", v6);
      return -1;
    }
  }

  return result;
}

ssize_t mDNSPlatformReadTCP(uint64_t a1, void *a2, size_t a3, _BYTE *a4)
{
  *a4 = 0;
  if (!*(a1 + 65))
  {
    return -65569;
  }

  if (*(a1 + 4))
  {
    *a4 = 1;
    return -1;
  }

  v5 = *(a1 + 16);
  result = recv(v5, a2, a3, 0);
  if (result >= 1)
  {
    mDNSPosixReadTCP_CLOSEDcount = 0;
    mDNSPosixReadTCP_EAGAINcount = 0;
    return result;
  }

  if (!result)
  {
    *a4 = 1;
    v7 = mDNSPosixReadTCP_CLOSEDcount + 1;
    mDNSPosixReadTCP_CLOSEDcount = v7;
    HIDWORD(v8) = -858993459 * v7 + 429496728;
    LODWORD(v8) = HIDWORD(v8);
    if ((v8 >> 2) <= 0xCCCCCCC)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPosixReadFromSocket - recv %d got CLOSED %d times", v5, v7);
      if (mDNSPosixReadTCP_CLOSEDcount >= 1000)
      {
        __assert_rtn("mDNSPosixReadTCP", "PlatformCommon.c", 694, "CLOSEDcount < 1000");
      }
    }

    return 0;
  }

  if (*__error() == 54)
  {
    result = 0;
    *a4 = 1;
    return result;
  }

  if (*__error() != 35)
  {
    v11 = mDNSLogCategory_Default;
    v12 = *__error();
    v13 = __error();
    v14 = strerror(*v13);
    LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPosixReadFromSocket - recv: %d (%s)", v12, v14);
    return -1;
  }

  v9 = mDNSPosixReadTCP_EAGAINcount + 1;
  mDNSPosixReadTCP_EAGAINcount = v9;
  HIDWORD(v10) = 652835029 * v9 + 17179864;
  LODWORD(v10) = HIDWORD(v10);
  if ((v10 >> 3) <= 0x418936)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: mDNSPosixReadFromSocket - recv %d got EAGAIN %d times", v5, v9);
    sleep(1u);
  }

  return 0;
}