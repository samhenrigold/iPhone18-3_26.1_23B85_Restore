uint64_t CTCompressAttestationLeaf(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v42[2] = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    goto LABEL_77;
  }

  v4 = a1 + 15;
  if (v4 > a1 + 17)
  {
    goto LABEL_78;
  }

  v7 = 393220;
  CommonNameSuffixPointer = CTCompressGetCommonNameSuffixPointer(v4);
  if (!CommonNameSuffixPointer)
  {
    return 393224;
  }

  if (a3 >= 9)
  {
    v9 = a2 + 1;
    if (a2 + 1 < a2)
    {
      goto LABEL_78;
    }

    v10 = a2 + a3;
    if (v9 > a2 + a3)
    {
      goto LABEL_78;
    }

    *(a2 + 1) = *CommonNameSuffixPointer;
    v11 = (a2 + 9);
    if (v9 > a2 + 9)
    {
      goto LABEL_78;
    }

    if (v9 <= 0xFFFFFFFFFFFFFFF7)
    {
      memset(v38, 170, sizeof(v38));
      v12 = X509CertificateParseValidity(a1, &v38[2], v38);
      if (v12)
      {
        return v12;
      }

      memset(v42, 170, 14);
      v13 = CTGetGeneralizedTime(&v38[2], v42);
      if (v13)
      {
        return v13;
      }

      if (a3 < 0x17)
      {
        return v7;
      }

      if (v11 < a2)
      {
        goto LABEL_78;
      }

      if (v11 > v10)
      {
        goto LABEL_78;
      }

      *v11 = v42[0];
      *(a2 + 15) = *(v42 + 6);
      v15 = (a2 + 23);
      if (v11 > a2 + 23)
      {
        goto LABEL_78;
      }

      if (v11 <= 0xFFFFFFFFFFFFFFF1)
      {
        v13 = CTGetGeneralizedTime(v38, v42);
        if (v13)
        {
          return v13;
        }

        if (a3 < 0x25)
        {
          return v7;
        }

        if (v15 < a2)
        {
          goto LABEL_78;
        }

        if (v15 > v10)
        {
          goto LABEL_78;
        }

        *v15 = v42[0];
        *(a2 + 29) = *(v42 + 6);
        v16 = (a2 + 37);
        if (v15 > a2 + 37)
        {
          goto LABEL_78;
        }

        if (v15 <= 0xFFFFFFFFFFFFFFF1)
        {
          v41 = -86;
          *&v17 = 0xAAAAAAAAAAAAAAAALL;
          *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v39 = v17;
          v40 = v17;
          memset(v37, 170, sizeof(v37));
          v13 = X509CertificateParseSPKI(a1 + 11, 0, v37, &v37[2]);
          if (v13)
          {
            return v13;
          }

          v13 = compressECPublicKey(&v37[2], v37, &v39, 33);
          if (v13)
          {
            return v13;
          }

          if (a3 < 0x46)
          {
            return 393220;
          }

          if (v16 < a2)
          {
            goto LABEL_78;
          }

          if (v16 > v10)
          {
            goto LABEL_78;
          }

          v18 = v40;
          *v16 = v39;
          *(a2 + 53) = v18;
          *(a2 + 69) = v41;
          v19 = (a2 + 70);
          if (v16 > a2 + 70)
          {
            goto LABEL_78;
          }

          if (v16 <= 0xFFFFFFFFFFFFFFDELL)
          {
            v20 = a1[31];
            v13 = 393222;
            if (!v20 || a1[32] != 32)
            {
              return v13;
            }

            if (a3 < 0x66)
            {
              return 393220;
            }

            if (v19 < a2)
            {
              goto LABEL_78;
            }

            if (v19 > v10)
            {
              goto LABEL_78;
            }

            v21 = v20[1];
            *v19 = *v20;
            *(a2 + 86) = v21;
            v22 = (a2 + 102);
            if (v19 > a2 + 102)
            {
              goto LABEL_78;
            }

            if (v19 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              v23 = a1[21];
              v13 = 393221;
              if (!v23 || a1[22] != 20)
              {
                return v13;
              }

              if (a3 < 0x7A)
              {
                return 393220;
              }

              if (v22 < a2)
              {
                goto LABEL_78;
              }

              if (v22 > v10)
              {
                goto LABEL_78;
              }

              v24 = *v23;
              *(a2 + 118) = *(v23 + 16);
              *v22 = v24;
              v25 = (a2 + 122);
              if (v22 > a2 + 122)
              {
                goto LABEL_78;
              }

              if (v22 <= 0xFFFFFFFFFFFFFFEBLL)
              {
                __src = 0;
                __n = 0;
                if (CTParseExtensionValue(*a1, a1[1], &CTOidAppleMFI4ProductPlanUID, 0xAuLL, &__src, &__n))
                {
                  v26 = 122;
                }

                else
                {
                  v13 = 393222;
                  if (!__src || __n != 36)
                  {
                    return v13;
                  }

                  if (a3 < 0x9E)
                  {
                    return 393220;
                  }

                  if (v25 < a2)
                  {
                    goto LABEL_78;
                  }

                  if (v25 > v10)
                  {
                    goto LABEL_78;
                  }

                  v31 = *__src;
                  v32 = *(__src + 1);
                  *(a2 + 154) = *(__src + 8);
                  *v25 = v31;
                  *(a2 + 138) = v32;
                  if (v25 > a2 + 158)
                  {
                    goto LABEL_78;
                  }

                  if (v25 > 0xFFFFFFFFFFFFFFDBLL)
                  {
                    goto LABEL_77;
                  }

                  v26 = 158;
                  v25 = (a2 + 158);
                }

                v27 = a1[7];
                v13 = 655619;
                if (!v27)
                {
                  return v13;
                }

                v28 = a1[8];
                if (v28 - 73 < 0xFFFFFFFFFFFFFFFDLL)
                {
                  return v13;
                }

                v29 = v28 + v26;
                if (v28 + v26 > a3)
                {
                  return 393220;
                }

                if (v25 > v10)
                {
                  goto LABEL_78;
                }

                if (v25 < a2)
                {
                  goto LABEL_78;
                }

                if (v28 > v10 - v25)
                {
                  goto LABEL_78;
                }

                memcpy(v25, v27, a1[8]);
                if (v25 > (v25 + v28))
                {
                  goto LABEL_78;
                }

                v30 = a1[8];
                if (!__CFADD__(v25, v30))
                {
                  if (CTParseExtensionValue(*a1, a1[1], &CTOidAppleMFI4AccessoryData, 0xAuLL, &__src, &__n))
                  {
                    return 0;
                  }

                  if (!__src)
                  {
                    return 393222;
                  }

                  v33 = __n;
                  v13 = 393220;
                  if (__n + v29 <= a3)
                  {
                    v34 = v25 + v30;
                    if (v25 + v30 <= v10 && v34 >= a2 && __n <= v10 - v34)
                    {
                      memcpy(v25 + v30, __src, __n);
                      if (v34 <= v34 + v33)
                      {
                        if (!__CFADD__(v34, v33))
                        {
                          return 0;
                        }

                        goto LABEL_77;
                      }
                    }

LABEL_78:
                    __break(0x5519u);
                  }

                  return v13;
                }
              }
            }
          }
        }
      }
    }

LABEL_77:
    __break(0x5513u);
    goto LABEL_78;
  }

  return v7;
}

size_t CTCompressMFiLeaf(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v41[2] = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    goto LABEL_78;
  }

  v4 = 393220;
  v5 = a1[17];
  if (v5)
  {
    v6 = a1[18] == 16;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 393223;
  }

  if (a3 < 0x11)
  {
    return v4;
  }

  v9 = (a2 + 1);
  if (a2 + 1 < a2)
  {
    goto LABEL_79;
  }

  v10 = a2 + a3;
  if (v9 > a2 + a3)
  {
    goto LABEL_79;
  }

  *v9 = *v5;
  v11 = a2 + 17;
  if (v9 > a2 + 17)
  {
    goto LABEL_79;
  }

  if (v9 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_78;
  }

  CommonNameSuffixPointer = CTCompressGetCommonNameSuffixPointer(a1 + 15);
  if (!CommonNameSuffixPointer)
  {
    return 393224;
  }

  if (a3 >= 0x19)
  {
    if (v11 < a2)
    {
      goto LABEL_79;
    }

    if (v11 > v10)
    {
      goto LABEL_79;
    }

    *(a2 + 17) = *CommonNameSuffixPointer;
    v13 = (a2 + 25);
    if (v11 > a2 + 25)
    {
      goto LABEL_79;
    }

    if (v11 > 0xFFFFFFFFFFFFFFF7)
    {
      goto LABEL_78;
    }

    v37[0] = 0xAAAAAAAAAAAAAAAALL;
    v37[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = X509CertificateParseValidity(a1, v37, 0);
    if (v14)
    {
      return v14;
    }

    memset(v41, 170, 14);
    v14 = CTGetGeneralizedTime(v37, v41);
    if (v14)
    {
      return v14;
    }

    if (a3 < 0x27)
    {
      return 393220;
    }

    if (v13 < a2)
    {
      goto LABEL_79;
    }

    if (v13 > v10)
    {
      goto LABEL_79;
    }

    *v13 = v41[0];
    *(a2 + 31) = *(v41 + 6);
    v15 = (a2 + 39);
    if (v13 > a2 + 39)
    {
      goto LABEL_79;
    }

    if (v13 > 0xFFFFFFFFFFFFFFF1)
    {
      goto LABEL_78;
    }

    v40 = -86;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38 = v16;
    v39 = v16;
    memset(v36, 170, sizeof(v36));
    v14 = X509CertificateParseSPKI(a1 + 11, 0, v36, &v36[2]);
    if (v14)
    {
      return v14;
    }

    v14 = compressECPublicKey(&v36[2], v36, &v38, 33);
    if (v14)
    {
      return v14;
    }

    if (a3 < 0x48)
    {
      return 393220;
    }

    if (v15 < a2)
    {
      goto LABEL_79;
    }

    if (v15 > v10)
    {
      goto LABEL_79;
    }

    v18 = v39;
    *v15 = v38;
    *(a2 + 55) = v18;
    *(a2 + 71) = v40;
    v19 = (a2 + 72);
    if (v15 > a2 + 72)
    {
      goto LABEL_79;
    }

    if (v15 > 0xFFFFFFFFFFFFFFDELL)
    {
      goto LABEL_78;
    }

    v20 = a1[31];
    v14 = 393222;
    if (!v20 || a1[32] != 32)
    {
      return v14;
    }

    if (a3 < 0x68)
    {
      return 393220;
    }

    if (v19 < a2)
    {
      goto LABEL_79;
    }

    if (v19 > v10)
    {
      goto LABEL_79;
    }

    v21 = v20[1];
    *v19 = *v20;
    *(a2 + 88) = v21;
    v22 = (a2 + 104);
    if (v19 > a2 + 104)
    {
      goto LABEL_79;
    }

    if (v19 > 0xFFFFFFFFFFFFFFDFLL)
    {
      goto LABEL_78;
    }

    v23 = a1[21];
    v14 = 393221;
    if (!v23 || a1[22] != 20)
    {
      return v14;
    }

    if (a3 < 0x7C)
    {
      return 393220;
    }

    if (v22 < a2)
    {
      goto LABEL_79;
    }

    if (v22 > v10)
    {
      goto LABEL_79;
    }

    v24 = *v23;
    *(a2 + 120) = *(v23 + 16);
    *v22 = v24;
    v25 = (a2 + 124);
    if (v22 > a2 + 124)
    {
      goto LABEL_79;
    }

    if (v22 > 0xFFFFFFFFFFFFFFEBLL)
    {
      goto LABEL_78;
    }

    __src = 0;
    __n = 0;
    if (CTParseExtensionValue(*a1, a1[1], &CTOidAppleMFI4ProductPlanUID, 0xAuLL, &__src, &__n))
    {
      v26 = 124;
    }

    else
    {
      v14 = 393222;
      if (!__src || __n != 36)
      {
        return v14;
      }

      if (a3 < 0xA0)
      {
        return 393220;
      }

      if (v25 < a2)
      {
        goto LABEL_79;
      }

      if (v25 > v10)
      {
        goto LABEL_79;
      }

      v31 = *__src;
      v32 = *(__src + 1);
      *(a2 + 156) = *(__src + 8);
      *v25 = v31;
      *(a2 + 140) = v32;
      if (v25 > a2 + 160)
      {
        goto LABEL_79;
      }

      if (v25 > 0xFFFFFFFFFFFFFFDBLL)
      {
        goto LABEL_78;
      }

      v26 = 160;
      v25 = (a2 + 160);
    }

    v27 = a1[7];
    v14 = 655619;
    if (!v27)
    {
      return v14;
    }

    v28 = a1[8];
    if (v28 - 73 < 0xFFFFFFFFFFFFFFFDLL)
    {
      return v14;
    }

    v29 = v28 + v26;
    if (v28 + v26 > a3)
    {
      return 393220;
    }

    if (v25 <= v10 && v25 >= a2 && v28 <= v10 - v25)
    {
      memcpy(v25, v27, a1[8]);
      if (v25 <= (v25 + v28))
      {
        v30 = a1[8];
        if (__CFADD__(v25, v30))
        {
          goto LABEL_78;
        }

        if (CTParseExtensionValue(*a1, a1[1], &CTOidAppleMFI4AccessoryData, 0xAuLL, &__src, &__n))
        {
          return 0;
        }

        if (!__src)
        {
          return (v4 + 2);
        }

        v4 = __n;
        v14 = 393220;
        if (__n + v29 > a3)
        {
          return v14;
        }

        v33 = v25 + v30;
        if (v25 + v30 <= v10 && v33 >= a2 && __n <= v10 - v33)
        {
          memcpy(v25 + v30, __src, __n);
          if (v33 <= v33 + v4)
          {
            if (!__CFADD__(v33, v4))
            {
              return 0;
            }

LABEL_78:
            __break(0x5513u);
          }
        }
      }
    }

LABEL_79:
    __break(0x5519u);
    return (v4 + 2);
  }

  return v4;
}

