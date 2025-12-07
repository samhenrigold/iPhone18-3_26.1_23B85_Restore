uint64_t vinyl_zipWriteInFileInZip(uint64_t a1, const Bytef *a2, uInt a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 16648) = crc32(*(a1 + 16648), a2, a3);
  while (*(a1 + 104))
  {
    v4 = *(a1 + 128);
    if (v4 || (result = zipFlushWriteBuffer(a1), v4 = 0x4000, *(a1 + 128) = 0x4000, *(a1 + 120) = a1 + 256, result != -1))
    {
      if (*(a1 + 248) == 8 && !*(a1 + 252))
      {
        v10 = *(a1 + 136);
        result = deflate((a1 + 96), 0);
        LODWORD(v7) = *(a1 + 136) - v10;
      }

      else
      {
        v6 = *(a1 + 104);
        v7 = v6 >= v4 ? v4 : v6;
        if (v6)
        {
          v8 = 0;
          do
          {
            *(*(a1 + 120) + v8) = *(*(a1 + 96) + v8);
            ++v8;
          }

          while (v7 != v8);
          v6 = *(a1 + 104);
          v4 = *(a1 + 128);
        }

        result = 0;
        *(a1 + 104) = v6 - v7;
        *(a1 + 128) = v4 - v7;
        *(a1 + 96) += v7;
        v9 = *(a1 + 120) + v7;
        *(a1 + 112) += v7;
        *(a1 + 120) = v9;
        *(a1 + 136) += v7;
      }

      *(a1 + 212) += v7;
      if (!result)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t zipFlushWriteBuffer(uint64_t a1)
{
  v2 = *(a1 + 212);
  if (*(a1 + 16656) && v2)
  {
    v3 = (a1 + 256);
    v4 = *(a1 + 212);
    do
    {
      v5 = *(a1 + 16680);
      v6 = *(a1 + 16688);
      v7 = *(v6 + 8 * (*v3 ^ *(a1 + 16664))) ^ (*(a1 + 16664) >> 8);
      *(a1 + 16664) = v7;
      v8 = 134775813 * (*(a1 + 16672) + v7) + 1;
      *(a1 + 16672) = v8;
      *(a1 + 16680) = *(v6 + 8 * (v5 ^ BYTE3(v8))) ^ (v5 >> 8);
      *v3++ ^= ((v5 & 0xFFFD ^ 3) * (v5 | 2)) >> 8;
      --v4;
    }

    while (v4);
  }

  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), a1 + 256, v2) == *(a1 + 212))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(a1 + 212) = 0;
  return result;
}

uint64_t vinyl_zipCloseFileInZipRaw(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1 || !*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 104) = 0;
  if (*(a1 + 248) == 8)
  {
    do
    {
      if (!*(a1 + 128))
      {
        v33 = zipFlushWriteBuffer(a1);
        *(a1 + 128) = 0x4000;
        *(a1 + 120) = a1 + 256;
        if (v33 == -1)
        {
          v6 = 0xFFFFFFFFLL;
          goto LABEL_9;
        }
      }

      v34 = *(a1 + 136);
      v35 = deflate((a1 + 96), 4);
      *(a1 + 212) += *(a1 + 136) - v34;
    }

    while (!v35);
    if (v35 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v35;
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 212))
  {
    if (zipFlushWriteBuffer(a1) == -1)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_9:
  if (*(a1 + 248) == 8 && !(*(a1 + 252) | v6))
  {
    v6 = deflateEnd((a1 + 96));
    *(a1 + 208) = 0;
  }

  if (!*(a1 + 252))
  {
    a3 = *(a1 + 16648);
    a2 = *(a1 + 112);
  }

  v7 = 0;
  v8 = *(a1 + 136);
  v9 = *(a1 + 16696);
  v10 = (*(a1 + 224) + 16);
  v11 = a3;
  do
  {
    v12 = v11;
    *(v10 + v7) = v11;
    v11 >>= 8;
    ++v7;
  }

  while (v7 != 4);
  v13 = v8 + v9;
  if (v12 >= 0x100)
  {
    *v10 = -1;
  }

  v14 = 0;
  v15 = (*(a1 + 224) + 20);
  v16 = v8 + v9;
  do
  {
    v17 = v16;
    *(v15 + v14) = v16;
    v16 >>= 8;
    ++v14;
  }

  while (v14 != 4);
  if (v17 >= 0x100)
  {
    *v15 = -1;
  }

  if (*(a1 + 184) == 1)
  {
    *(*(a1 + 224) + 36) = 1;
  }

  v18 = 0;
  v19 = (*(a1 + 224) + 24);
  v20 = a2;
  do
  {
    v21 = v20;
    *(v19 + v18) = v20;
    v20 >>= 8;
    ++v18;
  }

  while (v18 != 4);
  if (v21 >= 0x100)
  {
    *v19 = -1;
  }

  if (v6)
  {
    free(*(a1 + 224));
  }

  else
  {
    v6 = add_data_in_datablock((a1 + 72), *(a1 + 224), *(a1 + 232));
    free(*(a1 + 224));
    if (!v6)
    {
      v22 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 216) + 14, 0))
      {
        goto LABEL_58;
      }

      v23 = 0;
      v24 = *(a1 + 64);
      do
      {
        v25 = a3;
        *(&v37 + v23) = a3;
        a3 >>= 8;
        ++v23;
      }

      while (v23 != 4);
      if (v25 >= 0x100)
      {
        v37 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v24, &v37, 4) != 4)
      {
        goto LABEL_58;
      }

      v26 = 0;
      v27 = *(a1 + 64);
      do
      {
        v28 = v13;
        *(&v38 + v26) = v13;
        v13 >>= 8;
        ++v26;
      }

      while (v26 != 4);
      if (v28 >= 0x100)
      {
        v38 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v27, &v38, 4) == 4)
      {
        v29 = 0;
        v30 = *(a1 + 64);
        do
        {
          v31 = a2;
          *(&v39 + v29) = a2;
          a2 >>= 8;
          ++v29;
        }

        while (v29 != 4);
        if (v31 >= 0x100)
        {
          v39 = -1;
        }

        if ((*(a1 + 16))(*(a1 + 56), v30, &v39, 4) == 4)
        {
          v32 = 0;
        }

        else
        {
          v32 = -1;
        }
      }

      else
      {
LABEL_58:
        v32 = -1;
      }

      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v22, 0))
      {
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        v6 = v32;
      }
    }
  }

  ++*(a1 + 16720);
  *(a1 + 88) = 0;
  return v6;
}

uint64_t vinyl_zipClose(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a2;
  if (*(a1 + 88) != 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v6 = strlen(v2);
    goto LABEL_9;
  }

  v4 = vinyl_zipCloseFileInZipRaw(a1, 0, 0);
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v2 = *(a1 + 16728);
  if (v2)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  v7 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  if (!v4)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v8 = 0;
      v4 = 0;
      do
      {
        v10 = v9[2];
        if (v4)
        {
          v4 = -1;
        }

        else if (v10)
        {
          v11 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v9 + 4);
          v10 = v9[2];
          if (v11 == v10)
          {
            v4 = 0;
          }

          else
          {
            v4 = -1;
          }
        }

        else
        {
          v4 = 0;
        }

        v8 += v10;
        v9 = *v9;
      }

      while (v9);
      goto LABEL_21;
    }

    v4 = 0;
  }

  v8 = 0;
LABEL_21:
  v12 = *(a1 + 72);
  if (v12)
  {
    do
    {
      v13 = *v12;
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  if (!v4)
  {
    v31 = 101010256;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v14 = *(a1 + 64);
    v15 = *(a1 + 16720);
    LOWORD(v31) = v15;
    if (v15 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v14, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v16 = *(a1 + 64);
    v17 = *(a1 + 16720);
    LOWORD(v31) = v17;
    if (v17 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v16, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v18 = 0;
    v19 = *(a1 + 64);
    do
    {
      v20 = v8;
      *(&v31 + v18) = v8;
      v8 >>= 8;
      ++v18;
    }

    while (v18 != 4);
    if (v20 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v19, &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    v21 = 0;
    v22 = *(a1 + 64);
    v23 = v7 - *(a1 + 16712);
    do
    {
      v24 = v23;
      *(&v31 + v21) = v23;
      v23 >>= 8;
      ++v21;
    }

    while (v21 != 4);
    if (v24 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v22, &v31, 4) == 4)
    {
      v25 = *(a1 + 64);
      LOWORD(v31) = v6;
      if (v6 >= 0x10000)
      {
        LOWORD(v31) = -1;
      }

      v26 = (*(a1 + 16))(*(a1 + 56), v25, &v31, 2);
      if (v26 == 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = -1;
      }

      if (v26 == 2 && v6)
      {
        if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v2, v6) == v6)
        {
          v4 = 0;
        }

        else
        {
          v4 = -1;
        }
      }
    }

    else
    {
LABEL_53:
      v4 = -1;
    }
  }

  v27 = (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  if (v4)
  {
    v28 = v4;
  }

  else
  {
    v28 = -1;
  }

  if (v27)
  {
    v5 = v28;
  }

  else
  {
    v5 = v4;
  }

  v29 = *(a1 + 16728);
  if (v29)
  {
    free(v29);
  }

  free(a1);
  return v5;
}

char *init_keys(char *result, void *a2, uint64_t a3)
{
  *a2 = xmmword_299FE2E80;
  a2[2] = 878082192;
  v3 = *result;
  if (*result)
  {
    v6 = result + 1;
    do
    {
      result = update_keys(a2, a3, v3);
      v7 = *v6++;
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

uint64_t update_keys(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8 * (*a1 ^ a3)) ^ (*a1 >> 8);
  v4 = 134775813 * (a1[1] + v3) + 1;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *(a2 + 8 * (a1[2] ^ BYTE3(v4))) ^ (a1[2] >> 8);
  return a3;
}

uint64_t Options::Options(uint64_t a1, const __CFDictionary **a2)
{
  v62 = *MEMORY[0x29EDCA608];
  *a1 = 255;
  *(a1 + 4) = 0;
  v4 = (a1 + 4);
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "");
  *(a1 + 80) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 88), "");
  v5 = (a1 + 112);
  std::string::basic_string[abi:ne200100]<0>((a1 + 112), "");
  *(a1 + 136) = 0;
  v6 = (a1 + 144);
  std::string::basic_string[abi:ne200100]<0>((a1 + 144), "");
  *(a1 + 168) = 0;
  if (*a2)
  {
    ctu::cf::dict_adapter::dict_adapter(v52, *a2);
    Value = CFDictionaryGetValue(*a2, @"BasebandUpdater");
    ctu::cf::dict_adapter::dict_adapter(v51, Value);
    *(a1 + 11) = ctu::cf::map_adapter::getBool(v51, @"VinylForceGold");
    *(a1 + 10) = ctu::cf::map_adapter::getBool(v51, @"VinylForceMain");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 24) = *__p;
    *(a1 + 40) = v54;
    *(a1 + 20) = ctu::cf::map_adapter::getInt(v51, @"BypassPairing");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *__p;
    *(a1 + 72) = v54;
    *(a1 + 80) = ctu::cf::map_adapter::getBool(v52, @"VinylTwoPhasePresenceCheck");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 88) = *__p;
    *(a1 + 104) = v54;
    ctu::cf::map_adapter::getString();
    if (*(a1 + 135) < 0)
    {
      operator delete(*v5);
    }

    *v5 = *__p;
    *(a1 + 128) = v54;
    v8 = *(a1 + 135);
    if (v8 < 0)
    {
      v9 = *(a1 + 112);
      v8 = *(a1 + 120);
    }

    else
    {
      v9 = (a1 + 112);
    }

    v10 = std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(v9, &v9[v8], isblank);
    v11 = *(a1 + 135);
    if (v11 < 0)
    {
      v13 = *(a1 + 112);
      v12 = (v13 + *(a1 + 120));
    }

    else
    {
      v12 = v5 + v11;
      v13 = a1 + 112;
    }

    std::string::erase((a1 + 112), &v10[-v13], v12 - v10);
    v14 = *(a1 + 135);
    if (v14 < 0)
    {
      v15 = *(a1 + 112);
      v14 = *(a1 + 120);
    }

    else
    {
      v15 = (a1 + 112);
    }

    v16 = std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(v15, &v15[v14], iscntrl);
    v17 = *(a1 + 135);
    if (v17 < 0)
    {
      v19 = *(a1 + 112);
      v18 = (v19 + *(a1 + 120));
    }

    else
    {
      v18 = v5 + v17;
      v19 = a1 + 112;
    }

    std::string::erase((a1 + 112), &v16[-v19], v18 - v16);
    *(a1 + 136) = ctu::cf::map_adapter::getBool(v52, @"VinylSkipProvisioning");
    *(a1 + 137) = ctu::cf::map_adapter::getBool(v52, @"OptimizeRefurbFirmwareUpdatePath");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 167) < 0)
    {
      operator delete(*v6);
    }

    *v6 = *__p;
    *(a1 + 160) = v54;
    v20 = *(a1 + 167);
    if (v20 < 0)
    {
      v21 = *(a1 + 144);
      v22 = *(a1 + 152);
    }

    else
    {
      v21 = (a1 + 144);
      v22 = *(a1 + 167);
    }

    v23 = &v21[v22];
    if (v22 >= 2)
    {
      v24 = v21;
      do
      {
        v25 = memchr(v24, 45, v22 - 1);
        if (!v25)
        {
          break;
        }

        if (*v25 == 26157)
        {
          goto LABEL_33;
        }

        v24 = v25 + 1;
        v22 = v23 - v24;
      }

      while (v23 - v24 > 1);
    }

    v25 = v23;
