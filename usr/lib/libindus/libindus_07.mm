uint64_t Extract_GAL_INAV_ALM(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (((v4 ^ v3) & 0x3C0) != 0)
  {
    return 0;
  }

  v6 = v3 >> 10;
  v7 = v4 >> 10;
  if (v3 >> 10 == 9)
  {
    if (v7 == 10)
    {
      *(a3 + 8) = v3;
      v12 = a1[1];
      *(a3 + 10) = v12;
      *(a3 + 10) = v12 & 0xFC00 | (2 * (a1[4] & 0x1FF)) | (a1[5] >> 15);
      HIDWORD(v13) = a1[5];
      LODWORD(v13) = a1[6] << 16;
      *(a3 + 12) = v13 >> 31;
      HIDWORD(v13) = a1[6];
      LODWORD(v13) = a1[7] << 16;
      *(a3 + 14) = v13 >> 31;
      *(a3 + 16) = (2 * a1[7]) | (*a2 >> 5) & 1;
      HIDWORD(v13) = *a2;
      LODWORD(v13) = a2[1] << 16;
      *(a3 + 18) = v13 >> 21;
      HIDWORD(v13) = a2[1];
      LODWORD(v13) = a2[2] << 16;
      *(a3 + 20) = v13 >> 21;
      HIDWORD(v13) = a2[2];
      LODWORD(v13) = a2[3] << 16;
      *(a3 + 22) = v13 >> 21;
      HIDWORD(v13) = a2[3];
      LODWORD(v13) = a2[4] << 16;
      *(a3 + 24) = v13 >> 21;
      v11 = (a2[5] >> 5) & 0x7E0 | (a2[4] << 11);
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 == 8)
  {
    if (v7 == 9)
    {
      *(a3 + 8) = v4;
      v9 = a2[1];
      *(a3 + 10) = v9;
      *(a3 + 10) = v9 & 0xFC00 | (32 * (a1[2] & 0x1F)) | (a1[3] >> 11);
      HIDWORD(v10) = a1[3];
      LODWORD(v10) = a1[4] << 16;
      *(a3 + 12) = v10 >> 27;
      HIDWORD(v10) = a1[4];
      LODWORD(v10) = a1[5] << 16;
      *(a3 + 14) = v10 >> 27;
      HIDWORD(v10) = a1[5];
      LODWORD(v10) = a1[6] << 16;
      *(a3 + 16) = v10 >> 27;
      HIDWORD(v10) = a1[6];
      LODWORD(v10) = a1[7] << 16;
      *(a3 + 18) = v10 >> 27;
      *(a3 + 20) = (32 * a1[7]) & 0xFFC0 | (a2[1] >> 4) & 0x3F;
      HIDWORD(v10) = a2[1];
      LODWORD(v10) = a2[2] << 16;
      *(a3 + 22) = v10 >> 20;
      HIDWORD(v10) = a2[2];
      LODWORD(v10) = a2[3] << 16;
      *(a3 + 24) = v10 >> 20;
      HIDWORD(v10) = a2[3];
      LODWORD(v10) = a2[4] << 16;
      v8 = v10 >> 20;
      goto LABEL_10;
    }

    return 0;
  }

  if (v6 != 7 || v7 != 8)
  {
    return 0;
  }

  *(a3 + 8) = *a1;
  *(a3 + 22) = *(a3 + 22) & 0xFFC0 | *a2 & 0x3F;
  *(a3 + 24) = a2[1];
  v8 = a2[2];
LABEL_10:
  LOWORD(v11) = v8 & 0xFFE0;
LABEL_13:
  *(a3 + 26) = v11;
  *(a3 + 28) = 0;
  return 1;
}

uint64_t XofAlmanacData::Decode(uint64_t a1, void *a2, _DWORD *a3, unsigned __int8 *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v8 = a4[17];
  memset(v27, 0, sizeof(v27));
  XofGpsQzssAlmCodec::XofGpsQzssAlmCodec(v27);
  v9 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGpsQzssAlmanac>,XofGpsQzssAlmCodec>(a1, a2, a3, v8, 0, v27, a1);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v27);
  if (v9 != 1)
  {
    return 5;
  }

  v10 = a4[113];
  memset(v26, 0, sizeof(v26));
  XofGpsQzssAlmCodec::XofGpsQzssAlmCodec(v26);
  v11 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGpsQzssAlmanac>,XofGpsQzssAlmCodec>(a1, a2, a3, v10, 2u, v26, a1 + 72);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v26);
  if (v11 != 1)
  {
    return 5;
  }

  v12 = a4[161];
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  XofGalileoAlmCodec::XofGalileoAlmCodec(v24);
  v13 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGalileoAlmanac>,XofGalileoAlmCodec>(a1, a2, a3, v12, 3u, v24, a1 + 48);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v24);
  if (v13 != 1)
  {
    return 5;
  }

  v14 = a4[209];
  bzero(v23, 0x280uLL);
  XofGlonassAlmCodec::XofGlonassAlmCodec(v23);
  v15 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGlonassAlmanac>,XofGlonassAlmCodec>(a1, a2, a3, v14, 4u, v23, a1 + 24);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>>::~__tuple_impl(v23);
  if (v15 != 1)
  {
    return 5;
  }

  v16 = a4[257];
  bzero(v22, 0x250uLL);
  XofBeidouAlmCodec::XofBeidouAlmCodec(v22);
  v17 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofBeidouAlmanac>,XofBeidouAlmCodec>(a1, a2, a3, v16, 5u, v22, a1 + 96);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v22);
  if (v17 != 1)
  {
    return 5;
  }

  v18 = a4[305];
  bzero(v21, 0x230uLL);
  XofNavicAlmCodec::XofNavicAlmCodec(v21);
  v19 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofNavicAlmanac>,XofNavicAlmCodec>(a1, a2, a3, v18, 6u, v21, a1 + 120);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>>::~__tuple_impl(v21);
  if (v19 == 1)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGpsQzssAlmanac>,XofGpsQzssAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v63 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 1;
  }

  v10 = 0;
  v37 = (a7 + 8);
  v43 = (a6 + 376);
  v44 = (a6 + 296);
  v40 = a6 + 392;
  v41 = a6 + 312;
  v38 = a6 + 456;
  v39 = a6 + 424;
  for (i = 0uLL; ; i = 0uLL)
  {
    v42 = v10;
    *v62 = i;
    *&v62[16] = i;
    *v61 = i;
    *&v61[16] = i;
    *&v60[16] = i;
    *&v60[32] = i;
    v59 = i;
    *v60 = i;
    *&v57[32] = i;
    v58 = i;
    *v57 = i;
    *&v57[16] = i;
    v55 = i;
    v56 = i;
    *v54 = i;
    *&v54[16] = i;
    *v53 = i;
    *&v53[16] = i;
    *v52 = i;
    *&v52[16] = i;
    *v51 = i;
    *&v51[16] = i;
    *&v50[16] = i;
    *&v49[16] = i;
    *v50 = i;
    *&v48[16] = i;
    *v49 = i;
    *&__str[16] = i;
    *v48 = i;
    *__str = i;
    XofGpsQzssAlmCodec::XofGpsQzssAlmCodec(__str);
    *a6 = *__str;
    if (*(a6 + 31) < 0)
    {
      operator delete(*(a6 + 8));
    }

    *(a6 + 8) = *&__str[8];
    *(a6 + 24) = *&__str[24];
    __str[31] = 0;
    __str[8] = 0;
    *(a6 + 32) = *v48;
    if (*(a6 + 63) < 0)
    {
      operator delete(*(a6 + 40));
    }

    *(a6 + 40) = *&v48[8];
    *(a6 + 56) = *&v48[24];
    v48[31] = 0;
    v48[8] = 0;
    *(a6 + 64) = *v49;
    if (*(a6 + 95) < 0)
    {
      operator delete(*(a6 + 72));
    }

    *(a6 + 72) = *&v49[8];
    *(a6 + 88) = *&v49[24];
    v49[31] = 0;
    v49[8] = 0;
    *(a6 + 96) = *v50;
    if (*(a6 + 127) < 0)
    {
      operator delete(*(a6 + 104));
    }

    *(a6 + 104) = *&v50[8];
    v12 = *&v50[24];
    v50[31] = 0;
    v50[8] = 0;
    v13 = *v51;
    *(a6 + 120) = v12;
    *(a6 + 128) = v13;
    if (*(a6 + 159) < 0)
    {
      operator delete(*(a6 + 136));
    }

    *(a6 + 136) = *&v51[8];
    v14 = *&v51[24];
    v51[31] = 0;
    v51[8] = 0;
    v15 = *v52;
    *(a6 + 152) = v14;
    *(a6 + 160) = v15;
    if (*(a6 + 191) < 0)
    {
      operator delete(*(a6 + 168));
    }

    *(a6 + 168) = *&v52[8];
    v16 = *&v52[24];
    v52[31] = 0;
    v52[8] = 0;
    v17 = *v53;
    *(a6 + 184) = v16;
    *(a6 + 192) = v17;
    if (*(a6 + 223) < 0)
    {
      operator delete(*(a6 + 200));
    }

    *(a6 + 200) = *&v53[8];
    v18 = *&v53[24];
    v53[31] = 0;
    v53[8] = 0;
    v19 = *v54;
    *(a6 + 216) = v18;
    *(a6 + 224) = v19;
    if (*(a6 + 255) < 0)
    {
      operator delete(*(a6 + 232));
    }

    *(a6 + 232) = *&v54[8];
    *(a6 + 248) = *&v54[24];
    v54[31] = 0;
    v54[8] = 0;
    *(a6 + 256) = v55;
    if (*(a6 + 295) < 0)
    {
      operator delete(*(a6 + 272));
    }

    *(a6 + 272) = v56;
    *(a6 + 288) = *v57;
    v57[7] = 0;
    LOBYTE(v56) = 0;
    *v44 = *&v57[8];
    if (*(a6 + 335) < 0)
    {
      operator delete(*v41);
    }

    *v41 = *&v57[24];
    *(v41 + 16) = *&v57[40];
    v57[47] = 0;
    v57[24] = 0;
    *(a6 + 336) = v58;
    if (*(a6 + 375) < 0)
    {
      operator delete(*(a6 + 352));
    }

    *(a6 + 352) = v59;
    *(a6 + 368) = *v60;
    v60[7] = 0;
    LOBYTE(v59) = 0;
    *v43 = *&v60[8];
    if (*(a6 + 415) < 0)
    {
      operator delete(*v40);
    }

    *v40 = *&v60[24];
    *(v40 + 16) = *&v60[40];
    v60[47] = 0;
    v60[24] = 0;
    *(a6 + 416) = *v61;
    if (*(a6 + 447) < 0)
    {
      operator delete(*v39);
    }

    *v39 = *&v61[8];
    *(v39 + 16) = *&v61[24];
    v61[31] = 0;
    v61[8] = 0;
    *(a6 + 448) = *v62;
    if (*(a6 + 479) < 0)
    {
      operator delete(*v38);
    }

    *v38 = *&v62[8];
    *(v38 + 16) = *&v62[24];
    v62[31] = 0;
    v62[8] = 0;
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
    if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 128), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 160), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 192), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 224), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a6 + 256), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v44, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 336), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v43, a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 416), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 448), a2, a3) != 1)
    {
      break;
    }

    v20 = *(a6 + 3);
    v21 = *v37;
    if (*v37)
    {
      v22 = v37;
      v23 = *v37;
      do
      {
        v24 = *(v23 + 28);
        v25 = v24 >= v20;
        v26 = v24 < v20;
        if (v25)
        {
          v22 = v23;
        }

        v23 = *(v23 + 8 * v26);
      }

      while (v23);
      if (v22 != v37 && v20 >= *(v22 + 28))
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v34 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 87, "DecodeSVs", v20);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        return 5;
      }
    }

    if (!v21)
    {
LABEL_59:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v27 = v21;
        v28 = *(v21 + 28);
        if (v28 <= v20)
        {
          break;
        }

        v21 = *v27;
        if (!*v27)
        {
          goto LABEL_59;
        }
      }

      if (v28 >= v20)
      {
        break;
      }

      v21 = v27[1];
      if (!v21)
      {
        goto LABEL_59;
      }
    }

    v10 = v42 + 1;
    if (v42 + 1 == a4)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v30 = mach_continuous_time();
    if (a5 > 7)
    {
      v31 = "   ";
    }

    else
    {
      v31 = off_29EF06478[a5];
    }

    v32 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v31);
    if (v46 >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v32 * v30), "GNC", 87, "DecodeSVs", v33, v42 + 1);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 5;
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGalileoAlmanac>,XofGalileoAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v78 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 1;
  }

  v10 = 0;
  v48 = (a7 + 8);
  while (1)
  {
    v49 = v10;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v53 = 0u;
    memset(__str, 0, sizeof(__str));
    XofGalileoAlmCodec::XofGalileoAlmCodec(__str);
    *a6 = *__str;
    if (*(a6 + 31) < 0)
    {
      operator delete(*(a6 + 8));
    }

    *(a6 + 8) = *&__str[8];
    *(a6 + 24) = *&__str[24];
    __str[31] = 0;
    __str[8] = 0;
    *(a6 + 32) = *&__str[32];
    if (*(a6 + 63) < 0)
    {
      operator delete(*(a6 + 40));
    }

    *(a6 + 40) = *&__str[40];
    v11 = *&__str[56];
    __str[63] = 0;
    __str[40] = 0;
    v12 = *&__str[64];
    *(a6 + 56) = v11;
    *(a6 + 64) = v12;
    if (*(a6 + 95) < 0)
    {
      operator delete(*(a6 + 72));
    }

    *(a6 + 72) = *&__str[72];
    *(a6 + 88) = *&__str[88];
    __str[95] = 0;
    __str[72] = 0;
    *(a6 + 96) = v53;
    if (*(a6 + 135) < 0)
    {
      operator delete(*(a6 + 112));
    }

    *(a6 + 112) = v54;
    v13 = v55;
    BYTE7(v55) = 0;
    LOBYTE(v54) = 0;
    v14 = *(&v55 + 1);
    *(a6 + 128) = v13;
    *(a6 + 136) = v14;
    if (*(a6 + 167) < 0)
    {
      operator delete(*(a6 + 144));
    }

    *(a6 + 144) = v56;
    v15 = v57;
    BYTE7(v57) = 0;
    LOBYTE(v56) = 0;
    v16 = *(&v57 + 1);
    *(a6 + 160) = v15;
    *(a6 + 168) = v16;
    if (*(a6 + 199) < 0)
    {
      operator delete(*(a6 + 176));
    }

    *(a6 + 176) = v58;
    v17 = v59;
    BYTE7(v59) = 0;
    LOBYTE(v58) = 0;
    v18 = *(&v59 + 1);
    *(a6 + 192) = v17;
    *(a6 + 200) = v18;
    if (*(a6 + 231) < 0)
    {
      operator delete(*(a6 + 208));
    }

    *(a6 + 208) = v60;
    *(a6 + 224) = v61;
    BYTE7(v61) = 0;
    LOBYTE(v60) = 0;
    *(a6 + 232) = DWORD2(v61);
    if (*(a6 + 263) < 0)
    {
      operator delete(*(a6 + 240));
    }

    *(a6 + 240) = v62;
    *(a6 + 256) = v63;
    BYTE7(v63) = 0;
    LOBYTE(v62) = 0;
    *(a6 + 264) = DWORD2(v63);
    if (*(a6 + 295) < 0)
    {
      operator delete(*(a6 + 272));
    }

    *(a6 + 272) = v64;
    v19 = v65;
    BYTE7(v65) = 0;
    LOBYTE(v64) = 0;
    v20 = *(&v65 + 1);
    *(a6 + 288) = v19;
    *(a6 + 296) = v20;
    if (*(a6 + 327) < 0)
    {
      operator delete(*(a6 + 304));
    }

    *(a6 + 304) = v66;
    v21 = v67;
    BYTE7(v67) = 0;
    LOBYTE(v66) = 0;
    v22 = *(&v67 + 1);
    *(a6 + 320) = v21;
    *(a6 + 328) = v22;
    if (*(a6 + 359) < 0)
    {
      operator delete(*(a6 + 336));
    }

    *(a6 + 336) = v68;
    v23 = v69;
    BYTE7(v69) = 0;
    LOBYTE(v68) = 0;
    v24 = *(&v69 + 1);
    *(a6 + 352) = v23;
    *(a6 + 360) = v24;
    if (*(a6 + 391) < 0)
    {
      operator delete(*(a6 + 368));
    }

    *(a6 + 368) = v70;
    v25 = v71;
    BYTE7(v71) = 0;
    LOBYTE(v70) = 0;
    v26 = *(&v71 + 1);
    *(a6 + 384) = v25;
    *(a6 + 392) = v26;
    if (*(a6 + 423) < 0)
    {
      operator delete(*(a6 + 400));
    }

    *(a6 + 400) = v72;
    v27 = v73;
    BYTE7(v73) = 0;
    LOBYTE(v72) = 0;
    v28 = *(&v73 + 1);
    *(a6 + 416) = v27;
    *(a6 + 424) = v28;
    if (*(a6 + 455) < 0)
    {
      operator delete(*(a6 + 432));
    }

    *(a6 + 432) = v74;
    v29 = v75;
    BYTE7(v75) = 0;
    LOBYTE(v74) = 0;
    v30 = *(&v75 + 1);
    *(a6 + 448) = v29;
    *(a6 + 456) = v30;
    if (*(a6 + 487) < 0)
    {
      operator delete(*(a6 + 464));
    }

    *(a6 + 464) = v76;
    *(a6 + 480) = v77;
    HIBYTE(v77) = 0;
    LOBYTE(v76) = 0;
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
    if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 136), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 168), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 200), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 232), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 264), a2, a3) != 1 || !XofGenericCodec::Decode<9ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a6, a2, a3))
    {
      break;
    }

    v31 = *(a6 + 3);
    v32 = *v48;
    if (*v48)
    {
      v33 = v48;
      v34 = *v48;
      do
      {
        v35 = *(v34 + 28);
        v36 = v35 >= v31;
        v37 = v35 < v31;
        if (v36)
        {
          v33 = v34;
        }

        v34 = *(v34 + 8 * v37);
      }

      while (v34);
      if (v33 != v48 && v31 >= *(v33 + 28))
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v45 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v45), "GNC", 87, "DecodeSVs", v31);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        return 5;
      }
    }

    if (!v32)
    {
LABEL_57:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v38 = v32;
        v39 = *(v32 + 28);
        if (v39 <= v31)
        {
          break;
        }

        v32 = *v38;
        if (!*v38)
        {
          goto LABEL_57;
        }
      }

      if (v39 >= v31)
      {
        break;
      }

      v32 = v38[1];
      if (!v32)
      {
        goto LABEL_57;
      }
    }

    v10 = v49 + 1;
    if (v49 + 1 == a4)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v41 = mach_continuous_time();
    if (a5 > 7)
    {
      v42 = "   ";
    }

    else
    {
      v42 = off_29EF06478[a5];
    }

    v43 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v42);
    if (v51 >= 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v43 * v41), "GNC", 87, "DecodeSVs", v44, v49 + 1);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 5;
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGlonassAlmanac>,XofGlonassAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v103 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 1;
  }

  v10 = 0;
  v30 = (a7 + 8);
  v42 = (a6 + 344);
  v43 = (a6 + 264);
  v39 = a6 + 360;
  v40 = a6 + 280;
  v37 = a6 + 424;
  v38 = a6 + 392;
  v35 = a6 + 488;
  v36 = a6 + 456;
  v33 = a6 + 552;
  v34 = a6 + 520;
  v31 = a6 + 616;
  v32 = a6 + 584;
  while (1)
  {
    v41 = v10;
    bzero(__str, 0x280uLL);
    XofGlonassAlmCodec::XofGlonassAlmCodec(__str);
    *a6 = *__str;
    if (*(a6 + 31) < 0)
    {
      operator delete(*(a6 + 8));
    }

    *(a6 + 8) = v47;
    *(a6 + 24) = v48;
    HIBYTE(v48) = 0;
    LOBYTE(v47) = 0;
    *(a6 + 32) = v49;
    if (*(a6 + 63) < 0)
    {
      operator delete(*(a6 + 40));
    }

    *(a6 + 40) = v50;
    *(a6 + 56) = v51;
    HIBYTE(v51) = 0;
    LOBYTE(v50) = 0;
    *(a6 + 64) = v52;
    if (*(a6 + 95) < 0)
    {
      operator delete(*(a6 + 72));
    }

    *(a6 + 72) = v53;
    *(a6 + 88) = v54;
    HIBYTE(v54) = 0;
    LOBYTE(v53) = 0;
    *(a6 + 96) = v55;
    if (*(a6 + 127) < 0)
    {
      operator delete(*(a6 + 104));
    }

    *(a6 + 104) = v56;
    v11 = v57;
    HIBYTE(v57) = 0;
    LOBYTE(v56) = 0;
    v12 = v58;
    *(a6 + 120) = v11;
    *(a6 + 128) = v12;
    if (*(a6 + 159) < 0)
    {
      operator delete(*(a6 + 136));
    }

    *(a6 + 136) = v59;
    *(a6 + 152) = v60;
    HIBYTE(v60) = 0;
    LOBYTE(v59) = 0;
    *(a6 + 160) = v61;
    if (*(a6 + 191) < 0)
    {
      operator delete(*(a6 + 168));
    }

    *(a6 + 168) = v62;
    *(a6 + 184) = v63;
    HIBYTE(v63) = 0;
    LOBYTE(v62) = 0;
    *(a6 + 192) = v64;
    if (*(a6 + 223) < 0)
    {
      operator delete(*(a6 + 200));
    }

    *(a6 + 200) = v65;
    *(a6 + 216) = v66;
    HIBYTE(v66) = 0;
    LOBYTE(v65) = 0;
    *(a6 + 224) = v67;
    if (*(a6 + 263) < 0)
    {
      operator delete(*(a6 + 240));
    }

    *(a6 + 240) = v68;
    *(a6 + 256) = v69;
    HIBYTE(v69) = 0;
    LOBYTE(v68) = 0;
    *v43 = v70;
    if (*(a6 + 303) < 0)
    {
      operator delete(*v40);
    }

    *v40 = v71;
    *(v40 + 16) = v72;
    HIBYTE(v72) = 0;
    LOBYTE(v71) = 0;
    *(a6 + 304) = v73;
    if (*(a6 + 343) < 0)
    {
      operator delete(*(a6 + 320));
    }

    *(a6 + 320) = v74;
    *(a6 + 336) = v75;
    HIBYTE(v75) = 0;
    LOBYTE(v74) = 0;
    *v42 = v76;
    if (*(a6 + 383) < 0)
    {
      operator delete(*v39);
    }

    *v39 = v77;
    *(v39 + 16) = v78;
    HIBYTE(v78) = 0;
    LOBYTE(v77) = 0;
    *(a6 + 384) = v79;
    if (*(a6 + 415) < 0)
    {
      operator delete(*v38);
    }

    *v38 = v80;
    *(v38 + 16) = v81;
    HIBYTE(v81) = 0;
    LOBYTE(v80) = 0;
    *(a6 + 416) = v82;
    if (*(a6 + 447) < 0)
    {
      operator delete(*v37);
    }

    *v37 = v83;
    *(v37 + 16) = v84;
    HIBYTE(v84) = 0;
    LOBYTE(v83) = 0;
    *(a6 + 448) = v85;
    if (*(a6 + 479) < 0)
    {
      operator delete(*v36);
    }

    *v36 = v86;
    *(v36 + 16) = v87;
    HIBYTE(v87) = 0;
    LOBYTE(v86) = 0;
    *(a6 + 480) = v88;
    if (*(a6 + 511) < 0)
    {
      operator delete(*v35);
    }

    *v35 = v89;
    *(v35 + 16) = v90;
    HIBYTE(v90) = 0;
    LOBYTE(v89) = 0;
    *(a6 + 512) = v91;
    if (*(a6 + 543) < 0)
    {
      operator delete(*v34);
    }

    *v34 = v92;
    *(v34 + 16) = v93;
    HIBYTE(v93) = 0;
    LOBYTE(v92) = 0;
    *(a6 + 544) = v94;
    if (*(a6 + 575) < 0)
    {
      operator delete(*v33);
    }

    *v33 = v95;
    *(v33 + 16) = v96;
    HIBYTE(v96) = 0;
    LOBYTE(v95) = 0;
    *(a6 + 576) = v97;
    if (*(a6 + 607) < 0)
    {
      operator delete(*v32);
    }

    *v32 = v98;
    *(v32 + 16) = v99;
    HIBYTE(v99) = 0;
    LOBYTE(v98) = 0;
    *(a6 + 608) = v100;
    if (*(a6 + 639) < 0)
    {
      operator delete(*v31);
    }

    *v31 = v101;
    *(v31 + 16) = v102;
    HIBYTE(v102) = 0;
    LOBYTE(v101) = 0;
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>>::~__tuple_impl(__str);
    if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 128), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 160), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 192), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 224), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData(v43, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 304), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v42, a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a6 + 384), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 416), a2, a3) != 1 || !XofGenericCodec::Decode<13ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>>(a6, a2, a3))
    {
      break;
    }

    v13 = *(a6 + 3);
    v14 = *v30;
    if (*v30)
    {
      v15 = v30;
      v16 = *v30;
      do
      {
        v17 = *(v16 + 28);
        v18 = v17 >= v13;
        v19 = v17 < v13;
        if (v18)
        {
          v15 = v16;
        }

        v16 = *(v16 + 8 * v19);
      }

      while (v16);
      if (v15 != v30 && v13 >= *(v15 + 28))
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v27 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 87, "DecodeSVs", v13);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        return 5;
      }
    }

    if (!v14)
    {
LABEL_69:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v20 = v14;
        v21 = *(v14 + 28);
        if (v21 <= v13)
        {
          break;
        }

        v14 = *v20;
        if (!*v20)
        {
          goto LABEL_69;
        }
      }

      if (v21 >= v13)
      {
        break;
      }

      v14 = v20[1];
      if (!v14)
      {
        goto LABEL_69;
      }
    }

    v10 = v41 + 1;
    if (v41 + 1 == a4)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v23 = mach_continuous_time();
    if (a5 > 7)
    {
      v24 = "   ";
    }

    else
    {
      v24 = off_29EF06478[a5];
    }

    v25 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v24);
    if (v45 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v25 * v23), "GNC", 87, "DecodeSVs", v26, v41 + 1);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 5;
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofBeidouAlmanac>,XofBeidouAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v95 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 1;
  }

  v10 = 0;
  v31 = (a7 + 8);
  v40 = (a6 + 344);
  v41 = (a6 + 264);
  v37 = a6 + 360;
  v38 = a6 + 280;
  v30 = (a6 + 424);
  v35 = a6 + 472;
  v36 = a6 + 440;
  v33 = a6 + 536;
  v34 = a6 + 504;
  v32 = a6 + 568;
  while (1)
  {
    v39 = v10;
    bzero(__str, 0x250uLL);
    XofBeidouAlmCodec::XofBeidouAlmCodec(__str);
    *a6 = *__str;
    if (*(a6 + 31) < 0)
    {
      operator delete(*(a6 + 8));
    }

    *(a6 + 8) = v45;
    *(a6 + 24) = v46;
    HIBYTE(v46) = 0;
    LOBYTE(v45) = 0;
    *(a6 + 32) = v47;
    if (*(a6 + 63) < 0)
    {
      operator delete(*(a6 + 40));
    }

    *(a6 + 40) = v48;
    *(a6 + 56) = v49;
    HIBYTE(v49) = 0;
    LOBYTE(v48) = 0;
    *(a6 + 64) = v50;
    if (*(a6 + 95) < 0)
    {
      operator delete(*(a6 + 72));
    }

    *(a6 + 72) = v51;
    *(a6 + 88) = v52;
    HIBYTE(v52) = 0;
    LOBYTE(v51) = 0;
    *(a6 + 96) = v53;
    if (*(a6 + 127) < 0)
    {
      operator delete(*(a6 + 104));
    }

    *(a6 + 104) = v54;
    *(a6 + 120) = v55;
    HIBYTE(v55) = 0;
    LOBYTE(v54) = 0;
    *(a6 + 128) = v56;
    if (*(a6 + 159) < 0)
    {
      operator delete(*(a6 + 136));
    }

    *(a6 + 136) = v57;
    *(a6 + 152) = v58;
    HIBYTE(v58) = 0;
    LOBYTE(v57) = 0;
    *(a6 + 160) = v59;
    if (*(a6 + 191) < 0)
    {
      operator delete(*(a6 + 168));
    }

    *(a6 + 168) = v60;
    v11 = v61;
    HIBYTE(v61) = 0;
    LOBYTE(v60) = 0;
    v12 = v62;
    *(a6 + 184) = v11;
    *(a6 + 192) = v12;
    if (*(a6 + 223) < 0)
    {
      operator delete(*(a6 + 200));
    }

    *(a6 + 200) = v63;
    *(a6 + 216) = v64;
    HIBYTE(v64) = 0;
    LOBYTE(v63) = 0;
    *(a6 + 224) = v65;
    if (*(a6 + 263) < 0)
    {
      operator delete(*(a6 + 240));
    }

    *(a6 + 240) = v66;
    *(a6 + 256) = v67;
    HIBYTE(v67) = 0;
    LOBYTE(v66) = 0;
    *v41 = v68;
    if (*(a6 + 303) < 0)
    {
      operator delete(*v38);
    }

    *v38 = v69;
    *(v38 + 16) = v70;
    HIBYTE(v70) = 0;
    LOBYTE(v69) = 0;
    *(a6 + 304) = v71;
    if (*(a6 + 343) < 0)
    {
      operator delete(*(a6 + 320));
    }

    *(a6 + 320) = v72;
    *(a6 + 336) = v73;
    HIBYTE(v73) = 0;
    LOBYTE(v72) = 0;
    *v40 = v74;
    if (*(a6 + 383) < 0)
    {
      operator delete(*v37);
    }

    *v37 = v75;
    *(v37 + 16) = v76;
    HIBYTE(v76) = 0;
    LOBYTE(v75) = 0;
    *(a6 + 384) = v77;
    if (*(a6 + 423) < 0)
    {
      operator delete(*(a6 + 400));
    }

    *(a6 + 400) = v78;
    *(a6 + 416) = v79;
    HIBYTE(v79) = 0;
    LOBYTE(v78) = 0;
    *v30 = v80;
    if (*(a6 + 463) < 0)
    {
      operator delete(*v36);
    }

    *v36 = v81;
    *(v36 + 16) = v82;
    HIBYTE(v82) = 0;
    LOBYTE(v81) = 0;
    *(a6 + 464) = v83;
    if (*(a6 + 495) < 0)
    {
      operator delete(*v35);
    }

    *v35 = v84;
    *(v35 + 16) = v85;
    HIBYTE(v85) = 0;
    LOBYTE(v84) = 0;
    *(a6 + 496) = v86;
    if (*(a6 + 527) < 0)
    {
      operator delete(*v34);
    }

    *v34 = v87;
    *(v34 + 16) = v88;
    HIBYTE(v88) = 0;
    LOBYTE(v87) = 0;
    *(a6 + 528) = v89;
    if (*(a6 + 559) < 0)
    {
      operator delete(*v33);
    }

    *v33 = v90;
    *(v33 + 16) = v91;
    HIBYTE(v91) = 0;
    LOBYTE(v90) = 0;
    *(a6 + 560) = v92;
    if (*(a6 + 591) < 0)
    {
      operator delete(*v32);
    }

    *v32 = v93;
    *(v32 + 16) = v94;
    HIBYTE(v94) = 0;
    LOBYTE(v93) = 0;
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
    if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 128), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 160), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 192), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a6 + 224), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData(v41, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 304), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v40, a2, a3) != 1 || !XofGenericCodec::Decode<11ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a6, a2, a3))
    {
      break;
    }

    v13 = *(a6 + 3);
    v14 = *v31;
    if (*v31)
    {
      v15 = v31;
      v16 = *v31;
      do
      {
        v17 = *(v16 + 28);
        v18 = v17 >= v13;
        v19 = v17 < v13;
        if (v18)
        {
          v15 = v16;
        }

        v16 = *(v16 + 8 * v19);
      }

      while (v16);
      if (v15 != v31 && v13 >= *(v15 + 28))
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v27 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 87, "DecodeSVs", v13);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        return 5;
      }
    }

    if (!v14)
    {
LABEL_63:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v20 = v14;
        v21 = *(v14 + 28);
        if (v21 <= v13)
        {
          break;
        }

        v14 = *v20;
        if (!*v20)
        {
          goto LABEL_63;
        }
      }

      if (v21 >= v13)
      {
        break;
      }

      v14 = v20[1];
      if (!v14)
      {
        goto LABEL_63;
      }
    }

    v10 = v39 + 1;
    if (v39 + 1 == a4)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v23 = mach_continuous_time();
    if (a5 > 7)
    {
      v24 = "   ";
    }

    else
    {
      v24 = off_29EF06478[a5];
    }

    v25 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v24);
    if (v43 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v25 * v23), "GNC", 87, "DecodeSVs", v26, v39 + 1);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 5;
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofNavicAlmanac>,XofNavicAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v99 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    return 1;
  }

  v10 = 0;
  v42 = (a7 + 8);
  v48 = (a6 + 296);
  v45 = a6 + 392;
  v46 = a6 + 312;
  v41 = (a6 + 376);
  v43 = a6 + 536;
  v44 = a6 + 496;
  v40 = (a6 + 520);
  while (1)
  {
    v47 = v10;
    bzero(__str, 0x230uLL);
    XofNavicAlmCodec::XofNavicAlmCodec(__str);
    *a6 = *__str;
    if (*(a6 + 31) < 0)
    {
      operator delete(*(a6 + 8));
    }

    *(a6 + 8) = v52;
    v11 = v53;
    HIBYTE(v53) = 0;
    LOBYTE(v52) = 0;
    v12 = v54;
    *(a6 + 24) = v11;
    *(a6 + 32) = v12;
    if (*(a6 + 63) < 0)
    {
      operator delete(*(a6 + 40));
    }

    *(a6 + 40) = v55;
    v13 = v56;
    HIBYTE(v56) = 0;
    LOBYTE(v55) = 0;
    v14 = v57;
    *(a6 + 56) = v13;
    *(a6 + 64) = v14;
    if (*(a6 + 95) < 0)
    {
      operator delete(*(a6 + 72));
    }

    *(a6 + 72) = v58;
    v15 = v59;
    HIBYTE(v59) = 0;
    LOBYTE(v58) = 0;
    v16 = v60;
    *(a6 + 88) = v15;
    *(a6 + 96) = v16;
    if (*(a6 + 127) < 0)
    {
      operator delete(*(a6 + 104));
    }

    *(a6 + 104) = v61;
    *(a6 + 120) = v62;
    HIBYTE(v62) = 0;
    LOBYTE(v61) = 0;
    *(a6 + 128) = v63;
    if (*(a6 + 159) < 0)
    {
      operator delete(*(a6 + 136));
    }

    *(a6 + 136) = v64;
    *(a6 + 152) = v65;
    HIBYTE(v65) = 0;
    LOBYTE(v64) = 0;
    *(a6 + 160) = v66;
    if (*(a6 + 199) < 0)
    {
      operator delete(*(a6 + 176));
    }

    *(a6 + 176) = v67;
    v17 = v68;
    HIBYTE(v68) = 0;
    LOBYTE(v67) = 0;
    v18 = v69;
    *(a6 + 192) = v17;
    *(a6 + 200) = v18;
    if (*(a6 + 231) < 0)
    {
      operator delete(*(a6 + 208));
    }

    *(a6 + 208) = v70;
    *(a6 + 224) = v71;
    HIBYTE(v71) = 0;
    LOBYTE(v70) = 0;
    *(a6 + 232) = v72;
    if (*(a6 + 263) < 0)
    {
      operator delete(*(a6 + 240));
    }

    *(a6 + 240) = v73;
    *(a6 + 256) = v74;
    HIBYTE(v74) = 0;
    LOBYTE(v73) = 0;
    *(a6 + 264) = v75;
    if (*(a6 + 295) < 0)
    {
      operator delete(*(a6 + 272));
    }

    *(a6 + 272) = v76;
    *(a6 + 288) = v77;
    HIBYTE(v77) = 0;
    LOBYTE(v76) = 0;
    *v48 = v78;
    if (*(a6 + 335) < 0)
    {
      operator delete(*v46);
    }

    *v46 = v79;
    *(v46 + 16) = v80;
    HIBYTE(v80) = 0;
    LOBYTE(v79) = 0;
    *(a6 + 336) = v81;
    if (*(a6 + 375) < 0)
    {
      operator delete(*(a6 + 352));
    }

    *(a6 + 352) = v82;
    *(a6 + 368) = v83;
    HIBYTE(v83) = 0;
    LOBYTE(v82) = 0;
    *v41 = v84;
    if (*(a6 + 415) < 0)
    {
      operator delete(*v45);
    }

    *v45 = v85;
    *(v45 + 16) = v86;
    HIBYTE(v86) = 0;
    LOBYTE(v85) = 0;
    *(a6 + 416) = v87;
    if (*(a6 + 455) < 0)
    {
      operator delete(*(a6 + 432));
    }

    *(a6 + 432) = v88;
    v19 = v89;
    HIBYTE(v89) = 0;
    LOBYTE(v88) = 0;
    v20 = v90;
    *(a6 + 448) = v19;
    *(a6 + 456) = v20;
    if (*(a6 + 487) < 0)
    {
      operator delete(*(a6 + 464));
    }

    *(a6 + 464) = v91;
    v21 = v92;
    HIBYTE(v92) = 0;
    LOBYTE(v91) = 0;
    v22 = v93;
    *(a6 + 480) = v21;
    *(a6 + 488) = v22;
    if (*(a6 + 519) < 0)
    {
      operator delete(*v44);
    }

    *v44 = v94;
    *(v44 + 16) = v95;
    HIBYTE(v95) = 0;
    LOBYTE(v94) = 0;
    *v40 = v96;
    if (*(a6 + 559) < 0)
    {
      operator delete(*v43);
    }

    *v43 = v97;
    *(v43 + 16) = v98;
    HIBYTE(v98) = 0;
    LOBYTE(v97) = 0;
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>>::~__tuple_impl(__str);
    if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a6 + 128), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 160), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 200), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 232), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 264), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData(v48, a2, a3) != 1 || !XofGenericCodec::Decode<10ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>>(a6, a2, a3))
    {
      break;
    }

    v23 = *(a6 + 3);
    v24 = *v42;
    if (*v42)
    {
      v25 = v42;
      v26 = *v42;
      do
      {
        v27 = *(v26 + 28);
        v28 = v27 >= v23;
        v29 = v27 < v23;
        if (v28)
        {
          v25 = v26;
        }

        v26 = *(v26 + 8 * v29);
      }

      while (v26);
      if (v25 != v42 && v23 >= *(v25 + 28))
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v37 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v37), "GNC", 87, "DecodeSVs", v23);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        return 5;
      }
    }

    if (!v24)
    {
LABEL_60:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v30 = v24;
        v31 = *(v24 + 28);
        if (v31 <= v23)
        {
          break;
        }

        v24 = *v30;
        if (!*v30)
        {
          goto LABEL_60;
        }
      }

      if (v31 >= v23)
      {
        break;
      }

      v24 = v30[1];
      if (!v24)
      {
        goto LABEL_60;
      }
    }

    v10 = v47 + 1;
    if (v47 + 1 == a4)
    {
      return 1;
    }
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v33 = mach_continuous_time();
    if (a5 > 7)
    {
      v34 = "   ";
    }

    else
    {
      v34 = off_29EF06478[a5];
    }

    v35 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v34);
    if (v50 >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v35 * v33), "GNC", 87, "DecodeSVs", v36, v47 + 1);
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 5;
}

