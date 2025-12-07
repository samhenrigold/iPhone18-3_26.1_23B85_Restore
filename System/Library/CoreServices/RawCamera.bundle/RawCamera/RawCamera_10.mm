void sub_2337EC9C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337EC9ACLL);
}

void sub_2337ECAB0(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284916688;
  sub_233737534((a1 + 3), a2);
}

void sub_2337ECB70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284916688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337ECBEC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337ECC94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337ECC80);
}

void sub_2337ECD84(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284916718;
  sub_233737534((a1 + 3), a2);
}

void sub_2337ECE44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284916718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337ECEC0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337ECF68(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337ECF54);
}

void sub_2337ED058(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_2337ED100(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337ED0ECLL);
}

void sub_2337ED1F0(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849167E8;
  sub_2337E326C((a1 + 3), a2);
}

void sub_2337ED288(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849167E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337ED304(uint64_t a1, __CVBuffer *a2, void *a3, char a4)
{
  v7 = a3;
  __p = 0;
  v23 = 0;
  sub_233798C70(a1, &__p, 0, v7, 0);
  if (v23)
  {
    sub_2337239E8(v23);
  }

  *a1 = &unk_284916838;
  v8 = v7;
  *(a1 + 2504) = v8;
  *(a1 + 2512) = 0;
  sub_23372A488(&__p, "IFD0");
  p_p = &__p;
  *(sub_2337F24C8((a1 + 1432), &__p, &unk_233905F1C, &p_p) + 56) = 5120;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  sub_23372A488(&__p, "IFD0");
  p_p = &__p;
  *(sub_2337F24C8((a1 + 1456), &__p, &unk_233905F1C, &p_p) + 56) = 5120;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  sub_23372A488(&__p, "IFD0");
  p_p = &__p;
  *(sub_2337F24C8((a1 + 512), &__p, &unk_233905F1C, &p_p) + 56) = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  Width = CVPixelBufferGetWidth(a2);
  sub_23372A488(&__p, "IFD0");
  p_p = &__p;
  *(sub_2337F24C8((a1 + 536), &__p, &unk_233905F1C, &p_p) + 56) = Width;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  Height = CVPixelBufferGetHeight(a2);
  sub_23372A488(&__p, "IFD0");
  p_p = &__p;
  *(sub_2337F24C8((a1 + 560), &__p, &unk_233905F1C, &p_p) + 56) = Height;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType <= 1734505011)
  {
    if (PixelFormatType == 1278226742)
    {
      sub_23372A488(&__p, "IFD0");
      p_p = &__p;
      *(sub_2337F24C8((a1 + 632), &__p, &unk_233905F1C, &p_p) + 56) = 32803;
      if (v24 < 0)
      {
        operator delete(__p);
      }

      sub_23372A488(&__p, "IFD0");
      p_p = &__p;
      v16 = sub_2337F24C8((a1 + 680), &__p, &unk_233905F1C, &p_p);
      goto LABEL_42;
    }

    if (PixelFormatType == 1650943796)
    {
      sub_23372A488(&__p, "IFD0");
      p_p = &__p;
      *(sub_2337F24C8((a1 + 632), &__p, &unk_233905F1C, &p_p) + 56) = 32803;
      if (v24 < 0)
      {
        operator delete(__p);
      }

      __src = 65794;
      sub_23372A488(&__p, "IFD0:EXIF");
      p_p = &__p;
      v13 = sub_23375E5EC((a1 + 992), &__p, &unk_233905F1C, &p_p);
      sub_2337F22B8((v13 + 56), &__src, &__p, 4uLL);
      if (v24 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_38;
    }
  }

  else
  {
    switch(PixelFormatType)
    {
      case 1734505012:
        sub_23372A488(&__p, "IFD0");
        p_p = &__p;
        *(sub_2337F24C8((a1 + 632), &__p, &unk_233905F1C, &p_p) + 56) = 32803;
        if (v24 < 0)
        {
          operator delete(__p);
        }

        __src = 16777729;
        sub_23372A488(&__p, "IFD0:EXIF");
        p_p = &__p;
        v14 = sub_23375E5EC((a1 + 992), &__p, &unk_233905F1C, &p_p);
        sub_2337F22B8((v14 + 56), &__src, &__p, 4uLL);
        if (v24 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_38;
      case 1735549492:
        sub_23372A488(&__p, "IFD0");
        p_p = &__p;
        *(sub_2337F24C8((a1 + 632), &__p, &unk_233905F1C, &p_p) + 56) = 32803;
        if (v24 < 0)
        {
          operator delete(__p);
        }

        __src = 16908289;
        sub_23372A488(&__p, "IFD0:EXIF");
        p_p = &__p;
        v15 = sub_23375E5EC((a1 + 992), &__p, &unk_233905F1C, &p_p);
        sub_2337F22B8((v15 + 56), &__src, &__p, 4uLL);
        if (v24 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_38;
      case 1919379252:
        sub_23372A488(&__p, "IFD0");
        p_p = &__p;
        *(sub_2337F24C8((a1 + 632), &__p, &unk_233905F1C, &p_p) + 56) = 32803;
        if (v24 < 0)
        {
          operator delete(__p);
        }

        __src = 33620224;
        sub_23372A488(&__p, "IFD0:EXIF");
        p_p = &__p;
        v12 = sub_23375E5EC((a1 + 992), &__p, &unk_233905F1C, &p_p);
        sub_2337F22B8((v12 + 56), &__src, &__p, 4uLL);
        if (v24 < 0)
        {
          operator delete(__p);
        }

LABEL_38:
        sub_23372A488(&__p, "IFD0");
        p_p = &__p;
        v16 = sub_2337F24C8((a1 + 680), &__p, &unk_233905F1C, &p_p);
LABEL_42:
        v17 = 1;
        goto LABEL_43;
    }
  }

  sub_23372A488(&__p, "IFD0");
  p_p = &__p;
  *(sub_2337F24C8((a1 + 632), &__p, &unk_233905F1C, &p_p) + 56) = 34892;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  sub_23372A488(&__p, "IFD0");
  p_p = &__p;
  v16 = sub_2337F24C8((a1 + 680), &__p, &unk_233905F1C, &p_p);
  v17 = 3;
LABEL_43:
  *(v16 + 56) = v17;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v18 = sub_2337EDB90(a2, a4);
  v19 = *(a1 + 2512);
  *(a1 + 2512) = v18;

  *(a1 + 1234) = 3;
  return a1;
}

void sub_2337EDA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2337A715C(v16);
  _Unwind_Resume(a1);
}

id sub_2337EDB90(CVPixelBufferRef pixelBuffer, char a2)
{
  v57[1] = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:pixelBuffer];
    if (v3)
    {
      goto LABEL_22;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v3 = 0;
  if (PixelFormatType <= 1735549491)
  {
    if (PixelFormatType == 1278226742 || PixelFormatType == 1650943796)
    {
      goto LABEL_18;
    }

    v9 = 1734505012;
LABEL_17:
    if (PixelFormatType != v9)
    {
      goto LABEL_22;
    }

LABEL_18:
    arg = 0;
    v56 = *MEMORY[0x277CC4DE8];
    v57[0] = MEMORY[0x277CBEC10];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:{1, 0}];
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    if (!CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x4C303136u, v5, &arg))
    {
      CFAutorelease(arg);
      if (!CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL) && !CVPixelBufferLockBaseAddress(arg, 0))
      {
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
        v16 = CVPixelBufferGetBaseAddress(arg);
        v17 = CVPixelBufferGetHeight(pixelBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v19 = CVPixelBufferGetBytesPerRow(arg);
        if (v17)
        {
          v20 = v19;
          do
          {
            memcpy(v16, BaseAddress, BytesPerRow);
            BaseAddress += BytesPerRow;
            v16 += v20;
            --v17;
          }

          while (v17);
        }

        CVPixelBufferUnlockBaseAddress(arg, 0);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
        v21 = MEMORY[0x277CBF758];
        v22 = arg;
        v54 = *MEMORY[0x277CBFA40];
        v23 = [MEMORY[0x277CBEB68] null];
        v55 = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v3 = [v21 imageWithCVPixelBuffer:v22 options:v24];

        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (PixelFormatType > 1815491697)
  {
    if (PixelFormatType == 1815491698)
    {
      arg = 0;
      v52 = *MEMORY[0x277CC4DE8];
      v53 = MEMORY[0x277CBEC10];
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v13 = CVPixelBufferGetWidth(pixelBuffer);
      v14 = CVPixelBufferGetHeight(pixelBuffer);
      if (!CVPixelBufferCreate(*MEMORY[0x277CBECE8], v13, v14, 0x6C363472u, v5, &arg))
      {
        CFAutorelease(arg);
        if (!CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL) && !CVPixelBufferLockBaseAddress(arg, 0))
        {
          v25 = CVPixelBufferGetBaseAddress(pixelBuffer);
          v26 = CVPixelBufferGetBaseAddress(arg);
          v27 = CVPixelBufferGetHeight(pixelBuffer);
          v28 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v29 = CVPixelBufferGetBytesPerRow(arg);
          if (v27)
          {
            v30 = v29;
            do
            {
              memcpy(v26, v25, v28);
              v25 += v28;
              v26 += v30;
              --v27;
            }

            while (v27);
          }

          CVPixelBufferUnlockBaseAddress(arg, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          v31 = MEMORY[0x277CBF758];
          v32 = arg;
          v50 = *MEMORY[0x277CBFA40];
          v51 = sub_2338F28E4();
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v3 = [v31 imageWithCVPixelBuffer:v32 options:v33];

          goto LABEL_22;
        }
      }

LABEL_21:

      v3 = 0;
      goto LABEL_22;
    }

    v9 = 1919379252;
    goto LABEL_17;
  }

  if (PixelFormatType == 1735549492)
  {
    goto LABEL_18;
  }

  if (PixelFormatType != 1751527984)
  {
    goto LABEL_22;
  }

  arg = 0;
  v48 = *MEMORY[0x277CC4DE8];
  v49 = MEMORY[0x277CBEC10];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v6 = CVPixelBufferGetWidth(pixelBuffer);
  v7 = CVPixelBufferGetHeight(pixelBuffer);
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, v7, 0x68663230u, v5, &arg))
  {
    goto LABEL_21;
  }

  CFAutorelease(arg);
  PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
  if (PlaneCount != CVPixelBufferGetPlaneCount(arg))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL) || CVPixelBufferLockBaseAddress(arg, 0))
  {
    goto LABEL_21;
  }

  if (PlaneCount)
  {
    for (i = 0; i != PlaneCount; ++i)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, i);
      v36 = CVPixelBufferGetBaseAddressOfPlane(arg, i);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, i);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
      v39 = CVPixelBufferGetBytesPerRowOfPlane(arg, i);
      if (HeightOfPlane)
      {
        v40 = v39;
        do
        {
          memcpy(v36, BaseAddressOfPlane, BytesPerRowOfPlane);
          BaseAddressOfPlane += BytesPerRowOfPlane;
          v36 += v40;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }
    }
  }

  CVPixelBufferUnlockBaseAddress(arg, 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  v41 = MEMORY[0x277CBF758];
  v42 = arg;
  v46 = *MEMORY[0x277CBFA40];
  v47 = sub_2338F28E4();
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v3 = [v41 imageWithCVPixelBuffer:v42 options:v43];

LABEL_22:

  return v3;
}