LABEL_33:
    v27 = v25 != v23 && v25 - v21 != -1;
    *(a1 + 168) = v27;
    if ((v20 & 0x80000000) != 0)
    {
      v28 = *(a1 + 144);
      v20 = *(a1 + 152);
    }

    else
    {
      v28 = (a1 + 144);
    }

    v29 = &v28[v20];
    if (v20 >= 2)
    {
      v30 = v28;
      do
      {
        v31 = memchr(v30, 45, v20 - 1);
        if (!v31)
        {
          break;
        }

        if (*v31 == 25389)
        {
          goto LABEL_48;
        }

        v30 = v31 + 1;
        v20 = v29 - v30;
      }

      while (v29 - v30 > 1);
    }

    v31 = v29;
LABEL_48:
    v33 = v31 != v29 && v31 - v28 != -1;
    *(a1 + 169) = v33;
    if (ctu::cf::map_adapter::getBool(v51, @"VinylSkipAll"))
    {
      v34 = 1;
    }

    else
    {
      v34 = ctu::cf::map_adapter::getBool(v52, @"UpdateBaseband") ^ 1;
    }

    *(a1 + 8) = v34;
    *(a1 + 9) = ctu::cf::map_adapter::getBool(v51, @"VinylOnlyPerso");
    if (ctu::cf::map_adapter::getBool(v51, @"VinylUse4FF"))
    {
      *a1 = 1;
    }

    if (BBUpdaterCommon::isNVRAMKeyPresent(@"VinylForceGenericUpdate", v35))
    {
      *(a1 + 10) = 257;
    }

    *(a1 + 13) = ctu::cf::map_adapter::getBool(v52, @"VinylVerifyPairing");
    *(a1 + 12) = ctu::cf::map_adapter::getBool(v52, @"VinylInstallSealingManifest");
    *(a1 + 16) = ctu::cf::map_adapter::getInt(v52, @"VinylPairingAuthTest");
    __p[0] = 0;
    __p[1] = 0;
    v54 = 0;
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
    }

    v36 = v50;
    v37 = v50;
    if ((v50 & 0x80u) != 0)
    {
      v36 = v49[1];
    }

    if (v36)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Bootstrap");
      v55 = 1;
      std::string::basic_string[abi:ne200100]<0>(v56, "All");
      v57 = 2;
      std::string::basic_string[abi:ne200100]<0>(v58, "Bootstrap Preferences");
      v59 = 3;
      std::string::basic_string[abi:ne200100]<0>(v60, "All Preferences");
      v61 = 4;
      std::map<std::string,VinylRefurbAction,BBUpdaterCommon::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,VinylRefurbAction>>>::map[abi:ne200100](v47, __p, 4);
      for (i = 0; i != -16; i -= 4)
      {
        if (SHIBYTE(v60[i + 2]) < 0)
        {
          operator delete(v60[i]);
        }
      }

      v39 = std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::find<std::string>(v47, v49);
      if (&v48 == v39)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        v45 = exception;
        v46 = v49;
        if ((v50 & 0x80u) != 0)
        {
          v46 = v49[0];
        }

        _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Options/eUICCOptions.cpp", 0x57u, "Invalid Refurb Option %s", v42, v43, v44, v46);
      }

      *v4 = *(v39 + 56);
      std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(v47, v48);
      v37 = v50;
    }

    if ((v37 & 0x80) != 0)
    {
      operator delete(v49[0]);
    }

    MEMORY[0x29C2B8210](v51);
    MEMORY[0x29C2B8210](v52);
  }

  return a1;
}

void sub_299FC8A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_free_exception(v33);
  std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(&a12, a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B8210](&a21);
  MEMORY[0x29C2B8210](&a23);
  if (*(v30 + 167) < 0)
  {
    operator delete(*v32);
  }

  if (*(v30 + 135) < 0)
  {
    operator delete(*v31);
  }

  if (*(v30 + 111) < 0)
  {
    operator delete(*(v30 + 88));
  }

  if (*(v30 + 79) < 0)
  {
    operator delete(*(v30 + 56));
  }

  if (*(v30 + 47) < 0)
  {
    operator delete(*(v30 + 24));
  }

  _Unwind_Resume(a1);
}

char *std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(char *a1, char *a2, unsigned int (*a3)(void))
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!a3(*v3))
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if (!a3(*i))
        {
          *v3++ = *i;
        }
      }
    }
  }

  return v3;
}

int isblank(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = *(MEMORY[0x29EDCA600] + 4 * _c + 60) & 0x20000;
  }

  else
  {
    v1 = __maskrune(_c, 0x20000uLL);
  }

  return v1 != 0;
}

int iscntrl(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = *(MEMORY[0x29EDCA600] + 4 * _c + 60) & 0x200;
  }

  else
  {
    v1 = __maskrune(_c, 0x200uLL);
  }

  return v1 != 0;
}

