uint64_t XmlInitEncoding(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  EncodingIndex = getEncodingIndex(a3);
  if (EncodingIndex == -1)
  {
    return 0;
  }

  *(a1 + 133) = EncodingIndex;
  *a1 = initScanProlog;
  *(a1 + 8) = initScanContent;
  *(a1 + 96) = initUpdatePosition;
  *(a1 + 136) = a2;
  *a2 = a1;
  return 1;
}

XML_Parser XML_ParserCreateNS(const XML_Char *encoding, XML_Char namespaceSeparator)
{
  v3[0] = namespaceSeparator;
  v3[1] = 0;
  return parserCreate(encoding, 0, v3, 0);
}

unint64_t parserInit(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 544) = prologInitProcessor;
  XmlPrologStateInit(a1 + 512);
  if (a2)
  {
    *(a1 + 464) = copyString(a2, (a1 + 24));
  }

  *(a1 + 728) = 0;
  XmlInitEncoding(a1 + 312, (a1 + 304), 0);
  *a1 = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = a1;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v4 = *(a1 + 16);
  *(a1 + 48) = v4;
  *(a1 + 56) = v4;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 100) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 698) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 600) = 0;
  *(a1 + 616) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 632) = 1;
  *(a1 + 636) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = 0;
  *(a1 + 772) = 0;
  *(a1 + 504) = 0;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 960) = 0;
  *(a1 + 964) = 0;
  *(a1 + 968) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 992) = getDebugLevel("EXPAT_ACCOUNTING_DEBUG");
  *(a1 + 1000) = 1120403456;
  *(a1 + 1008) = 0x800000;
  *(a1 + 1016) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1024) = 0;
  result = getDebugLevel("EXPAT_ENTITY_DEBUG");
  *(a1 + 1032) = result;
  return result;
}

double XmlPrologStateInit(uint64_t a1)
{
  *a1 = prolog0;
  *&result = 0x100000000;
  *(a1 + 16) = 0x100000000;
  *(a1 + 24) = 0;
  return result;
}

uint64_t getEncodingIndex(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = 0;
  while (!streqci(a1, getEncodingIndex_encodingNames[v2]))
  {
    if (++v2 == 6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

unint64_t getDebugLevel(const char *a1)
{
  v1 = getenv(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  *__error() = 0;
  __endptr = 0;
  v3 = strtoul(v2, &__endptr, 10);
  if (*__error() || __endptr == v2 || *__endptr)
  {
    v3 = 0;
    *__error() = 0;
  }

  return v3;
}

uint64_t parserCreate(unsigned __int8 *a1, __int128 *a2, _BYTE *a3, uint64_t a4)
{
  if (a2)
  {
    v8 = (*a2)(1048);
    v9 = v8;
    if (!v8)
    {
      return v9;
    }

    v10 = *a2;
    *(v8 + 24) = *a2;
    v11 = *(a2 + 2);
    v12 = v10;
  }

  else
  {
    v13 = malloc_type_malloc(0x418uLL, 0x10F0040799C633EuLL);
    v9 = v13;
    if (!v13)
    {
      return v9;
    }

    v12 = MEMORY[0x29EDCA940];
    v13[3] = MEMORY[0x29EDCA940];
    v13[4] = MEMORY[0x29EDCA958];
    v11 = MEMORY[0x29EDCA938];
  }

  *(v9 + 40) = v11;
  *(v9 + 16) = 0;
  *(v9 + 64) = 0;
  *(v9 + 768) = 16;
  v14 = v12(512);
  *(v9 + 784) = v14;
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = (*(v9 + 24))(1024);
  *(v9 + 104) = v15;
  if (!v15)
  {
LABEL_20:
    (*(v9 + 40))(*(v9 + 784));
LABEL_21:
    (*(v9 + 40))(v9);
    return 0;
  }

  v16 = (v9 + 24);
  *(v9 + 112) = v15 + 1024;
  v17 = a4;
  if (!a4)
  {
    v17 = (*v16)(360);
    if (v17)
    {
      *(v17 + 160) = 0u;
      *(v17 + 176) = 0u;
      *(v17 + 192) = 0;
      *(v17 + 200) = v16;
      *(v17 + 208) = 0u;
      *(v17 + 224) = 0u;
      *(v17 + 240) = 0;
      *(v17 + 248) = v16;
      *(v17 + 8) = 0;
      *v17 = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 48) = 0;
      *(v17 + 32) = v16;
      *(v17 + 40) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      *(v17 + 88) = 0;
      *(v17 + 72) = v16;
      *(v17 + 80) = 0;
      *(v17 + 96) = 0;
      *(v17 + 104) = 0;
      *(v17 + 128) = 0;
      *(v17 + 112) = v16;
      *(v17 + 120) = 0;
      *(v17 + 136) = 0;
      *(v17 + 144) = 0;
      *(v17 + 152) = v16;
      *(v17 + 272) = 0;
      *(v17 + 264) = 0;
      *(v17 + 280) = 0;
      *(v17 + 288) = 0;
      *(v17 + 296) = v16;
      *(v17 + 304) = 0;
      *(v17 + 312) = 0;
      *(v17 + 320) = 0;
      *(v17 + 328) = 0u;
      *(v17 + 344) = 0u;
      *(v17 + 256) = 1;
      goto LABEL_11;
    }

    *(v9 + 720) = 0;
    (*(v9 + 40))(*(v9 + 104));
    goto LABEL_20;
  }

LABEL_11:
  *(v9 + 720) = v17;
  *(v9 + 760) = 0;
  *(v9 + 744) = 0;
  *(v9 + 592) = 0;
  *(v9 + 608) = 0;
  *(v9 + 624) = 0;
  *(v9 + 936) = 0;
  *(v9 + 928) = 0;
  *(v9 + 264) = 0;
  *(v9 + 496) = 0;
  *(v9 + 940) = 33;
  *(v9 + 472) = 0;
  *(v9 + 464) = 0;
  *(v9 + 832) = 0u;
  *(v9 + 848) = 0u;
  *(v9 + 864) = 0;
  *(v9 + 808) = 0;
  *(v9 + 792) = 0u;
  *(v9 + 872) = v16;
  *(v9 + 880) = 0u;
  *(v9 + 896) = 0u;
  *(v9 + 912) = 0;
  *(v9 + 920) = v16;
  parserInit(v9, a1);
  if (a1 && !*(v9 + 464))
  {
    if (a4)
    {
      *(v9 + 720) = 0;
    }

    XML_ParserFree(v9);
    return 0;
  }

  if (a3)
  {
    *(v9 + 472) = 1;
    *(v9 + 456) = XmlGetUtf8InternalEncodingNS();
    *(v9 + 940) = *a3;
  }

  else
  {
    *(v9 + 456) = XmlGetUtf8InternalEncoding();
  }

  return v9;
}

uint64_t initScan(void *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, unsigned __int8 *a5, void *a6)
{
  if (a4 >= a5)
  {
    return 4294967292;
  }

  v6 = *(a2 + 136);
  if (a4 + 1 == a5)
  {
    if (*(a2 + 133) - 3 < 3)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = *a4;
    if ((v12 - 239) > 0x10 || ((1 << (v12 + 17)) & 0x18001) == 0)
    {
      v10 = 0xFFFFFFFFLL;
      if (!*a4 || v12 == 60)
      {
        return v10;
      }
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
      if (a3 != 1 || *(a2 + 133))
      {
        return v10;
      }
    }

LABEL_48:
    v17 = a1[*(a2 + 133)];
    goto LABEL_49;
  }

  v7 = a4[1] | (*a4 << 8);
  if (v7 > 65278)
  {
    if (v7 == 65534)
    {
      if (a3 != 1 || *(a2 + 133))
      {
        *a6 = a4 + 2;
        v9 = a1[5];
        goto LABEL_39;
      }

      goto LABEL_48;
    }

    if (v7 == 65279)
    {
      if (a3 != 1 || *(a2 + 133))
      {
        *a6 = a4 + 2;
        v9 = a1[4];
        goto LABEL_39;
      }

      goto LABEL_48;
    }
  }

  else
  {
    if (v7 == 15360)
    {
      v16 = *(a2 + 133);
      if (v16 == 4)
      {
        if (a3 == 1)
        {
          goto LABEL_48;
        }
      }

      else if (a3 == 1 && v16 == 3)
      {
        goto LABEL_48;
      }

      v17 = a1[5];
LABEL_49:
      *v6 = v17;
      v15 = v17[a3];
      return v15();
    }

    if (v7 == 61371)
    {
      if (a3 != 1 || (v8 = *(a2 + 133), v8 > 5) || ((1 << v8) & 0x39) == 0)
      {
        if (a4 + 2 != a5)
        {
          if (a4[2] == 191)
          {
            *a6 = a4 + 3;
            v9 = a1[2];
LABEL_39:
            *v6 = v9;
            return 14;
          }

          goto LABEL_48;
        }

        return 0xFFFFFFFFLL;
      }

      goto LABEL_48;
    }
  }

  if (!*a4)
  {
    if (a3 != 1 || *(a2 + 133) != 5)
    {
      v17 = a1[4];
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (a3 == 1 || a4[1])
  {
    goto LABEL_48;
  }

  v14 = a1[5];
  *v6 = v14;
  v15 = *v14;
  return v15();
}

uint64_t normal_prologTok(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v5 = a2;
  v7 = a1 + 136;
  v9 = 18;
  v10 = 1;
  switch(a1[*a2 + 136])
  {
    case 2u:
      v18 = a2 + 1;
      if (a3 - (a2 + 1) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      v23 = v7[*v18];
      if (v23 > 0x1D)
      {
        goto LABEL_138;
      }

      if (((1 << v23) & 0x214000E0) != 0)
      {
        *a4 = a2;
        return 29;
      }

      if (v23 == 15)
      {
        v32 = a2 + 2;

        return normal_scanPi(a1, v32, a3, a4);
      }

      else
      {
        if (v23 != 16)
        {
          goto LABEL_138;
        }

        v31 = a2 + 2;

        return normal_scanDecl(a1, v31, a3, a4);
      }

    case 4u:
      v24 = a2 + 1;
      v25 = a3 - (a2 + 1);
      if (v25 < 1)
      {
        return 4294967270;
      }

      if (*v24 != 93)
      {
        goto LABEL_129;
      }

      if (v25 == 1)
      {
        return 0xFFFFFFFFLL;
      }

      if (a2[2] == 62)
      {
        *a4 = a2 + 3;
        return 34;
      }

      else
      {
LABEL_129:
        *a4 = v24;
        return 26;
      }

    case 5u:
      if (a3 - a2 < 2)
      {
        return 4294967294;
      }

      if ((*(a1 + 55))(a1, a2))
      {
        goto LABEL_111;
      }

      if ((*(a1 + 52))(a1, v5))
      {
        goto LABEL_121;
      }

      if (!(*(a1 + 49))(a1, v5))
      {
        goto LABEL_111;
      }

      v9 = 19;
LABEL_121:
      v10 = 2;
      goto LABEL_4;
    case 6u:
      if (a3 - a2 < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 56))(a1, a2))
      {
        goto LABEL_111;
      }

      if ((*(a1 + 53))(a1, v5))
      {
        goto LABEL_75;
      }

      if (!(*(a1 + 50))(a1, v5))
      {
        goto LABEL_111;
      }

      v9 = 19;
LABEL_75:
      v10 = 3;
      goto LABEL_4;
    case 7u:
      if (a3 - a2 < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 57))(a1, a2))
      {
        goto LABEL_111;
      }

      if ((*(a1 + 54))(a1, v5))
      {
        goto LABEL_88;
      }

      if (!(*(a1 + 51))(a1, v5))
      {
LABEL_111:
        v9 = 0;
LABEL_112:
        *a4 = v5;
        return v9;
      }

      v9 = 19;
LABEL_88:
      v10 = 4;
LABEL_4:
      v5 += v10;
      v11 = (a3 - v5);
      if (a3 - v5 < 1)
      {
        return -v9;
      }

      break;
    case 9u:
      if (a2 + 1 != a3)
      {
        goto LABEL_95;
      }

      *a4 = a3;
      return 4294967281;
    case 0xAu:
    case 0x15u:
LABEL_95:
      v26 = a2 + 1;
      v27 = a3 - (a2 + 1);
      if (v27 < 1)
      {
        goto LABEL_106;
      }

      do
      {
        v28 = v7[*v26];
        if (v28 != 21 && v28 != 10 && (v28 != 9 || v26 + 1 == a3))
        {
          goto LABEL_106;
        }

        ++v26;
        --v27;
      }

      while (v27 > 0);
      v26 = a3;
LABEL_106:
      *a4 = v26;
      return 15;
    case 0xBu:
      *a4 = a2 + 1;
      return 17;
    case 0xCu:
      v20 = a2 + 1;
      v21 = 12;
      goto LABEL_66;
    case 0xDu:
      v20 = a2 + 1;
      v21 = 13;
LABEL_66:

      return normal_scanLit(v21, a1, v20, a3, a4);
    case 0x13u:
      v17 = a2 + 1;

      return normal_scanPoundName(a1, v17, a3, a4);
    case 0x14u:
      *a4 = a2 + 1;
      return 25;
    case 0x16u:
    case 0x18u:
      goto LABEL_4;
    case 0x17u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
      v9 = 19;
      v10 = 1;
      goto LABEL_4;
    case 0x1Eu:
      v22 = a2 + 1;

      return normal_scanPercent(a1, v22, a3, a4);
    case 0x1Fu:
      *a4 = a2 + 1;
      return 23;
    case 0x20u:
      v18 = a2 + 1;
      if (a3 - (a2 + 1) < 1)
      {
        return 4294967272;
      }

      v19 = v7[*v18];
      if (v19 > 0x24)
      {
        goto LABEL_116;
      }

      if (((1 << v19) & 0x1900200000) != 0)
      {
        goto LABEL_117;
      }

      if (v19 == 33)
      {
        *a4 = a2 + 2;
        return 36;
      }

      else
      {
        if (v19 == 34)
        {
          *a4 = a2 + 2;
          return 37;
        }

LABEL_116:
        if ((v19 - 9) >= 3)
        {
          if (v19 == 15)
          {
            *a4 = a2 + 2;
            return 35;
          }

          else
          {
LABEL_138:
            v9 = 0;
            *a4 = v18;
          }
        }

        else
        {
LABEL_117:
          *a4 = v18;
          return 24;
        }
      }

      return v9;
    case 0x23u:
      *a4 = a2 + 1;
      return 38;
    case 0x24u:
      *a4 = a2 + 1;
      return 21;
    default:
      goto LABEL_111;
  }

  while (2)
  {
    switch(v7[*v5])
    {
      case 5:
        if (v11 == 1)
        {
          return 4294967294;
        }

        if ((*(a1 + 55))(a1, v5) || !(*(a1 + 49))(a1, v5))
        {
          goto LABEL_111;
        }

        v12 = v5 + 2;
        goto LABEL_7;
      case 6:
        if (v11 < 3)
        {
          return 4294967294;
        }

        if ((*(a1 + 56))(a1, v5) || !(*(a1 + 50))(a1, v5))
        {
          goto LABEL_111;
        }

        v12 = v5 + 3;
        goto LABEL_7;
      case 7:
        if (v11 < 4)
        {
          return 4294967294;
        }

        if ((*(a1 + 57))(a1, v5) || !(*(a1 + 51))(a1, v5))
        {
          goto LABEL_111;
        }

        v12 = v5 + 4;
        goto LABEL_7;
      case 9:
      case 0xA:
      case 0xB:
      case 0x14:
      case 0x15:
      case 0x1E:
      case 0x20:
      case 0x23:
      case 0x24:
        goto LABEL_112;
      case 0xF:
        if (v9 == 19)
        {
          goto LABEL_111;
        }

        *a4 = v5 + 1;
        return 30;
      case 0x16:
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x1B:
        v12 = v5 + 1;
        goto LABEL_7;
      case 0x17:
        v12 = v5 + 1;
        if (v9 == 41)
        {
          v9 = 19;
          goto LABEL_7;
        }

        if (v9 != 18)
        {
          goto LABEL_7;
        }

        v13 = (a3 - v12);
        if (a3 - v12 < 1)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = v7[*v12];
        v9 = 19;
        if (v14 > 0x15)
        {
          if (v14 - 24 >= 4 && v14 != 22)
          {
            if (v14 == 29)
            {
              goto LABEL_49;
            }

            goto LABEL_7;
          }

          v12 = v5 + 2;
          goto LABEL_47;
        }

        if (v14 != 5)
        {
          if (v14 == 6)
          {
            if (v13 < 3)
            {
              return 4294967294;
            }

            if ((*(a1 + 56))(a1, v5 + 1) || !(*(a1 + 50))(a1, v5 + 1))
            {
              goto LABEL_49;
            }

            v12 = v5 + 4;
          }

          else
          {
            if (v14 != 7)
            {
              goto LABEL_7;
            }

            if (v13 < 4)
            {
              return 4294967294;
            }

            if ((*(a1 + 57))(a1, v5 + 1) || !(*(a1 + 51))(a1, v5 + 1))
            {
              goto LABEL_49;
            }

            v12 = v5 + 5;
          }

LABEL_47:
          v9 = 41;
LABEL_7:
          v11 = (a3 - v12);
          v5 = v12;
          if (a3 - v12 <= 0)
          {
            return -v9;
          }

          continue;
        }

        if (v13 == 1)
        {
          return 4294967294;
        }

        if (!(*(a1 + 55))(a1, v5 + 1) && (*(a1 + 49))(a1, v5 + 1))
        {
          v12 = v5 + 3;
          goto LABEL_47;
        }

LABEL_49:
        v9 = 0;
        *a4 = v12;
        break;
      case 0x21:
        if (v9 == 19)
        {
          goto LABEL_111;
        }

        *a4 = v5 + 1;
        return 31;
      case 0x22:
        if (v9 == 19)
        {
          goto LABEL_111;
        }

        *a4 = v5 + 1;
        return 32;
      default:
        goto LABEL_111;
    }

    return v9;
  }
}

int8x8_t hash(uint64_t a1, char *a2)
{
  v11[3] = *MEMORY[0x29EDCA608];
  do
  {
    v2 = a1;
    a1 = *(a1 + 944);
  }

  while (a1);
  v3 = *(v2 + 968);
  v8.i64[0] = 0x736F6D6570736575;
  v8.i64[1] = v3 ^ 0x646F72616E646F6DLL;
  v9 = 0x6C7967656E657261;
  v10 = v3 ^ 0x7465646279746573;
  v11[1] = v11;
  v11[2] = 0;
  if (*a2)
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
    }

    while (a2[++v4]);
  }

  else
  {
    v5 = 0;
  }

  v11[0] = 0;
  sip24_update(v8.i64, a2, v5);
  return sip24_final(&v8);
}

