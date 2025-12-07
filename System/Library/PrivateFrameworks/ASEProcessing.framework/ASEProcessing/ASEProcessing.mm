_OWORD *createCacheNode(int *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    v5 = *a1;
    if (*a1 == 5)
    {
      if (a3 != 1552)
      {
        createCacheNode_cold_1();
      }

      v6 = 0x10E00405473FEE0;
      v7 = 1600;
    }

    else if (v5 == 4)
    {
      if (a3 != 2108)
      {
        createCacheNode_cold_2();
      }

      v6 = 0x10E00404344D2E1;
      v7 = 2160;
    }

    else
    {
      if (v5 != 3)
      {
        createCacheNode_cold_4();
      }

      if (a3 != 1284)
      {
        createCacheNode_cold_3();
      }

      v6 = 0x10E004041E00AC8;
      v7 = 1336;
    }

    v8 = malloc_type_malloc(v7, v6);
    v3 = v8;
    if (v8)
    {
      v9 = *(a1 + 1);
      *v8 = *a1;
      v8[1] = v9;
      *(v8 + 4) = 0;
      *(v8 + 5) = 0;
      __memmove_chk();
    }
  }

  return v3;
}

uint64_t addToFront(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v2 = *(result + 8);
    if (v2)
    {
      *(a2 + 32) = 0;
      *(a2 + 40) = v2;
      v3 = (v2 + 32);
    }

    else
    {
      v3 = (result + 16);
    }

    *v3 = a2;
    *(result + 8) = a2;
    ++*result;
  }

  return result;
}

uint64_t removeNode(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      v4 = *(a2 + 40);
      *(v3 + 40) = v4;
      if (!v4)
      {
LABEL_11:
        v5 = (a1 + 16);
        if (*(a1 + 16) != a2)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v4 = *(a2 + 40);
      if (*(a1 + 8) == a2)
      {
        *(a1 + 8) = v4;
        if (!v4)
        {
          goto LABEL_11;
        }
      }

      else if (!v4)
      {
        goto LABEL_11;
      }
    }

    v5 = (v4 + 32);
LABEL_9:
    *v5 = v3;
LABEL_12:
    --*a1;
    return a2;
  }

  return v2;
}

double initCache(_OWORD *a1)
{
  if (a1)
  {
    if (!disableHcuCache)
    {
      result = 0.0;
      a1[7] = 0u;
      a1[8] = 0u;
      a1[5] = 0u;
      a1[6] = 0u;
      a1[3] = 0u;
      a1[4] = 0u;
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  return result;
}

void *deleteCacheObject(uint64_t a1)
{
  v3 = (a1 + 8);
  result = *(a1 + 8);
  if (result)
  {
    do
    {
      v4 = result[5];
      free(result);
      result = v4;
    }

    while (v4);
  }

  *a1 = 0;
  *v3 = 0;
  v3[1] = 0;
  return result;
}

void deleteCache(void *a1)
{
  if (a1 && !disableHcuCache)
  {
    v3 = a1 + 1;
    v2 = a1[1];
    if (v2)
    {
      do
      {
        v4 = v2[5];
        free(v2);
        v2 = v4;
      }

      while (v4);
    }

    *a1 = 0;
    *v3 = 0;
    a1[2] = 0;
    v5 = a1[7];
    if (v5)
    {
      do
      {
        v6 = v5[5];
        free(v5);
        v5 = v6;
      }

      while (v6);
    }

    *(a1 + 12) = 0;
    a1[7] = 0;
    a1[8] = 0;
    v7 = a1[13];
    if (v7)
    {
      do
      {
        v8 = v7[5];
        free(v7);
        v7 = v8;
      }

      while (v8);
    }
  }

  free(a1);
}

uint64_t getCache(uint64_t a1, uint64_t a2, void *__dst, size_t __len)
{
  result = 0;
  if (__dst && a2 && a1 && !disableHcuCache)
  {
    ++*(a1 + 24);
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = __len;
      v9 = *(a1 + 8);
      while (*a2 != *v9 || *(a2 + 8) != *(v9 + 8) || *(a2 + 16) != *(v9 + 16) || *(a2 + 24) != *(v9 + 24))
      {
        v9 = *(v9 + 40);
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      ++*(a1 + 32);
      if (v9 != v6)
      {
        v10 = removeNode(a1, v9);
        if (v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            *(v10 + 32) = 0;
            *(v10 + 40) = v11;
            v12 = (v11 + 32);
          }

          else
          {
            v12 = (a1 + 16);
          }

          *v12 = v10;
          *(a1 + 8) = v10;
          ++*a1;
        }
      }

      memmove(__dst, (v9 + 48), v7);
      return 1;
    }

    else
    {
LABEL_12:
      result = 0;
      ++*(a1 + 40);
    }
  }

  return result;
}

uint64_t updateCache(uint64_t result, uint64_t a2, void *__src, size_t __len)
{
  if (!__src)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v5 = result;
  if (!result || disableHcuCache)
  {
    return result;
  }

  v6 = __len;
  v8 = *(result + 8);
  if (!v8)
  {
LABEL_11:
    if (*result == 3)
    {
      v9 = removeNode(result, *(result + 16));
      free(v9);
    }

    result = createCacheNode(a2, __src, v6);
    if (!result)
    {
      return result;
    }

LABEL_14:
    v10 = *(v5 + 8);
    if (v10)
    {
      *(result + 32) = 0;
      *(result + 40) = v10;
      v11 = (v10 + 32);
    }

    else
    {
      v11 = (v5 + 16);
    }

    *v11 = result;
    *(v5 + 8) = result;
    ++*v5;
    return result;
  }

  while (*a2 != *v8 || *(a2 + 8) != *(v8 + 8) || *(a2 + 16) != *(v8 + 16) || *(a2 + 24) != *(v8 + 24))
  {
    v8 = *(v8 + 40);
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  result = memmove((v8 + 48), __src, __len);
  if (v8 != *(v5 + 8))
  {
    result = removeNode(v5, v8);
    if (result)
    {
      goto LABEL_14;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

uint64_t getFourCCforType(uint64_t a1)
{
  if (getFourCCforType_onceToken != -1)
  {
    getFourCCforType_cold_1();
  }

  if (a1 > 645428783)
  {
    if (a1 > 1530426929)
    {
      if (a1 <= 1534617139)
      {
        if (a1 > 1534359087)
        {
          if (a1 <= 1534359091)
          {
            if (a1 == 1534359088)
            {
              return 1953903152;
            }

            if (a1 == 1534359090)
            {
              return 1953903154;
            }

            return a1;
          }

          if (a1 != 1534359092)
          {
            if (a1 == 1534617136)
            {
              return 2019963440;
            }

            if (a1 == 1534617138)
            {
              v3 = 2019963440;
              return v3 | 2u;
            }

            return a1;
          }

          v15 = 1953903154;
          return (v15 + 514);
        }

        if (a1 <= 1534354991)
        {
          if (a1 != 1530426930)
          {
            v11 = 1530426932;
            goto LABEL_128;
          }

          return 875704950;
        }

        if (a1 == 1534354992)
        {
          return 1952854576;
        }

        if (a1 == 1534354994)
        {
          v3 = 1952854576;
          return v3 | 2u;
        }

        if (a1 != 1534354996)
        {
          return a1;
        }

        v2 = 1952854576;
        return (v2 + 516);
      }

      if (a1 <= 2088265265)
      {
        if (a1 <= 1534621233)
        {
          if (a1 != 1534617140)
          {
            if (a1 != 1534621232)
            {
              return a1;
            }

            v14 = 12848;
            return v14 | 0x78340000u;
          }

          v2 = 2019963440;
          return (v2 + 516);
        }

        if (a1 == 1534621234)
        {
          v3 = 2016686640;
          return v3 | 2u;
        }

        if (a1 == 1534621236)
        {
          v2 = 2016686640;
          return (v2 + 516);
        }

        v5 = 2088265264;
LABEL_99:
        if (a1 != v5)
        {
          return a1;
        }

        return 1885745712;
      }

      if (a1 > 2088269359)
      {
        if (a1 != 2088269360)
        {
          if (a1 != 2088269362)
          {
            v6 = 2088269364;
LABEL_83:
            if (a1 != v6)
            {
              return a1;
            }

            goto LABEL_121;
          }

          goto LABEL_92;
        }

        return 1882468912;
      }

      if (a1 == 2088265266)
      {
        return 1885745714;
      }

      v7 = 2088265268;
      goto LABEL_148;
    }

    if (a1 <= 796419631)
    {
      if (a1 > 762865201)
      {
        if (a1 > 762869295)
        {
          if (a1 != 762869296)
          {
            if (a1 != 762869298)
            {
              v6 = 762869300;
              goto LABEL_83;
            }

LABEL_92:
            v3 = 1882468912;
            return v3 | 2u;
          }

          return 1882468912;
        }

        if (a1 == 762865202)
        {
          return 1885745714;
        }

        v7 = 762865204;
LABEL_148:
        if (a1 != v7)
        {
          return a1;
        }

        goto LABEL_149;
      }

      if (a1 > 645428787)
      {
        if (a1 != 645428788)
        {
          v5 = 762865200;
          goto LABEL_99;
        }

LABEL_121:
        v2 = 1882468912;
        return (v2 + 516);
      }

      if (a1 == 645428784)
      {
        return 1882468912;
      }

      v4 = 645428786;
    }

    else
    {
      if (a1 > 796423731)
      {
        if (a1 > 1530422833)
        {
          if (a1 == 1530422834)
          {
            return 875704934;
          }

          if (a1 != 1530422836)
          {
            if (a1 == 1530426928)
            {
              return 875704438;
            }

            return a1;
          }

          return 875836518;
        }

        if (a1 != 796423732)
        {
          if (a1 != 1530422832)
          {
            return a1;
          }

          return 875704422;
        }

        goto LABEL_121;
      }

      if (a1 <= 796419635)
      {
        if (a1 != 796419632)
        {
          if (a1 != 796419634)
          {
            return a1;
          }

          return 1885745714;
        }

        return 1885745712;
      }

      if (a1 == 796419636)
      {
LABEL_149:
        v15 = 1885745714;
        return (v15 + 514);
      }

      if (a1 == 796423728)
      {
        return 1882468912;
      }

      v4 = 796423730;
    }

    if (a1 != v4)
    {
      return a1;
    }

    goto LABEL_92;
  }

  if (a1 <= 645149810)
  {
    if (a1 > 644624753)
    {
      if (a1 <= 645097011)
      {
        if (a1 <= 645084274)
        {
          if (a1 == 644624754)
          {
            return 1815162994;
          }

          else if (a1 == 645083763)
          {
            return 1932681587;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x26733473:
              v16 = 1932681587;
              return (v16 + 0x20000);
            case 0x26736630:
              return 1936077360;
            case 0x26736632:
              v3 = 1936077360;
              return v3 | 2u;
          }
        }

        return a1;
      }

      if (a1 <= 645101105)
      {
        if (a1 == 645101104)
        {
          v12 = 1937125936;
        }

        else
        {
          v12 = a1;
        }

        if (a1 == 645097012)
        {
          return 1936077876;
        }

        else
        {
          return v12;
        }
      }

      if (a1 == 645101106)
      {
        return 1937125938;
      }

      if (a1 != 645101108)
      {
        if (a1 == 645149299)
        {
          return 1949458803;
        }

        return a1;
      }

      v15 = 1937125938;
      return (v15 + 514);
    }

    if (a1 > 641234481)
    {
      if (a1 > 641877824)
      {
        switch(a1)
        {
          case 0x26424741:
            return 1111970369;
          case 0x26526841:
            return 1380411457;
          case 0x26623338:
            return 1647534392;
        }

        return a1;
      }

      if (a1 != 641234482)
      {
        v11 = 641234484;
LABEL_128:
        v8 = a1 == v11;
        v10 = 875836518;
        goto LABEL_129;
      }

      return 875704950;
    }

    if (a1 <= 641230387)
    {
      if (a1 != 641230384)
      {
        v8 = a1 == 641230386;
        v9 = 875704934;
        goto LABEL_143;
      }

      return 875704422;
    }

    if (a1 != 641230388)
    {
      v8 = a1 == 641234480;
      v10 = 875704422;
LABEL_129:
      v9 = v10 | 0x10;
      goto LABEL_143;
    }

    return 875836518;
  }

  if (a1 <= 645346161)
  {
    if (a1 <= 645166641)
    {
      if (a1 > 645162545)
      {
        if (a1 != 645162546)
        {
          if (a1 == 645162548)
          {
            return 1886676532;
          }

          if (a1 == 645166640)
          {
            return 1886680624;
          }

          return a1;
        }

        v3 = 1886676528;
        return v3 | 2u;
      }

      if (a1 != 645149811)
      {
        if (a1 != 645162544)
        {
          return a1;
        }

        v13 = 26160;
        return v13 | 0x70740000u;
      }

      v16 = 1949458803;
      return (v16 + 0x20000);
    }

    if (a1 > 645279799)
    {
      if (a1 == 645279800)
      {
        return 1982882104;
      }

      if (a1 != 645280312)
      {
        if (a1 == 645280824)
        {
          return 1983144248;
        }

        return a1;
      }

      v17 = 1982882104;
      return v17 | 0x20000u;
    }

    if (a1 == 645166642)
    {
      v13 = 30258;
      return v13 | 0x70740000u;
    }

    v8 = a1 == 645166644;
    v9 = 1886680628;
LABEL_143:
    if (v8)
    {
      return v9;
    }

    else
    {
      return a1;
    }
  }

  if (a1 > 645411895)
  {
    if (a1 > 645424687)
    {
      if (a1 != 645424688)
      {
        if (a1 != 645424690)
        {
          v7 = 645424692;
          goto LABEL_148;
        }

        return 1885745714;
      }

      return 1885745712;
    }

    if (a1 != 645411896)
    {
      v8 = a1 == 645411955;
      v9 = 2016698739;
      goto LABEL_143;
    }

    v14 = 24888;
    return v14 | 0x78340000u;
  }

  if (a1 <= 645410871)
  {
    if (a1 == 645346162)
    {
      return 1999843442;
    }

    else if (a1 == 645346401)
    {
      return 1999908961;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x26783038:
        return 2016436536;
      case 0x26783238:
        v17 = 2016436536;
        return v17 | 0x20000u;
      case 0x26783273:
        return 2016567667;
    }
  }

  return a1;
}

uint64_t getInputType(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (overrideInputType != -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = "_Bool getInputType(_Bool)";
      v5 = 1024;
      v6 = a1;
      v7 = 1024;
      v8 = overrideInputType;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s : INFO: override input type: %d -> %d!\n", &v3, 0x18u);
    }

    return overrideInputType != 0;
  }

  return a1;
}

uint64_t getTransferFunction(IOSurfaceRef buffer)
{
  v1 = buffer;
  v20 = *MEMORY[0x277D85DE8];
  if (!buffer)
  {
    goto LABEL_59;
  }

  PixelFormat = IOSurfaceGetPixelFormat(buffer);
  FourCCforType = getFourCCforType(PixelFormat);
  IOSurfaceGetBulkAttachments();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v11 = "uint32_t getTransferFunction(IOSurfaceRef _Nonnull)";
    v12 = 1024;
    v13 = HIBYTE(FourCCforType);
    v14 = 1024;
    v15 = BYTE2(FourCCforType);
    v16 = 1024;
    v17 = BYTE1(FourCCforType);
    v18 = 1024;
    v19 = FourCCforType;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s : Warning: Unspecified transfer function, deriving from surface format %c%c%c%c!\n", buf, 0x24u);
  }

  v1 = 13;
  if (FourCCforType <= 1953903667)
  {
    if (FourCCforType <= 1882469427)
    {
      if (FourCCforType <= 875836517)
      {
        if (FourCCforType > 875704933)
        {
          if (FourCCforType == 875704934)
          {
            goto LABEL_59;
          }

          v6 = 12918;
        }

        else
        {
          if (FourCCforType == 875704422)
          {
            goto LABEL_59;
          }

          v6 = 12406;
        }

        v4 = v6 | 0x34320000;
      }

      else if (FourCCforType <= 1647534391)
      {
        if (FourCCforType == 875836518)
        {
          goto LABEL_59;
        }

        v4 = 875836534;
      }

      else
      {
        if (FourCCforType == 1647534392 || FourCCforType == 1882468912)
        {
          goto LABEL_59;
        }

        v4 = 1882468914;
      }

      goto LABEL_58;
    }

    if (FourCCforType > 1886680623)
    {
      if ((FourCCforType - 1886680624) <= 4 && ((1 << (FourCCforType - 48)) & 0x15) != 0 || FourCCforType == 1953903152)
      {
        goto LABEL_34;
      }

      v5 = 1953903154;
      goto LABEL_33;
    }

    if (FourCCforType > 1885745713)
    {
      if (FourCCforType == 1885745714)
      {
        goto LABEL_59;
      }

      v7 = 13364;
    }

    else
    {
      if (FourCCforType == 1882469428)
      {
        goto LABEL_59;
      }

      v7 = 12848;
    }

    v4 = v7 | 0x70660000;
LABEL_58:
    if (FourCCforType == v4)
    {
      goto LABEL_59;
    }

    goto LABEL_64;
  }

  if (FourCCforType > 2016687215)
  {
    if (FourCCforType <= 2019964015)
    {
      if (FourCCforType > 2019963441)
      {
        if (FourCCforType == 2019963442)
        {
          goto LABEL_59;
        }

        v8 = 13364;
      }

      else
      {
        if (FourCCforType == 2016687216)
        {
          goto LABEL_59;
        }

        v8 = 12848;
      }

      v4 = v8 | 0x78660000;
    }

    else if (FourCCforType <= 2021078127)
    {
      if (FourCCforType == 2019964016)
      {
        goto LABEL_59;
      }

      v4 = 2021077552;
    }

    else
    {
      if (FourCCforType == 2021078128 || FourCCforType == 2037741158)
      {
        goto LABEL_59;
      }

      v4 = 2037741171;
    }

    goto LABEL_58;
  }

  if (FourCCforType > 1983066167)
  {
    if (FourCCforType <= 2016686639)
    {
      if (FourCCforType == 1983066168)
      {
        goto LABEL_59;
      }

      v4 = 1999843442;
    }

    else
    {
      if (FourCCforType == 2016686640 || FourCCforType == 2016686642)
      {
        goto LABEL_59;
      }

      v4 = 2016687156;
    }

    goto LABEL_58;
  }

  if (FourCCforType > 1983000879)
  {
    if (FourCCforType == 1983000880)
    {
      goto LABEL_59;
    }

    v4 = 1983000886;
    goto LABEL_58;
  }

  if (FourCCforType == 1953903668)
  {
LABEL_34:
    v1 = 16;
    goto LABEL_59;
  }

  v5 = 1953969204;
LABEL_33:
  if (FourCCforType == v5)
  {
    goto LABEL_34;
  }

LABEL_64:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v11 = "uint32_t getTransferFunction(IOSurfaceRef _Nonnull)";
    v12 = 1024;
    v13 = HIBYTE(FourCCforType);
    v14 = 1024;
    v15 = BYTE2(FourCCforType);
    v16 = 1024;
    v17 = BYTE1(FourCCforType);
    v18 = 1024;
    v19 = FourCCforType;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s : Warning: Unexpected format %c%c%c%c, will output sRGB Gamma\n", buf, 0x24u);
  }

LABEL_59:
  if (overrideInputTransferFunction != -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = "uint32_t getTransferFunction(IOSurfaceRef _Nonnull)";
      v12 = 1024;
      v13 = v1;
      v14 = 1024;
      v15 = overrideInputTransferFunction;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s : INFO: override transfer function: %d -> %d!\n", buf, 0x18u);
    }

    return overrideInputTransferFunction;
  }

  return v1;
}

const char *getInputTypeString(int a1)
{
  if (a1)
  {
    return "HDR";
  }

  else
  {
    return "SDR";
  }
}

const char *getTransferFunctionString(int a1)
{
  v1 = "Unknown";
  if (a1 == 16)
  {
    v1 = "PQ";
  }

  if (a1 == 13)
  {
    return "sRGB";
  }

  else
  {
    return v1;
  }
}

uint64_t getMSRBaseAddr(uint64_t a1, uint64_t a2)
{
  if (a1 > 0x19)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0x2480000) != 0)
  {
    return 0x305000000;
  }

  if (((1 << a1) & 0x100100) != 0)
  {
    return 0x409000000;
  }

  if (a1 != 7)
  {
LABEL_8:
    getMSRBaseAddr_cold_1();
  }

  return 0x291000000;
}

