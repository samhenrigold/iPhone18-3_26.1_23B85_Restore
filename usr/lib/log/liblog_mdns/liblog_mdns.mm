char *mdns_dns_service_type_description(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_29F27F860[a1];
  }
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
  v10 = *MEMORY[0x29EDCA608];
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
  v79 = *MEMORY[0x29EDCA608];
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

uint64_t DomainNameLength(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1;
  if (*a1)
  {
    v2 = a1;
    do
    {
      v3 = &v2[v1];
      v4 = v3[1];
      v2 = v3 + 1;
      v1 = v4;
    }

    while (v4);
  }

  return v2 - a1 + 1;
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

uint64_t DNSMessageGetOptRecord(unsigned __int16 *a1, unint64_t a2, void *a3, char **a4)
{
  v17 = 0;
  result = DNSMessageGetAnswerSection(a1, a2, &v17);
  if (!result)
  {
    v9 = __rev16(a1[4]) + (bswap32(a1[3]) >> 16);
    if (v9)
    {
      while (1)
      {
        v16 = 0;
        LODWORD(result) = _DNSMessageExtractRecordEx(a1, a2, v17, 0, &v16, 0, 0, 0, 0, 0, 0, 0, 0, &v17);
        if (result || v16 == 41)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_6;
        }
      }

      if (v16 == 41)
      {
        v14 = -6742;
      }

      else
      {
        v14 = 0;
      }

      if (result)
      {
        return result;
      }

      else
      {
        return v14;
      }
    }

    else
    {
LABEL_6:
      v10 = __rev16(a1[5]);
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v15 = 0;
          v13 = v17;
          result = _DNSMessageExtractRecordEx(a1, a2, v17, 0, &v15, 0, 0, 0, 0, 0, 0, 0, 0, &v17);
          if (result)
          {
            break;
          }

          if (v15 == 41)
          {
            if (v12 || *v13)
            {
              return 4294960554;
            }

            v11 = (v17 - v13);
            v12 = v13;
          }

          else
          {
            v13 = v12;
          }

          if (!--v10)
          {
            if (!a3)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }
        }
      }

      else
      {
        v13 = 0;
        v11 = 0;
        if (a3)
        {
LABEL_16:
          *a3 = v13;
        }

LABEL_17:
        result = 0;
        if (a4)
        {
          *a4 = v11;
        }
      }
    }
  }

  return result;
}

uint64_t DNSMessageGetExtendedDNSError(unsigned __int16 *a1, unint64_t a2, _WORD *a3, char **a4, _WORD *a5)
{
  v15 = 0;
  v16 = 0;
  result = DNSMessageGetOptRecord(a1, a2, &v16, &v15);
  if (!result)
  {
    if (v16)
    {
      if (v15 < 0xB)
      {
        return 4294960546;
      }

      v9 = &v15[v16];
      v10 = (v16 + 11);
      while (v10 < v9)
      {
        v11 = v10;
        if ((v9 - v10) < 4)
        {
          return 4294960546;
        }

        v12 = __rev16(*(v10 + 1));
        if (v9 - (v10 + 4) < v12)
        {
          return 4294960546;
        }

        v13 = __rev16(*v10);
        v10 += v12 + 4;
        if (v13 == 15)
        {
          if (v12 < 2)
          {
            return 4294960546;
          }

          v14 = v11 + 6;
          if (v10 == v11 + 6)
          {
            v14 = 0;
          }

          if (a3)
          {
            *a3 = bswap32(*(v11 + 2)) >> 16;
          }

          if (a4)
          {
            *a4 = v14;
          }

          result = 0;
          if (a5)
          {
            *a5 = v10 - (v11 + 6);
          }

          return result;
        }
      }
    }

    return 4294960569;
  }

  return result;
}

uint64_t DNSMessageWriteQuery(__int16 a1, __int16 a2, _BYTE *__src, __int16 a4, __int16 a5, uint64_t a6, void *a7)
{
  *(a6 + 10) = 0;
  *(a6 + 6) = 0;
  *a6 = HIBYTE(a1);
  *(a6 + 1) = a1;
  *(a6 + 2) = HIBYTE(a2);
  *(a6 + 3) = a2;
  *(a6 + 4) = 256;
  v11 = *__src;
  v12 = __src;
  if (*__src)
  {
    v12 = __src;
    do
    {
      v13 = &v12[v11];
      v14 = v13[1];
      v12 = v13 + 1;
      v11 = v14;
    }

    while (v14);
  }

  v15 = v12 - __src + 1;
  if (v15 > 0x100)
  {
    return 4294960553;
  }

  memcpy((a6 + 12), __src, v12 - __src + 1);
  v16 = (a6 + 12 + v15);
  *v16 = HIBYTE(a4);
  v16[1] = a4;
  v16[2] = HIBYTE(a5);
  v16[3] = a5;
  result = 0;
  if (a7)
  {
    *a7 = v15 + 16;
  }

  return result;
}

