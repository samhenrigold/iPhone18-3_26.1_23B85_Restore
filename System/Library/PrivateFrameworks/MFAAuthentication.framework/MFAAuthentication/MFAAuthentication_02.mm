uint64_t X509ChainCheckPathWithOptions(char a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v54[4] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (a3)
  {
    v9 = *(a3 + 48);
    if (v9)
    {
      if (*(v9 + 8))
      {
        if (v8 + 208 > v8 + 224)
        {
          goto LABEL_133;
        }

        if (compare_octet_string(v9, v8 + 208))
        {
          return 327701;
        }

        v8 = *v6;
      }
    }
  }

  if (!v8)
  {
    v23 = 0;
    v21 = 0;
    v13 = -1;
    if (a3)
    {
      goto LABEL_67;
    }

    goto LABEL_120;
  }

  v50 = v6;
  v51 = a4;
  v11 = 0;
  v12 = 0;
  v52 = 0;
  v13 = -1;
  do
  {
    v14 = v8 + 304;
    v15 = *(v8 + 288);
    v16 = v15 + 304;
    if (v15)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }

    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v8 + 120, v8 + 104))
    {
      v17 = 0;
      v15 = v8;
      v16 = v8 + 304;
      goto LABEL_12;
    }

    if (!a3)
    {
      return v12 | 0x9000Du;
    }

    if (*(a3 + 16) == 1)
    {
      AppleRootUsingKeyIdentifier = X509ChainGetAppleRootUsingKeyIdentifier(v8 + 168, *(a3 + 17));
      goto LABEL_63;
    }

    if (*(a3 + 24))
    {
      AppleRootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier(v8 + 168);
LABEL_63:
      v15 = AppleRootUsingKeyIdentifier;
      v52 |= AppleRootUsingKeyIdentifier != 0;
      v16 = AppleRootUsingKeyIdentifier + 304;
      if (AppleRootUsingKeyIdentifier)
      {
        goto LABEL_11;
      }
    }

    if ((*(a3 + 19) & 1) == 0)
    {
      return v12 | 0x9000Du;
    }

    v15 = 0;
    v17 = 1;
LABEL_12:
    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (v11 && *(v8 + 32) >= 2uLL)
    {
      if ((*(v8 + 265) & 1) == 0)
      {
        v49 = 589825;
        return v12 | v49;
      }

      if ((*(v8 + 264) & 4) == 0)
      {
        v49 = 589826;
        return v12 | v49;
      }
    }

    v18 = *(v8 + 200);
    if (v18 && v18 < v11)
    {
      v49 = 589827;
      return v12 | v49;
    }

    if (*(v8 + 266) == 1)
    {
      v49 = 589831;
      return v12 | v49;
    }

    if (compare_octet_string(v8 + 40, v8 + 152))
    {
      v49 = 589828;
      return v12 | v49;
    }

    if ((v17 & 1) == 0 && *(v8 + 168) && *(v8 + 176))
    {
      if (v15 + 304 > v16 || v15 > v15 + 304 || v15 + 184 > v15 + 200)
      {
        goto LABEL_133;
      }

      if (compare_octet_string(v8 + 168, v15 + 184))
      {
        return v12 | 0x9000Au;
      }
    }

    if (a3 && v11 && (*(v8 + 240) & *(a3 + 8)) == 0)
    {
      X509PolicySetFlagsForCommonNames(v8);
    }

    if (v15 == v8 && !*(v8 + 240))
    {
      X509PolicySetFlagsForRoots(a3, v8);
      if (!a3)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

    if (v15 != v8 && *(a3 + 18) == 1 && !X509CertificateIsValid(v8))
    {
      return v12 | 0x90009u;
    }

LABEL_38:
    if (!a3 || v11)
    {
      v13 &= *(v8 + 240);
      if (!a3)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = *(v8 + 240);
      if ((v19 & *(a3 + 8)) == 0)
      {
        X509PolicySetFlagsForMFI(v8);
        v19 = *(v8 + 240);
      }

      v13 &= v19;
    }

    v20 = *(a3 + 8);
    if (v20 && (v20 & v13) == 0)
    {
      v49 = 589829;
      return v12 | v49;
    }

LABEL_46:
    a1 |= v15 == v8;
    if ((v17 & 1) == 0)
    {
      if (v15 + 304 > v16 || v15 > v15 + 304)
      {
        goto LABEL_133;
      }

      result = X509CertificateCheckSignature(a1, v15, v8 + 16, v8 + 40);
      if (result)
      {
        return result;
      }
    }

    v21 = v11 + 1;
    if (v11 == -1)
    {
      goto LABEL_134;
    }

    v8 = *(v8 + 288);
    v12 += 256;
    ++v11;
  }

  while (v8);
  v6 = v50;
  a4 = v51;
  v23 = v52;
  if (!a3)
  {
    goto LABEL_120;
  }