uint64_t getHcuId(int a1)
{
  if ((a1 - 1634952555) > 6)
  {
    return 0;
  }

  else
  {
    return dword_23D408B20[a1 - 1634952555];
  }
}

uint64_t getHcuType(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_23D408B3C[a1 - 1];
  }
}

uint64_t getHcuSize(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_23D408B58[a1 - 1];
  }
}

_BYTE *getMin(_BYTE *result)
{
  if (result)
  {
    if (*result == 1)
    {
      return (-1 << result[1]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t getMax(uint64_t result)
{
  if (result)
  {
    return ~(-1 << *(result + 1));
  }

  return result;
}

float *calcSlope(float *result, uint64_t a2, int a3)
{
  v3 = -1 << *(a2 + 5);
  if (*(a2 + 4))
  {
    v4 = -1 << *(a2 + 5);
  }

  else
  {
    v4 = 0;
  }

  v5 = (a3 - 1);
  result[3 * v5 + 2] = 0.0;
  if (a3 != 1)
  {
    v6 = ~v3;
    v7 = *result;
    result += 2;
    v8 = v7;
    do
    {
      v9 = v8;
      *result = 0.0;
      v8 = result[1];
      v10 = v8 - v9;
      if (v10 > 0.0)
      {
        v11 = (((result[2] - *(result - 1)) * *(a2 + 8)) / v10);
        if (v6 >= v11)
        {
          v12 = (((result[2] - *(result - 1)) * *(a2 + 8)) / v10);
        }

        else
        {
          v12 = v6;
        }

        if (v4 <= v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = v4;
        }

        *result = v13;
      }

      result += 3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t float_to_fixed(char a1, char a2, float a3)
{
  v3 = -1 << (a2 + a1);
  v4 = ~v3;
  v5 = 0.5;
  if (a3 < 0.0)
  {
    v5 = -0.5;
  }

  v6 = v5 + ((1 << a2) * a3);
  if (v6 > v4)
  {
    v6 = v4;
  }

  return v6 & ~v3;
}

uint64_t float_to_twos_complement(char a1, char a2, float a3)
{
  v3 = 1 << (a2 + a1);
  v4 = (v3 - 1) & ((fabsf(a3) * (1 << a2)) + 0.5);
  v5 = (v3 - 1) & -v4 | v3;
  if (a3 >= 0.0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t interpolate_int(uint64_t result, int a2, float a3, float a4, float a5)
{
  if (a4 != a5)
  {
    return (result + ((a2 - result) * ((a3 - a4) / (a5 - a4))));
  }

  return result;
}

float interpolate(float a1, float a2, float a3, float a4, float a5)
{
  if (a2 == a3)
  {
    return a4;
  }

  else
  {
    return a4 + ((a5 - a4) * ((a1 - a2) / (a3 - a2)));
  }
}

float *copyPieceWiseCurve(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (a4)
  {
    v4 = -1 << a4[1];
    v5.f32[0] = v4;
    if (!*a4)
    {
      v5.f32[0] = 0.0;
    }

    v6.f32[0] = ~v4;
  }

  else
  {
    v5.i32[0] = 0;
    v6.i32[0] = 0;
  }

  v7 = a4[2];
  v8 = a4[3];
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3)
  {
    v9 = -1 << v8;
    v10 = v9;
    if (!v7)
    {
      v10 = 0.0;
    }

    v11 = (a2 + 4);
    v12 = ~v9;
    v13 = a3;
    v5.f32[1] = v10;
    v6.f32[1] = v12;
    v14 = a1;
    do
    {
      v15 = *v11++;
      *v14 = vbsl_s8(vcgt_f32(v5, v15), v5, vbsl_s8(vcgt_f32(v15, v6), v6, v15));
      v14 = (v14 + 12);
      --v13;
    }

    while (v13);
  }

  return calcSlope(a1, a4, a3);
}

void copyArray(int *a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v6 = a1;
  if (a4)
  {
    if (*a4)
    {
      v7 = -1 << a4[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = ~(-1 << a4[1]);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (a3 >= 0x11)
  {
    copyArray_cold_1();
  }

  bzero(a1, 4 * a3);
  if (a3)
  {
    v9 = (a2 + 4);
    v10 = a3;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if (v12 >= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v11;
      }

      if (v11 >= v7)
      {
        v14 = v13;
      }

      else
      {
        v14 = v7;
      }

      *v6++ = v14;
      --v10;
    }

    while (v10);
  }
}

float *interpolateTwoPieceWiseCurves(uint64_t a1, float *a2, float *a3, int a4, _BYTE *a5, float a6)
{
  if (a5)
  {
    if (*a5)
    {
      v6 = -1 << a5[1];
    }

    else
    {
      v6 = 0;
    }

    v7 = ~(-1 << a5[1]);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = -1 << a5[3];
  if (a5[2])
  {
    v9 = -1 << a5[3];
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a4)
  {
    v10 = ~v8;
    v12 = *a2;
    v11 = a2 + 2;
    v13 = v12;
    v15 = *a3;
    v14 = a3 + 2;
    v16 = v15;
    v17 = (a6 - v13) / (v15 - v13);
    v18 = a4;
    v19 = (a1 + 4);
    do
    {
      v20 = *(v11 - 1);
      if (v13 != v16)
      {
        v20 = v20 + ((*(v14 - 1) - v20) * v17);
      }

      v21 = v20;
      if (v20 >= 0.0)
      {
        v22 = 0.5;
      }

      else
      {
        v22 = -0.5;
      }

      v23 = (v22 + v21);
      if (v7 >= v23)
      {
        v24 = (v22 + v21);
      }

      else
      {
        v24 = v7;
      }

      if (v6 <= v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = v6;
      }

      *(v19 - 1) = v25;
      v26 = *v11;
      if (v13 != v16)
      {
        v26 = v26 + ((*v14 - v26) * v17);
      }

      v27 = v26;
      if (v26 >= 0.0)
      {
        v28 = 0.5;
      }

      else
      {
        v28 = -0.5;
      }

      v29 = (v28 + v27);
      if (v10 >= v29)
      {
        v30 = (v28 + v27);
      }

      else
      {
        v30 = v10;
      }

      if (v9 <= v29)
      {
        v31 = v30;
      }

      else
      {
        v31 = v9;
      }

      *v19 = v31;
      v19 += 3;
      v11 += 2;
      v14 += 2;
      --v18;
    }

    while (v18);
  }

  return calcSlope(a1, a5, a4);
}

float *copyPieceWiseCurves(uint64_t a1, _BYTE *a2)
{
  if (!a2 || *a2 || (v4 = a2[2], v4 >= 0x11))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: input && input->type == WDT_TYPE_CONSTANT && input->pointCount <= 16 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASECalculateControlSettingV3.m at line 199\n", v6, 2u);
    }

    if (!a2 || *a2 || (v4 = a2[2], v4 >= 0x11))
    {
      copyPieceWiseCurves_cold_1();
    }
  }

  return copyPieceWiseCurve(a1, (a2 + 16), v4, a2 + 4);
}

void interpolatePieceWiseCurves(uint64_t a1, uint64_t a2, float a3)
{
  if (!a2 || *a2 != 1 || (v6 = *(a2 + 2), v6 >= 0x11))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: input && input->type == WDT_TYPE_INTERPOLATED && input->pointCount <= 16 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASECalculateControlSettingV3.m at line 207\n", v16, 2u);
    }

    if (!a2 || *a2 != 1 || (v6 = *(a2 + 2), v6 >= 0x11))
    {
      interpolatePieceWiseCurves_cold_1();
    }
  }

  v7 = a2 + 16;
  if (*(a2 + 16) >= a3)
  {
    v14 = (a2 + 4);
    v15 = a1;
LABEL_17:
    copyPieceWiseCurve(v15, v7, v6, v14);
    return;
  }

  v8 = v7 + 132 * *(a2 + 1);
  v10 = *(v8 - 132);
  v9 = v8 - 132;
  if (v10 <= a3)
  {
    v14 = (a2 + 4);
    v15 = a1;
    v7 = v9;
    goto LABEL_17;
  }

  v11 = v6 + 1;
  while (--v11)
  {
    v12 = (v7 + 132);
    v13 = *(v7 + 132);
    v7 += 132;
    if (v13 > a3)
    {
      interpolateTwoPieceWiseCurves(a1, v12 - 33, v12, v6, (a2 + 4), a3);
      return;
    }
  }
}

void interpolateTwoArrays(int *a1, _DWORD *a2, float *a3, unsigned int a4, _BYTE *a5, float a6)
{
  v10 = a1;
  if (a5)
  {
    if (*a5)
    {
      v11 = -1 << a5[1];
    }

    else
    {
      v11 = 0;
    }

    v12 = ~(-1 << a5[1]);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  bzero(a1, 4 * a4);
  if (a4)
  {
    v14 = *a2;
    v13 = a2 + 1;
    v15 = v14;
    v16 = a4;
    v18 = *a3;
    v17 = a3 + 1;
    v19 = v18;
    v20 = (a6 - v15) / (v18 - v15);
    do
    {
      v22 = *v13++;
      v21 = v22;
      if (v15 != v19)
      {
        v21 = (v21 + ((*v17 - v21) * v20));
      }

      if (v21 >= v12)
      {
        v23 = v12;
      }

      else
      {
        v23 = v21;
      }

      if (v21 >= v11)
      {
        v24 = v23;
      }

      else
      {
        v24 = v11;
      }

      *v10++ = v24;
      ++v17;
      --v16;
    }

    while (v16);
  }
}

void interpolateArray(int *a1, uint64_t a2, float a3)
{
  if (!a2 || *a2 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: input && input->type == WDT_TYPE_INTERPOLATED warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASECalculateControlSettingV3.m at line 261\n", v16, 2u);
    }

    if (!a2 || *a2 != 1)
    {
      interpolateArray_cold_1();
    }
  }

  v6 = a2 + 8;
  if (*(a2 + 8) >= a3)
  {
    v13 = *(a2 + 2);
    v14 = (a2 + 3);
    v15 = a1;
LABEL_15:
    copyArray(v15, v6, v13, v14);
    return;
  }

  v7 = v6 + 68 * *(a2 + 1);
  v9 = *(v7 - 68);
  v8 = v7 - 68;
  if (v9 <= a3)
  {
    v14 = (a2 + 3);
    v15 = a1;
    v6 = v8;
    v13 = *(a2 + 2);
    goto LABEL_15;
  }

  v10 = *(a2 + 2) + 1;
  while (--v10)
  {
    v11 = (v6 + 68);
    v12 = *(v6 + 68);
    v6 += 68;
    if (v12 > a3)
    {
      interpolateTwoArrays(a1, v11 - 17, v11, *(a2 + 2), (a2 + 3), a3);
      return;
    }
  }
}

void populateScalingConfig(int8x8_t *a1, _DWORD *a2, int8x8_t a3, float a4, int32x2_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  a5.i32[0] = overrideASEScalingFactor;
  *&a3.i32[1] = a4;
  v7 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*&overrideASEScalingFactor != 0.0), 0x1FuLL)), vdup_lane_s32(a5, 0), a3);
  if (logLevel >= 3)
  {
    v26 = v7;
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    v7 = v26;
    if (v8)
    {
      *buf = 136315650;
      v29 = "void populateScalingConfig(scalingConfigV3Hcu *, float, float, uint32_t *)";
      v30 = 2048;
      v31 = v26.f32[0];
      v32 = 2048;
      v33 = v26.f32[1];
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s : xScaler = %f, yScaler = %f\n", buf, 0x20u);
      v7 = v26;
    }
  }

  __asm { FMOV            V1.2S, #1.0 }

  v14 = vdiv_f32(_D1, v7);
  v15 = vdup_n_s32(0x4A800000u);
  v16 = vdupq_n_s64(0x415FFFFFC0000000uLL);
  v17 = vaddq_f64(vcvtq_f64_f32(vmul_f32(v14, v15)), vcvtq_f64_f32(vbsl_s8(vcltz_f32(v14), 0xBF000000BF000000, 0x3F0000003F000000)));
  *&v17.f64[0] = vand_s8(vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcgtq_f64(v17, v16), v16, v17))), 0x7F0000007FLL);
  *&v16.f64[0] = vdiv_f32(vsub_f32(_D1, v7), vadd_f32(v7, v7));
  v18 = vcvtq_f64_f32(vmul_f32(vabs_f32(*&v16.f64[0]), v15));
  __asm { FMOV            V3.2D, #0.5 }

  *&v18.f64[0] = vmovn_s64(vcvtq_u64_f64(vaddq_f64(v18, _Q3)));
  v27 = v16.f64[0];
  *&_Q3.f64[0] = vcltz_f32(*&v16.f64[0]);
  *a1 = vorr_s8(vand_s8((*&vand_s8(vneg_s32(*&v18.f64[0]), 0x7F0000007FLL) | 0x80000000800000), *&_Q3.f64[0]), vand_s8(vbic_s8(*&v18.f64[0], *&_Q3.f64[0]), 0x7F0000007FLL));
  a1[1] = *&v17.f64[0];
  if (disableSampleShift)
  {
    if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "populateScalingConfig";
      v30 = 1024;
      LODWORD(v31) = disableSampleShift;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s : disableSampleShift = %d\n", buf, 0x12u);
    }

    *a1 = 0;
  }

  a1[2].i32[0] = 0;
  a1[2].i32[1] = 0;
  if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v20 = a1->i32[0];
    v21 = a1->i32[1];
    v22 = a1[1].i32[0];
    v23 = a1[1].i32[1];
    v24 = a1[2].i32[0];
    v25 = a1[2].i32[1];
    *buf = 136317186;
    v29 = "populateScalingConfig";
    v30 = 2048;
    v31 = *&v27;
    v32 = 2048;
    v33 = *(&v27 + 1);
    v34 = 1024;
    v35 = v20;
    v36 = 1024;
    v37 = v21;
    v38 = 1024;
    v39 = v22;
    v40 = 1024;
    v41 = v23;
    v42 = 1024;
    v43 = v24;
    v44 = 1024;
    v45 = v25;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s : initX = %f, initY = %f, DDAInitX = 0x%x, DDAInitY = 0x%x, DDAStepX = 0x%x, DDAStepY = 0x%x, DDAInvStepX = 0x%x, DDAInvStepY = 0x%x\n", buf, 0x44u);
  }

  *a2 |= 2u;
}

void *populateScalingCoeff(void *__dst, int a2, _DWORD *a3, float a4, double a5, float a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*&overrideASEScalingFactor == 0.0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *&overrideASEScalingFactor;
  }

  v11 = *&overrideEnhancement;
  v12 = logLevel;
  if (*&overrideEnhancement >= 0.0)
  {
    if (logLevel >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315650;
        v20 = "void populateScalingCoeff(scalingCoeffV3Hcu *, float, float, float, int, uint32_t *)";
        v21 = 2048;
        v22 = a6;
        v23 = 2048;
        v24 = *&overrideEnhancement;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s : enhancement: %f -> %f\n", &v19, 0x20u);
      }

      v11 = *&overrideEnhancement;
      v12 = logLevel;
    }
  }

  else
  {
    v11 = a6;
  }

  v14 = v11 >= 0.5 && a2 == 0;
  v15 = v10 >= 2.5 || v14;
  if (v12 >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = "Default";
    v19 = 136315906;
    v20 = "void populateScalingCoeff(scalingCoeffV3Hcu *, float, float, float, int, uint32_t *)";
    if (v15)
    {
      v16 = "NEW";
    }

    v21 = 2080;
    v22 = *&v16;
    v23 = 2048;
    v24 = v11;
    v25 = 2048;
    v26 = v10;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s : Use %s polyphase scaling filters: enhancement_strength = %f, scaler = %f\n", &v19, 0x2Au);
  }

  if (v15)
  {
    v17 = &new_ASEInterpolate_Coeff;
  }

  else
  {
    v17 = &default_ASEInterpolate_Coeff;
  }

  result = memmove(__dst, v17, 0x200uLL);
  *a3 |= 4u;
  return result;
}

uint64_t populatePeakingConfig(char *__dst, const void *a2, uint64_t a3, uint64_t a4, _DWORD *a5, float32_t a6)
{
  v17 = 0u;
  v18 = 0u;
  LODWORD(v17) = 3;
  if (*&overrideASEScalingFactor == 0.0)
  {
    v6.f32[0] = a6;
  }

  else
  {
    v6.f32[0] = *&overrideASEScalingFactor;
  }

  *(&v17 + 1) = a2;
  *&v18 = a3;
  DWORD2(v18) = v6.i32[0];
  result = getCache(a4, &v17, __dst, 0x504uLL);
  if ((result & 1) == 0)
  {
    if (a2)
    {
      memmove(__dst, a2, 0x504uLL);
    }

    else
    {
      bzero(__dst, 0x504uLL);
    }

    copyPieceWiseCurves((__dst + 4), *a3);
    interpolatePieceWiseCurves((__dst + 388), *(a3 + 8), v6.f32[0]);
    interpolatePieceWiseCurves((__dst + 772), *(a3 + 16), v6.f32[0]);
    interpolateArray(__dst + 294, *(a3 + 24), v6.f32[0]);
    interpolateArray(__dst + 296, *(a3 + 32), v6.f32[0]);
    interpolateArray(__dst + 299, *(a3 + 40), v6.f32[0]);
    interpolateArray(__dst + 303, *(a3 + 48), v6.f32[0]);
    interpolateArray(__dst + 308, *(a3 + 56), v6.f32[0]);
    interpolateArray(__dst + 314, *(a3 + 64), v6.f32[0]);
    v13.i32[0] = 2.5;
    *&v14 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(v13, v6)), 0), 0x1A00000010, 0x1E0000001ALL);
    if (v6.f32[0] <= 2.5)
    {
      v15 = 0;
    }

    else
    {
      v15 = 28;
    }

    if (v6.f32[0] <= 2.5)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    *(&v14 + 1) = v14;
    *__dst = v15;
    *(__dst + 289) = v16;
    *(__dst + 1160) = v14;
    result = updateCache(a4, &v17, __dst, 0x504uLL);
  }

  *a5 |= 8u;
  return result;
}

uint64_t populateEbeConfig(int *__dst, const void *a2, uint64_t *a3, uint64_t a4, _DWORD *a5, float a6)
{
  v13 = 0u;
  v14 = 0u;
  LODWORD(v13) = 4;
  if (*&overrideASEScalingFactor == 0.0)
  {
    v11 = a6;
  }

  else
  {
    v11 = *&overrideASEScalingFactor;
  }

  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 2) = v11;
  result = getCache(a4 + 48, &v13, __dst, 0x83CuLL);
  if ((result & 1) == 0)
  {
    if (a2)
    {
      memmove(__dst, a2, 0x83CuLL);
    }

    else
    {
      bzero(__dst, 0x83CuLL);
    }

    interpolatePieceWiseCurves(__dst, *a3, v11);
    interpolatePieceWiseCurves((__dst + 96), a3[1], v11);
    interpolatePieceWiseCurves((__dst + 192), a3[2], v11);
    interpolatePieceWiseCurves((__dst + 288), a3[3], v11);
    interpolatePieceWiseCurves((__dst + 384), a3[4], v11);
    interpolateArray(__dst + 509, a3[5], v11);
    result = updateCache(a4 + 48, &v13, __dst, 0x83CuLL);
  }

  *a5 |= 0x10u;
  return result;
}

uint64_t populateBlendConfig(void *__dst, const void *a2, uint64_t *a3, uint64_t a4, _DWORD *a5, float a6)
{
  v13 = 0u;
  v14 = 0u;
  LODWORD(v13) = 5;
  if (*&overrideASEScalingFactor == 0.0)
  {
    v11 = a6;
  }

  else
  {
    v11 = *&overrideASEScalingFactor;
  }

  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 2) = v11;
  result = getCache(a4 + 96, &v13, __dst, 0x610uLL);
  if ((result & 1) == 0)
  {
    if (a2)
    {
      memmove(__dst, a2, 0x610uLL);
    }

    else
    {
      bzero(__dst, 0x610uLL);
    }

    interpolatePieceWiseCurves(__dst, *a3, v11);
    interpolatePieceWiseCurves(__dst + 384, a3[1], v11);
    interpolatePieceWiseCurves(__dst + 768, a3[2], v11);
    interpolatePieceWiseCurves(__dst + 1152, a3[3], v11);
    result = updateCache(a4 + 96, &v13, __dst, 0x610uLL);
  }

  *a5 |= 0x20u;
  return result;
}

void *populateAngleDetectConfig(void *result, void *a2, _DWORD *a3)
{
  *result = *a2;
  *a3 |= 0x40u;
  return result;
}

