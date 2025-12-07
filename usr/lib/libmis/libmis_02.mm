BOOL X509CertificateValidAtTime(uint64_t a1, time_t a2)
{
  result = 0;
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = 0;
  if (a1 && a2 != -1)
  {
    return !X509CertificateGetNotBefore(a1, v6) && !X509CertificateGetNotAfter(a1, &v5) && difftime(a2, v6[0]) >= 0.0 && difftime(a2, v5) <= 0.0;
  }

  return result;
}

unint64_t X509CertificateGetNotBefore(uint64_t a1, time_t *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1, v4, 0);
  if (!result)
  {
    return sub_1B9DBDB38(v4, a2);
  }

  return result;
}

unint64_t X509CertificateGetNotAfter(uint64_t a1, time_t *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1, 0, v4);
  if (!result)
  {
    return sub_1B9DBDB38(v4, a2);
  }

  return result;
}

BOOL X509CertificateIsValid(uint64_t a1)
{
  v2 = time(0);

  return X509CertificateValidAtTime(a1, v2);
}

uint64_t X509CertificateParseValidity(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = 720906;
  if (!result)
  {
    return v3;
  }

  v4 = *(result + 72);
  v5 = *(result + 80);
  if (!v4 || v5 == 0)
  {
    return v3;
  }

  if (__CFADD__(v4, v5))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v4 + v5;
    if (v4 <= v7)
    {
      v9[0] = *(result + 72);
      v9[1] = v7;
      if (!ccder_blob_decode_Time(v9, a2))
      {
        return 720907;
      }

      if (ccder_blob_decode_Time(v9, a3))
      {
        return 0;
      }

      return 720908;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t sub_1B9DBDB38(void *a1, time_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = 720909;
  if (!a1)
  {
    return v2;
  }

  v4 = a1[1];
  if ((v4 | 2) != 0xF)
  {
    return v2;
  }

  v11.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v12 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v11.tm_mon = v6;
  *&v11.tm_isdst = v6;
  *&v11.tm_sec = v6;
  v13 = 0;
  result = __memcpy_chk();
  if (result > result + v4)
  {
    goto LABEL_24;
  }

  v8 = &v12[v4];
  if (&v12[v4] >= &v14 || &v12[v4] < v12)
  {
    goto LABEL_24;
  }

  if (v4 > 0xF)
  {
    __break(1u);
    goto LABEL_26;
  }

  v12[v4] = 0;
  if (v4 != 13)
  {
    if (v8 + 1 >= v8 && v8 + 1 <= &v14)
    {
      result = strptime(v12, "%Y%m%d%H%M%SZ", &v11);
      goto LABEL_15;
    }

LABEL_24:
    __break(0x5519u);
  }

  if (BYTE5(v13))
  {
    goto LABEL_24;
  }

  result = strptime(v12, "%y%m%d%H%M%SZ", &v11);
  if (result && v11.tm_year >= 150)
  {
    v11.tm_year -= 100;
  }

LABEL_15:
  v9 = a1[1];
  if (v9 >= 0x11)
  {
LABEL_26:
    __break(0x5512u);
    goto LABEL_27;
  }

  if (!__CFADD__(v12, v9))
  {
    if (result != &v12[v9])
    {
      return 720910;
    }

    v10 = timegm(&v11);
    if (v10 == -1)
    {
      return 720911;
    }

    v2 = 0;
    if (a2)
    {
      *a2 = v10;
    }

    return v2;
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

BOOL sub_1B9DBDCF0(unint64_t *a1, void *a2, unint64_t *a3)
{
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  v12 = v3 - *a1;
  if (ccder_blob_decode_tl())
  {
    goto LABEL_5;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  if (ccder_blob_decode_tl())
  {
LABEL_5:
    v8 = v13;
    v7 = v14;
    if (v13 > v14)
    {
      goto LABEL_19;
    }

    *a1 = v13;
    a1[1] = v14;
    v9 = v12;
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 - *a1;
  }

  if (__CFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v8 <= v7)
      {
        *a1 = v10;
        return v7 == v10;
      }

      goto LABEL_19;
    }

    if (v8 <= v7 && v9 <= v7 - v8)
    {
      *a3 = v8;
      a3[1] = v9;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

  return v7 == v10;
}

uint64_t sub_1B9DBDE2C(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      goto LABEL_12;
    }

    v8 = v7 - 0x5555555555555556;
    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    *a2 |= 0x30000000000uLL;
    if (a3)
    {
      if (v7 > v8)
      {
        goto LABEL_12;
      }

      *a3 = v7;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    if (v7 <= v8)
    {
      *a1 = v8;
      return 1;
    }

LABEL_12:
    __break(0x5519u);
  }

  return result;
}

uint64_t sub_1B9DBDFDC(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v5 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v6 = a1[1];
      if (v6 != v5 - 0x5555555555555556)
      {
        return 0;
      }

      if (v5 <= v6)
      {
        *a1 = v5 - 0x5555555555555556;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t sub_1B9DBE0C8(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v8 = a1[1];
      if (v8 != v7 - 0x5555555555555556)
      {
        return 0;
      }

      if (a3)
      {
        if (v8 < v7 || v8 - v7 < 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_13;
        }

        *a3 = v7;
        a3[1] = 0xAAAAAAAAAAAAAAAALL;
      }

      *a2 |= 0x30000000uLL;
      if (v7 <= v8)
      {
        *a1 = v7 - 0x5555555555555556;
        return 1;
      }
    }

LABEL_13:
    __break(0x5519u);
  }

  return result;
}

uint64_t sub_1B9DBE340(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = ccder_blob_check_null(a1);
  if (result)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_26;
    }

    if (__CFADD__(a2, a3))
    {
      goto LABEL_26;
    }

    v10 = a2 + a3;
    if (a2 + a3 == -1)
    {
      goto LABEL_26;
    }

    v11 = a2 + 9;
    v12 = (a2 + 9);
    while (1)
    {
      v13 = v12 < v10 && v12 >= a2;
      v14 = v13;
      if (v12 >= v10 - 1)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = *v12++;
      if ((v15 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    if (!v14)
    {
LABEL_25:
      __break(0x5519u);
LABEL_26:
      __break(0x5513u);
      return result;
    }

    if ((*v12 & 0x80000000) == 0)
    {
      if (!a5)
      {
LABEL_22:
        *a4 |= 0x100000000uLL;
        return 1;
      }

      if (v11 >= a2 && v11 <= v10)
      {
        *a5 = v11;
        a5[1] = a3 - 9;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B9DBE410(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_17;
    }

    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_18;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      result = ccder_blob_decode_tl();
      if (result)
      {
        if (a3)
        {
          if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
          {
            goto LABEL_18;
          }

          *a3 = v10;
          a3[1] = 0xAAAAAAAAAAAAAAAALL;
        }

        *a2 |= 0x240000800000uLL;
        v8 = *a1;
        if (*a1 < 0x5555555555555556)
        {
          v9 = v8 - 0x5555555555555556;
          if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
          {
            *a1 = v9;
            return 1;
          }

LABEL_18:
          __break(0x5519u);
          return result;
        }

LABEL_17:
        __break(0x5513u);
        goto LABEL_18;
      }
    }
  }

  return result;
}

unint64_t *sub_1B9DBE564(unint64_t *result, void *a2, unint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  if (v5 != 32)
  {
    return (v5 == 32);
  }

  if (a3)
  {
    if (v4 > v3)
    {
LABEL_12:
      __break(0x5519u);
      goto LABEL_13;
    }

    *a3 = v4;
    a3[1] = 32;
  }

  *a2 |= 0xC00000000uLL;
  if (v4 < 0xFFFFFFFFFFFFFFE0)
  {
    v6 = v4 + 32;
    if (v4 + 32 <= v3 && v4 <= v6)
    {
      *result = v6;
      return (v5 == 32);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}

unint64_t *X509ChainParseCertificateSet(unint64_t *result, unint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4)
  {
LABEL_33:
    __break(0x5519u);
LABEL_34:
    __break(0x5513u);
    return result;
  }

  v5 = result;
  v6 = *result >= result[1] || a3 == 0;
  if (!v6)
  {
    v10 = 0;
    v11 = a2 + 304 * a3;
    v12 = ~a2;
    v13 = a4 + 1;
    v14 = a3 - 1;
    v15 = (a2 + 272);
    while ((v10 * 304) >> 64 == (304 * v10) >> 63 && 304 * v10 <= v12)
    {
      v16 = (v15 - 34);
      if (v15 != 272 && (v16 < a2 || (v15 + 4) > v11 || v16 > (v15 + 4)))
      {
        goto LABEL_33;
      }

      result = X509CertificateParse(v15 - 34, v5);
      if (result)
      {
        return result;
      }

      if (v10)
      {
        if (v16 < a2)
        {
          goto LABEL_33;
        }

        if ((v15 + 4) > v11)
        {
          goto LABEL_33;
        }

        v17 = *v13;
        *v15 = 0;
        v15[1] = v17;
        if (v16 > (v15 + 4))
        {
          goto LABEL_33;
        }

        *v17 = v16;
        *v13 = v15;
      }

      else
      {
        v18 = *a4;
        *v15 = *a4;
        if (v18)
        {
          v19 = (v18 + 280);
        }

        else
        {
          v19 = v13;
        }

        *v19 = v15;
        *a4 = v16;
        if (v13 < a4)
        {
          goto LABEL_33;
        }

        v15[1] = a4;
      }

      v7 = v10 + 1;
      if (*v5 < v5[1])
      {
        v15 += 38;
        v6 = v14 == v10++;
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  result = 0;
  *a5 = v7;
  return result;
}

unint64_t *X509ChainGetCertificateUsingKeyIdentifier(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return v2;
  }

  while (!*(v2 + 192))
  {
LABEL_6:
    v2 = *(v2 + 272);
    if (!v2)
    {
      return v2;
    }
  }

  if (v2 < v2 + 304 && v2 + 184 <= v2 + 200)
  {
    result = compare_octet_string(a2, v2 + 184);
    if (!result)
    {
      return v2;
    }

    goto LABEL_6;
  }

  __break(0x5519u);
  return result;
}

void *X509ChainResetChain(void *result, void *a2)
{
  *result = 0;
  if (result + 1 < result)
  {
LABEL_7:
    __break(0x5519u);
    return result;
  }

  result[1] = result;
  v2 = *a2;
  if (*a2)
  {
    while (v2 < v2 + 38)
    {
      v2[36] = 0;
      v2[37] = 0;
      if (v2 + 36 > v2 + 38)
      {
        break;
      }

      v2 = v2[34];
      if (!v2)
      {
        return result;
      }
    }

    goto LABEL_7;
  }

  return result;
}

unint64_t X509ChainBuildPathPartial(unint64_t result, unint64_t *a2, unint64_t *a3, int a4)
{
  if (!result)
  {
    return 327691;
  }

  *a3 = 0;
  v5 = a3 + 1;
  if (a3 + 1 < a3 || (v6 = result, a3[1] = a3, *(result + 288) = 0, result + 288 > result + 296) || (*a3 = result, a3[1] = result + 288, *(result + 296) = a3, result + 304 < result) || (v7 = result + 120, result + 120 > result + 136))
  {
LABEL_38:
    __break(0x5519u);
  }

  else
  {
    while (1)
    {
      result = compare_octet_string(v7, v6 + 104);
      if (!result)
      {
        break;
      }

      v10 = v6 + 168;
      if (!*(v6 + 176))
      {
        goto LABEL_13;
      }

      if (v10 > v6 + 184)
      {
        goto LABEL_38;
      }

      result = X509ChainGetCertificateUsingKeyIdentifier(a2, v6 + 168);
      if (!result)
      {
        goto LABEL_13;
      }

      v11 = result;
      v12 = result + 304;
      if (result >= result + 304)
      {
        goto LABEL_38;
      }

      result += 104;
      if (v11 + 13 > v11 + 15)
      {
        goto LABEL_38;
      }

      result = compare_octet_string(result, v7);
      if (result)
      {
LABEL_13:
        v11 = *a2;
        if (*a2)
        {
          do
          {
            v12 = (v11 + 38);
            if (v11 >= v11 + 38 || v11 + 13 > v11 + 15)
            {
              goto LABEL_38;
            }

            result = compare_octet_string(v7, (v11 + 13));
            if (!result)
            {
              goto LABEL_19;
            }

            v11 = v11[34];
          }

          while (v11);
        }

        if (v10 > v6 + 184)
        {
          goto LABEL_38;
        }

        if (sub_1B9DBE9E8(v6 + 168, 1))
        {
          return 0;
        }

        v15 = sub_1B9DBEAA4(v6 + 168);
        if (a4)
        {
          v16 = 0;
        }

        else
        {
          v16 = 524296;
        }

        if (v15)
        {
          return 0;
        }

        else
        {
          return v16;
        }
      }

LABEL_19:
      v6 = v11;
      v13 = *a3;
      if (*a3)
      {
        while (v13 != v11)
        {
          v13 = v13[36];
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        return 524297;
      }

LABEL_22:
      if ((v11 + 38) <= v12)
      {
        v14 = *v5;
        v11[36] = 0;
        v11[37] = v14;
        if (v11 <= v11 + 38)
        {
          *v14 = v11;
          *v5 = (v11 + 36);
          v7 = (v11 + 15);
          if (v11 + 15 <= v11 + 17)
          {
            continue;
          }
        }
      }

      goto LABEL_38;
    }
  }

  return result;
}

unint64_t sub_1B9DBE9E8(unint64_t result, int a2)
{
  v2 = &numAppleRoots;
  if (!a2)
  {
    v2 = &numAppleProdRoots;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    for (i = &AppleRoots; ; ++i)
    {
      v6 = i + 1;
      v7 = i < &AppleRoots || v6 > AppleRootSPKIs;
      if (v7 || i > v6)
      {
        break;
      }

      v9 = *i;
      v10 = *i + 184;
      if (v10 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v4, v10);
      if (!result)
      {
        if (v9 < v9 + 304)
        {
          return v9;
        }

        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B9DBEAA4(unint64_t result)
{
  v1 = numBAARoots;
  if (numBAARoots)
  {
    v2 = result;
    for (i = &BAARoots; ; ++i)
    {
      v4 = i + 1;
      v5 = i < &BAARoots || v4 > &SEKTestRootPublicKey;
      if (v5 || i > v4)
      {
        break;
      }

      v7 = *i;
      v8 = *i + 184;
      if (v8 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v2, v8);
      if (!result)
      {
        if (v7 < v7 + 304)
        {
          return v7;
        }

        break;
      }

      if (!--v1)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainCheckPathWithOptions(char a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v54[4] = *MEMORY[0x1E69E9840];
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
      v22 = sub_1B9DBE9E8(v8 + 168, *(a3 + 17));
      goto LABEL_63;
    }

    if (*(a3 + 24))
    {
      v22 = sub_1B9DBEAA4(v8 + 168);
LABEL_63:
      v15 = v22;
      v52 |= v22 != 0;
      v16 = v22 + 304;
      if (v22)
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

  v37 = sub_1B9DBE9E8(v34, *(a3 + 17));
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

BOOL sub_1B9DBF144(void *a1, const char *a2)
{
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, "fbe71da1-0834-4d49-9b41-d3fa7f9e4d4f");
  if (!objc_msgSend_caseInsensitiveCompare_(a1, v4, v3))
  {
    return 1;
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v6 == 20)
    {
      break;
    }

    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, off_1E7ED8258[v6 + 1]);
    v10 = objc_msgSend_caseInsensitiveCompare_(a1, v9, v8);
    v6 = v7 + 1;
  }

  while (v10);
  return v7 < 0x14;
}

uint64_t sub_1B9DBF3C4(uint64_t result, sqlite3_stmt *a2)
{
  if (*(result + 32))
  {
    v3 = result;
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    v5 = *(v3 + 32);
    v8 = objc_msgSend_bytes(v5, v6, v7);
    v11 = objc_msgSend_length(*(v3 + 32), v9, v10);

    return sqlite3_bind_blob(a2, v4, v8, v11, 0);
  }

  return result;
}

void sub_1B9DBF44C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_fromSQLStatement_withMap_(BoxedMISProfile, a2, a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

uint64_t sub_1B9DBF6B0(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  if (a3)
  {
    objc_msgSend_appendString_(*(a1 + 32), a2, @",");
  }

  return objc_msgSend_appendFormat_(*(a1 + 32), a2, @"(%lu,@p%lu)", a3, a3);
}

void *sub_1B9DBF708(uint64_t a1, sqlite3_stmt *a2)
{
  if (*(a1 + 32))
  {
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    v5 = *(a1 + 32);
    v8 = objc_msgSend_bytes(v5, v6, v7);
    v11 = objc_msgSend_length(*(a1 + 32), v9, v10);
    sqlite3_bind_blob(a2, v4, v8, v11, 0);
  }

  v12 = sqlite3_bind_parameter_index(a2, "@totalPredicates");
  v13 = MEMORY[0x1E696AD98];
  v16 = objc_msgSend_count(*(a1 + 40), v14, v15);
  v18 = objc_msgSend_numberWithUnsignedInteger_(v13, v17, v16);
  v21 = objc_msgSend_longLongValue(v18, v19, v20);
  sqlite3_bind_int64(a2, v12, v21);

  result = objc_msgSend_count(*(a1 + 40), v22, v23);
  if (result)
  {
    v26 = 0;
    v27 = 1;
    do
    {
      v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"@p%u", v27 - 1);
      v29 = v28;
      v32 = objc_msgSend_UTF8String(v29, v30, v31);
      v33 = sqlite3_bind_parameter_index(a2, v32);
      v35 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v34, v26);
      v36 = v35;
      v39 = objc_msgSend_UTF8String(v36, v37, v38);
      sqlite3_bind_text(a2, v33, v39, -1, 0);

      v26 = v27;
      result = objc_msgSend_count(*(a1 + 40), v40, v41);
    }

    while (result > v27++);
  }

  return result;
}

void sub_1B9DBF890(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_fromSQLStatement_withMap_(BoxedMISProfile, a2, a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

void sub_1B9DBFADC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_fromSQLStatement_withMap_(BoxedMISProfile, a2, a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

void sub_1B9DBFC6C(uint64_t a1, char *a2, void *a3)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"profile_cms_blob");
  v8 = objc_msgSend_intValue(v5, v6, v7);
  v10 = sub_1B9DD1A10(a2, v8);

  objc_msgSend_addObject_(*(a1 + 32), v9, v10);
}

void sub_1B9DBFCF8(uint64_t a1, char *a2, void *a3)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"blob");
  v8 = objc_msgSend_intValue(v5, v6, v7);
  v10 = sub_1B9DD1A10(a2, v8);

  objc_msgSend_addObject_(*(a1 + 32), v9, v10);
}

BOOL sub_1B9DBFE44(uint64_t a1)
{
  v2 = *(a1 + 32);
  Value = MISProfileGetValue(*(a1 + 48), @"UUID");
  if (objc_msgSend_isProfileInstalled_(v2, v4, Value))
  {
    return 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_insertProfile_(*(*(a1 + 32) + 56), v5, *(a1 + 48));
  return *(*(*(a1 + 40) + 8) + 24) == 0;
}

void sub_1B9DC0054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B9DC0078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B9DC0090(uint64_t a1, const char *a2)
{
  v268 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_readSetting_(*(a1 + 32), a2, @"databaseSchemaVersion");
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (v7)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v7, v6, @"1");
    goto LABEL_3;
  }

  v17 = sub_1B9D98960();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B9D96000, v17, OS_LOG_TYPE_INFO, "MISQL: null version, potential erase or upgrade", buf, 2u);
  }

  objc_msgSend_setSetting_toValue_(*(a1 + 32), v18, @"databaseSchemaVersion", @"1");
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v19, @"CREATE TABLE profiles(uuid TEXT NOT NULL PRIMARY KEY, team_id TEXT NOT NULL, install_time TEXT DEFAULT CURRENT_TIMESTAMP, name TEXT NOT NULL, expires INTEGER, is_for_all_devices INTEGER, is_apple_internal INTEGER, is_local INTEGER, is_beta INTEGER, cms_blob BLOB NOT NULL)", 0, 0);
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v20, @"CREATE TABLE certificates(pk INTEGER PRIMARY KEY AUTOINCREMENT, leaf BLOB UNIQUE NOT NULL)", 0, 0);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v14 = sub_1B9D98960();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
        *buf = 136315138;
        v267 = v23;
        v16 = "Couldn't create certificates table: %s";
        goto LABEL_140;
      }

      goto LABEL_141;
    }

    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v22, @"CREATE UNIQUE INDEX certificate_leaf_index ON certificates (leaf)", 0, 0);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v14 = sub_1B9D98960();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v26 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
        *buf = 136315138;
        v267 = v26;
        v16 = "Couldn't create certificates index: %s";
        goto LABEL_140;
      }

      goto LABEL_141;
    }

    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v25, @"CREATE TABLE certificate_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT, uuid TEXT NOT NULL, leaf_pk INTEGER NOT NULL, UNIQUE(uuid, leaf_pk), CONSTRAINT fk_certificate_leaf  FOREIGN KEY (leaf_pk)  REFERENCES certificates(pk)  ON DELETE CASCADE, CONSTRAINT fk_cert_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v14 = sub_1B9D98960();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v78 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
        *buf = 136315138;
        v267 = v78;
        v16 = "Couldn't create certificates provisioning cache: %s";
        goto LABEL_140;
      }

      goto LABEL_141;
    }

    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v77, @"CREATE TABLE entitlements_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT, uuid TEXT NOT NULL, predicate TEXT NOT NULL, wildcard INTEGER NOT NULL, UNIQUE(uuid, predicate), CONSTRAINT fk_predicate_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v14 = sub_1B9D98960();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v85 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
        *buf = 136315138;
        v267 = v85;
        v16 = "Couldn't create entitlements provisioning cache: %s";
        goto LABEL_140;
      }

      goto LABEL_141;
    }

    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v84, @"CREATE UNIQUE INDEX entitlements_cache_index ON entitlements_provisioning_cache (uuid, predicate)", 0, 0);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v14 = sub_1B9D98960();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v116 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
        *buf = 136315138;
        v267 = v116;
        v16 = "Couldn't create entitlements index: %s";
        goto LABEL_140;
      }

      goto LABEL_141;
    }

    v146 = *(*(a1 + 40) + 8);
    v147 = *(v146 + 40);
    *(v146 + 40) = @"1";

    isEqualToString = objc_msgSend_isEqualToString_(*(*(*(a1 + 40) + 8) + 40), v148, @"1");
LABEL_3:
    if (isEqualToString)
    {
      v10 = sub_1B9D98960();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D96000, v10, OS_LOG_TYPE_INFO, "MISQL: performing database migration 1 -> 2", buf, 2u);
      }

      objc_msgSend_setSetting_toValue_(*(a1 + 32), v11, @"databaseSchemaVersion", @"2");
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v12, @"ALTER TABLE profiles ADD COLUMN is_der INTEGER DEFAULT (0)", 0, 0);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v14 = sub_1B9D98960();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v15;
          v16 = "Couldn't add is_der to the profiles table: %s";