char *DNSMessageCollapse(char *a1, unint64_t a2, void *a3, char **a4)
{
  v72 = *MEMORY[0x29EDCA608];
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

uint64_t DomainNameAppendDomainName(_BYTE *a1, _BYTE *a2, void *a3)
{
  v5 = *a1;
  v6 = a1;
  if (*a1)
  {
    v6 = a1;
    do
    {
      v7 = &v6[v5];
      v8 = v7[1];
      v6 = v7 + 1;
      v5 = v8;
    }

    while (v8);
  }

  v9 = v6 - a1;
  v10 = *a2;
  v11 = a2;
  if (*a2)
  {
    v11 = a2;
    do
    {
      v12 = &v11[v10];
      v13 = v12[1];
      v11 = v12 + 1;
      v10 = v13;
    }

    while (v13);
  }

  result = 4294960553;
  if (v9 <= 0x100)
  {
    v15 = v11 - a2 + 1;
    if (v15 <= 0x100)
    {
      v16 = v15 + v9;
      if (v15 + v9 <= 0x100)
      {
        memcpy(&a1[v9], a2, v15);
        result = 0;
        if (a3)
        {
          *a3 = &a1[v16];
        }
      }
    }
  }

  return result;
}

uint64_t DomainNameAppendString(_BYTE *a1, char *a2, void *a3)
{
  v3 = a1;
  while (*v3)
  {
    v3 += *v3 + 1;
    if (v3 >= a1 + 256)
    {
      return 4294960554;
    }
  }

  v5 = *a2;
  if (*a2)
  {
    if (v5 != 46)
    {
      goto LABEL_9;
    }

    if (a2[1])
    {
      LOBYTE(v5) = 46;
LABEL_9:
      v6 = a1 + 255;
      do
      {
        if (v3 + 64 >= v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = v3 + 64;
        }

        v8 = v3 + 1;
        v9 = v3 + 1;
        v10 = a2;
        do
        {
          a2 = v10 + 1;
          if (v5 == 92)
          {
            v11 = *a2;
            if (!*a2)
            {
              return 4294960546;
            }

            LOBYTE(v5) = *a2;
            a2 = v10 + 2;
            if (v11 - 48 <= 9)
            {
              v12 = *a2;
              if ((v12 - 48) <= 9)
              {
                v13 = v10[3];
                if ((v13 - 48) <= 9)
                {
                  v14 = 100 * v11 + 10 * v12 + v13;
                  v15 = v10 + 4;
                  if (v14 < 5584)
                  {
                    a2 = v15;
                    LOBYTE(v5) = v14 + 48;
                  }
                }
              }
            }
          }

          else if (v5 == 46)
          {
            break;
          }

          if (v9 >= v7)
          {
            return 4294960545;
          }

          *v9++ = v5;
          LOBYTE(v5) = *a2;
          v10 = a2;
        }

        while (*a2);
        if (v9 == v8)
        {
          return 4294960554;
        }

        *v3 = v9 - v8;
        *v9 = 0;
        LOBYTE(v5) = *a2;
        v3 = v9;
      }

      while (*a2);
      goto LABEL_29;
    }
  }

  v9 = v3;
LABEL_29:
  result = 0;
  if (a3)
  {
    *a3 = v9 + 1;
  }

  return result;
}

_BYTE *DomainNameDupEx(_BYTE *result, int a2, unsigned __int8 **a3, size_t *a4)
{
  v7 = result;
  v8 = *result;
  v9 = result;
  if (*result)
  {
    v9 = result;
    do
    {
      v10 = &v9[v8];
      v11 = v10[1];
      v9 = v10 + 1;
      v8 = v11;
    }

    while (v11);
  }

  v12 = v9 - result + 1;
  if (v9 - result == -1 || (result = malloc_type_malloc(v9 - result + 1, 0x1F4B2FEBuLL)) == 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    memcpy(result, v7, v12);
    if (a2)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v13;
        do
        {
          v16 = v15 + 1;
          v17 = v16;
          v18 = v14;
          do
          {
            v19 = *v17;
            if ((v19 - 65) < 0x1A)
            {
              LOBYTE(v19) = v19 + 32;
            }

            *v17++ = v19;
            --v18;
          }

          while (v18);
          v15 = &v16[v14];
          v14 = *v15;
        }

        while (*v15);
      }
    }

    *a3 = v13;
    if (a4)
    {
      *a4 = v12;
    }

    return 0;
  }

  return result;
}

BOOL DomainLabelEqual(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *a1;
  return v2 == *a2 && mdns_memcmp_us_ascii_case_insensitive(a1 + 1, a2 + 1, v2) == 0;
}

uint64_t DomainNameLabelCount(uint64_t result)
{
  v1 = *result;
  if (!*result)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = v2;
  while (v1 <= 0x3F)
  {
    v3 += v1 + 1;
    if (&v3[-v2] > 255)
    {
      break;
    }

    result = (result + 1);
    v1 = *v3;
    if (!*v3)
    {
      return result;
    }
  }

  return 0xFFFFFFFFLL;
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

unsigned __int16 *DNSRecordTypeStringToValue(const void *a1)
{
  result = bsearch(a1, &DNSRecordTypeStringToValue_sTable, 0x60uLL, 0x10uLL, _DNSRecordTypeStringToValueCmp);
  if (result)
  {
    return result[4];
  }

  return result;
}

const char *DNSClassTypeToString(int a1)
{
  v1 = "ANY";
  if (a1 != 255)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return "IN";
  }

  else
  {
    return v1;
  }
}