void populateNoiseConfig(int *a1, int a2, int a3, int a4, _DWORD *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = a2 - 22;
  a1[1] = a3 - 22;
  a1[2] = a4;
  *(a1 + 3) = 0x400000007;
  *a5 |= 0x80u;
  if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4];
    v11[0] = 67110144;
    v11[1] = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] noiseMeter = config.{ sizeX=%d, sizeY=%d }, gainControl.{ lut0Gain= %d, lut1Gain= %d, lut2Gain= %d }\n", v11, 0x20u);
  }
}

void calculate_control_setting_V3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, int a13, unsigned int a14, unsigned int a15, unsigned __int8 a16, int a17, uint64_t a18, _DWORD *a19)
{
  v19 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v189 = v30;
  v32 = v31;
  v34 = v33;
  v35 = v19;
  v203 = *MEMORY[0x277D85DE8];
  v180 = *v24;
  v181 = *v22;
  v179 = *v20;
  v182 = *a9;
  if (!isT1OrNewer(a13))
  {
    v38 = MEMORY[0x277D86220];
    v39 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: isT1OrNewer(productType) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASECalculateControlSettingV3.m at line 575\n", buf, 2u);
    }

    if (!isT1OrNewer(a13))
    {
      calculate_control_setting_V3_cold_1();
    }
  }

  v183 = v25;
  v40 = 0;
  v41 = a19;
  *a19 = 0;
  *v37.i32 = a15;
  v42 = a14 / v189;
  v43 = a15 / v29;
  if (v42 >= v43)
  {
    v44 = a15 / v29;
  }

  else
  {
    v44 = a14 / v189;
  }

  if (v44 <= 2.0)
  {
    v40 = shouldApplyGraphicSettings(a16, a17);
  }

  v185 = v40;
  v184 = v23;
  v186 = v21;
  *v36.i32 = a14 / v189;
  populateScalingConfig(v34 + 2, a19, v36, v43, v37);
  memset(__src, 0, 512);
  memset(buf, 0, 512);
  memset(&__dst[22], 0, 160);
  v45 = 100 * v35[94];
  v46 = v35[30];
  if (v46 <= v35[46])
  {
    v46 = v35[46];
  }

  v47 = v45 / v46;
  memset(__dst, 0, 352);
  v187 = v45 / v46;
  v48 = a9;
  if (v27)
  {
    v49 = v35[16] + v35[15];
    v50 = *a10 - v49;
    v51 = v35[32] + v35[31];
    v52 = *a11;
    v53 = *a12;
    if (v49 > *a10)
    {
      v50 = v49 - *a10;
    }

    if (v49 >= *a10)
    {
      v49 = *a10;
    }

    v54 = v51 - v52;
    if (v51 <= v52)
    {
      v54 = *a11 - v51;
    }

    v55 = 100 * v50 / v49;
    v56 = 100 * v54;
    if (v51 >= v52)
    {
      v57 = *a11;
    }

    else
    {
      v57 = v35[32] + v35[31];
    }

    v58 = v56 / v57;
    if (v55 <= v58)
    {
      v55 = v58;
    }

    v59 = v47 - v53;
    if (v47 <= v53)
    {
      v59 = *a12 - v47;
    }

    v60 = 100 * v59;
    if (v47 >= v53)
    {
      v61 = *a12;
    }

    else
    {
      v61 = v47;
    }

    v62 = v55 + v60 / v61 > 0x64;
  }

  else
  {
    v62 = 0;
  }

  v63 = *v35;
  if (logLevel >= 3)
  {
    v64 = MEMORY[0x277D86220];
    v65 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v66 = *a12;
      v67 = v35[16] + v35[15];
      v68 = *a10;
      v69 = v35[32] + v35[31];
      v70 = *a11;
      *v193 = 67110656;
      *v194 = v62;
      *&v194[4] = 1024;
      *&v194[6] = v187;
      LOWORD(v195) = 1024;
      *(&v195 + 2) = v66;
      HIWORD(v195) = 1024;
      v196 = v67;
      v197 = 1024;
      v198 = v68;
      v199 = 1024;
      v200 = v69;
      v201 = 1024;
      v202 = v70;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] scene_change_detected = %d, ratio_2D_1D is :%d vs %d; H1 is : %d vs %d,  V1 is: %d vs %d;\n", v193, 0x2Cu);
    }
  }

  v188 = v34;
  if (v27 && (100 * v63 / (v189 - 22) * (v29 - 22)) >= 20 && (v27 == 1 || !v62))
  {
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    for (i = 23; i != 30; ++i)
    {
      v83 += v35[i];
      v84 += v35[i + 16];
      v81 += v35[i - 8];
      v82 += v35[i + 8];
    }

    v178 = v29;
    v86 = 0;
    for (j = 79; j != 94; ++j)
    {
      v86 += v35[j];
    }

    v88 = 10 * v35[30] / v83;
    v89 = 10 * v35[46] / v84;
    v90 = 10 * v35[94] / v86;
    v91 = v89 + v88;
    if (v90 <= 349)
    {
      v91 = 350 * v91 / v90;
    }

    v92 = 10 * v35[22] / v81;
    v93 = 10 * v35[38] / v82;
    if (logLevel <= 2)
    {
      if (v91 >= (v93 + v92))
      {
        v91 = v93 + v92;
      }

      v72 = v178;
      v98 = v180;
      v99 = v181;
      v96 = a18;
    }

    else
    {
      v94 = MEMORY[0x277D86220];
      v95 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *v193 = 67110144;
        *v194 = v27;
        *&v194[4] = 1024;
        *&v194[6] = v88;
        LOWORD(v195) = 1024;
        *(&v195 + 2) = v89;
        HIWORD(v195) = 1024;
        v196 = v90;
        v197 = 1024;
        v198 = v91;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 06092025: Frame %d:  Ratio_HA_LA_H_2 = %d, Ratio_HA_LA_V_2 = %d, Ratio_HA_LA_HV22  = %d, No_Bad_coded_FilmGrain_score = %d \n", v193, 0x20u);
      }

      if (v91 >= (v93 + v92))
      {
        v91 = v93 + v92;
      }

      v72 = v178;
      v96 = a18;
      if (logLevel < 3)
      {
        v98 = v180;
        v99 = v181;
      }

      else
      {
        v97 = v94;
        v98 = v180;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          *v193 = 67109120;
          *v194 = v91;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 07302025: after Band1 adjustment:  No_Bad_coded_FilmGrain_score = %d \n", v193, 8u);
        }

        v99 = v181;
      }
    }

    v100 = 0;
    for (k = 47; k != 62; ++k)
    {
      v100 += v35[k];
    }

    HIDWORD(v102) = 1079574528;
    LODWORD(v102) = *v35;
    v103 = v100 * 100.0 / v102;
    if (v103 >= 7.0)
    {
      if (v103 > 8.0)
      {
        if (v98 - 1 <= 4)
        {
          v98 = 4;
        }

        else
        {
          --v98;
        }
      }
    }

    else
    {
      ++v98;
    }

    if (logLevel >= 3)
    {
      v104 = MEMORY[0x277D86220];
      v105 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        *v193 = 67109376;
        *v194 = v27;
        *&v194[4] = 1024;
        *&v194[6] = v98;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 07302025: Frame %d:  local_step_size = %d\n", v193, 0xEu);
      }
    }

    if (v98 <= 0xE)
    {
      if (v98 < 0xA)
      {
        v79 = v98;
        if (v98 < 6)
        {
          v106 = 0;
        }

        else
        {
          v106 = (50 * v98 - 300) >> 2;
        }
      }

      else
      {
        v79 = v98;
        v106 = ((50 * v98 + 12) & 0xFEu) / 5 + 50;
      }
    }

    else
    {
      v79 = v98;
      v106 = 100;
    }

    if (v91 <= 30)
    {
      if (v91 < 24)
      {
        if (v91 < 12)
        {
          LODWORD(v107) = 100;
        }

        else
        {
          LODWORD(v107) = ((357913942 * (50 * (24 - v91))) >> 32) + 50;
        }
      }

      else
      {
        v107 = (715827883 * (50 * (30 - v91))) >> 32;
      }
    }

    else
    {
      LODWORD(v107) = 0;
    }

    if (logLevel >= 3)
    {
      v108 = MEMORY[0x277D86220];
      v109 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        *v193 = 67110400;
        *v194 = v27;
        *&v194[4] = 1024;
        *&v194[6] = v106;
        LOWORD(v195) = 1024;
        *(&v195 + 2) = v107;
        HIWORD(v195) = 1024;
        v196 = v91;
        v197 = 1024;
        v198 = a16;
        v199 = 1024;
        v200 = a17;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Frame %d:  Curr_FG_level = %d, Curr_badly_coded_FG_level = %d, No_Bad_coded_FilmGrain_score = %d; inputIsHDR = %d, inputTransferFunction = %d\n", v193, 0x26u);
      }
    }

    v110 = 10 * v35[1] / v35[2];
    if (v110 <= 24)
    {
      if (v110 < 18)
      {
        if (v110 < 12)
        {
          v111 = 0;
        }

        else
        {
          v111 = ((50 * v110 - 88) & 0xFEu) / 6;
        }
      }

      else
      {
        v111 = ((((50 * v110 - 900 - ((9363 * ((50 * v110 - 900) & 0xFFFEu)) >> 16)) >> 1) + ((9363 * ((50 * v110 - 900) & 0xFFFEu)) >> 16)) >> 2) + 50;
      }
    }

    else
    {
      v111 = 100;
    }

    if (logLevel >= 3)
    {
      v112 = MEMORY[0x277D86220];
      v113 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        *v193 = 67109376;
        *v194 = v27;
        *&v194[4] = 1024;
        *&v194[6] = v111;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 08042025 Frame %d:  Curr_GFX_level = %d \n", v193, 0xEu);
      }
    }

    if (v106 <= v107)
    {
      v114 = v107;
    }

    else
    {
      v114 = v106;
    }

    if (v114 <= v111)
    {
      v114 = v111;
    }

    if (overrideFGLevel == -1)
    {
      v115 = v114;
    }

    else
    {
      v115 = overrideFGLevel;
    }

    if (v115 >= 15)
    {
      v117 = v179;
      if (v115 >= 0x1E)
      {
        if (v115 >= 0x28)
        {
          if (v115 >= 0x32)
          {
            if (v115 >= 0x3C)
            {
              if (v115 >= 0x46)
              {
                if (v115 >= 0x50)
                {
                  if (v115 < 0x5F)
                  {
                    v116 = 7;
                  }

                  else
                  {
                    v116 = 8;
                  }
                }

                else
                {
                  v116 = 6;
                }
              }

              else
              {
                v116 = 5;
              }
            }

            else
            {
              v116 = 4;
            }
          }

          else
          {
            v116 = 3;
          }
        }

        else
        {
          v116 = 2;
        }
      }

      else
      {
        v116 = 1;
      }
    }

    else
    {
      v116 = 0;
      v117 = v179;
    }

    if (logLevel <= 2)
    {
      v123 = (__PAIR64__(v117, v116) - v117) >> 32;
      if (v116 <= v123)
      {
        v121 = (__PAIR64__(v117, v116) - v117) >> 32;
      }

      else
      {
        v121 = v123 + 1;
      }
    }

    else
    {
      v118 = MEMORY[0x277D86220];
      v119 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        *v193 = 67109376;
        *v194 = v116;
        *&v194[4] = 1024;
        *&v194[6] = v117;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 08282025: Curr_FG_count =%d,  local_FG_count = %d\n", v193, 0xEu);
      }

      v120 = (__PAIR64__(v117, v116) - v117) >> 32;
      if (v116 <= v120)
      {
        v121 = (__PAIR64__(v117, v116) - v117) >> 32;
      }

      else
      {
        v121 = v120 + 1;
      }

      if (logLevel >= 3)
      {
        v122 = v118;
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *v193 = 67109120;
          *v194 = v121;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 08282025: final local_FG_count = %d\n", v193, 8u);
        }
      }
    }

    populatePeakingConfig(__src, &peakingConfig_iPhone_Video_light_FG_V3, &defaultWeightedPeakingConfig, v96, a19, v44);
    populateEbeConfig(buf, &ebeConfig_iPhone_Video_light_FG_V3, &defaultWeightedEbeConfig, v96, a19, v44);
    populateBlendConfig(__dst, &blendConfig_iPhone_Video_light_FG_V3, &defaultWeightedBlendConfig, v96, a19, v44);
    if (isPhone(a13) && isT1OrNewer(a13))
    {
      v124 = logLevel;
      if (logLevel >= 4)
      {
        v125 = MEMORY[0x277D86220];
        v126 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          *v193 = 0;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Apply iPhone control setting V3\n", v193, 2u);
        }

        v124 = logLevel;
      }

      if (v124 >= 3)
      {
        v127 = MEMORY[0x277D86220];
        v128 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          *v193 = 67109120;
          *v194 = v115;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 08272025: inside if (isPhone), Curr_comb_FG = %d\n", v193, 8u);
        }
      }

      v129 = &defaultWeightedBlendConfig;
      if (v121 <= 3)
      {
        v41 = a19;
        if (v121 > 1)
        {
          if (v121 == 2)
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_7;
            }

            else
            {
              v129 = &defaultWeightedBlendConfig_8;
            }

            if (logLevel >= 3)
            {
              v165 = MEMORY[0x277D86220];
              v166 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 2\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }

          else
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_6;
            }

            else
            {
              v129 = &defaultWeightedBlendConfig_7;
            }

            if (logLevel >= 3)
            {
              v159 = MEMORY[0x277D86220];
              v160 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 3\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }
        }

        else if (v121)
        {
          if (v121 == 1)
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_8;
            }

            if (logLevel >= 3)
            {
              v147 = MEMORY[0x277D86220];
              v148 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 1\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }
        }

        else
        {
          if (shouldApplyGraphicSettings(a16, a17))
          {
            v129 = &defaultWeightedBlendConfig_8;
          }

          if (logLevel >= 3)
          {
            v163 = MEMORY[0x277D86220];
            v164 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
            {
              *v193 = 0;
              v132 = MEMORY[0x277D86220];
              v133 = " [1.50.3] Film grain level 0\n";
              goto LABEL_291;
            }

            goto LABEL_292;
          }
        }
      }

      else
      {
        v41 = a19;
        if (v121 <= 5)
        {
          if (v121 == 4)
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_5;
            }

            else
            {
              v129 = &defaultWeightedBlendConfig_6;
            }

            if (logLevel >= 3)
            {
              v169 = MEMORY[0x277D86220];
              v170 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 4\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }

          else
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_4;
            }

            else
            {
              v129 = &defaultWeightedBlendConfig_5;
            }

            if (logLevel >= 3)
            {
              v161 = MEMORY[0x277D86220];
              v162 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 5\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }
        }

        else
        {
          switch(v121)
          {
            case 6:
              if (shouldApplyGraphicSettings(a16, a17))
              {
                v129 = &defaultWeightedBlendConfig_3;
              }

              else
              {
                v129 = &defaultWeightedBlendConfig_4;
              }

              if (logLevel >= 3)
              {
                v167 = MEMORY[0x277D86220];
                v168 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                {
                  *v193 = 0;
                  v132 = MEMORY[0x277D86220];
                  v133 = " [1.50.3] Film grain level 6\n";
                  goto LABEL_291;
                }

                goto LABEL_292;
              }

              break;
            case 7:
              if (shouldApplyGraphicSettings(a16, a17))
              {
                v129 = &defaultWeightedBlendConfig_2;
              }

              else
              {
                v129 = &defaultWeightedBlendConfig_3;
              }

              if (logLevel >= 3)
              {
                v171 = MEMORY[0x277D86220];
                v172 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
                {
                  *v193 = 0;
                  v132 = MEMORY[0x277D86220];
                  v133 = " [1.50.3] Film grain level 7\n";
                  goto LABEL_291;
                }

                goto LABEL_292;
              }

              break;
            case 8:
              v129 = (shouldApplyGraphicSettings(a16, a17) ? &defaultWeightedBlendConfig_1 : &defaultWeightedBlendConfig_2);
              if (logLevel >= 3)
              {
                v130 = MEMORY[0x277D86220];
                v131 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                {
                  *v193 = 0;
                  v132 = MEMORY[0x277D86220];
                  v133 = " [1.50.3] Film grain level 8\n";
LABEL_291:
                  _os_log_impl(&dword_23D3F2000, v132, OS_LOG_TYPE_DEFAULT, v133, v193, 2u);
                  goto LABEL_292;
                }

                goto LABEL_292;
              }

              break;
          }
        }
      }
    }

    else
    {
      v134 = logLevel;
      if (logLevel >= 4)
      {
        v135 = MEMORY[0x277D86220];
        v136 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          *v193 = 0;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Apply iPad control setting V3\n", v193, 2u);
        }

        v134 = logLevel;
      }

      if (v134 >= 3)
      {
        v137 = MEMORY[0x277D86220];
        v138 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
        {
          *v193 = 67109120;
          *v194 = v115;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 08182025: inside else  from if (isPhone), Curr_comb_FG = %d\n", v193, 8u);
        }
      }

      v129 = &defaultWeightedBlendConfig;
      if (v121 <= 3)
      {
        v41 = a19;
        if (v121 > 1)
        {
          if (v121 == 2)
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_7;
            }

            else
            {
              v129 = &defaultWeightedBlendConfig_8;
            }

            if (logLevel >= 3)
            {
              v151 = MEMORY[0x277D86220];
              v152 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 2\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }

          else
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_6;
            }

            else
            {
              v129 = &defaultWeightedBlendConfig_7;
            }

            if (logLevel >= 3)
            {
              v143 = MEMORY[0x277D86220];
              v144 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 3\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }
        }

        else if (v121)
        {
          if (v121 == 1)
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_8;
            }

            if (logLevel >= 3)
            {
              v141 = MEMORY[0x277D86220];
              v142 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 1\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }
        }

        else
        {
          if (shouldApplyGraphicSettings(a16, a17))
          {
            v129 = &defaultWeightedBlendConfig_8;
          }

          if (logLevel >= 3)
          {
            v149 = MEMORY[0x277D86220];
            v150 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
            {
              *v193 = 0;
              v132 = MEMORY[0x277D86220];
              v133 = " [1.50.3] Film grain level 0\n";
              goto LABEL_291;
            }

            goto LABEL_292;
          }
        }
      }

      else
      {
        v41 = a19;
        if (v121 <= 5)
        {
          if (v121 == 4)
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_5;
            }

            else
            {
              v129 = &defaultWeightedBlendConfig_6;
            }

            if (logLevel >= 3)
            {
              v155 = MEMORY[0x277D86220];
              v156 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 4\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }

          else
          {
            if (shouldApplyGraphicSettings(a16, a17))
            {
              v129 = &defaultWeightedBlendConfig_4;
            }

            else
            {
              v129 = &defaultWeightedBlendConfig_5;
            }

            if (logLevel >= 3)
            {
              v145 = MEMORY[0x277D86220];
              v146 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
              {
                *v193 = 0;
                v132 = MEMORY[0x277D86220];
                v133 = " [1.50.3] Film grain level 5\n";
                goto LABEL_291;
              }

              goto LABEL_292;
            }
          }
        }

        else
        {
          switch(v121)
          {
            case 6:
              if (shouldApplyGraphicSettings(a16, a17))
              {
                v129 = &defaultWeightedBlendConfig_3;
              }

              else
              {
                v129 = &defaultWeightedBlendConfig_4;
              }

              if (logLevel >= 3)
              {
                v153 = MEMORY[0x277D86220];
                v154 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                {
                  *v193 = 0;
                  v132 = MEMORY[0x277D86220];
                  v133 = " [1.50.3] Film grain level 6\n";
                  goto LABEL_291;
                }

                goto LABEL_292;
              }

              break;
            case 7:
              if (shouldApplyGraphicSettings(a16, a17))
              {
                v129 = &defaultWeightedBlendConfig_2;
              }

              else
              {
                v129 = &defaultWeightedBlendConfig_3;
              }

              if (logLevel >= 3)
              {
                v157 = MEMORY[0x277D86220];
                v158 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                {
                  *v193 = 0;
                  v132 = MEMORY[0x277D86220];
                  v133 = " [1.50.3] Film grain level 7\n";
                  goto LABEL_291;
                }

                goto LABEL_292;
              }

              break;
            case 8:
              v129 = (shouldApplyGraphicSettings(a16, a17) ? &defaultWeightedBlendConfig_1 : &defaultWeightedBlendConfig_2);
              if (logLevel >= 3)
              {
                v139 = MEMORY[0x277D86220];
                v140 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                {
                  *v193 = 0;
                  v132 = MEMORY[0x277D86220];
                  v133 = " [1.50.3] Film grain level 8\n";
                  goto LABEL_291;
                }

LABEL_292:
              }

              break;
          }
        }
      }
    }

    populateBlendConfig(__dst, &blendConfig_iPhone_Video_light_FG_V3, v129, a18, v41, v44);
    if (v107 == 100)
    {
      populateBlendConfig(__dst, &blendConfig_SettingVideo_Heavy_FG_V3, &defaultWeightedBlendConfig_noEnh, a18, v41, v44);
      if (logLevel < 3)
      {
        memcpy(&v188[71], __src, 0x504uLL);
        memcpy(&v188[232] + 4, buf, 0x83CuLL);
        memcpy(&v188[497], __dst, 0x610uLL);
        goto LABEL_303;
      }

      v173 = MEMORY[0x277D86220];
      v174 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        *v193 = 0;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]  08062025 artificial ramp  no enhancement\n", v193, 2u);
      }
    }

    v175 = logLevel;
    memcpy(&v188[71], __src, 0x504uLL);
    memcpy(&v188[232] + 4, buf, 0x83CuLL);
    memcpy(&v188[497], __dst, 0x610uLL);
    if (v175 >= 3)
    {
      v77 = v99;
      v176 = MEMORY[0x277D86220];
      v177 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
      {
        *v193 = 134218242;
        *v194 = __src;
        *&v194[8] = 2080;
        v195 = "peakingConfig_FG";
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", v193, 0x16u);
      }

      v80 = v185;
      v76 = v182;
      goto LABEL_304;
    }