void *Options::StringifyPostProcess@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if ((a1 - 1) > 3)
  {
    v2 = "No Action";
  }

  else
  {
    v2 = off_29F293AD8[a1 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t *Options::ToString@<X0>(uint64_t *__return_ptr a1@<X8>, Options *this@<X0>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v88);
  v4 = v88;
  *(&v88 + *(v88 - 24) + 8) |= 1u;
  *(&v88 + *(v4 - 24) + 8) = *(&v88 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "=========== Vinyl eUICC Options ============\n", 45);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "uimSlot               ", 22);
  v7 = MEMORY[0x29C2B8D30](v6, *this);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "skipAll               ", 22);
  v10 = MEMORY[0x29C2B8D20](v9, *(this + 8));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "onlyPerso             ", 22);
  v13 = MEMORY[0x29C2B8D20](v12, *(this + 9));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "forceMain             ", 22);
  v16 = MEMORY[0x29C2B8D20](v15, *(this + 10));
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "forceGold             ", 22);
  v19 = MEMORY[0x29C2B8D20](v18, *(this + 11));
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "forcePerso            ", 22);
  v22 = MEMORY[0x29C2B8D20](v21, *(this + 48));
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\n", 1);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "alderHost             ", 22);
  v25 = *(this + 47);
  if (v25 >= 0)
  {
    v26 = this + 24;
  }

  else
  {
    v26 = *(this + 3);
  }

  if (v25 >= 0)
  {
    v27 = *(this + 47);
  }

  else
  {
    v27 = *(this + 4);
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\n", 1);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "persoStatic           ", 22);
  v31 = MEMORY[0x29C2B8D20](v30, *(this + 49));
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "\n", 1);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "internalBuild         ", 22);
  v34 = MEMORY[0x29C2B8D20](v33, *(this + 50));
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "postProcess           ", 22);
  Options::StringifyPostProcess(*(this + 1), __p);
  if ((v87 & 0x80u) == 0)
  {
    v37 = __p;
  }

  else
  {
    v37 = __p[0];
  }

  if ((v87 & 0x80u) == 0)
  {
    v38 = v87;
  }

  else
  {
    v38 = __p[1];
  }

  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\n", 1);
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "twoPhaseRefurbRef     ", 22);
  v42 = *(this + 135);
  if (v42 >= 0)
  {
    v43 = this + 112;
  }

  else
  {
    v43 = *(this + 14);
  }

  if (v42 >= 0)
  {
    v44 = *(this + 135);
  }

  else
  {
    v44 = *(this + 15);
  }

  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "\n", 1);
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "twoPhaseUrl           ", 22);
  v48 = *(this + 79);
  if (v48 >= 0)
  {
    v49 = this + 56;
  }

  else
  {
    v49 = *(this + 7);
  }

  if (v48 >= 0)
  {
    v50 = *(this + 79);
  }

  else
  {
    v50 = *(this + 8);
  }

  v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "\n", 1);
  v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "twoPhasePresenceCheck ", 22);
  v54 = MEMORY[0x29C2B8D20](v53, *(this + 80));
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "\n", 1);
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "twoPhaseEidMask       ", 22);
  v57 = *(this + 111);
  if (v57 >= 0)
  {
    v58 = this + 88;
  }

  else
  {
    v58 = *(this + 11);
  }

  if (v57 >= 0)
  {
    v59 = *(this + 111);
  }

  else
  {
    v59 = *(this + 12);
  }

  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v58, v59);
  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "\n", 1);
  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "eUICCSEPPairingInstallMSM ", 26);
  v63 = MEMORY[0x29C2B8D20](v62, *(this + 12));
  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "\n", 1);
  v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "eUICCSEPVerifyPairing     ", 26);
  v66 = MEMORY[0x29C2B8D20](v65, *(this + 13));
  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "\n", 1);
  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "eUICCSepPairingBypassValue ", 27);
  v69 = MEMORY[0x29C2B8D30](v68, *(this + 5));
  v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "\n", 1);
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "debugArgs             ", 22);
  v74 = *(this + 18);
  v73 = this + 144;
  v72 = v74;
  v75 = v73[23];
  if (v75 >= 0)
  {
    v76 = v73;
  }

  else
  {
    v76 = v72;
  }

  if (v75 >= 0)
  {
    v77 = v73[23];
  }

  else
  {
    v77 = *(v73 + 1);
  }

  v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v76, v77);
  v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "======================================\n", 39);
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v95 & 0x10) != 0)
  {
    v81 = v94;
    if (v94 < v91)
    {
      v94 = v91;
      v81 = v91;
    }

    locale = v90[4].__locale_;
  }

  else
  {
    if ((v95 & 8) == 0)
    {
      v80 = 0;
      *(a1 + 23) = 0;
      goto LABEL_55;
    }

    locale = v90[1].__locale_;
    v81 = v90[3].__locale_;
  }

  v80 = v81 - locale;
  if ((v81 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v80 >= 0x17)
  {
    if ((v80 | 7) == 0x17)
    {
      v83 = 25;
    }

    else
    {
      v83 = (v80 | 7) + 1;
    }

    v84 = operator new(v83);
    a1[1] = v80;
    a1[2] = v83 | 0x8000000000000000;
    *a1 = v84;
    a1 = v84;
    goto LABEL_54;
  }

  *(a1 + 23) = v80;
  if (v80)
  {
LABEL_54:
    memmove(a1, locale, v80);
  }

LABEL_55:
  *(a1 + v80) = 0;
  v88 = *MEMORY[0x29EDC9538];
  *(&v88 + *(v88 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v89 = MEMORY[0x29EDC9570] + 16;
  if (v93 < 0)
  {
    operator delete(v92);
  }

  v89 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v90);
  std::ostream::~ostream();
  return MEMORY[0x29C2B8F40](&v96);
}

void sub_299FC92D4(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::ostringstream::~ostringstream(&a12, MEMORY[0x29EDC9538]);
  MEMORY[0x29C2B8F40](va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_299FC945C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C2B8F40](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t ***std::map<std::string,VinylRefurbAction,BBUpdaterCommon::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,VinylRefurbAction>>>::map[abi:ne200100](uint64_t ***a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,VinylRefurbAction> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,VinylRefurbAction> const&>(uint64_t ***a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__find_equal<std::string>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__construct_node<std::pair<std::string const,VinylRefurbAction> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__find_equal<std::string>(uint64_t ***a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (*(a5 + 23) >= 0 ? (v11 = a5) : (v11 = *a5), *(a2 + 55) >= 0 ? (v12 = (a2 + 4)) : (v12 = a2[4]), strcasecmp(v11, v12) < 0))
  {
    v13 = *a2;
    if (*a1 == a2)
    {
      v15 = a2;
LABEL_29:
      if (v13)
      {
        *a3 = v15;
        return v15 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v13)
    {
      v14 = *a2;
      do
      {
        v15 = v14;
        v14 = *(v14 + 8);
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v19 = *v15 == v18;
        v18 = v15;
      }

      while (v19);
    }

    if (*(v15 + 55) >= 0)
    {
      v20 = (v15 + 4);
    }

    else
    {
      v20 = v15[4];
    }

    if (*(a5 + 23) >= 0)
    {
      v21 = a5;
    }

    else
    {
      v21 = *a5;
    }

    if (strcasecmp(v20, v21) < 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((strcasecmp(v12, v11) & 0x80000000) == 0)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v16 = a2[1];
    if (v16)
    {
      v17 = a2[1];
      do
      {
        a4 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      v22 = a2;
      do
      {
        a4 = v22[2];
        v19 = *a4 == v22;
        v22 = a4;
      }

      while (!v19);
    }

    if (a4 == v9 || (*(a4 + 55) >= 0 ? (v23 = (a4 + 4)) : (v23 = a4[4]), strcasecmp(v11, v23) < 0))
    {
      if (v16)
      {
        *a3 = a4;
      }

      else
      {
        *a3 = a2;
        return (a2 + 1);
      }

      return a4;
    }
  }

  return std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__find_equal<std::string>(a1, a3, a5);
}

void std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__construct_node<std::pair<std::string const,VinylRefurbAction> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(v7 + 14) = *(a2 + 24);
  *(a3 + 16) = 1;
}

void sub_299FC991C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,VinylRefurbAction>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__find_equal<std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    do
    {
      while (1)
      {
        v7 = v4;
        v10 = v4[4];
        v8 = v4 + 4;
        v9 = v10;
        v11 = (*(v8 + 23) >= 0 ? v8 : v9);
        if ((strcasecmp(v6, v11) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_15;
        }
      }

      if ((strcasecmp(v11, v6) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_15:
  *a2 = v7;
  return v5;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,VinylRefurbAction>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__lower_bound<std::string>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(a2 + 23) >= 0 ? a2 : *a2;
  v7 = *(v5 + 55) >= 0 ? (v5 + 32) : *(v5 + 32);
  if (strcasecmp(v6, v7) < 0)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__lower_bound<std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    do
    {
      if (*(v5 + 55) >= 0)
      {
        v7 = (v5 + 32);
      }

      else
      {
        v7 = *(v5 + 32);
      }

      v8 = strcasecmp(v7, v6);
      if (v8 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v8 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2B8E50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_299FC9C30(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C2B8CF0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C2B8D00](v13);
  return a1;
}

void sub_299FC9EA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C2B8D00](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x299FC9E80);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_299FCA0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gBBULogMaskGet(uint64_t a1, uint64_t a2)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  return gBBULogMaskGet(void)::sBBULogMask;
}

void *___Z14gBBULogMaskGetv_block_invoke()
{
  result = operator new(8uLL);
  *result = sLogInternalMask;
  gBBULogMaskGet(void)::sBBULogMask = result;
  return result;
}

void BBULogSetMask(uint64_t result, uint64_t a2)
{
  v2 = result;
  sLogInternalMask = result;
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  *gBBULogMaskGet(void)::sBBULogMask = v2;
}

void BBULogSetExtraVerbosity(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if (v2 >= 7 && (*gBBULogMaskGet(void)::sBBULogMask & 0x40) != 0)
  {

    MEMORY[0x2A1C6F018](12);
  }
}

uint64_t _BBULogv(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5, va_list a6)
{
  if (gLockGet(void)::once != -1)
  {
    _BBULogv();
  }

  v12 = gLockGet(void)::_gLock;
  BBUpdaterCommon::BBUMutex::lock(gLockGet(void)::_gLock);
  if (sLogBufferGet(void)::once != -1)
  {
    _BBULogv();
  }

  if (*sLogBufferGet(void)::sLogBuffer || ((sLogInternalMask >> a1) & 1) != 0)
  {
    vsnprintf(gTempLogBuffer, 0x400uLL, a5, a6);
    gettimeofday(&v49, 0);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
    v13 = MEMORY[0x29C2B8D40](&v44, LODWORD(v49.tv_sec));
    LOBYTE(v41.__locale_) = 46;
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v41, 1);
    v15 = v14;
    v16 = *v14;
    *(v14 + *(*v14 - 24) + 24) = 3;
    v17 = v14 + *(v16 - 24);
    if (*(v17 + 36) == -1)
    {
      std::ios_base::getloc((v14 + *(v16 - 24)));
      v18 = std::locale::use_facet(&v41, MEMORY[0x29EDC93D0]);
      v19 = (v18->__vftable[2].~facet_0)(v18, 32);
      std::locale::~locale(&v41);
      *(v17 + 36) = v19;
    }

    *(v17 + 36) = 48;
    v20 = MEMORY[0x29C2B8D40](v15, v49.tv_usec / 0x3E8uLL);
    *(v20 + *(*v20 - 24) + 24) = 1;
    LOBYTE(v41.__locale_) = 91;
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v41, 1);
    v22 = MEMORY[0x29C2B8D40](v21, a1);
    LOBYTE(v41.__locale_) = 46;
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v41, 1);
    v24 = MEMORY[0x29C2B8D40](v23, a2);
    LOBYTE(v41.__locale_) = 93;
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, &v41, 1);
    v26 = strlen(a3);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, a3, v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "::", 2);
    v29 = strlen(a4);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, a4, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
    v32 = strlen(gTempLogBuffer);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, gTempLogBuffer, v32);
    std::ostringstream::str[abi:ne200100](&v44, &v41);
    if (sLogBufferGet(void)::once != -1)
    {
      _BBULogv();
    }

    if (*sLogBufferGet(void)::sLogBuffer)
    {
      if ((v43 & 0x80u) == 0)
      {
        locale = &v41;
      }

      else
      {
        locale = v41.__locale_;
      }

      if ((v43 & 0x80u) == 0)
      {
        v34 = v43;
      }

      else
      {
        v34 = v42;
      }

      (*(**sLogBufferGet(void)::sLogBuffer + 24))(*sLogBufferGet(void)::sLogBuffer, locale, v34);
    }

    if ((sLogInternalMask >> a1))
    {
      if (gVinylLogSyncFunc)
      {
        v35 = &v41;
        if ((v43 & 0x80u) != 0)
        {
          v35 = v41.__locale_;
        }

        gVinylLogSyncFunc(2, "%s", v35);
      }

      else
      {
        Stream = _BBULogGetStream(a1);
        if ((v43 & 0x80u) == 0)
        {
          v37 = &v41;
        }

        else
        {
          v37 = v41.__locale_;
        }

        fputs(v37, Stream);
        fflush(Stream);
        v38 = MEMORY[0x29EDCA620];
        if (Stream != *MEMORY[0x29EDCA620])
        {
          if ((v43 & 0x80u) == 0)
          {
            v39 = &v41;
          }

          else
          {
            v39 = v41.__locale_;
          }

          fputs(v39, *MEMORY[0x29EDCA620]);
          fflush(*v38);
        }
      }
    }

    if (v43 < 0)
    {
      operator delete(v41.__locale_);
    }

    v44 = *MEMORY[0x29EDC9538];
    *(&v44 + *(v44 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v45 = MEMORY[0x29EDC9570] + 16;
    if (v47 < 0)
    {
      operator delete(v46[7].__locale_);
    }

    v45 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v46);
    std::ostream::~ostream();
    MEMORY[0x29C2B8F40](&v48);
  }

  return BBUpdaterCommon::BBUMutex::unlock(v12);
}

void sub_299FCA71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  BBUpdaterCommon::BBUMutex::unlock(v16);
  _Unwind_Resume(a1);
}

void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  v6 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = v4;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  result = memmove(a2, v5, v6);
LABEL_10:
  *(a2 + v6) = 0;
  return result;
}

uint64_t _BBULogGetStream(int a1)
{
  if (a1 > 8)
  {
    if (a1 > 13)
    {
      if (a1 == 14)
      {
        if (gLogStreamsGet(void)::once != -1)
        {
          _BBULogGetStream();
        }

        v1 = 56;
        goto LABEL_31;
      }

      if (a1 == 17)
      {
        if (gLogStreamsGet(void)::once != -1)
        {
          _BBULogGetStream();
        }

        v1 = 16;
        goto LABEL_31;
      }
    }

    else if (a1 == 9 || a1 == 13)
    {
      if (gLogStreamsGet(void)::once != -1)
      {
        _BBULogGetStream();
      }

      v1 = 48;
      goto LABEL_31;
    }

LABEL_28:
    if (gLogStreamsGet(void)::once != -1)
    {
      _BBULogGetStream();
    }

    v1 = 8;
    goto LABEL_31;
  }

  if ((a1 - 5) < 3)
  {
    if (gLogStreamsGet(void)::once != -1)
    {
      _BBULogGetStream();
    }

    v1 = 40;
    goto LABEL_31;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (gLogStreamsGet(void)::once != -1)
      {
        _BBULogGetStream();
      }

      v1 = 32;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (gLogStreamsGet(void)::once != -1)
  {
    _BBULogGetStream();
  }

  v1 = 24;
LABEL_31:
  v2 = *(gLogStreamsGet(void)::sLogStreams + v1);
  if (v2)
  {
    return v2;
  }

  else
  {
    return *MEMORY[0x29EDCA620];
  }
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C2B8F40](a1 + 112);
  return a1;
}

uint64_t _BBULogPlain(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (gLockGet(void)::once != -1)
  {
    _BBULogv();
  }

  v10 = gLockGet(void)::_gLock;
  BBUpdaterCommon::BBUMutex::lock(gLockGet(void)::_gLock);
  if (sLogBufferGet(void)::once != -1)
  {
    _BBULogv();
  }

  if (*sLogBufferGet(void)::sLogBuffer || ((sLogInternalMask >> a1) & 1) != 0)
  {
    va_copy(&v26[19], va);
    vsnprintf(gTempLogBuffer, 0x400uLL, a2, va);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
    if (a1 == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "!!! ", 4);
    }

    v11 = strlen(gTempLogBuffer);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, gTempLogBuffer, v11);
    std::ostringstream::str[abi:ne200100](&v22, __p);
    if (sLogBufferGet(void)::once != -1)
    {
      _BBULogv();
    }

    if (*sLogBufferGet(void)::sLogBuffer)
    {
      if ((v21 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v21 & 0x80u) == 0)
      {
        v13 = v21;
      }

      else
      {
        v13 = __p[1];
      }

      (*(**sLogBufferGet(void)::sLogBuffer + 24))(*sLogBufferGet(void)::sLogBuffer, v12, v13);
    }

    if ((sLogInternalMask >> a1))
    {
      if (gVinylLogSyncFunc)
      {
        v14 = __p;
        if ((v21 & 0x80u) != 0)
        {
          v14 = __p[0];
        }

        gVinylLogSyncFunc(2, "%s", v14);
      }

      else
      {
        Stream = _BBULogGetStream(a1);
        if ((v21 & 0x80u) == 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        fputs(v16, Stream);
        fflush(Stream);
        v17 = MEMORY[0x29EDCA620];
        if (Stream != *MEMORY[0x29EDCA620])
        {
          if ((v21 & 0x80u) == 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          fputs(v18, *MEMORY[0x29EDCA620]);
          fflush(*v17);
        }
      }
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = *MEMORY[0x29EDC9538];
    *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v23 = MEMORY[0x29EDC9570] + 16;
    if (v25 < 0)
    {
      operator delete(v24[7].__locale_);
    }

    v23 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v24);
    std::ostream::~ostream();
    MEMORY[0x29C2B8F40](v26);
  }

  return BBUpdaterCommon::BBUMutex::unlock(v10);
}

void sub_299FCADEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  BBUpdaterCommon::BBUMutex::unlock(v16);
  _Unwind_Resume(a1);
}

uint64_t _BBULogBinary(uint64_t result, uint64_t a2, const char *a3, const char *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v43 = *MEMORY[0x29EDCA608];
  if (a6)
  {
    v7 = a7;
    v11 = a2;
    v12 = result;
    v13 = 0;
    v33 = a2 >= 0 && a6 > 0x3E80;
    if (v33)
    {
      v14 = a6 - 224;
    }

    else
    {
      v14 = 0;
    }

    v15 = 0xFFFFFFFFLL;
    if (a2 >= 0 && a6 > 0x3E80)
    {
      v15 = 112;
    }

    v39 = v15;
    v34 = v15 + v14;
    v36 = result;
    v37 = a2;
    do
    {
      if (v13 == v39)
      {
        _BBULog(v12, v11, a3, a4, " -- middle of buffer snipped -- \n");
        v13 = v34;
      }

      v41 = 0u;
      memset(v42, 0, sizeof(v42));
      v40 = 0u;
      v16 = a6 - v13;
      if (a6 == v13)
      {
        *(v42 + 15) = 538976288;
        *&v17 = 0x2020202020202020;
        *(&v17 + 1) = 0x2020202020202020;
        v41 = v17;
        v42[0] = v17;
        v18 = 51;
        v40 = v17;
      }

      else
      {
        v19 = a3;
        v20 = a4;
        if (v16 >= 0x10)
        {
          v16 = 16;
        }

        v21 = (a5 + v13);
        if (v16 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v16;
        }

        v23 = (54 - 3 * v22) - 3;
        v24 = (a5 + v13);
        v25 = v22;
        v26 = &v40 + 1;
        do
        {
          v27 = *v24++;
          v28 = a0123456789abcd_1[v27 & 0xF];
          *(v26 - 1) = a0123456789abcd_1[v27 >> 4];
          *v26 = v28;
          v26[1] = 32;
          v26 += 3;
          v23 += 3;
          --v25;
        }

        while (v25);
        memset(v26 - 1, 32, 3 * (17 - v22));
        v29 = &v40;
        v30 = 0;
        do
        {
          v32 = *v21++;
          v31 = v32;
          if ((v32 - 32) >= 0x5F)
          {
            v31 = 46;
          }

          *(v29 + v23) = v31;
          v29 = (v29 + 1);
          --v30;
          --v22;
        }

        while (v22);
        v18 = v23 - v30;
        a4 = v20;
        a3 = v19;
        v12 = v36;
        v11 = v37;
        v7 = a7;
      }

      strcpy(&v40 + v18, "\r\n");
      result = _BBULog(v12, v11, a3, a4, "%c%04zx  %s", v7, v13, &v40);
      v13 += 16;
    }

    while (v13 < a6);
    if (v33)
    {
      return _BBULog(v12, v11, a3, a4, "(snipped)\n");
    }
  }

  return result;
}

uint64_t _BBULogTracer::_BBULogTracer(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, char *__format, ...)
{
  va_start(va, __format);
  v14 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if (((*gBBULogMaskGet(void)::sBBULogMask >> a2) & 1) == 0)
  {
    if ((a3 & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if ((a3 & 0x80000000) != 0 || gBBULogVerbosity >= a3)
  {
LABEL_6:
    vsnprintf(__str, 0x100uLL, __format, va);
    _BBULog(a2, a3, a4, a5, "ENTER: %s\n", __str);
  }

  return a1;
}

void _BBULogTracer::~_BBULogTracer(const char **this, uint64_t a2)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  v3 = *this;
  if (((*gBBULogMaskGet(void)::sBBULogMask >> v3) & 1) == 0)
  {
    v4 = *(this + 1);
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = *(this + 1);
  if (gBBULogVerbosity >= v4 || (v4 & 0x80000000) != 0)
  {
LABEL_8:
    _BBULog(v3, v4, this[1], this[2], "EXIT:\n");
  }
}

void BBUFDRLogHandler(uint64_t result, const char *a2)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBULog", "", "Dump: %s\n", a2);
  }
}

void BBULogParseDebugArgs(CFDictionaryRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    HIBYTE(v19) = 0;
    LOBYTE(__p[0]) = 0;
    ctu::cf::dict_adapter::dict_adapter(v17, v1);
    Value = CFDictionaryGetValue(*a1, @"BasebandUpdater");
    ctu::cf::dict_adapter::dict_adapter(v16, Value);
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    v19 = v15;
    *__p = *v14;
    v4 = HIBYTE(v15);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v4 = v14[1];
    }

    if (v4)
    {
      v14[0] = 0;
      v14[1] = 0;
      v15 = 0;
      BBUpdaterCommon::BBUStringToArgv(__p, v14);
      v5 = MEMORY[0x29EDCA660];
      v6 = MEMORY[0x29EDCA650];
      *MEMORY[0x29EDCA658] = 1;
      *v5 = 1;
      do
      {
        while (1)
        {
          while (1)
          {
            v7 = getopt_long(((v14[1] - v14[0]) >> 3) - 1, v14[0], "hl:C:v:x:t:r:p:e:c:w:i:s:fUFD:nHSqPV", &BBULogParseDebugArgs(ctu::cf::CFSharedRef<__CFDictionary const>)::long_options, 0);
            if (v7 <= 117)
            {
              break;
            }

            if (v7 == 118)
            {
              v13 = 0;
              v12 = strtoul(*v6, &v13, 0);
              if (!*v13)
              {
                gBBULogVerbosity = v12;
              }
            }

            else if (v7 == 120)
            {
              v13 = 0;
              v8 = strtoul(*v6, &v13, 0);
              if (!*v13)
              {
                BBULogSetExtraVerbosity(v8, v9);
              }
            }
          }

          if (v7 != 108)
          {
            break;
          }

          v13 = 0;
          v10 = strtoul(*v6, &v13, 0);
          if (!*v13)
          {
            v11 = v10;
            sLogInternalMask = v10;
            if (gBBULogMaskGet(void)::once != -1)
            {
              BBULogParseDebugArgs();
            }

            *gBBULogMaskGet(void)::sBBULogMask = v11;
          }
        }
      }

      while (v7 != -1);
      if (v14[0])
      {
        v14[1] = v14[0];
        operator delete(v14[0]);
      }
    }

    MEMORY[0x29C2B8210](v16);
    MEMORY[0x29C2B8210](v17);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_299FCB518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B8210](&a13, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x29C2B8210](&a15);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t BBULogRegisterDelegates(void)
{
  TelephonyUtilDebugRegisterDelegate();
  v0 = BBUFSDebugRegisterDelegate(&BBULogRegisterRemoteFSDelegate(void)::delegate);
  result = BBUpdaterCommon::inRestoreOS(v0);
  if (result)
  {
    ETLDebugRegisterDelegate();

    return MEMORY[0x2A1C6DB38](BBULogRegisterKTLDelegate(void)::delegate);
  }

  return result;
}

void BBULogRegisterLogBuffer(uint64_t *a1)
{
  if (sLogBufferGet(void)::once != -1)
  {
    _BBULogv();
  }

  v2 = sLogBufferGet(void)::sLogBuffer;
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void BBULogUnregisterLogBuffer(uint64_t a1)
{
  if (sLogBufferGet(void)::once != -1)
  {
    _BBULogv();
  }

  if (*sLogBufferGet(void)::sLogBuffer)
  {
    v1 = sLogBufferGet(void)::sLogBuffer;
    v2 = *(sLogBufferGet(void)::sLogBuffer + 8);
    *sLogBufferGet(void)::sLogBuffer = 0;
    *(v1 + 8) = 0;
    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

pthread_mutex_t *___ZL8gLockGetv_block_invoke()
{
  v0 = operator new(0x40uLL);
  result = BBUpdaterCommon::BBUMutex::BBUMutex(v0, "logging");
  gLockGet(void)::_gLock = v0;
  return result;
}

void *___ZL13sLogBufferGetv_block_invoke()
{
  result = operator new(0x10uLL);
  *result = 0;
  result[1] = 0;
  sLogBufferGet(void)::sLogBuffer = result;
  return result;
}

FILE *___ZL14gLogStreamsGetv_block_invoke()
{
  v0 = operator new(0x48uLL);
  v1 = MEMORY[0x29EDCA620];
  v2 = *MEMORY[0x29EDCA620];
  *v0 = *MEMORY[0x29EDCA620];
  v0[1] = v2;
  v0[2] = v2;
  v0[6] = v2;
  v0[7] = v2;
  v0[5] = v2;
  result = fopen("/dev/null", "w");
  v0[8] = result;
  v4 = *MEMORY[0x29EDCA610];
  v0[3] = *v1;
  v0[4] = v4;
  gLogStreamsGet(void)::sLogStreams = v0;
  return result;
}

void BBULogPrintDelegate(int a1, uint64_t a2, const char *a3, va_list a4)
{
  v16 = *MEMORY[0x29EDCA608];
  gettimeofday(&v14, 0);
  vsnprintf(__str, 0x100uLL, a3, a4);
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if (((*gBBULogMaskGet(void)::sBBULogMask >> a1) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(a1, "%u.%03u: %s: %s", v8, v9, v10, v11, v12, v13, v14.tv_sec, v14.tv_usec / 0x3E8uLL, a2, __str);
  }
}

void BBULogTelephonyUtilPrintBinaryDelegate(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(6, v5, a3, a4);
}

void BBULogPrintBinaryDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  if (a4 < 0x801)
  {
    v8 = a4;
  }

  else
  {
    HIBYTE(v18) = 9;
    LOBYTE(v17) = 41;
    __p = *"(snipped)";
    v8 = 2048;
  }

  gettimeofday(&v15, 0);
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if ((*gBBULogMaskGet(void)::sBBULogMask & (1 << a1)) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(a1, "%u.%03u: %s: %u%s\n", v9, v10, v11, v12, v13, v14, v15.tv_sec, v15.tv_usec / 0x3E8uLL, a2, a4, &__p);
    if (gBBULogMaskGet(void)::once != -1)
    {
      BBULogParseDebugArgs();
    }
  }

  if ((*gBBULogMaskGet(void)::sBBULogMask & (1 << a1)) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogBinary(a1, 0, "BBULog", "", a3, v8, 32);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }
}

void sub_299FCBA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBULogETLPrintBinaryDelegate(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(7, v5, a3, a4);
}

void BBULogKTLPrintBinaryDelegate(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(8, v5, a3, a4);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
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
  v4[1] = *MEMORY[0x29EDCA608];
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
  v4[1] = *MEMORY[0x29EDCA608];
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
  v8[3] = *MEMORY[0x29EDCA608];
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
  v10[2] = *MEMORY[0x29EDCA608];
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
  v12[3] = *MEMORY[0x29EDCA608];
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
  v37 = *MEMORY[0x29EDCA608];
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
  v4[3] = *MEMORY[0x29EDCA608];
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
  v9[2] = *MEMORY[0x29EDCA608];
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

uint64_t DERLengthOfLength(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = a1;
  result = 1;
  do
  {
    ++result;
    v3 = v2 > 0xFF;
    v2 >>= 8;
  }

  while (v3);
  return result;
}

unint64_t DEREncodeLengthSized(unint64_t result, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (result < 0x80)
  {
    if (a3)
    {
      if (*a4)
      {
        *a2 = result;
        if (*a4)
        {
          v4 = 1;
LABEL_19:
          v9 = 0;
          *a4 = v4;
          return v9;
        }
      }

      goto LABEL_22;
    }

    return 7;
  }

  v5 = 0;
  v6 = result;
  do
  {
    --v5;
    v7 = v6 > 0xFF;
    v6 >>= 8;
  }

  while (v7);
  v8 = -v5;
  v9 = 7;
  if (-v5 >= a3 || v8 > 0x7E)
  {
    return v9;
  }

  if (*a4)
  {
    v4 = 1 - v5;
    *a2 = -v5 | 0x80;
    if (v8 < ~a2)
    {
      v10 = (a2 - v5);
      if (a2 - v5 != -2)
      {
        v11 = a2 + *a4;
        while (v10 != -1)
        {
          if (v10 >= v11 || v10 < a2)
          {
            goto LABEL_22;
          }

          *v10-- = result;
          v7 = result > 0xFF;
          result >>= 8;
          if (!v7)
          {
            if (v8 >= *a4)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }
        }
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(0x5519u);
LABEL_23:
  __break(0x5513u);
  return result;
}

unint64_t DERLengthOfItem(unint64_t result, unint64_t a2)
{
  v2 = result & 0x1FFFFFFFFFFFFFFFLL;
  v3 = 1;
  if ((result & 0x1FFFFFFFFFFFFFFFLL) >= 0x1F)
  {
    do
    {
      ++v3;
      v4 = v2 > 0x7F;
      v2 >>= 7;
    }

    while (v4);
  }

  v5 = 1;
  if (a2 >= 0x80)
  {
    v6 = a2;
    do
    {
      ++v5;
      v4 = v6 > 0xFF;
      v6 >>= 8;
    }

    while (v4);
  }

  v7 = __CFADD__(v3, v5);
  v8 = v3 + v5;
  if (v7 || (result = v8 + a2, __CFADD__(v8, a2)))
  {
    __break(0x5500u);
  }

  return result;
}

unint64_t DEREncodeItemSized(unint64_t a1, unint64_t a2, const void *a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  v22[1] = *MEMORY[0x29EDCA608];
  v12 = *a6;
  v13 = DERLengthOfItem(a1, a2);
  if (v13 > a5)
  {
    return 7;
  }

  v15 = v13;
  if (v13 > *a6)
  {
    goto LABEL_21;
  }

  *a6 = v13;
  v22[0] = v13;
  if (v13 > v12)
  {
    goto LABEL_21;
  }

  result = DEREncodeTag(a1, a4, v22);
  if (result)
  {
    return result;
  }

  v16 = v22[0];
  if (__CFADD__(a4, v22[0]))
  {
LABEL_22:
    __break(0x5513u);
    goto LABEL_23;
  }

  v17 = v15 >= v22[0];
  v18 = v15 - v22[0];
  if (!v17)
  {
    goto LABEL_23;
  }

  v19 = a4 + v12;
  v20 = a4 + v22[0];
  v22[0] = v18;
  if (a4 + v16 > a4 + v12 || v20 < a4 || v18 > v12 - v16)
  {
LABEL_21:
    __break(0x5519u);
  }

  result = DEREncodeLengthSized(a2, v20, v18, v22);
  if (result)
  {
    return result;
  }

  if (__CFADD__(v20, v22[0]))
  {
    goto LABEL_22;
  }

  if (v18 < v22[0])
  {
LABEL_23:
    __break(0x5515u);
    return result;
  }

  v21 = (v20 + v22[0]);
  if (v19 < v20 + v22[0])
  {
    goto LABEL_21;
  }

  if (v21 < a4)
  {
    goto LABEL_21;
  }

  if (v19 - (v20 + v22[0]) < a2)
  {
    goto LABEL_21;
  }

  memmove(v21, a3, a2);
  if (v21 > &v21[a2])
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t DEREncodeTag(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v3 = result & 0x1FFFFFFFFFFFFFFFLL;
  if ((result & 0x1FFFFFFFFFFFFFFFuLL) < 0x1F)
  {
    if (*a3)
    {
      *a2 = HIBYTE(result) & 0xE0 | result;
      v8 = 1;
      goto LABEL_16;
    }

    return 7;
  }

  v4 = 0;
  v5 = result & 0x1FFFFFFFFFFFFFFFLL;
  do
  {
    ++v4;
    v6 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v6);
  v7 = *a3;
  if (v4 >= *a3)
  {
    return 7;
  }

  if (v4 < ~a2)
  {
    *a2 = HIBYTE(result) | 0x1F;
    if (a2 + v4 != -2)
    {
      v8 = v4 + 1;
      *(a2 + v4) = result & 0x7F;
      if (v3 >= 0x80)
      {
        v9 = (a2 + v4 - 1);
        v10 = a2 + v7;
        while (v9 != -2)
        {
          if (v9 >= v10 || v9 < a2)
          {
            goto LABEL_19;
          }

          v11 = v3 >> 14;
          v3 >>= 7;
          *v9-- = v3 | 0x80;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_20;
      }

LABEL_16:
      if (v8 <= *a3)
      {
        result = 0;
        *a3 = v8;
        return result;
      }

LABEL_19:
      __break(0x5519u);
    }
  }

LABEL_20:
  __break(0x5513u);
  return result;
}

uint64_t DEREncodeSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8)
{
  v47[1] = *MEMORY[0x29EDCA608];
  v8 = ~a6;
  if (~a6 < a7)
  {
    goto LABEL_72;
  }

  v11 = *a8;
  v46 = a7;
  v47[0] = 0;
  if (v11 < a7)
  {
    goto LABEL_73;
  }

  v14 = a4;
  result = DEREncodeTag(a1, a6, &v46);
  if (result)
  {
    return result;
  }

  v17 = v46;
  if (v46 > v8)
  {
    goto LABEL_72;
  }

  v18 = a7 - v46;
  if (a7 < v46)
  {
    goto LABEL_74;
  }

  v19 = a6 + a7;
  v20 = a6 + v46;
  if (a6 + v46 < v19)
  {
    result = DERContentLengthOfEncodedSequence(a2, a3, v14, a5, v47);
    if (result)
    {
      return result;
    }

    v46 = v18;
    if (v20 > a6 + v11 || v20 < a6 || v18 > v11 - v17)
    {
      goto LABEL_73;
    }

    v44 = a6 + v11;
    v21 = v47[0];
    result = DEREncodeLengthSized(v47[0], a6 + v17, v18, &v46);
    if (result)
    {
      return result;
    }

    v22 = v44;
    if (__CFADD__(v20, v46))
    {
LABEL_72:
      __break(0x5513u);
      goto LABEL_73;
    }

    v23 = v18 - v46;
    if (v18 >= v46)
    {
      v24 = (v20 + v46);
      if (!__CFADD__(v20 + v46, v21))
      {
        if (&v24[v21] > v19)
        {
          return 7;
        }

        if (v14)
        {
          v25 = 0;
          v43 = a2 + a3;
          v42 = ~a5;
          v26 = a5 + 8;
          v41 = 24 * v14;
          do
          {
            if (v25 > v42)
            {
              goto LABEL_72;
            }

            v27 = *(v26 - 8);
            if (v27 > ~a2)
            {
              goto LABEL_72;
            }

            v28 = (a2 + v27);
            v29 = *(v26 + 8);
            if ((v29 & 0x200) != 0)
            {
              v38 = v28 < a2 || (v28 + 2) > v43;
              if (v38 || v24 > v22 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v22 - v24;
            }

            else
            {
              if (v29)
              {
                if (v28 < a2 || (v28 + 2) > v43)
                {
                  goto LABEL_73;
                }

                if (!v28[1])
                {
                  goto LABEL_69;
                }
              }

              v46 = v23;
              if (v24 > v22 || v24 < a6 || v23 > v22 - v24)
              {
                goto LABEL_73;
              }

              result = DEREncodeTag(*v26, v24, &v46);
              if (result)
              {
                return result;
              }

              if (__CFADD__(v24, v46))
              {
                goto LABEL_72;
              }

              v31 = v23 - v46;
              if (v23 < v46)
              {
                goto LABEL_74;
              }

              if (v28 < a2 || (v28 + 2) > v43)
              {
                goto LABEL_73;
              }

              v32 = v28[1];
              v47[0] = v32;
              v33 = 1;
              if ((v29 & 0x100) != 0 && v32 && **v28 < 0)
              {
                v33 = 0;
                v47[0] = ++v32;
              }

              v34 = &v24[v46];
              v46 = v23 - v46;
              if (v34 > v44 || v34 < a6 || v31 > v44 - v34)
              {
                goto LABEL_73;
              }

              result = DEREncodeLengthSized(v32, v34, v31, &v46);
              if (result)
              {
                return result;
              }

              v35 = v46;
              if (__CFADD__(v34, v46))
              {
                goto LABEL_72;
              }

              v23 = v31 - v46;
              if (v31 < v46)
              {
                goto LABEL_74;
              }

              v24 = (v34 + v46);
              if ((v33 & 1) == 0)
              {
                if (v24 == -1)
                {
                  goto LABEL_72;
                }

                if (v24 >= v44 || v24 < a6)
                {
                  goto LABEL_73;
                }

                *v24 = 0;
                --v23;
                if (v31 == v35)
                {
                  goto LABEL_74;
                }

                ++v24;
              }

              if (v24 > v44 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v44 - v24;
            }

            if (v36 > v37)
            {
              goto LABEL_73;
            }

            result = memmove(v24, *v28, v36);
            if (v24 > &v24[v36])
            {
              goto LABEL_73;
            }

            v39 = v28[1];
            v22 = v44;
            if (__CFADD__(v24, v39))
            {
              goto LABEL_72;
            }

            v40 = v23 >= v39;
            v23 -= v39;
            if (!v40)
            {
              goto LABEL_74;
            }

            v24 += v39;
LABEL_69:
            v26 += 24;
            v25 += 24;
          }

          while (v41 != v25);
        }

        if (&v24[-a6] <= *a8)
        {
          result = 0;
          *a8 = &v24[-a6];
          return result;
        }

LABEL_73:
        __break(0x5519u);
      }

      goto LABEL_72;
    }

LABEL_74:
    __break(0x5515u);
    return result;
  }

  return 7;
}

unint64_t DERContentLengthOfEncodedSequence(unint64_t result, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  if (!a3)
  {
LABEL_38:
    result = 0;
LABEL_40:
    *a5 = v5;
    return result;
  }

  v6 = 0;
  v7 = result + a2;
  while (24 * v6 <= ~a4)
  {
    v8 = a4 + 24 * v6;
    v9 = *v8;
    v10 = *v8 > 0xFFFFFFFFFFFFFFEFLL || *v8 + 16 > a2;
    if (v10)
    {
      v5 = 0;
      result = 7;
      goto LABEL_40;
    }

    if (v9 > ~result)
    {
      break;
    }

    v11 = (result + v9);
    v12 = *(v8 + 16);
    if ((v12 & 0x200) == 0)
    {
      if (v12)
      {
        if (v11 < result || (v11 + 2) > v7)
        {
          goto LABEL_43;
        }

        if (!v11[1])
        {
          goto LABEL_37;
        }
      }

      v14 = *(v8 + 8) & 0x1FFFFFFFFFFFFFFFLL;
      v15 = 1;
      if (v14 >= 0x1F)
      {
        do
        {
          ++v15;
          v10 = v14 > 0x7F;
          v14 >>= 7;
        }

        while (v10);
      }

      v16 = __CFADD__(v5, v15);
      v17 = v5 + v15;
      if (v16)
      {
        goto LABEL_42;
      }

      if (v11 < result || (v11 + 2) > v7)
      {
        goto LABEL_43;
      }

      v18 = v11[1];
      if ((v12 & 0x100) != 0)
      {
        if (v18)
        {
          v18 += **v11 >> 7;
          goto LABEL_24;
        }

LABEL_25:
        v19 = 1;
      }

      else
      {
LABEL_24:
        if (v18 < 0x80)
        {
          goto LABEL_25;
        }

        v19 = 1;
        v22 = v18;
        do
        {
          ++v19;
          v10 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v10);
      }

      v16 = __CFADD__(v17, v19);
      v23 = v17 + v19;
      if (v16)
      {
        goto LABEL_42;
      }

      v16 = __CFADD__(v23, v18);
      v5 = v23 + v18;
      if (v16)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v11 < result || (v11 + 2) > v7)
    {
      goto LABEL_43;
    }

    v21 = v11[1];
    v16 = __CFADD__(v5, v21);
    v5 += v21;
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (++v6 == a3)
    {
      goto LABEL_38;
    }
  }

  __break(0x5513u);
LABEL_42:
  __break(0x5500u);
LABEL_43:
  __break(0x5519u);
  return result;
}

uint64_t DEREncodeSequence(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) >= a2)
  {
    return DEREncodeSequenceFromObject(result, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, a5, *a6, a6);
  }

  __break(0x5519u);
  return result;
}

unint64_t DERLengthOfEncodedSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v17[0] = 0;
  result = DERContentLengthOfEncodedSequence(a2, a3, a4, a5, v17);
  if (!result)
  {
    v9 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = 1;
    if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >= 0x1F)
    {
      do
      {
        ++v10;
        v11 = v9 > 0x7F;
        v9 >>= 7;
      }

      while (v11);
    }

    v12 = 1;
    if (v17[0] >= 0x80uLL)
    {
      v13 = v17[0];
      do
      {
        ++v12;
        v11 = v13 > 0xFF;
        v13 >>= 8;
      }

      while (v11);
    }

    v14 = __CFADD__(v10, v12);
    v15 = v10 + v12;
    if (v14 || (v14 = __CFADD__(v15, v17[0]), v16 = v15 + v17[0], v14))
    {
      __break(0x5500u);
    }

    else
    {
      result = 0;
      *a6 = v16;
    }
  }

  return result;
}

uint64_t DERLengthOfEncodedSequence(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) < a2)
  {
    __break(0x5519u);
  }

  if (DERLengthOfEncodedSequenceFromObject(a1, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, v5))
  {
    return 0;
  }

  else
  {
    return v5[0];
  }
}

uint64_t VinylRestore::init(uint64_t a1)
{
  return (*(*a1 + 64))(a1);
}

{
  return (*(*a1 + 56))(a1);
}

uint64_t eUICCFwReaderClose(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "eUICCFwReader", "eUICCFwReaderClose", "eUICCFwReaderClose");
  if (a1)
  {
    vinyl_unzClose(a1);
  }

  return 0;
}

uint64_t eUICCFwReaderFindFile(uint64_t a1, CFStringRef theString)
{
  v5 = *MEMORY[0x29EDCA608];
  if (CFStringGetCString(theString, buffer, 1024, 0x8000100u))
  {
    return 4 * (vinyl_unzLocateFile(a1, buffer, 0) != 0);
  }

  else
  {
    return 99;
  }
}

uint64_t eUICCFwReaderCopyFileData(uint64_t a1, CFTypeRef *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_0(a1, &v10, v12))
  {
    return 15;
  }

  v4 = malloc(__size);
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  if (vinyl_unzOpenCurrentFile(a1))
  {
    return 15;
  }

  CurrentFile = vinyl_unzReadCurrentFile(a1, v5, __size);
  if (__size != CurrentFile)
  {
    return 4;
  }

  if (vinyl_unzCloseCurrentFile(a1))
  {
    return 15;
  }

  v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], v5, __size, *MEMORY[0x29EDB8EE0]);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  *a2 = CFRetain(v7);
  CFRelease(v8);
  return 0;
}

uint64_t eUICCFwReaderStart(ACFULogging *a1, uint64_t (*a2)(uint64_t, CFStringRef, ACFULogging *), uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "eUICCFwReader", "eUICCFwReaderStart", "eUICCFwReaderStart");
  v7 = eUICCFwReaderOpen(a1);
  if (!v7)
  {
    v16 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v16, 2, "%s::%s: failed to open bbfw archive for reading\n", "eUICCFwReader", "eUICCFwReaderStart");
    v12 = 4;
    goto LABEL_9;
  }

  v8 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    if (OUTLINED_FUNCTION_0(v7, v17, cStr))
    {
      v12 = 15;
      goto LABEL_9;
    }

    if (cStr[0])
    {
      break;
    }