void sub_2337EE2CC(uint64_t a1)
{
  v377 = *MEMORY[0x277D85DE8];
  v283 = [*(a1 + 2504) objectForKeyedSubscript:@"{Exif}"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = [v283 objectForKeyedSubscript:@"ApertureValue"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 doubleValue];
    v3 = v2;
    sub_23372A488(&__p, "IFD0:EXIF");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 360), &__p, &unk_233905F1C, &v374) + 56) = v3;
    if (SBYTE7(v361) < 0)
    {
      operator delete(__p);
    }
  }

  v4 = [v283 objectForKeyedSubscript:@"FNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    v6 = v5;
    sub_23372A488(&__p, "IFD0:EXIF");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 336), &__p, &unk_233905F1C, &v374) + 56) = v6;
    if (SBYTE7(v361) < 0)
    {
      operator delete(__p);
    }
  }

  v7 = [v283 objectForKeyedSubscript:@"ExposureTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 doubleValue];
    v9 = v8;
    sub_23372A488(&__p, "IFD0:EXIF");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 288), &__p, &unk_233905F1C, &v374) + 56) = v9;
    if (SBYTE7(v361) < 0)
    {
      operator delete(__p);
    }
  }

  v10 = [v283 objectForKeyedSubscript:@"ISOSpeedRatings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 count] == 1 || objc_msgSend(v10, "count") == 2))
  {
    __p = 0uLL;
    *&v361 = 0;
    v348 = 0u;
    v349 = 0u;
    v350 = 0u;
    v351 = 0u;
    v280 = v10;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v348 objects:v376 count:16];
    if (v12)
    {
      v13 = *v349;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v349 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v348 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v39 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v39, "RawCameraException");
            __cxa_throw(v39, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v16 = [v15 unsignedIntValue];
          v17 = *(&__p + 1);
          if (*(&__p + 1) >= v361)
          {
            v19 = __p;
            v20 = *(&__p + 1) - __p;
            v21 = (*(&__p + 1) - __p) >> 2;
            v22 = v21 + 1;
            if ((v21 + 1) >> 62)
            {
              sub_2337235BC();
            }

            v23 = v361 - __p;
            if ((v361 - __p) >> 1 > v22)
            {
              v22 = v23 >> 1;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v24 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              sub_2337235D4(&__p, v24);
            }

            *(4 * v21) = v16;
            v18 = 4 * v21 + 4;
            memcpy(0, v19, v20);
            v25 = __p;
            *&__p = 0;
            *(&__p + 1) = v18;
            *&v361 = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            **(&__p + 1) = v16;
            v18 = v17 + 4;
          }

          *(&__p + 1) = v18;
        }

        v12 = [v11 countByEnumeratingWithState:&v348 objects:v376 count:16];
      }

      while (v12);
    }

    sub_23372A488(&v374, "IFD0:EXIF");
    __src = &v374;
    v10 = v280;
    v26 = (sub_23375E5EC((a1 + 192), &v374, &unk_233905F1C, &__src) + 56);
    if (v26 != &__p)
    {
      sub_233723454(v26, __p, *(&__p + 1), (*(&__p + 1) - __p) >> 2);
    }

    if (SHIBYTE(v375) < 0)
    {
      operator delete(v374);
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  v27 = [v283 objectForKeyedSubscript:@"CFAPattern"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(v347, 0, sizeof(v347));
    v28 = v27;
    if ([v28 countByEnumeratingWithState:v347 objects:v373 count:16])
    {
      v29 = **(&v347[0] + 1);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v29 unsignedCharValue];
        operator new();
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v38, "RawCameraException");
      __cxa_throw(v38, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    sub_23372A488(&__p, "IFD0:EXIF");
    *&v374 = &__p;
    v30 = sub_23375E5EC((a1 + 992), &__p, &unk_233905F1C, &v374);
    sub_2337550A4((v30 + 56), 0, 0, 0);
    if (SBYTE7(v361) < 0)
    {
      operator delete(__p);
    }
  }

  v284 = [*(a1 + 2504) objectForKeyedSubscript:@"{DNG}"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v276 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v276, "RawCameraException");
    __cxa_throw(v276, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v31 = [v284 objectForKeyedSubscript:@"ActiveArea"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v31 count] == 4)
  {
    v345 = 0u;
    v346 = 0u;
    v343 = 0u;
    v344 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v343 objects:v372 count:16];
    if (v33)
    {
      v34 = *v344;
      isKindOfClass = 1;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v344 != v34)
          {
            objc_enumerationMutation(v32);
          }

          if (isKindOfClass)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v343 objects:v372 count:16];
      }

      while (v33);

      if ((isKindOfClass & 1) == 0)
      {
        v37 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v37, "RawCameraException");
        __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    else
    {
    }

    v277 = [v32 objectAtIndexedSubscript:1];
    v279 = [v277 intValue];
    v281 = [v32 objectAtIndexedSubscript:0];
    v40 = [v281 intValue];
    v278 = [v32 objectAtIndexedSubscript:3];
    v41 = [v278 intValue];
    v42 = [v32 objectAtIndexedSubscript:1];
    v43 = [v42 intValue];
    v44 = [v32 objectAtIndexedSubscript:2];
    v45 = [v44 intValue];
    v46 = [v32 objectAtIndexedSubscript:0];
    v47 = [v46 intValue];
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    v48 = sub_2337F2574((a1 + 1408), &__p, &unk_233905F1C, &v374);
    v48[14] = v279;
    v48[15] = v40;
    v48[16] = v41 - v43;
    v48[17] = v45 - v47;
    if (SBYTE7(v361) < 0)
    {
      operator delete(__p);
    }
  }

  v49 = [v284 objectForKeyedSubscript:@"DefaultCropOrigin"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v49 count] == 2)
  {
    v341 = 0u;
    v342 = 0u;
    v339 = 0u;
    v340 = 0u;
    v50 = v49;
    v51 = [v50 countByEnumeratingWithState:&v339 objects:v371 count:16];
    if (v51)
    {
      v52 = *v340;
      v53 = 1;
      do
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v340 != v52)
          {
            objc_enumerationMutation(v50);
          }

          if (v53)
          {
            objc_opt_class();
            v53 = objc_opt_isKindOfClass();
          }

          else
          {
            v53 = 0;
          }
        }

        v51 = [v50 countByEnumeratingWithState:&v339 objects:v371 count:16];
      }

      while (v51);

      if ((v53 & 1) == 0)
      {
        v55 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v55, "RawCameraException");
        __cxa_throw(v55, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    else
    {
    }

    v56 = [v50 objectAtIndexedSubscript:0];
    v57 = [v56 intValue];
    v58 = [v50 objectAtIndexedSubscript:1];
    v59 = [v58 intValue];
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 1336), &__p, &unk_233905F1C, &v374) + 56) = v57 | (v59 << 32);
    if (SBYTE7(v361) < 0)
    {
      operator delete(__p);
    }
  }

  v60 = [v284 objectForKeyedSubscript:@"DefaultCropSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v60 count] == 2)
  {
    v337 = 0u;
    v338 = 0u;
    v335 = 0u;
    v336 = 0u;
    v61 = v60;
    v62 = [v61 countByEnumeratingWithState:&v335 objects:v370 count:16];
    if (v62)
    {
      v63 = *v336;
      v64 = 1;
      do
      {
        for (m = 0; m != v62; ++m)
        {
          if (*v336 != v63)
          {
            objc_enumerationMutation(v61);
          }

          if (v64)
          {
            objc_opt_class();
            v64 = objc_opt_isKindOfClass();
          }

          else
          {
            v64 = 0;
          }
        }

        v62 = [v61 countByEnumeratingWithState:&v335 objects:v370 count:16];
      }

      while (v62);

      if ((v64 & 1) == 0)
      {
        v66 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v66, "RawCameraException");
        __cxa_throw(v66, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    else
    {
    }

    v67 = [v61 objectAtIndexedSubscript:0];
    v68 = [v67 intValue];
    v69 = [v61 objectAtIndexedSubscript:1];
    v70 = [v69 intValue];
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 1360), &__p, &unk_233905F1C, &v374) + 56) = v68 | (v70 << 32);
    if (SBYTE7(v361) < 0)
    {
      operator delete(__p);
    }
  }

  v71 = [v284 objectForKeyedSubscript:@"DefaultCropScale"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v71 count] == 2)
  {
    v333 = 0u;
    v334 = 0u;
    v331 = 0u;
    v332 = 0u;
    v72 = v71;
    v73 = [v72 countByEnumeratingWithState:&v331 objects:v369 count:16];
    if (v73)
    {
      v74 = *v332;
      v75 = 1;
      do
      {
        for (n = 0; n != v73; ++n)
        {
          if (*v332 != v74)
          {
            objc_enumerationMutation(v72);
          }

          if (v75)
          {
            objc_opt_class();
            v75 = objc_opt_isKindOfClass();
          }

          else
          {
            v75 = 0;
          }
        }

        v73 = [v72 countByEnumeratingWithState:&v331 objects:v369 count:16];
      }

      while (v73);

      if ((v75 & 1) == 0)
      {
        v77 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v77, "RawCameraException");
        __cxa_throw(v77, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    else
    {
    }

    v78 = [v72 objectAtIndexedSubscript:0];
    v79 = [v78 intValue];
    v80 = [v72 objectAtIndexedSubscript:1];
    v81 = [v80 intValue];
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 1384), &__p, &unk_233905F1C, &v374) + 56) = v79 | (v81 << 32);
    if (SBYTE7(v361) < 0)
    {
      operator delete(__p);
    }
  }

  v82 = [v284 objectForKeyedSubscript:@"AnalogBalance"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v82 count] == 3)
  {
    __p = 0uLL;
    *&v361 = 0;
    v327 = 0u;
    v328 = 0u;
    v329 = 0u;
    v330 = 0u;
    v83 = v82;
    v84 = [v83 countByEnumeratingWithState:&v327 objects:v368 count:16];
    if (v84)
    {
      v85 = *v328;
      do
      {
        for (ii = 0; ii != v84; ++ii)
        {
          if (*v328 != v85)
          {
            objc_enumerationMutation(v83);
          }

          v87 = *(*(&v327 + 1) + 8 * ii);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v265 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v265, "RawCameraException");
            __cxa_throw(v265, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          [v87 doubleValue];
          *&v374 = v88;
          sub_2337F207C(&__p, &v374);
        }

        v84 = [v83 countByEnumeratingWithState:&v327 objects:v368 count:16];
      }

      while (v84);
    }

    sub_23372A488(&v374, "IFD0");
    __src = &v374;
    v89 = (sub_23375E520((a1 + 1864), &v374, &unk_233905F1C, &__src) + 56);
    if (v89 != &__p)
    {
      sub_23373176C(v89, __p, *(&__p + 1), (*(&__p + 1) - __p) >> 3);
    }

    if (SHIBYTE(v375) < 0)
    {
      operator delete(v374);
    }

    v90 = __p;
    if (__p)
    {
      *(&__p + 1) = __p;
LABEL_139:
      operator delete(v90);
    }
  }

  else
  {
    *&v361 = 0x3FF0000000000000;
    __p = xmmword_233907B08;
    sub_23372A488(&v374, "IFD0");
    __src = &v374;
    v91 = sub_23375E520((a1 + 1864), &v374, &unk_233905F1C, &__src);
    sub_233755258((v91 + 56), &__p, &v361 + 8, 3uLL);
    if (SHIBYTE(v375) < 0)
    {
      v90 = v374;
      goto LABEL_139;
    }
  }

  v92 = [v284 objectForKeyedSubscript:@"AsShotNeutral"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v92 count] == 3)
  {
    __p = 0uLL;
    *&v361 = 0;
    v323 = 0u;
    v324 = 0u;
    v325 = 0u;
    v326 = 0u;
    v93 = v92;
    v94 = [v93 countByEnumeratingWithState:&v323 objects:v367 count:16];
    if (v94)
    {
      v95 = *v324;
      do
      {
        for (jj = 0; jj != v94; ++jj)
        {
          if (*v324 != v95)
          {
            objc_enumerationMutation(v93);
          }

          v97 = *(*(&v323 + 1) + 8 * jj);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v266 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v266, "RawCameraException");
            __cxa_throw(v266, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          [v97 doubleValue];
          *&v374 = v98;
          sub_2337F207C(&__p, &v374);
        }

        v94 = [v93 countByEnumeratingWithState:&v323 objects:v367 count:16];
      }

      while (v94);
    }

    if ((a1 + 1248) != &__p)
    {
      sub_23373176C((a1 + 1248), __p, *(&__p + 1), (*(&__p + 1) - __p) >> 3);
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  else
  {
    *&v361 = 0x3FF0000000000000;
    __p = xmmword_233907B08;
    sub_233755258((a1 + 1248), &__p, &v361 + 8, 3uLL);
  }

  v99 = [v284 objectForKeyedSubscript:@"AntiAliasStrength"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v99 doubleValue];
    v101 = v100;
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 1528), &__p, &unk_233905F1C, &v374) + 56) = v101;
  }

  else
  {
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 1528), &__p, &unk_233905F1C, &v374) + 56) = 0x3FF0000000000000;
  }

  if (SBYTE7(v361) < 0)
  {
    operator delete(__p);
  }

  v102 = [v284 objectForKeyedSubscript:@"BaselineExposure"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v102 doubleValue];
    v104 = v103;
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 1888), &__p, &unk_233905F1C, &v374) + 56) = v104;
  }

  else
  {
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_23377BB60((a1 + 1888), &__p, &unk_233905F1C, &v374) + 56) = 0;
  }

  if (SBYTE7(v361) < 0)
  {
    operator delete(__p);
  }

  v105 = [v284 objectForKeyedSubscript:@"BlackLevel"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v110 = [v284 objectForKeyedSubscript:@"BlackLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      __p = 0uLL;
      *&v361 = 0;
      v318 = 0u;
      v319 = 0u;
      v320 = 0u;
      v321 = 0u;
      v111 = v110;
      v112 = [v111 countByEnumeratingWithState:&v318 objects:v363 count:16];
      if (v112)
      {
        v113 = *v319;
        do
        {
          for (kk = 0; kk != v112; ++kk)
          {
            if (*v319 != v113)
            {
              objc_enumerationMutation(v111);
            }

            v115 = *(*(&v318 + 1) + 8 * kk);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v267 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](v267, "RawCameraException");
              __cxa_throw(v267, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            [v115 doubleValue];
            *&v374 = v116;
            sub_2337F207C(&__p, &v374);
          }

          v112 = [v111 countByEnumeratingWithState:&v318 objects:v363 count:16];
        }

        while (v112);
      }

      sub_23372A488(&v374, "IFD0");
      __src = &v374;
      v117 = (sub_23375E520((a1 + 264), &v374, &unk_233905F1C, &__src) + 56);
      if (v117 != &__p)
      {
        sub_23373176C(v117, __p, *(&__p + 1), (*(&__p + 1) - __p) >> 3);
      }

      if (SHIBYTE(v375) < 0)
      {
        operator delete(v374);
      }

      v118 = __p;
      if (!__p)
      {
        goto LABEL_191;
      }

      *(&__p + 1) = __p;
    }

    else
    {
      v361 = 0u;
      __p = 0u;
      sub_23372A488(&v374, "IFD0");
      __src = &v374;
      v119 = sub_23375E520((a1 + 264), &v374, &unk_233905F1C, &__src);
      sub_233755258((v119 + 56), &__p, v362, 4uLL);
      if ((SHIBYTE(v375) & 0x80000000) == 0)
      {
LABEL_191:

        goto LABEL_192;
      }

      v118 = v374;
    }

    operator delete(v118);
    goto LABEL_191;
  }

  [v105 doubleValue];
  *&v374 = v106;
  sub_233731694(&__p, 4uLL, &v374);
  [v105 doubleValue];
  v322 = v107;
  sub_233731694(&v374, 4uLL, &v322);
  sub_23372A488(&__src, "IFD0");
  p_src = &__src;
  v108 = sub_23375E520((a1 + 264), &__src, &unk_233905F1C, &p_src);
  v109 = v108[7];
  if (v109)
  {
    v108[8] = v109;
    operator delete(v109);
    v108[7] = 0;
    v108[8] = 0;
    v108[9] = 0;
  }

  *(v108 + 7) = v374;
  v108[9] = v375;
  v375 = 0;
  v374 = 0uLL;
  if (v366 < 0)
  {
    operator delete(__src);
    if (v374)
    {
      *(&v374 + 1) = v374;
      operator delete(v374);
    }
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

LABEL_192:

  v120 = [v284 objectForKeyedSubscript:@"WhiteLevel"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v123 = [v284 objectForKeyedSubscript:@"WhiteLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      __p = 0uLL;
      *&v361 = 0;
      v314 = 0u;
      v315 = 0u;
      v316 = 0u;
      v317 = 0u;
      v124 = v123;
      v125 = [v124 countByEnumeratingWithState:&v314 objects:v359 count:16];
      if (v125)
      {
        v126 = *v315;
        do
        {
          for (mm = 0; mm != v125; ++mm)
          {
            if (*v315 != v126)
            {
              objc_enumerationMutation(v124);
            }

            v128 = *(*(&v314 + 1) + 8 * mm);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v268 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](v268, "RawCameraException");
              __cxa_throw(v268, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            [v128 doubleValue];
            *&v374 = v129;
            sub_2337F207C(&__p, &v374);
          }

          v125 = [v124 countByEnumeratingWithState:&v314 objects:v359 count:16];
        }

        while (v125);
      }

      sub_23372A488(&v374, "IFD0");
      __src = &v374;
      v130 = (sub_23375E520((a1 + 240), &v374, &unk_233905F1C, &__src) + 56);
      if (v130 != &__p)
      {
        sub_23373176C(v130, __p, *(&__p + 1), (*(&__p + 1) - __p) >> 3);
      }

      if (SHIBYTE(v375) < 0)
      {
        operator delete(v374);
      }

      v131 = __p;
      if (!__p)
      {
        goto LABEL_213;
      }

      *(&__p + 1) = __p;
    }

    else
    {
      __p = xmmword_233907B20;
      *&v361 = 0x40EFFFE000000000;
      sub_23372A488(&v374, "IFD0");
      __src = &v374;
      v132 = sub_23375E520((a1 + 240), &v374, &unk_233905F1C, &__src);
      sub_233755258((v132 + 56), &__p, &v361 + 8, 3uLL);
      if ((SHIBYTE(v375) & 0x80000000) == 0)
      {
LABEL_213:

        goto LABEL_214;
      }

      v131 = v374;
    }

    operator delete(v131);
    goto LABEL_213;
  }

  [v120 doubleValue];
  __src = v121;
  sub_23372A488(&__p, "IFD0");
  *&v374 = &__p;
  v122 = sub_23375E520((a1 + 240), &__p, &unk_233905F1C, &v374);
  sub_233755258((v122 + 56), &__src, &v365, 1uLL);
  if (SBYTE7(v361) < 0)
  {
    operator delete(__p);
  }

LABEL_214:

  v133 = [v284 objectForKeyedSubscript:@"CalibrationIlluminant1"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v134 = [v133 unsignedShortValue];
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_233786860((a1 + 1816), &__p, &unk_233905F1C, &v374) + 56) = v134;
  }

  else
  {
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_233786860((a1 + 1816), &__p, &unk_233905F1C, &v374) + 56) = 17;
  }

  if (SBYTE7(v361) < 0)
  {
    operator delete(__p);
  }

  v135 = [v284 objectForKeyedSubscript:@"CalibrationIlluminant2"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v136 = [v135 unsignedShortValue];
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_233786860((a1 + 1840), &__p, &unk_233905F1C, &v374) + 56) = v136;
  }

  else
  {
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    *(sub_233786860((a1 + 1840), &__p, &unk_233905F1C, &v374) + 56) = 21;
  }

  if (SBYTE7(v361) < 0)
  {
    operator delete(__p);
  }

  v137 = [v284 objectForKeyedSubscript:@"UniqueCameraModel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v138 = v137;
    v139 = [v137 UTF8String];
    sub_23372A488(&__p, "IFD0");
    *&v374 = &__p;
    v140 = sub_2337F2620((a1 + 1312), &__p, &unk_233905F1C, &v374);
    sub_23372610C((v140 + 56), v139);
    if (SBYTE7(v361) < 0)
    {
      operator delete(__p);
    }
  }

  v141 = [v284 objectForKeyedSubscript:@"ColorMatrix1"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v141 length] != 36)
  {
    v146 = [v284 objectForKeyedSubscript:@"ColorMatrix1"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v146 count] == 9)
    {
      v374 = 0uLL;
      v375 = 0;
      v310 = 0u;
      v311 = 0u;
      v312 = 0u;
      v313 = 0u;
      v152 = v146;
      v153 = [v152 countByEnumeratingWithState:&v310 objects:v358 count:16];
      if (v153)
      {
        v154 = *v311;
        do
        {
          for (nn = 0; nn != v153; ++nn)
          {
            if (*v311 != v154)
            {
              objc_enumerationMutation(v152);
            }

            v156 = *(*(&v310 + 1) + 8 * nn);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v271 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](v271, "RawCameraException");
              __cxa_throw(v271, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            [v156 doubleValue];
            *&__p = v157;
            sub_2337F207C(&v374, &__p);
          }

          v153 = [v152 countByEnumeratingWithState:&v310 objects:v358 count:16];
        }

        while (v153);
      }

      sub_2337DFC24(&__p, 3u, 3u, &v374);
      sub_23372A488(&__src, "IFD0");
      p_src = &__src;
      v158 = sub_2337F26EC((a1 + 1624), &__src, &unk_233905F1C, &p_src, &v322);
      sub_2337E004C(v158 + 7, &__p);
      if (v366 < 0)
      {
        operator delete(__src);
      }

      if (*(&__p + 1))
      {
        *&v361 = *(&__p + 1);
        operator delete(*(&__p + 1));
      }

      v159 = v374;
      if (!v374)
      {
        goto LABEL_258;
      }

      *(&v374 + 1) = v374;
    }

    else
    {
      sub_2337DF9CC(&__p, 3u, 3u, 1.0, v147, v148, v149, v150, v151, 0);
      sub_23372A488(&v374, "IFD0");
      __src = &v374;
      v160 = sub_2337F26EC((a1 + 1624), &v374, &unk_233905F1C, &__src, &p_src);
      sub_2337E004C(v160 + 7, &__p);
      if (SHIBYTE(v375) < 0)
      {
        operator delete(v374);
      }

      v159 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_258;
      }

      *&v361 = *(&__p + 1);
    }

    operator delete(v159);
LABEL_258:

    goto LABEL_259;
  }

  v142 = v141;
  v143 = [v141 bytes];
  v144 = 0;
  v374 = 0uLL;
  v375 = 0;
  do
  {
    *&__p = *(v143 + v144);
    sub_2337F207C(&v374, &__p);
    v144 += 4;
  }

  while (v144 != 36);
  sub_2337DFC24(&__p, 3u, 3u, &v374);
  sub_23372A488(&__src, "IFD0");
  p_src = &__src;
  v145 = sub_2337F26EC((a1 + 1624), &__src, &unk_233905F1C, &p_src, &v322);
  sub_2337E004C(v145 + 7, &__p);
  if (v366 < 0)
  {
    operator delete(__src);
  }

  if (*(&__p + 1))
  {
    *&v361 = *(&__p + 1);
    operator delete(*(&__p + 1));
  }

  if (v374)
  {
    *(&v374 + 1) = v374;
    operator delete(v374);
  }

LABEL_259:

  v161 = [v284 objectForKeyedSubscript:@"ColorMatrix2"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v161 length] != 36)
  {
    v166 = [v284 objectForKeyedSubscript:@"ColorMatrix2"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v166 count] == 9)
    {
      v374 = 0uLL;
      v375 = 0;
      v306 = 0u;
      v307 = 0u;
      v308 = 0u;
      v309 = 0u;
      v172 = v166;
      v173 = [v172 countByEnumeratingWithState:&v306 objects:v357 count:16];
      if (v173)
      {
        v174 = *v307;
        do
        {
          for (i1 = 0; i1 != v173; ++i1)
          {
            if (*v307 != v174)
            {
              objc_enumerationMutation(v172);
            }

            v176 = *(*(&v306 + 1) + 8 * i1);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v272 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](v272, "RawCameraException");
              __cxa_throw(v272, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            [v176 doubleValue];
            *&__p = v177;
            sub_2337F207C(&v374, &__p);
          }

          v173 = [v172 countByEnumeratingWithState:&v306 objects:v357 count:16];
        }

        while (v173);
      }

      sub_2337DFC24(&__p, 3u, 3u, &v374);
      sub_23372A488(&__src, "IFD0");
      p_src = &__src;
      v178 = sub_2337F26EC((a1 + 1648), &__src, &unk_233905F1C, &p_src, &v322);
      sub_2337E004C(v178 + 7, &__p);
      if (v366 < 0)
      {
        operator delete(__src);
      }

      if (*(&__p + 1))
      {
        *&v361 = *(&__p + 1);
        operator delete(*(&__p + 1));
      }

      v179 = v374;
      if (!v374)
      {
        goto LABEL_290;
      }

      *(&v374 + 1) = v374;
    }

    else
    {
      sub_2337DF9CC(&__p, 3u, 3u, 1.0, v167, v168, v169, v170, v171, 0);
      sub_23372A488(&v374, "IFD0");
      __src = &v374;
      v180 = sub_2337F26EC((a1 + 1648), &v374, &unk_233905F1C, &__src, &p_src);
      sub_2337E004C(v180 + 7, &__p);
      if (SHIBYTE(v375) < 0)
      {
        operator delete(v374);
      }

      v179 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_290;
      }

      *&v361 = *(&__p + 1);
    }

    operator delete(v179);
LABEL_290:

    goto LABEL_291;
  }

  v162 = v161;
  v163 = [v161 bytes];
  v164 = 0;
  v374 = 0uLL;
  v375 = 0;
  do
  {
    *&__p = *(v163 + v164);
    sub_2337F207C(&v374, &__p);
    v164 += 4;
  }

  while (v164 != 36);
  sub_2337DFC24(&__p, 3u, 3u, &v374);
  sub_23372A488(&__src, "IFD0");
  p_src = &__src;
  v165 = sub_2337F26EC((a1 + 1648), &__src, &unk_233905F1C, &p_src, &v322);
  sub_2337E004C(v165 + 7, &__p);
  if (v366 < 0)
  {
    operator delete(__src);
  }

  if (*(&__p + 1))
  {
    *&v361 = *(&__p + 1);
    operator delete(*(&__p + 1));
  }

  if (v374)
  {
    *(&v374 + 1) = v374;
    operator delete(v374);
  }

LABEL_291:

  v181 = [v284 objectForKeyedSubscript:@"ForwardMatrix1"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v181 length] != 36)
  {
    v186 = [v284 objectForKeyedSubscript:@"ForwardMatrix1"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v186 count] == 9)
    {
      v374 = 0uLL;
      v375 = 0;
      v302 = 0u;
      v303 = 0u;
      v304 = 0u;
      v305 = 0u;
      v192 = v186;
      v193 = [v192 countByEnumeratingWithState:&v302 objects:v356 count:16];
      if (v193)
      {
        v194 = *v303;
        do
        {
          for (i2 = 0; i2 != v193; ++i2)
          {
            if (*v303 != v194)
            {
              objc_enumerationMutation(v192);
            }

            v196 = *(*(&v302 + 1) + 8 * i2);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v273 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](v273, "RawCameraException");
              __cxa_throw(v273, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            [v196 doubleValue];
            *&__p = v197;
            sub_2337F207C(&v374, &__p);
          }

          v193 = [v192 countByEnumeratingWithState:&v302 objects:v356 count:16];
        }

        while (v193);
      }

      sub_2337DFC24(&__p, 3u, 3u, &v374);
      sub_23372A488(&__src, "IFD0");
      p_src = &__src;
      v198 = sub_2337F26EC((a1 + 1768), &__src, &unk_233905F1C, &p_src, &v322);
      sub_2337E004C(v198 + 7, &__p);
      if (v366 < 0)
      {
        operator delete(__src);
      }

      if (*(&__p + 1))
      {
        *&v361 = *(&__p + 1);
        operator delete(*(&__p + 1));
      }

      v199 = v374;
      if (!v374)
      {
        goto LABEL_322;
      }

      *(&v374 + 1) = v374;
    }

    else
    {
      sub_2337DF9CC(&__p, 3u, 3u, 1.0, v187, v188, v189, v190, v191, 0);
      sub_23372A488(&v374, "IFD0");
      __src = &v374;
      v200 = sub_2337F26EC((a1 + 1768), &v374, &unk_233905F1C, &__src, &p_src);
      sub_2337E004C(v200 + 7, &__p);
      if (SHIBYTE(v375) < 0)
      {
        operator delete(v374);
      }

      v199 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_322;
      }

      *&v361 = *(&__p + 1);
    }

    operator delete(v199);
LABEL_322:

    goto LABEL_323;
  }

  v182 = v181;
  v183 = [v181 bytes];
  v184 = 0;
  v374 = 0uLL;
  v375 = 0;
  do
  {
    *&__p = *(v183 + v184);
    sub_2337F207C(&v374, &__p);
    v184 += 4;
  }

  while (v184 != 36);
  sub_2337DFC24(&__p, 3u, 3u, &v374);
  sub_23372A488(&__src, "IFD0");
  p_src = &__src;
  v185 = sub_2337F26EC((a1 + 1768), &__src, &unk_233905F1C, &p_src, &v322);
  sub_2337E004C(v185 + 7, &__p);
  if (v366 < 0)
  {
    operator delete(__src);
  }

  if (*(&__p + 1))
  {
    *&v361 = *(&__p + 1);
    operator delete(*(&__p + 1));
  }

  if (v374)
  {
    *(&v374 + 1) = v374;
    operator delete(v374);
  }

LABEL_323:

  v201 = [v284 objectForKeyedSubscript:@"ForwardMatrix2"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v201 length] != 36)
  {
    v206 = [v284 objectForKeyedSubscript:@"ForwardMatrix2"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v206 count] == 9)
    {
      v374 = 0uLL;
      v375 = 0;
      v298 = 0u;
      v299 = 0u;
      v300 = 0u;
      v301 = 0u;
      v212 = v206;
      v213 = [v212 countByEnumeratingWithState:&v298 objects:v355 count:16];
      if (v213)
      {
        v214 = *v299;
        do
        {
          for (i3 = 0; i3 != v213; ++i3)
          {
            if (*v299 != v214)
            {
              objc_enumerationMutation(v212);
            }

            v216 = *(*(&v298 + 1) + 8 * i3);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v274 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](v274, "RawCameraException");
              __cxa_throw(v274, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            [v216 doubleValue];
            *&__p = v217;
            sub_2337F207C(&v374, &__p);
          }

          v213 = [v212 countByEnumeratingWithState:&v298 objects:v355 count:16];
        }

        while (v213);
      }

      sub_2337DFC24(&__p, 3u, 3u, &v374);
      sub_23372A488(&__src, "IFD0");
      p_src = &__src;
      v218 = sub_2337F26EC((a1 + 1792), &__src, &unk_233905F1C, &p_src, &v322);
      sub_2337E004C(v218 + 7, &__p);
      if (v366 < 0)
      {
        operator delete(__src);
      }

      if (*(&__p + 1))
      {
        *&v361 = *(&__p + 1);
        operator delete(*(&__p + 1));
      }

      v219 = v374;
      if (!v374)
      {
        goto LABEL_354;
      }

      *(&v374 + 1) = v374;
    }

    else
    {
      sub_2337DF9CC(&__p, 3u, 3u, 1.0, v207, v208, v209, v210, v211, 0);
      sub_23372A488(&v374, "IFD0");
      __src = &v374;
      v220 = sub_2337F26EC((a1 + 1792), &v374, &unk_233905F1C, &__src, &p_src);
      sub_2337E004C(v220 + 7, &__p);
      if (SHIBYTE(v375) < 0)
      {
        operator delete(v374);
      }

      v219 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_354;
      }

      *&v361 = *(&__p + 1);
    }

    operator delete(v219);