uint64_t CTDecompressIssuer(unsigned int a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  result = 393218;
  if (a1 > 159)
  {
    if (a1 - 160 >= 4)
    {
      if (a1 == 164)
      {
LABEL_12:
        v11 = &root_subject;
        v12 = &leaf_5280_extensions_template;
        v13 = 39;
        v14 = 89;
        goto LABEL_13;
      }

      if (a1 != 165)
      {
        return result;
      }
    }

    v11 = &attestation_ca_subject;
    v12 = &root_subject;
    v13 = 58;
    v14 = 108;
LABEL_13:
    v15 = 1;
    goto LABEL_14;
  }

  v11 = &mfi_ca_subject;
  if (a1 >= 4)
  {
    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return result;
      }

      v12 = &attestation_leaf_subject;
      v13 = 57;
      v14 = 107;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = &attestation_leaf_subject;
  v13 = 57;
  v14 = 107;
  v15 = 17;
LABEL_14:
  result = 393217;
  if ((v15 | 8uLL) > a3)
  {
    return result;
  }

  if (!a4)
  {
    goto LABEL_32;
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17 - *a4 < v14)
  {
    return 393220;
  }

  if (v16 > v17 || v11 > v12 || v14 > v12 - v11)
  {
    goto LABEL_36;
  }

  result = ccder_blob_encode_body();
  if (!result)
  {
    return 393226;
  }

  v18 = a4[1];
  if (__CFADD__(v18, v13) || (v19 = (v18 + v13), v19 >= v16 == (v19 - v16) < 0) || __CFADD__(a2, v15))
  {
LABEL_37:
    __break(0x5513u);
    return result;
  }

  if (a3 - v15 < 8 || (v20 = (a2 + v15), a2 + v15 > a2 + a3) || v20 < a2 || v19 > v17 || v17 - v19 < 8 || v19 < v16 || (*v19 = *v20, v19 >= v19 + 1))
  {
LABEL_36:
    __break(0x5519u);
    goto LABEL_37;
  }

LABEL_32:
  result = 0;
  if (a5)
  {
    *a5 = v14;
  }

  return result;
}

uint64_t CTDecompressSerialNumber(unsigned int a1, char *a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  *&v30[7] = *MEMORY[0x1E69E9840];
  result = 393218;
  if (a1 <= 159)
  {
    v11 = a1 >= 4;
    v12 = a1 - 4;
    if (!v11)
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v16 = 16;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (a1 - 160 >= 4)
  {
    v12 = a1 - 164;
LABEL_7:
    if (v12 >= 2)
    {
      return result;
    }

    v14 = v28;
    v13 = v30;
    v15 = 45;
    goto LABEL_9;
  }

  v14 = v28;
  v13 = v30;
  v15 = 37;
LABEL_9:
  v16 = 20;
LABEL_10:
  v17 = ccder_sizeof();
  result = 393217;
  if (v15 + v16 > a3)
  {
    return result;
  }

  v29 = -86;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[2] = v18;
  v28[3] = v18;
  v28[0] = v18;
  v28[1] = v18;
  if (!v14)
  {
    if (!__CFADD__(a2, v15))
    {
      v13 = &a2[a3];
      v19 = &a2[v15];
      v14 = a2;
      if (!a4)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

LABEL_38:
    __break(0x5513u);
LABEL_39:
    __break(0x5519u);
    goto LABEL_40;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a2, v15))
  {
    goto LABEL_38;
  }

  if (a3 - v15 < 0x21 || &a2[v15] > &a2[a3] || &a2[v15] < a2)
  {
    goto LABEL_39;
  }

  v26 = &a2[v15];
  v27 = 33;
  result = decompressECPublicKey(&v26, &CTOidSECP256r1, v28, 65);
  v19 = v14;
  if (result)
  {
    return result;
  }

  if (!a4)
  {
    goto LABEL_34;
  }

LABEL_21:
  v20 = *a4;
  v21 = a4[1];
  if (v21 - *a4 < v17)
  {
    return 393220;
  }

  if (v14 > v19 || v20 > v21 || v19 > v13 || v16 > v13 - v19)
  {
    goto LABEL_39;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 393226;
  }

  v22 = ccder_sizeof_tag();
  result = ccder_sizeof_len();
  v23 = v22 + result;
  if (__CFADD__(v22, result))
  {
LABEL_40:
    __break(0x5500u);
    return result;
  }

  v24 = a4[1];
  if (__CFADD__(v24, v23))
  {
    goto LABEL_38;
  }

  v25 = (v24 + v23);
  if (v25 >= v20 == &v25[-v20] < 0)
  {
    goto LABEL_38;
  }

  if (v25 >= v21 || v25 < v20)
  {
    goto LABEL_39;
  }

  *v25 &= ~0x80u;
LABEL_34:
  result = 0;
  if (a5)
  {
    *a5 = v17;
  }

  return result;
}

uint64_t CTDecompressGetSignature(int a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v9 = 393217;
  result = CTNonVariableCompressedSizeForStyle(a1);
  if (result < 0)
  {
    return 393218;
  }

  v11 = result;
  if (result + 70 > a3)
  {
    return v9;
  }

  if (__CFADD__(a2, a3))
  {
    goto LABEL_19;
  }

  v12 = a2 + result;
  if (a2 + result > a2 + a3 || v12 < a2)
  {
LABEL_18:
    __break(0x5519u);
LABEL_19:
    __break(0x5513u);
    goto LABEL_20;
  }

  v14 = a2 + result;
  result = ccder_blob_decode_tl();
  if ((result & 1) == 0)
  {
    return 393225;
  }

  v13 = v14 - v12;
  if (!v13)
  {
    return 393225;
  }

  if (!__CFADD__(v11, v13))
  {
    if (v11 + v13 > a3)
    {
      return v9;
    }

    v9 = 0;
    if (!a4 || !a5)
    {
      return v9;
    }

    if (v13 <= a3 - v11)
    {
      v9 = 0;
      *a4 = v12;
      *a5 = v13;
      return v9;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(0x5500u);
  return result;
}

uint64_t ccder_sizeof_tl(uint64_t a1, uint64_t a2)
{
  v2 = ccder_sizeof_tag();
  v3 = ccder_sizeof_len();
  v4 = __CFADD__(v2, v3);
  result = v2 + v3;
  if (v4)
  {
    __break(0x5500u);
  }

  return result;
}

uint64_t CTDecompressSignature(int a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = 0;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  result = CTDecompressGetSignature(a1, a2, a3, &v15, v16);
  v8 = result;
  if (result)
  {
    return v8;
  }

  if (v16[0] == -1)
  {
    goto LABEL_18;
  }

  v9 = ccder_sizeof();
  v10 = v9;
  if (!a4)
  {
    goto LABEL_15;
  }

  v8 = 393226;
  if (a4[1] - *a4 < v9)
  {
    return 393220;
  }

  result = ccder_blob_encode_body();
  if (!result)
  {
    return v8;
  }

  v11 = a4[1];
  v12 = (v11 - 1);
  if (!v11 || v12 < *a4 || (*v12 = 0, v13 = a4[1], v14 = v13 - 1, !v13) || *a4 > v14)
  {
LABEL_17:
    __break(0x5519u);
  }

  a4[1] = v14;
  if (v16[0] != -1)
  {
    if (!ccder_blob_encode_tl())
    {
      return v8;
    }

LABEL_15:
    v8 = 0;
    if (a5)
    {
      *a5 = v10;
    }

    return v8;
  }

LABEL_18:
  __break(0x5500u);
  return result;
}

uint64_t CTDecompressCAComputeSKID(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a3 + 20 < a3)
  {
    goto LABEL_9;
  }

  if (a1 > 0xFFFFFFFFFFFFFFD2)
  {
    goto LABEL_10;
  }

  if ((a2 - 78) > 0xFFFFFFFFFFFFFFDELL || a1 + 45 < a1 || a1 + 45 > a1 + a2)
  {
LABEL_9:
    __break(0x5519u);
LABEL_10:
    __break(0x5513u);
  }

  v6[0] = a1 + 45;
  v6[1] = 33;
  v8 = -86;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[2] = v3;
  v7[3] = v3;
  v7[0] = v3;
  v7[1] = v3;
  v4 = decompressECPublicKey(v6, &CTOidSECP256r1, v7, 65);
  if (!v4)
  {
    ccsha1_di();
    ccdigest();
  }

  return v4;
}

unint64_t CTConvertByteArrayToAsciiHex(unint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  if (!__CFADD__(result, a2))
  {
    if (a4 != 2 * a2)
    {
      return 393220;
    }

    if (!__CFADD__(a3, a4))
    {
      v4 = 0;
      if (result + a2 > result)
      {
        v5 = &a3[a4];
        if (&a3[a4] > a3)
        {
          v6 = result;
          v7 = a3;
          while (v6 >= result)
          {
            v8 = *v6;
            v9 = &nibbleToAsciiByte[v8 >> 4];
            if (v9 >= "Apple iPhone Certification Authority" || v9 < nibbleToAsciiByte)
            {
              break;
            }

            v11 = &nibbleToAsciiByte[v8 & 0xF];
            v12 = v11 < "Apple iPhone Certification Authority" && v11 >= nibbleToAsciiByte;
            if (!v12 || v7 < a3)
            {
              break;
            }

            v13 = *v11;
            *v7 = *v9;
            v14 = v7 + 1;
            if (v14 == -1)
            {
              goto LABEL_31;
            }

            if (v14 >= v5 || v14 < a3)
            {
              break;
            }

            v4 = 0;
            *v14 = v13;
            v7 = v14 + 1;
            if (++v6 >= result + a2 || v7 >= v5)
            {
              return v4;
            }
          }

          __break(0x5519u);
          goto LABEL_31;
        }
      }

      return v4;
    }
  }

LABEL_31:
  __break(0x5513u);
  return result;
}

unint64_t CTDecompressDate(unint64_t result, unint64_t *a2, unint64_t *a3)
{
  v4 = *result;
  if (v4 < 0x32)
  {
    goto LABEL_2;
  }

  if (v4 != 50)
  {
    goto LABEL_9;
  }

  if (result == -1)
  {
    goto LABEL_29;
  }

  if (*(result + 1) != 48)
  {
    goto LABEL_9;
  }

  if (result > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_29;
  }

  if (*(result + 2) < 0x35u)
  {
LABEL_2:
    v5 = 12;
    v6 = 15;
    v7 = 2;
    if (!a2)
    {
LABEL_25:
      v8 = 0;
      if (a3)
      {
        *a3 = v6;
      }

      return v8;
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
    v5 = 14;
    v6 = 17;
    if (!a2)
    {
      goto LABEL_25;
    }
  }

  v8 = 393226;
  v9 = a2[1];
  if (v9 - *a2 < v6)
  {
    return 393220;
  }

  v10 = (v9 - 1);
  if (v9)
  {
    v11 = v10 >= *a2;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || (*v10 = 90, v12 = a2[1], v13 = v12 - 1, !v12) || *a2 > v13)
  {
LABEL_28:
    __break(0x5519u);
    goto LABEL_29;
  }

  a2[1] = v13;
  if (!__CFADD__(result, v7))
  {
    if (result + v7 <= result + 14 && result + v7 >= result && v5 <= 14 - v7)
    {
      if (!ccder_blob_encode_body() || !ccder_blob_encode_tl())
      {
        return v8;
      }

      goto LABEL_25;
    }

    goto LABEL_28;
  }

LABEL_29:
  __break(0x5513u);
  return result;
}

char *CTCompressGetCommonNameSuffixPointer(unint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (X509CertificateSubjectNameGetCommonName(a1, &v9))
  {
    return 0;
  }

  result = compare_octet_string_partial(&MFi4RootName, &v9);
  if (!result)
  {
    v4 = v9;
    if (v9 < 0xFFFFFFFFFFFFFFE6)
    {
      v6 = v10;
      v3 = v9 + v10;
      result = (v9 + 26);
      goto LABEL_9;
    }

LABEL_23:
    __break(0x5513u);
    return result;
  }

  v2 = &MFi4AccessoryCAName;
  result = compare_octet_string_partial(&MFi4AccessoryCAName, &v9);
  if (result)
  {
    v2 = &MFi4AttestationCAName;
    result = compare_octet_string_partial(&MFi4AttestationCAName, &v9);
    if (result)
    {
      result = 0;
      v3 = 0;
      v4 = 0;
LABEL_18:
      v8 = 1;
      goto LABEL_19;
    }
  }

  v5 = v2[1];
  v4 = v9;
  if (__CFADD__(v9, v5))
  {
    goto LABEL_23;
  }

  v6 = v10;
  v3 = v9 + v10;
  result = &v5[v9];
  if (!&v5[v9])
  {
    goto LABEL_18;
  }

LABEL_9:
  v7 = __CFADD__(v4, v6);
  if (result > 0xFFFFFFFFFFFFFFF7 || v7)
  {
    goto LABEL_23;
  }

  if (v4 + v6 < (result + 8))
  {
    return 0;
  }

  v8 = 0;
LABEL_19:
  if (result > v3 || v4 > result || (((v3 - result) < 8) & ~v8) != 0)
  {
    __break(0x5519u);
    goto LABEL_23;
  }

  return result;
}

uint64_t CTGetGeneralizedTime(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != 13)
  {
    if (v2 != 15)
    {
      return 720909;
    }

    v3 = **result;
    *(a2 + 6) = *(*result + 6);
    *a2 = v3;
    if (a2 + 14 >= a2)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (a2 < 0xFFFFFFFFFFFFFFFELL)
  {
    v5 = *(*result + 8);
    *(a2 + 2) = **result;
    *(a2 + 10) = v5;
    if (a2 + 2 <= a2 + 14 && *(result + 8))
    {
      v4 = 0;
      if (**result >= 0x35u)
      {
        v6 = 49;
      }

      else
      {
        v6 = 50;
      }

      if (**result >= 0x35u)
      {
        v7 = 57;
      }

      else
      {
        v7 = 48;
      }

      *a2 = v6;
      *(a2 + 1) = v7;
      return v4;
    }

LABEL_17:
    __break(0x5519u);
  }

  __break(0x5513u);
  return result;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v5);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v5);
    if (result)
    {
      result = compare_octet_string(&CodeSigningCAName, v5);
      if (result)
      {
        result = compare_octet_string_partial(&MFi4AccessoryCAName, v5);
        if (result)
        {
          result = compare_octet_string_partial(&MFi4AttestationCAName, v5);
          if (result)
          {
            result = compare_octet_string_partial(&MFi4ProvisioningCAName, v5);
            if (result)
            {
              return result;
            }

            v4 = 0x1000000000;
          }

          else
          {
            v4 = 0x800000000;
          }
        }

        else
        {
          v4 = 0x400000000;
        }
      }

      else
      {
        v4 = 0x800000000008;
      }
    }

    else
    {
      v4 = 3840;
    }

    *(a1 + 240) |= v4;
  }

  return result;
}