LABEL_7:
    if (vinyl_unzGoToNextFile(v7))
    {
LABEL_8:
      v12 = 0;
      goto LABEL_9;
    }
  }

  v9 = CFStringCreateWithCString(v8, cStr, 0x8000100u);
  if (v9)
  {
    v10 = v9;
    v11 = a2(a3, v9, v7);
    CFRelease(v10);
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 3;
LABEL_9:
  v13 = eUICCFwReaderClose(v7);
  v14 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v14, 4, "%s::%s: leaving: %s\n", "eUICCFwReader", "eUICCFwReaderStart", "eUICCFwReaderStart");
  return v12;
}

void eUICCFwReaderFindAndCopyFileData_cold_1(uint64_t a1, void **a2, uint64_t a3, char *a4)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  if (*a4 < 0)
  {
    operator delete(*a2);
  }
}

void eUICCFwReaderFindAndCopyFileData_cold_2(uint64_t a1, const __CFString *a2, CFTypeRef *a3, CFTypeRef *a4, int *a5)
{
  File = eUICCFwReaderFindFile(a1, a2);
  if (File)
  {
    v10 = File;
    LogInstance = ACFULogging::getLogInstance(File);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find bbfw item status %d\n", "eUICCFwReader", "eUICCFwReaderFindAndCopyFileData", v10);
  }

  else
  {
    v12 = eUICCFwReaderCopyFileData(a1, a3);
    v10 = v12;
    if (v12)
    {
      v13 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v13, 2, "%s::%s: failed to extract bbfw item status %d\n", "eUICCFwReader", "eUICCFwReaderFindAndCopyFileData", v10);
      v14 = *a3;
      if (!v14)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v14 = *a3;
      if (!v14)
      {
        v15 = ACFULogging::getLogInstance(v12);
        ACFULogging::handleMessage(v15, 2, "%s::%s: failed to extract bbfw item fileData is NULL\n", "eUICCFwReader", "eUICCFwReaderFindAndCopyFileData");
        v10 = 0;
        goto LABEL_3;
      }

      *a4 = CFRetain(v14);
    }

    CFRelease(v14);
  }

