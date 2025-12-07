uint64_t der_get_BOOLean(unint64_t *a1, int a2, _BYTE *a3)
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

uint64_t X509ExtensionParseBasicConstraints(unint64_t *a1, void *a2, _BYTE *a3)
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

      if (*a3 == 1)
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

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
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

        return X509ExtensionParseMFIAuthv3Leaf(result);
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

            return X509ExtensionParseGenericSSLMarker(result);
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

uint64_t X509CertificateParseKey(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  result = 327691;
  if (a1 && *(a1 + 96))
  {
    result = a1 + 88;
    v8 = 0;
    v9 = 0;
    if (a1 + 88 > (a1 + 104))
    {
      __break(0x5519u);
    }

    else
    {
      result = X509CertificateParseSPKI(result, 0, 0, &v8);
      if (!result && a2)
      {
        if (a3)
        {
          v7 = v9;
          *a2 = v8;
          *a3 = v7;
        }
      }
    }
  }

  return result;
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
      v11 = compare_octet_string(&v16, &ecPublicKey);
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
    v11 = compare_octet_string(a2, &ecPublicKey);
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

uint64_t X509CertificateParseGeneralNamesContent(uint64_t a1, uint64_t (*a2)(void, int *, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (__CFADD__(v3, v4))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 224);
  v11 = v5;
  while (1)
  {
    if (v10 >= v11)
    {
      return 0;
    }

    memset(v9, 170, sizeof(v9));
    if ((ccder_blob_decode_GeneralName(&v10, v9, &v9[1]) & 1) == 0)
    {
      break;
    }

    if ((a2(v9[0], &v9[1], a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 720912;
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

uint64_t X509ExtensionParseCertifiedChipIntermediate(unint64_t *a1, void *a2, unint64_t *a3)
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

uint64_t X509ExtensionParseMFIAuthv3Leaf(unint64_t *a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v4 = a1[1];
      if (v4 != v3 - 0x5555555555555556)
      {
        return 0;
      }

      if (v3 <= v4)
      {
        *a1 = v3 - 0x5555555555555556;
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

uint64_t aks_apfs_copy_volume_uuid_for_disk(const char *a1, char *a2)
{
  v3 = a1;
  properties = 0;
  v4 = *MEMORY[0x1E696CD68];
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v5 = *(v3 + 5);
    v3 += 5;
    if (v5 == 114)
    {
      ++v3;
    }
  }

  v6 = 3758097090;
  v7 = IOBSDNameMatching(v4, 0, v3);
  MatchingService = IOServiceGetMatchingService(v4, v7);
  if (MatchingService)
  {
    v9 = MatchingService;
    if (IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
    {
      v10 = IORegistryEntryCreateCFProperties(v9, &properties, *MEMORY[0x1E695E480], 0);
      if (v10)
      {
        v6 = v10;
      }

      else
      {
        v6 = 3758604298;
        Value = CFDictionaryGetValue(properties, @"UUID");
        if (Value)
        {
          v12 = Value;
          v13 = CFGetTypeID(Value);
          if (v13 == CFStringGetTypeID())
          {
            if (CFStringGetCString(v12, a2, 37, 0x600u))
            {
              v6 = 0;
            }

            else
            {
              v6 = 3758604298;
            }
          }
        }
      }
    }

    IOObjectRelease(v9);
    if (properties)
    {
      CFRelease(properties);
    }
  }

  return v6;
}

void aks_apfs_container_disk_for_path_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v0 = __error();
    strerror(*v0);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, v3, v4, v5, 0x7Cu);
  }
}

void aks_apfs_container_disk_for_path_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x72u);
  }
}

void aks_apfs_container_disk_for_path_cold_3()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x7Cu);
  }
}

void aks_apfs_container_disk_for_path_cold_4()
{
  OUTLINED_FUNCTION_8_0();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v2, v3, v4, v5, v6, 0x7Cu);
  }

  *v0 = v1;
}

void aks_apfs_container_disk_for_path_cold_5()
{
  OUTLINED_FUNCTION_8_0();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v2, v3, v4, v5, v6, 0x7Cu);
  }

  *v0 = v1;
}

void aks_apfs_container_disk_for_path_cold_6(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, v3, v4, v5, 0x72u);
  }
}

void aks_apfs_container_disk_for_path_cold_7()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x72u);
  }
}

void aks_apfs_container_disk_for_path_cold_8()
{
  OUTLINED_FUNCTION_8_0();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v2, v3, v4, v5, v6, 0x7Cu);
  }

  *v0 = v1;
}

void aks_apfs_container_disk_for_path_cold_9()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x7Cu);
  }
}

void aks_apfs_get_disk_portability_cold_1()
{
  OUTLINED_FUNCTION_9();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x72u);
  }

  OUTLINED_FUNCTION_7();
}

void aks_apfs_get_disk_portability_cold_2()
{
  OUTLINED_FUNCTION_9();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x72u);
  }

  OUTLINED_FUNCTION_7();
}

void aks_apfs_get_disk_portability_cold_3(uint64_t a1, _DWORD *a2, void *a3)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 0x7Cu);
  }

  *a3 = 0;
  *a2 = -536870212;
}

uint64_t get_kcv(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  return v5;
}

uint64_t print_kcv(const char *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  v5 = 0;
  get_kcv(a2, a3, &v5, 3);
  return dump_bytes_internal(a1, &v5, 3uLL);
}