LABEL_354:

    goto LABEL_355;
  }

  v202 = v201;
  v203 = [v201 bytes];
  v204 = 0;
  v374 = 0uLL;
  v375 = 0;
  do
  {
    *&__p = *(v203 + v204);
    sub_2337F207C(&v374, &__p);
    v204 += 4;
  }

  while (v204 != 36);
  sub_2337DFC24(&__p, 3u, 3u, &v374);
  sub_23372A488(&__src, "IFD0");
  p_src = &__src;
  v205 = sub_2337F26EC((a1 + 1792), &__src, &unk_233905F1C, &p_src, &v322);
  sub_2337E004C(v205 + 7, &__p);
  if (v366 < 0)
  {
    operator delete(__src);
  }

  if (*(&__p + 1))
  {
    *&v361 = *(&__p + 1);
    operator delete(*(&__p + 1));
  }

  if (v374)
  {
    *(&v374 + 1) = v374;
    operator delete(v374);
  }

LABEL_355:

  v221 = [v284 objectForKeyedSubscript:@"BaselineNoise"];
  objc_opt_class();
  v222 = objc_opt_isKindOfClass();
  v223 = 1.0;
  if (v222)
  {
    [v221 doubleValue];
  }

  *(a1 + 1912) = v223;

  v224 = [v284 objectForKeyedSubscript:@"NoiseProfile"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v224 count] == 2)
  {
    __p = 0uLL;
    *&v361 = 0;
    v294 = 0u;
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v225 = v224;
    v226 = [v225 countByEnumeratingWithState:&v294 objects:v354 count:16];
    if (v226)
    {
      v227 = *v295;
      do
      {
        for (i4 = 0; i4 != v226; ++i4)
        {
          if (*v295 != v227)
          {
            objc_enumerationMutation(v225);
          }

          v229 = *(*(&v294 + 1) + 8 * i4);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v269 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v269, "RawCameraException");
            __cxa_throw(v269, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          [v229 doubleValue];
          *&v374 = v230;
          sub_2337F207C(&__p, &v374);
        }

        v226 = [v225 countByEnumeratingWithState:&v294 objects:v354 count:16];
      }

      while (v226);
    }

    sub_23372A488(&v374, "IFD0");
    __src = &v374;
    v231 = (sub_23375E520((a1 + 1928), &v374, &unk_233905F1C, &__src) + 56);
    if (v231 != &__p)
    {
      sub_23373176C(v231, __p, *(&__p + 1), (*(&__p + 1) - __p) >> 3);
    }

    if (SHIBYTE(v375) < 0)
    {
      operator delete(v374);
    }

    v232 = __p;
    if (__p)
    {
      *(&__p + 1) = __p;
LABEL_375:
      operator delete(v232);
    }
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    v374 = _Q0;
    sub_23372A488(&__p, "IFD0");
    __src = &__p;
    v238 = sub_23375E520((a1 + 1928), &__p, &unk_233905F1C, &__src);
    sub_233755258((v238 + 56), &v374, &v375, 2uLL);
    if (SBYTE7(v361) < 0)
    {
      v232 = __p;
      goto LABEL_375;
    }
  }

  v239 = [v284 objectForKeyedSubscript:@"FixVignetteRadial"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v239 count] == 7)
  {
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    v240 = v239;
    v241 = [v240 countByEnumeratingWithState:&v290 objects:v353 count:16];
    if (v241)
    {
      v242 = *v291;
      do
      {
        for (i5 = 0; i5 != v241; ++i5)
        {
          if (*v291 != v242)
          {
            objc_enumerationMutation(v240);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v270 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v270, "RawCameraException");
            __cxa_throw(v270, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }

        v241 = [v240 countByEnumeratingWithState:&v290 objects:v353 count:16];
      }

      while (v241);
    }

    v244 = [v240 objectAtIndexedSubscript:0];
    [v244 doubleValue];
    v246 = v245;

    p_src = v246;
    v247 = [v240 objectAtIndexedSubscript:1];
    [v247 doubleValue];
    v249 = v248;

    v322 = v249;
    v250 = [v240 objectAtIndexedSubscript:2];
    [v250 doubleValue];
    v252 = v251;

    v289 = v252;
    v253 = [v240 objectAtIndexedSubscript:3];
    [v253 doubleValue];
    v255 = v254;

    v288 = v255;
    v256 = [v240 objectAtIndexedSubscript:4];
    [v256 doubleValue];
    v258 = v257;

    v287 = v258;
    v259 = [v240 objectAtIndexedSubscript:5];
    [v259 doubleValue];
    v261 = v260;

    v286 = v261;
    v262 = [v240 objectAtIndexedSubscript:6];
    [v262 doubleValue];
    v264 = v263;

    v285 = v264;
    LODWORD(__p) = 0;
    sub_2337F2880(&__src, &__p, &p_src, &v322, &v289, &v288, &v287, &v286, &v285);
  }
}

void sub_2337F13E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  STACK[0x8E8] = &STACK[0x840];
  sub_233723948(&STACK[0x8E8]);
  if (STACK[0xC88])
  {
    sub_2337239E8(STACK[0xC88]);
  }

  _Unwind_Resume(a1);
}

void sub_2337F207C(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2337235BC();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_233723798(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

id sub_2337F215C(void *a1)
{
  v2 = (*(*a1 + 440))(a1);
  v3 = (*(*a1 + 448))(a1);
  v5 = v4;
  v6 = HIDWORD(v4);
  v7 = a1[314];
  CGAffineTransformMakeTranslation(&v11, -v3, -((v2 - (((v4 & 0xFFFFFFFF00000000) + v3) & 0xFFFFFFFF00000000)) >> 32));
  v8 = [v7 imageByApplyingTransform:&v11];
  v9 = [v8 imageByCroppingToRect:{0.0, 0.0, v5, v6}];

  return v9;
}

void sub_2337F2280(uint64_t a1)
{
  sub_2337F2484(a1);

  JUMPOUT(0x2383ABF10);
}

void **sub_2337F22B8(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2337261C8(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *sub_2337F23E8(uint64_t *a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_233724F10(a1, a2);
  }

  return a1;
}

uint64_t sub_2337F2484(uint64_t a1)
{

  return sub_2337A715C(a1);
}

uint64_t sub_2337F24C8(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_233757640(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_2337F2574(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_233757640(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_2337F2620(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_233757640(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_2337F26EC(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_233757640(a1, &v7, a2);
  if (!v5)
  {
    sub_2337F2794();
  }

  return v5;
}

uint64_t sub_2337F2820(uint64_t a1, __int128 **a2)
{
  v3 = *a2;
  v4 = **a2;
  *(a1 + 16) = *(*a2 + 2);
  *a1 = v4;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  sub_2337DF868((a1 + 24));
  return a1;
}

void sub_2337F2864(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337F2944(void *a1, unsigned int *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849097F0;
  sub_2338F30B4((a1 + 3), *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  return a1;
}

void sub_2337F29C4(uint64_t a1)
{
  v6[0] = &unk_284917748;
  v6[1] = 0;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:WhitePoint");
  (*(*v1 + 600))(v1, __p, v6, 3);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_2337F2AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F2AD4(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v14 = a3;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  if ((*(*a1 + 960))(a1) != 10 && (*(*a1 + 960))(a1) != 15)
  {
    goto LABEL_12;
  }

  (*(*a1 + 160))(&v10, a1);
  v5 = v10;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE");
  v6 = (*(*v5 + 248))(v5, __p, v12, 0);
  if ((v12[1] - v12[0]) == 32)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    sub_2337239E8(v11);
  }

  if (v7)
  {
    *a2 = *v12;
    a2[2] = v13;
  }

  else
  {
LABEL_12:
    sub_233731694(a2, 4uLL, &v14);
    if (v12[0])
    {
      v12[1] = v12[0];
      operator delete(v12[0]);
    }
  }
}

void sub_2337F2C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337F2CCC(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 512))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2337F2D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F2D80(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    v2 = (*(*a1 + 592))(a1);
    if (v2 != 0xFFFF)
    {
      if (v2 != 32773)
      {
        if (v2 == 1)
        {
          (*(*a1 + 160))(&v13, a1);
          (*(*v13 + 384))(&v14);
          v12 = (*(*a1 + 336))(a1);
          v11 = (*(*a1 + 408))(a1);
          v9 = (*(*a1 + 432))(a1);
          v10 = v3;
          sub_2337F3A48();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      (*(*a1 + 160))(&v13, a1);
      (*(*v13 + 384))(&v14);
      v12 = (*(*a1 + 336))(a1);
      v11 = (*(*a1 + 408))(a1);
      v9 = (*(*a1 + 432))(a1);
      v10 = v4;
      sub_2337F3AEC();
    }

    (*(*a1 + 160))(__p, a1);
    sub_2337F33A4(__p, &v14);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    if (v14)
    {
      (*(*v14 + 384))(__p);
      v12 = (*(*a1 + 336))(a1);
      v11 = (*(*a1 + 408))(a1);
      v9 = (*(*a1 + 432))(a1);
      v10 = v5;
      sub_2337F3B90();
    }

    v6 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v6, "RawCameraException");
    __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void *sub_2337F33A4@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284908EF0, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337F3428(uint64_t a1, void *a2)
{
  (*(*a1 + 160))(&__p);
  sub_2337F33A4(&__p, &v10);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  v3 = v10;
  if (v10)
  {
    v9 = 0;
    sub_23372A488(&__p, "IFD0:EXIF:MAKERNOTE:ExpandedDynamicRange");
    v4 = (*(*v3 + 784))(v3, &__p, &v9);
    v3 = v4;
    if ((v8 & 0x80000000) == 0)
    {
      if (!v4)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    operator delete(__p);
    if (v3)
    {
LABEL_6:
      *a2 = v9;
    }
  }

LABEL_7:
  if (v11)
  {
    sub_2337239E8(v11);
  }

  return v3;
}

void sub_2337F351C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337F354C(uint64_t a1)
{
  v2 = (*(*a1 + 944))(a1);
  result = 0.0;
  if (v2)
  {
    v4 = sub_2337F3428(a1, &v5);
    result = 0.0;
    if (v4)
    {
      return 1.0;
    }
  }

  return result;
}

id sub_2337F35C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"activeRectAvailableAsTag"])
  {
    (*(*a1 + 160))(&v15, a1);
    sub_2337D04B8(&v15, &v17);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    v4 = MEMORY[0x277CBEC28];
    if (v17 != 0.0 && ((*(**&v17 + 784))(COERCE_DOUBLE(*&v17)) & 1) != 0)
    {
      v4 = MEMORY[0x277CBEC38];
    }

    v5 = v4;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"hasExtendedDynamicRangeAdjustment"])
  {
    v7 = sub_2337F3428(a1, &v17);
    v8 = MEMORY[0x277CBEC28];
    if (v7)
    {
      v8 = MEMORY[0x277CBEC38];
    }

    v9 = v8;
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"extendedDynamicRangeAdjustment"])
  {
    v17 = 0.0;
    v10 = MEMORY[0x277CCABB0];
    sub_2337F3428(a1, &v17);
    v9 = [v10 numberWithDouble:v17];
    goto LABEL_16;
  }

  if (![v3 isEqualToString:@"dngBaselineExposureTag"])
  {
    if ([v3 isEqualToString:@"pentaxShakeReduction"])
    {
      (*(*a1 + 160))(&v15, a1);
      sub_2337F33A4(&v15, &v17);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      v13 = MEMORY[0x277CCABB0];
      if (v17 == 0.0)
      {
        v14 = 0;
      }

      else
      {
        v14 = (*(**&v17 + 800))(COERCE_DOUBLE(*&v17));
      }

      v5 = [v13 numberWithInt:v14];
      goto LABEL_8;
    }

    v9 = sub_2338D3C20(a1, v3);
LABEL_16:
    v6 = v9;
    goto LABEL_17;
  }

  v12 = MEMORY[0x277CCABB0];
  (*(*a1 + 160))(&v17, a1);
  (*(**&v17 + 352))(COERCE_DOUBLE(*&v17));
  v5 = [v12 numberWithDouble:?];
LABEL_8:
  v6 = v5;
  if (v18)
  {
    sub_2337239E8(v18);
  }

LABEL_17:

  return v6;
}

uint64_t sub_2337F38EC(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t *a5)
{
  v6 = a4;
  if (a4 == 3)
  {
    a4 = 4;
  }

  v8 = sub_2337BF918(a1, a2, a3, a4, a5);
  v9 = v8;
  if (v6 == 3 && v8)
  {
    v10 = *(a1 + 12);
    v11 = *a5;
    v12 = (*a5 + 4);
    if (v10 == 3)
    {
      v13 = *a5 + 4;
    }

    else
    {
      v13 = *a5;
    }

    if (v10 == 3)
    {
      v14 = *a5;
    }

    else
    {
      v14 = *a5 + 4;
    }

    v15 = *a5 + 8;
    v16 = *a5 + 12;
    if (v10 == 2)
    {
      v13 = *a5;
      v14 = *a5 + 4;
      v15 = *a5 + 12;
      v16 = *a5 + 8;
    }

    v17 = v10 == 1;
    if (v10 == 1)
    {
      v18 = (*a5 + 8);
    }

    else
    {
      v18 = v13;
    }

    if (v17)
    {
      v19 = (*a5 + 12);
    }

    else
    {
      v19 = v14;
    }

    if (!v17)
    {
      v11 = v15;
      v12 = v16;
    }

    v20 = *v12;
    v21 = *v11;
    v22 = *v19;
    v23 = *v18;
    sub_23372630C(&v35, 3uLL);
    v24 = v23 * v21;
    v25 = v22 * v21;
    v26 = v22 * v20;
    if (v24 >> 16)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25 >> 16 == 0;
    }

    if (!v27 || v26 >= 0x10000)
    {
      do
      {
        do
        {
          v28 = v25;
          v29 = v24 >> 17;
          v24 >>= 1;
          v30 = v26;
          v25 >>= 1;
          v26 >>= 1;
        }

        while (v29);
      }

      while (v28 >> 17 || v30 >> 17);
    }

    v31 = *a5;
    v32 = v35;
    *a5 = v35;
    *v32 = v24;
    v32[1] = v25;
    v32[2] = v26;
    v33 = a5[2];
    a5[2] = v36;
    *&v35 = v31;
    v36 = v33;
    if (v31)
    {
      *(&v35 + 1) = v31;
      operator delete(v31);
    }
  }

  return v9;
}

void *sub_2337F3C34(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284917790;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_28490FF40;
  a1[28] = 0;
  a1[29] = 0;
  a1[27] = 0;
  return a1;
}

void sub_2337F3CD8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284917790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337F3D54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_2849177E0;
  v5[6] = 0;
  v6 = (v5 + 6);
  v5[7] = 0;
  v5[8] = 0;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  *(a1 + 20) = sub_233725614(*a3);
  *(a1 + 24) = sub_233725614(*a3);
  *(a1 + 28) = sub_233725614(*a3);
  *(a1 + 32) = sub_233725614(*a3);
  *(a1 + 36) = sub_233725614(*a3);
  *(a1 + 40) = sub_233725614(*a3);
  for (i = sub_233725614(*a3); i; --i)
  {
    v8 = sub_233725730(*a3);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = v10 - *v6;
      v14 = v13 >> 2;
      v15 = (v13 >> 2) + 1;
      if (v15 >> 62)
      {
        sub_2337235BC();
      }

      v16 = v9 - v12;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_2337235D4(v6, v17);
      }

      *(4 * v14) = v8;
      v11 = 4 * v14 + 4;
      memcpy(0, v12, v13);
      v18 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(a1 + 56) = v11;
      *(a1 + 64) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    *(a1 + 56) = v11;
  }

  return a1;
}

void sub_2337F3F04(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

RAWOpcodeDeltaPerRow *sub_2337F3F30(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 12)];
  [v2 setObject:v3 forKeyedSubscript:@"Top"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 16)];
  [v2 setObject:v4 forKeyedSubscript:@"Left"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 20)];
  [v2 setObject:v5 forKeyedSubscript:@"Bottom"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 24)];
  [v2 setObject:v6 forKeyedSubscript:@"mRight"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 28)];
  [v2 setObject:v7 forKeyedSubscript:@"Plane"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  [v2 setObject:v8 forKeyedSubscript:@"Planes"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 36)];
  [v2 setObject:v9 forKeyedSubscript:@"RowPitch"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  [v2 setObject:v10 forKeyedSubscript:@"ColPitch"];

  v11 = [MEMORY[0x277CBEB18] array];
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  while (v13 != v14)
  {
    LODWORD(v12) = *v13;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [v11 addObject:v15];

    ++v13;
  }

  [v2 setObject:v11 forKeyedSubscript:@"Delta"];
  v16 = [[RAWOpcodeDeltaPerRow alloc] initWithArguments:v2];

  return v16;
}

void *sub_2337F41C0(void *a1)
{
  *a1 = &unk_2849177E0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2337F4210(void *a1)
{
  *a1 = &unk_2849177E0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337F4288@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v10 = a2;
  sub_233726154(a4, a3 + 64);
  v7 = *(a1 + 24);
  sub_233723AE0(&v9, &v10);
  (*(*v7 + 40))(v7, &v9, 0);
  return (*(**(a1 + 24) + 32))(*(a1 + 24), *a4, a3);
}

void sub_2337F4340(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __cxa_end_catch();
  JUMPOUT(0x2337F432CLL);
}

void sub_2337F4368(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F4384(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    LOWORD(v23.next_in) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CSonyDeflateUnpacker", &unk_233945DBE, &v23, 2u);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2337F482C;
  v26[3] = &unk_2789EE800;
  v26[4] = a1;
  v4 = MEMORY[0x2383AC810](v26);
  v5 = (*(*a1 + 56))(a1);
  v7 = *(a1 + 44);
  v6 = *(a1 + 48);
  v8 = *(a1 + 188);
  v9 = *(a1 + 192);
  v23.next_in = ((*(a1 + 208) - *(a1 + 200)) >> 2);
  sub_233723C18(v25, &v23);
  if (v7 >> 5 >= 0x271 || v6 >> 5 >= 0x271 || v8 >> 5 >= 0x271 || v9 >> 5 >= 0x271 || LODWORD(v25[0]) >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = sub_2337ADCC4(a1);
  sub_2337F4288(a1, **(a1 + 200), **(a1 + 224), v25);
  v11 = 12 * v8 * v9;
  sub_233726154(__p, v11);
  memset(&v23.zalloc, 0, 24);
  v23.avail_in = **(a1 + 224);
  v23.next_in = v25[0];
  v23.avail_out = v11;
  v23.next_out = __p[0];
  if (inflateInit_(&v23, "1.2.12", 112) || inflate(&v23, 2) != 1 || inflateEnd(&v23))
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v22, "RawCameraException");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = sub_2337AF4A8(a1);
  v13 = __p[0];
  v14 = (*(a1 + 192) * *(a1 + 188));
  sub_23381E720(__p[0], 4 * v14, v5);
  v15 = v14 * v5;
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v17 = 0.0;
      v18 = v13;
      v19 = 4;
      do
      {
        if (v19 != 4)
        {
          LODWORD(v17) <<= 8;
        }

        LODWORD(v17) |= *v18;
        v18 += v15;
        --v19;
      }

      while (v19);
      v20 = bswap32(LODWORD(v17));
      if (v12 != 1)
      {
        v17 = *&v20;
      }

      *(v10 + 2 * i) = v17;
      ++v13;
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  v4[2](v4);
}

void sub_2337F482C(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSonyDeflateUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void **sub_2337F48B4(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 188) = a2;
  *(a1 + 192) = a3;
  v7 = (a1 + 200);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 224);
  if ((a1 + 224) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

void *sub_2337F492C(void *a1)
{
  *a1 = &unk_284917828;
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  return sub_233723A54(a1);
}

void sub_2337F499C(void *a1)
{
  *a1 = &unk_284917828;
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337F4A2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(*a1 + 2992))(a1) && ((v4 = (*(*a1 + 2952))(a1), v4 <= 0x2CA5) ? (v5 = (14 * v4) & 0xFFFF0) : (v5 = 160000), v5 > (*(*a1 + 864))(a1)))
  {
    (*(*a1 + 728))(v69, a1);
    v6 = llround((*(*a1 + 896))(a1));
    sub_2337DF9CC(&v66, 3u, 1u, *v69[0] * v6, v7, v8, v9, v10, v11, COERCE__INT64(*(v69[0] + 1) * v6));
    (*(*a1 + 648))(v65, a1);
    v57.f64[0] = (*(*a1 + 720))(a1);
    v57.f64[1] = v12;
    sub_2337DF9CC(v59, 3u, 3u, 0.6097, v13, v14, v15, v16, v17, 0x3FCA474538EF34D7);
    sub_23381A514(v65, &v57, v59, &v62);
    if (__p)
    {
      v61 = __p;
      operator delete(__p);
    }

    if (!v62 || !HIDWORD(v62))
    {
      sub_2337DF9CC(a2, 3u, 1u, v6, v18, v19, v20, v21, v22, v6);
      goto LABEL_28;
    }

    sub_2337DF9CC(&v57, 3u, 1u, 1.0, v18, v19, v20, v21, v22, 0x3FF0000000000000);
    sub_2337E0720(&v62, &v52);
    sub_2337E032C(&v52, &v57, &v54);
    if (*(&v52 + 1))
    {
      v53 = *(&v52 + 1);
      operator delete(*(&v52 + 1));
    }

    v23 = sub_2337E0EE4(&v54);
    sub_2337E0244(&v54, &v52, 1.0 / v23);
    sub_2337E004C(&v54, &v52);
    if (*(&v52 + 1))
    {
      v53 = *(&v52 + 1);
      operator delete(*(&v52 + 1));
    }

    v24 = sub_2337E0F94(&v54);
    *&v52 = sub_2337DFCEC(&v54, 2u);
    *(&v52 + 1) = v25;
    *sub_2337DFD6C(&v52, 0) = v24;
    v51[0] = sub_2337DFCEC(&v54, 1u);
    v51[1] = v26;
    *sub_2337DFD6C(v51, 0) = v24;
    v50[0] = sub_2337DFCEC(&v54, 0);
    v50[1] = v27;
    *sub_2337DFD6C(v50, 0) = v24;
    sub_2337E0244(&v54, a2, v5);
  }

  else
  {
    (*(*a1 + 728))(v69, a1);
    v28 = llround((*(*a1 + 896))(a1));
    sub_2337DF9CC(&v66, 3u, 1u, *v69[0] * v28, v29, v30, v31, v32, v33, COERCE__INT64(*(v69[0] + 1) * v28));
    (*(*a1 + 648))(v65, a1);
    v57.f64[0] = (*(*a1 + 720))(a1);
    v57.f64[1] = v34;
    sub_2337DF9CC(v47, 3u, 3u, 0.6097, v35, v36, v37, v38, v39, 0x3FCA474538EF34D7);
    sub_23381A514(v65, &v57, v47, &v62);
    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (!v62 || !HIDWORD(v62))
    {
      sub_2337DF9CC(a2, 3u, 1u, v28, v40, v41, v42, v43, v44, v28);
      goto LABEL_28;
    }

    sub_2337DF9CC(&v57, 3u, 1u, 1.0, v40, v41, v42, v43, v44, 0x3FF0000000000000);
    sub_2337E0720(&v62, &v52);
    sub_2337E032C(&v52, &v57, &v54);
    if (*(&v52 + 1))
    {
      v53 = *(&v52 + 1);
      operator delete(*(&v52 + 1));
    }

    v45 = sub_2337E0EE4(&v54);
    sub_2337E0244(&v54, &v52, 1.0 / v45);
    sub_2337E004C(&v54, &v52);
    if (*(&v52 + 1))
    {
      v53 = *(&v52 + 1);
      operator delete(*(&v52 + 1));
    }

    v46 = sub_2337E0EE4(&v66);
    sub_2337E0244(&v54, a2, v46);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (*&v57.f64[1])
  {
    v58 = v57.f64[1];
    operator delete(*&v57.f64[1]);
  }

LABEL_28:
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  sub_2337D35EC(v65);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v69[0])
  {
    v69[1] = v69[0];
    operator delete(v69[0]);
  }
}

void sub_2337F512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2337D35EC(&a45);
  v47 = *(v45 - 112);
  if (v47)
  {
    *(v45 - 104) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 88);
  if (v48)
  {
    *(v45 - 80) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void sub_2337F5250(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*a1 + 736))(&v6);
    (*(*a1 + 728))(__p, a1);
    sub_2337DFE04(__p, &v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((*(*a1 + 2992))(a1))
    {
      sub_2337E0F94(&v4);
      sub_2337E0EE4(&v4);
    }

    sub_2337E0EE4(&v6);
    if (*(&v4 + 1))
    {
      v5 = *(&v4 + 1);
      operator delete(*(&v4 + 1));
    }

    if (v7)
    {
      v8 = v7;
      operator delete(v7);
    }
  }
}

void sub_2337F53A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337F53F4(unsigned __int16 *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1[201];
  if (!a1[201])
  {
    v11 = 0x100010000;
    __p = 0;
    v9 = 0;
    v10 = 0;
    sub_233728FF4(&__p, &v11, &v12, 4);
    (*(*a1 + 400))(&v6, a1);
    v3 = v6;
    v4 = (*(*a1 + 888))(a1);
    v1 = sub_2337B0BE8(v3, &__p, v4);
    if (v7)
    {
      sub_2337239E8(v7);
    }

    a1[201] = v1;
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
      return a1[201];
    }
  }

  return v1;
}