LABEL_140:
          _os_log_error_impl(&dword_1B9D96000, v14, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
          goto LABEL_141;
        }

        goto LABEL_141;
      }

      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v13, @"CREATE TABLE xml_profiles_cache(uuid TEXT NOT NULL PRIMARY KEY, cms_blob BLOB NOT NULL, CONSTRAINT fk_xml_profile_cache_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v14 = sub_1B9D98960();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v24 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v24;
          v16 = "Couldn't create the xml profiles table: %s";
          goto LABEL_140;
        }

        goto LABEL_141;
      }

      v27 = *(*(a1 + 40) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = @"2";
    }

    if (objc_msgSend_isEqualToString_(*(*(*(a1 + 40) + 8) + 40), v9, @"2"))
    {
      v30 = sub_1B9D98960();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D96000, v30, OS_LOG_TYPE_INFO, "MISQL: performing database migration 2 -> 3", buf, 2u);
      }

      objc_msgSend_setSetting_toValue_(*(a1 + 32), v31, @"databaseSchemaVersion", @"3");
      objc_msgSend_findProfilesMatchingEntitlements_withCertificate_(*(a1 + 32), v32, &unk_1F37DD730, 0);
      v253 = 0u;
      v254 = 0u;
      v255 = 0u;
      v14 = v256 = 0u;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v33, &v253, v265, 16);
      if (v34)
      {
        v37 = v34;
        v38 = *v254;
        while (2)
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v254 != v38)
            {
              objc_enumerationMutation(v14);
            }

            v40 = *(*(&v253 + 1) + 8 * i);
            if (!objc_msgSend_ProvisionsAllDevices(v40, v35, v36) && !objc_msgSend_AppleInternal(v40, v35, v36))
            {
              v41 = *(a1 + 32);
              v252[0] = MEMORY[0x1E69E9820];
              v252[1] = 3221225472;
              v252[2] = sub_1B9DC1D88;
              v252[3] = &unk_1E7ED8548;
              v252[4] = v40;
              *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v41, v35, @"UPDATE profiles SET is_beta = 1 WHERE uuid = @uuid", v252, 0);
              if (*(*(*(a1 + 48) + 8) + 24))
              {
                v49 = sub_1B9D98960();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  v110 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
                  *buf = 136315138;
                  v267 = v110;
                  _os_log_error_impl(&dword_1B9D96000, v49, OS_LOG_TYPE_ERROR, "Couldn't update is_beta column: %s", buf, 0xCu);
                }

                goto LABEL_141;
              }
            }
          }

          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v35, &v253, v265, 16);
          if (v37)
          {
            continue;
          }

          break;
        }
      }

      v42 = *(*(a1 + 40) + 8);
      v43 = *(v42 + 40);
      *(v42 + 40) = @"3";
    }

    if (objc_msgSend_isEqualToString_(*(*(*(a1 + 40) + 8) + 40), v29, @"3"))
    {
      v45 = sub_1B9D98960();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D96000, v45, OS_LOG_TYPE_INFO, "MISQL: performing database migration 3 -> 4", buf, 2u);
      }

      objc_msgSend_setSetting_toValue_(*(a1 + 32), v46, @"databaseSchemaVersion", @"4");
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v47, @"CREATE TABLE IF NOT EXISTS trusted_team_ids(team_id TEXT PRIMARY KEY, signature BLOB)", 0, 0);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v14 = sub_1B9D98960();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v48 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v48;
          v16 = "Couldn't create the trusted team IDs table: %s";
          goto LABEL_140;
        }

        goto LABEL_141;
      }

      v50 = *(*(a1 + 40) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = @"4";
    }

    if (objc_msgSend_isEqualToString_(*(*(*(a1 + 40) + 8) + 40), v44, @"4"))
    {
      v53 = sub_1B9D98960();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D96000, v53, OS_LOG_TYPE_INFO, "MISQL: performing database migration 4 -> 5", buf, 2u);
      }

      objc_msgSend_setSetting_toValue_(*(a1 + 32), v54, @"databaseSchemaVersion", @"5");
      v55 = objc_opt_new();
      v56 = *(a1 + 32);
      v250[0] = MEMORY[0x1E69E9820];
      v250[1] = 3221225472;
      v250[2] = sub_1B9DC1E18;
      v250[3] = &unk_1E7ED8308;
      v14 = v55;
      v251 = v14;
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v56, v57, @"SELECT team_id, signature FROM trusted_team_ids", 0, v250);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v58 = sub_1B9D98960();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v59;
          _os_log_error_impl(&dword_1B9D96000, v58, OS_LOG_TYPE_ERROR, "Error searching for zero length signatures: %s", buf, 0xCu);
        }

LABEL_72:

        v76 = v251;
        goto LABEL_73;
      }

      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      v58 = v14;
      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v60, &v246, v264, 16);
      if (v61)
      {
        v63 = v61;
        v64 = *v247;
        while (2)
        {
          for (j = 0; j != v63; ++j)
          {
            if (*v247 != v64)
            {
              objc_enumerationMutation(v58);
            }

            v66 = *(*(&v246 + 1) + 8 * j);
            v67 = *(a1 + 32);
            v245[0] = MEMORY[0x1E69E9820];
            v245[1] = 3221225472;
            v245[2] = sub_1B9DC1E98;
            v245[3] = &unk_1E7ED8548;
            v245[4] = v66;
            *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v67, v62, @"UPDATE trusted_team_ids SET signature = NULL WHERE team_id = ?1", v245, 0);
            if (*(*(*(a1 + 48) + 8) + 24))
            {
              v75 = sub_1B9D98960();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v145 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
                *buf = 136315138;
                v267 = v145;
                _os_log_error_impl(&dword_1B9D96000, v75, OS_LOG_TYPE_ERROR, "Couldn't replace signature with nil: %s", buf, 0xCu);
              }

              goto LABEL_72;
            }
          }

          v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v62, &v246, v264, 16);
          if (v63)
          {
            continue;
          }

          break;
        }
      }

      v68 = *(*(a1 + 40) + 8);
      v69 = *(v68 + 40);
      *(v68 + 40) = @"5";
    }

    if (objc_msgSend_isEqualToString_(*(*(*(a1 + 40) + 8) + 40), v52, @"5"))
    {
      v71 = sub_1B9D98960();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D96000, v71, OS_LOG_TYPE_INFO, "MISQL: performing database migration 5 -> 6", buf, 2u);
      }

      objc_msgSend_setSetting_toValue_(*(a1 + 32), v72, @"databaseSchemaVersion", @"6");
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v73, @"CREATE TABLE IF NOT EXISTS team_id_info(team_id TEXT NOT NULL, team_name TEXT NOT NULL,  PRIMARY KEY (team_id))", 0, 0);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v14 = sub_1B9D98960();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v74 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v74;
          v16 = "Couldn't create the team ID info table: %s";
          goto LABEL_140;
        }

        goto LABEL_141;
      }

      v79 = objc_opt_new();
      v80 = *(a1 + 32);
      v243[0] = MEMORY[0x1E69E9820];
      v243[1] = 3221225472;
      v243[2] = sub_1B9DC1EE8;
      v243[3] = &unk_1E7ED8308;
      v14 = v79;
      v244 = v14;
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v80, v81, @"SELECT profiles.team_id, profiles.cms_blob, profiles.uuid FROM profiles", 0, v243);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v82 = sub_1B9D98960();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v83 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v83;
          _os_log_error_impl(&dword_1B9D96000, v82, OS_LOG_TYPE_ERROR, "Couldn't fetch trusted team ID info: %s", buf, 0xCu);
        }

LABEL_105:

        v76 = v244;
        goto LABEL_73;
      }

      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      v82 = v14;
      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v86, &v239, v263, 16);
      if (v87)
      {
        v89 = v87;
        v90 = *v240;
        while (2)
        {
          for (k = 0; k != v89; ++k)
          {
            if (*v240 != v90)
            {
              objc_enumerationMutation(v82);
            }

            v92 = *(*(&v239 + 1) + 8 * k);
            v93 = objc_msgSend_objectForKeyedSubscript_(v82, v88, v92);
            v94 = *(a1 + 32);
            v237[0] = MEMORY[0x1E69E9820];
            v237[1] = 3221225472;
            v237[2] = sub_1B9DC2070;
            v237[3] = &unk_1E7ED8598;
            v237[4] = v92;
            v95 = v93;
            v238 = v95;
            *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v94, v96, @"INSERT INTO team_id_info VALUES (@team_id, @team_name)", v237, 0);
            if (*(*(*(a1 + 48) + 8) + 24))
            {
              v111 = sub_1B9D98960();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
              {
                v192 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
                *buf = 136315138;
                v267 = v192;
                _os_log_error_impl(&dword_1B9D96000, v111, OS_LOG_TYPE_ERROR, "Couldn't insert team ID info: %s", buf, 0xCu);
              }

              goto LABEL_105;
            }
          }

          v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v88, &v239, v263, 16);
          if (v89)
          {
            continue;
          }

          break;
        }
      }

      v97 = *(*(a1 + 40) + 8);
      v98 = *(v97 + 40);
      *(v97 + 40) = @"6";
    }

    if (objc_msgSend_isEqualToString_(*(*(*(a1 + 40) + 8) + 40), v70, @"6"))
    {
      v100 = sub_1B9D98960();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D96000, v100, OS_LOG_TYPE_INFO, "MISQL: performing database migration 6 -> 7", buf, 2u);
      }

      objc_msgSend_setSetting_toValue_(*(a1 + 32), v101, @"databaseSchemaVersion", @"7");
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v102, @"CREATE TABLE IF NOT EXISTS signing_identities(pk INTEGER PRIMARY KEY AUTOINCREMENT, uuid TEXT NOT NULL, signing_identity TEXT NOT NULL, UNIQUE(uuid, signing_identity), CONSTRAINT fk_signing_identity_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v14 = sub_1B9D98960();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v103 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v103;
          v16 = "Couldn't create the signing identities table: %s";
          goto LABEL_140;
        }

        goto LABEL_141;
      }

      v104 = objc_opt_new();
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_1B9DC2118;
      aBlock[3] = &unk_1E7ED8330;
      v14 = v104;
      v236 = v14;
      v105 = _Block_copy(aBlock);
      v106 = *(a1 + 32);
      v233[0] = MEMORY[0x1E69E9820];
      v233[1] = 3221225472;
      v233[2] = sub_1B9DC240C;
      v233[3] = &unk_1E7ED8358;
      v107 = v105;
      v234 = v107;
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v106, v108, @"SELECT uuid, cms_blob FROM profiles WHERE is_der = 0 AND (is_for_all_devices = 1 OR is_local = 1)", 0, v233);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v109 = sub_1B9D98960();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          v191 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v191;
          _os_log_error_impl(&dword_1B9D96000, v109, OS_LOG_TYPE_ERROR, "Couldn't fetch trusted signing identities from profiles: %s", buf, 0xCu);
        }

LABEL_149:
        v76 = v236;
        goto LABEL_73;
      }

      v112 = *(a1 + 32);
      v231[0] = MEMORY[0x1E69E9820];
      v231[1] = 3221225472;
      v231[2] = sub_1B9DC24B4;
      v231[3] = &unk_1E7ED8358;
      v107 = v107;
      v232 = v107;
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v112, v113, @"SELECT xml_profiles_cache.uuid, xml_profiles_cache.cms_blob FROM xml_profiles_cache LEFT JOIN profiles ON profiles.uuid = xml_profiles_cache.uuid WHERE profiles.is_for_all_devices = 1 OR profiles.is_local = 1", 0, v231);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v114 = sub_1B9D98960();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          v115 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v115;
          _os_log_error_impl(&dword_1B9D96000, v114, OS_LOG_TYPE_ERROR, "Couldn't fetch trusted signing identities from xml_profiles_cache: %s", buf, 0xCu);
        }

LABEL_148:

        goto LABEL_149;
      }

      v229 = 0u;
      v230 = 0u;
      v227 = 0u;
      v228 = 0u;
      v117 = v14;
      v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v118, &v227, v262, 16);
      if (v200)
      {
        v120 = *v228;
        v204 = v117;
        v198 = *v228;
        do
        {
          v121 = 0;
          do
          {
            if (*v228 != v120)
            {
              objc_enumerationMutation(v117);
            }

            v202 = v121;
            v122 = *(*(&v227 + 1) + 8 * v121);
            v223 = 0u;
            v224 = 0u;
            v225 = 0u;
            v226 = 0u;
            v123 = objc_msgSend_objectForKeyedSubscript_(v117, v119, v122);
            v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v124, &v223, v261, 16);
            if (v125)
            {
              v127 = v125;
              v128 = *v224;
              while (2)
              {
                for (m = 0; m != v127; ++m)
                {
                  if (*v224 != v128)
                  {
                    objc_enumerationMutation(v123);
                  }

                  v130 = *(*(&v223 + 1) + 8 * m);
                  v131 = *(a1 + 32);
                  v222[0] = MEMORY[0x1E69E9820];
                  v222[1] = 3221225472;
                  v222[2] = sub_1B9DC255C;
                  v222[3] = &unk_1E7ED8598;
                  v222[4] = v122;
                  v222[5] = v130;
                  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v131, v126, @"INSERT OR IGNORE INTO signing_identities VALUES (NULL, @uuid, @signing_identity)", v222, 0);
                  if (*(*(*(a1 + 48) + 8) + 24))
                  {
                    v149 = sub_1B9D98960();
                    if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                    {
                      v194 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
                      *buf = 136315138;
                      v267 = v194;
                      _os_log_error_impl(&dword_1B9D96000, v149, OS_LOG_TYPE_ERROR, "Couldn't insert into signing identities: %s", buf, 0xCu);
                    }

                    v114 = v204;
                    goto LABEL_148;
                  }
                }

                v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v126, &v223, v261, 16);
                if (v127)
                {
                  continue;
                }

                break;
              }
            }

            v121 = v202 + 1;
            v117 = v204;
            v120 = v198;
          }

          while (v202 + 1 != v200);
          v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(v204, v119, &v227, v262, 16);
        }

        while (v200);
      }

      v132 = *(*(a1 + 40) + 8);
      v133 = *(v132 + 40);
      *(v132 + 40) = @"7";
    }

    if (objc_msgSend_isEqualToString_(*(*(*(a1 + 40) + 8) + 40), v99, @"7"))
    {
      v135 = sub_1B9D98960();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D96000, v135, OS_LOG_TYPE_INFO, "MISQL: performing database migration 7 -> 8", buf, 2u);
      }

      objc_msgSend_setSetting_toValue_(*(a1 + 32), v136, @"databaseSchemaVersion", @"8");
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v137, @"CREATE TABLE IF NOT EXISTS online_auth( uuid TEXT NOT NULL,  cdhash BLOB NOT NULL,  grace_period INT NOT NULL,  last_success_monotonic_time INT NOT NULL,  last_success_reset_count INT NOT NULL,  is_rejected INT NOT NULL DEFAULT (0),  is_rejected_by_whole_profile INT NOT NULL DEFAULT (0),  PRIMARY KEY (uuid, cdhash),  CONSTRAINT fk_online_auth_profile_uuid    FOREIGN KEY (uuid)    REFERENCES profiles(uuid)    ON DELETE CASCADE)", 0, 0);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v14 = sub_1B9D98960();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v139 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v139;
          v16 = "Couldn't create the online auth table: %s";
          goto LABEL_140;
        }

        goto LABEL_141;
      }

      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v138, @"CREATE TABLE IF NOT EXISTS banned_profile_uuids( uuid TEXT NOT NULL)", 0, 0);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v14 = sub_1B9D98960();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v141 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v141;
          v16 = "Couldn't create the banned profile UUIDs table: %s";
          goto LABEL_140;
        }

        goto LABEL_141;
      }

      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(*(a1 + 32), v140, @"CREATE TABLE IF NOT EXISTS banned_cdhashes( cdhash BLOB NOT NULL)", 0, 0);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v14 = sub_1B9D98960();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v142 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
          *buf = 136315138;
          v267 = v142;
          v16 = "Couldn't create the banned cdhashes table: %s";
          goto LABEL_140;
        }

        goto LABEL_141;
      }

      v150 = *(*(a1 + 40) + 8);
      v151 = *(v150 + 40);
      *(v150 + 40) = @"8";
    }

    if (!objc_msgSend_isEqualToString_(*(*(*(a1 + 40) + 8) + 40), v134, @"8"))
    {
      return 1;
    }

    v152 = sub_1B9D98960();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B9D96000, v152, OS_LOG_TYPE_INFO, "MISQL: performing database migration 8 -> 9", buf, 2u);
    }

    objc_msgSend_setSetting_toValue_(*(a1 + 32), v153, @"databaseSchemaVersion", @"9");
    v154 = objc_opt_new();
    v155 = *(a1 + 32);
    v220[0] = MEMORY[0x1E69E9820];
    v220[1] = 3221225472;
    v220[2] = sub_1B9DC2604;
    v220[3] = &unk_1E7ED8308;
    v14 = v154;
    v221 = v14;
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v155, v156, @"SELECT uuid, predicate FROM entitlements_provisioning_cache WHERE predicate LIKE 'string%' || x'1f' || '*' AND wildcard = 1", 0, v220);
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v159 = v14;
      v161 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v160, &v216, v260, 16);
      if (v161)
      {
        v163 = v161;
        v164 = *v217;
        v197 = v159;
        v195 = *v217;
        do
        {
          v165 = 0;
          do
          {
            if (*v217 != v164)
            {
              objc_enumerationMutation(v159);
            }

            v199 = v165;
            v166 = *(*(&v216 + 1) + 8 * v165);
            v212 = 0u;
            v213 = 0u;
            v214 = 0u;
            v215 = 0u;
            obj = objc_msgSend_objectForKeyedSubscript_(v159, v162, v166);
            v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v167, &v212, v259, 16);
            if (v203)
            {
              v205 = *v213;
              v196 = v163;
              do
              {
                for (n = 0; n != v203; ++n)
                {
                  if (*v213 != v205)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v170 = *(*(&v212 + 1) + 8 * n);
                  v171 = objc_msgSend_rangeOfString_(v170, v168, @"\x1F");
                  if (v171 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v172 = objc_msgSend_substringFromIndex_(v170, v168, v171);
                    v174 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v173, @"BOOL%@", v172);
                    v258[0] = v174;
                    v201 = v172;
                    v176 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v175, @"number%@", v172);
                    v258[1] = v176;
                    v178 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v177, v258, 2);

                    v210 = 0u;
                    v211 = 0u;
                    v208 = 0u;
                    v209 = 0u;
                    v179 = v178;
                    v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v179, v180, &v208, v257, 16);
                    if (v181)
                    {
                      v183 = v181;
                      v184 = *v209;
                      while (2)
                      {
                        for (ii = 0; ii != v183; ++ii)
                        {
                          if (*v209 != v184)
                          {
                            objc_enumerationMutation(v179);
                          }

                          v186 = *(*(&v208 + 1) + 8 * ii);
                          v187 = *(a1 + 32);
                          v207[0] = MEMORY[0x1E69E9820];
                          v207[1] = 3221225472;
                          v207[2] = sub_1B9DC26D8;
                          v207[3] = &unk_1E7ED8598;
                          v207[4] = v166;
                          v207[5] = v186;
                          *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_executeQuery_withBind_withResults_(v187, v182, @"INSERT OR IGNORE INTO entitlements_provisioning_cache (uuid, predicate, wildcard) VALUES (?1, ?2, 1)", v207, 0);
                          if (*(*(*(a1 + 48) + 8) + 24))
                          {
                            v190 = sub_1B9D98960();
                            if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
                            {
                              v193 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
                              *buf = 136315138;
                              v267 = v193;
                              _os_log_error_impl(&dword_1B9D96000, v190, OS_LOG_TYPE_ERROR, "Couldn't insert new types for single asterisk wildcard predicates: %s", buf, 0xCu);
                            }

                            v157 = v197;
                            goto LABEL_186;
                          }
                        }

                        v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v179, v182, &v208, v257, 16);
                        if (v183)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }
                }

                v163 = v196;
                v159 = v197;
                v164 = v195;
                v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v168, &v212, v259, 16);
              }

              while (v203);
            }

            v165 = v199 + 1;
          }

          while (v199 + 1 != v163);
          v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v162, &v216, v260, 16);
        }

        while (v163);
      }

      v188 = *(*(a1 + 40) + 8);
      v189 = *(v188 + 40);
      *(v188 + 40) = @"9";

      v143 = 1;
      v14 = v159;
      goto LABEL_142;
    }

    v157 = sub_1B9D98960();
    if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
    {
      v158 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
      *buf = 136315138;
      v267 = v158;
      _os_log_error_impl(&dword_1B9D96000, v157, OS_LOG_TYPE_ERROR, "Couldn't fetch single asterisk wildcard predicates: %s", buf, 0xCu);
    }

LABEL_186:

    v76 = v221;
LABEL_73:

    goto LABEL_141;
  }

  v14 = sub_1B9D98960();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v21 = sqlite3_errstr(*(*(*(a1 + 48) + 8) + 24));
    *buf = 136315138;
    v267 = v21;
    v16 = "Couldn't create profiles table: %s";
    goto LABEL_140;
  }

LABEL_141:
  v143 = 0;
LABEL_142:

  return v143;
}

void sub_1B9DC1D88(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v11 = objc_msgSend_UUID(*(a1 + 32), v5, v6);
  v7 = v11;
  v10 = objc_msgSend_UTF8String(v11, v8, v9);
  sqlite3_bind_text(a2, v4, v10, -1, 0);
}

void sub_1B9DC1E18(uint64_t a1, sqlite3_stmt *a2)
{
  v8 = sub_1B9DD19D0(a2, 0);
  v4 = sub_1B9DD1A10(a2, 1);
  if (!objc_msgSend_length(v4, v5, v6))
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v8);
  }
}

uint64_t sub_1B9DC1E98(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = *(a1 + 32);
  v6 = objc_msgSend_UTF8String(v3, v4, v5);

  return sqlite3_bind_text(a2, 1, v6, -1, 0);
}

void sub_1B9DC1EE8(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = sub_1B9DD19D0(a2, 0);
  v9 = objc_msgSend_objectForKey_(*(a1 + 32), v8, v7);

  if (!v9)
  {
    v10 = sub_1B9DD1A10(a2, 1);
    v11 = sub_1B9DD19D0(a2, 2);
    v12 = MISProfileCreateWithData(v11, v10);
    if (v12)
    {
      v13 = v12;
      v14 = MISProfileGetValue(v12, @"TeamName");
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v15, v14, v7);
      CFRelease(v13);
    }

    else
    {
      v16 = sub_1B9D98960();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v11;
        _os_log_error_impl(&dword_1B9D96000, v16, OS_LOG_TYPE_ERROR, "Migrating team ID info: Unable to create profile for %@", &v17, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1B9DC2070(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sqlite3_bind_text(a2, v4, v8, -1, 0);
  v9 = sqlite3_bind_parameter_index(a2, "@team_name");
  v10 = *(a1 + 40);
  v13 = objc_msgSend_UTF8String(v10, v11, v12);

  return sqlite3_bind_text(a2, v9, v13, -1, 0);
}

void sub_1B9DC2118(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v7, v5);

  if (!v8)
  {
    v10 = MISProfileCreateWithData(v9, v6);
    if (v10)
    {
      v11 = v10;
      v30 = v6;
      v12 = MISXMLProvisioningProfileGetDeveloperCertificates(v10);
      CFRelease(v11);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = v12;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v35, 16);
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          v18 = 0;
          do
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = SecCertificateCreateWithData(0, *(*(&v31 + 1) + 8 * v18));
            if (v19)
            {
              v20 = v19;
              v21 = SecCertificateCopySubjectSummary(v19);
              CFRelease(v20);
              if (v21)
              {
                v23 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v22, v5);

                if (!v23)
                {
                  v25 = objc_opt_new();
                  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v26, v25, v5);
                }

                v27 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v24, v5);
                objc_msgSend_addObject_(v27, v28, v21);
              }

              else
              {
                v27 = sub_1B9D98960();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v37 = v5;
                  _os_log_error_impl(&dword_1B9D96000, v27, OS_LOG_TYPE_ERROR, "Migration: Unable to get signing identity from %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v21 = sub_1B9D98960();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v37 = v5;
                _os_log_error_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_ERROR, "Migration: Couldn't create SecCertificate for %@", buf, 0xCu);
              }
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v29, &v31, v35, 16);
        }

        while (v16);
      }

      v6 = v30;
    }

    else
    {
      v13 = sub_1B9D98960();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v5;
        _os_log_error_impl(&dword_1B9D96000, v13, OS_LOG_TYPE_ERROR, "Migration: Unable to create profile for %@", buf, 0xCu);
      }
    }
  }
}