uint64_t ascii_hex_to_bytes(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t fv_init_cred_from_secret(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t copy_raw_secret(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  inited = fv_init_cred_from_secret(&__s, v10, a5);
  if (inited)
  {
    v8 = inited;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

void circular_queue_init_cold_1(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    v6 = "aks.fw";
    v7 = 2080;
    OUTLINED_FUNCTION_0();
    v8 = "circular_queue_init";
    v9 = v2;
    v10 = ":";
    v11 = v3;
    v12 = 385;
    v13 = v2;
    v14 = v4;
    v15 = v2;
    v16 = v4;
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s overflow%s\n", &v5, 0x72u);
  }

  *a1 = 0;
}

void REQUIRE_func_cold_1(uint64_t a1, int a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136318466;
    v8 = "aks.fw";
    v9 = 2080;
    OUTLINED_FUNCTION_0();
    v10 = "REQUIRE_func";
    v11 = v4;
    v12 = ":";
    v13 = v5;
    v14 = 1134;
    v15 = v4;
    v16 = v6;
    v17 = v4;
    v18 = a1;
    v19 = v5;
    v20 = a2;
    v21 = v4;
    v22 = v6;
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", &v7, 0x82u);
  }

  abort();
}

uint64_t xpc_set_dict_value(void *a1, CFStringRef theString, const unsigned __int8 *a3, int a4)
{
  v4 = 0;
  v5 = 3758097084;
  if (!a1 || !theString)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = CFStringGetLength(theString) + 1;
  v4 = calloc(v10, 1uLL);
  if (!v4)
  {
    v5 = 3758097115;
    goto LABEL_12;
  }

  if (!CFStringGetCString(theString, v4, v10, 0x8000100u))
  {
    v5 = 3758604298;
    goto LABEL_12;
  }

  switch(a4)
  {
    case 2:
      xpc_dictionary_set_uuid(a1, v4, a3);
      goto LABEL_11;
    case 1:
      xpc_dictionary_set_uint64(a1, v4, a3);
      goto LABEL_11;
    case 0:
      xpc_dictionary_set_BOOL(a1, v4, a3 != 0);
LABEL_11:
      v5 = 0;
      break;
  }

LABEL_12:
  memset_s(v4, v10, 0, v10);
  free(v4);
  return v5;
}

uint64_t xpc_set_lock_state(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __xpc_set_lock_state_block_invoke;
  v3[3] = &__block_descriptor_tmp_53;
  v3[4] = a2;
  return process_lock_state_for_handle(a1, v3);
}

uint64_t xpc_set_fv_policy_status(const __CFData *a1, unsigned int a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v7 = __xpc_set_fv_policy_status_block_invoke;
  v8 = &__block_descriptor_tmp_54;
  v9 = a3;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10[3] = CFDataGetBytePtr(a1);
  v10[4] = CFDataGetLength(a1);
  memset(v10, 0, 24);
  result = aks_fv_get_blob_state(v10);
  if (!result)
  {
    result = (v7)(v6, @"fa", *(&v11[2] + a2 + 3), 1);
    if (!result)
    {
      result = (v7)(v6, @"boff", *(&v11[3] + a2 + 1), 1);
      if (!result)
      {
        return (v7)(v6, @"ma", HIDWORD(v11[3]), 1);
      }
    }
  }

  return result;
}

uint64_t firebloom_export_pub_key(void *a1, void *a2, unint64_t *a3)
{
  v5 = cczp_bitlen();
  v6 = calloc(((v5 + 7) >> 2) | 1, 1uLL);
  if (!v6)
  {
    return 4294967279;
  }

  v7 = v6;
  v8 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v7;
  *a3 = v8;
  return result;
}

uint64_t wrap_data(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  v59 = *MEMORY[0x1E69E9840];
  HIDWORD(v52) = 0;
  v57 = 0u;
  v58 = 0u;
  __s = 0u;
  v56 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v52) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = generate_wrapping_key_curve25519((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v56 = v30;
          v31 = *(a1 + 14);
          v57 = *(a1 + 10);
          v58 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v56;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = firebloom_cbc_one_shot_f(v33, 32, &v57, &firebloom_null_iv, 0x20uLL);
            v35 = OUTLINED_FUNCTION_4_0(v34);
            LODWORD(a1) = REQUIRE_func(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v47 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v47;
            goto LABEL_45;
          }

          LODWORD(v52) = 40;
          if ((a3 & 8) != 0)
          {
            v39 = ccsha256_di();
            v51 = v53;
            OUTLINED_FUNCTION_0_1(v39, v40, &v57);
          }

          OUTLINED_FUNCTION_3_0();
          LODWORD(a1) = rfc3394_wrap_legacy(v41, v42, v43, v44, a4, 0x20u, v45, v46);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = OUTLINED_FUNCTION_5_0();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v21, v22);
      if (a1)
      {
        OUTLINED_FUNCTION_1_1();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = rfc3394_wrap_legacy(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v52 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v52) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = firebloom_cbc_one_shot_f(v36, 32, v14 + 12, &firebloom_null_iv, a5);
        v38 = OUTLINED_FUNCTION_4_0(v37);
        LODWORD(a1) = REQUIRE_func(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v47 = HIDWORD(v52);
        goto LABEL_44;
      }

      v28 = OUTLINED_FUNCTION_5_0();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v28, v29);
      if (a1)
      {
        OUTLINED_FUNCTION_1_1();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          v48 = ccsha256_di();
          v51 = v53;
          OUTLINED_FUNCTION_0_1(v48, v49, v14 + 12);
          v23 = v53;
        }

        else
        {
          v23 = (v14 + 12);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    OUTLINED_FUNCTION_2(a1, a2, a3, a4, a5, a6, a7, a8, v51, v52);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return v9;
}

uint64_t unwrap_data(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), uint64_t a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  v7 = a3;
  v56 = *MEMORY[0x1E69E9840];
  HIDWORD(v51) = 0;
  __s = 0u;
  v55 = 0u;
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = OUTLINED_FUNCTION_5_0();
            if (!rfc3394_unwrapped_size_legacy(v15, v16))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_1();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v51 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v51) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = firebloom_cbc_one_shot_f(v25, 32, (a1 + 3), &firebloom_null_iv, a5);
              v27 = OUTLINED_FUNCTION_4_0(v26);
              REQUIRE_func(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v51);
              goto LABEL_37;
            }

            v23 = OUTLINED_FUNCTION_5_0();
            if (!rfc3394_unwrapped_size_legacy(v23, v24))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_1();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((v7 & 8) != 0)
            {
              v39 = ccsha256_di();
              OUTLINED_FUNCTION_0_1(v39, v40, (a1 + 3));
            }

            OUTLINED_FUNCTION_3_0();
          }

          if (!rfc3394_unwrap_legacy(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v51) = 32;
    if (*a7 >= 0x20)
    {
      *v52 = 0uLL;
      v53 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          OUTLINED_FUNCTION_6_0(a1, a2, a3, a4);
          v28 = ccaes_cbc_decrypt_mode();
          v29 = firebloom_cbc_one_shot_f(v28, 32, v52, &firebloom_null_iv, 0x20uLL);
          v30 = OUTLINED_FUNCTION_4_0(v29);
          v31 = REQUIRE_func(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        OUTLINED_FUNCTION_6_0(a1, a2, a3, a4);
        if (v7 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v51) = 32;
        if ((v7 & 8) != 0)
        {
          v41 = ccsha256_di();
          p_s = &__s;
          OUTLINED_FUNCTION_0_1(v41, v42, v52);
        }

        OUTLINED_FUNCTION_3_0();
        v31 = rfc3394_unwrap_legacy(v43, v44, v45, v46, v47, 0x28u, a6, v48);
        if (v31)
        {
          OUTLINED_FUNCTION_2(v31, v32, v33, v34, v35, v36, v37, v38, p_s, v51);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        OUTLINED_FUNCTION_2(v31, v32, v33, v34, v35, v36, v37, v38, p_s, v51, *v52, *&v52[8], v53, __s, v55);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((v7 & 8) != 0)
  {
    memset_s(&__s, 0x20uLL, 0, 0x20uLL);
  }

  return v8;
}

BOOL rfc3394_wrapped_size_legacy(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}

BOOL rfc3394_wrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = (((a1 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFF1);
  if (!v2)
  {
    *a2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  return v2 == 0;
}

uint64_t lib_platform_get_device_id(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 < 0x1AuLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((_MergedGlobals_0 & 1) == 0)
  {
    v7 = 0;
    v6 = 0;
    if (platform_get_chip_id(&v7) || platform_get_ecid(&v6))
    {
      return 4294967284;
    }

    LODWORD(xmmword_1ECE7982C) = v7;
    byte_swap_val(&xmmword_1ECE7982C, 4uLL);
    *(&xmmword_1ECE7982C + 4) = v6;
    byte_swap_val(&xmmword_1ECE7982C + 4, 0x10uLL);
    _MergedGlobals_0 = 1;
  }

  *a2 = 20;
  result = 0;
  if (a1)
  {
    v5 = xmmword_1ECE7982C;
    *(a1 + 16) = dword_1ECE7983C;
    *a1 = v5;
  }

  return result;
}

uint64_t lib_platform_get_chip_id(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MGGetSInt64Answer();
    if (v2)
    {
      v3 = v2;
      result = 0;
      *v1 = v3;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t lib_platform_get_ecid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MGGetSInt64Answer();
    if (v2)
    {
      v3 = v2;
      result = 0;
      *v1 = v3;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t lib_platform_get_board_id(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MGGetSInt64Answer();
    if (v2)
    {
      v3 = v2;
      result = 0;
      *v1 = v3;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t der_dict_get_number(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    OUTLINED_FUNCTION_12();
    der_dict_iterate();
    return 0;
  }

  return result;
}

uint64_t der_dict_get_data(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_12();
    der_dict_iterate();
    return 0;
  }

  return result;
}

uint64_t der_array_iterate()
{
  OUTLINED_FUNCTION_26();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  OUTLINED_FUNCTION_17();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (der_utils_decode_tl(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((der_utils_decode_tl(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t der_utils_decode_tl(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t encode_list_cstr_get_data()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v12 = *MEMORY[0x1E69E9840];
  v5 = strlen(v4);
  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v8 = 0;
    if (encode_list_get_data(v3, v9, 0, &__src, &v8))
    {
      if (v8 == v0)
      {
        memcpy(v1, __src, v0);
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t encode_list_cstr_add_data()
{
  OUTLINED_FUNCTION_26();
  v2 = strlen(v1);
  result = 4294967285;
  if (v0)
  {
    if (v2 <= 0x10)
    {
      __memcpy_chk();
      return encode_list_add_data();
    }
  }

  return result;
}

uint64_t encode_list_add_BOOL()
{
  result = OUTLINED_FUNCTION_33();
  if (v0 && v2)
  {
    ccder_sizeof();
    v3 = OUTLINED_FUNCTION_27();
    v4 = OUTLINED_FUNCTION_29(v3);
    if (v4)
    {
      v5 = v4;
      if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (ccder_blob_encode_body(), OUTLINED_FUNCTION_9_0(), OUTLINED_FUNCTION_17(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_9_0(), v6 == v5) && (v7 = OUTLINED_FUNCTION_28()) != 0)
      {
        return OUTLINED_FUNCTION_3_1(v7);
      }

      else
      {
        OUTLINED_FUNCTION_13();
        free(v5);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_number(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v10 = 8;
  }

  else
  {
    v6 = 9;
    v7 = 48;
    v8 = 1;
    while ((v6 - 2) >= 2)
    {
      v9 = a3 >> v7;
      --v6;
      v7 -= 8;
      if (v5 != v9)
      {
        v8 = v6 - 1;
        goto LABEL_8;
      }
    }

    v6 = 2;
LABEL_8:
    if ((((a3 >> (8 * v8 - 8)) ^ v5) & 0x80) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }
  }

  v18[0] = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    ccder_sizeof();
    v12 = ccder_sizeof();
    v13 = calloc(v12, 1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      do
      {
        *(v18 + v15 - 1) = v3;
        v3 >>= 8;
        --v15;
      }

      while (v15);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (ccder_blob_encode_body(), OUTLINED_FUNCTION_5_1(), OUTLINED_FUNCTION_17(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_5_1(), v16 == v14) && OUTLINED_FUNCTION_28())
      {
        result = OUTLINED_FUNCTION_18();
        v17[1] = v14;
        v17[2] = v12;
        *v17 = *a1;
        *a1 = v17;
      }

      else
      {
        memset_s(v14, v12, 0, v12);
        free(v14);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_string()
{
  result = OUTLINED_FUNCTION_33();
  if (v0 && v3 && v4)
  {
    strlen(v4);
    ccder_sizeof();
    v5 = OUTLINED_FUNCTION_27();
    if (OUTLINED_FUNCTION_29(v5))
    {
      OUTLINED_FUNCTION_15();
      if (ccder_blob_encode_body() && (v6 = ccder_blob_encode_tl(), v6) && (OUTLINED_FUNCTION_7_0(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v28, v30), OUTLINED_FUNCTION_5_1(), OUTLINED_FUNCTION_14(v14, v15, v16, v17, v18, v19, v20, v21, v25, v27, v29, v31), OUTLINED_FUNCTION_5_1(), v22 == v1) && (v23 = OUTLINED_FUNCTION_28()) != 0)
      {
        return OUTLINED_FUNCTION_3_1(v23);
      }

      else
      {
        OUTLINED_FUNCTION_13();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_list(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (encode_list_dict(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v6 = ccder_sizeof();
      v7 = OUTLINED_FUNCTION_29(v6);
      v3 = v7;
      if (v7)
      {
        v12 = v7;
        if (ccder_blob_encode_body() && (v15 = v3, v16 = v12, ccder_blob_encode_body(), OUTLINED_FUNCTION_9_0(), v15 = v3, v16 = v8, OUTLINED_FUNCTION_17(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_9_0(), v9 == v3) && (v10 = OUTLINED_FUNCTION_28()) != 0)
        {
          v4 = 0;
          v10[1] = v3;
          v10[2] = 0;
          *v10 = *a1;
          *a1 = v10;
          v3 = 0;
        }

        else
        {
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t der_utils_encode_fv_key(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_19(a1);
  if (v2)
  {
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v4;
  return 1;
}

uint64_t der_utils_decode_fv_key(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v36 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_4_1();
    v7 = ccder_blob_decode_range();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v5 = v37;
    v15 = (v38 - v37);
    OUTLINED_FUNCTION_22(v7, v8, v9, v10, v11, v12, v13, v14, v36, *(&v36 + 1), v37, v38, v39);
LABEL_4:
    OUTLINED_FUNCTION_4_1();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      OUTLINED_FUNCTION_22(v16, v17, v18, v19, v20, v21, v22, v23, v36, *(&v36 + 1), v37, v38, v39);
      if (v33 <= 4)
      {
        v34 = *v32;
        *a3 = v5;
        *(a3 + 8) = v15;
        *(a3 + 16) = v34;
        *(a3 + 20) = v6;
        return OUTLINED_FUNCTION_6_1(v24, v25, v26, v27, v28, v29, v30, v31, v36);
      }
    }

    return 0;
  }

  LODWORD(v39) = v4;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v36, 4, v5, &v39);
  if (result)
  {
    v15 = v39;
    goto LABEL_4;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_len(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  OUTLINED_FUNCTION_19(a1);
  OUTLINED_FUNCTION_4_1();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_22(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t der_utils_encode_fv_data(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_19(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_24(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_1(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_encode_fv_params(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_19(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_24(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_1(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_decode_fv_params(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_19(a1);
  OUTLINED_FUNCTION_4_1();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return OUTLINED_FUNCTION_6_1(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t encode_extended_state()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v19 = 0;
  if (encode_list_add_number(&v19, der_key_state_state, *v2) || encode_list_add_number(&v19, der_key_state_lock_state, v3[1]) || encode_list_add_number(&v19, der_key_state_backoff, *(v3 + 1)) || encode_list_add_number(&v19, der_key_state_failed_attempts, v3[4]) || encode_list_add_number(&v19, der_key_state_generation_state, v3[5]) || encode_list_add_number(&v19, der_key_state_recovery_countdown, *(v3 + 26)) || encode_list_add_number(&v19, der_key_state_more_state, *(v3 + 34)) || encode_list_add_number(&v19, der_key_keybag_handle, *(v3 + 42)) || encode_list_add_number(&v19, der_key_config_max_unlock_attempts, *(v3 + 46)) || (v4 = encode_list_add_data(), v4) || v1 && (encode_list_add_number(&v19, der_key_state_assertion_set, *(v3 + 66)) || encode_list_add_number(&v19, der_key_state_grace_period_enabled, *(v3 + 67)) || encode_list_add_number(&v19, der_key_lock_time, *(v3 + 17)) || (v4 = encode_list_add_number(&v19, der_key_cx_window, *(v3 + 19)), v4)) || (v6 = OUTLINED_FUNCTION_20(v4, v5), v6))
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
    OUTLINED_FUNCTION_16(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  }

  encode_list_free(&v19);
  return v14;
}

uint64_t decode_memento_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31(*MEMORY[0x1E69E9840]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        OUTLINED_FUNCTION_21_0(v3);
        bzero(v15, 0x98uLL);
        v15[4] = der_key_state_failed_attempts;
        v15[9] = der_key_config_max_unlock_attempts;
        v15[14] = der_key_state_state;
        OUTLINED_FUNCTION_0_3();
        if (OUTLINED_FUNCTION_35(v6, v7, v8, v9, v10, v11, v12, v13, 4))
        {
          *v5 = der_get_number();
          v5[1] = der_get_number();
          v5[2] = der_get_number();
          der_get_number();
          result = OUTLINED_FUNCTION_18();
          v5[3] = v14;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t decode_primary_identity_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31(*MEMORY[0x1E69E9840]);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          OUTLINED_FUNCTION_21_0(v3);
          OUTLINED_FUNCTION_21_0(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = der_key_group_uuid;
          v13 = der_key_uuid;
          OUTLINED_FUNCTION_0_3();
          der_dict_iterate();
          if (der_utils_decode_implicit_raw_octet_string_copy(v10, 4, v7, 16) && der_utils_decode_implicit_raw_octet_string_copy(&v11 + 8, 4, v8, 16))
          {
            return der_utils_decode_implicit_raw_octet_string_copy(&v15, 4, v9, 16) - 1;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t decode_fv_blob_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31(*MEMORY[0x1E69E9840]);
  if (v3)
  {
    if (a1)
    {
      v5 = v4;
      if (v4)
      {
        v6 = v3;
        memset_s(v4, 0x58uLL, 0, 0x58uLL);
        bzero(v16, 0x200uLL);
        v16[4] = der_key_uuid;
        v17[2] = der_key_id;
        v18[2] = der_key_flags;
        v18[7] = der_key_version;
        v18[12] = der_key_state_reserved;
        v20 = der_key_state_failed_attempts;
        v21 = der_key_state_failed_attempts_other;
        v22 = der_key_config_max_unlock_attempts;
        v23 = der_key_state_backoff;
        v24 = der_key_state_backoff_other;
        v25 = der_key_config_capabilities;
        v26 = der_key_state_refcount;
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_35(v7, a1 + v6, v8, v9, v10, v11, v12, v13, 13);
        *v5 = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy(v17, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!der_utils_decode_implicit_raw_octet_string_copy(v18, 4, v5 + 5, 16))
        {
          return 0xFFFFFFFFLL;
        }

        v5[9] = der_get_number();
        v5[10] = der_get_number();
        v5[11] = der_get_number();
        v5[12] = der_get_number();
        v5[15] = der_get_number();
        v5[13] = der_get_number();
        v5[14] = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy_partial(&v19, 4, v5 + 16, 8u))
        {
          return 0xFFFFFFFFLL;
        }

        v14 = v5[9];
        if ((v14 & 0x400) != 0)
        {
          *(v5 + 9) = der_get_number();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 0x800) == 0)
        {
          return 0;
        }

        der_get_number();
        result = OUTLINED_FUNCTION_18();
        v5[20] = v15;
      }
    }
  }

  return result;
}

uint64_t encode_pfk_params_public(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = encode_list_cstr_add_data();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = encode_list_cstr_add_data();
      }

      v7 = OUTLINED_FUNCTION_20(a1, a2);
      if (!v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_16(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v18);
  return v3;
}

uint64_t decode_pfk_params_internal(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        OUTLINED_FUNCTION_10();
        if (der_dict_iterate())
        {
          if (!encode_list_cstr_get_data())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!encode_list_cstr_get_data())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  encode_list_free(&v6);
  return v3;
}

uint64_t encode_icsc_params_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v3 = 4294967285;
  v17 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && encode_list_add_data() || a1[2] && encode_list_add_data() || a1[4] && encode_list_add_data() || a1[6] && encode_list_add_data() || a1[8] && encode_list_add_data() || a1[10] && encode_list_add_data())
    {
      v3 = 4294967273;
    }

    else
    {
      v5 = encode_list_dict(&v17, &v15, &v16);
      if (v5)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        OUTLINED_FUNCTION_16(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16);
      }
    }
  }

  encode_list_free(&v17);
  return v3;
}

uint64_t decode_icsc_params_internal(uint64_t a1, uint64_t a2, void *__s)
{
  v82[29] = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v82, 0xE8uLL);
  v81 = der_key_acm_handle;
  v82[4] = der_key_username;
  v82[9] = der_key_label;
  v82[14] = der_key_data;
  v82[19] = der_key_timestamp;
  v82[24] = der_key_public_key;
  v75 = 0;
  v76 = 0;
  v77 = &v81;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_35(v6, a1 + a2, v7, v8, v9, v10, v11, v12, 6);
  OUTLINED_FUNCTION_1_2();
  v13 = ccder_blob_decode_range();
  if (v13)
  {
    v21 = OUTLINED_FUNCTION_2_2(v13, v14, v15, v16, v17, v18, v19, v20, v74, 0, 0, &v81, v78, v79, v80);
    *(v22 + 24) = v21;
    *__s = v23;
    __s[1] = v24;
  }

  OUTLINED_FUNCTION_1_2();
  v25 = ccder_blob_decode_range();
  if (v25)
  {
    v33 = OUTLINED_FUNCTION_2_2(v25, v26, v27, v28, v29, v30, v31, v32, v74, v75, v76, v77, v78, v79, v80);
    v34[4] = v33;
    __s[2] = v35;
    __s[3] = v36;
  }

  OUTLINED_FUNCTION_1_2();
  v37 = ccder_blob_decode_range();
  if (v37)
  {
    v45 = OUTLINED_FUNCTION_2_2(v37, v38, v39, v40, v41, v42, v43, v44, v74, v75, v76, v77, v78, v79, v80);
    *(v46 + 104) = v45;
    __s[4] = v47;
    __s[5] = v48;
  }

  OUTLINED_FUNCTION_1_2();
  v49 = ccder_blob_decode_range();
  if (v49)
  {
    v57 = OUTLINED_FUNCTION_2_2(v49, v50, v51, v52, v53, v54, v55, v56, v74, v75, v76, v77, v78, v79, v80);
    v58[9] = v57;
    __s[6] = v59;
    __s[7] = v60;
  }

  OUTLINED_FUNCTION_1_2();
  v61 = ccder_blob_decode_range();
  if (v61)
  {
    v69 = OUTLINED_FUNCTION_2_2(v61, v62, v63, v64, v65, v66, v67, v68, v74, v75, v76, v77, v78, v79, v80);
    *(v70 + 184) = v69;
    __s[8] = v71;
    __s[9] = v72;
  }

  OUTLINED_FUNCTION_1_2();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v78;
  __s[11] = (v79 - v78);
  return result;
}

uint64_t encode_fv_params_internal(uint64_t a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!encode_list_cstr_add_data())
      {
        v5 = encode_list_cstr_add_data();
        if (!v5)
        {
          v7 = OUTLINED_FUNCTION_20(v5, v6);
          if (!v7)
          {
            v3 = 0;
            OUTLINED_FUNCTION_16(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v18);
  return v3;
}

uint64_t decode_fv_params_internal(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        OUTLINED_FUNCTION_21_0(a3);
        OUTLINED_FUNCTION_10();
        if (der_dict_iterate())
        {
          encode_list_cstr_get_data();
          encode_list_cstr_get_data();
          v3 = 0;
        }
      }
    }
  }

  encode_list_free(&v5);
  return v3;
}

uint64_t ref_key_create_request_to_class(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_0_3();
    der_dict_iterate();
    return der_get_number() & 0x1F;
  }

  return v2;
}

uint64_t decode_peer_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  bzero(v10, 0xE8uLL);
  v9 = der_key_peer_unlock_token_status;
  v10[4] = der_key_peer_unwrapped_escrow_record_status;
  v10[9] = der_key_peer_wrapped_escrow_record_status;
  v10[14] = der_key_peer_flags;
  v10[19] = der_key_public_key;
  v11[2] = der_key_peer_kcv;
  v6 = xmmword_1E0BAB150;
  v7 = 0;
  v8 = &v9;
  OUTLINED_FUNCTION_0_3();
  der_dict_iterate();
  *a3 = der_get_number();
  *(a3 + 4) = der_get_number();
  *(a3 + 8) = der_get_number();
  *(a3 + 12) = der_get_number();
  v5 = 65;
  if (!der_utils_decode_implicit_raw_octet_string_copy_len(v11, 4, (a3 + 16), &v5))
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 88) = v5;
  return der_utils_decode_implicit_raw_octet_string_copy(v12, 4, (a3 + 96), 3) - 1;
}

void *ref_key_op_der_to_enum(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = der_key_op;
      if (der_key_op)
      {
        OUTLINED_FUNCTION_11();
        der_dict_iterate();
        return 0;
      }
    }
  }

  return v2;
}

void *der_utils_decode_implicit_raw_octet_string_alloc(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_19(a1);
  OUTLINED_FUNCTION_4_1();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  OUTLINED_FUNCTION_22(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return OUTLINED_FUNCTION_6_1(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t se_derivation_request_serialize(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_body_tl() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  OUTLINED_FUNCTION_17();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t se_derivation_request_deserialize(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v72) = a6;
  *(&v72 + 1) = a6 + a7;
  OUTLINED_FUNCTION_17();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = OUTLINED_FUNCTION_32(v12, v13, v14, v15, v16, v17, v18, v19, v67, 0, v72);
  v29 = der_utils_decode_implicit_uint64(v20, 0x8000000000000003, v21, v22, v23, v24, v25, v26, v27, v28);
  if (!v29)
  {
    return 4294967277;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_23();
    *a5 = v37;
  }

  v38 = OUTLINED_FUNCTION_32(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v73);
  v47 = der_utils_decode_implicit_uint64(v38, 0x8000000000000002, v39, v40, v41, v42, v43, v44, v45, v46);
  if (!v47)
  {
    return 4294967277;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_23();
    *a4 = v55;
  }

  v56 = OUTLINED_FUNCTION_32(v47, v48, v49, v50, v51, v52, v53, v54, v69, v71, v74);
  if (!der_utils_decode_implicit_uint64(v56, 0x8000000000000001, v57, v58, v59, v60, v61, v62, v63, v64))
  {
    return 4294967277;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_23();
    *a3 = v65;
  }

  OUTLINED_FUNCTION_1_2();
  if (ccder_blob_decode_range())
  {
    v72 = v77;
    if (a1)
    {
      if (a2)
      {
        *a1 = v75;
        *a2 = (v76 - v75);
      }
    }
  }

  if (v72 == *(&v72 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

void _merge_dict_cb_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136317954;
    v3 = "aks.fw";
    v4 = 2080;
    OUTLINED_FUNCTION_0();
    v5 = "_merge_dict_cb";
    v6 = v0;
    v7 = ":";
    v8 = v1;
    OUTLINED_FUNCTION_25();
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s bad 1%s\n", &v2, 0x72u);
  }
}

void _merge_dict_cb_cold_2(_BYTE *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136317954;
    v5 = "aks.fw";
    v6 = 2080;
    OUTLINED_FUNCTION_0();
    v7 = "_merge_dict_cb";
    v8 = v2;
    v9 = ":";
    v10 = v3;
    OUTLINED_FUNCTION_25();
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s fail%s\n", &v4, 0x72u);
  }

  *a1 = 0;
}

uint64_t encode_backup_bag(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + a3;
  if (!ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_body_tl() || !ccder_blob_encode_body_tl() || !ccder_blob_encode_body_tl() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  v3 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v3)
  {
    if (a2 == v6)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t decode_backup_bag(unint64_t a1, uint64_t a2, void *a3)
{
  v20.n128_u64[0] = a1;
  v20.n128_u64[1] = a1 + a2;
  if (!ccder_blob_decode_range() || !der_utils_decode_implicit_uint64(&v20, 0x8000000000000000, a3, v4, v5, v6, v7, v8, v9, v10) || !der_utils_decode_implicit_raw_octet_string_copy(&v20, 0x8000000000000001, a3 + 1, 16) || !der_utils_decode_implicit_raw_octet_string_copy(&v20, 0x8000000000000002, a3 + 3, 40) || !der_utils_decode_implicit_raw_octet_string_copy(&v20, 0x8000000000000003, a3 + 8, 16))
  {
    return 4294967277;
  }

  v18 = der_utils_decode_implicit_uint64(&v20, 0x8000000000000004, a3 + 10, v11, v12, v13, v14, v15, v16, v17);
  result = 4294967277;
  if (v18)
  {
    if (v20.n128_u64[0] == v20.n128_u64[1])
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

uint64_t wrap_backup_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  *__s = 0u;
  v19 = 0u;
  HIDWORD(v17) = 40;
  *a4 = 0;
  uuid_copy((a4 + 8), (a1 + 32));
  *(a4 + 80) = 1;
  platform_read_random(a4 + 64, 16);
  ccsha256_di();
  LODWORD(v6) = firebloom_ccpbkdf2_hmac();
  if (v6)
  {
    v14 = 4294967286;
  }

  else
  {
    v6 = rfc3394_wrap_legacy(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a1, 0x20u, (a4 + 24), &v17 + 1);
    if (v6)
    {
      v14 = v6;
    }

    else if (HIDWORD(v17) == 40)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4294967286;
    }
  }

  OUTLINED_FUNCTION_2(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);
  return v14;
}

uint64_t unwrap_backup_bag(const unsigned __int8 *a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v17 = *MEMORY[0x1E69E9840];
  *__s = 0u;
  v16 = 0u;
  HIDWORD(v14) = 32;
  if (*a1)
  {
    v11 = 4294967284;
  }

  else
  {
    v9 = a1;
    ccsha256_di();
    LODWORD(a1) = firebloom_ccpbkdf2_hmac();
    if (a1)
    {
      goto LABEL_9;
    }

    a1 = rfc3394_unwrap_legacy(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v9 + 3, 0x28u, a4, &v14 + 1);
    if (a1)
    {
      v11 = a1;
      goto LABEL_8;
    }

    if (HIDWORD(v14) != 32)
    {
LABEL_9:
      v11 = 4294967286;
    }

    else
    {
      v10 = cccurve25519_make_pub() == 0;
      REQUIRE_func(v10, 118, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/backup_serialize.c");
      LODWORD(a1) = uuid_compare(v9 + 8, (a4 + 32));
      if (a1)
      {
        v11 = 4294967272;
      }

      else
      {
        v11 = 0;
      }
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_2(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  return v11;
}

uint64_t aks_unpack_data(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = a1 + 1;
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = (v11 + 1);
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void aks_fv_new_vek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v78 = *MEMORY[0x1E69E9840];
  v13 = OUTLINED_FUNCTION_10_0(v1, v9, v10, v6, v4, v2, v11, v12, v48, v50, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, *(&v71 + 1), v72, v73, v74, v75, v76, v77);
  bzero(v13, v14);
  v58 = &v77;
  v59 = &v78;
  v60 = 4096;
  if (v7 && v5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      OUTLINED_FUNCTION_20_0(aks_client_connection, v24, v25, v26, v27, v28, v29, v30, v49, v51, v53, v55, v57, v58);
      LODWORD(v15) = ccder_blob_encode_body_tl();
      if (v15)
      {
        LODWORD(v15) = der_utils_encode_fv_data(&v58);
        if (v15)
        {
          LODWORD(v15) = der_utils_encode_fv_data(&v58);
          if (v15)
          {
            LODWORD(v15) = der_utils_encode_fv_params(&v58);
            if (v15)
            {
              OUTLINED_FUNCTION_17();
              LODWORD(v15) = ccder_blob_encode_tl();
              if (v15)
              {
                v31 = OUTLINED_FUNCTION_18_0();
                LODWORD(v15) = OUTLINED_FUNCTION_5_2(v31, 0x4Au, v32, 2u, v33, v34, v35, v36, v49, v51);
                if (!v15)
                {
                  v55 = v8;
                  v57 = v8 + v60;
                  OUTLINED_FUNCTION_17();
                  v15 = ccder_blob_decode_range();
                  if (v15)
                  {
                    v37 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v49, v51, v53, v8);
                    v15 = der_utils_decode_fv_data(v37, v38, v5);
                    if (v15)
                    {
                      if (v3)
                      {
                        v39 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v49, v51, v53, v55);
                        LODWORD(v15) = der_utils_decode_fv_key(v39, v40, v3);
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

    else
    {
      LODWORD(v15) = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(&v71 + 6) = "aks_fv_new_vek";
        HIWORD(v71) = v41;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v42);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v43, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v44, v45, v46, v47, v49, v51, v53, v55, v57, v58, v59, v60, v61, v62);
      }
    }
  }

  OUTLINED_FUNCTION_7_1(v15, v16, v17, v18, v19, v20, v21, v22, v49, v51, v53, v55, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, *(&v71 + 1), v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_13_0();
}

unint64_t _aks_save_file(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL _aks_load_file(_BOOL8 a1, void *a2, off_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t _get_path_class(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t __aks_dump_path_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t aks_fs_status(const char *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  bzero(v4, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v4);
    aks_fs_status_with_map(v4, &sharedPathMap, 36);
    if ((aks_fs_supports_enhanced_apfs() & 1) == 0)
    {
      aks_fs_status_with_map(__str, &userPathMap, 72);
    }
  }

  return 0;
}

uint64_t aks_user_fs_status(const char *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  bzero(v3, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v3))
  {
    aks_fs_status_with_map(v3, &userPathMap, 72);
  }

  return 0;
}

void aks_fv_new_kek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v64 = *MEMORY[0x1E69E9840];
  v12 = OUTLINED_FUNCTION_10_0(v1, v6, v8, v4, v2, v9, v10, v11, v37, v39, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  bzero(v12, v13);
  v42 = &v63;
  v43 = &v64;
  v44 = 4096;
  if (v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v23 = aks_client_connection;
      v14 = ccder_blob_encode_body_tl();
      if (v14)
      {
        v14 = der_utils_encode_fv_data(&v42);
        if (v14)
        {
          v14 = der_utils_encode_fv_params(&v42);
          if (v14)
          {
            OUTLINED_FUNCTION_17();
            v14 = ccder_blob_encode_tl();
            if (v14)
            {
              v45 = v7;
              v46 = v43;
              OUTLINED_FUNCTION_23_0();
              v14 = OUTLINED_FUNCTION_5_2(v23, 0x4Cu, v24, 3u, v25, v26, v27, v28, v38, v40);
              if (!v14)
              {
                *&v41 = v7;
                *(&v41 + 1) = v7 + v44;
                OUTLINED_FUNCTION_17();
                v14 = ccder_blob_decode_range();
                if (v14)
                {
                  v14 = der_utils_decode_fv_data(&v41, 0, v3);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(v29 + 70) = "aks_fv_new_kek";
        HIWORD(v57) = v30;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v31);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v33, v34, v35, v36, v38, v40, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47);
      }
    }
  }

  OUTLINED_FUNCTION_7_1(v14, v15, v16, v17, v18, v19, v20, v21, v38, v40, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  OUTLINED_FUNCTION_13_0();
}

void aks_fv_new_sibling_vek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v78 = *MEMORY[0x1E69E9840];
  v13 = OUTLINED_FUNCTION_10_0(v1, v9, v6, v4, v2, v10, v11, v12, v48, v50, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, *(&v71 + 1), v72, v73, v74, v75, v76, v77);
  bzero(v13, v14);
  v58 = &v77;
  v59 = &v78;
  v60 = 4096;
  if (v7 && v5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      OUTLINED_FUNCTION_20_0(aks_client_connection, v24, v25, v26, v27, v28, v29, v30, v49, v51, v53, v55, v57, v58);
      LODWORD(v15) = ccder_blob_encode_body_tl();
      if (v15)
      {
        LODWORD(v15) = der_utils_encode_fv_data(&v58);
        if (v15)
        {
          LODWORD(v15) = der_utils_encode_fv_params(&v58);
          if (v15)
          {
            OUTLINED_FUNCTION_17();
            LODWORD(v15) = ccder_blob_encode_tl();
            if (v15)
            {
              v31 = OUTLINED_FUNCTION_18_0();
              LODWORD(v15) = OUTLINED_FUNCTION_5_2(v31, 0x63u, v32, 2u, v33, v34, v35, v36, v49, v51);
              if (!v15)
              {
                v55 = v8;
                v57 = v8 + v60;
                OUTLINED_FUNCTION_17();
                v15 = ccder_blob_decode_range();
                if (v15)
                {
                  v37 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v49, v51, v53, v8);
                  v15 = der_utils_decode_fv_data(v37, v38, v5);
                  if (v15)
                  {
                    if (v3)
                    {
                      v39 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v49, v51, v53, v55);
                      LODWORD(v15) = der_utils_decode_fv_key(v39, v40, v3);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LODWORD(v15) = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(&v71 + 6) = "aks_fv_new_sibling_vek";
        HIWORD(v71) = v41;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v42);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v43, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v44, v45, v46, v47, v49, v51, v53, v55, v57, v58, v59, v60, v61, v62);
      }
    }
  }

  OUTLINED_FUNCTION_7_1(v15, v16, v17, v18, v19, v20, v21, v22, v49, v51, v53, v55, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, *(&v71 + 1), v72, v73, v74, v75, v76);
  OUTLINED_FUNCTION_13_0();
}

void aks_fv_rewrap_kek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v64[0] = *MEMORY[0x1E69E9840];
  v13 = OUTLINED_FUNCTION_10_0(v1, v10, v8, v6, v4, v2, v11, v12, v34, v36, v38, v40, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, v59, v60, v61, v62, v63[0]);
  bzero(v13, v14);
  v44 = v63;
  v45 = v64;
  v46 = 4096;
  if (v9 && v7 && v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v24 = aks_client_connection;
      v15 = der_utils_encode_fv_data(&v44);
      if (v15)
      {
        OUTLINED_FUNCTION_20_0(v15, v16, v17, v18, v19, v20, v21, v22, v35, v37, v39, v41, v43, v44);
        LODWORD(v15) = ccder_blob_encode_body_tl();
        if (v15)
        {
          LODWORD(v15) = der_utils_encode_fv_data(&v44);
          if (v15)
          {
            LODWORD(v15) = der_utils_encode_fv_data(&v44);
            if (v15)
            {
              LODWORD(v15) = der_utils_encode_fv_params(&v44);
              if (v15)
              {
                OUTLINED_FUNCTION_17();
                LODWORD(v15) = ccder_blob_encode_tl();
                if (v15)
                {
                  v47 = v45;
                  v48 = v64 - v45;
                  LODWORD(v15) = OUTLINED_FUNCTION_5_2(v24, 0x4Du, &v47, 2u, v19, v20, v21, v22, v63, &v46);
                  if (!v15)
                  {
                    v41 = v63;
                    v43 = &v63[v46];
                    OUTLINED_FUNCTION_17();
                    v15 = ccder_blob_decode_range();
                    if (v15)
                    {
                      v25 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v35, v37, v39, v63);
                      LODWORD(v15) = der_utils_decode_fv_data(v25, v26, v3);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LODWORD(v15) = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(&v57 + 6) = "aks_fv_rewrap_kek";
        HIWORD(v57) = v27;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v28);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v29, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v30, v31, v32, v33, v35, v37, v39, v41, v43, v44, v45, v46, v47, v48);
      }
    }
  }

  OUTLINED_FUNCTION_7_1(v15, v16, v17, v18, v19, v20, v21, v22, v35, v37, v39, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, v59, v60, v61, v62);
  OUTLINED_FUNCTION_13_0();
}

void aks_fv_set_protection()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  v56[0] = *MEMORY[0x1E69E9840];
  bzero(__s, 0x1000uLL);
  v27 = __s;
  v28 = v56;
  v29 = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v7 = aks_client_connection;
    if (!der_utils_encode_fv_data(&v27) || !der_utils_encode_fv_data(&v27) || !der_utils_encode_fv_data(&v27) || !der_utils_encode_fv_params(&v27) || (OUTLINED_FUNCTION_17(), !ccder_blob_encode_tl()) || (v30[0] = v5, v30[1] = v3, v30[2] = v28, v30[3] = v56 - v28, !OUTLINED_FUNCTION_5_2(v7, 0x54u, v30, 4u, v8, v9, v10, v11, __s, &v29)) && v29 && ((OUTLINED_FUNCTION_17(), v12 = ccder_blob_decode_range(), !v12) || v0 && (v20 = OUTLINED_FUNCTION_16_0(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25, v26, __s), (der_utils_decode_fv_data(v20, v21, v0) & 1) == 0)))
    {
      OUTLINED_FUNCTION_22_0();
    }
  }

  else
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_22_0();
    if (v23)
    {
      v31 = 136317954;
      v32 = "aks.fw";
      v33 = 2080;
      v34 = "";
      v35 = 1024;
      v36 = -1;
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = "";
      v41 = 2080;
      v42 = "";
      v43 = 2080;
      v44 = "";
      v45 = 2080;
      v46 = "aks_fv_set_protection";
      v47 = 2080;
      v48 = ":";
      v49 = 1024;
      v50 = 617;
      v51 = 2080;
      v52 = "";
      v53 = 2080;
      v54 = "";
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v31);
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  OUTLINED_FUNCTION_13_0();
}

void aks_fv_unwrap_vek_with_acm()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  v64[0] = *MEMORY[0x1E69E9840];
  v12 = OUTLINED_FUNCTION_10_0(v5, v3, v6, v7, v8, v9, v10, v11, v37, v39, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  bzero(v12, v13);
  v42 = &v63;
  v43 = v64;
  v44 = 4096;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v15 = aks_client_connection;
      if (!der_utils_encode_fv_data(&v42) || !der_utils_encode_fv_data(&v42) || !der_utils_encode_fv_data(&v42) || !der_utils_encode_fv_data(&v42) || !der_utils_encode_fv_params(&v42) || (OUTLINED_FUNCTION_17(), !ccder_blob_encode_tl()) || (v45 = v43, v46 = v64 - v43, OUTLINED_FUNCTION_23_0(), (v21 = OUTLINED_FUNCTION_5_2(v15, 0x4Bu, v16, 3u, v17, v18, v19, v20, v38, v40)) == 0) && ((*&v41 = v4, *(&v41 + 1) = v4 + v44, OUTLINED_FUNCTION_17(), (v21 = ccder_blob_decode_range()) == 0) || v0 && (v21 = der_utils_decode_fv_key(&v41, 0, v0), (v21 & 1) == 0)))
      {
        OUTLINED_FUNCTION_22_0();
      }
    }

    else
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_22_0();
      if (v21)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(v29 + 70) = "aks_fv_unwrap_vek_with_acm";
        HIWORD(v57) = v30;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v31);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v33, v34, v35, v36, v38, v40, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  OUTLINED_FUNCTION_7_1(v21, v22, v23, v24, v25, v26, v27, v28, v38, v40, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  OUTLINED_FUNCTION_13_0();
}

uint64_t __aks_gather_stats_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t aks_kext_get_options()
{
  input[3] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  if (!v2)
  {
    return (v0 + 6);
  }

  v3 = v2;
  input[0] = 0;
  input[1] = v1;
  input[2] = 0;
  output = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v0 = IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
    if (!v0)
    {
      *v3 = output;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136317954;
    v11 = "aks.fw";
    v12 = 2080;
    OUTLINED_FUNCTION_8();
    v13 = "aks_kext_get_options";
    v14 = v6;
    v15 = ":";
    v16 = v7;
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v8, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v10);
  }

  return v0;
}

void aks_stash_escrow()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v1;
  v49 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v23[0] = v16;
    v23[1] = v15;
    v23[2] = v13;
    v23[3] = v11;
    if ((!v15 || v5 && v3) && !OUTLINED_FUNCTION_19_0(aks_client_connection, 0x36u, v23, 4u, v9, v7, v18, v19, __src, &__count))
    {
      if (v15)
      {
        v20 = calloc(__count, 1uLL);
        *v5 = v20;
        if (v20)
        {
          memcpy(v20, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136317954;
      v25 = "aks.fw";
      v26 = 2080;
      v27 = "";
      v28 = 1024;
      v29 = -1;
      v30 = 2080;
      v31 = "";
      v32 = 2080;
      v33 = "";
      v34 = 2080;
      v35 = "";
      v36 = 2080;
      v37 = "";
      v38 = 2080;
      v39 = "aks_stash_escrow";
      v40 = 2080;
      v41 = ":";
      v42 = 1024;
      v43 = 891;
      v44 = 2080;
      v45 = "";
      v46 = 2080;
      v47 = "";
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v24);
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  OUTLINED_FUNCTION_13_0();
}

void akstest_new_key()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_17_0();
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = v5;
  v15[1] = v4;
  v14 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v11 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v15, 2u, v2, 0x10uLL, &v14, &outputCnt, outputStruct, &v11) && outputCnt == 1)
  {
    *v1 = v14;
    aks_unpack_data(outputStruct, v11, 3u, v6, v7, v8, v9, v10, v0);
  }

  OUTLINED_FUNCTION_13_0();
}

void akstest_new_ekwk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_17_0();
  v43[2] = *MEMORY[0x1E69E9840];
  v43[0] = v30;
  v43[1] = v29;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v37 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v43, 2u, v27, 0x10uLL, &v40, &outputCnt, outputStruct, &v37) && outputCnt == 3)
  {
    v36 = v41;
    *v26 = v40;
    *a22 = v36;
    *a25 = v42;
    aks_unpack_data(outputStruct, v37, 5u, v31, v32, v33, v34, v35, v25);
  }

  OUTLINED_FUNCTION_13_0();
}

uint64_t akstest_rewrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }

  free(*&inputStructCnt[1]);
  return a1;
}

void akstest_unwrap_key()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_27_0();
  v22[2] = *MEMORY[0x1E69E9840];
  v22[0] = v4;
  v22[1] = v5;
  v20 = 0;
  v19 = 0;
  bzero(v21, 0x400uLL);
  v18 = 1024;
  aks_pack_data(&v20, &v19, 2, v6, v7, v8, v9, v10, v0);
  if (!OUTLINED_FUNCTION_19_0(v1, 0x10u, v22, 2u, v20, v19, v11, v12, v21, &v18))
  {
    aks_unpack_data(v21, v18, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v20);
  OUTLINED_FUNCTION_13_0();
}

void akstest_unwrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_27_0();
  v42[3] = *MEMORY[0x1E69E9840];
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = a21;
  v40 = 0;
  v39 = 0;
  bzero(v41, 0x400uLL);
  v38 = 1024;
  aks_pack_data(&v40, &v39, 3, v26, v27, v28, v29, v30, v22);
  if (!OUTLINED_FUNCTION_19_0(v23, 0x17u, v42, 3u, v40, v39, v31, v32, v41, &v38))
  {
    aks_unpack_data(v41, v38, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v40);
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_get_internal_info_for_key(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28[1] = *MEMORY[0x1E69E9840];
  v28[0] = v1;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v7)
    {
      v11 = 18;
    }

    else
    {
      v11 = 0;
    }

    v12 = OUTLINED_FUNCTION_19_0(aks_client_connection, 0x5Du, v28, 1u, v7, v11, v9, v10, __src, &__n);
    v13 = __n;
    if (v12)
    {
      v7 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_25_0();
      if (v13 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v7 = (v7 + 6);
      }

      else
      {
        v14 = calloc(v13, 1uLL);
        *v5 = v14;
        v13 = __n;
        if (v14)
        {
          *v3 = __n;
          memcpy(v14, __src, v13);
          v7 = 0;
          v13 = __n;
        }

        else
        {
          v7 = (v7 + 1);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136317954;
      v21 = "aks.fw";
      v22 = 2080;
      OUTLINED_FUNCTION_8();
      v23 = "aks_get_internal_info_for_key";
      v24 = v16;
      v25 = ":";
      v26 = v17;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v20);
    }

    v13 = 0x8000;
  }

  memset_s(__src, v13, 0, v13);
  return v7;
}

void aks_delete_xart_leak_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t _iterate_path_cold_1(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

void aks_kext_set_options_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_internal_state_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_run_internal_test_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_operation_optional_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_46();
  a21 = v22;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  a12 = 0;
  if ((!v23 || der_get_sizeof(v23, v23 + v24) != v24 || !encode_list_add_der()) && (!v35 || der_get_sizeof(v35, v35 + v33) != v33 || !encode_list_add_der()) && (!v31 || !encode_list_add_data()))
  {
    OUTLINED_FUNCTION_30_1();
    if (!encode_list_dict(v36, v37, v38))
    {
      *v29 = 0;
      *v27 = 0;
    }
  }

  encode_list_free(&a12);
  OUTLINED_FUNCTION_44();
}

uint64_t aks_params_set_BOOL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_2();
  if (_params_get_der_key(v5, 3))
  {
    v6 = OUTLINED_FUNCTION_51();
    if (!encode_list_remove_key(v6, v7))
    {
      if (!a3)
      {
        return 0;
      }

      OUTLINED_FUNCTION_51();
      if (!encode_list_add_BOOL())
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t aks_params_get_BOOL(void *a1, int a2, _BYTE *a3)
{
  v6 = 0;
  result = _params_get_der_key(a2, 3);
  if (result)
  {
    result = encode_list_get_BOOL(a1, result, &v6);
    if (result)
    {
      result = 1;
      if (v6)
      {
        *a3 = 1;
      }
    }
  }

  return result;
}

uint64_t aks_params_set_number(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_2();
  if (_params_get_der_key(v5, 1))
  {
    v6 = OUTLINED_FUNCTION_51();
    if (!encode_list_remove_key(v6, v7))
    {
      if (!a3)
      {
        return 0;
      }

      v8 = OUTLINED_FUNCTION_51();
      if (!encode_list_add_number(v8, v9, v10))
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t aks_params_get_number(void *a1, int a2, void *a3)
{
  v6 = 0;
  result = _params_get_der_key(a2, 1);
  if (result)
  {
    result = encode_list_get_number(a1, result, &v6);
    if (a3)
    {
      if (result)
      {
        *a3 = v6;
        return 1;
      }
    }
  }

  return result;
}

uint64_t aks_params_get_data(void *a1, int a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  der_key = _params_get_der_key(a2, 2);
  if (der_key)
  {
    data = encode_list_get_data(a1, der_key, (a2 - 1) < 2, &v9, &v10);
    if (a3)
    {
      if (data)
      {
        *a3 = v10;
      }
    }
  }

  return v9;
}

uint64_t aks_encrypt(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, void *a7, size_t *a8)
{
  v8 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = a6;
  v40 = a5;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  if (!a7 || !a8)
  {
    goto LABEL_38;
  }

  v11 = a6;
  v12 = a5;
  v13 = a2;
  OUTLINED_FUNCTION_52();
  if (der_dict_find_value(v16, v17, v18) && (v34 = 0, v35 = 0, OUTLINED_FUNCTION_37(), der_dict_find_value(v19, v20, v21)))
  {
    if (der_dict_find_value(der_key_op_encrypt, 0, 0))
    {
      v8 = 0;
    }

    else
    {
      if (encode_list_merge_dict(&v38) || encode_list_merge_dict(&v37) || encode_list_merge_dict(&v36))
      {
        v8 = 0;
        v27 = 3758097085;
        goto LABEL_19;
      }

      encode_list_add_BOOL();
      encode_list_remove_key(&v37, der_key_acl);
      encode_list_add_list(&v37, der_key_acl, &v36);
      encode_list_remove_key(&v38, der_key_external_data);
      encode_list_add_list(&v38, der_key_external_data, &v37);
      v8 = encode_list_dict(&v38, &v40, &v39) == 0;
      v11 = v39;
      v12 = v40;
    }
  }

  else
  {
    v8 = 0;
  }

  v22 = aks_ref_key_create(a1, v13, 0, v12, v11, &v43);
  if (v22 || (v22 = aks_ref_key_encrypt(v43, v40, v39, a3, a4, &v42, &v41, v23, a4, v32, v33, v34, v35, 0, 0, v36, v37, v38, v39, v40, v41, v42), v22))
  {
    v27 = v22;
    goto LABEL_19;
  }

  if (encode_list_merge_dict(&v44) || encode_list_merge_dict(&v44) || (OUTLINED_FUNCTION_30_1(), der_dict_find_value(v24, v25, v26)) && encode_list_add_der())
  {
LABEL_38:
    v27 = 3758097090;
    goto LABEL_19;
  }

  if (encode_list_dict(&v44, a7, a8))
  {
    v27 = 3758097090;
  }

  else
  {
    v27 = 0;
  }

LABEL_19:
  encode_list_free(&v38);
  encode_list_free(&v37);
  encode_list_free(&v36);
  if (v8)
  {
    free(v40);
  }

  if (v43)
  {
    aks_ref_key_free(&v43);
  }

  free(v42);
  encode_list_free(&v44);
  switch(v27)
  {
    case 0xE007C009:
      return 3758097084;
    case 0xE00002CE:
    case 0xE00002E2:
    case 0xE007C008:
      return 3758097122;
    case 0xE00002BC:
      return 3758097084;
  }

  return v27;
}

uint64_t aks_ref_key_create(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = 3758097090;
  v12 = OUTLINED_FUNCTION_28_0();
  *v12 = 0;
  encode_list_add_key();
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  if (!a6)
  {
    goto LABEL_14;
  }

  v13 = OUTLINED_FUNCTION_59();
  v23 = v13;
  if (!v13)
  {
    v11 = 3758604298;
    goto LABEL_14;
  }

  v14 = v13;
  OUTLINED_FUNCTION_29_0(v13);
  if (a4 && encode_list_merge_dict(v12) || encode_list_add_number(v12, der_key_keybag_class, a2) || encode_list_add_number(v12, der_key_type, a3) || encode_list_dict(v12, &v26, &v27))
  {
LABEL_17:
    aks_ref_key_free(&v23);
    goto LABEL_14;
  }

  v15 = _aks_operation(a1);
  if (v15)
  {
    v11 = v15;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_1(v24, v25);
  OUTLINED_FUNCTION_30_1();
  if (der_dict_find_value(v16, v17, v18))
  {
    v14[4] = 0;
  }

  OUTLINED_FUNCTION_30_1();
  if (der_dict_find_value(v19, v20, v21))
  {
    v14[3] = 0;
  }

  v11 = 0;
  *a6 = v14;
  v24 = 0;
  v25 = 0;
LABEL_14:
  encode_list_free(v12);
  OUTLINED_FUNCTION_6_3(v12);
  free(v12);
  OUTLINED_FUNCTION_22_1(v26, v27);
  free(v26);
  OUTLINED_FUNCTION_22_1(v24, v25);
  free(v24);
  return v11;
}

uint64_t aks_ref_key_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, rsize_t a5)
{
  OUTLINED_FUNCTION_2_4();
  v10 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v10);
  encode_list_add_key();
  if (a4 && a5 && der_get_sizeof(a4, a4 + a5) == a5)
  {
    version = aks_ref_key_get_version(v7);
    if (!version)
    {
      v25 = 0;
      v26 = 0;
      v24 = 0;
      OUTLINED_FUNCTION_52();
      if (!der_dict_find_value(v12, v13, v14) || !der_dict_find_value(der_key_protected_data, &v24, &v25) || encode_list_add_der() || encode_list_add_der() || (OUTLINED_FUNCTION_30_1(), encode_list_dict(v15, v16, v17)))
      {
        encode_list_free(&v26);
        goto LABEL_19;
      }

      encode_list_free(&v26);
    }

    OUTLINED_FUNCTION_53();
    if (!_get_merged_params())
    {
      encode_list_remove_key(v6, der_key_data);
      v18 = OUTLINED_FUNCTION_18_1();
      encode_list_remove_key(v18, v19);
      v20 = encode_list_add_der();
      if (!v20 && !OUTLINED_FUNCTION_14_1(v20, der_key_ref_key))
      {
        OUTLINED_FUNCTION_37();
        if (!encode_list_dict(v6, v21, v22))
        {
          v5 = _aks_operation(*(v7 + 40));
        }
      }
    }

    if (!version)
    {
      OUTLINED_FUNCTION_22_1(a4, a5);
      free(a4);
    }
  }

LABEL_19:
  encode_list_free(v6);
  OUTLINED_FUNCTION_1_3();
  free(v6);
  return v5;
}

uint64_t aks_ref_key_delete()
{
  OUTLINED_FUNCTION_7_2();
  v2 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v2);
  encode_list_add_key();
  OUTLINED_FUNCTION_17_1();
  if (!_get_merged_params())
  {
    v3 = encode_list_remove_key(v1, der_key_ref_key);
    v4 = OUTLINED_FUNCTION_33_0(v3, der_key_ref_key);
    if (!v4 && !OUTLINED_FUNCTION_11_0(v4, v5))
    {
      OUTLINED_FUNCTION_3_2();
      v0 = _aks_operation(v6);
    }
  }

  encode_list_free(v1);
  OUTLINED_FUNCTION_1_3();
  free(v1);
  if (v18)
  {
    OUTLINED_FUNCTION_12_1(v18, v7, v8, v9, v10, v11, v12, v13, v15, v17, v18, v20);
    free(v19);
  }

  if (v15)
  {
    OUTLINED_FUNCTION_13_1(v15, v7, v8, v9, v10, v11, v12, v13, v15, v17);
    free(v16);
  }

  return v0;
}

uint64_t aks_ref_key_create_and_encrypt(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_49();
  v13 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v13);
  encode_list_add_key();
  v53 = 0;
  __n = 0;
  if (!a8)
  {
    goto LABEL_16;
  }

  v14 = OUTLINED_FUNCTION_59();
  v55 = v14;
  if (!v14)
  {
    OUTLINED_FUNCTION_45();
    goto LABEL_16;
  }

  v15 = v14;
  OUTLINED_FUNCTION_29_0(v14);
  if (a4 && encode_list_merge_dict(v9) || (v16 = OUTLINED_FUNCTION_34_0(), encode_list_remove_key(v16, v17), v18 = OUTLINED_FUNCTION_18_1(), encode_list_remove_key(v18, v19), v20 = encode_list_add_number(v9, der_key_keybag_class, a2), v20) || OUTLINED_FUNCTION_58(v20, der_key_type) || (OUTLINED_FUNCTION_24_1(), encode_list_add_data()) || (OUTLINED_FUNCTION_52(), encode_list_dict(v9, v21, v22)))
  {
LABEL_26:
    aks_ref_key_free(&v55);
    goto LABEL_16;
  }

  v23 = OUTLINED_FUNCTION_55();
  if (v23 || (v23 = OUTLINED_FUNCTION_39(v23, v24, v25, v26, v27, v28, v29, v30, v46, a8, a7, v51, v52, 0, 0, v55, v56, v57, v58, v59, v60), v23))
  {
    v8 = v23;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_1(v58, v59);
  OUTLINED_FUNCTION_37();
  if (der_dict_find_value(v31, v32, v33))
  {
    v15[4] = 0;
  }

  OUTLINED_FUNCTION_37();
  value = der_dict_find_value(v34, v35, v36);
  if (value)
  {
    v15[3] = 0;
  }

  OUTLINED_FUNCTION_23_1(value, v38, v39, v40, v41, v42, v43, v44, v47, v48, v50, 0, 0, v53, __n, v55, v56, v57);
LABEL_16:
  encode_list_free(v9);
  OUTLINED_FUNCTION_1_3();
  free(v9);
  if (v53)
  {
    OUTLINED_FUNCTION_22_1(v53, __n);
    free(v53);
  }

  if (v58)
  {
    OUTLINED_FUNCTION_22_1(v58, v59);
    free(v58);
  }

  if (v56)
  {
    OUTLINED_FUNCTION_22_1(v56, v57);
    free(v56);
  }

  if (v60)
  {
    OUTLINED_FUNCTION_22_1(v60, v61);
    free(v60);
  }

  return v8;
}

uint64_t aks_ref_key_create_and_wrap(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_49();
  v13 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v13);
  encode_list_add_key();
  v53 = 0;
  __n = 0;
  if (!a8)
  {
    goto LABEL_16;
  }

  v14 = OUTLINED_FUNCTION_59();
  v55 = v14;
  if (!v14)
  {
    OUTLINED_FUNCTION_45();
    goto LABEL_16;
  }

  v15 = v14;
  OUTLINED_FUNCTION_29_0(v14);
  if (a4 && encode_list_merge_dict(v9) || (v16 = OUTLINED_FUNCTION_34_0(), encode_list_remove_key(v16, v17), v18 = OUTLINED_FUNCTION_18_1(), encode_list_remove_key(v18, v19), v20 = encode_list_add_number(v9, der_key_keybag_class, a2), v20) || OUTLINED_FUNCTION_58(v20, der_key_type) || (OUTLINED_FUNCTION_24_1(), encode_list_add_data()) || (OUTLINED_FUNCTION_52(), encode_list_dict(v9, v21, v22)))
  {
LABEL_26:
    aks_ref_key_free(&v55);
    goto LABEL_16;
  }

  v23 = OUTLINED_FUNCTION_55();
  if (v23 || (v23 = OUTLINED_FUNCTION_39(v23, v24, v25, v26, v27, v28, v29, v30, v46, a8, a7, v51, v52, 0, 0, v55, v56, v57, v58, v59, v60), v23))
  {
    v8 = v23;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_1(v58, v59);
  OUTLINED_FUNCTION_37();
  if (der_dict_find_value(v31, v32, v33))
  {
    v15[4] = 0;
  }

  OUTLINED_FUNCTION_37();
  value = der_dict_find_value(v34, v35, v36);
  if (value)
  {
    v15[3] = 0;
  }

  OUTLINED_FUNCTION_23_1(value, v38, v39, v40, v41, v42, v43, v44, v47, v48, v50, 0, 0, v53, __n, v55, v56, v57);
LABEL_16:
  encode_list_free(v9);
  OUTLINED_FUNCTION_1_3();
  free(v9);
  if (v53)
  {
    OUTLINED_FUNCTION_22_1(v53, __n);
    free(v53);
  }

  if (v58)
  {
    OUTLINED_FUNCTION_22_1(v58, v59);
    free(v58);
  }

  if (v56)
  {
    OUTLINED_FUNCTION_22_1(v56, v57);
    free(v56);
  }

  if (v60)
  {
    OUTLINED_FUNCTION_22_1(v60, v61);
    free(v60);
  }

  return v8;
}

uint64_t aks_ref_key_encapsulate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, void *a7, void **a8, void *a9)
{
  OUTLINED_FUNCTION_20_1();
  v14 = v13;
  v30[2] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_2();
  v15 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v15);
  encode_list_add_key();
  LODWORD(v16) = 0;
  v17 = 0;
  v27[0] = 0;
  memset(__n, 0, sizeof(__n));
  v25 = 0;
  v24 = 0;
  v23 = 0;
  if (a6 && a8)
  {
    if (OUTLINED_FUNCTION_48())
    {
      goto LABEL_13;
    }

    encode_list_remove_key(v10, der_key_ref_key);
    OUTLINED_FUNCTION_53();
    if (encode_list_add_data() || encode_list_add_der() || encode_list_dict(v10, &__n[1], v27))
    {
      goto LABEL_13;
    }

    v18 = _aks_operation(*(v14 + 40));
    if (v18)
    {
      v9 = v18;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_45();
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 24) = 0u;
    v28 = 0u;
    v27[1] = der_key_op_compute_key;
    v30[1] = 0;
    v29[2] = der_key_data;
    der_dict_iterate();
    LODWORD(v16) = 0;
    v17 = 0;
    if (v28)
    {
      if (v29[3])
      {
        if (!der_utils_decode_implicit_raw_octet_string_alloc(v29, 4, &v25, __n))
        {
LABEL_13:
          v17 = 0;
          LODWORD(v16) = 0;
          goto LABEL_14;
        }

        v20 = der_utils_decode_implicit_raw_octet_string_alloc(v30, 4, &v23, &v24);
        v16 = v24;
        v17 = v23;
        if (v20)
        {
          v9 = 0;
          *a6 = v23;
          *a7 = v16;
          v23 = 0;
          v24 = 0;
          *a8 = v25;
          *a9 = __n[0];
          v25 = 0;
          __n[0] = 0;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_22_1(v17, v16);
  free(v23);
  OUTLINED_FUNCTION_22_1(v25, __n[0]);
  free(v25);
  encode_list_free(v10);
  OUTLINED_FUNCTION_1_3();
  free(v10);
  OUTLINED_FUNCTION_22_1(*&__n[1], v27[0]);
  free(*&__n[1]);
  OUTLINED_FUNCTION_22_1(0, 0);
  free(0);
  return v9;
}

uint64_t aks_ref_key_enable_test_keys(uint64_t a1)
{
  OUTLINED_FUNCTION_7_2();
  v4 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v4);
  encode_list_add_key();
  OUTLINED_FUNCTION_17_1();
  v5 = encode_list_add_data();
  if (!v5 && !OUTLINED_FUNCTION_11_0(v5, v6))
  {
    OUTLINED_FUNCTION_3_2();
    v1 = _aks_operation(a1);
  }

  encode_list_free(v2);
  OUTLINED_FUNCTION_1_3();
  free(v2);
  if (v18)
  {
    OUTLINED_FUNCTION_12_1(v18, v7, v8, v9, v10, v11, v12, v13, v15, v17, v18, v20);
    free(v19);
  }

  if (v15)
  {
    OUTLINED_FUNCTION_13_1(v15, v7, v8, v9, v10, v11, v12, v13, v15, v17);
    free(v16);
  }

  return v1;
}

void aks_ref_key_attest(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, rsize_t __n, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_27_1();
  a23 = v28;
  a24 = v29;
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_2_4();
  v30 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v30);
  encode_list_add_key();
  a12 = 0;
  if (v26)
  {
    if (v25)
    {
      if (!_get_merged_params())
      {
        encode_list_remove_key(&a12, der_key_ref_key);
        if (!encode_list_add_der())
        {
          OUTLINED_FUNCTION_25_1();
          if (!_get_merged_params())
          {
            v31 = OUTLINED_FUNCTION_15_1();
            encode_list_remove_key(v31, v32);
            v33 = encode_list_add_list(v24, der_key_data, &a12);
            if (!v33 && !OUTLINED_FUNCTION_14_1(v33, der_key_ref_key))
            {
              OUTLINED_FUNCTION_30_1();
              if (!encode_list_dict(v24, v34, v35))
              {
                _aks_operation(*(v27 + 40));
              }
            }
          }
        }
      }
    }
  }

  encode_list_free(&a12);
  encode_list_free(v24);
  OUTLINED_FUNCTION_1_3();
  free(v24);
  OUTLINED_FUNCTION_26_1();
}

uint64_t aks_ref_key_set_params(uint64_t a1, const void *a2, size_t __count)
{
  if (a2 && der_get_sizeof(a2, a2 + __count) != __count)
  {
    return 3758097090;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_22_1(v6, *(a1 + 56));
    free(*(a1 + 48));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  result = 0;
  if (a2 && __count)
  {
    v8 = calloc(__count, 1uLL);
    *(a1 + 48) = v8;
    *(a1 + 56) = __count;
    if (v8)
    {
      memcpy(v8, a2, __count);
      return 0;
    }

    else
    {
      return 3758604298;
    }
  }

  return result;
}

uint64_t aks_ref_key_validate_key()
{
  OUTLINED_FUNCTION_7_2();
  v2 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v2);
  encode_list_add_key();
  OUTLINED_FUNCTION_17_1();
  v4 = OUTLINED_FUNCTION_33_0(v3, der_key_ref_key);
  if (!v4 && !OUTLINED_FUNCTION_11_0(v4, v5))
  {
    OUTLINED_FUNCTION_3_2();
    v0 = _aks_operation(v6);
  }

  encode_list_free(v1);
  OUTLINED_FUNCTION_1_3();
  free(v1);
  if (v18)
  {
    OUTLINED_FUNCTION_12_1(v18, v7, v8, v9, v10, v11, v12, v13, v15, v17, v18, v20);
    free(v19);
  }

  if (v15)
  {
    OUTLINED_FUNCTION_13_1(v15, v7, v8, v9, v10, v11, v12, v13, v15, v17);
    free(v16);
  }

  return v0;
}

uint64_t _op_attest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_4();
  v11 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v11);
  encode_list_add_key();
  if (v8)
  {
    if (a5)
    {
      if (a6)
      {
        OUTLINED_FUNCTION_25_1();
        if (!_get_merged_params())
        {
          v12 = encode_list_remove_key(v7, der_key_ref_key);
          if (!OUTLINED_FUNCTION_14_1(v12, der_key_ref_key))
          {
            OUTLINED_FUNCTION_16_1();
            if (!encode_list_dict(v7, v13, v14))
            {
              v6 = OUTLINED_FUNCTION_10_1();
            }
          }
        }
      }
    }
  }

  encode_list_free(v7);
  OUTLINED_FUNCTION_1_3();
  free(v7);
  return v6;
}

uint64_t aks_sik_optional_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v16 = 0;
  OUTLINED_FUNCTION_7_2();
  if ((!v11 || v10 <= 0x20 && !encode_list_add_data()) && (!a3 || !encode_list_add_data()))
  {
    if (encode_list_is_empty(&v16))
    {
      v6 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_30_1();
      if (!encode_list_dict(v12, v13, v14))
      {
        v6 = 0;
        *a5 = 0;
        *a6 = 0;
      }
    }
  }

  encode_list_free(&v16);
  return v6;
}

uint64_t aks_sik_collection()
{
  OUTLINED_FUNCTION_2_4();
  v3 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_1(v3);
  encode_list_add_key();
  if (!v2 || !OUTLINED_FUNCTION_47())
  {
    OUTLINED_FUNCTION_16_1();
    if (!encode_list_dict(v1, v4, v5))
    {
      v0 = _aks_operation(0xFFFFFFFFLL);
    }
  }

  encode_list_free(v1);
  OUTLINED_FUNCTION_1_3();
  free(v1);
  return v0;
}

void decode_ref_key_with_result_cold_1(void *a1, unsigned int *a2, void **a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_22_1(a1, *a2);
    free(*a3);
  }
}

uint64_t aks_fv_apfs_get_default_disk(char *a1, size_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = 3758097084;
  bzero(&v19, 0x878uLL);
  if (a1)
  {
    if (statfs("/private/var", &v19))
    {
      v4 = 3758097136;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      v6 = __error();
      strerror(*v6);
      *v15 = 136318210;
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_11_1();
    }

    else
    {
      if (!strcmp(v19.f_fstypename, "apfs"))
      {
        if (strlcpy(a1, v19.f_mntfromname, a2) >= a2)
        {
          return 3758097084;
        }

        else
        {
          return 0;
        }
      }

      v4 = 3758097112;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      *v15 = 136317954;
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      *&v15[45] = 35;
      v15[47] = v13;
      v16 = v14;
      v17 = v13;
      v18 = v14;
      v7 = &dword_1E0B50000;
      v8 = MEMORY[0x1E69E9C10];
      v10 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s skipping: not apfs%s\n";
      v11 = v15;
      v9 = OS_LOG_TYPE_DEFAULT;
      v12 = 114;
    }

    _os_log_impl(v7, v8, v9, v10, v11, v12);
  }

  return v4;
}

uint64_t fv_apfs_remove_blob(uint64_t a1, uint64_t a2)
{
  result = 3758097090;
  if (a1)
  {
    if (a2)
    {
      result = APFSVolumeRemoveUnlockRecord();
      if (result)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v4 = __error();
          strerror(*v4);
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_5_4();
          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v5, v6, v7, v8, v9, v10);
        }

        return 3758097084;
      }
    }
  }

  return result;
}

uint64_t fv_apfs_set_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 3758097084;
  result = 3758097090;
  if (a1 && a2 && a3)
  {
    v6 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *a3, *(a3 + 8), *MEMORY[0x1E695E498]);
    if (v6)
    {
      v7 = v6;
      if (APFSVolumeSetUnlockRecord())
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v8 = __error();
          strerror(*v8);
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_5_4();
          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v9, v10, v11, v12, v13, v14);
        }
      }

      else
      {
        v4 = 0;
      }

      CFRelease(v7);
      return v4;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t aks_fv_apfs_get_blob_by_uuid()
{
  *&v3 = OUTLINED_FUNCTION_10_2(*MEMORY[0x1E69E9840]);
  v4 = (v0 + 6);
  *in = v3;
  v48 = v3;
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v2;
  if (!v2)
  {
    goto LABEL_19;
  }

  if (!MEMORY[0x1EEE82D88] || !MEMORY[0x1EEE82D80])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v7 = v1;
  if (APFSVolumeListUUIDsOfUnlockRecords())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
LABEL_31:
      LODWORD(v44[0]) = 136317954;
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_9_2();
      _os_log_impl(v32, v33, v34, v35, v36, v37);
    }

LABEL_32:
    v4 = 3758097084;
    goto LABEL_19;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
LABEL_16:
    if (v6[1])
    {
      v4 = 0;
    }

    else
    {
      v4 = (v0 + 52);
    }

    goto LABEL_19;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
    if (!OUTLINED_FUNCTION_12_2(ValueAtIndex, v12, v13, v14, v15, v16, v17, v18, theArray, theData, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10], v44[11], v44[12], *v45, *&v45[8], *&v45[16], *uu, *&uu[8]))
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

LABEL_25:
      LODWORD(v44[0]) = 136317954;
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_9_2();
      goto LABEL_26;
    }

    uuid_parse(in, uu);
    if (!uuid_compare(uu, v7))
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_16;
    }
  }

  UnlockRecord = APFSVolumeGetUnlockRecord();
  if (UnlockRecord)
  {
    v38 = UnlockRecord;
    v0 = (v0 + 52);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    strerror(v38);
    LODWORD(v44[0]) = 136318210;
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_3_3();
    *&v45[2] = v39;
    *&v45[10] = v40;
    *&v45[12] = v41;
    v26 = &dword_1E0B50000;
    v27 = MEMORY[0x1E69E9C10];
    v29 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s APFSVolumeGetUnlockRecord: %s\n%s\n";
    v30 = v44;
    v28 = OS_LOG_TYPE_DEFAULT;
    v31 = 124;
LABEL_26:
    _os_log_impl(v26, v27, v28, v29, v30, v31);
    goto LABEL_27;
  }

  if (!theData)
  {
    v0 = (v0 + 52);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  Length = CFDataGetLength(theData);
  v6[1] = Length;
  v21 = malloc(Length);
  *v6 = v21;
  if (v21)
  {
    v22 = v21;
    BytePtr = CFDataGetBytePtr(theData);
    v24 = CFDataGetLength(theData);
    memcpy(v22, BytePtr, v24);
    CFRelease(theData);
    theData = 0;
    goto LABEL_16;
  }

  v0 = (v0 + 1);
LABEL_27:
  v4 = v0;
LABEL_19:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return v4;
}

CFIndex fv_apfs_get_blobs()
{
  *&v2 = OUTLINED_FUNCTION_10_2(*MEMORY[0x1E69E9840]);
  Count = (v0 + 6);
  *in = v2;
  v39 = v2;
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v1;
  if (!v1)
  {
    goto LABEL_13;
  }

  if (!MEMORY[0x1EEE82D88] || !MEMORY[0x1EEE82D80])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (APFSVolumeListUUIDsOfUnlockRecords())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
LABEL_29:
      LODWORD(v35[0]) = 136317954;
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_9_2();
      _os_log_impl(v27, v28, v29, v30, v31, v32);
    }

LABEL_30:
    Count = 3758097084;
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      if (!OUTLINED_FUNCTION_12_2(ValueAtIndex, v8, v9, v10, v11, v12, v13, v14, theArray, value, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], *v36, *&v36[8], *&v36[16], *uu, *&uu[8]))
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

LABEL_23:
        LODWORD(v35[0]) = 136317954;
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_9_2();
        goto LABEL_24;
      }

      uuid_parse(in, uu);
      UnlockRecord = APFSVolumeGetUnlockRecord();
      if (UnlockRecord)
      {
        break;
      }

      if (!value)
      {
        v0 = (v0 + 52);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      CFArrayAppendValue(v5, value);
      CFRelease(value);
      value = 0;
      if (Count == ++v6)
      {
        Count = 0;
        goto LABEL_13;
      }
    }

    v17 = UnlockRecord;
    v0 = (v0 + 52);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    strerror(v17);
    LODWORD(v35[0]) = 136318210;
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_3_3();
    *&v36[2] = v18;
    *&v36[10] = v19;
    *&v36[12] = v20;
    v21 = &dword_1E0B50000;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s APFSVolumeGetUnlockRecord: %s\n%s\n";
    v24 = v35;
    v25 = OS_LOG_TYPE_DEFAULT;
    v26 = 124;
LABEL_24:
    _os_log_impl(v21, v22, v25, v23, v24, v26);
LABEL_25:
    Count = v0;
  }

LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (value)
  {
    CFRelease(value);
  }

  return Count;
}

uint64_t aks_fv_apfs_get_vek(uint64_t a1, void *a2)
{
  v3 = 3758097084;
  if (!APFSVolumeGetWVEK())
  {
    Length = CFDataGetLength(0);
    a2[1] = Length;
    v5 = malloc(Length);
    *a2 = v5;
    if (v5)
    {
      v6 = v5;
      BytePtr = CFDataGetBytePtr(0);
      memcpy(v6, BytePtr, a2[1]);
      return 0;
    }

    else
    {
      return 3758097085;
    }
  }

  return v3;
}

char *aks_create_escrow_blob(rsize_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a5 >> 16)
  {
    v10 = 0;
  }

  else
  {
    v10 = a5;
  }

  if (a3 != 32 || !v10 || !a4 || !a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 136318978;
    v23 = "aks.fw";
    v24 = 2080;
    v25 = "";
    v26 = 1024;
    v27 = -1;
    v28 = 2080;
    v29 = "";
    v30 = 2080;
    v31 = "";
    v32 = 2080;
    v33 = "";
    v34 = 2080;
    v35 = "";
    v36 = 2080;
    v37 = "aks_create_escrow_blob";
    v38 = 2080;
    v39 = ":";
    v40 = 1024;
    v41 = 26;
    v42 = 2080;
    v43 = "";
    v44 = 1024;
    *v45 = a2 == 0;
    *&v45[4] = 2048;
    *&v45[6] = a3;
    *&v45[14] = 1024;
    *&v45[16] = a4 == 0;
    *v46 = 2048;
    *&v46[2] = a5;
    v47 = 2080;
    v48 = "";
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Bad input %d %zd %d %zd%s\n";
    v19 = 146;
LABEL_23:
    _os_log_impl(&dword_1E0B50000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
    goto LABEL_24;
  }

  v11 = ccder_sizeof_raw_octet_string();
  if (__CFADD__(v11, ccder_sizeof_raw_octet_string()))
  {
LABEL_24:
    v15 = 0;
LABEL_25:
    v13 = 0;
    if (!a1)
    {
      return v15;
    }

    goto LABEL_16;
  }

  v12 = ccder_sizeof();
  v13 = v12;
  if (v12 >= 0x3C01)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 136318466;
    v23 = "aks.fw";
    v24 = 2080;
    v25 = "";
    v26 = 1024;
    v27 = -1;
    v28 = 2080;
    v29 = "";
    v30 = 2080;
    v31 = "";
    v32 = 2080;
    v33 = "";
    v34 = 2080;
    v35 = "";
    v36 = 2080;
    v37 = "aks_create_escrow_blob";
    v38 = 2080;
    v39 = ":";
    v40 = 1024;
    v41 = 31;
    v42 = 2080;
    v43 = "";
    v44 = 2048;
    *v45 = v13;
    *&v45[8] = 2048;
    *&v45[10] = 15360;
    *&v45[18] = 2080;
    *v46 = "";
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Escrow blob is too big %zd/%llu%s\n";
    v19 = 134;
    goto LABEL_23;
  }

  v14 = calloc(v12, 1uLL);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_25;
  }

  v20 = v14;
  v21 = &v14[v13];
  if (!ccder_blob_encode_body_tl() || !ccder_blob_encode_body_tl() || !ccder_blob_encode_tl() || v20 != v21)
  {
    memset_s(v15, v13, 0, v13);
    free(v15);
    goto LABEL_24;
  }

  if (a1)
  {
LABEL_16:
    *a1 = v13;
  }

  return v15;
}

uint64_t aks_parse_escrow_blob(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = 1;
  if (a1 && a2 >= 0x20)
  {
    v18 = a1;
    v19 = a1 + a2;
    if (ccder_blob_decode_range())
    {
      if ((v19 - v18 - 15360) < 0xFFFFFFFFFFFFC420)
      {
        v6 = 3;
      }

      else
      {
        v17 = 0;
        v16 = 0;
        v15 = 0;
        v14 = 0;
        der_utils_decode_implicit_raw_octet_string(&v18, 0x8000000000000000, &v17, &v16);
        if (v11 && (der_utils_decode_implicit_raw_octet_string(&v18, 0x8000000000000001, &v15, &v14), v12))
        {
          v6 = 0;
          *a3 = v16;
          *a4 = v17;
          *a5 = v14;
          *a6 = v15;
        }

        else
        {
          v6 = 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      v6 = 2;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136318210;
    v21 = "aks.fw";
    v22 = 2080;
    v23 = "";
    v24 = 1024;
    v25 = -1;
    v26 = 2080;
    v27 = "";
    v28 = 2080;
    v29 = "";
    v30 = 2080;
    v31 = "";
    v32 = 2080;
    v33 = "";
    v34 = 2080;
    v35 = "aks_parse_escrow_blob";
    v36 = 2080;
    v37 = ":";
    v38 = 1024;
    v39 = 100;
    v40 = 2080;
    v41 = "";
    v42 = 1024;
    v43 = v6;
    v44 = 2080;
    v45 = "";
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s escrow blob parse error %d%s\n", buf, 0x78u);
  }

  return v6;
}

uint64_t attest_verify(uint64_t a1, uint64_t a2)
{
  v8[140] = *MEMORY[0x1E69E9840];
  bzero(v8, 0x460uLL);
  v4 = OUTLINED_FUNCTION_27_2();
  result = aks_attest_context_init(v4, v5, v6);
  if (!result)
  {
    return aks_attest_context_verify(v8, a1, a2);
  }

  return result;
}

uint64_t aks_attest_context_init(uint64_t a1, uint64_t a2, char *a3)
{
  v76 = 0;
  result = 4294967285;
  if (a1 && a2 && a3)
  {
    bzero(a3, 0x460uLL);
    *(a3 + 2) = a1;
    *(a3 + 3) = a1 + a2;
    v74 = a1;
    v75 = a1 + a2;
    if (OUTLINED_FUNCTION_16_2(&v74, v7, &v74))
    {
      v8 = ccder_blob_decode_uint64();
      if (v8)
      {
        v16 = v76;
        *(a3 + 1) = v76;
      }

      else
      {
        v16 = *(a3 + 1);
      }

      if (v16 == 3)
      {
        v84 = 0;
        if (!OUTLINED_FUNCTION_15_2(v8, v9, v10, v11, v12, v13, v14, v15, v68, v74, v75, v76, v77, *(&v77 + 1), v78, v79, v80, v81, v82))
        {
          return 4294967272;
        }

        if (!ccder_blob_decode_uint64())
        {
          return 4294967272;
        }

        if (v84 != 3)
        {
          return 4294967272;
        }

        v79 = 0;
        if ((ccder_blob_decode_tl() & 1) == 0)
        {
          return 4294967272;
        }

        v47 = v79;
        v48 = v80;
        *(a3 + 7) = v79;
        *(a3 + 8) = v48;
        *&v80 = v48 + v47;
        *(a3 + 4) = v48 + v47;
        *(a3 + 5) = *(&v48 + 1);
        v49 = 0xA000000000000000;
        v50 = 32;
        do
        {
          v77 = v80;
          if (ccder_blob_decode_range())
          {
            if (v50 == 32)
            {
              if (!OUTLINED_FUNCTION_16_2(&v81, v51, &v81))
              {
                return 4294967272;
              }

              v52 = ccder_blob_decode_uint64();
              if (!v52)
              {
                return 4294967272;
              }

              if (v84 != 1)
              {
                return 4294967272;
              }

              v60 = OUTLINED_FUNCTION_10_3(v52, v53, v54, v55, v56, v57, v58, v59, v72, v74);
              if (!v60)
              {
                return 4294967272;
              }

              *(a3 + 72) = v83;
              if (!OUTLINED_FUNCTION_10_3(v60, v61, v62, v63, v64, v65, v66, v67, v73, v74))
              {
                return 4294967272;
              }

              *(a3 + 776) = v83;
              if (_parse_attest_blob((a3 + 776), 1))
              {
                return 4294967272;
              }
            }

            v80 = v77;
          }

          ++v49;
          --v50;
        }

        while (v50);
        if (v80 != *(&v80 + 1))
        {
          return 4294967272;
        }

        goto LABEL_46;
      }

      if (!v16)
      {
        if (!OUTLINED_FUNCTION_15_2(v8, v9, v10, v11, v12, v13, v14, v15, v68, v74, v75, v76, 0, *(&v77 + 1), v78, v79, v80, v81, v82))
        {
          return 4294967272;
        }

        v18 = v80;
        if (!OUTLINED_FUNCTION_16_2(&v80, v17, &v81))
        {
          return 4294967272;
        }

        v19 = v82;
        *(a3 + 4) = v18;
        *(a3 + 5) = v19;
        v20 = ccder_blob_decode_uint64();
        if (!v20)
        {
          return 4294967272;
        }

        if (v77 != 1)
        {
          return 4294967272;
        }

        v28 = OUTLINED_FUNCTION_10_3(v20, v21, v22, v23, v24, v25, v26, v27, v69, v74);
        if (!v28)
        {
          return 4294967272;
        }

        *(a3 + 72) = v83;
        v36 = OUTLINED_FUNCTION_10_3(v28, v29, v30, v31, v32, v33, v34, v35, v70, v74);
        if (!v36)
        {
          return 4294967272;
        }

        *(a3 + 88) = v83;
        if (!OUTLINED_FUNCTION_10_3(v36, v37, v38, v39, v40, v41, v42, v43, v71, v74))
        {
          return 4294967272;
        }

        *(a3 + 27) = v83;
        if (ccder_blob_decode_range())
        {
          if (!OUTLINED_FUNCTION_16_2(&v83, v44, &v83))
          {
            return 4294967272;
          }

          *(a3 + 776) = v83;
        }

        if (!OUTLINED_FUNCTION_16_2(&v80, v44, &v81))
        {
          return 4294967272;
        }

        if (!ccder_blob_decode_oid())
        {
          return 4294967272;
        }

        if (!ccder_blob_decode_range())
        {
          return 4294967272;
        }

        v45 = v82;
        if (v82 - v81 < 1)
        {
          return 4294967272;
        }

        v46 = v81 + 1;
        *(a3 + 7) = v82 - (v81 + 1);
        *(a3 + 8) = v46;
        if (v45 != *(&v80 + 1) || _parse_attest_blob((a3 + 88), 1) || _parse_attest_blob(a3 + 27, 0) || *(a3 + 97) && _parse_attest_blob((a3 + 776), 1))
        {
          return 4294967272;
        }

LABEL_46:
        result = 0;
        *a3 = 1;
        return result;
      }

      return 4294967284;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t aks_attest_context_verify(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  result = 4294967285;
  if (!a2 || !a3)
  {
    return result;
  }

  if (!a1 || (*a1 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136317954;
      v12 = "aks.fw";
      v13 = 2080;
      v14 = "";
      v15 = 1024;
      v16 = -1;
      v17 = 2080;
      v18 = "";
      v19 = 2080;
      v20 = "";
      v21 = 2080;
      v22 = "";
      v23 = 2080;
      v24 = "";
      v25 = 2080;
      v26 = "aks_attest_context_verify";
      v27 = 2080;
      v28 = ":";
      v29 = 1024;
      v30 = 1096;
      v31 = 2080;
      v32 = "";
      v33 = 2080;
      v34 = "";
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", &v11);
    }

    return 4294967282;
  }

  if (a3 == 65)
  {
    v5 = MEMORY[0x1E12E84B0](4294967285);
  }

  else
  {
    if (a3 != 97)
    {
      return result;
    }

    v5 = MEMORY[0x1E12E84C0](4294967285);
  }

  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  bzero(&v11 - v6, v6);
  v8 = OUTLINED_FUNCTION_27_2();
  if (MEMORY[0x1E12E84F0](v8))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a1[1];
  if (v9 == 3)
  {
    result = verify_simple_request(v7, a1);
    if (result)
    {
      return result;
    }

    return 0;
  }

  if (v9)
  {
    return 4294967284;
  }

  result = verify_certificate_request(v7, a1);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t attest_get(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, size_t *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(v11, 0x460uLL);
  result = aks_attest_context_init(a1, a2, v11);
  if (!result)
  {
    return aks_attest_context_get(v11, a3, a4, a5);
  }

  return result;
}

uint64_t aks_attest_context_get_uint64_internal(void *a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  result = aks_attest_context_get_internal(a1, a2, &v4, &v5);
  if (!result)
  {
    return ccder_blob_decode_uint64() - 1;
  }

  return result;
}

uint64_t aks_attest_context_get_header_version(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967285;
  }

  if (!a1 || (*a1 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v4, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v5, v6, v7, v8, 136317954);
    }

    return 4294967285;
  }

  result = 0;
  *a2 = *(a1 + 8);
  return result;
}

uint64_t aks_attest_context_get_blob(void *__src, int a2, void *__dst)
{
  if (__dst)
  {
    if (__src && (*__src & 1) != 0)
    {
      switch(a2)
      {
        case 1:
          v5 = __src + 11;
          if (__src[11])
          {
            v4 = __dst;
            v3 = v5;
            goto LABEL_14;
          }

          return 4294967293;
        case 3:
          if (__src[97])
          {
            v3 = __src + 97;
            goto LABEL_11;
          }

          return 4294967293;
        case 2:
          if (__src[54])
          {
            v3 = __src + 54;
LABEL_11:
            v4 = __dst;
LABEL_14:
            memcpy(v4, v3, 0x158uLL);
            return 0;
          }

          return 4294967293;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v8, v9, v10, v11, 136317954);
    }
  }

  return 4294967285;
}

uint64_t aks_attest_context_get_info(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  result = 4294967285;
  if (a2 && a3 && a4 && a5 && a6)
  {
    if (a1 && (*a1 & 1) != 0)
    {
      result = 0;
      v8 = *(a1 + 32);
      *a2 = v8;
      v9 = *(a1 + 48);
      *a3 = *(a1 + 40) - v8;
      *a4 = v9;
      v11 = a1 + 56;
      v10 = *(a1 + 56);
      *a5 = *(v11 + 8);
      *a6 = v10;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v13, v14, v15, v16, 136317954);
      }

      return 4294967285;
    }
  }

  return result;
}

uint64_t verify_certificate_request(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (_verify_ec_attest_blob(a1, a2 + 11) || a2[97] && _verify_ec_attest_blob(a1, a2 + 97))
  {
    return 0xFFFFFFFFLL;
  }

  memset(v20, 0, sizeof(v20));
  v18 = 48;
  v19 = 0;
  v4 = OUTLINED_FUNCTION_12_3();
  result = _calculate_digest(v4, v5, v6, a2, v20, &v18);
  if (!result)
  {
    result = aks_get_pub_key_cp(a2[17], &v19);
    if (!result)
    {
      v8 = v19;
      v9 = MEMORY[0x1EEE9AC00](result);
      OUTLINED_FUNCTION_29_1(v9, v10, v11, v12, v13, v14, v15, v16, v17);
      if (!MEMORY[0x1E12E84F0](v8, a2[18], a2[19], a1))
      {
        ccec_verify();
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t verify_simple_request(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  memset(__s1, 0, sizeof(__s1));
  v4 = ccsha256_di();
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12.i8[-v6];
  bzero(&v12 - v6, v8);
  ccdigest_init();
  if (_verify_ec_attest_blob(a1, (a2 + 776)))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(a2 + 32);
  v9 = 0xA000000000000000;
  v10 = 32;
  do
  {
    v13 = v12;
    if (ccder_blob_decode_range())
    {
      ccdigest_update();
      v12 = v13;
    }

    ++v9;
    --v10;
  }

  while (v10);
  if ((vmovn_s64(vceqq_s64(v12, vdupq_laneq_s64(v12, 1))).u32[0] & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 56) != 32)
  {
    return 4294967290;
  }

  (*(v4 + 56))(v4, v7, __s1);
  cc_clear();
  result = memcmp(__s1, *(a2 + 64), 0x20uLL);
  if (result)
  {
    return 4294967290;
  }

  *(a2 + 1) = 1;
  return result;
}

uint64_t aks_attest_context_get_sealed_hash(_BYTE *a1, const void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  v3 = 4294967285;
  if (a2 && a3)
  {
    if (!a1 || (*a1 & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        return v3;
      }

      *v31 = 136317954;
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_21_2();
      v32 = -1;
      OUTLINED_FUNCTION_5_5();
      v33 = "aks_attest_context_get_sealed_hash";
      v34 = v20;
      v35 = ":";
      v36 = v21;
      OUTLINED_FUNCTION_9_3();
      v18 = MEMORY[0x1E69E9C10];
      v19 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n";
      goto LABEL_28;
    }

    v6 = aks_attest_context_get(a1, 7, &v22, &v23);
    if (v6)
    {
      return v6;
    }

    v26 = v22;
    v27 = v22 + v23;
    __s1[0] = 0;
    __s1[1] = 0;
    v24 = 0;
    if (OUTLINED_FUNCTION_16_2(&v26, v7, &v26))
    {
      while (1)
      {
        if (v26)
        {
          v9 = v26 == v27;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          return 4294967293;
        }

        if (v26 > v27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v31 = 136317954;
            OUTLINED_FUNCTION_22_2();
            OUTLINED_FUNCTION_21_2();
            v32 = -1;
            OUTLINED_FUNCTION_5_5();
            v33 = "_find_sealed_data_hash";
            v34 = v11;
            v35 = ":";
            v36 = v12;
            OUTLINED_FUNCTION_9_3();
            OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s incorrect attestation data%s\n", v31);
          }

          return 4294967272;
        }

        if (!OUTLINED_FUNCTION_16_2(&v26, v8, __s1))
        {
          return 0xFFFFFFFFLL;
        }

        v29 = 0;
        v30 = 0;
        *v31 = *__s1;
        v28 = 0;
        if (!ccder_blob_decode_range() || ccn_read_uint())
        {
          return 0xFFFFFFFFLL;
        }

        *__s1 = *v31;
        if (v30)
        {
          break;
        }

        v3 = 0xFFFFFFFFLL;
        if (!ccder_blob_decode_tl() || v24 < 0x56)
        {
          return v3;
        }

        v10 = __s1[0];
        if (!memcmp(__s1[0], a2, 0x10uLL))
        {
          memcpy(a3, v10, 0x56uLL);
          return 0;
        }
      }

      v3 = 0xFFFFFFFFLL;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        return v3;
      }

      *v31 = 136317954;
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_21_2();
      v32 = -1;
      OUTLINED_FUNCTION_5_5();
      v33 = "_find_sealed_data_hash";
      v34 = v15;
      v35 = ":";
      v36 = v16;
      OUTLINED_FUNCTION_9_3();
      v18 = MEMORY[0x1E69E9C10];
      v19 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s version mis-match during load%s\n";
LABEL_28:
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, v18, v17, v19, v31);
      return v3;
    }

    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t aks_validate_certificate(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, size_t *a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v35 = 0;
  __count = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  result = 4294967285;
  if (!a1 || !a2)
  {
    return result;
  }

  v50 = 0uLL;
  v51 = 0uLL;
  v49 = 0uLL;
  if (CTParseCertificateSet(a1, a1 + a2, &v49, 3, &v30))
  {
    return 4294967286;
  }

  if (v30 != 2)
  {
    return 4294967285;
  }

  v12 = CTGetBAASubCAType(v50, *(&v50 + 1));
  result = 4294967272;
  if (v12 <= 4 && ((1 << v12) & 0x16) != 0)
  {
    v13 = CTEvaluateBAA(v12, a1, a2, 0, 0, &v35, &__count, &v33, &v34, v31);
    if (!v13)
    {
      result = 4294967286;
      if (!v35 || !__count)
      {
        return result;
      }

      v29 = 0;
      if (get_oid_property_integer(5u, 1u, v49, *(&v49 + 1), &v29))
      {
        return 4294967286;
      }

      v14 = (v29 & 0x1F000000) != 0 ? "ssca" : "acss";
      v15 = v49;
      exention_prop_by_id = _get_exention_prop_by_id(6u, 6u);
      v38 = 0;
      v39 = 0;
      v37 = 0;
      if (exention_prop_by_id[4])
      {
        return 4294967286;
      }

      if (_get_oid_property_value(6u, *(exention_prop_by_id + 1), v15, *(&v15 + 1), &v38, &v39))
      {
        return 4294967286;
      }

      if (!v38)
      {
        return 4294967286;
      }

      *buf = v38;
      v41 = v38 + v39;
      if ((ccder_blob_decode_tl() & 1) == 0)
      {
        return 4294967286;
      }

      if (v37 == 4 && *v14 == **buf)
      {
        v28 = 0;
        if (get_oid_property_integer(6u, 2u, v49, *(&v49 + 1), &v28))
        {
          return 4294967286;
        }

        if (v28 == 1)
        {
          v27 = 0;
          if (!get_oid_property_integer(6u, 8u, v49, *(&v49 + 1), &v27))
          {
            if (v27 == 6)
            {
              result = 0;
              if (a6 && a7)
              {
                v17 = calloc(__count, 1uLL);
                if (v17)
                {
                  *a6 = v17;
                  v18 = v35;
                  v19 = __count;
                  *a7 = __count;
                  memcpy(v17, v18, v19);
                  return 0;
                }

                else
                {
                  return 4294967279;
                }
              }

              return result;
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136317954;
              OUTLINED_FUNCTION_13_2("aks.fw");
              OUTLINED_FUNCTION_3_4();
              OUTLINED_FUNCTION_26_2();
              OUTLINED_FUNCTION_25_2();
              OUTLINED_FUNCTION_8_2();
              v21 = MEMORY[0x1E69E9C10];
              v22 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error: incorrect key type%s\n";
              goto LABEL_39;
            }
          }

          return 4294967286;
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          return 4294967286;
        }

        *buf = 136317954;
        OUTLINED_FUNCTION_13_2("aks.fw");
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_26_2();
        OUTLINED_FUNCTION_25_2();
        OUTLINED_FUNCTION_8_2();
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error: not attestion only key%s\n";
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          return 4294967286;
        }

        *buf = 136317954;
        OUTLINED_FUNCTION_13_2("aks.fw");
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_26_2();
        OUTLINED_FUNCTION_25_2();
        OUTLINED_FUNCTION_8_2();
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error: invalid namespace, expected ssca%s\n";
      }

LABEL_39:
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, v21, v20, v22, buf);
      return 4294967286;
    }

    v23 = v13;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318210;
      OUTLINED_FUNCTION_13_2("aks.fw");
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_25_2();
      v42 = 1741;
      v43 = v24;
      v44 = v25;
      v45 = v26;
      v46 = v23;
      v47 = v24;
      v48 = v25;
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error: CTEvaluateBAA returned %x%s\n", buf, 0x78u);
    }

    return 4294967274;
  }

  return result;
}

uint64_t get_oid_property_integer(unsigned int a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  exention_prop_by_id = _get_exention_prop_by_id(a1, a2);
  v19 = 0;
  v20 = 0;
  if ((exention_prop_by_id[4] - 3) < 0xFFFFFFFE)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = exention_prop_by_id;
  oid_property_value = _get_oid_property_value(a1, *(exention_prop_by_id + 1), a3, a4, &v19, &v20);
  result = 0xFFFFFFFFLL;
  if (!oid_property_value)
  {
    if (v19)
    {
      v17 = v19;
      v18 = &v19[v20];
      v13 = ccder_blob_decode_tl();
      result = 0xFFFFFFFFLL;
      if (v13)
      {
        v14 = v17;
        if (v10[4] == 1)
        {
          v15 = *v17 >> 7;
        }

        else
        {
          v15 = 0;
        }

        while (v14 != v18)
        {
          v16 = *v14++;
          v15 = v16 | (v15 << 8);
        }

        result = 0;
        *a5 = v15;
      }
    }
  }

  return result;
}

uint64_t aks_attest_context_dump()
{
  v57 = *MEMORY[0x1E69E9840];
  memset(v56, 0, 64);
  OUTLINED_FUNCTION_24_2();
  if (!v0 || (v1 = v0, (*v0 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136317954;
      v33 = "aks.fw";
      v34 = 2080;
      v35 = "";
      v36 = 1024;
      v37 = -1;
      v38 = 2080;
      v39 = "";
      v40 = 2080;
      v41 = "";
      v42 = 2080;
      v43 = "";
      v44 = 2080;
      v45 = "";
      v46 = 2080;
      v47 = "aks_attest_context_dump";
      v48 = 2080;
      v49 = ":";
      v50 = 1024;
      v51 = 1787;
      v52 = 2080;
      v53 = "";
      v54 = 2080;
      v55 = "";
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v30, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", &v32);
    }

    return 4294967285;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s dumping attestation info:%s\n", &v32);
  }

  if (v1[11])
  {
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_23_2();
    result = _calculate_digest(v8, v9, v10, v1, v11, v12);
    if (result)
    {
      return result;
    }

    dump_bytes_internal("osk pub", v1[19], v1[18]);
    dump_bytes_internal("request digest", v56, v31);
    dump_bytes_internal("request sig", v1[16], v1[15]);
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_23_2();
    result = _calculate_digest(v13, v14, v15, (v1 + 11), v16, v17);
    if (result)
    {
      return result;
    }

    dump_bytes_internal("osk digest", v56, v31);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v3, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s \x1B[38;5;112mno osk detected\x1B[0m%s\n", &v32);
  }

  dump_bytes_internal("osk sig", v1[16], v1[15]);
  if (v1[54])
  {
    OUTLINED_FUNCTION_24_2();
    dump_bytes_internal("self pub", v1[62], v1[61]);
    if (v1[59])
    {
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_23_2();
      result = _calculate_digest(v24, v25, v26, v27, v28, v29);
      if (result)
      {
        return result;
      }

      dump_bytes_internal("self digest", v56, v31);
      dump_bytes_internal("self sig", v1[59], v1[58]);
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_6_5();
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s self has no sig%s\n";
LABEL_14:
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, v5, v4, v6, &v32);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_6_5();
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s \x1B[38;5;112mno self detected\x1B[0m%s\n";
    goto LABEL_14;
  }

LABEL_15:
  if (!v1[97])
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_23_2();
  result = _calculate_digest(v18, v19, v20, v21, v22, v23);
  if (!result)
  {
    dump_bytes_internal("aa digest", v56, v31);
    dump_bytes_internal("aa sig", v1[102], v1[101]);
    return 0;
  }

  return result;
}

uint64_t _calculate_digest(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26[0] = 0;
  v12 = ccsha384_di();
  result = aks_get_digest_info(a1, v26);
  if (!result)
  {
    v14 = v26[0];
    if (v14 == ccsha256_di())
    {
      v15 = 32;
    }

    else if (v14 == ccsha384_di())
    {
      v15 = 48;
    }

    else
    {
      if (v14 != ccsha512_di())
      {
        return 4294967272;
      }

      v15 = 64;
    }

    if (*a6 < v15)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = v14;
    if ((ccoid_equal() & 1) == 0)
    {
      result = aks_get_pub_key_cp(a2, &v25);
      if (result)
      {
        return result;
      }

      v17 = v25;
      v16 = v12;
      if (v17 == MEMORY[0x1E12E84B0]())
      {
        v16 = ccsha256_di();
      }
    }

    OUTLINED_FUNCTION_18_2();
    MEMORY[0x1EEE9AC00](v18);
    v20 = &v24 - v19;
    bzero(&v24 - v19, v21);
    ccdigest_init();
    result = a3(v16, v20, a4);
    if (!result)
    {
      (*(v16 + 56))(v16, v20, a5);
      cc_clear();
      if (v16 == ccsha256_di() && v14 != ccsha256_di())
      {
        v22 = *(a5 + 16);
        *(a5 + 16) = *a5;
        *(a5 + 32) = v22;
        *a5 = 0;
        *(a5 + 8) = 0;
      }

      if (v16 == ccsha384_di() && v14 != ccsha384_di())
      {
        v23 = *(a5 + 32);
        *a5 = *(a5 + 16);
        *(a5 + 16) = v23;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
      }

      result = 0;
      *a6 = v15;
    }
  }

  return result;
}

uint64_t _osk_digest_update(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[3];
  if (!v3)
  {
    return 4294967285;
  }

  v4 = a3[4];
  if (!v4)
  {
    return 4294967285;
  }

  v5 = a3[5];
  if (v4 >= v3 || v5 == 0)
  {
    return 4294967285;
  }

  if (v5 >= v3 || v5 <= v4)
  {
    return 4294967285;
  }

  ccdigest_update();
  return 0;
}

uint64_t _parse_attest_blob(__int128 *a1, char a2)
{
  v220 = 0;
  v221 = 0;
  v4 = a1 + 1;
  v219 = *a1;
  v5 = ccder_blob_decode_uint64();
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = OUTLINED_FUNCTION_28_1(v5, v6, v7, v8, v9, v10, v11, v12, v184, v201, v217, v218, v219);
  if (!OUTLINED_FUNCTION_16_2(v13, v14, v15) || !ccder_blob_decode_oid())
  {
    return 0xFFFFFFFFLL;
  }

  v16 = ccoid_equal();
  if (v16)
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_1(v16, v17, v18, v19, v20, v21, v22, v23, v185, v202, v217, v218, v219);
    v16 = ccder_blob_decode_range();
    if (!v16 || v221 - v220 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v24 = v220 + 1;
    *(a1 + 4) = v221 - (v220 + 1);
    *(a1 + 5) = v24;
  }

  v25 = OUTLINED_FUNCTION_28_1(v16, v17, v18, v19, v20, v21, v22, v23, v185, v202, 0, 0, v219);
  if (!OUTLINED_FUNCTION_16_2(v25, v26, v27))
  {
    return 0xFFFFFFFFLL;
  }

  if (!OUTLINED_FUNCTION_16_2(&v220, v28, &v217))
  {
    return 0xFFFFFFFFLL;
  }

  if (!ccder_blob_decode_oid())
  {
    return 0xFFFFFFFFLL;
  }

  if (!ccder_blob_decode_range())
  {
    return 0xFFFFFFFFLL;
  }

  if (!ccder_blob_decode_oid())
  {
    return 0xFFFFFFFFLL;
  }

  v29 = ccder_blob_decode_range();
  if (!v29)
  {
    return 0xFFFFFFFFLL;
  }

  v38 = v217;
  v37 = v218;
  if (v218 - v217 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v39 = v217 + 1;
  v40 = v218 - (v217 + 1);
  *(a1 + 7) = v40;
  *(a1 + 8) = v38 + 1;
  if (v37 == v38 + 1)
  {
    return 0xFFFFFFFFLL;
  }

  v41 = 0;
  if (*v4 == 2)
  {
    v29 = ccoid_equal();
    if ((v29 & 1) != 0 || (v29 = ccoid_equal(), v29))
    {
      v41 = 1;
    }
  }

  *(a1 + 10) = v39 + v41;
  *(a1 + 11) = v40 - v41;
  if (v219 == *(a1 + 1))
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_1(v29, v30, v31, v32, v33, v34, v35, v36, v186, 0, 0, v218, v219);
  if (!ccder_blob_decode_range())
  {
    return 0xFFFFFFFFLL;
  }

  v42 = ccder_blob_decode_tl();
  if (!v42)
  {
    return 0xFFFFFFFFLL;
  }

  if (v217 != 8)
  {
    return 0xFFFFFFFFLL;
  }

  v50 = v220;
  *(a1 + 84) = *v220;
  *(a1 + 18) = v50[1];
  *(a1 + 12) = v50;
  *(a1 + 13) = 8;
  v51 = OUTLINED_FUNCTION_11_2(v42, v43, v44, v45, v46, v47, v48, v49, v187, v203, v217, v218, v219);
  v53 = _parse_digest_value(v51, v52, 2u);
  if (!v53)
  {
    return 0xFFFFFFFFLL;
  }

  v61 = OUTLINED_FUNCTION_11_2(v53, v54, v55, v56, v57, v58, v59, v60, v188, v204, v217, v218, v219);
  v63 = _parse_digest_value(v61, v62, 3u);
  if (!v63)
  {
    return 0xFFFFFFFFLL;
  }

  v71 = OUTLINED_FUNCTION_11_2(v63, v64, v65, v66, v67, v68, v69, v70, v189, v205, v217, v218, v219);
  v73 = _parse_digest_value(v71, v72, 5u);
  if (!v73)
  {
    return 0xFFFFFFFFLL;
  }

  v81 = OUTLINED_FUNCTION_11_2(v73, v74, v75, v76, v77, v78, v79, v80, v190, v206, v217, v218, v219);
  v83 = _parse_digest_value(v81, v82, 6u);
  if (!v83)
  {
    return 0xFFFFFFFFLL;
  }

  v91 = OUTLINED_FUNCTION_11_2(v83, v84, v85, v86, v87, v88, v89, v90, v191, v207, v217, v218, v219);
  v93 = _parse_digest_value(v91, v92, 4u);
  if (!v93)
  {
    return 0xFFFFFFFFLL;
  }

  v101 = OUTLINED_FUNCTION_11_2(v93, v94, v95, v96, v97, v98, v99, v100, v192, v208, v217, v218, v219);
  v103 = _parse_digest_value(v101, v102, 9u);
  if (!v103)
  {
    return 0xFFFFFFFFLL;
  }

  v111 = OUTLINED_FUNCTION_11_2(v103, v104, v105, v106, v107, v108, v109, v110, v193, v209, v217, v218, v219);
  v113 = _parse_digest_value(v111, v112, 0xAu);
  if (!v113)
  {
    return 0xFFFFFFFFLL;
  }

  v121 = OUTLINED_FUNCTION_11_2(v113, v114, v115, v116, v117, v118, v119, v120, v194, v210, v217, v218, v219);
  v123 = _parse_digest_value(v121, v122, 7u);
  if (!v123)
  {
    return 0xFFFFFFFFLL;
  }

  v131 = OUTLINED_FUNCTION_11_2(v123, v124, v125, v126, v127, v128, v129, v130, v195, v211, v217, v218, v219);
  v133 = _parse_digest_value(v131, v132, 8u);
  if (!v133)
  {
    return 0xFFFFFFFFLL;
  }

  v141 = OUTLINED_FUNCTION_11_2(v133, v134, v135, v136, v137, v138, v139, v140, v196, v212, v217, v218, v219);
  v143 = _parse_digest_value(v141, v142, 0xBu);
  if (!v143)
  {
    return 0xFFFFFFFFLL;
  }

  v151 = OUTLINED_FUNCTION_11_2(v143, v144, v145, v146, v147, v148, v149, v150, v197, v213, v217, v218, v219);
  v153 = _parse_digest_value(v151, v152, 0xCu);
  if (!v153)
  {
    return 0xFFFFFFFFLL;
  }

  v161 = OUTLINED_FUNCTION_11_2(v153, v154, v155, v156, v157, v158, v159, v160, v198, v214, v217, v218, v219);
  v163 = _parse_digest_value(v161, v162, 0xDu);
  if (!v163)
  {
    return 0xFFFFFFFFLL;
  }

  v171 = OUTLINED_FUNCTION_11_2(v163, v164, v165, v166, v167, v168, v169, v170, v199, v215, v217, v218, v219);
  v173 = _parse_digest_value(v171, v172, 0xEu);
  if (!v173)
  {
    return 0xFFFFFFFFLL;
  }

  v181 = OUTLINED_FUNCTION_11_2(v173, v174, v175, v176, v177, v178, v179, v180, v200, v216, v217, v218, v219);
  if (!_parse_digest_value(v181, v182, 0xFu))
  {
    return 0xFFFFFFFFLL;
  }

  if (v219 == *(&v219 + 1))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _get_param_data(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v14 = v4;
  v15 = v5;
  v13 = 0;
  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    while (1)
    {
      if (v4 > v5)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 136317954;
          *&v16[4] = "aks.fw";
          v17 = 2080;
          v18 = "";
          v19 = 1024;
          v20 = -1;
          v21 = 2080;
          v22 = "";
          v23 = 2080;
          v24 = "";
          v25 = 2080;
          v26 = "";
          v27 = 2080;
          v28 = "";
          v29 = 2080;
          v30 = "_get_param_data";
          v31 = 2080;
          v32 = ":";
          v33 = 1024;
          v34 = 761;
          v35 = 2080;
          v36 = "";
          v37 = 2080;
          v38 = "";
          OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s incorrect attestation data%s\n", v16);
        }

        return 4294967272;
      }

      if (!ccder_blob_decode_tag() || !ccder_blob_decode_len())
      {
        return 0xFFFFFFFFLL;
      }

      if (!*(a2 + 8))
      {
        break;
      }

      v4 = v14;
      result = 4294967293;
      if (v14)
      {
        v5 = v15;
        if (v14 != v15)
        {
          continue;
        }
      }

      return result;
    }

    *v16 = 0;
    v12 = v14;
    if (ccder_blob_decode_tl())
    {
      v12 = v14;
      v13 = *v16;
    }

    if (v12)
    {
      result = 0;
      *a3 = v12;
      *a4 = v13;
      return result;
    }
  }

  return 4294967293;
}

uint64_t _verify_ec_attest_blob(uint64_t a1, void *a2)
{
  if ((ccoid_equal() & 1) == 0 && !ccoid_equal() || (ccoid_equal() & 1) == 0 && !ccoid_equal() || !*a2 || !a2[5] || !a2[4])
  {
    return 4294967272;
  }

  OUTLINED_FUNCTION_2_6();
  v3 = OUTLINED_FUNCTION_27_2();
  result = _calculate_digest(v3, v4, v5, a2, v6, v7);
  if (!result)
  {
    if (ccec_verify())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void aks_attest_context_get_cold_1(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v3, v4, v5, v6, v7);
  }

  *a1 = -11;
}

void aks_attest_context_get_uint64_cold_1(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v3, v4, v5, v6, v7);
  }

  *a1 = -11;
}

void _get_oid_property_value_cold_1(_DWORD *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 136318210;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    v5 = v2;
    v6 = v3;
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s extension error %s%s\n", v4, 0x7Cu);
  }

  *a1 = -1;
}

uint64_t aks_migrate_user_fs(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20[0]);
  bzero(v10, v11);
  v12 = 0xFFFFFFFFLL;
  HIDWORD(v19) = -1;
  if (realpath_DARWIN_EXTSN(a1, v20))
  {
    if (aks_migrate_fs_required(v20, a2, ".aks_migrate", &v19 + 1, v13, v14, v15, v16) && ((v17 = aks_migrate_fs_with_map(v20, a2, &userPathMap, *"H"), v17) || (v17 = _aks_version_commit(SHIDWORD(v19), 49), v17)))
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  return v12;
}

uint64_t aks_migrate_fs_required(const char *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = OUTLINED_FUNCTION_0_7(a1, a2, a3, a4, a5, a6, a7, a8, v32, v33, v34, v36);
  bzero(v12, v13);
  if ((v10 & 2) != 0 || (result = _data_protection_enabled(a1), result))
  {
    v21 = OUTLINED_FUNCTION_0_7(result, v15, "%s/%s", v16, v17, v18, v19, v20, a1, a3, v35, v37);
    v24 = snprintf(v21, v22, v23);
    v30 = OUTLINED_FUNCTION_2_7(v24, v25, v26, v27, v28, v29);
    if (v30 != -1)
    {
      v31 = v30;
      if ((v10 & 2) != 0 || !_aks_version_check(v30, 49))
      {
        *a4 = v31;
        return 1;
      }

      close(v31);
    }

    return 0;
  }

  return result;
}

uint64_t aks_migrate_fs(const char *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  bzero(v36, 0x400uLL);
  v12 = OUTLINED_FUNCTION_0_7(v4, v5, v6, v7, v8, v9, v10, v11, v31, v32, v34, v35[0]);
  bzero(v12, v13);
  v14 = 0xFFFFFFFFLL;
  HIDWORD(v34) = -1;
  v15 = realpath_DARWIN_EXTSN(a1, v36);
  if (v15)
  {
    v22 = OUTLINED_FUNCTION_0_7(v15, v16, "%s/mobile", v17, v18, v19, v20, v21, v36, v33, v34, v35[0]);
    snprintf(v22, v23, v24);
    if (aks_migrate_fs_required(v36, a2, "root/.aks_migrate", &v34 + 1, v25, v26, v27, v28) && ((v29 = aks_migrate_fs_with_map(v36, a2, &sharedPathMap, *"$"), v29) || (aks_fs_supports_enhanced_apfs() & 1) == 0 && (v29 = aks_migrate_fs_with_map(v35, a2, &userPathMap, *"H"), v29) || (v29 = _aks_version_commit(SHIDWORD(v34), 49), v29)))
    {
      return v29;
    }

    else
    {
      return 0;
    }
  }

  return v14;
}

uint64_t aks_bootstrap_shared_fs(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 22;
  }

  v8 = a2;
  v10 = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14[0]);
  bzero(v10, v11);
  if (!realpath_DARWIN_EXTSN(a1, v14))
  {
    return 0xFFFFFFFFLL;
  }

  result = aks_bootstrap_fs_required(v14, "root/.bootstrapped", v8);
  if (!result)
  {
    return result;
  }

  if (aks_bootstrap_fs_with_map(v14))
  {
    return 0xFFFFFFFFLL;
  }

  aks_bootstrap_fs_done(v14, "root/.bootstrapped");
  return 0;
}

uint64_t aks_bootstrap_fs_required(const char *a1, uint64_t a2, char a3)
{
  v33 = *MEMORY[0x1E69E9840];
  result = _data_protection_enabled(a1);
  if (result)
  {
    v14 = OUTLINED_FUNCTION_0_7(result, v7, v8, v9, v10, v11, v12, v13, v28, v29, v30, v32[0]);
    bzero(v14, v15);
    v23 = OUTLINED_FUNCTION_0_7(v16, v17, "%s/%s", v18, v19, v20, v21, v22, a1, a2, v31, v32[0]);
    snprintf(v23, v24, v25);
    v26 = MEMORY[0x1E69E9858];
    if (a3)
    {
      fprintf(*MEMORY[0x1E69E9858], "checking path: %s\n", v32);
    }

    v27 = access(v32, 4) | a3 & 2;
    result = v27 != 0;
    if ((a3 & 1) != 0 && !v27)
    {
      fprintf(*v26, "%s has already been bootstrapped\n", a1);
      return 0;
    }
  }

  return result;
}

uint64_t aks_bootstrap_user_fs(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 22;
  }

  OUTLINED_FUNCTION_4_5();
  v11 = OUTLINED_FUNCTION_3_5(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15[0]);
  bzero(v11, v12);
  if (!realpath_DARWIN_EXTSN(v2, v15))
  {
    return 0xFFFFFFFFLL;
  }

  result = aks_bootstrap_fs_required(v15, ".bootstrapped", v1);
  if (!result)
  {
    return result;
  }

  if (aks_bootstrap_fs_with_map(v15))
  {
    return 0xFFFFFFFFLL;
  }

  aks_bootstrap_fs_done(v15, ".bootstrapped");
  return 0;
}