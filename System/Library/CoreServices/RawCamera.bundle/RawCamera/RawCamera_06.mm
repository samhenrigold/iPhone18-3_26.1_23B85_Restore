void sub_23379AC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  a31 = (v37 - 152);
  sub_233735AD4(&a31);
  _Unwind_Resume(a1);
}

id sub_23379AD50(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    sub_233731FB8(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v9 = *(a4 + 16);
  }

  v6 = sub_23379A7EC(a1, a2, 0, __p, 0);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_23379ADE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_23379AE04(uint64_t a1, void *a2, uint64_t a3)
{
  v37[3] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if (a3 <= 1717856626)
    {
      if (a3 != 1278226488)
      {
        v8 = 25968;
        goto LABEL_9;
      }

      v6 = MEMORY[0x277CBF988];
      v7 = 1;
    }

    else
    {
      v6 = MEMORY[0x277CBF998];
      v7 = 2;
      if (a3 != 1751411059 && a3 != 1751410032)
      {
        v8 = 26995;
LABEL_9:
        if (a3 != (v8 | 0x66640000))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](exception, "RawCameraException");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v6 = MEMORY[0x277CBF990];
        v7 = 4;
      }
    }

    v10 = *v6;
    [v4 extent];
    v12 = v11;
    [v5 extent];
    v13 = rint(floor(v12));
    v15 = rint(floor(v14));
    v16 = v13 * v7;
    v17 = [MEMORY[0x277CBEB28] dataWithLength:v15 * v13 * v7];
    v18 = [MEMORY[0x277CBF740] context];
    v19 = [v17 mutableBytes];
    [v5 extent];
    [v18 render:v5 toBitmap:v19 rowBytes:v16 bounds:v10 format:0 colorSpace:?];

    v20 = [v5 properties];
    v21 = [v20 objectForKeyedSubscript:@"_XMP"];

    if (v21)
    {
      v22 = CGImageMetadataCreateFromXMPData(v21);
    }

    else
    {
      v22 = 0;
    }

    v23 = *MEMORY[0x277CD2C60];
    v37[0] = v17;
    v24 = *MEMORY[0x277CD2C68];
    v36[0] = v23;
    v36[1] = v24;
    v34[0] = @"BytesPerRow";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v16];
    v35[0] = v25;
    v34[1] = @"Height";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
    v35[1] = v26;
    v34[2] = @"PixelFormat";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
    v35[2] = v27;
    v34[3] = @"Width";
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v13];
    v35[3] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v30 = v29;
    v36[2] = *MEMORY[0x277CD2C70];
    if (v22)
    {
      v31 = v22;
    }

    else
    {
      v31 = MEMORY[0x277CBEC10];
    }

    v37[1] = v29;
    v37[2] = v31;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

    goto LABEL_19;
  }

  v9 = 0;
LABEL_19:

  return v9;
}

id sub_23379B21C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isEqualToString:*MEMORY[0x277CD2C88]];
  v5 = [v3 isEqualToString:*MEMORY[0x277CD2C90]];
  v6 = [v3 isEqualToString:*MEMORY[0x277CD2CA8]];
  v7 = [v3 isEqualToString:@"kCGImageAuxiliaryDataTypeHDRGainMap"];
  v8 = [v3 isEqualToString:*MEMORY[0x277CD2CB8]];
  v9 = [v3 isEqualToString:*MEMORY[0x277CD2CB0]];
  v10 = [v3 isEqualToString:*MEMORY[0x277CD2CC0]];
  v11 = [v3 isEqualToString:@"kCGImageAuxiliaryDataTypeSemanticSegmentationGlassesMatte"];
  v12 = [v3 isEqualToString:@"kCGImageAuxiliaryDataTypeSemanticSegmentationSkyMatte"];
  if (v4)
  {
    v13 = sub_2337990E0(a1, 8, 1, 51177);
    if (![v13 count])
    {
      v14 = sub_2337990E0(a1, 9, 1, 51177);

      v13 = v14;
    }

    v15 = [v13 firstObject];
    v16 = sub_23379AE04(v15, v15, 1751410032);
LABEL_65:
    v25 = v16;

    goto LABEL_66;
  }

  if (v5)
  {
    v13 = sub_2337990E0(a1, 8, 51177, 2);
    if (![v13 count])
    {
      v17 = sub_2337990E0(a1, 9, 51177, 2);

      v13 = v17;
    }

    v15 = [v13 firstObject];
    v16 = sub_23379AE04(v15, v15, 1751411059);
    goto LABEL_65;
  }

  if (v6)
  {
    sub_23372A488(v53, "portraiteffectsmatte");
    v13 = sub_23379A600(a1, 65540, 52527, v53);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if (![v13 count])
    {
      sub_23372A488(v51, "portraiteffectsmatte");
      v18 = sub_23379A600(a1, 65540, 51182, v51);

      if (v52 < 0)
      {
        operator delete(v51[0]);
      }

      v13 = v18;
    }

    v15 = [v13 firstObject];
    v16 = sub_23379AE04(v15, v15, 1278226488);
    goto LABEL_65;
  }

  if (v7)
  {
    sub_23372A488(v49, "hdrgainmap");
    v13 = sub_23379A600(a1, 65540, 52527, v49);
    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    if (![v13 count])
    {
      sub_23372A488(v47, "hdrgainmap");
      v19 = sub_23379A600(a1, 65540, 51182, v47);

      if (v48 < 0)
      {
        operator delete(v47[0]);
      }

      v13 = v19;
    }

    v15 = [v13 firstObject];
    v16 = sub_23379AE04(v15, v15, 1278226488);
    goto LABEL_65;
  }

  if (v8)
  {
    sub_23372A488(v45, "skinmatte");
    v13 = sub_23379A600(a1, 65540, 52527, v45);
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    if (![v13 count])
    {
      sub_23372A488(__p, "skinmatte");
      v20 = sub_23379A600(a1, 65540, 51182, __p);

      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = v20;
    }

    v15 = [v13 firstObject];
    v16 = sub_23379AE04(v15, v15, 1278226488);
    goto LABEL_65;
  }

  if (v9)
  {
    sub_23372A488(v41, "hairmatte");
    v13 = sub_23379A600(a1, 65540, 52527, v41);
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    if (![v13 count])
    {
      sub_23372A488(v39, "hairmatte");
      v21 = sub_23379A600(a1, 65540, 51182, v39);

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      v13 = v21;
    }

    v15 = [v13 firstObject];
    v16 = sub_23379AE04(v15, v15, 1278226488);
    goto LABEL_65;
  }

  if (v10)
  {
    sub_23372A488(v37, "teethmatte");
    v13 = sub_23379A600(a1, 65540, 52527, v37);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    if (![v13 count])
    {
      sub_23372A488(v35, "teethmatte");
      v22 = sub_23379A600(a1, 65540, 51182, v35);

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      v13 = v22;
    }

    v15 = [v13 firstObject];
    v16 = sub_23379AE04(v15, v15, 1278226488);
    goto LABEL_65;
  }

  if (v11)
  {
    sub_23372A488(v33, "glassesmatte");
    v13 = sub_23379A600(a1, 65540, 52527, v33);
    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (![v13 count])
    {
      sub_23372A488(v31, "glassesmatte");
      v23 = sub_23379A600(a1, 65540, 51182, v31);

      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      v13 = v23;
    }

    v15 = [v13 firstObject];
    v16 = sub_23379AE04(v15, v15, 1278226488);
    goto LABEL_65;
  }

  if (v12)
  {
    sub_23372A488(v29, "skymatte");
    v13 = sub_23379A600(a1, 65540, 52527, v29);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (![v13 count])
    {
      sub_23372A488(v27, "skymatte");
      v24 = sub_23379A600(a1, 65540, 51182, v27);

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      v13 = v24;
    }

    v15 = [v13 firstObject];
    v16 = sub_23379AE04(v15, v15, 1278226488);
    goto LABEL_65;
  }

  v25 = 0;
LABEL_66:

  return v25;
}

void sub_23379B980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_23379BB4C(uint64_t a1)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v37 = [MEMORY[0x277CBEB18] array];
  v36 = [MEMORY[0x277CBEB18] array];
  v63 = *MEMORY[0x277CD2C88];
  v2 = sub_23379A744(a1, 8, 1, 51177);
  v64[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  [v36 addObject:v3];

  v61 = *MEMORY[0x277CD2C90];
  v4 = sub_23379A744(a1, 8, 2, 51177);
  v62 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  [v36 addObject:v5];

  v6 = *MEMORY[0x277CD2CA8];
  v59[0] = @"portraiteffectsmatte";
  v59[1] = @"skinmatte";
  v7 = *MEMORY[0x277CD2CB8];
  v60[0] = v6;
  v60[1] = v7;
  v8 = *MEMORY[0x277CD2CB0];
  v59[2] = @"hairmatte";
  v59[3] = @"teetmatte";
  v9 = *MEMORY[0x277CD2CC0];
  v60[2] = v8;
  v60[3] = v9;
  v59[4] = @"glassesmatte";
  v59[5] = @"skymatte";
  v60[4] = @"kCGImageAuxiliaryDataTypeSemanticSegmentationGlassesMatte";
  v60[5] = @"kCGImageAuxiliaryDataTypeSemanticSegmentationSkyMatte";
  v59[6] = @"hdrgainmap";
  v60[6] = @"kCGImageAuxiliaryDataTypeHDRGainMap";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:7];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = [&unk_284954EE0 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v11)
  {
    v12 = *v51;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(&unk_284954EE0);
        }

        v14 = *(*(&v50 + 1) + 8 * i);
        v15 = v14;
        sub_23372A488(__p, [v14 UTF8String]);
        v16 = sub_23379AD50(a1, 65540, 0, __p);
        if (v49 < 0)
        {
          operator delete(__p[0]);
        }

        if (![v16 count])
        {
          v17 = v14;
          sub_23372A488(v46, [v14 UTF8String]);
          v18 = sub_23379AD50(a1, 65540, 0, v46);

          if (v47 < 0)
          {
            operator delete(v46[0]);
          }

          v16 = v18;
        }

        v56 = v14;
        v57 = v16;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        [v36 addObject:v19];
      }

      v11 = [&unk_284954EE0 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v11);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v36;
  v34 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v34)
  {
    v33 = *v43;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v42 + 1) + 8 * j);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v38 objects:v54 count:16];
        if (v22)
        {
          v23 = *v39;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v38 + 1) + 8 * k);
              v26 = [v21 objectForKeyedSubscript:v25];
              v27 = [v26 firstObject];

              if (v27)
              {
                v28 = [MEMORY[0x277CBEB38] dictionary];
                v29 = [v10 objectForKeyedSubscript:v25];
                if (v29)
                {
                  [v28 setObject:v29 forKeyedSubscript:@"AuxiliaryDataType"];
                  [v28 addEntriesFromDictionary:v27];
                  [v37 addObject:v28];
                }
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v38 objects:v54 count:16];
          }

          while (v22);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v34);
  }

  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v37];

  return v30;
}