LABEL_3:
  *a5 = v10;
}

uint64_t BBUpdaterCommon::collectCoreDump(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    a1 = OUTLINED_FUNCTION_0_0(a1, a2, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v2 = gBBULogMaskGet(a1, a2);
  return OUTLINED_FUNCTION_1(v2, v3, "BBUCommon", "", "BBUpdaterExecCommand rejected  with error\n");
}

{
  if ((*a1 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    a1 = OUTLINED_FUNCTION_0_0(a1, a2, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v2 = gBBULogMaskGet(a1, a2);
  return OUTLINED_FUNCTION_1(v2, v3, "BBUCommon", "", "BBUpdaterExecCommand rejected  with error\n");
}

uint64_t BBUpdaterCommon::collectCoreDump(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v4 = gBBULogMaskGet(v2, v3);
  return OUTLINED_FUNCTION_1(v4, v5, "BBUCommon", "", "BBUpdaterSetOptions rejected  with error\n");
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v4 = gBBULogMaskGet(v2, v3);
  return OUTLINED_FUNCTION_1(v4, v5, "BBUCommon", "", "BBUpdaterExtremeCreateWithError rejected with error\n");
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v4 = gBBULogMaskGet(v2, v3);
  return OUTLINED_FUNCTION_1(v4, v5, "BBUCommon", "", "BBUpdaterSetOptions rejected  with error\n");
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v4 = gBBULogMaskGet(v2, v3);
  return OUTLINED_FUNCTION_1(v4, v5, "BBUCommon", "", "BBUpdaterExtremeCreateWithError rejected with error\n");
}

void BBUpdaterCommon::inRestoreOS()
{
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global);
}

{
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_63);
}

void BBUpdaterCommon::BBUReadNVRAM()
{
  if (__cxa_guard_acquire(byte_2A14F5CD0))
  {
    _MergedGlobals = 0;
    __cxa_atexit(ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef, &_MergedGlobals, &dword_299F8C000);

    __cxa_guard_release(byte_2A14F5CD0);
  }
}

{
  dispatch_once(&BBUpdaterCommon::BBUReadNVRAM(void)::onceToken, &__block_literal_global_81);
}

atomic_ullong *std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t VinylFirmware::setAuthPayload(VinylFirmware *this, const __CFData *a2)
{
  v3 = *(this + 23);
  if (!v3)
  {
    v6 = 99;
    v7 = "%s::%s: failed to open libauthinstall dylib\n";
    goto LABEL_11;
  }

  v5 = dlsym(v3, "AMAuthInstallApImg4CreateStitchTicket");
  v3 = dlerror();
  v6 = 99;
  v7 = "%s::%s: failed to initialize LAI lib create function\n";
  if (v3 || !v5)
  {
    goto LABEL_11;
  }

  v8 = (v5)(0, *(this + 17), a2);
  if (!v8)
  {
    return 3;
  }

  v3 = VinylFirmware::stitchImg4Vad(v8, v8, *(this + 19), this + 20);
  v6 = v3;
  if (v3 || !*(this + 20))
  {
    v7 = "%s::%s: failed stiching img4 and vad\n";
LABEL_11:
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2, v7, "VinylFirmware", "setAuthPayload");
    return v6;
  }

  return 0;
}

uint64_t VinylFirmware::stitchImg4Vad(VinylFirmware *this, CFDataRef theData, const __CFData *a3, const __CFData **a4)
{
  v4 = 1;
  if (theData && a3)
  {
    MutableCopy = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    Length = CFDataGetLength(theData);
    v10 = CFDataGetLength(a3);
    MutableCopy = CFDataCreateMutableCopy(0, v10 + Length, theData);
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(a3);
      v12 = CFDataGetLength(a3);
      CFDataAppendBytes(MutableCopy, BytePtr, v12);
      if (DEREncoderCreate())
      {
        CFDataGetBytePtr(MutableCopy);
        CFDataGetLength(MutableCopy);
        EncodedBuffer = DEREncoderAddData();
        if (EncodedBuffer || (EncodedBuffer = DEREncoderCreateEncodedBuffer(), EncodedBuffer))
        {
          LogInstance = ACFULogging::getLogInstance(EncodedBuffer);
          ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to encode img4/vad sequence\n", "VinylFirmware", "stitchImg4Vad");
          goto LABEL_9;
        }

        v14 = CFDataCreate(0, 0, 0);
        *a4 = v14;
        if (v14)
        {
LABEL_9:
          v4 = 0;
          goto LABEL_10;
        }
      }
    }

    v4 = 2;
  }

  else
  {
    MutableCopy = 0;
  }

LABEL_10:
  DEREncoderDestroy();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v4;
}