LABEL_67:
  if (*a3)
  {
    v24 = v21;
    if ((v23 & 1) == 0 || (v24 = v21 + 1, v21 != -1))
    {
      if (*a3 != v24)
      {
        return (v24 << 8) | 0x90006u;
      }

      goto LABEL_71;
    }

LABEL_134:
    __break(0x5500u);
  }

LABEL_71:
  v25 = *(a3 + 24);
  if (v25 && *(v25 + 8))
  {
    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
    if ((*(a3 + 16) & 1) == 0)
    {
      memset(v54, 170, 32);
      v29 = (v27 + 88);
      v30 = v27 >= v28 || v29 > v27 + 104;
      v53[0] = 0xAAAAAAAAAAAAAAAALL;
      v53[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!v30)
      {
        if (X509CertificateParseSPKI(v29, &v54[2], v53, v54))
        {
          goto LABEL_82;
        }

        if (compare_octet_string(&v54[2], *(a3 + 32)) || compare_octet_string(v54, *(a3 + 24)))
        {
          if (X509CertificateCheckSignatureWithPublicKey(*(a3 + 24), *(a3 + 32), *(a3 + 40), v27 + 16, v27 + 40))
          {
LABEL_82:
            v31 = 589832;
            return v26 | v31;
          }
        }

        else if (!compare_octet_string(*(a3 + 32), &ecPublicKey))
        {
          compare_octet_string(v53, *(a3 + 40));
        }

        goto LABEL_120;
      }

      goto LABEL_133;
    }
  }

  else
  {
    if (*(a3 + 16) != 1)
    {
      goto LABEL_120;
    }

    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
  }

  if (v27 > v28)
  {
    goto LABEL_133;
  }

  v32 = 200;
  v33 = 184;
  if (v23)
  {
    v32 = 184;
    v33 = 168;
  }

  v34 = v27 + v33;
  v35 = v27 + v33 + 16;
  if (v35 > v27 + v32 || v34 > v35)
  {
    goto LABEL_133;
  }

  v37 = X509ChainGetAppleRootUsingKeyIdentifier(v34, *(a3 + 17));
  if (!v37)
  {
    return v26 | 0x9000Bu;
  }

  v38 = v37;
  v39 = v37 + 304;
  if ((v23 & 1) == 0)
  {
    v40 = v27 + 88 > v27 + 104 || v37 >= v39;
    v41 = v37 + 88;
    if (v40 || v41 > v37 + 104)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v27 + 88, v41))
    {
      goto LABEL_120;
    }
  }

  v43 = v27 + 16;
  v44 = v38 > v39 || v43 > v27 + 32;
  v45 = v27 + 40;
  v46 = v27 + 56;
  if (v44 || v45 > v46 || v46 > v27 + 72)
  {
LABEL_133:
    __break(0x5519u);
    goto LABEL_134;
  }

  if (X509CertificateCheckSignature(29, v38, v43, v45))
  {
    v31 = 589836;
    return v26 | v31;
  }

LABEL_120:
  result = 0;
  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v4);
  if (!result)
  {
    if (v4[0] == SLODWORD(v4[0]))
    {
      result = 0;
      *a2 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v12[3] = *MEMORY[0x277D85DE8];
  memset(v12, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x277D85DE8];
  memset(v4, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

char *createHexString(uint64_t a1, unint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a3)
      {
        v5 = (2 * a2) | 1;
LABEL_10:
        v7 = malloc_type_malloc(v5, 0x100004077774924uLL);
        if (v7)
        {
          v8 = 0;
          v9 = v7;
          v14 = v7;
          v10 = v7;
          v11 = v5;
          while (a3)
          {
            if (v8 >= a2 - 1)
            {
              v12 = v10;
              v13 = v11;
              goto LABEL_17;
            }

            snprintf(v10, v11, "%02X ");
LABEL_18:
            ++v8;
            v11 -= 3;
            v10 += 3;
            v9 += 2;
            v5 -= 2;
            if (a2 == v8)
            {
              return v14;
            }
          }

          v12 = v9;
          v13 = v5;
LABEL_17:
          snprintf(v12, v13, "%02X");
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (is_mul_ok(a2, 3uLL))
      {
        v5 = 3 * a2;
        goto LABEL_10;
      }
    }

    do
    {
LABEL_21:
      result = malloc_type_malloc(0xEuLL, 0x100004077774924uLL);
    }

    while (!result);
    strcpy(result, "<print error>");
    return result;
  }

  result = malloc_type_malloc(7uLL, 0x100004077774924uLL);
  if (result)
  {
    strcpy(result, "(null)");
  }

  return result;
}

BOOL mfaa_verify_veridian_signature(void *a1, uint64_t a2, const __CFData *a3, uint64_t a4)
{
  CertificateRefWithData = createCertificateRefWithData(a1, 1);
  if (!CertificateRefWithData)
  {
    return 0;
  }

  v8 = CertificateRefWithData;
  v9 = SecCertificateCopyKey(CertificateRefWithData);
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CBEB28] dataWithData:a2];
    [v11 appendData:a4];
    v12 = SecSHA256DigestCreateFromData();
    v13 = [v12 bytes];
    v14 = [v12 length];
    BytePtr = CFDataGetBytePtr(a3);
    Length = CFDataGetLength(a3);
    v17 = SecKeyRawVerify(v10, 0x4000u, v13, v14, BytePtr, Length);
    v18 = v17 == 0;
    if (v17)
    {
      NSLog(&cfstr_Seckeyrawverif.isa, v17);
    }

    else
    {
      NSLog(&cfstr_Authpassed.isa);
    }

    CFRelease(v10);
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v8);
  return v18;
}