const char *DNSRCodeToString(int a1)
{
  result = "NoError";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "FormErr";
      break;
    case 2:
      result = "ServFail";
      break;
    case 3:
      result = "NXDomain";
      break;
    case 4:
      result = "NotImp";
      break;
    case 5:
      result = "Refused";
      break;
    case 6:
      result = "YXDomain";
      break;
    case 7:
      result = "YXRRSet";
      break;
    case 8:
      result = "NXRRSet";
      break;
    case 9:
      result = "NotAuth";
      break;
    case 10:
      result = "NotZone";
      break;
    case 11:
      result = "DSOTYPENI";
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      goto LABEL_5;
    case 16:
      result = "BADVERS";
      break;
    case 17:
      result = "BADKEY";
      break;
    case 18:
      result = "BADTIME";
      break;
    case 19:
      result = "BADMODE";
      break;
    case 20:
      result = "BADNAME";
      break;
    case 21:
      result = "BADALG";
      break;
    case 22:
      result = "BADTRUNC";
      break;
    case 23:
      result = "BADCOOKIE";
      break;
    default:
      if (a1 == 0xFFFF)
      {
        result = "Reserved";
      }

      else
      {
LABEL_5:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t DNSRCodeFromString(const void *a1)
{
  v1 = bsearch(a1, &DNSRCodeFromString_sTable, 0x15uLL, 0x10uLL, _DNSRCodeFromStringCmp);
  if (v1)
  {
    return v1[2];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DNSMessageToString(unsigned __int16 *a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  __src[127] = *MEMORY[0x29EDCA608];
  v114 = 0;
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global);
  }

  v117 = 0;
  memset(v116, 0, sizeof(v116));
  v115 = 0;
  v113 = 0;
  memset(v127, 0, sizeof(v127));
  bzero(v126, 0x3F1uLL);
  memset(v125, 0, 256);
  memset(v124, 0, sizeof(v124));
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_662;
  }

  _GetCUSymAddr_DataBuffer_Init_sAddr(v116, v127, 512, -1);
  if (a2 >= 0xC)
  {
    v100 = a4;
    v8 = (*(a1 + 2) >> 3) & 0xF;
    v9 = *(a1 + 5);
    v103 = *(a1 + 4);
    v10 = v9 | (v103 << 8);
    v95 = *(a1 + 6);
    v96 = *(a1 + 7);
    v102 = _byteswap_ushort(a1[3]);
    v101 = __rev16(a1[4]);
    v97 = __rev16(a1[5]);
    v11 = &unk_2999FF422;
    v109 = a2;
    v110 = a1;
    if ((a3 & 0x20) == 0)
    {
      v111 = *(a1 + 5);
      v12 = *(a1 + 2) << 8;
      v13 = a1;
      v14 = *(a1 + 3) | (*(a1 + 2) << 8);
      v15 = __rev16(*v13);
      if ((a3 & 4) != 0)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        v17 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
        v20 = 81;
        if (v12 < 0)
        {
          v20 = 82;
        }

        v92 = v14;
        v93 = v20;
        v91 = v15;
        v19 = "id: 0x%04X (%u), flags: 0x%04X (%c/";
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "ID:               0x%04X (%u)\n", v15, v15);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        v17 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
        v18 = 81;
        if (v12 < 0)
        {
          v18 = 82;
        }

        v91 = v18;
        v19 = "Flags:            0x%04X %c/";
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = v17(v116, v19);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      v98 = v8;
      v94 = v10;
      if (v8 > 6 || v8 == 3)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "OPCODE%d");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s");
      }

      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      v21 = v14 & 0xF;
      v22 = &word_29F27FFE8;
      v23 = 7;
      do
      {
        if ((*v22 & v14) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, ", %s", *(v22 - 1));
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }
        }

        v22 += 8;
        --v23;
      }

      while (v23);
      v24 = DNSRCodeToString(v14 & 0xF);
      if (v24)
      {
        v25 = v24;
        a1 = v110;
        LODWORD(v8) = v98;
        v10 = v94;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        v9 = v111;
        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, ", %s", v25);
        a2 = v109;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }
      }

      else
      {
        a1 = v110;
        LODWORD(v8) = v98;
        v10 = v94;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, ", RCODE%d", v21);
        v9 = v111;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }
      }

      if ((a3 & 4) != 0)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, ")");
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        if ((a3 & 0x40) != 0)
        {
          goto LABEL_646;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_662;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, ", counts: %u/%u/%u/%u", v10, v102, v101, v97);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        v11 = ", ";
        if ((a3 & 0x10) != 0)
        {
          goto LABEL_646;
        }

        goto LABEL_76;
      }

      if ((a3 & 0x40) != 0)
      {
        goto LABEL_646;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "\n");
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "Question count:   %u\n", v10);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "Answer count:     %u\n", v102);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "Authority count:  %u\n", v101);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_662;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "Additional count: %u\n", v97);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      v11 = &unk_2999FF422;
    }

    if ((a3 & 0x10) != 0)
    {
      goto LABEL_646;
    }

LABEL_76:
    v107 = v11;
    v99 = v8;
    v112 = (a3 >> 3) & 1;
    v115 = (a1 + 6);
    v106 = a3;
    if (v10)
    {
      v26 = 0;
      v27 = 0;
      v104 = (v103 << 8) + v9;
      v28 = v125;
      while (1)
      {
        LOWORD(__src[0]) = 0;
        LOWORD(v128[0]) = 0;
        CUSymAddr_DataBuffer_AppendF_sAddr = DNSMessageExtractQuestion(v110, a2, v115, v28, __src, v128, &v115);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v29 = SLOWORD(v128[0]) < 0;
        if (a3)
        {
          LOWORD(v128[0]) &= ~0x8000u;
        }

        v30 = a3 & v29;
        if ((a3 & 4) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s", v107);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          if (v27 && (DomainNameEqual(v28, v27) & 1) != 0)
          {
            v31 = v28;
            v28 = v27;
          }

          else
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v28, 0, v126, 0);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }

            if (v112 && _NameIsPrivate(v126))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%~s ");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s ");
            }

            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }

            if (v28 == v125)
            {
              v31 = v124;
            }

            else
            {
              v31 = v125;
            }

            *v31 = 0;
          }

          v35 = "ANY";
          if (LOWORD(v128[0]) != 255)
          {
            v35 = 0;
          }

          if (LOWORD(v128[0]) == 1)
          {
            v36 = "IN";
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s", v36);
            a3 = v106;
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            a3 = v106;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "CLASS%u", LOWORD(v128[0]));
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          if (a3)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v37 = "QM";
            if (v30)
            {
              v37 = "QU";
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s", v37);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          v38 = DNSRecordTypeValueToString(LOWORD(__src[0]));
          if (v38)
          {
            v39 = v38;
            a2 = v109;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v90 = v39;
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s?");
          }

          else
          {
            a2 = v109;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v90 = LOWORD(__src[0]);
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " TYPE%u?");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v27 = v28;
          v107 = ", ";
        }

        else
        {
          if (!v26)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "\nQUESTION SECTION\n");
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v28, 0, v126, 0);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          if (v112 && _NameIsPrivate(v126))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%~-30s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%-30s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          v32 = "QM";
          if (v30)
          {
            v32 = "QU";
          }

          if ((a3 & 1) == 0)
          {
            v32 = &unk_2999FF422;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %2s", v32);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v33 = "ANY";
          if (LOWORD(v128[0]) != 255)
          {
            v33 = 0;
          }

          if (LOWORD(v128[0]) == 1)
          {
            v34 = "IN";
          }

          else
          {
            v34 = v33;
          }

          a2 = v109;
          if (v34)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " CLASS%u");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v40 = DNSRecordTypeValueToString(LOWORD(__src[0]));
          if (v40)
          {
            v41 = v40;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v90 = v41;
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %-5s\n");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v90 = LOWORD(__src[0]);
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " TYPE%u\n");
          }

          v31 = v28;
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }
        }

        ++v26;
        v28 = v31;
        if (v104 == v26)
        {
          goto LABEL_202;
        }
      }

LABEL_654:
      v79 = CUSymAddr_DataBuffer_AppendF_sAddr;
      goto LABEL_655;
    }

    v27 = 0;
    v31 = v125;