void XofGpsQzssAlmCodec::XofGpsQzssAlmCodec(XofGpsQzssAlmCodec *this)
{
  v76 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v72, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v73, &v72, 1, 202, 0);
  std::string::basic_string[abi:ne200100]<0>(&v68, "weekNo");
  XofIntegralType<unsigned char>::XofIntegralType(&v69, &v68, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v64, "toa");
  XofIntegralType<unsigned char>::XofIntegralType(&v65, &v64, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v60, "svHealth");
  XofIntegralType<unsigned char>::XofIntegralType(&v61, &v60, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v56, "e");
  XofIntegralType<unsigned short>::XofIntegralType(&v57, &v56, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v52, "deltaI");
  XofIntegralType<short>::XofIntegralType(&v53, &v52, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v48, "omegaDot");
  XofIntegralType<short>::XofIntegralType(&v49, &v48, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v44, "reserved");
  XofIntegralType<unsigned short>::XofIntegralType(&v45, &v44, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v40, "sqrtA");
  XofIntegralType<unsigned int>::XofIntegralType(&v41, &v40, 0, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v36, "omega0");
  XofIntegralType<int>::XofIntegralType(&v37, &v36, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v32, "w");
  XofIntegralType<int>::XofIntegralType(&v33, &v32, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v28, "m");
  XofIntegralType<int>::XofIntegralType(&v29, &v28, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v24, "af0");
  XofIntegralType<short>::XofIntegralType(&v25, &v24, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "af1");
  XofIntegralType<short>::XofIntegralType(&v21, &__p, -1024, 1023, 0);
  *(this + 8) = v74;
  *(this + 40) = v70;
  *(this + 72) = v66;
  *(this + 104) = v62;
  *(this + 136) = v58;
  *(this + 168) = v54;
  *(this + 200) = v50;
  *(this + 232) = v46;
  v2 = v42;
  *(this + 16) = v41;
  *(this + 17) = v2;
  v3 = v38;
  *(this + 296) = v37;
  *(this + 312) = v3;
  v4 = v34;
  *(this + 21) = v33;
  *(this + 22) = v4;
  v5 = v30;
  *(this + 376) = v29;
  *this = v73;
  *(this + 3) = v75;
  v74 = 0uLL;
  v75 = 0;
  *(this + 8) = v69;
  *(this + 7) = v71;
  v71 = 0;
  v70 = 0uLL;
  *(this + 16) = v65;
  *(this + 11) = v67;
  v66 = 0uLL;
  v67 = 0;
  *(this + 24) = v61;
  v6 = v63;
  v62 = 0uLL;
  v63 = 0;
  v7 = v57;
  v8 = v59;
  *(this + 15) = v6;
  *(this + 16) = v7;
  v58 = 0uLL;
  v59 = 0;
  v9 = v53;
  v10 = v55;
  *(this + 19) = v8;
  *(this + 20) = v9;
  v54 = 0uLL;
  v55 = 0;
  v11 = v49;
  v12 = v51;
  *(this + 23) = v10;
  *(this + 24) = v11;
  v50 = 0uLL;
  v51 = 0;
  v13 = v45;
  v14 = v47;
  *(this + 27) = v12;
  *(this + 28) = v13;
  *(this + 31) = v14;
  v46 = 0uLL;
  v47 = 0;
  *(this + 36) = v43;
  v42 = 0uLL;
  v43 = 0;
  *(this + 41) = v39;
  v38 = 0uLL;
  v39 = 0;
  *(this + 46) = v35;
  v34 = 0uLL;
  v35 = 0;
  v15 = v31;
  *(this + 392) = v5;
  v30 = 0uLL;
  v31 = 0;
  v16 = v25;
  *(this + 51) = v15;
  *(this + 52) = v16;
  v17 = v27;
  *(this + 424) = *v26;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v18 = v21;
  *(this + 55) = v17;
  *(this + 56) = v18;
  v19 = v22;
  *(this + 59) = v23;
  *(this + 456) = v19;
  v22 = 0uLL;
  v23 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }
}

void sub_298F8840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a65 < 0)
  {
    operator delete(a61);
  }

  if (a71 < 0)
  {
    operator delete(a70);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (*(v81 - 193) < 0)
  {
    operator delete(*(v81 - 216));
  }

  if (*(v81 - 225) < 0)
  {
    operator delete(*(v81 - 248));
  }

  if (*(v81 - 137) < 0)
  {
    operator delete(*(v81 - 160));
  }

  if (*(v81 - 169) < 0)
  {
    operator delete(*(v81 - 192));
  }

  if (*(v81 - 81) < 0)
  {
    operator delete(*(v81 - 104));
  }

  if (*(v81 - 113) < 0)
  {
    operator delete(*(v81 - 136));
  }

  if (*(v81 - 25) < 0)
  {
    operator delete(*(v81 - 48));
  }

  if (*(v81 - 57) < 0)
  {
    operator delete(*(v81 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t XofIntegralType<short>::XofIntegralType(uint64_t a1, const std::string *a2, __int16 a3, __int16 a4, __int16 a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  *a1 = a4;
  *(a1 + 2) = a3;
  *(a1 + 4) = a5;
  *(a1 + 6) = a5;
  return a1;
}

void sub_298F88738(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<unsigned int>::XofIntegralType(uint64_t a1, const std::string *a2, int a3, int a4, int a5)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::string::operator=((a1 + 16), a2);
  *a1 = a4;
  *(a1 + 4) = a3;
  *(a1 + 8) = a5;
  *(a1 + 12) = a5;
  return a1;
}

void sub_298F887E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<int>::XofIntegralType(uint64_t a1, const std::string *a2, int a3, int a4, int a5)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::string::operator=((a1 + 16), a2);
  *a1 = a4;
  *(a1 + 4) = a3;
  *(a1 + 8) = a5;
  *(a1 + 12) = a5;
  return a1;
}

void sub_298F88890(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void XofGalileoAlmCodec::XofGalileoAlmCodec(XofGalileoAlmCodec *this)
{
  v89 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v85, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v86, &v85, 1, 36, 0);
  std::string::basic_string[abi:ne200100]<0>(&v81, "iod");
  XofIntegralType<unsigned char>::XofIntegralType(&v82, &v81, 0, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v77, "reserved");
  XofIntegralType<unsigned short>::XofIntegralType(&v78, &v77, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v73, "absToa");
  XofIntegralType<unsigned int>::XofIntegralType(&v74, &v73, 0, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v69, "e");
  XofIntegralType<unsigned short>::XofIntegralType(&v70, &v69, 0, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v65, "deltaI");
  XofIntegralType<short>::XofIntegralType(&v66, &v65, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v61, "omegaDot");
  XofIntegralType<short>::XofIntegralType(&v62, &v61, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v57, "healthINAV");
  XofIntegralType<unsigned char>::XofIntegralType(&v58, &v57, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v53, "healthFNAV");
  XofIntegralType<unsigned char>::XofIntegralType(&v54, &v53, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v49, "deltaSqrtA");
  XofIntegralType<short>::XofIntegralType(&v50, &v49, -4096, 4095, 0);
  std::string::basic_string[abi:ne200100]<0>(&v45, "omega0");
  XofIntegralType<short>::XofIntegralType(&v46, &v45, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v41, "w");
  XofIntegralType<short>::XofIntegralType(&v42, &v41, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v37, "m");
  XofIntegralType<short>::XofIntegralType(&v38, &v37, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v33, "af0");
  XofIntegralType<short>::XofIntegralType(&v34, &v33, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "af1");
  XofIntegralType<short>::XofIntegralType(&v30, &__p, -4096, 4095, 0);
  *this = v86;
  *(this + 8) = v87;
  *(this + 3) = v88;
  v87 = 0uLL;
  v88 = 0;
  *(this + 8) = v82;
  *(this + 40) = v83;
  v2 = v84;
  v84 = 0;
  v83 = 0uLL;
  v3 = v78;
  v4 = v80;
  *(this + 7) = v2;
  *(this + 8) = v3;
  v5 = v79;
  *(this + 11) = v4;
  *(this + 72) = v5;
  v79 = 0uLL;
  v80 = 0;
  v6 = v75;
  v7 = v76;
  *(this + 6) = v74;
  *(this + 7) = v6;
  v75 = 0uLL;
  v76 = 0;
  v8 = v70;
  v9 = v72;
  *(this + 16) = v7;
  *(this + 17) = v8;
  *(this + 9) = v71;
  v71 = 0uLL;
  v72 = 0;
  v10 = v66;
  v11 = v68;
  *(this + 20) = v9;
  *(this + 21) = v10;
  *(this + 11) = v67;
  v67 = 0uLL;
  v68 = 0;
  v12 = v62;
  v13 = v64;
  *(this + 24) = v11;
  *(this + 25) = v12;
  v14 = v63;
  *(this + 28) = v13;
  *(this + 13) = v14;
  v63 = 0uLL;
  v64 = 0;
  *(this + 58) = v58;
  v15 = v59;
  *(this + 32) = v60;
  *(this + 15) = v15;
  v59 = 0uLL;
  v60 = 0;
  *(this + 66) = v54;
  v16 = v56;
  *(this + 17) = v55;
  v55 = 0uLL;
  v56 = 0;
  v17 = v50;
  v18 = v52;
  *(this + 36) = v16;
  *(this + 37) = v17;
  *(this + 19) = v51;
  v51 = 0uLL;
  v52 = 0;
  v19 = v46;
  v20 = v48;
  *(this + 40) = v18;
  *(this + 41) = v19;
  *(this + 21) = v47;
  v47 = 0uLL;
  v48 = 0;
  v21 = v42;
  v22 = v44;
  *(this + 44) = v20;
  *(this + 45) = v21;
  *(this + 23) = v43;
  v43 = 0uLL;
  v44 = 0;
  v23 = v38;
  v24 = v40;
  *(this + 48) = v22;
  *(this + 49) = v23;
  *(this + 25) = v39;
  v39 = 0uLL;
  v40 = 0;
  v25 = v34;
  *(this + 52) = v24;
  *(this + 53) = v25;
  v26 = v36;
  *(this + 27) = *v35;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  v27 = v30;
  *(this + 56) = v26;
  *(this + 57) = v27;
  v28 = v31;
  *(this + 60) = v32;
  *(this + 29) = v28;
  v31 = 0uLL;
  v32 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35[0]);
    }
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(v87);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }
}