void sub_1B9DC240C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1B9DD19D0(a2, 0);
  v7 = sub_1B9DD1A10(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

void sub_1B9DC24B4(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1B9DD19D0(a2, 0);
  v7 = sub_1B9DD1A10(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1B9DC255C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sqlite3_bind_text(a2, v4, v8, -1, 0);
  v9 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v10 = *(a1 + 40);
  v13 = objc_msgSend_UTF8String(v10, v11, v12);

  return sqlite3_bind_text(a2, v9, v13, -1, 0);
}

void sub_1B9DC2604(uint64_t a1, sqlite3_stmt *a2)
{
  v12 = sub_1B9DD19D0(a2, 0);
  v4 = sub_1B9DD19D0(a2, 1);
  v6 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v5, v12);

  if (!v6)
  {
    v8 = objc_opt_new();
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v9, v8, v12);
  }

  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v7, v12);
  objc_msgSend_addObject_(v10, v11, v4);
}

uint64_t sub_1B9DC26D8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  sqlite3_bind_text(a2, 1, v7, -1, 0);
  v8 = *(a1 + 40);
  v11 = objc_msgSend_UTF8String(v8, v9, v10);

  return sqlite3_bind_text(a2, 2, v11, -1, 0);
}

uint64_t sub_1B9DC28F0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sqlite3_bind_text(a2, v4, v8, -1, 0);
  v9 = sqlite3_bind_parameter_index(a2, "@predicate");
  v10 = *(a1 + 40);
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  sqlite3_bind_text(a2, v9, v13, -1, 0);
  v14 = sqlite3_bind_parameter_index(a2, "@wildcard");
  v15 = *(a1 + 48);

  return sqlite3_bind_int(a2, v14, v15);
}

uint64_t sub_1B9DC2CDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B9DC2CF4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_bytes(v5, v6, v7);
  v11 = objc_msgSend_length(*(a1 + 32), v9, v10);

  return sqlite3_bind_blob(a2, v4, v8, v11, 0);
}

uint64_t sub_1B9DC2D70(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_bytes(v5, v6, v7);
  v11 = objc_msgSend_length(*(a1 + 32), v9, v10);

  return sqlite3_bind_blob(a2, v4, v8, v11, 0);
}

void sub_1B9DC2DEC(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v14 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"pk");
  v7 = objc_msgSend_intValue(v14, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  v9 = sqlite3_column_int64(a2, v7);
  v11 = objc_msgSend_numberWithLongLong_(v8, v10, v9);
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

uint64_t sub_1B9DC35E8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sqlite3_bind_text(a2, v4, v8, -1, 0);
  v9 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  v10 = *(a1 + 40);
  v13 = objc_msgSend_bytes(v10, v11, v12);
  v16 = objc_msgSend_length(*(a1 + 40), v14, v15);

  return sqlite3_bind_blob(a2, v9, v13, v16, 0);
}

uint64_t sub_1B9DC369C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sqlite3_bind_text(a2, v4, v8, -1, 0);
  v9 = sqlite3_bind_parameter_index(a2, "@team_id");
  v10 = *(a1 + 40);
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  sqlite3_bind_text(a2, v9, v13, -1, 0);
  v14 = sqlite3_bind_parameter_index(a2, "@name");
  v15 = *(a1 + 48);
  v18 = objc_msgSend_UTF8String(v15, v16, v17);
  sqlite3_bind_text(a2, v14, v18, -1, 0);
  v19 = sqlite3_bind_parameter_index(a2, "@expires");
  objc_msgSend_timeIntervalSince1970(*(a1 + 56), v20, v21);
  sqlite3_bind_int64(a2, v19, v22);
  v23 = sqlite3_bind_parameter_index(a2, "@is_for_all_devices");
  sqlite3_bind_int(a2, v23, *(a1 + 72));
  v24 = sqlite3_bind_parameter_index(a2, "@is_apple_internal");
  sqlite3_bind_int(a2, v24, *(a1 + 73));
  v25 = sqlite3_bind_parameter_index(a2, "@is_local");
  sqlite3_bind_int(a2, v25, *(a1 + 74));
  v26 = sqlite3_bind_parameter_index(a2, "@is_beta");
  sqlite3_bind_int(a2, v26, *(a1 + 75));
  v27 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  v28 = *(a1 + 64);
  v31 = objc_msgSend_bytes(v28, v29, v30);
  v34 = objc_msgSend_length(*(a1 + 64), v32, v33);
  sqlite3_bind_blob(a2, v27, v31, v34, 0);
  v35 = sqlite3_bind_parameter_index(a2, "@is_der");
  v36 = *(a1 + 76);

  return sqlite3_bind_int(a2, v35, v36);
}

uint64_t sub_1B9DC388C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sqlite3_bind_text(a2, v4, v8, -1, 0);
  v9 = sqlite3_bind_parameter_index(a2, "@leaf_pk");
  v12 = objc_msgSend_longLongValue(*(a1 + 40), v10, v11);

  return sqlite3_bind_int64(a2, v9, v12);
}

void sub_1B9DC3928(void *a1, void *a2)
{
  if (!*(*(a1[6] + 8) + 24))
  {
    v4 = a1[4];
    v5 = a2;
    v9 = objc_msgSend_Entitlements(v4, v6, v7);
    LODWORD(v4) = objc_msgSend_insertEntitlement_forProfile_(v9, v8, v5, a1[5]);

    *(*(a1[6] + 8) + 24) = v4;
  }
}

uint64_t sub_1B9DC39BC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sqlite3_bind_text(a2, v4, v8, -1, 0);
  v9 = sqlite3_bind_parameter_index(a2, "@team_name");
  v10 = *(a1 + 40);
  v13 = objc_msgSend_UTF8String(v10, v11, v12);

  return sqlite3_bind_text(a2, v9, v13, -1, 0);
}

uint64_t sub_1B9DC3D2C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sqlite3_bind_text(a2, v4, v8, -1, 0);
  v9 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v10 = *(a1 + 40);
  v13 = objc_msgSend_UTF8String(v10, v11, v12);

  return sqlite3_bind_text(a2, v9, v13, -1, 0);
}

uint64_t sub_1B9DC3F38(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);

  return sqlite3_bind_text(a2, v4, v8, -1, 0);
}

void sub_1B9DC3FA8(uint64_t a1, char *a2, void *a3)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"profile_uuid");
  v8 = objc_msgSend_intValue(v5, v6, v7);
  v10 = sub_1B9DD19D0(a2, v8);

  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_isEqualToString_(*(a1 + 32), v9, v10);
}

void sub_1B9DC410C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9DC4124(uint64_t a1, char *a2, void *a3)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"profile_cms_blob");
  v8 = objc_msgSend_intValue(v5, v6, v7);
  v10 = sub_1B9DD1A10(a2, v8);

  *(*(*(a1 + 32) + 8) + 24) = MISProfileCreateWithData(v9, v10);
}

uint64_t sub_1B9DC43B8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);

  return sqlite3_bind_text(a2, v4, v8, -1, 0);
}

uint64_t sub_1B9DC4448(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = *(a1 + 32);
  v8 = objc_msgSend_UTF8String(v5, v6, v7);

  return sqlite3_bind_text(a2, v4, v8, -1, 0);
}

void sub_1B9DC4BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B9DC4C18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B9DC4C30(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = sqlite3_column_int64(a2, 0);
  v6 = objc_msgSend_numberWithLongLong_(v3, v5, v4);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t sub_1B9DC4D34(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = *(a1 + 32);
  v6 = objc_msgSend_UTF8String(v3, v4, v5);

  return sqlite3_bind_text(a2, 1, v6, -1, 0);
}

uint64_t sub_1B9DC4E4C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  sqlite3_bind_text(a2, 1, v7, -1, 0);
  v8 = *(a1 + 40);
  v11 = objc_msgSend_UTF8String(v8, v9, v10);

  return sqlite3_bind_text(a2, 2, v11, -1, 0);
}

void sub_1B9DC5028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B9DC5040(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = *(a1 + 32);
  v6 = objc_msgSend_UTF8String(v3, v4, v5);

  return sqlite3_bind_text(a2, 1, v6, -1, 0);
}

void sub_1B9DC5090(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sub_1B9DD19D0(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_1B9DC588C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 1;
}

void *MISProfileGetValue(void *a1, uint64_t a2)
{
  v3 = a1;
  if (MISProfileValidateSignature_0(v3) || (objc_msgSend_payload(v3, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v6 = 0;
  }

  else
  {
    v10 = objc_msgSend_payload(v3, v8, v9);
    v6 = objc_msgSend_objectForKeyedSubscript_(v10, v11, a2);
  }

  return v6;
}

uint64_t MISProfileValidateSignature_0(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_payload(v1, v2, v3);

  if (!v4)
  {
    fixed = 3892346883;
    v7 = v1[1];
    if (!v7)
    {
      v5 = 3892346884;
      goto LABEL_40;
    }

    if (qword_1EBBE4078 != -1)
    {
      dispatch_once(&qword_1EBBE4078, &unk_1F37DA4C8);
    }

    v8 = qword_1EBBE4070;
    v10 = sub_1B9D98EE4(v7);
    if (!v10 || !v8)
    {
      v18 = sub_1B9D98960();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B9D96000, v18, OS_LOG_TYPE_ERROR, "Failure creating profile cache key.", buf, 2u);
      }

      v16 = 0;
      v5 = 3892346890;
      goto LABEL_39;
    }

    v11 = objc_msgSend_objectForKey_(v8, v9, v10);
    v14 = v11;
    if (v11)
    {
      v15 = objc_msgSend_intValue(v11, v12, v13);
      v16 = sub_1B9DC9910(v7);
      v17 = 0;
    }

    else
    {
      v19 = SecPolicyCreateiPhoneProvisioningProfileSigning();
      v20 = sub_1B9DC99F0(v7, v19);
      CFRelease(v19);
      if (v20)
      {
        ApplePinned = SecPolicyCreateApplePinned();
        v22 = sub_1B9DC99F0(v7, ApplePinned);
        CFRelease(ApplePinned);
        if (v22)
        {
          OSXProvisioningProfileSigning = SecPolicyCreateOSXProvisioningProfileSigning();
          v5 = sub_1B9DC99F0(v7, OSXProvisioningProfileSigning);
          CFRelease(OSXProvisioningProfileSigning);
          if (v5)
          {
            v15 = 0;
            v16 = 0;
            goto LABEL_23;
          }

          v15 = 2;
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_1B9DC9910(v7);
      v17 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v24, v15);
      objc_msgSend_setObject_forKey_(v8, v25, v17, v10);
    }

    v5 = 0;
LABEL_23:

    if (v5)
    {
LABEL_39:

      goto LABEL_40;
    }

    objc_msgSend_setFlavor_(v1, v26, v15);
    if (!v16)
    {
      v5 = 3892346906;
      goto LABEL_40;
    }

    error = 0;
    if (objc_msgSend_flavor(v1, v27, v28) && objc_msgSend_flavor(v1, v29, v30) != 2)
    {
      v32 = CFPropertyListCreateWithDERData();
      if (!v32)
      {
        goto LABEL_38;
      }

      v34 = v32;
      v31 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v33, v32);
      CFRelease(v34);
    }

    else
    {
      v31 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], v16, 2uLL, 0, &error);
    }

    if (error)
    {
      if (v31)
      {
        CFRelease(v31);
      }

      v35 = sub_1B9D98960();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = error;
        _os_log_error_impl(&dword_1B9D96000, v35, OS_LOG_TYPE_ERROR, "Error parsing profile payload: %@", buf, 0xCu);
      }

      v36 = error;
    }

    else
    {
      if (!v31)
      {
        goto LABEL_38;
      }

      v38 = CFGetTypeID(v31);
      if (v38 == CFDictionaryGetTypeID())
      {
        objc_msgSend_setPayload_(v1, v39, v31);

        fixed = objc_msgSend_fixUp(v1, v40, v41);
        goto LABEL_38;
      }

      v36 = v31;
    }

    CFRelease(v36);
LABEL_38:
    v5 = fixed;
    goto LABEL_39;
  }

  v5 = 0;
LABEL_40:

  return v5;
}

MISProfile *MISProfileCreate()
{
  v1 = objc_alloc_init(MISProfile);
  if (v1)
  {
    v2 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v0, 0);
    objc_msgSend_setPayload_(v1, v3, v2);
  }

  return v1;
}

MISProfile *MISProfileCreateWithData(uint64_t a1, const void *a2)
{
  v3 = objc_alloc_init(MISProfile);
  if (v3)
  {
    v4 = CFRetain(a2);
    signature = v3->signature;
    v3->signature = v4;

    MISProfileValidateSignature_0(v3);
  }

  return v3;
}

MISProfile *MISProfileCreateWithFile(uint64_t a1, const char *a2)
{
  result = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], a2, a2, 1, 0);
  if (result)
  {
    v3 = result;
    v4 = MISProfileCreateWithData(result, result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

MISProfile *MISProfileCreateMutableCopy(uint64_t a1, void *a2)
{
  v2 = a2;
  if (MISProfileValidateSignature_0(v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_alloc_init(MISProfile);
    if (v3)
    {
      v7 = objc_msgSend_payload(v2, v5, v6);

      if (v7)
      {
        v10 = MEMORY[0x1E695DF90];
        v11 = objc_msgSend_payload(v2, v8, v9);
        v13 = objc_msgSend_dictionaryWithDictionary_(v10, v12, v11);
        objc_msgSend_setPayload_(v3, v14, v13);
      }
    }
  }

  return v3;
}

uint64_t MISProfileSignWithKeyAndCertificates(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = 3892346890;
  v2 = a1;
  v5 = v2;
  if (v2[1])
  {
    v1 = 3892346883;
  }

  else
  {
    error = 0;
    v6 = *MEMORY[0x1E695E480];
    v7 = objc_msgSend_payload(v2, v3, v4);
    v8 = CFPropertyListCreateData(v6, v7, kCFPropertyListXMLFormat_v1_0, 0, &error);

    if (error)
    {
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = sub_1B9D98960();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = error;
        _os_log_error_impl(&dword_1B9D96000, v9, OS_LOG_TYPE_ERROR, "Failure creating profile payload data: %@", buf, 0xCu);
      }

      CFRelease(error);
    }

    else if (v8)
    {
      v10 = v5[1];
      v5[1] = 0;

      CFRelease(v8);
      v1 = 49197;
    }
  }

  return v1;
}

uint64_t MISProfileSignWithRSACallBack(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = 3892346890;
  v2 = a1;
  v5 = v2;
  if (v2[1])
  {
    v1 = 3892346883;
  }

  else
  {
    error = 0;
    v6 = *MEMORY[0x1E695E480];
    v7 = objc_msgSend_payload(v2, v3, v4);
    v8 = CFPropertyListCreateData(v6, v7, kCFPropertyListXMLFormat_v1_0, 0, &error);

    if (error)
    {
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = sub_1B9D98960();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = error;
        _os_log_error_impl(&dword_1B9D96000, v9, OS_LOG_TYPE_ERROR, "Failure creating profile payload data: %@", buf, 0xCu);
      }

      CFRelease(error);
    }

    else if (v8)
    {
      v10 = v5[1];
      v5[1] = 0;

      CFRelease(v8);
      v1 = 49197;
    }
  }

  return v1;
}

uint64_t MISProfileCopySignerSubjectSummary(uint64_t a1, CFStringRef *a2)
{
  if (!a2)
  {
    return 49174;
  }

  v3 = 3892346883;
  BasicX509 = SecPolicyCreateBasicX509();
  v5 = SecCMSVerify();
  if (v5 == -26275)
  {
LABEL_10:
    CFRelease(BasicX509);
    return v3;
  }

  if (!v5)
  {
    v6 = SecTrustCopyCertificateChain(0);
    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    if (ValueAtIndex)
    {
      v3 = 0;
      *a2 = SecCertificateCopySubjectSummary(ValueAtIndex);
    }

    else
    {
      v3 = 3892346884;
    }

    CFRelease(v6);
    CFRelease(0);
    goto LABEL_10;
  }

  CFRelease(BasicX509);
  return 3892346906;
}

void *MISProfileCreateDataRepresentation(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t MISProfileWriteToFile(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 3892346884;
  }

  objc_msgSend_writeToFile_atomically_(v2, a2, a2, 0);
  return 0;
}

uint64_t MISProfileSetValue(void *a1, uint64_t a2, const void *a3)
{
  v5 = 3892346882;
  v6 = a1;
  v9 = v6;
  if (!v6[1])
  {
    v10 = objc_msgSend_payload(v6, v7, v8);

    if (v10)
    {
      v11 = CFRetain(a3);
      v14 = objc_msgSend_payload(v9, v12, v13);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v11, a2);

      v5 = 0;
    }

    else
    {
      v5 = 3892346883;
    }
  }

  return v5;
}

uint64_t MISProfileRemoveValue(void *a1, const char *a2, uint64_t a3)
{
  if (a1[1])
  {
    return 3892346882;
  }

  v5 = objc_msgSend_payload(a1, a2, a3);
  objc_msgSend_removeObjectForKey_(v5, v6, a2);

  return 0;
}

uint64_t MISProfileSetPayload(void *a1, uint64_t a2)
{
  if (a1[1])
  {
    return 3892346882;
  }

  v4 = MEMORY[0x1E695DF90];
  v5 = a1;
  v7 = objc_msgSend_dictionaryWithDictionary_(v4, v6, a2);
  objc_msgSend_setPayload_(v5, v8, v7);

  return 0;
}

CFDictionaryRef MISProfileCopyPayload(void *a1)
{
  v1 = a1;
  if (MISProfileValidateSignature_0(v1))
  {
    Copy = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = objc_msgSend_payload(v1, v2, v3);
    Copy = CFDictionaryCreateCopy(v5, v6);
  }

  return Copy;
}

uint64_t MISProfileGetTypeID()
{
  v0 = sub_1B9D98960();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_fault_impl(&dword_1B9D96000, v0, OS_LOG_TYPE_FAULT, "MISProfileGetTypeID is not supported, the results this function returns is wrong and should not be relied on", v2, 2u);
  }

  return 0;
}

uint64_t MISProfileValidateSignatureWithAnchors()
{
  v0 = sub_1B9D98960();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_fault_impl(&dword_1B9D96000, v0, OS_LOG_TYPE_FAULT, "This function is not supported, and does not behave as you expect. Use MISProfileValidateSignature.", v2, 2u);
  }

  return 3892346884;
}

uint64_t MISProfileValidateSignatureWithAnchorsAndPolicy()
{
  v0 = sub_1B9D98960();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_fault_impl(&dword_1B9D96000, v0, OS_LOG_TYPE_FAULT, "This function is not supported, and does not behave as you expect. Use MISProfileValidateSignature.", v2, 2u);
  }

  return 3892346884;
}

uint64_t MISProfileIsDEREncoded(void *a1)
{
  v1 = a1;
  if (MISProfileValidateSignature_0(v1))
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_msgSend_payload(v1, v2, v3);

    if (v4)
    {
      v4 = objc_msgSend_flavor(v1, v5, v6) == 1;
    }
  }

  return v4;
}

uint64_t sub_1B9DC7248(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = bswap64(*a2);
  v4 = bswap64(*a3);
  if (v3 == v4)
  {
    v3 = bswap64(a2[1]);
    v4 = bswap64(a3[1]);
    if (v3 == v4)
    {
      v3 = bswap64(a2[2]);
      v4 = bswap64(a3[2]);
      if (v3 == v4)
      {
        v3 = bswap64(a2[3]);
        v4 = bswap64(a3[3]);
        if (v3 == v4)
        {
          return 0;
        }
      }
    }
  }

  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

MISProfile *MISProfileCreateForProvisioning(const __CFAllocator *a1)
{
  v2 = MISProfileCreate();
  if (v2)
  {
    sub_1B9DC72FC(a1, v2);
  }

  return v2;
}

void sub_1B9DC72FC(const __CFAllocator *a1, void *a2)
{
  v4 = CFUUIDCreate(a1);
  v5 = CFUUIDCreateString(a1, v4);
  MISProfileSetValue(a2, @"UUID", v5);
  CFRelease(v5);
  CFRelease(v4);
  valuePtr = 1;
  v6 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  MISProfileSetValue(a2, @"Version", v6);
  CFRelease(v6);
  Current = CFAbsoluteTimeGetCurrent();
  v8 = CFDateCreate(a1, Current);
  MISProfileSetValue(a2, @"CreationDate", v8);
  CFRelease(v8);
}

MISProfile *MISProvisioningProfileCreateMutableCopy(const __CFAllocator *a1, void *a2)
{
  MutableCopy = MISProfileCreateMutableCopy(a1, a2);
  if (MutableCopy)
  {
    sub_1B9DC72FC(a1, MutableCopy);
    Value = MISProfileGetValue(MutableCopy, @"TimeToLive");
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
        if (sub_1B9DC7478(MutableCopy, valuePtr))
        {
          CFRelease(MutableCopy);
          return 0;
        }
      }
    }
  }

  return MutableCopy;
}

uint64_t sub_1B9DC7478(void *a1, uint64_t a2)
{
  v4 = 3892346883;
  Value = MISProfileGetValue(a1, @"CreationDate");
  if (Value)
  {
    v6 = Value;
    v7 = CFCalendarCopyCurrent();
    at = MEMORY[0x1BFAE6F60](v6);
    CFCalendarAddComponents(v7, &at, 0, "d", a2);
    CFRelease(v7);
    v8 = CFGetAllocator(a1);
    v9 = CFDateCreate(v8, at);
    if (v9)
    {
      v10 = v9;
      v4 = MISProfileSetValue(a1, @"ExpirationDate", v9);
      CFRelease(v10);
    }

    else
    {
      return 3892346890;
    }
  }

  return v4;
}

uint64_t MISProvisioningProfileAddProvisionedDevice(void *a1, const void *a2)
{
  v2 = 3892346882;
  if (!a1[1])
  {
    Value = MISProfileGetValue(a1, @"ProvisionedDevices");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFArrayGetTypeID())
      {
        CFArrayAppendValue(v7, a2);
        return 0;
      }

      else
      {
        return 3892346883;
      }
    }

    else
    {
      v9 = CFGetAllocator(a1);
      Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v11 = Mutable;
        CFArrayAppendValue(Mutable, a2);
        v2 = MISProfileSetValue(a1, @"ProvisionedDevices", v11);
        CFRelease(v11);
      }

      else
      {
        return 3892346890;
      }
    }
  }

  return v2;
}