XML_Status XML_Parse(XML_Parser parser, const char *s, int len, int isFinal)
{
  if (!parser || len < 0)
  {
    if (!parser)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (!s && len)
  {
LABEL_10:
    v9 = 41;
    goto LABEL_11;
  }

  v8 = *(parser + 238);
  if (v8)
  {
    if (v8 == 2)
    {
      v9 = 36;
      goto LABEL_11;
    }

    if (v8 == 3)
    {
      v9 = 33;
LABEL_11:
      *(parser + 138) = v9;
      return 0;
    }
  }

  else if (!*(parser + 118) && !startParsing(parser))
  {
    v9 = 1;
    goto LABEL_11;
  }

  *(parser + 238) = 1;
  Buffer = XML_GetBuffer(parser, len);
  if (!Buffer)
  {
    return 0;
  }

  if (len)
  {
    if (!s)
    {
      XML_Parse_cold_1();
    }

    memcpy(Buffer, s, len);
  }

  return XML_ParseBuffer(parser, len, isFinal);
}

uint64_t startParsing(uint64_t a1)
{
  if (!*(a1 + 968))
  {
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    v2 = __buf;
    if (getDebugLevel("EXPAT_ENTROPY_DEBUG"))
    {
      fprintf(*MEMORY[0x29EDCA610], "expat: Entropy: %s --> 0x%0*lx (%lu bytes)\n", "arc4random_buf", 16, v2, 8);
    }

    *(a1 + 968) = v2;
  }

  if (*(a1 + 472))
  {
    return setContext(a1, "xml=http://www.w3.org/XML/1998/namespace");
  }

  else
  {
    return 1;
  }
}

uint64_t poolGrow(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[4];
    if (!v3)
    {
      v19 = *v2;
      *a1 = v2;
      a1[1] = v19;
      *v2 = 0;
      a1[4] = v2 + 12;
      a1[2] = v2 + 12 + *(v2 + 8);
      a1[3] = v2 + 12;
      return 1;
    }

    v4 = a1[2] - v3;
    if (v4 < *(v2 + 8))
    {
      v5 = *v2;
      *v2 = *a1;
      *a1 = v2;
      a1[1] = v5;
      memcpy((v2 + 12), v3, v4);
      v6 = *a1;
      v7 = *a1 + 12;
      v8 = v7 + a1[3] - a1[4];
      a1[4] = v7;
      a1[2] = v7 + *(v6 + 8);
      a1[3] = v8;
      return 1;
    }
  }

  v9 = a1[4];
  v10 = *(a1 + 4) - v9;
  if (*a1)
  {
    v11 = v9 == *a1 + 12;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v13 = 2 * v10;
    if (((2 * v10) & 0x80000000) == 0 && v13 && ((v13 + 12) & ~((v13 + 12) >> 31)) != 0)
    {
      v15 = a1[3];
      result = (*(a1[5] + 8))();
      if (!result)
      {
        return result;
      }

      *a1 = result;
      *(result + 8) = v13;
      v17 = result + 12 + v15 - v9;
      a1[4] = result + 12;
      v18 = result + 12 + v13;
      goto LABEL_28;
    }

    return 0;
  }

  if ((v10 & 0x80000000) != 0)
  {
    return 0;
  }

  if (v10 >= 0x400)
  {
    v12 = 2 * v10;
    if (((2 * v10) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  v12 = 1024;
LABEL_21:
  v20 = v12 + 12;
  result = v20 & ~(v20 >> 31);
  if ((v20 & ~(v20 >> 31)) != 0)
  {
    result = (*a1[5])(result);
    if (result)
    {
      v21 = result;
      *(result + 8) = v12;
      *result = *a1;
      *a1 = result;
      v23 = a1[3];
      v22 = a1[4];
      if (v23 == v22)
      {
        v24 = a1[3];
      }

      else
      {
        memcpy((result + 12), v22, v23 - v22);
        v24 = a1[3];
        v23 = a1[4];
      }

      v17 = v21 + 12 + v24 - v23;
      a1[4] = v21 + 12;
      v18 = v21 + 12 + v12;
LABEL_28:
      a1[2] = v18;
      a1[3] = v17;
      return 1;
    }
  }

  return result;
}

_OWORD *lookup(uint64_t a1, uint64_t *a2, char *a3, size_t a4)
{
  if (!a2[2])
  {
    if (a4)
    {
      *(a2 + 8) = 6;
      a2[2] = 64;
      result = (*a2[4])(512);
      *a2 = result;
      if (!result)
      {
        a2[2] = 0;
        return result;
      }

      result[30] = 0u;
      result[31] = 0u;
      result[28] = 0u;
      result[29] = 0u;
      result[26] = 0u;
      result[27] = 0u;
      result[24] = 0u;
      result[25] = 0u;
      result[22] = 0u;
      result[23] = 0u;
      result[20] = 0u;
      result[21] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[14] = 0u;
      result[15] = 0u;
      result[12] = 0u;
      result[13] = 0u;
      result[10] = 0u;
      result[11] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[6] = 0u;
      result[7] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      v8.n128_u64[0] = hash(a1, a3);
      v12 = (a2[2] - 1) & v40;
      goto LABEL_45;
    }

    return 0;
  }

  v8.n128_u64[0] = hash(a1, a3);
  v10 = v9;
  v11 = a2[2];
  v12 = (v11 - 1) & v9;
  result = *(*a2 + 8 * v12);
  if (!result)
  {
LABEL_14:
    if (a4)
    {
      v22 = *(a2 + 8);
      if (!(a2[3] >> (v22 - 1)))
      {
LABEL_45:
        *(*a2 + 8 * v12) = (*a2[4])(a4, v8);
        result = *(*a2 + 8 * v12);
        if (result)
        {
          bzero(result, a4);
          v41 = *a2;
          **(*a2 + 8 * v12) = a3;
          ++a2[3];
          return *(v41 + 8 * v12);
        }

        return result;
      }

      v23 = v22 + 1;
      v24 = (v22 + 1);
      if (v24 <= 0x3C)
      {
        result = (*a2[4])(8 << v23, v8);
        if (!result)
        {
          return result;
        }

        v25 = result;
        v42 = v24;
        v26 = 1 << v23;
        v27 = (1 << v23) - 1;
        bzero(result, 8 << v23);
        v28 = a2[2];
        if (v28)
        {
          for (i = 0; i < v28; ++i)
          {
            v30 = *(*a2 + 8 * i);
            if (v30)
            {
              hash(a1, *v30);
              v32 = v31 & v27;
              if (*(v25 + (v31 & v27)))
              {
                LODWORD(v33) = 0;
                do
                {
                  if (v33)
                  {
                    v33 = v33;
                  }

                  else
                  {
                    v33 = ((v31 & -v26) >> (v42 - 1)) & (v27 >> 2) | 1;
                  }

                  v34 = v32 >= v33;
                  v35 = v32 - v33;
                  if (v34)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = 1 << v23;
                  }

                  v32 = v35 + v36;
                }

                while (*(v25 + v32));
              }

              *(v25 + v32) = *(*a2 + 8 * i);
              v28 = a2[2];
            }
          }
        }

        (*(a2[4] + 16))(*a2);
        *a2 = v25;
        *(a2 + 8) = v23;
        a2[2] = v26;
        v12 = v27 & v10;
        if (*(v25 + (v27 & v10)))
        {
          LODWORD(v37) = 0;
          do
          {
            if (v37)
            {
              v37 = v37;
            }

            else
            {
              v37 = ((v10 & -v26) >> (v42 - 1)) & (v27 >> 2) | 1;
            }

            v38 = v12 - v37;
            if (v12 >= v37)
            {
              v39 = 0;
            }

            else
            {
              v39 = 1 << v23;
            }

            v12 = v38 + v39;
          }

          while (*(v25 + v38 + v39));
        }

        goto LABEL_45;
      }
    }

    return 0;
  }

  v14 = 0;
  while (*a3 != **result)
  {
LABEL_8:
    if (!v14)
    {
      v14 = ((v10 & -v11) >> (*(a2 + 8) - 1)) & ((v11 - 1) >> 2) | 1;
    }

    v20 = v12 - v14;
    if (v12 >= v14)
    {
      v21 = 0;
    }

    else
    {
      v21 = a2[2];
    }

    v12 = v20 + v21;
    result = *(*a2 + 8 * (v20 + v21));
    if (!result)
    {
      goto LABEL_14;
    }
  }

  v15 = (*result + 1);
  v16 = a3 + 1;
  v17 = *a3;
  while (v17)
  {
    v18 = *v16++;
    v17 = v18;
    v19 = *v15++;
    if (v17 != v19)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x8_t sip24_final(int8x16_t *a1)
{
  v2 = a1[2].i32[2] - (a1 + 32);
  v3 = (v2 + a1[3].i32[0]) << 56;
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
LABEL_18:
      v3 |= a1[2].u8[0];
      goto LABEL_19;
    }

    if (v2 == 2)
    {
LABEL_17:
      v3 |= a1[2].u8[1] << 8;
      goto LABEL_18;
    }

    if (v2 != 3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v3 |= a1[2].u8[2] << 16;
    goto LABEL_17;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
LABEL_15:
      v3 |= a1[2].u8[3] << 24;
      goto LABEL_16;
    }

    if (v2 != 5)
    {
      goto LABEL_19;
    }

LABEL_14:
    v3 |= a1[2].u8[4] << 32;
    goto LABEL_15;
  }

  if (v2 == 6)
  {
LABEL_13:
    v3 |= a1[2].u8[5] << 40;
    goto LABEL_14;
  }

  if (v2 == 7)
  {
    v3 |= a1[2].u8[6] << 48;
    goto LABEL_13;
  }

LABEL_19:
  a1[1].i64[1] ^= v3;
  sip_round(a1->i64, 2);
  a1->i64[0] ^= v3;
  a1[1].i64[0] ^= 0xFFuLL;
  sip_round(a1->i64, 4);
  v4 = veorq_s8(*a1, a1[1]);
  return veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

uint64_t setContext(void *a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = 1;
  if (*a2)
  {
    v5 = a1[90];
    v6 = a2;
    while (1)
    {
      v7 = *v2;
      if (*v2)
      {
        if (v7 == 61)
        {
          v10 = a1[107];
          v11 = (v5 + 38);
          if (v10 == a1[108])
          {
            goto LABEL_29;
          }

          if (v10 == a1[106])
          {
            if (!poolGrow(a1 + 104))
            {
              return 0;
            }

            v10 = a1[107];
          }

          a1[107] = v10 + 1;
          *v10 = 0;
          v12 = lookup(a1, v5 + 15, a1[108], 0x10uLL);
          if (!v12)
          {
            return 0;
          }

          v11 = v12;
          v13 = a1[108];
          if (*v12 == v13)
          {
            v14 = poolCopyString(v5 + 20, *v12);
            *v11 = v14;
            if (!v14)
            {
              return 0;
            }

            v13 = a1[108];
          }

          a1[107] = v13;
LABEL_29:
          while (1)
          {
            v17 = *++v2;
            v16 = v17;
            if (!v17 || v16 == 12)
            {
              break;
            }

            v15 = a1[107];
            if (v15 == a1[106])
            {
              if (!poolGrow(a1 + 104))
              {
                return 0;
              }

              LOBYTE(v16) = *v2;
              v15 = a1[107];
            }

            a1[107] = v15 + 1;
            *v15 = v16;
          }

          v19 = a1[107];
          if (v19 == a1[106])
          {
            if (!poolGrow(a1 + 104))
            {
              return 0;
            }

            v19 = a1[107];
          }

          a1[107] = v19 + 1;
          *v19 = 0;
          if (addBinding(a1, v11, 0, a1[108], a1 + 94))
          {
            return 0;
          }

          a1[107] = a1[108];
          if (*v2)
          {
            v6 = v2 + 1;
          }

          else
          {
            v6 = v2;
          }

          goto LABEL_41;
        }

        if (v7 != 12)
        {
          v20 = a1[107];
          if (v20 == a1[106])
          {
            if (!poolGrow(a1 + 104))
            {
              return 0;
            }

            LOBYTE(v7) = *v2;
            v20 = a1[107];
          }

          a1[107] = v20 + 1;
          *v20 = v7;
          ++v2;
          goto LABEL_46;
        }
      }

      v8 = a1[107];
      if (v8 == a1[106])
      {
        if (!poolGrow(a1 + 104))
        {
          return 0;
        }

        v8 = a1[107];
      }

      a1[107] = v8 + 1;
      *v8 = 0;
      v9 = lookup(a1, v5, a1[108], 0);
      if (v9)
      {
        *(v9 + 56) = 1;
      }

      if (*v2)
      {
        v6 = v2 + 1;
      }

      else
      {
        v6 = v2;
      }

      a1[107] = a1[108];
LABEL_41:
      v2 = v6;
LABEL_46:
      if (!*v6)
      {
        return 1;
      }
    }
  }

  return v3;
}

uint64_t *sip24_update(uint64_t *a1, char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = &a2[a3];
  v6 = (a1 + 5);
  v7 = a1 + 4;
  v8 = &a2[a3 - 1];
  do
  {
    if (v3 >= v5)
    {
      v13 = 0;
    }

    else
    {
      v9 = *v6;
      if (*v6 >= v6)
      {
        v13 = 1;
      }

      else
      {
        v10 = v8 - v3;
        while (1)
        {
          v11 = v3;
          v12 = *v3++;
          *v6 = v9 + 1;
          *v9 = v12;
          if (!v10)
          {
            break;
          }

          v9 = *v6;
          --v10;
          if (*v6 >= v6)
          {
            goto LABEL_11;
          }
        }

        v3 = v5;
LABEL_11:
        v13 = v11 + 1 < v5;
      }
    }

    if (*v6 < v6)
    {
      break;
    }

    v14 = a1[4];
    a1[3] ^= v14;
    sip_round(a1, 2);
    *a1 ^= v14;
    v15 = a1[6] + 8;
    a1[5] = v7;
    a1[6] = v15;
  }

  while (v13);
  return a1;
}

uint64_t *sip_round(uint64_t *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = *result;
    v3 = result[1];
    v5 = result[2];
    v4 = result[3];
    do
    {
      v6 = v2 + v3;
      v7 = v6 ^ __ROR8__(v3, 51);
      v8 = v5 + v4;
      v9 = __ROR8__(v4, 48);
      v2 = (v8 ^ v9) + __ROR8__(v6, 32);
      v4 = v2 ^ __ROR8__(v8 ^ v9, 43);
      v10 = v8 + v7;
      v3 = v10 ^ __ROR8__(v7, 47);
      v5 = __ROR8__(v10, 32);
      --a2;
    }

    while (a2);
    *result = v2;
    result[1] = v3;
    result[2] = v5;
    result[3] = v4;
  }

  return result;
}

uint64_t poolCopyString(uint64_t *a1, char *a2)
{
  while (1)
  {
    v4 = a1[3];
    if (v4 == a1[2])
    {
      break;
    }

LABEL_4:
    v5 = *a2;
    a1[3] = (v4 + 1);
    *v4 = v5;
    if (!*a2++)
    {
      result = a1[4];
      a1[4] = a1[3];
      return result;
    }
  }

  if (poolGrow(a1))
  {
    v4 = a1[3];
    goto LABEL_4;
  }

  return 0;
}

uint64_t addBinding(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, uint64_t *a5)
{
  v8 = a2;
  v10 = *a4;
  v11 = *a2;
  if (*a4)
  {
    if (v11)
    {
      if (*v11 != 120 || v11[1] != 109 || v11[2] != 108)
      {
LABEL_10:
        LODWORD(v11) = 0;
        v12 = 1;
        result = 40;
        goto LABEL_14;
      }

      v12 = v11[3];
      if (v11[3])
      {
        if (v12 == 110 && v11[4] == 115 && !v11[5])
        {
          return 39;
        }

        goto LABEL_10;
      }

      LODWORD(v11) = 1;
      result = 38;
    }

    else
    {
      result = 40;
      v12 = 1;
    }

LABEL_14:
    v14 = 0;
    v15 = a4 + 1;
    v16 = 1;
    v17 = 1;
    a2 = "http://www.w3.org/XML/1998/namespace";
    while (1)
    {
      v18 = v14;
      if (v17 && (v14 > 0x24 || v10 != addBinding_xmlNamespace[v14]))
      {
        v17 = 0;
      }

      if (v16)
      {
        v19 = v12;
      }

      else
      {
        v19 = 0;
      }

      if (v19 == 1 && (v18 > 0x1D || v10 != addBinding_xmlnsNamespace[v18]))
      {
        v16 = 0;
      }

      if (*(a1 + 472) && v10 == *(a1 + 940) && ((v10 - 33) > 0x3E || ((1 << (v10 - 33)) & 0x57FFFFFFD7FFFFFDLL) == 0))
      {
        v20 = v10 - 97;
        if (v20 > 0x1D || ((1 << v20) & 0x23FFFFFF) == 0)
        {
          return 2;
        }
      }

      v14 = v18 + 1;
      v10 = v15[v18];
      if (!v15[v18])
      {
        v21 = v17 != 0;
        v22 = v16 != 0;
        goto LABEL_34;
      }
    }
  }

  if (v11)
  {
    return 28;
  }

  LODWORD(v14) = 0;
  v21 = 1;
  result = 40;
  v22 = 1;
LABEL_34:
  if (v14 != 36)
  {
    v21 = 0;
  }

  if (v11 == v21)
  {
    if (v14 == 29 && v22)
    {
      return 40;
    }

    if (*(a1 + 940))
    {
      v24 = (v14 + 1);
    }

    else
    {
      v24 = v14;
    }

    v25 = *(a1 + 760);
    if (v25)
    {
      if (v24 <= *(v25 + 44))
      {
        v26 = *(v25 + 32);
        goto LABEL_56;
      }

      if (v24 <= 0x7FFFFFE7)
      {
        v26 = (*(a1 + 32))(*(v25 + 32), (v24 + 24));
        if (v26)
        {
          *(v25 + 32) = v26;
          *(v25 + 44) = v24 + 24;
LABEL_56:
          *(a1 + 760) = *(v25 + 8);
          goto LABEL_57;
        }
      }
    }

    else
    {
      v25 = (*(a1 + 24))(48, a2);
      result = 1;
      if (!v25 || v24 > 0x7FFFFFE7)
      {
        return result;
      }

      v26 = (*(a1 + 24))((v24 + 24));
      *(v25 + 32) = v26;
      if (v26)
      {
        *(v25 + 44) = v24 + 24;
LABEL_57:
        *(v25 + 40) = v24;
        memcpy(v26, a4, v24);
        if (*(a1 + 940))
        {
          *(*(v25 + 32) + v24 - 1) = *(a1 + 940);
        }

        *v25 = v8;
        *(v25 + 16) = *(v8 + 1);
        *(v25 + 24) = a3;
        if (!*a4 && (*(a1 + 720) + 304) == v8)
        {
          v27 = 0;
        }

        else
        {
          v27 = v25;
        }

        *(v8 + 1) = v27;
        *(v25 + 8) = *a5;
        *a5 = v25;
        if (a3)
        {
          v28 = *(a1 + 216);
          if (v28)
          {
            if (*(v8 + 1))
            {
              v29 = a4;
            }

            else
            {
              v29 = 0;
            }

            v28(*(a1 + 8), *v8, v29);
          }
        }

        return 0;
      }

      (*(a1 + 40))(v25);
    }

    return 1;
  }

  return result;
}

void *__cdecl XML_GetBuffer(void *parser, int len)
{
  if (parser)
  {
    v2 = parser;
    if (len < 0)
    {
      goto LABEL_56;
    }

    v3 = *(parser + 238);
    if (v3 == 2)
    {
      parser = 0;
      v4 = 36;
      goto LABEL_58;
    }

    if (v3 == 3)
    {
      parser = 0;
      v4 = 33;
LABEL_58:
      *(v2 + 138) = v4;
      return parser;
    }

    *(parser + 25) = len;
    v5 = *(parser + 8);
    if (v5)
    {
      v6 = *(parser + 7);
      if (v6)
      {
        v7 = v5 - v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= len && *(parser + 2))
    {
      return *(parser + 7);
    }

    parser = *(parser + 7);
    if (parser)
    {
      v8 = *(v2 + 6);
      v9 = v8 ? parser - v8 : 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 + len;
    if (v10 < 0)
    {
      goto LABEL_56;
    }

    v11 = *(v2 + 6);
    if (v11)
    {
      v12 = *(v2 + 2);
      v13 = v12 ? v11 - v12 : 0;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 >= 1024 ? 1024 : v13;
    if (v14 > (v10 ^ 0x7FFFFFFF))
    {
      goto LABEL_56;
    }

    v15 = v14 + v10;
    v16 = *(v2 + 2);
    if (!v16)
    {
      goto LABEL_41;
    }

    if (v11)
    {
      LODWORD(v17) = v5 - v16;
      if (v5)
      {
        v18 = v5 - v16;
      }

      else
      {
        v18 = 0;
      }

      if (v18 >= v15)
      {
        if (v11 - v16 <= v14)
        {
LABEL_62:
          *(v2 + 72) = 0;
          *(v2 + 35) = 0u;
          return parser;
        }

        v19 = v11 - v16 - v14;
        memmove(*(v2 + 2), (v16 + v19), parser + v14 - v11);
        v20 = *(v2 + 6);
        parser = (*(v2 + 7) - v19);
        *(v2 + 7) = parser;
        v21 = (v20 - v19);
LABEL_61:
        *(v2 + 6) = v21;
        goto LABEL_62;
      }
    }

    else
    {
      LODWORD(v17) = v5 - v16;
    }

    if (!v5 || !v17)
    {
LABEL_41:
      LODWORD(v17) = 1024;
    }

    do
    {
      v17 = (2 * v17);
    }

    while (v17 < v15 && v17 > 0);
    if (v17 <= 0)
    {
LABEL_56:
      parser = 0;
    }

    else
    {
      parser = (*(v2 + 3))(v17);
      if (parser)
      {
        v21 = parser;
        *(v2 + 8) = parser + v17;
        v23 = *(v2 + 6);
        if (v23)
        {
          v24 = (v23 - v14);
          v25 = *(v2 + 7);
          v26 = v25 - v23;
          if (!v25)
          {
            v26 = 0;
          }

          memcpy(parser, v24, v26 + v14);
          (*(v2 + 5))(*(v2 + 2));
          *(v2 + 2) = v21;
          v27 = *(v2 + 7);
          if (v27)
          {
            v28 = *(v2 + 6);
            v27 -= v28;
            if (!v28)
            {
              v27 = 0;
            }
          }

          v21 += v14;
          parser = &v21[v27];
          *(v2 + 7) = &v21[v27];
        }

        else
        {
          *(v2 + 7) = parser;
          *(v2 + 2) = parser;
        }

        goto LABEL_61;
      }
    }

    v4 = 1;
    goto LABEL_58;
  }

  return parser;
}

XML_Status XML_ParseBuffer(XML_Parser parser, int len, int isFinal)
{
  if (parser)
  {
    if (len < 0)
    {
      v7 = XML_STATUS_ERROR;
      v8 = 41;
      goto LABEL_19;
    }

    v6 = *(parser + 238);
    if (v6)
    {
      if (v6 == 2)
      {
        v7 = XML_STATUS_ERROR;
        v8 = 36;
        goto LABEL_19;
      }

      if (v6 == 3)
      {
        v7 = XML_STATUS_ERROR;
        v8 = 33;
LABEL_19:
        *(parser + 138) = v8;
        return v7;
      }
    }

    else
    {
      if (!*(parser + 6))
      {
        v7 = XML_STATUS_ERROR;
        v8 = 42;
        goto LABEL_19;
      }

      if (!*(parser + 118) && !startParsing(parser))
      {
        v7 = XML_STATUS_ERROR;
        v8 = 1;
        goto LABEL_19;
      }
    }

    *(parser + 238) = 1;
    v9 = *(parser + 6);
    *(parser + 72) = v9;
    v10 = *(parser + 7) + len;
    *(parser + 7) = v10;
    *(parser + 9) += len;
    *(parser + 10) = v10;
    *(parser + 956) = isFinal;
    v11 = callProcessor(parser, v9, v10, parser + 6);
    *(parser + 138) = v11;
    if (v11)
    {
      v7 = XML_STATUS_ERROR;
      *(parser + 71) = *(parser + 70);
      *(parser + 68) = errorProcessor;
      return v7;
    }

    v12 = *(parser + 238);
    if (v12 >= 2)
    {
      if (v12 == 3)
      {
        v7 = XML_STATUS_SUSPENDED;
LABEL_24:
        (*(*(parser + 38) + 96))();
        *(parser + 72) = *(parser + 6);
        return v7;
      }
    }

    else if (isFinal)
    {
      *(parser + 238) = 2;
      return 1;
    }

    v7 = XML_STATUS_OK;
    goto LABEL_24;
  }

  return 0;
}

uint64_t prologInitProcessor(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4)
{
  result = initializeEncoding(a1);
  if (!result)
  {
    *(a1 + 544) = prologProcessor;

    return prologProcessor(a1, a2, a3, a4);
  }

  return result;
}

uint64_t callProcessor(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v8 = a2 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3 - a2;
  }

  if (!*(a1 + 96) || *(a1 + 956))
  {
    goto LABEL_19;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 16);
    v10 -= v11;
    if (!v11)
    {
      v10 = 0;
    }
  }

  v12 = v10 >= 0x400;
  v13 = v10 - 1024;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = *(a1 + 56);
    v14 -= v15;
    if (!v15)
    {
      v14 = 0;
    }
  }

  if (v9 < 2 * *(a1 + 88) && v14 + v13 >= *(a1 + 100))
  {
    result = 0;
    *a4 = a2;
  }

  else
  {
LABEL_19:
    *a4 = a2;
    while (1)
    {
      result = (*(a1 + 544))(a1, *a4, a3, a4);
      if (*(a1 + 952) != 1)
      {
        break;
      }

      if (!*(a1 + 1040))
      {
        goto LABEL_25;
      }

      *(a1 + 1040) = 0;
      if (result)
      {
        return result;
      }
    }

    *(a1 + 1040) = 0;
LABEL_25:
    if (!result)
    {
      result = 0;
      if (*a4 == a2)
      {
        *(a1 + 88) = v9;
      }

      else
      {
        *(a1 + 88) = 0;
      }
    }
  }

  return result;
}

uint64_t XmlInitEncodingNS(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  EncodingIndex = getEncodingIndex(a3);
  if (EncodingIndex == -1)
  {
    return 0;
  }

  *(a1 + 133) = EncodingIndex;
  *a1 = initScanPrologNS;
  *(a1 + 8) = initScanContentNS;
  *(a1 + 96) = initUpdatePosition;
  *(a1 + 136) = a2;
  *a2 = a1;
  return 1;
}

uint64_t initializeEncoding(uint64_t a1)
{
  v2 = XmlInitEncodingNS;
  if (!*(a1 + 472))
  {
    v2 = XmlInitEncoding;
  }

  if (v2(a1 + 312, (a1 + 304), *(a1 + 464)))
  {
    return 0;
  }

  v4 = *(a1 + 464);

  return handleUnknownEncoding(a1, v4);
}

uint64_t prologProcessor(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4)
{
  v10 = a2;
  v8 = (**(a1 + 304))();
  return doProlog(a1, *(a1 + 304), a2, a3, v8, v10, a4, *(a1 + 956) == 0, 1, 0);
}

uint64_t doProlog(void *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, unsigned __int8 *a6, unsigned __int8 **a7, int a8, char a9, int a10)
{
  v13 = a2;
  v14 = a1;
  v178 = a6;
  v15 = a1[90];
  if (a1[38] == a2)
  {
    v176 = (a1 + 70);
    v16 = (a1 + 71);
  }

  else
  {
    v176 = a1[73];
    v16 = v176 + 1;
  }

  v177 = v16;
  v17 = (a1 + 64);
  v171 = a1 + 85;
  v173 = a1 + 106;
  v174 = a1 + 104;
  while (2)
  {
    *v176 = a3;
    v18 = v178;
    *v177 = v178;
    if (a5 > 0)
    {
      goto LABEL_18;
    }

    if (a8 && a5)
    {
      goto LABEL_382;
    }

    if (a5 > -5)
    {
      if (a5 > -2)
      {
        if (a5 == -1)
        {
          return 5;
        }

        *v176 = v18;
        return 4;
      }

      if (a5 == -4)
      {
        if (v13 == *&v14[38])
        {
          if (!v14[120].i8[0])
          {
            return 3;
          }
        }

        else if (!*(*&v14[73] + 36))
        {
LABEL_382:
          v164 = 0;
          *a7 = a3;
          return v164;
        }

        if ((*v17)(&v14[64], 4294967292, a4, a4, v13) == -1)
        {
          return 29;
        }

        goto LABEL_382;
      }

      if (a5 == -2)
      {
        return 6;
      }
    }

    else if (a5 == -15)
    {
      a5 = 15;
      goto LABEL_18;
    }

    a5 = -a5;
    v178 = a4;
LABEL_18:
    v19 = (*v17)(&v14[64], a5, a3);
    v21 = v19 > 0x39 || ((1 << v19) & 0x200000000000006) == 0;
    if (v21 && !accountingDiffTolerated(v14, a5, a3, v178, 4935, a10, v20))
    {
      accountingReportStats(v14, " ABORTING\n", v20);
      return 43;
    }

    v22 = 0;
    v23 = 1;
    switch(v19)
    {
      case 0xFFFFFFFF:
        if (a5 == 12)
        {
          v166 = 17;
        }

        else
        {
          v166 = 2;
        }

        if (a5 == 28)
        {
          return 10;
        }

        else
        {
          return v166;
        }

      case 0u:
        if (a5 != 14)
        {
          goto LABEL_342;
        }

        goto LABEL_344;
      case 1u:
        v66 = v178;
        v67 = v14;
        v68 = 0;
        goto LABEL_201;
      case 2u:
        if (!v14[120].i8[1])
        {
          goto LABEL_413;
        }

        v167 = *(v15 + 257);
        *(v15 + 257) = 1;
        if (!v14[120].i32[1] || !*&v14[30])
        {
          goto LABEL_413;
        }

        v168 = lookup(v14, (v15 + 264), byte_298777811, 0x40uLL);
        if (!v168)
        {
          return 1;
        }

        v168[4] = v14[91];
        *(v15 + 259) = 0;
        if (!(v14[30])(*&v14[31], 0))
        {
          return 21;
        }

        if (*(v15 + 259))
        {
          if (!*(v15 + 258))
          {
            v169 = v14[29];
            if (v169)
            {
              if (!v169(*&v14[1]))
              {
                return 22;
              }
            }
          }
        }

        else
        {
          *(v15 + 257) = v167;
        }

LABEL_413:
        v14[68] = contentProcessor;
        return contentProcessor(v14, a3, a4, a7);
      case 3u:
        if (!*&v14[23])
        {
          goto LABEL_342;
        }

        goto LABEL_344;
      case 4u:
        if (!*&v14[23])
        {
          goto LABEL_216;
        }

        v120 = poolStoreString(v174, v13, a3, v178);
        v14[81] = v120;
        if (!v120)
        {
          return 1;
        }

        v23 = 0;
        v14[108] = v14[107];
        v14[83] = 0;
LABEL_216:
        v14[82] = 0;
        goto LABEL_259;
      case 5u:
        v14[120].i8[1] = 0;
        *(v15 + 257) = 1;
        if (v14[23])
        {
          v116 = poolStoreString(v174, v13, &a3[*(v13 + 128)], &v178[-*(v13 + 128)]);
          v14[82] = v116;
          if (!v116)
          {
            return 1;
          }

          v23 = 0;
          v14[108] = v14[107];
        }

        else
        {
          v14[82] = byte_298777811;
        }

        if (!*(v15 + 258) && !v14[120].i32[1])
        {
          v144 = v14[29];
          if (v144)
          {
            if (!v144(*&v14[1]))
            {
              return 22;
            }
          }
        }

        if (v14[80])
        {
          goto LABEL_296;
        }

        v145 = lookup(v14, (v15 + 264), byte_298777811, 0x40uLL);
        v14[80] = v145;
        if (!v145)
        {
          return 1;
        }

        *(v145 + 5) = 0;
LABEL_296:
        if (!*(v15 + 256) || !*&v14[80])
        {
          goto LABEL_259;
        }

        v146 = poolStoreString((v15 + 160), v13, &a3[*(v13 + 128)], &v178[-*(v13 + 128)]);
        v147 = v14[80];
        v147[3] = v146;
        if (!v146)
        {
          return 1;
        }

        v147[4] = v14[91];
        *(v15 + 192) = *(v15 + 184);
        if (v19 == 13)
        {
          goto LABEL_300;
        }

        goto LABEL_259;
      case 6u:
        v14[120].i8[1] = 0;
        v121 = lookup(v14, (v15 + 264), byte_298777811, 0x40uLL);
        v14[80] = v121;
        v164 = 1;
        if (!v121)
        {
          return v164;
        }

        *(v15 + 257) = 1;
        if (v14[23])
        {
          if (!(*(v13 + 104))(v13, a3, v178, v176))
          {
            return 32;
          }

          v122 = poolStoreString(v174, v13, &a3[*(v13 + 128)], &v178[-*(v13 + 128)]);
          if (!v122)
          {
            return v164;
          }

          v123 = v122;
          normalizePublicId(v122);
          v23 = 0;
          v14[108] = v14[107];
          v14[83] = v123;
        }

        else
        {
LABEL_224:
          if (!(*(v13 + 104))(v13, a3, v178, v176))
          {
            return 32;
          }
        }

        if (!*(v15 + 256) || !*&v14[80])
        {
          goto LABEL_259;
        }

        v124 = poolStoreString((v15 + 160), v13, &a3[*(v13 + 128)], &v178[-*(v13 + 128)]);
        if (!v124)
        {
          return 1;
        }

        v125 = v124;
        normalizePublicId(v124);
        *(*&v14[80] + 40) = v125;
        *(v15 + 192) = *(v15 + 184);
        if (v19 != 14)
        {
          goto LABEL_259;
        }

LABEL_300:
        if (!*&v14[36])
        {
          goto LABEL_259;
        }

        goto LABEL_344;
      case 7u:
        v127 = v14[23];
        if (!v127)
        {
          goto LABEL_342;
        }

        v127(*&v14[1], *&v14[81], *&v14[82], *&v14[83], 1);
        v14[81] = 0;
        v128 = v14[105];
        v37 = v14[104];
        if (!v128)
        {
          goto LABEL_285;
        }

        if (!v37)
        {
          goto LABEL_287;
        }

        do
        {
          v38 = v37;
          v37 = *v37;
          *v38 = v128;
          v128 = v38;
        }

        while (v37);
        goto LABEL_286;
      case 8u:
        if (a9 != 1)
        {
          return 4;
        }

        v92 = v14[81];
        if (!*&v92)
        {
          goto LABEL_326;
        }

        (v14[23])(*&v14[1], *&v92, *&v14[82], *&v14[83], 0);
        v93 = v14[105];
        v94 = v14[104];
        if (v93)
        {
          if (!v94)
          {
            goto LABEL_325;
          }

          do
          {
            v95 = v94;
            v94 = *v94;
            *v95 = v93;
            v93 = v95;
          }

          while (v94);
        }

        else
        {
          v95 = v14[104];
        }

        v14[105] = v95;
LABEL_325:
        v23 = 0;
        *v174 = 0;
        v173[1] = 0;
        v173[2] = 0;
        *v173 = 0;
LABEL_326:
        if (!*&v14[82] && !v14[120].i8[1])
        {
          goto LABEL_363;
        }

        v154 = *(v15 + 257);
        *(v15 + 257) = 1;
        if (!v14[120].i32[1] || !*&v14[30])
        {
          goto LABEL_362;
        }

        v155 = lookup(v14, (v15 + 264), byte_298777811, 0x40uLL);
        if (!v155)
        {
          return 1;
        }

        if (v14[120].i8[1])
        {
          v156 = v14[91];
          v155[4] = v156;
        }

        else
        {
          v156 = v155[4];
        }

        *(v15 + 259) = 0;
        if (!(v14[30])(*&v14[31], 0, *&v156, v155[3], v155[5]))
        {
          return 21;
        }

        if (*(v15 + 259))
        {
          if (!*(v15 + 258))
          {
            v162 = v14[29];
            if (v162)
            {
              if (!v162(*&v14[1]))
              {
                return 22;
              }
            }
          }
        }

        else if (!*&v14[82])
        {
          *(v15 + 257) = v154;
        }

LABEL_362:
        v14[120].i8[1] = 0;
LABEL_363:
        v163 = v14[24];
        if (!v163)
        {
          goto LABEL_259;
        }

        v163(*&v14[1]);
        goto LABEL_344;
      case 9u:
        if ((*(v13 + 88))(v13, a3, v178))
        {
          goto LABEL_266;
        }

        if (!*(v15 + 256))
        {
          goto LABEL_265;
        }

        v129 = poolStoreString((v15 + 160), v13, a3, v178);
        if (!v129)
        {
          return 1;
        }

        v130 = v129;
        v131 = lookup(v14, v15, v129, 0x40uLL);
        v14[80] = v131;
        if (!v131)
        {
          return 1;
        }

        if (*v131 != v130)
        {
LABEL_265:
          *(v15 + 184) = *(v15 + 192);
LABEL_266:
          v14[80] = 0;
          goto LABEL_342;
        }

        v132 = 0;
        *(v15 + 192) = *(v15 + 184);
        *(v131 + 5) = 0;
        *(v131 + 58) = 0;
        if (!*&v14[118])
        {
LABEL_365:
          v132 = *&v14[73] == 0;
        }

LABEL_366:
        *(v131 + 59) = v132;
LABEL_367:
        if (!*&v14[36])
        {
          goto LABEL_342;
        }

        goto LABEL_344;
      case 0xAu:
        if (!*(v15 + 256))
        {
          goto LABEL_265;
        }

        v135 = poolStoreString((v15 + 160), v13, a3, v178);
        if (!v135)
        {
          return 1;
        }

        v136 = v135;
        v131 = lookup(v14, (v15 + 264), v135, 0x40uLL);
        v14[80] = v131;
        if (!v131)
        {
          return 1;
        }

        if (*v131 != v136)
        {
          goto LABEL_265;
        }

        *(v15 + 192) = *(v15 + 184);
        *(v131 + 5) = 0;
        *(v131 + 58) = 1;
        if (!*&v14[118])
        {
          goto LABEL_365;
        }

        v132 = 0;
        goto LABEL_366;
      case 0xBu:
        if (!*(v15 + 256))
        {
          goto LABEL_342;
        }

        goto LABEL_367;
      case 0xCu:
        if (!*(v15 + 256))
        {
          goto LABEL_342;
        }

        v78 = *(v13 + 128);
        v79 = &v178[-v78];
        v180 = &a3[v78];
        while (2)
        {
          v80 = v14[77];
          if (v80)
          {
            v81 = *(*&v80 + 24);
            v82 = *(v81 + 8);
            v83 = *(v81 + 16);
            v84 = (v82 + *(v81 + 20));
            v179 = v84;
            v85 = v14;
            if (!*(v81 + 57))
            {
              do
              {
                v88 = v85;
                v85 = v85[118];
              }

              while (v85);
              entityTrackingReportStats(v88, v81, "CLOSE", 6624);
              --*(v88 + 1020);
              v89 = v14[77];
              if (*&v89 != *&v80)
              {
                doProlog_cold_2();
              }

              *(v81 + 56) = 0;
              v90 = *(*&v89 + 16);
              v14[77] = v90;
              *(*&v80 + 16) = v14[78];
              v14[78] = v80;
              if (v90)
              {
                continue;
              }

              goto LABEL_152;
            }

            v86 = (v82 + v83);
            v87 = storeEntityValue(v14, *&v14[57], v84, v82 + v83, 1, &v179);
            if (!v87)
            {
              if (v86 == v179)
              {
                *(v81 + 57) = 0;
              }

              else
              {
                *(v81 + 20) = v179 - *(v81 + 8);
              }

              continue;
            }
          }

          else
          {
            v87 = storeEntityValue(v14, v13, v180, v79, 2, &v180);
            if (!v87)
            {
              if (v14[77])
              {
                continue;
              }

LABEL_152:
              if (v180 == v79)
              {
                v164 = 0;
                goto LABEL_316;
              }

              continue;
            }
          }

          break;
        }

        v164 = v87;
LABEL_316:
        v151 = v14[80];
        v152 = *(v15 + 240);
        if (v151)
        {
          *(*&v151 + 8) = v152;
          v153 = *(v15 + 232);
          *(*&v151 + 16) = v153 - v152;
          *(v15 + 240) = v153;
          if (v14[36])
          {
            *v177 = a3;
            (v14[36])(*&v14[1], **&v14[80], *(*&v14[80] + 58), *(*&v14[80] + 8), *(*&v14[80] + 16), *&v14[91], 0, 0, 0);
            v23 = 0;
            goto LABEL_321;
          }
        }

        else
        {
          *(v15 + 232) = v152;
        }

        v23 = 1;
LABEL_321:
        if (v164)
        {
          return v164;
        }

LABEL_259:
        if (v23)
        {
          goto LABEL_342;
        }

LABEL_344:
        v161 = v14[119].i32[0];
        switch(v161)
        {
          case 1:
            a3 = v178;
            if (v14[130].i8[0])
            {
              goto LABEL_382;
            }

            break;
          case 2:
            return 35;
          case 3:
            v164 = 0;
            *a7 = v178;
            return v164;
          default:
            a3 = v178;
            break;
        }

        a5 = (*v13)(v13, a3, a4, &v178);
        continue;
      case 0xDu:
        goto LABEL_296;
      case 0xEu:
        goto LABEL_224;
      case 0xFu:
        if (!*(v15 + 256) || !*&v14[80] || !*&v14[36])
        {
          goto LABEL_342;
        }

        *v177 = a3;
        (v14[36])(*&v14[1], **&v14[80], *(*&v14[80] + 58), 0, 0, *(*&v14[80] + 32), *(*&v14[80] + 24), *(*&v14[80] + 40), 0);
        goto LABEL_344;
      case 0x10u:
        if (!*(v15 + 256) || !*&v14[80])
        {
          goto LABEL_342;
        }

        v115 = poolStoreString((v15 + 160), v13, a3, v178);
        *(*&v14[80] + 48) = v115;
        if (!v115)
        {
          return 1;
        }

        *(v15 + 192) = *(v15 + 184);
        if (v14[25])
        {
          *v177 = a3;
          (v14[25])(*&v14[1], **&v14[80], *(*&v14[80] + 32), *(*&v14[80] + 24), *(*&v14[80] + 40), *(*&v14[80] + 48));
          goto LABEL_344;
        }

        if (!*&v14[36])
        {
          goto LABEL_342;
        }

        *v177 = a3;
        (v14[36])(*&v14[1], **&v14[80], 0, 0, 0, *(*&v14[80] + 32), *(*&v14[80] + 24), *(*&v14[80] + 40), *(*&v14[80] + 48));
        goto LABEL_344;
      case 0x11u:
        if (!*&v14[26])
        {
          goto LABEL_342;
        }

        goto LABEL_344;
      case 0x12u:
        *v171 = 0;
        v171[1] = 0;
        if (!*&v14[26])
        {
          goto LABEL_342;
        }

        v119 = poolStoreString(v174, v13, a3, v178);
        *v171 = v119;
        if (v119)
        {
          goto LABEL_212;
        }

        return 1;
      case 0x13u:
        if (!*v171 || !*&v14[26])
        {
          goto LABEL_252;
        }

        v133 = poolStoreString(v174, v13, &a3[*(v13 + 128)], &v178[-*(v13 + 128)]);
        if (!v133)
        {
          return 1;
        }

        *v177 = a3;
        (v14[26])(*&v14[1], *&v14[85], *&v14[91], v133, *&v14[86]);
        v23 = 0;
LABEL_252:
        v134 = v14[105];
        v46 = v14[104];
        if (!v134)
        {
          goto LABEL_256;
        }

        if (!v46)
        {
          goto LABEL_258;
        }

        do
        {
          v47 = v46;
          v46 = *v46;
          *v47 = v134;
          v134 = v47;
        }

        while (v46);
        goto LABEL_257;
      case 0x14u:
        if (*&v14[86] && *&v14[26])
        {
          *v177 = a3;
          (v14[26])(*&v14[1], *&v14[85], *&v14[91], 0, *&v14[86]);
          v23 = 0;
        }

        v91 = v14[105];
        v46 = v14[104];
        if (!v91)
        {
          goto LABEL_256;
        }

        if (!v46)
        {
          goto LABEL_258;
        }

        do
        {
          v47 = v46;
          v46 = *v46;
          *v47 = v91;
          v91 = v47;
        }

        while (v46);
        goto LABEL_257;
      case 0x15u:
        if (!(*(v13 + 104))(v13, a3, v178, v176))
        {
          return 32;
        }

        if (!*v171)
        {
          goto LABEL_342;
        }

        v117 = poolStoreString(v174, v13, &a3[*(v13 + 128)], &v178[-*(v13 + 128)]);
        if (!v117)
        {
          return 1;
        }

        v118 = v117;
        normalizePublicId(v117);
        v14[86] = v118;
LABEL_212:
        v14[108] = v14[107];
        goto LABEL_344;
      case 0x16u:
        AttributeId = getAttributeId(v14, v13, a3, v178);
        v14[88] = AttributeId;
        if (!AttributeId)
        {
          return 1;
        }

        v14[89].i16[0] = 0;
        v14[84] = 0;
        goto LABEL_269;
      case 0x17u:
        v14[89].i8[0] = 1;
        v61 = "CDATA";
        goto LABEL_268;
      case 0x18u:
        v14[89].i8[1] = 1;
        v61 = "ID";
        goto LABEL_268;
      case 0x19u:
        v61 = "IDREF";
        goto LABEL_268;
      case 0x1Au:
        v61 = "IDREFS";
        goto LABEL_268;
      case 0x1Bu:
        v61 = "ENTITY";
        goto LABEL_268;
      case 0x1Cu:
        v61 = "ENTITIES";
        goto LABEL_268;
      case 0x1Du:
        v61 = "NMTOKEN";
        goto LABEL_268;
      case 0x1Eu:
        v61 = "NMTOKENS";
LABEL_268:
        v14[84] = v61;
        goto LABEL_269;
      case 0x1Fu:
      case 0x20u:
        if (!*(v15 + 256) || !*&v14[35])
        {
          goto LABEL_342;
        }

        v24 = "(";
        if (v19 == 32)
        {
          v24 = "NOTATION(";
        }

        if (v14[84])
        {
          v25 = "|";
        }

        else
        {
          v25 = v24;
        }

        v26 = *v25;
        if (!*v25)
        {
          goto LABEL_38;
        }

        v27 = (v25 + 1);
        do
        {
          v28 = v14[107];
          if (v28 == v14[106])
          {
            if (!poolGrow(v174))
            {
              return 1;
            }

            v28 = v14[107];
          }

          v14[107] = (v28 + 1);
          *v28 = v26;
          v29 = *v27++;
          v26 = v29;
        }

        while (v29);
LABEL_38:
        if (!*&v14[108] || !poolAppend(v174, v13, a3, v178))
        {
          return 1;
        }

        v14[84] = v14[108];
        goto LABEL_344;
      case 0x21u:
        goto LABEL_269;
      case 0x22u:
        ElementType = getElementType(v14, v13, a3, v178);
        v14[87] = ElementType;
        if (!ElementType)
        {
          return 1;
        }

LABEL_269:
        if (!*(v15 + 256) || !*&v14[35])
        {
          goto LABEL_342;
        }

        goto LABEL_344;
      case 0x23u:
      case 0x24u:
        if (!*(v15 + 256))
        {
          goto LABEL_83;
        }

        if (!defineAttribute(*&v14[87], *&v14[88], v14[89].u8[0], v14[89].u8[1], 0, v14))
        {
          return 1;
        }

        if (!*&v14[35])
        {
          goto LABEL_83;
        }

        v41 = v14[84];
        if (!v41)
        {
          goto LABEL_83;
        }

        v42 = *v41;
        if (v42 != 40 && (v42 != 78 || v41[1] != 79))
        {
          goto LABEL_82;
        }

        v43 = v14[107];
        if (v43 != *&v14[106])
        {
          goto LABEL_78;
        }

        if (!poolGrow(v174))
        {
          return 1;
        }

        v43 = v14[107];
LABEL_78:
        v14[107] = (v43 + 1);
        *v43 = 41;
        v44 = v14[107];
        if (v44 != *&v14[106])
        {
          goto LABEL_81;
        }

        if (!poolGrow(v174))
        {
          return 1;
        }

        v44 = v14[107];
LABEL_81:
        v14[107] = (v44 + 1);
        *v44 = 0;
        v14[84] = v14[108];
        v14[108] = v14[107];
LABEL_82:
        *v177 = a3;
        (v14[35])(*&v14[1], **&v14[87], **&v14[88], *&v14[84], 0, v19 == 36);
        v23 = 0;
LABEL_83:
        v45 = v14[105];
        v46 = v14[104];
        if (v45)
        {
          if (!v46)
          {
            goto LABEL_258;
          }

          do
          {
            v47 = v46;
            v46 = *v46;
            *v47 = v45;
            v45 = v47;
          }

          while (v46);
        }

        else
        {
LABEL_256:
          v47 = v46;
        }

LABEL_257:
        v14[105] = v47;
LABEL_258:
        *v174 = 0;
        v173[1] = 0;
        v173[2] = 0;
        *v173 = 0;
        goto LABEL_259;
      case 0x25u:
      case 0x26u:
        if (!*(v15 + 256))
        {
          goto LABEL_342;
        }

        v30 = storeAttributeValue(v14, v13, v14[89].u8[0], &a3[*(v13 + 128)], &v178[-*(v13 + 128)], (v15 + 160), 2);
        if (v30)
        {
          return v30;
        }

        v31 = *(v15 + 192);
        *(v15 + 192) = *(v15 + 184);
        if (!defineAttribute(*&v14[87], *&v14[88], v14[89].u8[0], 0, v31, v14))
        {
          return 1;
        }

        if (!*&v14[35])
        {
          goto LABEL_342;
        }

        v32 = v14[84];
        if (!v32)
        {
          goto LABEL_342;
        }

        v33 = *v32;
        if (v33 != 40 && (v33 != 78 || v32[1] != 79))
        {
          goto LABEL_56;
        }

        v34 = v14[107];
        if (v34 != *&v14[106])
        {
          goto LABEL_52;
        }

        if (!poolGrow(v174))
        {
          return 1;
        }

        v34 = v14[107];
LABEL_52:
        v14[107] = (v34 + 1);
        *v34 = 41;
        v35 = v14[107];
        if (v35 != *&v14[106])
        {
          goto LABEL_55;
        }

        if (!poolGrow(v174))
        {
          return 1;
        }

        v35 = v14[107];
LABEL_55:
        v14[107] = (v35 + 1);
        *v35 = 0;
        v14[84] = v14[108];
        v14[108] = v14[107];
LABEL_56:
        *v177 = a3;
        (v14[35])(*&v14[1], **&v14[87], **&v14[88], *&v14[84], v31, v19 == 38);
        v36 = v14[105];
        v37 = v14[104];
        if (v36)
        {
          if (!v37)
          {
            goto LABEL_287;
          }

          do
          {
            v38 = v37;
            v37 = *v37;
            *v38 = v36;
            v36 = v38;
          }

          while (v37);
        }

        else
        {
LABEL_285:
          v38 = v37;
        }

LABEL_286:
        v14[105] = v38;
LABEL_287:
        *v174 = 0;
        v173[1] = 0;
        v173[2] = 0;
        *v173 = 0;
        goto LABEL_344;
      case 0x27u:
        goto LABEL_341;
      case 0x28u:
        if (!*&v14[34])
        {
          goto LABEL_342;
        }

        v53 = getElementType(v14, v13, a3, v178);
        v14[87] = v53;
        v164 = 1;
        if (!v53)
        {
          return v164;
        }

        *(v15 + 344) = 0;
        *(v15 + 320) = 1;
        goto LABEL_344;
      case 0x29u:
      case 0x2Au:
        if (!*(v15 + 320))
        {
          goto LABEL_342;
        }

        if (!*&v14[34])
        {
          goto LABEL_67;
        }

        v39 = (v14[3])(32);
        v164 = 1;
        if (!v39)
        {
          return v164;
        }

        *(v39 + 24) = 0;
        if (v19 == 41)
        {
          v40 = 2;
        }

        else
        {
          v40 = 1;
        }

        *(v39 + 12) = 0;
        *(v39 + 4) = 0;
        *v39 = v40;
        *v177 = a3;
        (v14[34])(*&v14[1], **&v14[87], v39);
        v23 = 0;
LABEL_67:
        *(v15 + 320) = 0;
        goto LABEL_259;
      case 0x2Bu:
        if (!*(v15 + 320))
        {
          goto LABEL_342;
        }

        v137 = *(v15 + 328);
        v138 = 32 * *(*(v15 + 352) + 4 * *(v15 + 348) - 4);
        v139 = 3;
        goto LABEL_340;
      case 0x2Cu:
        v54 = v14[117].u32[0];
        if (v14[65].i32[0] < v54)
        {
          goto LABEL_336;
        }

        if (v54)
        {
          if ((v54 & 0x80000000) != 0)
          {
            return 1;
          }

          v55 = v14[4];
          v56 = v14[116];
          v14[117].i32[0] = 2 * v54;
          v57 = v55(*&v56);
          if (!v57)
          {
            v14[117].i32[0] = v14[117].i32[0] >> 1;
            return 1;
          }

          v14[116] = v57;
          v58 = *(v15 + 352);
          if (v58)
          {
            v59 = (v14[4])(v58, 4 * v14[117].u32[0]);
            if (!v59)
            {
              return 1;
            }

            *(v15 + 352) = v59;
          }

          goto LABEL_336;
        }

        v157 = v14[3];
        v14[117].i32[0] = 32;
        v158 = v157(32);
        v14[116] = v158;
        if (v158)
        {
LABEL_336:
          *(*&v14[116] + v14[65].u32[0]) = 0;
          if (!*(v15 + 320))
          {
            goto LABEL_342;
          }

          ScaffoldPart = nextScaffoldPart(v14);
          if ((ScaffoldPart & 0x80000000) != 0)
          {
            return 1;
          }

          v160 = *(v15 + 352);
          if (!v160)
          {
            doProlog_cold_1();
          }

          *(v160 + 4 * (*(v15 + 348))++) = ScaffoldPart;
          v137 = *(v15 + 328);
          v138 = 32 * ScaffoldPart;
          v139 = 6;
LABEL_340:
          *(v137 + v138) = v139;
LABEL_341:
          if (!*&v14[34])
          {
            goto LABEL_342;
          }

          goto LABEL_344;
        }

        v14[117].i32[0] = 0;
        return 1;
      case 0x2Du:
        goto LABEL_177;
      case 0x2Eu:
        v22 = 2;
        goto LABEL_177;
      case 0x2Fu:
        v22 = 1;
        goto LABEL_177;
      case 0x30u:
        v22 = 3;
LABEL_177:
        if (!*(v15 + 320))
        {
          goto LABEL_342;
        }

        v96 = v14[34];
        v23 = *&v96 == 0;
        v97 = *(v15 + 348) - 1;
        *(v15 + 348) = v97;
        *(*(v15 + 328) + 32 * *(*(v15 + 352) + 4 * v97) + 4) = v22;
        if (v97)
        {
          goto LABEL_259;
        }

        if (!*&v96)
        {
          goto LABEL_192;
        }

        v98 = v14[90];
        v99 = (v14[3])(*(*&v98 + 336) + 32 * *(*&v98 + 344));
        if (!v99)
        {
          return 1;
        }

        v100 = *(*&v98 + 344);
        *(v99 + 16) = 0;
        if (v100)
        {
          v101 = (v99 + 32 * v100);
          v102 = v99 + 32;
          v103 = v99;
          v104 = v101;
          do
          {
            v105 = *(v103 + 16);
            v106 = *(*&v98 + 328);
            v107 = *(v106 + 32 * v105);
            *v103 = v107;
            v108 = v106 + 32 * v105;
            if (v107 == 4)
            {
              *(v103 + 8) = v104;
              v109 = *(v108 + 8);
              do
              {
                v110 = *v109++;
                *v104++ = v110;
              }

              while (v110);
              *(v103 + 16) = 0;
              *(v103 + 24) = 0;
            }

            else
            {
              *(v103 + 8) = 0;
              v111 = *(v108 + 24);
              *(v103 + 16) = v111;
              *(v103 + 24) = v102;
              if (v111)
              {
                v112 = 0;
                v113 = (v108 + 16);
                do
                {
                  v114 = *v113;
                  *(v102 + 16) = v114;
                  v102 += 32;
                  ++v112;
                  v113 = (v106 + 32 * v114 + 28);
                }

                while (v112 < *(v103 + 16));
              }
            }

            v103 += 32;
          }

          while (v103 < v101);
        }

        *v177 = a3;
        (v14[34])(*&v14[1], **&v14[87], v99);
LABEL_192:
        *(v15 + 320) = 0;
        *(v15 + 336) = 0;
        goto LABEL_259;
      case 0x31u:
        v62 = v14[116];
        v63 = v14[65].u32[0];
        if (*(*&v62 + v63) == 44)
        {
          return 2;
        }

        if (*(*&v62 + v63))
        {
          v64 = 1;
        }

        else
        {
          v64 = *(v15 + 320) == 0;
        }

        if (!v64)
        {
          v65 = (*(v15 + 328) + 32 * *(*(v15 + 352) + 4 * *(v15 + 348) - 4));
          if (*v65 != 3)
          {
            *v65 = 5;
            v23 = *&v14[34] == 0;
          }
        }

        *(*&v62 + v63) = 124;
        goto LABEL_259;
      case 0x32u:
        v140 = v14[116];
        v141 = v14[65].u32[0];
        if (*(*&v140 + v141) == 124)
        {
          return 2;
        }

        *(*&v140 + v141) = 44;
        if (!*(v15 + 320))
        {
          goto LABEL_342;
        }

        goto LABEL_341;
      case 0x33u:
        if (!*(v15 + 320))
        {
          goto LABEL_342;
        }

        v23 = 0;
        v60 = v178;
        goto LABEL_130;
      case 0x34u:
        v23 = 2;
        goto LABEL_113;
      case 0x35u:
        goto LABEL_113;
      case 0x36u:
        v23 = 3;
LABEL_113:
        if (!*(v15 + 320))
        {
          goto LABEL_342;
        }

        v60 = &v178[-*(v13 + 128)];
LABEL_130:
        v69 = nextScaffoldPart(v14);
        if ((v69 & 0x80000000) != 0)
        {
          return 1;
        }

        v70 = v69;
        v71 = (*(v15 + 328) + 32 * v69);
        *v71 = 4;
        v71[1] = v23;
        v72 = getElementType(v14, v13, a3, v60);
        if (!v72)
        {
          return 1;
        }

        v73 = 0;
        v74 = *v72;
        *(*(v15 + 328) + 32 * v70 + 8) = *v72;
          ;
        }

        v76 = *(v15 + 336);
        if (v73 > ~v76)
        {
          return 1;
        }

        *(v15 + 336) = v76 + v73;
        goto LABEL_341;
      case 0x37u:
        if (!reportProcessingInstruction(v14, v13, a3, v178))
        {
          return 1;
        }

        goto LABEL_344;
      case 0x38u:
        if (!reportComment(v14, v13, a3, v178))
        {
          return 1;
        }

        goto LABEL_344;
      case 0x39u:
        v66 = v178;
        v67 = v14;
        v68 = 1;
LABEL_201:
        v30 = processXmlDecl(v67, v68, a3, v66, v20);
        if (v30)
        {
          return v30;
        }

        v13 = v14[38];
        goto LABEL_344;
      case 0x3Au:
        if (v14[22])
        {
          reportDefault(v14, v13, a3, v178);
        }

        v30 = doIgnoreSection(v14, v13, &v178, a4, a7, a8);
        if (v30)
        {
          return v30;
        }

        if (v178)
        {
          goto LABEL_344;
        }

        v164 = 0;
        v14[68] = ignoreSectionProcessor;
        return v164;
      case 0x3Bu:
      case 0x3Cu:
        *(v15 + 257) = 1;
        if (v14[120].i32[1])
        {
          v48 = poolStoreString((v15 + 160), v13, &a3[*(v13 + 128)], &v178[-*(v13 + 128)]);
          if (!v48)
          {
            return 1;
          }

          v49 = v48;
          v50 = lookup(v14, (v15 + 264), v48, 0);
          v51 = v50;
          *(v15 + 184) = *(v15 + 192);
          if (!v14[66].i32[1])
          {
            goto LABEL_92;
          }

          if (*(v15 + 258))
          {
            if (!*&v14[73])
            {
              goto LABEL_304;
            }

            goto LABEL_92;
          }

          if (*(v15 + 257))
          {
LABEL_92:
            if (v50)
            {
              goto LABEL_306;
            }

            *(v15 + 256) = *(v15 + 258);
            if (v19 == 60)
            {
              v52 = v14[32];
              if (v52)
              {
                v52(*&v14[1], v49, 1);
                goto LABEL_344;
              }
            }

LABEL_342:
            if (v14[22])
            {
              reportDefault(v14, v13, a3, v178);
            }

            goto LABEL_344;
          }

LABEL_304:
          if (!v50)
          {
            return 11;
          }

          if (!*(v50 + 59))
          {
            return 24;
          }

LABEL_306:
          if (*(v50 + 56))
          {
            return 12;
          }

          if (*(v50 + 1))
          {
            if (processEntity(v14, v50, v19 == 60, 0))
            {
              return 1;
            }

            goto LABEL_344;
          }

          if (!*&v14[30])
          {
            *(v15 + 256) = *(v15 + 258);
            goto LABEL_342;
          }

          *(v15 + 259) = 0;
          *(v50 + 56) = 1;
          entityTrackingOnOpen(v14, v50, 5689);
          v148 = (v14[30])(*&v14[31], 0, *(v51 + 32), *(v51 + 24), *(v51 + 40));
          v149 = v14;
          if (!v148)
          {
            do
            {
              v165 = v14;
              v14 = v14[118];
            }

            while (v14);
            entityTrackingReportStats(v165, v51, "CLOSE", 5693);
            --*(v165 + 1020);
            *(v51 + 56) = 0;
            return 21;
          }

          do
          {
            v150 = v149;
            v149 = v149[118];
          }

          while (v149);
          entityTrackingReportStats(v150, v51, "CLOSE", 5697);
          --*(v150 + 1020);
          *(v51 + 56) = 0;
          if (!*(v15 + 259))
          {
            *(v15 + 256) = *(v15 + 258);
            goto LABEL_344;
          }

          v23 = 0;
          if (*(v15 + 258))
          {
            goto LABEL_259;
          }
        }

        else
        {
          v142 = *(v15 + 258);
          *(v15 + 256) = v142;
          if (v142)
          {
            goto LABEL_259;
          }
        }

        v143 = v14[29];
        if (v143 && !v143(*&v14[1]))
        {
          return 22;
        }

        goto LABEL_259;
      default:
        goto LABEL_342;
    }
  }
}

uint64_t normal_scanPi(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v6 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v27 = v4;
  v28 = v5;
  v9 = a2;
  v11 = a1 + 136;
  v12 = a1[*a2 + 136];
  if (v12 > 0x15)
  {
    if (v12 == 22 || v12 == 24)
    {
      v13 = 1;
      goto LABEL_17;
    }

    goto LABEL_45;
  }

  if (v12 == 5)
  {
    if (v6 == 1)
    {
      return 4294967294;
    }

    if (!(*(a1 + 55))(a1, a2) && (*(a1 + 52))(a1, v9))
    {
      v13 = 2;
      goto LABEL_17;
    }

LABEL_45:
    result = 0;
    *a4 = v9;
    return result;
  }

  if (v12 == 6)
  {
    if (v6 < 3)
    {
      return 4294967294;
    }

    if (!(*(a1 + 56))(a1, a2) && (*(a1 + 53))(a1, v9))
    {
      v13 = 3;
      goto LABEL_17;
    }

    goto LABEL_45;
  }

  if (v12 != 7)
  {
    goto LABEL_45;
  }

  if (v6 < 4)
  {
    return 4294967294;
  }

  if ((*(a1 + 57))(a1, a2) || !(*(a1 + 54))(a1, v9))
  {
    goto LABEL_45;
  }

  v13 = 4;
LABEL_17:
  v16 = &v9[v13];
  v17 = a3 - &v9[v13];
  if (v17 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v26 = 0;
  while (1)
  {
    v18 = v11[*v16];
    if (v18 > 0x15)
    {
      break;
    }

    if (v11[*v16] > 6u)
    {
      if (v11[*v16] > 8u)
      {
        if (v18 - 9 < 2)
        {
          goto LABEL_58;
        }

        if (v18 == 15)
        {
          result = normal_checkPiTarget(v9, v16, &v26);
          if (!result)
          {
            goto LABEL_89;
          }

          v24 = v16 + 1;
          if (a3 - (v16 + 1) < 1)
          {
            return 0xFFFFFFFFLL;
          }

          if (*v24 == 62)
          {
            v25 = v16 + 2;
LABEL_92:
            *a4 = v25;
            return v26;
          }
        }

        else
        {
          if (v18 == 21)
          {
LABEL_58:
            result = normal_checkPiTarget(v9, v16, &v26);
            if (!result)
            {
              goto LABEL_89;
            }

            v9 = v16 + 1;
            v21 = a3 - (v16 + 1);
            if (v21 >= 1)
            {
              while (2)
              {
                v22 = v11[*v9];
                if (v22 > 6)
                {
                  switch(v22)
                  {
                    case 7u:
                      if (v21 < 4)
                      {
                        return 4294967294;
                      }

                      if ((*(a1 + 57))(a1, v9))
                      {
                        goto LABEL_45;
                      }

                      v23 = v9 + 4;
                      goto LABEL_81;
                    case 0xFu:
                      v23 = v9 + 1;
                      if (a3 - (v9 + 1) < 1)
                      {
                        return 0xFFFFFFFFLL;
                      }

                      if (*v23 == 62)
                      {
                        v25 = v9 + 2;
                        goto LABEL_92;
                      }

                      goto LABEL_81;
                    case 8u:
                      goto LABEL_45;
                  }
                }

                else
                {
                  if (v22 == 5)
                  {
                    if (v21 == 1)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 55))(a1, v9))
                    {
                      goto LABEL_45;
                    }

                    v23 = v9 + 2;
                    goto LABEL_81;
                  }

                  if (v22 == 6)
                  {
                    if (v21 < 3)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 56))(a1, v9))
                    {
                      goto LABEL_45;
                    }

                    v23 = v9 + 3;
                    goto LABEL_81;
                  }

                  if (v22 < 2)
                  {
                    goto LABEL_45;
                  }
                }

                v23 = v9 + 1;
LABEL_81:
                v21 = a3 - v23;
                result = 0xFFFFFFFFLL;
                v9 = v23;
                if (a3 - v23 <= 0)
                {
                  return result;
                }

                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

LABEL_90:
          v24 = v16;
        }

        result = 0;
        *a4 = v24;
        return result;
      }

      if (v18 != 7)
      {
        goto LABEL_90;
      }

      if (v17 < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 57))(a1, v16) || !(*(a1 + 51))(a1, v16))
      {
        goto LABEL_88;
      }

      v19 = 4;
    }

    else if (v18 == 5)
    {
      if (v17 == 1)
      {
        return 4294967294;
      }

      if ((*(a1 + 55))(a1, v16) || !(*(a1 + 49))(a1, v16))
      {
        goto LABEL_88;
      }

      v19 = 2;
    }

    else
    {
      if (v18 != 6)
      {
        goto LABEL_90;
      }

      if (v17 < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 56))(a1, v16) || !(*(a1 + 50))(a1, v16))
      {
        goto LABEL_88;
      }

      v19 = 3;
    }