LABEL_303:
    v80 = v185;
    v76 = v182;
    v77 = v99;
LABEL_304:
    v48 = a9;
    v75 = v186;
    v78 = v121;
    goto LABEL_305;
  }

  v71 = v34;
  v72 = v29;
  if (shouldApplyGraphicSettings(a16, a17))
  {
    v73 = &defaultWeightedBlendConfig_noEnh;
  }

  else
  {
    v73 = &defaultWeightedBlendConfig;
  }

  populatePeakingConfig(&v71[71], &peakingConfig_InitialSettingVideo_V3, &defaultWeightedPeakingConfig, a18, a19, v44);
  populateEbeConfig(&v71[232] + 1, &ebeConfig_InitialSettingVideo_V3, &defaultWeightedEbeConfig, a18, a19, v44);
  populateBlendConfig(&v71[497], &blendConfig_InitialSettingVideo_V3, v73, a18, a19, v44);
  if (logLevel < 3)
  {
    v76 = 0;
    v78 = 4;
    v79 = 4;
    v75 = v186;
    v77 = 1;
  }

  else
  {
    v75 = v186;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v193 = 134218242;
      *v194 = &peakingConfig_InitialSettingVideo_V3;
      *&v194[8] = 2080;
      v195 = "peakingConfig_InitialSettingVideo_V3";
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", v193, 0x16u);
    }

    if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v193 = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 08282025: scene change detected\n", v193, 2u);
    }

    v76 = 0;
    v77 = 1;
    v78 = 4;
    v79 = 4;
  }

  v80 = v185;
LABEL_305:
  *v41 |= 0x38u;
  populateScalingCoeff(&v188[6], v80, v41, v42, v74, v32);
  v188[692] = 0x2D0000000005;
  *v41 |= 0x40u;
  *v183 = v79;
  *v184 = v77;
  *v75 = v78;
  *v48 = v76;
  *a10 = v35[16] + v35[15];
  *a11 = v35[32] + v35[31];
  *a12 = v187;
  populateNoiseConfig(&v188[694], v189, v72, v79, v41);
}

uint64_t calculate_graphics_control_setting_V3(int8x8_t *a1, unsigned int a2, unsigned int a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  v14 = *&a4;
  v16 = a9 / a2;
  v17 = a10 / a3;
  if (v16 >= v17)
  {
    v18 = a10 / a3;
  }

  else
  {
    v18 = a9 / a2;
  }

  *&a4 = a9 / a2;
  *&a6 = a10;
  populateScalingConfig(a1 + 2, a14, *&a4, v17, *&a6);
  populateScalingCoeff(&a1[6], 0, a14, v16, v19, v14);
  populatePeakingConfig(&a1[71], &peakingConfig_InitialSettingVideo_V3, &defaultWeightedPeakingConfig, a13, a14, v18);
  populateEbeConfig(&a1[232] + 1, &ebeConfig_InitialSettingVideo_V3, &defaultWeightedEbeConfig, a13, a14, v18);

  return populateBlendConfig(&a1[497], &blendConfig_InitialSettingVideo_V3, &defaultWeightedBlendConfig, a13, a14, v18);
}

uint64_t getCurrentProductType()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = MGGetSInt64Answer();
    if (CFStringCompare(v1, @"iPhone", 0) == kCFCompareEqualTo)
    {
      if (v2 <= 33071)
      {
        switch(v2)
        {
          case 33025:
            v3 = 2;
            goto LABEL_61;
          case 33040:
            v3 = 3;
            goto LABEL_61;
          case 33056:
            v3 = 4;
            goto LABEL_61;
        }
      }

      else if (v2 > 33103)
      {
        if (v2 == 33120)
        {
          v3 = 8;
          goto LABEL_61;
        }

        if (v2 == 33104)
        {
          v3 = 7;
          goto LABEL_61;
        }
      }

      else
      {
        if (v2 == 33072)
        {
          v3 = 5;
          goto LABEL_61;
        }

        if (v2 == 33088)
        {
          v3 = 6;
          goto LABEL_61;
        }
      }

      v3 = 1;
      goto LABEL_61;
    }

    if (CFStringCompare(v1, @"iPad", 0))
    {
      if (CFStringCompare(v1, @"Mac", 0))
      {
        if (CFStringCompare(v1, @"Apple TV", 0))
        {
          if (CFStringCompare(v1, @"Apple Vision", 0))
          {
            v3 = 9;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
LABEL_65:
              CFRelease(v1);
              return v3;
            }

            v9 = 136316162;
            v10 = "ASEproductType getCurrentProductType(void)";
            v11 = 2048;
            *v12 = v1;
            *&v12[8] = 2112;
            *&v12[10] = v1;
            *&v12[18] = 2048;
            *&v12[20] = v2;
            v13 = 1024;
            v14 = 9;
            v4 = MEMORY[0x277D86220];
            v5 = " [1.50.3] %s : Unknown device! deviceNameRef: %p, %@, chipID = 0x%llx, productType=%u\n";
            v6 = 48;
LABEL_64:
            _os_log_impl(&dword_23D3F2000, v4, OS_LOG_TYPE_DEFAULT, v5, &v9, v6);
            goto LABEL_65;
          }

          if (v2 == 33090)
          {
            v3 = 25;
          }

          else
          {
            v3 = 9;
          }
        }

        else
        {
          v3 = 23;
        }
      }

      else if (v2 == 33090 || v2 == 24656)
      {
        v3 = 22;
      }

      else
      {
        v3 = 21;
      }
    }

    else
    {
      if (v2 <= 33041)
      {
        if (v2 > 33026)
        {
          if (v2 == 33027)
          {
            v3 = 13;
            goto LABEL_61;
          }

          if (v2 == 33040)
          {
            v3 = 15;
            goto LABEL_61;
          }
        }

        else
        {
          if (v2 == 32807)
          {
            v3 = 11;
            goto LABEL_61;
          }

          if (v2 == 33025)
          {
            v3 = 12;
            goto LABEL_61;
          }
        }
      }

      else if (v2 <= 33073)
      {
        if (v2 == 33042)
        {
          v3 = 16;
          goto LABEL_61;
        }

        if (v2 == 33058)
        {
          v3 = 17;
          goto LABEL_61;
        }
      }

      else
      {
        switch(v2)
        {
          case 33074:
            v3 = 18;
            goto LABEL_61;
          case 33120:
            v3 = 20;
            goto LABEL_61;
          case 33090:
            v3 = 19;
            goto LABEL_61;
        }
      }

      v3 = 9;
    }

LABEL_61:
    if (logLevel < 4 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v9 = 136315906;
    v10 = "getCurrentProductType";
    v11 = 1024;
    *v12 = v3;
    *&v12[4] = 2112;
    *&v12[6] = v1;
    *&v12[14] = 2048;
    *&v12[16] = v2;
    v4 = MEMORY[0x277D86220];
    v5 = " [1.50.3] %s: productType=%d, deviceName = %@, chipID = 0x%llx\n";
    v6 = 38;
    goto LABEL_64;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "getCurrentProductType";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s: Failed to query kMGQDeviceName\n", &v9, 0xCu);
  }

  return 9;
}

BOOL shouldApplyGraphicSettings(int a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2 == 16 && logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "shouldApplyGraphicSettings";
    v7 = 2080;
    InputTypeString = getInputTypeString(a1);
    v9 = 2080;
    TransferFunctionString = getTransferFunctionString(16);
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s: Enable graphics settings! isHDR = %s, transferFunction = %s\n", &v5, 0x20u);
  }

  return a2 == 16;
}