BOOL sub_23379C1E8(uint64_t a1)
{
  v7 = 0;
  sub_233753FB4(a1, 0, __p);
  if (sub_23374C3F0(a1, __p, &v7))
  {
    v2 = v7;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return v2 == 34892 || v2 == 32803;
  }

  else
  {
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_23379C274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23379C298(_BYTE *a1)
{
  if ((*(*a1 + 72))(a1))
  {
    v2 = a1[1233];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_23379C2F0(uint64_t a1)
{
  v7 = 0;
  sub_233753FB4(a1, 0, __p);
  v2 = sub_23374C3F0(a1, __p, &v7);
  v3 = v7;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3 == 34892 && v2;
}

void sub_23379C35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_23379C388@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v6, 0, sizeof(v6));
  v4 = sub_233735E3C(a1 + 1312, (a1 + 1184));
  if (a1 + 1320 == v4)
  {
    return sub_2337339C0(a1);
  }

  result = std::string::operator=(&v6, (v4 + 56));
  *a2 = v6;
  return result;
}

void sub_23379C404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23379C420(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233753B14(a1, a2);
  sub_2337541FC(a1, 1, v7);
  v4 = v7[0];
  v5 = v7[1];
  while (v4 != v5)
  {
    sub_233753354(a1, v4, &v6);
    if (v6)
    {
      sub_233753C74(a2, &v6);
    }

    if (*(&v6 + 1))
    {
      sub_2337239E8(*(&v6 + 1));
    }

    v4 += 24;
  }

  *&v6 = v7;
  sub_233735AD4(&v6);
}

void sub_23379C4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_233723948(va);
  _Unwind_Resume(a1);
}

void sub_23379C500(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v277 = *MEMORY[0x277D85DE8];
  sub_23374FA0C(a1, a2, a3);
  v7 = *a3;
  if (*a3 > 0xC68Cu)
  {
    if (*a3 > 0xC7A5u)
    {
      if (*a3 > 0xC7ECu)
      {
        if (*a3 <= 0xCD2Du)
        {
          if (v7 != 51181)
          {
            if (v7 != 51182)
            {
              if (v7 == 52525)
              {
                sub_2338FA578();
                return;
              }

              goto LABEL_316;
            }

            if (a3[1] != 2)
            {
              return;
            }

            memset(&__str, 0, sizeof(__str));
            if (sub_23375168C(a1, a3, &__str, 0))
            {
              buf.__r_.__value_.__r.__words[0] = a2;
              v48 = sub_23375797C((a1 + 2384), a2, &unk_233905F1C, &buf, __p);
              std::string::operator=((v48 + 7), &__str);
            }

LABEL_293:
            sub_2338F8878(&__str);
            return;
          }

          if (a3[1] != 3)
          {
            return;
          }

          if (*(a3 + 1) != 1)
          {
            return;
          }

          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          if (!sub_23374AE6C(a3, &buf))
          {
            return;
          }

          data = buf.__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[0] = a2;
          v15 = sub_233757C60((a1 + 2360), a2, &unk_233905F1C, &__str, __p);
LABEL_371:
          *(v15 + 28) = data;
          return;
        }

        if (v7 == 52526)
        {
          if (a3[1] != 2)
          {
            return;
          }

          memset(&__str, 0, sizeof(__str));
          if (sub_23375168C(a1, a3, &__str, 0))
          {
            buf.__r_.__value_.__r.__words[0] = a2;
            v57 = sub_23375797C((a1 + 2408), a2, &unk_233905F1C, &buf, __p);
            std::string::operator=((v57 + 7), &__str);
          }

          goto LABEL_293;
        }

        if (v7 == 52544)
        {
          sub_2338FA4DC();
          return;
        }

        if (v7 != 52547)
        {
          goto LABEL_316;
        }

        if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] - 3 > 1)
        {
          return;
        }

        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v222, *a2, *(a2 + 8));
        }

        else
        {
          *v222 = *a2;
          v223 = *(a2 + 16);
        }

        v216 = sub_233735E3C(a1 + 512, v222);
        v217 = a1 + 520 == v216 || *(v216 + 56) || *(a3 + 1) != 1;
        if (SHIBYTE(v223) < 0)
        {
          operator delete(v222[0]);
        }

        if (v217)
        {
          return;
        }

        if (a3[1] == 4)
        {
          v215 = *(a3 + 2);
        }

        else
        {
          v215 = sub_233751308(a3);
        }

        __str.__r_.__value_.__r.__words[0] = a2;
        v220 = sub_2337575A8((a1 + 2480), a2, &unk_233905F1C, &__str, &buf);
        goto LABEL_691;
      }

      if (*a3 <= 0xC7E9u)
      {
        if (v7 != 51110)
        {
          if (v7 != 51177)
          {
            goto LABEL_316;
          }

          if (a3[1] != 3)
          {
            return;
          }

          if (*(a3 + 1) != 1)
          {
            return;
          }

          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          if (!sub_23374AE6C(a3, &buf))
          {
            return;
          }

          data = buf.__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[0] = a2;
          v15 = sub_233757C60((a1 + 2264), a2, &unk_233905F1C, &__str, __p);
          goto LABEL_371;
        }

        if (a3[1] != 4 || *(a3 + 1) != 1)
        {
          return;
        }

        if (!sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
        {
          if (*(a2 + 23) < 0)
          {
            sub_233731FB8(&v226, *a2, *(a2 + 8));
          }

          else
          {
            v226 = *a2;
            v227 = *(a2 + 16);
          }

          v221 = sub_233735E3C(a1 + 512, &v226);
          if (sub_2338FA6FC(v221, a1, &v226))
          {
            return;
          }
        }

        v215 = *(a3 + 2);
        __str.__r_.__value_.__r.__words[0] = a2;
        v220 = sub_2337575A8((a1 + 2240), a2, &unk_233905F1C, &__str, &buf);
LABEL_691:
        *(v220 + 14) = v215;
        return;
      }

      if (v7 == 51178)
      {
        if (a3[1] != 5 || *(a3 + 1) != 1)
        {
          return;
        }

        sub_2337338AC(a1, &buf);
        LODWORD(v272.f64[0]) = sub_233749410(a3);
        sub_233726A8C(__p, &v272);
        sub_233725F08(&__str, &buf, __p, 0);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        sub_2337338AC(a1, &buf);
        v62 = sub_233725614(buf.__r_.__value_.__l.__data_);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        sub_2337338AC(a1, &buf);
        v63 = sub_233725614(buf.__r_.__value_.__l.__data_);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        if (v62 != 1 || v63)
        {
          if (v62 | v63)
          {
            buf.__r_.__value_.__r.__words[0] = a2;
            *(sub_233757E18((a1 + 2288), a2, &unk_233905F1C, &buf, __p) + 7) = v62 / v63;
            goto LABEL_653;
          }

          buf.__r_.__value_.__r.__words[0] = a2;
          v64 = sub_233757E18((a1 + 2288), a2, &unk_233905F1C, &buf, __p);
          v65 = 0x7FF8000000000000;
        }

        else
        {
          buf.__r_.__value_.__r.__words[0] = a2;
          v64 = sub_233757E18((a1 + 2288), a2, &unk_233905F1C, &buf, __p);
          v65 = 0x7FF0000000000000;
        }

        v64[7] = v65;
      }

      else
      {
        if (v7 != 51179)
        {
          if (a3[1] != 3)
          {
            return;
          }

          if (*(a3 + 1) != 1)
          {
            return;
          }

          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          if (!sub_23374AE6C(a3, &buf))
          {
            return;
          }

          data = buf.__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[0] = a2;
          v15 = sub_233757C60((a1 + 2336), a2, &unk_233905F1C, &__str, __p);
          goto LABEL_371;
        }

        if (a3[1] != 5 || *(a3 + 1) != 1)
        {
          return;
        }

        sub_2337338AC(a1, &buf);
        LODWORD(v272.f64[0]) = sub_233749410(a3);
        sub_233726A8C(__p, &v272);
        sub_233725F08(&__str, &buf, __p, 0);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        sub_2337338AC(a1, &buf);
        v58 = sub_233725614(buf.__r_.__value_.__l.__data_);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        sub_2337338AC(a1, &buf);
        v59 = sub_233725614(buf.__r_.__value_.__l.__data_);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        if (v58 != 1 || v59)
        {
          if (v58 | v59)
          {
            buf.__r_.__value_.__r.__words[0] = a2;
            *(sub_233757E18((a1 + 2312), a2, &unk_233905F1C, &buf, __p) + 7) = v58 / v59;
            goto LABEL_653;
          }

          buf.__r_.__value_.__r.__words[0] = a2;
          v60 = sub_233757E18((a1 + 2312), a2, &unk_233905F1C, &buf, __p);
          v61 = 0x7FF8000000000000;
        }

        else
        {
          buf.__r_.__value_.__r.__words[0] = a2;
          v60 = sub_233757E18((a1 + 2312), a2, &unk_233905F1C, &buf, __p);
          v61 = 0x7FF0000000000000;
        }

        v60[7] = v61;
      }

LABEL_653:
      sub_233725FD4(&__str);
      return;
    }

    if (*a3 <= 0xC71Eu)
    {
      if (*a3 > 0xC6FBu)
      {
        if (v7 != 50940)
        {
          if (v7 == 50964)
          {
            if (a3[1] != 10 || !sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
            {
              return;
            }

            sub_2337338AC(a1, &__str);
            sub_23374AEDC(a3, &__str, &buf);
            if (__str.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(__str.__r_.__value_.__l.__size_);
            }

            if (*(a1 + 1234))
            {
              v11 = buf.__r_.__value_.__r.__words[0];
              v47 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
              if (3 * *(a1 + 1234) != (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3)
              {
                goto LABEL_604;
              }
            }

            else
            {
              v47 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
            }

            *(a1 + 1234) = (v47 >> 3) / 3uLL;
            sub_2337DFC24(&__str, ((v47 >> 3) / 3uLL), 3u, &buf.__r_.__value_.__l.__data_);
            __p[0] = a2;
            v191 = sub_2337A7648((a1 + 1768), a2, &unk_233905F1C, __p, &v272);
            sub_2337E004C(v191 + 7, &__str);
          }

          else
          {
            if (v7 != 50965)
            {
              goto LABEL_316;
            }

            if (a3[1] != 10 || !sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
            {
              return;
            }

            sub_2337338AC(a1, &__str);
            sub_23374AEDC(a3, &__str, &buf);
            if (__str.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(__str.__r_.__value_.__l.__size_);
            }

            if (*(a1 + 1234))
            {
              v11 = buf.__r_.__value_.__r.__words[0];
              v12 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
              if (3 * *(a1 + 1234) != (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3)
              {
LABEL_604:
                if (!v11)
                {
                  return;
                }

                buf.__r_.__value_.__l.__size_ = v11;
                goto LABEL_606;
              }
            }

            else
            {
              v12 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
            }

            *(a1 + 1234) = (v12 >> 3) / 3uLL;
            sub_2337DFC24(&__str, ((v12 >> 3) / 3uLL), 3u, &buf.__r_.__value_.__l.__data_);
            __p[0] = a2;
            v190 = sub_2337A7648((a1 + 1792), a2, &unk_233905F1C, __p, &v272);
            sub_2337E004C(v190 + 7, &__str);
          }

LABEL_601:
          if (__str.__r_.__value_.__l.__size_)
          {
            __str.__r_.__value_.__r.__words[2] = __str.__r_.__value_.__l.__size_;
            operator delete(__str.__r_.__value_.__l.__size_);
          }

          v11 = buf.__r_.__value_.__r.__words[0];
          goto LABEL_604;
        }

        sub_2337338AC(a1, &buf);
        LODWORD(v272.f64[0]) = sub_233749410(a3);
        sub_233726A8C(__p, &v272);
        sub_233725F08(&__str, &buf, __p, 0);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        if (a3[1] != 11 || !sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
        {
          goto LABEL_653;
        }

        v49 = *(a3 + 1);
        if (v49)
        {
          goto LABEL_653;
        }

        sub_233730758(&buf, v49 >> 1);
        sub_233730758(__p, *(a3 + 1) >> 1);
        if (*(a3 + 1) >= 2u)
        {
          v50 = 0;
          do
          {
            sub_2337338AC(a1, &v272);
            v51 = sub_233725730(*&v272.f64[0]);
            *(buf.__r_.__value_.__r.__words[0] + 8 * v50) = v51;
            if (*&v272.f64[1])
            {
              sub_2337239E8(*&v272.f64[1]);
            }

            sub_2337338AC(a1, &v272);
            v52 = sub_233725730(*&v272.f64[0]);
            *(__p[0] + v50) = v52;
            if (*&v272.f64[1])
            {
              sub_2337239E8(*&v272.f64[1]);
            }

            ++v50;
          }

          while (v50 < *(a3 + 1) >> 1);
        }

        v53 = __p[0];
        if (*buf.__r_.__value_.__l.__data_ == 0.0)
        {
          if (*__p[0] != 0.0 || (v54 = ((buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3) - 1, fabs(*(buf.__r_.__value_.__r.__words[0] + 8 * v54) + -1.0) >= 0.0001) || fabs(*(__p[0] + v54) + -1.0) >= 0.0001)
          {
LABEL_280:
            __p[1] = v53;
            operator delete(v53);
LABEL_281:
            if (buf.__r_.__value_.__r.__words[0])
            {
              buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            goto LABEL_653;
          }

          *&v272.f64[0] = a2;
          v55 = (sub_233757B14((a1 + 2120), a2, &unk_233905F1C, &v272, &v275) + 7);
          if (v55 != &buf)
          {
            sub_23373176C(v55, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_, (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3);
          }

          *&v272.f64[0] = a2;
          v56 = sub_233757B14((a1 + 2144), a2, &unk_233905F1C, &v272, &v275) + 7;
          v53 = __p[0];
          if (v56 != __p)
          {
            sub_23373176C(v56, __p[0], __p[1], (__p[1] - __p[0]) >> 3);
            v53 = __p[0];
          }
        }

        if (!v53)
        {
          goto LABEL_281;
        }

        goto LABEL_280;
      }

      if (v7 == 50829)
      {
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v236, *a2, *(a2 + 8));
        }

        else
        {
          *v236 = *a2;
          v237 = *(a2 + 16);
        }

        v155 = sub_233735E3C(a1 + 512, v236);
        if (a1 + 520 == v155 || *(v155 + 56) || a3[1] - 3 > 1)
        {
          sub_2338F8878(v236);
          return;
        }

        v156 = *(a3 + 1);
        if (SHIBYTE(v237) < 0)
        {
          operator delete(v236[0]);
        }

        if (v156 == 4)
        {
          v157 = a3[1];
          if (v157 == 4)
          {
            memset(&__str, 0, sizeof(__str));
            if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
            {
              v199 = *__str.__r_.__value_.__l.__data_;
              v198 = *(__str.__r_.__value_.__r.__words[0] + 4);
              v201 = *(__str.__r_.__value_.__r.__words[0] + 8);
              v200 = *(__str.__r_.__value_.__r.__words[0] + 12);
              sub_2337238F0(&buf, v198, *__str.__r_.__value_.__l.__data_);
              sub_2337238F0(&buf.__r_.__value_.__r.__words[1], v200 - v198, v201 - v199);
              __p[0] = a2;
              v202 = sub_2337A783C((a1 + 1408), a2, &unk_233905F1C, __p, &v272);
              *(v202 + 7) = *&buf.__r_.__value_.__l.__data_;
            }
          }

          else
          {
            if (v157 != 3)
            {
              return;
            }

            memset(&__str, 0, sizeof(__str));
            if (sub_233751BE4(a1, a3, &__str))
            {
              v158 = *(__str.__r_.__value_.__r.__words[0] + 2);
              v159 = *__str.__r_.__value_.__l.__data_;
              v160 = *(__str.__r_.__value_.__r.__words[0] + 6);
              v161 = *(__str.__r_.__value_.__r.__words[0] + 4);
              buf.__r_.__value_.__r.__words[0] = a2;
              v162 = sub_2337A783C((a1 + 1408), a2, &unk_233905F1C, &buf, __p);
              v162[14] = v158;
              v162[15] = v159;
              v162[16] = v160 - v158;
              v162[17] = v161 - v159;
            }
          }

          sub_2338F884C(&__str);
          return;
        }

        return;
      }

      if (v7 == 50935)
      {
        if (a3[1] == 5 && *(a3 + 1) == 1)
        {
          if (*(a2 + 23) < 0)
          {
            sub_233731FB8(v228, *a2, *(a2 + 8));
          }

          else
          {
            *v228 = *a2;
            v229 = *(a2 + 16);
          }

          v192 = sub_233735E3C(a1 + 512, v228);
          v193 = a1 + 520 != v192 && *(v192 + 56) == 0;
          if (SHIBYTE(v229) < 0)
          {
            operator delete(v228[0]);
          }

          if (v193)
          {
            buf.__r_.__value_.__r.__words[0] = 0;
            sub_2337338AC(a1, &__str);
            v195 = sub_23374ABCC(a3, &buf, &__str, v194);
            if (__str.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(__str.__r_.__value_.__l.__size_);
            }

            if (v195)
            {
              v196 = buf.__r_.__value_.__l.__data_;
              if ((*(a1 + 1956) & 1) == 0)
              {
                *(a1 + 1956) = 1;
              }

              v197 = *&v196;
              *(a1 + 1952) = v197;
            }
          }
        }

        return;
      }

LABEL_316:
      sub_2338FA7AC(v7, v6);
      return;
    }

    if (*a3 <= 0xC740u)
    {
      if (v7 == 50975)
      {
        if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] - 3 > 1)
        {
          return;
        }

        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v224, *a2, *(a2 + 8));
        }

        else
        {
          *v224 = *a2;
          v225 = *(a2 + 16);
        }

        v213 = sub_233735E3C(a1 + 512, v224);
        v214 = a1 + 520 == v213 || *(v213 + 56) || *(a3 + 1) != 1;
        if (SHIBYTE(v225) < 0)
        {
          operator delete(v224[0]);
        }

        if (v214)
        {
          return;
        }

        if (a3[1] == 4)
        {
          v215 = *(a3 + 2);
        }

        else
        {
          v215 = sub_233751308(a3);
        }

        __str.__r_.__value_.__r.__words[0] = a2;
        v220 = sub_2337575A8((a1 + 2456), a2, &unk_233905F1C, &__str, &buf);
        goto LABEL_691;
      }

      if (v7 != 51008)
      {
        goto LABEL_316;
      }

      if (*(a2 + 23) < 0)
      {
        sub_233731FB8(v234, *a2, *(a2 + 8));
      }

      else
      {
        *v234 = *a2;
        v235 = *(a2 + 16);
      }

      v153 = sub_233735E3C(a1 + 512, v234);
      v154 = a1 + 520 != v153 && *(v153 + 56) == 0;
      if (SHIBYTE(v235) < 0)
      {
        operator delete(v234[0]);
      }

      if (!v154)
      {
        return;
      }

      v169 = sub_23379FE48(a1, a3, &__str);
      v171 = (a1 + 2168);
      if (*(a1 + 2176) == *(a1 + 2168))
      {
        if (v171 != &__str)
        {
          sub_2337A6718(a1 + 2168, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 4);
        }
      }

      else
      {
        v172 = sub_2338C0490(v169, v170);
        if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
        {
          if (*(a2 + 23) >= 0)
          {
            v173 = a2;
          }

          else
          {
            v173 = *a2;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v173;
          _os_log_impl(&dword_23371F000, v172, OS_LOG_TYPE_INFO, "Did not expect a second opcodelist1 for path %s", &buf, 0xCu);
        }

        size = __str.__r_.__value_.__l.__size_;
        for (i = __str.__r_.__value_.__r.__words[0]; i != size; ++i)
        {
          sub_233753C74(&v171->__r_.__value_.__l.__data_, i);
        }
      }
    }

    else
    {
      switch(v7)
      {
        case 0xC741:
          if (*(a2 + 23) < 0)
          {
            sub_233731FB8(v232, *a2, *(a2 + 8));
          }

          else
          {
            *v232 = *a2;
            v233 = *(a2 + 16);
          }

          v165 = sub_233735E3C(a1 + 512, v232);
          v166 = a1 + 520 != v165 && *(v165 + 56) == 0;
          if (SHIBYTE(v233) < 0)
          {
            operator delete(v232[0]);
          }

          if (!v166)
          {
            return;
          }

          v183 = sub_23379FE48(a1, a3, &__str);
          v185 = (a1 + 2192);
          if (*(a1 + 2200) == *(a1 + 2192))
          {
            if (v185 != &__str)
            {
              sub_2337A6718(a1 + 2192, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 4);
            }
          }

          else
          {
            v186 = sub_2338C0490(v183, v184);
            if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
            {
              if (*(a2 + 23) >= 0)
              {
                v187 = a2;
              }

              else
              {
                v187 = *a2;
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = v187;
              _os_log_impl(&dword_23371F000, v186, OS_LOG_TYPE_INFO, "Did not expect a second opcodelist2 for path %s", &buf, 0xCu);
            }

            v189 = __str.__r_.__value_.__l.__size_;
            for (j = __str.__r_.__value_.__r.__words[0]; j != v189; ++j)
            {
              sub_233753C74(&v185->__r_.__value_.__l.__data_, j);
            }
          }

          break;
        case 0xC74E:
          if (*(a2 + 23) < 0)
          {
            sub_233731FB8(v230, *a2, *(a2 + 8));
          }

          else
          {
            *v230 = *a2;
            v231 = *(a2 + 16);
          }

          v163 = sub_233735E3C(a1 + 512, v230);
          v164 = a1 + 520 != v163 && *(v163 + 56) == 0;
          if (SHIBYTE(v231) < 0)
          {
            operator delete(v230[0]);
          }

          if (!v164)
          {
            return;
          }

          v176 = sub_23379FE48(a1, a3, &__str);
          v178 = (a1 + 2216);
          if (*(a1 + 2224) == *(a1 + 2216))
          {
            if (v178 != &__str)
            {
              sub_2337A6718(a1 + 2216, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 4);
            }
          }

          else
          {
            v179 = sub_2338C0490(v176, v177);
            if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
            {
              if (*(a2 + 23) >= 0)
              {
                v180 = a2;
              }

              else
              {
                v180 = *a2;
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = v180;
              _os_log_impl(&dword_23371F000, v179, OS_LOG_TYPE_INFO, "Did not expect a second opcodelist3 for path %s", &buf, 0xCu);
            }

            v182 = __str.__r_.__value_.__l.__size_;
            for (k = __str.__r_.__value_.__r.__words[0]; k != v182; ++k)
            {
              sub_233753C74(&v178->__r_.__value_.__l.__data_, k);
            }
          }

          break;
        case 0xC761:
          if (a3[1] == 12)
          {
            sub_2337338AC(a1, &buf);
            sub_23374AEDC(a3, &buf, &__str);
            if (buf.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(buf.__r_.__value_.__l.__size_);
            }

            buf.__r_.__value_.__r.__words[0] = a1 + 1184;
            v13 = (sub_233757B14((a1 + 1928), (a1 + 1184), &unk_233905F1C, &buf, __p) + 7);
            if (v13 != &__str)
            {
              sub_23373176C(v13, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3);
            }

LABEL_683:
            sub_2338F884C(&__str);
          }

          return;
        default:
          goto LABEL_316;
      }
    }

    buf.__r_.__value_.__r.__words[0] = &__str;
    sub_233723948(&buf);
    return;
  }

  if (*a3 > 0xC611u)
  {
    switch(*a3)
    {
      case 0xC612u:
        if (sub_2338FA854(a1, a2, a3))
        {
          return;
        }

        v8 = 0;
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        do
        {
          sub_233726998(&buf, &__str);
          v8 = (v8 << 8) | sub_233754BB0(a3, &buf);
          v9 = LODWORD(__str.__r_.__value_.__l.__data_)++;
        }

        while (v9 < 3);
        __str.__r_.__value_.__r.__words[0] = a2;
        v10 = sub_2337575A8((a1 + 1432), a2, &unk_233905F1C, &__str, &buf);
        goto LABEL_168;
      case 0xC613u:
        if (!sub_23379FDD4(a2, (a1 + 1184)) || a3[1] != 1 || *(a3 + 1) != 4)
        {
          return;
        }

        v8 = 0;
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        do
        {
          sub_233726998(&buf, &__str);
          v8 = (v8 << 8) | sub_233754BB0(a3, &buf);
          v40 = LODWORD(__str.__r_.__value_.__l.__data_)++;
        }

        while (v40 < 3);
        if (v8 > 0x1070100)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        __str.__r_.__value_.__r.__words[0] = a2;
        v10 = sub_2337575A8((a1 + 1456), a2, &unk_233905F1C, &__str, &buf);
LABEL_168:
        *(v10 + 14) = v8;
        return;
      case 0xC614u:
        if (!sub_23379FDD4(a2, (a1 + 1184)) || a3[1] != 2)
        {
          return;
        }

        memset(&__str, 0, sizeof(__str));
        if (sub_23375168C(a1, a3, &__str, 0))
        {
          buf.__r_.__value_.__r.__words[0] = a2;
          v38 = sub_23375797C((a1 + 1312), a2, &unk_233905F1C, &buf, __p);
          std::string::operator=((v38 + 7), &__str);
        }

        goto LABEL_293;
      case 0xC616u:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v265, *a2, *(a2 + 8));
        }

        else
        {
          *v265 = *a2;
          v266 = *(a2 + 16);
        }

        v77 = sub_233735E3C(a1 + 512, v265);
        if (a1 + 520 == v77 || *(v77 + 56))
        {
          sub_2338F8878(v265);
          return;
        }

        v78 = a3[1];
        if (SHIBYTE(v266) < 0)
        {
          operator delete(v265[0]);
        }

        if (v78 != 1)
        {
          return;
        }

        v79 = a3[2];
        if ((v79 - 5) < 0xFFFFFFFE || *(a1 + 1234) && *(a1 + 1234) != v79)
        {
          return;
        }

        *(a1 + 1234) = v79;
        memset(&__str, 0, sizeof(__str));
        if (!sub_233751E78(a1, a3, &__str))
        {
          goto LABEL_521;
        }

        v11 = __str.__r_.__value_.__r.__words[0];
        if (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] != *(a1 + 1234))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](exception, "RawCameraException");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        goto LABEL_522;
      case 0xC617u:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v263, *a2, *(a2 + 8));
        }

        else
        {
          *v263 = *a2;
          v264 = *(a2 + 16);
        }

        v81 = sub_233735E3C(a1 + 512, v263);
        if (a1 + 520 == v81 || *(v81 + 56) || a3[1] != 3)
        {
          sub_2338F8878(v263);
        }

        else
        {
          v82 = *(a3 + 1);
          if (SHIBYTE(v264) < 0)
          {
            operator delete(v263[0]);
          }

          if (v82 == 1)
          {
            data = sub_233751308(a3);
            __str.__r_.__value_.__r.__words[0] = a2;
            v15 = sub_233757C60((a1 + 1504), a2, &unk_233905F1C, &__str, &buf);
            goto LABEL_371;
          }
        }

        return;
      case 0xC618u:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v261, *a2, *(a2 + 8));
        }

        else
        {
          *v261 = *a2;
          v262 = *(a2 + 16);
        }

        v101 = sub_233735E3C(a1 + 512, v261);
        if (a1 + 520 == v101 || *(v101 + 56))
        {
          sub_2338F8878(v261);
          return;
        }

        v102 = a3[1];
        if (SHIBYTE(v262) < 0)
        {
          operator delete(v261[0]);
        }

        if (v102 != 3)
        {
          return;
        }

        memset(&__str, 0, sizeof(__str));
        if (sub_233751BE4(a1, a3, &__str))
        {
          buf.__r_.__value_.__r.__words[0] = a2;
          v103 = (sub_2337577E4((a1 + 1576), a2, &unk_233905F1C, &buf, __p) + 7);
          if (v103 != &__str)
          {
            sub_233754F80(v103, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 1);
          }
        }

        goto LABEL_683;
      case 0xC619u:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v259, *a2, *(a2 + 8));
        }

        else
        {
          *v259 = *a2;
          v260 = *(a2 + 16);
        }

        v87 = sub_233735E3C(a1 + 512, v259);
        if (a1 + 520 == v87 || *(v87 + 56) || a3[1] != 3)
        {
          sub_2338F8878(v259);
        }

        else
        {
          v88 = *(a3 + 1);
          if (SHIBYTE(v260) < 0)
          {
            operator delete(v259[0]);
          }

          if (v88 == 2)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 0;
            sub_233726998(&__str, &buf);
            v89 = sub_23374B704(a3, &__str);
            LODWORD(buf.__r_.__value_.__l.__data_) = 1;
            sub_233726998(&__str, &buf);
            v90 = sub_23374B704(a3, &__str);
            LOWORD(buf.__r_.__value_.__l.__data_) = v89;
            *&buf.__r_.__value_.__s.__data_[2] = v90;
            __str.__r_.__value_.__r.__words[0] = a2;
            v91 = sub_2337577E4((a1 + 1552), a2, &unk_233905F1C, &__str, __p);
            sub_2337554C0(v91 + 7, &buf, &buf.__r_.__value_.__s.__data_[4], 2uLL);
            if (((v89 * v90) & 0xFFFF0000) == 0)
            {
              *(a1 + 1238) = v89 * v90;
            }
          }
        }

        return;
      case 0xC61Au:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v257, *a2, *(a2 + 8));
        }

        else
        {
          *v257 = *a2;
          v258 = *(a2 + 16);
        }

        v83 = sub_233735E3C(a1 + 512, v257);
        if (a1 + 520 == v83 || *(v83 + 56))
        {
          sub_2338F8878(v257);
          return;
        }

        v84 = a3[1];
        if ((v84 - 3) >= 3)
        {
          if (SHIBYTE(v258) < 0)
          {
            operator delete(v257[0]);
          }

          if (v84 != 9)
          {
            return;
          }
        }

        else if (SHIBYTE(v258) < 0)
        {
          operator delete(v257[0]);
        }

        if (*(a3 + 1) == *(a1 + 1236) * *(a1 + 1238))
        {
          sub_2337338AC(a1, &buf);
          sub_23374AEDC(a3, &buf, &__str);
          if (buf.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(buf.__r_.__value_.__l.__size_);
          }

          v85 = __str.__r_.__value_.__r.__words[0];
          if (*(a3 + 1) == (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3)
          {
            if (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] == 8)
            {
              sub_233731694(&buf, 4uLL, __str.__r_.__value_.__l.__data_);
              if (__str.__r_.__value_.__r.__words[0])
              {
                __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = buf;
            }

            buf.__r_.__value_.__r.__words[0] = a2;
            v86 = (sub_233757B14((a1 + 264), a2, &unk_233905F1C, &buf, __p) + 7);
            v85 = __str.__r_.__value_.__r.__words[0];
            if (v86 != &__str)
            {
              sub_23373176C(v86, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3);
              v85 = __str.__r_.__value_.__r.__words[0];
            }
          }

          if (v85)
          {
            __str.__r_.__value_.__l.__size_ = v85;
            v11 = v85;
            goto LABEL_606;
          }
        }

        return;
      case 0xC61Bu:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v255, *a2, *(a2 + 8));
        }

        else
        {
          *v255 = *a2;
          v256 = *(a2 + 16);
        }

        v104 = sub_233735E3C(a1 + 512, v255);
        if (a1 + 520 == v104 || *(v104 + 56))
        {
          sub_2338F8878(v255);
          return;
        }

        v105 = a3[1];
        if (SHIBYTE(v256) < 0)
        {
          operator delete(v255[0]);
        }

        if (v105 != 10)
        {
          return;
        }

        sub_2337338AC(a1, &buf);
        sub_23374AEDC(a3, &buf, &__str);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        v272 = 0uLL;
        v275 = 0uLL;
        v106 = __str.__r_.__value_.__r.__words[0];
        if (__str.__r_.__value_.__l.__size_ == __str.__r_.__value_.__r.__words[0])
        {
          v109 = vdupq_n_s64(0x7FF8000000000000uLL);
        }

        else
        {
          v107 = 0;
          v108 = (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3;
          if (v108 <= 1)
          {
            v108 = 1;
          }

          do
          {
            *(&v272 & 0xFFFFFFFFFFFFFFF7 | (8 * (v107 & 1))) = *(v106 + 8 * v107) + *(&v272 & 0xFFFFFFFFFFFFFFF7 | (8 * (v107 & 1)));
            *(&v275 & 0xFFFFFFFFFFFFFFF7 | (8 * (v107 & 1))) = *(&v275 & 0xFFFFFFFFFFFFFFF7 | (8 * (v107 & 1))) + 1.0;
            ++v107;
          }

          while (v108 != v107);
          v109 = vdivq_f64(v272, v275);
        }

        v272 = v109;
        sub_233730758(&buf, 4uLL);
        v139 = 0;
        v140 = buf.__r_.__value_.__r.__words[0];
        do
        {
          *(v140 + 8 * v139) = *(&v272 & 0xFFFFFFFFFFFFFFF7 | (8 * (v139 & 1)));
          ++v139;
        }

        while (v139 != 4);
        sub_2337530DC(__p, ":DeltaH", a2);
        *&v274.f64[0] = __p;
        v141 = (sub_23375E520((a1 + 264), __p, &unk_233905F1C, &v274) + 56);
        if (v141 != &buf)
        {
          sub_23373176C(v141, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_, (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (SHIBYTE(v254) < 0)
        {
          v142 = __p[0];
          goto LABEL_517;
        }

        goto LABEL_518;
      case 0xC61Cu:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v251, *a2, *(a2 + 8));
        }

        else
        {
          *v251 = *a2;
          v252 = *(a2 + 16);
        }

        v110 = sub_233735E3C(a1 + 512, v251);
        if (a1 + 520 == v110 || *(v110 + 56))
        {
          sub_2338F8878(v251);
          return;
        }

        v111 = a3[1];
        if (SHIBYTE(v252) < 0)
        {
          operator delete(v251[0]);
        }

        if (v111 != 10)
        {
          return;
        }

        sub_2337338AC(a1, &buf);
        sub_23374AEDC(a3, &buf, &__str);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        v275 = 0uLL;
        v274 = 0uLL;
        v112 = __str.__r_.__value_.__r.__words[0];
        if (__str.__r_.__value_.__l.__size_ == __str.__r_.__value_.__r.__words[0])
        {
          v115 = vdupq_n_s64(0x7FF8000000000000uLL);
        }

        else
        {
          v113 = 0;
          v114 = (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3;
          if (v114 <= 1)
          {
            v114 = 1;
          }

          do
          {
            *(&v275 & 0xFFFFFFFFFFFFFFF7 | (8 * (v113 & 1))) = *(v112 + 8 * v113) + *(&v275 & 0xFFFFFFFFFFFFFFF7 | (8 * (v113 & 1)));
            *(&v274 & 0xFFFFFFFFFFFFFFF7 | (8 * (v113 & 1))) = *(&v274 & 0xFFFFFFFFFFFFFFF7 | (8 * (v113 & 1))) + 1.0;
            ++v113;
          }

          while (v114 != v113);
          v115 = vdivq_f64(v275, v274);
        }

        v275 = v115;
        sub_233730758(&buf, 4uLL);
        v143 = &v275;
        v144 = vld1q_dup_f64(v143->f64);
        v145 = buf.__r_.__value_.__r.__words[0];
        *buf.__r_.__value_.__l.__data_ = v144;
        v146 = &v275.f64[1];
        v147 = vld1q_dup_f64(v146);
        v145[1] = v147;
        v254 = 0;
        __p[0] = 0;
        __p[1] = 0;
        sub_2337236E0(__p, v145, buf.__r_.__value_.__l.__size_, (buf.__r_.__value_.__l.__size_ - v145) >> 3);
        sub_2337530DC(&v272, ":DeltaV", a2);
        v271 = &v272;
        v148 = sub_23375E520((a1 + 264), &v272, &unk_233905F1C, &v271);
        v149 = v148[7];
        if (v149)
        {
          v148[8] = v149;
          operator delete(v149);
          v148[7] = 0;
          v148[8] = 0;
          v148[9] = 0;
        }

        *(v148 + 7) = *__p;
        v148[9] = v254;
        v254 = 0;
        __p[1] = 0;
        __p[0] = 0;
        if (v273 < 0)
        {
          operator delete(*&v272.f64[0]);
          v142 = __p[0];
          if (__p[0])
          {
            __p[1] = __p[0];
LABEL_517:
            operator delete(v142);
          }
        }

LABEL_518:
        v66 = buf.__r_.__value_.__r.__words[0];
        if (buf.__r_.__value_.__r.__words[0])
        {
          buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
          goto LABEL_520;
        }

        goto LABEL_521;
      case 0xC61Du:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v249, *a2, *(a2 + 8));
        }

        else
        {
          *v249 = *a2;
          v250 = *(a2 + 16);
        }

        v92 = sub_233735E3C(a1 + 512, v249);
        if (a1 + 520 == v92 || *(v92 + 56) || (v94 = a3[1], (v94 - 3) >= 2) && v94 != 9)
        {
          sub_2338F8878(v249);
          return;
        }

        v95 = *(a3 + 1);
        v96 = *(a1 + 1236);
        if (SHIBYTE(v250) < 0)
        {
          operator delete(v249[0]);
        }

        if (v95 != v96)
        {
          return;
        }

        v97 = a3[1];
        if (*(a3 + 1) == 1)
        {
          if (v97 == 3)
          {
            *&buf.__r_.__value_.__l.__data_ = sub_233751308(a3);
          }

          else
          {
            LODWORD(v93) = *(a3 + 2);
            *&buf.__r_.__value_.__l.__data_ = v93;
          }

          __str.__r_.__value_.__r.__words[0] = a2;
          v98 = sub_233757B14((a1 + 240), a2, &unk_233905F1C, &__str, __p);
          sub_233755258(v98 + 7, &buf, &buf.__r_.__value_.__s.__data_[8], 1uLL);
          return;
        }

        if (v97 == 4)
        {
          memset(&__str, 0, sizeof(__str));
          if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
          {
            memset(&buf, 0, sizeof(buf));
            sub_2337A66A0(&buf, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
            __p[0] = a2;
            v218 = sub_233757B14((a1 + 240), a2, &unk_233905F1C, __p, &v272);
            v219 = v218[7];
            if (v219)
            {
              v218[8] = v219;
              operator delete(v219);
              v218[7] = 0;
              v218[8] = 0;
              v218[9] = 0;
            }

            *(v218 + 7) = buf;
          }
        }

        else
        {
          if (v97 != 3)
          {
            return;
          }

          memset(&__str, 0, sizeof(__str));
          if (sub_233751BE4(a1, a3, &__str))
          {
            memset(&buf, 0, sizeof(buf));
            sub_2337924A4(&buf, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 1);
            __p[0] = a2;
            v99 = sub_233757B14((a1 + 240), a2, &unk_233905F1C, __p, &v272);
            v100 = v99[7];
            if (v100)
            {
              v99[8] = v100;
              operator delete(v100);
              v99[7] = 0;
              v99[8] = 0;
              v99[9] = 0;
            }

            *(v99 + 7) = buf;
          }
        }

        goto LABEL_683;
      case 0xC61Eu:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v241, *a2, *(a2 + 8));
        }

        else
        {
          *v241 = *a2;
          v242 = *(a2 + 16);
        }

        v116 = sub_233735E3C(a1 + 512, v241);
        if (a1 + 520 == v116 || *(v116 + 56) || a3[1] - 3 > 2)
        {
          sub_2338F8878(v241);
          return;
        }

        v117 = *(a3 + 1);
        if (SHIBYTE(v242) < 0)
        {
          operator delete(v241[0]);
        }

        if (v117 != 2)
        {
          return;
        }

        v118 = a3[1];
        if (v118 != 5)
        {
          if (v118 == 4)
          {
            memset(&__str, 0, sizeof(__str));
            if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
            {
              sub_2337238F0(__p, *__str.__r_.__value_.__l.__data_, *(__str.__r_.__value_.__r.__words[0] + 4));
              buf.__r_.__value_.__r.__words[0] = a2;
              v211 = sub_233757E18((a1 + 1384), a2, &unk_233905F1C, &buf, &v272);
              v211[7] = __p[0];
            }
          }

          else
          {
            if (v118 != 3)
            {
              return;
            }

            memset(&__str, 0, sizeof(__str));
            if (sub_233751BE4(a1, a3, &__str))
            {
              v119 = *__str.__r_.__value_.__l.__data_;
              v120 = *(__str.__r_.__value_.__r.__words[0] + 2);
              buf.__r_.__value_.__r.__words[0] = a2;
              sub_233757E18((a1 + 1384), a2, &unk_233905F1C, &buf, __p)[7] = v119 | (v120 << 32);
            }
          }

          goto LABEL_683;
        }

        memset(&__str, 0, sizeof(__str));
        v212 = sub_2337518A0(a1, a3, &__str.__r_.__value_.__l.__data_);
        v11 = __str.__r_.__value_.__r.__words[0];
        if (!v212 || __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] != 8)
        {
          goto LABEL_522;
        }

        v209 = *__str.__r_.__value_.__l.__data_;
        if ((*__str.__r_.__value_.__l.__data_ & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v210 = *(__str.__r_.__value_.__r.__words[0] + 4);
          if ((LODWORD(v210) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            buf.__r_.__value_.__r.__words[0] = a2;
            v205 = sub_233757E18((a1 + 1384), a2, &unk_233905F1C, &buf, __p);
            goto LABEL_649;
          }
        }

        goto LABEL_523;
      case 0xC61Fu:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(__dst, *a2, *(a2 + 8));
        }

        else
        {
          *__dst = *a2;
          v246 = *(a2 + 16);
        }

        v67 = sub_233735E3C(a1 + 512, __dst);
        if (a1 + 520 == v67 || *(v67 + 56) || a3[1] - 3 > 2)
        {
          sub_2338F8878(__dst);
          return;
        }

        v68 = *(a3 + 1);
        if (SHIBYTE(v246) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v68 != 2)
        {
          return;
        }

        v69 = a3[1];
        if (v69 != 5)
        {
          if (v69 == 4)
          {
            memset(&__str, 0, sizeof(__str));
            if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
            {
              sub_2337238F0(__p, *__str.__r_.__value_.__l.__data_, *(__str.__r_.__value_.__r.__words[0] + 4));
              buf.__r_.__value_.__r.__words[0] = a2;
              v203 = sub_233757E18((a1 + 1336), a2, &unk_233905F1C, &buf, &v272);
              v203[7] = __p[0];
            }
          }

          else
          {
            if (v69 != 3)
            {
              return;
            }

            memset(&__str, 0, sizeof(__str));
            if (sub_233751BE4(a1, a3, &__str))
            {
              v70 = *__str.__r_.__value_.__l.__data_;
              v71 = *(__str.__r_.__value_.__r.__words[0] + 2);
              buf.__r_.__value_.__r.__words[0] = a2;
              sub_233757E18((a1 + 1336), a2, &unk_233905F1C, &buf, __p)[7] = v70 | (v71 << 32);
            }
          }

          goto LABEL_683;
        }

        memset(&__str, 0, sizeof(__str));
        v204 = sub_2337518A0(a1, a3, &__str.__r_.__value_.__l.__data_);
        v11 = __str.__r_.__value_.__r.__words[0];
        if (!v204 || __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] != 8)
        {
          goto LABEL_522;
        }

        if ((*__str.__r_.__value_.__l.__data_ & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(__str.__r_.__value_.__r.__words[0] + 4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          sub_2337238F0(__p, *__str.__r_.__value_.__l.__data_, *(__str.__r_.__value_.__r.__words[0] + 4));
          buf.__r_.__value_.__r.__words[0] = a2;
          v205 = sub_233757E18((a1 + 1336), a2, &unk_233905F1C, &buf, &v272);
          v206 = __p[0];
          goto LABEL_650;
        }

        goto LABEL_523;
      case 0xC620u:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v243, *a2, *(a2 + 8));
        }

        else
        {
          *v243 = *a2;
          v244 = *(a2 + 16);
        }

        v72 = sub_233735E3C(a1 + 512, v243);
        if (a1 + 520 == v72 || *(v72 + 56) || a3[1] - 3 > 2)
        {
          sub_2338F8878(v243);
          return;
        }

        v73 = *(a3 + 1);
        if (SHIBYTE(v244) < 0)
        {
          operator delete(v243[0]);
        }

        if (v73 != 2)
        {
          return;
        }

        v74 = a3[1];
        if (v74 != 5)
        {
          if (v74 == 4)
          {
            memset(&__str, 0, sizeof(__str));
            if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
            {
              sub_2337238F0(__p, *__str.__r_.__value_.__l.__data_, *(__str.__r_.__value_.__r.__words[0] + 4));
              buf.__r_.__value_.__r.__words[0] = a2;
              v207 = sub_233757E18((a1 + 1360), a2, &unk_233905F1C, &buf, &v272);
              v207[7] = __p[0];
            }
          }

          else
          {
            if (v74 != 3)
            {
              return;
            }

            memset(&__str, 0, sizeof(__str));
            if (sub_233751BE4(a1, a3, &__str))
            {
              v75 = *__str.__r_.__value_.__l.__data_;
              v76 = *(__str.__r_.__value_.__r.__words[0] + 2);
              buf.__r_.__value_.__r.__words[0] = a2;
              sub_233757E18((a1 + 1360), a2, &unk_233905F1C, &buf, __p)[7] = v75 | (v76 << 32);
            }
          }

          goto LABEL_683;
        }

        memset(&__str, 0, sizeof(__str));
        v208 = sub_2337518A0(a1, a3, &__str.__r_.__value_.__l.__data_);
        v11 = __str.__r_.__value_.__r.__words[0];
        if (!v208 || __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] != 8)
        {
          goto LABEL_522;
        }

        v209 = *__str.__r_.__value_.__l.__data_;
        if ((*__str.__r_.__value_.__l.__data_ & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          goto LABEL_523;
        }

        v210 = *(__str.__r_.__value_.__r.__words[0] + 4);
        if ((LODWORD(v210) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          goto LABEL_523;
        }

        buf.__r_.__value_.__r.__words[0] = a2;
        v205 = sub_233757E18((a1 + 1360), a2, &unk_233905F1C, &buf, __p);
LABEL_649:
        v206 = (v209 | (v210 << 32));
LABEL_650:
        v205[7] = v206;
        goto LABEL_521;
      case 0xC621u:
        if (a3[1] != 10 || !sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
        {
          return;
        }

        sub_2337338AC(a1, &__str);
        sub_23374AEDC(a3, &__str, &buf);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        if (*(a1 + 1234))
        {
          v11 = buf.__r_.__value_.__r.__words[0];
          v36 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
          if (3 * *(a1 + 1234) != (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3)
          {
            goto LABEL_604;
          }
        }

        else
        {
          v36 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
        }

        *(a1 + 1234) = (v36 >> 3) / 3uLL;
        sub_2337DFC24(&__str, ((v36 >> 3) / 3uLL), 3u, &buf.__r_.__value_.__l.__data_);
        __p[0] = a2;
        v127 = sub_2337A7648((a1 + 1624), a2, &unk_233905F1C, __p, &v272);
        sub_2337E004C(v127 + 7, &__str);
        goto LABEL_601;
      case 0xC622u:
        if (a3[1] != 10 || !sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
        {
          return;
        }

        sub_2337338AC(a1, &__str);
        sub_23374AEDC(a3, &__str, &buf);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        if (*(a1 + 1234))
        {
          v11 = buf.__r_.__value_.__r.__words[0];
          v20 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
          if (3 * *(a1 + 1234) != (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3)
          {
            goto LABEL_604;
          }
        }

        else
        {
          v20 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
        }

        *(a1 + 1234) = (v20 >> 3) / 3uLL;
        sub_2337DFC24(&__str, ((v20 >> 3) / 3uLL), 3u, &buf.__r_.__value_.__l.__data_);
        __p[0] = a2;
        v126 = sub_2337A7648((a1 + 1648), a2, &unk_233905F1C, __p, &v272);
        sub_2337E004C(v126 + 7, &__str);
        goto LABEL_601;
      case 0xC623u:
        if (a3[1] != 10 || !sub_23379FDD4(a2, (a1 + 1184)))
        {
          return;
        }

        sub_2337338AC(a1, &__str);
        sub_23374AEDC(a3, &__str, &buf);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        if (*(a1 + 1234))
        {
          v11 = buf.__r_.__value_.__r.__words[0];
          v37 = (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3;
          if (v37 != *(a1 + 1234) * *(a1 + 1234))
          {
            goto LABEL_604;
          }
        }

        else
        {
          v37 = (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3;
        }

        v132 = sqrt(v37);
        *(a1 + 1234) = v132;
        sub_2337DFC24(&__str, v132, v132, &buf.__r_.__value_.__l.__data_);
        __p[0] = a2;
        v133 = sub_2337A7648((a1 + 1720), a2, &unk_233905F1C, __p, &v272);
        sub_2337E004C(v133 + 7, &__str);
        goto LABEL_601;
      case 0xC624u:
        if (a3[1] != 10 || !sub_23379FDD4(a2, (a1 + 1184)))
        {
          return;
        }

        sub_2337338AC(a1, &__str);
        sub_23374AEDC(a3, &__str, &buf);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        if (*(a1 + 1234))
        {
          v11 = buf.__r_.__value_.__r.__words[0];
          v19 = (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3;
          if (v19 != *(a1 + 1234) * *(a1 + 1234))
          {
            goto LABEL_604;
          }
        }

        else
        {
          v19 = (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3;
        }

        v130 = sqrt(v19);
        *(a1 + 1234) = v130;
        sub_2337DFC24(&__str, v130, v130, &buf.__r_.__value_.__l.__data_);
        __p[0] = a2;
        v131 = sub_2337A7648((a1 + 1744), a2, &unk_233905F1C, __p, &v272);
        sub_2337E004C(v131 + 7, &__str);
        goto LABEL_601;
      case 0xC625u:
        if (a3[1] != 10 || !sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
        {
          return;
        }

        sub_2337338AC(a1, &__str);
        sub_23374AEDC(a3, &__str, &buf);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        if (*(a1 + 1234))
        {
          v11 = buf.__r_.__value_.__r.__words[0];
          v39 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
          if (3 * *(a1 + 1234) != (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3)
          {
            goto LABEL_604;
          }
        }

        else
        {
          v39 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
        }

        *(a1 + 1234) = (v39 >> 3) / 3uLL;
        sub_2337DFC24(&__str, ((v39 >> 3) / 3uLL), 3u, &buf.__r_.__value_.__l.__data_);
        __p[0] = a2;
        v128 = sub_2337A7648((a1 + 1672), a2, &unk_233905F1C, __p, &v272);
        sub_2337E004C(v128 + 7, &__str);
        goto LABEL_601;
      case 0xC626u:
        if (a3[1] != 10 || !sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
        {
          return;
        }

        sub_2337338AC(a1, &__str);
        sub_23374AEDC(a3, &__str, &buf);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        if (*(a1 + 1234))
        {
          v11 = buf.__r_.__value_.__r.__words[0];
          v41 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
          if (3 * *(a1 + 1234) != (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3)
          {
            goto LABEL_604;
          }
        }

        else
        {
          v41 = buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0];
        }

        *(a1 + 1234) = (v41 >> 3) / 3uLL;
        sub_2337DFC24(&__str, ((v41 >> 3) / 3uLL), 3u, &buf.__r_.__value_.__l.__data_);
        __p[0] = a2;
        v129 = sub_2337A7648((a1 + 1696), a2, &unk_233905F1C, __p, &v272);
        sub_2337E004C(v129 + 7, &__str);
        goto LABEL_601;
      case 0xC627u:
        if (a3[1] != 5 || !sub_23379FDD4(a2, (a1 + 1184)))
        {
          return;
        }

        sub_2337338AC(a1, &buf);
        sub_23374AEDC(a3, &buf, &__str);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        if (*(a1 + 1234))
        {
          v11 = __str.__r_.__value_.__r.__words[0];
          v46 = __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0];
          if (*(a1 + 1234) != (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3)
          {
            goto LABEL_522;
          }
        }

        else
        {
          v46 = __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0];
        }

        *(a1 + 1234) = v46 >> 3;
        buf.__r_.__value_.__r.__words[0] = a2;
        v134 = (sub_233757B14((a1 + 1864), a2, &unk_233905F1C, &buf, __p) + 7);
        if (v134 != &__str)
        {
          sub_23373176C(v134, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3);
        }

        v11 = __str.__r_.__value_.__r.__words[0];
        if (__str.__r_.__value_.__l.__size_ == __str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_522;
        }

        v135 = 0;
        v136 = (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3;
        v137 = *(a1 + 1288);
        v138 = (*(a1 + 1296) - v137) >> 3;
        if (v136 <= 1)
        {
          v136 = 1;
        }

        break;
      case 0xC628u:
        v21 = a3[1];
        if (v21 > 0xA)
        {
          return;
        }

        if (((1 << v21) & 0x428) == 0)
        {
          return;
        }

        if (!sub_23379FDD4(a2, (a1 + 1184)))
        {
          return;
        }

        v22 = a3[2];
        if ((v22 - 5) < 0xFFFFFFFE || *(a1 + 1234) && *(a1 + 1234) != v22)
        {
          return;
        }

        *(a1 + 1234) = v22;
        buf.__r_.__value_.__r.__words[0] = 0x3FF0000000000000;
        sub_233731694(&__str, v22, &buf);
        sub_2337338AC(a1, __p);
        sub_23374AEDC(a3, __p, &buf);
        if (__p[1])
        {
          sub_2337239E8(__p[1]);
        }

        v24 = buf.__r_.__value_.__l.__size_;
        v23 = buf.__r_.__value_.__r.__words[0];
        v25 = (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3;
        if (v25 != *(a1 + 1234))
        {
          goto LABEL_317;
        }

        if (*(a1 + 1234))
        {
          v26 = __str.__r_.__value_.__r.__words[0];
          v27 = buf.__r_.__value_.__r.__words[0];
          v28 = (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3;
          do
          {
            v29 = *v27++;
            v30 = v29;
            *v26 = *v26 / v30;
            ++v26;
            --v28;
          }

          while (v28);
        }

        *(a1 + 1234) = v22;
        if ((a1 + 1248) != &buf)
        {
          sub_23373176C((a1 + 1248), v23, v24, v25);
          LODWORD(v22) = *(a1 + 1234);
          v23 = buf.__r_.__value_.__r.__words[0];
        }

        v31 = *(a1 + 1288);
        v32 = (*(a1 + 1296) - v31) >> 3;
        if (v32 == v22 && v22)
        {
          v33 = 0;
          do
          {
            v34 = *(v31 + 8 * v33);
            v35 = *&v23[8 * v33];
            *(v31 + 8 * v33++) = (v34 / v35);
          }

          while (v32 != v33);
        }

        else
        {
LABEL_317:
          if (!v23)
          {
            goto LABEL_521;
          }
        }

        buf.__r_.__value_.__l.__size_ = v23;
        v66 = v23;
LABEL_520:
        operator delete(v66);
LABEL_521:
        v11 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_522;
      case 0xC629u:
        if (a3[1] == 5 && sub_23379FDD4(a2, (a1 + 1184)))
        {
          sub_2337338AC(a1, &buf);
          sub_23374AEDC(a3, &buf, &__str);
          sub_2338FA69C(&buf, &__str, a1);
        }

        return;
      case 0xC62Au:
        if (a3[1] != 10 || *(a3 + 1) != 1 || !sub_23379FDD4(a2, (a1 + 1184)))
        {
          return;
        }

        sub_2337338AC(a1, &buf);
        sub_23374AEDC(a3, &buf, &__str);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(buf.__r_.__value_.__l.__size_);
        }

        v11 = __str.__r_.__value_.__r.__words[0];
        if (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] != 8)
        {
          goto LABEL_522;
        }

        v18 = *__str.__r_.__value_.__l.__data_;
        buf.__r_.__value_.__r.__words[0] = a2;
        sub_233757E18((a1 + 1888), a2, &unk_233905F1C, &buf, __p)[7] = v18;
        goto LABEL_521;
      case 0xC62Bu:
        if (sub_23379FDD4(a2, (a1 + 1184)) && a3[1] == 5 && *(a3 + 1) == 1)
        {
          (*(*a1 + 384))(&__str, a1);
          v43 = sub_23374ABCC(a3, (a1 + 1912), &__str, v42);
          if (__str.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(__str.__r_.__value_.__l.__size_);
          }

          if ((v43 & 1) == 0)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }
        }

        return;
      case 0xC62Cu:
        if (sub_23379FDD4(a2, (a1 + 1184)) && a3[1] == 5 && *(a3 + 1) == 1)
        {
          (*(*a1 + 384))(&__str, a1);
          v45 = sub_23374ABCC(a3, (a1 + 1920), &__str, v44);
          if (__str.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(__str.__r_.__value_.__l.__size_);
          }

          if ((v45 & 1) == 0)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }
        }

        return;
      case 0xC62Du:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(&v238, *a2, *(a2 + 8));
        }

        else
        {
          v238 = *a2;
          v239 = *(a2 + 16);
        }

        sub_233735E3C(a1 + 512, &v238);
        sub_2338F8878(&v238);
        return;
      case 0xC632u:
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(v247, *a2, *(a2 + 8));
        }

        else
        {
          *v247 = *a2;
          v248 = *(a2 + 16);
        }

        v121 = sub_233735E3C(a1 + 512, v247);
        if (a1 + 520 == v121 || *(v121 + 56) || a3[1] != 5)
        {
          sub_2338F8878(v247);
        }

        else
        {
          v122 = *(a3 + 1);
          if (SHIBYTE(v248) < 0)
          {
            operator delete(v247[0]);
          }

          if (v122 == 1)
          {
            buf.__r_.__value_.__r.__words[0] = 0;
            sub_2337338AC(a1, &__str);
            v124 = sub_23374ABCC(a3, &buf, &__str, v123);
            if (__str.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(__str.__r_.__value_.__l.__size_);
            }

            if (v124)
            {
              v125 = buf.__r_.__value_.__r.__words[0];
              __str.__r_.__value_.__r.__words[0] = a2;
              sub_233757E18((a1 + 1528), a2, &unk_233905F1C, &__str, __p)[7] = v125;
            }
          }
        }

        return;
      case 0xC65Au:
        if (a3[1] != 3 || *(a3 + 1) != 1 || !sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
        {
          return;
        }

        data = sub_233751308(a3);
        __str.__r_.__value_.__r.__words[0] = a2;
        v15 = sub_233757C60((a1 + 1816), a2, &unk_233905F1C, &__str, &buf);
        goto LABEL_371;
      case 0xC65Bu:
        if (a3[1] != 3 || *(a3 + 1) != 1 || !sub_23379FDD4(a2, (a1 + 1184)) && !sub_23379FDD4(a2, (a1 + 1208)))
        {
          return;
        }

        data = sub_233751308(a3);
        __str.__r_.__value_.__r.__words[0] = a2;
        v15 = sub_233757C60((a1 + 1840), a2, &unk_233905F1C, &__str, &buf);
        goto LABEL_371;
      default:
        goto LABEL_316;
    }

    while (v138 != v135)
    {
      *(v137 + 8 * v135) = v11[v135] * *(v137 + 8 * v135);
      if (v136 == ++v135)
      {
        goto LABEL_523;
      }
    }

LABEL_522:
    if (!v11)
    {
      return;
    }

LABEL_523:
    __str.__r_.__value_.__l.__size_ = v11;
LABEL_606:
    operator delete(v11);
    return;
  }

  if (v7 == 277)
  {
    if (*(a2 + 23) < 0)
    {
      sub_233731FB8(&v269, *a2, *(a2 + 8));
    }

    else
    {
      v269 = *a2;
      v270 = *(a2 + 16);
    }

    v150 = sub_233735E3C(a1 + 512, &v269);
    sub_2338FA614(v150, a1, a3, &v269);
    return;
  }

  if (v7 == 339)
  {
    if (*(a2 + 23) < 0)
    {
      sub_233731FB8(&v267, *a2, *(a2 + 8));
    }

    else
    {
      v267 = *a2;
      v268 = *(a2 + 16);
    }

    v151 = sub_233735E3C(a1 + 512, &v267);
    v152 = a1 + 520 != v151 && *(v151 + 56) == 0;
    if (SHIBYTE(v268) < 0)
    {
      operator delete(v267);
    }

    if (a3[1] == 3 && v152)
    {
      memset(&__str, 0, sizeof(__str));
      v168 = sub_233751BE4(a1, a3, &__str);
      sub_2338FA764(&__str, v168, a1);
    }

    return;
  }

  if (v7 != 700)
  {
    goto LABEL_316;
  }

  if (*(a3 + 1) && a3[1] == 1)
  {
    sub_2337338AC(a1, &buf);
    LODWORD(v272.f64[0]) = sub_233749410(a3);
    sub_233726A8C(__p, &v272);
    sub_233725F08(&__str, &buf, __p, 0);
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_2337239E8(buf.__r_.__value_.__l.__size_);
    }

    v16 = sub_23374E3A4(a3);
    sub_233726154(&buf, v16);
    sub_2337338AC(a1, __p);
    sub_233725540(__p[0], buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    __p[0] = a2;
    v17 = (sub_2337577E4((a1 + 2432), a2, &unk_233905F1C, __p, &v272) + 7);
    if (v17 != &buf)
    {
      sub_2337550A4(v17, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_, buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]);
    }

    if (buf.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    goto LABEL_653;
  }
}

void sub_23379F86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_23379FDD4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t *sub_23379FE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_23374E3A4(a2);
  v21 = result;
  if (result < 5)
  {
    return result;
  }

  sub_2337338AC(a1, &v19);
  v6 = (*(*v19 + 16))(v19);
  if (v20)
  {
    sub_2337239E8(v20);
  }

  if (sub_233749410(a2) <= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    goto LABEL_19;
  }

  LODWORD(v17) = sub_233749410(a2);
  if (*sub_233753AB0(&v17, &v21) >= v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
LABEL_19:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2337338AC(a1, &v17);
  LODWORD(v16) = sub_233749410(a2);
  sub_233726A8C(&v14, &v16);
  sub_233725F08(&v19, &v17, &v14, 0);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  sub_233726154(&v17, v21);
  if (v18 - v17 != v21)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v12, "RawCameraException");
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2337338AC(a1, &v14);
  v7 = (*(*v14 + 32))(v14, v17, v18 - v17);
  v8 = v17;
  v9 = (v18 - v17);
  v10 = v7;
  if (v15)
  {
    sub_2337239E8(v15);
    v8 = v17;
  }

  if (v9 == v10)
  {
    v14 = v18 - v8;
    sub_233723C18(&v13, &v14);
    sub_233725138();
  }

  if (v8)
  {
    v18 = v8;
    operator delete(v8);
  }

  return sub_233725FD4(&v19);
}

void sub_2337A0340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  sub_233725FD4(&a14);
  if (a19)
  {
    sub_2337239E8(a19);
  }

  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  sub_233725FD4((v22 - 80));
  *(v22 - 80) = v21;
  sub_233723948((v22 - 80));
  _Unwind_Resume(a1);
}

void sub_2337A0480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  v4 = *(a1 + 1207);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 1192);
  }

  if (v3 == v4)
  {
    v7 = a1 + 1184;
    v8 = v2 >= 0 ? a2 : *a2;
    v9 = v5 >= 0 ? v7 : *(a1 + 1184);
    if (!memcmp(v8, v9, v3))
    {
      (*(*a1 + 368))(&v26, a1);
      v10 = v26;
      if (v27 != v26)
      {
        if (!v26)
        {
          return;
        }

        v27 = v26;
        goto LABEL_32;
      }

      v11 = *(a1 + 1234);
      if (v27)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v11 == 3)
      {
        sub_2337DFC28(3u, &v26);
        sub_2337DFC28(3u, v23);
        (*(*a1 + 336))(&v20, a1);
        (*(*a1 + 344))(&v17, a1);
        sub_2337A0714(a1, &v15);
        sub_2337A07E4(a1, &v13);
        sub_2337A08B4(v12, &v26, &v20, &v15, v23, &v17, &v13, (a1 + 1600), (a1 + 1288));
        if (*(&v13 + 1))
        {
          v14 = *(&v13 + 1);
          operator delete(*(&v13 + 1));
        }

        if (*(&v15 + 1))
        {
          v16 = *(&v15 + 1);
          operator delete(*(&v15 + 1));
        }

        if (v18)
        {
          v19 = v18;
          operator delete(v18);
        }

        if (v21)
        {
          v22 = v21;
          operator delete(v21);
        }

        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        v10 = v27;
        if (v27)
        {
          v28 = v27;
LABEL_32:
          operator delete(v10);
        }
      }
    }
  }
}

void sub_2337A0680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a24)
  {
    operator delete(a24);
  }

  v27 = *(v25 - 72);
  if (v27)
  {
    *(v25 - 64) = v27;
    operator delete(v27);
  }

  v28 = *(v25 - 40);
  if (v28)
  {
    *(v25 - 32) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337A0714@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 1234))
  {
    sub_2337A463C(a1, __p);
    v4 = sub_233735E3C(a1 + 1624, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (a1 + 1632 == v4)
    {
      return sub_2337DF868(a2);
    }

    else
    {
      sub_2337DF874(a2, v4 + 56);
    }
  }

  else
  {

    sub_2337DFC28(3u, a2);
  }

  return result;
}