double X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      goto LABEL_4;
    }

    v6 = 0;
    if (!X509CertificateGetNotBefore(a1, &v6))
    {
      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v4 = timegm(&v5);
      result = difftime(v4, v6);
      if (result < 0.0)
      {
        *(a1 + 240) |= 0x8000000uLL;
LABEL_4:
        if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
        {
          *(a1 + 240) |= 0x1000000000uLL;
        }
      }
    }
  }

  return result;
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > &rsaEncryption;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > &rsaEncryption;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v6, 0, v5);
  if (!result)
  {
    result = compare_octet_string(a1[4], v6);
    if (!result)
    {
      result = compare_octet_string(a1[3], v5);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

uint64_t CTParseAmfiCMS_internal(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, __int128 *))
{
  *(result + 24) = 0;
  if (result + 24 > (result + 32) || (v7 = result, *(result + 32) = result + 24, *result = 4, *(result + 8) = a4, *(result + 96) = *(a5 + 16), *(a2 + 144) = 0u, *(a2 + 160) = 0u, *(a2 + 112) = 0u, *(a2 + 128) = 0u, *(a2 + 80) = 0u, *(a2 + 96) = 0u, *(a2 + 48) = 0u, *(a2 + 64) = 0u, *(a2 + 16) = 0u, *(a2 + 32) = 0u, *a2 = 0u, a2 + 176 < a2) || (*(result + 56) = a2, *(result + 64) = 1, *(a2 + 168) = 327681, *a3 = 0, *(a3 + 8) = 0, a3 + 16 < a3))
  {
    __break(0x5519u);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = *(a5 + 16);
    *(a3 + 12) = *(a5 + 84);
    result = CMSParseContentInfoSignedData(*a5, *(a5 + 8), result);
    if (!result)
    {
      result = CMSParseSignerInfos(v7, a3, a6);
      if (!result)
      {
        return *(a2 + 168);
      }
    }
  }

  return result;
}

uint64_t CTAmfiVerifyCertificateChain(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v2;
  v10[1] = v2;
  v9[7] = v2;
  v9[8] = v2;
  v9[5] = v2;
  v9[6] = v2;
  v9[3] = v2;
  v9[4] = v2;
  v9[1] = v2;
  v9[2] = v2;
  v9[0] = v2;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  result = CTParseAmfiCMS_internal(v11, v9, v13, __b, a1, CTBuildPathForVerifiedIndex);
  if (!result)
  {
    v8 = 0;
    v5 = 0xAAAAAAAAAAAAAA01;
    v4 = xmmword_18895D2E0;
    BYTE1(v5) = *(a1 + 20);
    WORD1(v5) = 0;
    v6 = 0u;
    v7 = 0u;
    result = X509ChainCheckPathWithOptions(29, v10 + 1, &v4, &v8);
    if (result)
    {
      *(a1 + 96) = 0;
      return X509ChainCheckPathWithOptions(29, v10 + 1, 0, 0);
    }

    else
    {
      *(a1 + 96) = v8;
    }
  }

  return result;
}

uint64_t CTBuildPathForVerifiedIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) && *(a1 + 12) != *(a3 + 144))
  {
    return 327710;
  }

  else
  {
    return CMSBuildPath(a1, a2, a3);
  }
}

uint64_t CTVerifyAmfiCertificateChain(uint64_t a1, uint64_t a2, char a3, int a4, void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v7[0] = a1;
  v7[1] = a2;
  LODWORD(v8) = a4;
  BYTE4(v8) = a3;
  result = CTAmfiVerifyCertificateChain(v7);
  if (a5)
  {
    if (!result)
    {
      *a5 = v13;
    }
  }

  return result;
}

char *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &digests[v2 + 8];
    if (result > &digests[v2 + 24])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~digests)
  {
    return &digests[v2];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0;
  if (!result)
  {
    return v5 & 1;
  }

  if (!a2)
  {
    return v5 & 1;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return v5 & 1;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v21 = a5[9];
  v22 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null(&v21);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v25 = 0xAAAAAAAAAAAAAAAALL;
      v26 = -21846;
      v24 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v25) = v13;
      if (&v24 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x1EEE9AC00](result);
          v16 = (&v20 - 4 * v15);
          v17 = 0;
          *&v18 = 0xAAAAAAAAAAAAAAAALL;
          *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v19 = &v16[v17 / 8];
            *v19 = v18;
            *(v19 + 1) = v18;
            v17 += 32;
          }

          while ((v14 & 0x7FFFFFFFFFFFFFE0) != v17);
          if (v16 + 4 <= &v20 && v16 <= v16 + 4)
          {
            *v16 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else if (ccrsa_verify_pkcs1v15_allowshortsigs())
            {
              v5 = 0;
              v23 = 0;
            }

            else
            {
              v5 = v23;
            }

            return v5 & 1;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

unint64_t validateOIDs(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!result)
  {
    return (v5 & 1);
  }

  if (!a2)
  {
    return (v5 & 1);
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return (v5 & 1);
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey_0, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x1EEE9AC00](result);
  v14 = &v17[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v17 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x18CFD9F40]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    if (ccec_verify())
    {
LABEL_29:
      v18 = 0;
    }

LABEL_30:
    v5 = v18;
    return (v5 & 1);
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    return 655366;
  }

  v8 = v7;
  if (v7 >= v7 + 4)
  {
    goto LABEL_20;
  }

  v9 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v9, 3uLL))
  {
    goto LABEL_21;
  }

  v10 = 24 * v9;
  v11 = __CFADD__(v10, 16);
  v12 = v10 + 16;
  if (v11 || v12 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = MEMORY[0x1EEE9AC00](v7);
  v16 = &v19[-2 * v15];
  v17 = 0;
  do
  {
    v18 = &v16[v17 / 8];
    *v18 = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    v17 += 16;
  }

  while ((v14 & 0xFFFFFFFFFFFFFFF0) != v17);
  if (v14 < 0x10)
  {
    __break(1u);
    return result;
  }

  *v16 = v8;
  if (v16 + 2 > v19 || v16 > v16 + 2)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  result = MEMORY[0x18CFD9F40](v8, a1[1], *a1, v16);
  if (!result)
  {
    if (ccec_compressed_x962_export_pub_size() == a4)
    {
      if (!a3 || a4)
      {
        return ccec_compressed_x962_export_pub();
      }

      goto LABEL_20;
    }

    return 393220;
  }

  return result;
}

uint64_t decompressECPublicKey(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = ccec_cp_for_oid(a2);
  if (!v6)
  {
    return 655366;
  }

  if (v6 >= v6 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v7 = *v6;
  if (*v6 >> 61 || !is_mul_ok(8 * v7, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v8 = 24 * v7;
  v9 = __CFADD__(v8, 16);
  v10 = v8 + 16;
  if (v9 || v10 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = MEMORY[0x1EEE9AC00](v6);
  v14 = &v19[-2 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 >= 0x10)
  {
    *v14 = result;
    if (v14 + 2 <= v19 && v14 <= v14 + 2)
    {
      v17 = ccec_compressed_x962_import_pub();
      if (!v17)
      {
        v18 = cczp_bitlen();
        if (v18 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v18 + 7) >> 2) | 1) == a4)
            {
              v17 = 0;
            }

            else
            {
              v17 = 393220;
            }

            ccec_export_pub();
            return v17;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

      return v17;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v27 = a1;
  v28 = &a1[a2];
  v26 = 0;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v7 = ccder_blob_decode_ber_tl(&v27, 0x2000000000000010, &v26 + 1, &v25);
  result = 65537;
  if (v7)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v27, v25))
    {
      goto LABEL_110;
    }

    if (v27 > &v27[v25] || &v27[v25] > v28)
    {
      goto LABEL_108;
    }

    v23 = v27;
    v24 = &v27[v25];
    if (ccder_blob_decode_tl())
    {
      if (v24 < v23 || v25 > v24 - v23)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&pkcs7_signedData_oid, v23, v25))
      {
        return 65539;
      }

      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v23 += v25;
      if (!ccder_blob_decode_ber_tl(&v23, 0xA000000000000000, &v26, &v25))
      {
        return 65540;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v21 = v23;
      v22 = &v23[v25];
      v30 = 0;
      memset(v29, 170, sizeof(v29));
      if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v30 + 1, v29) & 1) == 0)
      {
        return 131073;
      }

      if (__CFADD__(v21, v29[0]))
      {
        goto LABEL_110;
      }

      v9 = 131080;
      if (&v21[v29[0]] != v22)
      {
        return 131082;
      }

      if (!ccder_blob_decode_uint64())
      {
        return 131074;
      }

      v10 = a3[11];
      result = 131092;
      if (v10 <= 4 && ((1 << v10) & 0x1A) != 0)
      {
        if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, 0, 125))
        {
          return 131075;
        }

        v34 = 0;
        v33 = 0;
        if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v34, &v33) & 1) == 0)
        {
          return 131076;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (__CFADD__(v21, v33))
        {
          goto LABEL_110;
        }

        if (v21 > &v21[v33] || &v21[v33] > v22)
        {
          goto LABEL_108;
        }

        v31 = v21;
        v32 = &v21[v33];
        if (!ccder_blob_decode_tl())
        {
          return 131077;
        }

        if (v32 < v31 || v33 > v32 - v31)
        {
          goto LABEL_108;
        }

        if (compare_octet_string_raw(&pkcs7_data_oid, v31, v33))
        {
          return 131078;
        }

        if (__CFADD__(v31, v33))
        {
          goto LABEL_110;
        }

        v11 = &v31[v33];
        if (v31 > &v31[v33] || v11 > v32)
        {
          goto LABEL_108;
        }

        v31 += v33;
        v12 = v34;
        if (v11 != v32 || (v34 & 1) != 0)
        {
          v39 = 0;
          v37 = v32;
          v38 = 0;
          v36 = v11;
          if (ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v39, &v38))
          {
            if ((v12 & 1) == 0)
            {
              if (__CFADD__(v36, v38))
              {
                goto LABEL_110;
              }

              if (&v36[v38] != v32)
              {
                return v9;
              }
            }

            if (v36 > v37)
            {
              goto LABEL_108;
            }

            v31 = v36;
            v32 = v37;
            v35 = 0;
            v15 = v39;
            if (v39 == 1 && !ccder_blob_decode_ber_tl(&v31, 0x2000000000000004, &v35, &v38))
            {
              return 131079;
            }

            v40 = 0;
            if (!ccder_blob_decode_tl())
            {
              return 131090;
            }

            v16 = v31;
            v17 = v32;
            if (v32 < v31)
            {
              goto LABEL_108;
            }

            v18 = v40;
            if (v40 > v32 - v31)
            {
              goto LABEL_108;
            }

            a3[9] = v31;
            a3[10] = v18;
            if (__CFADD__(v16, v18))
            {
LABEL_110:
              __break(0x5513u);
              return 0;
            }

            v19 = &v16[v18];
            if (v19 > v17 || v16 > v19)
            {
              goto LABEL_108;
            }

            v31 = v19;
            if ((ccder_blob_decode_eoc(&v31, v35) & 1) == 0)
            {
              return 131089;
            }
          }

          else
          {
            if (!v12)
            {
              return v9;
            }

            v15 = v39;
          }

          if ((ccder_blob_decode_eoc(&v31, v15 & 1) & 1) == 0)
          {
            return 131088;
          }

          v11 = v31;
        }

        if (v11 > v22 || v21 > v11)
        {
          goto LABEL_108;
        }

        v21 = v11;
        if ((ccder_blob_decode_eoc(&v21, v12) & 1) == 0)
        {
          return 131081;
        }

        v36 = 0xAAAAAAAAAAAAAAAALL;
        v37 = 0xAAAAAAAAAAAAAAAALL;
        if (v21 > v22)
        {
          goto LABEL_108;
        }

        v36 = v21;
        v37 = v22;
        if ((ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v30, v29) & 1) == 0)
        {
          v13 = v21;
          v14 = v22;
          goto LABEL_85;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (!__CFADD__(v36, v29[0]))
        {
          if (v36 > &v36[v29[0]] || &v36[v29[0]] > v37)
          {
            goto LABEL_108;
          }

          v31 = v36;
          v32 = &v36[v29[0]];
          if (!CMSParseImplicitCertificateSet(&v31, a3[1], *a3, a3 + 3, a3 + 2))
          {
            return 131085;
          }

          if (!ccder_blob_decode_eoc(&v31, v30))
          {
            return 131086;
          }

          v13 = v31;
          if (v31 >= v36 != v31 - v36 < 0)
          {
            if (v36 > v31)
            {
              goto LABEL_108;
            }

            v14 = v37;
            if (v31 > v37)
            {
              goto LABEL_108;
            }

            v21 = v31;
            v22 = v37;
LABEL_85:
            if (v13 <= v14)
            {
              v36 = v13;
              v37 = v14;
              if (ccder_blob_eat_ber_inner(&v36, 0xA000000000000001, 0, 125))
              {
                if (v36 > v37)
                {
                  goto LABEL_108;
                }

                v21 = v36;
                v22 = v37;
              }

              if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, &v29[1], 125))
              {
                return 131083;
              }

              if (v29[2] >= v29[1])
              {
                v20 = &v21[-v29[1]];
                if (&v21[-v29[1]] <= v29[2] - v29[1])
                {
                  a3[5] = v29[1];
                  a3[6] = v20;
                  if ((ccder_blob_decode_eoc(&v21, HIBYTE(v30)) & 1) == 0)
                  {
                    return 131084;
                  }

                  if (!ccder_blob_decode_eoc(&v21, v26))
                  {
                    return 65541;
                  }

                  if (v21 <= v24 && v23 <= v21)
                  {
                    v23 = v21;
                    if (ccder_blob_decode_eoc(&v23, HIBYTE(v26)))
                    {
                      if ((a4 & 1) == 0 && v23 != v28)
                      {
                        return 65543;
                      }

                      return 0;
                    }

                    return (v4 + 5);
                  }
                }
              }
            }

LABEL_108:
            __break(0x5519u);
            return (v4 + 5);
          }
        }

        goto LABEL_110;
      }
    }

    else
    {
      return 65538;
    }
  }

  return result;
}