void calculate_control_setting_V2(int *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int *a6, int *a7, _DWORD *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned int a13, int a14, int a15, unsigned __int8 a16, int a17)
{
  v17 = a2;
  v202 = *MEMORY[0x277D85DE8];
  v19 = *a6;
  v164 = *a7;
  v161 = *a9;
  v162 = *a8;
  memset(__src, 0, 512);
  v188 = 0uLL;
  v189 = 0;
  v186 = 0uLL;
  v187 = 0;
  memset(v185, 0, sizeof(v185));
  memset(&v184[8], 0, 160);
  v20 = 100 * a1[94];
  v21 = a1[30];
  if (v21 <= a1[46])
  {
    v21 = a1[46];
  }

  memset(v184, 0, 128);
  v22 = v20 / v21;
  v24 = a3 > 0x383 && a4 > 0x1F3;
  v166 = v24;
  v168 = v22;
  v170 = v19;
  if (a5)
  {
    v25 = a1[16] + a1[15];
    v26 = *a10 - v25;
    v27 = a1[32] + a1[31];
    v28 = *a11;
    v29 = *a12;
    if (v25 > *a10)
    {
      v26 = v25 - *a10;
    }

    if (v25 >= *a10)
    {
      v25 = *a10;
    }

    v30 = v27 - v28;
    if (v27 <= v28)
    {
      v30 = *a11 - v27;
    }

    v31 = 100 * v26 / v25;
    v32 = 100 * v30;
    if (v27 >= v28)
    {
      v33 = *a11;
    }

    else
    {
      v33 = a1[32] + a1[31];
    }

    v34 = v32 / v33;
    if (v31 <= v34)
    {
      v31 = v34;
    }

    v35 = v22 - v29;
    if (v22 <= v29)
    {
      v35 = *a12 - v22;
    }

    v36 = 100 * v35;
    if (v22 >= v29)
    {
      v37 = *a12;
    }

    else
    {
      v37 = v22;
    }

    v38 = v31 + v36 / v37 > 0x64;
  }

  else
  {
    v38 = 0;
  }

  v39 = *a1;
  v40 = a3 - 22;
  v169 = a4 - 22;
  memset(__dst, 0, 512);
  if (logLevel >= 3)
  {
    v42 = a5;
    v43 = a3;
    v44 = a7;
    v45 = a3 - 22;
    v46 = a8;
    v47 = MEMORY[0x277D86220];
    v48 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *a12;
      v50 = a1[16] + a1[15];
      v51 = *a10;
      v52 = a1[32] + a1[31];
      v53 = *a11;
      *buf = 67110656;
      *v193 = v38;
      *&v193[4] = 1024;
      *&v193[6] = v168;
      LOWORD(v194) = 1024;
      *(&v194 + 2) = v49;
      HIWORD(v194) = 1024;
      v195 = v50;
      v196 = 1024;
      v197 = v51;
      v198 = 1024;
      v199 = v52;
      v200 = 1024;
      v201 = v53;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] scene_change_detected = %d, ratio_2D_1D is :%d vs %d; H1 is : %d vs %d,  V1 is: %d vs %d;\n", buf, 0x2Cu);
    }

    a8 = v46;
    v40 = v45;
    a7 = v44;
    a3 = v43;
    a5 = v42;
    v17 = a2;
  }

  if (a5 && (100 * v39 / v40 * v169) >= 20 && (a5 == 1 || !v38))
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    do
    {
      v73 += a1[v72 + 23];
      v74 += a1[v72 + 39];
      ++v72;
    }

    while (v72 != 7);
    v75 = 0;
    v76 = 79;
    v77 = v170;
    do
    {
      v75 += a1[v76++];
    }

    while (v76 != 94);
    v78 = 10 * a1[46] / v74 + 10 * a1[30] / v73;
    v79 = 10 * a1[94] / v75;
    if (v79 <= 349)
    {
      v78 = 350 * v78 / v79;
    }

    v80 = 0;
    for (i = 47; i != 62; ++i)
    {
      v80 += a1[i];
    }

    HIDWORD(v82) = 1079574528;
    LODWORD(v82) = *a1;
    v83 = v80 * 100.0 / v82;
    if (v83 >= 7.0)
    {
      if (v83 > 8.0)
      {
        if (v170 - 1 <= 4)
        {
          v77 = 4;
        }

        else
        {
          v77 = v170 - 1;
        }
      }
    }

    else
    {
      v77 = v170 + 1;
    }

    v157 = a5;
    v159 = v40;
    v160 = a3;
    v66 = a7;
    v84 = a8;
    if (v77 <= 0xE)
    {
      if (v77 < 0xA)
      {
        if (v77 < 6)
        {
          v85 = 0;
        }

        else
        {
          v85 = (50 * v77 - 300) >> 2;
        }
      }

      else
      {
        v85 = ((50 * v77 + 12) & 0xFEu) / 5 + 50;
      }
    }

    else
    {
      v85 = 100;
    }

    v171 = v77;
    if (v78 <= 30)
    {
      if (v78 < 24)
      {
        if (v78 < 12)
        {
          v86 = 100;
        }

        else
        {
          v86 = ((5462 * (50 * (24 - v78))) >> 16) + 50;
        }
      }

      else
      {
        v86 = (10923 * (50 * (30 - v78))) >> 16;
      }
    }

    else
    {
      v86 = 0;
    }

    v87 = a17;
    if (logLevel >= 3)
    {
      v88 = MEMORY[0x277D86220];
      v89 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        *v193 = v157;
        *&v193[4] = 1024;
        *&v193[6] = v85;
        LOWORD(v194) = 1024;
        *(&v194 + 2) = v86;
        HIWORD(v194) = 1024;
        v195 = v78;
        v196 = 1024;
        v197 = a16;
        v198 = 1024;
        v199 = a17;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Frame %d:  Curr_FG_level = %d, Curr_badly_coded_FG_level = %d, No_Bad_coded_FilmGrain_score = %d; inputIsHDR = %d, inputTransferFunction = %d\n", buf, 0x26u);
      }
    }

    v90 = 10 * a1[1] / a1[2];
    if (v90 <= 24)
    {
      if (v90 < 18)
      {
        if (v90 < 12)
        {
          v91 = 0;
        }

        else
        {
          v91 = ((50 * v90 - 88) & 0xFEu) / 6;
        }
      }

      else
      {
        v91 = ((((50 * v90 - 900 - ((9363 * ((50 * v90 - 900) & 0xFFFEu)) >> 16)) >> 1) + ((9363 * ((50 * v90 - 900) & 0xFFFEu)) >> 16)) >> 2) + 50;
      }
    }

    else
    {
      v91 = 100;
    }

    if (logLevel >= 3)
    {
      v92 = MEMORY[0x277D86220];
      v93 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *v193 = v157;
        *&v193[4] = 1024;
        *&v193[6] = v91;
        LOWORD(v194) = 1024;
        *(&v194 + 2) = v171;
        HIWORD(v194) = 1024;
        v195 = v86;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 06162025 Frame %d:  Curr_GFX_level = %d,  local_step_size = %d, Curr_badly_coded_FG_level =%d\n", buf, 0x1Au);
      }
    }

    if (v85 <= v86)
    {
      v94 = v86;
    }

    else
    {
      v94 = v85;
    }

    if (v94 <= v91)
    {
      v94 = v91;
    }

    if (overrideFGLevel == -1)
    {
      v95 = v94;
    }

    else
    {
      v95 = overrideFGLevel;
    }

    v175 = lumaBlend_default;
    v176 = unk_27E2DA418;
    v177 = xmmword_27E2DA428;
    v172 = lumaBlend_default;
    v173 = unk_27E2DA418;
    v174 = xmmword_27E2DA428;
    v158 = a13 - 2;
    if (a13 - 2 > 6)
    {
      v65 = v84;
      v67 = v160;
      if (logLevel >= 4)
      {
        v100 = MEMORY[0x277D86220];
        v101 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Apply iPad control setting V2\n", buf, 2u);
        }

        v87 = a17;
      }

      if (v166)
      {
        if (v95 > 29)
        {
          if (v95 > 0x31)
          {
            if (v95 > 0x45)
            {
              if (v95 > 0x5E)
              {
                memcpy(__dst, &SettingVideo_Heavy_FG_V2, 0x22CuLL);
                v188 = downSample_SettingVideo_Heavy_FG_V2;
                v189 = dword_27E2D0654;
                memcpy(v185, &blendLogic_SettingVideo_Heavy_FG_V2, sizeof(v185));
                v181 = objectProtection_SettingVideo_Heavy_FG_V2;
                v182 = unk_27E2D0788;
                *v183 = xmmword_27E2D0798;
                *&v183[12] = *(&xmmword_27E2D0798 + 12);
                if (shouldApplyGraphicSettings(a16, v87))
                {
                  v175 = lumaBlend_SettingVideo_Heavy_FG_V2;
                  v176 = unk_27E2DA2F8;
                  v177 = xmmword_27E2DA308;
                }

                memcpy(__src, &SettingVideo_Heavy_FG_mix_V2, 0x22CuLL);
                v186 = downSample_SettingVideo_Heavy_FG_mix_V2;
                v187 = dword_27E2D1860;
                memcpy(v184, &blendLogic_SettingVideo_Heavy_FG_mix_V2, sizeof(v184));
                v178 = objectProtection_SettingVideo_Heavy_FG_mix_V2;
                v179 = unk_27E2D1994;
                *v180 = xmmword_27E2D19A4;
                *&v180[12] = *(&xmmword_27E2D19A4 + 12);
                if (shouldApplyGraphicSettings(a16, v87))
                {
                  v172 = lumaBlend_SettingVideo_Heavy_FG_V2;
                  v173 = unk_27E2DA2F8;
                  v174 = xmmword_27E2DA308;
                }

                if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v98 = MEMORY[0x277D86220];
                  v99 = " [1.50.3] Film grain level heavy\n";
                  goto LABEL_267;
                }
              }

              else
              {
                memcpy(__dst, &SettingVideo_level3_FG_V2, 0x22CuLL);
                v188 = downSample_SettingVideo_level3_FG_V2;
                v189 = dword_27E2D14C4;
                memcpy(v185, &blendLogic_SettingVideo_level3_FG_V2, sizeof(v185));
                v181 = objectProtection_SettingVideo_level3_FG_V2;
                v182 = unk_27E2D15F8;
                *v183 = xmmword_27E2D1608;
                *&v183[12] = *(&xmmword_27E2D1608 + 12);
                if (shouldApplyGraphicSettings(a16, v87))
                {
                  v175 = lumaBlend_SettingVideo_level3_FG_V2;
                  v176 = unk_27E2DA3B8;
                  v177 = xmmword_27E2DA3C8;
                }

                memcpy(__src, &SettingVideo_level3_FG_mix_V2, 0x22CuLL);
                v186 = downSample_SettingVideo_level3_FG_mix_V2;
                v187 = dword_27E2D26D0;
                memcpy(v184, &blendLogic_SettingVideo_level3_FG_mix_V2, sizeof(v184));
                v178 = objectProtection_SettingVideo_level3_FG_mix_V2;
                v179 = unk_27E2D2804;
                *v180 = xmmword_27E2D2814;
                *&v180[12] = *(&xmmword_27E2D2814 + 12);
                if (shouldApplyGraphicSettings(a16, v87))
                {
                  v172 = lumaBlend_SettingVideo_level3_FG_V2;
                  v173 = unk_27E2DA3B8;
                  v174 = xmmword_27E2DA3C8;
                }

                if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v98 = MEMORY[0x277D86220];
                  v99 = " [1.50.3] Film grain level 3\n";
                  goto LABEL_267;
                }
              }
            }

            else
            {
              memcpy(__dst, &SettingVideo_level2_FG_V2, 0x22CuLL);
              v188 = downSample_SettingVideo_level2_FG_V2;
              v189 = dword_27E2D1128;
              memcpy(v185, &blendLogic_SettingVideo_level2_FG_V2, sizeof(v185));
              v181 = objectProtection_SettingVideo_level2_FG_V2;
              v182 = unk_27E2D125C;
              *v183 = xmmword_27E2D126C;
              *&v183[12] = *(&xmmword_27E2D126C + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v175 = lumaBlend_SettingVideo_level2_FG_V2;
                v176 = unk_27E2DA388;
                v177 = xmmword_27E2DA398;
              }

              memcpy(__src, &SettingVideo_level2_FG_mix_V2, 0x22CuLL);
              v186 = downSample_SettingVideo_level2_FG_mix_V2;
              v187 = dword_27E2D2334;
              memcpy(v184, &blendLogic_SettingVideo_level2_FG_mix_V2, sizeof(v184));
              v178 = objectProtection_SettingVideo_level2_FG_mix_V2;
              v179 = unk_27E2D2468;
              *v180 = xmmword_27E2D2478;
              *&v180[12] = *(&xmmword_27E2D2478 + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v172 = lumaBlend_SettingVideo_level2_FG_V2;
                v173 = unk_27E2DA388;
                v174 = xmmword_27E2DA398;
              }

              if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v98 = MEMORY[0x277D86220];
                v99 = " [1.50.3] Film grain level 2\n";
                goto LABEL_267;
              }
            }
          }

          else
          {
            memcpy(__dst, &SettingVideo_level1_FG_V2, 0x22CuLL);
            v188 = downSample_SettingVideo_level1_FG_V2;
            v189 = dword_27E2D0D8C;
            memcpy(v185, &blendLogic_SettingVideo_level1_FG_V2, sizeof(v185));
            v181 = objectProtection_SettingVideo_level1_FG_V2;
            v182 = unk_27E2D0EC0;
            *v183 = xmmword_27E2D0ED0;
            *&v183[12] = *(&xmmword_27E2D0ED0 + 12);
            if (shouldApplyGraphicSettings(a16, v87))
            {
              v175 = lumaBlend_SettingVideo_level1_FG_V2;
              v176 = unk_27E2DA358;
              v177 = xmmword_27E2DA368;
            }

            memcpy(__src, &SettingVideo_level1_FG_mix_V2, 0x22CuLL);
            v186 = downSample_SettingVideo_level1_FG_mix_V2;
            v187 = dword_27E2D1F98;
            memcpy(v184, &blendLogic_SettingVideo_level1_FG_mix_V2, sizeof(v184));
            v178 = objectProtection_SettingVideo_level1_FG_mix_V2;
            v179 = unk_27E2D20CC;
            *v180 = xmmword_27E2D20DC;
            *&v180[12] = *(&xmmword_27E2D20DC + 12);
            if (shouldApplyGraphicSettings(a16, v87))
            {
              v172 = lumaBlend_SettingVideo_level1_FG_V2;
              v173 = unk_27E2DA358;
              v174 = xmmword_27E2DA368;
            }

            if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v98 = MEMORY[0x277D86220];
              v99 = " [1.50.3] Film grain level 1\n";
              goto LABEL_267;
            }
          }
        }

        else
        {
          memcpy(__dst, &SettingVideo_light_FG_V2, 0x22CuLL);
          v188 = downSample_SettingVideo_light_FG_V2;
          v189 = dword_27E2D09F0;
          memcpy(v185, &blendLogic_SettingVideo_light_FG_V2, sizeof(v185));
          v181 = objectProtection_SettingVideo_light_FG_V2;
          v182 = unk_27E2D0B24;
          *v183 = xmmword_27E2D0B34;
          *&v183[12] = *(&xmmword_27E2D0B34 + 12);
          if (shouldApplyGraphicSettings(a16, v87))
          {
            v175 = lumaBlend_SettingVideo_light_FG_V2;
            v176 = unk_27E2DA328;
            v177 = xmmword_27E2DA338;
          }

          memcpy(__src, &SettingVideo_light_FG_mix_V2, 0x22CuLL);
          v186 = downSample_SettingVideo_light_FG_mix_V2;
          v187 = dword_27E2D1BFC;
          memcpy(v184, &blendLogic_SettingVideo_light_FG_mix_V2, sizeof(v184));
          v178 = objectProtection_SettingVideo_light_FG_mix_V2;
          v179 = unk_27E2D1D30;
          *v180 = xmmword_27E2D1D40;
          *&v180[12] = *(&xmmword_27E2D1D40 + 12);
          if (shouldApplyGraphicSettings(a16, v87))
          {
            v172 = lumaBlend_SettingVideo_light_FG_V2;
            v173 = unk_27E2DA328;
            v174 = xmmword_27E2DA338;
          }

          if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v98 = MEMORY[0x277D86220];
            v99 = " [1.50.3] Film grain level light\n";
            goto LABEL_267;
          }
        }
      }

      else if (v95 > 29)
      {
        if (v95 > 0x31)
        {
          if (v95 > 0x45)
          {
            if (v95 > 0x5E)
            {
              memcpy(__dst, &SettingVideo_Heavy_FG_LargeRatio_V2, 0x22CuLL);
              v188 = downSample_SettingVideo_Heavy_FG_LargeRatio_V2;
              v189 = dword_27E2D2E08;
              memcpy(v185, &blendLogic_SettingVideo_Heavy_FG_LargeRatio_V2, sizeof(v185));
              v181 = objectProtection_SettingVideo_Heavy_FG_LargeRatio_V2;
              v182 = unk_27E2D2F3C;
              *v183 = xmmword_27E2D2F4C;
              *&v183[12] = *(&xmmword_27E2D2F4C + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v175 = lumaBlend_SettingVideo_Heavy_FG_V2;
                v176 = unk_27E2DA2F8;
                v177 = xmmword_27E2DA308;
              }

              memcpy(__src, &SettingVideo_Heavy_FG_mix_LargeRatio_V2, 0x22CuLL);
              v186 = downSample_SettingVideo_Heavy_FG_mix_LargeRatio_V2;
              v187 = dword_27E2D4014;
              memcpy(v184, &blendLogic_SettingVideo_Heavy_FG_mix_LargeRatio_V2, sizeof(v184));
              v178 = objectProtection_SettingVideo_Heavy_FG_mix_LargeRatio_V2;
              v179 = unk_27E2D4148;
              *v180 = xmmword_27E2D4158;
              *&v180[12] = *(&xmmword_27E2D4158 + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v172 = lumaBlend_SettingVideo_Heavy_FG_V2;
                v173 = unk_27E2DA2F8;
                v174 = xmmword_27E2DA308;
              }

              if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v98 = MEMORY[0x277D86220];
                v99 = " [1.50.3] Film grain level heavy LargeRatio\n";
                goto LABEL_267;
              }
            }

            else
            {
              memcpy(__dst, &SettingVideo_level3_FG_LargeRatio_V2, 0x22CuLL);
              v188 = downSample_SettingVideo_level3_FG_LargeRatio_V2;
              v189 = dword_27E2D3C78;
              memcpy(v185, &blendLogic_SettingVideo_level3_FG_LargeRatio_V2, sizeof(v185));
              v181 = objectProtection_SettingVideo_level3_FG_LargeRatio_V2;
              v182 = unk_27E2D3DAC;
              *v183 = xmmword_27E2D3DBC;
              *&v183[12] = *(&xmmword_27E2D3DBC + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v175 = lumaBlend_SettingVideo_level3_FG_V2;
                v176 = unk_27E2DA3B8;
                v177 = xmmword_27E2DA3C8;
              }

              memcpy(__src, &SettingVideo_level3_FG_mix_LargeRatio_V2, 0x22CuLL);
              v186 = downSample_SettingVideo_level3_FG_mix_LargeRatio_V2;
              v187 = dword_27E2D4E84;
              memcpy(v184, &blendLogic_SettingVideo_level3_FG_mix_LargeRatio_V2, sizeof(v184));
              v178 = objectProtection_SettingVideo_level3_FG_mix_LargeRatio_V2;
              v179 = unk_27E2D4FB8;
              *v180 = xmmword_27E2D4FC8;
              *&v180[12] = *(&xmmword_27E2D4FC8 + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v172 = lumaBlend_SettingVideo_level3_FG_V2;
                v173 = unk_27E2DA3B8;
                v174 = xmmword_27E2DA3C8;
              }

              if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v98 = MEMORY[0x277D86220];
                v99 = " [1.50.3] Film grain level 3 LargeRatio\n";
                goto LABEL_267;
              }
            }
          }

          else
          {
            memcpy(__dst, &SettingVideo_level2_FG_LargeRatio_V2, 0x22CuLL);
            v188 = downSample_SettingVideo_level2_FG_LargeRatio_V2;
            v189 = dword_27E2D38DC;
            memcpy(v185, &blendLogic_SettingVideo_level2_FG_LargeRatio_V2, sizeof(v185));
            v181 = objectProtection_SettingVideo_level2_FG_LargeRatio_V2;
            v182 = unk_27E2D3A10;
            *v183 = xmmword_27E2D3A20;
            *&v183[12] = *(&xmmword_27E2D3A20 + 12);
            if (shouldApplyGraphicSettings(a16, v87))
            {
              v175 = lumaBlend_SettingVideo_level2_FG_V2;
              v176 = unk_27E2DA388;
              v177 = xmmword_27E2DA398;
            }

            memcpy(__src, &SettingVideo_level2_FG_mix_LargeRatio_V2, 0x22CuLL);
            v186 = downSample_SettingVideo_level2_FG_mix_LargeRatio_V2;
            v187 = dword_27E2D4AE8;
            memcpy(v184, &blendLogic_SettingVideo_level2_FG_mix_LargeRatio_V2, sizeof(v184));
            v178 = objectProtection_SettingVideo_level2_FG_mix_LargeRatio_V2;
            v179 = unk_27E2D4C1C;
            *v180 = xmmword_27E2D4C2C;
            *&v180[12] = *(&xmmword_27E2D4C2C + 12);
            if (shouldApplyGraphicSettings(a16, v87))
            {
              v172 = lumaBlend_SettingVideo_level2_FG_V2;
              v173 = unk_27E2DA388;
              v174 = xmmword_27E2DA398;
            }

            if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v98 = MEMORY[0x277D86220];
              v99 = " [1.50.3] Film grain level 2 LargeRatio\n";
              goto LABEL_267;
            }
          }
        }

        else
        {
          memcpy(__dst, &SettingVideo_level1_FG_LargeRatio_V2, 0x22CuLL);
          v188 = downSample_SettingVideo_level1_FG_LargeRatio_V2;
          v189 = dword_27E2D3540;
          memcpy(v185, &blendLogic_SettingVideo_level1_FG_LargeRatio_V2, sizeof(v185));
          v181 = objectProtection_SettingVideo_level1_FG_LargeRatio_V2;
          v182 = unk_27E2D3674;
          *v183 = xmmword_27E2D3684;
          *&v183[12] = *(&xmmword_27E2D3684 + 12);
          if (shouldApplyGraphicSettings(a16, v87))
          {
            v175 = lumaBlend_SettingVideo_level1_FG_V2;
            v176 = unk_27E2DA358;
            v177 = xmmword_27E2DA368;
          }

          memcpy(__src, &SettingVideo_level1_FG_mix_LargeRatio_V2, 0x22CuLL);
          v186 = downSample_SettingVideo_level1_FG_mix_LargeRatio_V2;
          v187 = dword_27E2D474C;
          memcpy(v184, &blendLogic_SettingVideo_level1_FG_mix_LargeRatio_V2, sizeof(v184));
          v178 = objectProtection_SettingVideo_level1_FG_mix_LargeRatio_V2;
          v179 = unk_27E2D4880;
          *v180 = xmmword_27E2D4890;
          *&v180[12] = *(&xmmword_27E2D4890 + 12);
          if (shouldApplyGraphicSettings(a16, v87))
          {
            v172 = lumaBlend_SettingVideo_level1_FG_V2;
            v173 = unk_27E2DA358;
            v174 = xmmword_27E2DA368;
          }

          if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v98 = MEMORY[0x277D86220];
            v99 = " [1.50.3] Film grain level 1 LargeRatio\n";
            goto LABEL_267;
          }
        }
      }

      else
      {
        memcpy(__dst, &SettingVideo_light_FG_LargeRatio_V2, 0x22CuLL);
        v188 = downSample_SettingVideo_light_FG_LargeRatio_V2;
        v189 = dword_27E2D31A4;
        memcpy(v185, &blendLogic_SettingVideo_light_FG_LargeRatio_V2, sizeof(v185));
        v181 = objectProtection_SettingVideo_light_FG_LargeRatio_V2;
        v182 = unk_27E2D32D8;
        *v183 = xmmword_27E2D32E8;
        *&v183[12] = *(&xmmword_27E2D32E8 + 12);
        if (shouldApplyGraphicSettings(a16, v87))
        {
          v175 = lumaBlend_SettingVideo_light_FG_V2;
          v176 = unk_27E2DA328;
          v177 = xmmword_27E2DA338;
        }

        memcpy(__src, &SettingVideo_light_FG_mix_LargeRatio_V2, 0x22CuLL);
        v186 = downSample_SettingVideo_light_FG_mix_LargeRatio_V2;
        v187 = dword_27E2D43B0;
        memcpy(v184, &blendLogic_SettingVideo_light_FG_mix_LargeRatio_V2, sizeof(v184));
        v178 = objectProtection_SettingVideo_light_FG_mix_LargeRatio_V2;
        v179 = unk_27E2D44E4;
        *v180 = xmmword_27E2D44F4;
        *&v180[12] = *(&xmmword_27E2D44F4 + 12);
        if (shouldApplyGraphicSettings(a16, v87))
        {
          v172 = lumaBlend_SettingVideo_light_FG_V2;
          v173 = unk_27E2DA328;
          v174 = xmmword_27E2DA338;
        }

        if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v98 = MEMORY[0x277D86220];
          v99 = " [1.50.3] Film grain level light LargeRatio\n";
          goto LABEL_267;
        }
      }
    }

    else
    {
      v65 = v84;
      v67 = v160;
      if (logLevel >= 4)
      {
        v96 = MEMORY[0x277D86220];
        v97 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Apply iPhone control setting V2\n", buf, 2u);
        }

        v87 = a17;
      }

      if (v166)
      {
        if (v95 > 29)
        {
          if (v95 > 0x31)
          {
            if (v95 > 0x45)
            {
              if (v95 > 0x5E)
              {
                memcpy(__dst, &iPhone_SettingVideo_Heavy_FG_V2, 0x22CuLL);
                v188 = downSample_iPhone_SettingVideo_Heavy_FG_V2;
                v189 = dword_27E2D55BC;
                memcpy(v185, &blendLogic_iPhone_SettingVideo_Heavy_FG_V2, sizeof(v185));
                v181 = objectProtection_iPhone_SettingVideo_Heavy_FG_V2;
                v182 = unk_27E2D56F0;
                *v183 = xmmword_27E2D5700;
                *&v183[12] = *(&xmmword_27E2D5700 + 12);
                if (shouldApplyGraphicSettings(a16, v87))
                {
                  v175 = lumaBlend_SettingVideo_Heavy_FG_V2;
                  v176 = unk_27E2DA2F8;
                  v177 = xmmword_27E2DA308;
                }

                memcpy(__src, &iPhone_SettingVideo_Heavy_FG_mix_V2, 0x22CuLL);
                v186 = downSample_iPhone_SettingVideo_Heavy_FG_mix_V2;
                v187 = dword_27E2D67C8;
                memcpy(v184, &blendLogic_iPhone_SettingVideo_Heavy_FG_mix_V2, sizeof(v184));
                v178 = objectProtection_iPhone_SettingVideo_Heavy_FG_mix_V2;
                v179 = unk_27E2D68FC;
                *v180 = xmmword_27E2D690C;
                *&v180[12] = *(&xmmword_27E2D690C + 12);
                if (shouldApplyGraphicSettings(a16, v87))
                {
                  v172 = lumaBlend_SettingVideo_Heavy_FG_V2;
                  v173 = unk_27E2DA2F8;
                  v174 = xmmword_27E2DA308;
                }

                if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v98 = MEMORY[0x277D86220];
                  v99 = " [1.50.3] Film grain level heavy\n";
                  goto LABEL_267;
                }
              }

              else
              {
                memcpy(__dst, &iPhone_SettingVideo_level3_FG_V2, 0x22CuLL);
                v188 = downSample_iPhone_SettingVideo_level3_FG_V2;
                v189 = dword_27E2D642C;
                memcpy(v185, &blendLogic_iPhone_SettingVideo_level3_FG_V2, sizeof(v185));
                v181 = objectProtection_iPhone_SettingVideo_level3_FG_V2;
                v182 = unk_27E2D6560;
                *v183 = xmmword_27E2D6570;
                *&v183[12] = *(&xmmword_27E2D6570 + 12);
                if (shouldApplyGraphicSettings(a16, v87))
                {
                  v175 = lumaBlend_SettingVideo_level3_FG_V2;
                  v176 = unk_27E2DA3B8;
                  v177 = xmmword_27E2DA3C8;
                }

                memcpy(__src, &iPhone_SettingVideo_level3_FG_mix_V2, 0x22CuLL);
                v186 = downSample_iPhone_SettingVideo_level3_FG_mix_V2;
                v187 = dword_27E2D7638;
                memcpy(v184, &blendLogic_iPhone_SettingVideo_level3_FG_mix_V2, sizeof(v184));
                v178 = objectProtection_iPhone_SettingVideo_level3_FG_mix_V2;
                v179 = unk_27E2D776C;
                *v180 = xmmword_27E2D777C;
                *&v180[12] = *(&xmmword_27E2D777C + 12);
                if (shouldApplyGraphicSettings(a16, v87))
                {
                  v172 = lumaBlend_SettingVideo_level3_FG_V2;
                  v173 = unk_27E2DA3B8;
                  v174 = xmmword_27E2DA3C8;
                }

                if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v98 = MEMORY[0x277D86220];
                  v99 = " [1.50.3] Film grain level 3\n";
                  goto LABEL_267;
                }
              }
            }

            else
            {
              memcpy(__dst, &iPhone_SettingVideo_level2_FG_V2, 0x22CuLL);
              v188 = downSample_iPhone_SettingVideo_level2_FG_V2;
              v189 = dword_27E2D6090;
              memcpy(v185, &blendLogic_iPhone_SettingVideo_level2_FG_V2, sizeof(v185));
              v181 = objectProtection_iPhone_SettingVideo_level2_FG_V2;
              v182 = unk_27E2D61C4;
              *v183 = xmmword_27E2D61D4;
              *&v183[12] = *(&xmmword_27E2D61D4 + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v175 = lumaBlend_SettingVideo_level2_FG_V2;
                v176 = unk_27E2DA388;
                v177 = xmmword_27E2DA398;
              }

              memcpy(__src, &iPhone_SettingVideo_level2_FG_mix_V2, 0x22CuLL);
              v186 = downSample_iPhone_SettingVideo_level2_FG_mix_V2;
              v187 = dword_27E2D729C;
              memcpy(v184, &blendLogic_iPhone_SettingVideo_level2_FG_mix_V2, sizeof(v184));
              v178 = objectProtection_iPhone_SettingVideo_level2_FG_mix_V2;
              v179 = unk_27E2D73D0;
              *v180 = xmmword_27E2D73E0;
              *&v180[12] = *(&xmmword_27E2D73E0 + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v172 = lumaBlend_SettingVideo_level2_FG_V2;
                v173 = unk_27E2DA388;
                v174 = xmmword_27E2DA398;
              }

              if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v98 = MEMORY[0x277D86220];
                v99 = " [1.50.3] Film grain level 2\n";
                goto LABEL_267;
              }
            }
          }

          else
          {
            memcpy(__dst, &iPhone_SettingVideo_level1_FG_V2, 0x22CuLL);
            v188 = downSample_iPhone_SettingVideo_level1_FG_V2;
            v189 = dword_27E2D5CF4;
            memcpy(v185, &blendLogic_iPhone_SettingVideo_level1_FG_V2, sizeof(v185));
            v181 = objectProtection_iPhone_SettingVideo_level1_FG_V2;
            v182 = unk_27E2D5E28;
            *v183 = xmmword_27E2D5E38;
            *&v183[12] = *(&xmmword_27E2D5E38 + 12);
            if (shouldApplyGraphicSettings(a16, v87))
            {
              v175 = lumaBlend_SettingVideo_level1_FG_V2;
              v176 = unk_27E2DA358;
              v177 = xmmword_27E2DA368;
            }

            memcpy(__src, &iPhone_SettingVideo_level1_FG_mix_V2, 0x22CuLL);
            v186 = downSample_iPhone_SettingVideo_level1_FG_mix_V2;
            v187 = dword_27E2D6F00;
            memcpy(v184, &blendLogic_iPhone_SettingVideo_level1_FG_mix_V2, sizeof(v184));
            v178 = objectProtection_iPhone_SettingVideo_level1_FG_mix_V2;
            v179 = unk_27E2D7034;
            *v180 = xmmword_27E2D7044;
            *&v180[12] = *(&xmmword_27E2D7044 + 12);
            if (shouldApplyGraphicSettings(a16, v87))
            {
              v172 = lumaBlend_SettingVideo_level1_FG_V2;
              v173 = unk_27E2DA358;
              v174 = xmmword_27E2DA368;
            }

            if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v98 = MEMORY[0x277D86220];
              v99 = " [1.50.3] Film grain level 1\n";
              goto LABEL_267;
            }
          }
        }

        else
        {
          memcpy(__dst, &iPhone_SettingVideo_light_FG_V2, 0x22CuLL);
          v188 = downSample_iPhone_SettingVideo_light_FG_V2;
          v189 = dword_27E2D5958;
          memcpy(v185, &blendLogic_iPhone_SettingVideo_light_FG_V2, sizeof(v185));
          v181 = objectProtection_iPhone_SettingVideo_light_FG_V2;
          v182 = unk_27E2D5A8C;
          *v183 = xmmword_27E2D5A9C;
          *&v183[12] = *(&xmmword_27E2D5A9C + 12);
          if (shouldApplyGraphicSettings(a16, v87))
          {
            v175 = lumaBlend_SettingVideo_light_FG_V2;
            v176 = unk_27E2DA328;
            v177 = xmmword_27E2DA338;
          }

          memcpy(__src, &iPhone_SettingVideo_light_FG_mix_V2, 0x22CuLL);
          v186 = downSample_iPhone_SettingVideo_light_FG_mix_V2;
          v187 = dword_27E2D6B64;
          memcpy(v184, &blendLogic_iPhone_SettingVideo_light_FG_mix_V2, sizeof(v184));
          v178 = objectProtection_iPhone_SettingVideo_light_FG_mix_V2;
          v179 = unk_27E2D6C98;
          *v180 = xmmword_27E2D6CA8;
          *&v180[12] = *(&xmmword_27E2D6CA8 + 12);
          if (shouldApplyGraphicSettings(a16, v87))
          {
            v172 = lumaBlend_SettingVideo_light_FG_V2;
            v173 = unk_27E2DA328;
            v174 = xmmword_27E2DA338;
          }

          if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v98 = MEMORY[0x277D86220];
            v99 = " [1.50.3] Film grain level light\n";
LABEL_267:
            _os_log_impl(&dword_23D3F2000, v98, OS_LOG_TYPE_DEFAULT, v99, buf, 2u);
          }
        }
      }

      else if (v95 > 29)
      {
        if (v95 > 0x31)
        {
          if (v95 > 0x45)
          {
            if (v95 > 0x5E)
            {
              memcpy(__dst, &iPhone_SettingVideo_Heavy_FG_LargeRatio_V2, 0x22CuLL);
              v188 = downSample_iPhone_SettingVideo_Heavy_FG_LargeRatio_V2;
              v189 = dword_27E2D7D70;
              memcpy(v185, &blendLogic_iPhone_SettingVideo_Heavy_FG_LargeRatio_V2, sizeof(v185));
              v181 = objectProtection_iPhone_SettingVideo_Heavy_FG_LargeRatio_V2;
              v182 = unk_27E2D7EA4;
              *v183 = xmmword_27E2D7EB4;
              *&v183[12] = *(&xmmword_27E2D7EB4 + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v175 = lumaBlend_SettingVideo_Heavy_FG_V2;
                v176 = unk_27E2DA2F8;
                v177 = xmmword_27E2DA308;
              }

              memcpy(__src, &iPhone_SettingVideo_Heavy_FG_mix_LargeRatio_V2, 0x22CuLL);
              v186 = downSample_iPhone_SettingVideo_Heavy_FG_mix_LargeRatio_V2;
              v187 = dword_27E2D8F7C;
              memcpy(v184, &blendLogic_iPhone_SettingVideo_Heavy_FG_mix_LargeRatio_V2, sizeof(v184));
              v178 = objectProtection_iPhone_SettingVideo_Heavy_FG_mix_LargeRatio_V2;
              v179 = unk_27E2D90B0;
              *v180 = xmmword_27E2D90C0;
              *&v180[12] = *(&xmmword_27E2D90C0 + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v172 = lumaBlend_SettingVideo_Heavy_FG_V2;
                v173 = unk_27E2DA2F8;
                v174 = xmmword_27E2DA308;
              }

              if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v98 = MEMORY[0x277D86220];
                v99 = " [1.50.3] Film grain level heavy LargeRatio\n";
                goto LABEL_267;
              }
            }

            else
            {
              memcpy(__dst, &iPhone_SettingVideo_level3_FG_LargeRatio_V2, 0x22CuLL);
              v188 = downSample_iPhone_SettingVideo_level3_FG_LargeRatio_V2;
              v189 = dword_27E2D8BE0;
              memcpy(v185, &blendLogic_iPhone_SettingVideo_level3_FG_LargeRatio_V2, sizeof(v185));
              v181 = objectProtection_iPhone_SettingVideo_level3_FG_LargeRatio_V2;
              v182 = unk_27E2D8D14;
              *v183 = xmmword_27E2D8D24;
              *&v183[12] = *(&xmmword_27E2D8D24 + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v175 = lumaBlend_SettingVideo_level3_FG_V2;
                v176 = unk_27E2DA3B8;
                v177 = xmmword_27E2DA3C8;
              }

              memcpy(__src, &iPhone_SettingVideo_level3_FG_mix_LargeRatio_V2, 0x22CuLL);
              v186 = downSample_iPhone_SettingVideo_level3_FG_mix_LargeRatio_V2;
              v187 = dword_27E2D9DEC;
              memcpy(v184, &blendLogic_iPhone_SettingVideo_level3_FG_mix_LargeRatio_V2, sizeof(v184));
              v178 = objectProtection_iPhone_SettingVideo_level3_FG_mix_LargeRatio_V2;
              v179 = unk_27E2D9F20;
              *v180 = xmmword_27E2D9F30;
              *&v180[12] = *(&xmmword_27E2D9F30 + 12);
              if (shouldApplyGraphicSettings(a16, v87))
              {
                v172 = lumaBlend_SettingVideo_level3_FG_V2;
                v173 = unk_27E2DA3B8;
                v174 = xmmword_27E2DA3C8;
              }

              if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v98 = MEMORY[0x277D86220];
                v99 = " [1.50.3] Film grain level 3 LargeRatio\n";
                goto LABEL_267;
              }
            }
          }

          else
          {
            memcpy(__dst, &iPhone_SettingVideo_level2_FG_LargeRatio_V2, 0x22CuLL);
            v188 = downSample_iPhone_SettingVideo_level2_FG_LargeRatio_V2;
            v189 = dword_27E2D8844;
            memcpy(v185, &blendLogic_iPhone_SettingVideo_level2_FG_LargeRatio_V2, sizeof(v185));
            v181 = objectProtection_iPhone_SettingVideo_level2_FG_LargeRatio_V2;
            v182 = unk_27E2D8978;
            *v183 = xmmword_27E2D8988;
            *&v183[12] = *(&xmmword_27E2D8988 + 12);
            if (shouldApplyGraphicSettings(a16, v87))
            {
              v175 = lumaBlend_SettingVideo_level2_FG_V2;
              v176 = unk_27E2DA388;
              v177 = xmmword_27E2DA398;
            }

            memcpy(__src, &iPhone_SettingVideo_level2_FG_mix_LargeRatio_V2, 0x22CuLL);
            v186 = downSample_iPhone_SettingVideo_level2_FG_mix_LargeRatio_V2;
            v187 = dword_27E2D9A50;
            memcpy(v184, &blendLogic_iPhone_SettingVideo_level2_FG_mix_LargeRatio_V2, sizeof(v184));
            v178 = objectProtection_iPhone_SettingVideo_level2_FG_mix_LargeRatio_V2;
            v179 = unk_27E2D9B84;
            *v180 = xmmword_27E2D9B94;
            *&v180[12] = *(&xmmword_27E2D9B94 + 12);
            if (shouldApplyGraphicSettings(a16, v87))
            {
              v172 = lumaBlend_SettingVideo_level2_FG_V2;
              v173 = unk_27E2DA388;
              v174 = xmmword_27E2DA398;
            }

            if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v98 = MEMORY[0x277D86220];
              v99 = " [1.50.3] Film grain level 2 LargeRatio\n";
              goto LABEL_267;
            }
          }
        }

        else
        {
          memcpy(__dst, &iPhone_SettingVideo_level1_FG_LargeRatio_V2, 0x22CuLL);
          v188 = downSample_iPhone_SettingVideo_level1_FG_LargeRatio_V2;
          v189 = dword_27E2D84A8;
          memcpy(v185, &blendLogic_iPhone_SettingVideo_level1_FG_LargeRatio_V2, sizeof(v185));
          v181 = objectProtection_iPhone_SettingVideo_level1_FG_LargeRatio_V2;
          v182 = unk_27E2D85DC;
          *v183 = xmmword_27E2D85EC;
          *&v183[12] = *(&xmmword_27E2D85EC + 12);
          if (shouldApplyGraphicSettings(a16, v87))
          {
            v175 = lumaBlend_SettingVideo_level1_FG_V2;
            v176 = unk_27E2DA358;
            v177 = xmmword_27E2DA368;
          }

          memcpy(__src, &iPhone_SettingVideo_level1_FG_mix_LargeRatio_V2, 0x22CuLL);
          v186 = downSample_iPhone_SettingVideo_level1_FG_mix_LargeRatio_V2;
          v187 = dword_27E2D96B4;
          memcpy(v184, &blendLogic_iPhone_SettingVideo_level1_FG_mix_LargeRatio_V2, sizeof(v184));
          v178 = objectProtection_iPhone_SettingVideo_level1_FG_mix_LargeRatio_V2;
          v179 = unk_27E2D97E8;
          *v180 = xmmword_27E2D97F8;
          *&v180[12] = *(&xmmword_27E2D97F8 + 12);
          if (shouldApplyGraphicSettings(a16, v87))
          {
            v172 = lumaBlend_SettingVideo_level1_FG_V2;
            v173 = unk_27E2DA358;
            v174 = xmmword_27E2DA368;
          }

          if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v98 = MEMORY[0x277D86220];
            v99 = " [1.50.3] Film grain level 1 LargeRatio\n";
            goto LABEL_267;
          }
        }
      }

      else
      {
        memcpy(__dst, &iPhone_SettingVideo_light_FG_LargeRatio_V2, 0x22CuLL);
        v188 = downSample_iPhone_SettingVideo_light_FG_LargeRatio_V2;
        v189 = dword_27E2D810C;
        memcpy(v185, &blendLogic_iPhone_SettingVideo_light_FG_LargeRatio_V2, sizeof(v185));
        v181 = objectProtection_iPhone_SettingVideo_light_FG_LargeRatio_V2;
        v182 = unk_27E2D8240;
        *v183 = xmmword_27E2D8250;
        *&v183[12] = *(&xmmword_27E2D8250 + 12);
        if (shouldApplyGraphicSettings(a16, v87))
        {
          v175 = lumaBlend_SettingVideo_light_FG_V2;
          v176 = unk_27E2DA328;
          v177 = xmmword_27E2DA338;
        }

        memcpy(__src, &iPhone_SettingVideo_light_FG_mix_LargeRatio_V2, 0x22CuLL);
        v186 = downSample_iPhone_SettingVideo_light_FG_mix_LargeRatio_V2;
        v187 = dword_27E2D9318;
        memcpy(v184, &blendLogic_iPhone_SettingVideo_light_FG_mix_LargeRatio_V2, sizeof(v184));
        v178 = objectProtection_iPhone_SettingVideo_light_FG_mix_LargeRatio_V2;
        v179 = unk_27E2D944C;
        *v180 = xmmword_27E2D945C;
        *&v180[12] = *(&xmmword_27E2D945C + 12);
        if (shouldApplyGraphicSettings(a16, v87))
        {
          v172 = lumaBlend_SettingVideo_light_FG_V2;
          v173 = unk_27E2DA328;
          v174 = xmmword_27E2DA338;
        }

        if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v98 = MEMORY[0x277D86220];
          v99 = " [1.50.3] Film grain level light LargeRatio\n";
          goto LABEL_267;
        }
      }
    }

    v102 = v95 <= 20;
    if (v95 <= 20)
    {
      v68 = v161 + 1;
    }

    else
    {
      v68 = 0;
    }

    if (v102)
    {
      v103 = 0;
    }

    else
    {
      v103 = v162 + 1;
    }

    if (v164)
    {
      if (v164 == 2)
      {
        if (v103 >= 0x18)
        {
          v62 = 24;
        }

        else
        {
          v62 = v103;
        }

        if (v68 > 0x30)
        {
          v68 = 0;
LABEL_285:
          v63 = 1;
          goto LABEL_286;
        }

LABEL_308:
        memcpy((v17 + 28), __dst, 0x22CuLL);
        *(v17 + 592) = 0;
        *(v17 + 604) = v188;
        *(v17 + 620) = v189;
        memcpy((v17 + 632), v185, 0x120uLL);
        *(v17 + 928) = v181;
        *(v17 + 944) = v182;
        *(v17 + 960) = *v183;
        *(v17 + 972) = *&v183[12];
        *(v17 + 996) = v175;
        *(v17 + 1012) = v176;
        *(v17 + 1028) = v177;
        if (logLevel >= 3)
        {
          v119 = v65;
          v120 = MEMORY[0x277D86220];
          v121 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *v193 = __dst;
            *&v193[8] = 2080;
            v194 = "FG_dyn_setting";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", buf, 0x16u);
          }

          v63 = 2;
          v65 = v119;
          v67 = v160;
          goto LABEL_330;
        }

        v63 = 2;
        goto LABEL_313;
      }

      if (v103 <= 0x18)
      {
        v109 = v103;
      }

      else
      {
        v109 = 0;
      }

      if (v68 <= 0x30)
      {
        if (v103 <= 0x18)
        {
          v63 = v164;
        }

        else
        {
          v63 = 2;
        }

        if (v63 != 2)
        {
          v62 = v109;
          v67 = v160;
LABEL_286:
          memcpy((v17 + 28), __src, 0x22CuLL);
          *(v17 + 592) = 0;
          *(v17 + 604) = v186;
          *(v17 + 620) = v187;
          memcpy((v17 + 632), v184, 0x120uLL);
          *(v17 + 928) = v178;
          *(v17 + 944) = v179;
          *(v17 + 960) = *v180;
          *(v17 + 972) = *&v180[12];
          *(v17 + 996) = v172;
          *(v17 + 1012) = v173;
          *(v17 + 1028) = v174;
          if (logLevel >= 3)
          {
            v104 = v66;
            v105 = v67;
            v106 = v65;
            v107 = MEMORY[0x277D86220];
            v108 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *v193 = __src;
              *&v193[8] = 2080;
              v194 = "Mix_dyn_setting";
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", buf, 0x16u);
            }

            v65 = v106;
            v67 = v105;
            v66 = v104;
            goto LABEL_330;
          }

LABEL_313:
          v64 = v159;
          v54 = a13;
          goto LABEL_43;
        }

        v62 = v109;
        v67 = v160;
        goto LABEL_308;
      }

      v163 = v65;
      v165 = 0;
    }

    else
    {
      if (v68 >= 0x30)
      {
        v68 = 48;
      }

      if (v103 > 0x18)
      {
        v62 = 0;
        goto LABEL_285;
      }

      v165 = v68;
      v163 = v65;
      v109 = v103;
    }

    v110 = (v17 + 604);
    v111 = (v17 + 928);
    v112 = (v17 + 996);
    if (v166)
    {
      if (v158 <= 6)
      {
        memcpy((v17 + 28), &iPhone_SettingVideo_NFG_V2, 0x22CuLL);
        *(v17 + 592) = 0;
        *v110 = downSample_iPhone_SettingVideo_NFG_V2;
        *(v17 + 620) = dword_27E2D5220;
        memcpy((v17 + 632), &blendLogic_iPhone_SettingVideo_NFG_V2, 0x120uLL);
        v113 = unk_27E2D5354;
        *v111 = objectProtection_iPhone_SettingVideo_NFG_V2;
        *(v17 + 944) = v113;
        *(v17 + 960) = xmmword_27E2D5364;
        *(v17 + 972) = *(&xmmword_27E2D5364 + 12);
        if (shouldApplyGraphicSettings(a16, v87))
        {
          v114 = unk_27E2DA3E8;
          *v112 = lumaBlend_SettingVideo_NFG_V2;
          *(v17 + 1012) = v114;
          v115 = xmmword_27E2DA3F8;
        }

        else
        {
          v128 = unk_27E2DA418;
          *v112 = lumaBlend_default;
          *(v17 + 1012) = v128;
          v115 = xmmword_27E2DA428;
        }

        *(v17 + 1028) = v115;
        v68 = v165;
        v62 = v109;
        v67 = v160;
        if (logLevel < 3)
        {
          goto LABEL_329;
        }

        v129 = MEMORY[0x277D86220];
        v130 = MEMORY[0x277D86220];
        if (!os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
LABEL_328:

LABEL_329:
          v63 = 0;
          v65 = v163;
LABEL_330:
          v54 = a13;
          v64 = v159;
          goto LABEL_43;
        }

        *buf = 134218242;
        *v193 = &iPhone_SettingVideo_NFG_V2;
        *&v193[8] = 2080;
        v194 = "iPhone_SettingVideo_NFG_V2";
        v131 = MEMORY[0x277D86220];
LABEL_327:
        _os_log_impl(&dword_23D3F2000, v131, OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", buf, 0x16u);
        goto LABEL_328;
      }

      memcpy((v17 + 28), &SettingVideo_NFG_V2, 0x22CuLL);
      *(v17 + 592) = 0;
      *v110 = downSample_SettingVideo_NFG_V2;
      *(v17 + 620) = dword_27E2D02B8;
      memcpy((v17 + 632), &blendLogic_SettingVideo_NFG_V2, 0x120uLL);
      v122 = unk_27E2D03EC;
      *v111 = objectProtection_SettingVideo_NFG_V2;
      *(v17 + 944) = v122;
      *(v17 + 960) = xmmword_27E2D03FC;
      *(v17 + 972) = *(&xmmword_27E2D03FC + 12);
      if (shouldApplyGraphicSettings(a16, v87))
      {
        v123 = unk_27E2DA3E8;
        *v112 = lumaBlend_SettingVideo_NFG_V2;
        *(v17 + 1012) = v123;
        v124 = xmmword_27E2DA3F8;
      }

      else
      {
        v135 = unk_27E2DA418;
        *v112 = lumaBlend_default;
        *(v17 + 1012) = v135;
        v124 = xmmword_27E2DA428;
      }

      *(v17 + 1028) = v124;
      v68 = v165;
      v62 = v109;
      v67 = v160;
      if (logLevel >= 3)
      {
        v136 = MEMORY[0x277D86220];
        v137 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *v193 = &SettingVideo_NFG_V2;
          *&v193[8] = 2080;
          v194 = "SettingVideo_NFG_V2";
          v138 = MEMORY[0x277D86220];
LABEL_339:
          _os_log_impl(&dword_23D3F2000, v138, OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", buf, 0x16u);
          goto LABEL_340;
        }

        goto LABEL_340;
      }
    }

    else
    {
      if (v158 <= 6)
      {
        memcpy((v17 + 28), &iPhone_SettingVideo_NFG_LargeRatio_V2, 0x22CuLL);
        *(v17 + 592) = 0;
        *v110 = downSample_iPhone_SettingVideo_NFG_LargeRatio_V2;
        *(v17 + 620) = dword_27E2D79D4;
        memcpy((v17 + 632), &blendLogic_iPhone_SettingVideo_NFG_LargeRatio_V2, 0x120uLL);
        v116 = unk_27E2D7B08;
        *v111 = objectProtection_iPhone_SettingVideo_NFG_LargeRatio_V2;
        *(v17 + 944) = v116;
        *(v17 + 960) = xmmword_27E2D7B18;
        *(v17 + 972) = *(&xmmword_27E2D7B18 + 12);
        if (shouldApplyGraphicSettings(a16, v87))
        {
          v117 = unk_27E2DA3E8;
          *v112 = lumaBlend_SettingVideo_NFG_V2;
          *(v17 + 1012) = v117;
          v118 = xmmword_27E2DA3F8;
        }

        else
        {
          v132 = unk_27E2DA418;
          *v112 = lumaBlend_default;
          *(v17 + 1012) = v132;
          v118 = xmmword_27E2DA428;
        }

        *(v17 + 1028) = v118;
        v68 = v165;
        v62 = v109;
        v67 = v160;
        if (logLevel < 3)
        {
          goto LABEL_329;
        }

        v133 = MEMORY[0x277D86220];
        v134 = MEMORY[0x277D86220];
        if (!os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_328;
        }

        *buf = 134218242;
        *v193 = &iPhone_SettingVideo_NFG_LargeRatio_V2;
        *&v193[8] = 2080;
        v194 = "iPhone_SettingVideo_NFG_LargeRatio_V2";
        v131 = MEMORY[0x277D86220];
        goto LABEL_327;
      }

      memcpy((v17 + 28), &SettingVideo_NFG_LargeRatio_V2, 0x22CuLL);
      *(v17 + 592) = 0;
      *v110 = downSample_SettingVideo_NFG_LargeRatio_V2;
      *(v17 + 620) = dword_27E2D2A6C;
      memcpy((v17 + 632), &blendLogic_SettingVideo_NFG_LargeRatio_V2, 0x120uLL);
      v125 = unk_27E2D2BA0;
      *v111 = objectProtection_SettingVideo_NFG_LargeRatio_V2;
      *(v17 + 944) = v125;
      *(v17 + 960) = xmmword_27E2D2BB0;
      *(v17 + 972) = *(&xmmword_27E2D2BB0 + 12);
      if (shouldApplyGraphicSettings(a16, v87))
      {
        v126 = unk_27E2DA3E8;
        *v112 = lumaBlend_SettingVideo_NFG_V2;
        *(v17 + 1012) = v126;
        v127 = xmmword_27E2DA3F8;
      }

      else
      {
        v139 = unk_27E2DA418;
        *v112 = lumaBlend_default;
        *(v17 + 1012) = v139;
        v127 = xmmword_27E2DA428;
      }

      *(v17 + 1028) = v127;
      v68 = v165;
      v62 = v109;
      v67 = v160;
      if (logLevel >= 3)
      {
        v140 = MEMORY[0x277D86220];
        v141 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *v193 = &SettingVideo_NFG_LargeRatio_V2;
          *&v193[8] = 2080;
          v194 = "SettingVideo_NFG_LargeRatio_V2";
          v138 = MEMORY[0x277D86220];
          goto LABEL_339;
        }

LABEL_340:
      }
    }

    v63 = 0;
    v65 = v163;
    v54 = a13;
    v64 = v159;
    goto LABEL_342;
  }

  v54 = a13;
  v55 = a3;
  v56 = a7;
  v57 = a8;
  v58 = v40;
  memcpy((v17 + 28), &InitialSettingVideo_V2, 0x22CuLL);
  *(v17 + 592) = 0;
  *(v17 + 604) = downSample_InitialSettingVideo_V2;
  *(v17 + 620) = dword_27E2CFF1C;
  memcpy((v17 + 632), &blendLogic_InitialSettingVideo_V2, 0x120uLL);
  v59 = unk_27E2D0050;
  *(v17 + 928) = objectProtection_InitialSettingVideo_V2;
  *(v17 + 944) = v59;
  *(v17 + 960) = xmmword_27E2D0060;
  *(v17 + 972) = *(&xmmword_27E2D0060 + 12);
  if (shouldApplyGraphicSettings(a16, a17))
  {
    v60 = &lumaBlend_SettingVideo_Heavy_FG_V2;
  }

  else
  {
    v60 = &lumaBlend_default;
  }

  v61 = v60[1];
  *(v17 + 996) = *v60;
  *(v17 + 1012) = v61;
  *(v17 + 1028) = v60[2];
  if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *v193 = &InitialSettingVideo_V2;
    *&v193[8] = 2080;
    v194 = "InitialSettingVideo_V2";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", buf, 0x16u);
  }

  v62 = 0;
  v171 = 4;
  v63 = 1;
  v64 = v58;
  v65 = v57;
  v66 = v56;
  v67 = v55;
  v68 = 0;