void sub_298F8902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (*(v82 - 193) < 0)
  {
    operator delete(*(v82 - 216));
  }

  if (*(v82 - 233) < 0)
  {
    operator delete(*(v82 - 256));
  }

  if (*(v82 - 137) < 0)
  {
    operator delete(*(v82 - 160));
  }

  if (*(v82 - 169) < 0)
  {
    operator delete(*(v82 - 192));
  }

  if (*(v82 - 81) < 0)
  {
    operator delete(*(v82 - 104));
  }

  if (*(v82 - 113) < 0)
  {
    operator delete(*(v82 - 136));
  }

  if (*(v82 - 25) < 0)
  {
    operator delete(*(v82 - 48));
  }

  if (*(v82 - 57) < 0)
  {
    operator delete(*(v82 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void XofGlonassAlmCodec::XofGlonassAlmCodec(XofGlonassAlmCodec *this)
{
  v103 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v99, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v100, &v99, 1, 24, 0);
  std::string::basic_string[abi:ne200100]<0>(&v95, "weekNo");
  XofIntegralType<unsigned char>::XofIntegralType(&v96, &v95, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v91, "toa");
  XofIntegralType<unsigned char>::XofIntegralType(&v92, &v91, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v87, "iod");
  XofIntegralType<unsigned char>::XofIntegralType(&v88, &v87, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v83, "n");
  XofIntegralType<unsigned short>::XofIntegralType(&v84, &v83, 1, 1461, 0);
  std::string::basic_string[abi:ne200100]<0>(&v79, "h");
  XofIntegralType<unsigned char>::XofIntegralType(&v80, &v79, 0, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&v75, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v76, &v75, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v71, "lambda");
  XofIntegralType<int>::XofIntegralType(&v72, &v71, -1048576, 0xFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v67, "t");
  XofIntegralType<unsigned int>::XofIntegralType(&v68, &v67, 0, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v63, "deltaI");
  XofIntegralType<int>::XofIntegralType(&v64, &v63, -131072, 0x1FFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v59, "deltaT");
  XofIntegralType<int>::XofIntegralType(&v60, &v59, -2097152, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v55, "deltaTDot");
  XofIntegralType<signed char>::XofIntegralType(&v56, &v55, -64, 63, 0);
  std::string::basic_string[abi:ne200100]<0>(&v51, "reserved2");
  XofIntegralType<unsigned char>::XofIntegralType(&v52, &v51, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v47, "e");
  XofIntegralType<unsigned short>::XofIntegralType(&v48, &v47, 0, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v43, "w");
  XofIntegralType<short>::XofIntegralType(&v44, &v43, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v39, "time");
  XofIntegralType<short>::XofIntegralType(&v40, &v39, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v35, "can");
  XofIntegralType<unsigned char>::XofIntegralType(&v36, &v35, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v31, "m");
  XofIntegralType<unsigned char>::XofIntegralType(&v32, &v31, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved3");
  XofIntegralType<unsigned short>::XofIntegralType(&v28, &__p, 0, 0xFFFF, 0);
  *this = v100;
  *(this + 8) = v101;
  *(this + 3) = v102;
  v101 = 0uLL;
  v102 = 0;
  *(this + 8) = v96;
  *(this + 40) = v97;
  *(this + 7) = v98;
  v98 = 0;
  v97 = 0uLL;
  *(this + 16) = v92;
  v2 = v93;
  *(this + 11) = v94;
  *(this + 72) = v2;
  v93 = 0uLL;
  v94 = 0;
  *(this + 24) = v88;
  v3 = v90;
  *(this + 104) = v89;
  v89 = 0uLL;
  v90 = 0;
  v4 = v84;
  v5 = v86;
  *(this + 15) = v3;
  *(this + 16) = v4;
  v6 = v85;
  *(this + 19) = v5;
  *(this + 136) = v6;
  v85 = 0uLL;
  v86 = 0;
  *(this + 40) = v80;
  v7 = v81;
  *(this + 23) = v82;
  *(this + 168) = v7;
  v81 = 0uLL;
  v82 = 0;
  *(this + 48) = v76;
  v8 = v77;
  *(this + 27) = v78;
  *(this + 200) = v8;
  v77 = 0uLL;
  v78 = 0;
  v9 = v72;
  v10 = v73;
  *(this + 32) = v74;
  *(this + 14) = v9;
  *(this + 15) = v10;
  v73 = 0uLL;
  v74 = 0;
  *(this + 264) = v68;
  v11 = v69;
  *(this + 37) = v70;
  *(this + 280) = v11;
  v69 = 0uLL;
  v70 = 0;
  v12 = v64;
  v13 = v65;
  *(this + 42) = v66;
  *(this + 19) = v12;
  *(this + 20) = v13;
  v65 = 0uLL;
  v66 = 0;
  *(this + 344) = v60;
  v14 = v61;
  *(this + 47) = v62;
  *(this + 360) = v14;
  v61 = 0uLL;
  v62 = 0;
  *(this + 96) = v56;
  v15 = v57;
  *(this + 51) = v58;
  *(this + 392) = v15;
  v57 = 0uLL;
  v58 = 0;
  *(this + 104) = v52;
  v16 = v54;
  *(this + 424) = v53;
  v53 = 0uLL;
  v54 = 0;
  v17 = v48;
  v18 = v50;
  *(this + 55) = v16;
  *(this + 56) = v17;
  *(this + 456) = v49;
  v49 = 0uLL;
  v50 = 0;
  v19 = v44;
  v20 = v46;
  *(this + 59) = v18;
  *(this + 60) = v19;
  *(this + 488) = v45;
  v45 = 0uLL;
  v46 = 0;
  v21 = v40;
  v22 = v42;
  *(this + 63) = v20;
  *(this + 64) = v21;
  v23 = v41;
  *(this + 67) = v22;
  *(this + 520) = v23;
  v41 = 0uLL;
  v42 = 0;
  *(this + 136) = v36;
  v24 = v37;
  *(this + 71) = v38;
  *(this + 552) = v24;
  v37 = 0uLL;
  v38 = 0;
  *(this + 144) = v32;
  v25 = *v33;
  *(this + 75) = v34;
  *(this + 584) = v25;
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  *(this + 76) = v28;
  v26 = v29;
  *(this + 79) = v30;
  *(this + 616) = v26;
  v29 = 0uLL;
  v30 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94) < 0)
  {
    operator delete(v93);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102) < 0)
  {
    operator delete(v101);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }
}

void sub_298F89C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x30F]) < 0)
  {
    operator delete(STACK[0x2F8]);
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (*(v82 - 193) < 0)
  {
    operator delete(*(v82 - 216));
  }

  if (*(v82 - 225) < 0)
  {
    operator delete(*(v82 - 248));
  }

  if (*(v82 - 137) < 0)
  {
    operator delete(*(v82 - 160));
  }

  if (*(v82 - 169) < 0)
  {
    operator delete(*(v82 - 192));
  }

  if (*(v82 - 81) < 0)
  {
    operator delete(*(v82 - 104));
  }

  if (*(v82 - 113) < 0)
  {
    operator delete(*(v82 - 136));
  }

  if (*(v82 - 25) < 0)
  {
    operator delete(*(v82 - 48));
  }

  if (*(v82 - 57) < 0)
  {
    operator delete(*(v82 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t XofIntegralType<signed char>::XofIntegralType(uint64_t a1, const std::string *a2, char a3, char a4, char a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  *a1 = a4;
  *(a1 + 1) = a3;
  *(a1 + 2) = a5;
  *(a1 + 3) = a5;
  return a1;
}

void sub_298F8A094(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 639) < 0)
  {
    operator delete(*(a1 + 616));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void XofBeidouAlmCodec::XofBeidouAlmCodec(XofBeidouAlmCodec *this)
{
  v87 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v83, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v84, &v83, 1, 63, 0);
  std::string::basic_string[abi:ne200100]<0>(&v79, "weekNum");
  XofIntegralType<unsigned char>::XofIntegralType(&v80, &v79, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v75, "toa");
  XofIntegralType<unsigned char>::XofIntegralType(&v76, &v75, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v71, "iod");
  XofIntegralType<unsigned char>::XofIntegralType(&v72, &v71, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v67, "almToa");
  XofIntegralType<unsigned char>::XofIntegralType(&v68, &v67, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v63, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v64, &v63, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v59, "reserved2");
  XofIntegralType<unsigned short>::XofIntegralType(&v60, &v59, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v55, "sqrtA");
  XofIntegralType<unsigned int>::XofIntegralType(&v56, &v55, 0, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v51, "e");
  XofIntegralType<unsigned int>::XofIntegralType(&v52, &v51, 0, 0x1FFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v47, "w");
  XofIntegralType<int>::XofIntegralType(&v48, &v47, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v43, "m");
  XofIntegralType<int>::XofIntegralType(&v44, &v43, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v39, "omega0");
  XofIntegralType<int>::XofIntegralType(&v40, &v39, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v35, "omegaDot");
  XofIntegralType<int>::XofIntegralType(&v36, &v35, -65536, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v31, "deltaI");
  XofIntegralType<short>::XofIntegralType(&v32, &v31, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v27, "a0");
  XofIntegralType<short>::XofIntegralType(&v28, &v27, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v23, "a1");
  XofIntegralType<short>::XofIntegralType(&v24, &v23, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "svHealth");
  XofIntegralType<short>::XofIntegralType(&v20, &__p, 0, 511, 0);
  *(this + 8) = v85;
  *(this + 40) = v81;
  *(this + 72) = v77;
  *(this + 104) = v73;
  *(this + 136) = v69;
  *(this + 168) = v65;
  *(this + 200) = v61;
  v2 = v57;
  *(this + 14) = v56;
  *(this + 15) = v2;
  v3 = v53;
  *(this + 264) = v52;
  *(this + 280) = v3;
  v4 = v49;
  *(this + 19) = v48;
  *(this + 20) = v4;
  v5 = v45;
  *(this + 344) = v44;
  *(this + 360) = v5;
  v6 = v41;
  *(this + 24) = v40;
  *(this + 25) = v6;
  v7 = v37;
  *(this + 424) = v36;
  *this = v84;
  *(this + 3) = v86;
  v85 = 0uLL;
  v86 = 0;
  *(this + 8) = v80;
  *(this + 7) = v82;
  v82 = 0;
  v81 = 0uLL;
  *(this + 16) = v76;
  *(this + 11) = v78;
  v77 = 0uLL;
  v78 = 0;
  *(this + 24) = v72;
  *(this + 15) = v74;
  v73 = 0uLL;
  v74 = 0;
  *(this + 32) = v68;
  *(this + 19) = v70;
  v69 = 0uLL;
  v70 = 0;
  *(this + 40) = v64;
  v8 = v66;
  v65 = 0uLL;
  v66 = 0;
  v9 = v60;
  v10 = v62;
  *(this + 23) = v8;
  *(this + 24) = v9;
  *(this + 27) = v10;
  v61 = 0uLL;
  v62 = 0;
  *(this + 32) = v58;
  v57 = 0uLL;
  v58 = 0;
  *(this + 37) = v54;
  v53 = 0uLL;
  v54 = 0;
  *(this + 42) = v50;
  v49 = 0uLL;
  v50 = 0;
  *(this + 47) = v46;
  v45 = 0uLL;
  v46 = 0;
  *(this + 52) = v42;
  v41 = 0uLL;
  v42 = 0;
  v11 = v38;
  *(this + 440) = v7;
  v37 = 0uLL;
  v38 = 0;
  v12 = v32;
  v13 = v34;
  *(this + 57) = v11;
  *(this + 58) = v12;
  *(this + 472) = v33;
  v33 = 0uLL;
  v34 = 0;
  v14 = v28;
  v15 = v30;
  *(this + 61) = v13;
  *(this + 62) = v14;
  v16 = v29;
  *(this + 65) = v15;
  *(this + 504) = v16;
  v29 = 0uLL;
  v30 = 0;
  *(this + 66) = v24;
  v17 = *v25;
  *(this + 69) = v26;
  *(this + 536) = v17;
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  *(this + 70) = v20;
  v18 = v21;
  *(this + 73) = v22;
  *(this + 568) = v18;
  v21 = 0uLL;
  v22 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }
}

void sub_298F8A980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (*(v80 - 193) < 0)
  {
    operator delete(*(v80 - 216));
  }

  if (*(v80 - 225) < 0)
  {
    operator delete(*(v80 - 248));
  }

  if (*(v80 - 137) < 0)
  {
    operator delete(*(v80 - 160));
  }

  if (*(v80 - 169) < 0)
  {
    operator delete(*(v80 - 192));
  }

  if (*(v80 - 81) < 0)
  {
    operator delete(*(v80 - 104));
  }

  if (*(v80 - 113) < 0)
  {
    operator delete(*(v80 - 136));
  }

  if (*(v80 - 25) < 0)
  {
    operator delete(*(v80 - 48));
  }

  if (*(v80 - 57) < 0)
  {
    operator delete(*(v80 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void XofNavicAlmCodec::XofNavicAlmCodec(XofNavicAlmCodec *this)
{
  v84 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v80, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v81, &v80, 1, 14, 0);
  std::string::basic_string[abi:ne200100]<0>(&v76, "weekNo");
  XofIntegralType<unsigned short>::XofIntegralType(&v77, &v76, 0, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v72, "toa");
  XofIntegralType<unsigned short>::XofIntegralType(&v73, &v72, 0, 37799, 0);
  std::string::basic_string[abi:ne200100]<0>(&v68, "e");
  XofIntegralType<unsigned short>::XofIntegralType(&v69, &v68, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v64, "intSigCor");
  XofIntegralType<signed char>::XofIntegralType(&v65, &v64, -128, 127, 0);
  std::string::basic_string[abi:ne200100]<0>(&v60, "i0");
  XofIntegralType<int>::XofIntegralType(&v61, &v60, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v56, "omegaDot");
  XofIntegralType<short>::XofIntegralType(&v57, &v56, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v52, "L5Health");
  XofIntegralType<unsigned char>::XofIntegralType(&v53, &v52, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v48, "SHealth");
  XofIntegralType<unsigned char>::XofIntegralType(&v49, &v48, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v44, "sqrtA");
  XofIntegralType<unsigned int>::XofIntegralType(&v45, &v44, 0, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v40, "omega0");
  XofIntegralType<int>::XofIntegralType(&v41, &v40, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v36, "w");
  XofIntegralType<int>::XofIntegralType(&v37, &v36, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v32, "m");
  XofIntegralType<int>::XofIntegralType(&v33, &v32, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v28, "af0");
  XofIntegralType<short>::XofIntegralType(&v29, &v28, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v24, "af1");
  XofIntegralType<short>::XofIntegralType(&v25, &v24, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved2");
  XofIntegralType<unsigned int>::XofIntegralType(&v21, &__p, 0, -1, 0);
  *(this + 8) = v82;
  *(this + 40) = v78;
  *(this + 72) = v74;
  *(this + 104) = v70;
  *(this + 136) = v66;
  v2 = v62;
  *(this + 10) = v61;
  *(this + 11) = v2;
  *(this + 13) = v58;
  *(this + 15) = v54;
  *(this + 17) = v50;
  *(this + 296) = v45;
  *(this + 312) = v46;
  v3 = v42;
  *(this + 21) = v41;
  *(this + 22) = v3;
  *(this + 376) = v37;
  *(this + 392) = v38;
  v4 = v34;
  *(this + 26) = v33;
  *(this + 27) = v4;
  *(this + 29) = v30;
  *(this + 31) = *v26;
  v5 = v22;
  *(this + 520) = v21;
  *this = v81;
  v6 = v83;
  v82 = 0uLL;
  v83 = 0;
  v7 = v77;
  v8 = v79;
  *(this + 3) = v6;
  *(this + 4) = v7;
  v79 = 0;
  v78 = 0uLL;
  v9 = v73;
  v10 = v75;
  *(this + 7) = v8;
  *(this + 8) = v9;
  v74 = 0uLL;
  v75 = 0;
  v11 = v69;
  v12 = v71;
  *(this + 11) = v10;
  *(this + 12) = v11;
  *(this + 15) = v12;
  v70 = 0uLL;
  v71 = 0;
  *(this + 32) = v65;
  *(this + 19) = v67;
  v66 = 0uLL;
  v67 = 0;
  v13 = v63;
  v62 = 0uLL;
  v63 = 0;
  v14 = v57;
  v15 = v59;
  *(this + 24) = v13;
  *(this + 25) = v14;
  *(this + 28) = v15;
  v58 = 0uLL;
  v59 = 0;
  *(this + 58) = v53;
  *(this + 32) = v55;
  v54 = 0uLL;
  v55 = 0;
  *(this + 66) = v49;
  *(this + 36) = v51;
  v50 = 0uLL;
  v51 = 0;
  *(this + 41) = v47;
  v46 = 0uLL;
  v47 = 0;
  *(this + 46) = v43;
  v42 = 0uLL;
  v43 = 0;
  *(this + 51) = v39;
  v38 = 0uLL;
  v39 = 0;
  v16 = v35;
  v34 = 0uLL;
  v35 = 0;
  v17 = v29;
  v18 = v31;
  *(this + 56) = v16;
  *(this + 57) = v17;
  v30 = 0uLL;
  v31 = 0;
  v19 = v25;
  *(this + 60) = v18;
  *(this + 61) = v19;
  *(this + 64) = v27;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  *(this + 69) = v23;
  *(this + 536) = v5;
  v22 = 0uLL;
  v23 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }
}

void sub_298F8B4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a65 < 0)
  {
    operator delete(a61);
  }

  if (a71 < 0)
  {
    operator delete(a70);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a80);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (*(v80 - 193) < 0)
  {
    operator delete(*(v80 - 216));
  }

  if (*(v80 - 225) < 0)
  {
    operator delete(*(v80 - 248));
  }

  if (*(v80 - 137) < 0)
  {
    operator delete(*(v80 - 160));
  }

  if (*(v80 - 169) < 0)
  {
    operator delete(*(v80 - 192));
  }

  if (*(v80 - 81) < 0)
  {
    operator delete(*(v80 - 104));
  }

  if (*(v80 - 113) < 0)
  {
    operator delete(*(v80 - 136));
  }

  if (*(v80 - 25) < 0)
  {
    operator delete(*(v80 - 48));
  }

  if (*(v80 - 57) < 0)
  {
    operator delete(*(v80 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t XofIntegralType<short>::DecodeFromHexData(__int16 *a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 4);
      if (*(a1 + 31) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 5;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 2uLL, __str))
  {
    return 5;
  }

  v8 = *__str;
  a1[3] = *__str;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v14 = *(a1 + 4);
  }

  v13 = XofBaseType::ValidateSignedRange(a1, v8, v9, v10, v11, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  *a3 += 2;
  if (v13)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void sub_298F8BAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<int>::DecodeFromHexData(int *a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 3)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 4);
      if (*(a1 + 39) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 5;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 4uLL, __str))
  {
    return 5;
  }

  v8 = *__str;
  a1[3] = *__str;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 2), *(a1 + 3));
  }

  else
  {
    v14 = *(a1 + 4);
  }

  v13 = XofBaseType::ValidateSignedRange(a1, v8, v9, v10, v11, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  *a3 += 4;
  if (v13)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void sub_298F8BCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<signed char>::DecodeFromHexData(char *a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if (a2[1] - *a2 == v5)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = a1 + 8;
      if (a1[31] < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 5;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 1uLL, __str))
  {
    return 5;
  }

  v8 = __str[0];
  a1[3] = __str[0];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (a1[31] < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v14 = *(a1 + 8);
  }

  v13 = XofBaseType::ValidateSignedRange(a1, v8, v9, v10, v11, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  ++*a3;
  if (v13)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

void sub_298F8BE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t Get_Constell_Prn(unsigned int a1)
{
  if (a1 < 0x20)
  {
    return 1;
  }

  if (a1 < 0x38)
  {
    return 2;
  }

  if (a1 < 0x5C)
  {
    return 3;
  }

  if (a1 < 0x9B)
  {
    return 4;
  }

  if (a1 < 0xA5)
  {
    return 5;
  }

  if (a1 < 0xB3)
  {
    return 6;
  }

  if (a1 < 0xDA)
  {
    return 7;
  }

  gn_report_assertion_failure("Get_Constell_Prn:");
  return 0;
}

uint64_t Get_Constell_Pos(unsigned int a1)
{
  if (a1 < 0x20)
  {
    return 1;
  }

  if (a1 < 0x38)
  {
    return 2;
  }

  if (a1 < 0x5C)
  {
    return 3;
  }

  if (a1 < 0x9B)
  {
    return 4;
  }

  if (a1 < 0xA5)
  {
    return 5;
  }

  if (a1 < 0xB3)
  {
    return 6;
  }

  if (a1 < 0xC5)
  {
    return 7;
  }

  gn_report_assertion_failure("Get_Constell_Pos:");
  return 0;
}

uint64_t LongPrnIdx_To_Prn(unsigned int a1, int *a2)
{
  v3 = __OFSUB__(a1, 31);
  result = a1 - 31;
  if ((result < 0) ^ v3 | (result == 0))
  {
    if (a2)
    {
      *a2 = 1;
    }

    return a1 + 1;
  }

  else if (a1 > 0x37)
  {
    result = a1 - 91;
    if (a1 > 0x5B)
    {
      if (a1 > 0x9A)
      {
        result = a1 - 164;
        if (a1 > 0xA4)
        {
          if (a1 > 0xB2)
          {
            if (a1 > 0xD9)
            {
              if (a2)
              {
                *a2 = 0;
              }

              gn_report_assertion_failure("LPrn_2_Prn:");
              return 0;
            }

            else
            {
              if (a2)
              {
                *a2 = 7;
              }

              return a1 - 59;
            }
          }

          else if (a2)
          {
            v5 = 6;
            goto LABEL_9;
          }
        }

        else
        {
          if (a2)
          {
            *a2 = 5;
          }

          return a1 + 38;
        }
      }

      else if (a2)
      {
        v5 = 4;
        goto LABEL_9;
      }
    }

    else
    {
      if (a2)
      {
        *a2 = 3;
      }

      return a1 - 55;
    }
  }

  else if (a2)
  {
    v5 = 2;
LABEL_9:
    *a2 = v5;
  }

  return result;
}

uint64_t LongPrnIdx_To_ShortPrnIdx(uint64_t result, _DWORD *a2)
{
  if ((result & 0x80000000) != 0)
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
      return result;
    }

    return 0;
  }

  if (result <= 0x1F)
  {
    if (a2)
    {
      *a2 = 1;
    }

    return result;
  }

  if (result <= 0x37)
  {
    if (a2)
    {
      *a2 = 2;
    }

    return (result - 32);
  }

  if (result <= 0x5B)
  {
    if (a2)
    {
      *a2 = 3;
    }

    return (result - 56);
  }

  if (result <= 0x9A)
  {
    if (a2)
    {
      *a2 = 4;
    }

    return (result - 92);
  }

  if (result <= 0xA4)
  {
    if (a2)
    {
      *a2 = 5;
    }

    return (result - 155);
  }

  if (result <= 0xB2)
  {
    if (a2)
    {
      *a2 = 6;
    }

    return (result - 165);
  }

  if (result > 0xD9)
  {
    if (a2)
    {
      *a2 = 0;
    }

    gn_report_assertion_failure("LPrn_2_SPrn:");
    return 0;
  }

  if (a2)
  {
    *a2 = 7;
  }

  return (result - 179);
}