uint64_t VinylFirmware::fwReaderInfoPlistCallback(VinylFirmware *this, void *a2, CFStringRef theString, ACFULogging *a4)
{
  v4 = 0;
  data = 0;
  if (!a2 || !theString || !a4)
  {
    return v4;
  }

  v8 = a2[2];
  if (!v8)
  {
    return 1;
  }

  HasSuffix = CFStringHasSuffix(theString, v8);
  if (!HasSuffix)
  {
    return 1;
  }

  error = 0;
  PathComponent = VinylFirmware::getPathComponent(HasSuffix, theString);
  if (PathComponent)
  {
    v11 = eUICCFwReaderFindAndCopyFileData(a4, theString, &data);
    if (!v11)
    {
      v12 = *MEMORY[0x29EDB8ED8];
      v13 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], data, 0, 0, &error);
      if (v13 && ((Mutable = a2[7]) != 0 || (Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), (a2[7] = Mutable) != 0)))
      {
        CFDictionaryAddValue(Mutable, PathComponent, v13);
        v4 = 1;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_12;
    }

    LogInstance = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find and/or copy data\n", "VinylFirmware", "fwReaderInfoPlistCallback");
  }

  v4 = 0;
  v13 = 0;
LABEL_12:
  if (data)
  {
    CFRelease(data);
    data = 0;
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v4;
}