void sub_2337A07C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337A07E4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 1234))
  {
    sub_2337A463C(a1, __p);
    v4 = sub_233735E3C(a1 + 1648, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (a1 + 1656 == v4)
    {
      return sub_2337DF868(a2);
    }

    else
    {
      sub_2337DF874(a2, v4 + 56);
    }
  }

  else
  {

    sub_2337DFC28(3u, a2);
  }

  return result;
}

void sub_2337A0898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A08B4(uint64_t a1, unsigned int *a2, _DWORD *a3, _DWORD *a4, unsigned int *a5, _DWORD *a6, _DWORD *a7, double *a8, void *a9)
{
  sub_2337DF868(&v96);
  sub_2337DF868(&v94);
  sub_2337DF868(&v92);
  sub_2337E032C(a2, a3, &v89);
  sub_2337E004C(&v96, &v89);
  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  sub_2337E032C(&v96, a4, &v89);
  sub_2337E004C(&v94, &v89);
  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (*a7 && a7[1])
  {
    sub_2337E032C(a5, a6, &v89);
    sub_2337E004C(&v96, &v89);
    if (__p)
    {
      v91 = __p;
      operator delete(__p);
    }

    sub_2337E032C(&v96, a7, &v89);
    sub_2337E004C(&v92, &v89);
    if (__p)
    {
      v91 = __p;
      operator delete(__p);
    }

    v89 = sub_2337DFCEC(&v94, 0);
    __p = v16;
    v17 = *sub_2337DFD6C(&v89, 0);
    v87 = sub_2337DFCEC(&v92, 0);
    v88 = v18;
    v19 = *sub_2337DFD6C(&v87, 0);
    v85 = sub_2337DFCEC(&v96, 0);
    v86 = v20;
    *sub_2337DFD6C(&v85, 0) = v19 * 1.4 + v17 * -0.4;
    v89 = sub_2337DFCEC(&v94, 0);
    __p = v21;
    v22 = *sub_2337DFD6C(&v89, 1u);
    v87 = sub_2337DFCEC(&v92, 0);
    v88 = v23;
    v24 = *sub_2337DFD6C(&v87, 1u);
    v85 = sub_2337DFCEC(&v96, 0);
    v86 = v25;
    *sub_2337DFD6C(&v85, 1u) = v24 * 1.4 + v22 * -0.4;
    v89 = sub_2337DFCEC(&v94, 0);
    __p = v26;
    v27 = *sub_2337DFD6C(&v89, 2u);
    v87 = sub_2337DFCEC(&v92, 0);
    v88 = v28;
    v29 = *sub_2337DFD6C(&v87, 2u);
    v85 = sub_2337DFCEC(&v96, 0);
    v86 = v30;
    *sub_2337DFD6C(&v85, 2u) = v29 * 1.4 + v27 * -0.4;
    v89 = sub_2337DFCEC(&v94, 1u);
    __p = v31;
    v32 = *sub_2337DFD6C(&v89, 0);
    v87 = sub_2337DFCEC(&v92, 1u);
    v88 = v33;
    v34 = *sub_2337DFD6C(&v87, 0);
    v85 = sub_2337DFCEC(&v96, 1u);
    v86 = v35;
    *sub_2337DFD6C(&v85, 0) = v34 * 1.4 + v32 * -0.4;
    v89 = sub_2337DFCEC(&v94, 1u);
    __p = v36;
    v37 = *sub_2337DFD6C(&v89, 1u);
    v87 = sub_2337DFCEC(&v92, 1u);
    v88 = v38;
    v39 = *sub_2337DFD6C(&v87, 1u);
    v85 = sub_2337DFCEC(&v96, 1u);
    v86 = v40;
    *sub_2337DFD6C(&v85, 1u) = v39 * 1.4 + v37 * -0.4;
    v89 = sub_2337DFCEC(&v94, 1u);
    __p = v41;
    v42 = *sub_2337DFD6C(&v89, 2u);
    v87 = sub_2337DFCEC(&v92, 1u);
    v88 = v43;
    v44 = *sub_2337DFD6C(&v87, 2u);
    v85 = sub_2337DFCEC(&v96, 1u);
    v86 = v45;
    *sub_2337DFD6C(&v85, 2u) = v44 * 1.4 + v42 * -0.4;
    v89 = sub_2337DFCEC(&v94, 2u);
    __p = v46;
    v47 = *sub_2337DFD6C(&v89, 0);
    v87 = sub_2337DFCEC(&v92, 2u);
    v88 = v48;
    v49 = *sub_2337DFD6C(&v87, 0);
    v85 = sub_2337DFCEC(&v96, 2u);
    v86 = v50;
    *sub_2337DFD6C(&v85, 0) = v49 * 1.4 + v47 * -0.4;
    v89 = sub_2337DFCEC(&v94, 2u);
    __p = v51;
    v52 = *sub_2337DFD6C(&v89, 1u);
    v87 = sub_2337DFCEC(&v92, 2u);
    v88 = v53;
    v54 = *sub_2337DFD6C(&v87, 1u);
    v85 = sub_2337DFCEC(&v96, 2u);
    v86 = v55;
    *sub_2337DFD6C(&v85, 1u) = v54 * 1.4 + v52 * -0.4;
    v89 = sub_2337DFCEC(&v94, 2u);
    __p = v56;
    v57 = *sub_2337DFD6C(&v89, 2u);
    v87 = sub_2337DFCEC(&v92, 2u);
    v88 = v58;
    v59 = *sub_2337DFD6C(&v87, 2u);
    v85 = sub_2337DFCEC(&v96, 2u);
    v86 = v60;
    *sub_2337DFD6C(&v85, 2u) = v59 * 1.4 + v57 * -0.4;
  }

  v61 = *a8;
  if (*a8 <= 0.0 || (v62 = a8[1], v62 <= 0.0))
  {
    v83 = 0;
  }

  else
  {
    v89 = 0x3FF0000000000000;
    sub_2337873B4(a9, 4uLL, &v89);
    v89 = sub_2337DFCEC(&v96, 0);
    __p = v63;
    v64 = *sub_2337DFD6C(&v89, 0);
    v87 = sub_2337DFCEC(&v96, 0);
    v88 = v65;
    v66 = *sub_2337DFD6C(&v87, 1u);
    v85 = sub_2337DFCEC(&v96, 0);
    v86 = v67;
    v68 = v61 * 100.0 / v62;
    v69 = (1.0 - v61 - v62) * 100.0 / v62;
    **a9 = v66 * 100.0 + v64 * v68 + *sub_2337DFD6C(&v85, 2u) * v69;
    v89 = sub_2337DFCEC(&v96, 1u);
    __p = v70;
    v71 = *sub_2337DFD6C(&v89, 0);
    v87 = sub_2337DFCEC(&v96, 1u);
    v88 = v72;
    v73 = *sub_2337DFD6C(&v87, 1u);
    v85 = sub_2337DFCEC(&v96, 1u);
    v86 = v74;
    *(*a9 + 8) = v73 * 100.0 + v71 * v68 + *sub_2337DFD6C(&v85, 2u) * v69;
    v89 = sub_2337DFCEC(&v96, 2u);
    __p = v75;
    v76 = *sub_2337DFD6C(&v89, 0);
    v87 = sub_2337DFCEC(&v96, 2u);
    v88 = v77;
    v78 = *sub_2337DFD6C(&v87, 1u);
    v85 = sub_2337DFCEC(&v96, 2u);
    v86 = v79;
    v80 = v78 * 100.0 + v76 * v68 + *sub_2337DFD6C(&v85, 2u) * v69;
    v81 = *a9;
    v82 = *(*a9 + 8);
    *v81 = v82 / **a9;
    *(v81 + 16) = v82 / v80;
    *(v81 + 8) = 0x3FF0000000000000;
    v83 = 1;
  }

  if (*(&v92 + 1))
  {
    v93 = *(&v92 + 1);
    operator delete(*(&v92 + 1));
  }

  if (*(&v94 + 1))
  {
    v95 = *(&v94 + 1);
    operator delete(*(&v94 + 1));
  }

  if (*(&v96 + 1))
  {
    v97 = *(&v96 + 1);
    operator delete(*(&v96 + 1));
  }

  return v83;
}