LABEL_43:
    v16 += v19;
    v17 = a3 - v16;
    if (a3 - v16 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v18 - 24 < 4 || v18 == 22)
  {
    v19 = 1;
    goto LABEL_43;
  }

  if (v18 != 29)
  {
    goto LABEL_90;
  }

LABEL_88:
  result = 0;
LABEL_89:
  *a4 = v16;
  return result;
}

BOOL normal_checkPiTarget(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 11;
  if (a2 - a1 != 3)
  {
    return 1;
  }

  v3 = *a1;
  if (v3 == 120)
  {
    v4 = 0;
  }

  else
  {
    if (v3 != 88)
    {
      return 1;
    }

    v4 = 1;
  }

  v5 = a1[1];
  if (v5 != 109)
  {
    if (v5 != 77)
    {
      return 1;
    }

    v4 = 1;
  }

  v6 = a1[2];
  if (v6 != 108)
  {
    return v6 != 76;
  }

  if (v4)
  {
    return 0;
  }

  *a3 = 12;
  return 1;
}

uint64_t contentProcessor(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4)
{
  v5 = doContent(a1, *(a1 + 944) != 0, *(a1 + 304), a2, a3, a4, *(a1 + 956) == 0, 0);
  if (!v5 && !storeRawNames(a1))
  {
    return 1;
  }

  return v5;
}