uint64_t GNSS_Id_To_Num_Prn_Idx(int a1)
{
  v1 = a1;
  v2 = a1;
  v3 = BYTE2(a1);
  if (!BYTE2(a1))
  {
    gn_report_assertion_failure("Id_2_NPrn: 0");
  }

  if ((v2 - 1) > 6)
  {
    v6 = 0;
    v7 = "Id_2_NPrn: 1";
    goto LABEL_9;
  }

  v4 = v3 - Prn_Offset[v1];
  v5 = Num_Prn[v2 - 1];
  v6 = (v4 + v5);
  if (v4 + v5 < 0)
  {
    v6 = 0;
    v7 = "Id_2_NPrn: 2";
    goto LABEL_9;
  }

  if (v6 >= 0xDA)
  {
    v6 = 217;
    v7 = "Id_2_NPrn: 3";
LABEL_9:
    gn_report_assertion_failure(v7);
  }

  return v6;
}

uint64_t Num_Prn_Idx_To_GNSS_Id(int a1)
{
  Constell_Prn = Get_Constell_Prn(a1);
  if (!Constell_Prn)
  {
    v5 = 0;
    v6 = "NPrn_2_Id: 1";
    goto LABEL_7;
  }

  v3 = Prn_Offset[Constell_Prn] + a1;
  v4 = Num_Prn[Constell_Prn - 1];
  v5 = (v3 - v4);
  if (v3 - v4 < 0)
  {
    v5 = 0;
    v6 = "NPrn_2_Id: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x100)
  {
    v5 = 255;
    v6 = "NPrn_2_Id: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  return v5;
}

uint64_t GNSS_Id_To_Num_Pos_Idx(int a1)
{
  v1 = a1;
  v2 = a1;
  v3 = BYTE2(a1);
  if (!BYTE2(a1))
  {
    gn_report_assertion_failure("Id_2_NPos: 0");
  }

  if ((v2 - 1) > 6)
  {
    v6 = 0;
    v7 = "Id_2_NPos: 1";
    goto LABEL_9;
  }

  v4 = v3 - Prn_Offset[v1];
  v5 = Num_Pos[v2 - 1];
  v6 = (v4 + v5);
  if (v4 + v5 < 0)
  {
    v6 = 0;
    v7 = "Id_2_NPos: 2";
    goto LABEL_9;
  }

  if (v6 >= 0xC5)
  {
    v6 = 196;
    v7 = "Id_2_NPos: 3";
LABEL_9:
    gn_report_assertion_failure(v7);
  }

  return v6;
}

uint64_t Num_Pos_Idx_To_GNSS_Id(int a1)
{
  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    v5 = 0;
    v6 = "NPos_2_Id: 1";
    goto LABEL_7;
  }

  v3 = Prn_Offset[Constell_Pos] + a1;
  v4 = Num_Pos[Constell_Pos - 1];
  v5 = (v3 - v4);
  if (v3 - v4 < 0)
  {
    v5 = 0;
    v6 = "NPos_2_Id: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x100)
  {
    v5 = 255;
    v6 = "NPos_2_Id: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  return v5;
}

uint64_t GNSS_SVId_Constell_To_Num_Pos_Idx(int a1, int a2)
{
  if (a2 < 1)
  {
    v4 = 0;
    v5 = "Id&C_2_NPos: 1";
    goto LABEL_7;
  }

  v2 = a1 - Prn_Offset[a2];
  v3 = Num_Pos[a2 - 1];
  v4 = (v2 + v3);
  if (v2 + v3 < 0)
  {
    v4 = 0;
    v5 = "Id&C_2_NPos: 2";
    goto LABEL_7;
  }

  if (v4 >= 0xC5)
  {
    v4 = 196;
    v5 = "Id&C_2_NPos: 3";
LABEL_7:
    gn_report_assertion_failure(v5);
  }

  return v4;
}

uint64_t Num_Pos_Idx_To_Num_Prn_Idx(int a1)
{
  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    v5 = 0;
    v6 = "NPos_2_NPrn: 1";
    goto LABEL_7;
  }

  v3 = a1 - Num_Pos[Constell_Pos - 1];
  v4 = Num_Prn[Constell_Pos - 1];
  v5 = (v3 + v4);
  if (v3 + v4 < 0)
  {
    v5 = 0;
    v6 = "NPos_2_NPrn: 2";
    goto LABEL_7;
  }

  if (v5 >= 0xDA)
  {
    v5 = 217;
    v6 = "NPos_2_NPrn: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  return v5;
}

uint64_t Num_Prn_Idx_To_Num_Pos_Idx(int a1)
{
  Constell_Prn = Get_Constell_Prn(a1);
  if (!Constell_Prn)
  {
    v5 = 0;
    v6 = "NPrn_2_NPos: 1";
    goto LABEL_7;
  }

  v3 = a1 - Num_Prn[Constell_Prn - 1];
  v4 = Num_Pos[Constell_Prn - 1];
  v5 = (v3 + v4);
  if (v3 + v4 < 0)
  {
    v5 = 0;
    v6 = "NPrn_2_NPos: 2";
    goto LABEL_7;
  }

  if (v5 >= 0xC5)
  {
    v5 = 196;
    v6 = "NPrn_2_NPos: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  return v5;
}

char **STEU_Encode(char **a1, char a2, unsigned __int8 *a3, unint64_t *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a4;
  v6 = (*a4 - a3) % 3;
  if (v6)
  {
    if (v6 == 1)
    {
      *v5 = 0;
      v5 = (*a4 + 1);
      *a4 = v5;
    }

    *v5 = 0;
    ++*a4;
  }

  v7 = (*a1)++;
  *v7 = 123;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  *a1 = v8 + 1;
  *v8 = a2;
  v9 = *a1;
  if (*a1 >= a1[3])
  {
    v9 = a1[2];
    *a1 = v9;
  }

  v16[4] = 0;
  v10 = *a4;
  do
  {
    v11 = *a3;
    v12 = (v11 >> 2) + 48;
    v13 = a3[1];
    v16[1] = ((v13 >> 4) & 0xCF | (16 * (v11 & 3))) + 48;
    LOBYTE(v11) = a3[2];
    v16[2] = ((v11 >> 6) & 0xC3 | (4 * (v13 & 0xF))) + 48;
    v16[3] = (v11 & 0x3F) + 48;
    v14 = 1;
    do
    {
      *a1 = v9 + 1;
      *v9 = v12;
      v9 = *a1;
      if (*a1 >= a1[3])
      {
        v9 = a1[2];
        *a1 = v9;
      }

      v12 = v16[v14++];
    }

    while (v12);
    a3 += 3;
  }

  while (a3 < v10);
  *a4 = a3;

  return STEU_Add_Checksum_LF(a1, v8);
}

char **STEU_Add_Checksum_LF(uint64_t a1, char *a2)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v6 = *a2++;
      v5 = v6;
      if (a2 >= *(a1 + 24))
      {
        a2 = *(a1 + 16);
      }

      v4 += v5;
    }

    while (a2 != v3);
    v7 = v4;
  }

  *a1 = v3 + 1;
  *v3 = 125;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  result = sprintf_02x(a1, v7);
  v9 = (*a1)++;
  *v9 = 10;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  return result;
}

char **STEU_Encode_c(char **a1, char a2, int a3, unsigned __int8 *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = (*a1)++;
  *v5 = 123;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  *a1 = v6 + 1;
  *v6 = 99;
  v7 = *a1;
  if (*a1 >= a1[3])
  {
    v7 = a1[2];
  }

  *a1 = v7 + 1;
  *v7 = a2;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
    *a1 = v8;
  }

  v15[4] = 0;
  v9 = &a4[a3];
  do
  {
    v10 = *a4;
    v11 = (v10 >> 2) + 48;
    v12 = a4[1];
    v15[1] = ((v12 >> 4) & 0xCF | (16 * (v10 & 3))) + 48;
    LOBYTE(v10) = a4[2];
    v15[2] = ((v10 >> 6) & 0xC3 | (4 * (v12 & 0xF))) + 48;
    v15[3] = (v10 & 0x3F) + 48;
    v13 = 1;
    do
    {
      *a1 = v8 + 1;
      *v8 = v11;
      v8 = *a1;
      if (*a1 >= a1[3])
      {
        v8 = a1[2];
        *a1 = v8;
      }

      v11 = v15[v13++];
    }

    while (v11);
    a4 += 3;
  }

  while (a4 < v9);

  return STEU_Add_Checksum_LF(a1, v6);
}

void *GNSS_Write_NMEA(void *result)
{
  if (result)
  {
    v1 = result;
    v3 = *result;
    v2 = result[1];
    if (v2 != *result)
    {
      if (v2 > *result)
      {
        v3 = result[3];
      }

      v4 = v3 - v2;
      result = GN_GPS_Write_NMEA((v3 - v2), v2);
      v5 = result;
      if (g_Logging_Cfg >= 7)
      {
        result = GN_GPS_Write_Nav_Debug(result, v1[1]);
      }

      v6 = (v1[1] + v5);
      v1[1] = v6;
      if (v6 >= v1[3])
      {
        v6 = v1[2];
        v1[1] = v6;
        if (v5 == v4)
        {
          result = GN_GPS_Write_NMEA((*v1 - v6), v6);
          v7 = result;
          if (g_Logging_Cfg >= 8)
          {
            result = GN_GPS_Write_Nav_Debug(result, v1[1]);
          }

          v6 = (v1[1] + v7);
          v1[1] = v6;
        }
      }

      if (v6 == *v1)
      {
        v8 = v1[2];
        *v1 = v8;
        v1[1] = v8;
      }
    }
  }

  return result;
}

char **NMEA_Encode(char **result, uint64_t a2, uint64_t a3)
{
  v910 = *MEMORY[0x29EDCA608];
  if (!result || !a2)
  {
    return result;
  }

  v5 = result;
  v6 = (*result)++;
  *v6 = 36;
  v7 = *result;
  if (*result >= result[3])
  {
    v7 = result[2];
  }

  v893 = result + 2;
  v8 = 71;
  v9 = 1u;
  v10 = v7;
  do
  {
    *result = v10 + 1;
    *v10 = v8;
    v10 = *result;
    if (*result >= result[3])
    {
      v10 = result[2];
      *result = v10;
    }

    v8 = aGpgga[v9++];
  }

  while (v9 != 7);
  sprintf_HHMMSS(result, a2);
  v11 = *(a2 + 308);
  v12 = *(a2 + 334) != 1 || v11 == 0;
  v892 = a2;
  if (v12)
  {
    v13 = 0;
    v14 = *v5;
    v15 = 44;
    do
    {
      *v5 = v14 + 1;
      *v14 = v15;
      v14 = *v5;
      if (*v5 >= v5[3])
      {
        v14 = v5[2];
        *v5 = v14;
      }

      v15 = a00MM[++v13];
    }

    while (v13 != 16);
  }

  else
  {
    sprintf_LatLon(v5, *(a2 + 104), *(a2 + 112));
    v16 = 0x323132313630uLL >> (8 * v11);
    if (v11 >= 6)
    {
      LOBYTE(v16) = 48;
    }

    v17 = (*v5)++;
    *v17 = v16;
    v18 = *v5;
    if (*v5 >= v5[3])
    {
      v18 = *v893;
    }

    *v5 = v18 + 1;
    *v18 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(a2 + 345), v909, 0, 0);
    v19 = (*v5)++;
    *v19 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_DOP(v5, *(a2 + 272));
    v20 = (*v5)++;
    *v20 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v21 = *(a2 + 128) * 1000.0;
    v22 = -0.5;
    if (v21 > 0.0)
    {
      v22 = 0.5;
    }

    v23 = v21 + v22;
    if (v23 <= 2147483650.0)
    {
      if (v23 >= -2147483650.0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0x80000000;
      }
    }

    else
    {
      v24 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v24, 4);
    v25 = *v5;
    v26 = 44;
    v27 = 1u;
    do
    {
      *v5 = v25 + 1;
      *v25 = v26;
      v25 = *v5;
      if (*v5 >= v5[3])
      {
        v25 = v5[2];
        *v5 = v25;
      }

      v26 = aM_0[v27++];
    }

    while (v27 != 4);
    v28 = (*(a2 + 120) - *(a2 + 128)) * 1000.0;
    v29 = -0.5;
    if (v28 > 0.0)
    {
      v29 = 0.5;
    }

    v30 = v28 + v29;
    if (v30 <= 2147483650.0)
    {
      if (v30 >= -2147483650.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x80000000;
      }
    }

    else
    {
      v31 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v31, 4);
    v32 = *v5;
    v33 = 44;
    v34 = 1u;
    do
    {
      *v5 = v32 + 1;
      *v32 = v33;
      v32 = *v5;
      if (*v5 >= v5[3])
      {
        v32 = v5[2];
        *v5 = v32;
      }

      v33 = aM_0[v34++];
    }

    while (v34 != 4);
    *v5 = v32 + 1;
    *v32 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }
  }

  NMEA_Add_checksum(v5, v7);
  v35 = (*v5)++;
  *v35 = 36;
  v36 = *v5;
  if (*v5 >= v5[3])
  {
    v36 = *v893;
  }

  v37 = 71;
  v38 = 1u;
  v39 = v36;
  do
  {
    *v5 = v39 + 1;
    *v39 = v37;
    v39 = *v5;
    if (*v5 >= v5[3])
    {
      v39 = v5[2];
      *v5 = v39;
    }

    v37 = aGpgll[v38++];
  }

  while (v38 != 7);
  v40 = *(a2 + 308);
  if (*(a2 + 334) != 1 || v40 == 0)
  {
    v42 = 0;
    v43 = 44;
    v44 = a2;
    do
    {
      *v5 = v39 + 1;
      *v39 = v43;
      v39 = *v5;
      if (*v5 >= v5[3])
      {
        v39 = v5[2];
        *v5 = v39;
      }

      v43 = asc_29906A308[++v42];
    }

    while (v42 != 4);
    sprintf_HHMMSS(v5, a2);
    v45 = "V,N";
  }

  else
  {
    sprintf_LatLon(v5, *(a2 + 104), *(a2 + 112));
    sprintf_HHMMSS(v5, a2);
    if (v40 > 5)
    {
      v45 = "V,N";
    }

    else
    {
      v45 = off_29EF064B8[v40 - 1];
    }

    v44 = a2;
  }

  v46 = *v45;
  if (*v45)
  {
    v47 = *v5;
    v48 = (v45 + 1);
    do
    {
      *v5 = v47 + 1;
      *v47 = v46;
      v47 = *v5;
      if (*v5 >= v5[3])
      {
        v47 = v5[2];
        *v5 = v47;
      }

      v49 = *v48++;
      v46 = v49;
    }

    while (v49);
  }

  NMEA_Add_checksum(v5, v36);
  v908 = 0;
  v907 = 0;
  v906 = 0;
  v905 = 0;
  v904 = 0;
  v903 = 0;
  v902 = 0;
  v901 = 0;
  v900 = 0;
  v899 = 0;
  v898 = 0;
  v897 = 0;
  v50 = *(v44 + 344);
  if (*(v44 + 344))
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = (v44 + 348);
    v60 = v44;
    while (1)
    {
      if (*(v60 + 6112) == 1 && (v61 = *(v60 + 1756), *(v60 + 1756)) && ((v62 = *v59, v61 == v55) ? (v63 = v62 == v54) : (v63 = 0), !v63))
      {
        if (v62 > 3)
        {
          switch(v62)
          {
            case 4:
              if (v58 <= 11)
              {
                *(&v901 + v58++) = v61;
              }

              v54 = 4;
              goto LABEL_94;
            case 5:
              if (v57 <= 11)
              {
                *(&v899 + v57++) = v61;
              }

              v54 = 5;
              goto LABEL_94;
            case 6:
              if (v56 <= 11)
              {
                *(&v897 + v56++) = v61;
              }

              v54 = 6;
              goto LABEL_94;
          }
        }

        else
        {
          switch(v62)
          {
            case 1:
              if (v51 <= 11)
              {
                *(&v907 + v51++) = v61;
              }

              v54 = 1;
              goto LABEL_94;
            case 2:
              if (v52 <= 11)
              {
                *(&v905 + v52++) = v61;
              }

              v54 = 2;
              goto LABEL_94;
            case 3:
              if (v53 <= 11)
              {
                *(&v903 + v53++) = v61;
              }

              v54 = 3;
              goto LABEL_94;
          }
        }

        v54 = *v59;
      }

      else
      {
        v61 = v55;
      }

LABEL_94:
      ++v59;
      ++v60;
      v55 = v61;
      if (!--v50)
      {
        goto LABEL_116;
      }
    }
  }

  v58 = 0;
  v57 = 0;
  v56 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