void sub_2337A0FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A10E4(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337A113C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A1158(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337A11B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337A11CC(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337A1224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337A1240(uint64_t a1)
{
  v2 = sub_233733ACC();
  sub_233753FB4(a1, 0, v11);
  v3 = sub_233735E3C(a1 + 872, v11);
  if (a1 + 880 == v3)
  {
    v6 = 0;
    v7 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 56);
    sub_233753FB4(a1, 0, __p);
    v5 = sub_233735E3C(a1 + 896, __p);
    v6 = a1 + 904 != v5;
    if (a1 + 904 == v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v5 + 56);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
    if (v6)
    {
      return v4 | (v7 << 32);
    }
  }

  else if (v6)
  {
    return v4 | (v7 << 32);
  }

  v7 = HIDWORD(v2);
  if ((*(*a1 + 536))(a1) == 1)
  {
    v4 = (*(*a1 + 440))(a1);
  }

  else
  {
    v4 = v2;
  }

  return v4 | (v7 << 32);
}

void sub_2337A13A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337A13D8(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 < 1 || v2 <= 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_233753FB4(a1, 0, v14);
  v6 = sub_233735E3C(a1 + 872, v14);
  if (a1 + 880 == v6)
  {
    v9 = 0;
    v10 = 0;
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 56);
    sub_233753FB4(a1, 0, __p);
    v8 = sub_233735E3C(a1 + 896, __p);
    v9 = a1 + 904 != v8;
    if (a1 + 904 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v8 + 56);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
    if (!v9)
    {
      return v3 | (v2 << 32);
    }
  }

  else if (!v9)
  {
    return v3 | (v2 << 32);
  }

  if (!v7 || !v10)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_2337238F0(v14, (v7 + v3 - 1) / v7 * v7, (v10 + v2 - 1) / v10 * v10);
  v3 = v14[0];
  v2 = HIDWORD(v14[0]);
  return v3 | (v2 << 32);
}

void sub_2337A1538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A1584(uint64_t a1)
{
  (*(*a1 + 440))(a1);
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 1408, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1416 == v2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 56);
  }
}