void _UpdateMFi4FeatureKeyAttributes_cold_4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_25627E000, a2, OS_LOG_TYPE_DEBUG, "new attribute dictionary %@", &v2, 0xCu);
}

void MFAACreateCertificateCache_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void MFAACreateCertDataFromSerialNumber_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void MFAAAddCertDataEntryToCacheForSerialNumber_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void IncrementCertEntryUsageCount_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void IncrementCertEntryUsageCount_cold_2(uint8_t *buf, int a2, uint64_t a3)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 2048;
  *(buf + 10) = a3;
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "CFDictionaryGetValue pValueArrayMut:%04X, cfArrayCnt:%02lX\n", buf, 0x12u);
}

void MFAARemoveCertDataEntryFromCache_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void MFAACreateMatchingHashForCertChainFromHashLSB_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void MFAACreateCertChainDataFromHash_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void MFAAAddCertChainDataEntryToCacheForHash_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
}

void MFAARemoveCertChainDataEntryFromCache_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void MFAACreateCapsFromAuthCert_cold_1(const __CFData *a1, void *a2)
{
  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (Length >= 0x20 && BytePtr)
  {
    *a2 = bswap64(*BytePtr);
    a2[1] = bswap64(BytePtr[1]);
    a2[2] = bswap64(BytePtr[2]);
    a2[3] = bswap64(BytePtr[3]);
  }

  CFRelease(a1);
}

void MFAACreateCapsFromAuthCert_cold_3(unsigned __int16 a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 67109376;
  v2[1] = a2;
  v3 = 2048;
  v4 = a1;
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unrecognized/unsupported authVerMajor:%02X (pSecCertRef:%04lX)\n", v2, 0x12u);
}

void MFAACreateCapsFromAuthCert_cold_6()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[0] = 67109120;
  v0[1] = 0;
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "GetAccessoryCaps failed bStatus:%d\n", v0, 8u);
}

void MFAACreateCapsFromAuthCert_cold_7(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 0;
    OUTLINED_FUNCTION_0_1(&dword_25627E000, MEMORY[0x277D86220], v2, "Object allocation failed pAccCaps = NULL\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

uint64_t mfaa_certificateManager_SWAuthCertType(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  init_logging();
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v36 = 134218240;
      *&v36[4] = v2;
      OUTLINED_FUNCTION_5_0();
      *&v36[14] = v3;
      OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30, *v36, *&v36[16], v37);
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v36 = 0;
    _os_log_impl(&dword_25627E000, v6, OS_LOG_TYPE_INFO, "Checking SW Auth cert type...", v36, 2u);
  }

  if (a1)
  {
    v7 = SecCertificateCopyIssuerSummary();
    v8 = [v7 isEqualToString:@"Test Accessories Software Authentication Root CA"];

    if (v8)
    {
      v14 = 3;
    }

    else
    {
      v9 = SecCertificateCopyiAPSWAuthCapabilities();
      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v12 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v36 = 134218240;
          *&v36[4] = v10;
          OUTLINED_FUNCTION_5_0();
          *&v36[14] = v11;
          OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v32, v33, v34, v35);
        }

        v12 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v36 = 138412290;
        *&v36[4] = v9;
        _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_INFO, "generalData: %@", v36, 0xCu);
      }

      if (v9 && [v9 length] >= 2 && *objc_msgSend(v9, "bytes") == 255 && !*(objc_msgSend(v9, "bytes") + 1) && objc_msgSend(v9, "length") >= 3)
      {
        if (*([v9 bytes] + 2) == 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2 * (*([v9 bytes] + 2) == 0);
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = gLogObjects;
  v16 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v17 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v36 = 134218240;
      *&v36[4] = v15;
      OUTLINED_FUNCTION_5_0();
      *&v36[14] = v16;
      OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v22, v23, v24, v25);
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_19(&dword_25627E000, v17, v19, "certType: %{coreacc:MFAACertificateManager_SWAuth_CertType_t}d", v36);
  }

  return v14;
}