LABEL_202:
    if (v97 + v101 + v102)
    {
      for (i = 0; i < v97 + v101 + v102; ++i)
      {
        __src[0] = 0;
        v128[0] = 0;
        LODWORD(v123) = 0;
        LOWORD(v122) = 0;
        LOWORD(v121) = 0;
        CUSymAddr_DataBuffer_AppendF_sAddr = _DNSMessageExtractRecordEx(v110, a2, v115, v31, &v122, &v121, &v123, __src, v128, 0, 0, 0, 0, &v115);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v31, 0, v126, 0);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        v43 = v121 < 0;
        if (a3)
        {
          LOWORD(v121) = v121 & 0x7FFF;
        }

        v44 = a3 & v43;
        if ((a3 & 4) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s", v107);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          if (v27 && (DomainNameEqual(v31, v27) & 1) != 0)
          {
            v45 = v31;
            v31 = v27;
          }

          else
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v31, 0, v126, 0);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
            }

            if (v112 && _NameIsPrivate(v126))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%~s ");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s ");
            }

            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
            }

            if (v31 == v125)
            {
              v45 = v124;
            }

            else
            {
              v45 = v125;
            }

            *v45 = 0;
          }

          if (v122 == 41)
          {
            if (v44)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "CF ");
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_654;
              }
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            a2 = v109;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "OPT %u", v121);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
            }

            if (v123)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " 0x%08X");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " 0");
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
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%u", v123);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
            }

            if (v44)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " CF");
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_654;
              }
            }

            v46 = "ANY";
            if (v121 != 255)
            {
              v46 = 0;
            }

            if (v121 == 1)
            {
              v47 = "IN";
            }

            else
            {
              v47 = v46;
            }

            if (v47)
            {
              a2 = v109;
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s", v47);
              a3 = v106;
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_654;
              }
            }

            else
            {
              a2 = v109;
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              a3 = v106;
              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " CLASS%u", v121);
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_654;
              }
            }

            if (DNSRecordTypeValueToString(v122))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_662;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " TYPE%u");
            }
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          v27 = v31;
          v107 = ", ";
          if ((a3 & 2) == 0)
          {
            goto LABEL_367;
          }

          goto LABEL_368;
        }

        if (!v102 || i)
        {
          if (v101 && ((v95 << 8) + v96) == i)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "\nAUTHORITY SECTION\n");
          }

          else
          {
            if (v101 + v102 != i)
            {
              goto LABEL_285;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "\nADDITIONAL SECTION\n");
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
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "\nANSWER SECTION\n");
        }

        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

LABEL_285:
        if (v122 == 41)
        {
          if (v112 && _NameIsPrivate(v126))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%~s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          v48 = &unk_2999FF422;
          if (v44)
          {
            v48 = " CF";
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s OPT %u", v48, v121);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          a2 = v109;
          if (v123)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " 0x%08X");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " 0");
          }
        }

        else
        {
          if (v112)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%~-42s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%-42s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          v49 = &unk_2999FF422;
          if (v44)
          {
            v49 = "CF";
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %6u %2s", v123, v49);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          v50 = "ANY";
          if (v121 != 255)
          {
            v50 = 0;
          }

          if (v121 == 1)
          {
            v51 = "IN";
          }

          else
          {
            v51 = v50;
          }

          a2 = v109;
          if (v51)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s", v51);
            a3 = v106;
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
            }
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            a3 = v106;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " CLASS%u", v121);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_654;
            }
          }

          if (DNSRecordTypeValueToString(v122))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %-5s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " TYPE%u");
          }
        }

        v45 = v31;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

        if ((a3 & 2) == 0)
        {
LABEL_367:
          DNSRecordDataToStringEx(__src[0], v128[0], v122, v110, a2, v112, &v114);
        }

LABEL_368:
        if (v114)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s", v114);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          if (v114)
          {
            free(v114);
            v114 = 0;
          }
        }

        else
        {
          if (v112)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v90 = v128[0];
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " [%zu B]");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_662;
            }

            v91 = v128[0];
            v92 = v128[0];
            v90 = __src[0];
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %#H");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }
        }

        if ((a3 & 4) != 0)
        {
          if (v122 == 5)
          {
            DomainName = DNSMessageExtractDomainName(v110, a2, __src[0], v45, 0);
            v53 = v125;
            if (v45 == v125)
            {
              v53 = v124;
            }

            if (!DomainName)
            {
              v27 = v45;
              v45 = v53;
            }

            *v45 = 0;
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
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "\n");
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }
        }

        v31 = v45;
      }
    }

    if (v99 != 6)
    {
      goto LABEL_646;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "[");
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_654;
      }

      v54 = v110 + a2;
      v55 = v115;
      if (v115 < v110 + a2)
      {
        if ((a3 >> 2))
        {
          v56 = &unk_2999FF422;
        }

        else
        {
          v56 = "\n\t";
        }

        if ((a3 >> 2))
        {
          v57 = ", ";
        }

        else
        {
          v57 = ",\n\t";
        }

        v105 = v57;
        v108 = v110 + a2;
        do
        {
          if (v55 < v110)
          {
            v79 = 4294960586;
            goto LABEL_655;
          }

          if ((v54 - v55) < 4 || (v58 = __rev16(*(v55 + 1)), v59 = v55 + 4, v54 - (v55 + 4) < v58))
          {
LABEL_663:
            v79 = 4294960546;
            goto LABEL_655;
          }

          v60 = *v55;
          v61 = &v59[v58];
          v115 = &v59[v58];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s", v56);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          v62 = __rev16(v60);
          if (v62 > 63)
          {
            a3 = v106;
            if (v62 <= 65)
            {
              if (v62 == 64)
              {
                v63 = "SUBSCRIBE";
              }

              else
              {
                v63 = "PUSH";
              }

              goto LABEL_443;
            }

            if (v62 == 66)
            {
              v63 = "UNSUBSCRIBE";
              goto LABEL_443;
            }

            if (v62 == 67)
            {
              v63 = "RECONFIRM";
              goto LABEL_443;
            }
          }

          else
          {
            a3 = v106;
            if (v62 > 1)
            {
              if (v62 == 2)
              {
                v63 = "Retry Delay";
                goto LABEL_443;
              }

              if (v62 == 3)
              {
                v63 = "Encryption Padding";
                goto LABEL_443;
              }
            }

            else
            {
              v63 = "Reserved";
              if (!v62)
              {
                goto LABEL_443;
              }

              if (v62 == 1)
              {
                v63 = "KeepAlive";
LABEL_443:
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_662;
                }

                v90 = v63;
                CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s: ");
                goto LABEL_447;
              }
            }
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_662;
          }

          v90 = v62;
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "DSO-TYPE%u: ");
LABEL_447:
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          v122 = 0;
          v123 = (v55 + 4);
          bzero(__src, 0x3F1uLL);
          if (v62 > 65)
          {
            if (v62 == 66)
            {
              if (v58 != 2)
              {
                goto LABEL_665;
              }

              v72 = *(v55 + 2);
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%u", __rev16(v72));
                goto LABEL_582;
              }

              goto LABEL_633;
            }

            if (v62 != 67)
            {
              goto LABEL_524;
            }

            v64 = DNSMessageExtractDomainNameString(v110, v109, v55 + 4, __src, &v123);
            if (v64)
            {
              goto LABEL_582;
            }

            v69 = v123;
            if (v61 - v123 < 4)
            {
LABEL_634:
              v79 = 4294960546;
              goto LABEL_628;
            }

            v123 += 4;
            if (v112 && _NameIsPrivate(__src))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v90 = __src;
              v70 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%~s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v90 = __src;
              v70 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s");
            }

            if (v70)
            {
              goto LABEL_638;
            }

            v73 = __rev16(*(v69 + 1));
            v74 = "ANY";
            if (v73 != 255)
            {
              v74 = 0;
            }

            if (v73 == 1)
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

              a3 = v106;
              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s", v75);
                if (v64)
                {
                  goto LABEL_582;
                }

                goto LABEL_587;
              }