void sub_2337F5520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337F5558(uint64_t a1)
{
  (*(*a1 + 72))(&v7);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337F59D0;
  v6[3] = &unk_2789EF130;
  v6[4] = a1;
  v4 = sub_2337F5668(v2, @"directionNoiseFactor", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2337F5650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337F5668(uint64_t a1, void *a2, int a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2337F8AA4;
    v21[3] = &unk_2789EEF70;
    v12 = v8;
    v22 = v12;
    sub_23386DB28(a1, v7, v21, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      [v14 doubleValue];
      v11 = v15;
    }

    else
    {
      v11 = 0.0;
    }

    if (v26)
    {
      sub_2337239E8(v26);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v16 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v24);
    v17 = (v16 + 7);
    v24[1] = *&v11;
    v24[0] = sub_2337F8B38;
    if (v24 != v16 + 7)
    {
      v18 = *v17;
      if (*v17)
      {
        p_p = 0;
        v26 = 0;
        v18(2, v17, &p_p, 0, 0);
        v24[0](2, v24, v17, 0, 0);
        (p_p)(2, &p_p, v24, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v16 + 8) = v11;
        v16[7] = sub_2337F8B38;
        v24[0] = 0;
      }
    }

    sub_2337BF090(v24);
  }

  else
  {
    v10 = sub_2337F8AEC((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337F5940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2337F5A2C(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337F5668(v2, @"directionLowThreshold", v3, &unk_284917910);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337F5AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337F5B00(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337F5668(v2, @"gradientThreshold", v3, &unk_284917930);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337F5BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337F5C14(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D0E68(v2, @"blackLevelExtendEnabled", v3, &unk_284917950);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337F5CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337F5CE0(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6 && (*(*a1 + 120))(a1) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = (*(*a1 + 2168))(a1);
  if (v2 == -583279181)
  {
    return 4;
  }

  if (v2 != 2011985870)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = (*(*a1 + 2992))(a1);
  v4 = (*(*a1 + 3000))(a1);
  if (v3)
  {
    v5 = 6;
    v6 = 8;
  }

  else
  {
    v5 = 5;
    v6 = 7;
  }

  if (v4)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void sub_2337F5E74(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v5.n128_f32[0] = sub_2338537B4(a1, a3, a2);
  *(a2 + 196) = 0;
  *(a2 + 188) = 0;
  *(a2 + 9) = (*(*a1 + 2976))(a1, v5);
  *(a2 + 40) = 1063675494;
  *(a2 + 68) = 1078774989;
  *(a2 + 108) = 0;
  v6 = (*(*a1 + 1080))(a1);
  *(a2 + 116) = v6;
  *(a2 + 120) = 0x200000000;
  *(a2 + 128) = 0x3F2AAAB000000001;
  *(a2 + 136) = 1;
  *(a2 + 140) = 0;
  *(a2 + 144) = 2 * ((*(*a1 + 256))(a1) > 0x190);
  *(a2 + 148) = 0x3CF5C28F3D48B439;
  *(a2 + 156) = 1071602729;
  *(a2 + 301) = 1;
  v7 = (*(*a1 + 2320))(a1);
  *(a2 + 112) = v7;
  *(a2 + 304) = 1;
  *(a2 + 308) = 1;
  v8 = (*(*a1 + 3008))(a1);
  *(a2 + 620) = v8;
  (*(*a1 + 744))(&v22, a1);
  v9 = v22;
  v10 = v23 - v22;
  if (v23 == v22 || (v11 = *v22 * 1.04, *(a2 + 624) = v11, v10 < 9) || (v12 = v9[1] * 1.01, *(a2 + 628) = v12, v10 == 16))
  {
    sub_2337306B0();
  }

  v13 = v9[2] * 0.91;
  *(a2 + 632) = v13;
  v23 = v9;
  operator delete(v9);
  *(a2 + 188) = 1;
  *(a2 + 196) = 4489188110499840000;
  v14 = (*(*a1 + 2960))(a1);
  *(a2 + 204) = v14;
  v15 = (*(*a1 + 2968))(a1);
  *(a2 + 208) = v15;
  *(a2 + 248) = 0;
  *(a2 + 212) = 1;
  *(a2 + 228) = 1;
  *(a2 + 240) = 1;
  v16 = (*(*a1 + 3000))(a1);
  v17 = 0x3B83126F3F000000;
  if (v16)
  {
    v18 = 0x3B83126F3F000000;
  }

  else
  {
    v19 = (*(*a1 + 2992))(a1);
    v17 = 0x3B83126F3F000000;
    v18 = 0x3B83126F3F000000;
    if (v19)
    {
      *&v20 = (*(*a1 + 256))(a1, 5.04831901e-22) / -75.0 + 34.6667;
      v17 = v20;
      v18 = 0x3D5D2F1B3CB43958;
    }
  }

  *(a2 + 216) = v17;
  *(a2 + 232) = v18;
  *(a2 + 244) = v18;
  *(a2 + 224) = 0;
  *(a2 + 252) = 257;
  *(a2 + 256) = 1025490551;
  *(a2 + 268) = 2;
  v21 = (*(*a1 + 2984))(a1);
  *(a2 + 184) = v21;
  *(a2 + 163) = v21 > 1.0e-10;
}

void sub_2337F6398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F63B4(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(*a1 + 120))(a1) <= 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a1 + 400) = 1;
  sub_2337C1B84(a1, a2, v5);
  if (a2 && (*(*a1 + 2992))(a1))
  {
    v6 = sub_2337854A4(v5, *MEMORY[0x277CD3468], 0);
    v7 = objc_autoreleasePoolPush();
    (*(*a1 + 1200))(&v48, a1);
    if (sub_2337E0044(&v48) < 3 || sub_2337E003C(&v48) <= 2)
    {
      v45 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v45, "RawCameraException");
      __cxa_throw(v45, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v8 = MEMORY[0x277CCABB0];
    v46 = sub_2337DFCEC(&v48, 0);
    v47 = v9;
    v10 = *sub_2337DFD6C(&v46, 0);
    v11 = [v8 numberWithDouble:v10 * (*(*a1 + 3016))(a1)];
    [v6 setObject:v11 forKeyedSubscript:@"mc00"];

    v12 = MEMORY[0x277CCABB0];
    v46 = sub_2337DFCEC(&v48, 0);
    v47 = v13;
    v14 = *sub_2337DFD6C(&v46, 1u);
    v15 = [v12 numberWithDouble:v14 * (*(*a1 + 3016))(a1)];
    [v6 setObject:v15 forKeyedSubscript:@"mc01"];

    v16 = MEMORY[0x277CCABB0];
    v46 = sub_2337DFCEC(&v48, 0);
    v47 = v17;
    v18 = *sub_2337DFD6C(&v46, 2u);
    v19 = [v16 numberWithDouble:v18 * (*(*a1 + 3016))(a1)];
    [v6 setObject:v19 forKeyedSubscript:@"mc02"];

    v20 = MEMORY[0x277CCABB0];
    v46 = sub_2337DFCEC(&v48, 1u);
    v47 = v21;
    v22 = *sub_2337DFD6C(&v46, 0);
    v23 = [v20 numberWithDouble:v22 * (*(*a1 + 3016))(a1)];
    [v6 setObject:v23 forKeyedSubscript:@"mc10"];

    v24 = MEMORY[0x277CCABB0];
    v46 = sub_2337DFCEC(&v48, 1u);
    v47 = v25;
    v26 = *sub_2337DFD6C(&v46, 1u);
    v27 = [v24 numberWithDouble:v26 * (*(*a1 + 3016))(a1)];
    [v6 setObject:v27 forKeyedSubscript:@"mc11"];

    v28 = MEMORY[0x277CCABB0];
    v46 = sub_2337DFCEC(&v48, 1u);
    v47 = v29;
    v30 = *sub_2337DFD6C(&v46, 2u);
    v31 = [v28 numberWithDouble:v30 * (*(*a1 + 3016))(a1)];
    [v6 setObject:v31 forKeyedSubscript:@"mc12"];

    v32 = MEMORY[0x277CCABB0];
    v46 = sub_2337DFCEC(&v48, 2u);
    v47 = v33;
    v34 = *sub_2337DFD6C(&v46, 0);
    v35 = [v32 numberWithDouble:v34 * (*(*a1 + 3016))(a1)];
    [v6 setObject:v35 forKeyedSubscript:@"mc20"];

    v36 = MEMORY[0x277CCABB0];
    v46 = sub_2337DFCEC(&v48, 2u);
    v47 = v37;
    v38 = *sub_2337DFD6C(&v46, 1u);
    v39 = [v36 numberWithDouble:v38 * (*(*a1 + 3016))(a1)];
    [v6 setObject:v39 forKeyedSubscript:@"mc21"];

    v40 = MEMORY[0x277CCABB0];
    v46 = sub_2337DFCEC(&v48, 2u);
    v47 = v41;
    v42 = *sub_2337DFD6C(&v46, 2u);
    v43 = [v40 numberWithDouble:v42 * (*(*a1 + 3016))(a1)];
    [v6 setObject:v43 forKeyedSubscript:@"mc22"];

    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }

    objc_autoreleasePoolPop(v7);
  }
}

id sub_2337F6AC4(uint64_t *a1, int a2)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v4 = sub_2337C9490(a1, a2);
  v5 = v4;
  if (*(a1 + 400) == 1)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"inputLinearized"];
  }

  return v5;
}

id sub_2337F6BA0(uint64_t a1, unsigned int a2)
{
  v3 = sub_2337C4398(a1, a2);
  if ((*(*a1 + 2992))(a1))
  {
    v4 = MEMORY[0x277CCABB0];
    (*(*a1 + 3008))(a1);
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"fujiHigh"];
  }

  v6 = sub_2337397B0(v3, @"pattern");
  v7 = [MEMORY[0x277CCABB0] numberWithInt:(v6 >> 4) & 0xF0F0F0F | (16 * v6) & 0xF0F0F0F0];
  [v3 setObject:v7 forKeyedSubscript:@"pattern"];

  return v3;
}

void sub_2337F6CC8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t (*sub_2337F6CF4(uint64_t a1))(void, void, void, void, void)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return sub_2338D6540(a1);
}

void sub_2337F6D88(uint64_t a1)
{
  v6[0] = &unk_284917748;
  v6[1] = 0x300000000;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "RAF:WB_GRGBLevels");
  (*(*v1 + 600))(v1, __p, v6, 3);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_2337F6E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337F6EA4(uint64_t *a1)
{
  v2 = (*(*a1 + 176))(a1);
  v3 = *a1;
  if (v2)
  {
    return (*(v3 + 584))(a1) == 2;
  }

  v5 = (*(v3 + 344))(a1);
  v6 = (*(*a1 + 408))(a1);
  v7 = (*(*a1 + 408))(a1) >> 32;
  return v5 > (v7 + ((*(*a1 + 408))(a1) >> 32) / 2) * v6;
}

double sub_2337F702C(uint64_t a1)
{
  v1 = (*(*a1 + 2992))(a1);
  result = 0.0;
  if (v1)
  {
    return 16.0;
  }

  return result;
}

double sub_2337F7084(uint64_t a1)
{
  v1 = (*(*a1 + 2992))(a1);
  result = 1.0;
  if (v1)
  {
    return 5.0;
  }

  return result;
}

void sub_2337F70D4(uint64_t a1@<X0>, unsigned int *a2@<X8>)
{
  sub_233813710(a1);
  v4 = (*(*a1 + 3016))(a1);
  sub_2337E0244(a2, &v5, v4);
  sub_2337E004C(a2, &v5);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_2337F715C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *(v11 + 8);
  if (v13)
  {
    *(v11 + 16) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F7190(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23381373C(a1);
  v4 = (*(*a1 + 3016))(a1);
  sub_2337E0244(&v5, a2, v4);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_2337F7210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F722C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_233813768(a1);
  v4 = (*(*a1 + 3016))(a1);
  sub_2337E0244(&v5, a2, v4);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_2337F72AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F72C8(void *a1)
{
  sub_23373C69C(a1);
  v2 = a1[3];
  if (v2)
  {
    v3 = __dynamic_cast(v2, &unk_28490A7B0, &unk_2849200C8, 0);
    if (v3)
    {
      v4 = v3;
      v5 = a1[4];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(*a1 + 2992))(a1))
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      (*(*v4 + 216))(v4, v6);
      if (v5)
      {

        sub_2337239E8(v5);
      }
    }
  }
}

void sub_2337F73E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_2337F73FC(_BYTE *a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"fujiHighlightEnabled"])
  {
    v4 = (*(*a1 + 2992))(a1);
  }

  else
  {
    if (![v3 isEqualToString:@"fujiHybridMode"])
    {
      v6 = sub_2338D3C20(a1, v3);
      goto LABEL_9;
    }

    v4 = a1[400];
  }

  v5 = MEMORY[0x277CBEC28];
  if (v4)
  {
    v5 = MEMORY[0x277CBEC38];
  }

  v6 = v5;
LABEL_9:
  v7 = v6;

  return v7;
}

void sub_2337F74DC(void *a1)
{
  if (!a1[3])
  {
    (*(*a1 + 2888))(&v5);
    if (v6 == v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*v5 == 9)
    {
      (*(*a1 + 160))(&v3, a1);
      (*(*v3 + 384))(&v4);
      (*(*a1 + 336))(a1);
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_2337F8DBC();
    }

    if (*v5 == 8)
    {
      (*(*a1 + 160))(&v3, a1);
      (*(*v3 + 384))(&v4);
      (*(*a1 + 336))(a1);
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_2337F8C00();
    }

    v6 = v5;
    operator delete(v5);
  }
}

void sub_2337F78BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  v20 = *(v18 - 48);
  if (v20)
  {
    *(v18 - 40) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

id sub_2337F7940(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v1 = [MEMORY[0x277CBEB18] array];
  v2 = sub_2338191A8(0);
  [v1 addObject:v2];

  v3 = sub_2338191A8(1);
  [v1 addObject:v3];

  v4 = sub_2338191A8(2);
  [v1 addObject:v4];

  return v1;
}

uint64_t sub_2337F7A70(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) < 7)
  {
    if ((*(*a1 + 128))(a1))
    {

      sub_2337FC940();
    }

    v3 = *(*a1 + 2064);

    return v3(a1);
  }

  else
  {

    return sub_2337D5E40(a1);
  }
}

BOOL sub_2337F7B70(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) < 7)
  {
    return 0;
  }

  return sub_233739E48(a1);
}

uint64_t sub_2337F7BE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 120))(a1);
  if (result >= 7)
  {

    return sub_23373C400(a1, a2);
  }

  v5 = a1[3];
  if (!v5)
  {
    (*(*a1 + 2896))(a1);
    if (!a1[3])
    {
      goto LABEL_13;
    }

    v6 = (*(*a1 + 864))(a1);
    sub_2337AED08(a1[3], v6 - 5);
    result = (*(*a1 + 816))(a1);
    v5 = a1[3];
    if (result == 1)
    {
      *(v5 + 184) = 1;
      goto LABEL_10;
    }

    if (!v5)
    {
LABEL_13:
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }
  }

LABEL_10:
  v7 = a1[4];
  *a2 = v5;
  a2[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2337F7D78(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 120))(a1) < 7)
  {
    (*(*a1 + 160))(&__p, a1);
    (*(*__p + 368))(__p);
    if (v13)
    {
      sub_2337239E8(v13);
    }

    v4 = *a2;
    v5 = a2[1];
    if (v5 == *a2)
    {
      if (v5)
      {
        a2[1] = v4;
        operator delete(v4);
      }

      if ((*(*a1 + 808))(a1))
      {
        __p = 0x3FF0000000000000;
        sub_233731694(a2, 3uLL, &__p);
      }

      else
      {
        (*(*a1 + 704))(&__p, a1);
        if (v13 - __p == 24)
        {
          __asm { FMOV            V1.2D, #1.0 }

          v14 = vdivq_f64(_Q1, vcvtq_f64_f32(vcvt_f32_f64(*__p)));
          v11 = *(__p + 2);
          v15 = 1.0 / v11;
          a2[1] = 0;
          a2[2] = 0;
          *a2 = 0;
          sub_233764ED4(a2, &v14, &v16, 3uLL);
        }

        else
        {
          v14.f64[0] = 1.0;
          sub_233731694(a2, 3uLL, &v14);
        }

        if (__p)
        {
          v13 = __p;
          operator delete(__p);
        }
      }
    }
  }

  else
  {

    sub_233812568(a1, a2);
  }
}