void logObjectForModule_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4);
}

uint64_t MFAAVerifyPublicCertificateChain(const __CFArray *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  trust = 0;
  v37 = 0;
  if (!a1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  v3 = MFAACertificateAuthVersionNumber(ValueAtIndex);
  v4 = SecPolicyCreateiAP();
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v39) = 0;
      OUTLINED_FUNCTION_7_1();
      _os_log_error_impl(v27, v28, v29, v30, v31, 2u);
    }

    return 0;
  }

  v5 = v4;
  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v39) = 0;
      goto LABEL_42;
    }

LABEL_38:
    v17 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  if (CFArrayGetCount(a1) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = CFArrayGetValueAtIndex(a1, v8);
      if (v9)
      {
        v10 = MFAACreateSecurityCertificateReference(v9);
        if (v10)
        {
          v11 = v10;
          CFArrayAppendValue(Mutable, v10);
          CFRelease(v11);
        }
      }

      ++v8;
    }

    while (CFArrayGetCount(a1) > v8);
  }

  SecTrustCreateWithCertificates(Mutable, v5, &trust);
  if (!trust)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v39) = 0;
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  v13 = MFAACreateAnchorCertificateAuthorityArray(v3, v12);
  if (!v13)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    LOWORD(v39) = 0;
LABEL_42:
    OUTLINED_FUNCTION_7_1();
    _os_log_error_impl(v32, v33, v34, v35, v36, 2u);
    goto LABEL_38;
  }

  v14 = v13;
  SecTrustSetAnchorCertificates(trust, v13);
  v15 = MEMORY[0x259C60280](trust, &v37);
  if (v15)
  {
    v26 = v15;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v39 = 67109120;
    v40 = v26;
    OUTLINED_FUNCTION_7_1();
    v25 = 8;
LABEL_29:
    _os_log_error_impl(v20, v21, v22, v23, v24, v25);
LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  if (v37 != 1 && v37 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v39 = 67109632;
    v40 = 4;
    v41 = 1024;
    v42 = 1;
    v43 = 1024;
    v44 = v37;
    OUTLINED_FUNCTION_7_1();
    v25 = 20;
    goto LABEL_29;
  }

  v17 = 1;
LABEL_21:
  CFRelease(v5);
  if (trust)
  {
    CFRelease(trust);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v17;
}

uint64_t MFAAComponentAuthCreateSignature(uint64_t a1, const __CFData *a2, void *a3, int a4, uint64_t a5)
{
  v8 = a2;
  v58[1] = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  v55 = 0;
  connect = 0;
  v53 = 0;
  if (a5 == 2)
  {
    if (!a2)
    {
      v58[0] = 0;
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:v58 length:8];
      v8 = v9;
      goto LABEL_6;
    }
  }

  else if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v58[0]) = 0;
      OUTLINED_FUNCTION_3_1();
      _os_log_impl(v47, v48, v49, v50, v51, v52);
    }

    v9 = 0;
    goto LABEL_38;
  }

  v9 = 0;
LABEL_6:
  if (!a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    LOWORD(v58[0]) = 0;
LABEL_36:
    OUTLINED_FUNCTION_3_1();
    goto LABEL_37;
  }

  AuthCP = __findAuthCP();
  if (!AuthCP)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    LOWORD(v58[0]) = 0;
    goto LABEL_36;
  }

  v11 = IOServiceOpen(AuthCP, *MEMORY[0x277D85F48], 0, &connect);
  if (v11)
  {
    v19 = v11;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    LODWORD(v58[0]) = 67109120;
    HIDWORD(v58[0]) = v19;
LABEL_33:
    OUTLINED_FUNCTION_5_1();
LABEL_37:
    _os_log_impl(v27, v28, v29, v30, v31, v32);
    goto LABEL_38;
  }

  if (!connect)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v58[0]) = 0;
      OUTLINED_FUNCTION_3_1();
      _os_log_impl(v20, v21, v22, v23, v24, v25);
    }

    v15 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  v12 = cpCreateFormattedChallengeFromServerRequest(connect, v8, &v57);
  if (v12)
  {
    v26 = v12;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    LODWORD(v58[0]) = 67109120;
    HIDWORD(v58[0]) = v26;
    goto LABEL_33;
  }

  v13 = v57;
  if (!v57)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v58[0]) = 0;
      goto LABEL_36;
    }