uint64_t doContent(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 **a6, uint64_t a7, unsigned int a8)
{
  v8 = a7;
  v117 = a4;
  if (*(a1 + 304) == a3)
  {
    v14 = (a1 + 560);
    v15 = (a1 + 568);
  }

  else
  {
    v14 = *(a1 + 584);
    v15 = v14 + 1;
  }

  v106 = *(a1 + 720);
  *v14 = a4;
  v108 = (a1 + 848);
  v109 = (a1 + 832);
  v110 = a7;
  while (2)
  {
    v116 = v117;
    v16 = (*(a3 + 8))(a3);
    v18 = v16;
    if (v16 == -3 || v16 == -5)
    {
      v21 = v117;
      if (v8)
      {
        v20 = v117;
      }

      else
      {
        v20 = a5;
      }
    }

    else
    {
      v20 = v116;
      v21 = v117;
    }

    if (!accountingDiffTolerated(a1, v16, v21, v20, 2970, a8, v17))
    {
      accountingReportStats(a1, " ABORTING\n", v22);
      return 43;
    }

    v23 = v116;
    *v15 = v116;
    v24 = 17;
    switch(v18)
    {
      case -5:
        if (v8)
        {
          goto LABEL_175;
        }

        v98 = *(a1 + 136);
        if (v98)
        {
          if (*(a3 + 132))
          {
            v99 = *(a1 + 8);
            v100 = v117;
            v101 = (a5 - v117);
          }

          else
          {
            v104 = *(a1 + 112);
            v112 = *(a1 + 104);
            (*(a3 + 112))(a3, &v117, a5, &v112, v104);
            v98 = *(a1 + 136);
            v99 = *(a1 + 8);
            v100 = *(a1 + 104);
            v101 = (v112 - v100);
          }

          v98(v99, v100, v101);
        }

        else if (*(a1 + 176))
        {
          reportDefault(a1, a3, v117, a5);
        }

        if (!a2)
        {
          *v14 = a5;
          return 3;
        }

        if (*(a1 + 636) == a2)
        {
          goto LABEL_199;
        }

        *v14 = a5;
        return 13;
      case -4:
        if (v8)
        {
          goto LABEL_175;
        }

        if (a2 < 1)
        {
          return 3;
        }

        if (*(a1 + 636) != a2)
        {
          return 13;
        }

LABEL_175:
        v24 = 0;
        v97 = v117;
        goto LABEL_176;
      case -3:
        if (v8)
        {
          goto LABEL_175;
        }

        *v15 = a5;
        v102 = *(a1 + 136);
        if (v102)
        {
          LOBYTE(v112) = 10;
          v102(*(a1 + 8), &v112, 1);
        }

        else if (*(a1 + 176))
        {
          reportDefault(a1, a3, v117, a5);
        }

        if (!a2)
        {
          return 3;
        }

        if (*(a1 + 636) != a2)
        {
          return 13;
        }

LABEL_199:
        v24 = 0;
        *a6 = a5;
        return v24;
      case -2:
        if (v8)
        {
          goto LABEL_175;
        }

        return 6;
      case -1:
        if (v8)
        {
          goto LABEL_175;
        }

        return 5;
      case 0:
        *v14 = v23;
        return 4;
      case 1:
      case 2:
        v112 = 0;
        v25 = *(a1 + 744);
        v107 = a2;
        if (v25)
        {
          *(a1 + 744) = *v25;
        }

        else
        {
          v60 = (*(a1 + 24))(88);
          if (!v60)
          {
            return 1;
          }

          v25 = v60;
          v61 = (*(a1 + 24))(32);
          *(v25 + 64) = v61;
          if (!v61)
          {
            (*(a1 + 40))(v25);
            return 1;
          }

          *(v25 + 72) = v61 + 32;
        }

        *(v25 + 80) = 0;
        *v25 = *(a1 + 736);
        *(a1 + 736) = v25;
        *(v25 + 32) = 0;
        *(v25 + 40) = 0;
        *(v25 + 8) = &v117[*(a3 + 128)];
        v62 = (*(a3 + 56))(a3);
        *(v25 + 16) = v62;
        ++*(a1 + 636);
        v63 = *(v25 + 8) + v62;
        v115 = *(v25 + 8);
        v64 = *(v25 + 72);
        v112 = *(v25 + 64);
        v65 = (*(a3 + 112))(a3, &v115, v63, &v112, v64 - 1);
        v66 = v112;
        v67 = *(v25 + 64);
        v68 = v112 - v67;
        if (v115 < v63 && v65 != 1)
        {
          v105 = a6;
          do
          {
            v69 = 2 * (*(v25 + 72) - v67);
            v70 = (*(a1 + 32))();
            if (!v70)
            {
              return 1;
            }

            *(v25 + 64) = v70;
            *(v25 + 72) = v70 + v69;
            v112 = (v70 + v68);
            v71 = (*(a3 + 112))(a3, &v115, v63, &v112, v70 + v69 - 1);
            v66 = v112;
            v67 = *(v25 + 64);
            v68 = v112 - v67;
          }

          while (v115 < v63 && v71 != 1);
          a6 = v105;
        }

        *(v25 + 48) = v68;
        *(v25 + 24) = v67;
        *v66 = 0;
        v73 = storeAtts(a1, a3, v117, (v25 + 24), (v25 + 80), a8);
        if (v73)
        {
          return v73;
        }

        v74 = *(a1 + 120);
        if (v74)
        {
          v74(*(a1 + 8), *(v25 + 24), *(a1 + 784));
          a2 = v107;
          v8 = v110;
        }

        else
        {
          a2 = v107;
          v8 = v110;
          if (*(a1 + 176))
          {
            reportDefault(a1, a3, v117, v116);
          }
        }

        v78 = *(a1 + 840);
        v79 = *(a1 + 832);
        if (v78)
        {
          if (!v79)
          {
            goto LABEL_100;
          }

          do
          {
            v80 = v79;
            v79 = *v79;
            *v80 = v78;
            v78 = v80;
          }

          while (v79);
        }

        else
        {
          v80 = *(a1 + 832);
        }

        *(a1 + 840) = v80;
LABEL_100:
        *v109 = 0;
        v108[1] = 0;
        v108[2] = 0;
        *v108 = 0;
        goto LABEL_147;
      case 3:
      case 4:
        v26 = &v117[*(a3 + 128)];
        v115 = 0;
        v114 = 0u;
        v113 = 0u;
        v27 = (*(a3 + 56))(a3, v26);
        v112 = poolStoreString(v109, a3, v26, v26 + v27);
        if (!v112)
        {
          return 1;
        }

        *(a1 + 864) = *(a1 + 856);
        v28 = storeAtts(a1, a3, v117, &v112, &v115, 2u);
        if (v28)
        {
          v24 = v28;
          freeBindings(a1, v115);
          return v24;
        }

        *(a1 + 864) = *(a1 + 856);
        v29 = *(a1 + 120);
        if (v29)
        {
          v29(*(a1 + 8), v112, *(a1 + 784));
          v30 = *(a1 + 128);
          if (!v30)
          {
            goto LABEL_84;
          }

          if (*(a1 + 120))
          {
            *v14 = *v15;
            (*(a1 + 128))(*(a1 + 8), v112);
            goto LABEL_84;
          }

LABEL_83:
          v30(*(a1 + 8), v112);
          goto LABEL_84;
        }

        v30 = *(a1 + 128);
        if (v30)
        {
          goto LABEL_83;
        }

        if (*(a1 + 176))
        {
          reportDefault(a1, a3, v117, v116);
        }

LABEL_84:
        v75 = *(a1 + 840);
        v76 = *(a1 + 832);
        if (v75)
        {
          if (!v76)
          {
            goto LABEL_90;
          }

          do
          {
            v77 = v76;
            v76 = *v76;
            *v77 = v75;
            v75 = v77;
          }

          while (v76);
        }

        else
        {
          v77 = *(a1 + 832);
        }

        *(a1 + 840) = v77;
LABEL_90:
        *(a1 + 832) = 0;
        v108[1] = 0;
        v108[2] = 0;
        *v108 = 0;
        freeBindings(a1, v115);
        if (*(a1 + 636))
        {
          goto LABEL_147;
        }

LABEL_126:
        v93 = *(a1 + 952);
        switch(v93)
        {
          case 1:
            if (!*(a1 + 1040))
            {
              return epilogProcessor(a1, v116, a5, a6);
            }

            break;
          case 3:
            break;
          case 2:
LABEL_159:
            *v14 = v116;
            return 35;
          default:
            return epilogProcessor(a1, v116, a5, a6);
        }

        *(a1 + 544) = epilogProcessor;
        goto LABEL_147;
      case 5:
        if (*(a1 + 636) == a2)
        {
          return 13;
        }

        v31 = *(a1 + 736);
        v32 = &v117[2 * *(a3 + 128)];
        v33 = (*(a3 + 56))(a3, v32);
        if (v33 != *(v31 + 16) || memcmp(*(v31 + 8), v32, v33))
        {
          *v14 = v32;
          return 7;
        }

        *(a1 + 736) = *v31;
        *v31 = *(a1 + 744);
        *(a1 + 744) = v31;
        --*(a1 + 636);
        v34 = *(a1 + 128);
        if (v34)
        {
          if (*(a1 + 472))
          {
            v35 = *(v31 + 32);
            if (v35)
            {
              v36 = (*(v31 + 24) + *(v31 + 52));
              v37 = *v35;
              if (*v35)
              {
                v38 = v35 + 1;
                do
                {
                  *v36++ = v37;
                  v39 = *v38++;
                  v37 = v39;
                }

                while (v39);
              }

              v40 = *(v31 + 40);
              if (*(a1 + 473))
              {
                v41 = v40 == 0;
              }

              else
              {
                v41 = 1;
              }

              if (!v41)
              {
                *v36++ = *(a1 + 940);
                v42 = *v40;
                if (*v40)
                {
                  v43 = v40 + 1;
                  do
                  {
                    *v36++ = v42;
                    v44 = *v43++;
                    v42 = v44;
                  }

                  while (v44);
                }
              }

              *v36 = 0;
              v34 = *(a1 + 128);
            }
          }

          v34(*(a1 + 8), *(v31 + 24));
        }

        else if (*(a1 + 176))
        {
          reportDefault(a1, a3, v117, v116);
        }

        v89 = *(v31 + 80);
        if (v89)
        {
          do
          {
            v90 = *(a1 + 224);
            v91 = v89;
            if (v90)
            {
              v90(*(a1 + 8), **v89);
              v91 = *(v31 + 80);
            }

            v92 = *(v91 + 8);
            *(v31 + 80) = v92;
            *(v89 + 8) = *(a1 + 760);
            *(a1 + 760) = v89;
            *(*v89 + 8) = *(v89 + 16);
            v89 = v92;
          }

          while (v92);
        }

        v8 = v110;
        if (!*(a1 + 636))
        {
          goto LABEL_126;
        }

        goto LABEL_147;
      case 6:
        v45 = *(a1 + 136);
        if (v45)
        {
          if (*(a3 + 132))
          {
            v46 = *(a1 + 8);
            v47 = v117;
            v48 = (v23 - v117);
            goto LABEL_58;
          }

          while (1)
          {
            v49 = *(a1 + 112);
            v112 = *(a1 + 104);
            v50 = (*(a3 + 112))(a3, &v117, v23, &v112, v49);
            *v15 = v117;
            v45(*(a1 + 8), *(a1 + 104), v112 - *(a1 + 104));
            if (v50 <= 1)
            {
              break;
            }

            *v14 = v117;
            v23 = v116;
          }

          goto LABEL_59;
        }

        v8 = v110;
        if (!*(a1 + 176))
        {
          goto LABEL_147;
        }

LABEL_102:
        v81 = v117;
        v82 = a1;
        v83 = a3;
        v84 = v23;
        goto LABEL_146;
      case 7:
        v51 = *(a1 + 136);
        if (!v51)
        {
          goto LABEL_53;
        }

        LOBYTE(v112) = 10;
        v51(*(a1 + 8), &v112, 1);
        goto LABEL_147;
      case 8:
        v54 = *(a1 + 160);
        if (v54)
        {
          v54(*(a1 + 8));
        }

        else if (*(a1 + 176))
        {
          reportDefault(a1, a3, v117, v23);
        }

        v73 = doCdataSection(a1, a3, &v116, a5, a6, v8, a8);
        if (v73)
        {
          return v73;
        }

        if (v116)
        {
          goto LABEL_147;
        }

        v24 = 0;
        *(a1 + 544) = cdataSectionProcessor;
        return v24;
      case 9:
        LOBYTE(v112) = (*(a3 + 88))(a3, &v117[*(a3 + 128)], &v23[-*(a3 + 128)]);
        if (v112)
        {
          accountingDiffTolerated(a1, 9, &v112, &v112 + 1, 3036, 1, v55);
          v56 = *(a1 + 136);
          if (v56)
          {
            v57 = *(a1 + 8);
            v58 = &v112;
            v59 = 1;
LABEL_65:
            v56(v57, v58, v59);
            goto LABEL_147;
          }

          goto LABEL_144;
        }

        v85 = poolStoreString((v106 + 160), a3, &v117[*(a3 + 128)], &v116[-*(a3 + 128)]);
        if (!v85)
        {
          return 1;
        }

        v86 = v85;
        v87 = lookup(a1, v106, v85, 0);
        v88 = v87;
        *(v106 + 184) = *(v106 + 192);
        if (*(v106 + 257) && !*(v106 + 258))
        {
          if (!v87)
          {
            v95 = *(a1 + 256);
            if (!v95)
            {
LABEL_140:
              v8 = v110;
              if (!*(a1 + 176))
              {
                goto LABEL_147;
              }

LABEL_145:
              v81 = v117;
              v84 = v116;
              v82 = a1;
              v83 = a3;
LABEL_146:
              reportDefault(v82, v83, v81, v84);
              goto LABEL_147;
            }

            v95(*(a1 + 8), v86, 0);
LABEL_59:
            v8 = v110;
            goto LABEL_147;
          }
        }

        else
        {
          if (!v87)
          {
            return 11;
          }

          if (!*(v87 + 59))
          {
            return 24;
          }
        }

        if (*(v87 + 56))
        {
          return 12;
        }

        if (*(v87 + 6))
        {
          return 15;
        }

        if (*(v87 + 1))
        {
          v8 = v110;
          if (!*(a1 + 632))
          {
            v56 = *(a1 + 256);
            if (v56)
            {
              v57 = *(a1 + 8);
              v58 = *v88;
              v59 = 0;
              goto LABEL_65;
            }

LABEL_144:
            if (!*(a1 + 176))
            {
              goto LABEL_147;
            }

            goto LABEL_145;
          }

          if (processEntity(a1, v87, 0, 0))
          {
            return 1;
          }
        }

        else
        {
          v8 = v110;
          if (!*(a1 + 240))
          {
            goto LABEL_144;
          }

          v24 = 1;
          *(v87 + 56) = 1;
          Context = getContext(a1);
          *(v88 + 56) = 0;
          if (!Context)
          {
            return v24;
          }

          if (!(*(a1 + 240))(*(a1 + 248), Context, *(v88 + 4), *(v88 + 3), *(v88 + 5)))
          {
            return 21;
          }

          *(a1 + 856) = *(a1 + 864);
        }

LABEL_147:
        v96 = *(a1 + 952);
        if (v96 != 1)
        {
          if (v96 == 2)
          {
            goto LABEL_159;
          }

          if (v96 == 3)
          {
            v24 = 0;
            v97 = v116;
            *v14 = v116;
            goto LABEL_176;
          }

          v97 = v116;
LABEL_152:
          v117 = v97;
          *v14 = v97;
          continue;
        }

        v97 = v116;
        if (!*(a1 + 1040))
        {
          goto LABEL_152;
        }

        v24 = 0;
LABEL_176:
        *a6 = v97;
        return v24;
      case 10:
        v52 = (*(a3 + 80))(a3, v117);
        if ((v52 & 0x80000000) != 0)
        {
          return 14;
        }

        v45 = *(a1 + 136);
        if (!v45)
        {
          goto LABEL_140;
        }

        v53 = *(a1 + 8);
        v48 = XmlUtf8Encode(v52, &v112);
        v47 = &v112;
        v46 = v53;
LABEL_58:
        v45(v46, v47, v48);
        goto LABEL_59;
      case 11:
        if (!reportProcessingInstruction(a1, a3, v117, v23))
        {
          return 1;
        }

        goto LABEL_147;
      case 12:
        return v24;
      case 13:
        if (!reportComment(a1, a3, v117, v23))
        {
          return 1;
        }

        goto LABEL_147;
      default:
LABEL_53:
        if (!*(a1 + 176))
        {
          goto LABEL_147;
        }

        goto LABEL_102;
    }
  }
}