LABEL_43:
  if (v67 < 0x501 || v54 - 2 > 6)
  {
LABEL_342:
    if (v67 >= 0x781 && v54 >= 9)
    {
      *(v17 + 28) = 0;
      *(v17 + 40) = 0;
      *(v17 + 36) = 0;
    }

    goto LABEL_345;
  }

  *(v17 + 28) = 0;
  *(v17 + 40) = 0;
  *(v17 + 36) = 0;
  *(v17 + 52) = 0;
  *(v17 + 64) = 0;
  *(v17 + 76) = 0;
  *(v17 + 88) = 0;
  *(v17 + 100) = 0;
  *(v17 + 112) = 0;
  *(v17 + 124) = 0;
  *(v17 + 136) = 0;
  *(v17 + 264) = vmul_f32(*(v17 + 264), 0x3F0000003F000000);
  *(v17 + 276) = vmul_f32(*(v17 + 276), 0x3F0000003F000000);
  *(v17 + 288) = vmul_f32(*(v17 + 288), 0x3F0000003F000000);
  *(v17 + 300) = vmul_f32(*(v17 + 300), 0x3F0000003F000000);
  *(v17 + 312) = vmul_f32(*(v17 + 312), 0x3F0000003F000000);
  *(v17 + 324) = vmul_f32(*(v17 + 324), 0x3F0000003F000000);
  *(v17 + 336) = vmul_f32(*(v17 + 336), 0x3F0000003F000000);
  *(v17 + 348) = vmul_f32(*(v17 + 348), 0x3F0000003F000000);
  *(v17 + 360) = vmul_f32(*(v17 + 360), 0x3F0000003F000000);
  *(v17 + 372) = vmul_f32(*(v17 + 372), 0x3F0000003F000000);
  *(v17 + 384) = vmul_f32(*(v17 + 384), 0x3F0000003F000000);
  *(v17 + 396) = vmul_f32(*(v17 + 396), 0x3F0000003F000000);
  *(v17 + 408) = vmul_f32(*(v17 + 408), 0x3F0000003F000000);
  *(v17 + 420) = vmul_f32(*(v17 + 420), 0x3F0000003F000000);
  *(v17 + 432) = vmul_f32(*(v17 + 432), 0x3F0000003F000000);
  *(v17 + 444) = vmul_f32(*(v17 + 444), 0x3F0000003F000000);
  if (logLevel < 3)
  {
    goto LABEL_349;
  }

  v69 = v64;
  v70 = MEMORY[0x277D86220];
  v71 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] noDS == 1, set mediumAdaptGain = 0, adjust Hfactor\n", buf, 2u);
  }

  v64 = v69;