uint64_t MISProvisioningProfileAddEntitlement(void *a1, const void *a2, const void *a3)
{
  v3 = 3892346882;
  if (!a1[1])
  {
    Value = MISProfileGetValue(a1, @"Entitlements");
    if (Value)
    {
      v9 = Value;
      v10 = CFGetTypeID(Value);
      if (v10 == CFDictionaryGetTypeID())
      {
        CFDictionarySetValue(v9, a2, a3);
        return 0;
      }

      else
      {
        return 3892346883;
      }
    }

    else
    {
      v11 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v13 = Mutable;
        CFDictionarySetValue(Mutable, a2, a3);
        v3 = MISProfileSetValue(a1, @"Entitlements", v13);
        CFRelease(v13);
      }

      else
      {
        return 3892346890;
      }
    }
  }

  return v3;
}

uint64_t MISProvisioningProfileIsAppleInternalProfile(void *a1)
{
  v2 = MISProvisioningProfileGetTeamIdentifier(a1);
  if (objc_msgSend_caseInsensitiveCompare_(v2, v3, @"243LU875E5"))
  {
    v4 = sub_1B9DC77DC(a1, @"AppleInternalProfile");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

const void *MISProvisioningProfileGetTeamIdentifier(void *a1)
{
  Value = MISProfileGetValue(a1, @"TeamIdentifier");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  if (CFArrayGetCount(Value) != 1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v2, 0);
}

uint64_t sub_1B9DC77DC(void *a1, uint64_t a2)
{
  Value = MISProfileGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return CFBooleanGetValue(v3);
}

uint64_t MISProvisioningProfileIncludesDevice(void *a1, const __CFString *a2)
{
  if (sub_1B9DC77DC(a1, @"ProvisionsAllDevices"))
  {
    return 1;
  }

  Value = MISProfileGetValue(a1, @"ProvisionedDevices");
  if (!Value)
  {
    return 0;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
    v4 = 1;
    if (CFStringCompare(ValueAtIndex, a2, 1uLL) == kCFCompareEqualTo)
    {
      break;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t MISProvisioningProfileIncludesPlatform(void *a1, const __CFString *a2, uint64_t a3)
{
  Value = MISProfileGetValue(a1, @"Platform");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v9 = Count;
        v10 = 0;
        v11 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
          if (ValueAtIndex && (v13 = ValueAtIndex, v14 = CFGetTypeID(ValueAtIndex), v14 == CFStringGetTypeID()))
          {
            if (CFStringCompare(v13, a2, 1uLL) == kCFCompareEqualTo)
            {
              return v11;
            }
          }

          else
          {
            v15 = sub_1B9D98960();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v18 = 0;
              _os_log_impl(&dword_1B9D96000, v15, OS_LOG_TYPE_DEFAULT, "Encountered a null or non-string platform identifier.", v18, 2u);
            }
          }

          v11 = ++v10 < v9;
        }

        while (v9 != v10);
      }

      return v11;
    }

    else
    {
      v16 = sub_1B9D98960();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D96000, v16, OS_LOG_TYPE_DEFAULT, "Encountered a non-array value for 'Platforms'.", buf, 2u);
      }

      return 0;
    }
  }

  return a3;
}

uint64_t MISProvisioningProfileGrantsEntitlement(void *a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  Value = MISProfileGetValue(a1, @"Entitlements");
  if (!Value)
  {
    return MISProvisioningProfileIsAppleInternalProfile(a1);
  }

  v7 = CFGetTypeID(Value);
  if (v7 != CFDictionaryGetTypeID())
  {
    return MISProvisioningProfileIsAppleInternalProfile(a1);
  }

  v8 = a1;
  v9 = a2;
  v10 = a3;
  v25 = v9;
  v26[0] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v26, &v25, 1);
  v24 = 0;
  v13 = CESerializeCFDictionary();
  v14 = MEMORY[0x1E69E50B8];
  if (v13 != *MEMORY[0x1E69E50B8])
  {
    v15 = sub_1B9D98960();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v15, OS_LOG_TYPE_ERROR, "Invalid entitlements in a provisioning profile", buf, 2u);
    }

LABEL_10:

    return MISProvisioningProfileIsAppleInternalProfile(a1);
  }

  v15 = v24;
  *buf = 0;
  if (sub_1B9DC8A48(v24, buf) != *v14)
  {
    v18 = sub_1B9D98960();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_1B9D96000, v18, OS_LOG_TYPE_ERROR, "Invalid entitlements in a provisioning profile", v22, 2u);
    }

    goto LABEL_10;
  }

  objc_msgSend_derEntitlements(v8, v16, v17);
  IsSubset = CEContextIsSubset();
  v21 = *v14;
  sub_1B9DC8B44(buf);

  if (IsSubset != v21)
  {
    return MISProvisioningProfileIsAppleInternalProfile(a1);
  }

  return 1;
}

CFArrayRef MISProvisioningProfileCopyApplicationIdentifierPrefixes(void *a1)
{
  result = MISProfileGetValue(a1, @"ApplicationIdentifierPrefix");
  if (result)
  {
    v2 = result;
    v3 = *MEMORY[0x1E695E480];

    return CFArrayCreateCopy(v3, v2);
  }

  return result;
}

uint64_t MISProvisioningProfileSetTimeToLive(void *a1, unsigned int a2)
{
  valuePtr = a2;
  v3 = CFGetAllocator(a1);
  v4 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
  v5 = MISProfileSetValue(a1, @"TimeToLive", v4);
  CFRelease(v4);
  if (!v5)
  {
    v5 = sub_1B9DC7478(a1, valuePtr);
    if (v5)
    {
      MISProfileRemoveValue(a1, @"TimeToLive", v6);
    }
  }

  return v5;
}

BOOL MISProvisioningProfileHasPPQExemption(void *a1)
{
  if (sub_1B9DC77DC(a1, @"LocalProvision"))
  {
    return 0;
  }

  if (sub_1B9DC77DC(a1, @"ProvisionsAllDevices"))
  {
    v3 = MISProfileGetValue(a1, @"AppAudience");
    v5 = v3;
    v2 = v3 && objc_msgSend_containsObject_(v3, v4, @"InternalBuild") && (v6 = sub_1B9DC7E94(a1)) != 0 && CFBooleanGetValue(v6) == 0;
  }

  else
  {
    v7 = sub_1B9DC7E94(a1);
    return !v7 || CFBooleanGetValue(v7) == 0;
  }

  return v2;
}

void *sub_1B9DC7E94(void *a1)
{
  Value = MISProfileGetValue(a1, @"PPQCheck");
  v2 = Value;
  if (Value)
  {
    v3 = CFGetTypeID(Value);
    if (v3 != CFBooleanGetTypeID())
    {
      v4 = sub_1B9D98960();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 0;
        _os_log_impl(&dword_1B9D96000, v4, OS_LOG_TYPE_DEFAULT, "Encountered a non-BOOLean value for 'PPQCheck'.", v6, 2u);
      }

      return 0;
    }
  }

  return v2;
}

uint64_t MISProvisioningProfileAddDeveloperCertificate(void *a1, const void *a2)
{
  v4 = 3892346883;
  Value = MISProfileGetValue(a1, @"DeveloperCertificates");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFArrayGetTypeID())
    {
      CFArrayAppendValue(v6, a2);
      return 0;
    }
  }

  else
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v10 = Mutable;
      CFArrayAppendValue(Mutable, a2);
      v11 = MISProfileSetValue(a1, @"DeveloperCertificates", v10);
      CFRelease(v10);
      return v11;
    }

    return 3892346890;
  }

  return v4;
}

uint64_t MISProvisioningProfileSetDeveloperCertificates(void *a1, const __CFArray *a2)
{
  v4 = CFGetAllocator(a1);
  MutableCopy = CFArrayCreateMutableCopy(v4, 0, a2);
  if (!MutableCopy)
  {
    return 3892346890;
  }

  v6 = MutableCopy;
  v7 = MISProfileSetValue(a1, @"DeveloperCertificates", MutableCopy);
  CFRelease(v6);
  return v7;
}

void *MISProvisioningProfileGetDeveloperCertificatesHashes(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_certs(a1, a2, a3);

  return v3;
}

void *MISXMLProvisioningProfileGetDeveloperCertificates(void *a1)
{
  if (MISProfileIsDEREncoded(a1))
  {
    return 0;
  }

  return MISProfileGetValue(a1, @"DeveloperCertificates");
}

uint64_t MISProvisioningProfileGetVersion(void *a1)
{
  v1 = MISProfileGetValue(a1, @"Version");
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_msgSend_intValue(v1, v2, v3);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

void *MISProvisioningProfileGetEntitlements(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_entitlements(a1, a2, a3);

  return v3;
}

uint64_t MISProvisioningProfileCheckValidity(void *a1, const __CFString *a2, const __CFDate *a3)
{
  v6 = MISProfileValidateSignature_0(a1);
  if (!v6)
  {
    v6 = 3892346898;
    if (MISProvisioningProfileGetVersion(a1) != 1)
    {
      return 3892346896;
    }

    if (!a2 || MISProvisioningProfileIncludesDevice(a1, a2))
    {
      v7 = sub_1B9DCC15C();
      if (sub_1B9DCC0C4(v7, a1, @"OSX"))
      {
        v8 = sub_1B9DCC15C();
        v9 = sub_1B9DCC15C();
        v10 = @"iOS";
        if (!v9)
        {
          v10 = 0;
        }

        v11 = v10;
        v12 = sub_1B9DCC0C4(v8, a1, v11);

        if (!v12)
        {
          v13 = sub_1B9D98960();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *v16 = 0;
            _os_log_error_impl(&dword_1B9D96000, v13, OS_LOG_TYPE_ERROR, "Encountered a provisioning profile that does not provision the current platform.", v16, 2u);
          }

          return v6;
        }
      }

      else
      {
      }

      if (a3 && (Value = MISProfileGetValue(a1, @"ExpirationDate")) != 0 && CFDateCompare(a3, Value, 0) != kCFCompareLessThan)
      {
        return 3892346897;
      }

      else
      {
        return 0;
      }
    }
  }

  return v6;
}

uint64_t MISProvisioningProfileIsForBetaDeployment(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_entitlements(a1, a2, a3);

  if (!v3)
  {
    return 0;
  }

  v4 = CFGetTypeID(v3);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E4D0];

  return MISEntitlementDictionaryAllowsEntitlementValue(v3, @"beta-reports-active", v5);
}

void sub_1B9DC841C(void *a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v4, @"\x1F");
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B9DC84E0;
  v7[3] = &unk_1E7ED8680;
  v8 = v3;
  v6 = v3;
  sub_1B9DC84F0(a1, v5, v7);
}

void sub_1B9DC84F0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B9DC85AC;
  v10[3] = &unk_1E7ED86D0;
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v9, v10);
}

void sub_1B9DC85AC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v22 = a2;
  *a4 = 0;
  v7 = *(a1 + 32);
  v8 = a3;
  objc_msgSend_appendString_(v7, v9, v22);
  objc_msgSend_appendString_(*(a1 + 32), v10, @"\x1F");
  sub_1B9DC8670(*(a1 + 32), v8, *(a1 + 40));

  v11 = *(a1 + 32);
  v14 = objc_msgSend_length(v11, v12, v13);
  v17 = ~objc_msgSend_length(v22, v15, v16);
  v20 = objc_msgSend_length(v22, v18, v19);
  objc_msgSend_deleteCharactersInRange_(v11, v21, v14 + v17, v20 + 1);
}

void sub_1B9DC8670(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_1B9DC84F0(v6, v5, v7);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"%@%@%@", @"string", v5, v6);
        (*(v7 + 2))(v7, v12);

        if (!objc_msgSend_isEqual_(v6, v13, @"*"))
        {
          goto LABEL_16;
        }

        v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@%@%@", @"BOOL", v5, v6);
        (*(v7 + 2))(v7, v15);

        v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"%@%@%@", @"number", v5, v6);
        (*(v7 + 2))(v7, v17);
      }

      else
      {
        v18 = CFGetTypeID(v6);
        if (v18 == CFBooleanGetTypeID())
        {
          if (CFEqual(v6, *MEMORY[0x1E695E4D0]))
          {
            objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%@%@%@", @"BOOL", v5, @"true");
          }

          else
          {
            objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%@%@%@", @"BOOL", v5, @"false");
          }
          v17 = ;
          (*(v7 + 2))(v7, v17);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            abort();
          }

          v22 = MEMORY[0x1E696AEC0];
          v23 = objc_msgSend_longLongValue(v6, v20, v21);
          v17 = objc_msgSend_stringWithFormat_(v22, v24, @"%@%@%lld", @"number", v5, v23);
          (*(v7 + 2))(v7, v17);
        }
      }

      goto LABEL_16;
    }

    v8 = v5;
    v9 = v7;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1B9DC8974;
    v25[3] = &unk_1E7ED86F8;
    v26 = v8;
    v27 = v9;
    objc_msgSend_enumerateObjectsUsingBlock_(v6, v10, v25);
  }

LABEL_16:
}

void sub_1B9DC8990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_1B9D98960();
  os_log_with_args();

  abort();
}

void sub_1B9DC89E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_1B9D98960();
  os_log_with_args();
}

uint64_t sub_1B9DC8A48(const __CFData *a1, void *a2)
{
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  result = CEValidate();
  v5 = MEMORY[0x1E69E50B8];
  if (result == *MEMORY[0x1E69E50B8])
  {
    result = CEAcquireUnmanagedContext();
    if (result == *v5)
    {
      v6 = malloc_type_malloc(0x40uLL, 0x1070040ACAE298AuLL);
      *a2 = v6;
      if (v6)
      {
        v6[2] = 0u;
        v6[3] = 0u;
        *v6 = 0u;
        v6[1] = 0u;
        return *v5;
      }

      else
      {
        return *MEMORY[0x1E69E50B0];
      }
    }
  }

  return result;
}

void sub_1B9DC8B44(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (v2[56] == 1)
      {
        v3 = sub_1B9D98960();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v7 = 0;
          v4 = "Trying to release a CE managed context";
          v5 = &v7;
LABEL_12:
          _os_log_error_impl(&dword_1B9D96000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
          goto LABEL_8;
        }

        goto LABEL_8;
      }

      if (CEContextIsAccelerated())
      {
        v3 = sub_1B9D98960();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v6 = 0;
          v4 = "CE context should not be accelerated";
          v5 = &v6;
          goto LABEL_12;
        }

LABEL_8:

        return;
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t MISArrayAllowsEntitlementValue(const __CFArray *a1, const __CFString *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = *MEMORY[0x1E695E480];
    v7 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7 - 1);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 != CFStringGetTypeID())
      {
        break;
      }

      Length = CFStringGetLength(ValueAtIndex);
      v11 = Length - 1;
      if (Length < 1)
      {
        HasPrefix = 0;
      }

      else if (CFStringGetCharacterAtIndex(ValueAtIndex, v11) == 42)
      {
        v15.location = 0;
        v15.length = v11;
        v12 = CFStringCreateWithSubstring(v6, ValueAtIndex, v15);
        HasPrefix = CFStringHasPrefix(a2, v12);
        CFRelease(v12);
      }

      else
      {
        HasPrefix = CFStringCompare(ValueAtIndex, a2, 0) == kCFCompareEqualTo;
      }

      if (v7 < v5)
      {
        ++v7;
        if (!HasPrefix)
        {
          continue;
        }
      }

      return HasPrefix;
    }
  }

  return 0;
}

uint64_t MISEntitlementDictionaryAllowsEntitlementValue(const __CFDictionary *a1, const void *a2, const __CFString *a3)
{
  if (!a3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  values = Value;
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  if (CFEqual(Value, @"*") != 1)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      return CFEqual(v5, a3);
    }

    v9 = CFGetTypeID(v5);
    if (v9 == CFStringGetTypeID())
    {
      v10 = CFGetTypeID(a3);
      if (v10 == CFStringGetTypeID())
      {
        v11 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
        v6 = MISArrayAllowsEntitlementValue(v11, a3);
        CFRelease(v11);
        return v6;
      }
    }

    else
    {
      v12 = CFGetTypeID(v5);
      if (v12 == CFArrayGetTypeID())
      {
        v13 = CFGetTypeID(a3);
        if (v13 == CFStringGetTypeID())
        {
          return MISArrayAllowsEntitlementValue(v5, a3);
        }

        v14 = CFGetTypeID(a3);
        if (v14 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(a3);
          if (Count < 1)
          {
            return 1;
          }

          v16 = Count;
          v17 = 1;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3, v17 - 1);
            v19 = CFGetTypeID(ValueAtIndex);
            if (v19 != CFStringGetTypeID())
            {
              break;
            }

            v20 = MISArrayAllowsEntitlementValue(v5, ValueAtIndex);
            v6 = v20;
            if (v17 < v16)
            {
              ++v17;
              if (v20 == 1)
              {
                continue;
              }
            }

            return v6;
          }
        }
      }
    }

    return 0;
  }

  return 1;
}

CFDataRef sub_1B9DC9910(const __CFData *a1)
{
  v8 = 0;
  length = 0;
  BytePtr = CFDataGetBytePtr(a1);
  v3 = CFDataGetLength(a1);
  if (!CTParseAmfiCMS(BytePtr, v3, 8, 0, 0, &v8, &length, 0, 0))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v8, length, *MEMORY[0x1E695E498]);
  }

  v4 = sub_1B9D98960();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B9D96000, v4, OS_LOG_TYPE_ERROR, "Could not decode CMS message.", buf, 2u);
  }

  return 0;
}

uint64_t sub_1B9DC99F0(uint64_t a1, uint64_t a2)
{
  v2 = 3892346883;
  v3 = SecCMSVerify();
  if (v3 != -26275)
  {
    if (v3)
    {
      return 3892346889;
    }

    else
    {
      v4 = SecTrustEvaluateWithError(0, 0);
      CFRelease(0);
      if (v4)
      {
        return 0;
      }

      else
      {
        return 3892346899;
      }
    }
  }

  return v2;
}

uint64_t sub_1B9DC9A74()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1EBBE4070;
  qword_1EBBE4070 = v0;

  v2 = qword_1EBBE4070;

  return MEMORY[0x1EEE66B58](v2, sel_setCountLimit_, 100);
}

uint64_t MISPing(char **a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MISAgentClient);
  v16 = 0;
  v4 = objc_msgSend_ping_(v2, v3, &v16);
  v5 = v16;
  if (v5)
  {
    v6 = sub_1B9D98960();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_msgSend_description(v5, v7, v8);
      *buf = 138543362;
      v18 = v15;
      _os_log_error_impl(&dword_1B9D96000, v6, OS_LOG_TYPE_ERROR, "MISPing error: %{public}@", buf, 0xCu);
    }

    v9 = 3892346881;
  }

  else if (a1)
  {
    v10 = v4;
    v13 = objc_msgSend_UTF8String(v10, v11, v12);
    v9 = 0;
    *a1 = strdup(v13);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t MISInstallProvisioningProfile(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  uint64 = 3892346881;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 3892346884;
  }

  v3 = v2;
  v4 = sub_1B9D99240();
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "MessageType", "Install");
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  xpc_dictionary_set_data(v5, "Profile", BytePtr, Length);
  v8 = xpc_connection_send_message_with_reply_sync(v4, v5);
  if (MEMORY[0x1BFAE82F0]() == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(v8, "Status");
  }

  else if (MEMORY[0x1BFAE82F0](v8) == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v8, *MEMORY[0x1E69E9E28]);
    v10 = sub_1B9D98960();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446210;
      v13 = string;
      _os_log_impl(&dword_1B9D96000, v10, OS_LOG_TYPE_DEFAULT, "error installing profile: %{public}s\n", &v12, 0xCu);
    }

    uint64 = 3892346893;
  }

  xpc_connection_cancel(v4);
  CFRelease(v3);

  return uint64;
}

uint64_t MISRemoveProvisioningProfile(const __CFString *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  uint64 = 3892346881;
  v3 = objc_autoreleasePoolPush();
  if (CFStringGetCString(a1, buffer, 37, 0x600u))
  {
    v4 = sub_1B9D99240();
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "MessageType", "Remove");
    xpc_dictionary_set_string(v5, "ProfileID", buffer);
    v6 = xpc_connection_send_message_with_reply_sync(v4, v5);
    if (MEMORY[0x1BFAE82F0]() == MEMORY[0x1E69E9E80])
    {
      uint64 = xpc_dictionary_get_uint64(v6, "Status");
    }

    else if (MEMORY[0x1BFAE82F0](v6) == MEMORY[0x1E69E9E98])
    {
      string = xpc_dictionary_get_string(v6, *MEMORY[0x1E69E9E28]);
      v8 = sub_1B9D98960();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136446210;
        v11 = string;
        _os_log_impl(&dword_1B9D96000, v8, OS_LOG_TYPE_DEFAULT, "error removing profile: %{public}s\n", &v10, 0xCu);
      }

      uint64 = 3892346893;
    }

    xpc_connection_cancel(v4);
  }

  objc_autoreleasePoolPop(v3);
  return uint64;
}

uint64_t MISCopyInstalledProvisioningProfiles(CFMutableArrayRef *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v3 = Mutable;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B9DCA0A4;
    v7[3] = &unk_1E7ED8718;
    v7[4] = Mutable;
    v4 = MISEnumerateInstalledProvisioningProfiles(MISProfileEnumerationFlagLegacy, v7);
    if (v4)
    {
      CFRelease(v3);
    }

    else
    {
      *a1 = v3;
    }
  }

  else
  {
    v5 = sub_1B9D98960();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_ERROR, "unable to allocate profiles array", buf, 2u);
    }

    return 3892346890;
  }

  return v4;
}

uint64_t sub_1B9DCA0C4(void *a1, int a2, xpc_object_t xstring)
{
  v4 = *MEMORY[0x1E695E480];
  string_ptr = xpc_string_get_string_ptr(xstring);
  v6 = CFStringCreateWithCString(v4, string_ptr, 0x600u);
  v7 = sub_1B9DCA198(a1[4], v6, a1[7] == MISProfileEnumerationFlagLegacy, (*(a1[6] + 8) + 24));
  if (!v7)
  {
    v9 = 0;
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v8 = v7;
  if (*(*(a1[6] + 8) + 24))
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(a1[5] + 16))();
  }

  CFRelease(v8);
  if (v6)
  {
LABEL_8:
    CFRelease(v6);
  }

  return v9;
}

MISProfile *sub_1B9DCA198(void *a1, const __CFString *a2, BOOL a3, int *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = -402620415;
  v8 = a1;
  *a4 = -402620415;
  if (!CFStringGetCString(a2, buffer, 37, 0x600u))
  {
    v13 = 0;
    v10 = 0;
    v9 = 0;
LABEL_18:
    v15 = 0;
    *a4 = v7;
    goto LABEL_19;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "MessageType", "CopySingle");
  xpc_dictionary_set_string(v9, "ProfileID", buffer);
  xpc_dictionary_set_BOOL(v9, "ForceXML", a3);
  v10 = xpc_connection_send_message_with_reply_sync(v8, v9);
  if (MEMORY[0x1BFAE82F0]() != MEMORY[0x1E69E9E80])
  {
    if (MEMORY[0x1BFAE82F0](v10) == MEMORY[0x1E69E9E98])
    {
      string = xpc_dictionary_get_string(v10, *MEMORY[0x1E69E9E28]);
      v12 = sub_1B9D98960();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136446466;
        v24 = buffer;
        v25 = 2082;
        v26 = string;
        _os_log_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_DEFAULT, "error getting profile '%{public}s': %{public}s", &v23, 0x16u);
      }

      v13 = 0;
      goto LABEL_15;
    }