uint64_t prolog0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = prolog1;
  if (a2 <= 13)
  {
    switch(a2)
    {
      case 11:
        result = 55;
        break;
      case 12:
        result = 1;
        break;
      case 13:
        result = 56;
        break;
      default:
LABEL_13:
        if (a2 == 28 && !*(a1 + 20))
        {
          return 59;
        }

        goto LABEL_20;
    }

    v6 = prolog1;
  }

  else
  {
    if (a2 <= 15)
    {
      result = 0;
      if (a2 == 14)
      {
        return result;
      }

      goto LABEL_22;
    }

    if (a2 != 16)
    {
      if (a2 == 29)
      {
        result = 2;
LABEL_21:
        v6 = error;
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v8 = (*(a5 + 48))(a5, a3 + 2 * *(a5 + 128), a4, "DOCTYPE");
    v6 = doctype0;
    if (!v8)
    {
LABEL_20:
      result = 0xFFFFFFFFLL;
      goto LABEL_21;
    }

    result = 3;
  }

LABEL_22:
  *a1 = v6;
  return result;
}

BOOL utf8_isInvalid3(uint64_t a1, unsigned __int8 *a2)
{
  if ((a2[2] & 0x80000000) == 0)
  {
    return 1;
  }

  v3 = a2[2];
  v4 = *a2;
  if (v4 != 239)
  {
    if (v3 > 0xBF)
    {
      return 1;
    }

    v5 = a2[1];
    if (v4 == 224)
    {
      return (v5 + 64) < 0xE0u;
    }

    goto LABEL_11;
  }

  v5 = a2[1];
  if (v5 != 191)
  {
    if (v3 > 0xBF)
    {
      return 1;
    }

LABEL_11:
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_12;
    }

    return 1;
  }

  if (v3 > 0xBD)
  {
    return 1;
  }

  v5 = 191;
LABEL_12:
  if (v4 == 237)
  {
    v6 = 159;
  }

  else
  {
    v6 = 191;
  }

  return v5 > v6;
}

uint64_t normal_contentTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v6 = a2;
  v8 = a1 + 136;
  v9 = *(a1 + 136 + *a2);
  if (v9 > 5)
  {
    if (*(a1 + 136 + *a2) > 7u)
    {
      switch(v9)
      {
        case 8u:
          goto LABEL_128;
        case 9u:
          v23 = a2 + 1;
          if ((a3 - (a2 + 1)) < 1)
          {
            return 4294967293;
          }

          if (*(v8 + a2[1]) == 10)
          {
            v23 = a2 + 2;
          }

          break;
        case 0xAu:
          v23 = a2 + 1;
          break;
        default:
          goto LABEL_97;
      }

      *a4 = v23;
      return 7;
    }

    if (v9 == 6)
    {
      if ((a3 - a2) < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2))
      {
        goto LABEL_128;
      }

      v24 = v6 + 3;
      goto LABEL_98;
    }

    if (v9 == 7)
    {
      if ((a3 - a2) < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 456))(a1, a2))
      {
        goto LABEL_128;
      }

      v24 = v6 + 4;
      goto LABEL_98;
    }