LABEL_38:
    v15 = 0;
    v13 = 0;
    goto LABEL_45;
  }

  if (![(__CFData *)v57 length])
  {
    goto LABEL_44;
  }

  v14 = cpCreateSignatureWithIndexAndToken(connect, v13, &v56, &v53, a4);
  if (v14)
  {
    v33 = v14;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v58[0]) = 67109120;
      HIDWORD(v58[0]) = v33;
      OUTLINED_FUNCTION_5_1();
LABEL_43:
      _os_log_impl(v34, v35, v36, v37, v38, v39);
    }

LABEL_44:
    v15 = 0;
    goto LABEL_45;
  }

  v15 = v56;
  if (!v56)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v58[0]) = 0;
      OUTLINED_FUNCTION_3_1();
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v16 = cpCreateFormattedResponseForServerResponse(connect, v56, &v55, a5);
  if (!v16)
  {
    if (v55)
    {
      *a3 = v55;
    }

LABEL_18:
    v17 = 1;
    goto LABEL_19;
  }

  v40 = v16;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v58[0]) = 67109120;
    HIDWORD(v58[0]) = v40;
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v41, v42, v43, v44, v45, v46);
  }

LABEL_45:
  v17 = 0;
LABEL_19:
  if (connect)
  {
    IOServiceClose(connect);
  }

  return v17;
}