uint64_t VinylFirmware::fwReaderCallback(VinylFirmware *this, void *a2, CFStringRef theString, ACFULogging *a4)
{
  v4 = 0;
  MutableCopy = 0;
  v44 = *MEMORY[0x29EDCA608];
  cf1 = 0;
  theData = 0;
  if (!a2 || !theString)
  {
    PathComponent = 0;
    ArrayBySeparatingStrings = 0;
    goto LABEL_60;
  }

  PathComponent = 0;
  ArrayBySeparatingStrings = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_39;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  if (!ArrayBySeparatingStrings)
  {
LABEL_54:
    MutableCopy = 0;
    PathComponent = 0;
    goto LABEL_57;
  }

  v13 = *(this + 23);
  if (!v13)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open libauthinstall dylib\n");
    goto LABEL_54;
  }

  v14 = dlsym(v13, "AMAuthInstallSupportCopyDataFromHexString");
  v15 = dlerror();
  if (v15 || !v14)
  {
    v37 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v37, 2, "%s::%s: failed to initialize LAI lib create function\n");
    goto LABEL_54;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
  v17 = v14(0, ValueAtIndex, &cf1);
  v4 = 0;
  MutableCopy = 0;
  if (!cf1 || v17)
  {
    PathComponent = 0;
LABEL_60:
    v10 = 0;
    goto LABEL_39;
  }

  v18 = *(a2 + 1);
  if (!v18 || (HasSuffix = CFStringHasSuffix(theString, v18), !HasSuffix))
  {
    MutableCopy = 0;
    PathComponent = 0;
    v10 = 0;
LABEL_38:
    v4 = 1;
    goto LABEL_39;
  }

  PathComponent = VinylFirmware::getPathComponent(HasSuffix, theString);
  if (!PathComponent || (Value = CFDictionaryGetValue(*(a2 + 7), PathComponent)) == 0)
  {
    MutableCopy = 0;
    goto LABEL_57;
  }

  v21 = CFDictionaryGetValue(Value, @"com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderVersionsSupported");
  MutableCopy = v21;
  if (!v21)
  {
    goto LABEL_57;
  }

  v22 = VinylFirmware::checkVinylFwLdrVerLegacy(v21, v21);
  v23 = *(a2 + 4);
  if (!v23)
  {
    MutableCopy = 0;
    v10 = 0;
    goto LABEL_28;
  }

  v24 = *(a2 + 5);
  if (!v24 || v22 && (v25 = VinylFirmware::fwLdrVerEqual(v22, MutableCopy, v24), v23 = *(a2 + 4), v25))
  {
    MutableCopy = 0;
    v10 = 0;
    if (!CFEqual(cf1, v23))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v23);
  if (!MutableCopy)
  {
LABEL_57:
    v10 = 0;
    goto LABEL_58;
  }

  BytePtr = CFDataGetBytePtr(*(a2 + 5));
  Length = CFDataGetLength(*(a2 + 5));
  CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
  CFDataGetBytePtr(MutableCopy);
  CFDataGetLength(MutableCopy);
  v28 = AMSupportDigestSha256();
  if (v28)
  {
    v40 = ACFULogging::getLogInstance(v28);
    ACFULogging::handleMessage(v40, 2, "%s::%s: failed to compute digest\n", "VinylFirmware", "fwReaderCallback");
    goto LABEL_57;
  }

  v10 = CFDataCreate(0, bytes, 32);
  if (!v10)
  {
    goto LABEL_58;
  }

  if (CFEqual(cf1, v10))
  {
LABEL_27:
    v29 = eUICCFwReaderFindAndCopyFileData(a4, theString, a2 + 3);
    if (v29)
    {
LABEL_61:
      v38 = ACFULogging::getLogInstance(v29);
      ACFULogging::handleMessage(v38, 2, "%s::%s: failed to find and/or copy data\n", "VinylFirmware", "fwReaderCallback");
      goto LABEL_58;
    }
  }