void sub_2337A1630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A164C(uint64_t a1)
{
  v2 = sub_233733A44(a1);
  sub_233753FB4(a1, 0, __p);
  v3 = sub_233735E3C(a1 + 1336, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1344 != v3)
  {
    v2 = *(v3 + 56);
  }

  sub_233753FB4(a1, 0, __p);
  sub_233735E3C(a1 + 1360, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337A1710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337A1730(uint64_t a1)
{
  v2 = (*(*a1 + 448))(a1);
  (*(*a1 + 440))(a1);
  sub_233753FB4(a1, 0, __p);
  v3 = sub_233735E3C(a1 + 1336, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1344 == v3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = *(v3 + 60);
    v5 = (*(v3 + 56) + v2);
    v6 = (v4 + HIDWORD(v2)) << 32;
  }

  sub_233753FB4(a1, 0, __p);
  sub_233735E3C(a1 + 1360, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6 | v5;
}

void sub_2337A1870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337A1890(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 1408, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 1416 != v2;
}

void sub_2337A18F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337A190C(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 1336, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 1344 != v2;
}

void sub_2337A196C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337A1988(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 1360, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 1368 != v2;
}

void sub_2337A19E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A1A04(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 656, __p);
  if (a1 + 664 == v2 || (v3 = *(v2 + 56), *(v2 + 64) == v3))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *v3;
    v5 = 1;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      return v4;
    }

    return sub_233733AFC();
  }

  if ((v5 & 1) == 0)
  {
    return sub_233733AFC();
  }

  return v4;
}

void sub_2337A1AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A1AC0(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 680, __p);
  if (a1 + 688 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2337A1B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A1B48(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 584, __p);
  v3 = v2;
  if (a1 + 592 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 56);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 592 == v3)
  {
    return sub_233733B0C();
  }

  return v4;
}

void sub_2337A1BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337A1BF0(char *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = (*(*a1 + 536))(a1);
  v35 = 0uLL;
  v36 = 0;
  v33 = 0;
  v34 = 0uLL;
  v9 = sub_233735E3C((a1 + 1432), a1 + 1184);
  if (a1 + 1440 == v9)
  {
    goto LABEL_33;
  }

  sub_233753FB4(a1, 0, v32);
  if (a1 + 880 == sub_233735E3C((a1 + 872), v32))
  {
    v10 = 0;
  }

  else
  {
    sub_233753FB4(a1, 0, v30);
    if (a1 + 904 == sub_233735E3C((a1 + 896), v30))
    {
      v10 = 0;
    }

    else
    {
      sub_233753FB4(a1, 0, v28);
      if (sub_2337921EC((a1 + 920), v28, &v35))
      {
        sub_233753FB4(a1, 0, &__p);
        v10 = sub_2337921EC((a1 + 944), &__p, &v33);
        if (v27 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v10 = 0;
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

  if ((v32[23] & 0x80000000) != 0)
  {
    operator delete(*v32);
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_19:
    LODWORD(v30[0]) = (*(*a1 + 424))(a1);
    sub_2337982AC(v32, 1uLL, v30);
    if (v35)
    {
      *(&v35 + 1) = v35;
      operator delete(v35);
    }

    v35 = *v32;
    v36 = *&v32[16];
    LODWORD(v30[0]) = (*(*a1 + 432))(a1);
    sub_2337982AC(v32, 1uLL, v30);
    if (v33)
    {
      *&v34 = v33;
      operator delete(v33);
    }

    v11 = *v32;
    v33 = *v32;
    v34 = *&v32[8];
    v12 = *&v32[8];
    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_17:
  v11 = v33;
  v12 = v34;
LABEL_24:
  if (*(&v35 + 1) - v35 != v12 - v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  (*(*a1 + 384))(v32, a1);
  v13 = (*(**v32 + 16))(*v32);
  if (*&v32[8])
  {
    sub_2337239E8(*&v32[8]);
  }

  if (*(&v35 + 1) != v35)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = *(v35 + 4 * v14);
      if (v13 <= v16 || (v17 = *(v33 + v14), v13 <= v17) || v13 < v17 + v16)
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v21, "RawCameraException");
        __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v14 = v15;
    }

    while ((*(&v35 + 1) - v35) >> 2 > v15++);
  }

LABEL_33:
  if (v8 <= 7)
  {
    if (v8 == 1)
    {
      (*(*a1 + 384))(v32, a1);
      v28[0] = (*(*a1 + 424))(a1);
      LOBYTE(v37) = (*(*a1 + 72))(a1);
      sub_2337A8DAC();
    }

    if (v8 == 7)
    {
      if (a1 + 1440 != v9)
      {
        sub_233735E3C((a1 + 1456), a1 + 1184);
        (*(*a1 + 384))(v30, a1);
        v37 = (*(*a1 + 424))(a1);
        v25 = sub_2337A13D8(a1, a2);
        v38[0] = (*(*a1 + 72))(a1);
        sub_2337A3898(a1, 8, v32);
        sub_2337A9324();
      }

      (*(*a1 + 384))(&__p, a1);
      v37 = (*(*a1 + 424))(a1);
      v25 = sub_2337A13D8(a1, a2);
      (*(*a1 + 216))(v32, a1);
      (*(*a1 + 224))(v30, a1);
      sub_2337A964C();
    }
  }

  else
  {
    switch(v8)
    {
      case 8:
        LODWORD(v37) = 0;
        LODWORD(v25) = 0;
        sub_233753FB4(a1, 0, v32);
        sub_23374C3A8(a1, v32, &v37);
        if ((v32[23] & 0x80000000) != 0)
        {
          operator delete(*v32);
        }

        sub_233753FB4(a1, 0, v32);
        sub_23374C438(a1, v32, 0, &v25);
        if ((v32[23] & 0x80000000) != 0)
        {
          operator delete(*v32);
        }

        v19 = (*(*a1 + 80))(a1);
        if (v25 == 16)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          (*(*a1 + 384))(v30, a1);
          v28[0] = (*(*a1 + 424))(a1);
          __p = sub_2337A13D8(a1, a2);
          v38[0] = (*(*a1 + 72))(a1);
          sub_2337A99F4(&v24, v30, v28, a2, &__p, a3, &v37, &v25, v38);
        }

        v23 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v23, "RawCameraException");
        __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      case 34892:
        if ((*(*a1 + 72))(a1))
        {
          v30[0] = 0;
          sub_233731694(v32, 4uLL, v30);
          sub_233753FB4(a1, 0, v30);
          (*(*a1 + 248))(a1, v30, v32, 0);
          if (v31 < 0)
          {
            operator delete(v30[0]);
          }

          (*(*a1 + 384))(&__p, a1);
          v25 = (*(*a1 + 424))(a1);
          v24 = sub_2337A13D8(a1, a2);
          sub_2337A3898(a1, 8, v30);
          sub_2337A9C48();
        }

        break;
      case 52546:
        if ((*(*a1 + 72))(a1))
        {
          (*(*a1 + 384))(v30, a1);
          v37 = (*(*a1 + 424))(a1);
          v25 = sub_2337A13D8(a1, a2);
          v38[0] = (*(*a1 + 72))(a1);
          sub_2337A3898(a1, 8, v32);
          sub_2337AA02C();
        }

        (*(*a1 + 384))(v28, a1);
        v37 = (*(*a1 + 424))(a1);
        v25 = sub_2337A13D8(a1, a2);
        sub_2337A3898(a1, 8, v32);
        LODWORD(__p) = sub_2337A3968(a1);
        LODWORD(v24) = sub_2337A39F0(a1);
        sub_2337AA3A0(v38, v28, &v37, a2, &v25, a3, v32, &__p, &v24);
    }
  }

  *a4 = 0;
  a4[1] = 0;
  if (v33)
  {
    *&v34 = v33;
    operator delete(v33);
  }

  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }
}

void sub_2337A35A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, std::__shared_weak_count *a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_2337239E8(a21);
  }

  if (a40)
  {
    operator delete(a40);
  }

  v43 = *(v41 - 144);
  if (v43)
  {
    *(v41 - 136) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2337A3898@<X0>(void **result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = (result + 271);
  do
  {
    v7 = &v6[3 * v5];
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      result = (*(**v8 + 16))();
      if (result == a2)
      {
        result = sub_233753C74(a3, v8);
      }

      ++v8;
    }

    ++v5;
  }

  while (v5 != 3);
  return result;
}

void sub_2337A3950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_233723948(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2337A3968(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 2456, __p);
  if (a1 + 2464 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2337A39D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A39F0(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 2480, __p);
  if (a1 + 2488 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2337A3A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A3A78(uint64_t a1)
{
  if ((*(*a1 + 536))(a1) == 34892)
  {
    return 0xFFFFLL;
  }

  sub_233753FB4(a1, 0, __p);
  v3 = sub_233735E3C(a1 + 240, __p);
  if (a1 + 248 == v3 || (v4 = *(v3 + 56), *(v3 + 64) == v4) || (v5 = *v4, *v4 < 0.0))
  {
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v5 <= 65535.0)
    {
      return v5;
    }
  }

  sub_233753FB4(a1, 0, __p);
  v6 = sub_233735E3C(a1 + 656, __p);
  if (a1 + 664 == v6 || (v7 = *(v6 + 56), *(v6 + 64) == v7) || (v8 = *v7, *v7 < 8))
  {
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 <= 0x10)
    {
      return (exp2(v8) + -1.0);
    }
  }

  return sub_233733AF4();
}

void sub_2337A3BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2337A3C0C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W3>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 1296);
  v7 = *(a1 + 1288);
  v8 = (v6 - v7) >> 3;
  if (v8 == a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;

    return sub_2337236E0(a3, v7, v6, v8);
  }

  else
  {
    v10[1] = v3;
    v10[2] = v4;
    v10[0] = 0x3FF0000000000000;
    return sub_233731694(a3, a2, v10);
  }
}

uint64_t *sub_2337A3C78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*(*a1 + 72))(a1) && (*(*a1 + 528))(a1) == 1)
  {
    v7 = 0x3FF0000000000000;
    return sub_233731694(a2, 3uLL, &v7);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = a1[156];
    v6 = a1[157];

    return sub_2337236E0(a2, v5, v6, (v6 - v5) >> 3);
  }
}

double sub_2337A3D58(double *a1)
{
  if (sub_233819A7C(a1 + 159))
  {
    return a1[159];
  }

  (*(*a1 + 368))(&v5, a1);
  v2 = v5;
  v3 = v6;
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v3 == v2)
  {
    return sub_2338191FC();
  }

  else
  {
    return a1[159];
  }
}

uint64_t sub_2337A3DF4(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:EXIF");
  v2 = sub_233735E3C(a1 + 192, __p);
  if (a1 + 200 == v2 || (v3 = *(v2 + 56), *(v2 + 64) == v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2337A3E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337A3E8C(uint64_t a1, uint64_t a2, char a3)
{
  sub_23372A488(__p, "IFD0:EXIF");
  v5 = sub_233733290(a1, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2337A3EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A3F14(uint64_t a1, uint64_t a2)
{
  sub_2337A0714(a1, &v15);
  if (v15)
  {
    v4 = DWORD1(v15) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *(a2 + 8) = sub_2337A420C(a1);
    sub_2337E004C((a2 + 16), &v15);
  }

  sub_2337A07E4(a1, &v13);
  if (v13 && DWORD1(v13))
  {
    *(a2 + 12) = sub_2337A4290(a1);
    sub_2337E004C((a2 + 48), &v13);
  }

  sub_2337A4314(a1, &v11);
  if (v11 && DWORD1(v11))
  {
    sub_2337E004C((a2 + 144), &v11);
  }

  sub_2337A43B0(a1, &v9);
  if (v9 && DWORD1(v9))
  {
    sub_2337E004C((a2 + 176), &v9);
  }

  sub_2337A444C(a1, &v6);
  sub_2337E004C((a2 + 216), &v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  sub_2337A44EC(a1, &v6);
  sub_2337E004C((a2 + 248), &v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  (*(*a1 + 336))(&v6, a1);
  sub_2337E004C((a2 + 80), &v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  (*(*a1 + 344))(&v6, a1);
  sub_2337E004C((a2 + 112), &v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  sub_2337A458C(a1, &v6);
  sub_233819CC0(a2, &v6);
  if (v6)
  {
    __p = v6;
    operator delete(v6);
  }

  if (*(&v9 + 1))
  {
    v10 = *(&v9 + 1);
    operator delete(*(&v9 + 1));
  }

  if (*(&v11 + 1))
  {
    v12 = *(&v11 + 1);
    operator delete(*(&v11 + 1));
  }

  if (*(&v13 + 1))
  {
    v14 = *(&v13 + 1);
    operator delete(*(&v13 + 1));
  }

  if (*(&v15 + 1))
  {
    v16 = *(&v15 + 1);
    operator delete(*(&v15 + 1));
  }

  return 1;
}

void sub_2337A4150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v21 = *(v19 - 72);
  if (v21)
  {
    *(v19 - 64) = v21;
    operator delete(v21);
  }

  v22 = *(v19 - 40);
  if (v22)
  {
    *(v19 - 32) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A420C(uint64_t a1)
{
  sub_2337A463C(a1, __p);
  v2 = sub_233735E3C(a1 + 1816, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1824 == v2)
  {
    return 17;
  }

  else
  {
    return *(v2 + 56);
  }
}

void sub_2337A4274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A4290(uint64_t a1)
{
  sub_2337A463C(a1, __p);
  v2 = sub_233735E3C(a1 + 1840, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1848 == v2)
  {
    return 21;
  }

  else
  {
    return *(v2 + 56);
  }
}

void sub_2337A42F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337A4314@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2337A463C(a1, __p);
  v4 = sub_233735E3C(a1 + 1768, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1776 == v4)
  {
    return sub_2337DF868(a2);
  }

  sub_2337DF874(a2, v4 + 56);
  return result;
}

void sub_2337A4394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337A43B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2337A463C(a1, __p);
  v4 = sub_233735E3C(a1 + 1792, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1800 == v4)
  {
    return sub_2337DF868(a2);
  }

  sub_2337DF874(a2, v4 + 56);
  return result;
}

void sub_2337A4430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2337A444C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2337A463C(a1, __p);
  v4 = sub_233735E3C(a1 + 1672, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1680 == v4)
  {
    return sub_2337DFC28(*(a1 + 1234), a2);
  }

  else
  {
    return sub_2337DF874(a2, v4 + 56);
  }
}

void sub_2337A44D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2337A44EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2337A463C(a1, __p);
  v4 = sub_233735E3C(a1 + 1696, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1704 == v4)
  {
    return sub_2337DFC28(*(a1 + 1234), a2);
  }

  else
  {
    return sub_2337DF874(a2, v4 + 56);
  }
}

void sub_2337A4570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337A458C@<W0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_233732BD0(a1 + 1864, (a1 + 1184), a2);
}

void sub_2337A45C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337A45E4(uint64_t a1)
{
  v2 = sub_233735E3C(a1 + 1888, (a1 + 1184));
  if (a1 + 1896 == v2)
  {
    return 0.0;
  }

  else
  {
    return *(v2 + 56);
  }
}

void *sub_2337A463C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 72))(a1);
  if (result && (result = sub_233735E3C(a1 + 2240, (a1 + 1184)), (a1 + 2248) == result) && (v5 = result, result = sub_233735E3C(a1 + 2240, (a1 + 1208)), v5 != result))
  {
    if ((*(a1 + 1231) & 0x80000000) == 0)
    {
      *a2 = *(a1 + 1208);
      v6 = *(a1 + 1224);
      goto LABEL_6;
    }

    v7 = *(a1 + 1208);
    v8 = *(a1 + 1216);
  }

  else
  {
    if ((*(a1 + 1207) & 0x80000000) == 0)
    {
      *a2 = *(a1 + 1184);
      v6 = *(a1 + 1200);
LABEL_6:
      *(a2 + 16) = v6;
      return result;
    }

    v7 = *(a1 + 1184);
    v8 = *(a1 + 1192);
  }

  return sub_233731FB8(a2, v7, v8);
}

double *sub_2337A4730@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_233735E3C(a1 + 1720, (a1 + 1184));
  if (a1 + 1728 == v4)
  {
    v6 = *(a1 + 1234);

    return sub_2337DFC28(v6, a2);
  }

  else
  {

    return sub_2337DF874(a2, v4 + 56);
  }
}

double *sub_2337A47A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_233735E3C(a1 + 1744, (a1 + 1184));
  if (a1 + 1752 == v4)
  {
    v6 = *(a1 + 1234);

    return sub_2337DFC28(v6, a2);
  }

  else
  {

    return sub_2337DF874(a2, v4 + 56);
  }
}