void MFAAVerifyPublicCertificate_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void MFAAVerifyCertificateSerialNumber_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void MFAAVerifyCertificateSerialNumber_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void MFAAVerifyNonceSignature_cold_1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 0;
    OUTLINED_FUNCTION_0_1(&dword_25627E000, MEMORY[0x277D86220], v2, "Failed to parse certData!\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

void MFAAVerifyNonceSignature_cold_2(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 0;
    OUTLINED_FUNCTION_0_1(&dword_25627E000, MEMORY[0x277D86220], v2, "pkSignatureData = NULL\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

void MFAAVerifyNonceSignature_cold_3(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 0;
    OUTLINED_FUNCTION_0_1(&dword_25627E000, MEMORY[0x277D86220], v2, "pkNonceData = NULL\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

void MFAAVerifyNonceSignature_cold_4(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 0;
    OUTLINED_FUNCTION_0_1(&dword_25627E000, MEMORY[0x277D86220], v2, "pkCertData = NULL\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

void MFAAVerifyNonceSignatureMFi4_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void MFAAVerifyNonceSignatureMFi4_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void MFAAVerifyNonceSignatureMFi4_cold_3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __findAuthCP_cold_1(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    OUTLINED_FUNCTION_6_1(&dword_25627E000, MEMORY[0x277D86220], v2, "IOServiceGetMatchingServices failed\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

void __findAuthCP_cold_2(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    OUTLINED_FUNCTION_6_1(&dword_25627E000, MEMORY[0x277D86220], v2, "!iter\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

void __findAuthCP_cold_3(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    OUTLINED_FUNCTION_6_1(&dword_25627E000, MEMORY[0x277D86220], v2, "!matchingDict\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

void MFAACertificateAuthV2Class_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void MFAAPrintCertSerialNumberBytes_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void MFAADeviceIdentityRequestCertificate_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "MFAADeviceIdentityRequestCertificate";
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: !framework", &v0, 0xCu);
}

void MFAADeviceIdentityRequestCertificate_cold_2(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = 136315650;
  v4 = "MFAADeviceIdentityRequestCertificate";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = v2;
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Failed to set ACL protection to %@! error %@", &v3, 0x20u);
}

void MFAADeviceIdentityRequestCertificate_cold_3(uint64_t a1, _DWORD *a2, void *a3)
{
  *a2 = 136315394;
  OUTLINED_FUNCTION_0_2(a1, a2, "MFAADeviceIdentityRequestCertificate");
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Failed to obtain valid certificates from server: %s\n", v4, 0x16u);
}

void MFAADeviceIdentityRequestCertificate_cold_4(uint64_t a1, _DWORD *a2, void *a3)
{
  *a2 = 136315394;
  OUTLINED_FUNCTION_0_2(a1, a2, "MFAADeviceIdentityRequestCertificate");
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: error: %s\n", v4, 0x16u);
}

void MFAADeviceIdentityRequestCertificate_cold_5(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = 136315394;
  v3 = "MFAADeviceIdentityRequestCertificate";
  v4 = 2112;
  v5 = v1;
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Failed to create access control! error %@", &v2, 0x16u);
}

void __MFAADeviceIdentityRequestCertificate_block_invoke_cold_1(uint64_t a1, double a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  v3 = 136315906;
  v4 = "MFAADeviceIdentityRequestCertificate_block_invoke";
  v5 = 1024;
  v6 = 137;
  v7 = 2112;
  v8 = v2;
  v9 = 2048;
  v10 = a2;
  _os_log_fault_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:%d %@, IssueClientCertificate response took too long!!! %f seconds.", &v3, 0x26u);
}

void __GetConnectionToAuthDaemon_block_invoke_cold_1(void *a1)
{
  xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

BOOL MFAADeviceIdentityCopyCertificate(const __CFString *a1, const __CFDictionary *a2, int a3, CFTypeRef *a4, CFTypeRef *a5)
{
  v79[2] = *MEMORY[0x277D85DE8];
  if (!a1 || (v9 = a1, !CFEqual(a1, @"mfi-baa")))
  {
    v9 = @"mfi-baa";
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_3();
    *&v78[8] = 1024;
    LODWORD(v79[0]) = a3;
    WORD2(v79[0]) = v10;
    *(v79 + 6) = a2;
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v11, v12, v13, v14, v15, 0x26u);
  }

  v16 = 0;
  if (a2 && a5 && a4)
  {
    if (qword_280CC7870 != -1)
    {
      dispatch_once(&qword_280CC7870, &__block_literal_global_4);
    }

    *a4 = 0;
    *a5 = 0;
    pthread_mutex_lock(&gCertificateStateLock);
    if (qword_280CC7860)
    {
      CFRelease(qword_280CC7860);
    }

    qword_280CC7860 = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 2, a2);
    valuePtr = 4;
    Value = CFDictionaryGetValue(a2, @"Count");
    TypeID = CFNumberGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    }

    v19 = valuePtr;
    if (valuePtr != 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      HIWORD(v77) = 2048;
      *v78 = v19;
      _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: unexpected count %lld\n", buf, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_3();
      HIWORD(v77) = 2048;
      *v78 = v20;
      *&v78[8] = 2112;
      v79[0] = v21;
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
    }

    v27 = CFDictionaryGetValue(qword_280CC7860, @"RefreshInterval");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFNumberGetTypeID())
      {
        v72 = 0.0;
        CFNumberGetValue(v28, kCFNumberDoubleType, &v72);
        v30 = v72;
        if (v72 != 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_2_3();
          HIWORD(v77) = 2048;
          *v78 = v30;
          OUTLINED_FUNCTION_3_2();
          _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    }

    _storeRefreshStateToDisk();
    v41 = 0;
    while (!*(&_MergedGlobals_0 + v41))
    {
      if (++v41 == 4)
      {
        pthread_mutex_unlock(&gCertificateStateLock);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __MFAADeviceIdentityCopyCertificate_block_invoke;
        block[3] = &__block_descriptor_tmp_2;
        block[4] = v9;
        dispatch_sync(qword_280CC7868, block);
        goto LABEL_33;
      }
    }

    pthread_mutex_unlock(&gCertificateStateLock);
LABEL_33:
    pthread_mutex_lock(&gCertificateStateLock);
    ValidIndex = _findValidIndex();
    dword_280CC785C = ValidIndex;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_3();
      HIWORD(v77) = 1024;
      *v78 = ValidIndex;
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v43, v44, v45, v46, v47, 0x12u);
      ValidIndex = dword_280CC785C;
    }

    pthread_mutex_unlock(&gCertificateStateLock);
    v69 = 0;
    v70 = 0;
    v48 = _copyCertificateForIndex(v9, ValidIndex, 0, 0, &v70, &v69);
    v16 = v48 == 0;
    if (v48)
    {
      v49 = v48;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v75 = 390;
        v76 = 1024;
        v77 = v49;
        _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MFAADeviceIdentityCopyCertificate:%d: _copyCertificateForIndex: error %d\n", buf, 0xEu);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2_3();
        HIWORD(v77) = 1024;
        *v78 = v50;
        *&v78[4] = 1024;
        *&v78[6] = v51;
        OUTLINED_FUNCTION_3_2();
        _os_log_impl(v52, v53, v54, v55, v56, 0x18u);
      }

      v57 = v69;
      *a4 = v70;
      *a5 = v57;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v58, v59, v60, v61, v62, 0x16u);
    }

    _scheduleRefreshCertificates(v9);
  }

  if (a4 && a5 && !v16)
  {
    if (*a4)
    {
      CFRelease(*a4);
      *a4 = 0;
    }

    if (*a5)
    {
      CFRelease(*a5);
      *a5 = 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_3();
    HIWORD(v77) = 1024;
    *v78 = v16;
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v63, v64, v65, v66, v67, 0x12u);
  }

  return v16;
}

BOOL _fetchCertificate(const __CFString *a1, int a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = 0;
  cf = 0;
  if (a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_4_0();
      v14 = a2;
      v15 = 2112;
      v16 = a1;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: index %d, call _copyCertificateForIndex %@", buf, 0x1Cu);
    }

    v6 = _copyCertificateForIndex(a1, a2, 1, 0, &cf, &v9);
    pthread_mutex_lock(&gCertificateStateLock);
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_4_0();
        v14 = v6;
        _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: _copyCertificateForIndex: error %d\n", buf, 0x12u);
      }

      *(&_MergedGlobals_0 + a2) = 0;
      v7 = 1;
    }

    else if (*(&_MergedGlobals_0 + a2))
    {
      v7 = 0;
    }

    else
    {
      v7 = 1;
      *(&_MergedGlobals_0 + a2) = 1;
    }

    pthread_mutex_unlock(&gCertificateStateLock);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v9)
    {
      CFRelease(v9);
      v9 = 0;
    }

    if (a3)
    {
      *a3 = v7;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v12 = "_fetchCertificate";
    v13 = 1024;
    v14 = 624;
    v15 = 2112;
    v16 = a1;
    v17 = 1024;
    v18 = a2;
    v19 = 1024;
    v20 = a1 != 0;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d %@, index %d, EXIT success %d", buf, 0x28u);
  }

  return a1 != 0;
}

void MFAACreateDeviceNonceSignature_cold_1(unsigned __int16 a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invalid nonce pkNonceBytes:%04lX, nonceLen:%02lX\n", &v2, 0x16u);
}

void MFAACreateDeviceNonceSignature_cold_2(int a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 67109376;
  v2[1] = a1;
  v3 = 2048;
  v4 = a2;
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SecKeyRawSign returned error: %d, segSignatureLen: %zu\n", v2, 0x12u);
}

void _storeRefreshStateToDisk_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0_1(&dword_25627E000, MEMORY[0x277D86220], v0, "MFAADeviceIdentity: _storeRefreshStateToDisk: !refreshStateArray\n", v1, v2, v3, v4, v5);
  }
}

void _findValidIndex_cold_1(int a1, _DWORD *a2)
{
  pthread_mutex_unlock(&gCertificateStateLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MFAADeviceIdentity: _findValidIndex: error\n", v4, 2u);
  }

  *a2 = a1;
}

void _copyCertificateForIndex_cold_1(_DWORD *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "_copyCertificateForIndex";
    _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DeviceIdentity: %s: !numberedLabel\n", &v2, 0xCu);
  }

  *a1 = -1;
}