LABEL_28:
  v30 = *(a2 + 6);
  if (!v30)
  {
    goto LABEL_38;
  }

  v31 = CFArrayGetValueAtIndex(v30, 0);
  v32 = CFArrayGetValueAtIndex(*(a2 + 6), 1);
  v4 = 0;
  if (v31)
  {
    v33 = v32;
    if (v32)
    {
      if (cf1)
      {
        CFArrayAppendValue(v31, cf1);
        v29 = eUICCFwReaderFindAndCopyFileData(a4, theString, &theData);
        if (!v29)
        {
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          v34 = AMSupportDigestSha256();
          if (v34)
          {
            v39 = ACFULogging::getLogInstance(v34);
            ACFULogging::handleMessage(v39, 2, "%s::%s: failed to compute digest\n", "VinylFirmware", "fwReaderCallback");
            goto LABEL_38;
          }

          if (v10)
          {
            CFRelease(v10);
          }

          v10 = CFDataCreate(0, bytes, 32);
          if (v10)
          {
            CFArrayAppendValue(v33, v10);
            goto LABEL_38;
          }

          goto LABEL_58;
        }

        goto LABEL_61;
      }

LABEL_58:
      v4 = 0;
    }
  }

LABEL_39:
  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  if (cf1)
  {
    CFRelease(cf1);
    cf1 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  return v4;
}

uint64_t VinylFirmware::getFWSrcPath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 0, "%s::%s: AMSupportDigestSha256 failed:\n", "VinylFirmware", "getFWSrcPath");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid params passed\n", "VinylFirmware", "getFWSrcPath");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: srcPath memory alloc failed\n", "VinylFirmware", "getFWSrcPath");
}

uint64_t VinylFirmware::getFileDataFromZip(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, a1, "VinylFirmware", "getFileDataFromZip");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, a1, "VinylFirmware", "getFileDataFromZip");
  return eUICCFwReaderClose(0);
}

uint64_t VinylFirmware::createIm4p(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read zip file\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Count of certID != hashVad \n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to add certId\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to add VAD\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to add certId-VAD sequence\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to add top-level sequence\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to encode DER buffer\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize LAI lib create function\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open libauthinstall dylib\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Memory alloc failed certIds/VadDigest\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: No sources found \n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to build vinyl info.plist dictionary\n", "VinylFirmware", "createIm4p");
}

void VinylFirmware::createIm4p(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t VinylFirmware::getFwMac(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: fwMacData is wrong type\n", "VinylFirmware", "getFwMac");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Missing firmwareMac in info.plist -- firmware too old\n", "VinylFirmware", "getFwMac");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid plistDict\n", "VinylFirmware", "getFwMac");
}

uint64_t VinylFirmware::getPathComponent(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create dirPath\n", "VinylFirmware", "getPathComponent");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create fullURL\n", "VinylFirmware", "getPathComponent");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: fullPath is null\n", "VinylFirmware", "getPathComponent");
}

void VinylFirmware::getPathComponent(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create dirURL\n", "VinylFirmware", "getPathComponent");

  CFRelease(a1);
}

uint64_t VinylFirmware::checkVinylFwLdrVerLegacy(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: ldrVerComponents count is not expected\n", "VinylFirmware", "checkVinylFwLdrVerLegacy");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get ldrVer\n", "VinylFirmware", "checkVinylFwLdrVerLegacy");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: ldrVers count is zero\n", "VinylFirmware", "checkVinylFwLdrVerLegacy");
}

uint64_t VinylFirmware::fwLdrVerEqual(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: ldrVerComponents count is not expected\n", "VinylFirmware", "fwLdrVerEqual");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get byte ptr of fwldrver\n", "VinylFirmware", "fwLdrVerEqual");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get ldrVer\n", "VinylFirmware", "fwLdrVerEqual");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: fwldrver is null\n", "VinylFirmware", "fwLdrVerEqual");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: ldrVersStrArray count is zero\n", "VinylFirmware", "fwLdrVerEqual");
}

uint64_t VinylFirmware::getVersionString(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  result = ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid input Firmware.\n", "VinylFirmware", "getVersionString");
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  return result;
}

uint64_t VinylDaleCommunication::createTransport(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "VinylDaleCommunication", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  return _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "No router server available.. bail out\n");
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

uint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v17);
  std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](&v18, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](v17);
    v12 = v11;
    v13 = std::__width_estimation_table::__estimated_width[abi:ne200100](v10);
    v14 = v9 + v13;
    if (!a4 && v14 > a3)
    {
      break;
    }

    v15 = v12 == a2 || v14 > a3;
    v9 += v13;
  }

  while (!v15);
  return v9;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](unsigned __int8 **a1, _DWORD *a2, _BYTE *a3)
{
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](a1);
  v6 = v5 & 0x7FFFFFFF;
  v7 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v5 & 0x7FFFFFFF);
  v8 = v7;
  result = std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](a2, v6, v7);
  *a2 = v6;
  *a3 = v8;
  return result;
}

uint64_t VinylUpdaterExecCommand_cold_1(ACFULogging *a1)
{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to execute command %d\n", "VinylUpdater", "VinylUpdaterExecCommand", v1);
}

_BYTE *eUICC::eUICCVinylMAVValve::GetData(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylMAVValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v2, v3);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {

    return _BBULog(0, 1, "eUICCVinylMAVValve", "", "No transport available.. bail out\n");
  }

  return result;
}

_BYTE *eUICC::eUICCVinylMAVValve::DeleteProfile(_DWORD *a1, uint64_t a2)
{
  v3 = gBBULogMaskGet(a1, a2);
  if ((*v3 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v3 = OUTLINED_FUNCTION_0_0(v3, v4, "eUICCVinylMAVValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v3, v4);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "eUICCVinylMAVValve", "", "No transport available, bail out..\n");
  }

  *a1 = 18;
  return result;
}

uint64_t VinylController::VinylController(uint64_t a1)
{
  return (*(*a1 + 8))(a1);
}

{
  return (*(*a1 + 8))();
}

_BYTE *get_info(_DWORD *a1, uint64_t a2)
{
  v3 = gBBULogMaskGet(a1, a2);
  if ((*v3 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v3 = OUTLINED_FUNCTION_0_0(v3, v4, "VinylController", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v3, v4);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "VinylController", "", "Failed to allocate shared info dict\n");
  }

  *a1 = 1;
  return result;
}

_BYTE *VinylController::createTransportNoEvents(_DWORD *a1, uint64_t a2)
{
  v3 = gBBULogMaskGet(a1, a2);
  if ((*v3 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v3 = OUTLINED_FUNCTION_0_0(v3, v4, "VinylController", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v3, v4);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "VinylController", "", "fCommunication object not created, cannot create Transport\n");
  }

  *a1 = 1;
  return result;
}

_BYTE *VinylController::freeTransport(_DWORD *a1, uint64_t a2)
{
  v3 = gBBULogMaskGet(a1, a2);
  if ((*v3 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v3 = OUTLINED_FUNCTION_0_0(v3, v4, "VinylController", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v3, v4);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "VinylController", "", "fCommunication object not created, cannot free Transport\n");
  }

  *a1 = 0;
  return result;
}

uint64_t VinylTransport::getPersoParameters(ACFULogging *a1)
{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to peform get param update operation ret value = %d\n", "VinylTransport", "getPersoParameters", v1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create Controller object\n", "VinylTransport", "getPersoParameters");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to alloc memory for deviceInfoDict\n", "VinylTransport", "getPersoParameters");
}

uint64_t VinylTransport::updateFw(ACFULogging *a1)
{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to update FW, ret value = %d\n", "VinylTransport", "updateFw", v1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create vController object\n", "VinylTransport", "updateFw");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: create Main Fw failed\n", "VinylTransport", "updateFw");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: create Gold Fw failed\n", "VinylTransport", "updateFw");
}

uint64_t eUICC::eUICCVinylDALValve::waitForeSIMBoot(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::GetData(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::DeleteProfile(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::StoreData(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::InstallTicket(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::InitPerso(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::AuthPerso(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::ValidatePerso(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::InstallPairingMSM(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingGetNonce(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void _BBULogv()
{
  dispatch_once(&gLockGet(void)::once, &__block_literal_global_42);
}

{
  dispatch_once(&sLogBufferGet(void)::once, &__block_literal_global_46);
}

{
  dispatch_once(&sLogBufferGet(void)::once, &__block_literal_global_46);
}

uint64_t ctu::cf::convert_copy()
{
  return MEMORY[0x2A1C6F218]();
}

{
  return MEMORY[0x2A1C6F220]();
}

uint64_t ctu::cf::assign()
{
  return MEMORY[0x2A1C6F268]();
}

{
  return MEMORY[0x2A1C6F278]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE00]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2A1C70218](this, a2, a3, a4);
}

{
  return MEMORY[0x2A1C70230](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2A1C70220]();
}

{
  return MEMORY[0x2A1C70228]();
}

{
  return MEMORY[0x2A1C70238]();
}

{
  return MEMORY[0x2A1C70240]();
}

{
  return MEMORY[0x2A1C70250]();
}

{
  return MEMORY[0x2A1C70258]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}