LABEL_633:
              v79 = 4294960561;
              goto LABEL_628;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " CLASS%u", v73);
              a3 = v106;
              if (v64)
              {
                goto LABEL_582;
              }

LABEL_587:
              v80 = __rev16(*v69);
              v81 = DNSRecordTypeValueToString(v80);
              if (v81)
              {
                v82 = v81;
                v83 = v109;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_633;
                }

                v90 = v82;
                v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s");
              }

              else
              {
                v83 = v109;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_633;
                }

                v90 = v80;
                v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " TYPE%u");
              }

              if (v64)
              {
                goto LABEL_582;
              }

              v87 = v123;
              v88 = v61 - v123;
              DNSRecordDataToStringEx(v123, v61 - v123, v80, v110, v83, v112, &v122);
              if (v122)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s", v122);
                  if (v64)
                  {
                    goto LABEL_582;
                  }

                  if (v122)
                  {
                    free(v122);
                    v122 = 0;
                  }

LABEL_627:
                  v79 = 0;
                  goto LABEL_628;
                }
              }

              else if (v112)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v90 = v88;
                  v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " [%zu B]");
                  goto LABEL_626;
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
                  v91 = v88;
                  v92 = v88;
                  v90 = v87;
                  v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " '%H'");
                  goto LABEL_626;
                }
              }

              goto LABEL_633;
            }
          }

          else
          {
            if (v62 != 64)
            {
              if (v62 == 65)
              {
                if (v61 <= v59)
                {
                  goto LABEL_663;
                }

                while (1)
                {
                  v120 = 0;
                  v121 = 0;
                  v118 = 0;
                  v119 = 0;
                  memset(v128, 0, sizeof(v128));
                  v64 = _DNSMessageExtractRecordEx(v110, v109, v59, v128, &v118 + 1, &v118, &v119, &v121, &v120, 0, 0, 0, 0, &v123);
                  if (v64)
                  {
                    goto LABEL_582;
                  }

                  if (v123 > v61)
                  {
                    goto LABEL_634;
                  }

                  v64 = DomainNameToString(v128, 0, __src, 0);
                  if (v64)
                  {
                    goto LABEL_582;
                  }

                  if (v112 && _NameIsPrivate(__src))
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v90 = __src;
                    v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%~s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v90 = __src;
                    v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s");
                  }

                  if (v64)
                  {
                    goto LABEL_582;
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_633;
                  }

                  v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " 0x%08X", v119);
                  if (v64)
                  {
                    goto LABEL_582;
                  }

                  v65 = "ANY";
                  if (v118 != 255)
                  {
                    v65 = 0;
                  }

                  if (v118 == 1)
                  {
                    v66 = "IN";
                  }

                  else
                  {
                    v66 = v65;
                  }

                  if (v66)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v90 = v66;
                    v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v90 = v118;
                    v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " CLASS%u");
                  }

                  if (v64)
                  {
                    goto LABEL_582;
                  }

                  v67 = DNSRecordTypeValueToString(HIWORD(v118));
                  if (v67)
                  {
                    v68 = v67;
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v90 = v68;
                    v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v90 = HIWORD(v118);
                    v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " TYPE%u");
                  }

                  if (v64)
                  {
                    goto LABEL_582;
                  }

                  DNSRecordDataToStringEx(v121, v120, HIWORD(v118), v110, v109, v112, &v122);
                  if (v122)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_633;
                    }

                    v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s", v122);
                    if (v64)
                    {
                      goto LABEL_582;
                    }

                    if (v122)
                    {
                      free(v122);
                      v122 = 0;
                    }
                  }

                  else
                  {
                    if (v112)
                    {
                      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                      {
                        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                      }

                      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                      {
                        goto LABEL_633;
                      }

                      v90 = v120;
                      v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " [%zu B]");
                    }

                    else
                    {
                      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                      {
                        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                      }

                      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                      {
                        goto LABEL_633;
                      }

                      v91 = v120;
                      v92 = v120;
                      v90 = v121;
                      v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %#H");
                    }

                    if (v64)
                    {
                      goto LABEL_582;
                    }
                  }

                  v59 = v123;
                  if (v123 >= v61)
                  {
                    goto LABEL_627;
                  }
                }
              }

LABEL_524:
              if (v112)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v90 = v58;
                  v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "[%u B]");
                  goto LABEL_582;
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
                  v91 = v58;
                  v92 = v58;
                  v90 = (v55 + 4);
                  v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "'%H'");
LABEL_582:
                  v79 = v64;
                  goto LABEL_628;
                }
              }

              goto LABEL_633;
            }

            v64 = DNSMessageExtractDomainNameString(v110, v109, v55 + 4, __src, &v123);
            if (v64)
            {
              goto LABEL_582;
            }

            v71 = v123;
            if (v61 - v123 != 4)
            {
              v79 = 4294960553;
              goto LABEL_628;
            }

            if (v112 && _NameIsPrivate(__src))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v90 = __src;
              v70 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%~s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v90 = __src;
              v70 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "%s");
            }

            if (v70)
            {
LABEL_638:
              v79 = v70;
              goto LABEL_637;
            }

            v76 = __rev16(*(v71 + 1));
            v77 = "ANY";
            if (v76 != 255)
            {
              v77 = 0;
            }

            if (v76 == 1)
            {
              v78 = "IN";
            }

            else
            {
              v78 = v77;
            }

            if (v78)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              a3 = v106;
              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_633;
              }

              v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s", v78);
              if (v64)
              {
                goto LABEL_582;
              }