void sub_2337F7FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337F800C(uint64_t *a1)
{
  if ((*(*a1 + 120))(a1) < 7)
  {
    v3 = (*(*a1 + 176))(a1);
    v4 = *a1;
    if (v3)
    {
      v5 = *(v4 + 984);
      v6 = a1;
    }

    else
    {
      v5 = *(v4 + 992);
      v6 = a1;
    }

    return v5(v6);
  }

  else
  {

    return sub_2337D4BE8(a1);
  }
}

void sub_2337F811C(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) < 7)
  {
    if (((*(*a1 + 1048))(a1) & 1) == 0)
    {
      (*(*a1 + 1608))(a1, -1.0);
      (*(*a1 + 1616))(a1);
      (*(*a1 + 2096))(a1);
      (*(*a1 + 2080))(a1);
    }
  }

  else
  {

    sub_2337D6F44(a1);
  }
}

void sub_2337F82E0(uint64_t a1, _DWORD *a2, _DWORD *a3, char *a4)
{
  if ((*(*a1 + 120))(a1) < 7)
  {
    *a3 = 1065353216;
    *a2 = 1065353216;
    *a4 = 0;
  }

  else
  {

    sub_233852E34(a1, a2, a3, a4);
  }
}

uint64_t sub_2337F8380(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) < 7)
  {
    return 0;
  }

  return sub_2338DA04C(a1);
}

void sub_2337F83F0(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) < 7)
  {
    if ((*(*a1 + 2264))(a1))
    {
      (*(*a1 + 2864))(&v3, a1);
      v2 = 0;
      sub_23381E188(v3, &v2);
      if (v4)
      {
        sub_2337239E8(v4);
      }
    }
  }

  else
  {

    sub_233850DD4(a1);
  }
}

void sub_2337F851C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F8534(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) < 7)
  {
    (*(*a1 + 1552))(a1);
    v4 = (*(*a1 + 1504))(a1);
    if ((*(*a1 + 2264))(a1))
    {
      (*(*a1 + 2864))(&v2, a1);
      v4 = sub_23381E174(v2, &v4);
      if (v3)
      {
        sub_2337239E8(v3);
      }
    }

    if (((*(*a1 + 1048))(a1) & 1) == 0)
    {
      (*(*a1 + 2088))(a1);
    }
  }

  else
  {

    sub_2338D9CA4(a1);
  }
}

void sub_2337F8754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337F876C(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) < 7)
  {
    v3 = -1.0;
    if (!(*(*a1 + 1064))(a1))
    {
      return v3;
    }

    if ((*(*a1 + 1056))(a1))
    {
      sub_2337D5AE8(a1, &__p);
      v3 = fmax(*__p, fmax(*(__p + 1), fmax(*(__p + 2), *(__p + 3))));
      v10 = __p;
      operator delete(__p);
      return v3;
    }

    (*(*a1 + 1120))(&__p, a1);
    if (!__p)
    {
      goto LABEL_16;
    }

    v4 = __dynamic_cast(__p, &unk_284919458, &unk_2849193C0, 0);
    if (v4)
    {
      v5 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v4[32] = 0;
        sub_2337239E8(v5);
        if (!__p)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v4[32] = 0;
      }
    }

    if (!sub_2337BF190(&unk_2849102D8, &unk_2849102D8))
    {
      v6 = __p;
      v7 = (*(*a1 + 256))(a1);
      (*(*a1 + 264))(a1);
      v3 = (**v6)(v6, llround(v7));
      if (v3 >= 0.0)
      {
        v8 = 0;
        goto LABEL_17;
      }
    }

LABEL_16:
    v8 = 1;
LABEL_17:
    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v8)
    {
      return (*(*a1 + 2072))(a1);
    }

    return v3;
  }

  return sub_2337D61F8(a1);
}

void sub_2337F8A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F8A6C(void *a1)
{
  sub_233736628(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337F8AA4(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  (*(*(a1 + 32) + 16))();

  return [v1 numberWithDouble:?];
}

uint64_t (**sub_2337F8AEC(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827A8], &unk_233907C88);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2337F8B38(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      a3[1] = a2[1];
      *a3 = sub_2337F8B38;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = a2[1];
    *a3 = sub_2337F8B38;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827A8];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D827A8]);
  }

  else
  {
    v6 = a5 == &unk_233907C88;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

void *sub_2337F8CA4(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284918578;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_28490FE50;
  return a1;
}

void sub_2337F8D40(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284918578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337F8E60(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849185C8;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_284910030;
  *(a1 + 211) = 0;
  return a1;
}

void sub_2337F8F00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849185C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337F9284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F92C0(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&v2, a1);
    sub_2337F9510(&v2, &v4);
    if (v3)
    {
      sub_2337239E8(v3);
    }

    if (v4)
    {
      (*(*v4 + 384))(&v2);
      (*(*a1 + 336))(a1);
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_2337FA0C0();
    }

    if (v5)
    {
      sub_2337239E8(v5);
    }
  }
}