uint64_t ccder_blob_decode_ber_tl(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8)
  {
    if (a2 == 0xAAAAAAAAAAAAAAAALL)
    {
      return ccder_blob_decode_ber_len(a1, a3, a4);
    }
  }

  return result;
}

uint64_t ccder_blob_decode_eoc(unint64_t *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v5 = v4 - 0x5555555555555556;
  if (v4 > v4 - 0x5555555555555556 || v5 > a1[1])
  {
    goto LABEL_12;
  }

  *a1 = v5;
  return 1;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v83 = *MEMORY[0x1E69E9840];
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
    goto LABEL_93;
  }

  v81 = *(a1 + 40);
  v82 = v4 + v3;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (v3)
    {
      return (v48 << 8) + 196616;
    }

    return result;
  }

  v8 = 0;
  v59 = 0;
  v9 = 196871;
  v10 = 256;
  do
  {
    v68 = 0;
    v79 = 0u;
    v80 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    DWORD2(v80) = 327681;
    LOBYTE(v79) = v8 + 1;
    if ((ccder_blob_decode_ber_tl(&v81, 0x2000000000000010, &v68, &v69) & 1) == 0)
    {
      return (v9 - 6);
    }

    v66 = 0xAAAAAAAAAAAAAAAALL;
    v67 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v81, v69))
    {
      goto LABEL_94;
    }

    if (v81 > v81 + v69 || v81 + v69 > v82)
    {
      goto LABEL_93;
    }

    v66 = v81;
    v67 = v81 + v69;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      return (v9 - 5);
    }

    v11 = v66;
    v12 = v67;
    v64 = 0xAAAAAAAAAAAAAAAALL;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v64 = v66;
    v65 = v67;
    v62 = v66;
    v63 = v67;
    if (ccder_blob_decode_tl())
    {
      v13 = v66;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v64;
        v14 = v65;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v58 = 196611;
          return (v58 + v10);
        }

        v13 = v62;
        v14 = v63;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v66 = v13;
      v67 = v14;
    }

    if (__CFADD__(v69, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v69 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v70 + 1) = v11;
    *&v71 = v69 + v13 - v11;
    if (__CFADD__(v13, v69))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v69 || v13 + v69 > v67)
    {
      goto LABEL_93;
    }

    v66 = v13 + v69;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v71 + 1))
    {
      v58 = 196612;
      return (v58 + v10);
    }

    v60 = 0xAAAAAAAAAAAAAAAALL;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v60 = v66;
    v61 = v67;
    if (ccder_blob_decode_tl())
    {
      if (v61 < v60 || v69 > v61 - v60)
      {
        goto LABEL_93;
      }

      *(&v72 + 1) = v60;
      *&v73 = v69;
      if (__CFADD__(v60, v69))
      {
        goto LABEL_94;
      }

      if (v60 + v69 > v61 || v60 > v60 + v69)
      {
        goto LABEL_93;
      }

      v66 = v60 + v69;
      v67 = v61;
    }

    else
    {
      *(&v72 + 1) = 0;
      *&v73 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v73 + 1) & 1) == 0)
    {
      return (v9 - 2);
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      return (v9 - 1);
    }

    if (v67 < v66 || v69 > v67 - v66)
    {
      goto LABEL_93;
    }

    *(&v75 + 1) = v66;
    *&v76 = v69;
    if (__CFADD__(v66, v69))
    {
      goto LABEL_94;
    }

    v15 = v66 + v69;
    if (v66 + v69 > v67 || v66 > v15)
    {
      goto LABEL_93;
    }

    v66 += v69;
    v60 = v15;
    v61 = v67;
    if (ccder_blob_eat_ber_inner(&v60, 0xA000000000000001, 0, 125))
    {
      if (v60 > v61)
      {
        goto LABEL_93;
      }

      v66 = v60;
      v67 = v61;
    }

    if (!ccder_blob_decode_eoc(&v66, v68))
    {
      return v9;
    }

    digest = find_digest(&v71 + 8);
    if (digest)
    {
      v17 = digest;
      v18 = *(a1 + 96);
      if (!v18 || *digest <= v18)
      {
        result = a3(a2, a1, &v70);
        if (result != 327710)
        {
          if (result)
          {
            return result;
          }

          v20 = *(a1 + 64);
          if (v20 <= v59)
          {
            if (v20)
            {
              v32 = *(a1 + 56);
              v33 = 176 * v59 - 176;
              if (__CFADD__(v32, v33))
              {
                goto LABEL_94;
              }

              v34 = v32 + v33;
              if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
              {
                goto LABEL_93;
              }

              v35 = find_digest(v34 + 24);
              if (v35)
              {
                if (*v17 > *v35)
                {
                  v36 = *(a1 + 96);
                  if (!v36 || *v17 <= v36)
                  {
                    v37 = *(a1 + 56);
                    if (__CFADD__(v37, v33))
                    {
                      goto LABEL_94;
                    }

                    v38 = 176 * *(a1 + 64);
                    if ((v38 - v33) < 0xB0)
                    {
                      goto LABEL_93;
                    }

                    v39 = (v37 + v33);
                    if (v37 + v33 > v37 + v38)
                    {
                      goto LABEL_93;
                    }

                    if (v37 > v39)
                    {
                      goto LABEL_93;
                    }

                    v40 = v70;
                    v41 = v72;
                    v39[1] = v71;
                    v39[2] = v41;
                    *v39 = v40;
                    v42 = v73;
                    v43 = v74;
                    v44 = v76;
                    v39[5] = v75;
                    v39[6] = v44;
                    v39[3] = v42;
                    v39[4] = v43;
                    v45 = v77;
                    v46 = v78;
                    v47 = v80;
                    v39[9] = v79;
                    v39[10] = v47;
                    v39[7] = v45;
                    v39[8] = v46;
                    if (v39 >= v39 + 11)
                    {
                      goto LABEL_93;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v21 = *(a1 + 96);
            if (!v21 || *v17 <= v21)
            {
              v22 = *(a1 + 56);
              if (__CFADD__(v22, 176 * v59))
              {
                goto LABEL_94;
              }

              if (176 * (v20 - v59) < 0xB0)
              {
                goto LABEL_93;
              }

              v23 = (v22 + 176 * v59);
              v24 = v70;
              v25 = v72;
              v23[1] = v71;
              v23[2] = v25;
              *v23 = v24;
              v26 = v73;
              v27 = v74;
              v28 = v76;
              v23[5] = v75;
              v23[6] = v28;
              v23[3] = v26;
              v23[4] = v27;
              v29 = v77;
              v30 = v78;
              v31 = v80;
              v23[9] = v79;
              v23[10] = v31;
              v23[7] = v29;
              v23[8] = v30;
              if (v23 >= v23 + 11)
              {
                goto LABEL_93;
              }

              if (v59 == 0xFF)
              {
                __break(0x5507u);
                return result;
              }

              ++v59;
            }
          }
        }
      }
    }

    if (v66 > v82 || v81 > v66)
    {
      goto LABEL_93;
    }

    v81 = v66;
    v48 = v8 + 1;
    if (v8 > 6)
    {
      break;
    }

    v10 += 256;
    v9 = (v9 + 256);
    ++v8;
  }

  while (v66 < v82);
  if (v66 == v82)
  {
    if (v59)
    {
      return 0;
    }

    if (!*(a1 + 64))
    {
      return 0;
    }

    v49 = *(a1 + 56);
    v50 = v70;
    v51 = v72;
    v49[1] = v71;
    v49[2] = v51;
    *v49 = v50;
    v52 = v73;
    v53 = v74;
    v54 = v76;
    v49[5] = v75;
    v49[6] = v54;
    v49[3] = v52;
    v49[4] = v53;
    v55 = v77;
    v56 = v78;
    v57 = v80;
    v49[9] = v79;
    v49[10] = v57;
    v49[7] = v55;
    v49[8] = v56;
    if (v49 < v49 + 11)
    {
      return 0;
    }

LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  return (v48 << 8) + 196616;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v19 = a3[1];
  v20 = v5;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      return 524298;
    }

    v17[2] = 0xAAAAAAAAAAAAAAAALL;
    v17[3] = 0xAAAAAAAAAAAAAAAALL;
    v17[0] = v3;
    v17[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v19;
      v12 = v20;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        return 524294;
      }

      v11 = v17[0];
      v12 = v17[1];
      if (v17[0] > v17[1])
      {
        goto LABEL_54;
      }

      v19 = v17[0];
      v20 = v17[1];
    }

    if (v12 < v11 || v18 > v12 - v11)
    {
      goto LABEL_54;
    }

    v17[2] = v11;
    v17[3] = v18;
    if (__CFADD__(v11, v18))
    {
      goto LABEL_55;
    }

    if (v11 + v18 > v12 || v11 > v11 + v18)
    {
      goto LABEL_54;
    }

    v19 = v11 + v18;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v17[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      return 524295;
    }

LABEL_38:
    if (v19 != v20)
    {
      return 524543;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        return v8;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 != 1)
  {
    return 524289;
  }

  v8 = 524290;
  memset(v17, 170, sizeof(v17));
  if (ccder_blob_decode_tl())
  {
    if (ccder_blob_decode_tl())
    {
      if (v20 < v19 || v18 > v20 - v19)
      {
        goto LABEL_54;
      }

      v17[0] = v19;
      v17[1] = v18;
      if (__CFADD__(v19, v18))
      {
        goto LABEL_55;
      }

      if (v19 + v18 > v20 || v19 > v19 + v18)
      {
        goto LABEL_54;
      }

      v19 += v18;
      if (ccder_blob_decode_tl())
      {
        if (v20 < v19 || v18 > v20 - v19)
        {
          goto LABEL_54;
        }

        v17[2] = v19;
        v17[3] = v18;
        if (__CFADD__(v19, v18))
        {
          goto LABEL_55;
        }

        if (v19 + v18 > v20)
        {
          goto LABEL_54;
        }

        if (v19 > v19 + v18)
        {
          goto LABEL_54;
        }

        v19 += v18;
        v9 = (a2 + 24);
        if (a2 + 24 > (a2 + 40))
        {
          goto LABEL_54;
        }

        CertificateUsingKeyIdentifier = *v9;
        if (*v9)
        {
          while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
          {
            if (!compare_octet_string(v17, (CertificateUsingKeyIdentifier + 15)))
            {
              if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
              {
                goto LABEL_54;
              }

              if (!compare_octet_string(&v17[2], (CertificateUsingKeyIdentifier + 17)))
              {
                goto LABEL_38;
              }
            }

            CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
            if (!CertificateUsingKeyIdentifier)
            {
              return 524293;
            }
          }

          goto LABEL_54;
        }

        return 524293;
      }

      else
      {
        return 524292;
      }
    }

    else
    {
      return 524291;
    }
  }

  return v8;
}

uint64_t ccder_blob_decode_ber_len(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t CMSParseImplicitCertificateSet(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v31[3] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v31, 170, 24), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_47:
    __break(0x5519u);
LABEL_48:
    __break(0x5513u);
  }

  v31[0] = *a1;
  v31[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v26 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v30 = 0;
      if (!ccder_blob_decode_tag())
      {
        return 0;
      }

      if (!v31[2])
      {
        goto LABEL_9;
      }

      if (!ccder_blob_decode_ber_len(v31, &v30, &v29) || (v30 & 1) != 0 || v31[2] != 0x2000000000000010)
      {
        return 0;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v26)
      {
        goto LABEL_48;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_47;
      }

      if (v16 < a2)
      {
        goto LABEL_47;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_47;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_47;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_47;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_47;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_47;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_47;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v31, 0, 0))
      {
        return 0;
      }

      v23 = v31[0];
      v24 = v31[0] - v6;
      if (v31[0] - v6 > v7 - v6)
      {
        goto LABEL_47;
      }

      if (v15 > v13)
      {
        goto LABEL_47;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v31[1];
      if (v23 > v31[1])
      {
        goto LABEL_47;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  return 1;
}

uint64_t ccder_blob_eat_ber_inner(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && v14 == a2)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    result = ccder_blob_decode_ber_len(a1, &v15, &v13);
    if ((result & 1) == 0)
    {
      return 0;
    }

    if (a3)
    {
      v10 = a1[1];
      if (*a1 > v10)
      {
        goto LABEL_18;
      }

      *a3 = *a1;
      a3[1] = v10;
    }

    if (v15 == 1)
    {
      if (a4 >= 1)
      {
        result = ccder_blob_eat_ber_inner(a1, 0, 0, (a4 - 1));
        if (!result)
        {
          return result;
        }

        return (ccder_blob_decode_eoc(a1, 1) & 1) != 0;
      }

      return 0;
    }

    v11 = *a1;
    if (__CFADD__(*a1, v13))
    {
LABEL_19:
      __break(0x5513u);
      return result;
    }

    v12 = v11 + v13;
    if (v11 <= v11 + v13 && v12 <= a1[1])
    {
      *a1 = v12;
      return 1;
    }

LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v5 = *a1;
    v6 = *a1;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      if (v6 < v5)
      {
        goto LABEL_20;
      }

      *a2 = v5;
      a2[1] = 0;
    }

    if (v5 == v6)
    {
      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

    else if (v5 <= v6)
    {
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return result;
      }

      if (v5 != v6)
      {
        return 0;
      }

      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

LABEL_20:
    __break(0x5519u);
  }

  return result;
}

uint64_t ccder_blob_decode_Time(unint64_t *a1, unint64_t *a2)
{
  if (*a1 > a1[1])
  {
    goto LABEL_6;
  }

  if (ccder_blob_decode_tl())
  {
    return 0;
  }

  if (*a1 > a1[1])
  {
LABEL_6:
    __break(0x5519u);
  }

  ccder_blob_decode_tl();
  return 0;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v10[0] = a1;
  v10[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v11, v10, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v12 + 1))
    {
      v9 = v13;
      if (v13)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v12 + 1);
            *a6 = v9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v68 = 0;
  v69 = 0;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v66 = *a2;
  v67 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return v10;
  }

  v12 = v69;
  v13 = v66;
  v14 = v69 + v66 - v4;
  if (__CFADD__(v69, v66 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v67)
  {
    goto LABEL_189;
  }

  v64 = v13;
  v65 = v15;
  v62 = v13;
  v63 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v62, v68))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v62 != v62 + v68)
    {
      return 720916;
    }

    if (v62 + v68 > v63)
    {
      goto LABEL_189;
    }

    v64 = v62;
    v65 = v63;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720917;
  }

  v16 = v64;
  v17 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v18 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v64;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v64 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v64, (a1 + 152)))
  {
    return 720918;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720919;
  }

  v20 = v64;
  v21 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v22 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v64;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v64 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720920;
  }

  v24 = v64;
  v25 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v26 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v64;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v64 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720921;
  }

  v28 = v64;
  v29 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v30 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v64;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v64 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720922;
  }

  v32 = v64;
  v33 = v68;
  v34 = v64 - v31 + v68;
  if (__CFADD__(v64 - v31, v68))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v65)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v35;
  v62 = v35;
  if (ccder_blob_decode_tl())
  {
    return 720923;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  if (ccder_blob_decode_tl())
  {
    return 720924;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v64 != v65)
      {
        return v10;
      }
    }

    else
    {
      if (v65 > a2[1] || *a2 > v65)
      {
        goto LABEL_189;
      }

      *a2 = v65;
    }

    if (!__CFADD__(v66, v69))
    {
      if (v66 > v66 + v69 || v66 + v69 > v67)
      {
        goto LABEL_189;
      }

      v66 += v69;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, (a1 + 40)))
      {
        return 720937;
      }

      *&v70[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v70[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        return 720938;
      }

      if (v60 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v70[0] + 1) >= *&v70[0])
        {
          v51 = (v60 + 7) >> 3;
          if (v51 <= *(&v70[0] + 1) - *&v70[0])
          {
            *(a1 + 56) = *&v70[0];
            *(a1 + 64) = v51;
            v52 = v67;
            if (v66 <= v67)
            {
              v10 = 0;
              *a2 = v66;
              a2[1] = v52;
              return v10;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v62, v68))
  {
    goto LABEL_190;
  }

  if (v62 > v62 + v68 || v62 + v68 > v63)
  {
    goto LABEL_189;
  }

  v60 = v62;
  v61 = v62 + v68;
  result = ccder_blob_decode_tl();
  if (!result || !v68)
  {
    return 720925;
  }

  v36 = v60;
  if (__CFADD__(v60, v68))
  {
    goto LABEL_190;
  }

  v37 = v60 + v68;
  if (v60 > v60 + v68 || v37 > v61)
  {
    goto LABEL_189;
  }

  v61 = v60 + v68;
  *(a1 + 266) = 0;
  memset(&v70[2], 0, 128);
  if (a3)
  {
    v38 = a4 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  memset(v70, 0, 32);
  if (v36 >= v37)
  {
LABEL_162:
    if (v36 != v37)
    {
      return 720925;
    }

    if (v36 > v65 || v64 > v36)
    {
LABEL_189:
      __break(0x5519u);
    }

    v64 = v37;
    goto LABEL_167;
  }

  v53 = 0;
  v40 = 0;
  while (1)
  {
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0;
    v56 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
      return 720926;
    }

    v54 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    if (v60 > v60 + v56 || v60 + v56 > v61)
    {
      goto LABEL_189;
    }

    v54 = v60;
    v55 = v60 + v56;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720927;
    }

    if (v55 < v54 || v68 > v55 - v54)
    {
      goto LABEL_189;
    }

    v58 = v54;
    v59 = v68;
    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v54 + v68 > v55 || v54 > v54 + v68)
    {
      goto LABEL_189;
    }

    v54 += v68;
    if (!der_get_BOOLean(&v54, 1, &v57))
    {
      return 720928;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720929;
    }

    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v55 != v54 + v68)
    {
      return 720929;
    }

    if (v39)
    {
      result = compare_octet_string_raw(&v58, a3, a4);
      if (!result)
      {
        if (v55 < v54)
        {
          goto LABEL_189;
        }

        v42 = v68;
        if (v68 > v55 - v54)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v54;
        *(a1 + 256) = v42;
      }
    }

    if (v59 == 3)
    {
      if (*v58 == 7509 && *(v58 + 2) == 15)
      {
        v49 = 720930;
        if (v40)
        {
          return v49;
        }

        result = X509ExtensionParseKeyUsage(&v54, (a1 + 264));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 1u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 19)
      {
        v49 = 720931;
        if ((v40 & 2) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseBasicConstraints(&v54, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 2u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 35)
      {
        v49 = 720932;
        if ((v40 & 4) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v54, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 4u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 14)
      {
        v49 = 720933;
        if ((v40 & 8) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v54, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 8u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 37)
      {
        v49 = 720934;
        if ((v40 & 0x10) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v54, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x10u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 17)
      {
        v49 = 720935;
        if ((v40 & 0x20) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectAltName(&v54, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v54, v68))
      {
        goto LABEL_190;
      }

      if (v54 > v54 + v68 || v54 + v68 > v55)
      {
        goto LABEL_189;
      }

      v54 += v68;
      if (v57)
      {
        *(a1 + 266) = v57;
      }

      goto LABEL_157;
    }

    if (v59 < 8)
    {
      goto LABEL_133;
    }

    if (*v58 != -2042067414 || *(v58 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v49 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v58, v70, v53))
    {
      return v49;
    }

    result = X509ExtensionParseAppleExtension(&v54, v58, v59, (a1 + 240), (a1 + 248), v39);
    if (!result)
    {
      return v49;
    }

    if (v53 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v53;
LABEL_157:
    if (v54 != v55)
    {
      return 720926;
    }

    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    v36 = v60 + v56;
    if (v60 > v60 + v56)
    {
      goto LABEL_189;
    }

    v37 = v61;
    if (v36 > v61)
    {
      goto LABEL_189;
    }

    v60 += v56;
    if (v36 >= v61)
    {
      goto LABEL_162;
    }
  }
}

uint64_t der_get_BOOLean(unint64_t *a1, int a2, BOOL *a3)
{
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t X509ExtensionParseKeyUsage(uint64_t a1, _BYTE *a2)
{
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    return 0;
  }

  return result;
}

uint64_t X509ExtensionParseBasicConstraints(unint64_t *a1, unint64_t *a2, BOOL *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      if (!ccder_blob_decode_uint64())
      {
        return 1;
      }

      if (*a3)
      {
        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_15;
    }

    if (v7 - 0x5555555555555556 != a1[1])
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_16;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v10;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
LABEL_15:
      __break(0x5513u);
    }

    else
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        return 1;
      }
    }

LABEL_16:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = a1[1];
    v8 = v7 >= *a1;
    v9 = v7 - *a1;
    if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v11 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v12 = v11 - 0x5555555555555556;
    if (v11 > v11 - 0x5555555555555556 || v12 > a1[1])
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v12;
  }

  return result;
}

uint64_t X509ExtensionParseExtendedKeyUsage(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (v6)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_11;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_11;
    }

    *a2 = v10;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v9 = v8 - 0x5555555555555556;
    if (v8 > v8 - 0x5555555555555556 || v9 > a1[1])
    {
LABEL_11:
      __break(0x5519u);
    }

    *a1 = v9;
  }

  return result;
}