LABEL_345:
  if (logLevel >= 3)
  {
    v142 = v64;
    v143 = MEMORY[0x277D86220];
    v144 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] applying the zoneplate fix to all HH02012023\n", buf, 2u);
    }

    v64 = v142;
  }

LABEL_349:
  *(v17 + 32) = 204800;
  *a6 = v171;
  *v66 = v63;
  *v65 = v62;
  *a9 = v68;
  *a10 = a1[16] + a1[15];
  *a11 = a1[32] + a1[31];
  *a12 = v168;
  *(v17 + 564) = v64;
  *(v17 + 568) = v169;
  *(v17 + 572) = v171;
  *(v17 + 576) = 0x400000007;
  if (logLevel >= 3)
  {
    v145 = MEMORY[0x277D86220];
    v146 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
    {
      v147 = *(v17 + 564);
      v148 = *(v17 + 568);
      v149 = *(v17 + 572);
      v150 = *(v17 + 576);
      v151 = *(v17 + 580);
      *buf = 67110144;
      *v193 = v147;
      *&v193[4] = 1024;
      *&v193[6] = v148;
      LOWORD(v194) = 1024;
      *(&v194 + 2) = v149;
      HIWORD(v194) = 1024;
      v195 = v150;
      v196 = 1024;
      v197 = v151;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] aseControlUnit->noiseMeter = config.{ sizeX=%d, sizeY=%d }, gainControl.{ lut0Gain= %d, lut1Gain= %d, lut2Gain= %d }\n", buf, 0x20u);
    }

    if (logLevel >= 3)
    {
      v152 = v145;
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        v153 = *(v17 + 28);
        v155 = *(v17 + 36);
        v154 = *(v17 + 40);
        v156 = *(v17 + 44);
        *buf = 67109888;
        *v193 = v153;
        *&v193[4] = 1024;
        *&v193[6] = v154;
        LOWORD(v194) = 1024;
        *(&v194 + 2) = v155;
        HIWORD(v194) = 1024;
        v195 = v156;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] aseControlUnit->asePixelControl.dsEnable=%d, enhancementConfig.{ebeEnable=%d, peakingEnable=%d, chromaEnhanceEnable=%d}\n", buf, 0x1Au);
      }
    }
  }
}

void calculate_control_setting_V1(int *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int *a6, int *a7, int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, int a13, int a14, int a15, unsigned __int8 a16, int a17)
{
  v18 = a3;
  v166 = *MEMORY[0x277D85DE8];
  v21 = *a6;
  v144 = *a8;
  v145 = *a7;
  v143 = *a9;
  memset(__src, 0, 512);
  memset(&__dst[22], 0, 160);
  v22 = 100 * a1[94];
  v23 = a1[30];
  if (v23 <= a1[46])
  {
    v23 = a1[46];
  }

  memset(&__dst[2], 0, 320);
  v24 = v22 / v23;
  v26 = a3 > 0x383 && a4 > 0x1F3;
  v142 = v26;
  memset(__dst, 0, 32);
  if (a5)
  {
    v27 = a1[16] + a1[15];
    v28 = *a10 - v27;
    v29 = a1[32] + a1[31];
    v30 = *a11;
    v31 = *a12;
    if (v27 > *a10)
    {
      v28 = v27 - *a10;
    }

    if (v27 >= *a10)
    {
      v27 = *a10;
    }

    v32 = v29 - v30;
    if (v29 <= v30)
    {
      v32 = *a11 - v29;
    }

    v33 = 100 * v28 / v27;
    v34 = 100 * v32;
    if (v29 >= v30)
    {
      v35 = *a11;
    }

    else
    {
      v35 = a1[32] + a1[31];
    }

    v36 = v34 / v35;
    if (v33 <= v36)
    {
      v33 = v36;
    }

    v37 = v24 - v31;
    if (v24 <= v31)
    {
      v37 = *a12 - v24;
    }

    v38 = 100 * v37;
    if (v24 >= v31)
    {
      v39 = *a12;
    }

    else
    {
      v39 = v24;
    }

    v40 = v33 + v38 / v39 > 0x64;
  }

  else
  {
    v40 = 0;
  }

  v41 = *a1;
  if (logLevel >= 3)
  {
    v146 = a5;
    v43 = v21;
    v44 = MEMORY[0x277D86220];
    v45 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *a12;
      v47 = a1[16] + a1[15];
      v48 = *a10;
      v49 = a1[32] + a1[31];
      v50 = *a11;
      *buf = 67110656;
      *v157 = v40;
      *&v157[4] = 1024;
      *&v157[6] = v24;
      LOWORD(v158) = 1024;
      *(&v158 + 2) = v46;
      HIWORD(v158) = 1024;
      v159 = v47;
      v160 = 1024;
      v161 = v48;
      v162 = 1024;
      v163 = v49;
      v164 = 1024;
      v165 = v50;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] scene_change_detected = %d, ratio_2D_1D is :%d vs %d; H1 is : %d vs %d,  V1 is: %d vs %d;\n", buf, 0x2Cu);
    }

    v21 = v43;
    v18 = a3;
    a5 = v146;
  }

  v148 = a4 - 22;
  v149 = v18 - 22;
  if (!a5 || (100 * v41 / (v18 - 22) * (a4 - 22)) < 20 || a5 != 1 && v40)
  {
    memcpy((a2 + 28), &InitialSettingVideo_V1, 0x22CuLL);
    if (logLevel < 3)
    {
      v52 = 0;
      v53 = 0;
      v150 = 4;
      v54 = 1;
      v51 = a12;
    }

    else
    {
      v51 = a12;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *v157 = &InitialSettingVideo_V1;
        *&v157[8] = 2080;
        v158 = "InitialSettingVideo";
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", buf, 0x16u);
      }

      v52 = 0;
      v53 = 0;
      v150 = 4;
      v54 = 1;
    }

    goto LABEL_41;
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  do
  {
    v82 += a1[v81 + 23];
    v83 += a1[v81 + 39];
    ++v81;
  }

  while (v81 != 7);
  v84 = 0;
  for (i = 79; i != 94; ++i)
  {
    v84 += a1[i];
  }

  v86 = 10 * a1[46] / v83 + 10 * a1[30] / v82;
  v87 = 10 * a1[94] / v84;
  if (v87 <= 349)
  {
    v86 = 350 * v86 / v87;
  }

  v88 = 0;
  for (j = 47; j != 62; ++j)
  {
    v88 += a1[j];
  }

  HIDWORD(v90) = 1079574528;
  LODWORD(v90) = *a1;
  v91 = v88 * 100.0 / v90;
  if (v91 >= 7.0)
  {
    if (v91 > 8.0)
    {
      if (v21 - 1 <= 4)
      {
        v21 = 4;
      }

      else
      {
        --v21;
      }
    }
  }

  else
  {
    ++v21;
  }

  v150 = v21;
  v147 = a5;
  if (v21 <= 0xE)
  {
    if (v21 < 0xA)
    {
      if (v21 < 6)
      {
        v92 = 0;
      }

      else
      {
        v92 = (50 * v21 - 300) >> 2;
      }
    }

    else
    {
      v92 = ((50 * v21 + 12) & 0xFEu) / 5 + 50;
    }
  }

  else
  {
    v92 = 100;
  }

  if (v86 <= 30)
  {
    if (v86 < 24)
    {
      if (v86 < 12)
      {
        v93 = 100;
      }

      else
      {
        v93 = ((5462 * (50 * (24 - v86))) >> 16) + 50;
      }
    }

    else
    {
      v93 = (10923 * (50 * (30 - v86))) >> 16;
    }
  }

  else
  {
    v93 = 0;
  }

  if (logLevel >= 3)
  {
    v94 = MEMORY[0x277D86220];
    v95 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      *v157 = v147;
      *&v157[4] = 1024;
      *&v157[6] = v92;
      LOWORD(v158) = 1024;
      *(&v158 + 2) = v93;
      HIWORD(v158) = 1024;
      v159 = v86;
      v160 = 1024;
      v161 = a16;
      v162 = 1024;
      v163 = a17;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Frame %d:  Curr_FG_level = %d, Curr_badly_coded_FG_level = %d, No_Bad_coded_FilmGrain_score = %d; inputIsHDR = %d, inputTransferFunction = %d\n", buf, 0x26u);
    }
  }

  v96 = 10 * a1[1] / a1[2];
  if (v96 <= 24)
  {
    if (v96 < 18)
    {
      if (v96 < 12)
      {
        v97 = 0;
      }

      else
      {
        v97 = ((50 * v96 - 88) & 0xFEu) / 6;
      }
    }

    else
    {
      v97 = ((((50 * v96 - 900 - ((9363 * ((50 * v96 - 900) & 0xFFFEu)) >> 16)) >> 1) + ((9363 * ((50 * v96 - 900) & 0xFFFEu)) >> 16)) >> 2) + 50;
    }
  }

  else
  {
    v97 = 100;
  }

  if (logLevel >= 3)
  {
    v98 = MEMORY[0x277D86220];
    v99 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v157 = v147;
      *&v157[4] = 1024;
      *&v157[6] = v97;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] 06122025 Frame %d:  Curr_GFX_level = %d \n", buf, 0xEu);
    }
  }

  if (v92 <= v93)
  {
    v100 = v93;
  }

  else
  {
    v100 = v92;
  }

  if (v100 <= v97)
  {
    v100 = v97;
  }

  if (overrideFGLevel == -1)
  {
    v101 = v100;
  }

  else
  {
    v101 = overrideFGLevel;
  }

  if (a13 == 1)
  {
    v51 = a12;
    v102 = v142;
    if (logLevel >= 4)
    {
      v103 = MEMORY[0x277D86220];
      v104 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Apply iPhone control setting V1\n", buf, 2u);
      }
    }

    if (v142)
    {
      if (v101 > 29)
      {
        if (v101 > 0x31)
        {
          if (v101 > 0x45)
          {
            if (v101 > 0x5E)
            {
              memcpy(__dst, &iPhone_SettingVideo_Heavy_FG_V1, 0x22CuLL);
              memcpy(__src, &iPhone_SettingVideo_Heavy_FG_mix_V1, 0x22CuLL);
              if (logLevel < 3)
              {
                goto LABEL_208;
              }

              v125 = MEMORY[0x277D86220];
              v126 = MEMORY[0x277D86220];
              if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_203;
              }

              *buf = 0;
              v107 = MEMORY[0x277D86220];
              v108 = " [1.50.3] Film grain level heavy\n";
            }

            else
            {
              memcpy(__dst, &iPhone_SettingVideo_level3_FG_V1, 0x22CuLL);
              memcpy(__src, &iPhone_SettingVideo_level3_FG_mix_V1, 0x22CuLL);
              if (logLevel < 3)
              {
                goto LABEL_208;
              }

              v121 = MEMORY[0x277D86220];
              v122 = MEMORY[0x277D86220];
              if (!os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_203;
              }

              *buf = 0;
              v107 = MEMORY[0x277D86220];
              v108 = " [1.50.3] Film grain level 3\n";
            }
          }

          else
          {
            memcpy(__dst, &iPhone_SettingVideo_level2_FG_V1, 0x22CuLL);
            memcpy(__src, &iPhone_SettingVideo_level2_FG_mix_V1, 0x22CuLL);
            if (logLevel < 3)
            {
              goto LABEL_208;
            }

            v117 = MEMORY[0x277D86220];
            v118 = MEMORY[0x277D86220];
            if (!os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_203;
            }

            *buf = 0;
            v107 = MEMORY[0x277D86220];
            v108 = " [1.50.3] Film grain level 2\n";
          }
        }

        else
        {
          memcpy(__dst, &iPhone_SettingVideo_level1_FG_V1, 0x22CuLL);
          memcpy(__src, &iPhone_SettingVideo_level1_FG_mix_V1, 0x22CuLL);
          if (logLevel < 3)
          {
            goto LABEL_208;
          }

          v113 = MEMORY[0x277D86220];
          v114 = MEMORY[0x277D86220];
          if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_203;
          }

          *buf = 0;
          v107 = MEMORY[0x277D86220];
          v108 = " [1.50.3] Film grain level 1\n";
        }
      }

      else
      {
        memcpy(__dst, &iPhone_SettingVideo_light_FG_V1, 0x22CuLL);
        memcpy(__src, &iPhone_SettingVideo_light_FG_mix_V1, 0x22CuLL);
        if (logLevel < 3)
        {
          goto LABEL_208;
        }

        v105 = MEMORY[0x277D86220];
        v106 = MEMORY[0x277D86220];
        if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_203;
        }

        *buf = 0;
        v107 = MEMORY[0x277D86220];
        v108 = " [1.50.3] Film grain level light\n";
      }
    }

    else if (v101 > 29)
    {
      if (v101 > 0x31)
      {
        if (v101 > 0x45)
        {
          if (v101 > 0x5E)
          {
            memcpy(__dst, &iPhone_SettingVideo_Heavy_FG_LargeRatio_V1, 0x22CuLL);
            memcpy(__src, &iPhone_SettingVideo_Heavy_FG_mix_LargeRatio_V1, 0x22CuLL);
            if (logLevel < 3)
            {
              goto LABEL_208;
            }

            v127 = MEMORY[0x277D86220];
            v128 = MEMORY[0x277D86220];
            if (!os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_203;
            }

            *buf = 0;
            v107 = MEMORY[0x277D86220];
            v108 = " [1.50.3] Film grain level heavy LargeRatio\n";
          }

          else
          {
            memcpy(__dst, &iPhone_SettingVideo_level3_FG_LargeRatio_V1, 0x22CuLL);
            memcpy(__src, &iPhone_SettingVideo_level3_FG_mix_LargeRatio_V1, 0x22CuLL);
            if (logLevel < 3)
            {
              goto LABEL_208;
            }

            v123 = MEMORY[0x277D86220];
            v124 = MEMORY[0x277D86220];
            if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_203;
            }

            *buf = 0;
            v107 = MEMORY[0x277D86220];
            v108 = " [1.50.3] Film grain level 3 LargeRatio\n";
          }
        }

        else
        {
          memcpy(__dst, &iPhone_SettingVideo_level2_FG_LargeRatio_V1, 0x22CuLL);
          memcpy(__src, &iPhone_SettingVideo_level2_FG_mix_LargeRatio_V1, 0x22CuLL);
          if (logLevel < 3)
          {
            goto LABEL_208;
          }

          v119 = MEMORY[0x277D86220];
          v120 = MEMORY[0x277D86220];
          if (!os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_203;
          }

          *buf = 0;
          v107 = MEMORY[0x277D86220];
          v108 = " [1.50.3] Film grain level 2 LargeRatio\n";
        }
      }

      else
      {
        memcpy(__dst, &iPhone_SettingVideo_level1_FG_LargeRatio_V1, 0x22CuLL);
        memcpy(__src, &iPhone_SettingVideo_level1_FG_mix_LargeRatio_V1, 0x22CuLL);
        if (logLevel < 3)
        {
          goto LABEL_208;
        }

        v115 = MEMORY[0x277D86220];
        v116 = MEMORY[0x277D86220];
        if (!os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_203;
        }

        *buf = 0;
        v107 = MEMORY[0x277D86220];
        v108 = " [1.50.3] Film grain level 1 LargeRatio\n";
      }
    }

    else
    {
      memcpy(__dst, &iPhone_SettingVideo_light_FG_LargeRatio_V1, 0x22CuLL);
      memcpy(__src, &iPhone_SettingVideo_light_FG_mix_LargeRatio_V1, 0x22CuLL);
      if (logLevel < 3)
      {
        goto LABEL_208;
      }

      v111 = MEMORY[0x277D86220];
      v112 = MEMORY[0x277D86220];
      if (!os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_203;
      }

      *buf = 0;
      v107 = MEMORY[0x277D86220];
      v108 = " [1.50.3] Film grain level light LargeRatio\n";
    }

    _os_log_impl(&dword_23D3F2000, v107, OS_LOG_TYPE_DEFAULT, v108, buf, 2u);