void MFAADeviceIdentityCreateSignature_cold_3(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 0;
    OUTLINED_FUNCTION_0_1(&dword_25627E000, MEMORY[0x277D86220], v2, "MFAADeviceIdentity: missing data argument\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

void _storeUseTimeToDisk_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0_1(&dword_25627E000, MEMORY[0x277D86220], v0, "MFAADeviceIdentity: _storeUseTimeToDisk: !identityCertUseTime\n", v1, v2, v3, v4, v5);
  }
}

void _storeIsClassDToDisk_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0_1(&dword_25627E000, MEMORY[0x277D86220], v0, "MFAADeviceIdentity: _storeIsClassDToDisk: !isClassDArray\n", v1, v2, v3, v4, v5);
  }
}

const void *systemInfo_copyProductType()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *systemInfo_copyProductVersion()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}

uint64_t mfaa_certificateManager_determineCertificateType(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = +[MFAACertificateManager sharedManager];
  v3 = [v2 copyParsedCertificateChainInfo:a1];

  v4 = [MFAACertificateManager determineCertificateType:v3];
  return v4;
}

uint64_t mfaa_certificateManager_copyCertificateCapabilites(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[MFAACertificateManager sharedManager];
    v1 = [v2 copyParsedCertificateChainInfo:v1];

    v3 = +[MFAACertificateManager sharedManager];
    v4 = [v3 copyEvaluatedCertificateChainInfo:v1];

    if (v4)
    {
      v5 = [v4 objectForKey:@"ExtensionValue"];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 copy];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v4 = 0;
  }

  return v7;
}

uint64_t cpGetDeviceIDSN(io_registry_entry_t a1, UInt8 **a2, CFIndex *a3)
{
  v3 = 3758097090;
  if (a2)
  {
    CFProperty = IORegistryEntryCreateCFProperty(a1, @"IDSN", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      Length = CFDataGetLength(CFProperty);
      v9 = malloc_type_malloc(Length, 0x100004077774924uLL);
      if (v9)
      {
        v10 = v9;
        v12.location = 0;
        v12.length = Length;
        CFDataGetBytes(v7, v12, v9);
        v3 = 0;
        *a2 = v10;
        *a3 = Length;
      }

      else
      {
        v3 = 3758097115;
      }

      CFRelease(v7);
    }

    else
    {
      return 3758097136;
    }
  }

  return v3;
}