uint64_t X509ExtensionParseSubjectAltName(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result == 1)
  {
    v7 = a1[1];
    v8 = v7 >= *a1;
    v9 = v7 - *a1;
    if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v11 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v12 = v11 - 0x5555555555555556;
    if (v11 > v11 - 0x5555555555555556 || v12 > a1[1])
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v12;
  }

  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, int a6)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    a5 = 0;
  }

  switch(a3)
  {
    case 9uLL:
      if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
      {

        return X509ExtensionParseComponentAuth(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
      {
        v57 = 0;
        result = der_get_BOOLean(result, 0, &v57);
        if (result)
        {
          v56 = 0x20000040001;
          if (v57)
          {
            v56 = 0x10000080002;
          }

          *a4 |= v56;
        }

        return result;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
      {

        return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
      {

        return X509ExtensionParseMFIAuthv3Leaf(result, a4, a5);
      }

      if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
      {
        if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
        {
          result = ccder_blob_check_null(result);
          if (!result)
          {
            return result;
          }

          v14 = *a4 | 0x8000000000;
        }

        else
        {
          if (*a2 == 0xA6463F78648862ALL && *(a2 + 8) == 1)
          {
            *a4 |= 0x1000000uLL;
            goto LABEL_249;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000;
          }

          else
          {
            if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
            {
              if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
              {
                goto LABEL_249;
              }

              return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
            }

            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000;
          }
        }

LABEL_282:
        *a4 = v14;
        return 1;
      }

      result = ccder_blob_check_null(result);
      if (!result)
      {
        return result;
      }

      v54 = *a4;
      v55 = 1048584;
      goto LABEL_204;
    case 0xAuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x800000100000;
      }

      else
      {
        if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 258)
        {
          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
          {
            goto LABEL_214;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0xF00;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x800000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
          {
LABEL_214:
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x40;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x100;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x400;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x1000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
          {

            return X509ExtensionParseMFISWAuth(result, a4, a5);
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x300000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
          {

            return X509ExtensionParseGenericSSLMarker(result, a4, a5);
          }

          v35 = 1;
          goto LABEL_165;
        }

        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x58600003F0D0;
      }

LABEL_204:
      v14 = v54 | v55;
      goto LABEL_282;
    case 0xBuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x400000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x200;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x800;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x2000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x100000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x4000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x21901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x8000;
        goto LABEL_282;
      }

      break;
    default:
      if (a3 < 0xA)
      {
        goto LABEL_249;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_288;
      }

      break;
  }

  v35 = 0;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v14 = *a4 | 0x400000;
    goto LABEL_282;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 0x8004000000;
    goto LABEL_204;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3841)
    {
      v53 = *result;
      v52 = *(result + 8);
      if (a5)
      {
        if (v53 > v52)
        {
          goto LABEL_288;
        }

        *a5 = v53;
        a5[1] = v52 - v53;
      }

      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

LABEL_249:
    v53 = *result;
    v52 = *(result + 8);
LABEL_250:
    if (v53 <= v52)
    {
      *result = v52;
      return 1;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    return v8;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    return v8;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    return 0;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseSPKI(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
    goto LABEL_31;
  }

  v6 = v4 + v5;
  if (v4 > v6)
  {
    goto LABEL_30;
  }

  v10 = 655361;
  v14 = *a1;
  v15 = v6;
  if (!ccder_blob_decode_tl())
  {
    return v10;
  }

  if (!ccder_blob_decode_tl())
  {
    return 655363;
  }

  if (v14 >= 0x5555555555555556)
  {
LABEL_31:
    __break(0x5513u);
  }

  if (v14 > v14 - 0x5555555555555556 || v14 - 0x5555555555555556 > v15)
  {
    goto LABEL_30;
  }

  v13 = v14 - 0x5555555555555556;
  if (!ccder_blob_decode_tl())
  {
    return 655362;
  }

  if (a2)
  {
    if (v13 >= v14)
    {
      *a2 = v14;
      a2[1] = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_12;
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

LABEL_12:
  v11 = v14 - 0x5555555555555556;
  if (v14 > v14 - 0x5555555555555556 || v11 > v13)
  {
    goto LABEL_30;
  }

  if (v11 == v13)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v11;
    a3[1] = v13 - v11;
  }

  if (v13 > v15 || v14 > v13)
  {
    goto LABEL_30;
  }

  if (!ccder_blob_decode_bitstring())
  {
    return 655364;
  }

  *a4 = 0;
  a4[1] = 0;
  if (v13 == v15)
  {
    return 0;
  }

  else
  {
    return 655365;
  }
}

uint64_t X509CertificateCheckSignatureDigest(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v15 = 0uLL;
  v13 = 0;
  v14 = 0;
  if (a2 + 88 > (a2 + 104))
  {
    goto LABEL_22;
  }

  v7 = X509CertificateParseSPKI((a2 + 88), &v16, &v15, &v13);
  if (!v7)
  {
    v7 = 655632;
    v9 = compare_octet_string(&v16, &rsaEncryption);
    v10 = validateSignatureRSA;
    if (v9)
    {
      v11 = compare_octet_string(&v16, &ecPublicKey_0);
      v10 = validateSignatureEC;
      if (v11)
      {
        return 655617;
      }
    }

    if (v12 = v10, (a1) && !compare_octet_string_raw(a4, &CTOidSha1, 5uLL) || (a1 & 4) != 0 && !compare_octet_string_raw(a4, &CTOidSha256, 9uLL) || (a1 & 8) != 0 && !compare_octet_string_raw(a4, &CTOidSha384, 9uLL) || (a1 & 0x10) != 0 && !compare_octet_string_raw(a4, &CTOidSha512, 9uLL))
    {
      if ((v14 || !v13) && (a3[1] || !*a3))
      {
        if (v12(v13))
        {
          return 0;
        }

        else
        {
          return 655648;
        }
      }

LABEL_22:
      __break(0x5519u);
    }
  }

  return v7;
}

uint64_t X509CertificateCheckSignature(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v6;
  v10[3] = v6;
  v10[0] = v6;
  v10[1] = v6;
  v9[0] = v10;
  v9[1] = 64;
  v8[0] = 0;
  v8[1] = 0;
  result = X509MatchSignatureAlgorithm(a3, a4, v9, v8, v10);
  if (!result)
  {
    return X509CertificateCheckSignatureDigest(a1, a2, v9, v8);
  }

  return result;
}

uint64_t X509MatchSignatureAlgorithm(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = compare_octet_string_raw(a2, &sha1WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_8;
  }

  result = compare_octet_string_raw(a2, &sha256WithRSA_oid, 9uLL);
  if (!result)
  {
LABEL_10:
    *a4 = &CTOidSha256;
    a4[1] = 9;
    if (*(a3 + 8) < 0x20uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 32;
    ccsha256_di();
    goto LABEL_14;
  }

  result = compare_octet_string_raw(a2, &sha384WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  result = compare_octet_string_raw(a2, &sha1WithECDSA_oid, 7uLL);
  if (!result)
  {
LABEL_8:
    *a4 = &CTOidSha1;
    a4[1] = 5;
    if (*(a3 + 8) < 0x14uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 20;
    ccsha1_di();
LABEL_14:
    ccdigest();
    return 0;
  }

  result = compare_octet_string_raw(a2, &sha256WithECDSA_oid, 8uLL);
  if (!result)
  {
    goto LABEL_10;
  }

  result = compare_octet_string_raw(a2, &sha384WithECDSA_oid, 8uLL);
  if (result)
  {
    return 656640;
  }

LABEL_12:
  *a4 = &CTOidSha384;
  a4[1] = 9;
  if (*(a3 + 8) >= 0x30uLL)
  {
    *(a3 + 8) = 48;
    ccsha384_di();
    goto LABEL_14;
  }

LABEL_15:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureWithPublicKey(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[2] = v7;
  v16[3] = v7;
  v16[0] = v7;
  v16[1] = v7;
  v14 = v16;
  v15 = 64;
  v13 = 0uLL;
  matched = X509MatchSignatureAlgorithm(a4, a5, &v14, &v13, v16);
  if (matched)
  {
    return matched;
  }

  matched = 655617;
  v9 = compare_octet_string(a2, &rsaEncryption);
  v10 = validateSignatureRSA;
  if (v9)
  {
    v11 = compare_octet_string(a2, &ecPublicKey_0);
    v10 = validateSignatureEC;
    if (v11)
    {
      return matched;
    }
  }

  result = *a1;
  if ((a1[1] || !result) && (!v14 || v15))
  {
    if (v10(result))
    {
      return 0;
    }

    else
    {
      return 655648;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateSubjectNameGetCommonName(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v20 = v3;
  if (__CFADD__(*a1, v3))
  {
    goto LABEL_61;
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_60;
  }

  v18 = *a1;
  v19 = v4;
  *a2 = 0;
  a2[1] = 0;
  if (a2 + 2 < a2)
  {
    goto LABEL_60;
  }

  v6 = 720901;
  if (v2 < v4)
  {
    while (1)
    {
      if (!ccder_blob_decode_tl() || !v20)
      {
        return 720898;
      }

      v2 = v18;
      if (__CFADD__(v18, v20))
      {
        break;
      }

      v7 = v18 + v20;
      if (v18 > v18 + v20 || v7 > v19)
      {
        goto LABEL_60;
      }

      v16 = v18;
      v17 = v18 + v20;
      while (v2 < v7)
      {
        if (!ccder_blob_decode_tl())
        {
          return 720899;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20 || v16 + v20 > v17)
        {
          goto LABEL_60;
        }

        v15 = v16 + v20;
        if (!ccder_blob_decode_tl())
        {
          return 720900;
        }

        v2 = v16 + v20;
        if (v16 > v15)
        {
          goto LABEL_60;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20)
        {
          goto LABEL_60;
        }

        v14 = v16 + v20;
        if (v20 == 3 && *v16 == 1109 && *(v16 + 2) == 3)
        {
          v12 = v16 + v20;
          v13 = v16 + v20;
          if ((ccder_blob_decode_tl() & 1) == 0)
          {
            if (v14 > v15)
            {
              goto LABEL_60;
            }

            v12 = v16 + v20;
            v13 = v16 + v20;
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              if (v14 > v15)
              {
                goto LABEL_60;
              }

              v12 = v16 + v20;
              v13 = v16 + v20;
              if (!ccder_blob_decode_tl())
              {
                return v6;
              }
            }
          }

          if (__CFADD__(v12, v20))
          {
            goto LABEL_61;
          }

          v2 = v16 + v20;
          if (v15 != v12 + v20)
          {
            return 720902;
          }

          if (v13 < v12 || v20 > v13 - v12)
          {
            goto LABEL_60;
          }

          *a2 = v12;
          a2[1] = v20;
        }

        v7 = v18 + v20;
        if (v2 > v17 || v16 > v2)
        {
          goto LABEL_60;
        }

        v16 = v2;
      }

      if (v2 != v7)
      {
        return 720903;
      }

      v4 = v19;
      if (v2 > v19 || v18 > v2)
      {
        goto LABEL_60;
      }

      v18 = v2;
      if (v2 >= v19)
      {
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(0x5513u);
  }

LABEL_47:
  if (v2 == v4)
  {
    if (a2[1] && *a2)
    {
      return 0;
    }

    *a2 = 0;
    a2[1] = 0;
    if (a2 + 2 >= a2)
    {
      return 720905;
    }

LABEL_60:
    __break(0x5519u);
    goto LABEL_61;
  }

  return 720904;
}

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
    return X509TimeConvert(v4, a2);
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
    return X509TimeConvert(v4, a2);
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

unint64_t X509TimeConvert(void *a1, time_t *a2)
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

BOOL X509ExtensionParseComponentAuth(unint64_t *a1, void *a2, unint64_t *a3)
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

uint64_t X509ExtensionParseCertifiedChipIntermediate(unint64_t *a1, unint64_t *a2, unint64_t *a3)
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

uint64_t X509ExtensionParseMFIAuthv3Leaf(unint64_t *a1, void *a2, unint64_t *a3)
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

uint64_t X509ExtensionParseMFISWAuth(unint64_t *a1, void *a2, unint64_t *a3)
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

uint64_t X509ExtensionParseServerAuthMarker(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
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

uint64_t X509ExtensionParseDeviceAttestationIdentity(unint64_t *a1, void *a2, unint64_t *a3)
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

unint64_t *X509ExtensionParseMFI4Properties(unint64_t *result, void *a2, unint64_t *a3)
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

        if (X509ChainGetAppleRootUsingKeyIdentifier(v6 + 168, 1))
        {
          return 0;
        }

        BAARootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier(v6 + 168);
        if (a4)
        {
          v16 = 0;
        }

        else
        {
          v16 = 524296;
        }

        if (BAARootUsingKeyIdentifier)
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

unint64_t X509ChainGetAppleRootUsingKeyIdentifier(unint64_t result, int a2)
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

unint64_t X509ChainGetBAARootUsingKeyIdentifier(unint64_t result)
{
  v1 = numBAARoots;
  if (numBAARoots)
  {
    v2 = result;
    for (i = &BAARoots; ; ++i)
    {
      v4 = i + 1;
      v5 = i < &BAARoots || v4 > &AppleRootCASPKI;
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

      result = X509CertificateCheckSignature(a1, v15, (v8 + 16), v8 + 40);
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
          if (X509CertificateCheckSignatureWithPublicKey(*(a3 + 24), *(a3 + 32), *(a3 + 40), (v27 + 16), v27 + 40))
          {
LABEL_82:
            v31 = 589832;
            return v26 | v31;
          }
        }

        else if (!compare_octet_string(*(a3 + 32), &ecPublicKey_0))
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

  v43 = (v27 + 16);
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

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
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
  v9[2] = *MEMORY[0x1E69E9840];
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

void sub_18881EADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void LKAReportKeychainUpgradeOutcome(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[(SFAnalytics *)LocalKeychainAnalytics];
  [v7 reportKeychainUpgradeFrom:a1 to:a2 outcome:a3 error:0];

  objc_autoreleasePoolPop(v6);
}

void LKAReportKeychainUpgradeOutcomeWithError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = +[(SFAnalytics *)LocalKeychainAnalytics];
  [v9 reportKeychainUpgradeFrom:a1 to:a2 outcome:a3 error:a4];

  objc_autoreleasePoolPop(v8);
}

void LKABackupReportStart(int a1, int a2, char a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else if (a1 && (a2 & 1) != 0)
  {
    v3 = 3;
  }

  else
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    if (a1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v4;
    }
  }

  v5 = objc_autoreleasePoolPush();
  v6 = +[(SFAnalytics *)LocalKeychainAnalytics];
  [v6 reportKeychainBackupStartWithType:v3];

  objc_autoreleasePoolPop(v5);
}

void LKABackupReportEnd(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[(SFAnalytics *)LocalKeychainAnalytics];
  [v5 reportKeychainBackupEnd:a1 error:a2];

  objc_autoreleasePoolPop(v4);
}

void LKAForceClose()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[(SFAnalytics *)LocalKeychainAnalytics];
  [v1 removeState];

  objc_autoreleasePoolPop(v0);
}

unint64_t __sec_experiment_host_hash_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v6.tv_sec = 0;
  v6.tv_nsec = 0;
  memset(uu, 0, sizeof(uu));
  result = gethostuuid(uu, &v6);
  if (result)
  {
    sec_experiment_host_hash_onceToken = 0;
  }

  else
  {
    uuid_unparse(uu, &sec_experiment_host_hash_hostuuid);
    result = strlen(&sec_experiment_host_hash_hostuuid);
    v1 = 0;
    if (result)
    {
      v2 = &sec_experiment_host_hash_hostuuid;
      v3 = 1;
      do
      {
        v4 = *v2++;
        v1 = v4 - v1 + 32 * v1;
      }

      while (result > v3++);
      v1 %= 0x65u;
    }

    sec_experiment_host_hash_hash = v1;
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

SecExpConcrete_sec_experiment *sec_experiment_create(uint64_t a1)
{
  v2 = [SecExpConcrete_sec_experiment alloc];

  return [(SecExpConcrete_sec_experiment *)v2 initWithName:a1];
}

uint64_t sec_experiment_copy_configuration(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 copyExperimentConfiguration];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 configurationData];
      if (([v2 isSamplingDisabled] & 1) != 0 || objc_msgSend(v4, "isSampled"))
      {
        v6 = _CFXPCCreateXPCObjectFromCFObject();
      }

      else
      {
        v7 = sec_experiment_copy_log_handle();
        v8 = v7;
        if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v9 = [v2 name];
          v10 = [v4 identifier];
          v12 = 136446466;
          v13 = v9;
          v14 = 2082;
          v15 = [v10 UTF8String];
          _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_INFO, "Configuration '%{public}s' for experiment '%{public}s' not sampled to run", &v12, 0x16u);
        }

        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sec_experiment_copy_log_handle()
{
  if (sec_experiment_copy_log_handle_onceToken != -1)
  {
    dispatch_once(&sec_experiment_copy_log_handle_onceToken, &__block_literal_global_173);
  }

  v1 = sec_experiment_copy_log_handle_experiment_log;

  return v1;
}

uint64_t __sec_experiment_copy_log_handle_block_invoke()
{
  sec_experiment_copy_log_handle_experiment_log = os_log_create("com.apple.security", "experiment");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sec_experiment_run_internal(void *a1, int a2, void *a3, void *a4, void *a5, int a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v13)
  {
    v15 = [v11 experimentIsAllowedForProcess];
    if (v15)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __sec_experiment_run_internal_block_invoke;
      v30 = &unk_1E70D47B0;
      v16 = v11;
      v31 = v16;
      v34 = a2;
      v32 = v13;
      v33 = v14;
      v17 = _Block_copy(&v27);
      v18 = sec_experiment_copy_log_handle();
      v19 = v18;
      if (!v12 || a6)
      {
        if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v24 = [v16 name:v27];
          v25 = "enabled";
          if (a2)
          {
            v25 = "disabled";
          }

          *buf = 136315394;
          v36 = v24;
          v37 = 2080;
          v38 = v25;
          _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_INFO, "Starting experiment '%s' synchronously with sampling %s", buf, 0x16u);
        }

        v17[2](v17);
      }

      else
      {
        if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = [v16 name:v27];
          v21 = "enabled";
          if (a2)
          {
            v21 = "disabled";
          }

          *buf = 136315394;
          v36 = v20;
          v37 = 2080;
          v38 = v21;
          _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_INFO, "Starting experiment '%s' asynchronously with sampling %s", buf, 0x16u);
        }

        dispatch_async(v12, v17);
      }

      v23 = v31;
    }

    else
    {
      v22 = sec_experiment_copy_log_handle();
      v23 = v22;
      if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_INFO, "Not running experiments for disallowed process", buf, 2u);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __sec_experiment_run_internal_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isSamplingDisabledWithDefault:*(a1 + 56)];
  [*(*(a1 + 32) + 8) setSamplingDisabled:{objc_msgSend(*(a1 + 32), "isSamplingDisabledWithDefault:", *(a1 + 56))}];
  v3 = sec_experiment_copy_configuration(*(a1 + 32));
  v4 = [*(a1 + 32) identifier];
  if (v3)
  {
    ++*(*(a1 + 32) + 16);
    if ((*(*(a1 + 40) + 16))())
    {
      ++*(*(a1 + 32) + 24);
      v5 = sec_experiment_copy_log_handle();
      v6 = v5;
      if (!v5 || !os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v7 = [*(a1 + 32) name];
      v16 = 136315394;
      v17 = v4;
      v18 = 2080;
      v19 = v7;
      v8 = "Configuration '%s' for experiment '%s' succeeded";
    }

    else
    {
      v14 = sec_experiment_copy_log_handle();
      v6 = v14;
      if (!v14 || !os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v15 = [*(a1 + 32) name];
      v16 = 136315394;
      v17 = v4;
      v18 = 2080;
      v19 = v15;
      v8 = "Configuration '%s' for experiment '%s' failed";
    }

    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_INFO, v8, &v16, 0x16u);
LABEL_17:

    goto LABEL_18;
  }

  v9 = sec_experiment_copy_log_handle();
  v10 = v9;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = [*(a1 + 32) name];
    v12 = "enabled";
    v16 = 136315650;
    v17 = v4;
    v18 = 2080;
    if (v2)
    {
      v12 = "disabled";
    }

    v19 = v11;
    v20 = 2080;
    v21 = v12;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_INFO, "Configuration '%s' for experiment '%s' not configured to run with sampling %s", &v16, 0x20u);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, [*(a1 + 32) identifier]);
  }

LABEL_18:
}

uint64_t sec_experiment_run(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [[SecExpConcrete_sec_experiment alloc] initWithName:a1];
  v8 = v7;
  if (v7)
  {
    v9 = sec_experiment_run_internal(v7, 0, 0, v5, v6, 1);
  }

  else
  {
    v10 = sec_experiment_copy_log_handle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = a1;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_INFO, "Experiment '%s' not found", &v13, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t sec_experiment_run_async(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [[SecExpConcrete_sec_experiment alloc] initWithName:a1];
  v11 = v10;
  if (v10)
  {
    v12 = sec_experiment_run_internal(v10, 0, v7, v8, v9, 0);
  }

  else
  {
    v13 = sec_experiment_copy_log_handle();
    v14 = v13;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = a1;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_INFO, "Experiment '%s' not found", &v16, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

uint64_t sec_experiment_run_with_sampling_disabled(uint64_t a1, void *a2, void *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [[SecExpConcrete_sec_experiment alloc] initWithName:a1];
  v10 = v9;
  if (v9)
  {
    v11 = sec_experiment_run_internal(v9, a4, 0, v7, v8, 1);
  }

  else
  {
    v12 = sec_experiment_copy_log_handle();
    v13 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = a1;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_INFO, "Experiment '%s' not found", &v15, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

uint64_t sec_experiment_run_async_with_sampling_disabled(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [[SecExpConcrete_sec_experiment alloc] initWithName:a1];
  v13 = v12;
  if (v12)
  {
    v14 = sec_experiment_run_internal(v12, a5, v9, v10, v11, 0);
  }

  else
  {
    v15 = sec_experiment_copy_log_handle();
    v16 = v15;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = a1;
      _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_INFO, "Experiment '%s' not found", &v18, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

id CKKSSetupControlProtocol(void *a1)
{
  v1 = a1;
  if (CKKSSetupControlProtocol_onceToken != -1)
  {
    dispatch_once(&CKKSSetupControlProtocol_onceToken, &__block_literal_global_473);
  }

  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_rpcResetLocal_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_rpcResetCloudKit_reason_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_rpcResync_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_rpcResyncLocal_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_rpcStatus_fast_waitForNonTransientState_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_rpcFetchAndProcessChanges_classA_onlyIfNoRecentFetch_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_rpcPushOutgoingChanges_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_rpcGetCKDeviceIDWithReply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_rpcCKMetric_attributes_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_proposeTLKForSEView_proposedTLK_wrappedOldTLK_tlkShares_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_fetchSEViewKeyHierarchy_forceFetch_reply_ argumentIndex:3 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_modifyTLKSharesForSEView_adding_deleting_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_deleteSEView_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_errClasses forSelector:sel_pcsMirrorKeysForServices_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_tlkShareArrayClasses forSelector:sel_proposeTLKForSEView_proposedTLK_wrappedOldTLK_tlkShares_reply_ argumentIndex:3 ofReply:0];
  [v1 setClasses:CKKSSetupControlProtocol_tlkArrayClasses forSelector:sel_fetchSEViewKeyHierarchy_forceFetch_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_tlkShareArrayClasses forSelector:sel_fetchSEViewKeyHierarchy_forceFetch_reply_ argumentIndex:2 ofReply:1];
  [v1 setClasses:CKKSSetupControlProtocol_tlkShareArrayClasses forSelector:sel_modifyTLKSharesForSEView_adding_deleting_reply_ argumentIndex:1 ofReply:0];
  [v1 setClasses:CKKSSetupControlProtocol_tlkShareArrayClasses forSelector:sel_modifyTLKSharesForSEView_adding_deleting_reply_ argumentIndex:2 ofReply:0];

  return v1;
}

void sub_188823B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "CKKSSetupControlProtocol failed, continuing, but you might crash later: %@", &a9, 0xCu);
    }

    v11 = v9;
    objc_exception_throw(v9);
  }

  _Unwind_Resume(exception_object);
}

void __CKKSSetupControlProtocol_block_invoke()
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (initCloudKit_onceToken != -1)
  {
    dispatch_once(&initCloudKit_onceToken, &__block_literal_global_36);
  }

  v0 = dlsym(cloudKit, "CKAcceptableValueClasses");
  if (!v0)
  {
    fprintf(*MEMORY[0x1E69E9848], "symbol %s is missing", "CKAcceptableValueClasses");
    abort();
  }

  v1 = MEMORY[0x1E695DFA8];
  v2 = v0();
  v3 = [v1 setWithSet:v2];
  v4 = CKKSSetupControlProtocol_errClasses;
  CKKSSetupControlProtocol_errClasses = v3;

  v5 = CKKSSetupControlProtocol_errClasses;
  v6 = +[SecXPCHelper safeErrorClasses];
  [v5 unionSet:v6];

  v7 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = CKKSSetupControlProtocol_tlkArrayClasses;
  CKKSSetupControlProtocol_tlkArrayClasses = v9;

  v11 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v13 = [v11 setWithArray:v12];
  v14 = CKKSSetupControlProtocol_tlkShareArrayClasses;
  CKKSSetupControlProtocol_tlkShareArrayClasses = v13;
}

void *__initCloudKit_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 1);
  cloudKit = result;
  return result;
}

os_signpost_id_t _OctagonSignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

unint64_t _OctagonSignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (_OctagonSignpostGetNanoseconds_onceToken != -1)
  {
    dispatch_once(&_OctagonSignpostGetNanoseconds_onceToken, &__block_literal_global_4);
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = _OctagonSignpostGetNanoseconds_timebase_info;
  LODWORD(v5) = *algn_1EA91CF54;
  return (v4 / v5 * (v3 - a2));
}

uint64_t SecFrameworkGetBundle()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecFrameworkGetBundle_block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = &SecFrameworkGetBundle_sSecFrameworkGetBundleSingleton;
  if (SecFrameworkGetBundle_sSecFrameworkGetBundleOnce != -1)
  {
    dispatch_once(&SecFrameworkGetBundle_sSecFrameworkGetBundleOnce, block);
  }

  return SecFrameworkGetBundle_sSecFrameworkGetBundleSingleton;
}

void __SecFrameworkGetBundle_block_invoke(uint64_t a1)
{
  CFRetain(@"/System/Library/Frameworks/Security.framework");
  v2 = *MEMORY[0x1E695E480];
  v3 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/Frameworks/Security.framework", kCFURLPOSIXPathStyle, 1u);
  if (v3)
  {
    v4 = v3;
    **(a1 + 32) = CFBundleCreate(v2, v3);
    CFRelease(v4);
  }

  else
  {
    **(a1 + 32) = 0;
  }

  CFRelease(@"/System/Library/Frameworks/Security.framework");
}

uint64_t SecFrameworkIsRunningInXcode()
{
  if (SecFrameworkIsRunningInXcode_envCheckOnce != -1)
  {
    dispatch_once(&SecFrameworkIsRunningInXcode_envCheckOnce, &__block_literal_global_842);
  }

  return SecFrameworkIsRunningInXcode_runningInXcode;
}

const char *__SecFrameworkIsRunningInXcode_block_invoke()
{
  result = getenv("NSUnbufferedIO");
  if (result)
  {
    result = strcmp(result, "YES");
    if (!result)
    {
      SecFrameworkIsRunningInXcode_runningInXcode = 1;
    }
  }

  return result;
}

void sub_1888288F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__885(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__int128 *SecSecurityFixUpClientWithPersona(__int128 *result, uint64_t a2)
{
  v2 = result[3];
  v3 = *result;
  v4 = result[1];
  *(a2 + 32) = result[2];
  *(a2 + 48) = v2;
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  if (gSecurityd)
  {
    v5 = *(gSecurityd + 696);
    if (v5)
    {
      return v5(a2);
    }
  }

  return result;
}

uint64_t SecSecuritySetMusrMode(char a1, int a2, int a3)
{
  SecSecurityClientGet();
  BYTE4(xmmword_1ED441908) = a1;
  dword_1ED4418FC = a2;
  result = threadLocalClient(&threadLocalClient);
  *(result + 36) = a1;
  *(result + 20) = a2;
  *(v7 + 20) = a3;
  *(result + 40) = a3;
  return result;
}

void SecSecuritySetPersonaMusr(const __CFString *a1)
{
  if (BYTE4(xmmword_1ED441908) == 1)
  {
    goto LABEL_8;
  }

  v2 = SecSecurityClientGet();
  v3 = *(v2 + 24);
  if (v3)
  {
    *(v2 + 24) = 0;
    CFRelease(v3);
  }

  *(v2 + 56) = a1 != 0;
  if (a1)
  {
    v4 = CFUUIDCreateFromString(0, a1);
    if (v4)
    {
      v5 = v4;
      v6 = CFUUIDGetUUIDBytes(v4);
      CFRelease(v5);
      *(v2 + 24) = CFDataCreate(0, &v6.byte0, 16);
      return;
    }

LABEL_8:
    abort();
  }
}

void SecAccessGroupsSetCurrent(const void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = secLogObjForScope("thread-local-client-debug");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a1;
    _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "SecAccessGroupsSetCurrent begin! Setting access groups: %@", &v9, 0xCu);
  }

  SecSecurityClientGet();
  v3 = secLogObjForScope("thread-local-client-debug");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "SecAccessGroupsSetCurrent releasing gClient access groups", &v9, 2u);
  }

  v4 = *(&gClient + 1);
  if (*(&gClient + 1))
  {
    *(&gClient + 1) = 0;
    CFRelease(v4);
  }

  v5 = secLogObjForScope("thread-local-client-debug");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "SecAccessGroupsSetCurrent releasing threadLocalClient access groups", &v9, 2u);
  }

  v6 = threadLocalClient(&threadLocalClient);
  v7 = *(v6 + 8);
  if (v7)
  {
    *(v6 + 8) = 0;
    CFRelease(v7);
  }

  if (a1)
  {
    CFRetain(a1);
    *(&gClient + 1) = a1;
    CFRetain(a1);
  }

  else
  {
    *(&gClient + 1) = 0;
  }

  *(v6 + 8) = a1;
  v8 = secLogObjForScope("thread-local-client-debug");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "SecAccessGroupsSetCurrent end!", &v9, 2u);
  }
}