LABEL_10:
    v16 = xpc_dictionary_get_value(v10, "Payload");
    if (!v16)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v13 = v16;
    if (MEMORY[0x1BFAE82F0]() == MEMORY[0x1E69E9E70] && (v18 = *MEMORY[0x1E695E480], bytes_ptr = xpc_data_get_bytes_ptr(v13), length = xpc_data_get_length(v13), (v21 = CFDataCreate(v18, bytes_ptr, length)) != 0))
    {
      v22 = v21;
      v15 = MISProfileCreateWithData(v21, v21);
      CFRelease(v22);

      if (v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v12 = sub_1B9D98960();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = 136446210;
      v24 = buffer;
      _os_log_error_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_ERROR, "error getting profile '%{public}s' from fd", &v23, 0xCu);
    }

LABEL_15:

LABEL_17:
    v7 = -402620403;
    goto LABEL_18;
  }

  uint64 = xpc_dictionary_get_uint64(v10, "Status");
  *a4 = uint64;
  if (!uint64)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v15 = 0;
LABEL_19:

  return v15;
}

uint64_t MISCopyProvisioningProfile(const __CFString *a1, MISProfile **a2)
{
  v7 = -402620415;
  v4 = sub_1B9D99240();
  *a2 = sub_1B9DCA198(v4, a1, 0, &v7);
  xpc_connection_cancel(v4);
  v5 = v7;

  return v5;
}

uint64_t MISCopyProvisioningProfileWithConnection(const __CFString *a1, MISProfile **a2, void *a3)
{
  v4 = -402620415;
  *a2 = sub_1B9DCA198(a3, a1, 0, &v4);
  return v4;
}

uint64_t MISEnumerateMatchingProfiles(const __CFData *a1, const __CFArray *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = 3892346893;
  v6 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -402620415;
  v7 = sub_1B9D99240();
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = xpc_dictionary_create(0, 0, 0);
  empty = xpc_array_create_empty();
  xpc_dictionary_set_string(v8, "MessageType", "CopyMatching");
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    xpc_dictionary_set_data(v9, "Cert", BytePtr, Length);
  }

  if (a2)
  {
    for (i = 0; i < CFArrayGetCount(a2); ++i)
    {
      v14 = CFArrayGetValueAtIndex(a2, i);
      v15 = v14;
      v18 = objc_msgSend_UTF8String(v14, v16, v17);
      if (!v18)
      {
        v22 = sub_1B9D98960();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1B9D96000, v22, OS_LOG_TYPE_ERROR, "Invalid UTF8 string in predicate", buf, 2u);
        }

        *(v35 + 6) = -402620415;
        v19 = 0;
        v5 = 3892346881;
        goto LABEL_26;
      }

      xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, v18);
    }
  }

  xpc_dictionary_set_value(v9, "Predicates", empty);
  xpc_dictionary_set_value(v8, "Payload", v9);
  v19 = xpc_connection_send_message_with_reply_sync(v7, v8);
  if (MEMORY[0x1BFAE82F0]() == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(v19, "Status");
    *(v35 + 6) = uint64;
    if (uint64)
    {
      v5 = uint64;
      goto LABEL_26;
    }
  }

  else if (MEMORY[0x1BFAE82F0](v19) == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v19, *MEMORY[0x1E69E9E28]);
    v21 = sub_1B9D98960();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v39 = string;
      _os_log_error_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_ERROR, "error getting unauthoritative profile list: %{public}s\n", buf, 0xCu);
    }

    *(v35 + 6) = -402620403;
    goto LABEL_26;
  }

  v24 = xpc_dictionary_get_value(v19, "Payload");
  v25 = v24;
  if (v24)
  {
    if (MEMORY[0x1BFAE82F0](v24) == MEMORY[0x1E69E9E50])
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = sub_1B9DCA9C8;
      applier[3] = &unk_1E7ED8768;
      v33 = &v34;
      v28 = v7;
      v31 = v28;
      v32 = v6;
      xpc_array_apply(v25, applier);
      xpc_connection_cancel(v28);
      v5 = *(v35 + 6);

      goto LABEL_26;
    }

    v26 = MEMORY[0x1BFAE8200](v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_1B9D98960();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v39 = v26;
    _os_log_error_impl(&dword_1B9D96000, v27, OS_LOG_TYPE_ERROR, "Payload is not an array: %{public}s", buf, 0xCu);
  }

  free(v26);
  *(v35 + 6) = -402620403;

LABEL_26:
  _Block_object_dispose(&v34, 8);

  return v5;
}

void sub_1B9DCA994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B9DCA9C8(void *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1[4];
  v6 = a1[5];
  v7 = v4;
  v8 = v5;
  v9 = v6;
  cf = 0;
  v29 = 0;
  v30 = 0;
  v10 = v8;
  v31 = v10;
  if (MEMORY[0x1BFAE82F0](v7) != MEMORY[0x1E69E9E50])
  {
    v11 = MEMORY[0x1BFAE8200](v7);
    v12 = sub_1B9D98960();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      count = v11;
      _os_log_error_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_ERROR, "Profile row is not an array: '%{public}s'", buf, 0xCu);
    }

LABEL_4:

    free(v11);
LABEL_15:
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v23 = -402620403;
    v22 = 1;
    goto LABEL_16;
  }

  if (xpc_array_get_count(v7) != 8)
  {
    v24 = sub_1B9D98960();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      count = xpc_array_get_count(v7);
      v34 = 2048;
      v35 = 4;
      _os_log_error_impl(&dword_1B9D96000, v24, OS_LOG_TYPE_ERROR, "Wrong profile row count %ld != expected %ld", buf, 0x16u);
    }

    goto LABEL_15;
  }

  string = xpc_array_get_string(v7, 0);
  v14 = xpc_array_get_string(v7, 1uLL);
  v15 = xpc_array_get_string(v7, 2uLL);
  date = xpc_array_get_date(v7, 3uLL);
  BYTE1(v30) = xpc_array_get_BOOL(v7, 4uLL);
  BYTE3(v30) = xpc_array_get_BOOL(v7, 5uLL);
  BYTE2(v30) = xpc_array_get_BOOL(v7, 6uLL);
  BYTE4(v30) = xpc_array_get_BOOL(v7, 7uLL);
  if (!string)
  {
    v27 = xpc_array_get_value(v7, 0);
    v11 = MEMORY[0x1BFAE8200](v27);

    v12 = sub_1B9D98960();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      count = v11;
      _os_log_error_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_ERROR, "Profile row has no (or malformed) UUID: '%{public}s'", buf, 0xCu);
    }

    goto LABEL_4;
  }

  v17 = *MEMORY[0x1E695E480];
  cf = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
  if (v14)
  {
    v29 = CFStringCreateWithCString(v17, v14, 0x8000100u);
  }

  v18 = CFStringCreateWithCString(v17, v15, 0x8000100u);
  v19 = CFDateCreate(v17, date);
  Current = CFAbsoluteTimeGetCurrent();
  v21 = CFDateCreate(v17, Current);
  LOBYTE(v30) = CFDateCompare(v19, v21, 0) == kCFCompareLessThan;
  v22 = v9[2](v9, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v23 = 0;
LABEL_16:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  *(*(a1[6] + 8) + 24) = v23;
  v25 = *(*(a1[6] + 8) + 24) == 0;

  return v25 & v22;
}

uint64_t MISEnumerateMatchingProfilesUnauthoritative(const __CFData *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B9DCAE7C;
  v7[3] = &unk_1E7ED8790;
  v8 = v3;
  v4 = v3;
  v5 = MISEnumerateMatchingProfiles(a1, 0, v7);

  return v5;
}

uint64_t sub_1B9DCAE7C(uint64_t a1, const __CFString **a2)
{
  cf = 0;
  v3 = MISCopyProvisioningProfile(*a2, &cf);
  v6 = cf;
  if (cf)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    objc_msgSend_entitlements(cf, v4, v5);

    v8 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = 1;
    if (!cf)
    {
      return v8;
    }
  }

  CFRelease(v6);
  return v8;
}

void MISDataMigrate(const __CFNumber *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MISAgentClient);
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v9 = 0;
  objc_msgSend_migrateData_error_(v2, v3, valuePtr, &v9);
  v4 = v9;
  if (v4)
  {
    v5 = sub_1B9D98960();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_msgSend_description(v4, v6, v7);
      *buf = 138543362;
      v12 = v8;
      _os_log_error_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_ERROR, "MISDataMigrate error: %{public}@", buf, 0xCu);
    }
  }
}

BOOL MISBlacklistOverriddenByUser(const __CFData *a1, const char *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  *bytes = a2;
  v3 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", a2, @"UserOverriddenCdHashes.plist");
  v5 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v4, v3);
  v6 = CFReadStreamCreateWithFile(0, v5);
  v7 = v6;
  error = 0;
  if (!v6)
  {
    v12 = sub_1B9D98960();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_ERROR, "CreateMISAuthListWithStream: creating stream failed", buf, 2u);
    }

    goto LABEL_10;
  }

  if (!CFReadStreamOpen(v6))
  {
LABEL_15:
    v9 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_16;
  }

  v8 = CFPropertyListCreateWithStream(0, v7, 0, 0, 0, &error);
  if (!v8)
  {
    v12 = sub_1B9D98960();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = error;
      _os_log_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_DEFAULT, "CreateMISAuthListWithStream: authList parse failed (malformed?), error %{public}@", buf, 0xCu);
    }

LABEL_10:

    goto LABEL_11;
  }

  v9 = v8;
  v10 = CFGetTypeID(v8);
  if (v10 == CFArrayGetTypeID())
  {
    goto LABEL_12;
  }

  v11 = sub_1B9D98960();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B9D96000, v11, OS_LOG_TYPE_DEFAULT, "CreateMISAuthListWithStream: plist root has wrong type", buf, 2u);
  }

  CFRelease(v9);
LABEL_11:
  v9 = 0;
LABEL_12:
  if (error)
  {
    CFRelease(error);
  }

  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    Length = CFDataGetLength(a1);
    MutableCopy = CFDataCreateMutableCopy(0, Length + 4, a1);
    if (MutableCopy)
    {
      v15 = MutableCopy;
      CFDataAppendBytes(MutableCopy, bytes, 4);
      v16 = sub_1B9D989C4(v15);
      if (v16)
      {
        v17 = v16;
        Count = CFArrayGetCount(v9);
        v19 = Count - 1;
        if (Count < 1)
        {
          v23 = 0;
        }

        else
        {
          v20 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v20);
            v22 = CFStringCompare(ValueAtIndex, v17, 1uLL);
            v23 = v22 == kCFCompareEqualTo;
            if (v22 == kCFCompareEqualTo)
            {
              break;
            }
          }

          while (v19 != v20++);
        }

        CFRelease(v17);
      }

      else
      {
        v27 = sub_1B9D98960();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1B9D96000, v27, OS_LOG_TYPE_ERROR, "Could not create lookup key for denylist override check.", buf, 2u);
        }

        v23 = 0;
      }

      CFRelease(v15);
    }

    else
    {
      v26 = sub_1B9D98960();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B9D96000, v26, OS_LOG_TYPE_ERROR, "Could not create cdHash for denylist override check.", buf, 2u);
      }

      v23 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v25 = sub_1B9D98960();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v25, OS_LOG_TYPE_ERROR, "Could not open denylist override list.", buf, 2u);
    }

    return 0;
  }

  return v23;
}

uint64_t MISQueryBlacklistForBundle(const __CFString *a1, uint64_t a2, int a3, _DWORD *a4, CFDataRef *a5, _DWORD *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v10 = sub_1B9D97F74(a1, a2, 0, &v23);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B9D981AC(v10);
    v13 = v12;
    if (v12)
    {
      v14 = sub_1B9D98218(v12);
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v23 = -402620415;
        v19 = sub_1B9D98960();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B9D96000, v19, OS_LOG_TYPE_DEFAULT, "Could not copy code directory hash.", buf, 2u);
        }

        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v23 = -402620407;
    }

    v17 = v23;
    CFRelease(v11);

    v18 = v15 == 0;
    if (!v17 && v15)
    {
      if (a5)
      {
        *a5 = CFDataCreateCopy(*MEMORY[0x1E695E480], v15);
      }

      if (a6)
      {
        *a6 = 26;
      }

      v20 = MISQueryBlacklistForCdHash(v15, 0x1A, a3, a4);
LABEL_22:
      CFRelease(v15);
      return v20;
    }
  }

  else
  {
    v16 = sub_1B9D98960();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v25 = v23;
      _os_log_impl(&dword_1B9D96000, v16, OS_LOG_TYPE_DEFAULT, "Could not copy signature, error 0x%x", buf, 8u);
    }

    v17 = v23;
    v15 = 0;
    v18 = 1;
  }

  v21 = sub_1B9D98960();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v25 = v17;
    _os_log_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_DEFAULT, "Could not copy code directory hash (error: 0x%x).", buf, 8u);
  }

  v20 = 0;
  result = 0;
  if (!v18)
  {
    goto LABEL_22;
  }

  return result;
}

void MISBlacklistSetOverride(const __CFData *a1, unsigned int a2, BOOL a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    xpc_dictionary_set_string(v6, "type", "blov");
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    xpc_dictionary_set_data(v7, "cdha", BytePtr, Length);
    xpc_dictionary_set_uint64(v7, "haty", a2);
    xpc_dictionary_set_BOOL(v7, "ovrr", a3);
    v10 = sub_1B9DD0EF0(v7);
    v11 = v10;
    if (v10 && MEMORY[0x1BFAE82F0](v10) != MEMORY[0x1E69E9E98])
    {
      xpc_dictionary_get_int64(v11, "resu");
    }
  }

  else
  {
    v12 = sub_1B9D98960();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_ERROR, "Could not create XPC message for setBlacklistOverride", v13, 2u);
    }

    v11 = 0;
  }
}

uint64_t sub_1B9DCB79C(uint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x1E69E9840];
  if (a1 > -67055)
  {
    switch(a1)
    {
      case 0xFFFEFA12:
        v2 = 22;
        break;
      case 0xFFFEFA4C:
        v2 = 18;
        break;
      case 0:
        return v1;
      default:
        goto LABEL_13;
    }

    return v2 | 0xE8008001;
  }

  if (a1 == -67062)
  {
    return 3892346908;
  }

  if (a1 == -67061)
  {
    return 3892346905;
  }

LABEL_13:
  if ((a1 - 100001) <= 0x6A)
  {
    return (a1 - 100000) | 0xC000u;
  }

  v3 = sub_1B9D98960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = v1;
    _os_log_error_impl(&dword_1B9D96000, v3, OS_LOG_TYPE_ERROR, "unrecognized status %d from codesigning library", v5, 8u);
  }

  v1 = 3892346881;

  return v1;
}

uint64_t sub_1B9DCB908(const __SecCode *a1, int a2, int a3, int a4, int a5, void *a6)
{
  v11 = a6;
  if (a3 == 1)
  {
    v12 = 7;
  }

  else
  {
    v12 = 8193;
  }

  if (a4)
  {
    v13 = 0x20000000;
  }

  else
  {
    v13 = 0x10000;
  }

  v14 = v13 | v12;
  if (a5 == 1)
  {
    v15 = v14 | 0x400;
  }

  else
  {
    v15 = v14;
  }

  errors = 0;
  v16 = objc_autoreleasePoolPush();
  v17 = SecStaticCodeCheckValidityWithErrors(a1, v15, 0, &errors);
  objc_autoreleasePoolPop(v16);
  if (errors)
  {
    if (a2 == 1)
    {
      v18 = CFErrorCopyUserInfo(errors);
      if (v18)
      {
        v19 = v18;
        sub_1B9DCBA44(v18, *MEMORY[0x1E697AF58], "resource added");
        sub_1B9DCBA44(v19, *MEMORY[0x1E697AF68], "resource deleted");
        sub_1B9DCBA44(v19, *MEMORY[0x1E697AF60], "resource modified");
        CFRelease(v19);
      }
    }

    CFRelease(errors);
  }

  v20 = sub_1B9DCB79C(v17);

  return v20;
}

void sub_1B9DCBA44(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFURLGetTypeID())
    {
      CFURLGetFileSystemRepresentation(v5, 1u, buffer, 1024);
      v7 = sub_1B9D98960();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v15 = a3;
        v16 = 2082;
        v17 = buffer;
        _os_log_impl(&dword_1B9D96000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
      }

LABEL_14:

      return;
    }

    v8 = CFGetTypeID(v5);
    if (v8 != CFArrayGetTypeID())
    {
      v7 = sub_1B9D98960();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buffer = 136446466;
        v19 = "logResourceError";
        v20 = 2082;
        v21 = a3;
        _os_log_error_impl(&dword_1B9D96000, v7, OS_LOG_TYPE_ERROR, "%{public}s: unexpected object type processing %{public}s errors", buffer, 0x16u);
      }

      goto LABEL_14;
    }

    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, buffer, 1024);
        v13 = sub_1B9D98960();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v15 = a3;
          v16 = 2082;
          v17 = buffer;
          _os_log_impl(&dword_1B9D96000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", buf, 0x16u);
        }
      }
    }
  }
}

const void *sub_1B9DCBC80(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E697B078]);
  v2 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v2;
}

uint64_t sub_1B9DCBCC0(const __CFDictionary *a1)
{
  v1 = CFDictionaryGetValue(a1, *MEMORY[0x1E697B050]);
  v3 = objc_msgSend_objectForKeyedSubscript_(v1, v2, *MEMORY[0x1E697B058]);

  return v3;
}

const void *sub_1B9DCBD14(const __CFDictionary *a1, int *a2)
{
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E697B070]);
  v4 = Value;
  if (!Value)
  {
    v5 = -402620388;
    if (!a2)
    {
      return v4;
    }

    goto LABEL_3;
  }

  CFRetain(Value);
  v5 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = v5;
  }

  return v4;
}

uint64_t sub_1B9DCBD74(const __CFDictionary *a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E697B060]);
  if (!Value)
  {
    return 0;
  }

  v6 = Value;
  v7 = 3892346902;
  if (a2 && a3)
  {
    v8 = Value;
    if (objc_msgSend_length(v8, v9, v10) > 7)
    {
      v12 = MEMORY[0x1E695DEF0];
      v13 = v8;
      v16 = objc_msgSend_bytes(v13, v14, v15);
      v19 = objc_msgSend_length(v8, v17, v18);
      v21 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v12, v20, v16 + 8, v19 - 8, 0);
      v22 = sub_1B9DC8A48(v21, a3);
      v23 = MEMORY[0x1E69E50B8];
      if (v22 == *MEMORY[0x1E69E50B8])
      {
        if (CEQueryContextToCFDictionary() == *v23)
        {
          v7 = 0;
        }

        else
        {
          sub_1B9DC8B44(a3);
        }
      }
    }

    else
    {
      v11 = sub_1B9D98960();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_error_impl(&dword_1B9D96000, v11, OS_LOG_TYPE_ERROR, "Blob data too small", &v25, 2u);
      }
    }
  }

  else
  {
    v8 = sub_1B9D98960();
    v7 = 3892346881;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v25 = 138412802;
      v26 = v6;
      v27 = 2048;
      v28 = a2;
      v29 = 2048;
      v30 = a3;
      _os_log_error_impl(&dword_1B9D96000, v8, OS_LOG_TYPE_ERROR, "MISCreateEntitlementsFromBlobData called with invalid arguments: %@, %p, %p", &v25, 0x20u);
    }
  }

  return v7;
}

const void *sub_1B9DCBF60(const __CFDictionary *a1, _DWORD *a2)
{
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E697B080]);
  v4 = Value;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 != CFStringGetTypeID())
    {
      v4 = 0;
      if (!a2)
      {
        return v4;
      }

      goto LABEL_5;
    }

    CFRetain(v4);
  }

  if (a2)
  {
LABEL_5:
    *a2 = 0;
  }

  return v4;
}

BOOL sub_1B9DCBFD8(uint64_t a1)
{
  IsPresent = SecCodeSpecialSlotIsPresent();
  v2 = SecCodeSpecialSlotIsPresent();
  return IsPresent != *MEMORY[0x1E695E4D0] || v2 == *MEMORY[0x1E695E4D0];
}

double sub_1B9DCC028()
{
  if (!MEMORY[0x1EEE86628])
  {
    return 0.0;
  }

  MEMORY[0x1BFAE7410]();
  return result;
}

uint64_t sub_1B9DCC054()
{
  if (MEMORY[0x1EEE86630])
  {
    return TMGetRTCResetCount();
  }

  else
  {
    return 0;
  }
}

void sub_1B9DCC080()
{
  v0 = os_log_create("com.apple.mis", "mis");
  v1 = qword_1EDCF09D8;
  qword_1EDCF09D8 = v0;
}