uint64_t cpGetInternalComponents(__CFDictionary *a1)
{
  v1 = 3758097090;
  if (a1)
  {
    v2 = a1;
    existing = 0;
    v3 = IOServiceMatching("AppleAuthCP");
    CFDictionarySetValue(v3, @"InternalComponent", *MEMORY[0x277CBED28]);
    MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x277CD28A0], v3, &existing);
    if (MatchingServices)
    {
      return MatchingServices;
    }

    else
    {
      v22 = v2;
      v5 = *MEMORY[0x277CBECE8];
      theArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v6 = IOIteratorNext(existing);
      if (v6)
      {
        v7 = v6;
        v8 = @"flags";
        v9 = @"authErrorDescription";
        v24 = v5;
        do
        {
          CFProperty = IORegistryEntryCreateCFProperty(v7, @"InternalComponent", v5, 0);
          if (!CFProperty)
          {
            v2 = 0;
LABEL_40:
            v18 = -536870206;
            goto LABEL_42;
          }

          v11 = CFProperty;
          valuePtr = 0;
          entryID = 0;
          if (!CFBooleanGetValue(CFProperty))
          {
            v2 = 0;
            Mutable = 0;
            v5 = v11;
            v18 = -536870206;
            goto LABEL_36;
          }

          Mutable = CFDictionaryCreateMutable(v5, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!Mutable)
          {
            goto LABEL_47;
          }

          RegistryEntryID = IORegistryEntryGetRegistryEntryID(v7, &entryID);
          if (RegistryEntryID)
          {
            v18 = RegistryEntryID;
            v2 = 0;
LABEL_51:
            v5 = v11;
LABEL_36:
            CFRelease(v5);
            goto LABEL_37;
          }

          v14 = CFNumberCreate(v5, kCFNumberSInt64Type, &entryID);
          if (!v14)
          {
LABEL_47:
            v2 = 0;
            v18 = -536870181;
            goto LABEL_51;
          }

          v15 = v14;
          cf = v11;
          CFDictionaryAddValue(Mutable, @"IORegistryEntryID", v14);
          v16 = IORegistryEntryCreateCFProperty(v7, @"flags", v5, 0);
          if (v16)
          {
            CFDictionaryAddValue(Mutable, @"flags", v16);
          }

          CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
          v17 = BYTE2(valuePtr) << 16;
          v18 = -536870201;
          switch(v17)
          {
            case 0x10000:
              v19 = @"Battery";
              break;
            case 0x80000:
              v19 = @"LAS";
              break;
            case 0x30000:
              v19 = @"TouchController";
              break;
            default:
              OUTLINED_FUNCTION_1_3();
              v20 = 0;
              goto LABEL_27;
          }

          CFDictionaryAddValue(Mutable, @"ComponentName", v19);
          v20 = IORegistryEntryCreateCFProperty(v7, @"authErrorDescription", v5, 0);
          if (v20)
          {
            CFDictionaryAddValue(Mutable, @"authErrorDescription", v20);
            v8 = OUTLINED_FUNCTION_0_4(v7);
            if (v8)
            {
              CFDictionaryAddValue(Mutable, @"AuthPassed", v8);
            }

            v9 = OUTLINED_FUNCTION_0_4(v7);
            if (v9)
            {
              CFDictionaryAddValue(Mutable, @"isTrusted", v9);
            }

            v5 = OUTLINED_FUNCTION_0_4(v7);
            if (v5)
            {
              CFDictionaryAddValue(Mutable, @"isTrustedForUI", v5);
            }

            v18 = 0;
            v2 = Mutable;
          }

          else
          {
            OUTLINED_FUNCTION_1_3();
          }

LABEL_27:
          CFRelease(cf);
          CFRelease(v15);
          if (v16)
          {
            CFRelease(v16);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (v8)
          {
            CFRelease(v8);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          v8 = @"flags";
          v9 = @"authErrorDescription";
          if (v5)
          {
            goto LABEL_36;
          }

LABEL_37:
          if (Mutable)
          {
            v5 = v24;
            if (!v18)
            {
              goto LABEL_42;
            }

            CFRelease(Mutable);
            goto LABEL_40;
          }

          v5 = v24;
LABEL_42:
          IOObjectRelease(v7);
          if (v2 && !v18)
          {
            CFArrayAppendValue(theArray, v2);
            CFRelease(v2);
          }

          v7 = IOIteratorNext(existing);
        }

        while (v7);
      }

      IOObjectRelease(existing);
      v1 = 0;
      *v22 = theArray;
    }
  }

  return v1;
}