LABEL_116:
  v874 = v58;
  v876 = v56;
  v879 = v53;
  v881 = v52;
  v872 = a3;
  v894 = 0;
  if (*(v44 + 332) == 1)
  {
    v64 = 77;
  }

  else
  {
    v64 = 65;
  }

  v65 = *(v44 + 308);
  if (!*(v44 + 334))
  {
    v65 = 0;
  }

  v888 = v65;
  v890 = v64;
  v66 = v65 & 0xFFFFFFFE;
  if (v66 == 2)
  {
    v67 = 50;
  }

  else
  {
    v67 = 49;
  }

  if (v66 == 4)
  {
    v68 = 51;
  }

  else
  {
    v68 = v67;
  }

  v886 = v68;
  v883 = v51;
  v873 = v51 > 0;
  v69 = 1;
  do
  {
    v70 = v69;
    v12 = (v69 & 1) == 0;
    v71 = "GP";
    if (v12)
    {
      v71 = "GN";
    }

    v895 = *v71;
    v884 = v71 + 1;
    v72 = 1;
    v891 = v70;
    do
    {
      if ((v70 & (v72 != 1)) != 0)
      {
        goto LABEL_209;
      }

      if (v72 > 3)
      {
        switch(v72)
        {
          case 4:
            v73 = &v901;
            v74 = 4;
            v75 = v874;
            break;
          case 5:
            v73 = &v903;
            v74 = 3;
            v75 = v879;
            break;
          case 6:
            v73 = &v897;
            v74 = 6;
            v75 = v876;
            break;
          default:
LABEL_144:
            EvCrt_Illegal_switch_default("NMEA_Encode_GSA", 633);
            goto LABEL_209;
        }
      }

      else
      {
        switch(v72)
        {
          case 1:
            v73 = &v907;
            v76 = v873;
            v75 = v883;
            v74 = 1;
            goto LABEL_149;
          case 2:
            v73 = &v905;
            v74 = 2;
            v75 = v881;
            break;
          case 3:
            v73 = &v899;
            v74 = 5;
            v75 = v57;
            break;
          default:
            goto LABEL_144;
        }
      }

      if (v75 < 1)
      {
        goto LABEL_209;
      }

      v76 = 1;
LABEL_149:
      v77 = (*v5)++;
      *v77 = 36;
      v78 = *v5;
      if (*v5 >= v5[3])
      {
        v78 = *v893;
      }

      v79 = v78;
      if (v895)
      {
        v80 = v884;
        v79 = v78;
        v81 = v895;
        do
        {
          *v5 = v79 + 1;
          *v79 = v81;
          v79 = *v5;
          if (*v5 >= v5[3])
          {
            v79 = v5[2];
            *v5 = v79;
          }

          v82 = *v80++;
          v81 = v82;
        }

        while (v82);
      }

      v83 = 0;
      v84 = 71;
      do
      {
        *v5 = v79 + 1;
        *v79 = v84;
        v79 = *v5;
        if (*v5 >= v5[3])
        {
          v79 = v5[2];
          *v5 = v79;
        }

        v84 = aGsa[++v83];
      }

      while (v83 != 4);
      *v5 = v79 + 1;
      *v79 = v890;
      v85 = *v5;
      if (*v5 >= v5[3])
      {
        v85 = *v893;
      }

      *v5 = v85 + 1;
      *v85 = 44;
      v86 = *v5;
      if (*v5 >= v5[3])
      {
        v86 = *v893;
      }

      *v5 = v86 + 1;
      *v86 = v886;
      v87 = *v5;
      if (*v5 >= v5[3])
      {
        v87 = *v893;
      }

      *v5 = v87 + 1;
      *v87 = 44;
      v88 = *v5;
      if (*v5 >= v5[3])
      {
        v88 = v5[2];
        *v5 = v88;
      }

      if (v888)
      {
        if (v75 <= 0)
        {
          goto LABEL_183;
        }

        v89 = v75;
        do
        {
          v91 = *v73;
          v73 = (v73 + 1);
          v90 = v91;
          if (v91)
          {
            v92 = v90 + 64;
            if (v74 != 2)
            {
              v92 = v90 - 192;
            }

            if (v74 == 1)
            {
              v92 = v90;
            }

            if (v74 <= 3)
            {
              v93 = v92;
            }

            else
            {
              v93 = v90;
            }

            sprintf_02d(v5, v93);
            v94 = (*v5)++;
            *v94 = 44;
            v88 = *v5;
            if (*v5 >= v5[3])
            {
              v88 = v5[2];
              *v5 = v88;
            }
          }

          --v89;
        }

        while (v89);
        v44 = v892;
        if (v75 < 12)
        {
LABEL_183:
          v95 = v75 - 12;
          do
          {
            *v5 = v88 + 1;
            *v88 = 44;
            v88 = *v5;
            if (*v5 >= v5[3])
            {
              v88 = v5[2];
              *v5 = v88;
            }
          }

          while (!__CFADD__(v95++, 1));
        }
      }

      else
      {
        for (i = 15; i > 1; --i)
        {
          *v5 = v88 + 1;
          *v88 = 44;
          v88 = *v5;
          if (*v5 >= v5[3])
          {
            v88 = v5[2];
            *v5 = v88;
          }
        }
      }

      if (v76 && *(v44 + 272) < 99.99)
      {
        sprintf_DOP(v5, *(v44 + 288));
        v98 = (*v5)++;
        *v98 = 44;
        if (*v5 >= v5[3])
        {
          *v5 = v5[2];
        }

        sprintf_DOP(v5, *(v44 + 272));
        v99 = (*v5)++;
        *v99 = 44;
        if (*v5 >= v5[3])
        {
          *v5 = v5[2];
        }

        sprintf_DOP(v5, *(v44 + 280));
      }

      else
      {
        *v5 = v88 + 1;
        *v88 = 44;
        v100 = *v5;
        if (*v5 >= v5[3])
        {
          v100 = *v893;
        }

        *v5 = v100 + 1;
        *v100 = 44;
        if (*v5 >= v5[3])
        {
          *v5 = v5[2];
        }
      }

      if (v894)
      {
        v101 = (*v5)++;
        *v101 = 44;
        if (*v5 >= v5[3])
        {
          *v5 = v5[2];
        }

        sprintf1da(v5, v72, v909, 0, 0);
      }

      NMEA_Add_checksum(v5, v78);
      v70 = v891;
LABEL_209:
      v72 = (v72 + 1);
    }

    while (v72 != 7);
    v69 = 0;
    v894 = 1;
  }

  while ((v70 & 1) != 0);
  v102 = (*v5)++;
  *v102 = 36;
  v103 = *v5;
  if (*v5 >= v5[3])
  {
    v103 = *v893;
  }

  v104 = 0;
  v105 = 71;
  v106 = v103;
  do
  {
    *v5 = v106 + 1;
    *v106 = v105;
    v106 = *v5;
    if (*v5 >= v5[3])
    {
      v106 = v5[2];
      *v5 = v106;
    }

    v105 = aGn[++v104];
  }

  while (v104 != 2);
  v107 = 0;
  v108 = 71;
  do
  {
    *v5 = v106 + 1;
    *v106 = v108;
    v106 = *v5;
    if (*v5 >= v5[3])
    {
      v106 = v5[2];
      *v5 = v106;
    }

    v108 = aGst[++v107];
  }

  while (v107 != 4);
  sprintf_HHMMSS(v5, v44);
  if (*(v44 + 345))
  {
    v109 = *(v44 + 256);
    if (v109 > 0.0)
    {
      sprintf_AccEst(v5, v109);
    }
  }

  v110 = (*v5)++;
  *v110 = 44;
  if (*v5 >= v5[3])
  {
    *v5 = v5[2];
  }

  sprintf_AccEst(v5, *(v892 + 208));
  v111 = (*v5)++;
  *v111 = 44;
  if (*v5 >= v5[3])
  {
    *v5 = v5[2];
  }

  sprintf_AccEst(v5, *(v892 + 216));
  v112 = (*v5)++;
  *v112 = 44;
  if (*v5 >= v5[3])
  {
    *v5 = v5[2];
  }

  v113 = *(v892 + 224);
  if (v113 >= 0)
  {
    v114 = v113;
  }

  else
  {
    v114 = -v113;
  }

  sprintf1da(v5, v114, v909, 0, v113 >> 31);
  v115 = (*v5)++;
  *v115 = 44;
  if (*v5 >= v5[3])
  {
    *v5 = v5[2];
  }

  sprintf_AccEst(v5, *(v892 + 184));
  v116 = (*v5)++;
  *v116 = 44;
  if (*v5 >= v5[3])
  {
    *v5 = v5[2];
  }

  sprintf_AccEst(v5, *(v892 + 192));
  v117 = (*v5)++;
  *v117 = 44;
  if (*v5 >= v5[3])
  {
    *v5 = v5[2];
  }

  v118 = v892;
  sprintf_AccEst(v5, *(v892 + 200));
  NMEA_Add_checksum(v5, v103);
  v119 = 0;
  v120 = v892 + 1756;
  v121 = v892 + 348;
  while (2)
  {
    v122 = &NMEA_Encode_GSV(Cyc_buffer *,GN_GPS_Nav_Data const*)::GSV_Types[2 * v119];
    v123 = *v122;
    v896 = v122[1];
    v875 = v119;
    if (*v122 > 2)
    {
      v124 = &unk_299066A3A;
      v125 = "GI";
      if (v123 != 6)
      {
        v125 = &unk_299066A3A;
      }

      if (v123 == 5)
      {
        v125 = "GA";
      }

      if (v123 == 4)
      {
        v124 = "GB";
      }

      if (v123 == 3)
      {
        v124 = "GQ";
      }

      if (v123 <= 4)
      {
        v125 = v124;
      }

      goto LABEL_257;
    }

    if (v123)
    {
      v125 = &unk_299066A3A;
      if (v123 == 2)
      {
        v125 = "GL";
      }

      if (v123 == 1)
      {
        v125 = "GP";
      }

LABEL_257:
      v877 = v125;
      v126 = *(v118 + 344);
      if (*(v118 + 344))
      {
        v127 = 0;
        v128 = (v892 + 1756);
        v129 = v118;
        do
        {
          v130 = *v128++;
          if (v130 && *(v129 + 348) == v123)
          {
            if (*(v129 + 860) == v896)
            {
              v127 = (v127 + 1);
            }

            else
            {
              v127 = v127;
            }
          }

          v129 += 4;
          --v126;
        }

        while (v126);
        if (v127 > 0)
        {
          v131 = 0;
          v132 = ((v127 - 1) >> 2) + 1;
          v885 = *v877;
          v878 = (v877 + 1);
          v133 = 1;
          v880 = ((v127 - 1) >> 2) + 1;
          v882 = v127;
          while (1)
          {
            v134 = (*v5)++;
            *v134 = 36;
            v135 = *v5;
            if (*v5 >= v5[3])
            {
              v135 = *v893;
            }

            v136 = v135;
            if (v885)
            {
              v137 = v878;
              v136 = v135;
              v138 = v885;
              do
              {
                *v5 = v136 + 1;
                *v136 = v138;
                v136 = *v5;
                if (*v5 >= v5[3])
                {
                  v136 = v5[2];
                  *v5 = v136;
                }

                v139 = *v137++;
                v138 = v139;
              }

              while (v139);
            }

            v140 = 0;
            v141 = 71;
            do
            {
              *v5 = v136 + 1;
              *v136 = v141;
              v136 = *v5;
              if (*v5 >= v5[3])
              {
                v136 = v5[2];
                *v5 = v136;
              }

              v141 = aGsv[++v140];
            }

            while (v140 != 4);
            v887 = v135;
            sprintf1da(v5, v132, v909, 0, 0);
            v142 = (*v5)++;
            *v142 = 44;
            if (*v5 >= v5[3])
            {
              *v5 = v5[2];
            }

            sprintf1da(v5, v133, v909, 0, 0);
            v143 = (*v5)++;
            *v143 = 44;
            if (*v5 >= v5[3])
            {
              *v5 = v5[2];
            }

            v889 = v133;
            sprintf_02d(v5, v127);
            v144 = *(v118 + 344);
            if (v131 < v144)
            {
              v145 = 0;
              v146 = v131;
              v147 = v896;
              while (1)
              {
                if (!*(v120 + v131) || *(v121 + 4 * v131) != v123 || *(v892 + 860 + 4 * v131) != v147)
                {
                  ++v131;
                  goto LABEL_295;
                }

                v148 = (*v5)++;
                *v148 = 44;
                if (*v5 >= v5[3])
                {
                  *v5 = v5[2];
                }

                v149 = *(v120 + v131);
                v150 = *(v121 + 4 * v131);
                if (v150 > 3)
                {
                  if (v150 == 6)
                  {
                    v151 = *(v120 + v131);
                  }

                  else
                  {
                    v151 = 0;
                  }

                  if (v150 == 4 || v150 == 5)
                  {
                    v149 = *(v120 + v131);
                  }

                  else
                  {
                    v149 = v151;
                  }
                }

                else if (v150 != 1)
                {
                  if (v150 == 2)
                  {
                    v149 = (v149 + 64);
                  }

                  else if (v150 == 3)
                  {
                    v149 = (v149 - 192);
                  }

                  else
                  {
                    v149 = 0;
                  }
                }

                sprintf_02d(v5, v149);
                v153 = (*v5)++;
                *v153 = 44;
                v154 = *v5;
                if (*v5 >= v5[3])
                {
                  v154 = v5[2];
                  *v5 = v154;
                }

                v155 = *(v892 + 5088 + 8 * v131);
                if (v155 >= -5.0)
                {
                  v158 = v155 * 10.0;
                  if (v158 <= 0.0)
                  {
                    v159 = -0.5;
                  }

                  else
                  {
                    v159 = 0.5;
                  }

                  v160 = v158 + v159;
                  if (v160 <= 2147483650.0)
                  {
                    if (v160 >= -2147483650.0)
                    {
                      v161 = v160;
                    }

                    else
                    {
                      v161 = 0x80000000;
                    }
                  }

                  else
                  {
                    v161 = 0x7FFFFFFFLL;
                  }

                  sprintf_2f(v5, v161);
                  v162 = (*v5)++;
                  *v162 = 44;
                  if (*v5 >= v5[3])
                  {
                    *v5 = v5[2];
                  }

                  v163 = *(v892 + 4064 + 8 * v131) * 10.0;
                  if (v163 <= 0.0)
                  {
                    v164 = -0.5;
                  }

                  else
                  {
                    v164 = 0.5;
                  }

                  v165 = v163 + v164;
                  if (v165 <= 2147483650.0)
                  {
                    if (v165 >= -2147483650.0)
                    {
                      v166 = v165;
                    }

                    else
                    {
                      v166 = 0x80000000;
                    }
                  }

                  else
                  {
                    v166 = 0x7FFFFFFFLL;
                  }

                  sprintf_2f(v5, v166);
                  v157 = v5;
                  v147 = v896;
                }

                else
                {
                  *v5 = v154 + 1;
                  *v154 = 44;
                  v156 = *v5;
                  v157 = v893;
                  v147 = v896;
                  if (*v5 < v5[3])
                  {
                    goto LABEL_333;
                  }
                }

                v156 = *v157;
LABEL_333:
                *v5 = v156 + 1;
                *v156 = 44;
                if (*v5 >= v5[3])
                {
                  *v5 = v5[2];
                }

                v167 = *(v892 + 2016 + 8 * v131);
                if (v167 > 0.0)
                {
                  v168 = v167 * 10.0;
                  if (v168 <= 0.0)
                  {
                    v169 = -0.5;
                  }

                  else
                  {
                    v169 = 0.5;
                  }

                  v170 = v168 + v169;
                  if (v170 <= 2147483650.0)
                  {
                    if (v170 >= -2147483650.0)
                    {
                      v171 = v170;
                    }

                    else
                    {
                      v171 = 0x80000000;
                    }
                  }

                  else
                  {
                    v171 = 0x7FFFFFFFLL;
                  }

                  sprintf_2f(v5, v171);
                  v147 = v896;
                }

                ++v131;
                if (v145 > 2)
                {
                  goto LABEL_348;
                }

                ++v145;
                v144 = *(v892 + 344);
LABEL_295:
                if (++v146 >= v144)
                {
                  goto LABEL_348;
                }
              }
            }

            v147 = v896;
LABEL_348:
            v172 = (*v5)++;
            *v172 = 44;
            v173 = *v5;
            if (*v5 >= v5[3])
            {
              v173 = v5[2];
              *v5 = v173;
            }

            v174 = 48;
            v118 = v892;
            if (v147 > 50)
            {
              break;
            }

            if (v147 > 32)
            {
              v127 = v882;
              if (v147 > 35)
              {
                if (v147 == 36)
                {
                  goto LABEL_385;
                }

                if (v147 == 49)
                {
                  goto LABEL_381;
                }

                if (v147 != 50)
                {
                  goto LABEL_389;
                }
              }

              else if (v147 == 33 || v147 == 34)
              {
LABEL_381:
                v174 = 49;
                goto LABEL_389;
              }

              goto LABEL_374;
            }

            v127 = v882;
            if (v147 > 17)
            {
              if (v147 != 18)
              {
                if (v147 != 19)
                {
                  if (v147 != 20)
                  {
                    goto LABEL_389;
                  }

LABEL_384:
                  v174 = 56;
                  goto LABEL_389;
                }

                goto LABEL_385;
              }

              goto LABEL_374;
            }

            if (v147)
            {
              if (v147 == 17)
              {
                goto LABEL_381;
              }

LABEL_389:
              *v5 = v173 + 1;
              *v173 = v174;
              if (*v5 >= v5[3])
              {
                *v5 = v5[2];
              }
            }

            NMEA_Add_checksum(v5, v887);
            v132 = v880;
            v133 = (v889 + 1);
            if (v889 == v880)
            {
              goto LABEL_394;
            }
          }

          if (v147 > 67)
          {
            v127 = v882;
            if (v147 > 82)
            {
              if (v147 == 83 || v147 == 97)
              {
                v174 = 50;
              }

              else if (v147 == 98)
              {
                goto LABEL_381;
              }
            }

            else
            {
              switch(v147)
              {
                case 'D':
                  v174 = 54;
                  break;
                case 'Q':
                  v174 = 55;
                  break;
                case 'R':
                  goto LABEL_381;
              }
            }

            goto LABEL_389;
          }

          v127 = v882;
          if (v147 <= 64)
          {
            if (v147 != 51)
            {
              if (v147 != 52)
              {
                goto LABEL_389;
              }

              goto LABEL_384;
            }

LABEL_385:
            v174 = 53;
            goto LABEL_389;
          }

          if (v147 == 65)
          {
            goto LABEL_381;
          }

          if (v147 != 66)
          {
            goto LABEL_385;
          }

LABEL_374:
          v174 = 51;
          goto LABEL_389;
        }
      }
    }

    else
    {
      EvCrt_Illegal_switch_case("NMEA_Encode_GSV", 808);
    }

LABEL_394:
    v119 = v875 + 1;
    if (v875 != 10)
    {
      continue;
    }

    break;
  }

  v175 = (*v5)++;
  *v175 = 36;
  v176 = *v5;
  if (*v5 >= v5[3])
  {
    v176 = *v893;
  }

  v177 = 71;
  v178 = 1u;
  v179 = v176;
  do
  {
    *v5 = v179 + 1;
    *v179 = v177;
    v179 = *v5;
    if (*v5 >= v5[3])
    {
      v179 = v5[2];
      *v5 = v179;
    }

    v177 = aGprmc[v178++];
  }

  while (v178 != 7);
  sprintf_HHMMSS(v5, v118);
  if (*(v118 + 334))
  {
    v180 = *(v118 + 308);
  }

  else
  {
    v180 = 0;
  }

  if (v180)
  {
    if (v180 <= 0)
    {
      v181 = 86;
    }

    else
    {
      v181 = 65;
    }

    v182 = (*v5)++;
    *v182 = v181;
    v183 = *v5;
    if (*v5 >= v5[3])
    {
      v183 = *v893;
    }

    *v5 = v183 + 1;
    *v183 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_LatLon(v5, *(v892 + 104), *(v892 + 112));
    v184 = *(v892 + 136) * 1.94279547 * 1000.0;
    v185 = -0.5;
    if (v184 > 0.0)
    {
      v185 = 0.5;
    }

    v186 = v184 + v185;
    if (v186 <= 2147483650.0)
    {
      if (v186 >= -2147483650.0)
      {
        v187 = v186;
      }

      else
      {
        v187 = 0x80000000;
      }
    }

    else
    {
      v187 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v187, 4);
    v191 = (*v5)++;
    *v191 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v192 = *(v892 + 144) * 10.0;
    v193 = -0.5;
    if (v192 > 0.0)
    {
      v193 = 0.5;
    }

    v194 = v192 + v193;
    if (v194 <= 2147483650.0)
    {
      if (v194 >= -2147483650.0)
      {
        v195 = v194;
      }

      else
      {
        v195 = 0x80000000;
      }
    }

    else
    {
      v195 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v195);
    v196 = (*v5)++;
    *v196 = 44;
    v189 = *v5;
    if (*v5 >= v5[3])
    {
      v189 = v5[2];
      *v5 = v189;
    }
  }

  else
  {
    v188 = 0;
    v189 = *v5;
    v190 = 86;
    do
    {
      *v5 = v189 + 1;
      *v189 = v190;
      v189 = *v5;
      if (*v5 >= v5[3])
      {
        v189 = v5[2];
        *v5 = v189;
      }

      v190 = aV[++v188];
    }

    while (v188 != 8);
  }

  if (*(v892 + 17) == 1)
  {
    sprintf_02d(v5, *(v892 + 22));
    sprintf_02d(v5, *(v892 + 20));
    sprintf_02d(v5, *(v892 + 18) - 2000);
    v189 = *v5;
  }

  *v5 = v189 + 1;
  *v189 = 44;
  v197 = *v5;
  if (*v5 >= v5[3])
  {
    v197 = *v893;
  }

  *v5 = v197 + 1;
  *v197 = 44;
  v198 = *v5;
  if (*v5 >= v5[3])
  {
    v198 = *v893;
  }

  *v5 = v198 + 1;
  *v198 = 44;
  v199 = *v5;
  if (*v5 >= v5[3])
  {
    v199 = *v893;
  }

  v200 = 0x44414441454EuLL >> (8 * v180);
  if (v180 >= 6)
  {
    LOBYTE(v200) = 78;
  }

  *v5 = v199 + 1;
  *v199 = v200;
  v201 = *v5;
  if (*v5 >= v5[3])
  {
    v201 = *v893;
  }

  v202 = 0;
  v203 = 44;
  do
  {
    *v5 = v201 + 1;
    *v201 = v203;
    v201 = *v5;
    if (*v5 >= v5[3])
    {
      v201 = v5[2];
      *v5 = v201;
    }

    v203 = aV_0[++v202];
  }

  while (v202 != 2);
  NMEA_Add_checksum(v5, v176);
  v204 = (*v5)++;
  *v204 = 36;
  v205 = *v5;
  if (*v5 >= v5[3])
  {
    v205 = *v893;
  }

  v206 = 71;
  v207 = 1u;
  v208 = v205;
  do
  {
    *v5 = v208 + 1;
    *v208 = v206;
    v208 = *v5;
    if (*v5 >= v5[3])
    {
      v208 = v5[2];
      *v5 = v208;
    }

    v206 = aGpvtg[v207++];
  }

  while (v207 != 7);
  v209 = *(v892 + 308);
  if (*(v892 + 334) != 1 || v209 == 0)
  {
    v211 = 44;
    v212 = 1u;
    v213 = v892;
    do
    {
      *v5 = v208 + 1;
      *v208 = v211;
      v208 = *v5;
      if (*v5 >= v5[3])
      {
        v208 = v5[2];
        *v5 = v208;
      }

      v211 = aTMNKN[v212++];
    }

    while (v212 != 14);
  }

  else
  {
    v214 = *(v892 + 144) * 10.0;
    v215 = -0.5;
    if (v214 > 0.0)
    {
      v215 = 0.5;
    }

    v216 = v214 + v215;
    if (v216 <= 2147483650.0)
    {
      if (v216 >= -2147483650.0)
      {
        v217 = v216;
      }

      else
      {
        v217 = 0x80000000;
      }
    }

    else
    {
      v217 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v217);
    v218 = *v5;
    v219 = 44;
    v220 = 1u;
    do
    {
      *v5 = v218 + 1;
      *v218 = v219;
      v218 = *v5;
      if (*v5 >= v5[3])
      {
        v218 = v5[2];
        *v5 = v218;
      }

      v219 = aT_2[v220++];
    }

    while (v220 != 4);
    v221 = 44;
    v222 = 1u;
    do
    {
      *v5 = v218 + 1;
      *v218 = v221;
      v218 = *v5;
      if (*v5 >= v5[3])
      {
        v218 = v5[2];
        *v5 = v218;
      }

      v221 = aM_0[v222++];
    }

    while (v222 != 4);
    v223 = *(v892 + 136) * 1.94279547 * 1000.0;
    v224 = -0.5;
    if (v223 > 0.0)
    {
      v224 = 0.5;
    }

    v225 = v223 + v224;
    if (v225 <= 2147483650.0)
    {
      if (v225 >= -2147483650.0)
      {
        v226 = v225;
      }

      else
      {
        v226 = 0x80000000;
      }
    }

    else
    {
      v226 = 0x7FFFFFFFLL;
    }

    v213 = v892;
    sprintf_4f(v5, v226, 4);
    v227 = *v5;
    v228 = 44;
    v229 = 1u;
    do
    {
      *v5 = v227 + 1;
      *v227 = v228;
      v227 = *v5;
      if (*v5 >= v5[3])
      {
        v227 = v5[2];
        *v5 = v227;
      }

      v228 = aN_2[v229++];
    }

    while (v229 != 4);
    v230 = *(v892 + 136) * 3.6 * 1000.0;
    v231 = -0.5;
    if (v230 > 0.0)
    {
      v231 = 0.5;
    }

    v232 = v230 + v231;
    if (v232 <= 2147483650.0)
    {
      if (v232 >= -2147483650.0)
      {
        v233 = v232;
      }

      else
      {
        v233 = 0x80000000;
      }
    }

    else
    {
      v233 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v233, 4);
    v234 = *v5;
    v235 = 44;
    v236 = 1u;
    do
    {
      *v5 = v234 + 1;
      *v234 = v235;
      v234 = *v5;
      if (*v5 >= v5[3])
      {
        v234 = v5[2];
        *v5 = v234;
      }

      v235 = aK[v236++];
    }

    while (v236 != 4);
    if (v209 <= 2)
    {
      if (v209 == 1)
      {
        *v5 = v234 + 1;
        v237 = 69;
      }

      else
      {
        if (v209 != 2)
        {
          goto LABEL_511;
        }

LABEL_508:
        *v5 = v234 + 1;
        v237 = 65;
      }
    }

    else if (v209 == 3 || v209 == 5)
    {
      *v5 = v234 + 1;
      v237 = 68;
    }

    else
    {
      if (v209 == 4)
      {
        goto LABEL_508;
      }

LABEL_511:
      *v5 = v234 + 1;
      v237 = 78;
    }

    *v234 = v237;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }
  }

  NMEA_Add_checksum(v5, v205);
  v238 = (*v5)++;
  *v238 = 36;
  v239 = *v5;
  if (*v5 >= v5[3])
  {
    v239 = *v893;
  }

  v240 = 0;
  v241 = 71;
  v242 = v239;
  do
  {
    *v5 = v242 + 1;
    *v242 = v241;
    v242 = *v5;
    if (*v5 >= v5[3])
    {
      v242 = v5[2];
      *v5 = v242;
    }

    v241 = aGn[++v240];
  }

  while (v240 != 2);
  v243 = 0;
  v244 = 90;
  do
  {
    *v5 = v242 + 1;
    *v242 = v244;
    v242 = *v5;
    if (*v5 >= v5[3])
    {
      v242 = v5[2];
      *v5 = v242;
    }

    v244 = aZcd[++v243];
  }

  while (v243 != 4);
  v245 = *(v213 + 4);
  v246 = v245 % 0x3E8;
  sprintf1da(v5, v245 / 0x3E8uLL, v909, 0, 0);
  v247 = (*v5)++;
  *v247 = 46;
  if (*v5 >= v5[3])
  {
    *v5 = v5[2];
  }

  sprintf_03d(v5, v246);
  v248 = 0;
  v249 = *v5;
  v250 = 44;
  do
  {
    *v5 = v249 + 1;
    *v249 = v250;
    v249 = *v5;
    if (*v5 >= v5[3])
    {
      v249 = v5[2];
      *v5 = v249;
    }

    v250 = asc_29906A3B6[++v248];
  }

  while (v248 != 2);
  NMEA_Add_checksum(v5, v239);
  v251 = (*v5)++;
  *v251 = 36;
  v252 = *v5;
  if (*v5 >= v5[3])
  {
    v252 = *v893;
  }

  v253 = 0;
  v254 = 71;
  v255 = v252;
  do
  {
    *v5 = v255 + 1;
    *v255 = v254;
    v255 = *v5;
    if (*v5 >= v5[3])
    {
      v255 = v5[2];
      *v5 = v255;
    }

    v254 = aGn[++v253];
  }

  while (v253 != 2);
  v256 = 0;
  v257 = 90;
  do
  {
    *v5 = v255 + 1;
    *v255 = v257;
    v255 = *v5;
    if (*v5 >= v5[3])
    {
      v255 = v5[2];
      *v5 = v255;
    }

    v257 = aZda[++v256];
  }

  while (v256 != 4);
  sprintf_HHMMSS(v5, v213);
  if (*(v213 + 17) == 1)
  {
    sprintf_02d(v5, *(v213 + 22));
    v258 = (*v5)++;
    *v258 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_02d(v5, *(v892 + 20));
    v259 = (*v5)++;
    *v259 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v213 = v892;
    sprintf_02d(v5, *(v892 + 18));
    v260 = *v5;
  }

  else
  {
    v261 = 0;
    v260 = *v5;
    v262 = 44;
    do
    {
      *v5 = v260 + 1;
      *v260 = v262;
      v260 = *v5;
      if (*v5 >= v5[3])
      {
        v260 = v5[2];
        *v5 = v260;
      }

      v262 = asc_29906A3BE[++v261];
    }

    while (v261 != 2);
  }

  v263 = 0;
  v264 = 44;
  do
  {
    *v5 = v260 + 1;
    *v260 = v264;
    v260 = *v5;
    if (*v5 >= v5[3])
    {
      v260 = v5[2];
      *v5 = v260;
    }

    v264 = asc_29906A3BE[++v263];
  }

  while (v263 != 2);
  NMEA_Add_checksum(v5, v252);
  v265 = (*v5)++;
  *v265 = 36;
  v266 = *v5;
  if (*v5 >= v5[3])
  {
    v266 = *v893;
  }

  v267 = 80;
  v268 = 1u;
  v269 = v266;
  do
  {
    *v5 = v269 + 1;
    *v269 = v267;
    v269 = *v5;
    if (*v5 >= v5[3])
    {
      v269 = v5[2];
      *v5 = v269;
    }

    v267 = aPdbga[v268++];
  }

  while (v268 != 7);
  sprintf_HHMMSS(v5, v213);
  v270 = *(v213 + 304);
  if (v270 >= 0)
  {
    v271 = v270;
  }

  else
  {
    v271 = -v270;
  }

  sprintf1da(v5, v271, v909, 0, v270 >> 31);
  v272 = (*v5)++;
  *v272 = 44;
  v273 = *v5;
  if (*v5 >= v5[3])
  {
    v273 = v5[2];
    *v5 = v273;
  }

  v274 = *(v213 + 308);
  if (v274)
  {
    if (v274 >= 0)
    {
      v275 = v274;
    }

    else
    {
      v275 = -v274;
    }

    sprintf1da(v5, v275, v909, 0, v274 >> 31);
    v276 = (*v5)++;
    *v276 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v892 + 333), v909, 0, 0);
    v277 = (*v5)++;
    *v277 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v892 + 334), v909, 0, 0);
    v278 = (*v5)++;
    *v278 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 208));
    v279 = (*v5)++;
    *v279 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 216));
    v280 = (*v5)++;
    *v280 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v281 = *(v892 + 224);
    if (v281 >= 0)
    {
      v282 = v281;
    }

    else
    {
      v282 = -v281;
    }

    sprintf1da(v5, v282, v909, 0, v281 >> 31);
    v283 = (*v5)++;
    *v283 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 200));
    v284 = (*v5)++;
    *v284 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 232));
    v285 = (*v5)++;
    *v285 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 240));
    v286 = (*v5)++;
    *v286 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 248));
    v287 = (*v5)++;
    *v287 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 160) * 1000.0);
    v288 = (*v5)++;
    *v288 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 168) * 1000000000.0);
    v289 = (*v5)++;
    *v289 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 176) * 1000000000.0);
    v290 = (*v5)++;
    *v290 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v291 = *(v892 + 152) * 1000.0;
    v292 = -0.5;
    if (v291 > 0.0)
    {
      v292 = 0.5;
    }

    v293 = v291 + v292;
    if (v293 <= 2147483650.0)
    {
      if (v293 >= -2147483650.0)
      {
        v294 = v293;
      }

      else
      {
        v294 = 0x80000000;
      }
    }

    else
    {
      v294 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v294, 4);
    v297 = (*v5)++;
    *v297 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v298 = *(v892 + 312);
    if (v298 >= 0)
    {
      v299 = v298;
    }

    else
    {
      v299 = -v298;
    }

    sprintf1da(v5, v299, v909, 0, v298 >> 31);
    v300 = (*v5)++;
    *v300 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v301 = *(v892 + 316);
    if (v301 >= 0)
    {
      v302 = v301;
    }

    else
    {
      v302 = -v301;
    }

    sprintf1da(v5, v302, v909, 0, v301 >> 31);
    v303 = (*v5)++;
    *v303 = 44;
    v304 = *v5;
    if (*v5 >= v5[3])
    {
      v304 = *v893;
    }

    v305 = 0;
    v306 = 48;
    do
    {
      *v5 = v304 + 1;
      *v304 = v306;
      v304 = *v5;
      if (*v5 >= v5[3])
      {
        v304 = v5[2];
        *v5 = v304;
      }

      v306 = a0x_0[++v305];
    }

    while (v305 != 2);
    sprintf_08x(v5, *(v892 + 328));
    v307 = (*v5)++;
    *v307 = 44;
    v308 = *v5;
    if (*v5 >= v5[3])
    {
      v308 = *v893;
    }

    v309 = 0;
    v310 = 48;
    do
    {
      *v5 = v308 + 1;
      *v308 = v310;
      v308 = *v5;
      if (*v5 >= v5[3])
      {
        v308 = v5[2];
        *v5 = v308;
      }

      v310 = a0x_0[++v309];
    }

    while (v309 != 2);
    v213 = v892;
    sprintf_03x(v5, *(v892 + 296));
    v311 = (*v5)++;
    *v311 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v312 = *(v892 + 320);
    if (v312 >= 0)
    {
      v313 = v312;
    }

    else
    {
      v313 = -v312;
    }

    sprintf1da(v5, v313, v909, 0, v312 >> 31);
  }

  else
  {
    v295 = 48;
    v296 = 1u;
    do
    {
      *v5 = v273 + 1;
      *v273 = v295;
      v273 = *v5;
      if (*v5 >= v5[3])
      {
        v273 = v5[2];
        *v5 = v273;
      }

      v295 = a0_1[v296++];
    }

    while (v296 != 20);
  }

  result = NMEA_Add_checksum(v5, v266);
  if (v872 && *v872 == *v213 && *(v872 + 4) == *(v213 + 4))
  {
    v314 = (*v5)++;
    *v314 = 36;
    v315 = *v5;
    if (*v5 >= v5[3])
    {
      v315 = *v893;
    }

    v316 = 80;
    v317 = 1u;
    v318 = v315;
    do
    {
      *v5 = v318 + 1;
      *v318 = v316;
      v318 = *v5;
      if (*v5 >= v5[3])
      {
        v318 = v5[2];
        *v5 = v318;
      }

      v316 = aPdbgc[v317++];
    }

    while (v317 != 7);
    sprintf_HHMMSS(v5, v213);
    v319 = *v5;
    if (*(v872 + 16))
    {
      *v5 = v319 + 1;
      *v319 = 65;
      v320 = *v5;
      if (*v5 >= v5[3])
      {
        v320 = *v893;
      }

      *v5 = v320 + 1;
      *v320 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 17), v909, 0, 0);
      v321 = (*v5)++;
      *v321 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 18), v909, 0, 0);
      v322 = (*v5)++;
      *v322 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf_3f(v5, (*(v872 + 20) / 10), 3);
      v323 = (*v5)++;
      *v323 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 24), v909, 0, 0);
      v324 = (*v5)++;
      *v324 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 25), v909, 0, 0);
      v325 = (*v5)++;
      *v325 = 44;
      v319 = *v5;
      if (*v5 >= v5[3])
      {
        v319 = *v893;
      }
    }

    else
    {
      v326 = 78;
      v327 = 1u;
      do
      {
        *v5 = v319 + 1;
        *v319 = v326;
        v319 = *v5;
        if (*v5 >= v5[3])
        {
          v319 = v5[2];
          *v5 = v319;
        }

        v326 = aN_4[v327++];
      }

      while (v327 != 8);
    }

    if (*(v872 + 26))
    {
      *v5 = v319 + 1;
      *v319 = 65;
      v328 = *v5;
      if (*v5 >= v5[3])
      {
        v328 = *v893;
      }

      *v5 = v328 + 1;
      *v328 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 27), v909, 0, 0);
      v329 = (*v5)++;
      *v329 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 28), v909, 0, 0);
      v330 = (*v5)++;
      *v330 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf_3f(v5, (*(v872 + 32) / 10), 3);
      v331 = (*v5)++;
      *v331 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 36), v909, 0, 0);
      v332 = (*v5)++;
      *v332 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 37), v909, 0, 0);
      v333 = (*v5)++;
      *v333 = 44;
      v319 = *v5;
      if (*v5 >= v5[3])
      {
        v319 = *v893;
      }
    }

    else
    {
      v334 = 78;
      v335 = 1u;
      do
      {
        *v5 = v319 + 1;
        *v319 = v334;
        v319 = *v5;
        if (*v5 >= v5[3])
        {
          v319 = v5[2];
          *v5 = v319;
        }

        v334 = aN_4[v335++];
      }

      while (v335 != 8);
    }

    if (*(v872 + 38))
    {
      *v5 = v319 + 1;
      *v319 = 65;
      v336 = *v5;
      if (*v5 >= v5[3])
      {
        v336 = *v893;
      }

      *v5 = v336 + 1;
      *v336 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 39), v909, 0, 0);
      v337 = (*v5)++;
      *v337 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 40), v909, 0, 0);
      v338 = (*v5)++;
      *v338 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf_3f(v5, (*(v872 + 44) / 10), 3);
      v339 = (*v5)++;
      *v339 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 48), v909, 0, 0);
      v340 = (*v5)++;
      *v340 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 49), v909, 0, 0);
    }

    else
    {
      v341 = 78;
      v342 = 1u;
      do
      {
        *v5 = v319 + 1;
        *v319 = v341;
        v319 = *v5;
        if (*v5 >= v5[3])
        {
          v319 = v5[2];
          *v5 = v319;
        }

        v341 = aN_5[v342++];
      }

      while (v342 != 7);
    }

    NMEA_Add_checksum(v5, v315);
    v343 = (*v5)++;
    *v343 = 36;
    v344 = *v5;
    if (*v5 >= v5[3])
    {
      v344 = *v893;
    }

    v345 = 80;
    v346 = 1u;
    v347 = v344;
    do
    {
      *v5 = v347 + 1;
      *v347 = v345;
      v347 = *v5;
      if (*v5 >= v5[3])
      {
        v347 = v5[2];
        *v5 = v347;
      }

      v345 = aPdbgd[v346++];
    }

    while (v346 != 7);
    sprintf_HHMMSS(v5, v892);
    v348 = *v5;
    if (*(v872 + 50))
    {
      *v5 = v348 + 1;
      *v348 = 65;
      v349 = *v5;
      if (*v5 >= v5[3])
      {
        v349 = *v893;
      }

      *v5 = v349 + 1;
      *v349 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 51), v909, 0, 0);
      v350 = (*v5)++;
      *v350 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 52), v909, 0, 0);
      v351 = (*v5)++;
      *v351 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf_3f(v5, (*(v872 + 56) / 10), 3);
      v352 = (*v5)++;
      *v352 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v353 = *(v872 + 64) * 100.0;
      v354 = -0.5;
      if (v353 > 0.0)
      {
        v354 = 0.5;
      }

      v355 = v353 + v354;
      if (v355 <= 2147483650.0)
      {
        if (v355 >= -2147483650.0)
        {
          v356 = v355;
        }

        else
        {
          v356 = 0x80000000;
        }
      }

      else
      {
        v356 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v356, 3);
      v359 = (*v5)++;
      *v359 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v360 = *(v872 + 72) * 100.0;
      v361 = -0.5;
      if (v360 > 0.0)
      {
        v361 = 0.5;
      }

      v362 = v360 + v361;
      if (v362 <= 2147483650.0)
      {
        if (v362 >= -2147483650.0)
        {
          v363 = v362;
        }

        else
        {
          v363 = 0x80000000;
        }
      }

      else
      {
        v363 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v363, 3);
      v364 = (*v5)++;
      *v364 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 80), v909, 0, 0);
    }

    else
    {
      v357 = 78;
      v358 = 1u;
      do
      {
        *v5 = v348 + 1;
        *v348 = v357;
        v348 = *v5;
        if (*v5 >= v5[3])
        {
          v348 = v5[2];
          *v5 = v348;
        }

        v357 = aN_4[v358++];
      }

      while (v358 != 8);
    }

    NMEA_Add_checksum(v5, v344);
    v365 = (*v5)++;
    *v365 = 36;
    v366 = *v5;
    if (*v5 >= v5[3])
    {
      v366 = *v893;
    }

    v367 = 80;
    v368 = 1u;
    v369 = v366;
    do
    {
      *v5 = v369 + 1;
      *v369 = v367;
      v369 = *v5;
      if (*v5 >= v5[3])
      {
        v369 = v5[2];
        *v5 = v369;
      }

      v367 = aPdbge[v368++];
    }

    while (v368 != 7);
    sprintf_HHMMSS(v5, v892);
    v370 = 0;
    v371 = *v5;
    v372 = 65;
    do
    {
      *v5 = v371 + 1;
      *v371 = v372;
      v371 = *v5;
      if (*v5 >= v5[3])
      {
        v371 = v5[2];
        *v5 = v371;
      }

      v372 = aA[++v370];
    }

    while (v370 != 2);
    sprintf1da(v5, *(v872 + 81), v909, 0, 0);
    v373 = (*v5)++;
    *v373 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 82), v909, 0, 0);
    v374 = (*v5)++;
    *v374 = 44;
    v375 = *v5;
    if (*v5 >= v5[3])
    {
      v375 = *v893;
    }

    *v5 = v375 + 1;
    *v375 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 84), v909, 0, 0);
    v376 = (*v5)++;
    *v376 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 86), v909, 0, 0);
    v377 = (*v5)++;
    *v377 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 90), v909, 0, 0);
    v378 = (*v5)++;
    *v378 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 92), v909, 0, 0);
    v379 = (*v5)++;
    *v379 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 93), v909, 0, 0);
    v380 = (*v5)++;
    *v380 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 95), v909, 0, 0);
    v381 = (*v5)++;
    *v381 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 96), v909, 0, 0);
    v382 = (*v5)++;
    *v382 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v383 = *(v872 + 97);
    if (v383 >= 0)
    {
      v384 = v383;
    }

    else
    {
      v384 = -v383;
    }

    sprintf1da(v5, v384, v909, 0, (v383 >> 7) & 1);
    v385 = (*v5)++;
    *v385 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 98), v909, 0, 0);
    v386 = (*v5)++;
    *v386 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 99), v909, 0, 0);
    v387 = (*v5)++;
    *v387 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 100), v909, 0, 0);
    v388 = (*v5)++;
    *v388 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 102), v909, 0, 0);
    v389 = (*v5)++;
    *v389 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 104), v909, 0, 0);
    v390 = (*v5)++;
    *v390 = 44;
    v391 = *v5;
    if (*v5 >= v5[3])
    {
      v391 = *v893;
    }

    v392 = 0;
    v393 = 82;
    do
    {
      *v5 = v391 + 1;
      *v391 = v393;
      v391 = *v5;
      if (*v5 >= v5[3])
      {
        v391 = v5[2];
        *v5 = v391;
      }

      v393 = aR_0[++v392];
    }

    while (v392 != 2);
    sprintf1da(v5, *(v872 + 106), v909, 0, 0);
    v394 = (*v5)++;
    *v394 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 108), v909, 0, 0);
    v395 = (*v5)++;
    *v395 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 110), v909, 0, 0);
    v396 = (*v5)++;
    *v396 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 112), v909, 0, 0);
    v397 = (*v5)++;
    *v397 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 113), v909, 0, 0);
    v398 = (*v5)++;
    *v398 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 114), v909, 0, 0);
    v399 = (*v5)++;
    *v399 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 115), v909, 0, 0);
    v400 = (*v5)++;
    *v400 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 116), v909, 0, 0);
    v401 = (*v5)++;
    *v401 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v402 = *(v872 + 120) * 10.0;
    v403 = -0.5;
    if (v402 > 0.0)
    {
      v403 = 0.5;
    }

    v404 = v402 + v403;
    if (v404 <= 2147483650.0)
    {
      if (v404 >= -2147483650.0)
      {
        v405 = v404;
      }

      else
      {
        v405 = 0x80000000;
      }
    }

    else
    {
      v405 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v405);
    v406 = (*v5)++;
    *v406 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v407 = *(v872 + 128) * 10.0;
    v408 = -0.5;
    if (v407 > 0.0)
    {
      v408 = 0.5;
    }

    v409 = v407 + v408;
    if (v409 <= 2147483650.0)
    {
      if (v409 >= -2147483650.0)
      {
        v410 = v409;
      }

      else
      {
        v410 = 0x80000000;
      }
    }

    else
    {
      v410 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v410);
    v411 = (*v5)++;
    *v411 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v412 = *(v872 + 136) * 10.0;
    v413 = -0.5;
    if (v412 > 0.0)
    {
      v413 = 0.5;
    }

    v414 = v412 + v413;
    if (v414 <= 2147483650.0)
    {
      if (v414 >= -2147483650.0)
      {
        v415 = v414;
      }

      else
      {
        v415 = 0x80000000;
      }
    }

    else
    {
      v415 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v415);
    v416 = (*v5)++;
    *v416 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v417 = *(v872 + 144) * 10.0;
    v418 = -0.5;
    if (v417 > 0.0)
    {
      v418 = 0.5;
    }

    v419 = v417 + v418;
    if (v419 <= 2147483650.0)
    {
      if (v419 >= -2147483650.0)
      {
        v420 = v419;
      }

      else
      {
        v420 = 0x80000000;
      }
    }

    else
    {
      v420 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v420);
    v421 = (*v5)++;
    *v421 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 152), v909, 0, 0);
    v422 = (*v5)++;
    *v422 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 153), v909, 0, 0);
    v423 = (*v5)++;
    *v423 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 154), v909, 0, 0);
    v424 = (*v5)++;
    *v424 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 155), v909, 0, 0);
    v425 = (*v5)++;
    *v425 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 156), v909, 0, 0);
    v426 = (*v5)++;
    *v426 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 157), v909, 0, 0);
    v427 = (*v5)++;
    *v427 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 158), v909, 0, 0);
    v428 = (*v5)++;
    *v428 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 159), v909, 0, 0);
    NMEA_Add_checksum(v5, v366);
    if (*(v872 + 160) == 1)
    {
      NMEA_Encode_PDBGE_Constell(v5, 1, v892, v872);
    }

    if (*(v872 + 200) == 1)
    {
      NMEA_Encode_PDBGE_Constell(v5, 5, v892, v872);
    }

    if (*(v872 + 240) == 1)
    {
      NMEA_Encode_PDBGE_Constell(v5, 2, v892, v872);
    }

    if (*(v872 + 280) == 1)
    {
      NMEA_Encode_PDBGE_Constell(v5, 3, v892, v872);
    }

    if (*(v872 + 320) == 1)
    {
      NMEA_Encode_PDBGE_Constell(v5, 4, v892, v872);
    }

    if (*(v872 + 360) == 1)
    {
      NMEA_Encode_PDBGE_Constell(v5, 6, v892, v872);
    }

    if (*(v872 + 400) == 1)
    {
      NMEA_Encode_PDBGE_Constell(v5, 7, v892, v872);
    }

    v429 = (*v5)++;
    *v429 = 36;
    v430 = *v5;
    if (*v5 >= v5[3])
    {
      v430 = *v893;
    }

    v431 = 80;
    v432 = 1u;
    v433 = v430;
    do
    {
      *v5 = v433 + 1;
      *v433 = v431;
      v433 = *v5;
      if (*v5 >= v5[3])
      {
        v433 = v5[2];
        *v5 = v433;
      }

      v431 = aPdbgi[v432++];
    }

    while (v432 != 7);
    sprintf_HHMMSS(v5, v892);
    v434 = 0;
    v435 = *v5;
    v436 = 65;
    do
    {
      *v5 = v435 + 1;
      *v435 = v436;
      v435 = *v5;
      if (*v5 >= v5[3])
      {
        v435 = v5[2];
        *v5 = v435;
      }

      v436 = aA[++v434];
    }

    while (v434 != 2);
    v437 = *(v872 + 440);
    if (v437 >= 0)
    {
      v438 = v437;
    }

    else
    {
      v438 = -v437;
    }

    sprintf1da(v5, v438, v909, 0, v437 >> 31);
    v439 = (*v5)++;
    *v439 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 444), v909, 0, 0);
    v440 = (*v5)++;
    *v440 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 446), v909, 0, 0);
    v441 = (*v5)++;
    *v441 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_2d(v5, *(v872 + 448));
    v442 = (*v5)++;
    *v442 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    for (j = 452; j != 458; ++j)
    {
      sprintf1da(v5, *(v872 + j), v909, 0, 0);
    }

    v444 = (*v5)++;
    *v444 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 458), v909, 0, 0);
    v445 = (*v5)++;
    *v445 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v446 = *(v872 + 464) * 10.0;
    v447 = -0.5;
    if (v446 > 0.0)
    {
      v447 = 0.5;
    }

    v448 = v446 + v447;
    if (v448 <= 2147483650.0)
    {
      if (v448 >= -2147483650.0)
      {
        v449 = v448;
      }

      else
      {
        v449 = 0x80000000;
      }
    }

    else
    {
      v449 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v449);
    v450 = (*v5)++;
    *v450 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v872 + 472));
    v451 = (*v5)++;
    *v451 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v872 + 480));
    v452 = (*v5)++;
    *v452 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v872 + 488));
    v453 = (*v5)++;
    *v453 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 496), v909, 0, 0);
    v454 = (*v5)++;
    *v454 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 497), v909, 0, 0);
    NMEA_Add_checksum(v5, v430);
    if (*(v872 + 504) == 1)
    {
      NMEA_Encode_PDBGI_Constell(v5, 1, v892, v872);
    }

    if (*(v872 + 600) == 1)
    {
      NMEA_Encode_PDBGI_Constell(v5, 5, v892, v872);
    }

    if (*(v872 + 696) == 1)
    {
      NMEA_Encode_PDBGI_Constell(v5, 2, v892, v872);
    }

    if (*(v872 + 792) == 1)
    {
      NMEA_Encode_PDBGI_Constell(v5, 3, v892, v872);
    }

    if (*(v872 + 888) == 1)
    {
      NMEA_Encode_PDBGI_Constell(v5, 4, v892, v872);
    }

    if (*(v872 + 984) == 1)
    {
      NMEA_Encode_PDBGI_Constell(v5, 6, v892, v872);
    }

    if (*(v872 + 1080) == 1)
    {
      NMEA_Encode_PDBGI_Constell(v5, 7, v892, v872);
    }

    v455 = (*v5)++;
    *v455 = 36;
    v456 = *v5;
    if (*v5 >= v5[3])
    {
      v456 = *v893;
    }

    v457 = 80;
    v458 = 1u;
    v459 = v456;
    do
    {
      *v5 = v459 + 1;
      *v459 = v457;
      v459 = *v5;
      if (*v5 >= v5[3])
      {
        v459 = v5[2];
        *v5 = v459;
      }

      v457 = aPdbgm[v458++];
    }

    while (v458 != 7);
    sprintf_HHMMSS(v5, v892);
    v460 = *v5;
    if (*(v872 + 1176))
    {
      *v5 = v460 + 1;
      *v460 = 65;
      v461 = *v5;
      if (*v5 >= v5[3])
      {
        v461 = *v893;
      }

      *v5 = v461 + 1;
      *v461 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1177), v909, 0, 0);
      v462 = (*v5)++;
      *v462 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1178), v909, 0, 0);
      v463 = (*v5)++;
      *v463 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf_3f(v5, (*(v872 + 1180) / 10), 3);
      v464 = (*v5)++;
      *v464 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1184), v909, 0, 0);
      v465 = (*v5)++;
      *v465 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v466 = *(v872 + 1192) * 10.0;
      v467 = -0.5;
      if (v466 > 0.0)
      {
        v467 = 0.5;
      }

      v468 = v466 + v467;
      if (v468 <= 2147483650.0)
      {
        if (v468 >= -2147483650.0)
        {
          v469 = v468;
        }

        else
        {
          v469 = 0x80000000;
        }
      }

      else
      {
        v469 = 0x7FFFFFFFLL;
      }

      sprintf_2f(v5, v469);
      v472 = (*v5)++;
      *v472 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v473 = *(v872 + 1200) * 10.0;
      v474 = -0.5;
      if (v473 > 0.0)
      {
        v474 = 0.5;
      }

      v475 = v473 + v474;
      if (v475 <= 2147483650.0)
      {
        if (v475 >= -2147483650.0)
        {
          v476 = v475;
        }

        else
        {
          v476 = 0x80000000;
        }
      }

      else
      {
        v476 = 0x7FFFFFFFLL;
      }

      sprintf_2f(v5, v476);
      v477 = (*v5)++;
      *v477 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v478 = *(v872 + 1208) * 10.0;
      v479 = -0.5;
      if (v478 > 0.0)
      {
        v479 = 0.5;
      }

      v480 = v478 + v479;
      if (v480 <= 2147483650.0)
      {
        if (v480 >= -2147483650.0)
        {
          v481 = v480;
        }

        else
        {
          v481 = 0x80000000;
        }
      }

      else
      {
        v481 = 0x7FFFFFFFLL;
      }

      sprintf_2f(v5, v481);
      v482 = (*v5)++;
      *v482 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1216), v909, 0, 0);
      v483 = (*v5)++;
      *v483 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1218), v909, 0, 0);
      v484 = (*v5)++;
      *v484 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1220), v909, 0, 0);
      v485 = (*v5)++;
      *v485 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1221), v909, 0, 0);
      v486 = (*v5)++;
      *v486 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1222), v909, 0, 0);
      v487 = (*v5)++;
      *v487 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1223), v909, 0, 0);
      v488 = (*v5)++;
      *v488 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1224), v909, 0, 0);
      v489 = (*v5)++;
      *v489 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1225), v909, 0, 0);
    }

    else
    {
      v470 = 78;
      v471 = 1u;
      do
      {
        *v5 = v460 + 1;
        *v460 = v470;
        v460 = *v5;
        if (*v5 >= v5[3])
        {
          v460 = v5[2];
          *v5 = v460;
        }

        v470 = aN_6[v471++];
      }

      while (v471 != 15);
    }

    NMEA_Add_checksum(v5, v456);
    if (*(v872 + 1232) == 1)
    {
      NMEA_Encode_PDBGO(v5, 1, v892, v872);
    }

    if (*(v872 + 1288) == 1)
    {
      NMEA_Encode_PDBGO(v5, 5, v892, v872);
    }

    if (*(v872 + 1344) == 1)
    {
      NMEA_Encode_PDBGO(v5, 2, v892, v872);
    }

    if (*(v872 + 1400) == 1)
    {
      NMEA_Encode_PDBGO(v5, 3, v892, v872);
    }

    if (*(v872 + 1456) == 1)
    {
      NMEA_Encode_PDBGO(v5, 4, v892, v872);
    }

    if (*(v872 + 1512) == 1)
    {
      NMEA_Encode_PDBGO(v5, 6, v892, v872);
    }

    if (*(v872 + 1568) == 1)
    {
      NMEA_Encode_PDBGO(v5, 7, v892, v872);
    }

    v490 = (*v5)++;
    *v490 = 36;
    v491 = *v5;
    if (*v5 >= v5[3])
    {
      v491 = *v893;
    }

    v492 = 80;
    v493 = 1u;
    v494 = v491;
    do
    {
      *v5 = v494 + 1;
      *v494 = v492;
      v494 = *v5;
      if (*v5 >= v5[3])
      {
        v494 = v5[2];
        *v5 = v494;
      }

      v492 = aPdbgp[v493++];
    }

    while (v493 != 7);
    sprintf_HHMMSS(v5, v892);
    v495 = *v5;
    if (*(v872 + 1624))
    {
      *v5 = v495 + 1;
      *v495 = 65;
      v496 = *v5;
      if (*v5 >= v5[3])
      {
        v496 = *v893;
      }

      *v5 = v496 + 1;
      *v496 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1625), v909, 0, 0);
      v497 = (*v5)++;
      *v497 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1627), v909, 0, 0);
      v498 = (*v5)++;
      *v498 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf_3f(v5, (*(v872 + 1628) / 10), 3);
      v499 = (*v5)++;
      *v499 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1632), v909, 0, 0);
      v500 = (*v5)++;
      *v500 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1633), v909, 0, 0);
      v501 = (*v5)++;
      *v501 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1634), v909, 0, 0);
      v502 = (*v5)++;
      *v502 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v503 = *(v872 + 1640) * 10.0;
      v504 = -0.5;
      if (v503 > 0.0)
      {
        v504 = 0.5;
      }

      v505 = v503 + v504;
      if (v505 <= 2147483650.0)
      {
        if (v505 >= -2147483650.0)
        {
          v506 = v505;
        }

        else
        {
          v506 = 0x80000000;
        }
      }

      else
      {
        v506 = 0x7FFFFFFFLL;
      }

      sprintf_2f(v5, v506);
      v509 = (*v5)++;
      *v509 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v510 = *(v872 + 1648) * 10.0;
      v511 = -0.5;
      if (v510 > 0.0)
      {
        v511 = 0.5;
      }

      v512 = v510 + v511;
      if (v512 <= 2147483650.0)
      {
        if (v512 >= -2147483650.0)
        {
          v513 = v512;
        }

        else
        {
          v513 = 0x80000000;
        }
      }

      else
      {
        v513 = 0x7FFFFFFFLL;
      }

      sprintf_2f(v5, v513);
      v514 = (*v5)++;
      *v514 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v515 = *(v872 + 1656) * 10.0;
      v516 = -0.5;
      if (v515 > 0.0)
      {
        v516 = 0.5;
      }

      v517 = v515 + v516;
      if (v517 <= 2147483650.0)
      {
        if (v517 >= -2147483650.0)
        {
          v518 = v517;
        }

        else
        {
          v518 = 0x80000000;
        }
      }

      else
      {
        v518 = 0x7FFFFFFFLL;
      }

      sprintf_2f(v5, v518);
      v519 = (*v5)++;
      *v519 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v520 = *(v872 + 1664);
      if (v520 >= 0)
      {
        v521 = v520;
      }

      else
      {
        v521 = -v520;
      }

      sprintf1da(v5, v521, v909, 0, v520 >> 31);
      v522 = (*v5)++;
      *v522 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v523 = *(v872 + 1668);
      if (v523 >= 0)
      {
        v524 = v523;
      }

      else
      {
        v524 = -v523;
      }

      sprintf1da(v5, v524, v909, 0, v523 >> 31);
      v525 = (*v5)++;
      *v525 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1672), v909, 0, 0);
      v526 = (*v5)++;
      *v526 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1674), v909, 0, 0);
      v527 = (*v5)++;
      *v527 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1626), v909, 0, 0);
    }

    else
    {
      v507 = 78;
      v508 = 1u;
      do
      {
        *v5 = v495 + 1;
        *v495 = v507;
        v495 = *v5;
        if (*v5 >= v5[3])
        {
          v495 = v5[2];
          *v5 = v495;
        }

        v507 = aN_6[v508++];
      }

      while (v508 != 15);
    }

    NMEA_Add_checksum(v5, v491);
    v528 = (*v5)++;
    *v528 = 36;
    v529 = *v5;
    if (*v5 >= v5[3])
    {
      v529 = *v893;
    }

    v530 = 80;
    v531 = 1u;
    v532 = v529;
    v533 = v892;
    do
    {
      *v5 = v532 + 1;
      *v532 = v530;
      v532 = *v5;
      if (*v5 >= v5[3])
      {
        v532 = v5[2];
        *v5 = v532;
      }

      v530 = aPdbgs[v531++];
    }

    while (v531 != 7);
    sprintf_HHMMSS(v5, v892);
    v534 = *v5;
    if (*(v872 + 1676))
    {
      *v5 = v534 + 1;
      *v534 = 65;
      v535 = *v5;
      if (*v5 >= v5[3])
      {
        v535 = *v893;
      }

      *v5 = v535 + 1;
      *v535 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1677), v909, 0, 0);
      v536 = (*v5)++;
      *v536 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1678), v909, 0, 0);
      v537 = (*v5)++;
      *v537 = 44;
      v533 = v892;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1679), v909, 0, 0);
    }

    else
    {
      v538 = 0;
      v539 = 78;
      do
      {
        *v5 = v534 + 1;
        *v534 = v539;
        v534 = *v5;
        if (*v5 >= v5[3])
        {
          v534 = v5[2];
          *v5 = v534;
        }

        v539 = aN_7[++v538];
      }

      while (v538 != 4);
    }

    NMEA_Add_checksum(v5, v529);
    v540 = (*v5)++;
    *v540 = 36;
    v541 = *v5;
    if (*v5 >= v5[3])
    {
      v541 = *v893;
    }

    v542 = 80;
    v543 = 1u;
    v544 = v541;
    do
    {
      *v5 = v544 + 1;
      *v544 = v542;
      v544 = *v5;
      if (*v5 >= v5[3])
      {
        v544 = v5[2];
        *v5 = v544;
      }

      v542 = aPdbgf[v543++];
    }

    while (v543 != 7);
    sprintf_HHMMSS(v5, v533);
    v545 = *v5;
    if (*(v872 + 1680))
    {
      *v5 = v545 + 1;
      *v545 = 65;
      v546 = *v5;
      if (*v5 >= v5[3])
      {
        v546 = *v893;
      }

      *v5 = v546 + 1;
      *v546 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1681), v909, 0, 0);
      v547 = (*v5)++;
      *v547 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1682), v909, 0, 0);
      v548 = (*v5)++;
      *v548 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v549 = *(v872 + 1684);
      if (v549 >= 0)
      {
        v550 = v549;
      }

      else
      {
        v550 = -v549;
      }

      sprintf1da(v5, v550, v909, 0, v549 >> 31);
      v551 = (*v5)++;
      *v551 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v552 = *(v872 + 1688) * 100.0;
      v553 = -0.5;
      if (v552 > 0.0)
      {
        v553 = 0.5;
      }

      v554 = v552 + v553;
      v533 = v892;
      if (v554 <= 2147483650.0)
      {
        if (v554 >= -2147483650.0)
        {
          v555 = v554;
        }

        else
        {
          v555 = 0x80000000;
        }
      }

      else
      {
        v555 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v555, 3);
      v558 = (*v5)++;
      *v558 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v559 = *(v872 + 1696) * 100.0;
      v560 = -0.5;
      if (v559 > 0.0)
      {
        v560 = 0.5;
      }

      v561 = v559 + v560;
      if (v561 <= 2147483650.0)
      {
        if (v561 >= -2147483650.0)
        {
          v562 = v561;
        }

        else
        {
          v562 = 0x80000000;
        }
      }

      else
      {
        v562 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v562, 3);
    }

    else
    {
      v556 = 78;
      v557 = 1u;
      do
      {
        *v5 = v545 + 1;
        *v545 = v556;
        v545 = *v5;
        if (*v5 >= v5[3])
        {
          v545 = v5[2];
          *v5 = v545;
        }

        v556 = aN_5[v557++];
      }

      while (v557 != 7);
    }

    NMEA_Add_checksum(v5, v541);
    v563 = (*v5)++;
    *v563 = 36;
    v564 = *v5;
    if (*v5 >= v5[3])
    {
      v564 = *v893;
    }

    v565 = 80;
    v566 = 1u;
    v567 = v564;
    do
    {
      *v5 = v567 + 1;
      *v567 = v565;
      v567 = *v5;
      if (*v5 >= v5[3])
      {
        v567 = v5[2];
        *v5 = v567;
      }

      v565 = aPdbgt[v566++];
    }

    while (v566 != 7);
    sprintf_HHMMSS(v5, v533);
    sprintf_1u(v5, *(v872 + 1776));
    v568 = (*v5)++;
    *v568 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_1u(v5, *(v872 + 1780));
    v569 = (*v5)++;
    *v569 = 44;
    v570 = *v5;
    if (*v5 >= v5[3])
    {
      v570 = v5[2];
      *v5 = v570;
    }

    if (*(v872 + 1792))
    {
      v571 = *(v872 + 1794);
      if (v571 >= 0)
      {
        v572 = v571;
      }

      else
      {
        v572 = -v571;
      }

      sprintf1da(v5, v572, v909, 0, (v571 >> 15) & 1);
      v573 = (*v5)++;
      *v573 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v574 = *(v872 + 1800) * 1000.0;
      v575 = -0.5;
      if (v574 > 0.0)
      {
        v575 = 0.5;
      }

      v576 = v574 + v575;
      if (v576 <= 2147483650.0)
      {
        if (v576 >= -2147483650.0)
        {
          v577 = v576;
        }

        else
        {
          v577 = 0x80000000;
        }
      }

      else
      {
        v577 = 0x7FFFFFFFLL;
      }

      sprintf_4f(v5, v577, 4);
      v580 = (*v5)++;
      *v580 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v581 = *(v872 + 1808) * 1000.0;
      v582 = -0.5;
      if (v581 > 0.0)
      {
        v582 = 0.5;
      }

      v583 = v581 + v582;
      if (v583 <= 2147483650.0)
      {
        if (v583 >= -2147483650.0)
        {
          v584 = v583;
        }

        else
        {
          v584 = 0x80000000;
        }
      }

      else
      {
        v584 = 0x7FFFFFFFLL;
      }

      sprintf_4f(v5, v584, 4);
      v585 = (*v5)++;
      *v585 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf_1u(v5, *(v872 + 1816));
      v586 = (*v5)++;
      *v586 = 44;
      v570 = *v5;
      if (*v5 >= v5[3])
      {
        v570 = v5[2];
        *v5 = v570;
      }
    }

    else
    {
      v578 = 0;
      v579 = 44;
      do
      {
        *v5 = v570 + 1;
        *v570 = v579;
        v570 = *v5;
        if (*v5 >= v5[3])
        {
          v570 = v5[2];
          *v5 = v570;
        }

        v579 = asc_29906A308[++v578];
      }

      while (v578 != 4);
    }

    if (*(v872 + 1820))
    {
      v587 = *(v872 + 1824);
      if (v587 >= 0)
      {
        v588 = v587;
      }

      else
      {
        v588 = -v587;
      }

      sprintf1da(v5, v588, v909, 0, v587 >> 31);
      v589 = (*v5)++;
      *v589 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf_1u(v5, *(v872 + 1828));
      v590 = (*v5)++;
      *v590 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }
    }

    else
    {
      v591 = 0;
      v592 = 44;
      do
      {
        *v5 = v570 + 1;
        *v570 = v592;
        v570 = *v5;
        if (*v5 >= v5[3])
        {
          v570 = v5[2];
          *v5 = v570;
        }

        v592 = asc_29906A3BE[++v591];
      }

      while (v591 != 2);
    }

    sprintf1da(v5, *(v872 + 1832), v909, 0, 0);
    v593 = (*v5)++;
    *v593 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 1833), v909, 0, 0);
    v594 = (*v5)++;
    *v594 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v595 = *(v872 + 1840) * 1000.0;
    v596 = -0.5;
    if (v595 > 0.0)
    {
      v596 = 0.5;
    }

    v597 = v595 + v596;
    if (v597 <= 2147483650.0)
    {
      if (v597 >= -2147483650.0)
      {
        v598 = v597;
      }

      else
      {
        v598 = 0x80000000;
      }
    }

    else
    {
      v598 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v598, 4);
    v599 = (*v5)++;
    *v599 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v600 = *(v872 + 1848);
    if (v600 >= 0)
    {
      v601 = v600;
    }

    else
    {
      v601 = -v600;
    }

    sprintf1da(v5, v601, v909, 0, (v600 >> 15) & 1);
    v602 = (*v5)++;
    *v602 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 1850), v909, 0, 0);
    v603 = (*v5)++;
    *v603 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v604 = *(v872 + 1856) * 1000.0;
    v605 = -0.5;
    if (v604 > 0.0)
    {
      v605 = 0.5;
    }

    v606 = v604 + v605;
    if (v606 <= 2147483650.0)
    {
      if (v606 >= -2147483650.0)
      {
        v607 = v606;
      }

      else
      {
        v607 = 0x80000000;
      }
    }

    else
    {
      v607 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v607, 4);
    v608 = (*v5)++;
    *v608 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v609 = *(v872 + 1864);
    if (v609 >= 0)
    {
      v610 = v609;
    }

    else
    {
      v610 = -v609;
    }

    sprintf1da(v5, v610, v909, 0, (v609 >> 15) & 1);
    v611 = (*v5)++;
    *v611 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v612 = *(v872 + 1866);
    if (v612 >= 0)
    {
      v613 = v612;
    }

    else
    {
      v613 = -v612;
    }

    sprintf1da(v5, v613, v909, 0, (v612 >> 15) & 1);
    v614 = (*v5)++;
    *v614 = 44;
    v615 = *v5;
    v616 = v892;
    if (*v5 >= v5[3])
    {
      v615 = v5[2];
      *v5 = v615;
    }

    if (*(v872 + 1868))
    {
      v617 = *(v872 + 1869);
      if (v617 >= 0)
      {
        v618 = v617;
      }

      else
      {
        v618 = -v617;
      }

      sprintf1da(v5, v618, v909, 0, (v617 >> 7) & 1);
      v619 = (*v5)++;
      *v619 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v620 = *(v872 + 1870);
      if (v620 >= 0)
      {
        v621 = v620;
      }

      else
      {
        v621 = -v620;
      }

      sprintf1da(v5, v621, v909, 0, (v620 >> 7) & 1);
      v622 = (*v5)++;
      *v622 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v623 = *(v872 + 1872);
      if (v623 >= 0)
      {
        v624 = v623;
      }

      else
      {
        v624 = -v623;
      }

      sprintf1da(v5, v624, v909, 0, (v623 >> 15) & 1);
      v625 = (*v5)++;
      *v625 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v626 = *(v872 + 1874);
      if (v626 >= 0)
      {
        v627 = v626;
      }

      else
      {
        v627 = -v626;
      }

      sprintf1da(v5, v627, v909, 0, (v626 >> 7) & 1);
      v628 = (*v5)++;
      *v628 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v629 = *(v872 + 1875);
      if (v629 >= 0)
      {
        v630 = v629;
      }

      else
      {
        v630 = -v629;
      }

      sprintf1da(v5, v630, v909, 0, (v629 >> 7) & 1);
      v631 = (*v5)++;
      *v631 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v632 = *(v872 + 1876);
      if (v632 >= 0)
      {
        v633 = v632;
      }

      else
      {
        v633 = -v632;
      }

      sprintf1da(v5, v633, v909, 0, (v632 >> 15) & 1);
      v634 = (*v5)++;
      *v634 = 44;
      v615 = *v5;
      v616 = v892;
      if (*v5 >= v5[3])
      {
        v615 = v5[2];
        *v5 = v615;
      }
    }

    else
    {
      v635 = 44;
      v636 = 1u;
      do
      {
        *v5 = v615 + 1;
        *v615 = v635;
        v615 = *v5;
        if (*v5 >= v5[3])
        {
          v615 = v5[2];
          *v5 = v615;
        }

        v635 = asc_29906A416[v636++];
      }

      while (v636 != 7);
    }

    v637 = *(v872 + 1880);
    if (v637)
    {
      if (v637 >= 0)
      {
        v638 = v637;
      }

      else
      {
        v638 = -v637;
      }

      sprintf1da(v5, v638, v909, 0, v637 >> 31);
      v615 = *v5;
    }

    *v5 = v615 + 1;
    *v615 = 44;
    v639 = *v5;
    if (*v5 >= v5[3])
    {
      v639 = v5[2];
      *v5 = v639;
    }

    v640 = *(v872 + 1884);
    if (v640)
    {
      if (v640 >= 0)
      {
        v641 = v640;
      }

      else
      {
        v641 = -v640;
      }

      sprintf1da(v5, v641, v909, 0, v640 >> 31);
      v639 = *v5;
    }

    *v5 = v639 + 1;
    *v639 = 44;
    v642 = *v5;
    if (*v5 >= v5[3])
    {
      v642 = v5[2];
      *v5 = v642;
    }

    v643 = *(v872 + 1888);
    if (v643)
    {
      if (v643 >= 0)
      {
        v644 = v643;
      }

      else
      {
        v644 = -v643;
      }

      sprintf1da(v5, v644, v909, 0, v643 >> 31);
      v642 = *v5;
    }

    *v5 = v642 + 1;
    *v642 = 44;
    v645 = *v5;
    if (*v5 >= v5[3])
    {
      v645 = v5[2];
      *v5 = v645;
    }

    v646 = *(v872 + 1892);
    if (v646)
    {
      if (v646 >= 0)
      {
        v647 = v646;
      }

      else
      {
        v647 = -v646;
      }

      sprintf1da(v5, v647, v909, 0, v646 >> 31);
      v645 = *v5;
    }

    *v5 = v645 + 1;
    *v645 = 44;
    v648 = *v5;
    if (*v5 >= v5[3])
    {
      v648 = v5[2];
      *v5 = v648;
    }

    v649 = *(v872 + 1896);
    if (v649)
    {
      if (v649 >= 0)
      {
        v650 = v649;
      }

      else
      {
        v650 = -v649;
      }

      sprintf1da(v5, v650, v909, 0, v649 >> 31);
      v648 = *v5;
    }

    *v5 = v648 + 1;
    *v648 = 44;
    v651 = *v5;
    if (*v5 >= v5[3])
    {
      v651 = v5[2];
      *v5 = v651;
    }

    v652 = *(v872 + 1900);
    if (v652)
    {
      if (v652 >= 0)
      {
        v653 = v652;
      }

      else
      {
        v653 = -v652;
      }

      sprintf1da(v5, v653, v909, 0, v652 >> 31);
      v651 = *v5;
    }

    *v5 = v651 + 1;
    *v651 = 44;
    v654 = *v5;
    if (*v5 >= v5[3])
    {
      v654 = v5[2];
      *v5 = v654;
    }

    v655 = *(v872 + 1784);
    if (v655)
    {
      sprintf_1U(v5, v655);
      v654 = *v5;
    }

    *v5 = v654 + 1;
    *v654 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 1904), v909, 0, 0);
    NMEA_Add_checksum(v5, v564);
    v656 = (*v5)++;
    *v656 = 36;
    v657 = *v5;
    if (*v5 >= v5[3])
    {
      v657 = *v893;
    }

    v658 = 80;
    v659 = 1u;
    v660 = v657;
    do
    {
      *v5 = v660 + 1;
      *v660 = v658;
      v660 = *v5;
      if (*v5 >= v5[3])
      {
        v660 = v5[2];
        *v5 = v660;
      }

      v658 = aPdbgv[v659++];
    }

    while (v659 != 7);
    sprintf_HHMMSS(v5, v616);
    v661 = *v5;
    if (*(v872 + 1704))
    {
      *v5 = v661 + 1;
      *v661 = 65;
      v662 = *v5;
      if (*v5 >= v5[3])
      {
        v662 = *v893;
      }

      *v5 = v662 + 1;
      *v662 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1705), v909, 0, 0);
      v663 = (*v5)++;
      *v663 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1706), v909, 0, 0);
      v664 = (*v5)++;
      *v664 = 44;
      v616 = v892;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v665 = *(v872 + 1712) * 100.0;
      v666 = -0.5;
      if (v665 > 0.0)
      {
        v666 = 0.5;
      }

      v667 = v665 + v666;
      if (v667 <= 2147483650.0)
      {
        if (v667 >= -2147483650.0)
        {
          v668 = v667;
        }

        else
        {
          v668 = 0x80000000;
        }
      }

      else
      {
        v668 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v668, 3);
      v671 = (*v5)++;
      *v671 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v672 = *(v872 + 1720) * 100.0;
      v673 = -0.5;
      if (v672 > 0.0)
      {
        v673 = 0.5;
      }

      v674 = v672 + v673;
      if (v674 <= 2147483650.0)
      {
        if (v674 >= -2147483650.0)
        {
          v675 = v674;
        }

        else
        {
          v675 = 0x80000000;
        }
      }

      else
      {
        v675 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v675, 3);
      v676 = (*v5)++;
      *v676 = 44;
      v661 = *v5;
      if (*v5 >= v5[3])
      {
        v661 = *v893;
      }
    }

    else
    {
      v669 = 78;
      v670 = 1u;
      do
      {
        *v5 = v661 + 1;
        *v661 = v669;
        v661 = *v5;
        if (*v5 >= v5[3])
        {
          v661 = v5[2];
          *v5 = v661;
        }

        v669 = aN_5[v670++];
      }

      while (v670 != 7);
    }

    if (*(v872 + 1728))
    {
      *v5 = v661 + 1;
      *v661 = 65;
      v677 = *v5;
      if (*v5 >= v5[3])
      {
        v677 = *v893;
      }

      *v5 = v677 + 1;
      *v677 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1729), v909, 0, 0);
      v678 = (*v5)++;
      *v678 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1730), v909, 0, 0);
      v679 = (*v5)++;
      *v679 = 44;
      v616 = v892;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v680 = *(v872 + 1736) * 100.0;
      v681 = -0.5;
      if (v680 > 0.0)
      {
        v681 = 0.5;
      }

      v682 = v680 + v681;
      if (v682 <= 2147483650.0)
      {
        if (v682 >= -2147483650.0)
        {
          v683 = v682;
        }

        else
        {
          v683 = 0x80000000;
        }
      }

      else
      {
        v683 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v683, 3);
      v686 = (*v5)++;
      *v686 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v687 = *(v872 + 1744) * 100.0;
      v688 = -0.5;
      if (v687 > 0.0)
      {
        v688 = 0.5;
      }

      v689 = v687 + v688;
      if (v689 <= 2147483650.0)
      {
        if (v689 >= -2147483650.0)
        {
          v690 = v689;
        }

        else
        {
          v690 = 0x80000000;
        }
      }

      else
      {
        v690 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v690, 3);
      v691 = (*v5)++;
      *v691 = 44;
      v661 = *v5;
      if (*v5 >= v5[3])
      {
        v661 = *v893;
      }
    }

    else
    {
      v684 = 78;
      v685 = 1u;
      do
      {
        *v5 = v661 + 1;
        *v661 = v684;
        v661 = *v5;
        if (*v5 >= v5[3])
        {
          v661 = v5[2];
          *v5 = v661;
        }

        v684 = aN_5[v685++];
      }

      while (v685 != 7);
    }

    if (*(v872 + 1752))
    {
      *v5 = v661 + 1;
      *v661 = 65;
      v692 = *v5;
      if (*v5 >= v5[3])
      {
        v692 = *v893;
      }

      *v5 = v692 + 1;
      *v692 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1753), v909, 0, 0);
      v693 = (*v5)++;
      *v693 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      sprintf1da(v5, *(v872 + 1754), v909, 0, 0);
      v694 = (*v5)++;
      *v694 = 44;
      v616 = v892;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v695 = *(v872 + 1760) * 100.0;
      v696 = -0.5;
      if (v695 > 0.0)
      {
        v696 = 0.5;
      }

      v697 = v695 + v696;
      if (v697 <= 2147483650.0)
      {
        if (v697 >= -2147483650.0)
        {
          v698 = v697;
        }

        else
        {
          v698 = 0x80000000;
        }
      }

      else
      {
        v698 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v698, 3);
      v701 = (*v5)++;
      *v701 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v702 = *(v872 + 1768) * 100.0;
      v703 = -0.5;
      if (v702 > 0.0)
      {
        v703 = 0.5;
      }

      v704 = v702 + v703;
      if (v704 <= 2147483650.0)
      {
        if (v704 >= -2147483650.0)
        {
          v705 = v704;
        }

        else
        {
          v705 = 0x80000000;
        }
      }

      else
      {
        v705 = 0x7FFFFFFFLL;
      }

      sprintf_3f(v5, v705, 3);
      v706 = (*v5)++;
      *v706 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }
    }

    else
    {
      v699 = 78;
      v700 = 1u;
      do
      {
        *v5 = v661 + 1;
        *v661 = v699;
        v661 = *v5;
        if (*v5 >= v5[3])
        {
          v661 = v5[2];
          *v5 = v661;
        }

        v699 = aN_8[v700++];
      }

      while (v700 != 6);
    }

    NMEA_Add_checksum(v5, v657);
    v707 = (*v5)++;
    *v707 = 36;
    v708 = *v5;
    if (*v5 >= v5[3])
    {
      v708 = *v893;
    }

    v709 = 80;
    v710 = 1u;
    v711 = v708;
    do
    {
      *v5 = v711 + 1;
      *v711 = v709;
      v711 = *v5;
      if (*v5 >= v5[3])
      {
        v711 = v5[2];
        *v5 = v711;
      }

      v709 = aPdbgx[v710++];
    }

    while (v710 != 7);
    sprintf_HHMMSS(v5, v616);
    v712 = *(v872 + 1912) * 100.0;
    v713 = -0.5;
    if (v712 > 0.0)
    {
      v713 = 0.5;
    }

    v714 = v712 + v713;
    if (v714 <= 2147483650.0)
    {
      if (v714 >= -2147483650.0)
      {
        v715 = v714;
      }

      else
      {
        v715 = 0x80000000;
      }
    }

    else
    {
      v715 = 0x7FFFFFFFLL;
    }

    sprintf_3f(v5, v715, 3);
    v716 = (*v5)++;
    *v716 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v717 = *(v872 + 1920) * 100.0;
    v718 = -0.5;
    if (v717 > 0.0)
    {
      v718 = 0.5;
    }

    v719 = v717 + v718;
    if (v719 <= 2147483650.0)
    {
      if (v719 >= -2147483650.0)
      {
        v720 = v719;
      }

      else
      {
        v720 = 0x80000000;
      }
    }

    else
    {
      v720 = 0x7FFFFFFFLL;
    }

    sprintf_3f(v5, v720, 3);
    v721 = (*v5)++;
    *v721 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v722 = *(v872 + 1928) * 100.0;
    v723 = -0.5;
    if (v722 > 0.0)
    {
      v723 = 0.5;
    }

    v724 = v722 + v723;
    if (v724 <= 2147483650.0)
    {
      if (v724 >= -2147483650.0)
      {
        v725 = v724;
      }

      else
      {
        v725 = 0x80000000;
      }
    }

    else
    {
      v725 = 0x7FFFFFFFLL;
    }

    sprintf_3f(v5, v725, 3);
    v726 = (*v5)++;
    *v726 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v727 = *(v872 + 1936) * 100.0;
    v728 = -0.5;
    if (v727 > 0.0)
    {
      v728 = 0.5;
    }

    v729 = v727 + v728;
    if (v729 <= 2147483650.0)
    {
      if (v729 >= -2147483650.0)
      {
        v730 = v729;
      }

      else
      {
        v730 = 0x80000000;
      }
    }

    else
    {
      v730 = 0x7FFFFFFFLL;
    }

    sprintf_3f(v5, v730, 3);
    v731 = (*v5)++;
    *v731 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v732 = *(v872 + 1944) * 1000.0;
    v733 = -0.5;
    if (v732 > 0.0)
    {
      v733 = 0.5;
    }

    v734 = v732 + v733;
    if (v734 <= 2147483650.0)
    {
      if (v734 >= -2147483650.0)
      {
        v735 = v734;
      }

      else
      {
        v735 = 0x80000000;
      }
    }

    else
    {
      v735 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v735, 4);
    v736 = (*v5)++;
    *v736 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v737 = *(v872 + 1952) * 1000.0;
    v738 = -0.5;
    if (v737 > 0.0)
    {
      v738 = 0.5;
    }

    v739 = v737 + v738;
    if (v739 <= 2147483650.0)
    {
      if (v739 >= -2147483650.0)
      {
        v740 = v739;
      }

      else
      {
        v740 = 0x80000000;
      }
    }

    else
    {
      v740 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v740, 4);
    v741 = (*v5)++;
    *v741 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v742 = *(v872 + 1960) * 1000.0;
    v743 = -0.5;
    if (v742 > 0.0)
    {
      v743 = 0.5;
    }

    v744 = v742 + v743;
    if (v744 <= 2147483650.0)
    {
      if (v744 >= -2147483650.0)
      {
        v745 = v744;
      }

      else
      {
        v745 = 0x80000000;
      }
    }

    else
    {
      v745 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v745, 4);
    v746 = (*v5)++;
    *v746 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v747 = *(v872 + 1968) * 1000.0;
    v748 = -0.5;
    if (v747 > 0.0)
    {
      v748 = 0.5;
    }

    v749 = v747 + v748;
    if (v749 <= 2147483650.0)
    {
      if (v749 >= -2147483650.0)
      {
        v750 = v749;
      }

      else
      {
        v750 = 0x80000000;
      }
    }

    else
    {
      v750 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v750, 4);
    v751 = (*v5)++;
    *v751 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v752 = *(v872 + 1976) * 1000.0;
    v753 = -0.5;
    if (v752 > 0.0)
    {
      v753 = 0.5;
    }

    v754 = v752 + v753;
    if (v754 <= 2147483650.0)
    {
      if (v754 >= -2147483650.0)
      {
        v755 = v754;
      }

      else
      {
        v755 = 0x80000000;
      }
    }

    else
    {
      v755 = 0x7FFFFFFFLL;
    }

    sprintf_4f(v5, v755, 4);
    v756 = (*v5)++;
    *v756 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v757 = *(v872 + 1984) * 10.0;
    v758 = -0.5;
    if (v757 > 0.0)
    {
      v758 = 0.5;
    }

    v759 = v757 + v758;
    if (v759 <= 2147483650.0)
    {
      if (v759 >= -2147483650.0)
      {
        v760 = v759;
      }

      else
      {
        v760 = 0x80000000;
      }
    }

    else
    {
      v760 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v760);
    v761 = (*v5)++;
    *v761 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v762 = *(v872 + 1992) * 10.0;
    v763 = -0.5;
    if (v762 > 0.0)
    {
      v763 = 0.5;
    }

    v764 = v762 + v763;
    if (v764 <= 2147483650.0)
    {
      if (v764 >= -2147483650.0)
      {
        v765 = v764;
      }

      else
      {
        v765 = 0x80000000;
      }
    }

    else
    {
      v765 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v765);
    v766 = (*v5)++;
    *v766 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v767 = *(v872 + 2000) * 10.0;
    v768 = -0.5;
    if (v767 > 0.0)
    {
      v768 = 0.5;
    }

    v769 = v767 + v768;
    if (v769 <= 2147483650.0)
    {
      if (v769 >= -2147483650.0)
      {
        v770 = v769;
      }

      else
      {
        v770 = 0x80000000;
      }
    }

    else
    {
      v770 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v770);
    v771 = (*v5)++;
    *v771 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v772 = *(v872 + 2008) * 10.0;
    v773 = -0.5;
    if (v772 > 0.0)
    {
      v773 = 0.5;
    }

    v774 = v772 + v773;
    if (v774 <= 2147483650.0)
    {
      if (v774 >= -2147483650.0)
      {
        v775 = v774;
      }

      else
      {
        v775 = 0x80000000;
      }
    }

    else
    {
      v775 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v775);
    v776 = (*v5)++;
    *v776 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v777 = *(v872 + 2016) * 10.0;
    v778 = -0.5;
    if (v777 > 0.0)
    {
      v778 = 0.5;
    }

    v779 = v777 + v778;
    if (v779 <= 2147483650.0)
    {
      if (v779 >= -2147483650.0)
      {
        v780 = v779;
      }

      else
      {
        v780 = 0x80000000;
      }
    }

    else
    {
      v780 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v780);
    v781 = (*v5)++;
    *v781 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v782 = *(v872 + 2024) * 10.0;
    v783 = -0.5;
    if (v782 > 0.0)
    {
      v783 = 0.5;
    }

    v784 = v782 + v783;
    if (v784 <= 2147483650.0)
    {
      if (v784 >= -2147483650.0)
      {
        v785 = v784;
      }

      else
      {
        v785 = 0x80000000;
      }
    }

    else
    {
      v785 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v785);
    v786 = (*v5)++;
    *v786 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v787 = *(v872 + 2032) * 10.0;
    v788 = -0.5;
    if (v787 > 0.0)
    {
      v788 = 0.5;
    }

    v789 = v787 + v788;
    if (v789 <= 2147483650.0)
    {
      if (v789 >= -2147483650.0)
      {
        v790 = v789;
      }

      else
      {
        v790 = 0x80000000;
      }
    }

    else
    {
      v790 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v790);
    v791 = (*v5)++;
    *v791 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 2040), v909, 0, 0);
    v792 = (*v5)++;
    *v792 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v793 = *(v872 + 2048) * 10.0;
    v794 = -0.5;
    if (v793 > 0.0)
    {
      v794 = 0.5;
    }

    v795 = v793 + v794;
    if (v795 <= 2147483650.0)
    {
      if (v795 >= -2147483650.0)
      {
        v796 = v795;
      }

      else
      {
        v796 = 0x80000000;
      }
    }

    else
    {
      v796 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v796);
    v797 = (*v5)++;
    *v797 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v798 = *(v872 + 2056) * 10.0;
    v799 = -0.5;
    if (v798 > 0.0)
    {
      v799 = 0.5;
    }

    v800 = v798 + v799;
    if (v800 <= 2147483650.0)
    {
      if (v800 >= -2147483650.0)
      {
        v801 = v800;
      }

      else
      {
        v801 = 0x80000000;
      }
    }

    else
    {
      v801 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v801);
    v802 = (*v5)++;
    *v802 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v803 = *(v872 + 2064) * 10.0;
    v804 = -0.5;
    if (v803 > 0.0)
    {
      v804 = 0.5;
    }

    v805 = v803 + v804;
    if (v805 <= 2147483650.0)
    {
      if (v805 >= -2147483650.0)
      {
        v806 = v805;
      }

      else
      {
        v806 = 0x80000000;
      }
    }

    else
    {
      v806 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v806);
    v807 = (*v5)++;
    *v807 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v808 = *(v872 + 2072) * 10.0;
    v809 = -0.5;
    if (v808 > 0.0)
    {
      v809 = 0.5;
    }

    v810 = v808 + v809;
    if (v810 <= 2147483650.0)
    {
      if (v810 >= -2147483650.0)
      {
        v811 = v810;
      }

      else
      {
        v811 = 0x80000000;
      }
    }

    else
    {
      v811 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v811);
    v812 = (*v5)++;
    *v812 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v813 = *(v892 + 56) * 1000000000.0 * 10.0;
    v814 = -0.5;
    if (v813 > 0.0)
    {
      v814 = 0.5;
    }

    v815 = v813 + v814;
    if (v815 <= 2147483650.0)
    {
      if (v815 >= -2147483650.0)
      {
        v816 = v815;
      }

      else
      {
        v816 = 0x80000000;
      }
    }

    else
    {
      v816 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v816);
    v817 = (*v5)++;
    *v817 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 168) * 1000000000.0);
    v818 = (*v5)++;
    *v818 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v819 = *(v892 + 64) * 1000000000.0 * 10.0;
    v820 = -0.5;
    if (v819 > 0.0)
    {
      v820 = 0.5;
    }

    v821 = v819 + v820;
    if (v821 <= 2147483650.0)
    {
      if (v821 >= -2147483650.0)
      {
        v822 = v821;
      }

      else
      {
        v822 = 0x80000000;
      }
    }

    else
    {
      v822 = 0x7FFFFFFFLL;
    }

    sprintf_2f(v5, v822);
    v823 = (*v5)++;
    *v823 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_AccEst(v5, *(v892 + 176) * 1000000000.0);
    NMEA_Add_checksum(v5, v708);
    v824 = (*v5)++;
    *v824 = 36;
    v825 = *v5;
    if (*v5 >= v5[3])
    {
      v825 = *v893;
    }

    v826 = 80;
    v827 = 1u;
    v828 = v825;
    do
    {
      *v5 = v828 + 1;
      *v828 = v826;
      v828 = *v5;
      if (*v5 >= v5[3])
      {
        v828 = v5[2];
        *v5 = v828;
      }

      v826 = aPdbgy[v827++];
    }

    while (v827 != 7);
    sprintf_HHMMSS(v5, v892);
    v829 = *(v872 + 2082);
    v830 = *v5;
    if (v829)
    {
      v831 = (v872 + 2083);
      do
      {
        *v5 = v830 + 1;
        *v830 = v829;
        v830 = *v5;
        if (*v5 >= v5[3])
        {
          v830 = v5[2];
          *v5 = v830;
        }

        v832 = *v831++;
        v829 = v832;
      }

      while (v832);
    }

    *v5 = v830 + 1;
    *v830 = 58;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_04x(v5, *(v872 + 2086));
    v833 = (*v5)++;
    *v833 = 45;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_08x(v5, *(v872 + 2088));
    v834 = (*v5)++;
    *v834 = 45;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 2089), v909, 0, 0);
    v835 = (*v5)++;
    *v835 = 46;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_02d(v5, *(v872 + 2090));
    v836 = (*v5)++;
    *v836 = 46;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 2091), v909, 0, 0);
    v837 = (*v5)++;
    *v837 = 46;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 2092), v909, 0, 0);
    v838 = (*v5)++;
    *v838 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 2094), v909, 0, 0);
    v839 = (*v5)++;
    *v839 = 46;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf_2d(v5, *(v872 + 2096));
    v840 = (*v5)++;
    *v840 = 46;
    v841 = *v5;
    if (*v5 >= v5[3])
    {
      v841 = *v893;
    }

    v842 = *(v872 + 2097);
    *v5 = v841 + 1;
    *v841 = v842;
    v843 = *v5;
    if (*v5 >= v5[3])
    {
      v843 = *v893;
    }

    *v5 = v843 + 1;
    *v843 = 46;
    v844 = *v5;
    if (*v5 >= v5[3])
    {
      v844 = v5[2];
      *v5 = v844;
    }

    v845 = *(v872 + 2098);
    if (v845)
    {
      v846 = (v872 + 2099);
      do
      {
        *v5 = v844 + 1;
        *v844 = v845;
        v844 = *v5;
        if (*v5 >= v5[3])
        {
          v844 = v5[2];
          *v5 = v844;
        }

        v847 = *v846++;
        v845 = v847;
      }

      while (v847);
    }

    *v5 = v844 + 1;
    *v844 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v848 = *(v872 + 2108);
    if (v848 >= 0)
    {
      v849 = v848;
    }

    else
    {
      v849 = -v848;
    }

    sprintf1da(v5, v849, v909, 0, v848 >> 31);
    v850 = (*v5)++;
    *v850 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v851 = *(v872 + 2112);
    if (v851 >= 0)
    {
      v852 = v851;
    }

    else
    {
      v852 = -v851;
    }

    sprintf1da(v5, v852, v909, 0, v851 >> 31);
    v853 = (*v5)++;
    *v853 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 2116), v909, 0, 0);
    v854 = (*v5)++;
    *v854 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 2117), v909, 0, 0);
    v855 = (*v5)++;
    *v855 = 44;
    v856 = *v5;
    if (*v5 >= v5[3])
    {
      v856 = *v893;
    }

    v857 = 0;
    v858 = 48;
    do
    {
      *v5 = v856 + 1;
      *v856 = v858;
      v856 = *v5;
      if (*v5 >= v5[3])
      {
        v856 = v5[2];
        *v5 = v856;
      }

      v858 = a0x_0[++v857];
    }

    while (v857 != 2);
    sprintf_1X(v5, *(v872 + 2118));
    v859 = (*v5)++;
    *v859 = 44;
    v860 = *v5;
    if (*v5 >= v5[3])
    {
      v860 = *v893;
    }

    v861 = 0;
    v862 = 48;
    do
    {
      *v5 = v860 + 1;
      *v860 = v862;
      v860 = *v5;
      if (*v5 >= v5[3])
      {
        v860 = v5[2];
        *v5 = v860;
      }

      v862 = a0x_0[++v861];
    }

    while (v861 != 2);
    sprintf_1X(v5, *(v872 + 2119));
    v863 = (*v5)++;
    *v863 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    sprintf1da(v5, *(v872 + 2120), v909, 0, 0);
    v864 = (*v5)++;
    *v864 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    nzet(v5, 0xAu, v909, 0, 0, 0);
    v865 = (*v5)++;
    *v865 = 44;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    v866 = *(v872 + 2128) - *(v872 + 2124);
    if (v866 >= 0)
    {
      v867 = v866;
    }

    else
    {
      v867 = (*(v872 + 2124) - *(v872 + 2128));
    }

    sprintf1da(v5, v867, v909, 0, v866 >> 31);
    for (k = 0; k != 36; k += 4)
    {
      v869 = (*v5)++;
      *v869 = 44;
      if (*v5 >= v5[3])
      {
        *v5 = v5[2];
      }

      v870 = *(v872 + 2132 + k) - *(v872 + 2124);
      if (v870 >= 0)
      {
        v871 = v870;
      }

      else
      {
        v871 = (*(v872 + 2124) - *(v872 + 2132 + k));
      }

      sprintf1da(v5, v871, v909, 0, v870 >> 31);
    }

    return NMEA_Add_checksum(v5, v825);
  }

  return result;
}