BOOL sub_1B9DCC0C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_7;
  }

  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, @"xrOS");
  v9 = MISProvisioningProfileIncludesPlatform(a2, v7, 0);
  if (!isEqualToString)
  {
    goto LABEL_6;
  }

  if (!v9)
  {
    v9 = MISProvisioningProfileIncludesPlatform(a2, @"visionOS", 0);
LABEL_6:
    v10 = v9 != 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

id sub_1B9DCC15C()
{
  if (qword_1EBBE4080 != -1)
  {
    dispatch_once(&qword_1EBBE4080, &unk_1F37DA528);
  }

  v1 = qword_1EBBE4088;

  return v1;
}

MobileIdentityService *sub_1B9DCC1D4()
{
  result = objc_alloc_init(MobileIdentityService);
  qword_1EBBE4088 = result;
  return result;
}

uint64_t MISValidateSignatureAndCopyInfoWithProgress(const __CFString *a1, const __CFDictionary *a2, void *a3, void *a4)
{
  v160 = *MEMORY[0x1E69E9840];
  v134 = a4;
  v7 = objc_autoreleasePoolPush();
  v152 = 0;
  v150 = 0;
  v151 = 0;
  cf = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v8 = sub_1B9D97D10(a1, a2, &v152);
  v133 = v7;
  if (!v8)
  {
    goto LABEL_4;
  }

  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  valuePtr = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v152 = sub_1B9D97C44(a2, @"UnauthoritativeLaunch", &v145);
  if (v152)
  {
    goto LABEL_4;
  }

  v152 = sub_1B9D97C44(a2, @"AuthoritativeLaunch", &v145 + 1);
  if (v152)
  {
    goto LABEL_4;
  }

  v20 = v145;
  if (v145 && HIBYTE(v145))
  {
    v21 = sub_1B9D98960();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_ERROR, "Caller specified both unauthoritative and authoritative launch modes.", buf, 2u);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v132 = 0;
    v22 = -402620376;
    goto LABEL_75;
  }

  if (v145)
  {
    HIBYTE(v144) = 1;
    v143 = 0;
    v142 = 0;
    v140 = 257;
    HIBYTE(v139) = 0;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"ExpectedHash");
    BytePtr = Value;
    if (Value)
    {
      v25 = CFGetTypeID(Value);
      if (v25 != CFDataGetTypeID() || CFDataGetLength(BytePtr) != 20)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v132 = 0;
        v22 = 49174;
LABEL_75:
        v152 = v22;
        goto LABEL_5;
      }

      BytePtr = CFDataGetBytePtr(BytePtr);
    }
  }

  else
  {
    BytePtr = 0;
  }

  v152 = 0;
  v152 = sub_1B9D97C44(a2, @"LogResourceErrors", &v144);
  if (v152)
  {
    goto LABEL_4;
  }

  v152 = sub_1B9D97C44(a2, @"AllowAdHocSigning", &v143 + 1);
  if (v152)
  {
    goto LABEL_4;
  }

  v152 = sub_1B9D97C44(a2, @"ValidateSignatureOnly", &v144 + 1);
  if (v152)
  {
    goto LABEL_4;
  }

  v152 = sub_1B9D97C44(a2, @"UseSoftwareSigningCert", &v143);
  if (v152)
  {
    goto LABEL_4;
  }

  v152 = sub_1B9D97C44(a2, @"OnlineAuthorization", &v142);
  if (v152)
  {
    goto LABEL_4;
  }

  v152 = sub_1B9D97C44(a2, @"SkipProfileIdentifierPolicy", &v139);
  if (v152)
  {
    goto LABEL_4;
  }

  v124 = v20;
  v121 = a3;
  __s2 = BytePtr;
  log = a1;
  v152 = sub_1B9D97C44(a2, @"AllowLaunchWarnings", &v138 + 1);
  if (v152)
  {
    goto LABEL_4;
  }

  TypeID = CFStringGetTypeID();
  v152 = sub_1B9D97CB4(a2, @"MainExecutablePath", TypeID, &v149);
  if (v152)
  {
    goto LABEL_4;
  }

  v152 = sub_1B9D97C44(a2, @"OnlineAuthorizationOnAllMatchingProfiles", &v138);
  if (v152)
  {
    goto LABEL_4;
  }

  v28 = sub_1B9DCD774(a1, v27);
  v120 = v139 != 0 || !v28;
  LOBYTE(v139) = v139 != 0 || !v28;
  *buf = 0;
  v29 = CFNumberGetTypeID();
  v152 = sub_1B9D97CB4(a2, @"OnlineCheckType", v29, buf);
  if (v152)
  {
    goto LABEL_4;
  }

  if (*buf && !CFNumberGetValue(*buf, kCFNumberCFIndexType, &valuePtr))
  {
    v39 = sub_1B9D98960();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v153 = 0;
      _os_log_error_impl(&dword_1B9D96000, v39, OS_LOG_TYPE_ERROR, "Failure to convert onlineCheckType. (This should not happen.)", v153, 2u);
    }

    v152 = -402620415;
    goto LABEL_4;
  }

  v152 = sub_1B9D97C44(a2, @"RespectUppTrustAndAuthorization", &v140 + 1);
  if (v152)
  {
    goto LABEL_4;
  }

  v119 = HIBYTE(v140);
  if (HIBYTE(v140))
  {
    LOBYTE(v140) = 1;
  }

  v152 = sub_1B9D97C44(a2, @"HonorBlocklist", &v140);
  if (v152)
  {
    goto LABEL_4;
  }

  v152 = sub_1B9D97C44(a2, @"TrustCacheOnly", &v139 + 1);
  if (v152)
  {
    goto LABEL_4;
  }

  if (v20)
  {
    v30 = HIBYTE(v144) == 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = !v30;
  v32 = v143;
  v152 = sub_1B9DCB908(v8, v144, HIBYTE(v144), v31 & v120, v143, v134);
  if (v28)
  {
    if (sub_1B9DCBFD8(v8))
    {
      goto LABEL_82;
    }

    v33 = sub_1B9DD1C94();
    v34 = @"Internal";
    isEqualToString = objc_msgSend_isEqualToString_(v33, v35, @"Internal");

    v37 = sub_1B9D98960();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if ((isEqualToString & 1) == 0)
    {
      if (v38)
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B9D96000, v37, OS_LOG_TYPE_ERROR, "validation failed because of missing DER entitlements", buf, 2u);
      }

      v152 = -402620375;
      goto LABEL_4;
    }

    if (v38)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v37, OS_LOG_TYPE_ERROR, "validation would have failed due to missing DER entitlements", buf, 2u);
    }
  }

  else
  {
    v33 = sub_1B9D98960();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B9D96000, v33, OS_LOG_TYPE_INFO, "DER policy skipped as we're not validating a main executable", buf, 2u);
    }
  }

LABEL_82:
  if (v152 == -402620397)
  {
    v116 = 0;
    v114 = 1;
    goto LABEL_88;
  }

  if (v152)
  {
LABEL_4:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v132 = 0;
    goto LABEL_5;
  }

  v114 = 0;
  v40 = 4;
  if (!v32)
  {
    v40 = 2;
  }

  v116 = v40;
LABEL_88:
  v132 = sub_1B9D981AC(v8);
  if (!v132)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v132 = 0;
    v22 = -402620407;
    goto LABEL_75;
  }

  if (HIBYTE(v138) && _os_feature_enabled_impl())
  {
    v42 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v41, log);
    v43 = objc_opt_new();
    v137 = 0;
    v45 = objc_msgSend_checkForLaunchWarning_error_(v43, v44, v42, &v137);
    v48 = v137;
    if (v45)
    {
      if (objc_msgSend_length(v45, v46, v47))
      {
        v49 = sub_1B9D98960();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = log;
          _os_log_impl(&dword_1B9D96000, v49, OS_LOG_TYPE_DEFAULT, "New bundle has outstanding launch warning: %@", buf, 0xCu);
        }

        v9 = v45;
        goto LABEL_105;
      }
    }

    else
    {
      v50 = sub_1B9D98960();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = log;
        *&buf[12] = 2112;
        *&buf[14] = v48;
        _os_log_error_impl(&dword_1B9D96000, v50, OS_LOG_TYPE_ERROR, "Error checking for launch warning: %@, %@", buf, 0x16u);
      }
    }

    v9 = 0;
LABEL_105:

    goto LABEL_106;
  }

  v9 = 0;
LABEL_106:
  v113 = v140;
  if (!v140)
  {
    goto LABEL_126;
  }

  v14 = sub_1B9D98218(v132);
  if (_os_feature_enabled_impl())
  {
    v52 = objc_opt_new();
    if (v149)
    {
      v53 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v51, v149);
      v136 = 0;
      v54 = &v136;
      v56 = objc_msgSend_queryExecutableURL_error_(v52, v55, v53, &v136);
    }

    else
    {
      v53 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v51, log);
      v135 = 0;
      v54 = &v135;
      v56 = objc_msgSend_queryAppBundle_error_(v52, v57, v53, &v135);
    }

    v58 = v56;
    v59 = *v54;

    if (v58)
    {
      if (objc_msgSend_warningState(v58, v60, v61) && (objc_msgSend_isUserOverridden(v58, v62, v63) & 1) == 0)
      {
        v64 = sub_1B9D98960();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = log;
          _os_log_impl(&dword_1B9D96000, v64, OS_LOG_TYPE_DEFAULT, "Blocking bundle with outstanding launch warning: %@", buf, 0xCu);
        }

        v152 = -402620387;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        goto LABEL_5;
      }
    }

    else
    {
      v65 = sub_1B9D98960();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = log;
        *&buf[12] = 2112;
        *&buf[14] = v59;
        _os_log_error_impl(&dword_1B9D96000, v65, OS_LOG_TYPE_ERROR, "Error checking for launch warning mark: %@, %@", buf, 0x16u);
      }
    }
  }

  if (MISQueryBlacklistForCdHash(v14, 0x1A, 1, 0))
  {
    v66 = CFDataGetBytePtr(v14);
    v67 = sub_1B9D98960();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = *v66;
      v69 = v66[1];
      v70 = v66[2];
      v71 = v66[3];
      v72 = v66[4];
      v73 = v66[5];
      v74 = v66[6];
      v75 = v66[7];
      *buf = 67110912;
      *&buf[4] = v68;
      *&buf[8] = 1024;
      *&buf[10] = v69;
      *&buf[14] = 1024;
      *&buf[16] = v70;
      *&buf[20] = 1024;
      *&buf[22] = v71;
      *&buf[26] = 1024;
      *&buf[28] = v72;
      LOWORD(v156) = 1024;
      *(&v156 + 2) = v73;
      HIWORD(v156) = 1024;
      LODWORD(v157) = v74;
      WORD2(v157) = 1024;
      *(&v157 + 6) = v75;
      _os_log_impl(&dword_1B9D96000, v67, OS_LOG_TYPE_DEFAULT, "The bundle with cdhash %02x%02x%02x%02x%02x%02x%02x%02x... is deny-listed.", buf, 0x32u);
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v22 = -402620387;
    goto LABEL_75;
  }

  if (!v14)
  {
LABEL_126:
    v14 = sub_1B9D98218(v132);
  }

  v76 = sub_1B9D98A70(v132, &v152);
  v17 = v76;
  v77 = v152;
  if (v152 == -402620396)
  {
    if (!HIBYTE(v143))
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_5;
    }

    v16 = 0;
    v152 = 0;
    v116 = 1;
    goto LABEL_151;
  }

  if (!v76)
  {
    v16 = 0;
    goto LABEL_149;
  }

  if (!CFArrayGetCount(v76))
  {
    v88 = sub_1B9D98960();
    if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
LABEL_160:

      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v15 = 0;
      v16 = 0;
      v22 = -402620415;
      goto LABEL_75;
    }

    *buf = 0;
    v89 = "Signers array is empty (this should not happen).";
LABEL_184:
    _os_log_error_impl(&dword_1B9D96000, v88, OS_LOG_TYPE_ERROR, v89, buf, 2u);
    goto LABEL_160;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
  if (!ValueAtIndex)
  {
    v88 = sub_1B9D98960();
    if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_160;
    }

    *buf = 0;
    v89 = "First certificate is NULL (this should not happen).";
    goto LABEL_184;
  }

  v79 = ValueAtIndex;
  v16 = SecCertificateCopyData(ValueAtIndex);
  buf[0] = 0;
  if (!SecCertificateIsSelfSigned() && buf[0])
  {
    v80 = SecCertificateCopyKey(v79);
    v81 = SecKeyCopyExternalRepresentation(v80, 0);
    v82 = sub_1B9DD194C();
    v83 = v82;
    if (v82)
    {
      if (v81)
      {
        Length = CFDataGetLength(v82);
        if (Length == CFDataGetLength(v81))
        {
          v85 = CFDataGetBytePtr(v83);
          v86 = CFDataGetBytePtr(v81);
          v87 = CFDataGetLength(v83);
          if (!memcmp(v85, v86, v87))
          {
            v114 = 0;
            v152 = 0;
            v116 = 6;
          }
        }
      }
    }

    if (v80)
    {
      CFRelease(v80);
    }

    if (v81)
    {
      CFRelease(v81);
    }

    if (v83)
    {
      CFRelease(v83);
    }
  }

  v77 = v152;
LABEL_149:
  if (v77)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v15 = 0;
    goto LABEL_5;
  }

LABEL_151:
  v15 = sub_1B9DCBD14(v132, &v152);
  if (v152)
  {
    v10 = 0;
    v11 = 0;
LABEL_156:
    v12 = 0;
    v13 = 0;
    goto LABEL_5;
  }

  v11 = sub_1B9D98B60(v132, &v152);
  if (v152 || (v152 = sub_1B9DCBD74(v132, &v151, &v150)) != 0)
  {
    v10 = 0;
    goto LABEL_156;
  }

  v10 = sub_1B9DCBF60(v132, &v152);
  if (v152)
  {
    goto LABEL_156;
  }

  v13 = sub_1B9DCBC80(v132);
  v12 = sub_1B9DCBCC0(v132);
  if (v17 && v114)
  {
    if (!v124)
    {
      v118 = sub_1B9D98BF4(v17, v11, &v152);
      if (v152)
      {
        goto LABEL_5;
      }

      if (v118 != 2)
      {
        if (v118 != 3)
        {
          logc = sub_1B9D98960();
          if (os_log_type_enabled(logc, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v118;
            _os_log_impl(&dword_1B9D96000, logc, OS_LOG_TYPE_DEFAULT, "Not validly signed for app provisioning (type: %ld).", buf, 0xCu);
          }

          v22 = -402620392;
          goto LABEL_75;
        }

        v93 = 5;
        goto LABEL_202;
      }
    }

    v117 = v142;
    if (v142 | v119)
    {
      cf = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (!cf)
      {
        v115 = sub_1B9D98960();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1B9D96000, v115, OS_LOG_TYPE_ERROR, "Failed to create list of provisioning profiles", buf, 2u);
        }
      }
    }

    v158 = v12;
    v159 = 0;
    *buf = v16;
    *&buf[8] = v151;
    *&buf[16] = v150;
    *&buf[24] = v14;
    v156 = v15;
    *&v157 = v10;
    *(&v157 + 1) = v124;
    BYTE9(v157) = v120;
    if (v117)
    {
      v90 = 1;
    }

    else
    {
      v90 = v119 == 0;
    }

    v91 = !v90;
    LOBYTE(v159) = v91;
    BYTE1(v159) = v113;
    v152 = sub_1B9DCDB64(buf, &v146);
    if (v152)
    {
      goto LABEL_5;
    }

    if (!v14)
    {
      v14 = sub_1B9D98218(v132);
    }

    if (v117)
    {
      v152 = sub_1B9DCE22C(v14, cf, v13, v11, valuePtr, &v147, log, v138);
      if (v152)
      {
        loga = sub_1B9D98960();
        if (!os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_278;
        }

        *v153 = 67109120;
        v154 = v152;
        v92 = "validation failed because of failing online authorization (%d)";
        goto LABEL_200;
      }

      v119 = HIBYTE(v140);
    }

    if (!v119 || ((v94 = sub_1B9DCE798(v14, cf, v140, &v147), v94 == -402620379) ? (v95 = BYTE2(v146) == 0) : (v95 = 1), v95 ? (v96 = v94) : (v96 = 0), (v152 = v96) == 0))
    {
      v93 = 3;
LABEL_202:
      v116 = v93;
      goto LABEL_203;
    }

    loga = sub_1B9D98960();
    if (!os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_278;
    }

    *v153 = 67109120;
    v154 = v152;
    v92 = "validation failed because of missing trust and/or authorization (0x%x)";
LABEL_200:
    _os_log_impl(&dword_1B9D96000, loga, OS_LOG_TYPE_DEFAULT, v92, v153, 8u);
    goto LABEL_278;
  }

LABEL_203:
  *buf = 0;
  if (!CFNumberGetValue(v13, kCFNumberLongLongType, buf) || *buf <= 132095)
  {
    v22 = -402620375;
    goto LABEL_75;
  }

  if (!v14)
  {
    v14 = sub_1B9D98218(v132);
  }

  if (__s2)
  {
    if (!v14)
    {
      v99 = -402620415;
      goto LABEL_213;
    }

    logd = CFDataGetBytePtr(v14);
    v98 = CFDataGetLength(v14);
    if (memcmp(logd, __s2, v98))
    {
      v99 = -402620401;
LABEL_213:
      v152 = v99;
    }
  }

  if (v145)
  {
    if (BYTE3(v146))
    {
      v100 = 1;
    }

    else
    {
      v100 = BYTE2(v146) == 0;
    }

    if ((!v100 || BYTE1(v146)) && !amfi_developer_mode_status())
    {
      v152 = -402620373;
    }

    if (CEContextQuery() == *MEMORY[0x1E69E50B8] && !amfi_developer_mode_status())
    {
      v22 = -402620373;
      goto LABEL_75;
    }
  }

  if (!v152 && (!HIBYTE(v139) || (v152 = sub_1B9DCEB68(v14)) == 0))
  {
    if (v147)
    {
      logb = sub_1B9D98960();
      if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v147;
        _os_log_impl(&dword_1B9D96000, logb, OS_LOG_TYPE_DEFAULT, "%@ was picked for validation", buf, 0xCu);
      }
    }

    if (v121)
    {
      loga = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v97, 0);
      if (loga)
      {
        v125 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v101, v116);
        if (!v125)
        {
          v126 = sub_1B9D98960();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1B9D96000, v126, OS_LOG_TYPE_ERROR, "Could not create signer type number?", buf, 2u);
          }

          v152 = -402620406;
          goto LABEL_278;
        }

        objc_msgSend_setObject_forKeyedSubscript_(loga, v102, v125, @"SignerType");
        if (v116 == 3)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v103, MEMORY[0x1E695E118], @"ValidatedByProfile");
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v103, MEMORY[0x1E695E110], @"ValidatedByProfile");
        }

        if (v146)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v104, MEMORY[0x1E695E118], @"ValidatedByUniversalProfile");
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v104, MEMORY[0x1E695E110], @"ValidatedByUniversalProfile");
        }

        if (BYTE1(v146))
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v105, MEMORY[0x1E695E118], @"ValidatedByLocalProfile");
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v105, MEMORY[0x1E695E110], @"ValidatedByLocalProfile");
        }

        if (v16)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v106, v16, @"SignerCertificate");
        }

        if (v15)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v106, v15, @"SigningID");
        }

        if (v11)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v106, v11, @"SigningTime");
        }

        if (v151)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v106, v151, @"Entitlements");
        }

        if (v10)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v106, v10, @"TeamID");
        }

        if (v14)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v106, v14, @"CdHash");
        }

        else
        {
          __s2a = sub_1B9D98960();
          if (os_log_type_enabled(__s2a, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1B9D96000, __s2a, OS_LOG_TYPE_ERROR, "cdHash is NULL after successful validation? (This should not happen.)", buf, 2u);
          }
        }

        if (v147)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v107, v147, @"ProfileUUID");
        }

        if (v9)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v107, v9, @"LaunchWarningData");
        }

        objc_msgSend_setObject_forKeyedSubscript_(loga, v107, v13, @"SignatureVersion");
        v110 = objc_msgSend_unsignedIntValue(v12, v108, v109);
        if (v110 == 7 || v110 == 2)
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v111, MEMORY[0x1E695E118], @"IsNativeForPlatform");
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(loga, v111, MEMORY[0x1E695E110], @"IsNativeForPlatform");
        }
      }

      *v121 = loga;
LABEL_278:
    }
  }

LABEL_5:
  sub_1B9DC8B44(&v150);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v147)
  {
    CFRelease(v147);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v151)
  {
    CFRelease(v151);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v18 = v152;

  objc_autoreleasePoolPop(v133);
  return v18;
}

BOOL sub_1B9DCD774(uint64_t a1, const char *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], a2, a1);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = objc_msgSend_pathComponents(v2, v3, v4, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v38, buf, 16);
  if (!v7)
  {
    goto LABEL_9;
  }

  v10 = v7;
  v11 = 0;
  v12 = *v39;
  while (2)
  {
    v13 = 0;
    v14 = v11 + 1;
    v11 += v10;
    do
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v15 = objc_msgSend_pathExtension(*(*(&v38 + 1) + 8 * v13), v8, v9);
      isEqualToString = objc_msgSend_isEqualToString_(v15, v16, @"app");

      if (isEqualToString)
      {
        v19 = MEMORY[0x1E695DFF8];
        v20 = objc_msgSend_pathComponents(v2, v8, v9);
        v22 = objc_msgSend_subarrayWithRange_(v20, v21, 0, v14);
        v18 = objc_msgSend_fileURLWithPathComponents_(v19, v23, v22);

        if (!v18)
        {
          goto LABEL_24;
        }

        if (sub_1B9DD01E8(v2, v18))
        {
          Unique = _CFBundleCreateUnique();
          if (Unique)
          {
            v25 = sub_1B9D98960();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v43 = v2;
              v44 = 2112;
              v45 = v18;
              _os_log_impl(&dword_1B9D96000, v25, OS_LOG_TYPE_INFO, "Got bundle for %@ -> %@", buf, 0x16u);
            }

            v26 = CFBundleCopyExecutableURL(Unique);
            v27 = v26;
            if (v26)
            {
              v28 = CFURLCopyAbsoluteURL(v26);
              v29 = sub_1B9D98960();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = CFURLGetString(v2);
                *buf = 138412290;
                v43 = v30;
                _os_log_impl(&dword_1B9D96000, v29, OS_LOG_TYPE_INFO, "Ours: %@", buf, 0xCu);
              }

              v31 = sub_1B9D98960();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v32 = CFURLGetString(v28);
                *buf = 138412290;
                v43 = v32;
                _os_log_impl(&dword_1B9D96000, v31, OS_LOG_TYPE_INFO, "Bundle: %@", buf, 0xCu);
              }

              v33 = sub_1B9DD01E8(v2, v28);
              v34 = v33 == kCFCompareEqualTo;
              v35 = sub_1B9D98960();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 67109120;
                LODWORD(v43) = v33 == kCFCompareEqualTo;
                _os_log_impl(&dword_1B9D96000, v35, OS_LOG_TYPE_INFO, "Is main executable: %i", buf, 8u);
              }

              v36 = 0;
              if (v2)
              {
                goto LABEL_30;
              }

              goto LABEL_31;
            }

            v36 = 0;
LABEL_28:
            v28 = 0;
            goto LABEL_29;
          }

          v36 = 0;
        }

        else
        {
          v36 = 0;
          Unique = 0;
        }

        v27 = 0;
        goto LABEL_28;
      }

      ++v13;
      ++v14;
    }

    while (v10 != v13);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v38, buf, 16);
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_9:

  v18 = 0;
LABEL_24:
  Unique = 0;
  v27 = 0;
  v28 = 0;
  v36 = 1;
LABEL_29:
  v34 = 1;
  if (v2)
  {
LABEL_30:
    CFRelease(v2);
  }

LABEL_31:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if ((v36 & 1) == 0)
  {
    CFRelease(v18);
  }

  if (Unique)
  {
    CFRelease(Unique);
  }

  return v34;
}

uint64_t sub_1B9DCDB64(uint64_t a1, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = sub_1B9D98EE4(*a1);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B9DCED80;
  aBlock[3] = &unk_1E7ED8950;
  aBlock[4] = v27;
  aBlock[5] = &v41;
  aBlock[6] = &v49;
  aBlock[7] = a2;
  aBlock[8] = a1;
  v5 = _Block_copy(aBlock);
  v6 = *(a1 + 8);
  v8 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v7, 20);
  *cStr = MEMORY[0x1E69E9820];
  v58 = 3221225472;
  v59 = sub_1B9DC8984;
  v60 = &unk_1E7ED86A8;
  v9 = v8;
  v61 = v9;
  sub_1B9DC841C(v6, cStr);

  if (*(a1 + 48))
  {
    v10 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1B9DCF218;
    v25[3] = &unk_1E7ED8978;
    v25[5] = &v53;
    v25[6] = &v37;
    v25[7] = &v45;
    v25[4] = v5;
    v11 = MISEnumerateMatchingProfiles(v4, v9, v25);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = sub_1B9DD1C94();
    isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"Internal");
    if (MGGetBoolAnswer() & 1 | ((isEqualToString & 1) == 0) || !os_parse_boot_arg_string())
    {
      v13 = MGCopyAnswer();
    }

    else
    {
      v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
      v17 = sub_1B9D98960();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v63 = v13;
        _os_log_impl(&dword_1B9D96000, v17, OS_LOG_TYPE_DEFAULT, "Using emulated device UDID: %{public}@\n", buf, 0xCu);
      }
    }

    if (!v13)
    {
      v21 = sub_1B9D98960();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *cStr = 0;
        _os_log_error_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_ERROR, "got NULL when querying UDID", cStr, 2u);
      }

      v12 = 0;
      v13 = 0;
      goto LABEL_23;
    }

    v18 = CFGetTypeID(v13);
    if (v18 != CFStringGetTypeID())
    {
      v22 = sub_1B9D98960();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *cStr = 0;
        _os_log_error_impl(&dword_1B9D96000, v22, OS_LOG_TYPE_ERROR, "got non-string when querying UDID", cStr, 2u);
      }

      CFRelease(v13);
      v12 = 0;
      v13 = 0;
      goto LABEL_27;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v12 = CFDateCreate(*MEMORY[0x1E695E480], Current);
    if (!v12)
    {
LABEL_27:
      v11 = 3892346881;
      goto LABEL_28;
    }

    v20 = sub_1B9D98960();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *cStr = 0;
      _os_log_impl(&dword_1B9D96000, v20, OS_LOG_TYPE_DEFAULT, "Authoritative", cStr, 2u);
    }

    v10 = v24;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1B9DCF27C;
    v24[3] = &unk_1E7ED89A0;
    v24[11] = v12;
    v24[12] = v4;
    v24[5] = &v37;
    v24[6] = &v53;
    v24[13] = a1;
    v24[7] = &v33;
    v24[8] = &v29;
    v24[9] = &v45;
    v24[10] = v13;
    v24[4] = v5;
    v11 = MISEnumerateMatchingProfiles(v4, v9, v24);
  }

  if (v50[3])
  {
    goto LABEL_28;
  }

  if (v38[3])
  {
    v11 = 3892346897;
    goto LABEL_28;
  }

  if (v42[3])
  {
    v11 = 3892346916;
    goto LABEL_28;
  }

  if (v34[3])
  {
    v11 = 3892346922;
    goto LABEL_28;
  }

  if (v30[3])
  {
    v11 = 3892346924;
    goto LABEL_28;
  }

  if (*(v54 + 24))
  {
    if (*(v46 + 24))
    {
      v21 = sub_1B9D98960();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *cStr = 0;
        _os_log_error_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_ERROR, "Invalid profile iteration outcome?", cStr, 2u);
      }