LABEL_97:
    v24 = a2 + 1;
    goto LABEL_98;
  }

  if (*(a1 + 136 + *a2) > 2u)
  {
    switch(v9)
    {
      case 3u:
        v26 = a2 + 1;

        return normal_scanRef(a1, v26, a3, a4);
      case 4u:
        v24 = a2 + 1;
        if ((a3 - (a2 + 1)) < 1)
        {
          return 4294967291;
        }

        if (*v24 != 93)
        {
          goto LABEL_98;
        }

        v25 = a2 + 2;
        if ((a3 - (a2 + 2)) < 1)
        {
          return 4294967291;
        }

        if (*v25 == 62)
        {
          goto LABEL_93;
        }

LABEL_98:
        v27 = a3 - v24;
        if ((a3 - v24) >= 1)
        {
          while (1)
          {
            v28 = *(v8 + *v24);
            if (v28 > 5)
            {
              if (v28 == 6)
              {
                if (v27 < 3 || (*(a1 + 448))(a1, v24))
                {
LABEL_123:
                  *a4 = v24;
                  return 6;
                }

                v29 = v24 + 3;
              }

              else if (v28 == 7)
              {
                if (v27 < 4 || (*(a1 + 456))(a1, v24))
                {
                  goto LABEL_123;
                }

                v29 = v24 + 4;
              }

              else
              {
                if (v28 - 8 < 3)
                {
                  goto LABEL_123;
                }

                v29 = v24 + 1;
              }
            }

            else if (v28 == 4)
            {
              if (v27 == 1)
              {
                goto LABEL_123;
              }

              v29 = v24 + 1;
              if (v24[1] == 93)
              {
                if (v27 < 3)
                {
                  goto LABEL_123;
                }

                if (v24[2] == 62)
                {
                  result = 0;
                  v25 = v24 + 2;
                  goto LABEL_187;
                }
              }
            }

            else
            {
              if (v28 != 5 || v27 == 1 || (*(a1 + 440))(a1, v24))
              {
                goto LABEL_123;
              }

              v29 = v24 + 2;
            }

            v27 = a3 - v29;
            v24 = v29;
            if ((a3 - v29) <= 0)
            {
              goto LABEL_125;
            }
          }
        }

        v29 = v24;
LABEL_125:
        *a4 = v29;
        return 6;
      case 5u:
        if ((a3 - a2) < 2)
        {
          return 4294967294;
        }

        if ((*(a1 + 440))(a1, a2))
        {
          goto LABEL_128;
        }

        v24 = v6 + 2;
        goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (v9 < 2)
  {
    goto LABEL_128;
  }

  v10 = a2 + 1;
  v11 = a3 - (a2 + 1);
  if (v11 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(v8 + *v10);
  if (v12 <= 0xF)
  {
    if (*(v8 + *v10) > 6u)
    {
      if (v12 != 7)
      {
        if (v12 == 15)
        {
          v30 = a2 + 2;

          return normal_scanPi(a1, v30, a3, a4);
        }

        goto LABEL_180;
      }

      if (v11 < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 456))(a1, a2 + 1) || !(*(a1 + 432))(a1, v6 + 1))
      {
        goto LABEL_180;
      }

      v14 = 4;
    }

    else if (v12 == 5)
    {
      if (v11 == 1)
      {
        return 4294967294;
      }

      if ((*(a1 + 440))(a1, a2 + 1) || !(*(a1 + 416))(a1, v6 + 1))
      {
        goto LABEL_180;
      }

      v14 = 2;
    }

    else
    {
      if (v12 != 6)
      {
        goto LABEL_180;
      }

      if (v11 < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2 + 1) || !(*(a1 + 424))(a1, v6 + 1))
      {
        goto LABEL_180;
      }

      v14 = 3;
    }

LABEL_14:
    v6 = &v10[v14];
    v15 = a3 - &v10[v14];
    if (v15 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = 0;
    while (1)
    {
      v17 = *(v8 + *v6);
      if (v17 <= 0x16)
      {
        if (*(v8 + *v6) <= 6u)
        {
          if (v17 == 5)
          {
            if (v15 == 1)
            {
              return 4294967294;
            }

            if ((*(a1 + 440))(a1, v6) || !(*(a1 + 392))(a1, v6))
            {
              goto LABEL_128;
            }

LABEL_55:
            v18 = 2;
            goto LABEL_56;
          }

          if (v17 != 6)
          {
            goto LABEL_128;
          }

          if (v15 < 3)
          {
            return 4294967294;
          }

          if ((*(a1 + 448))(a1, v6) || !(*(a1 + 400))(a1, v6))
          {
            goto LABEL_128;
          }

          goto LABEL_31;
        }

        if (*(v8 + *v6) <= 0x10u)
        {
          if (v17 != 7)
          {
            if (v17 - 9 >= 2)
            {
              if (v17 == 11)
              {
LABEL_203:
                *a4 = v6 + 1;
                return 2;
              }

              goto LABEL_128;
            }

            goto LABEL_206;
          }

          if (v15 < 4)
          {
            return 4294967294;
          }

          if ((*(a1 + 456))(a1, v6) || !(*(a1 + 408))(a1, v6))
          {
            goto LABEL_128;
          }

          goto LABEL_25;
        }

        v18 = 1;
        if (v17 != 22)
        {
          if (v17 == 17)
          {
            goto LABEL_252;
          }

          if (v17 != 21)
          {
            goto LABEL_128;
          }

LABEL_206:
          v42 = a3 - ++v6;
          if ((a3 - v6) < 1)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0xFFFFFFFFLL;
          while (1)
          {
            v43 = *(v8 + *v6);
            if (v43 > 0xA)
            {
              if (*(v8 + *v6) > 0x15u)
              {
                if (v43 != 22 && v43 != 24)
                {
                  goto LABEL_128;
                }

                v46 = 2;
                goto LABEL_246;
              }

              if (v43 != 21)
              {
                if (v43 == 11)
                {
                  goto LABEL_203;
                }

                if (v43 == 17)
                {
LABEL_252:
                  v25 = v6 + 1;
                  if ((a3 - (v6 + 1)) >= 1)
                  {
                    if (*v25 == 62)
                    {
                      *a4 = v6 + 2;
                      return 4;
                    }

LABEL_93:
                    result = 0;
                    goto LABEL_187;
                  }

                  return 0xFFFFFFFFLL;
                }

LABEL_128:
                result = 0;
LABEL_129:
                *a4 = v6;
                return result;
              }
            }

            else if (*(v8 + *v6) <= 8u)
            {
              switch(v43)
              {
                case 5u:
                  if (v42 == 1)
                  {
                    return 4294967294;
                  }

                  if ((*(a1 + 440))(a1, v6) || !(*(a1 + 416))(a1, v6))
                  {
                    goto LABEL_128;
                  }

                  v46 = 3;
                  break;
                case 6u:
                  if (v42 < 3)
                  {
                    return 4294967294;
                  }

                  if ((*(a1 + 448))(a1, v6) || !(*(a1 + 424))(a1, v6))
                  {
                    goto LABEL_128;
                  }

                  v46 = 4;
                  break;
                case 7u:
                  if (v42 >= 4)
                  {
                    if ((*(a1 + 456))(a1, v6) || !(*(a1 + 432))(a1, v6))
                    {
                      goto LABEL_128;
                    }

                    v46 = 5;
                    break;
                  }

                  return 4294967294;
                default:
                  goto LABEL_128;
              }

LABEL_246:

              return normal_scanAtts(a1, &v6[v46 - 1], a3, a4);
            }

            ++v6;
            if (--v42 <= 0)
            {
              return result;
            }
          }
        }
      }

      else if (v17 - 24 >= 4)
      {
        if (v17 != 23 || v16)
        {
          goto LABEL_128;
        }

        v10 = v6 + 1;
        v19 = a3 - (v6 + 1);
        if (v19 < 1)
        {
          return 0xFFFFFFFFLL;
        }

        v20 = *(v8 + *v10);
        if (v20 > 0x15)
        {
          if (v20 != 22 && v20 != 24)
          {
            goto LABEL_180;
          }

          v16 = 1;
          goto LABEL_55;
        }

        if (v20 == 5)
        {
          if (v19 == 1)
          {
            return 4294967294;
          }

          if ((*(a1 + 440))(a1, v6 + 1) || !(*(a1 + 416))(a1, v6 + 1))
          {
            goto LABEL_180;
          }

          v16 = 1;
LABEL_31:
          v18 = 3;
          goto LABEL_56;
        }

        if (v20 == 6)
        {
          if (v19 < 3)
          {
            return 4294967294;
          }

          if ((*(a1 + 448))(a1, v6 + 1) || !(*(a1 + 424))(a1, v6 + 1))
          {
            goto LABEL_180;
          }

          v16 = 1;
LABEL_25:
          v18 = 4;
          goto LABEL_56;
        }

        if (v20 != 7)
        {
          goto LABEL_180;
        }

        if (v19 < 4)
        {
          return 4294967294;
        }

        if ((*(a1 + 456))(a1, v6 + 1) || !(*(a1 + 432))(a1, v6 + 1))
        {
          goto LABEL_180;
        }

        v16 = 1;
        v18 = 5;
      }

      else
      {
        v18 = 1;
      }

LABEL_56:
      v6 += v18;
      v15 = a3 - v6;
      result = 0xFFFFFFFFLL;
      if ((a3 - v6) <= 0)
      {
        return result;
      }
    }
  }

  if (*(v8 + *v10) > 0x15u)
  {
    if (v12 != 22 && v12 != 24)
    {
      goto LABEL_180;
    }

    v14 = 1;
    goto LABEL_14;
  }

  if (v12 == 16)
  {
    v25 = a2 + 2;
    if ((a3 - (a2 + 2)) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v37 = *(v8 + *v25);
    if (v37 == 20)
    {
      v25 = a2 + 3;
      if ((a3 - (a2 + 3)) >= 6)
      {
        v39 = big2_scanCdataSection_CDATA_LSQB;
        v40 = 6;
        do
        {
          v41 = *v39++;
          if (*v25 != v41)
          {
            goto LABEL_93;
          }

          ++v25;
          --v40;
        }

        while (v40);
        result = 8;
        v25 = a2 + 9;
LABEL_187:
        *a4 = v25;
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      if (v37 != 27)
      {
        goto LABEL_93;
      }

      v38 = a2 + 3;

      return normal_scanComment(a1, v38, a3, a4);
    }
  }

  if (v12 != 17)
  {
LABEL_180:
    result = 0;
    *a4 = v10;
    return result;
  }

  v6 = a2 + 2;
  v31 = a3 - (a2 + 2);
  if (v31 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v32 = *(v8 + *v6);
  if (v32 <= 6)
  {
    if (v32 == 5)
    {
      if (v31 == 1)
      {
        return 4294967294;
      }

      if ((*(a1 + 440))(a1, a2 + 2))
      {
        goto LABEL_128;
      }

      result = (*(a1 + 416))(a1, v6);
      if (!result)
      {
        goto LABEL_129;
      }

      v33 = 2;
    }

    else
    {
      if (v32 != 6)
      {
        goto LABEL_129;
      }

      if (v31 < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2 + 2))
      {
        goto LABEL_128;
      }

      result = (*(a1 + 424))(a1, v6);
      if (!result)
      {
        goto LABEL_129;
      }

      v33 = 3;
    }
  }

  else if (v32 == 7)
  {
    if (v31 < 4)
    {
      return 4294967294;
    }

    if ((*(a1 + 456))(a1, a2 + 2))
    {
      goto LABEL_128;
    }

    result = (*(a1 + 432))(a1, v6);
    if (!result)
    {
      goto LABEL_129;
    }

    v33 = 4;
  }

  else
  {
    v33 = 1;
    if (v32 != 22 && v32 != 24)
    {
      goto LABEL_129;
    }
  }

  v6 += v33;
  v34 = a3 - v6;
  if ((a3 - v6) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    v35 = *(v8 + *v6);
    if (v35 <= 8)
    {
      switch(v35)
      {
        case 5u:
          if (v34 == 1)
          {
            return 4294967294;
          }

          if ((*(a1 + 440))(a1, v6))
          {
            goto LABEL_128;
          }

          result = (*(a1 + 392))(a1, v6);
          if (!result)
          {
            goto LABEL_129;
          }

          v36 = 2;
          break;
        case 6u:
          if (v34 < 3)
          {
            return 4294967294;
          }

          if ((*(a1 + 448))(a1, v6))
          {
            goto LABEL_128;
          }

          result = (*(a1 + 400))(a1, v6);
          if (!result)
          {
            goto LABEL_129;
          }

          v36 = 3;
          break;
        case 7u:
          if (v34 < 4)
          {
            return 4294967294;
          }

          if ((*(a1 + 456))(a1, v6))
          {
            goto LABEL_128;
          }

          result = (*(a1 + 408))(a1, v6);
          if (!result)
          {
            goto LABEL_129;
          }

          v36 = 4;
          break;
        default:
          goto LABEL_128;
      }
    }

    else
    {
      if (v35 > 0x1B)
      {
        goto LABEL_128;
      }

      if (((1 << v35) & 0xFC00000) == 0)
      {
        if (((1 << v35) & 0x200600) != 0)
        {
          v44 = a3 - ++v6;
          if ((a3 - v6) < 1)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0xFFFFFFFFLL;
          while (1)
          {
            v35 = *(v8 + *v6);
            if (v35 - 9 >= 2 && v35 != 21)
            {
              break;
            }

            ++v6;
            if (--v44 <= 0)
            {
              return result;
            }
          }
        }

        if (v35 != 11)
        {
          goto LABEL_128;
        }

        ++v6;
        result = 5;
        goto LABEL_129;
      }

      v36 = 1;
    }

    v6 += v36;
    v34 = a3 - v6;
    result = 0xFFFFFFFFLL;
  }

  while ((a3 - v6) > 0);
  return result;
}

BOOL accountingDiffTolerated(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, int a5, int a6, __n128 a7)
{
  v10 = a3;
  if ((a2 + 4) >= 5)
  {
    if (a6 == 2)
    {
      return 1;
    }
  }

  else
  {
    v11 = 1;
    if (a6 == 2 || ((0x1Du >> (a2 + 4)) & 1) != 0)
    {
      return v11;
    }
  }

  v12 = -1;
  v13 = a1;
  do
  {
    v14 = v13;
    v13 = *(v13 + 944);
    ++v12;
  }

  while (v13);
  v15 = a4 - a3;
  v16 = v14 == a1 && a6 == 0;
  v17 = 984;
  if (v16)
  {
    v17 = 976;
  }

  v18 = *(v14 + v17);
  if (__CFADD__(v15, v18))
  {
    return 0;
  }

  *(v14 + v17) = v18 + v15;
  v19 = *(v14 + 984) + *(v14 + 976);
  v20.n128_f32[0] = accountingGetCurrentAmplification(v14, a7);
  v11 = v19 < *(v14 + 1008) || v20.n128_f32[0] <= *(v14 + 1000);
  if (*(v14 + 992) >= 2uLL)
  {
    accountingReportStats(v14, &unk_298778CC2, v20);
    if (*(v14 + 944))
    {
      accountingDiffTolerated_cold_1();
    }

    v21 = MEMORY[0x29EDCA610];
    v22 = "EXP";
    if (!a6)
    {
      v22 = "DIR";
    }

    fprintf(*MEMORY[0x29EDCA610], " (+%6ld bytes %s|%u, xmlparse.c:%d) %*s", a4 - v10, v22, v12, a5, 10, &unk_298778CC2);
    if (v15 < 25 || *(v14 + 992) > 2uLL)
    {
      if (v10 < a4)
      {
        do
        {
          v30 = *v21;
          v31 = *v10++;
          v32 = unsignedCharToPrintable(v31);
          fputs(v32, v30);
        }

        while (v10 != a4);
      }
    }

    else
    {
      for (i = 0; i != 10; ++i)
      {
        v24 = *v21;
        v25 = unsignedCharToPrintable(v10[i]);
        fputs(v25, v24);
      }

      fwrite("[..]", 4uLL, 1uLL, *v21);
      v26 = a4 - 10;
      do
      {
        v27 = *v21;
        v28 = *v26++;
        v29 = unsignedCharToPrintable(v28);
        fputs(v29, v27);
      }

      while (v26 < a4);
    }

    fwrite("\n", 2uLL, 1uLL, *v21);
  }

  return v11;
}

uint64_t normal_scanAtts(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v35 = a2;
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  v9 = 0;
  v10 = a1 + 136;
  v11 = a3 - 2;
  while (2)
  {
    result = 0;
    v13 = *(v10 + *v7);
    if (v13 > 0x14)
    {
      if (*(v10 + *v7) > 0x17u)
      {
        if (v13 - 24 <= 3)
        {
LABEL_6:
          ++v7;
          goto LABEL_7;
        }

        goto LABEL_134;
      }

      if (v13 != 21)
      {
        if (v13 == 22)
        {
          goto LABEL_6;
        }

        if (v13 != 23)
        {
LABEL_134:
          v14 = v7;
          goto LABEL_135;
        }

        if (!v9)
        {
          v14 = v7 + 1;
          v35 = v7 + 1;
          v15 = a3 - (v7 + 1);
          if (v15 < 1)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0;
          v16 = *(v10 + *v14);
          if (v16 <= 6)
          {
            if (v16 == 5)
            {
              if (v15 == 1)
              {
                return 4294967294;
              }

              if ((*(a1 + 440))(a1, v7 + 1))
              {
                goto LABEL_153;
              }

              result = (*(a1 + 416))(a1, v7 + 1);
              if (!result)
              {
                goto LABEL_135;
              }

              v7 += 3;
            }

            else
            {
              if (v16 != 6)
              {
                goto LABEL_135;
              }

              if (v15 < 3)
              {
                return 4294967294;
              }

              if ((*(a1 + 448))(a1, v7 + 1))
              {
                goto LABEL_153;
              }

              result = (*(a1 + 424))(a1, v7 + 1);
              if (!result)
              {
                goto LABEL_135;
              }

              v7 += 4;
            }

LABEL_101:
            v35 = v7;
            v9 = 1;
            goto LABEL_8;
          }

          if (v16 != 7)
          {
            if (v16 != 24 && v16 != 22)
            {
              goto LABEL_135;
            }

            v7 += 2;
            goto LABEL_101;
          }

          if (v15 >= 4)
          {
            if ((*(a1 + 456))(a1, v7 + 1))
            {
              goto LABEL_153;
            }

            result = (*(a1 + 432))(a1, v7 + 1);
            if (!result)
            {
              goto LABEL_135;
            }

            v7 += 5;
            goto LABEL_101;
          }

          return 4294967294;
        }

LABEL_133:
        result = 0;
        goto LABEL_134;
      }

LABEL_32:
      v18 = a3 - ++v7;
      if (a3 - v7 < 1)
      {
        return 0xFFFFFFFFLL;
      }

      while (1)
      {
        v19 = *(v10 + *v7);
        if ((v19 - 9) >= 2 && v19 != 21)
        {
          break;
        }

        ++v7;
        if (--v18 <= 0)
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (v19 != 14)
      {
        goto LABEL_133;
      }

      v35 = v7;
      goto LABEL_43;
    }

    if (*(v10 + *v7) <= 8u)
    {
      switch(v13)
      {
        case 5u:
          if (v4 == 1)
          {
            return 4294967294;
          }

          if (!(*(a1 + 440))(a1, v7))
          {
            result = (*(a1 + 392))(a1, v7);
            if (result)
            {
              v7 += 2;
              goto LABEL_7;
            }

            goto LABEL_134;
          }

          break;
        case 6u:
          if (v4 < 3)
          {
            return 4294967294;
          }

          if (!(*(a1 + 448))(a1, v7))
          {
            result = (*(a1 + 400))(a1, v7);
            if (result)
            {
              v7 += 3;
              goto LABEL_7;
            }

            goto LABEL_134;
          }

          break;
        case 7u:
          if (v4 < 4)
          {
            return 4294967294;
          }

          if (!(*(a1 + 456))(a1, v7))
          {
            result = (*(a1 + 408))(a1, v7);
            if (result)
            {
LABEL_17:
              v7 += 4;
              goto LABEL_7;
            }

            goto LABEL_134;
          }

          break;
        default:
          goto LABEL_134;
      }

      goto LABEL_133;
    }

    if (v13 - 9 < 2)
    {
      goto LABEL_32;
    }

    v14 = v7;
    if (v13 != 14)
    {
      goto LABEL_135;
    }

LABEL_43:
    v21 = v7 + 1;
    if (a3 - (v7 + 1) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v22 = *(v10 + *v21);
    if ((v22 & 0xFE) != 0xC)
    {
      v23 = v11 - v7;
      do
      {
        v7 = v21;
        if (v22 > 0x15 || ((1 << v22) & 0x200600) == 0)
        {
          goto LABEL_133;
        }

        if (v23 <= 0)
        {
          return 0xFFFFFFFFLL;
        }

        ++v21;
        v22 = *(v10 + v7[1]);
        --v23;
      }

      while ((v22 & 0xFE) != 0xC);
    }

    v7 += 2;
    v35 = v7;
    v24 = a3 - v7;
    if (a3 - v7 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      v25 = *(v10 + *v7);
      if (v25 == v22)
      {
        break;
      }

      if (*(v10 + *v7) > 5u)
      {
        switch(v25)
        {
          case 6u:
            if (v24 < 3)
            {
              return 4294967294;
            }

            if ((*(a1 + 448))(a1, v7))
            {
              goto LABEL_133;
            }

            v7 += 3;
            goto LABEL_72;
          case 7u:
            if (v24 < 4)
            {
              return 4294967294;
            }

            if ((*(a1 + 456))(a1, v7))
            {
              goto LABEL_133;
            }

            v7 += 4;
            goto LABEL_72;
          case 8u:
            goto LABEL_133;
        }

        goto LABEL_71;
      }

      if (v25 != 3)
      {
        if (v25 == 5)
        {
          if (v24 == 1)
          {
            return 4294967294;
          }

          if ((*(a1 + 440))(a1, v7))
          {
            goto LABEL_133;
          }

          v7 += 2;
          goto LABEL_72;
        }

        if (v25 < 3)
        {
          goto LABEL_133;
        }

LABEL_71:
        ++v7;
LABEL_72:
        v35 = v7;
        goto LABEL_73;
      }

      result = normal_scanRef(a1, v7 + 1, a3, &v35);
      if (result < 1)
      {
        if (!result)
        {
          v14 = v35;
          goto LABEL_135;
        }

        return result;
      }

      v7 = v35;
LABEL_73:
      v24 = a3 - v7;
      if (a3 - v7 <= 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v14 = v7 + 1;
    v35 = v7 + 1;
    if (a3 - (v7 + 1) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v26 = *(v10 + *v14);
    if (v26 <= 0xA)
    {
      if (v26 - 9 >= 2)
      {
        goto LABEL_135;
      }

LABEL_103:
      v14 = v7 + 2;
      if (a3 - (v7 + 2) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      v27 = 0;
      v28 = a3 - v7;
      v29 = 2;
      while (2)
      {
        v30 = *(v10 + v7[v29]);
        if (v30 > 0xA)
        {
          if (*(v10 + v7[v29]) <= 0x14u)
          {
            if (v30 == 11)
            {
              v14 = &v7[-v27 + 2];
              goto LABEL_152;
            }

            if (v30 == 17)
            {
              v14 = &v7[-v27 + 2];
              goto LABEL_140;
            }

            goto LABEL_154;
          }

          if (v30 != 21)
          {
            if (v30 == 24 || v30 == 22)
            {
              v9 = 0;
              v7 = &v7[-v27 + 3];
              goto LABEL_7;
            }

            goto LABEL_154;
          }

LABEL_110:
          ++v14;
          --v27;
          ++v29;
          result = 0xFFFFFFFFLL;
          if (v28 + v27 - 2 <= 0)
          {
            return result;
          }

          continue;
        }

        break;
      }

      if (*(v10 + v7[v29]) > 8u)
      {
        goto LABEL_110;
      }

      if (v30 == 5)
      {
        if (v28 + v27 == 3)
        {
          return 4294967294;
        }

        v7 -= v27;
        if (!(*(a1 + 440))(a1, v7 + 2))
        {
          result = (*(a1 + 416))(a1, v7 + 2);
          if (!result)
          {
            goto LABEL_135;
          }

          v9 = 0;
          goto LABEL_17;
        }

LABEL_153:
        result = 0;
        goto LABEL_135;
      }

      if (v30 != 6)
      {
        if (v30 != 7)
        {
LABEL_154:
          result = 0;
          v14 = &v7[-v27 + 2];
          goto LABEL_135;
        }

        if ((v28 + v27 - 2) < 4)
        {
          return 4294967294;
        }

        v31 = &v7[-v27];
        if (!(*(a1 + 456))(a1, v31 + 2))
        {
          result = (*(a1 + 432))(a1, v31 + 2);
          if (!result)
          {
            goto LABEL_135;
          }

          v9 = 0;
          v7 = v31 + 6;
          goto LABEL_7;
        }

        result = 0;
        v14 = v31 + 2;
        goto LABEL_135;
      }

      if ((v28 + v27 - 2) < 3)
      {
        return 4294967294;
      }

      v33 = &v7[-v27];
      if ((*(a1 + 448))(a1, v33 + 2))
      {
        goto LABEL_153;
      }

      result = (*(a1 + 424))(a1, v33 + 2);
      if (!result)
      {
        goto LABEL_135;
      }

      v9 = 0;
      v7 = v33 + 5;
LABEL_7:
      v35 = v7;
LABEL_8:
      v4 = a3 - v7;
      if (a3 - v7 <= 0)
      {
        return 0xFFFFFFFFLL;
      }

      continue;
    }

    break;
  }

  switch(v26)
  {
    case 0x15u:
      goto LABEL_103;
    case 0xBu:
LABEL_152:
      ++v14;
      result = 1;
      break;
    case 0x11u:
LABEL_140:
      v35 = v14 + 1;
      if (a3 - (v14 + 1) >= 1)
      {
        v34 = v14[1];
        if (v34 == 62)
        {
          v14 += 2;
        }

        else
        {
          ++v14;
        }

        if (v34 == 62)
        {
          result = 3;
        }

        else
        {
          result = 0;
        }

        break;
      }

      return 0xFFFFFFFFLL;
  }

LABEL_135:
  *a4 = v14;
  return result;
}

float accountingGetCurrentAmplification(void *a1, __n128 a2)
{
  v2 = a1[123];
  v3 = a1[122];
  result = (v2 + 22) / 22.0;
  if (v3)
  {
    result = (v2 + v3) / v3;
  }

  if (a1[118])
  {
    accountingGetCurrentAmplification_cold_1();
  }

  return result;
}

uint64_t poolStoreString(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = poolAppend(a1, a2, a3, a4);
  if (result)
  {
    v6 = a1[3];
    if (v6 == a1[2])
    {
      if (!poolGrow(a1))
      {
        return 0;
      }

      v6 = a1[3];
    }

    a1[3] = (v6 + 1);
    *v6 = 0;
    return a1[4];
  }

  return result;
}

uint64_t normal_nameLength(uint64_t a1, unsigned __int8 *a2)
{
  for (i = a2; ; i += qword_298778088[(*(a1 + 136 + *i) - 5)])
  {
    v3 = *(a1 + 136 + *i) - 5;
    if (v3 >= 0x19 || ((0x17E0007u >> v3) & 1) == 0)
    {
      break;
    }
  }

  return (i - a2);
}

uint64_t reportProcessingInstruction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 144))
  {
    v7 = a3 + 2 * *(a2 + 128);
    v8 = v7 + (*(a2 + 56))(a2, v7);
    result = poolStoreString((a1 + 832), a2, v7, v8);
    if (result)
    {
      v10 = result;
      *(a1 + 864) = *(a1 + 856);
      v11 = (*(a2 + 64))(a2, v8);
      result = poolStoreString((a1 + 832), a2, v11, a4 - 2 * *(a2 + 128));
      if (result)
      {
        v12 = result;
        normalizeLines(result);
        (*(a1 + 144))(*(a1 + 8), v10, v12);
        v13 = *(a1 + 840);
        v14 = *(a1 + 832);
        if (v13)
        {
          if (!v14)
          {
LABEL_13:
            *(a1 + 832) = 0;
            *(a1 + 848) = 0;
            *(a1 + 864) = 0;
            result = 1;
            *(a1 + 856) = 0;
            return result;
          }

          do
          {
            v15 = v14;
            v14 = *v14;
            *v15 = v13;
            v13 = v15;
          }

          while (v14);
        }

        else
        {
          v15 = *(a1 + 832);
        }

        *(a1 + 840) = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (*(a1 + 176))
    {
      reportDefault(a1, a2, a3, a4);
    }

    return 1;
  }

  return result;
}

uint64_t utf8_toUtf8(uint64_t a1, const void **a2, char *a3, void **a4, uint64_t a5)
{
  v6 = a3;
  v15 = a3;
  v8 = *a2;
  v9 = a3 - *a2;
  v10 = *a4;
  v11 = a5 - *a4;
  if (v9 > v11)
  {
    v6 = &v8[v11];
    v15 = &v8[v11];
  }

  _INTERNAL_trim_to_complete_utf8_characters(v8, &v15);
  v12 = v15 < v6;
  v13 = v15 - v8;
  memcpy(v10, v8, v15 - v8);
  *a2 = *a2 + v13;
  *a4 = *a4 + v13;
  if (v9 <= v11)
  {
    return v12;
  }

  else
  {
    return 2;
  }
}

unint64_t _INTERNAL_trim_to_complete_utf8_characters(unint64_t result, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 > result)
  {
    v3 = 0;
    v4 = *a2;
    while (1)
    {
      v6 = *--v4;
      v5 = v6;
      if ((v6 & 0xF8) == 0xF0)
      {
        if ((v3 - 3) <= 0xFFFFFFFFFFFFFFFBLL)
        {
          v2 += 3;
          break;
        }
      }

      else if ((v5 & 0xF0) == 0xE0)
      {
        if ((v3 - 2) <= 0xFFFFFFFFFFFFFFFCLL)
        {
          v2 += 2;
          break;
        }
      }

      else
      {
        if ((v5 & 0xE0) != 0xC0)
        {
          if ((v5 & 0x80) == 0)
          {
            break;
          }

          goto LABEL_12;
        }

        if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          ++v2;
          break;
        }
      }

      v3 = 0;
LABEL_12:
      ++v3;
      v2 = v4;
      if (v4 <= result)
      {
        v2 = result;
        break;
      }
    }
  }

  *a2 = v2;
  return result;
}

uint64_t storeAtts(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, uint64_t *a5, unsigned int a6)
{
  v140[3] = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 720);
  v13 = lookup(a1, (v12 + 40), *a4, 0);
  if (!v13)
  {
    v37 = poolCopyString((v12 + 160), *a4);
    if (!v37)
    {
      return 1;
    }

    v38 = lookup(a1, (v12 + 40), v37, 0x28uLL);
    if (!v38)
    {
      return 1;
    }

    v13 = v38;
    if (*(a1 + 472))
    {
      if (!setElementTypePrefix(a1, v38))
      {
        return 1;
      }
    }
  }

  v14 = *(v13 + 6);
  v15 = (*(a2 + 72))(a2, a3, *(a1 + 768), *(a1 + 784));
  if (v15 > (v14 ^ 0x7FFFFFFF))
  {
    return 1;
  }

  v16 = v15;
  v132 = a6;
  v17 = *(a1 + 768);
  if (v15 + v14 > v17)
  {
    if (v14 > 2147483631 || v15 > 2147483631 - v14)
    {
      return 1;
    }

    v19 = v15 + v14 + 16;
    *(a1 + 768) = v19;
    v20 = (*(a1 + 32))(*(a1 + 784), 32 * v19);
    if (!v20)
    {
      *(a1 + 768) = v17;
      return 1;
    }

    *(a1 + 784) = v20;
    if (v16 > v17)
    {
      (*(a2 + 72))(a2, a3, v16, v20);
    }
  }

  v136 = a5;
  v130 = a4;
  v131 = v12;
  v21 = *(a1 + 784);
  if (v16 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v134 = 0;
    while (1)
    {
      v24 = *(*(a1 + 784) + 32 * v22);
      v25 = (*(a2 + 56))(a2, v24);
      AttributeId = getAttributeId(a1, a2, v24, v24 + v25);
      if (!AttributeId)
      {
        return 1;
      }

      v27 = AttributeId;
      if (*(*AttributeId - 1))
      {
        if (*(a1 + 304) == a2)
        {
          *(a1 + 560) = *(*(a1 + 784) + 32 * v22);
        }

        return 8;
      }

      *(*AttributeId - 1) = 1;
      v28 = v23 + 1;
      *(v21 + 8 * v23) = *AttributeId;
      v29 = *(a1 + 784) + 32 * v22;
      if (*(v29 + 24))
      {
        v30 = poolStoreString((a1 + 832), a2, *(v29 + 8), *(v29 + 16));
        *(v21 + 8 * v28) = v30;
        if (!v30)
        {
          return 1;
        }
      }

      else
      {
        if (*(AttributeId + 16))
        {
          v31 = v14 < 1;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
LABEL_26:
          v34 = 1;
        }

        else
        {
          v32 = (*(v13 + 4) + 8);
          v33 = v14;
          while (AttributeId != *(v32 - 1))
          {
            v32 += 24;
            if (!--v33)
            {
              goto LABEL_26;
            }
          }

          v34 = *v32;
        }

        result = storeAttributeValue(a1, a2, v34, *(v29 + 8), *(v29 + 16), (a1 + 832), v132);
        if (result)
        {
          return result;
        }

        *(v21 + 8 * v28) = *(a1 + 864);
      }

      *(a1 + 864) = *(a1 + 856);
      v36 = *(v27 + 8);
      if (v36)
      {
        if (*(v27 + 17))
        {
          result = addBinding(a1, v36, v27, *(v21 + 8 * v28), v136);
          if (result)
          {
            return result;
          }
        }

        else
        {
          v23 += 2;
          ++v134;
          *(*v27 - 1) = 2;
        }
      }

      else
      {
        v23 += 2;
      }

      if (++v22 == v16)
      {
        goto LABEL_44;
      }
    }
  }

  v134 = 0;
  v23 = 0;
LABEL_44:
  *(a1 + 772) = v23;
  v39 = *(v13 + 2);
  if (v39)
  {
    v40 = *v39;
    v41 = v134;
    if (*(*v39 - 1))
    {
      if (v23 < 1)
      {
        goto LABEL_58;
      }

      v42 = 0;
      while (*(v21 + 8 * v42) != v40)
      {
        v42 += 2;
        if (v23 <= v42)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      LODWORD(v42) = -1;
    }
  }

  else
  {
    LODWORD(v42) = -1;
    v41 = v134;
  }

  *(a1 + 776) = v42;
LABEL_58:
  if (v14 >= 1)
  {
    v43 = 0;
    v44 = 24 * v14;
    do
    {
      v45 = *(v13 + 4);
      v46 = *(v45 + v43);
      v47 = *v46;
      if (!*(*v46 - 1))
      {
        v48 = *(v45 + v43 + 16);
        if (v48)
        {
          v49 = *(v46 + 8);
          if (v49)
          {
            if (*(v46 + 17))
            {
              result = addBinding(a1, v49, v46, v48, v136);
              if (result)
              {
                return result;
              }

              goto LABEL_61;
            }

            *(v47 - 1) = 2;
            ++v41;
          }

          else
          {
            *(v47 - 1) = 1;
          }

          v50 = (v21 + 8 * v23);
          *v50 = **(v45 + v43);
          v23 += 2;
          v50[1] = *(v45 + v43 + 16);
        }
      }

LABEL_61:
      v43 += 24;
    }

    while (v44 != v43);
  }

  v51 = v23;
  *(v21 + 8 * v23) = 0;
  if (!v41)
  {
LABEL_147:
    LODWORD(v63) = 0;
LABEL_148:
    if (v63 < v51)
    {
      v107 = v63;
      do
      {
        *(*(v21 + 8 * v107) - 1) = 0;
        v107 += 2;
      }

      while (v107 < v51);
    }

    for (i = *v136; i; i = *(i + 8))
    {
      *(**(i + 24) - 1) = 0;
    }

    if (*(a1 + 472))
    {
      v109 = *(v13 + 1);
      if (v109)
      {
        v110 = *(v109 + 8);
        if (!v110)
        {
          return 27;
        }

        v111 = *v130;
        do
        {
          v112 = *v111++;
        }

        while (v112 != 58);
LABEL_161:
        v113 = **v110;
        if (*(a1 + 473))
        {
          v114 = v113 == 0;
        }

        else
        {
          v114 = 1;
        }

        if (v114)
        {
          LODWORD(v115) = 0;
        }

        else
        {
          v115 = 0;
            ;
          }
        }

        v117 = 0;
        v118 = *(v110 + 40);
        v130[1] = v111;
        v130[2] = v113;
        *(v130 + 7) = v118;
        *(v130 + 8) = v115;
          ;
        }

        if (v118 > (v115 ^ 0x7FFFFFFF) || ((v115 + v118) ^ 0x7FFFFFFFu) <= v117 - 1)
        {
          return 1;
        }

        v120 = v117 + v115 + v118;
        if (v120 <= *(v110 + 44))
        {
          v123 = *(v110 + 32);
        }

        else
        {
          if (v120 > 2147483623)
          {
            return 1;
          }

          v121 = v120 + 24;
          v122 = (*(a1 + 24))(v120 + 24);
          if (!v122)
          {
            return 1;
          }

          v123 = v122;
          *(v110 + 44) = v121;
          memcpy(v122, *(v110 + 32), *(v110 + 40));
          v124 = *(a1 + 736);
          for (j = *(v110 + 32); v124; v124 = *v124)
          {
            if (v124[3] == j)
            {
              v124[3] = v123;
            }
          }

          (*(a1 + 40))(j);
          *(v110 + 32) = v123;
          v118 = *(v110 + 40);
        }

        v126 = &v123[v118];
        memcpy(v126, v111, v117);
        if (v115)
        {
          v126[v117 - 1] = *(a1 + 940);
          memcpy(&v126[v117], **v110, v115);
        }

        result = 0;
        *v130 = *(v110 + 32);
        return result;
      }

      v110 = *(v131 + 312);
      if (v110)
      {
        v111 = *v130;
        goto LABEL_161;
      }
    }

    return 0;
  }

  v52 = *(a1 + 808);
  if (v52 > 0x1F)
  {
    return 1;
  }

  if ((2 * v41) >> v52)
  {
    v53 = *(a1 + 808);
      ;
    }

    *(a1 + 808) = v53;
    if (v53 > 2u)
    {
      if (v53 >= 0x20u)
      {
        goto LABEL_168;
      }
    }

    else
    {
      v53 = 3;
      *(a1 + 808) = 3;
    }

    v57 = (*(a1 + 32))(*(a1 + 792), 24 << v53);
    if (v57)
    {
      v56 = 1 << v53;
      *(a1 + 792) = v57;
      goto LABEL_83;
    }

LABEL_168:
    *(a1 + 808) = v52;
    return 1;
  }

  v55 = *(a1 + 800);
  v56 = 1 << v52;
  if (v55)
  {
    goto LABEL_89;
  }

  v57 = *(a1 + 792);
LABEL_83:
  v58 = 0;
  v59 = vdupq_n_s64(v56 - 1);
  v60 = (v57 + 24 * v56 - 48);
  v55 = 0xFFFFFFFFLL;
  do
  {
    v61 = vmovn_s64(vcgeq_u64(v59, vorrq_s8(vdupq_n_s64(v58), xmmword_298777800)));
    if (v61.i8[0])
    {
      v60[3] = 0xFFFFFFFFLL;
    }

    if (v61.i8[4])
    {
      *v60 = 0xFFFFFFFFLL;
    }

    v58 += 2;
    v60 -= 6;
  }

  while (((v56 + 1) & 0x1FFFFFFFELL) != v58);
LABEL_89:
  v62 = v55 - 1;
  *(a1 + 800) = v55 - 1;
  if (v51 < 1)
  {
    goto LABEL_147;
  }

  v63 = 0;
  v64 = v56 - 1;
  v127 = ~v64;
  v129 = v64;
  v133 = v64 >> 2;
  v128 = v56;
  while (1)
  {
    v65 = *(v21 + 8 * v63);
    if (*(v65 - 1) != 2)
    {
      *(v65 - 1) = 0;
      goto LABEL_145;
    }

    v140[0] = 0;
    v66 = a1;
    do
    {
      v67 = v66;
      v66 = *(v66 + 944);
    }

    while (v66);
    v68 = *(v67 + 968);
    v137.i64[0] = 0x736F6D6570736575;
    v137.i64[1] = v68 ^ 0x646F72616E646F6DLL;
    v138 = 0x6C7967656E657261;
    v139 = v68 ^ 0x7465646279746573;
    v140[1] = v140;
    v140[2] = 0;
    *(v65 - 1) = 0;
    v69 = lookup(a1, (v131 + 80), v65, 0);
    if (!v69)
    {
      return 1;
    }

    v70 = *(v69 + 1);
    if (!v70)
    {
      return 1;
    }

    v71 = *(v70 + 8);
    if (!v71)
    {
      return 27;
    }

    if (*(v71 + 40))
    {
      v135 = v41;
      for (k = 0; k < v75; ++k)
      {
        v73 = *(*(v71 + 32) + k);
        v74 = *(a1 + 856);
        if (v74 == *(a1 + 848))
        {
          if (!poolGrow((a1 + 832)))
          {
            return 1;
          }

          v74 = *(a1 + 856);
        }

        *(a1 + 856) = v74 + 1;
        *v74 = v73;
        v75 = *(v71 + 40);
      }

      v76 = v75;
      v41 = v135;
    }

    else
    {
      v76 = 0;
    }

    sip24_update(v137.i64, *(v71 + 32), v76);
    do
    {
      v77 = *v65++;
    }

    while (v77 != 58);
    if (*v65)
    {
      v78 = 0;
      do
      {
        v79 = &v65[v78++];
      }

      while (v79[1]);
    }

    else
    {
      v78 = 0;
    }

    sip24_update(v137.i64, v65, v78);
    do
    {
      v80 = *(a1 + 856);
      if (v80 == *(a1 + 848))
      {
        if (!poolGrow((a1 + 832)))
        {
          return 1;
        }

        v80 = *(a1 + 856);
      }

      v81 = *v65;
      *(a1 + 856) = v80 + 1;
      *v80 = v81;
    }

    while (*v65++);
    sip24_final(&v137);
    v84 = v83;
    v85 = v83 & v129;
    v86 = *(a1 + 792);
    v87 = (v86 + 24 * (v83 & v129));
    if (*v87 == v62)
    {
      break;
    }

LABEL_138:
    if (*(a1 + 473))
    {
      *(*(a1 + 856) - 1) = *(a1 + 940);
      v101 = **v71;
      do
      {
        v102 = *(a1 + 856);
        if (v102 == *(a1 + 848))
        {
          if (!poolGrow((a1 + 832)))
          {
            return 1;
          }

          v102 = *(a1 + 856);
        }

        v103 = *v101;
        *(a1 + 856) = v102 + 1;
        *v102 = v103;
      }

      while (*v101++);
    }

    v105 = *(a1 + 864);
    *(a1 + 864) = *(a1 + 856);
    *(v21 + 8 * v63) = v105;
    v106 = (*(a1 + 792) + 24 * v85);
    *v106 = v62;
    v106[1] = v84;
    v106[2] = v105;
    if (!--v41)
    {
      LODWORD(v63) = v63 + 2;
      goto LABEL_148;
    }

LABEL_145:
    v63 += 2;
    if (v51 <= v63)
    {
      goto LABEL_148;
    }
  }

  v88 = 0;
  while (1)
  {
    if (v83 == v87[1])
    {
      v89 = *(a1 + 864);
      v90 = v87[2];
      v91 = *v89 == 0;
      if (*v89)
      {
        v92 = *v89 == *v90;
      }

      else
      {
        v92 = 0;
      }

      if (v92)
      {
        v93 = v90 + 1;
        v94 = v89 + 1;
        do
        {
          v96 = *v94++;
          v95 = v96;
          v91 = v96 == 0;
          v98 = *v93++;
          v97 = v98;
          if (v95)
          {
            v99 = v95 == v97;
          }

          else
          {
            v99 = 0;
          }
        }

        while (v99);
      }

      if (v91)
      {
        return 8;
      }
    }

    if (!v88)
    {
      v88 = ((v83 & v127) >> (*(a1 + 808) - 1)) & v133 | 1;
    }

    if (v85 >= v88)
    {
      v100 = -v88;
    }

    else
    {
      v100 = v128 - v88;
    }

    v85 += v100;
    v87 = (v86 + 24 * v85);
    if (*v87 != v62)
    {
      goto LABEL_138;
    }
  }
}

uint64_t poolAppend(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v7 = a1 + 3;
  if (a1[3])
  {
    goto LABEL_3;
  }

  while (poolGrow(a1))
  {
LABEL_3:
    if ((*(a2 + 112))(a2, &v9, a4, v7, a1[2]) < 2)
    {
      return a1[4];
    }
  }

  return 0;
}

uint64_t setElementTypePrefix(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 720);
  v6 = *a2;
  while (1)
  {
    if (!v6[v4])
    {
      return 1;
    }

    if (v6[v4] == 58)
    {
      break;
    }

    ++v4;
  }

  for (; v4; --v4)
  {
    v7 = *(v5 + 184);
    if (v7 == *(v5 + 176))
    {
      result = poolGrow((v5 + 160));
      if (!result)
      {
        return result;
      }

      v7 = *(v5 + 184);
    }

    v9 = *v6++;
    *(v5 + 184) = v7 + 1;
    *v7 = v9;
  }

  v10 = *(v5 + 184);
  if (v10 == *(v5 + 176))
  {
    result = poolGrow((v5 + 160));
    if (!result)
    {
      return result;
    }

    v10 = *(v5 + 184);
  }

  *(v5 + 184) = v10 + 1;
  *v10 = 0;
  result = lookup(a1, (v5 + 120), *(v5 + 192), 0x10uLL);
  if (result)
  {
    v11 = *(v5 + 192);
    if (*result == v11)
    {
      *(v5 + 192) = *(v5 + 184);
    }

    else
    {
      *(v5 + 184) = v11;
    }

    *(a2 + 8) = result;
    return 1;
  }

  return result;
}

unsigned __int8 *normal_skipS(uint64_t a1, unsigned __int8 *a2)
{
  while (1)
  {
    v2 = *(a1 + 136 + *a2);
    v3 = v2 > 0x15;
    v4 = (1 << v2) & 0x200600;
    if (v3 || v4 == 0)
    {
      break;
    }

    ++a2;
  }

  return a2;
}

uint64_t normal_getAtts(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 0;
  v6 = 0;
  v7 = a1 + 136;
  v8 = 1;
  while (2)
  {
    v9 = a2;
    v11 = *++a2;
    v10 = v11;
    v12 = v8;
    switch(*(v7 + v11))
    {
      case 3:
        if (result < a3)
        {
          *(a4 + 32 * result + 24) = 0;
        }

        continue;
      case 5:
        if (!v8)
        {
          v12 = 1;
          if (result < a3)
          {
            v19 = a4 + 32 * result;
            *v19 = a2;
            *(v19 + 24) = 1;
          }
        }

        a2 = v9 + 2;
        v8 = v12;
        continue;
      case 6:
        if (!v8)
        {
          v12 = 1;
          if (result < a3)
          {
            v17 = a4 + 32 * result;
            *v17 = a2;
            *(v17 + 24) = 1;
          }
        }

        a2 = v9 + 3;
        v8 = v12;
        continue;
      case 7:
        if (!v8)
        {
          v12 = 1;
          if (result < a3)
          {
            v18 = a4 + 32 * result;
            *v18 = a2;
            *(v18 + 24) = 1;
          }
        }

        a2 = v9 + 4;
        v8 = v12;
        continue;
      case 9:
      case 0xA:
        v8 = 0;
        if (v12 != 1)
        {
          v8 = v12;
          if (v12 == 2 && result < a3)
          {
            *(a4 + 32 * result + 24) = 0;
            v8 = 2;
          }
        }

        continue;
      case 0xB:
      case 0x11:
        v8 = 2;
        if (v12 == 2)
        {
          continue;
        }

        return result;
      case 0xC:
        if (v8 == 2)
        {
          v8 = 2;
          if (v6 == 12)
          {
            if (result < a3)
            {
              *(a4 + 32 * result + 16) = a2;
            }

            v8 = 0;
            result = (result + 1);
            v6 = 12;
          }
        }

        else
        {
          v6 = 12;
          v8 = 2;
          if (result < a3)
          {
            *(a4 + 32 * result + 8) = v9 + 2;
            v6 = 12;
            v8 = 2;
          }
        }

        continue;
      case 0xD:
        if (v8 == 2)
        {
          v8 = 2;
          if (v6 == 13)
          {
            if (result < a3)
            {
              *(a4 + 32 * result + 16) = a2;
            }

            v8 = 0;
            result = (result + 1);
            v6 = 13;
          }
        }

        else
        {
          v6 = 13;
          v8 = 2;
          if (result < a3)
          {
            *(a4 + 32 * result + 8) = v9 + 2;
            v6 = 13;
            v8 = 2;
          }
        }

        continue;
      case 0x15:
        v8 = 0;
        if (v12 != 1)
        {
          v8 = v12;
          if (v12 == 2 && result < a3)
          {
            v14 = a4 + 32 * result;
            v8 = 2;
            if (*(v14 + 24))
            {
              if (v10 != 32 || a2 == *(v14 + 8) || (v15 = *(v9 + 2), v15 == 32) || (v16 = *(v7 + v15), v8 = 2, v6 == v16))
              {
                *(v14 + 24) = 0;
                v8 = 2;
              }
            }
          }
        }

        continue;
      case 0x16:
      case 0x18:
      case 0x1D:
        if (!v8)
        {
          v8 = 1;
          if (result < a3)
          {
            v13 = a4 + 32 * result;
            *v13 = a2;
            *(v13 + 24) = 1;
          }
        }

        continue;
      default:
        continue;
    }
  }
}

_OWORD *getAttributeId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 720);
  v9 = *(v8 + 184);
  if (v9 == *(v8 + 176))
  {
    if (!poolGrow((v8 + 160)))
    {
      return 0;
    }

    v9 = *(v8 + 184);
  }

  *(v8 + 184) = v9 + 1;
  *v9 = 0;
  v10 = poolStoreString((v8 + 160), a2, a3, a4);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = (v10 + 1);
  v13 = lookup(a1, (v8 + 80), (v10 + 1), 0x18uLL);
  v14 = v13;
  if (v13)
  {
    if (*v13 != v12)
    {
      v15 = *(v8 + 192);
LABEL_8:
      *(v8 + 184) = v15;
      return v14;
    }

    v16 = *(v8 + 184);
    *(v8 + 192) = v16;
    if (!*(a1 + 472))
    {
      return v14;
    }

    v17 = *v12;
    if (v17 == 120 && v11[2] == 109 && v11[3] == 108 && v11[4] == 110 && v11[5] == 115)
    {
      if (v11[6] == 58)
      {
        v18 = lookup(a1, (v8 + 120), v11 + 7, 0x10uLL);
        goto LABEL_38;
      }

      if (!v11[6])
      {
        v18 = (v8 + 304);
LABEL_38:
        *(v14 + 1) = v18;
        *(v14 + 17) = 1;
        return v14;
      }
    }

    v19 = 0;
    if (!*v12)
    {
      return v14;
    }

    while (v17 != 58)
    {
      v17 = v11[v19++ + 2];
      if (!v17)
      {
        return v14;
      }
    }

    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = *(v8 + 184);
        if (v21 == *(v8 + 176))
        {
          if (!poolGrow((v8 + 160)))
          {
            return 0;
          }

          v21 = *(v8 + 184);
        }

        v22 = v12[i];
        *(v8 + 184) = v21 + 1;
        *v21 = v22;
      }

      v16 = *(v8 + 184);
    }

    if (v16 == *(v8 + 176))
    {
      if (!poolGrow((v8 + 160)))
      {
        return 0;
      }

      v16 = *(v8 + 184);
    }

    *(v8 + 184) = v16 + 1;
    *v16 = 0;
    v23 = lookup(a1, (v8 + 120), *(v8 + 192), 0x10uLL);
    *(v14 + 1) = v23;
    if (v23)
    {
      v15 = *(v8 + 192);
      if (*v23 == v15)
      {
        *(v8 + 192) = *(v8 + 184);
        return v14;
      }

      goto LABEL_8;
    }

    return 0;
  }

  return v14;
}