void sub_2337F94C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_2337239E8(a17);
  }

  v19 = *(v17 - 32);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337F9510@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_2849081A8, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_2337F9594(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = v6;
  sub_23372A488(__p, "CIFF");
  v2 = (*(*v1 + 264))(v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337F964C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337F967C(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = v6;
  sub_23372A488(__p, "CIFF");
  v2 = (*(*v1 + 280))(v1, __p, 1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337F9740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337F9770(uint64_t a1)
{
  v8 = &unk_28490E658;
  (*(*a1 + 160))(&v6);
  v1 = v6;
  sub_23372A488(__p, "CIFF:CanonShotInfo");
  v2 = sub_233733D74(v1, __p, &v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337F9824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F9884(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 160))(&v14);
  sub_2337F9510(&v14, &v16);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  if (v16)
  {
    (*(*a1 + 1016))(&v14, a1);
    v4 = v16[98];
    v5 = v16[99];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2337238F0(__p, *(v4 + 52), *(v4 + 48));
    v13[0] = 0;
    v13[1] = __p[0];
    sub_2337B0EFC(v4, v13, __p);
    v6 = 0;
    v7 = v14;
    v8 = __p[0];
    v9 = -(*(v4 + 48) >> 2);
    do
    {
      *&v8[v6] = *&v8[v6] + v9 * *&v7[v6];
      v6 += 8;
    }

    while (v6 != 32);
    sub_233730758(a2, 3uLL);
    v10 = __p[0];
    v11 = *a2;
    *v11 = 1.0 / *__p[0];
    v11[1] = 2.0 / (v10[1] + v10[2]);
    v11[2] = 1.0 / v10[3];
    __p[1] = v10;
    operator delete(v10);
    if (v5)
    {
      sub_2337239E8(v5);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  else
  {
    v14 = 0x3FF0000000000000;
    sub_233731694(a2, 3uLL, &v14);
  }

  if (v17)
  {
    sub_2337239E8(v17);
  }
}

void sub_2337F9A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  v17 = *(v15 - 40);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337F9A9C(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D0E68(v2, @"add2WhenLessThan512", v3, &unk_284918608);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337F9B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F9B68(uint64_t a1)
{
  (*(*a1 + 2944))(v5);
  sub_23372A488(__p, "CIFF:CanonShotInfo");
  v2 = (*(*a1 + 2968))(a1, __p, v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 2960))(a1, v2);
  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }
}

void sub_2337F9C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337F9CA8(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 2200))(&v16);
  if (v18 < 0)
  {
    if (v17 == 3 && *v16 == 13892 && *(v16 + 2) == 48)
    {
LABEL_20:
      v15 = 0;
      v14 = &unk_284910F28;
      sub_23372A488(__p, "CIFF:ColorBalance");
      (*(*a1 + 2976))(a1, a2, __p, &v14);
      goto LABEL_28;
    }

    if (v17 == 3)
    {
      v5 = v16;
      goto LABEL_22;
    }

    if (v17 != 2)
    {
      goto LABEL_33;
    }

    v7 = *v16;
LABEL_18:
    if (v7 != 13895)
    {
      goto LABEL_33;
    }

    v15 = 0;
    v14 = &unk_284919218;
    sub_23372A488(__p, "CIFF:CanonColorInfo1");
    (*(*a1 + 2976))(a1, a2, __p, &v14);
    goto LABEL_28;
  }

  if (v18 == 2)
  {
    v7 = v16;
    goto LABEL_18;
  }

  if (v18 != 3)
  {
    goto LABEL_33;
  }

  if (v16 == 13892 && BYTE2(v16) == 48)
  {
    goto LABEL_20;
  }

  v5 = &v16;
LABEL_22:
  v8 = *v5;
  v9 = *(v5 + 2);
  if (v8 != 13124 || v9 != 48)
  {
LABEL_33:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v15 = 0;
  v14 = &unk_28490CE28;
  sub_23372A488(__p, "CIFF:CanonColorInfo1");
  (*(*a1 + 2976))(a1, a2, __p, &v14);
LABEL_28:
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v16);
  }
}

void sub_2337F9F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337F9FE4(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t *a5)
{
  v6 = a4;
  if (a4 == 3)
  {
    a4 = 4;
  }

  v7 = sub_2337BF918(a1, a2, a3, a4, a5);
  if (v6 == 3)
  {
    if (v7)
    {
      v8 = *(*a5 + 8) ^ 0x410;
      v9 = *(*a5 + 12) ^ 0x45F3;
      v14 = veor_s8(**a5, 0x45F300000410);
      sub_23372630C(&v15, 3uLL);
      v10 = *a5;
      v11 = v15;
      *a5 = v15;
      *v11 = vrev64_s32(vmul_s32(vdup_n_s32(v9), v14));
      v11[1].i32[0] = v8 * v14.i32[0];
      v12 = a5[2];
      a5[2] = v16;
      *&v15 = v10;
      v16 = v12;
      if (v10)
      {
        *(&v15 + 1) = v10;
        operator delete(v10);
      }
    }
  }

  return 1;
}

uint64_t sub_2337FA164(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284919260;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_2849192B0;
  *(a1 + 212) = 0;
  *(a1 + 216) = 257;
  return a1;
}

void sub_2337FA20C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284919260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337FA288(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v98[64] = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038(v1);
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CCanonCompressedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = sub_2337FABCC;
  v94[3] = &unk_2789EE800;
  v94[4] = v1;
  v4 = MEMORY[0x2383AC810](v94);
  v5 = sub_2337ADCC4(v1);
  v6 = *(v1 + 44);
  if ((v6 & 0x7FFFFFFC) >= 0x10004 || (v7 = v5, v8 = *(v1 + 48), !sub_2337B4F10(&byte_233907DB0[29 * *(v1 + 188)], v97, 0)) || !sub_2337B4F10(&byte_233907E07[180 * *(v1 + 188)], v96, 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = *(v1 + 192);
  v10 = *(v1 + 24);
  v11 = v8 * v6;
  v92 = ((v8 * v6 * v9) >> 2) + 540;
  sub_233723AE0(&v93, &v92);
  (*(*v10 + 40))(v10, &v93, 0);
  v12 = (*(*v1 + 152))(v1);
  v92 = 540;
  v93 = v12;
  sub_233757538(&v93, &v92);
  v92 = sub_233751844((v1 + 40));
  sub_233753AB0(&v93, &v92);
  v92 = (v8 * v6 * v9) >> 2;
  sub_2337580F8(&v93, &v92);
  v89 = v9;
  v13 = (v7 + 2 * (v8 * v6) - v93 + 896);
  (*(**(v1 + 24) + 32))(*(v1 + 24), v13);
  v88 = v6;
  v90 = v8;
  v91 = v1;
  if ((v8 * v6) >= 0x40)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v11 >> 6;
    v18 = v13 + v93;
    v19 = v11;
    v20 = 32;
    v21 = 0uLL;
    do
    {
      v22 = v18 - v13;
      if ((v18 - v13 + ((39 - v20) >> 3)) < 0 || v18 - v13 + ((39 - v20) >> 3) > (2 * v19))
      {
        v86 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v86, "RawCameraException");
        __cxa_throw(v86, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v23 = v19 <= 64;
      v19 -= 64;
      if (v23 && v22 >= 1 && v22 <= 0x1FF)
      {
        v24 = v13;
        v25 = v17;
        memmove(v98, v24, v22);
        v21 = 0uLL;
        v17 = v25;
        v13 = v98;
      }

      *(v7 + 96) = v21;
      *(v7 + 112) = v21;
      *(v7 + 64) = v21;
      *(v7 + 80) = v21;
      *(v7 + 32) = v21;
      *(v7 + 48) = v21;
      *v7 = v21;
      *(v7 + 16) = v21;
      if (v20 >= 16)
      {
        v26 = *v13;
        v27 = v13 + 2;
        if (v26 == 255)
        {
          v28 = 2;
        }

        else
        {
          v28 = 1;
        }

        v29 = v13[v28];
        if (v26 == 255)
        {
          v27 = v13 + 3;
        }

        v30 = (v16 << 16) | (v26 << 8);
        if (v29 == 255)
        {
          v13 = v27 + 1;
        }

        else
        {
          v13 = v27;
        }

        v16 = v30 | v29;
        v20 -= 16;
      }

      v31 = v16 << v20;
      v32 = v97[(v16 << v20) >> 23];
      v20 += (v32 >> 10) & 0x1F;
      if (v32 > 0x8000)
      {
        v39 = v32;
      }

      else
      {
        if ((v32 & 0x8000) != 0)
        {
          v32 = v97[HIWORD(v31) & 0x3FF];
          v20 += (v32 >> 10) & 0x1F;
        }

        v33 = v32 & 0xF;
        if (v33)
        {
          if (v20 >= 16)
          {
            v34 = *v13;
            v35 = v13 + 2;
            if (v34 == 255)
            {
              v36 = 2;
            }

            else
            {
              v36 = 1;
            }

            v37 = v13[v36];
            if (v34 == 255)
            {
              v35 = v13 + 3;
            }

            v38 = (v16 << 16) | (v34 << 8);
            if (v37 == 255)
            {
              v13 = v35 + 1;
            }

            else
            {
              v13 = v35;
            }

            v16 = v38 | v37;
            v20 -= 16;
          }

          v39 = ((v16 << v20) >> -v33) - ((((v16 << v20) >> 31) - 1) >> -v33);
          v20 += v33;
        }

        else
        {
          v39 = 0;
        }
      }

      v40 = 0;
      v15 += v39;
      LOWORD(v39) = v15;
      while (1)
      {
        if (v20 >= 16)
        {
          v41 = *v13;
          v42 = v13 + 2;
          if (v41 == 255)
          {
            v43 = 2;
          }

          else
          {
            v43 = 1;
          }

          v44 = v13[v43];
          if (v41 == 255)
          {
            v42 = v13 + 3;
          }

          v45 = (v16 << 16) | (v41 << 8);
          if (v44 == 255)
          {
            v13 = v42 + 1;
          }

          else
          {
            v13 = v42;
          }

          v16 = v45 | v44;
          v20 -= 16;
        }

        if (v40 > 62)
        {
          break;
        }

        v46 = v96[(v16 << v20) >> 23];
        v47 = v96[((v16 << v20) >> 16) & 0x3FF];
        *(v7 + 2 * v40) = v39;
        v20 += (v46 >> 10) & 0x1F;
        if (v46 > 0x8000)
        {
          v50 = (v46 >> 8) & 3;
          LOWORD(v39) = v46;
        }

        else
        {
          v48 = (v47 >> 10) & 0x1F;
          if (v46 != 0x8000)
          {
            v48 = 0;
          }

          v20 += v48;
          if (v46 == 0x8000)
          {
            v49 = v47;
          }

          else
          {
            v49 = v46;
          }

          v50 = (v49 >> 4) & 0x3F;
          v51 = v49 & 0xF;
          if ((v49 & 0xF) != 0)
          {
            if (v20 >= 16)
            {
              v52 = *v13;
              v53 = v13 + 2;
              if (v52 == 255)
              {
                v54 = 2;
              }

              else
              {
                v54 = 1;
              }

              v55 = v13[v54];
              if (v52 == 255)
              {
                v53 = v13 + 3;
              }

              v56 = (v16 << 16) | (v52 << 8);
              if (v55 == 255)
              {
                v13 = v53 + 1;
              }

              else
              {
                v13 = v53;
              }

              v16 = v56 | v55;
              v20 -= 16;
            }

            v39 = ((v16 << v20) >> -v51) - ((((v16 << v20) >> 31) - 1) >> -v51);
            v20 += v51;
          }

          else
          {
            LOWORD(v39) = 0;
          }
        }

        v40 += 1 + v50;
      }

      if (v40 == 63)
      {
        *(v7 + 126) = v39;
      }

      v7 += 128;
      ++v14;
    }

    while (v14 != v17);
  }

  v57 = sub_2337ADCC4(v91);
  if (v89)
  {
    (*(**(v91 + 24) + 40))(*(v91 + 24), v91 + 40, 0);
    if (v90)
    {
      for (i = 0; i != v90; ++i)
      {
        (*(**(v91 + 24) + 32))(*(v91 + 24), buf, v88 >> 2);
        if (*(v91 + 193))
        {
          if (v88)
          {
            v60 = buf;
            v61 = 512;
            v62 = ((v88 - 1) >> 2) + 1;
            v63 = 512;
            do
            {
              v64 = *v60++;
              v65 = v63 + v57->u16[0];
              v66 = v61 + v57->u16[1];
              v67 = (4 * v66) | (v64 >> 2) & 3;
              v63 = v65 + v57->u16[2];
              v61 = v66 + v57->u16[3];
              v57->i16[0] = v64 & 3 | (4 * v65);
              v57->i16[1] = v67;
              v57->i16[2] = (4 * v63) | (v64 >> 4) & 3;
              v57->i16[3] = (v64 >> 6) | (4 * v61);
              ++v57;
              --v62;
            }

            while (v62);
          }
        }

        else
        {
          v68.i64[0] = 0x200000002;
          v68.i64[1] = 0x200000002;
          v69.i64[0] = 0x300000003;
          v69.i64[1] = 0x300000003;
          if (v88)
          {
            v70 = 0x20000000200;
            v71 = buf;
            v72 = ((v88 - 1) >> 2) + 1;
            do
            {
              v73 = *v71++;
              v74.i32[0] = v57->u16[0];
              v74.i32[1] = v57->u16[1];
              v75.i32[0] = v57->u16[2];
              v75.i32[1] = v57->u16[3];
              *v76.i8 = vadd_s32(v70, v74);
              v70 = vadd_s32(*v76.i8, v75);
              v76.u64[1] = v70;
              v59.i32[0] = v73;
              v59.i32[1] = v73 >> 2;
              v59.i32[2] = v73 >> 4;
              v59 = vandq_s8(v59, v69);
              v59.i32[3] = vshrq_n_u32(vdupq_n_s32(v73), 6uLL).i32[3];
              v77 = vorrq_s8(vshlq_n_s32(v76, 2uLL), v59);
              *v57++ = vmovn_s32(vaddq_s32(v77, vandq_s8(vmovl_s16(vcgt_s16(0x200020002000200, vmovn_s32(v77))), v68)));
              --v72;
            }

            while (v72);
          }
        }
      }
    }
  }

  else if (v90)
  {
    for (j = 0; j != v90; ++j)
    {
      if (v88)
      {
        v79 = 0;
        v80 = 512;
        v81 = 512;
        do
        {
          v82 = v57->u16[2];
          v83 = v57->u16[3];
          v84 = v81 + v57->u16[0];
          v85 = v80 + v57->u16[1];
          v81 = v84 + v82;
          v80 = v85 + v83;
          v57->i16[0] = v84;
          v57->i16[1] = v85;
          v57->i16[2] = v84 + v82;
          v57->i16[3] = v85 + v83;
          ++v57;
          v79 += 4;
        }

        while (v79 < v88);
      }
    }
  }

  v4[2](v4);
}

void sub_2337FABCC(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CCanonCompressedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337FAC5C(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

double sub_2337FACC0(uint64_t a1, unsigned int a2, double a3)
{
  if (*(a1 + 32) == 1)
  {
    return sub_2337FACD4(a1, a2, a3);
  }

  else
  {
    return sub_2337FAE64(a1, a2, a3);
  }
}

double sub_2337FACD4(uint64_t a1, unsigned int a2, double a3)
{
  v3 = fmin(a3, 30.0);
  v4 = *(a1 + 24);
  v5 = *v4;
  if (!*v4)
  {
    v7 = -1.0;
LABEL_18:
    v16 = v7;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = -1.0;
  while (1)
  {
    v8 = 0;
    v9 = v6;
    v10 = v7;
    v6 = v5;
    v11 = *(v4 + 8);
    if (v11 <= v3)
    {
      v12 = 64;
    }

    else
    {
      v12 = 16;
    }

    if (v11 <= v3)
    {
      v13 = 72;
    }

    else
    {
      v13 = 24;
    }

    v7 = 0.0;
    v14 = 1.0;
    do
    {
      v7 = v7 + v14 * *(v4 + v13 + v8);
      v14 = v3 * *(v4 + v12) * v14;
      v8 += 8;
    }

    while (v8 != 40);
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    if (v6 == a2)
    {
      break;
    }

    if (v6 > a2)
    {
      if (v10 >= 0.0)
      {
        if (v6 - v9 <= 1)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        v17 = (a2 - v9) * (v7 - v10) / (v6 - v9);
        v18 = fmin(v7, v10);
        v19 = fmax(v7, v10);
        v20 = v10 + v17;
        v21 = v18 > v20 || v20 > v19;
        v7 = v20;
        if (v21)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }
      }

      break;
    }

    v15 = *(v4 + 112);
    v4 += 112;
    v5 = v15;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v7;
  v22 = v7 < 0.0;
  v7 = v10;
  if (v22)
  {
    goto LABEL_18;
  }

LABEL_26:
  if (v3 < a3)
  {
    return a3 / v3 * v16;
  }

  return v16;
}

double sub_2337FAE64(uint64_t a1, int a2, double a3)
{
  v3 = fmin(a3, 30.0);
  v4 = *(a1 + 24);
  v5 = *v4;
  v6 = -1.0;
  if (*v4)
  {
    while (v5 != a2)
    {
      v7 = *(v4 + 28);
      v4 += 14;
      v5 = v7;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v8 = 0;
    v9 = v4[1];
    v10 = 2;
    if (v9 <= v3)
    {
      v10 = 8;
    }

    v11 = 9;
    if (v9 > v3)
    {
      v11 = 3;
    }

    v6 = 0.0;
    v12 = 1.0;
    do
    {
      v6 = v6 + v12 * v4[v11 + v8];
      v12 = v3 * v4[v10] * v12;
      ++v8;
    }

    while (v8 != 5);
    if (v6 < 0.0)
    {
      v6 = 0.0;
    }
  }

LABEL_13:
  if (v3 < a3)
  {
    return a3 / v3 * v6;
  }

  return v6;
}

void *sub_2337FAF68(void *a1)
{
  *a1 = &unk_284919438;
  v2 = a1[2];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return a1;
}

void sub_2337FAFB4(void *a1)
{
  *a1 = &unk_284919438;
  v1 = a1[2];
  if (v1)
  {
    sub_2337239E8(v1);
  }

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337FB094(uint64_t result, void *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2849193E8;
  v4 = *a3;
  v3 = a3[1];
  *(result + 24) = &unk_284919438;
  *(result + 32) = v4;
  *(result + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = &unk_2849193A0;
  *(result + 48) = *a2;
  *(result + 56) = 1;
  return result;
}

void sub_2337FB13C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849193E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337FC25C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2337FC278(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWSimpleLensCorrectionFilter", &unk_233945DBE, v5, 2u);
  }
}

float sub_2337FC408(id *a1, float a2)
{
  [a1[4] W];
  v5 = v4;
  v6 = ((a2 * a2) * a2);
  [a1[5] X];
  v8 = v7;
  v9 = (a2 * a2);
  [a1[5] Y];
  v11 = v10 * v9 + v6 * v8;
  v12 = a2;
  [a1[5] Z];
  v14 = v11 + a2 * v13;
  [a1[5] W];
  v47 = v14 + v15;
  [a1[6] X];
  v17 = v16;
  [a1[6] Y];
  v19 = v18 * v9 + v6 * v17;
  [a1[6] Z];
  v21 = v19 + a2 * v20;
  [a1[6] W];
  v23 = v21 + v22;
  [a1[7] X];
  v25 = v24;
  [a1[7] Y];
  v27 = v26 * v9 + v6 * v25;
  [a1[7] Z];
  v29 = v27 + a2 * v28;
  [a1[7] W];
  v31 = v29 + v30;
  [a1[8] X];
  v33 = v32;
  [a1[8] Y];
  v35 = v34 * v9 + v6 * v33;
  [a1[8] Z];
  v37 = v35 + a2 * v36;
  [a1[8] W];
  v39 = v37 + v38;
  [a1[9] Z];
  if (v40 > a2)
  {
    v39 = v31;
  }

  [a1[9] Y];
  if (v41 > v12)
  {
    v39 = v23;
  }

  [a1[9] X];
  v43 = v42 <= v12;
  v44 = v47;
  if (v43)
  {
    v44 = v39;
  }

  v45 = v44;
  return (v5 * v45) + (a2 * (1.0 - v5));
}

double sub_2337FC590(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) X];
  v7 = a2 - v6;
  [*(a1 + 32) Y];
  v9 = hypot(v7, a3 - v8);
  [*(a1 + 32) Z];
  v11 = v9 * v10;
  (*(*(a1 + 40) + 16))(v11);
  v13 = 1.0;
  if (v11 >= 0.001)
  {
    v13 = (v12 / v11);
  }

  v14 = v7 * v13;
  [*(a1 + 32) X];
  v16 = v14 + v15;
  [*(a1 + 32) Y];
  return v16;
}

double sub_2337FC658(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2 > 0)
  {
    return a3;
  }

  v6 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    r1_12 = v11;
    v43.origin.x = (*(*(a1 + 32) + 16))(a3 + a5 * v12, a4);
    v43.origin.y = v13;
    v43.size.width = 0.0;
    v43.size.height = 0.0;
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v9;
    v36 = CGRectUnion(v35, v43);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    v44.origin.x = (*(*(a1 + 32) + 16))(a3 + a5 * (1.0 - v12), a4 + a6);
    v44.origin.y = v18;
    v44.size.width = 0.0;
    v44.size.height = 0.0;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectUnion(v37, v44);
    r1 = v38.origin.x;
    v19 = v38.origin.y;
    v20 = v38.size.width;
    v21 = v38.size.height;
    v45.origin.x = (*(*(a1 + 32) + 16))(a3, a4 + a6 * (1.0 - v12));
    v45.origin.y = v22;
    v45.size.width = 0.0;
    v45.size.height = 0.0;
    v39.origin.x = r1;
    v39.origin.y = v19;
    v39.size.width = v20;
    v39.size.height = v21;
    v40 = CGRectUnion(v39, v45);
    v23 = v40.origin.x;
    v24 = v40.origin.y;
    v25 = v40.size.width;
    v26 = v40.size.height;
    v46.origin.x = (*(*(a1 + 32) + 16))(a3 + a5, a4 + a6 * v12);
    v46.origin.y = v27;
    v46.size.width = 0.0;
    v46.size.height = 0.0;
    v41.origin.x = v23;
    v41.origin.y = v24;
    v41.size.width = v25;
    v41.size.height = v26;
    v42 = CGRectUnion(v41, v46);
    v6 = v42.origin.x;
    v8 = v42.origin.y;
    v10 = v42.size.width;
    v9 = v42.size.height;
    v11 = r1_12 + 0.125;
    v12 = (r1_12 + 0.125);
  }

  while (v12 < 0.99999);
  return v6;
}

void sub_2337FC9C0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_2337FCA1C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *sub_2337FCA78(void *a1)
{
  *a1 = &unk_284919438;
  v2 = a1[2];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return a1;
}

void sub_2337FCAC4(void *a1)
{
  *a1 = &unk_284919438;
  v1 = a1[2];
  if (v1)
  {
    sub_2337239E8(v1);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_2337FCB50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284919478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337FCBCC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 232);
  *(a1 + 224) = v3;
  *(a1 + 232) = v2;
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_2337FCBF8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v71 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038(v1);
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CHasselbladUnpacker", &unk_233945DBE, buf, 2u);
  }

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_2337FD5D4;
  v67[3] = &unk_2789EE800;
  v67[4] = v1;
  v4 = MEMORY[0x2383AC810](v67);
  v5 = sub_2337ADCC4(v1);
  v6 = *(v1 + 44);
  v7 = *(v1 + 48);
  LODWORD(v68) = (*(*v1 + 152))(v1);
  sub_233723AE0(buf, &v68);
  v8 = buf[0];
  v9 = v7 * v6;
  v10 = &v5[2 * v9 - buf[0] + 896];
  if (v10 < v5)
  {
    operator new[]();
  }

  (*(**(v1 + 24) + 32))(*(v1 + 24), v10, buf[0]);
  if (bswap32(*v10) >> 16 != 65496)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  DWORD2(v66) = v9;
  v65 = v1;
  *&v66 = 0;
  v64 = v4;
  v11 = 0;
  v12 = 0;
  v13 = &v10[v8];
  v14 = (v10 + 2);
  v68 = 0;
  v69 = 0;
  do
  {
    v15 = __rev16(*v14);
    if (v15 == 0xFFFF)
    {
      v14 = (v14 + 1);
      continue;
    }

    if (v15 < 0xFF01)
    {
      goto LABEL_108;
    }

    v16 = __rev16(v14[1]);
    if (v16 >= 0x102)
    {
      goto LABEL_108;
    }

    v17 = v13;
    v18 = (v14 + 2);
    v19 = v14 + v16 + 2;
    if (v15 == 65475)
    {
      v12 = __rev16(*(v14 + 5));
      v11 = __rev16(*(v14 + 7)) * *(v14 + 9);
      v14 = (v14 + v16 + 2);
LABEL_23:
      v13 = v17;
      continue;
    }

    v20 = v12;
    if (v15 != 65498)
    {
      if (v15 == 65476)
      {
        while (v18 < v19)
        {
          v21 = *v18;
          if (v21 > 1)
          {
            break;
          }

          v22 = &buf[512 * v21];
          *(&v68 + v21) = v22;
          v18 = sub_2337B4F10(v18 + 1, v22, 3);
          if (!v18)
          {
            v58 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v58, "RawCameraException");
            __cxa_throw(v58, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }
      }

      v14 = v19;
      v12 = v20;
      goto LABEL_23;
    }

    if (*v18 - 4 < 0xFFFFFFFD || (v23 = 2 * *v18, v16 != v23 + 6))
    {
      v61 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v61, "RawCameraException");
      __cxa_throw(v61, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v24 = v18[v23 + 1];
    v14 = v19;
    v13 = v17;
    if (v24 != 8)
    {
      sub_2337B2204(v65);
      goto LABEL_106;
    }
  }

  while (v15 != 65498);
  if (v12 * v11 > DWORD2(v66))
  {
LABEL_108:
    v60 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v60, "RawCameraException");
    __cxa_throw(v60, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v69)
  {
    v25 = v69;
  }

  else
  {
    v25 = v68;
  }

  if (v68)
  {
    v26 = v68;
  }

  else
  {
    v26 = v69;
  }

  if (!v26 || !v25)
  {
    v63 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v63, "RawCameraException");
    __cxa_throw(v63, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v12)
  {
    v27 = 0;
    v28 = 0;
    *(&v66 + 1) = 0;
    v29 = 0;
    v30 = 32;
    while (1)
    {
      v31 = v13 - v14 + ((39 - v30) >> 3);
      if (8 * v31 < 2 * ((v12 - v27) * v11))
      {
        v59 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v59, "RawCameraException");
        __cxa_throw(v59, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v66 == 0 && (v14 - v5 < v11 || v31 < 8 * v11) && v13 != v14)
      {
        operator new[]();
      }

      if (v11)
      {
        break;
      }

LABEL_102:
      if (++v27 == v12)
      {
        goto LABEL_106;
      }
    }

    v32 = 0;
    v33 = 0x8000;
    v34 = 0x8000;
    while (2)
    {
      if (v30 >= 16)
      {
        if ((v28 & 3) != 0)
        {
          v35 = -1;
        }

        else
        {
          v35 = 3;
        }

        v36 = (v29 << 16) | (*(v14 + v35) << 8);
        if ((v28 & 3) != 0)
        {
          v37 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = 1;
        }

        v29 = v36 | LOBYTE(v14[v37]);
        v28 += 2;
        ++v14;
        v30 -= 16;
      }

      v38 = *(v26 + 2 * ((v29 << v30) >> 23));
      v39 = (v38 >> 10) & 0x1F;
      if (v38 > 0x8000)
      {
        v42 = v38;
        if ((v38 & 0x80u) == 0)
        {
          LOBYTE(v43) = *(v26 + 2 * ((v29 << v30) >> 23));
        }

        else
        {
          v43 = -v38;
        }

        v41 = dword_233908104[v43 & 0x7F];
        v40 = v39 + v30 - v41;
      }

      else
      {
        v40 = v39 + v30;
        if ((v38 & 0x8000) != 0)
        {
          v38 = *(v26 + 2 * (((v29 << v30) >> 16) & 0x3FF));
          v40 += (v38 >> 10) & 0x1F;
        }

        v41 = v38 & 0x1F;
        v42 = (v38 << 8) & 0x8000;
      }

      v44 = v40 - 16;
      if (v40 >= 16)
      {
        if ((v28 & 3) != 0)
        {
          v45 = -1;
        }

        else
        {
          v45 = 3;
        }

        v46 = (v29 << 16) | (*(v14 + v45) << 8);
        if ((v28 & 3) != 0)
        {
          v47 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = 1;
        }

        v29 = v46 | LOBYTE(v14[v47]);
        v28 += 2;
        ++v14;
        v40 = v44;
      }

      v48 = *(v25 + 2 * ((v29 << v40) >> 23));
      v49 = (v48 >> 10) & 0x1F;
      if (v48 > 0x8000)
      {
        v48 = v48;
        if ((v48 & 0x80u) == 0)
        {
          LOBYTE(v51) = *(v25 + 2 * ((v29 << v40) >> 23));
        }

        else
        {
          v51 = -v48;
        }

        v50 = dword_233908104[v51 & 0x7F];
        v30 = v49 + v40 - v50;
        if (!v41)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v30 = v49 + v40;
        if ((v48 & 0x8000) != 0)
        {
          v48 = *(v25 + 2 * (((v29 << v40) >> 16) & 0x3FF));
          v30 += (v48 >> 10) & 0x1F;
        }

        v50 = v48 & 0x1F;
        v48 = (v48 << 8) & 0x8000;
        if (!v41)
        {
LABEL_88:
          v34 += v42;
          *v5 = v34;
          if (v50)
          {
            if (v30 >= 16)
            {
              if ((v28 & 3) != 0)
              {
                v55 = -1;
              }

              else
              {
                v55 = 3;
              }

              v56 = (v29 << 16) | (*(v14 + v55) << 8);
              if ((v28 & 3) != 0)
              {
                v57 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v57 = 1;
              }

              v29 = v56 | LOBYTE(v14[v57]);
              v28 += 2;
              ++v14;
              v30 -= 16;
            }

            if (v50 <= 15)
            {
              v48 = ((v29 << v30) >> -v50) - ((((v29 << v30) >> 31) - 1) >> -v50);
            }

            else
            {
              v48 = 0x8000;
            }

            v30 += v50;
          }

          v33 += v48;
          *(v5 + 1) = v33;
          v5 += 4;
          v32 += 2;
          if (v32 >= v11)
          {
            goto LABEL_102;
          }

          continue;
        }
      }

      break;
    }

    if (v30 >= 16)
    {
      if ((v28 & 3) != 0)
      {
        v52 = -1;
      }

      else
      {
        v52 = 3;
      }

      v53 = (v29 << 16) | (*(v14 + v52) << 8);
      if ((v28 & 3) != 0)
      {
        v54 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = 1;
      }

      v29 = v53 | LOBYTE(v14[v54]);
      v28 += 2;
      ++v14;
      v30 -= 16;
    }

    v42 = ((v29 << v30) >> -v41) - ((((v29 << v30) >> 31) - 1) >> -v41);
    if (v41 > 15)
    {
      v42 = 0x8000;
    }

    v30 += v41;
    goto LABEL_88;
  }

LABEL_106:
  v64[2](v64);
}

void sub_2337FD4D0(_Unwind_Exception *a1)
{
  v1[2](v1);

  _Unwind_Resume(a1);
}

void sub_2337FD5D4(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CHasselbladUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337FD660(void *a1)
{
  sub_2337FD698(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2337FD698(void *a1)
{
  *a1 = &unk_2849194C8;
  v2 = a1[29];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  *a1 = &unk_28490A870;
  v3 = a1[24];
  if (v3)
  {
    a1[25] = v3;
    operator delete(v3);
  }

  return sub_233723A54(a1);
}

void sub_2337FD720(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&v4, a1);
    sub_2337FDA84(&v4, &v5);
    if (*(&v4 + 1))
    {
      sub_2337239E8(*(&v4 + 1));
    }

    if (v5)
    {
      if (v5[1216] == 1)
      {
        (*(*a1 + 160))(&v2, a1);
        (*(*v2 + 384))(&v3);
        (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_2337FE3E4();
      }

      (*(*a1 + 160))(&v2, a1);
      (*(*v2 + 384))(&v3);
      (*(*a1 + 336))(a1);
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_2337F3A48();
    }

    if (v6)
    {
      sub_2337239E8(v6);
    }
  }
}

void sub_2337FDA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  v18 = *(v16 - 32);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337FDA84@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_28490A118, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_2337FDB08(uint64_t a1)
{
  v6 = &unk_28490E658;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "SourceInfo");
  (*(*v1 + 600))(v1, __p, &v6, 3);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_2337FDBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337FDC18(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = v6;
  sub_23372A488(__p, "SourceInfo");
  v2 = (*(*v1 + 264))(v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337FDCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337FDD00(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = v6;
  sub_23372A488(__p, "SourceInfo");
  v2 = (*(*v1 + 280))(v1, __p, 1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337FDDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337FDDF4(void *a1@<X0>, void **a2@<X8>)
{
  (*(*a1 + 160))(&v6);
  sub_2337FDA84(&v6, &v8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  if (v8)
  {
    (*(*v8 + 784))(v8);
    v4 = *a2;
    if (a2[1] - *a2 == 32)
    {
      v5 = 0;
      goto LABEL_9;
    }

    if (v4)
    {
      a2[1] = v4;
      operator delete(v4);
    }
  }

  v5 = 1;
LABEL_9:
  if (v9)
  {
    sub_2337239E8(v9);
  }

  if (v5)
  {
    sub_2337D5774(a1, a2);
  }
}

void sub_2337FDEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337FDEFC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  (*(*a1 + 160))(&v9);
  v3 = v9;
  sub_23372A488(__p, "IFD0:SUBIFD0");
  if ((*(*v3 + 248))(v3, __p, v11, 0))
  {
    v5 = v11[0];
    v4 = v11[1];
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v4 - v5;
    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v6 == 32)
    {
      *a2 = *v11;
      a2[2] = v12;
      return;
    }
  }

  else
  {
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      sub_2337239E8(v10);
    }
  }

  sub_233731694(a2, 4uLL, &v13);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_2337FE028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337FE0C8(_BYTE *a1)
{
  v2 = sub_2337D6488(a1);
  if (v2)
  {
    (*(*a1 + 2920))(a1);
    (*(*a1 + 160))(&v5, a1);
    sub_2337FDA84(&v5, &v7);
    if (v6)
    {
      sub_2337239E8(v6);
    }

    v3 = v7;
    if (v7)
    {
      (*(*a1 + 384))(&v5, a1);
      sub_2338FAA0C(v3, &v5);
      if (v6)
      {
        sub_2337239E8(v6);
      }
    }

    if (v8)
    {
      sub_2337239E8(v8);
    }
  }

  return v2;
}

void sub_2337FE1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_2337FE208(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"whiteLevelFromTag"])
  {
    v16 = 0.0;
    (*(*a1 + 160))(&v14, a1);
    v4 = v14;
    sub_23372A488(__p, "IFD0:SUBIFD0");
    v5 = (*(*v4 + 240))(v4, __p, &v16);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      sub_2337239E8(v15);
    }

    v6 = MEMORY[0x277CCABB0];
    if (v5)
    {
      v7 = v16;
    }

    else
    {
      v9 = (*(*a1 + 864))(a1);
      v7 = (*(*a1 + 848))(a1) * v9;
    }

    v8 = [v6 numberWithDouble:v7];
  }

  else
  {
    v8 = sub_2338D3C20(a1, v3);
  }

  v10 = v8;

  return v10;
}

void sub_2337FE3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337FE488(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28491A178;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = -1;
  *(a1 + 24) = &unk_2849194C8;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  return a1;
}

void sub_2337FE538(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28491A178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337FE5B4(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&v3, a1);
    (*(*v3 + 384))(&v5);
    if (v4)
    {
      sub_2337239E8(v4);
    }

    (*(*a1 + 336))(a1);
    v2 = (*(*a1 + 592))(a1);
    if (v2 == 1)
    {
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_2337FEAEC();
    }

    if (v2 == 7)
    {
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_2337FEA48();
    }

    if (v6)
    {
      sub_2337239E8(v6);
    }
  }
}

void sub_2337FE810(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 32);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337FE83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a14)
  {
    JUMPOUT(0x2337FE834);
  }

  JUMPOUT(0x2337FE830);
}

uint64_t sub_2337FE84C(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = v6;
  sub_23372A488(__p, "CameraObj_ISO_speed");
  v2 = (*(*v1 + 264))(v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337FE904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337FE934(uint64_t a1)
{
  v7 = 0;
  v6 = &unk_28490CE28;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "NeutObj_neutrals");
  (*(*v1 + 600))(v1, __p, &v6, 3);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_2337FEA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2337FEB90(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 188) = a2;
  *(a1 + 192) = a3;
  v7 = (a1 + 200);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 224);
  if ((a1 + 224) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

void *sub_2337FEC08(uint64_t a1, int a2, size_t size)
{
  v9 = a2;
  v4 = size;
  v5 = malloc_type_malloc(size, 0x100004077774924uLL);
  v6 = *(a1 + 24);
  sub_233723AE0(&v8, &v9);
  (*(*v6 + 40))(v6, &v8, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5, v4);
  return v5;
}

void sub_2337FECD8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x2337FECC0);
}

void sub_2337FECFC(void *a1, uint64_t a2, int *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v213 = *MEMORY[0x277D85DE8];
  v207 = xmmword_28491AD68;
  v208 = qword_28491AD78;
  v205 = a6;
  v206 = a7;
  applejpeg_decode_create();
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v11 = a1[34];
  if (*v11 != 2 || v11[1] - 1 > 1 || (v12 = a1[31], a1[32] - v12 != 12) || *v12 == 0.0 || v12[1] == 0.0 || v12[2] == 0.0 || applejpeg_decode_open_mem() || applejpeg_decode_set_option_outformat() || applejpeg_decode_set_option_alternate_420_prediction() || applejpeg_decode_get_image_info() || applejpeg_decode_get_output_buffer_size())
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CBEB28] dataWithLength:v204];
    v200 = [v13 mutableBytes];
    v201 = v204;
    v158 = v13;
    if (!applejpeg_decode_image_all() && !applejpeg_decode_get_planar_output_buffer_size())
    {
      v14 = v13;
      v15 = [v13 bytes];
      v16 = a1[34];
      v172 = a1;
      v177 = *v16 == 2 && v16[1] == 2;
      v169 = *(&v211 + 1);
      v214.origin.x = *a3;
      v214.origin.y = a3[1];
      v214.size.width = a3[2];
      v214.size.height = a3[3];
      v216.origin.x = *a5;
      v166 = v212;
      v216.origin.y = a5[1];
      v216.size.width = a5[2];
      v216.size.height = a5[3];
      v215 = CGRectIntersection(v214, v216);
      v17 = (v215.origin.y - a3[1]);
      v18 = v17 + v215.size.height;
      v168 = v17;
      if (v18 > v17)
      {
        v164 = v15 + 2 * v209 * v211 + 2 * *(&v209 + 1) * *(&v211 + 1);
        v165 = v15 + 2 * v209 * v211;
        v19 = (v215.origin.x - *a3);
        v20 = v19 + v215.size.width;
        v163 = v15 + 2;
        v161 = a2 + 8 * v19 + 8;
        v162 = 2 * v211;
        v21 = COERCE_UNSIGNED_INT(1.0);
        v22 = (v215.origin.y - a3[1]);
        v159 = v19;
        v160 = v17 + v215.size.height;
        v171 = v20;
        while (v20 <= v19)
        {
          v22 += 2;
LABEL_46:
          if (v22 >= v18)
          {
            goto LABEL_47;
          }
        }

        v23 = 0;
        v24 = v22 - v168;
        v25 = (v22 - v168) >> v177;
        v176 = v165 + 2 * v25 * v169;
        v175 = v165 + 2 * (v25 + 1) * v169;
        v174 = v164 + 2 * v25 * v166;
        v173 = v164 + 2 * (v25 + 1) * v166;
        v170 = v22 + 2;
        v26 = v177;
        if (v22 + 2 < v18)
        {
          v26 = 0;
        }

        v178 = v26;
        v27 = (v163 + v162 + v162 * v24);
        v28 = (v161 + a4 + v22 * a4);
        v29 = (v163 + v162 * v24);
        v30 = (v161 + v22 * a4);
        while (1)
        {
          v31 = (v176 + (v23 & 0xFFFFFFFFFFFFFFFELL));
          v32 = (v175 + (v23 & 0xFFFFFFFFFFFFFFFELL));
          v33 = (v174 + (v23 & 0xFFFFFFFFFFFFFFFELL));
          v34 = (v173 + (v23 & 0xFFFFFFFFFFFFFFFELL));
          v35 = v19 + 2;
          if (v35 >= v20)
          {
            v199 = *v31;
            v198 = v199;
            v195 = *v33;
            v194 = v195;
            v197 = *v32;
            v196 = v197;
            v36 = *v34;
            v34 = v193;
            v193[1] = v36;
            v33 = &v194;
            v32 = &v196;
            v193[0] = v36;
            v31 = &v198;
          }

          v179 = v35;
          v180 = v23;
          v37 = v178 ? v31 : v32;
          v38 = v178 ? v33 : v34;
          if (v177)
          {
            break;
          }

          v184 = 0;
          v185 = 0;
          v186 = 0;
          sub_233729070(&v184, v172[38], v172[39], (v172[39] - v172[38]) >> 2);
          v181 = 0;
          v182 = 0;
          v183 = 0;
          sub_233729070(&v181, v172[31], v172[32], (v172[32] - v172[31]) >> 2);
          v104 = v181;
          v106 = *v181;
          v105 = *(v181 + 1);
          v107 = *(v181 + 2);
          LOWORD(v108) = *(v29 - 1);
          v109 = *(v184 + 1);
          *&v110 = v108 - *v184;
          v111 = *&v110 / v109;
          LOWORD(v110) = *v29;
          *&v112 = v110 - *v184;
          v113 = *&v112 / v109;
          LOWORD(v112) = *(v27 - 1);
          *&v114 = v112 - *v184;
          v115 = *&v114 / v109;
          LOWORD(v114) = *v27;
          v116 = (v114 - *v184) / v109;
          v117 = *v31;
          v118 = *(v184 + 2);
          v119 = *(v184 + 3);
          v120 = (v117 - v118) / v119;
          v121 = (vcvts_n_f32_u32(v31[1] + v117, 1uLL) - v118) / v119;
          v122 = *v32;
          v123 = (v122 - v118) / v119;
          v124 = (vcvts_n_f32_u32(v32[1] + v122, 1uLL) - v118) / v119;
          v125 = *v33;
          v126 = (v125 - v118) / v119;
          v127 = (vcvts_n_f32_u32(v33[1] + v125, 1uLL) - v118) / v119;
          v128 = *v34;
          v129 = (v128 - v118) / v119;
          v130 = (vcvts_n_f32_u32(v34[1] + v128, 1uLL) - v118) / v119;
          v131 = (v109 + 1.0) * 0.000015259;
          v132 = (*v181 * -2.0) + 2.0;
          v133 = v111 + (v126 * v132);
          v134 = (v107 * -2.0) + 2.0;
          v135 = v111 + (v120 * v134);
          v136 = ((v111 - (v107 * v135)) - (*v181 * v133)) / v105;
          _S22 = v131 * v133;
          __asm { FCVT            H22, S22 }

          *(v30 - 4) = LOWORD(_S22);
          _S16 = v131 * v136;
          __asm { FCVT            H16, S16 }

          *(v30 - 3) = LOWORD(_S16);
          _S16 = v131 * v135;
          __asm { FCVT            H16, S16 }

          *(v30 - 2) = LOWORD(_S16);
          *(v30 - 1) = v21;
          v140 = v113 + (v127 * v132);
          v141 = v113 + (v121 * v134);
          v142 = ((v113 - (v107 * v141)) - (v106 * v140)) / v105;
          _S16 = v131 * v140;
          __asm { FCVT            H16, S16 }

          *v30 = LOWORD(_S16);
          _S5 = v131 * v142;
          __asm { FCVT            H5, S5 }

          v30[1] = LOWORD(_S5);
          _S5 = v131 * v141;
          __asm { FCVT            H5, S5 }

          v30[2] = LOWORD(_S5);
          v30[3] = v21;
          v146 = v115 + (v129 * v132);
          v147 = v115 + (v123 * v134);
          v148 = ((v115 - (v107 * v147)) - (v106 * v146)) / v105;
          _S5 = v131 * v146;
          __asm { FCVT            H5, S5 }

          *(v28 - 4) = LOWORD(_S5);
          _S4 = v131 * v148;
          __asm { FCVT            H4, S4 }

          *(v28 - 3) = LOWORD(_S4);
          _S4 = v131 * v147;
          __asm { FCVT            H4, S4 }

          *(v28 - 2) = LOWORD(_S4);
          *(v28 - 1) = v21;
          v152 = v116 + (v130 * v132);
          v153 = v116 + (v124 * v134);
          v154 = (v116 - (v107 * v153)) - (v106 * v152);
          _S2 = v131 * v152;
          __asm { FCVT            H2, S2 }

          *v28 = LOWORD(_S2);
          _S0 = v131 * (v154 / v105);
          __asm { FCVT            H0, S0 }

          v28[1] = LOWORD(_S0);
          _S0 = v131 * v153;
          __asm { FCVT            H0, S0 }

          v28[2] = LOWORD(_S0);
          v28[3] = v21;
          v182 = v104;
          operator delete(v104);
          v103 = v184;
          if (v184)
          {
            v185 = v184;
LABEL_42:
            operator delete(v103);
          }

LABEL_43:
          v27 += 2;
          v28 += 8;
          v29 += 2;
          v19 = v179;
          v23 = v180 + 2;
          v30 += 8;
          v20 = v171;
          if (v179 >= v171)
          {
            v19 = v159;
            v18 = v160;
            v22 = v170;
            goto LABEL_46;
          }
        }

        v190 = 0;
        v191 = 0;
        v192 = 0;
        sub_233729070(&v190, v172[38], v172[39], (v172[39] - v172[38]) >> 2);
        __p = 0;
        v188 = 0;
        v189 = 0;
        sub_233729070(&__p, v172[31], v172[32], (v172[32] - v172[31]) >> 2);
        v39 = __p;
        v41 = *__p;
        v40 = *(__p + 1);
        v42 = *(__p + 2);
        LOWORD(v43) = *(v29 - 1);
        v44 = v190[1];
        *&v45 = v43 - *v190;
        v46 = *&v45 / v44;
        LOWORD(v45) = *v29;
        *&v47 = v45 - *v190;
        v48 = *&v47 / v44;
        LOWORD(v47) = *(v27 - 1);
        *&v49 = v47 - *v190;
        v50 = *&v49 / v44;
        LOWORD(v49) = *v27;
        v51 = (v49 - *v190) / v44;
        v52 = *v31;
        v53 = v190[2];
        v54 = v190[3];
        v55 = (v52 - v53) / v54;
        v56 = v31[1] + v52;
        v57 = (vcvts_n_f32_u32(v56, 1uLL) - v53) / v54;
        v58 = *v37;
        v59 = (vcvts_n_f32_u32(v58 + v52, 1uLL) - v53) / v54;
        v60 = v56 + v58;
        if (v178)
        {
          v61 = v31;
        }

        else
        {
          v61 = v32;
        }

        v62 = (vcvts_n_f32_u32(v60 + v61[1], 2uLL) - v53) / v54;
        v63 = *v33;
        v64 = (v63 - v53) / v54;
        v65 = v33[1] + v63;
        v66 = (vcvts_n_f32_u32(v65, 1uLL) - v53) / v54;
        v67 = *v38;
        v68 = (vcvts_n_f32_u32(v67 + v63, 1uLL) - v53) / v54;
        v69 = v65 + v67;
        if (v178)
        {
          v70 = v33;
        }

        else
        {
          v70 = v34;
        }

        v71 = (vcvts_n_f32_u32(v69 + v70[1], 2uLL) - v53) / v54;
        v72 = (v44 + 1.0) * 0.000015259;
        v73 = (v41 * -2.0) + 2.0;
        v74 = v46 + (v64 * v73);
        v75 = (v42 * -2.0) + 2.0;
        v76 = v46 + (v55 * v75);
        v77 = ((v46 - (v42 * v76)) - (v41 * v74)) / v40;
        _S22 = v72 * v74;
        __asm { FCVT            H22, S22 }

        *(v30 - 4) = LOWORD(_S22);
        _S7 = v72 * v77;
        __asm { FCVT            H7, S7 }

        *(v30 - 3) = LOWORD(_S7);
        _S7 = v72 * v76;
        __asm { FCVT            H7, S7 }

        *(v30 - 2) = LOWORD(_S7);
        *(v30 - 1) = v21;
        v85 = v48 + (v66 * v73);
        v86 = v48 + (v57 * v75);
        v87 = ((v48 - (v42 * v86)) - (v41 * v85)) / v40;
        _S7 = v72 * v85;
        __asm { FCVT            H7, S7 }

        *v30 = LOWORD(_S7);
        _S5 = v72 * v87;
        __asm { FCVT            H5, S5 }

        v30[1] = LOWORD(_S5);
        _S5 = v72 * v86;
        __asm { FCVT            H5, S5 }

        v30[2] = LOWORD(_S5);
        v30[3] = v21;
        v91 = v50 + (v68 * v73);
        v92 = v50 + (v59 * v75);
        v93 = ((v50 - (v42 * v92)) - (v41 * v91)) / v40;
        _S5 = v72 * v91;
        __asm { FCVT            H5, S5 }

        *(v28 - 4) = LOWORD(_S5);
        _S4 = v72 * v93;
        __asm { FCVT            H4, S4 }

        *(v28 - 3) = LOWORD(_S4);
        _S4 = v72 * v92;
        __asm { FCVT            H4, S4 }

        *(v28 - 2) = LOWORD(_S4);
        *(v28 - 1) = v21;
        v97 = v51 + (v71 * v73);
        v98 = v51 + (v62 * v75);
        v99 = (v51 - (v42 * v98)) - (v41 * v97);
        _S2 = v72 * v97;
        __asm { FCVT            H2, S2 }

        *v28 = LOWORD(_S2);
        _S0 = v72 * (v99 / v40);
        __asm { FCVT            H0, S0 }

        v28[1] = LOWORD(_S0);
        _S0 = v72 * v98;
        __asm { FCVT            H0, S0 }

        v28[2] = LOWORD(_S0);
        v28[3] = v21;
        v188 = v39;
        operator delete(v39);
        v103 = v190;
        if (!v190)
        {
          goto LABEL_43;
        }

        v191 = v190;
        goto LABEL_42;
      }

LABEL_47:
      v13 = v158;
    }
  }

  applejpeg_decode_destroy();
}

void sub_2337FF6B8(uint64_t a1)
{
  v3 = *(a1 + 44);
  v2 = *(a1 + 48);
  v4 = *(a1 + 188);
  v5 = *(a1 + 192);
  v16 = (*(a1 + 208) - *(a1 + 200)) >> 2;
  sub_233723B40(&v19, &v16);
  if (*(a1 + 208) - *(a1 + 200) != *(a1 + 232) - *(a1 + 224))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v3 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v2 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v4 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v5 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = v19;
  if (v19 >= 20000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v2 + v5 - 1) / v5 * ((v3 + v4 - 1) / v4) != v19)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v15 = sub_2337ADCC4(a1);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 4 * v6;
    do
    {
      v16 = __PAIR64__(v8, v9);
      v17 = v4;
      v18 = v5;
      v11 = sub_2337FEC08(a1, *(*(a1 + 200) + v7), *(*(a1 + 224) + v7));
      if (v11)
      {
        v12 = v11;
        sub_2337FECFC(a1, v15 + 2 * v8 * v3 + 2 * v9, &v16, 2 * v3, &v16, v11, *(*(a1 + 224) + v7));
        free(v12);
      }

      v7 += 4;
      v13 = v9 + v4;
      if ((v9 + v4) >= v3)
      {
        v9 = 0;
      }

      else
      {
        v9 += v4;
      }

      if (v13 >= v3)
      {
        v14 = v5;
      }

      else
      {
        v14 = 0;
      }

      v8 += v14;
    }

    while (v10 != v7);
  }
}