LABEL_23:

      goto LABEL_27;
    }

    v11 = 3892346902;
  }

  else
  {
    v11 = 3892346901;
  }

LABEL_28:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  return v11;
}

uint64_t sub_1B9DCE22C(const __CFArray *a1, CFArrayRef theArray, const __CFNumber *a3, void *a4, int64_t a5, CFTypeRef *a6, const __CFString *a7, int a8)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 3892346881;
  }

  if (!theArray)
  {
    return 3892346881;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 3892346881;
  }

  v14 = Count;
  v37 = a6;
  v38 = a8;
  v39 = 0;
  v15 = 0;
  v16 = 3892346881;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
    if (!ValueAtIndex)
    {
      v26 = sub_1B9D98960();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v27 = v26;
      v28 = "Encountered NULL record!";
      v29 = 2;
LABEL_21:
      _os_log_error_impl(&dword_1B9D96000, v27, OS_LOG_TYPE_ERROR, v28, buf, v29);
      goto LABEL_34;
    }

    v18 = ValueAtIndex;
    if (CFArrayGetCount(ValueAtIndex) != 4)
    {
      v26 = sub_1B9D98960();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v30 = CFArrayGetCount(v18);
      *buf = 134218242;
      v44 = v30;
      v45 = 2112;
      v46 = v18;
      v27 = v26;
      v28 = "Encountered record with %ld != 4 entries: %@";
      v29 = 22;
      goto LABEL_21;
    }

    v19 = CFArrayGetValueAtIndex(v18, 0);
    v20 = CFArrayGetValueAtIndex(v18, 1);
    if (!v19 || (v21 = v20) == 0)
    {
      v26 = sub_1B9D98960();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138412290;
      v44 = v18;
      v27 = v26;
      v28 = "Encountered record with no UUID or Team ID: %@";
      v29 = 12;
      goto LABEL_21;
    }

    v22 = CFArrayGetValueAtIndex(v18, 2);
    v23 = CFArrayGetValueAtIndex(v18, 3);
    v24 = sub_1B9D98960();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B9D96000, v24, OS_LOG_TYPE_DEFAULT, "Performing online authorization.", buf, 2u);
    }

    v25 = sub_1B9DD0BE0(a1, v19, v21, v22, v23, a3, a4, a5, a7);
    if ((v25 & 0x24) != 0)
    {
      v26 = sub_1B9D98960();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = a1;
        v45 = 2112;
        v46 = v19;
        _os_log_impl(&dword_1B9D96000, v26, OS_LOG_TYPE_DEFAULT, "Authorization still pending: %@, %@", buf, 0x16u);
      }

      v16 = 0;
      goto LABEL_34;
    }

    v31 = v25;
    if ((v25 & 0x10) != 0)
    {
      break;
    }

    if ((v25 & 2) != 0)
    {
      v26 = sub_1B9D98960();
      v16 = 3892346904;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v44 = v31;
        v45 = 2112;
        v46 = a1;
        v47 = 2112;
        v48 = v19;
        v33 = v26;
        v34 = "No online authorization (%#llx): %@, %@";
LABEL_33:
        _os_log_impl(&dword_1B9D96000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0x20u);
      }

LABEL_34:

      goto LABEL_35;
    }

    if ((v25 & 8) != 0)
    {
      v26 = sub_1B9D98960();
      v16 = 3892346918;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v44 = v31;
        v45 = 2112;
        v46 = a1;
        v47 = 2112;
        v48 = v19;
        v33 = v26;
        v34 = "Online authorization rejected (%#llx), %@, %@";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v32 = sub_1B9D98960();
    v26 = v32;
    if ((v31 & 1) == 0)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v44 = a1;
        v45 = 2112;
        v46 = v19;
        _os_log_error_impl(&dword_1B9D96000, v26, OS_LOG_TYPE_ERROR, "Online authorization ambiguous: %@, %@", buf, 0x16u);
      }

      v16 = 3892346881;
      goto LABEL_34;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = a1;
      v45 = 2112;
      v46 = v19;
      _os_log_impl(&dword_1B9D96000, v26, OS_LOG_TYPE_DEFAULT, "Online authorization succeeded: %@, %@", buf, 0x16u);
    }

    if (v37 && !v39)
    {
      if (*v37)
      {
        CFRelease(*v37);
      }

      *v37 = CFRetain(v19);
      v39 = 1;
    }

    v16 = 0;
    result = 0;
    if (!v38)
    {
      return result;
    }

LABEL_35:
    ++v15;
    result = v16;
    if (v14 == v15)
    {
      return result;
    }
  }

  v36 = sub_1B9D98960();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v44 = (v31 & 0x10);
    _os_log_error_impl(&dword_1B9D96000, v36, OS_LOG_TYPE_ERROR, "Auth agent contact failure (entitlement status %lld)", buf, 0xCu);
  }

  return 3892346893;
}

uint64_t sub_1B9DCE798(const __CFData *a1, const __CFArray *a2, int a3, CFTypeRef *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = 3892346918;
  if (!a1 || !a2)
  {
    v10 = sub_1B9D98960();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v32 = a1;
      v33 = 2048;
      v34 = a2;
      _os_log_error_impl(&dword_1B9D96000, v10, OS_LOG_TYPE_ERROR, "cdHash (%p) or matchedProfileIDs (%p) NULL in checkTrustAndAuthorization", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v8 = sub_1B9D98258(a1, a3);
  if (v8 > 1)
  {
    if (v8 == 4)
    {
      v29 = sub_1B9D98960();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B9D96000, v29, OS_LOG_TYPE_ERROR, "Encountered MISStateBlacklisted in trust and auth check (this should not happen)!", buf, 2u);
      }

      v9 = 0;
      v6 = 3892346909;
      goto LABEL_11;
    }

    if (v8 != 3)
    {
      v9 = 0;
      v6 = 3892346916;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (v8)
  {
LABEL_10:
    v9 = 0;
    v6 = 3892346881;
    goto LABEL_11;
  }

LABEL_13:
  v9 = objc_opt_new();
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    goto LABEL_11;
  }

  v13 = Count;
  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
    if (ValueAtIndex)
    {
      break;
    }

    v17 = sub_1B9D98960();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = v17;
      v25 = "Encountered NULL record when checking trust and authorization";
      v26 = 2;
LABEL_27:
      _os_log_error_impl(&dword_1B9D96000, v24, OS_LOG_TYPE_ERROR, v25, buf, v26);
    }

LABEL_32:

    if (v13 == ++v14)
    {
      goto LABEL_11;
    }
  }

  v16 = ValueAtIndex;
  if (CFArrayGetCount(ValueAtIndex) != 4)
  {
    v17 = sub_1B9D98960();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v27 = CFArrayGetCount(v16);
      *buf = 134217984;
      v32 = v27;
      v24 = v17;
      v25 = "Encountered record of wrong size (%ld) when checking trust and authorization";
      v26 = 12;
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  v17 = CFArrayGetValueAtIndex(v16, 0);
  v19 = a1;
  if (!v17)
  {
    v28 = sub_1B9D98960();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v28, OS_LOG_TYPE_ERROR, "Encountered NULL UUID when checking trust and authorization", buf, 2u);
    }

    v22 = v6;
LABEL_31:

    v6 = v22;
    goto LABEL_32;
  }

  if (!sub_1B9DBF144(v17, v18))
  {
    v22 = 3892346918;
    if ((objc_msgSend_isRejectedWithProfileUUID_withCDHash_(v9, v20, v17, v19) & 1) == 0)
    {
      v22 = v6;
      if ((objc_msgSend_existsIndeterminatesWithProfileUUID_withCDHash_(v9, v21, v17, v19) & 1) == 0)
      {
        v22 = 3892346917;
        if (objc_msgSend_isProfileTrusted_(v9, v23, v17))
        {
          if (!a4)
          {
            goto LABEL_43;
          }

          goto LABEL_40;
        }
      }
    }

    goto LABEL_31;
  }

  v30 = sub_1B9D98960();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B9D96000, v30, OS_LOG_TYPE_INFO, "UPP is ready, passing through.", buf, 2u);
  }

  if (a4)
  {
LABEL_40:
    if (*a4)
    {
      CFRelease(*a4);
    }

    *a4 = CFRetain(v17);
  }

LABEL_43:

  v6 = 0;
LABEL_11:

  return v6;
}

uint64_t sub_1B9DCEB68(const __CFData *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  connect = 0;
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MatchingService;
  if (!MatchingService)
  {
    v8 = sub_1B9D98960();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "Unable to find AppleMobileFileIntegrity service.";
      v10 = v8;
      v11 = 2;
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v6 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B9D98960();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v7;
      v9 = "Unable to open AppleMobileFileIntegrity user client: 0x%x";
LABEL_5:
      v10 = v8;
      v11 = 8;
LABEL_19:
      _os_log_error_impl(&dword_1B9D96000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  input = 1;
  v14 = connect;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v17 = IOConnectCallMethod(v14, 6u, &input, 1u, BytePtr, Length, 0, 0, 0, 0);
  v12 = v17;
  if (v17)
  {
    if (v17 != -536870160)
    {
      v8 = sub_1B9D98960();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v21 = v12;
        v9 = "AppleMobileFileIntegrity user client call failed: 0x%x";
        goto LABEL_5;
      }

LABEL_7:
      v12 = 3892346881;

      goto LABEL_8;
    }

    v12 = 3892346919;
  }

LABEL_8:
  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v5)
  {
    IOObjectRelease(v5);
  }

  return v12;
}

uint64_t sub_1B9DCED80(void *a1, const void *a2, __CFString *a3, int a4, int a5, int a6, char a7)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v26 = sub_1B9D98960();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v26, OS_LOG_TYPE_ERROR, "Skipping universal/local profile with NULL UUID.", buf, 2u);
    }

    return 1;
  }

  v7 = a6;
  if (*(*(a1[4] + 8) + 24) == 1 && a6 == 0)
  {
    return 1;
  }

  if (*(a1[7] + 16))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      v37 = sub_1B9D98960();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B9D96000, v37, OS_LOG_TYPE_ERROR, "Profile record creation failed, bailing out!", buf, 2u);
      }

      return 0;
    }

    v16 = Mutable;
    if (!a3)
    {
      a3 = &stru_1F37DBBE8;
    }

    CFArrayAppendValue(Mutable, a2);
    CFArrayAppendValue(v16, a3);
    v17 = *MEMORY[0x1E695E4D0];
    v18 = *MEMORY[0x1E695E4C0];
    if (a4)
    {
      v19 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v19 = *MEMORY[0x1E695E4C0];
    }

    CFArrayAppendValue(v16, v19);
    if (a5)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    CFArrayAppendValue(v16, v20);
    CFArrayAppendValue(*(a1[7] + 16), v16);
    CFRelease(v16);
  }

  if ((a4 & 1) == 0 && !a5)
  {
    v21 = sub_1B9D98960();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = a2;
      _os_log_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_INFO, "Using Provisioning Profile '%@'.", buf, 0xCu);
    }

    v22 = a1[7];
    *(v22 + 2) = 1;
    *(v22 + 3) = a7;
    *(*(a1[6] + 8) + 24) = 1;
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      *(*(a1[4] + 8) + 24) |= v7;
      v23 = *(v22 + 8);
      if (v23)
      {
        CFRelease(v23);
      }

      v24 = CFRetain(a2);
      v25 = 0;
      *(a1[7] + 8) = v24;
      return v25;
    }

    return 0;
  }

  v28 = a1[7];
  if (*v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = a4;
  }

  *v28 = v29;
  if (v28[1])
  {
    v30 = 1;
  }

  else
  {
    v30 = a5;
  }

  v28[1] = v30;
  v31 = objc_opt_new();
  isProfileUUIDBanned = objc_msgSend_isProfileUUIDBanned_(v31, v32, a2);
  v34 = sub_1B9D98960();
  v35 = v34;
  if (isProfileUUIDBanned)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = a2;
      _os_log_impl(&dword_1B9D96000, v35, OS_LOG_TYPE_DEFAULT, "Universal/Local Provisioning Profile '%@' is not viable for validation.", buf, 0xCu);
    }

    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = a2;
      _os_log_impl(&dword_1B9D96000, v35, OS_LOG_TYPE_INFO, "Accepting Universal/Local Provisioning Profile '%@'.", buf, 0xCu);
    }
  }

  *(*(a1[6] + 8) + 24) = isProfileUUIDBanned ^ 1;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *(*(a1[4] + 8) + 24) |= v7;
    v38 = *(a1[7] + 8);
    if (v38)
    {
      CFRelease(v38);
    }

    *(a1[7] + 8) = CFRetain(a2);
  }

  if (!*(a1[8] + 64))
  {
    goto LABEL_58;
  }

  v45[0] = a2;
  v45[1] = a3;
  v39 = MEMORY[0x1E695E110];
  if (a4)
  {
    v40 = MEMORY[0x1E695E118];
  }

  else
  {
    v40 = MEMORY[0x1E695E110];
  }

  if (a5)
  {
    v39 = MEMORY[0x1E695E118];
  }

  v45[2] = v40;
  v45[3] = v39;
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v36, v45, 4);
  v46 = v41;
  v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v42, &v46, 1);

  v44 = sub_1B9DCE798(*(a1[8] + 24), v43, *(a1[8] + 65), 0);
  if (!v44)
  {
    v25 = 0;
  }

  else
  {
LABEL_58:
    v25 = 1;
  }

  return v25;
}

uint64_t sub_1B9DCF218(void *a1, uint64_t a2)
{
  *(*(a1[5] + 8) + 24) = 1;
  if (*(a2 + 16) == 1)
  {
    *(*(a1[6] + 8) + 24) = 1;
    return 1;
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
    return (*(a1[4] + 16))();
  }
}

uint64_t sub_1B9DCF27C(uint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) != 1)
  {
    v5 = *a2;
    v6 = *(a2 + 24);
    *buf = -402620415;
    v7 = sub_1B9DCA198(v6, v5, 0, buf);
    v8 = v7;
    if (v7)
    {
      v9 = *buf == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v15 = MISProvisioningProfileCheckValidity(v7, *(a1 + 80), *(a1 + 88));
      if (v15)
      {
        v18 = v15;
        if (v15 == -402620399)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }

        v10 = sub_1B9D98960();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 67109120;
        LODWORD(v81) = v18;
        v12 = "Skipping a profile because of error %#x.\n";
        v13 = v10;
        v14 = 8;
        goto LABEL_14;
      }

      v20 = objc_msgSend_certs(v8, v16, v17);

      if (v20)
      {
        v87.length = CFArrayGetCount(v20);
        v87.location = 0;
        v21 = CFArrayContainsValue(v20, v87, *(a1 + 96));
        v3 = 1;
        if (!v21)
        {
          goto LABEL_17;
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      Value = MISProfileGetValue(v8, @"UUID");
      v25 = objc_msgSend_entitlements(v8, v23, v24);

      if (v25)
      {
        if (MISProvisioningProfileIsForBetaDeployment(v8, v26, v27))
        {
          v28 = *(*(a1 + 104) + 8);
          if (v28)
          {
            if (CFDictionaryContainsKey(v28, @"application-identifier") && !sub_1B9DCFAAC(v8, *(*(a1 + 104) + 24), *(*(a1 + 104) + 56)))
            {
              v69 = *(a1 + 56);
LABEL_61:
              v3 = 1;
              *(*(v69 + 8) + 24) = 1;
              goto LABEL_17;
            }
          }
        }

        v72 = Value;
        cf = v25;
        v29 = MISProfileGetValue(v8, @"AppAudience");
        v73 = v8;
        v30 = MISProfileGetValue(v8, @"UUID");
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = v29;
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v76, buf, 16);
        if (v32)
        {
          v33 = v32;
          v34 = *v77;
          while (2)
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v77 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v76 + 1) + 8 * i);
              v37 = v30;
              if (objc_msgSend_isEqual_(v36, v38, @"InternalBuild", cf))
              {
                v75 = v37;
                v40 = v33;
                v41 = sub_1B9DD1C94();
                v42 = @"Internal";
                isEqualToString = objc_msgSend_isEqualToString_(v41, v43, @"Internal");

                v45 = MGGetBoolAnswer();
                v46 = sub_1B9D98960();
                v47 = v45 ^ 1;
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  *v82 = 138543874;
                  v83 = v36;
                  v84 = 1024;
                  *v85 = isEqualToString;
                  *&v85[4] = 1024;
                  *&v85[6] = v47;
                  _os_log_impl(&dword_1B9D96000, v46, OS_LOG_TYPE_DEFAULT, "Checking %{public}@ App Audience, %d, %d", v82, 0x18u);
                }

                if (((v47 | isEqualToString) & 1) == 0)
                {
                  v67 = sub_1B9D98960();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                  {
                    *v82 = 138543618;
                    v83 = v36;
                    v84 = 2114;
                    *v85 = v30;
                    _os_log_error_impl(&dword_1B9D96000, v67, OS_LOG_TYPE_ERROR, "Denying profile %{public}@ due to %{public}@ App Audience", v82, 0x16u);
                  }

                  v8 = v73;
                  v37 = v75;
LABEL_58:

                  v68 = sub_1B9D98960();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    *v82 = 138543618;
                    v83 = v36;
                    v84 = 2114;
                    *v85 = v30;
                    _os_log_error_impl(&dword_1B9D96000, v68, OS_LOG_TYPE_ERROR, "App audience %{public}@ from profile %{public}@ not matched", v82, 0x16u);
                  }

                  v69 = *(a1 + 64);
                  goto LABEL_61;
                }

                v33 = v40;
                v37 = v75;
              }

              else
              {
                isEqual = objc_msgSend_isEqual_(v36, v39, @"NoExecute");
                v49 = sub_1B9D98960();
                v41 = v49;
                if (isEqual)
                {
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    *v82 = 138543618;
                    v83 = v36;
                    v84 = 2114;
                    *v85 = v30;
                    _os_log_error_impl(&dword_1B9D96000, v41, OS_LOG_TYPE_ERROR, "Denying profile %{public}@ due to %{public}@ App Audience", v82, 0x16u);
                  }

                  v8 = v73;
                  goto LABEL_58;
                }

                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *v82 = 138543618;
                  v83 = v36;
                  v84 = 2114;
                  *v85 = v30;
                  _os_log_impl(&dword_1B9D96000, v41, OS_LOG_TYPE_DEFAULT, "Ignoring unenforced App Audience: %{public}@ from profile %{public}@", v82, 0x16u);
                }
              }
            }

            v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v76, buf, 16);
            if (v33)
            {
              continue;
            }

            break;
          }
        }

        v8 = v73;
        if (!*(*(a1 + 104) + 8) || (v53 = objc_msgSend_derEntitlements(v73, v51, v52), v54 = *(*(a1 + 104) + 16), v55 = MISProvisioningProfileIsAppleInternalProfile(v73) != 0, (sub_1B9DCFDC4(v53, v54, v72, v55) & 1) != 0))
        {
          if (!sub_1B9DC77DC(v73, @"LocalProvision") || (v56 = *(a1 + 104), *(v56 + 49)) || sub_1B9DCFEA4(*(v56 + 32), *(v56 + 40), cf, v72))
          {
            *(*(*(a1 + 72) + 8) + 24) = 1;
            v57 = sub_1B9D98960();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v81 = v72;
              _os_log_impl(&dword_1B9D96000, v57, OS_LOG_TYPE_DEFAULT, "Keep going %@", buf, 0xCu);
            }

            v58 = *(a1 + 32);
            v59 = MISProfileGetValue(v73, @"UUID");
            TeamIdentifier = MISProvisioningProfileGetTeamIdentifier(v73);
            v61 = sub_1B9DC77DC(v73, @"ProvisionsAllDevices") != 0;
            v62 = sub_1B9DC77DC(v73, @"LocalProvision") != 0;
            v63 = MISProfileIsDEREncoded(v73) != 0;
            v66 = MISProvisioningProfileIsForBetaDeployment(v73, v64, v65) != 0;
            v3 = (*(v58 + 16))(v58, v59, TeamIdentifier, v61, v62, v63, v66);
            goto LABEL_17;
          }

          v70 = sub_1B9D98960();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v81 = v72;
            _os_log_impl(&dword_1B9D96000, v70, OS_LOG_TYPE_DEFAULT, "Local Profile '%@' has non-matching application-identifier.", buf, 0xCu);
          }
        }

        *(*(*(a1 + 72) + 8) + 24) = 0;
        goto LABEL_16;
      }

      v10 = sub_1B9D98960();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v81 = Value;
        _os_log_error_impl(&dword_1B9D96000, v10, OS_LOG_TYPE_ERROR, "Skipping profile '%@' because it has no entitlement match list?", buf, 0xCu);
      }
    }

    else
    {
      v10 = sub_1B9D98960();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a2;
        *buf = 138412290;
        v81 = v11;
        v12 = "Skipping a profile %@";
        v13 = v10;
        v14 = 12;
LABEL_14:
        _os_log_impl(&dword_1B9D96000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }

LABEL_15:

LABEL_16:
    v3 = 1;
LABEL_17:

    return v3;
  }

  v3 = 1;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return v3;
}

BOOL sub_1B9DCFAAC(MISProfile *a1, const __CFData *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = a1;
  if (a1)
  {
    v5 = a1;
    CFRetain(a1);
  }

  else
  {
    if (MISCopyProvisioningProfile(0, &v27))
    {
      return 0;
    }

    v5 = v27;
  }

  v8 = objc_msgSend_unsignedIntValue(a3, v6, v7);
  v9 = v8;
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1:
        v10 = @"OSX";
        goto LABEL_23;
      case 2:
        v10 = @"iOS";
        goto LABEL_23;
      case 3:
        v10 = @"tvOS";
        goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (v8 == 4)
  {
    v10 = @"watchOS";
    goto LABEL_23;
  }

  if (v8 != 10)
  {
    if (v8 == 11)
    {
      v10 = @"xrOS";
      goto LABEL_23;
    }

LABEL_16:
    v11 = sub_1B9D98960();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v29) = v9;
      _os_log_error_impl(&dword_1B9D96000, v11, OS_LOG_TYPE_ERROR, "Invalid platform: %du", buf, 8u);
    }

    v10 = @"invalid";
    goto LABEL_23;
  }

  v12 = sub_1B9DCC15C();
  v13 = @"iOS";
  if (!v12)
  {
    v13 = 0;
  }

  v10 = v13;