LABEL_596:
              v84 = __rev16(*v71);
              v85 = DNSRecordTypeValueToString(v84);
              if (v85)
              {
                v86 = v85;
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v90 = v86;
                  v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " %s");
                  goto LABEL_626;
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
                  v90 = v84;
                  v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " TYPE%u");
LABEL_626:
                  if (v64)
                  {
                    goto LABEL_582;
                  }

                  goto LABEL_627;
                }
              }

              goto LABEL_633;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              v64 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, " CLASS%u", v76);
              a3 = v106;
              if (v64)
              {
                goto LABEL_582;
              }

              goto LABEL_596;
            }
          }

          v79 = 4294960561;
LABEL_637:
          a3 = v106;
LABEL_628:
          if (v122)
          {
            free(v122);
          }

          if (v79)
          {
            goto LABEL_655;
          }

          v55 = v115;
          v56 = v105;
          v54 = v108;
        }

        while (v115 < v108);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        if ((a3 >> 2))
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "]", v90, v91, v92, v93);
        }

        else
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v116, "\n]", v90, v91, v92, v93);
        }

        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_654;
        }

LABEL_646:
        if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
        }

        if (_GetCUSymAddr_DataBuffer_Append_sAddr)
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Append_sAddr(v116, &unk_2999FF422, 1);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_654;
          }

          if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
          }

          if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Detach_sAddr(v116, v100, &v113);
            goto LABEL_654;
          }
        }
      }
    }

LABEL_662:
    v79 = 4294960561;
    goto LABEL_655;
  }

LABEL_665:
  v79 = 4294960553;
LABEL_655:
  if (v114)
  {
    free(v114);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v116);
  }

  return v79;
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
  v100[127] = *MEMORY[0x29EDCA608];
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global);
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

      DomainNameString = _GetCUSymAddr_DataBuffer_Append_sAddr(v94, &unk_2999FF422, 1);
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
          dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253);
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
                v71 = off_29F2801A8[*v48];
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
            v56 = &unk_2999FF422;
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
            v59 = &unk_2999FF422;
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
        v38 = &unk_2999FF422;
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
      v72 = &unk_2999FF422;
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
            v81 = off_29F2801C0[v79];
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
    dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253);
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

uint64_t _AppendDomainNameStringEx(uint64_t a1, void *a2, int a3, const char *a4)
{
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = &unk_2999FF422;
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
  v18 = *MEMORY[0x29EDCA608];
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
  while (1)
  {
    v8 = mdns_parse_printable_ascii_run(v6, a3, 92, __s);
    if (!v8)
    {
      break;
    }

    v9 = v8;
    if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
    }

    if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
    {
      return 4294960561;
    }

    result = _GetCUSymAddr_DataBuffer_Append_sAddr(a1, v6, v9);
    if (result)
    {
      return result;
    }

    v6 += v9;
LABEL_19:
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
    goto LABEL_18;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "\\%03d");
LABEL_18:
    if (result)
    {
      return result;
    }

    goto LABEL_19;
  }

  return 4294960561;
}

char *DNSExtendedDNSErrorCodeToString(unsigned int a1)
{
  if (a1 > 0x18)
  {
    return 0;
  }

  else
  {
    return off_29F2801C0[a1];
  }
}

uint64_t _AppendIPAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
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

uint64_t DNSComputeDNSKeyTag(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + v2);
      if ((v2 & 1) == 0)
      {
        v4 <<= 8;
      }

      v3 += v4;
      ++v2;
    }

    while (a2 != v2);
  }

  else
  {
    v3 = 0;
  }

  return (v3 + HIWORD(v3));
}

uint64_t DNSMessagePrintObfuscatedString(uint64_t a1, uint64_t a2, const char *a3)
{
  if (_NameIsPrivate(a3))
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%~s", a3);
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
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%s");
    }
  }

  return 4294960561;
}

uint64_t DNSMessagePrintObfuscatedIPv4Address(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = bswap32(a3);
  v7 = a3;
  if (a3 && a3 != 2130706433)
  {
    return _DNSMessagePrintObfuscatedIPAddress(a1, a2, &v6, 4);
  }

  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (_GetCUSymAddr_SNPrintF_sAddr)
  {
    return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%#.4a", COERCE_DOUBLE(&v7));
  }

  else
  {
    return 4294960561;
  }
}

uint64_t _DNSMessagePrintObfuscatedIPAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a4 != 16 && a4 != 4)
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

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  result = _GetCUSymAddr_SNPrintF_sAddr(v9, 33, "%.4H", a3, a4, a4);
  if ((result & 0x80000000) == 0)
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%~s", v9);
    }

    return 4294960561;
  }

  return result;
}

uint64_t DNSMessagePrintObfuscatedIPv6Address(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 | *(a3 + 7))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a3 + 15) >= 2u;
  }

  if (v6)
  {

    return _DNSMessagePrintObfuscatedIPAddress(a1, a2, a3, 16);
  }

  else
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%.16a", *&a3);
    }

    else
    {
      return 4294960561;
    }
  }
}

char *dnssec_result_to_description(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_29F280288[a1];
  }
}

char *dnssec_insecure_validation_state_to_description(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_29F2802A8[a1];
  }
}

uint64_t mdns_parse_uint16_be(unsigned __int16 *a1, unint64_t a2, void *a3, int *a4)
{
  if (a1 <= a2)
  {
    if (a2 - a1 >= 2)
    {
      result = bswap32(*a1) >> 16;
      v5 = 0;
      if (a3)
      {
        *a3 = a1 + 1;
      }
    }

    else
    {
      result = 0;
      v5 = -6750;
    }
  }

  else
  {
    result = 0;
    v5 = -6710;
  }

  if (a4)
  {
    *a4 = v5;
  }

  return result;
}

unsigned __int8 *mdns_parse_length_prefixed_string(unsigned __int8 *a1, unsigned __int8 *a2, void *a3, int *a4)
{
  if (a1 > a2)
  {
    goto LABEL_4;
  }

  if (a2 == a1)
  {
    goto LABEL_6;
  }

  v6 = *a1;
  result = a1 + 1;
  v5 = v6;
  if (result > a2)
  {
LABEL_4:
    result = 0;
    v7 = -6710;
    goto LABEL_7;
  }

  if (a2 - result < v5)
  {
LABEL_6:
    result = 0;
    v7 = -6750;
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      *a3 = &result[v5];
    }
  }

LABEL_7:
  if (a4)
  {
    *a4 = v7;
  }

  return result;
}