LABEL_203:

    goto LABEL_208;
  }

  v51 = a12;
  v102 = v142;
  if (v142)
  {
    if (v101 > 29)
    {
      if (v101 > 0x31)
      {
        if (v101 > 0x45)
        {
          if (v101 > 0x5E)
          {
            memcpy(__dst, &SettingVideo_Heavy_FG_V1, 0x22CuLL);
            memcpy(__src, &SettingVideo_Heavy_FG_mix_V1, 0x22CuLL);
            if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_208;
            }

            *buf = 0;
            v109 = MEMORY[0x277D86220];
            v110 = " [1.50.3] Film grain level heavy\n";
          }

          else
          {
            memcpy(__dst, &SettingVideo_level3_FG_V1, 0x22CuLL);
            memcpy(__src, &SettingVideo_level3_FG_mix_V1, 0x22CuLL);
            if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_208;
            }

            *buf = 0;
            v109 = MEMORY[0x277D86220];
            v110 = " [1.50.3] Film grain level 3\n";
          }
        }

        else
        {
          memcpy(__dst, &SettingVideo_level2_FG_V1, 0x22CuLL);
          memcpy(__src, &SettingVideo_level2_FG_mix_V1, 0x22CuLL);
          if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_208;
          }

          *buf = 0;
          v109 = MEMORY[0x277D86220];
          v110 = " [1.50.3] Film grain level 2\n";
        }
      }

      else
      {
        memcpy(__dst, &SettingVideo_level1_FG_V1, 0x22CuLL);
        memcpy(__src, &SettingVideo_level1_FG_mix_V1, 0x22CuLL);
        if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_208;
        }

        *buf = 0;
        v109 = MEMORY[0x277D86220];
        v110 = " [1.50.3] Film grain level 1\n";
      }
    }

    else
    {
      memcpy(__dst, &SettingVideo_light_FG_V1, 0x22CuLL);
      memcpy(__src, &SettingVideo_light_FG_mix_V1, 0x22CuLL);
      if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_208;
      }

      *buf = 0;
      v109 = MEMORY[0x277D86220];
      v110 = " [1.50.3] Film grain level light\n";
    }
  }

  else if (v101 > 29)
  {
    if (v101 > 0x31)
    {
      if (v101 > 0x45)
      {
        if (v101 > 0x5E)
        {
          memcpy(__dst, &SettingVideo_Heavy_FG_LargeRatio_V1, 0x22CuLL);
          memcpy(__src, &SettingVideo_Heavy_FG_mix_LargeRatio_V1, 0x22CuLL);
          if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_208;
          }

          *buf = 0;
          v109 = MEMORY[0x277D86220];
          v110 = " [1.50.3] Film grain level heavy LargeRatio\n";
        }

        else
        {
          memcpy(__dst, &SettingVideo_level3_FG_LargeRatio_V1, 0x22CuLL);
          memcpy(__src, &SettingVideo_level3_FG_mix_LargeRatio_V1, 0x22CuLL);
          if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_208;
          }

          *buf = 0;
          v109 = MEMORY[0x277D86220];
          v110 = " [1.50.3] Film grain level 3 LargeRatio\n";
        }
      }

      else
      {
        memcpy(__dst, &SettingVideo_level2_FG_LargeRatio_V1, 0x22CuLL);
        memcpy(__src, &SettingVideo_level2_FG_mix_LargeRatio_V1, 0x22CuLL);
        if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_208;
        }

        *buf = 0;
        v109 = MEMORY[0x277D86220];
        v110 = " [1.50.3] Film grain level 2 LargeRatio\n";
      }
    }

    else
    {
      memcpy(__dst, &SettingVideo_level1_FG_LargeRatio_V1, 0x22CuLL);
      memcpy(__src, &SettingVideo_level1_FG_mix_LargeRatio_V1, 0x22CuLL);
      if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_208;
      }

      *buf = 0;
      v109 = MEMORY[0x277D86220];
      v110 = " [1.50.3] Film grain level 1 LargeRatio\n";
    }
  }

  else
  {
    memcpy(__dst, &SettingVideo_light_FG_LargeRatio_V1, 0x22CuLL);
    memcpy(__src, &SettingVideo_light_FG_mix_LargeRatio_V1, 0x22CuLL);
    if (logLevel < 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_208;
    }

    *buf = 0;
    v109 = MEMORY[0x277D86220];
    v110 = " [1.50.3] Film grain level light LargeRatio\n";
  }

  _os_log_impl(&dword_23D3F2000, v109, OS_LOG_TYPE_DEFAULT, v110, buf, 2u);
LABEL_208:
  v129 = v101 <= 20;
  if (v101 <= 20)
  {
    v52 = v143 + 1;
  }

  else
  {
    v52 = 0;
  }

  if (v129)
  {
    v130 = 0;
  }

  else
  {
    v130 = v144 + 1;
  }

  if (!v145)
  {
    if (v52 >= 0x30)
    {
      v52 = 48;
    }

    if (v130 > 0x18)
    {
      v53 = 0;
      goto LABEL_225;
    }

    v53 = v130;
    if (!v102)
    {
      goto LABEL_235;
    }

    goto LABEL_238;
  }

  if (v145 != 2)
  {
    if (v130 <= 0x18)
    {
      v53 = v130;
    }

    else
    {
      v53 = 0;
    }

    if (v52 <= 0x30)
    {
      if (v130 <= 0x18)
      {
        v54 = v145;
      }

      else
      {
        v54 = 2;
      }

      if (v54 != 2)
      {
LABEL_226:
        memcpy((a2 + 28), __src, 0x22CuLL);
        if (logLevel >= 3)
        {
          v131 = MEMORY[0x277D86220];
          v132 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *v157 = __src;
            *&v157[8] = 2080;
            v158 = "Mix_dyn_setting";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", buf, 0x16u);
          }
        }

        goto LABEL_41;
      }

      goto LABEL_244;
    }

    v52 = 0;
    if (!v102)
    {
LABEL_235:
      if (a13 == 1)
      {
        v133 = &iPhone_SettingVideo_NFG_LargeRatio_V1;
      }

      else
      {
        v133 = &SettingVideo_NFG_LargeRatio_V1;
      }

      memcpy((a2 + 28), v133, 0x22CuLL);
      if (logLevel >= 3)
      {
        v137 = MEMORY[0x277D86220];
        v138 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *v157 = &SettingVideo_NFG_LargeRatio_V1;
          *&v157[8] = 2080;
          v158 = "SettingVideo_NFG LargeRatio";
          v139 = MEMORY[0x277D86220];
LABEL_257:
          _os_log_impl(&dword_23D3F2000, v139, OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", buf, 0x16u);
          goto LABEL_258;
        }

        goto LABEL_258;
      }

      goto LABEL_259;
    }

LABEL_238:
    if (a13 == 1)
    {
      v134 = &iPhone_SettingVideo_NFG_V1;
    }

    else
    {
      v134 = &SettingVideo_NFG_V1;
    }

    memcpy((a2 + 28), v134, 0x22CuLL);
    if (logLevel >= 3)
    {
      v140 = MEMORY[0x277D86220];
      v141 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *v157 = &SettingVideo_NFG_V1;
        *&v157[8] = 2080;
        v158 = "SettingVideo_NFG";
        v139 = MEMORY[0x277D86220];
        goto LABEL_257;
      }

LABEL_258:

      v54 = 0;
      goto LABEL_41;
    }

LABEL_259:
    v54 = 0;
    goto LABEL_41;
  }

  if (v130 >= 0x18)
  {
    v53 = 24;
  }

  else
  {
    v53 = v130;
  }

  if (v52 > 0x30)
  {
    v52 = 0;
LABEL_225:
    v54 = 1;
    goto LABEL_226;
  }

LABEL_244:
  memcpy((a2 + 28), __dst, 0x22CuLL);
  if (logLevel < 3)
  {
    v54 = 2;
  }

  else
  {
    v135 = MEMORY[0x277D86220];
    v136 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *v157 = __dst;
      *&v157[8] = 2080;
      v158 = "FG_dyn_setting";
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl[%p]=%s\n", buf, 0x16u);
    }

    v54 = 2;
  }

LABEL_41:
  v55 = (a2 + 276);
  if (v18 >= 0x501 && a13 == 1)
  {
    *(a2 + 28) = 0;
    *(a2 + 40) = 0;
    *(a2 + 36) = 0;
    *(a2 + 52) = 0;
    *(a2 + 64) = 0;
    *(a2 + 76) = 0;
    *(a2 + 88) = 0;
    *(a2 + 100) = 0;
    *(a2 + 112) = 0;
    *(a2 + 124) = 0;
    *(a2 + 136) = 0;
    *(a2 + 264) = vmul_f32(*(a2 + 264), 0x3F0000003F000000);
    *v55 = vmul_f32(*v55, 0x3F0000003F000000);
    *(a2 + 288) = vmul_f32(*(a2 + 288), 0x3F0000003F000000);
    *(a2 + 300) = vmul_f32(*(a2 + 300), 0x3F0000003F000000);
    *(a2 + 312) = vmul_f32(*(a2 + 312), 0x3F0000003F000000);
    *(a2 + 324) = vmul_f32(*(a2 + 324), 0x3F0000003F000000);
    *(a2 + 336) = vmul_f32(*(a2 + 336), 0x3F0000003F000000);
    *(a2 + 348) = vmul_f32(*(a2 + 348), 0x3F0000003F000000);
    *(a2 + 360) = vmul_f32(*(a2 + 360), 0x3F0000003F000000);
    *(a2 + 372) = vmul_f32(*(a2 + 372), 0x3F0000003F000000);
    *(a2 + 384) = vmul_f32(*(a2 + 384), 0x3F0000003F000000);
    *(a2 + 396) = vmul_f32(*(a2 + 396), 0x3F0000003F000000);
    *(a2 + 408) = vmul_f32(*(a2 + 408), 0x3F0000003F000000);
    *(a2 + 420) = vmul_f32(*(a2 + 420), 0x3F0000003F000000);
    *(a2 + 432) = vmul_f32(*(a2 + 432), 0x3F0000003F000000);
    *(a2 + 444) = vmul_f32(*(a2 + 444), 0x3F0000003F000000);
    if (logLevel < 3)
    {
      goto LABEL_60;
    }

    v56 = MEMORY[0x277D86220];
    v57 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] noDS == 1, set mediumAdaptGain = 0, adjust Hfactor\n", buf, 2u);
    }
  }

  if (logLevel >= 3)
  {
    v58 = MEMORY[0x277D86220];
    v59 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(a2 + 452);
      *buf = 134217984;
      *v157 = v60;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl->blendLogicCurve.point0.x_position=%f\n", buf, 0xCu);
    }

    if (logLevel >= 3)
    {
      v61 = MEMORY[0x277D86220];
      v62 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v63 = *(a2 + 456);
        *buf = 134217984;
        *v157 = v63;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl->blendLogicCurve.point0.y_position=%f\n", buf, 0xCu);
      }

      if (logLevel >= 3)
      {
        v64 = MEMORY[0x277D86220];
        v65 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(a2 + 460);
          *buf = 134217984;
          *v157 = v66;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl->blendLogicCurve.point0.slope=%f\n", buf, 0xCu);
        }
      }
    }
  }

  if (v18 >= 0x76D && a13 == 10)
  {
    *(a2 + 28) = 0;
    *(a2 + 52) = 0;
    *(a2 + 64) = 0;
    *(a2 + 76) = 0;
    *(a2 + 88) = 0;
    *(a2 + 100) = 0;
    *(a2 + 112) = 0;
    *(a2 + 124) = 0;
    *(a2 + 136) = 0;
    __asm { FMOV            V1.2S, #0.25 }

    *(a2 + 264) = vmul_f32(*(a2 + 264), _D1);
    *v55 = vmul_f32(*v55, _D1);
    *(a2 + 288) = vmul_f32(*(a2 + 288), _D1);
    *(a2 + 300) = vmul_f32(*(a2 + 300), _D1);
    *(a2 + 312) = vmul_f32(*(a2 + 312), _D1);
    *(a2 + 324) = vmul_f32(*(a2 + 324), _D1);
    *(a2 + 336) = vmul_f32(*(a2 + 336), _D1);
    *(a2 + 348) = vmul_f32(*(a2 + 348), _D1);
    *(a2 + 360) = vmul_f32(*(a2 + 360), _D1);
    *(a2 + 372) = vmul_f32(*(a2 + 372), _D1);
    *(a2 + 384) = vmul_f32(*(a2 + 384), _D1);
    *(a2 + 396) = vmul_f32(*(a2 + 396), _D1);
    *(a2 + 408) = vmul_f32(*(a2 + 408), _D1);
    *(a2 + 420) = vmul_f32(*(a2 + 420), _D1);
    *(a2 + 432) = vmul_f32(*(a2 + 432), _D1);
    *(a2 + 444) = vmul_f32(*(a2 + 444), _D1);
  }

LABEL_60:
  if (v18 >= 0x781)
  {
    *(a2 + 28) = 0;
    *(a2 + 40) = 0;
    *(a2 + 36) = 0;
  }

  if (logLevel >= 3)
  {
    v72 = MEMORY[0x277D86220];
    v73 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]  applying the fix to all HH02012023\n", buf, 2u);
    }
  }

  *(a2 + 32) = 204800;
  *(a2 + 456) = vmul_f32(*(a2 + 456), 0x3F0000003F000000);
  *(a2 + 468) = vmul_f32(*(a2 + 468), 0x3F0000003F000000);
  *(a2 + 480) = vmul_f32(*(a2 + 480), 0x3F0000003F000000);
  *(a2 + 492) = vmul_f32(*(a2 + 492), 0x3F0000003F000000);
  *(a2 + 504) = vmul_f32(*(a2 + 504), 0x3F0000003F000000);
  *(a2 + 516) = vmul_f32(*(a2 + 516), 0x3F0000003F000000);
  *(a2 + 528) = vmul_f32(*(a2 + 528), 0x3F0000003F000000);
  *(a2 + 540) = vmul_f32(*(a2 + 540), 0x3F0000003F000000);
  *a6 = v150;
  *a7 = v54;
  *a8 = v53;
  *a9 = v52;
  *a10 = a1[16] + a1[15];
  *a11 = a1[32] + a1[31];
  *v51 = v24;
  *(a2 + 564) = v149;
  *(a2 + 568) = v148;
  *(a2 + 572) = v150;
  *(a2 + 576) = 0x400000007;
  if (logLevel >= 3)
  {
    v74 = MEMORY[0x277D86220];
    v75 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v76 = *(a2 + 564);
      v77 = *(a2 + 568);
      v78 = *(a2 + 572);
      v79 = *(a2 + 576);
      v80 = *(a2 + 580);
      *buf = 67110144;
      *v157 = v76;
      *&v157[4] = 1024;
      *&v157[6] = v77;
      LOWORD(v158) = 1024;
      *(&v158 + 2) = v78;
      HIWORD(v158) = 1024;
      v159 = v79;
      v160 = 1024;
      v161 = v80;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] pixelControl->noiseMeter = config.{ sizeX=%d, sizeY=%d }, gainControl.{ lut0Gain= %d, lut1Gain= %d, lut2Gain= %d }\n", buf, 0x20u);
    }
  }
}

CFIndex updateConfigsPerFrame()
{
  keyExistsAndHasValidFormat = 1;
  result = CFPreferencesGetAppIntegerValue(@"readDefaultsWriteEnabled", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = result;
  }

  else
  {
    v1 = 0;
  }

  readDefaultsWriteEnabled = v1;
  if (v1)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"logLevel", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
    v3 = 4;
    if (AppIntegerValue < 4)
    {
      v3 = AppIntegerValue;
    }

    if (keyExistsAndHasValidFormat)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    logLevel = v4;
    v5 = CFPreferencesGetAppIntegerValue(@"disableHcuCache", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    disableHcuCache = v6;
    v7 = CFPreferencesGetAppIntegerValue(@"hideHcu", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    hideHcu = v8;
    v9 = CFPreferencesGetAppIntegerValue(@"dumpOutputHcu", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    dumpOutputHcu = v10;
    v11 = CFPreferencesGetAppIntegerValue(@"disableSampleShift", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    disableSampleShift = v12;
    v13 = CFPreferencesGetAppIntegerValue(@"overrideEnhancement", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v14 = v13 / 100.0;
    }

    else
    {
      v14 = -1.0;
    }

    overrideEnhancement = LODWORD(v14);
    v15 = CFPreferencesGetAppIntegerValue(@"inputType", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v16 = v15;
    }

    else
    {
      v16 = -1;
    }

    overrideInputType = v16;
    v17 = CFPreferencesGetAppIntegerValue(@"inputTransferFunction", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v18 = v17;
    }

    else
    {
      v18 = -1;
    }

    overrideInputTransferFunction = v18;
    result = CFPreferencesGetAppIntegerValue(@"overrideFGLevel", @"com.apple.aseprocessing", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v19 = result;
    }

    else
    {
      v19 = -1;
    }

    overrideFGLevel = v19;
  }

  return result;
}

char *getASEProcessingType(unsigned int a1)
{
  if (a1 >= 9)
  {
    v1 = 9;
  }

  else
  {
    v1 = a1;
  }

  return aseProcessingTypes[v1];
}

void createCacheNode_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: size == sizeof(ASEHcuCacheNodeValueBlend) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingCache.m at line 40\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("createCacheNode", "ASEProcessingCache.m", 40, "size == sizeof(ASEHcuCacheNodeValueBlend)");
}

void createCacheNode_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: size == sizeof(ASEHcuCacheNodeValueEbe) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingCache.m at line 36\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("createCacheNode", "ASEProcessingCache.m", 36, "size == sizeof(ASEHcuCacheNodeValueEbe)");
}

void createCacheNode_cold_3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: size == sizeof(ASEHcuCacheNodeValuePeaking) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingCache.m at line 32\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("createCacheNode", "ASEProcessingCache.m", 32, "size == sizeof(ASEHcuCacheNodeValuePeaking)");
}

void createCacheNode_cold_4()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingCache.m at line 44\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("createCacheNode", "ASEProcessingCache.m", 44, "0");
}

void getMSRBaseAddr_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 146\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("getMSRBaseAddr", "ASEProcessingT1.m", 146, "0");
}

void copyArray_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: count <= 16 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASECalculateControlSettingV3.m at line 142\n", v0, 2u);
  }

  __assert_rtn("copyArray", "ASECalculateControlSettingV3.m", 142, "count <= 16");
}