LABEL_23:
  v14 = sub_1B9DCC15C();
  v15 = sub_1B9DCC0C4(v14, v5, v10);

  v16 = sub_1B9DD1C94();
  v17 = @"Internal";
  isEqualToString = objc_msgSend_isEqualToString_(v16, v18, @"Internal");

  if (!v15 && isEqualToString)
  {
    v20 = sub_1B9D98960();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_error_impl(&dword_1B9D96000, v20, OS_LOG_TYPE_ERROR, "TestFlight platform policy failed, the profile did not include the expected platform %@, this would have been a critical failure on a customer build", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (!v15)
  {
    v25 = sub_1B9D98960();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_error_impl(&dword_1B9D96000, v25, OS_LOG_TYPE_ERROR, "TestFlight platform policy failed, the profile did not include the expected platform %@", buf, 0xCu);
    }

    return 0;
  }

LABEL_29:

  v21 = sub_1B9D989C4(a2);
  if (!v21)
  {
    v24 = 1;
    if (!v5)
    {
      return v24;
    }

    goto LABEL_40;
  }

  v22 = v21;
  Value = MISProfileGetValue(v5, @"ProvisioningCDHashes");
  if (Value)
  {
    v24 = MISArrayAllowsEntitlementValue(Value, v22) != 0;
  }

  else
  {
    v24 = 1;
  }

  CFRelease(v22);
  if (v5)
  {
LABEL_40:
    CFRelease(v5);
  }

  return v24;
}

uint64_t sub_1B9DCFDC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v10 = *MEMORY[0x1E69E9840];
  if (CEContextIsSubset() == *MEMORY[0x1E69E50B8])
  {
    v4 = 1;
  }

  else
  {
    v4 = v4;
  }

  if ((v4 & 1) == 0)
  {
    v6 = sub_1B9D98960();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_error_impl(&dword_1B9D96000, v6, OS_LOG_TYPE_ERROR, "Profile %@ failed to validate entitlements", &v8, 0xCu);
    }
  }

  return v4;
}

BOOL sub_1B9DCFEA4(uint64_t a1, uint64_t a2, CFTypeRef cf, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = CFGetTypeID(cf);
  if (v8 == CFDictionaryGetTypeID())
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"%@.%@", a2, a1);
    v11 = MISEntitlementDictionaryAllowsEntitlementValue(cf, @"application-identifier", v10) != 0;
  }

  else
  {
    v12 = sub_1B9D98960();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = a4;
      v16 = 2112;
      v17 = cf;
      _os_log_error_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_ERROR, "Local Profile '%@' entitlement match list is not a dictionary, but '%@'.", buf, 0x16u);
    }

    return 0;
  }

  return v11;
}

uint64_t sub_1B9DCFFD8(uint64_t a1, const void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  trust = 0;
  v5 = SecTrustCreateWithCertificates(v3, a2, &trust);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B9D98960();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      v9 = 3892346904;

      goto LABEL_6;
    }

    *buf = 67109120;
    LODWORD(v17) = v6;
    v8 = "SecTrustCreateWithCertificates failed: %d";
LABEL_4:
    _os_log_impl(&dword_1B9D96000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 8u);
    goto LABEL_5;
  }

  if (v4)
  {
    v11 = SecTrustSetVerifyDate(trust, v4);
    if (v11)
    {
      v12 = v11;
      v7 = sub_1B9D98960();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      *buf = 67109120;
      LODWORD(v17) = v12;
      v8 = "SecTrustSetVerifyDate failed: %d";
      goto LABEL_4;
    }
  }

  cf = 0;
  if (SecTrustEvaluateWithError(trust, &cf))
  {
    v9 = 0;
  }

  else
  {
    v13 = sub_1B9D98960();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v17 = cf;
      _os_log_impl(&dword_1B9D96000, v13, OS_LOG_TYPE_INFO, "SecTrustEvaluateWithError failed: %{public}@", buf, 0xCu);
    }

    v9 = 3892346904;

    CFRelease(cf);
  }

LABEL_6:
  if (trust)
  {
    CFRelease(trust);
  }

  CFRelease(a2);
  return v9;
}

uint64_t sub_1B9DD0198()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1EBBE4090;
  qword_1EBBE4090 = v0;

  v2 = qword_1EBBE4090;

  return MEMORY[0x1EEE66B58](v2, sel_setCountLimit_, 100);
}

CFComparisonResult sub_1B9DD01E8(const __CFURL *a1, const __CFURL *a2)
{
  v3 = CFURLGetString(a1);
  v4 = CFURLGetString(a2);

  return CFStringCompare(v3, v4, 0);
}

void MISValidateUPP(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (sub_1B9DBF144(a1, v7))
  {
    v6[2](v6, 3, 0);
  }

  else
  {
    v8 = a1;
    v9 = objc_opt_new();
    if (objc_msgSend_isProfileUUIDBanned_(v9, v10, v8))
    {
      v6[2](v6, 2, 0);
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1B9DD0388;
      v11[3] = &unk_1E7ED88E8;
      v12 = v9;
      v13 = v8;
      v15 = v13;
      v14 = v6;
      dispatch_async(v5, v11);
    }
  }
}

void sub_1B9DD0388(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1EEE86628])
  {
    v4 = MEMORY[0x1BFAE7410]();
  }

  else
  {
    v4 = 0;
  }

  if (MEMORY[0x1EEE86630])
  {
    v38 = TMGetRTCResetCount();
  }

  else
  {
    v38 = 0;
  }

  v5 = objc_msgSend_onlineAuthEntries(*(a1 + 32), a2, a3);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v39, v45, 16);
  if (v7)
  {
    v10 = v7;
    v36 = 0;
    v11 = *v40;
    do
    {
      v12 = 0;
      do
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        v14 = objc_msgSend_profileUUID(v13, v8, v9);
        v16 = objc_msgSend_caseInsensitiveCompare_(v14, v15, *(a1 + 40));

        if (!v16 && objc_msgSend_isIndeterminate_resetCount_(v13, v8, v4, v38))
        {
          v17 = v5;
          v18 = v4;
          v19 = *(a1 + 32);
          v20 = objc_msgSend_profileUUID(v13, v8, v9);
          v22 = objc_msgSend_teamIDWithProfileUUID_(v19, v21, v20);

          v25 = objc_msgSend_cdHash(v13, v23, v24);
          v28 = objc_msgSend_profileUUID(v13, v26, v27);
          v37 = v22;
          v29 = sub_1B9DD0BE0(v25, v28, v22, 0, 0, 0, 0, 2, 0);

          if (v29)
          {
            v4 = v18;
          }

          else
          {
            if ((v29 & 2) == 0)
            {
              v4 = v18;
              if ((v29 & 8) != 0)
              {
                v32 = sub_1B9D98960();
                v5 = v17;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = *(a1 + 56);
                  *buf = 138412290;
                  v44 = v33;
                  _os_log_impl(&dword_1B9D96000, v32, OS_LOG_TYPE_DEFAULT, "Profile '%@' has a rejected app.", buf, 0xCu);
                }
              }

              else
              {
                v5 = v17;
                if ((v29 & 0x34) != 0)
                {
                  v36 |= v29 & 0x34;
                }

                else
                {
                  v34 = sub_1B9D98960();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134217984;
                    v44 = v29;
                    _os_log_error_impl(&dword_1B9D96000, v34, OS_LOG_TYPE_ERROR, "MISValidateUPP: weird answer 0x%llx encountered.", buf, 0xCu);
                  }
                }
              }

              goto LABEL_24;
            }

            v30 = sub_1B9D98960();
            v4 = v18;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = *(a1 + 56);
              *buf = 138412290;
              v44 = v31;
              _os_log_impl(&dword_1B9D96000, v30, OS_LOG_TYPE_DEFAULT, "Provisioning profile '%@' is banned.", buf, 0xCu);
            }
          }

          v5 = v17;
LABEL_24:
        }

        ++v12;
      }

      while (v10 != v12);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v39, v45, 16);
      v10 = v35;
    }

    while (v35);
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t MISUPPTrusted(uint64_t a1)
{
  v2 = objc_opt_new();
  isProfileTrusted = objc_msgSend_isProfileTrusted_(v2, v3, a1);

  return isProfileTrusted;
}

uint64_t MISCopyAuxiliarySignature(uint64_t a1)
{
  v2 = objc_opt_new();
  v4 = objc_msgSend_auxiliarySignatureWithTeamID_(v2, v3, a1);

  return v4;
}

uint64_t MISProfileSupportsAuxiliarySignature(void *a1)
{
  Value = MISProfileGetValue(a1, @"UUID");
  result = sub_1B9DC77DC(a1, @"ProvisionsAllDevices");
  if (result)
  {
    return !sub_1B9DBF144(Value, v4);
  }

  return result;
}

void MISSetUPPTrust(uint64_t a1, int a2)
{
  if (a2)
  {
    MISSetProfileTrust(a1, 0);
  }

  else
  {
    MISRemoveProfileTrust(a1);
  }
}

void MISSetProfileTrust(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v8 = 0;
  objc_msgSend_trustProfileUUID_signature_error_(v4, v5, a1, a2, &v8);
  v6 = v8;
  if (v6)
  {
    v7 = sub_1B9D98960();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v10 = a1;
      v11 = 2112;
      v12 = a2;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_1B9D96000, v7, OS_LOG_TYPE_ERROR, "Error adding trust for profile UUID %@ with signature %@: %@", buf, 0x20u);
    }
  }
}

void MISRemoveProfileTrust(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v6 = 0;
  objc_msgSend_untrustProfileUUID_error_(v2, v3, a1, &v6);
  v4 = v6;
  if (v4)
  {
    v5 = sub_1B9D98960();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v8 = a1;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_ERROR, "Error removing trust for profile UUID %@: %@", buf, 0x16u);
    }
  }
}

void MISEnumerateTrustedUPPs(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v5 = objc_msgSend_trustedProfiles(v2, v3, v4);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_uuid(*(*(&v14 + 1) + 8 * v12), v8, v9);
        v1[2](v1, v13);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v14, v18, 16);
    }

    while (v10);
  }
}

uint64_t MISValidationCopySignatureVersion(const __CFString *a1, const void **a2)
{
  v9 = 0;
  v3 = sub_1B9D97D10(a1, 0, &v9);
  if (!v3)
  {
    return 3892346908;
  }

  v4 = v3;
  v5 = sub_1B9D981AC(v3);
  v6 = v5;
  if (v5)
  {
    if (a2)
    {
      *a2 = sub_1B9DCBC80(v5);
    }
  }

  else
  {
    v9 = -402620407;
  }

  CFRelease(v4);
  v7 = v9;

  return v7;
}

int64_t sub_1B9DD0BE0(const __CFData *a1, const __CFString *a2, const __CFString *a3, const __CFBoolean *a4, const __CFBoolean *a5, const __CFNumber *a6, void *a7, int64_t a8, const __CFString *a9)
{
  v16 = sub_1B9DD0E70(a2);
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = sub_1B9DD0E70(a3);
  if (!v18)
  {
    free(v17);
LABEL_7:
    v22 = 0;
    v21 = 0;
    int64 = 4;
    goto LABEL_28;
  }

  v19 = v18;
  if (a9)
  {
    v20 = sub_1B9DD0E70(a9);
    if (!v20)
    {
      v21 = 0;
LABEL_24:
      v22 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = xpc_dictionary_create(0, 0, 0);
  v21 = v24;
  if (!v24)
  {
    goto LABEL_24;
  }

  v36 = a7;
  xpc_dictionary_set_string(v24, "type", "auth");
  v25 = v20;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v28 = BytePtr;
  v20 = v25;
  xpc_dictionary_set_data(v21, "cdha", v28, Length);
  xpc_dictionary_set_string(v21, "uuid", v17);
  xpc_dictionary_set_string(v21, "team", v19);
  xpc_dictionary_set_int64(v21, "ckty", a8);
  if (v25)
  {
    xpc_dictionary_set_string(v21, "apppath", v25);
  }

  if (a4)
  {
    v31 = CFBooleanGetValue(a4) != 0;
    xpc_dictionary_set_BOOL(v21, "univ", v31);
  }

  if (a5)
  {
    v32 = CFBooleanGetValue(a5) != 0;
    xpc_dictionary_set_BOOL(v21, "locl", v32);
  }

  if (a6)
  {
    valuePtr = 0;
    if (CFNumberGetValue(a6, kCFNumberLongLongType, &valuePtr))
    {
      xpc_dictionary_set_uint64(v21, "cdvr", valuePtr);
    }
  }

  if (v36)
  {
    objc_msgSend_timeIntervalSince1970(v36, v29, v30);
    xpc_dictionary_set_int64(v21, "sgnt", (v33 * 1000.0));
  }

  v34 = sub_1B9DD0EF0(v21);
  v22 = v34;
  if (v34 && MEMORY[0x1BFAE82F0](v34) != MEMORY[0x1E69E9E98])
  {
    int64 = xpc_dictionary_get_int64(v22, "resu");
    goto LABEL_26;
  }

LABEL_25:
  int64 = 4;
LABEL_26:
  free(v17);
  free(v19);
  if (v20)
  {
    free(v20);
  }

LABEL_28:

  return int64;
}

void *sub_1B9DD0E70(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x29189CABuLL);
  if (v4 && !CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    free(v4);
    return 0;
  }

  return v4;
}

id sub_1B9DD0EF0(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.online-auth-agent.xpc", v2, 0);

  if (mach_service)
  {
    xpc_connection_set_event_handler(mach_service, &unk_1F37DA568);
    xpc_connection_resume(mach_service);
    v4 = xpc_connection_send_message_with_reply_sync(mach_service, v1);
  }

  else
  {
    v5 = sub_1B9D98960();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "com.apple.online-auth-agent.xpc";
      _os_log_error_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_ERROR, "error, could not lookup %s service", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

void sub_1B9DD1028(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1BFAE82F0](a2) != MEMORY[0x1E69E9E98])
  {
    v3 = sub_1B9D98960();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v4 = "unexpected event in handler for referenced item service\n";
      v5 = &v7;
LABEL_10:
      _os_log_error_impl(&dword_1B9D96000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (a2 != MEMORY[0x1E69E9E18] && a2 != MEMORY[0x1E69E9E20])
  {
    v3 = sub_1B9D98960();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v4 = "unexpected error with online-auth-agent connection\n";
      v5 = buf;
      goto LABEL_10;
    }

LABEL_11:
  }
}

int64_t sub_1B9DD10FC(uint64_t a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (!v4)
  {
    v9 = sub_1B9D98960();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1B9D96000, v9, OS_LOG_TYPE_ERROR, "Could not create XPC message for setBlacklistOverride", v11, 2u);
    }

    v7 = 0;
    goto LABEL_8;
  }

  xpc_dictionary_set_string(v4, "type", "lwov");
  xpc_dictionary_set_uint64(v5, "lwid", a1);
  xpc_dictionary_set_BOOL(v5, "ovrr", a2 != 0);
  v6 = sub_1B9DD0EF0(v5);
  v7 = v6;
  if (!v6 || MEMORY[0x1BFAE82F0](v6) == MEMORY[0x1E69E9E98])
  {
LABEL_8:
    int64 = 4;
    goto LABEL_9;
  }

  int64 = xpc_dictionary_get_int64(v7, "resu");
LABEL_9:

  return int64;
}

int64_t sub_1B9DD122C(unsigned int a1, const __CFData *a2, CFDataRef *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (!v6)
  {
    v14 = sub_1B9D98960();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v14, OS_LOG_TYPE_ERROR, "Could not create XPC message for checkLaunchWarning", buf, 2u);
    }

    v11 = 0;
    goto LABEL_9;
  }

  xpc_dictionary_set_string(v6, "type", "chlw");
  xpc_dictionary_set_int64(v7, "cdht", a1);
  BytePtr = CFDataGetBytePtr(a2);
  v9 = CFDataGetLength(a2);
  xpc_dictionary_set_data(v7, "cdhd", BytePtr, v9);
  v10 = sub_1B9DD0EF0(v7);
  v11 = v10;
  if (!v10 || MEMORY[0x1BFAE82F0](v10) == MEMORY[0x1E69E9E98])
  {
LABEL_9:
    int64 = 4;
    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(v11, "resu");
  if (a3)
  {
    length = 0;
    data = xpc_dictionary_get_data(v11, "warndata", &length);
    *a3 = CFDataCreate(0, data, length);
  }

LABEL_10:

  return int64;
}

CFStringRef MISCopyErrorStringForErrorCodeUnlocalized(uint64_t a1)
{
  switch(a1)
  {
    case 0xE8008001:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"An unknown error has occurred.";

      goto LABEL_4;
    case 0xE8008002:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"Attempted to modify an immutable provisioning profile.";

      goto LABEL_4;
    case 0xE8008003:
    case 0xE8008005:
    case 0xE8008006:
    case 0xE8008007:
    case 0xE8008008:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"This provisioning profile is malformed.";

      goto LABEL_4;
    case 0xE8008004:
    case 0xE800800E:
    case 0xE8008013:
    case 0xE800801A:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"This provisioning profile does not have a valid signature (or it has a valid, but untrusted signature).";

      goto LABEL_4;
    case 0xE8008009:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The signature was not valid.";

      goto LABEL_4;
    case 0xE800800A:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"Unable to allocate memory.";

      goto LABEL_4;
    case 0xE800800B:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"A file operation failed.";

      goto LABEL_4;
    case 0xE800800C:
    case 0xE800800D:
    case 0xE800801B:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"There was an error communicating with your device.";

      goto LABEL_4;
    case 0xE800800F:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The application's signature is valid but it does not match the expected hash.";

      goto LABEL_4;
    case 0xE8008010:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"This provisioning profile is unsupported.";

      goto LABEL_4;
    case 0xE8008011:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"This provisioning profile has expired.";

      goto LABEL_4;
    case 0xE8008012:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"This provisioning profile cannot be installed on this device.";

      goto LABEL_4;
    case 0xE8008014:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The executable contains an invalid signature.";

      goto LABEL_4;
    case 0xE8008015:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"A valid provisioning profile for this executable was not found.";

      goto LABEL_4;
    case 0xE8008016:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The executable was signed with invalid entitlements.";

      goto LABEL_4;
    case 0xE8008017:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"A signed resource has been added, modified, or deleted.";

      goto LABEL_4;
    case 0xE8008018:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The identity used to sign the executable is no longer valid.";

      goto LABEL_4;
    case 0xE8008019:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The application does not have a valid signature.";

      goto LABEL_4;
    case 0xE800801C:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"No code signature found.";

      goto LABEL_4;
    case 0xE800801D:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"Rejected by policy.";

      goto LABEL_4;
    case 0xE800801E:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The requested profile does not exist (it may have been removed).";

      goto LABEL_4;
    case 0xE800801F:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"Attempted to install a Beta profile without the proper entitlement.";

      goto LABEL_4;
    case 0xE8008020:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"Attempted to install a Beta profile over lockdown connection.";

      goto LABEL_4;
    case 0xE8008021:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The maximum number of apps for free development profiles has been reached.";

      goto LABEL_4;
    case 0xE8008022:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"An error occured while accessing the profile database.";

      goto LABEL_4;
    case 0xE8008023:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"An error occured while communicating with the agent.";

      goto LABEL_4;
    case 0xE8008024:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The provisioning profile is banned.";

      goto LABEL_4;
    case 0xE8008025:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The user did not explicitly trust the provisioning profile.";

      goto LABEL_4;
    case 0xE8008026:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The provisioning profile requires online authorization.";

      goto LABEL_4;
    case 0xE8008027:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The cdhash is not in the trust cache.";

      goto LABEL_4;
    case 0xE8008028:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"Invalid arguments or option combination.";

      goto LABEL_4;
    case 0xE8008029:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The code signature version is no longer supported.";

      goto LABEL_4;
    case 0xE800802A:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The application's signature is valid, but a provisioning profile can not be found that matches this version.";

      goto LABEL_4;
    case 0xE800802B:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"Running this application requires Developer Mode to be enabled.";

      goto LABEL_4;
    case 0xE800802C:
      v2 = *MEMORY[0x1E695E480];
      v3 = @"The provisioning profile's App Audience is not suitable for this device.";

LABEL_4:
      result = CFStringCreateCopy(v2, v3);
      break;
    default:
      result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"An unexpected error was encountered (0x%X)", a1);
      break;
  }

  return result;
}

CFStringRef MISCopyErrorStringForErrorCode(uint64_t a1)
{
  v1 = MISCopyErrorStringForErrorCodeUnlocalized(a1);
  MainBundle = CFBundleGetMainBundle();
  v3 = CFBundleCopyLocalizedString(MainBundle, v1, v1, 0);
  CFRelease(v1);
  return v3;
}

id sub_1B9DD194C()
{
  v0 = qword_1EBBE40A0;
  if (qword_1EBBE40A0 || (objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], 0, 97), v2 = objc_claimAutoreleasedReturnValue(), v3 = qword_1EBBE40A0, qword_1EBBE40A0 = v2, v3, v6 = objc_msgSend_mutableBytes(qword_1EBBE40A0, v4, v5), local_signing_public_key = amfi_interface_get_local_signing_public_key(v6), v0 = qword_1EBBE40A0, !local_signing_public_key))
  {

    return v0;
  }

  else
  {
    qword_1EBBE40A0 = 0;

    return 0;
  }
}

unsigned __int8 *sub_1B9DD19D0(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, v2);
  }

  return v2;
}

uint64_t sub_1B9DD1A10(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_blob(a1, a2);
  sqlite3_column_bytes(a1, a2);
  v5 = MEMORY[0x1E695DEF0];

  return MEMORY[0x1EEE66B58](v5, sel_dataWithBytes_length_, v4);
}

uint64_t sub_1B9DD1A74(const char *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __assert_rtn("setDatabasePermissionsInternal", "db_utils.m", 121, "path != NULL");
  }

  v2 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2 == -1)
  {
    v5 = sub_1B9D98960();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      *buf = 67109378;
      v14 = v11;
      v15 = 2080;
      v16 = a1;
      _os_log_error_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_ERROR, "unable to open file to update permissions: %d, %s", buf, 0x12u);
    }

    return 0;
  }

  v3 = v2;
  if (fstat(v2, &v12) < 0)
  {
    v6 = sub_1B9D98960();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v7 = *__error();
    *buf = 67109378;
    v14 = v7;
    v15 = 2080;
    v16 = a1;
    v8 = "unable to check filesystem permissions on db: %d, %s";
  }

  else
  {
    if ((v12.st_mode & 0x1FF) == 0x1A4 || (fchmod(v3, 0x1A4u) & 0x80000000) == 0)
    {
      v4 = 1;
      if (v3 < 0)
      {
        return v4;
      }

      goto LABEL_17;
    }

    v6 = sub_1B9D98960();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v9 = *__error();
    *buf = 67109378;
    v14 = v9;
    v15 = 2080;
    v16 = a1;
    v8 = "unable to set filesystem permissions on db: %d, %s";
  }

  _os_log_error_impl(&dword_1B9D96000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
LABEL_16:

  v4 = 0;
  if ((v3 & 0x80000000) == 0)
  {
LABEL_17:
    close(v3);
  }

  return v4;
}

id sub_1B9DD1C94()
{
  v0 = MGCopyAnswer();

  return v0;
}

xpc_connection_t sub_1B9DD25B0()
{
  mach_service = xpc_connection_create_mach_service("com.apple.misagent", 0, 0);

  return mach_service;
}