void sub_2337FF964(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *(a1 + 44);
  v6 = *(a1 + 48);
  v8 = *(a1 + 188);
  v9 = *(a1 + 192);
  v19 = (*(a1 + 208) - *(a1 + 200)) >> 2;
  sub_233723B40(&v22, &v19);
  if (*(a1 + 208) - *(a1 + 200) != *(a1 + 232) - *(a1 + 224))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v7 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v6 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v8 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v9 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v22 >= 20000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v6 + v9 - 1) / v9 * ((v7 + v8 - 1) / v8) != v22)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v22)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 4 * v22;
    do
    {
      v19 = __PAIR64__(v12, v11);
      v20 = v8;
      v21 = v9;
      if (sub_23385F470(&v19, a3))
      {
        v14 = sub_2337FEC08(a1, *(*(a1 + 200) + v10), *(*(a1 + 224) + v10));
        if (v14)
        {
          v15 = v14;
          sub_2337FECFC(a1, a2, a3, a4, &v19, v14, *(*(a1 + 224) + v10));
          free(v15);
        }
      }

      if ((v11 + v8) >= v7)
      {
        v16 = v9;
      }

      else
      {
        v16 = 0;
      }

      v12 += v16;
      if ((v11 + v8) >= v7)
      {
        v11 = 0;
      }

      else
      {
        v11 += v8;
      }

      v10 += 4;
    }

    while (v13 != v10);
  }
}

void *sub_2337FFC08(void *a1)
{
  *a1 = &unk_28491AD90;
  v2 = a1[38];
  if (v2)
  {
    a1[39] = v2;
    operator delete(v2);
  }

  v3 = a1[34];
  if (v3)
  {
    a1[35] = v3;
    operator delete(v3);
  }

  v4 = a1[31];
  if (v4)
  {
    a1[32] = v4;
    operator delete(v4);
  }

  v5 = a1[28];
  if (v5)
  {
    a1[29] = v5;
    operator delete(v5);
  }

  v6 = a1[25];
  if (v6)
  {
    a1[26] = v6;
    operator delete(v6);
  }

  return sub_233723A54(a1);
}

void sub_2337FFCA8(void *a1)
{
  *a1 = &unk_28491AD90;
  v2 = a1[38];
  if (v2)
  {
    a1[39] = v2;
    operator delete(v2);
  }

  v3 = a1[34];
  if (v3)
  {
    a1[35] = v3;
    operator delete(v3);
  }

  v4 = a1[31];
  if (v4)
  {
    a1[32] = v4;
    operator delete(v4);
  }

  v5 = a1[28];
  if (v5)
  {
    a1[29] = v5;
    operator delete(v5);
  }

  v6 = a1[25];
  if (v6)
  {
    a1[26] = v6;
    operator delete(v6);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

_DWORD *sub_2337FFD5C(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  *sub_2338F4DD0(a1, a2) = &unk_28491AE88;
  a1[3] = sub_233725614(*a3);
  a1[4] = sub_233725614(*a3);
  a1[5] = sub_233725614(*a3);
  a1[6] = sub_233725614(*a3);
  return a1;
}

RAWOpcodeTrimBounds *sub_2337FFDD8(unsigned int *a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = [RAWOpcodeTrimBounds alloc];
  v10[0] = @"Top";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[3]];
  v11[0] = v3;
  v10[1] = @"Left";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[4]];
  v11[1] = v4;
  v10[2] = @"Bottom";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[5]];
  v11[2] = v5;
  v10[3] = @"Right";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[6]];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = [(RAWOpcodeTrimBounds *)v2 initWithArguments:v7];

  return v8;
}