_BYTE *normalizeLines(_BYTE *result)
{
  while (1)
  {
    v1 = *result;
    if (!*result)
    {
      break;
    }

    if (v1 == 13)
    {
      v2 = result;
      do
      {
        if (v1 == 13)
        {
          *v2 = 10;
          v3 = *++result;
          if (v3 == 10)
          {
            ++result;
          }
        }

        else
        {
          ++result;
          *v2 = v1;
        }

        ++v2;
        v1 = *result;
      }

      while (*result);
      *v2 = 0;
      return result;
    }

    ++result;
  }

  return result;
}

uint64_t prolog1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 <= 13)
  {
    if (a2 == 11)
    {
      return 55;
    }

    if (a2 == 13)
    {
      return 56;
    }

    goto LABEL_10;
  }

  if ((a2 - 14) < 2)
  {
    return 0;
  }

  if (a2 != 16)
  {
    if (a2 == 29)
    {
      *a1 = error;
      return 2;
    }

LABEL_10:
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_16;
  }

  if ((*(a5 + 48))(a5, a3 + 2 * *(a5 + 128), a4, "DOCTYPE"))
  {
    *a1 = doctype0;
    return 3;
  }

LABEL_16:
  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t epilogProcessor(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v5 = a2;
  *(a1 + 544) = epilogProcessor;
  for (*(a1 + 560) = a2; ; *(a1 + 560) = 0)
  {
    v7 = (**(a1 + 304))();
    if (!accountingDiffTolerated(a1, v7, v5, 0, 5908, 0, v8))
    {
      accountingReportStats(a1, " ABORTING\n", v9);
      return 43;
    }

    *(a1 + 568) = 0;
    result = 9;
    if (v7 <= 10)
    {
      break;
    }

    switch(v7)
    {
      case 11:
        if (!reportProcessingInstruction(a1, *(a1 + 304), v5, 0))
        {
          return 1;
        }

        break;
      case 13:
        if (!reportComment(a1, *(a1 + 304), v5, 0))
        {
          return 1;
        }

        break;
      case 15:
        if (*(a1 + 176))
        {
          reportDefault(a1, *(a1 + 304), v5, 0);
        }

        break;
      default:
        return result;
    }

    v11 = *(a1 + 952);
    switch(v11)
    {
      case 1:
        if (*(a1 + 1040))
        {
          return 23;
        }

        break;
      case 2:
        *(a1 + 560) = 0;
        return 35;
      case 3:
        result = 0;
        *(a1 + 560) = 0;
        *a4 = 0;
        return result;
    }

    v5 = 0;
  }

  if (v7 <= -3)
  {
    if (v7 == -15)
    {
      if (!*(a1 + 176) || (reportDefault(a1, *(a1 + 304), v5, 0), *(a1 + 952) != 2))
      {
        result = 0;
        *a4 = 0;
        return result;
      }

      return 35;
    }

    if (v7 != -4)
    {
      return result;
    }

LABEL_33:
    result = 0;
    *a4 = v5;
    return result;
  }

  switch(v7)
  {
    case -2:
      if (*(a1 + 956))
      {
        return 6;
      }

      goto LABEL_33;
    case -1:
      if (*(a1 + 956))
      {
        return 5;
      }

      goto LABEL_33;
    case 0:
      *(a1 + 560) = 0;
      return 4;
  }

  return result;
}