uint64_t SecSecurityClientRegularToAppClip()
{
  SecSecurityClientGet();
  BYTE12(xmmword_1ED441908) = 1;
  result = threadLocalClient(&threadLocalClient);
  *(result + 44) = v1;
  return result;
}

uint64_t SecSecurityClientAppClipToRegular()
{
  SecSecurityClientGet();
  BYTE12(xmmword_1ED441908) = 0;
  result = threadLocalClient(&threadLocalClient);
  *(result + 44) = 0;
  return result;
}

void SecSecurityClientSetApplicationIdentifier(const void *a1)
{
  SecSecurityClientGet();
  v2 = qword_1ED441918;
  if (qword_1ED441918)
  {
    qword_1ED441918 = 0;
    CFRelease(v2);
  }

  v3 = threadLocalClient(&threadLocalClient);
  v4 = *(v3 + 48);
  if (v4)
  {
    *(v3 + 48) = 0;
    CFRelease(v4);
  }

  if (a1)
  {
    CFRetain(a1);
    qword_1ED441918 = a1;
    CFRetain(a1);
  }

  else
  {
    qword_1ED441918 = 0;
  }

  *(v3 + 48) = a1;
}

uint64_t SecSecurityClientSetKeychainSharingState(int a1)
{
  result = SecSecurityClientGet();
  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  HIBYTE(word_1ED441920) = v3;
  result = threadLocalClient(&threadLocalClient);
  *(result + 57) = v4;
  return result;
}