xmlChar *sub_2337FFF9C(xmlChar *result, uint64_t a2, unsigned int a3)
{
  if (a3 <= 9 && a2)
  {
    v5 = result;
    v6 = a2;
    while (1)
    {
      if (*(a2 + 8) == 1)
      {
        goto LABEL_30;
      }

      if (!*(a2 + 80))
      {
        goto LABEL_30;
      }

      v7 = *(v6 + 72);
      if (!v7 || !*(v7 + 24))
      {
        goto LABEL_30;
      }

      result = xmlNodeGetContent(v6);
      if (result)
      {
        break;
      }

LABEL_31:
      v6 = *(v6 + 48);
      if (!v6)
      {
        return result;
      }
    }

    v8 = result;
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v8 length:xmlStrlen(v8) encoding:4];
    if (v9)
    {
      free(v8);
      if (!xmlStrEqual(*(*(v6 + 72) + 24), "exif"))
      {
        if (!xmlStrEqual(*(*(v6 + 72) + 24), "xmp"))
        {
          goto LABEL_29;
        }

        if (!xmlStrEqual(*(v6 + 16), "CreateDate"))
        {
          goto LABEL_29;
        }

        v10 = sub_233800710(v9);
        if (v10 <= -INFINITY)
        {
          goto LABEL_29;
        }

        sub_23372A488(__p, "XMP:xmp");
        v15 = __p;
        v11 = sub_23377BB60(v5 + 51, __p, &unk_233905F1C, &v15);
        goto LABEL_13;
      }

      if (xmlStrEqual(*(v6 + 16), "ShutterSpeedValue"))
      {
        v10 = sub_233800368(v9);
        sub_23372A488(__p, "XMP:exif");
        v15 = __p;
        v11 = sub_23377BB60(v5 + 39, __p, &unk_233905F1C, &v15);
LABEL_13:
        *(v11 + 56) = v10;
        goto LABEL_14;
      }

      if (xmlStrEqual(*(v6 + 16), "DateTimeOriginal"))
      {
        v10 = sub_233800710(v9);
        if (v10 > -INFINITY)
        {
          sub_23372A488(__p, "XMP:exif");
          v15 = __p;
          v11 = sub_23377BB60(v5 + 51, __p, &unk_233905F1C, &v15);
          goto LABEL_13;
        }
      }

      else
      {
        if (xmlStrEqual(*(v6 + 16), "ApertureValue"))
        {
          v10 = sub_233800368(v9);
          sub_23372A488(__p, "XMP:exif");
          v15 = __p;
          v11 = sub_23377BB60(v5 + 45, __p, &unk_233905F1C, &v15);
          goto LABEL_13;
        }

        if (xmlStrEqual(*(v6 + 16), "FocalLength"))
        {
          v10 = sub_233800368(v9);
          sub_23372A488(__p, "XMP:exif");
          v15 = __p;
          v11 = sub_23377BB60(v5 + 48, __p, &unk_233905F1C, &v15);
          goto LABEL_13;
        }

        if (xmlStrEqual(*(v6 + 16), "ExposureMode"))
        {
          v12 = [(__CFString *)v9 intValue];
          sub_23372A488(__p, "XMP:exif");
          v15 = __p;
          *(sub_2337F24C8(v5 + 54, __p, &unk_233905F1C, &v15) + 56) = v12 & ~(v12 >> 31);
LABEL_14:
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

LABEL_29:

LABEL_30:
    result = sub_2337FFF9C(v5, *(v6 + 24), a3 + 1);
    goto LABEL_31;
  }

  return result;
}

void sub_2338002FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_233800368(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"/"])
  {
    v2 = [v1 componentsSeparatedByString:@"/"];
    v3 = [v2 count];
    if (v3)
    {
      v4 = [v2 objectAtIndexedSubscript:0];
      [v4 doubleValue];
      v6 = v5;

      if (v3 != 1)
      {
        v7 = [v2 objectAtIndexedSubscript:1];
        [v7 doubleValue];
        v9 = v8;

        v6 = v6 / v9;
      }
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    [v1 doubleValue];
    v6 = v10;
  }

  return v6;
}

void sub_233800478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  sub_2337338AC(a1, &v13);
  if ((**v13)(v13))
  {
    v7 = 0;
  }

  else
  {
    v17 = a3 + a4;
    sub_233723C18(&v18, &v17);
    sub_2337338AC(a1, &v15);
    v8 = (*(*v15 + 16))(v15);
    v7 = v18 >= v8;
    if (v16)
    {
      sub_2337239E8(v16);
    }
  }

  if (v14)
  {
    sub_2337239E8(v14);
  }

  if (v7)
  {
    sub_2338FC4D8(a1);
  }

  else if ((a4 - 1000000) >= 0xFFFFFFFFFFF0BDC1)
  {
    v9 = [MEMORY[0x277CBEB28] dataWithLength:a4];
    if (v9)
    {
      sub_2337338AC(a1, &v15);
      sub_2337268D8(&v17, &v19);
      sub_233725F08(&v13, &v15, &v17, 0);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      if ((*(**(a1 + 80) + 32))(*(a1 + 80), [v9 mutableBytes], objc_msgSend(v9, "length")) == a4)
      {
        Memory = xmlReadMemory([v9 bytes], objc_msgSend(v9, "length"), "XMP", 0, 2112);
        v11 = Memory;
        if (Memory)
        {
          RootElement = xmlDocGetRootElement(Memory);
          sub_2337FFF9C(a1, RootElement, 0);
          xmlFreeDoc(v11);
        }
      }

      sub_233725FD4(&v13);
    }
  }
}

void sub_2338006A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_2337239E8(a13);
  }

  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233800710(const __CFString *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
  CFAutorelease(v3);
  v4 = CFDateFormatterCreate(0, v3, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
  CFAutorelease(v4);
  v5 = CFTimeZoneCreateWithTimeIntervalFromGMT(0, 0.0);
  CFAutorelease(v5);
  CFDateFormatterSetProperty(v4, *MEMORY[0x277CBEDF8], v5);
  CFDateFormatterSetFormat(v4, @"yyyy-MM-dd'T'HH:mm:ss");
  rangep.location = 0;
  rangep.length = CFStringGetLength(a1);
  atp = -INFINITY;
  if (CFDateFormatterGetAbsoluteTimeFromString(v4, a1, &rangep, &atp))
  {
    v26.location = rangep.length + rangep.location;
    v26.length = 3;
    v6 = rangep.length + rangep.location + 3;
    if (v6 <= CFStringGetLength(a1))
    {
      v25 = 0.0;
      CFDateFormatterSetFormat(v4, @".SS");
      if (CFDateFormatterGetAbsoluteTimeFromString(v4, a1, &v26, &v25))
      {
        rangep = v26;
        atp = atp + v25 - floor(v25);
      }
    }

    location = rangep.location;
    length = rangep.length;
    v9 = CFStringGetLength(a1);
    v10.length = v9 - (rangep.location + rangep.length);
    if (v10.length >= 2)
    {
      v10.location = length + location;
      v11 = CFStringCreateWithSubstring(0, a1, v10);
      CFAutorelease(v11);
      CharacterAtIndex = CFStringGetCharacterAtIndex(v11, 0);
      v13 = 0.0;
      if (CharacterAtIndex != 90)
      {
        v14 = CharacterAtIndex;
        if (CharacterAtIndex == 45 || CharacterAtIndex == 43)
        {
          v15 = CFStringGetLength(v11);
          v16 = 0.0;
          if (v15 >= 3)
          {
            v17 = v15;
            v29.location = 1;
            v29.length = 2;
            v18 = CFStringCreateWithSubstring(0, v11, v29);
            CFAutorelease(v18);
            v16 = CFStringGetIntValue(v18) * 3600.0 + 0.0;
            if (v17 != 3)
            {
              v19 = CFStringGetCharacterAtIndex(v11, 3);
              v20 = -4;
              if (v19 != 58)
              {
                v20 = -3;
              }

              if ((v20 + v17) >= 2)
              {
                if (v19 == 58)
                {
                  v21.location = 4;
                }

                else
                {
                  v21.location = 3;
                }

                v21.length = 2;
                v22 = CFStringCreateWithSubstring(0, v11, v21);
                CFAutorelease(v22);
                v16 = v16 + CFStringGetIntValue(v22) * 60.0;
              }
            }
          }

          v13 = -v16;
          if (v14 != 45)
          {
            v13 = v16;
          }
        }
      }

      atp = v13 + atp;
    }
  }

  else
  {
    CFDateFormatterSetFormat(v4, @"yyyy:MM:dd HH:mm");
    rangep.location = 0;
    rangep.length = CFStringGetLength(a1);
    if (!CFDateFormatterGetAbsoluteTimeFromString(v4, a1, &rangep, &atp))
    {
      atp = -INFINITY;
    }
  }

  v23 = atp;
  objc_autoreleasePoolPop(v2);
  return v23;
}

void sub_2338009F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &unk_28490E658;
  (*(*a1 + 160))(&v7);
  v4 = v7;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:redBlueBalance");
  (*(*v4 + 600))(v4, __p, &v14, 3);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (*(a2 + 8) == *a2)
  {
    (*(*a1 + 160))(&v10, a1);
    v5 = v10;
    sub_23372A488(&v7, "IFD0:EXIF:MAKERNOTE:ImageProcessing:WBRedBlueLevels");
    (*(*v5 + 600))(__p, v5, &v7, &v14, 3);
    v6 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v6;
      operator delete(v6);
    }

    *a2 = *__p;
    *(a2 + 16) = v13;
    __p[1] = 0;
    v13 = 0;
    __p[0] = 0;
    if (v9 < 0)
    {
      operator delete(v7);
    }

    if (v11)
    {
      sub_2337239E8(v11);
    }
  }
}

void sub_233800BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  v25 = *v23;
  if (*v23)
  {
    *(v23 + 8) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_233800C28(void *a1@<X0>, void **a2@<X8>)
{
  if ((*(*a1 + 248))(a1))
  {
    (*(*a1 + 2976))(&v27, a1, 0.0);
    if (v28 - v27 == 32 && *v27 > 0.0)
    {
      goto LABEL_8;
    }

    (*(*a1 + 2984))(&v25, a1, 0.0);
    if (v27)
    {
      *&v28 = v27;
      operator delete(v27);
    }

    v27 = v25;
    v28 = v26;
    if (v26 - v25 == 32 && *v25 > 0.0)
    {
LABEL_8:
      sub_2337D4D80(a1, a2);
    }

    else
    {
      v25 = 0;
      sub_233731694(a2, 4uLL, &v25);
    }

    if (v27)
    {
      *&v28 = v27;
      operator delete(v27);
    }

    return;
  }

  if (!(*(*a1 + 176))(a1))
  {
LABEL_51:
    sub_2337D4D80(a1, a2);
    return;
  }

  v27 = 0;
  v28 = 0uLL;
  v25 = 0;
  v26 = 0uLL;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  (*(*a1 + 160))(&v20, a1);
  v4 = v20;
  sub_23372A488(&__p, "IFD0:SUBIFD0");
  (*(*v4 + 248))(v4, &__p, &v27, 0);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_2337239E8(v21);
  }

  (*(*a1 + 160))(&v20, a1);
  v5 = v20;
  sub_23372A488(&__p, "IFD0:SUBIFD0:DeltaH");
  (*(*v5 + 248))(v5, &__p, &v25, 0);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_2337239E8(v21);
  }

  (*(*a1 + 160))(&v20, a1);
  v6 = v20;
  sub_23372A488(&__p, "IFD0:SUBIFD0:DeltaV");
  (*(*v6 + 248))(v6, &__p, &v22, 0);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_2337239E8(v21);
  }

  v20 = 0;
  sub_233731694(&__p, 4uLL, &v20);
  v7 = __p;
  v8 = v18 - __p;
  if (v18 != __p)
  {
    v9 = 0;
    v10 = v27;
    v11 = (v28 - v27) >> 3;
    v12 = v25;
    v13 = (v26 - v25) >> 3;
    v14 = v22;
    v15 = (v23 - v22) >> 3;
    do
    {
      if (v11 > v9)
      {
        v7[v9] = v10[v9] + v7[v9];
      }

      if (v13 > v9)
      {
        v7[v9] = v12[v9] + v7[v9];
      }

      if (v15 > v9)
      {
        v7[v9] = v14[v9] + v7[v9];
      }

      ++v9;
    }

    while (v8 >> 3 > v9);
  }

  if (v8 == 32)
  {
    if (*v7 > 0.0 && v7[1] > 0.0 && v7[2] > 0.0 && v7[3] > 0.0)
    {
      v16 = 1;
      goto LABEL_42;
    }

    v20 = 0;
    sub_233731694(a2, 4uLL, &v20);
  }

  else
  {
    sub_2337D4D80(a1, a2);
  }

  v16 = 0;
LABEL_42:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    *&v26 = v25;
    operator delete(v25);
  }

  if (v27)
  {
    *&v28 = v27;
    operator delete(v27);
  }

  if (v16)
  {
    goto LABEL_51;
  }
}

void sub_2338010D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v23 = *(v21 - 56);
  if (v23)
  {
    *(v21 - 48) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233801180(uint64_t a1)
{
  (*(*a1 + 72))(&v7);
  v2 = v7;
  v3 = off_27DE37728[0];
  v4 = (*(*a1 + 120))(a1);
  v5 = sub_233801254(v2, v3, v4, &unk_28491AEC0);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23380123C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233801254(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2338026E4;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_23380277C;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_23380277C;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_233802730((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_233801530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338015C8(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v14 = a3;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  if ((*(*a1 + 960))(a1) != 10 && (*(*a1 + 960))(a1) != 15)
  {
    goto LABEL_12;
  }

  (*(*a1 + 160))(&v10, a1);
  v5 = v10;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE");
  v6 = (*(*v5 + 248))(v5, __p, v12, 0);
  if ((v12[1] - v12[0]) == 32)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    sub_2337239E8(v11);
  }

  if (v7)
  {
    *a2 = *v12;
    a2[2] = v13;
  }

  else
  {
LABEL_12:
    sub_233731694(a2, 4uLL, &v14);
    if (v12[0])
    {
      v12[1] = v12[0];
      operator delete(v12[0]);
    }
  }
}

void sub_233801744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_233801790(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v14 = a3;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  if ((*(*a1 + 960))(a1) != 10 && (*(*a1 + 960))(a1) != 15)
  {
    goto LABEL_12;
  }

  (*(*a1 + 160))(&v10, a1);
  v5 = v10;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:ImageProcessing");
  v6 = (*(*v5 + 248))(v5, __p, v12, 0);
  if ((v12[1] - v12[0]) == 32)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    sub_2337239E8(v11);
  }

  if (v7)
  {
    *a2 = *v12;
    a2[2] = v13;
  }

  else
  {
LABEL_12:
    sub_233731694(a2, 4uLL, &v14);
    if (v12[0])
    {
      v12[1] = v12[0];
      operator delete(v12[0]);
    }
  }
}

void sub_23380190C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233801958(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  sub_2337D0434(&v3, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v5)
  {
    v1 = v5[336];
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v1;
}

uint64_t sub_233801A0C(uint64_t a1)
{
  (*(*a1 + 160))(&v5);
  sub_2337D0434(&v5, &v7);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  if (v7)
  {
    v2 = (*(*v7 + 792))(v7);
  }

  else
  {
    v2 = sub_2337D1FD0(a1);
  }

  v3 = v2;
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v3;
}

void sub_233801AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_233801AE0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37618[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_233801BF8;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_233801BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_233801BF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = (*(*v3 + 2960))(v3);
  if (v4 == 2)
  {
    (*(*v3 + 2968))(v3);
    v6 = *(*v3 + 2984);
    v7 = v3;

    return v6(v7);
  }

  if (v4 == 1)
  {
    (*(*v3 + 2968))(v3);
    v6 = *(*v3 + 2976);
    v7 = v3;

    return v6(v7);
  }

  if (v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = (*(*v3 + 2968))(v3);
  return sub_233731694(a2, 4uLL, &v9);
}

id sub_233801DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"packingMethod"])
  {
    [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 2952))(a1)];
  }

  else
  {
    sub_2338D3C20(a1, v3);
  }
  v4 = ;

  return v4;
}

uint64_t sub_233801EB8(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D7FB8(v2, @"olympusBlackLevelSource", v3, &unk_28491AEE0);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_233801F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233801F7C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

double sub_233801FD8(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337F5668(v2, @"olympusFallbackBlackLevel", v3, &unk_28491AF00);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_23380208C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338020AC(void *a1)
{
  (*(*a1 + 2888))(&v7);
  if (v8 != v7)
  {
    v2 = *v7;
    if (*v7 == 2)
    {
      (*(*a1 + 160))(&v5, a1);
      (*(*v5 + 384))(&v6);
      (*(*a1 + 336))(a1);
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_233802980();
    }

    v3 = v8 - v7;
    if (v2 == 7)
    {
      if (v3 > 1)
      {
        (*(*a1 + 160))(&v5, a1);
        (*(*v5 + 384))(&v6);
        (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_233802A24();
      }

LABEL_16:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v2 == 4)
    {
      if (v3 > 1 && (v7[1] & 0x80000000) == 0)
      {
        (*(*a1 + 160))(&v5, a1);
        (*(*v5 + 384))(&v6);
        (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_233802844();
      }

      goto LABEL_16;
    }
  }

  sub_23373C7EC(a1);
  if (!a1[3])
  {
    goto LABEL_16;
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }
}

void sub_23380262C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_2337239E8(a18);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  v20 = *(v18 - 48);
  if (v20)
  {
    *(v18 - 40) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338026E4(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedInt:v2];
}

uint64_t (**sub_233802730(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_28491BAF8, &unk_2339083D0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_23380277C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_23380277C;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_23380277C;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_28491BAF8;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_28491BAF8);
  }

  else
  {
    v6 = a5 == &unk_2339083D0;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338028F8(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, int *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849060F0;
  v7 = *a6;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28490B2B8;
  *(a1 + 212) = v7;
  *(a1 + 216) = 0;
  return a1;
}

uint64_t sub_233802AC8(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28491BB18;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28490B1C8;
  *(a1 + 212) = 0;
  return a1;
}

void sub_233802B68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28491BB18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233802BE4(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&v2, a1);
    (*(*v2 + 384))(&v3);
    (*(*a1 + 336))(a1);
    (*(*a1 + 408))(a1);
    (*(*a1 + 432))(a1);
    sub_2337F3AEC();
  }
}

void sub_233802D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_233802DAC(uint64_t a1)
{
  v2 = (*(*a1 + 2192))(a1);
  v8 = 0;
  v9 = v2;
  v7 = &unk_284917748;
  (*(*a1 + 160))(&v5, a1);
  v4 = 17;
  strcpy(__p, "MinoltaSegmentWBG");
  (*(*v5 + 600))();
  if (v4 < 0)
  {
    operator delete(*__p);
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }
}

void sub_233802EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_233803170(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&v2, a1);
    (*(*v2 + 384))(&v3);
    (*(*a1 + 336))(a1);
    (*(*a1 + 408))(a1);
    (*(*a1 + 432))(a1);
    sub_233803554();
  }
}

void sub_23380330C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_233803340(uint64_t a1, uint64_t a2)
{
  v6 = &unk_284910F70;
  v7 = 0;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE");
  (*(*a1 + 2976))(a1, a2, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_233803408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233803424(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_2337C0120(&v5, qword_233908488, &qword_233908488[12], 0xCuLL);
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE");
  v2 = (*(*a1 + 2968))(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 2960))(a1, v2);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }
}

void sub_23380351C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338035F8(void *a1)
{
  sub_23373C7EC(a1);
  if (a1[3])
  {
    return;
  }

  (*(*a1 + 160))(&v10, a1);
  sub_2337D0764(&v10, &v12);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  if (v12)
  {
    (*(*a1 + 2888))(&v10, a1);
    if ((v11 - v10) < 5)
    {
      v2 = (*(*v12 + 816))(v12);
    }

    else
    {
      v2 = *(v10 + 1);
    }

    if (v2 > 6)
    {
      if (v2 <= 9)
      {
        if (v2 != 7)
        {
          if (v2 != 8)
          {
            (*(*a1 + 160))(v7, a1);
            (*(*v7[0] + 384))(&v9);
            v8 = (*(*a1 + 336))(a1);
            (*(*a1 + 408))(a1);
            (*(*a1 + 432))(a1);
            sub_2337F3AEC();
          }

          (*(*a1 + 160))(v7, a1);
          (*(*v7[0] + 384))(&v9);
          v8 = (*(*a1 + 336))(a1);
          (*(*a1 + 408))(a1);
          (*(*a1 + 432))(a1);
          sub_23380647C();
        }

        (*(*a1 + 160))(v7, a1);
        (*(*v7[0] + 384))(&v9);
        v8 = (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_2337F3A48();
      }

      if ((v2 - 13) < 2)
      {
        v6 = a1[4];
        a1[3] = 0;
        a1[4] = 0;
        if (v6)
        {
          sub_2337239E8(v6);
        }
      }

      else if (v2 == 10 || v2 == 100006)
      {
        (*(*a1 + 160))(v7, a1);
        (*(*v7[0] + 384))(&v9);
        v8 = (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_2338062B0();
      }

LABEL_38:
      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      goto LABEL_40;
    }

    if (v2 <= 2)
    {
      if (v2 != 1)
      {
        if (v2 == 2)
        {
          v4 = (*(*a1 + 576))(a1);
          if (v4 == 12)
          {
            (*(*a1 + 160))(v7, a1);
            (*(*v7[0] + 384))(&v9);
            v8 = (*(*a1 + 336))(a1);
            (*(*a1 + 408))(a1);
            (*(*a1 + 432))(a1);
            sub_2337F3AEC();
          }

          if (v4 == 14)
          {
            (*(*a1 + 160))(v7, a1);
            (*(*v7[0] + 384))(&v9);
            v8 = (*(*a1 + 336))(a1);
            (*(*a1 + 408))(a1);
            (*(*a1 + 432))(a1);
            sub_2337F3A48();
          }
        }

        goto LABEL_38;
      }
    }

    else if ((v2 - 3) >= 2)
    {
      if (v2 == 5)
      {
        (*(*a1 + 160))(v7, a1);
        (*(*v7[0] + 384))(&v9);
        v8 = (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_233806654();
      }

      if (v2 == 6)
      {
        (*(*a1 + 160))(v7, a1);
        (*(*v7[0] + 384))(&v9);
        v8 = (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_23380620C();
      }

      goto LABEL_38;
    }

    (*(*v12 + 384))(&v9);
    (*(*a1 + 336))(a1);
    v8 = (*(*a1 + 408))(a1);
    v7[0] = (*(*a1 + 432))(a1);
    v7[1] = v5;
    (*(*v12 + 520))(v12);
    (*(*v12 + 800))(v12);
    sub_233806020();
  }

LABEL_40:
  if (v13)
  {
    sub_2337239E8(v13);
  }
}