uint64_t storeRawNames(uint64_t a1)
{
  for (i = *(a1 + 736); i; i = *i)
  {
    v3 = *(i + 12) + 1;
    v4 = i[8];
    v5 = v4 + v3;
    v6 = i[1];
    if (v6 == (v4 + v3))
    {
      break;
    }

    v7 = *(i + 4);
    if (2147483646 - *(i + 12) < v7)
    {
      return 0;
    }

    if (i[9] - v4 < v7 + v3)
    {
      v8 = v7 + v3;
      result = (*(a1 + 32))();
      if (!result)
      {
        return result;
      }

      v10 = i[8];
      if (i[3] == v10)
      {
        i[3] = result;
      }

      v11 = i[4];
      if (v11)
      {
        i[4] = (result + v11 - v10);
      }

      i[8] = result;
      i[9] = (result + v8);
      v5 = (result + v3);
      v6 = i[1];
      v7 = *(i + 4);
    }

    memcpy(v5, v6, v7);
    i[1] = v5;
  }

  return 1;
}

uint64_t normal_updatePosition(uint64_t result, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 >= 1)
  {
    v4 = result + 136;
    while (1)
    {
      v5 = *(v4 + *a2);
      if (v5 <= 6)
      {
        break;
      }

      if (v5 == 7)
      {
        a2 += 4;
        goto LABEL_18;
      }

      if (v5 == 9)
      {
        ++*a4;
        if (a3 - (a2 + 1) < 1)
        {
          ++a2;
        }

        else if (*(v4 + a2[1]) == 10)
        {
          a2 += 2;
        }

        else
        {
          ++a2;
        }

        a4[1] = 0;
        goto LABEL_21;
      }

      if (v5 != 10)
      {
        goto LABEL_17;
      }

      ++*a4;
      a4[1] = 0;
      ++a2;
LABEL_21:
      if (a3 - a2 <= 0)
      {
        return result;
      }
    }

    if (v5 == 5)
    {
      a2 += 2;
    }

    else if (v5 == 6)
    {
      a2 += 3;
    }

    else
    {
LABEL_17:
      ++a2;
    }

LABEL_18:
    ++a4[1];
    goto LABEL_21;
  }

  return result;
}

void XML_ParserFree(XML_Parser parser)
{
  if (parser)
  {
    v2 = *(parser + 92);
    if (v2)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v2 = *(parser + 93);
      if (!v2)
      {
        break;
      }

      *(parser + 93) = 0;
      do
      {
LABEL_5:
        v3 = *v2;
        (*(parser + 5))(v2[8]);
        v4 = v2[10];
        if (v4)
        {
          do
          {
            v5 = *(v4 + 8);
            (*(parser + 5))(*(v4 + 32));
            (*(parser + 5))(v4);
            v4 = v5;
          }

          while (v5);
        }

        (*(parser + 5))(v2);
        v2 = v3;
      }

      while (v3);
    }

    v6 = *(parser + 73);
    if (v6)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v6 = *(parser + 74);
      if (!v6)
      {
        break;
      }

      *(parser + 74) = 0;
      do
      {
LABEL_12:
        v7 = *(v6 + 16);
        (*(parser + 5))();
        v6 = v7;
      }

      while (v7);
    }

    v8 = *(parser + 75);
    if (v8)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v8 = *(parser + 76);
      if (!v8)
      {
        break;
      }

      *(parser + 76) = 0;
      do
      {
LABEL_17:
        v9 = *(v8 + 16);
        (*(parser + 5))();
        v8 = v9;
      }

      while (v9);
    }

    v10 = *(parser + 77);
    if (v10)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v10 = *(parser + 78);
      if (!v10)
      {
        break;
      }

      *(parser + 78) = 0;
      do
      {
LABEL_22:
        v11 = *(v10 + 16);
        (*(parser + 5))();
        v10 = v11;
      }

      while (v11);
    }

    v12 = *(parser + 95);
    if (v12)
    {
      do
      {
        v13 = *(v12 + 8);
        (*(parser + 5))(*(v12 + 32));
        (*(parser + 5))(v12);
        v12 = v13;
      }

      while (v13);
    }

    v14 = *(parser + 94);
    if (v14)
    {
      do
      {
        v15 = *(v14 + 8);
        (*(parser + 5))(*(v14 + 32));
        (*(parser + 5))(v14);
        v14 = v15;
      }

      while (v15);
    }

    poolDestroy(parser + 832);
    poolDestroy(parser + 880);
    (*(parser + 5))(*(parser + 58));
    if (!*(parser + 960))
    {
      v16 = *(parser + 90);
      if (v16)
      {
        v17 = v16[5];
        if (v17)
        {
          v18 = &v17[v16[7]];
        }

        else
        {
          v18 = 0;
        }

        v19 = *(parser + 118);
        while (v17 != v18)
        {
          v21 = *v17++;
          v20 = v21;
          if (v21 && *(v20 + 28))
          {
            (*(parser + 5))(*(v20 + 32));
          }
        }

        hashTableDestroy(v16);
        hashTableDestroy(v16 + 33);
        hashTableDestroy(v16 + 5);
        hashTableDestroy(v16 + 10);
        hashTableDestroy(v16 + 15);
        poolDestroy((v16 + 20));
        poolDestroy((v16 + 26));
        if (!v19)
        {
          (*(parser + 5))(v16[44]);
          (*(parser + 5))(v16[41]);
        }

        (*(parser + 5))(v16);
      }
    }

    (*(parser + 5))(*(parser + 98));
    (*(parser + 5))(*(parser + 116));
    (*(parser + 5))(*(parser + 2));
    (*(parser + 5))(*(parser + 13));
    (*(parser + 5))(*(parser + 99));
    (*(parser + 5))(*(parser + 60));
    v22 = *(parser + 63);
    if (v22)
    {
      v22(*(parser + 61));
    }

    v23 = *(parser + 5);

    v23(parser);
  }
}

void *poolDestroy(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = *v2;
      (*(*(a1 + 40) + 16))();
      v2 = v3;
    }

    while (v3);
  }

  result = *(a1 + 8);
  if (result)
  {
    do
    {
      v5 = *result;
      (*(*(a1 + 40) + 16))();
      result = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t hashTableDestroy(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = 0;
    do
    {
      (*(a1[4] + 16))(*(*a1 + 8 * v2++));
    }

    while (v2 < a1[2]);
  }

  v3 = *(a1[4] + 16);
  v4 = *a1;

  return v3(v4);
}

uint64_t storeAttributeValue(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t a7)
{
  v7 = a7;
  v10 = a3;
  v26 = a4;
  do
  {
    do
    {
      while (1)
      {
        v13 = a1[75];
        if (!v13)
        {
          break;
        }

        v14 = *(v13 + 24);
        v15 = *(v14 + 8);
        v16 = *(v14 + 16);
        v17 = (v15 + *(v14 + 20));
        v25 = v17;
        v18 = a1;
        if (*(v14 + 57))
        {
          v19 = (v15 + v16);
          result = appendAttributeValue(a1, a1[57], v10, v17, v15 + v16, a6, 1, &v25);
          if (result)
          {
            return result;
          }

          if (v19 == v25)
          {
            *(v14 + 57) = 0;
          }

          else
          {
            *(v14 + 20) = v25 - *(v14 + 8);
          }
        }

        else
        {
          do
          {
            v21 = v18;
            v18 = v18[118];
          }

          while (v18);
          entityTrackingReportStats(v21, v14, "CLOSE", 6173);
          --*(v21 + 1020);
          v22 = a1[75];
          if (v22 != v13)
          {
            storeAttributeValue_cold_1();
          }

          *(v14 + 56) = 0;
          v23 = *(v22 + 16);
          a1[75] = v23;
          *(v13 + 16) = a1[76];
          a1[76] = v13;
          if (!v23)
          {
            goto LABEL_13;
          }
        }
      }

      result = appendAttributeValue(a1, a2, v10, v26, a5, a6, v7, &v26);
      if (result)
      {
        return result;
      }
    }

    while (a1[75]);
LABEL_13:
    ;
  }

  while (v26 != a5);
  v24 = a6[3];
  if (!v10 && v24 != a6[4] && *(v24 - 1) == 32)
  {
    a6[3] = --v24;
  }

  if (v24 == a6[2])
  {
    if (poolGrow(a6))
    {
      v24 = a6[3];
      goto LABEL_20;
    }

    return 1;
  }

  else
  {
LABEL_20:
    result = 0;
    a6[3] = (v24 + 1);
    *v24 = 0;
  }

  return result;
}

uint64_t appendAttributeValue(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4, uint64_t a5, uint64_t *a6, int a7, void *a8)
{
  v15 = *(a1 + 720);
  while (1)
  {
    v37 = a4;
    v16 = (*(a2 + 32))(a2, a4, a5, &v37);
    if (!accountingDiffTolerated(a1, v16, a4, v37, 6217, a7, v17))
    {
      accountingReportStats(a1, " ABORTING\n", v18);
      return 43;
    }

    if (v16 <= 8)
    {
      if (v16 < 0)
      {
        if (v16 != -3)
        {
          if (v16 == -4)
          {
            v33 = a8;
            if (!a8)
            {
              return 0;
            }

            result = 0;
            goto LABEL_70;
          }

          if (v16 == -1)
          {
            if (*(a1 + 304) == a2)
            {
              *(a1 + 560) = a4;
            }

            return 4;
          }

LABEL_71:
          if (*(a1 + 304) == a2)
          {
            *(a1 + 560) = a4;
          }

          return 23;
        }

        v37 = &a4[*(a2 + 128)];
        goto LABEL_14;
      }

      if (v16 != 6)
      {
        if (v16 != 7)
        {
          if (!v16)
          {
            if (*(a1 + 304) == a2)
            {
              *(a1 + 560) = v37;
            }

            return 4;
          }

          goto LABEL_71;
        }

        goto LABEL_14;
      }

      if (!poolAppend(a6, a2, a4, v37))
      {
        return 1;
      }

      goto LABEL_46;
    }

    if (v16 == 9)
    {
      break;
    }

    if (v16 != 10)
    {
      if (v16 != 39)
      {
        goto LABEL_71;
      }

LABEL_14:
      v19 = a6[3];
      if (a3 || v19 != a6[4] && *(v19 - 1) != 32)
      {
        if (v19 == a6[2])
        {
          if (!poolGrow(a6))
          {
            return 1;
          }

          v19 = a6[3];
        }

        a6[3] = (v19 + 1);
        *v19 = 32;
      }

      goto LABEL_46;
    }

    v23 = (*(a2 + 80))(a2, a4);
    if ((v23 & 0x80000000) != 0)
    {
      if (*(a1 + 304) == a2)
      {
        *(a1 + 560) = a4;
      }

      return 14;
    }

    if (a3 || v23 != 32 || (v24 = a6[3], v24 != a6[4]) && *(v24 - 1) != 32)
    {
      v25 = XmlUtf8Encode(v23, v36);
      if (v25 >= 1)
      {
        v26 = v25;
        v27 = v36;
        do
        {
          v28 = a6[3];
          if (v28 == a6[2])
          {
            if (!poolGrow(a6))
            {
              return 1;
            }

            v28 = a6[3];
          }

          v29 = *v27++;
          a6[3] = (v28 + 1);
          *v28 = v29;
          --v26;
        }

        while (v26);
      }
    }

LABEL_46:
    a4 = v37;
  }

  v35 = (*(a2 + 88))(a2, &a4[*(a2 + 128)], &v37[-*(a2 + 128)]);
  if (v35)
  {
    accountingDiffTolerated(a1, 9, &v35, v36, 6289, 1, v20);
    v21 = a6[3];
    if (v21 == a6[2])
    {
      if (!poolGrow(a6))
      {
        return 1;
      }

      v21 = a6[3];
    }

    v22 = v35;
    a6[3] = (v21 + 1);
    *v21 = v22;
    goto LABEL_46;
  }

  v30 = poolStoreString((a1 + 880), a2, &a4[*(a2 + 128)], &v37[-*(a2 + 128)]);
  if (!v30)
  {
    return 1;
  }

  v31 = lookup(a1, v15, v30, 0);
  *(a1 + 904) = *(a1 + 912);
  if ((v15 + 160) == a6)
  {
    if (*(a1 + 532))
    {
      if (*(v15 + 258))
      {
        if (!*(a1 + 584))
        {
          goto LABEL_52;
        }
      }

      else if (!*(v15 + 257))
      {
        goto LABEL_52;
      }
    }

    goto LABEL_45;
  }

  if (*(v15 + 257) && !*(v15 + 258))
  {
LABEL_45:
    if (v31)
    {
      goto LABEL_54;
    }

    goto LABEL_46;
  }

LABEL_52:
  if (!v31)
  {
    return 11;
  }

  if (!*(v31 + 59))
  {
    return 24;
  }

LABEL_54:
  if (*(v31 + 56))
  {
    if (*(a1 + 304) == a2)
    {
      *(a1 + 560) = a4;
    }

    return 12;
  }

  if (*(v31 + 6))
  {
    if (*(a1 + 304) == a2)
    {
      *(a1 + 560) = a4;
    }

    return 15;
  }

  if (*(v31 + 1))
  {
    result = processEntity(a1, v31, 0, 1);
    v33 = a8;
    if (!a8 || result)
    {
      return result;
    }

LABEL_70:
    *v33 = v37;
    return result;
  }

  if (*(a1 + 304) == a2)
  {
    *(a1 + 560) = a4;
  }

  return 16;
}

uint64_t normal_attributeValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    v6 = *(v4 + *v5);
    if (v6 > 6)
    {
      break;
    }

    if (*(v4 + *v5) > 5u)
    {
      v7 = 3;
      goto LABEL_19;
    }

    if (v6 != 5)
    {
      if (v6 == 2)
      {
        result = 0;
        *a4 = v5;
        return result;
      }

      if (v6 == 3)
      {
        if (v5 == a2)
        {
          return normal_scanRef(a1, a2 + 1, a3, a4);
        }

LABEL_20:
        *a4 = v5;
        return 6;
      }

      goto LABEL_18;
    }

    v7 = 2;
LABEL_19:
    v5 += v7;
    if ((a3 - v5) <= 0)
    {
      goto LABEL_20;
    }
  }

  if (*(v4 + *v5) <= 8u)
  {
    if (v6 != 7)
    {
      goto LABEL_18;
    }

    v7 = 4;
    goto LABEL_19;
  }

  if (v6 == 9)
  {
    if (v5 != a2)
    {
      goto LABEL_20;
    }

    v9 = a2 + 1;
    if ((a3 - (a2 + 1)) < 1)
    {
      return 4294967293;
    }

    if (*(v4 + a2[1]) == 10)
    {
      v9 = a2 + 2;
    }

LABEL_34:
    *a4 = v9;
    return 7;
  }

  if (v6 == 10)
  {
    if (v5 != a2)
    {
      goto LABEL_20;
    }

    v9 = a2 + 1;
    goto LABEL_34;
  }

  if (v6 != 21)
  {
LABEL_18:
    v7 = 1;
    goto LABEL_19;
  }

  if (v5 != a2)
  {
    goto LABEL_20;
  }

  *a4 = a2 + 1;
  return 39;
}

uint64_t entityTrackingReportStats(uint64_t result, uint64_t a2, const char *a3, int a4)
{
  if (*(result + 944))
  {
    entityTrackingReportStats_cold_1();
  }

  if (*(result + 1032))
  {
    v4 = "%";
    if (!*(a2 + 58))
    {
      v4 = "&";
    }

    return fprintf(*MEMORY[0x29EDCA610], "expat: Entities(%p): Count %9u, depth %2u/%2u %*s%s%s; %s length %d (xmlparse.c:%d)\n", result, *(result + 1016), *(result + 1020), *(result + 1024), 2 * *(result + 1020) - 2, &unk_298778CC2, v4, *a2, a3, *(a2 + 16), a4);
  }

  return result;
}

void *freeBindings(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v3[28];
      if (v4)
      {
        result = v4(v3[1], **v2);
      }

      v6 = *v2;
      v5 = *(v2 + 8);
      *(v2 + 8) = v3[95];
      v3[95] = v2;
      v6[1] = *(v2 + 16);
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

XML_Bool XML_ParserReset(XML_Parser parser, const XML_Char *encoding)
{
  if (parser)
  {
    v2 = parser;
    if (*(parser + 118))
    {
      LOBYTE(parser) = 0;
      return parser;
    }

    v4 = *(parser + 92);
    if (v4)
    {
      v5 = *(parser + 93);
      do
      {
        v6 = v4;
        v4 = *v4;
        *v6 = v5;
        v7 = v6[10];
        if (v7)
        {
          v8 = *(parser + 95);
          do
          {
            v9 = v7;
            v7 = *(v7 + 8);
            *(v9 + 8) = v8;
            v8 = v9;
          }

          while (v7);
          *(parser + 95) = v9;
        }

        v6[10] = 0;
        v5 = v6;
      }

      while (v4);
      *(parser + 93) = v6;
    }

    v10 = *(parser + 73);
    if (v10)
    {
      v11 = *(parser + 74);
      do
      {
        v12 = v10;
        v10 = *(v10 + 16);
        *(v12 + 16) = v11;
        v11 = v12;
      }

      while (v10);
      *(parser + 74) = v12;
    }

    v13 = *(parser + 75);
    if (v13)
    {
      v14 = *(parser + 76);
      do
      {
        v15 = v13;
        v13 = *(v13 + 16);
        *(v15 + 16) = v14;
        v14 = v15;
      }

      while (v13);
      *(parser + 76) = v15;
    }

    v16 = *(parser + 77);
    if (v16)
    {
      v17 = *(parser + 78);
      do
      {
        v18 = v16;
        v16 = *(v16 + 16);
        *(v18 + 16) = v17;
        v17 = v18;
      }

      while (v16);
      *(parser + 78) = v18;
    }

    v19 = *(parser + 94);
    if (v19)
    {
      v20 = *(parser + 95);
      do
      {
        v21 = v19;
        v19 = *(v19 + 8);
        *(v21 + 8) = v20;
        v20 = v21;
      }

      while (v19);
      *(parser + 95) = v21;
    }

    (*(parser + 5))(*(parser + 60));
    v22 = *(v2 + 63);
    if (v22)
    {
      v22(*(v2 + 61));
    }

    v23 = *(v2 + 105);
    v24 = *(v2 + 104);
    if (v23)
    {
      if (!v24)
      {
        goto LABEL_36;
      }

      do
      {
        v25 = v24;
        v24 = *v24;
        *v25 = v23;
        v23 = v25;
      }

      while (v24);
    }

    else
    {
      v25 = *(v2 + 104);
    }

    *(v2 + 105) = v25;
LABEL_36:
    *(v2 + 104) = 0;
    *(v2 + 106) = 0;
    *(v2 + 108) = 0;
    *(v2 + 107) = 0;
    v26 = *(v2 + 111);
    v27 = *(v2 + 110);
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_42;
      }

      do
      {
        v28 = v27;
        v27 = *v27;
        *v28 = v26;
        v26 = v28;
      }

      while (v27);
    }

    else
    {
      v28 = *(v2 + 110);
    }

    *(v2 + 111) = v28;
LABEL_42:
    *(v2 + 110) = 0;
    *(v2 + 112) = 0;
    *(v2 + 114) = 0;
    *(v2 + 113) = 0;
    (*(v2 + 5))(*(v2 + 58));
    *(v2 + 58) = 0;
    parserInit(v2, encoding);
    v29 = *(v2 + 90);
    v30 = *(v29 + 40);
    if (v30)
    {
      v31 = &v30[*(v29 + 56)];
    }

    else
    {
      v31 = 0;
    }

    while (v30 != v31)
    {
      v33 = *v30++;
      v32 = v33;
      if (v33 && *(v32 + 28))
      {
        (*(v2 + 5))(*(v32 + 32));
      }
    }

    if (*(v29 + 16))
    {
      v34 = 0;
      do
      {
        (*(*(v29 + 32) + 16))(*(*v29 + 8 * v34));
        *(*v29 + 8 * v34++) = 0;
      }

      while (v34 < *(v29 + 16));
    }

    *(v29 + 24) = 0;
    *(v29 + 259) = 0;
    if (*(v29 + 280))
    {
      v35 = 0;
      do
      {
        (*(*(v29 + 296) + 16))(*(*(v29 + 264) + 8 * v35));
        *(*(v29 + 264) + 8 * v35++) = 0;
      }

      while (v35 < *(v29 + 280));
    }

    *(v29 + 288) = 0;
    if (*(v29 + 56))
    {
      v36 = 0;
      do
      {
        (*(*(v29 + 72) + 16))(*(*(v29 + 40) + 8 * v36));
        *(*(v29 + 40) + 8 * v36++) = 0;
      }

      while (v36 < *(v29 + 56));
    }

    *(v29 + 64) = 0;
    if (*(v29 + 96))
    {
      v37 = 0;
      do
      {
        (*(*(v29 + 112) + 16))(*(*(v29 + 80) + 8 * v37));
        *(*(v29 + 80) + 8 * v37++) = 0;
      }

      while (v37 < *(v29 + 96));
    }

    *(v29 + 104) = 0;
    if (*(v29 + 136))
    {
      v38 = 0;
      do
      {
        (*(*(v29 + 152) + 16))(*(*(v29 + 120) + 8 * v38));
        *(*(v29 + 120) + 8 * v38++) = 0;
      }

      while (v38 < *(v29 + 136));
    }

    *(v29 + 144) = 0;
    v40 = *(v29 + 160);
    v39 = *(v29 + 168);
    if (v39)
    {
      if (!v40)
      {
        goto LABEL_70;
      }

      do
      {
        v41 = v40;
        v40 = *v40;
        *v41 = v39;
        v39 = v41;
      }

      while (v40);
    }

    else
    {
      v41 = *(v29 + 160);
    }

    *(v29 + 168) = v41;
LABEL_70:
    *(v29 + 160) = 0;
    *(v29 + 184) = 0;
    *(v29 + 192) = 0;
    *(v29 + 176) = 0;
    v43 = *(v29 + 208);
    v42 = *(v29 + 216);
    if (v42)
    {
      if (!v43)
      {
LABEL_76:
        *(v29 + 208) = 0;
        *(v29 + 232) = 0;
        *(v29 + 240) = 0;
        *(v29 + 224) = 0;
        *(v29 + 304) = 0;
        *(v29 + 312) = 0;
        *(v29 + 320) = 0;
        (*(v2 + 5))(*(v29 + 352));
        *(v29 + 352) = 0;
        (*(v2 + 5))(*(v29 + 328));
        *(v29 + 328) = 0;
        *(v29 + 336) = 0;
        *(v29 + 344) = 0;
        LOBYTE(parser) = 1;
        *(v29 + 256) = 1;
        *(v29 + 258) = 0;
        return parser;
      }

      do
      {
        v44 = v43;
        v43 = *v43;
        *v44 = v42;
        v42 = v44;
      }

      while (v43);
    }

    else
    {
      v44 = *(v29 + 208);
    }

    *(v29 + 216) = v44;
    goto LABEL_76;
  }

  return parser;
}