void SecServerSetTrustdMachServiceName(const char *a1)
{
  if (trustd_connection_once != -1)
  {
    dispatch_once(&trustd_connection_once, &__block_literal_global_45);
  }

  v2 = sTrustdConnection;
  sTrustdConnection = securityd_create_connection(a1, 0xFFFFFFFFLL);
  if (v2)
  {

    xpc_release(v2);
  }
}

_xpc_connection_s *__trustd_system_connection_block_invoke()
{
  result = securityd_create_connection("com.apple.trustd", 0xFFFFFFFFLL);
  sTrustdSystemInstanceConnection = result;
  return result;
}

const __CFBoolean *getBoolValue(const __CFDictionary *a1, const __CFString *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 == CFBooleanGetTypeID())
    {
      v6 = CFBooleanGetValue(v4) == 0;
      return !v6;
    }

    v7 = CFGetTypeID(v4);
    if (v7 == CFNumberGetTypeID())
    {
      LOBYTE(v12) = 0;
      CFNumberGetValue(v4, kCFNumberCharType, &v12);
      v6 = v12 == 0;
      return !v6;
    }

    v8 = secLogObjForScope("xpc");
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v9 = CFGetTypeID(v4);
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      v11 = "<null>";
      if (CStringPtr)
      {
        v11 = CStringPtr;
      }

      v12 = 134218242;
      v13 = v9;
      v14 = 2080;
      v15 = v11;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "unexpected CF type (%lu) for key %s", &v12, 0x16u);
      return 0;
    }
  }

  return result;
}

uint64_t _SecSecuritydCopyWhoAmI(CFErrorRef *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  message = securityd_create_message(0x5Eu, a1);
  if (!message)
  {
    return 0;
  }

  v3 = message;
  v4 = securityd_message_with_reply_sync(message, a1);
  if (v4)
  {
    v5 = v4;
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    xpc_release(v5);
  }

  else
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        v8 = *a1;
      }

      else
      {
        v8 = 0;
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Securityd failed getting whoamid with error: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  xpc_release(v3);
  return v6;
}

BOOL _SecSyncBubbleTransfer(const __CFString *a1, unsigned int a2, CFErrorRef *a3)
{
  message = securityd_create_message(0x5Fu, a3);
  if (!message)
  {
    return 0;
  }

  v7 = message;
  xpc_dictionary_set_int64(message, "uid", a2);
  if (!SecXPCDictionarySetPListWithRepair(v7, "services", a1, a3, v8, v9, v10, v11))
  {
    return 0;
  }

  v12 = securityd_message_with_reply_sync(v7, a3);
  if (v12)
  {
    v13 = v12;
    v14 = xpc_dictionary_get_BOOL(v12, "status");
    if (!v14)
    {
      securityd_message_no_error(v13, a3);
    }

    xpc_release(v13);
  }

  else
  {
    v14 = 0;
  }

  xpc_release(v7);
  return v14;
}

BOOL _SecSystemKeychainTransfer(CFErrorRef *a1)
{
  message = securityd_create_message(0x60u, a1);
  if (!message)
  {
    return 0;
  }

  v3 = message;
  v4 = securityd_message_with_reply_sync(message, a1);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_get_BOOL(v4, "status");
    if (!v6)
    {
      securityd_message_no_error(v5, a1);
    }

    xpc_release(v5);
  }

  else
  {
    v6 = 0;
  }

  xpc_release(v3);
  return v6;
}

BOOL _SecSystemKeychainTranscrypt(CFErrorRef *a1)
{
  message = securityd_create_message(0x61u, a1);
  if (!message)
  {
    return 0;
  }

  v3 = message;
  v4 = securityd_message_with_reply_sync(message, a1);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_get_BOOL(v4, "status");
    if (!v6)
    {
      securityd_message_no_error(v5, a1);
    }

    xpc_release(v5);
  }

  else
  {
    v6 = 0;
  }

  xpc_release(v3);
  return v6;
}