uint64_t sub_2337A4820(uint64_t a1)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_2337338AC(a1, &v12);
  v2 = v12;
  v10 = 10;
  sub_233726998(&v11, &v10);
  v3 = sub_2337257E8(v2, &v11, &__p);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  v4 = SHIBYTE(v16);
  if (v3)
  {
    if (SHIBYTE(v16) < 0)
    {
      if (v15 != 9)
      {
LABEL_14:
        operator delete(__p);
        return 0;
      }

      p_p = __p;
    }

    else
    {
      if (SHIBYTE(v16) != 9)
      {
        return 0;
      }

      p_p = &__p;
    }

    v6 = *p_p;
    v7 = p_p[8];
    if (v6 == 0x4F6920656C707041 && v7 == 83)
    {
      *(a1 + 1232) = 257;
      if ((v4 & 0x80000000) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_14;
  }

  return 0;
}

void sub_2337A4904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_2337A4970(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 1956) == 1)
  {
    return *(a1 + 1952);
  }

  return result;
}

BOOL sub_2337A4988@<W0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_233732BD0(a1 + 1928, (a1 + 1184), a2);
}

void sub_2337A49C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337A49E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_23372A488(&__p, "dng");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "adobe");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2337357BC(a1, &__p);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*(*a1 + 72))(a1))
  {
    sub_23372A488(&__p, "linear");
    sub_233735478(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2337A4AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_2337A4B38(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = a3;
  v8 = &v43;
  (*(*a1 + 216))(&v43, a1);
  v9 = SHIBYTE(v44);
  v10 = *(&v43 + 1);
  v11 = v43;
  if (v44 < 0)
  {
    v8 = v43;
  }

  if (v44 >= 0)
  {
    v10 = SHIBYTE(v44);
  }

  v12 = v8 + v10;
  if (v10 >= 10)
  {
    v13 = v8;
    do
    {
      v14 = memchr(v13, 72, v10 - 9);
      if (!v14)
      {
        break;
      }

      if (*v14 == 0x6C626C6573736148 && *(v14 + 4) == 25697)
      {
        goto LABEL_14;
      }

      v13 = (v14 + 1);
      v10 = v12 - v13;
    }

    while (v12 - v13 > 9);
  }

  v14 = v12;
LABEL_14:
  v17 = v14 == v12 || v14 - v8 == -1;
  if (v9 < 0)
  {
    operator delete(v11);
    if (v17)
    {
LABEL_22:
      v18 = a2[1];
      *a4 = *a2;
      a4[1] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      goto LABEL_47;
    }
  }

  else if (v17)
  {
    goto LABEL_22;
  }

  v19 = (*(*a1 + 440))(a1);
  sub_2337A0714(a1, &v43);
  sub_2337DF9CC(v40, 3u, 3u, 0.473895, v20, v21, v22, v23, v24, 0xBFB7DAFF9576F52ALL);
  v30 = HIDWORD(v19) - 5585;
  if ((v19 - 7391) >= 0xFFFFFEFF && v30 >= 0xFFFFFEFF)
  {
    sub_2337DF874(v37, v40);
    v31 = sub_2337E0CF0(&v43, v37, 0.0001);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
      if (v31)
      {
LABEL_29:
        sub_2338E9198(@"dng.adobe.HasselbladH3D-39", a4);
        goto LABEL_38;
      }
    }

    else if (v31)
    {
      goto LABEL_29;
    }
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  sub_2337DF9CC(v40, 3u, 3u, 0.806794, v25, v26, v27, v28, v29, 0xBFD2EFAA4766C6DELL);
  if ((v19 - 4225) < 0xFFFFFEFF || v30 < 0xFFFFFEFF)
  {
    goto LABEL_41;
  }

  sub_2337DF874(v34, v40);
  v32 = sub_2337E0CF0(&v43, v34, 0.0001);
  if (!v35)
  {
    if (v32)
    {
      goto LABEL_37;
    }

LABEL_41:
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    v33 = a2[1];
    *a4 = *a2;
    a4[1] = v33;
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_45;
  }

  v36 = v35;
  operator delete(v35);
  if ((v32 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_37:
  sub_2338E9198(@"dng.adobe.HasselbladCF", a4);
LABEL_38:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

LABEL_45:
  if (*(&v43 + 1))
  {
    v44 = *(&v43 + 1);
    operator delete(*(&v43 + 1));
  }

LABEL_47:
}

void sub_2337A4F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  v31 = *(v29 - 112);
  if (v31)
  {
    *(v29 - 104) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_2337A4FB8(void **a1@<X0>, unint64_t *a2@<X8>)
{
  sub_2337A3898(a1, 9, &v27);
  v3 = v27;
  v4 = v28;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3 != v4)
  {
    for (i = 0; i < (v28 - v27) >> 4; ++i)
    {
      v6 = v3 + 16 * i;
      if (*v6)
      {
        v7 = __dynamic_cast(*v6, &unk_2849027A8, &unk_28491F0E8, 0);
        if (v7)
        {
          v8 = *(v6 + 8);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_9;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = 0;
LABEL_9:
      memset(v26, 0, sizeof(v26));
      v9 = vsub_s32(*(v7 + 20), *(v7 + 12));
      v10 = *(v7 + 12);
      v11.i64[0] = v9.u32[0];
      v11.i64[1] = v9.u32[1];
      v12 = vcvtq_f64_u64(v11);
      *v20 = HIDWORD(*(v7 + 12));
      v20[1] = *&v10;
      v13 = vextq_s8(*(v7 + 72), *(v7 + 72), 8uLL);
      v21 = vextq_s8(v12, v12, 8uLL);
      v22 = v13;
      v14 = *(v7 + 44);
      *v13.i8 = vadd_s32(v14, -1);
      v11.i64[0] = v13.u32[0];
      v11.i64[1] = v13.u32[1];
      v15 = vmulq_f64(*(v7 + 56), vcvtq_f64_u64(v11));
      v11.i64[0] = v14.u32[0];
      v11.i64[1] = v14.u32[1];
      v16 = vcvtq_f64_u64(v11);
      v23 = vextq_s8(v15, v15, 8uLL);
      v24 = vextq_s8(v16, v16, 8uLL);
      v17 = *(v7 + 28);
      v25 = vextq_s8(vrev64q_s32(v17), v17, 8uLL);
      if (v17.i32[1])
      {
        v18 = 0;
        do
        {
          sub_233816780(v7, v18, __p);
          sub_2337A521C(v26, __p);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          ++v18;
        }

        while (v18 < *(v7 + 8));
      }

      sub_2337A535C(a2, v20);
      __p[0] = v26;
      sub_2337A6DEC(__p);
      if (v8)
      {
        sub_2337239E8(v8);
      }

      v3 = v27;
    }
  }

  v20[0] = &v27;
  sub_233723948(v20);
}

void sub_2337A51C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2337A6DEC(&__p);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  sub_2337A70E0(&a12);
  a12 = v13 - 112;
  sub_233723948(&a12);
  _Unwind_Resume(a1);
}

const void **sub_2337A521C(const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2337235BC();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_2337A6910(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_2337A6968(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

uint64_t sub_2337A535C(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2337A6A78(a1, a2);
  }

  else
  {
    sub_2337A6A00(a1, a2);
    result = v3 + 120;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2337A53B0(_BYTE *a1)
{
  if (a1[2112] & 1) != 0 || (a1[1972])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[1988];
  }

  return v1 & 1;
}

uint64_t *sub_2337A53D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 1972) & 1) == 0 && (*(a1 + 1988) & 1) == 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v4 = (a1 + 1992);
  if ((*(a1 + 2112) & 1) == 0)
  {
    if (*(a1 + 1988) != 1)
    {
      if ((*(a1 + 1972) & 1) == 0)
      {
        goto LABEL_132;
      }

      v43 = *(a1 + 1960);
      LODWORD(v44) = *(a1 + 1968);
      sub_2337338AC(a1, &v50);
      LODWORD(__src[0]) = sub_233749410(&v43);
      sub_233726A8C(v71, __src);
      sub_233725F08(v72, &v50, v71, 0);
      if (v51 != 0.0)
      {
        sub_2337239E8(*&v51);
      }

      sub_2337338AC(a1, &v50);
      v10 = (*(*a1 + 88))(a1);
      sub_233735A18(v71, &v50, v10);
      if (v51 != 0.0)
      {
        sub_2337239E8(*&v51);
      }

      LOBYTE(v61) = 0;
      v62 = 0;
      LOBYTE(v63) = 0;
      v64 = 0;
      LOBYTE(v65) = 0;
      v66 = 0;
      LOBYTE(v67) = 0;
      v68 = 0;
      v70 = 0;
      v69 = 0uLL;
      sub_2337338AC(a1, __src);
      v11 = sub_233725614(__src[0]);
      LODWORD(v50) = v11;
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v12 = sub_233725614(__src[0]);
      HIDWORD(v50) = v12;
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v51 = sub_23372574C(__src[0]);
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v52 = sub_23372574C(__src[0]);
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v53 = sub_23372574C(__src[0]);
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v54 = sub_23372574C(__src[0]);
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v13 = sub_233725614(__src[0]);
      v55 = v13;
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v56 = sub_233725730(__src[0]);
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v57 = sub_233725730(__src[0]);
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v58 = sub_233725730(__src[0]);
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v59 = sub_233725730(__src[0]);
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      sub_2337338AC(a1, __src);
      v60 = sub_233725730(__src[0]);
      if (__src[1])
      {
        sub_2337239E8(__src[1]);
      }

      v73 = v12 * v11 * v13;
      if ((*(a1 + 1972) & 1) == 0)
      {
        sub_233728FA8();
      }

      if (*(a1 + 1964) - 64 != 4 * v12 * v11 * v13)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      sub_2337338AC(a1, &__p);
      v14 = __p;
      sub_233723C18(&v49, &v73);
      sub_233756CC4(v14, &v49, __src);
      v69 = *__src;
      v70 = v48;
      __src[1] = 0;
      v48 = 0;
      __src[0] = 0;
      if (v46)
      {
        sub_2337239E8(v46);
      }

      sub_2337A612C(a1 + 1992, &v50);
      goto LABEL_124;
    }

    v73 = *(a1 + 1976);
    v74 = *(a1 + 1984);
    sub_2337338AC(a1, &v50);
    LODWORD(__src[0]) = sub_233749410(&v73);
    sub_233726A8C(v71, __src);
    sub_233725F08(v72, &v50, v71, 0);
    if (v51 != 0.0)
    {
      sub_2337239E8(*&v51);
    }

    sub_2337338AC(a1, &v50);
    v5 = (*(*a1 + 88))(a1);
    sub_233735A18(v71, &v50, v5);
    if (v51 != 0.0)
    {
      sub_2337239E8(*&v51);
    }

    LOBYTE(v61) = 0;
    v62 = 0;
    LOBYTE(v63) = 0;
    v64 = 0;
    LOBYTE(v65) = 0;
    v66 = 0;
    LOBYTE(v67) = 0;
    v68 = 0;
    v70 = 0;
    v69 = 0uLL;
    sub_2337338AC(a1, __src);
    LODWORD(v50) = sub_233725614(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    HIDWORD(v50) = sub_233725614(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v51 = sub_23372574C(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v52 = sub_23372574C(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v53 = sub_23372574C(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v54 = sub_23372574C(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v55 = sub_233725614(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v56 = sub_233725730(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v57 = sub_233725730(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v58 = sub_233725730(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v59 = sub_233725730(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v60 = sub_233725730(__src[0]);
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v61 = sub_233725614(__src[0]);
    v62 = 1;
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v63 = sub_233725730(__src[0]);
    v64 = 1;
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v65 = sub_233725730(__src[0]);
    v66 = 1;
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    sub_2337338AC(a1, __src);
    v67 = sub_233725730(__src[0]);
    v68 = 1;
    if (__src[1])
    {
      sub_2337239E8(__src[1]);
    }

    if ((v64 & 1) == 0)
    {
      sub_233728FA8();
    }

    if (v63 < 0.25 || v63 > 4.0)
    {
      v6 = 4.0;
      if (v63 <= 4.0)
      {
        v6 = v63;
      }

      if (v63 >= 0.25)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0.25;
      }

      v63 = v7;
      v64 = 1;
    }

    v8 = SHIDWORD(v50) * v50 * v55;
    v49 = v8;
    if ((v62 & 1) == 0)
    {
      sub_233728FA8();
    }

    if ((v61 - 1) >= 3)
    {
      v9 = 1;
    }

    else
    {
      v9 = qword_233905928[v61 - 1];
    }

    if ((*(a1 + 1988) & 1) == 0)
    {
      sub_233728FA8();
    }

    if (*(a1 + 1980) - 80 != v9 * v8)
    {
      v41 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v41, "RawCameraException");
      __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v61 == 3)
    {
      sub_2337338AC(a1, &__p);
      v15 = __p;
      sub_233723C18(&v43, &v49);
      sub_233756CC4(v15, &v43, __src);
      if (v69)
      {
        *(&v69 + 1) = v69;
        operator delete(v69);
      }

      v69 = *__src;
      v70 = v48;
      __src[1] = 0;
      v48 = 0;
      __src[0] = 0;
      if (v46)
      {
        sub_2337239E8(v46);
      }

LABEL_123:
      sub_2337A612C(a1 + 1992, &v50);
LABEL_124:
      if (v69)
      {
        *(&v69 + 1) = v69;
        operator delete(v69);
      }

      sub_233735A90(v71);
      sub_233725FD4(v72);
      goto LABEL_127;
    }

    sub_233756D58(__src, v8);
    if ((v66 & 1) == 0)
    {
      sub_233728FA8();
    }

    if (v68 != 1 || (v62 & 1) == 0)
    {
      sub_233728FA8();
    }

    if (v61 == 2)
    {
      sub_2337338AC(a1, &v43);
      v30 = v43;
      sub_233723C18(&v42, &v49);
      sub_2337562F4(v30, &v42, &__p);
      if (v44)
      {
        sub_2337239E8(v44);
      }

      v31 = v49;
      v20 = __p;
      if (v49)
      {
        v32 = __src[0];
        v33 = __p;
        do
        {
          v34 = *v33++;
          *v32++ = v34;
          --v31;
        }

        while (v31);
        goto LABEL_120;
      }
    }

    else
    {
      v16 = v65;
      v17 = v67;
      if (v61 == 1)
      {
        sub_2337338AC(a1, &v43);
        v24 = v43;
        sub_233723C18(&v42, &v49);
        sub_2337562F4(v24, &v42, &__p);
        if (v44)
        {
          sub_2337239E8(v44);
        }

        v25 = v49;
        v26 = __src[0];
        if (v49)
        {
          v27 = __p;
          v28 = __src[0];
          do
          {
            v29 = *v27++;
            *v28++ = v16 + ((v29 / 65535.0) * (v17 - v16));
            --v25;
          }

          while (v25);
        }

        sub_233723454(&v69, v26, __src[1], (__src[1] - v26) >> 2);
        v20 = __p;
      }

      else
      {
        if (v61)
        {
          goto LABEL_121;
        }

        sub_2337338AC(a1, &v43);
        v18 = v43;
        sub_233723C18(&v42, &v49);
        sub_23374AB5C(v18, &v42, &__p);
        if (v44)
        {
          sub_2337239E8(v44);
        }

        v19 = v49;
        v20 = __p;
        if (v49)
        {
          v21 = __src[0];
          v22 = __p;
          do
          {
            v23 = *v22++;
            *v21++ = v16 + ((v23 / 255.0) * (v17 - v16));
            --v19;
          }

          while (v19);
LABEL_120:
          v46 = v20;
          operator delete(v20);
LABEL_121:
          sub_233723454(&v69, __src[0], __src[1], (__src[1] - __src[0]) >> 2);
          if (__src[0])
          {
            __src[1] = __src[0];
            operator delete(__src[0]);
          }

          goto LABEL_123;
        }
      }
    }

    if (!v20)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_127:
  if ((*(a1 + 2112) & 1) == 0)
  {
LABEL_132:
    sub_233728FA8();
  }

  v35 = *(a1 + 2040);
  *(a2 + 32) = *(a1 + 2024);
  *(a2 + 48) = v35;
  *(a2 + 64) = *(a1 + 2056);
  *(a2 + 77) = *(a1 + 2069);
  v36 = *(a1 + 2008);
  *a2 = *v4;
  *(a2 + 16) = v36;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v37 = *(a1 + 2088);
  v38 = *(a1 + 2096);
  *(a2 + 96) = 0;
  return sub_233729070((a2 + 96), v37, v38, (v38 - v37) >> 2);
}

void sub_2337A5EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  v24 = *(v21 + 96);
  if (v24)
  {
    *(v21 + 104) = v24;
    operator delete(v24);
  }

  sub_233735A90((v22 - 144));
  sub_233725FD4((v22 - 120));
  _Unwind_Resume(a1);
}

uint64_t sub_2337A612C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v6 = *(a2 + 48);
  v5 = *(a2 + 64);
  v7 = *(a2 + 32);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v6;
  *(a1 + 64) = v5;
  *(a1 + 32) = v7;
  if (v3 == 1)
  {
    if (a1 != a2)
    {
      sub_233723454((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
    }
  }

  else
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    sub_233729070((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
    *(a1 + 120) = 1;
  }

  return a1;
}

BOOL sub_2337A61CC(uint64_t a1)
{
  sub_2337A463C(a1, __p);
  v2 = sub_233735E3C(a1 + 2120, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 2128 != v2;
}

void sub_2337A6228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337A6244(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2337A463C(a1, __p);
  v4 = sub_233735E3C(a1 + 2120, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1 + 2128 != v4)
  {
    sub_2337236E0(a2, *(v4 + 56), *(v4 + 64), (*(v4 + 64) - *(v4 + 56)) >> 3);
  }
}

void sub_2337A62D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337A62F0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2337A463C(a1, __p);
  v4 = sub_233735E3C(a1 + 2144, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1 + 2152 != v4)
  {
    sub_2337236E0(a2, *(v4 + 56), *(v4 + 64), (*(v4 + 64) - *(v4 + 56)) >> 3);
  }
}

void sub_2337A6380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337A639C(uint64_t a1)
{
  sub_2337A463C(a1, __p);
  v2 = sub_233735E3C(a1 + 2240, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 2248 != v2)
  {
    return *(v2 + 56);
  }

  sub_233753FB4(a1, 0, v8);
  v4 = sub_233735E3C(a1 + 512, v8);
  v5 = a1 + 520 != v4 && *(v4 + 56) == 0;
  if (v9 < 0)
  {
    operator delete(v8[0]);
    if (v5)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

LABEL_10:
  sub_233753FB4(a1, 0, __p);
  v6 = sub_233735E3C(a1 + 2240, __p);
  if (v2 == v6)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v6 + 56);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2337A64A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_2337A64DC(uint64_t a1)
{
  sub_233753FB4(a1, 0, &__p);
  v2 = sub_233735E3C(a1 + 1576, &__p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 1584 == v2)
  {
    v3 = 0;
  }

  else
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    sub_233728FF4(&__p, *(v2 + 56), *(v2 + 64), (*(v2 + 64) - *(v2 + 56)) >> 1);
    v3 = sub_233755CB8((v9 - __p) >> 1);
    v4 = __p;
    v5 = v9;
    if (__p != v9)
    {
      do
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v4];
        [v3 addObject:v6];

        ++v4;
      }

      while (v4 != v5);
      v4 = __p;
    }

    if (v4)
    {
      v9 = v4;
      operator delete(v4);
    }
  }

  return v3;
}

void sub_2337A65F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2337A6658(uint64_t a1)
{
  sub_2337A715C(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_2337A66A0(uint64_t *result, unsigned int *a2, unsigned int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_23372375C(result, a4);
  }

  return result;
}

void sub_2337A66FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337A6718(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_2337A6858(a1);
    if (!(a4 >> 60))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_233724F10(a1, v11);
    }

    sub_2337235BC();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 4)
  {
    sub_2337A6898(&v18, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_2337239E8(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_2337A6898(&v17, a2, (a2 + v12), v8);
    *(a1 + 8) = sub_233724F94(a1, (a2 + v12), a3, *(a1 + 8));
  }
}

void sub_2337A6858(void **a1)
{
  if (*a1)
  {
    sub_23372399C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_2337A6898(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_2337239E8(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_2337A6910(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2337236AC();
}

uint64_t sub_2337A6968(uint64_t a1)
{
  sub_2337A69A0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2337A69A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t *sub_2337A6A00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 96) = 0;
  result = sub_2337A6BDC((v3 + 96), *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  *(a1 + 8) = v3 + 120;
  return result;
}

uint64_t sub_2337A6A78(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_2337235BC();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_2337A6E98(a1, v6);
  }

  v7 = 120 * v2;
  v18 = 0;
  v19 = v7;
  v20 = 120 * v2;
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v10;
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  v11 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v11;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 96) = 0;
  sub_2337A6BDC((120 * v2 + 96), *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  *&v20 = v20 + 120;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  sub_2337A6EF0(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_2337A7054(&v18);
  return v17;
}

void sub_2337A6BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2337A7054(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2337A6BDC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2337A6C64(result, a4);
  }

  return result;
}

void sub_2337A6C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_2337A6DEC(&a9);
  _Unwind_Resume(a1);
}

void sub_2337A6C64(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2337A6910(a1, a2);
  }

  sub_2337235BC();
}

uint64_t *sub_2337A6CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_233729070(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_2337A6D64(v8);
  return v4;
}

uint64_t sub_2337A6D64(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2337A6D9C(a1);
  }

  return a1;
}

void sub_2337A6D9C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_2337A6DEC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2337A6E40(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2337A6E40(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_2337A6E98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_2337236AC();
}

uint64_t sub_2337A6EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 80);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 80) = v10;
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = 0;
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      v6 += 120;
      a4 += 120;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      v16 = (v5 + 96);
      sub_2337A6DEC(&v16);
      v5 += 120;
    }
  }

  return sub_2337A6FC4(v12);
}

uint64_t sub_2337A6FC4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2337A6FFC(a1);
  }

  return a1;
}

void sub_2337A6FFC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 120;
      v4 = (v1 - 24);
      sub_2337A6DEC(&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_2337A7054(void **a1)
{
  sub_2337A7088(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2337A7088(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    v4 = (i - 24);
    sub_2337A6DEC(&v4);
  }
}

void sub_2337A70E0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 120;
        v7 = (v4 - 24);
        sub_2337A6DEC(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_2337A715C(uint64_t a1)
{
  *a1 = &unk_284909390;
  sub_233735DD8(a1 + 2480, *(a1 + 2488));
  sub_233735DD8(a1 + 2456, *(a1 + 2464));
  sub_233735D24(a1 + 2432, *(a1 + 2440));
  sub_233755A84(a1 + 2408, *(a1 + 2416));
  sub_233755A84(a1 + 2384, *(a1 + 2392));
  sub_233735DD8(a1 + 2360, *(a1 + 2368));
  sub_233735DD8(a1 + 2336, *(a1 + 2344));
  sub_233735DD8(a1 + 2312, *(a1 + 2320));
  sub_233735DD8(a1 + 2288, *(a1 + 2296));
  sub_233735DD8(a1 + 2264, *(a1 + 2272));
  sub_233735DD8(a1 + 2240, *(a1 + 2248));
  for (i = 2216; i != 2144; i -= 24)
  {
    v7 = (a1 + i);
    sub_233723948(&v7);
  }

  sub_233735D24(a1 + 2144, *(a1 + 2152));
  sub_233735D24(a1 + 2120, *(a1 + 2128));
  if (*(a1 + 2112) == 1)
  {
    v3 = *(a1 + 2088);
    if (v3)
    {
      *(a1 + 2096) = v3;
      operator delete(v3);
    }
  }

  sub_233735D24(a1 + 1928, *(a1 + 1936));
  sub_233735DD8(a1 + 1888, *(a1 + 1896));
  sub_233735D24(a1 + 1864, *(a1 + 1872));
  sub_233735DD8(a1 + 1840, *(a1 + 1848));
  sub_233735DD8(a1 + 1816, *(a1 + 1824));
  sub_2337A73EC(a1 + 1792, *(a1 + 1800));
  sub_2337A73EC(a1 + 1768, *(a1 + 1776));
  sub_2337A73EC(a1 + 1744, *(a1 + 1752));
  sub_2337A73EC(a1 + 1720, *(a1 + 1728));
  sub_2337A73EC(a1 + 1696, *(a1 + 1704));
  sub_2337A73EC(a1 + 1672, *(a1 + 1680));
  sub_2337A73EC(a1 + 1648, *(a1 + 1656));
  sub_2337A73EC(a1 + 1624, *(a1 + 1632));
  sub_233735D24(a1 + 1576, *(a1 + 1584));
  sub_233735D24(a1 + 1552, *(a1 + 1560));
  sub_233735DD8(a1 + 1528, *(a1 + 1536));
  sub_233735DD8(a1 + 1504, *(a1 + 1512));
  sub_233735D24(a1 + 1480, *(a1 + 1488));
  sub_233735DD8(a1 + 1456, *(a1 + 1464));
  sub_233735DD8(a1 + 1432, *(a1 + 1440));
  sub_233735DD8(a1 + 1408, *(a1 + 1416));
  sub_233735DD8(a1 + 1384, *(a1 + 1392));
  sub_233735DD8(a1 + 1360, *(a1 + 1368));
  sub_233735DD8(a1 + 1336, *(a1 + 1344));
  sub_233755A84(a1 + 1312, *(a1 + 1320));
  v4 = *(a1 + 1288);
  if (v4)
  {
    *(a1 + 1296) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 1248);
  if (v5)
  {
    *(a1 + 1256) = v5;
    operator delete(v5);
  }

  if (*(a1 + 1231) < 0)
  {
    operator delete(*(a1 + 1208));
  }

  if (*(a1 + 1207) < 0)
  {
    operator delete(*(a1 + 1184));
  }

  return sub_2337557B4(a1);
}

void sub_2337A73EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2337A73EC(a1, *a2);
    sub_2337A73EC(a1, a2[1]);
    sub_2337A7448((a2 + 4));

    operator delete(a2);
  }
}

void sub_2337A7448(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *sub_2337A7544(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909700;
  sub_233798C70((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_2337A75CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909700;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A7648(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_233757640(a1, &v7, a2);
  if (!v5)
  {
    sub_2337A76F0();
  }

  return v5;
}

uint64_t sub_2337A777C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2337A7448(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_2337A77C8(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_233731FB8(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  sub_2337DF868(__dst + 24);
  return __dst;
}

void sub_2337A7820(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337A783C(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_233757640(a1, &v6, a2);
  if (!result)
  {
    sub_2337A78D4();
  }

  return result;
}

void sub_2337A7970(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_233757780(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_2337A7A00(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909750;
  sub_23384FCD0((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A7A80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A7B70(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849097A0;
  sub_2337DEE38((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A7BF0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849097A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A7CE0(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849097F0;
  sub_2338F3224((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A7D60(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849097F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A7E50(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909840;
  sub_233822024((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A7ED0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A7FC0(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909890;
  sub_2338434D0((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A8040(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A8130(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849098E0;
  sub_2337FFDD4(a1 + 6, *a2, a3);
  return a1;
}

void sub_2337A81B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849098E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A82A0(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909930;
  sub_2338C8138((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A8320(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A8410(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909980;
  sub_2338D0D18((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A8490(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A8580(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849099D0;
  sub_23381677C((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A8600(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849099D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A86F0(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909A20;
  sub_2337F3F2C((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A8770(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909A20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A8860(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909A70;
  sub_23386D424((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A88E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A89D0(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909AC0;
  sub_233860FD8((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A8A50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A8B40(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909B10;
  sub_233786D50((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A8BC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A8CB0(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909B60;
  sub_2337D8CBC((a1 + 3), *a2, a3);
  return a1;
}

void sub_2337A8D30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A8E60(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909BB0;
  sub_2337A8F60((a1 + 3), a2, *a3, a4, a5, *a6);
  return a1;
}

void sub_2337A8EE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909BB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337A8F60(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5, char a6)
{
  v8 = sub_2337AD9D8(a1, a2, a3, a4, a5);
  *(v8 + 192) = 0;
  *(v8 + 200) = 0;
  *(v8 + 216) = 0;
  *(v8 + 208) = 0;
  *(v8 + 220) = 1;
  *v8 = &unk_28491E000;
  *(v8 + 296) = 0;
  *(v8 + 304) = 0;
  *(v8 + 288) = 0;
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0u;
  *(v8 + 256) = 0u;
  *(v8 + 272) = 0;
  *(v8 + 312) = a6;
  *(v8 + 313) = 0;
  sub_2337A916C((v8 + 288), 0x10000uLL);
  v10 = *(a1 + 288);
  v9 = *(a1 + 296);
  if (v10 != v9)
  {
    v11 = 0;
    v12 = (v9 - v10 - 2) >> 1;
    v13 = vdupq_n_s64(v12);
    v14 = (v12 & 0x7FFFFFFFFFFFFFF8) + 8;
    v15 = (v10 + 8);
    do
    {
      v16 = vdupq_n_s64(v11);
      v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_233903BB0)));
      if (vuzp1_s8(vuzp1_s16(v17, *v13.i8), *v13.i8).u8[0])
      {
        *(v15 - 4) = v11;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v13), *&v13).i8[1])
      {
        *(v15 - 3) = v11 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_233903BE0)))), *&v13).i8[2])
      {
        *(v15 - 2) = v11 | 2;
        *(v15 - 1) = v11 | 3;
      }

      v18 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_233903BD0)));
      if (vuzp1_s8(*&v13, vuzp1_s16(v18, *&v13)).i32[1])
      {
        *v15 = v11 | 4;
      }

      if (vuzp1_s8(*&v13, vuzp1_s16(v18, *&v13)).i8[5])
      {
        v15[1] = v11 | 5;
      }

      if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_233903BC0))))).i8[6])
      {
        v15[2] = v11 | 6;
        v15[3] = v11 | 7;
      }

      v11 += 8;
      v15 += 8;
    }

    while (v14 != v11);
  }

  return a1;
}

void sub_2337A9138(_Unwind_Exception *a1)
{
  v3 = *(v1 + 288);
  if (v3)
  {
    *(v1 + 296) = v3;
    operator delete(v3);
  }

  sub_2338FA8A4((v1 + 256), (v1 + 232), v1);
  sub_2337A919C(v1);
  _Unwind_Resume(a1);
}

void sub_2337A916C(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    sub_2337A91FC(result, a2 - v2);
  }
}

void *sub_2337A919C(void *a1)
{
  *a1 = &unk_28491FFD8;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  return sub_233723A54(a1);
}

void sub_2337A91FC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_2337235BC();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2337262C8(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *sub_2337A93F0(void *a1, void *a2, unint64_t *a3, void *a4, void *a5, _OWORD *a6, char *a7, __int128 *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909C00;
  sub_2337A94E8((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_2337A946C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337A94E8(uint64_t a1, void *a2, unint64_t *a3, void *a4, void *a5, _OWORD *a6, char *a7, __int128 *a8)
{
  v9 = *a3;
  v10 = *a7;
  v12 = *a8;
  v13 = *(a8 + 2);
  *(a8 + 8) = 0uLL;
  *a8 = 0;
  sub_2337A9564(a1, a2, v9, a4, a5, a6, v10, &v12);
  v14 = &v12;
  sub_233723948(&v14);
  return a1;
}

void sub_2337A954C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_233723948(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2337A9564(uint64_t a1, void *a2, unint64_t a3, void *a4, void *a5, _OWORD *a6, char a7, uint64_t *a8)
{
  v12 = sub_2337AD9D8(a1, a2, a3, a5, a6);
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 216) = 0;
  *(v12 + 208) = 0;
  *(v12 + 220) = 1;
  *v12 = &unk_28491E198;
  *(v12 + 222) = a7;
  *(v12 + 232) = 0u;
  *(v12 + 248) = 0u;
  *(v12 + 264) = 0u;
  *(v12 + 280) = *a4;
  *(v12 + 288) = 0;
  *(v12 + 296) = 0;
  *(v12 + 304) = 0;
  *(v12 + 312) = 0;
  *(v12 + 320) = 0u;
  *(v12 + 336) = 0u;
  sub_233724E88((v12 + 328), *a8, a8[1], (a8[1] - *a8) >> 4);
  return a1;
}

void sub_2337A9618(_Unwind_Exception *a1)
{
  v4 = *(v1 + 288);
  if (v4)
  {
    *(v1 + 296) = v4;
    operator delete(v4);
  }

  sub_2338FA8A4((v1 + 256), v2, v1);
  sub_2337A919C(v1);
  _Unwind_Resume(a1);
}

void *sub_2337A9708(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909C50;
  sub_2337A9800((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_2337A9784(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337A9800(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a3;
  *v12 = *a6;
  v13 = *(a6 + 16);
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = 0;
  *__p = *a7;
  v11 = *(a7 + 16);
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  sub_2337A98B0(a1, a2, v8, a4, a5, v12, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  return a1;
}

void sub_2337A988C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_2338F8878(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_2337A98B0(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5, __int128 *a6, __int128 *a7)
{
  v10 = sub_2337AD9D8(a1, a2, a3, a4, a5);
  *v10 = &unk_2849200F0;
  *(v10 + 248) = 0;
  *(v10 + 328) = 0;
  *(v10 + 336) = 0;
  *(v10 + 188) = 0u;
  *(v10 + 202) = 0;
  *(v10 + 304) = 0u;
  *(v10 + 318) = 0;
  *(v10 + 344) = 0u;
  *(v10 + 4456) = 0u;
  if (*(a6 + 23) < 0)
  {
    sub_233731FB8((v10 + 4472), *a6, *(a6 + 1));
  }

  else
  {
    v11 = *a6;
    *(v10 + 4488) = *(a6 + 2);
    *(v10 + 4472) = v11;
  }

  v12 = (a1 + 4496);
  if (*(a7 + 23) < 0)
  {
    sub_233731FB8(v12, *a7, *(a7 + 1));
  }

  else
  {
    v13 = *a7;
    *(a1 + 4512) = *(a7 + 2);
    *v12 = v13;
  }

  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 258) = 0;
  *(a1 + 250) = 0;
  *(a1 + 266) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  bzero((a1 + 360), 0x1000uLL);
  return a1;
}

void sub_2337A99C4(_Unwind_Exception *a1)
{
  if (*(v1 + 4495) < 0)
  {
    operator delete(*v2);
  }

  sub_233723A54(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2337A9AD0(uint64_t a1, void *a2, unint64_t *a3, void *a4, void *a5, _OWORD *a6, int *a7, int *a8, char *a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284909CA0;
  v11 = *a7;
  v12 = *a8;
  v13 = *a9;
  sub_2337AD9D8(a1 + 24, a2, *a3, a5, a6);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 244) = 1;
  *(a1 + 24) = &unk_284920260;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = *a4;
  *(a1 + 312) = v11;
  *(a1 + 316) = v12;
  *(a1 + 320) = v13;
  return a1;
}

void sub_2337A9BCC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909CA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337A9D14(void *a1, void *a2, unint64_t *a3, void *a4, void *a5, _OWORD *a6, __int128 *a7, uint64_t a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909CF0;
  sub_2337A9E0C((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_2337A9D90(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337A9E0C(uint64_t a1, void *a2, unint64_t *a3, void *a4, void *a5, _OWORD *a6, __int128 *a7, uint64_t a8)
{
  v13 = *a3;
  v18 = *a7;
  v19 = *(a7 + 2);
  *(a7 + 8) = 0uLL;
  *a7 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_2337236E0(&__p, *a8, *(a8 + 8), (*(a8 + 8) - *a8) >> 3);
  sub_2337A9F08(a1, a2, v13, a4, a5, a6, &v18, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  v20 = &v18;
  sub_233723948(&v20);
  return a1;
}

void sub_2337A9ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  a16 = &a13;
  sub_233723948(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_2337A9F08(uint64_t a1, void *a2, unint64_t a3, void *a4, void *a5, _OWORD *a6, uint64_t *a7, uint64_t a8)
{
  v12 = sub_2337AD9D8(a1, a2, a3, a5, a6);
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 216) = 0;
  *(v12 + 208) = 0;
  *(v12 + 220) = 1;
  *v12 = &unk_2849050B8;
  *(v12 + 232) = 0u;
  *(v12 + 248) = 0u;
  *(v12 + 264) = 0u;
  *(v12 + 280) = *a4;
  *(v12 + 288) = 0;
  *(v12 + 296) = 0;
  *(v12 + 304) = 0;
  sub_233724E88((v12 + 288), *a7, a7[1], (a7[1] - *a7) >> 4);
  *(a1 + 1864) = 0;
  *(a1 + 1848) = 0u;
  sub_2337236E0((a1 + 1848), *a8, *(a8 + 8), (*(a8 + 8) - *a8) >> 3);
  return a1;
}

void sub_2337A9FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_233723948(va);
  v6 = v3[32];
  if (v6)
  {
    v3[33] = v6;
    operator delete(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    v3[30] = v7;
    operator delete(v7);
  }

  sub_2337A919C(v3);
  _Unwind_Resume(a1);
}

void *sub_2337AA0FC(void *a1, void *a2, unint64_t *a3, void *a4, void *a5, _OWORD *a6, char *a7, __int128 *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909D40;
  sub_2337AA1F4((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_2337AA178(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337AA1F4(uint64_t a1, void *a2, unint64_t *a3, void *a4, void *a5, _OWORD *a6, char *a7, __int128 *a8)
{
  v9 = *a3;
  v10 = *a7;
  v12 = *a8;
  v13 = *(a8 + 2);
  *(a8 + 8) = 0uLL;
  *a8 = 0;
  sub_2337AA270(a1, a2, v9, a4, a5, a6, v10, &v12);
  v14 = &v12;
  sub_233723948(&v14);
  return a1;
}

void sub_2337AA258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_233723948(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2337AA270(uint64_t a1, void *a2, unint64_t a3, void *a4, void *a5, _OWORD *a6, char a7, uint64_t *a8)
{
  v12 = a1 + 393216;
  v13 = sub_2337AD9D8(a1, a2, a3, a5, a6);
  *(v13 + 192) = 0;
  *(v13 + 200) = 0;
  *(v13 + 216) = 0;
  *(v13 + 208) = 0;
  *(v13 + 220) = 1;
  *v13 = &unk_284902670;
  *(v13 + 222) = a7;
  *(v13 + 232) = 0u;
  *(v13 + 248) = 0u;
  *(v13 + 264) = 0u;
  *(v13 + 280) = *a4;
  *(v12 + 288) = 0;
  *(v12 + 296) = 0;
  *(v12 + 304) = 0;
  *(v13 + 393536) = 0;
  *(v13 + 393544) = 0;
  *(v13 + 393528) = 0;
  sub_233724E88((v13 + 393528), *a8, a8[1], (a8[1] - *a8) >> 4);
  *(v12 + 336) = sub_233818C24();
  return a1;
}

void sub_2337AA354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v11;
  a10 = v13;
  sub_233723948(&a10);
  v15 = v10[32];
  if (v15)
  {
    v10[33] = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[30] = v16;
    operator delete(v16);
  }

  sub_2337A919C(v10);
  _Unwind_Resume(a1);
}

void *sub_2337AA480(void *a1, void *a2, unint64_t *a3, void *a4, void *a5, _OWORD *a6, __int128 *a7, unsigned int *a8, int *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284909D90;
  sub_2337AA588((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void sub_2337AA50C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337AA588(uint64_t a1, void *a2, unint64_t *a3, void *a4, void *a5, _OWORD *a6, __int128 *a7, unsigned int *a8, int *a9)
{
  v10 = *a3;
  v12 = *a7;
  v13 = *(a7 + 2);
  *(a7 + 8) = 0uLL;
  *a7 = 0;
  sub_2337AA610(a1, a2, v10, a4, a5, a6, &v12, *a8, *a9);
  v14 = &v12;
  sub_233723948(&v14);
  return a1;
}

void sub_2337AA5F8(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_233723948((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_2337AA610(uint64_t a1, void *a2, unint64_t a3, void *a4, void *a5, _OWORD *a6, uint64_t *a7, int a8, int a9)
{
  v13 = a1 + 0x20000;
  v14 = sub_2337AD9D8(a1, a2, a3, a5, a6);
  *(v14 + 192) = 0;
  *(v14 + 200) = 0;
  *(v14 + 216) = 0;
  *(v14 + 208) = 0;
  *(v14 + 220) = 1;
  *v14 = &unk_2849238D0;
  *(v14 + 232) = 0u;
  *(v14 + 248) = 0u;
  *(v14 + 264) = 0u;
  *(v14 + 280) = *a4;
  *(v13 + 288) = 0;
  *(v14 + 131368) = 0u;
  *(v14 + 131384) = 0u;
  sub_233724E88((v14 + 131376), *a7, a7[1], (a7[1] - *a7) >> 4);
  *(v13 + 328) = a8;
  *(v13 + 332) = a9;
  return a1;
}

void sub_2337AA6E0(_Unwind_Exception *a1)
{
  v4 = v1[32];
  if (v4)
  {
    v1[33] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[30] = v5;
    operator delete(v5);
  }

  sub_2337A919C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2337AA714(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((sub_233735EBC(a2, v2 + 32) & 0x80) == 0)
      {
        if ((sub_233735EBC(v2 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

id sub_2337AA794()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = @"com.hasselblad.fff-raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".fff.";
  v19[3] = &unk_284957850;
  v19[4] = &unk_284957868;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_23372089C, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337AAA8C];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337AAA98];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337AAAA4];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337AAAB0];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_2337AAABC(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_2337ABAF4();
}

uint64_t sub_2337AAB58(uint64_t a1, uint64_t ***a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (a2[1] != 10)
    {
      goto LABEL_10;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (v3 != 10)
    {
      goto LABEL_10;
    }
  }

  v5 = *v4;
  v6 = *(v4 + 4);
  if (v5 == 0x6E49656372756F53 && v6 == 28518)
  {
    v9 = *(a1 + 1200);
    if (v9)
    {
      return sub_2337DB954(v9);
    }
  }

LABEL_10:

  return sub_233733118(a1);
}

void sub_2337AABE0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (*(a2 + 8) != 10)
    {
LABEL_10:
      sub_233733290(a1, a2, a3);
      return;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (v3 != 10)
    {
      goto LABEL_10;
    }
  }

  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v5 == 0x6E49656372756F53 && v6 == 28518;
  if (!v7 || !*(a1 + 1200))
  {
    goto LABEL_10;
  }

  sub_2337DBA00(*(a1 + 1200));
}

void sub_2337AAC44(uint64_t **a1, uint64_t a2, unsigned __int16 *a3)
{
  sub_23374FA0C(a1, a2, a3);
  v6 = *a3;
  if (v6 != 46275)
  {
    if (v6 != 46279)
    {
      if (v6 == 50714 && a3[1] - 3 <= 2)
      {
        v7 = *(a3 + 1);
        if (v7 == 1 || v7 == 4)
        {
          sub_2337338AC(a1, &v19);
          sub_23374AEDC(a3, &v19, __p);
          if (*(&v19 + 1))
          {
            sub_2337239E8(*(&v19 + 1));
          }

          v8 = __p[0];
          if (*(a3 + 1) == (__p[1] - __p[0]) >> 3)
          {
            if ((__p[1] - __p[0]) == 8)
            {
              sub_233731694(&v19, 4uLL, __p[0]);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              *__p = v19;
              v22 = v20;
            }

            *&v19 = a2;
            v9 = sub_233757B14(a1 + 33, a2, &unk_233905F1C, &v19, v17) + 7;
            v8 = __p[0];
            if (v9 != __p)
            {
              sub_23373176C(v9, __p[0], __p[1], (__p[1] - __p[0]) >> 3);
              v8 = __p[0];
            }
          }

          if (v8)
          {
            __p[1] = v8;
            operator delete(v8);
          }
        }
      }

      return;
    }

    if (a3[1] != 1)
    {
      return;
    }

    sub_23372A488(__p, "IFD0");
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = HIBYTE(v22);
    v13 = SHIBYTE(v22);
    if (v22 < 0)
    {
      v12 = __p[1];
    }

    if (v11 == v12)
    {
      if (v10 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      if (v22 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      v16 = memcmp(v14, v15, v11) != 0;
      if ((v13 & 0x80000000) == 0)
      {
LABEL_32:
        if (v16)
        {
          return;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v16 = 1;
      if ((SHIBYTE(v22) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    operator delete(__p[0]);
    if (v16)
    {
      return;
    }

LABEL_38:
    sub_2337338AC(a1, &v19);
    LODWORD(v18) = *(a3 + 2);
    sub_233723AE0(v17, &v18);
    sub_233725F08(__p, &v19, v17, 0);
    if (*(&v19 + 1))
    {
      sub_2337239E8(*(&v19 + 1));
    }

    operator new[]();
  }

  if (a3[1] == 1)
  {
    sub_2338FAA24(a2, a3, a1);
  }
}

void sub_2337AB00C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  MEMORY[0x2383ABEF0](v18, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  sub_233725FD4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2337AB0C0(uint64_t a1)
{
  if (*(a1 + 1216) != 1)
  {
    return *(a1 + 1184);
  }

  sub_233753FB4(a1, 0, __p);
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337AB130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337AB14C(uint64_t a1)
{
  if (*(a1 + 1216) != 1)
  {
    return *(a1 + 1192);
  }

  sub_233753FB4(a1, 0, __p);
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337AB1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337AB1D8(uint64_t a1)
{
  result = *(a1 + 1200);
  if (result)
  {
    return sub_2337DB828(result);
  }

  return result;
}

void sub_2337AB1E8(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  (*(*a1 + 392))(__p);
  if (v16 < 0)
  {
    if (__p[1] != 10)
    {
      goto LABEL_10;
    }

    v10 = __p[0];
  }

  else
  {
    if (v16 != 10)
    {
      goto LABEL_10;
    }

    v10 = __p;
  }

  v11 = *v10;
  v12 = *(v10 + 4);
  if (v11 == 0x6E49656372756F53 && v12 == 28518)
  {
    v14 = a1[150];
    if (v14)
    {
      sub_2337DBB34(v14, a5);
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_233733E44(a1, a2, a3, a4, a5);
LABEL_11:
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337AB2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2337AB314@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 1200);
  if (result)
  {
    sub_2337DBA6C(result);
    v5 = v4;
    return sub_233731694(a2, 4uLL, &v5);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_2337AB368(void *a1)
{
  sub_23374B9D8(a1);
  v2 = (*(*a1 + 400))(a1);
  v3 = v2;
  if (a1[150])
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = sub_2337854A4(v2, *MEMORY[0x277CD3490], 0);
    v6 = sub_2337854A4(v3, *MEMORY[0x277CD3038], 0);
    v7 = *MEMORY[0x277CD34B8];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD34B8]];

    if (!v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:sub_2337DB964(a1[150])];
      [v5 setObject:v9 forKeyedSubscript:v7];
    }

    v10 = *MEMORY[0x277CD30B0];
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD30B0]];

    if (!v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:sub_2337DB954(a1[150])];
      [v6 setObject:v12 forKeyedSubscript:v10];
    }

    if (sub_2337DBA00(a1[150]) > 0.0)
    {
      v13 = *MEMORY[0x277CD3060];
      v14 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD3060]];

      if (!v14)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithDouble:sub_2337DBA00(a1[150])];
        [v6 setObject:v15 forKeyedSubscript:v13];
      }
    }

    v16 = sub_2337DBA24(a1[150]);
    v17 = v16;
    if (v16 > 0.0)
    {
      v18 = log2(v16);
      v19 = *MEMORY[0x277CD3068];
      v20 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD3068]];

      if (!v20)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        [v6 setObject:v21 forKeyedSubscript:v19];
      }

      v22 = *MEMORY[0x277CD2F48];
      v23 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD2F48]];

      if (!v23)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v18 + v18];
        [v6 setObject:v24 forKeyedSubscript:v22];
      }
    }

    if (sub_2337DBA48(a1[150]) > 0.0)
    {
      v25 = *MEMORY[0x277CD3088];
      v26 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD3088]];

      if (!v26)
      {
        v27 = [MEMORY[0x277CCABB0] numberWithDouble:sub_2337DBA48(a1[150])];
        [v6 setObject:v27 forKeyedSubscript:v25];
      }
    }

    sub_2337DBB7C(a1[150], __p);
    v28 = *MEMORY[0x277CD3488];
    v29 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD3488]];

    if (!v29)
    {
      if (v33 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
      [v5 setObject:v31 forKeyedSubscript:v28];
    }

    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2337AB7A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1200);
  if (v3)
  {
    LODWORD(v3) = sub_2337DB95C(v3);
  }

  snprintf(__str, 0x10uLL, "%u", v3);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_23372A488(__p, "fff");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "hasselblad");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337AB8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

id sub_2337AB8E0(uint64_t a1)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v1 = sub_23374C650(a1);
  v2 = [v1 mutableCopy];

  v6[0] = &unk_284957880;
  v6[1] = &unk_2849578C8;
  v7[0] = &unk_28495D280;
  v7[1] = &unk_28495D2A8;
  v6[2] = &unk_2849578E0;
  v6[3] = &unk_2849578F8;
  v7[2] = &unk_28495D2D0;
  v7[3] = &unk_28495D2F8;
  v6[4] = &unk_284957910;
  v6[5] = &unk_284957928;
  v7[4] = &unk_28495D320;
  v7[5] = &unk_28495D348;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:6];
  [v2 addEntriesFromDictionary:v3];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v4;
}

void sub_2337ABA24(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2337ABA60(void *a1)
{
  sub_2337ABA98(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337ABA98(void *a1)
{
  *a1 = &unk_284909E00;
  v2 = a1[151];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return sub_2337557B4(a1);
}

uint64_t sub_2337ABB98(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28490A140;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_284909E00;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 1;
  return a1;
}

void sub_2337ABC50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490A140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_2337ABCCC()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = @"com.hasselblad.3fr-raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".3fr.";
  v19[3] = &unk_284957940;
  v19[4] = &unk_284957958;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_2337208E8, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337ABFC4];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337ABFD0];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337ABFDC];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337ABFE8];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_2337ABFF4(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_2337ACE74();
}

uint64_t sub_2337AC090(_DWORD *a1)
{
  result = *a1;
  *a1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_2337AC0F4(uint64_t **a1, uint64_t ***a2, unsigned __int16 *a3)
{
  sub_23374FA0C(a1, a2, a3);
  if (*a3 == 50714 && a3[1] - 3 <= 2)
  {
    v6 = *(a3 + 1);
    if (v6 == 1 || v6 == 4)
    {
      sub_2337338AC(a1, &v10);
      sub_23374AEDC(a3, &v10, __p);
      if (*(&v10 + 1))
      {
        sub_2337239E8(*(&v10 + 1));
      }

      v8 = __p[0];
      if (*(a3 + 1) == (__p[1] - __p[0]) >> 3)
      {
        if ((__p[1] - __p[0]) == 8)
        {
          sub_233731694(&v10, 4uLL, __p[0]);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v10;
          v13 = v11;
        }

        *&v10 = a2;
        v9 = sub_233757B14(a1 + 33, a2, &unk_233905F1C, &v10, &v14) + 7;
        v8 = __p[0];
        if (v9 != __p)
        {
          sub_23373176C(v9, __p[0], __p[1], (__p[1] - __p[0]) >> 3);
          v8 = __p[0];
        }
      }

      if (v8)
      {
        __p[1] = v8;
        operator delete(v8);
      }
    }
  }
}

void sub_2337AC230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337AC264(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  nullsub_6();
  v5 = *a3;
  if (v5 <= 0x19)
  {
    if (v5 != 15)
    {
      if (v5 == 25 && a3[1] == 7)
      {
        sub_2337338AC(a1, &v14);
        v13 = *(a3 + 2);
        sub_233723AE0(&v12, &v13);
        sub_233725F08(v16, &v14, &v12, 0);
        if (v15)
        {
          sub_2337239E8(v15);
        }

        v13 = *(a3 + 1);
        sub_2337338AC(a1, &v12);
        sub_2337DD128(&v14);
      }

      return;
    }

    if (a3[1] != 4 || *(a3 + 1) < 7u)
    {
      return;
    }

    sub_2337338AC(a1, &v14);
    v13 = *(a3 + 2);
    sub_233723AE0(&v12, &v13);
    sub_233725F08(v16, &v14, &v12, 0);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    sub_2337338AC(a1, &v14);
    v8 = v14;
    v12 = 24;
    sub_233723B40(&v13, &v12);
    (*(*v8 + 40))(v8, &v13, 1);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    sub_2337338AC(a1, &v14);
    v9 = sub_233725614(v14);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    *(a1 + 1232) = vcvtd_n_f64_u32(v9, 8uLL);
LABEL_29:
    sub_233725FD4(v16);
    return;
  }

  if (v5 == 26)
  {
    if ((a3[1] & 0xFFFE) != 6)
    {
      return;
    }

    sub_2337338AC(a1, &v14);
    v13 = *(a3 + 2);
    sub_233723AE0(&v12, &v13);
    sub_233725F08(v16, &v14, &v12, 0);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    v10 = *(a3 + 1);
    if (v10 >= 2)
    {
      if (v10 < 0x100000)
      {
        sub_2337AD450(v10, &v14);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    goto LABEL_29;
  }

  if (v5 == 27)
  {
    LODWORD(v14) = 1;
    sub_233726998(v16, &v14);
    v6 = sub_23374B704(a3, v16);
    v13 = 0;
    sub_233726998(&v12, &v13);
    *(a1 + 1216) = v6 | (sub_23374B704(a3, &v12) << 32);
  }
}

void sub_2337AC608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a14)
  {
    sub_2337239E8(a14);
  }

  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2337AC6C0(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337AC71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337AC738(uint64_t a1)
{
  v2 = (*(*a1 + 424))(a1);
  sub_23372A488(&__p, "IFD0:SUBIFD0");
  v3 = sub_233753DFC(a1, &__p);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  sub_2337338AC(a1, &__p);
  v4 = (*(*__p + 16))(__p);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  if (v4 - v2 >= v3)
  {
    return v3;
  }

  else
  {
    return v4 - v2;
  }
}

void sub_2337AC81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337AC84C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 1184);
  if (v2)
  {
    v3 = sub_2337DE194(v2);
    LODWORD(v1) = sub_2337DE19C(*(v1 + 1184));
  }

  else
  {
    sub_23372A488(__p, "IFD0:SUBIFD0");
    v4 = sub_233753F24(v1, __p);
    v3 = v4;
    v1 = HIDWORD(v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3 | (v1 << 32);
}

void sub_2337AC8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337AC8EC(void *a1)
{
  v2 = (*(*a1 + 440))(a1);
  v3 = v2;
  v4 = HIDWORD(v2);
  v15[0] = 0;
  v15[1] = v2;
  v5 = a1[148];
  if (!v5)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = sub_2337DE1CC(v5);
  v7 = sub_2337DE1D4(a1[148]);
  v8 = sub_2337DE1DC(a1[148]);
  v9 = sub_2337DE1F0(a1[148]);
  v14[0] = (v6 - 8) | ((v7 - 8) << 32);
  v14[1] = (v3 - (v8 + v6) + 16) | ((v4 - (v9 + v7) + 16) << 32);
  v10 = sub_23385F3FC(v14, v15);
  if (v10)
  {
    v11 = LODWORD(v14[0]);
  }

  else
  {
    v11 = v6;
  }

  if (v10)
  {
    v12 = HIDWORD(v14[0]);
  }

  else
  {
    v12 = v7;
  }

  return v11 | (v12 << 32);
}

uint64_t sub_2337ACA1C(void *a1)
{
  (*(*a1 + 440))(a1);
  result = a1[148];
  if (result)
  {
    v3 = sub_2337DE1CC(result);
    v4 = sub_2337DE1D4(a1[148]);
    sub_2337DE1A4(a1[148]);
    sub_2337DE1B8(a1[148]);
    return v3 | (v4 << 32);
  }

  return result;
}

uint64_t sub_2337ACAC0(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, "IFD0:SUBIFD0");
  sub_23374C360(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2337ACB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337ACB3C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 1200);
  if (v2)
  {
    v3 = *(result + 1216);
    if (v3 >= 1)
    {
      v4 = *(result + 1220);
      if (v4 > 0 && *(v2 + 24) >= 2 * v3 * v4)
      {
        sub_2337AD11C();
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_2337ACBB4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 1192);
  *a2 = *(result + 1184);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_2337ACBD4(uint64_t a1)
{
  (*(*a1 + 392))(__p);
  v2 = sub_233735E3C(a1 + 288, __p);
  if (a1 + 296 == v2)
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2337ACC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337ACC90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1184);
  if (v3)
  {
    LODWORD(v3) = sub_2337DE204(v3);
  }

  snprintf(__str, 0x10uLL, "%u", v3);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_23372A488(__p, "3fr");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "hasselblad");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337ACD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_2337ACDD4(void *a1)
{
  sub_2337ACE0C(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337ACE0C(void *a1)
{
  *a1 = &unk_28490A1B0;
  v2 = a1[151];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = a1[149];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return sub_2337557B4(a1);
}

uint64_t sub_2337ACF18(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28490A500;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_28490A1B0;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0xBFF0000000000000;
  return a1;
}

void sub_2337ACFD4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490A500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

int *sub_2337AD050(int *result, int *a2)
{
  if (!*a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *result /= *a2;
  return result;
}

int *sub_2337AD0B4(int *result, int *a2)
{
  v2 = *result * *a2;
  *result = v2;
  if (v2 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_2337AD1D0(void *a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908220;
  sub_2337AD22C((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t sub_2337AD22C(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v10 = a2[1];
  v16 = *a2;
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_233726998(&v15, a3);
  sub_233726998(&v14, a4);
  sub_233726998(&v13, a5);
  sub_233726998(&v12, a6);
  sub_2337B0510(a1, &v16, &v15, &v14, &v13, &v12);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  return a1;
}

void sub_2337AD2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    sub_2337239E8(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337AD310(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (!(a1 >> 20))
  {
    operator new();
  }

  operator new();
}

void sub_2337AD450(unint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (!(a1 >> 20))
  {
    operator new();
  }

  sub_2337AD870();
}

void sub_2337AD544(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337AD55C(uint64_t a1)
{
  *a1 = &unk_28490A550;
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(a1 + 8) == 1)
    {
      j__CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v2);
    }

    else
    {
      j__free_3(*(a1 + 32));
    }

    *(a1 + 32) = 0;
  }

  return a1;
}

void sub_2337AD5D8(uint64_t a1)
{
  sub_2337AD55C(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337AD610(uint64_t a1)
{
  v2 = NSPageSize();
  v3 = *(a1 + 24);
  if (v3 <= v2)
  {
    *(a1 + 8) = 1;
    if (v3 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3;
    }

    result = sub_2338F60FC(*MEMORY[0x277CBECE8], v5, 0);
  }

  else
  {
    result = sub_2338F60BC(v3);
  }

  *(a1 + 32) = result;
  *(a1 + 16) = result;
  if (!result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_WORD *sub_2337AD6B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = sub_23378972C(a1);
  if (v1 >= 2)
  {
    v3 = v1 >> 1;
    do
    {
      *result = bswap32(*result) >> 16;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_2337AD71C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490A598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337AD79C(uint64_t a1)
{
  sub_2337AD55C(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337AD7F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28490A638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337AD8DC(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28490A688;
  sub_233861A90((a1 + 3), *a2);
  return a1;
}