uint64_t mdns_parse_printable_ascii_run(unint64_t a1, unint64_t a2, int a3, char *__s)
{
  if (a1 >= a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = a2 - a1;
  while (1)
  {
    v9 = *(a1 + v7);
    if (v9 == a3 || (v9 - 127) < 0xFFFFFFA1 || __s && strchr(__s, v9))
    {
      break;
    }

    if (v8 == ++v7)
    {
      return v8;
    }
  }

  return v7;
}

uint64_t OSLogCopyFormattedString(const char *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (stricmp_prefix())
    {
      v5 = &off_2A2001448;
      v6 = 5;
      while (strcasecmp(a1, *v5))
      {
        v5 += 2;
        if (!--v6)
        {
          goto LABEL_15;
        }
      }

      v15 = (v5[1])(v4);
      goto LABEL_18;
    }

    v9 = bsearch(a1 + 3, &DNSRecordTypeStringToValue_sTable, 0x60uLL, 0x10uLL, _DNSRecordTypeStringToValueCmp);
    if (v9)
    {
      v10 = v9[4];
      if (v9[4])
      {
        v11 = v4;
        v12 = v4;
        v13 = [v12 bytes];
        v14 = [v12 length];

        v15 = _log_mdns_create_record_data_attributed_string(v13, v14, v10);
LABEL_18:
        v16 = v15;

        goto LABEL_20;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    goto LABEL_20;
  }

  v7 = &off_2A2001498;
  v8 = 21;
  while (strcasecmp(a1, *v7))
  {
    v7 += 2;
    if (!--v8)
    {
      goto LABEL_16;
    }
  }

  v16 = (v7[1])(v3);
LABEL_20:

  return v16;
}

id _log_mdns_create_record_data_attributed_string(unsigned __int8 *a1, unint64_t a2, int a3)
{
  v3 = _log_mdns_create_record_data_string(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = _log_mdns_create_attributed_string(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _log_mdns_format_yes_no(void *a1)
{
  if ([a1 BOOLValue])
  {
    v1 = @"yes";
  }

  else
  {
    v1 = @"no";
  }

  return _log_mdns_create_attributed_string(v1);
}

id _log_mdns_create_attributed_string(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v1];

  return v2;
}

id _log_mdns_format_termination_reason(void *a1)
{
  v1 = [a1 longLongValue];
  if (v1 == v1)
  {
    if (v1 >= 6)
    {
      v2 = 0;
      v3 = 0;
    }

    else
    {
      v2 = off_29F280478[v1 & 7];
      v3 = _log_mdns_create_attributed_string(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *_log_mdns_termination_reason_to_string(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_29F280478[a1];
  }
}

id _log_mdns_format_symptom_result(void *a1)
{
  v1 = [a1 unsignedLongLongValue];
  if (v1 > 0xFF || (v1 - 1) > 4u)
  {
    v2 = 0;
  }

  else
  {
    v2 = _log_mdns_create_attributed_string(off_29F2803D8[(v1 - 1)]);
  }

  return v2;
}

id _log_mdns_format_session_event(void *a1)
{
  v1 = [a1 longLongValue];
  if (v1 == v1 && (v1 - 1) <= 3)
  {
    v2 = _log_mdns_create_attributed_string(off_29F280458[(v1 - 1)]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _log_mdns_format_protocol(void *a1)
{
  v1 = [a1 longLongValue];
  v2 = 0;
  if (v1 == v1 && v1 <= 4)
  {
    v2 = _log_mdns_create_attributed_string(off_29F280430[v1 & 7]);
  }

  return v2;
}

id _log_mdns_format_powerlog_event_subtype(void *a1)
{
  v1 = [a1 unsignedLongLongValue];
  if (v1 > 0x12)
  {
    v4 = 0;
  }

  else
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:off_29F280340[v1]];
    v3 = v2;
    if (v2)
    {
      v4 = _log_mdns_create_attributed_string(v2);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id _log_mdns_format_positive_negative(void *a1)
{
  if ([a1 BOOLValue])
  {
    v1 = @"positive";
  }

  else
  {
    v1 = @"negative";
  }

  return _log_mdns_create_attributed_string(v1);
}

id _log_mdns_format_negative_reason(void *a1)
{
  v1 = [a1 longLongValue];
  if (v1 == v1)
  {
    if (v1 >= 6)
    {
      v2 = 0;
      v3 = 0;
    }

    else
    {
      v2 = off_29F280400[v1 & 7];
      v3 = _log_mdns_create_attributed_string(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *_log_mdns_negative_reason_to_string(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_29F280400[a1];
  }
}

id _log_mdns_format_mortality(void *a1)
{
  v1 = [a1 longLongValue];
  if (v1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = _log_mdns_create_attributed_string(*(&off_29F280328 + v1));
  }

  return v2;
}

id _log_mdns_format_gai_options(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x29EDBA050]) initWithCapacity:0];
  if (v2)
  {
    v3 = [v1 unsignedLongLongValue];
    [v2 appendFormat:@"0x%llX {", v3];
    v4 = &unk_2999FF422;
    v5 = &off_29F2802D0;
    v6 = 6;
    do
    {
      if ((v3 & *(v5 - 1)) != 0)
      {
        [v2 appendFormat:@"%s%s", v4, *v5];
        v4 = ", ";
      }

      v5 += 2;
      --v6;
    }

    while (v6);
    [v2 appendString:@"}"];
    v7 = _log_mdns_create_attributed_string(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _log_mdns_format_dnssec_result(void *a1)
{
  v1 = [a1 unsignedLongLongValue];
  if (v1 <= 3)
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:off_29F280288[v1]];
    v4 = v3;
    if (v3)
    {
      v2 = _log_mdns_create_attributed_string(v3);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _log_mdns_format_dnssec_insecure_validation_state(void *a1)
{
  v1 = [a1 unsignedLongLongValue];
  if (v1 <= 3)
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:off_29F2802A8[v1]];
    v4 = v3;
    if (v3)
    {
      v2 = _log_mdns_create_attributed_string(v3);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _log_mdns_format_dns_service_type(void *a1)
{
  v1 = [a1 unsignedLongLongValue];
  if (v1 <= 5)
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:off_29F27F860[v1]];
    v4 = v3;
    if (v3)
    {
      v2 = _log_mdns_create_attributed_string(v3);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _log_mdns_format_dns_id_and_flags(void *a1)
{
  v1 = [a1 unsignedLongLongValue];
  if (HIDWORD(v1))
  {
    v2 = 0;
  }

  else
  {
    v7 = 0;
    LOBYTE(v4) = BYTE3(v1);
    HIBYTE(v4) = BYTE2(v1);
    v5 = BYTE1(v1);
    v6 = v1;
    v2 = _log_mdns_format_dns_message_ex(&v4, 0xCuLL, 64);
  }

  return v2;
}

id _log_mdns_format_dns_message_ex(unsigned __int16 *a1, unint64_t a2, int a3)
{
  __s = 0;
  DNSMessageToString(a1, a2, a3 | 4, &__s);
  if (__s)
  {
    v3 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v4 = [v3 initWithBytesNoCopy:__s length:strlen(__s) encoding:4 freeWhenDone:1];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v4];
    }

    else if (__s)
    {
      free(__s);
      v5 = 0;
      __s = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _log_mdns_format_dns_record_type(void *a1)
{
  v1 = [a1 unsignedLongLongValue];
  if (v1 >> 16)
  {
    v4 = 0;
  }

  else
  {
    v2 = _log_mdns_create_dns_record_type_string(v1);
    v3 = v2;
    if (v2)
    {
      v4 = _log_mdns_create_attributed_string(v2);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id _log_mdns_create_dns_record_type_string(uint64_t a1)
{
  v2 = DNSRecordTypeValueToString(a1);
  v3 = objc_alloc(MEMORY[0x29EDBA0F8]);
  if (v2)
  {
    v4 = [v3 initWithFormat:@"%s", v2];
  }

  else
  {
    v4 = [v3 initWithFormat:@"TYPE%u", a1];
  }

  return v4;
}

id _log_mdns_format_dns_counts(void *a1)
{
  v1 = [a1 unsignedLongLongValue];
  v2 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%u/%u/%u/%u", HIWORD(v1), WORD2(v1), WORD1(v1), v1];
  v3 = v2;
  if (v2)
  {
    v4 = _log_mdns_create_attributed_string(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _log_mdns_format_add_rmv_uppercase(void *a1)
{
  if ([a1 BOOLValue])
  {
    v1 = @"ADD";
  }

  else
  {
    v1 = @"RMV";
  }

  return _log_mdns_create_attributed_string(v1);
}

id _log_mdns_format_add_rmv(void *a1)
{
  if ([a1 BOOLValue])
  {
    v1 = @"add";
  }

  else
  {
    v1 = @"rmv";
  }

  return _log_mdns_create_attributed_string(v1);
}

id _log_mdns_format_acceptable(void *a1)
{
  if ([a1 BOOLValue])
  {
    v1 = @"acceptable";
  }

  else
  {
    v1 = @"unacceptable";
  }

  return _log_mdns_create_attributed_string(v1);
}

unsigned __int8 *_log_mdns_format_record_type_data(void *a1)
{
  v9 = 0;
  v8 = 0;
  v1 = _log_mdns_extract_record_type_and_rdata(a1, &v9, &v8);
  if (v1)
  {
    v2 = _log_mdns_create_dns_record_type_string(v9);
    if (v2 && ((_log_mdns_create_record_data_string(v1, v8, v9), (v3 = objc_claimAutoreleasedReturnValue()) != 0) || (NSPrintF("'%H'", v1, v8, v8), (v3 = objc_claimAutoreleasedReturnValue()) != 0)))
    {
      v4 = v3;
      v5 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@ %@", v2, v3];
      v6 = v5;
      if (v5)
      {
        v1 = _log_mdns_create_attributed_string(v5);
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

unsigned __int16 *_log_mdns_extract_record_type_and_rdata(void *a1, _WORD *a2, uint64_t *a3)
{
  v5 = a1;
  if ([v5 length] < 2)
  {
    LOWORD(v8) = 0;
    v9 = 0;
    v7 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [v5 bytes];
  v7 = v6 + 1;
  v8 = bswap32(*v6) >> 16;
  v9 = [v5 length] - 2;
  if (a2)
  {
LABEL_5:
    *a2 = v8;
  }

LABEL_6:
  if (a3)
  {
    *a3 = v9;
  }

  return v7;
}

id _log_mdns_create_record_data_string(unsigned __int8 *a1, unint64_t a2, int a3)
{
  __s = 0;
  DNSRecordDataToStringEx(a1, a2, a3, 0, 0, 0, &__s);
  if (__s)
  {
    v3 = strlen(__s);
    v4 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v5 = [v4 initWithBytesNoCopy:__s length:v3 encoding:4 freeWhenDone:1];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else if (__s)
    {
      free(__s);
      __s = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unsigned __int8 *_log_mdns_format_record_data(void *a1)
{
  v4 = 0;
  v3 = 0;
  v1 = _log_mdns_extract_record_type_and_rdata(a1, &v4, &v3);
  if (v1)
  {
    v1 = _log_mdns_create_record_data_attributed_string(v1, v3, v4);
  }

  return v1;
}

id _log_mdns_format_dns_message(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  return _log_mdns_format_dns_message_ex(v2, v3, 0);
}

id _log_mdns_format_dns_header(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  return _log_mdns_format_dns_message_ex(v2, v3, 16);
}

id _log_mdns_format_base64(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];

  Base64EncodeCopyEx();

  return 0;
}

__CFString *_log_mdns_protocol_to_string(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_29F280430[a1];
  }
}

__CFString *_log_mdns_session_event_to_string(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_29F280458[a1 - 1];
  }
}

_BYTE *mdns_memcpy_bits(_BYTE *__dst, void *__src, unint64_t a3)
{
  v3 = a3;
  v5 = __dst;
  v6 = a3 >> 3;
  if (a3 >= 8)
  {
    __dst = memcpy(__dst, __src, a3 >> 3);
  }

  if ((v3 & 7) != 0)
  {
    v5[v6] = v5[v6] & ~(-1 << (8 - (v3 & 7))) | *(__src + v6) & (-1 << (8 - (v3 & 7)));
  }

  return __dst;
}

uint64_t mdns_memcmp_us_ascii_case_insensitive(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    while (1)
    {
      v4 = *a1++;
      v3 = v4;
      v5 = v4 + 32;
      v6 = v4 - 65 >= 0x1A;
      v8 = *a2++;
      v7 = v8;
      if (!v6)
      {
        v3 = v5;
      }

      if (v7 - 65 < 0x1A)
      {
        v7 += 32;
      }

      if (v3 < v7)
      {
        return -1;
      }

      if (v3 > v7)
      {
        break;
      }

      if (!--a3)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}