BOOL _SecSyncDeleteUserViews(unsigned int a1, CFErrorRef *a2)
{
  message = securityd_create_message(0x63u, a2);
  if (!message)
  {
    return 0;
  }

  v5 = message;
  xpc_dictionary_set_int64(message, "uid", a1);
  v6 = securityd_message_with_reply_sync(v5, a2);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_get_BOOL(v6, "status");
    if (!v8)
    {
      securityd_message_no_error(v7, a2);
    }

    xpc_release(v7);
  }

  else
  {
    v8 = 0;
  }

  xpc_release(v5);
  return v8;
}

void *_SecSecuritydCopyEndpoint(unsigned int a1, CFErrorRef *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  message = securityd_create_message(a1, a2);
  if (message)
  {
    v4 = message;
    v5 = securityd_message_with_reply_sync(message, a2);
    if (!v5)
    {
      v11 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v12 = *a2;
        }

        else
        {
          v12 = 0;
        }

        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Securityd failed getting endpoint with error: %@", &v14, 0xCu);
      }

      v8 = 0;
      goto LABEL_20;
    }

    v6 = v5;
    value = xpc_dictionary_get_value(v5, "endpoint");
    if (value)
    {
      v8 = value;
      if (MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E90])
      {
        xpc_retain(v8);
        goto LABEL_16;
      }

      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v10 = "endpoint was not an endpoint";
LABEL_13:
        _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, 2u);
      }
    }

    else
    {
      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v10 = "endpoint was null";
        goto LABEL_13;
      }
    }

    v8 = 0;
LABEL_16:
    xpc_release(v6);
LABEL_20:
    xpc_release(v4);
    return v8;
  }

  return 0;
}

void sub_18882A194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__994(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sec_protocol_metadata_get_sec_session_ticket_info(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__1167;
    v10 = __Block_byref_object_dispose__1168;
    v11 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_metadata_get_sec_session_ticket_info_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_metadata_access_handle(v1, v5);
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __Block_byref_object_copy__1167(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL __sec_protocol_metadata_get_sec_session_ticket_info_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 368);
    if (v3)
    {
      v5 = v3;
      v6 = [SecSessionInfo alloc];
      v7 = [v5 psk];
      v8 = [v5 psk_id];
      v9 = -[SecSessionInfo initWithPSK:::::](v6, "initWithPSK:::::", v7, v8, [v5 ticket_age_add], objc_msgSend(v5, "ticket_creation_time"), objc_msgSend(v5, "ticket_lifetime"));
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  return a2 != 0;
}

void sec_protocol_options_set_session_ticket_info(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_options_set_session_ticket_info_block_invoke;
    v5[3] = &unk_1E70D49C8;
    v6 = v3;
    sec_protocol_options_access_handle(a1, v5);
  }
}

BOOL __sec_protocol_options_set_session_ticket_info_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [SecSessionInfo alloc];
    v5 = [*(a1 + 32) psk];
    v6 = [*(a1 + 32) psk_id];
    v7 = -[SecSessionInfo initWithPSK:::::](v4, "initWithPSK:::::", v5, v6, [*(a1 + 32) ticket_age_add], objc_msgSend(*(a1 + 32), "ticket_creation_time"), objc_msgSend(*(a1 + 32), "ticket_lifetime"));

    *(a2 + 376) = v7;
  }

  return a2 != 0;
}

void sec_protocol_options_add_external_pre_shared_key(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_options_add_external_pre_shared_key_block_invoke;
    v5[3] = &unk_1E70D49C8;
    v6 = v3;
    sec_protocol_options_access_handle(a1, v5);
  }
}

BOOL __sec_protocol_options_add_external_pre_shared_key_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 384);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [MEMORY[0x1E695DF70] array];
      *(a2 + 384) = v5;
    }

    [v5 addObject:*(a1 + 32)];
  }

  return a2 != 0;
}

void sec_protocol_options_set_external_pre_shared_key_selection_block(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1 && v5 && a3)
  {
    v7 = a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __sec_protocol_options_set_queue_helper_block_invoke;
    v10[3] = &__block_descriptor_tmp_37;
    v11 = 0;
    v10[4] = a3;
    sec_protocol_options_access_handle(v7, v10);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __sec_protocol_options_set_external_pre_shared_key_selection_block_block_invoke;
    v8[3] = &unk_1E70D49F0;
    v9 = v6;
    sec_protocol_options_access_handle(v7, v8);
  }
}

BOOL __sec_protocol_options_set_external_pre_shared_key_selection_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 392);
    if (v4)
    {
      *(a2 + 392) = 0;
      CFRelease(v4);
    }

    *(a2 + 392) = _Block_copy(*(a1 + 32));
  }

  return a2 != 0;
}

void sec_protocol_options_set_pake_challenge_block(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1 && v5 && a3)
  {
    v7 = a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __sec_protocol_options_set_queue_helper_block_invoke;
    v10[3] = &__block_descriptor_tmp_37;
    v11 = 1;
    v10[4] = a3;
    sec_protocol_options_access_handle(v7, v10);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __sec_protocol_options_set_pake_challenge_block_block_invoke;
    v8[3] = &unk_1E70D49F0;
    v9 = v6;
    sec_protocol_options_access_handle(v7, v8);
  }
}

BOOL __sec_protocol_options_set_pake_challenge_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 416);
    if (v4)
    {
      *(a2 + 416) = 0;
      CFRelease(v4);
    }

    *(a2 + 416) = _Block_copy(*(a1 + 32));
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_use_raw_external_pre_shared_keys(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __sec_protocol_options_set_use_raw_external_pre_shared_keys_block_invoke;
    v2[3] = &__block_descriptor_33_e9_B16__0_v8l;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_use_raw_external_pre_shared_keys_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 408) = *(a2 + 408) & 0xFE | *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_get_raw_external_pre_shared_keys_enabled(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_options_get_raw_external_pre_shared_keys_enabled_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_options_access_handle(v1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL __sec_protocol_options_get_raw_external_pre_shared_keys_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 408) & 1;
  }

  return a2 != 0;
}

id sec_protocol_options_get_sec_session_ticket_info(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__1167;
    v10 = __Block_byref_object_dispose__1168;
    v11 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_options_get_sec_session_ticket_info_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_options_access_handle(v1, v5);
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL __sec_protocol_options_get_sec_session_ticket_info_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 376);
    if (v3)
    {
      v5 = v3;
      v6 = [SecSessionInfo alloc];
      v7 = [v5 psk];
      v8 = [v5 psk_id];
      v9 = -[SecSessionInfo initWithPSK:::::](v6, "initWithPSK:::::", v7, v8, [v5 ticket_age_add], objc_msgSend(v5, "ticket_creation_time"), objc_msgSend(v5, "ticket_lifetime"));
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  return a2 != 0;
}

void sec_protocol_metadata_set_session_ticket_info(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_metadata_set_session_ticket_info_block_invoke;
    v5[3] = &unk_1E70D49C8;
    v6 = v3;
    sec_protocol_metadata_access_handle(a1, v5);
  }
}

BOOL __sec_protocol_metadata_set_session_ticket_info_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [SecSessionInfo alloc];
    v5 = [*(a1 + 32) psk];
    v6 = [*(a1 + 32) psk_id];
    v7 = -[SecSessionInfo initWithPSK:::::](v4, "initWithPSK:::::", v5, v6, [*(a1 + 32) ticket_age_add], objc_msgSend(*(a1 + 32), "ticket_creation_time"), objc_msgSend(*(a1 + 32), "ticket_lifetime"));

    v8 = *(a2 + 368);
    if (v8)
    {
      CFRelease(v8);
    }

    *(a2 + 368) = v7;
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_tls_negotiated_epsk(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_metadata_get_tls_negotiated_epsk_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_metadata_access_handle(v1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL __sec_protocol_metadata_get_tls_negotiated_epsk_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 376) & 2) != 0;
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_tls_epsk_offered(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_metadata_get_tls_epsk_offered_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_metadata_access_handle(v1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL __sec_protocol_metadata_get_tls_epsk_offered_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 376) & 1;
  }

  return a2 != 0;
}

uint64_t sec_protocol_metadata_get_tls_pake_offered(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __sec_protocol_metadata_get_tls_pake_offered_block_invoke;
    v5[3] = &unk_1E70D49A0;
    v5[4] = &v6;
    sec_protocol_metadata_access_handle(v1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL __sec_protocol_metadata_get_tls_pake_offered_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 376) & 4) != 0;
  }

  return a2 != 0;
}

BOOL sec_session_tickets_are_equal(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = a2;
  if (v4 && ([v3 psk], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "psk"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToData:", v6), v6, v5, v7) && (objc_msgSend(v3, "psk_id"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "psk_id"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToData:", v9), v9, v8, v10) && (v11 = objc_msgSend(v3, "ticket_age_add"), v11 == objc_msgSend(v4, "ticket_age_add")) && (v12 = objc_msgSend(v3, "ticket_lifetime"), v12 == objc_msgSend(v4, "ticket_lifetime")))
  {
    v13 = [v3 ticket_creation_time];
    v14 = v13 == [v4 ticket_creation_time];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id SecEscrowRequestSetupControlProtocol(void *a1)
{
  v1 = a1;
  v2 = +[SecXPCHelper safeErrorClasses];
  [v1 setClasses:v2 forSelector:sel_triggerEscrowUpdate_options_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_cachePrerecord_serializedPrerecord_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchPrerecord_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchRequestWaitingOnPasscode_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchRequestStatuses_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_resetAllRequests_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_storePrerecordsInEscrow_ argumentIndex:1 ofReply:1];

  return v1;
}

CFURLRef SecCopyHomeURL()
{
  v0 = sCustomHomeURL;
  if (sCustomHomeURL)
  {
    CFRetain(sCustomHomeURL);
    return v0;
  }

  else
  {

    return CFCopyHomeDirectoryURL();
  }
}

CFURLRef SecCopyBaseFilesURL(int a1)
{
  v1 = sCustomHomeURL;
  if (sCustomHomeURL)
  {
    CFRetain(sCustomHomeURL);
    return v1;
  }

  else if (a1)
  {

    return CFURLCreateWithFileSystemPath(0, @"/", kCFURLPOSIXPathStyle, 1u);
  }

  else
  {

    return SecCopyHomeURL();
  }
}

CFTypeRef SecSetCustomHomeURL(CFTypeRef cf)
{
  v1 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  sCustomHomeURL = v1;
  return cf;
}

void SecSetCustomHomeURLString(CFStringRef filePath)
{
  v2 = sCustomHomeURL;
  if (sCustomHomeURL)
  {
    sCustomHomeURL = 0;
    CFRelease(v2);
  }

  if (filePath)
  {
    sCustomHomeURL = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 1u);
  }
}

uint64_t SECSFAActionDropEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___SECSFAActionDropEvent__excludeEvent;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___SECSFAActionDropEvent__excludeEvent;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___SECSFAActionDropEvent__excludeCount;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___SECSFAActionDropEvent__excludeCount;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OctagonIsSOSFeatureEnabled()
{
  v6 = *MEMORY[0x1E69E9840];
  if (OctagonSOSFeatureIsEnabledOverrideSet == 1)
  {
    v0 = secLogObjForScope("octagon");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      if (OctagonSOSFeatureIsEnabledOverride)
      {
        v1 = @"enabled";
      }

      else
      {
        v1 = @"disabled";
      }

      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "SOS Feature is %@ (overridden)", &v4, 0xCu);
    }

    v2 = &OctagonSOSFeatureIsEnabledOverride;
  }

  else
  {
    if (OctagonIsSOSFeatureEnabled_onceToken != -1)
    {
      dispatch_once(&OctagonIsSOSFeatureEnabled_onceToken, &__block_literal_global_1513);
    }

    v2 = &OctagonIsSOSFeatureEnabled_sosEnabled;
  }

  return *v2;
}

void __OctagonIsSOSFeatureEnabled_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  OctagonIsSOSFeatureEnabled_sosEnabled = _os_feature_enabled_impl();
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (OctagonIsSOSFeatureEnabled_sosEnabled)
    {
      v1 = @"enabled";
    }

    else
    {
      v1 = @"disabled";
    }

    v2 = 138412290;
    v3 = v1;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "SOS Feature is %@ (via feature flags)", &v2, 0xCu);
  }
}

uint64_t OctagonSetSOSFeatureEnabled(uint64_t result)
{
  OctagonSOSFeatureIsEnabledOverrideSet = 1;
  OctagonSOSFeatureIsEnabledOverride = result;
  return result;
}

uint64_t OctagonSupportsPersonaMultiuser()
{
  if (gOctagonSupportsPersonaMultiuserStatus)
  {
    v0 = gOctagonSupportsPersonaMultiuserStatus == 1;
  }

  else
  {
    if (OctagonSupportsPersonaMultiuser_onceToken != -1)
    {
      dispatch_once(&OctagonSupportsPersonaMultiuser_onceToken, &__block_literal_global_37);
    }

    v0 = OctagonSupportsPersonaMultiuser_ffOctagonSupportsPersonaMultiuserStatus;
  }

  return v0 & 1;
}

void __OctagonSupportsPersonaMultiuser_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  OctagonSupportsPersonaMultiuser_ffOctagonSupportsPersonaMultiuserStatus = _os_feature_enabled_impl();
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (OctagonSupportsPersonaMultiuser_ffOctagonSupportsPersonaMultiuserStatus)
    {
      v1 = "enabled";
    }

    else
    {
      v1 = "disabled";
    }

    v2 = 136315138;
    v3 = v1;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "OctagonSupportsMultiuser is %s", &v2, 0xCu);
  }
}

void OctagonSetSupportsPersonaMultiuser(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  gOctagonSupportsPersonaMultiuserStatus = v2;
  v3 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (a1)
    {
      v4 = "enabled";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "OctagonSupportsMultiuser overridden to %s", &v5, 0xCu);
  }
}

void OctagonClearSupportsPersonaMultiuserOverride()
{
  gOctagonSupportsPersonaMultiuserStatus = 0;
  v0 = secLogObjForScope("octagon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "OctagonSupportsMultiuser override removed", v1, 2u);
  }
}

uint64_t SOSCompatibilityModeEnabled()
{
  if (gDeferSOSFromSignInStatus)
  {
    v0 = gDeferSOSFromSignInStatus == 1;
  }

  else
  {
    if (SOSCompatibilityModeEnabled_onceToken != -1)
    {
      dispatch_once(&SOSCompatibilityModeEnabled_onceToken, &__block_literal_global_42);
    }

    v0 = SOSCompatibilityModeEnabled_ffDeferSOSFromSignInStatus;
  }

  return v0 & 1;
}