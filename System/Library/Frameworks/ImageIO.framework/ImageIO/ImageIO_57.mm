void sub_1861D0E40(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x186602850](v23, 0x10B3C40D6404C7DLL, a3, a4, a5, a6, a7, a8);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  IIODictionary::~IIODictionary((v24 - 56));
  _Unwind_Resume(a1);
}

uint64_t OFDDocument::open(OFDDocument *this)
{
  if ((*(this + 188) & 1) == 0)
  {
    *(this + 188) = 1;
    v2 = *(this + 1);
    v3 = this + 16;
    if (*(this + 39) < 0)
    {
      v3 = *v3;
    }

    v4 = OFDContainer::copyFileContent(v2, v3);
    if (v4)
    {
      v5 = v4;
      OFDDocument::parseXML(this, v4);
      CFRelease(v5);
    }
  }

  return 1;
}

BOOL OFDDocument::parseXML(OFDDocument *this, const __CFData *a2)
{
  v3 = XMLDictionaryCreateWithData(a2);
  v4 = v3;
  *(this + 8) = v3;
  if (v3)
  {
    ArrayObjectForPath = IIODictionary::getArrayObjectForPath(v3, @"Document.CommonData.PageArea.PhysicalBox");
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayObjectForPath, 0);
    *(this + 19) = CGRectFromCFString(ValueAtIndex);
    *(this + 20) = v7;
    *(this + 21) = v8;
    *(this + 22) = v9;
    v10 = IIODictionary::getArrayObjectForPath(*(this + 8), @"Document.Pages.Page");
    if (v10)
    {
      LODWORD(v10) = CFArrayGetCount(v10);
    }

    v11 = *(this + 13);
    *(this + 46) = v10;
    v12 = *(this + 14);
    v13 = (v12 - v11) >> 3;
    if (v13 < v10)
    {
      do
      {
        v14 = *(this + 15);
        if (v12 >= v14)
        {
          v15 = v14 - v11;
          if (v15 >> 2 <= v13 + 1)
          {
            v16 = v13 + 1;
          }

          else
          {
            v16 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(this + 104, v17);
        }

        *v12++ = 0;
        *(this + 14) = v12;
        v11 = *(this + 13);
        v13 = (v12 - v11) >> 3;
      }

      while (v13 < *(this + 46));
    }

    v18 = IIODictionary::getArrayObjectForPath(*(this + 8), @"Document.CommonData.TemplatePage");
    if (v18)
    {
      Count = CFArrayGetCount(v18);
      v20 = *(this + 16);
      v21 = *(this + 17);
      for (i = (v21 - v20) >> 3; i < Count; i = (v21 - v20) >> 3)
      {
        v23 = *(this + 18);
        if (v21 >= v23)
        {
          v24 = v23 - v20;
          if (v24 >> 2 <= i + 1)
          {
            v25 = i + 1;
          }

          else
          {
            v25 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v25;
          }

          std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(this + 128, v26);
        }

        *v21++ = 0;
        *(this + 17) = v21;
        v20 = *(this + 16);
      }
    }
  }

  return v4 != 0;
}

void OFDDocument::setupFonts(OFDDocument *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    ArrayObjectForPath = IIODictionary::getArrayObjectForPath(v2, @"Res.Fonts.Font");
    if (ArrayObjectForPath)
    {
      v4 = ArrayObjectForPath;
      if (CFArrayGetCount(ArrayObjectForPath) >= 1)
      {
        v5 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
          v7 = *(this + 12);
          Value = CFDictionaryGetValue(ValueAtIndex, @"ID");
          IIODictionary::setObjectForKey(v7, ValueAtIndex, Value);
          ++v5;
        }

        while (CFArrayGetCount(v4) > v5);
      }
    }
  }

  v9 = *(this + 10);
  if (v9)
  {
    v10 = IIODictionary::getArrayObjectForPath(v9, @"Res.Fonts.Font");
    if (v10)
    {
      v11 = v10;
      if (CFArrayGetCount(v10) >= 1)
      {
        v12 = 0;
        do
        {
          v13 = CFArrayGetValueAtIndex(v11, v12);
          if (v13)
          {
            v14 = v13;
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(v14))
            {
              if (CFDictionaryContainsKey(v14, @"FontName"))
              {
                v16 = *(this + 12);
                v17 = CFDictionaryGetValue(v14, @"ID");
                IIODictionary::setObjectForKey(v16, v14, v17);
              }
            }
          }

          ++v12;
        }

        while (CFArrayGetCount(v11) > v12);
      }
    }
  }

  v18 = *(this + 12);

  IIODictionary::enumerate(v18, &__block_literal_global_54);
}

const void *OFDDocument::createFont(IIODictionary **this, uint64_t a2, double a3)
{
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a2);
  ObjectForKey = IIODictionary::getObjectForKey(this[12], v5);
  if (ObjectForKey)
  {
    Value = CFDictionaryGetValue(ObjectForKey, @"FontName");
    if (Value)
    {
      v8 = Value;
      if (CFStringCompare(Value, @"SimSong-Regular", 0) == kCFCompareEqualTo && OFDDocument::createFont(unsigned int,double)::onceToken != -1)
      {
        OFDDocument::createFont();
      }

      v9 = gFunc_CTFontCreateWithName(v8, 0, a3);
      if (v9)
      {
        v10 = v9;
        v11 = gFunc_CTFontCopyPostScriptName();
        if (CFStringCompare(v8, v11, 0) == kCFCompareEqualTo || CFStringCompare(@"CourierNewPSMT", v11, 0) == kCFCompareEqualTo)
        {
          CFRelease(v11);
          return v10;
        }

        CFRelease(v10);
        CFRelease(v11);
      }
    }
  }

  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  IIOString::IIOString(v13, "STSongti-TC-Regular");
  v10 = gFunc_CTFontCreateWithName(v14, 0, a3);
  IIOString::~IIOString(v13);
  return v10;
}

void sub_1861D1410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZN11OFDDocument10createFontEjd_block_invoke()
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  IIODictionary::IIODictionary(&v7);
  IIODictionary::setObjectForKey(v0, @"SimSong-Regular", *gIIO_kCTFontNameAttribute);
  v1 = gFunc_CTFontDescriptorCreateWithAttributes(v8);
  v2 = dispatch_semaphore_create(0);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  IIOArray::IIOArray(&v4);
  IIOArray::addObject(&v4, v1);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11OFDDocument10createFontEjd_block_invoke_2;
  v3[3] = &__block_descriptor_tmp_22_0;
  v3[4] = v2;
  if (gFunc_CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v5, 0, v3))
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  IIOArray::~IIOArray(&v4);
  IIODictionary::~IIODictionary(&v7);
}

uint64_t ___ZN11OFDDocument10createFontEjd_block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  return 1;
}

const __CFDictionary *OFDDocument::getDrawParam(OFDDocument *this, int a2)
{
  v4 = *(this + 9);
  if (v4 && (v5 = IIODictionary::getArrayObjectForPath(v4, @"Res.DrawParams.DrawParam")) != 0 && (v6 = v5, v7 = CFArrayGetCount(v5), v7 >= 1))
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        IIODictionary::IIODictionary(&v22, ValueAtIndex);
        Uint32ForKey = IIODictionary::getUint32ForKey(&v22, @"ID");
        IIODictionary::~IIODictionary(&v22);
        if (Uint32ForKey == a2)
        {
          break;
        }
      }

      if (v8 == ++v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v13 = *(this + 10);
    if (v13 && (ArrayObjectForPath = IIODictionary::getArrayObjectForPath(v13, @"Res.DrawParams.DrawParam")) != 0 && (v15 = ArrayObjectForPath, Count = CFArrayGetCount(ArrayObjectForPath), Count >= 1))
    {
      v17 = Count;
      v18 = 0;
      while (1)
      {
        v19 = CFArrayGetValueAtIndex(v15, v18);
        if (v19)
        {
          v11 = v19;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          IIODictionary::IIODictionary(&v22, v19);
          v20 = IIODictionary::getUint32ForKey(&v22, @"ID");
          IIODictionary::~IIODictionary(&v22);
          if (v20 == a2)
          {
            break;
          }
        }

        if (v17 == ++v18)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

void sub_1861D16F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void OFDDocument::applyDrawParam(OFDDocument *this, int a2, __CFDictionary *a3)
{
  DrawParam = OFDDocument::getDrawParam(this, a2);
  if (a3 && DrawParam)
  {
    memset(v10, 0, sizeof(v10));
    IIODictionary::IIODictionary(v10, DrawParam);
    ObjectForKey = IIODictionary::getObjectForKey(v10, @"Stroke");
    if (ObjectForKey)
    {
      CFDictionarySetValue(a3, @"Stroke", ObjectForKey);
    }

    v6 = IIODictionary::getObjectForKey(v10, @"Fill");
    if (v6)
    {
      CFDictionarySetValue(a3, @"Fill", v6);
    }

    v7 = IIODictionary::getObjectForKey(v10, @"StrokeColor");
    if (v7)
    {
      CFDictionarySetValue(a3, @"StrokeColor", v7);
    }

    v8 = IIODictionary::getObjectForKey(v10, @"FillColor");
    if (v8)
    {
      CFDictionarySetValue(a3, @"FillColor", v8);
    }

    v9 = IIODictionary::getObjectForKey(v10, @"LineWidth");
    if (v9)
    {
      CFDictionarySetValue(a3, @"LineWidth", v9);
    }

    IIODictionary::~IIODictionary(v10);
  }
}

void sub_1861D1824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void ___ZN11OFDDocument10setupFontsEv_block_invoke(int a1, int a2, __CFDictionary *a3)
{
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a3);
  ObjectForKey = IIODictionary::getObjectForKey(v7, "FontName");
  if (CFStringCompare(ObjectForKey, @"宋体", 0) && CFStringCompare(ObjectForKey, @"黑体", 0) && CFStringCompare(ObjectForKey, @"楷体", 0))
  {
    if (CFStringCompare(ObjectForKey, @"等线", 0) == kCFCompareEqualTo)
    {
      goto LABEL_13;
    }

    if (CFStringCompare(ObjectForKey, @"SimHei", 0) == kCFCompareEqualTo)
    {
      v4 = @"Hiragino Sans GB W3";
      goto LABEL_11;
    }

    if (CFStringCompare(ObjectForKey, @"微软雅黑", 0) == kCFCompareEqualTo)
    {
LABEL_13:
      v4 = @"PingFang SC";
      goto LABEL_11;
    }

    if (!CFStringHasPrefix(ObjectForKey, @"STSong") && !CFStringHasPrefix(ObjectForKey, @"SimSun") && !CFStringHasPrefix(ObjectForKey, @"KaiTi"))
    {
      IIOString::IIOString(v6, ObjectForKey);
      v5 = IIOString::utf8String(v6);
      printf("*** check font-mapping:   fontName: %s\n", v5);
      IIOString::~IIOString(v6);
      goto LABEL_12;
    }
  }

  v4 = @"SimSong-Regular";
LABEL_11:
  IIODictionary::setObjectForKey(v7, v4, @"FontName");
LABEL_12:
  IIODictionary::~IIODictionary(v7);
}

void sub_1861D19C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  IIOString::~IIOString(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

const __CFString *OFDDocument::copyResourcePath(IIODictionary **this, unsigned int a2, const __CFString *a3)
{
  v5 = a2;
  v6 = OFDCopyResourcePathFromDictionary(this[9], a2, a3);
  if (v6)
  {
    v7 = v6;
    if (CFStringHasPrefix(v6, @"Doc_"))
    {
      return v7;
    }

    v8 = this + 5;
    if (*(this + 63) < 0)
    {
      v8 = *v8;
    }

    v9 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s/Res/%@", v8, v7);
    CFRelease(v7);
    v7 = v9;
    if (v9)
    {
      return v7;
    }
  }

  v11 = this[10];

  return OFDCopyResourcePathFromDictionary(v11, v5, a3);
}

uint64_t unzStringFileNameCompare(const char *a1, const char *a2, int a3)
{
  if (a3 == 1)
  {
    return strcmp(a1, a2);
  }

  while (1)
  {
    v5 = *a1++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if ((v4 - 97) < 0x1A)
    {
      LOBYTE(v4) = v4 - 32;
    }

    if ((v6 - 97) < 0x1A)
    {
      LOBYTE(v6) = v6 - 32;
    }

    if (!v4)
    {
      break;
    }

    if (!v6)
    {
      return 1;
    }

    if (v4 < v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 > v6)
    {
      return 1;
    }
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void *unzOpenInternal(uint64_t a1, uint64_t a2, int a3)
{
  memset(__src, 0, sizeof(__src));
  v68 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
    __src[2] = *(a2 + 32);
    __src[3] = v4;
    __src[4] = *(a2 + 64);
    *&__src[5] = *(a2 + 80);
    v5 = *(a2 + 16);
    __src[0] = *a2;
    __src[1] = v5;
  }

  else
  {
    fill_fopen64_filefunc(__src);
  }

  DWORD2(__src[5]) = a3;
  v6 = call_zopen64(__src);
  *&__src[6] = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  if (call_zseek64(__src))
  {
    goto LABEL_60;
  }

  v8 = call_ztell64(__src);
  v9 = v8;
  v10 = v8 >= 0xFFFF ? 0xFFFFLL : v8;
  v11 = malloc_type_malloc(0x404uLL, 0x100004077774924uLL);
  if (!v11)
  {
    goto LABEL_60;
  }

  v12 = v11;
  if (v9 < 5)
  {
    goto LABEL_59;
  }

  v13 = 4;
  while (2)
  {
    v14 = v13 + 1024;
    if (v13 + 1024 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 += 1024;
    }

    v15 = v13 >= 0x404 ? 1028 : v13;
    if (call_zseek64(__src) || (*(&__src[0] + 1))(*(&__src[3] + 1), v7, v12, v15) != v15)
    {
LABEL_59:
      free(v12);
LABEL_60:
      v36 = *&__src[6];
      if (call_zseek64(__src) || ((v38 = call_ztell64(__src), v39 = v38, v38 >= 0xFFFF) ? (v40 = 0xFFFFLL) : (v40 = v38), (v41 = malloc_type_malloc(0x404uLL, 0x100004077774924uLL)) == 0))
      {
        v19 = 0;
        v37 = -1;
      }

      else
      {
        v42 = v41;
        if (v39 < 5)
        {
          v19 = 0;
          v37 = -1;
        }

        else
        {
          v43 = 4;
          while (2)
          {
            v44 = v43 + 1024;
            if (v43 + 1024 >= v40)
            {
              v43 = v40;
            }

            else
            {
              v43 += 1024;
            }

            if (v43 >= 0x404)
            {
              v45 = 1028;
            }

            else
            {
              v45 = v43;
            }

            if (!call_zseek64(__src) && (*(&__src[0] + 1))(*(&__src[3] + 1), v36, v42, v45) == v45)
            {
              v46 = (v45 - 4);
              v47 = v43 - v39 - v46;
              v48 = v45 - 3;
              v49 = &v42[v46 + 1];
              while (*(v49 - 1) != 80 || *v49 != 75 || v49[1] != 5 || v49[2] != 6)
              {
                ++v47;
                --v49;
                v50 = __OFSUB__(v48--, 1);
                if ((v48 < 0) ^ v50 | (v48 == 0))
                {
                  goto LABEL_83;
                }
              }

              if (v47)
              {
                v37 = 0;
                v19 = -v47;
                goto LABEL_89;
              }

LABEL_83:
              if (v44 < v40)
              {
                continue;
              }
            }

            break;
          }

          v19 = 0;
          v37 = -1;
        }

LABEL_89:
        free(v42);
      }

      HIDWORD(__src[20]) = 0;
      v51 = call_zseek64(__src);
      Long = unz64local_getLong(__src, *&__src[6], &v71);
      Short = unz64local_getShort(__src, *&__src[6], &v70);
      v54 = unz64local_getShort(__src, *&__src[6], &v69);
      v55 = unz64local_getShort(__src, *&__src[6], &v71);
      *(&__src[6] + 1) = v71;
      v56 = unz64local_getShort(__src, *&__src[6], &v71) | v55 | v54 | Short | Long;
      if (v51)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56 == 0;
      }

      if (v57)
      {
        v58 = v37;
      }

      else
      {
        v58 = -1;
      }

      if (v70)
      {
        v59 = 0;
      }

      else
      {
        v59 = v69 == 0;
      }

      if (v59 && v71 == *(&__src[6] + 1))
      {
        v61 = v58;
      }

      else
      {
        v61 = -103;
      }

      v62 = unz64local_getLong(__src, *&__src[6], &v71);
      *&__src[10] = v71;
      v63 = unz64local_getLong(__src, *&__src[6], &v71) | v62;
      *(&__src[10] + 1) = v71;
      if (v63 | unz64local_getShort(__src, *&__src[6], &__src[7]))
      {
        v35 = -1;
      }

      else
      {
        v35 = v61;
      }

      goto LABEL_108;
    }

    v16 = (v15 - 4);
    v17 = v13 - v9 - v16;
    v18 = v16 + 1;
    while (v12[v18 - 1] != 80 || v12[v18] != 75 || v12[v18 + 1] != 6 || v12[v18 + 2] != 7)
    {
      ++v17;
      if (--v18 <= 0)
      {
        goto LABEL_26;
      }
    }

    if (!v17)
    {
LABEL_26:
      if (v14 < v10)
      {
        continue;
      }

      goto LABEL_59;
    }

    break;
  }

  free(v12);
  if (call_zseek64(__src))
  {
    goto LABEL_60;
  }

  v74[0] = 0;
  if (unz64local_getLong(__src, v7, v74))
  {
    goto LABEL_60;
  }

  if (unz64local_getLong(__src, v7, v74))
  {
    goto LABEL_60;
  }

  if (v74[0])
  {
    goto LABEL_60;
  }

  v73 = 0;
  if (unz64local_getLong64(__src, v7, &v73))
  {
    goto LABEL_60;
  }

  if (unz64local_getLong(__src, v7, v74))
  {
    goto LABEL_60;
  }

  if (v74[0] != 1)
  {
    goto LABEL_60;
  }

  v19 = v73;
  if (call_zseek64(__src) || unz64local_getLong(__src, v7, v74) || v74[0] != 101075792 || !v19)
  {
    goto LABEL_60;
  }

  HIDWORD(__src[20]) = 1;
  v20 = call_zseek64(__src);
  v21 = unz64local_getLong(__src, *&__src[6], &v71);
  v22 = unz64local_getLong64(__src, *&__src[6], &v73) | v21;
  v23 = unz64local_getShort(__src, *&__src[6], v74);
  v24 = unz64local_getShort(__src, *&__src[6], v74);
  v25 = unz64local_getLong(__src, *&__src[6], &v70);
  v26 = unz64local_getLong(__src, *&__src[6], &v69) | v25;
  Long64 = unz64local_getLong64(__src, *&__src[6], &__src[6] + 1);
  if (unz64local_getLong64(__src, *&__src[6], &v68) | Long64 | v26 | v24 | v23 | v22)
  {
    v28 = 0;
  }

  else
  {
    v28 = v20 == 0;
  }

  v29 = !v28;
  v30 = v29 << 31 >> 31;
  if (v70)
  {
    v31 = 0;
  }

  else
  {
    v31 = v69 == 0;
  }

  if (v31 && v68 == *(&__src[6] + 1))
  {
    v33 = v30;
  }

  else
  {
    v33 = -103;
  }

  v34 = unz64local_getLong64(__src, *&__src[6], &__src[10]);
  if (unz64local_getLong64(__src, *&__src[6], &__src[10] + 1) | v34)
  {
    v35 = -1;
  }

  else
  {
    v35 = v33;
  }

  *&__src[7] = 0;
LABEL_108:
  if (v19 < *&__src[10] + *(&__src[10] + 1) || v35)
  {
    (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[6]);
    return 0;
  }

  *(&__src[7] + 1) = v19 - (*&__src[10] + *(&__src[10] + 1));
  *(&__src[9] + 1) = v19;
  *&__src[20] = 0;
  DWORD2(__src[20]) = 0;
  v64 = malloc_type_malloc(0x150uLL, 0x10A004033D922FDuLL);
  v65 = v64;
  if (v64)
  {
    memcpy(v64, __src, 0x150uLL);
    v66 = v65[21];
    v65[16] = 0;
    v65[17] = v66;
    v65[18] = unz64local_GetCurrentFileInfoInternal(v65, (v65 + 22), v65 + 39, 0, 0, 0, 0, 0, 0) == 0;
  }

  return v65;
}

void *unzOpenBuffer(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *v5 = 0u;
  v6 = 0u;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  __sprintf_chk(v5, 0, 0x20uLL, "%lx+%lx", a1, a2);
  fill_memory_filefunc64_32(v3);
  return unzOpenInternal(v5, v3, 0);
}

uint64_t unzCloseCurrentFile(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = *(a1 + 320);
  if (!v2)
  {
    return 4294967194;
  }

  if (*(v2 + 192) || *(v2 + 312))
  {
    v3 = 0;
  }

  else if (*(v2 + 168) == *(v2 + 176))
  {
    v3 = 0;
  }

  else
  {
    v3 = 4294967191;
  }

  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  if (*(v2 + 128) == 8)
  {
    inflateEnd((v2 + 8));
  }

  free(v2);
  *(a1 + 320) = 0;
  return v3;
}

uint64_t unzGetGlobalInfo(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  result = 0;
  *a2 = *(a1 + 104);
  return result;
}

uint64_t unz64local_GetCurrentFileInfoInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v60 = 0;
  if (!a1)
  {
    return 4294967194;
  }

  if (call_zseek64(a1) || unz64local_getLong(a1, *(a1 + 96), &v60))
  {
    v10 = -1;
  }

  else if (v60 == 33639248)
  {
    v10 = 0;
  }

  else
  {
    v10 = -103;
  }

  v49 = v10;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v59 = 0;
  Short = unz64local_getShort(a1, *(a1 + 96), &v62);
  v47 = unz64local_getShort(a1, *(a1 + 96), &v62 + 1);
  v11 = unz64local_getShort(a1, *(a1 + 96), &v63);
  v12 = unz64local_getShort(a1, *(a1 + 96), &v63 + 1);
  Long = unz64local_getLong(a1, *(a1 + 96), &v64);
  v14.i32[0] = v64;
  v15 = vshlq_u32(vdupq_n_s32(v64), xmmword_186234020);
  v15.i32[0] = vshlq_u32(v14, xmmword_186234010).u32[0];
  LODWORD(v70) = ((v64 >> 21) & 0xF) - 1;
  HIDWORD(v70) = (v64 >> 25) + 1980;
  v69 = vandq_s8(v15, xmmword_186234030);
  v16 = unz64local_getLong(a1, *(a1 + 96), &v64 + 1) | Long;
  v17 = unz64local_getLong(a1, *(a1 + 96), &v59);
  *&v65 = v59;
  v18 = v16 | v17 | unz64local_getLong(a1, *(a1 + 96), &v59);
  *(&v65 + 1) = v59;
  v19 = v18 | unz64local_getShort(a1, *(a1 + 96), &v66);
  v20 = unz64local_getShort(a1, *(a1 + 96), &v66 + 1);
  v21 = unz64local_getShort(a1, *(a1 + 96), &v67);
  v22 = unz64local_getShort(a1, *(a1 + 96), &v67 + 1);
  v23 = unz64local_getShort(a1, *(a1 + 96), &v68);
  v24 = unz64local_getLong(a1, *(a1 + 96), &v68 + 1);
  if (unz64local_getLong(a1, *(a1 + 96), &v59) | v24 | v23 | v22 | v21 | v20 | v19 | v12 | v11 | v47 | Short)
  {
    v25 = 0xFFFFFFFFLL;
  }

  else
  {
    v25 = v49;
  }

  v61 = v59;
  v26 = v66;
  if (a4)
  {
    v28 = a7;
    v27 = a6;
    if (v25)
    {
      v30 = a8;
    }

    else
    {
      v29 = a5;
      v30 = a8;
      if (v66 < a5)
      {
        *(a4 + v66) = 0;
        v29 = v26;
      }

      v25 = 0;
      if (a5 && v26)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 96)) == v29)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0xFFFFFFFFLL;
        }
      }

      v26 -= v29;
    }
  }

  else
  {
    v27 = a6;
    v30 = a8;
    v28 = a7;
  }

  v31 = *(&v66 + 1);
  if (v27 && !v25)
  {
    if (*(&v66 + 1) >= v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = *(&v66 + 1);
    }

    if (v26)
    {
      v33 = call_zseek64(a1);
      if (v33)
      {
        v25 = 0xFFFFFFFFLL;
      }

      else
      {
        v25 = 0;
      }

      if (!v33)
      {
        v26 = 0;
      }

      if (!v28)
      {
LABEL_41:
        v34 = v31 - v32 + v26;
        if (v25)
        {
          goto LABEL_77;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v25 = 0;
      if (!v28)
      {
        goto LABEL_41;
      }
    }

    if (v31)
    {
      if ((*(a1 + 8))(*(a1 + 56), *(a1 + 96), v27, v32) == v32)
      {
        v25 = v25;
      }

      else
      {
        v25 = 0xFFFFFFFFLL;
      }
    }

    goto LABEL_41;
  }

  v34 = *(&v66 + 1) + v26;
  if (v25)
  {
    goto LABEL_77;
  }

LABEL_42:
  if (v31)
  {
    if (v34 == v31)
    {
      LODWORD(v25) = 0;
      v34 = 0;
    }

    else
    {
      v35 = call_zseek64(a1);
      if (v35)
      {
        LODWORD(v25) = -1;
      }

      else
      {
        LODWORD(v25) = 0;
      }

      if (v35)
      {
        v34 -= v31;
      }

      else
      {
        v34 = 0;
      }
    }

    for (i = 0; i < v31; i += v38 + 4)
    {
      v57 = 0;
      v58 = 0;
      v37 = unz64local_getShort(a1, *(a1 + 96), &v58);
      if (unz64local_getShort(a1, *(a1 + 96), &v57) | v37)
      {
        v25 = 0xFFFFFFFFLL;
      }

      else
      {
        v25 = v25;
      }

      if (v58 == 1)
      {
        if (*(&v65 + 1) == 0xFFFFFFFFLL)
        {
          if (unz64local_getLong64(a1, *(a1 + 96), &v65 + 1))
          {
            v25 = 0xFFFFFFFFLL;
          }

          else
          {
            v25 = v25;
          }
        }

        if (v65 == 0xFFFFFFFFLL)
        {
          if (unz64local_getLong64(a1, *(a1 + 96), &v65))
          {
            v25 = 0xFFFFFFFFLL;
          }

          else
          {
            v25 = v25;
          }
        }

        if (v61 == 0xFFFFFFFF)
        {
          if (unz64local_getLong64(a1, *(a1 + 96), &v61))
          {
            v25 = 0xFFFFFFFFLL;
          }

          else
          {
            v25 = v25;
          }
        }

        if (*(&v67 + 1) == 0xFFFFFFFFLL)
        {
          if (unz64local_getLong(a1, *(a1 + 96), v56))
          {
            v25 = 0xFFFFFFFFLL;
          }

          else
          {
            v25 = v25;
          }
        }

        v38 = v57;
        v31 = *(&v66 + 1);
      }

      else
      {
        v38 = v57;
        if (call_zseek64(a1))
        {
          v25 = 0xFFFFFFFFLL;
        }

        else
        {
          v25 = v25;
        }
      }
    }
  }

LABEL_77:
  if (v30 && !v25)
  {
    v39 = v67;
    v40 = a9;
    if (v67 < a9)
    {
      *(v30 + v67) = 0;
      v40 = v39;
    }

    if (v34)
    {
      if (call_zseek64(a1))
      {
        v25 = 0xFFFFFFFFLL;
      }

      else
      {
        v25 = 0;
      }

      if (!a9)
      {
        goto LABEL_92;
      }

LABEL_88:
      if (v39)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 96), v30, v40) == v40)
        {
          v25 = v25;
        }

        else
        {
          v25 = 0xFFFFFFFFLL;
        }
      }

      goto LABEL_92;
    }

    v25 = 0;
    if (a9)
    {
      goto LABEL_88;
    }
  }

LABEL_92:
  if (a2 && !v25)
  {
    v41 = v69;
    *(a2 + 96) = v68;
    *(a2 + 112) = v41;
    *(a2 + 128) = v70;
    v42 = v65;
    *(a2 + 32) = v64;
    *(a2 + 48) = v42;
    v43 = v67;
    *(a2 + 64) = v66;
    *(a2 + 80) = v43;
    v44 = v63;
    *a2 = v62;
    *(a2 + 16) = v44;
  }

  if (a3 && !v25)
  {
    *a3 = v61;
  }

  return v25;
}

uint64_t unzGoToFirstFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a1[21];
  a1[16] = 0;
  a1[17] = v2;
  result = unz64local_GetCurrentFileInfoInternal(a1, (a1 + 22), a1 + 39, 0, 0, 0, 0, 0, 0);
  a1[18] = result == 0;
  return result;
}

uint64_t unzGoToNextFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!a1[18])
  {
    return 4294967196;
  }

  v2 = a1[13];
  v3 = a1[16] + 1;
  if (v2 != 0xFFFF && v3 == v2)
  {
    return 4294967196;
  }

  v5 = a1[30] + a1[31] + a1[32] + a1[17] + 46;
  a1[16] = v3;
  a1[17] = v5;
  result = unz64local_GetCurrentFileInfoInternal(a1, (a1 + 22), a1 + 39, 0, 0, 0, 0, 0, 0);
  a1[18] = result == 0;
  return result;
}

uint64_t unzLocateFile(uint64_t a1, char *__s, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1 || strlen(__s) > 0xFF)
  {
    return 4294967194;
  }

  if (!*(a1 + 144))
  {
    return 4294967196;
  }

  v7 = *(a1 + 128);
  v8 = *(a1 + 136);
  v17 = *(a1 + 272);
  v18 = *(a1 + 288);
  v9 = *(a1 + 312);
  v19 = *(a1 + 304);
  v13 = *(a1 + 208);
  v14 = *(a1 + 224);
  v15 = *(a1 + 240);
  v16 = *(a1 + 256);
  v11 = *(a1 + 176);
  v12 = *(a1 + 192);
  v10 = *(a1 + 168);
  *(a1 + 128) = 0;
  *(a1 + 136) = v10;
  result = unz64local_GetCurrentFileInfoInternal(a1, a1 + 176, (a1 + 312), 0, 0, 0, 0, 0, 0);
  for (*(a1 + 144) = result == 0; !result; result = unzGoToNextFile(a1))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    result = unz64local_GetCurrentFileInfoInternal(a1, 0, 0, v20, 0x100uLL, 0, 0, 0, 0);
    if (result)
    {
      break;
    }

    result = unzStringFileNameCompare(v20, __s, a3);
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 128) = v7;
  *(a1 + 136) = v8;
  *(a1 + 272) = v17;
  *(a1 + 288) = v18;
  *(a1 + 208) = v13;
  *(a1 + 224) = v14;
  *(a1 + 240) = v15;
  *(a1 + 256) = v16;
  *(a1 + 176) = v11;
  *(a1 + 192) = v12;
  *(a1 + 304) = v19;
  *(a1 + 312) = v9;
  return result;
}

uint64_t unzOpenCurrentFile3(__int128 *a1, _DWORD *a2, int *a3, int a4, uint64_t a5)
{
  v5 = 4294967194;
  if (!a1 || a5 || !*(a1 + 18))
  {
    return v5;
  }

  if (*(a1 + 40))
  {
    unzCloseCurrentFile(a1);
  }

  if (call_zseek64(a1))
  {
    return 4294967193;
  }

  v40 = 0;
  v41 = 0;
  v39 = 0;
  Long = unz64local_getLong(a1, *(a1 + 12), &v41);
  v11 = v41;
  Short = unz64local_getShort(a1, *(a1 + 12), &v40);
  v13 = unz64local_getShort(a1, *(a1 + 12), &v39);
  if (unz64local_getShort(a1, *(a1 + 12), &v40))
  {
    v14 = -1;
  }

  else
  {
    if (v11 == 67324752)
    {
      v17 = 0;
    }

    else
    {
      v17 = -103;
    }

    v18 = v13 | Short | Long;
    if (v18)
    {
      v14 = -1;
    }

    else
    {
      v14 = v17;
    }

    if (!v18 && v11 == 67324752)
    {
      if (v40 == *(a1 + 25) && v40 <= 0xC && ((1 << v40) & 0x1101) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = -103;
      }
    }
  }

  v15 = unz64local_getLong(a1, *(a1 + 12), &v40);
  if (unz64local_getLong(a1, *(a1 + 12), &v40))
  {
    v16 = -1;
  }

  else
  {
    if (v15)
    {
      v16 = -1;
    }

    else
    {
      v16 = v14;
    }

    if (!v16)
    {
      if (v40 == *(a1 + 27))
      {
        v16 = 0;
      }

      else if ((v39 & 8) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = -103;
      }
    }
  }

  if (unz64local_getLong(a1, *(a1 + 12), &v40))
  {
    v16 = -1;
  }

  else if (!v16 && v40 != 0xFFFFFFFF)
  {
    if (v40 == *(a1 + 28))
    {
      v16 = 0;
    }

    else if ((v39 & 8) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = -103;
    }
  }

  if (unz64local_getLong(a1, *(a1 + 12), &v40))
  {
    v16 = -1;
  }

  else if (!v16 && v40 != 0xFFFFFFFF)
  {
    if (v40 == *(a1 + 29))
    {
      v16 = 0;
    }

    else if ((v39 & 8) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = -103;
    }
  }

  v38 = 0;
  if (unz64local_getShort(a1, *(a1 + 12), &v38))
  {
    v19 = 0;
    v20 = v38;
  }

  else
  {
    v20 = v38;
    v19 = !v16 && v38 == *(a1 + 30);
  }

  v37 = 0;
  if (unz64local_getShort(a1, *(a1 + 12), &v37) || !v19)
  {
    return 4294967193;
  }

  v21 = *(a1 + 39);
  v22 = v37;
  v23 = malloc_type_malloc(0x140uLL, 0x10B004067B04D0FuLL);
  if (!v23)
  {
    return 4294967192;
  }

  v24 = v23;
  v25 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  *v24 = v25;
  *(v24 + 17) = v20 + v21 + 30;
  *(v24 + 36) = v22;
  *(v24 + 19) = 0;
  *(v24 + 78) = a4;
  if (!v25)
  {
    free(v24);
    return 4294967192;
  }

  *(v24 + 16) = 0;
  if (a2)
  {
    *a2 = *(a1 + 25);
  }

  if (!a3)
  {
    goto LABEL_74;
  }

  *a3 = 6;
  v26 = a1[12] & 6;
  if (v26 > 3)
  {
    if (v26 == 6)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }
  }

  else
  {
    if (!v26)
    {
      goto LABEL_74;
    }

    v27 = 9;
  }

  *a3 = v27;
LABEL_74:
  v29 = *(a1 + 27);
  *(v24 + 21) = 0;
  *(v24 + 22) = v29;
  *(v24 + 20) = 0;
  v30 = *(a1 + 25);
  *(v24 + 36) = *(a1 + 12);
  *(v24 + 37) = v30;
  v31 = a1[2];
  v32 = a1[3];
  v33 = a1[4];
  *(v24 + 35) = *(a1 + 10);
  *(v24 + 264) = v33;
  *(v24 + 248) = v32;
  *(v24 + 232) = v31;
  v34 = *a1;
  *(v24 + 216) = a1[1];
  *(v24 + 200) = v34;
  *(v24 + 38) = *(a1 + 15);
  *(v24 + 6) = 0;
  v35 = *(a1 + 25);
  if (a4 || v35 != 12)
  {
    if (!a4 && v35 == 8)
    {
      *(v24 + 1) = 0;
      *(v24 + 4) = 0;
      *(v24 + 10) = 0;
      *(v24 + 11) = 0;
      *(v24 + 9) = 0;
      v36 = inflateInit2_((v24 + 8), -15, "1.2.12", 112);
      if (v36)
      {
        v5 = v36;
        free(v24);
        return v5;
      }

      *(v24 + 16) = 8;
    }
  }

  else
  {
    *(v24 + 78) = 1;
  }

  v5 = 0;
  *(v24 + 184) = a1[14];
  *(v24 + 15) = *(a1 + 39) + (v22 + v20) + 30;
  *(v24 + 4) = 0;
  *(a1 + 40) = v24;
  *(a1 + 82) = 0;
  return v5;
}

uint64_t unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v3 = *(a1 + 320);
  if (!v3)
  {
    return 4294967194;
  }

  if (!*v3)
  {
    return 4294967196;
  }

  if (!a3)
  {
    return 0;
  }

  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  v4 = a3;
  v5 = *(v3 + 192);
  if (v5 < a3 && !*(v3 + 312))
  {
    *(v3 + 40) = v5;
    a3 = v5;
  }

  v6 = *(v3 + 184);
  v7 = *(v3 + 16);
  if (v6 + v7 < v4 && *(v3 + 312))
  {
    a3 = v7 + v6;
    *(v3 + 40) = v7 + v6;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    LODWORD(v9) = *(v3 + 16);
    if (!v9)
    {
      v10 = *(v3 + 184);
      if (v10)
      {
        if (v10 >= 0x4000)
        {
          v9 = 0x4000;
        }

        else
        {
          v9 = *(v3 + 184);
        }

        if (call_zseek64((v3 + 200)) || (*(v3 + 208))(*(v3 + 256), *(v3 + 288), *v3, v9) != v9)
        {
          return 0xFFFFFFFFLL;
        }

        *(v3 + 120) += v9;
        *(v3 + 184) -= v9;
        *(v3 + 8) = *v3;
        *(v3 + 16) = v9;
      }

      else
      {
        LODWORD(v9) = 0;
      }
    }

    v11 = *(v3 + 296);
    if (v11)
    {
      if (!*(v3 + 312))
      {
        break;
      }
    }

    if (!v9 && !*(v3 + 184))
    {
      return v8;
    }

    v12 = *(v3 + 40);
    if (v12 >= v9)
    {
      v9 = v9;
    }

    else
    {
      v9 = v12;
    }

    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        *(*(v3 + 32) + i) = *(*(v3 + 8) + i);
      }

      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v3 + 168);
    *(v3 + 160) += v14;
    *(v3 + 168) = crc32(v15, *(v3 + 32), v9);
    *(v3 + 192) -= v14;
    *(v3 + 16) -= v9;
    *(v3 + 40) -= v9;
    *(v3 + 32) += v14;
    *(v3 + 8) += v14;
    v8 = (v9 + v8);
    *(v3 + 48) += v14;
LABEL_35:
    if (!*(v3 + 40))
    {
      return v8;
    }
  }

  if (v11 == 12)
  {
    goto LABEL_35;
  }

  v16 = *(v3 + 48);
  v17 = *(v3 + 32);
  v18 = inflate((v3 + 8), 2);
  v19 = v18;
  if ((v18 & 0x80000000) == 0)
  {
    if (*(v3 + 56))
    {
      v19 = 4294967293;
    }

    else
    {
      v19 = v18;
    }
  }

  v20 = *(v3 + 48);
  if (v20 < v16)
  {
    v20 += 0x100000000;
  }

  v21 = v20 - v16;
  v22 = *(v3 + 168);
  *(v3 + 160) += v21;
  *(v3 + 168) = crc32(v22, v17, v21);
  *(v3 + 192) -= v21;
  v8 = (v8 + v21);
  if (!v19)
  {
    goto LABEL_35;
  }

  v23 = v8;
  v8 = v19;
  if (v19 != 1)
  {
    return v8;
  }

  return v23;
}

uint64_t unz64local_getLong(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = 0;
  if (unz64local_getByte(a1, a2, &v11) || (v6 = v11, unz64local_getByte(a1, a2, &v11)) || (v7 = v11, unz64local_getByte(a1, a2, &v11)))
  {
    v8 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v6 | (v7 << 8) | (v11 << 16);
    result = unz64local_getByte(a1, a2, &v11);
    v8 = v10 + (v11 << 24);
    if (result)
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t unz64local_getLong64(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v15 = 0;
  if (unz64local_getByte(a1, a2, &v15) || (v6 = v15, unz64local_getByte(a1, a2, &v15)) || (v7 = v15, unz64local_getByte(a1, a2, &v15)) || (v8 = v15, unz64local_getByte(a1, a2, &v15)) || (v9 = v15, unz64local_getByte(a1, a2, &v15)) || (v10 = v15, unz64local_getByte(a1, a2, &v15)) || (v11 = v15, unz64local_getByte(a1, a2, &v15)))
  {
    v12 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = v6 | (v7 << 8) | (v8 << 16) | (v9 << 24) | (v10 << 32) | (v11 << 40) | (v15 << 48);
    result = unz64local_getByte(a1, a2, &v15);
    v12 = v14 | (v15 << 56);
    if (result)
    {
      v12 = 0;
    }
  }

  *a3 = v12;
  return result;
}

uint64_t unz64local_getShort(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  if (unz64local_getByte(a1, a2, &v9))
  {
    v6 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v9;
    result = unz64local_getByte(a1, a2, &v9);
    v6 = v8 | (v9 << 8);
    if (result)
    {
      v6 = 0;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t unz64local_getByte(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = 0;
  if ((*(a1 + 8))(*(a1 + 56), a2, &v7, 1) == 1)
  {
    result = 0;
    *a3 = v7;
  }

  else if ((*(a1 + 48))(*(a1 + 56), a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t call_zopen64(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    v1 = *(a1 + 64);
  }

  return v1(*(a1 + 56));
}

uint64_t call_zseek64(void *a1)
{
  v1 = a1[4];
  if (!v1)
  {
    v1 = a1[10];
  }

  return v1(a1[7]);
}

uint64_t call_ztell64(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = *(a1 + 24);

    return v5(v4);
  }

  else
  {
    result = (*(a1 + 72))(v4);
    if (result == 0xFFFFFFFFLL)
    {
      return -1;
    }
  }

  return result;
}

FILE *(**fill_fopen64_filefunc(FILE *(**result)(int a1, char *__filename, char a3)))(int a1, char *__filename, char a3)
{
  *result = fopen64_file_func;
  result[1] = fread_file_func;
  result[2] = fwrite_file_func;
  result[3] = ftell64_file_func;
  result[4] = fseek64_file_func;
  result[5] = fclose_file_func;
  result[6] = ferror_file_func;
  result[7] = 0;
  return result;
}

FILE *fopen64_file_func(int a1, char *__filename, char a3)
{
  v3 = a3 & 3;
  v4 = "r+b";
  v5 = "wb";
  if ((a3 & 8) == 0)
  {
    v5 = 0;
  }

  if ((a3 & 4) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = (a3 & 8) >> 3;
  }

  if ((a3 & 4) == 0)
  {
    v4 = v5;
  }

  if (v3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == 1)
  {
    v8 = "rb";
  }

  else
  {
    v8 = v4;
  }

  if (__filename && (v7 & 1) != 0)
  {
    return fopen(__filename, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t fseek64_file_func(int a1, FILE *__stream, off_t a3, unsigned int __whence)
{
  if (__whence > 2)
  {
    return -1;
  }

  if (fseeko(__stream, a3, __whence))
  {
    return -1;
  }

  return 0;
}

size_t fread_mem_func(int a1, void *a2, void *__dst, size_t a4)
{
  v5 = a2[3];
  if (a2[1] - v5 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2[1] - v5;
  }

  memcpy(__dst, (*a2 + v5), v6);
  a2[3] += v6;
  return v6;
}

size_t fwrite_mem_func(int a1, void *a2, void *__src, size_t a4)
{
  v5 = a2[3];
  if (a2[1] - v5 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2[1] - v5;
  }

  memcpy((*a2 + v5), __src, v6);
  v7 = a2[2];
  v8 = a2[3] + v6;
  a2[3] = v8;
  if (v8 > v7)
  {
    a2[2] = v8;
  }

  return v6;
}

uint64_t fseek_mem_func(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  v4 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v6 = 3;
    }

    else
    {
      if (a4 != 2)
      {
        return -1;
      }

      v6 = 2;
    }

    v4 = a2[v6] + a3;
  }

  if (v4 > a2[1])
  {
    return 1;
  }

  v8 = a2[2];
  if (v4 > v8)
  {
    bzero((*a2 + v8), v4 - v8);
  }

  result = 0;
  a2[3] = v4;
  return result;
}

void *fill_memory_filefunc64_32(void *result)
{
  result[7] = 0;
  result[8] = fopen_mem_func;
  *result = fopen64_mem_func;
  result[1] = fread_mem_func;
  result[2] = fwrite_mem_func;
  result[9] = ftell_mem_func;
  result[10] = fseek_mem_func;
  result[4] = 0;
  result[5] = fclose_mem_func;
  result[6] = ferror_mem_func;
  return result;
}

void *fopen64_mem_func(uint64_t a1, const char *a2, char a3)
{
  v5 = malloc_type_malloc(0x20uLL, 0x1010040FAA616C6uLL);
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    if (sscanf(a2, "%lx+%lx", &v11, &v10) == 2 && (v6 = v10, v7 = v11, *v5 = v11, v5[1] = v6, *v7 == 80) && (v7[1] == 75 ? (v8 = v6 == 0) : (v8 = 1), !v8))
    {
      if ((a3 & 8) != 0)
      {
        v6 = 0;
      }

      v5[2] = v6;
      v5[3] = 0;
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

void OFDTextObject::OFDTextObject(OFDTextObject *this, const __CFDictionary *a2)
{
  v4 = OFDObject::OFDObject(this, a2, 2);
  *v4 = &unk_1EF50E3E8;
  v5 = v4 + 280;
  v6 = v4 + 304;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0u;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0;
  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, a2);
  Value = CFDictionaryGetValue(a2, @"TextCode");
  memset(v16, 0, sizeof(v16));
  IIODictionary::IIODictionary(v16, Value);
  *(this + 52) = IIODictionary::getUint32ForKey(v17, @"Font");
  *(this + 27) = IIODictionary::getDoubleForKey(v17, @"Size");
  *(this + 30) = IIODictionary::getDoubleForKey(v16, @"X");
  *(this + 31) = IIODictionary::getDoubleForKey(v16, @"Y");
  ObjectForKey = IIODictionary::getObjectForKey(v16, @"_text");
  if (ObjectForKey)
  {
    IIOString::IIOString(v15, ObjectForKey);
    v9 = IIOString::utf8String(v15);
  }

  else
  {
    v9 = "";
  }

  MEMORY[0x186602520](this + 256, v9);
  if (ObjectForKey)
  {
    IIOString::~IIOString(v15);
  }

  v10 = IIODictionary::getObjectForKey(v16, @"DeltaX");
  if (v10)
  {
    OFDParseTextDelta(v10, v5);
  }

  v11 = IIODictionary::getObjectForKey(v16, @"DeltaY");
  if (v11)
  {
    OFDParseTextDelta(v11, v6);
  }

  *(this + 28) = 0x3FF0000000000000;
  v12 = IIODictionary::getObjectForKey(v17, @"Alpha");
  if (v12)
  {
    memset(v14, 0, sizeof(v14));
    IIOString::IIOString(v14, v12);
    v13 = IIOString::utf8String(v14);
    *(this + 28) = atof(v13) / 255.0;
    IIOString::~IIOString(v14);
  }

  *(this + 29) = 0;
  IIODictionary::~IIODictionary(v16);
  IIODictionary::~IIODictionary(v17);
}

void sub_1861D3D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  IIOString::~IIOString(&a9);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v17 - 56));
  *(v17 - 56) = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100]((v17 - 56));
  *(v17 - 56) = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100]((v17 - 56));
  if (*(v14 + 279) < 0)
  {
    operator delete(*(v14 + 256));
  }

  OFDObject::~OFDObject(v14);
  _Unwind_Resume(a1);
}

void OFDTextObject::~OFDTextObject(OFDTextObject *this)
{
  *this = &unk_1EF50E3E8;
  v2 = *(this + 29);
  if (v2)
  {
    CGColorRelease(v2);
  }

  v3 = (this + 304);
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&v3);
  v3 = (this + 280);
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&v3);
  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  OFDObject::~OFDObject(this);
}

{
  OFDTextObject::~OFDTextObject(this);

  JUMPOUT(0x186602850);
}

CFAttributedStringRef OFDTextObject::makeAttrStringRef(const void **this, const char *a2, const __CTFont *a3)
{
  v10 = 0;
  attributes = 0;
  v12 = 0;
  IIODictionary::IIODictionary(&v10);
  IIODictionary::setObjectForKey(&v10, a3, *gIIO_kCTFontAttributeName);
  IIODictionary::setObjectForKey(&v10, this[29], *gIIO_kCTForegroundColorAttributeName);
  IIOString::IIOString(v8, a2);
  v6 = CFAttributedStringCreate(*MEMORY[0x1E695E480], str, attributes);
  IIOString::~IIOString(v8);
  IIODictionary::~IIODictionary(&v10);
  return v6;
}

void sub_1861D3F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(&a9);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void OFDTextObject::drawInContext(OFDTextObject *this, CGContext *a2, CGRect a3, OFDPage *a4)
{
  v5 = *(a4 + 2);
  if (!v5)
  {
    return;
  }

  Font = OFDDocument::createFont(v5, *(this + 52), *(this + 27));
  CGContextSaveGState(a2);
  if (!*(this + 40))
  {
    *(this + 40) = 1;
    *(this + 22) = 0;
    *(this + 23) = 0;
    *(this + 21) = 0;
  }

  v7 = *(this + 28);
  *(this + 24) = v7;
  if (!*(this + 28))
  {
    *(this + 28) = 1;
    *(this + 16) = 0;
    *(this + 17) = 0;
    *(this + 15) = 0;
  }

  *(this + 18) = v7;
  *(this + 29) = OFDCreateCGColor(this + 160);
  if (*(this + 40) == 1)
  {
    CGContextSetRGBFillColor(a2, *(this + 21), *(this + 22), *(this + 23), *(this + 28));
  }

  if (*(this + 28) == 1)
  {
    CGContextSetRGBStrokeColor(a2, *(this + 15), *(this + 16), *(this + 17), *(this + 28));
  }

  CGContextTranslateCTM(a2, *(this + 9), *(this + 10));
  v8 = *(this + 40);
  *&transform.a = *(this + 24);
  *&transform.c = v8;
  *&transform.tx = *(this + 56);
  CGContextConcatCTM(a2, &transform);
  CGContextScaleCTM(a2, 1.0, -1.0);
  v9 = this + 256;
  if (*(this + 279) < 0)
  {
    v9 = *v9;
  }

  v10 = *MEMORY[0x1E695EFF8] + *(this + 30);
  v11 = *(MEMORY[0x1E695EFF8] + 8) - *(this + 31);
  AttrStringRef = OFDTextObject::makeAttrStringRef(this, v9, Font);
  CFRelease(Font);
  if (*(this + 36) == *(this + 35) && *(this + 39) == *(this + 38))
  {
    CGContextSetTextPosition(a2, v10, v11);
    v30 = gFunc_CTLineCreateWithAttributedString(AttrStringRef);
    if (v30)
    {
      v31 = v30;
      gFunc_CTLineDraw(v30, a2);
      CFRelease(v31);
    }

    CGContextFlush(a2);
    if (!AttrStringRef)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (CFAttributedStringGetLength(AttrStringRef) >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = *MEMORY[0x1E695E480];
      v16 = v10;
      do
      {
        v36.location = v14;
        v36.length = 1;
        v17 = CFAttributedStringCreateWithSubstring(v15, AttrStringRef, v36);
        if (v17)
        {
          v18 = v17;
          v19 = gFunc_CTLineCreateWithAttributedString(v17);
          if (v19)
          {
            v20 = v19;
            CGContextSetTextPosition(a2, v16, v11);
            gFunc_CTLineDraw(v20, a2);
            *buffer = 0;
            String = CFAttributedStringGetString(v18);
            v35.location = 0;
            v35.length = 1;
            CFStringGetCharacters(String, v35, buffer);
            if (buffer[0] == 32)
            {
              buffer[0] = 12288;
            }

            gFunc_CTFontGetGlyphsForCharacters(Font, buffer, &buffer[1], 1);
            transform.a = 0.0;
            transform.b = 0.0;
            gFunc_CTFontGetAdvancesForGlyphs(Font, 1, &buffer[1], &transform, 1);
            v22 = *(this + 35);
            v23 = *(this + 36);
            if (v23 == v22 || 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3) <= v14)
            {
              a = transform.a;
            }

            else
            {
              v24 = (v22 + v13);
              if (*(v22 + v13 + 23) < 0)
              {
                v24 = *v24;
              }

              a = atof(v24);
            }

            v16 = v16 + a;
            v26 = *(this + 38);
            v27 = *(this + 39) - v26;
            if (v27 && 0xAAAAAAAAAAAAAAABLL * (v27 >> 3) > v14)
            {
              v28 = (v26 + v13);
              if (*(v26 + v13 + 23) < 0)
              {
                v28 = *v28;
              }

              v11 = v11 - atof(v28);
              if (v23 == v22)
              {
                v16 = v10;
              }
            }

            CFRelease(v20);
          }

          CFRelease(v18);
        }

        ++v14;
        v13 += 24;
      }

      while (CFAttributedStringGetLength(AttrStringRef) > v14);
    }

    if (!AttrStringRef)
    {
      goto LABEL_37;
    }
  }

  CFRelease(AttrStringRef);
LABEL_37:
  v29 = *(this + 29);
  if (v29)
  {
    CGColorRelease(v29);
    *(this + 29) = 0;
  }

  CGContextRestoreGState(a2);
}

void OFDImageObject::OFDImageObject(OFDImageObject *this, const __CFDictionary *a2)
{
  *OFDObject::OFDObject(this, a2, 3) = &unk_1EF50E430;
  memset(v4, 0, sizeof(v4));
  IIODictionary::IIODictionary(v4, a2);
  *(this + 26) = IIODictionary::getUint64ForKey(v4, @"ResourceID");
  IIODictionary::~IIODictionary(v4);
}

void sub_1861D43F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  OFDObject::~OFDObject(v3);
  _Unwind_Resume(a1);
}

void OFDImageObject::~OFDImageObject(OFDImageObject *this)
{
  OFDObject::~OFDObject(this);

  JUMPOUT(0x186602850);
}

void OFDImageObject::drawInContext(OFDImageObject *this, CGContextRef c, CGRect a3, IIODictionary **a4)
{
  CGContextSaveGState(c);
  v7 = OFDPage::copyResourcePath(a4, *(this + 52), @"Image");
  memset(v28, 0, sizeof(v28));
  IIOString::IIOString(v28, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  if (*(this + 7) == 0.0 && *(this + 8) == 0.0)
  {
    CGContextTranslateCTM(c, *(this + 9), *(this + 10));
  }

  v8 = *(this + 40);
  *&transform.a = *(this + 24);
  *&transform.c = v8;
  *&transform.tx = *(this + 56);
  CGContextConcatCTM(c, &transform);
  v9 = a4[2];
  v10 = IIOString::utf8String(v28);
  v11 = OFDDocument::copyFileContent(v9, v10);
  v12 = v11;
  if (v11)
  {
    v13 = CGImageSourceCreateWithData(v11, 0);
    v14 = v13;
    if (v13)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
      if (ImageAtIndex)
      {
        CGContextScaleCTM(c, 1.0, -1.0);
        CGContextTranslateCTM(c, 0.0, -1.0);
        CGContextSetInterpolationQuality(c, kCGInterpolationNone);
        v29.origin.x = 0.0;
        v29.origin.y = 0.0;
        v29.size.width = 1.0;
        v29.size.height = 1.0;
        CGContextDrawImage(c, v29, ImageAtIndex);
        CGImageRelease(ImageAtIndex);
      }

      else
      {
        v16 = CGDataProviderCreateWithCFData(v12);
        if (v16)
        {
          if (OFDImageObject::drawInContext(CGContext *,CGRect,OFDPage *)::onceToken != -1)
          {
            OFDImageObject::drawInContext();
          }

          v17 = g_CGPDFSourceCreateForJBIG2;
          if (g_CGPDFSourceCreateForJBIG2)
          {
            Length = CFDataGetLength(v12);
            if (v17(v16, 13, Length - 13))
            {
              v19 = malloc_type_malloc(0x514uLL, 0x100004077774924uLL);
              if (CGPDFSourceRead() == 1300)
              {
                v20 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
                if (v20)
                {
                  v21 = CGDataProviderCreateWithData(0, v19, 0x514uLL, DPReleaseDataCallback);
                  if (v21)
                  {
                    v22 = CGImageCreate(0x64uLL, 0x64uLL, 1uLL, 1uLL, 0xDuLL, v20, 0, v21, 0, 0, kCGRenderingIntentDefault);
                    if (v22)
                    {
                      CGContextScaleCTM(c, 1.0, -1.0);
                      CGContextTranslateCTM(c, 0.0, -1.0);
                      CGContextSetInterpolationQuality(c, kCGInterpolationNone);
                      v30.origin.x = 0.0;
                      v30.origin.y = 0.0;
                      v30.size.width = 1.0;
                      v30.size.height = 1.0;
                      CGContextDrawImage(c, v30, v22);
                      CGImageRelease(v22);
                    }

                    CGDataProviderRelease(v21);
                  }

                  CGColorSpaceRelease(v20);
                }
              }

              CGPDFSourceRelease();
            }
          }

          else
          {
            CGContextSetRGBFillColor(c, 0.8, 0.8, 0.8, 0.8);
            v31.size.width = 100.0;
            v31.origin.x = 0.0;
            v31.origin.y = 0.0;
            v31.size.height = 100.0;
            CGContextFillRect(c, v31);
            CGContextSetLineWidth(c, 0.2);
            v32.size.width = 100.0;
            v32.origin.x = 0.0;
            v32.origin.y = 0.0;
            v32.size.height = 100.0;
            v33 = CGRectInset(v32, 1.0, 1.0);
            x = v33.origin.x;
            y = v33.origin.y;
            width = v33.size.width;
            height = v33.size.height;
            CGContextSetRGBStrokeColor(c, 0.2, 0.2, 0.2, 0.8);
            v34.origin.x = x;
            v34.origin.y = y;
            v34.size.width = width;
            v34.size.height = height;
            CGContextStrokeRect(c, v34);
          }

          CGDataProviderRelease(v16);
        }
      }

      CFRelease(v14);
    }

    CFRelease(v12);
  }

  CGContextRestoreGState(c);
  IIOString::~IIOString(v28);
}

void sub_1861D4824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void *___ZN14OFDImageObject13drawInContextEP9CGContext6CGRectP7OFDPage_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  strcpy(v1, "/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics");
  result = dlopen(v1, 257);
  if (result)
  {
    result = dlsym(result, "CGPDFSourceCreateForJBIG2");
    g_CGPDFSourceCreateForJBIG2 = result;
  }

  return result;
}

void DPReleaseDataCallback(void *a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

IIODictionary *XMLDictionaryCreateWithData(const __CFData *a1)
{
  v2 = 0;
  [IIO_CXMLParser dictionaryForXMLData:a1 error:&v2];
  if (!v2)
  {
    operator new();
  }

  return 0;
}

uint64_t ASN1Item::getString(uint64_t a1, uint64_t a2, std::string *a3)
{
  MEMORY[0x186602520](a3, "");
  if (*(a2 + 4))
  {
    v5 = 0;
    do
    {
      std::string::push_back(a3, *(*(a2 + 8) + v5++));
    }

    while (v5 < *(a2 + 4));
  }

  return 1;
}

uint64_t ASN1Item::getObjectIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v3 = *(a2 + 8);
  __dst = 0;
  if (*(a2 + 4))
  {
    v17 = 0;
    *__str = 0;
    v6 = snprintf(__str, 0xCuLL, "%d.%d", *v3 / 0x28u, *v3 % 0x28u);
    p_dst = &__dst;
    if (v6 > 0x7F)
    {
      v9 = 127;
    }

    else
    {
      v8 = v6;
      strcpy(&__dst, __str);
      p_dst = &__dst + v8;
      v9 = 127 - v8;
    }

    v10 = *(a2 + 4);
    if (v10 >= 2)
    {
      v11 = 0;
      for (i = 1; i < v10; ++i)
      {
        if ((v3[i] & 0x80) != 0)
        {
          v11 = v3[i] & 0x7F | (v11 << 7);
        }

        else
        {
          v13 = snprintf(__str, 0xCuLL, ".%d", v3[i] & 0x7F | (v11 << 7));
          if (v9 >= v13)
          {
            v14 = v13;
            strcpy(p_dst, __str);
            p_dst += v14;
            v9 -= v14;
          }

          if (v9 < 1)
          {
            break;
          }

          v11 = 0;
          v10 = *(a2 + 4);
        }
      }
    }

    MEMORY[0x186602520](a3, &__dst);
  }

  return 1;
}

void _SES_Signature::~_SES_Signature(_SES_Signature *this)
{
  *this = &unk_1EF50E498;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    free(v5);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

{
  _SES_Signature::~_SES_Signature(this);

  JUMPOUT(0x186602850);
}

void _TBS_Sign::~_TBS_Sign(_TBS_Sign *this)
{
  *this = &unk_1EF50E4C0;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  _TBS_Sign::~_TBS_Sign(this);

  JUMPOUT(0x186602850);
}

void _SESeal::~_SESeal(_SESeal *this)
{
  *this = &unk_1EF50E4E8;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    free(v4);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

{
  _SESeal::~_SESeal(this);

  JUMPOUT(0x186602850);
}

void _SES_SealInfo::~_SES_SealInfo(_SES_SealInfo *this)
{
  *this = &unk_1EF50E510;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  _SES_SealInfo::~_SES_SealInfo(this);

  JUMPOUT(0x186602850);
}

void _SES_Header::~_SES_Header(void **this)
{
  *this = &unk_1EF50E538;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  _SES_Header::~_SES_Header(this);

  JUMPOUT(0x186602850);
}

void _SES_ESPropertyInfo::~_SES_ESPropertyInfo(_SES_ESPropertyInfo *this)
{
  *this = &unk_1EF50E560;
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  _SES_ESPropertyInfo::~_SES_ESPropertyInfo(this);

  JUMPOUT(0x186602850);
}

void _SES_ESPictureInfo::~_SES_ESPictureInfo(_SES_ESPictureInfo *this)
{
  *this = &unk_1EF50E588;
  v2 = *(this + 6);
  if (v2)
  {
    free(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  _SES_ESPictureInfo::~_SES_ESPictureInfo(this);

  JUMPOUT(0x186602850);
}

CFDataRef _SES_ESPictureInfo::copyPictureData(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    return 0;
  }

  v5 = CFDataCreate(*MEMORY[0x1E695E480], v3, *(a1 + 56));
  std::string::operator=(a2, (a1 + 24));
  return v5;
}

void _SES_Signature_v1::~_SES_Signature_v1(_SES_Signature_v1 *this)
{
  *this = &unk_1EF50E5B0;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }
}

{
  _SES_Signature_v1::~_SES_Signature_v1(this);

  JUMPOUT(0x186602850);
}

void _TBS_Sign_v1::~_TBS_Sign_v1(_TBS_Sign_v1 *this)
{
  *this = &unk_1EF50E5D8;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    free(v5);
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }
}

{
  _TBS_Sign_v1::~_TBS_Sign_v1(this);

  JUMPOUT(0x186602850);
}

void _SESeal_v1::~_SESeal_v1(_SESeal_v1 *this)
{
  *this = &unk_1EF50E600;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  _SESeal_v1::~_SESeal_v1(this);

  JUMPOUT(0x186602850);
}

void _SES_SealInfo_v1::~_SES_SealInfo_v1(_SES_SealInfo_v1 *this)
{
  *this = &unk_1EF50E628;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  _SES_SealInfo_v1::~_SES_SealInfo_v1(this);

  JUMPOUT(0x186602850);
}

void _SES_ESPropertyInfo_v1::~_SES_ESPropertyInfo_v1(_SES_ESPropertyInfo_v1 *this)
{
  *this = &unk_1EF50E650;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  _SES_ESPropertyInfo_v1::~_SES_ESPropertyInfo_v1(this);

  JUMPOUT(0x186602850);
}

void _SES_SignInfo_v1::~_SES_SignInfo_v1(_SES_SignInfo_v1 *this)
{
  *this = &unk_1EF50E678;
  v2 = *(this + 3);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    free(v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

{
  _SES_SignInfo_v1::~_SES_SignInfo_v1(this);

  JUMPOUT(0x186602850);
}

void ASN1Parser::ASN1Parser(ASN1Parser *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1EF50E6A0;
}

void ASN1Parser::~ASN1Parser(ASN1Parser *this)
{
  *this = &unk_1EF50E6A0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  ASN1Parser::~ASN1Parser(this);

  JUMPOUT(0x186602850);
}

CFDataRef ASN1Parser::copyImageData(uint64_t a1, std::string *a2)
{
  v2 = *(a1 + 8);
  if ((v2 || (v2 = *(a1 + 16)) != 0) && (v3 = *(*(*(*(v2 + 24) + 24) + 24) + 64)) != 0)
  {
    return _SES_ESPictureInfo::copyPictureData(v3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_6_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, ...)
{
  va_start(va, a3);

  return ASN1Item::readTag(a1, (v4 + a2), v3 - a2, va);
}

void *OUTLINED_FUNCTION_7_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, unsigned int sizea, size_t size)
{

  return malloc_type_malloc(sizea, 0x100004077774924uLL);
}

double OUTLINED_FUNCTION_16_1(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return 0.0;
}

void *OUTLINED_FUNCTION_17_1(void *result)
{
  *result = v1;
  result[4] = 0;
  result[5] = 0;
  result[3] = 0;
  return result;
}

void *OUTLINED_FUNCTION_18_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, unsigned int sizea, size_t size)
{

  return malloc_type_malloc(sizea, 0x100004077774924uLL);
}

void OUTLINED_FUNCTION_19_1()
{

  operator new();
}

void OUTLINED_FUNCTION_21_1()
{

  operator new();
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return ASN1Item::readTag(a1, (v2 + v4), v3 - v4, va);
}

void *OUTLINED_FUNCTION_24_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, unsigned int sizea, size_t size)
{

  return malloc_type_malloc(sizea, v12);
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t result, __n128 a2)
{
  *(result + 56) = a2;
  *(result + 72) = a2;
  *(result + 88) = a2;
  *(result + 104) = a2;
  return result;
}

void *OUTLINED_FUNCTION_28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__src)
{

  return memcpy(a1, __src, v11);
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return ASN1Item::getString(a1, va, v3 + 1);
}

void OFDPathObject::OFDPathObject(OFDPathObject *this, const __CFDictionary *a2)
{
  v4 = OFDObject::OFDObject(this, a2, 1);
  v4[28] = 0;
  v5 = (v4 + 28);
  *v4 = &unk_1EF50E818;
  v4[29] = 0;
  v4[30] = 0;
  memset(v9, 0, sizeof(v9));
  IIODictionary::IIODictionary(v9, a2);
  if (IIODictionary::getCount(v9))
  {
    *(this + 26) = IIODictionary::getDoubleForKey(v9, @"LineWidth");
    ObjectForKey = IIODictionary::getObjectForKey(v9, @"LineWidth");
    v7 = *(this + 26);
    if (ObjectForKey && v7 > 0.0)
    {
      *(this + 104) = 1;
    }

    if (v7 <= 0.0)
    {
      *(this + 26) = 0x3FD0000000000000;
    }

    *(this + 27) = IIODictionary::getDoubleForKey(v9, @"MiterLimit");
    v8 = IIODictionary::getObjectForKey(v9, @"AbbreviatedData");
    if (v8)
    {
      OFDParsePathOperations(v8, v5);
    }

    OFDPathObject::applyDrawParamColors(this, a2);
    if (!*(this + 28))
    {
      *(this + 28) = 1;
      *(this + 15) = 0;
      *(this + 16) = 0;
      *(this + 17) = 0;
      *(this + 18) = 0x3FF0000000000000;
    }
  }

  IIODictionary::~IIODictionary(v9);
}

void sub_1861D6028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](va);
  OFDObject::~OFDObject(v3);
  _Unwind_Resume(a1);
}

void OFDPathObject::applyDrawParamColors(OFDPathObject *this, const __CFDictionary *a2)
{
  if (a2)
  {
    memset(v17, 0, sizeof(v17));
    IIODictionary::IIODictionary(v17, a2);
    ObjectForKey = IIODictionary::getObjectForKey(v17, @"StrokeColor");
    v4 = ObjectForKey;
    if (ObjectForKey)
    {
      OFDParseColor(ObjectForKey, this + 112);
    }

    v5 = IIODictionary::getObjectForKey(v17, @"FillColor");
    if (v5)
    {
      OFDParseColor(v5, this + 160);
      if (!v4 && (*(this + 104) & 1) != 0 && !*(this + 28))
      {
        v6 = *(this + 11);
        *(this + 7) = *(this + 10);
        *(this + 8) = v6;
        *(this + 9) = *(this + 12);
      }
    }

    v7 = IIODictionary::getObjectForKey(v17, @"Stroke");
    v8 = v7;
    if (v7)
    {
      v9 = CFGetTypeID(v7);
      if (v9 == CFBooleanGetTypeID())
      {
        v10 = CFBooleanGetValue(v8) != 0;
      }

      else
      {
        v11 = CFGetTypeID(v8);
        if (v11 != CFStringGetTypeID())
        {
          goto LABEL_15;
        }

        v10 = CFStringCompare(v8, @"true", 1uLL) == kCFCompareEqualTo;
      }

      *(this + 104) = v10;
    }

LABEL_15:
    v12 = IIODictionary::getObjectForKey(v17, @"Fill");
    v13 = v12;
    if (v12)
    {
      v14 = CFGetTypeID(v12);
      if (v14 == CFBooleanGetTypeID())
      {
        v15 = CFBooleanGetValue(v13) != 0;
LABEL_20:
        *(this + 105) = v15;
        goto LABEL_21;
      }

      v16 = CFGetTypeID(v13);
      if (v16 == CFStringGetTypeID())
      {
        v15 = CFStringCompare(v13, @"true", 1uLL) == kCFCompareEqualTo;
        goto LABEL_20;
      }
    }

LABEL_21:
    IIODictionary::~IIODictionary(v17);
  }
}

void sub_1861D620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void OFDPathObject::OFDPathObject(OFDPathObject *this, const __CFDictionary *a2, OFDDocument **a3)
{
  v6 = OFDObject::OFDObject(this, a2, 1);
  v6[28] = 0;
  v7 = (v6 + 28);
  *v6 = &unk_1EF50E818;
  v6[29] = 0;
  v6[30] = 0;
  memset(v11, 0, sizeof(v11));
  IIODictionary::IIODictionary(v11, a2);
  if (IIODictionary::getCount(v11))
  {
    *(this + 26) = IIODictionary::getDoubleForKey(v11, @"LineWidth");
    ObjectForKey = IIODictionary::getObjectForKey(v11, @"LineWidth");
    v9 = *(this + 26);
    if (ObjectForKey && v9 > 0.0)
    {
      *(this + 104) = 1;
    }

    if (v9 <= 0.0)
    {
      *(this + 26) = 0x3FD0000000000000;
    }

    *(this + 27) = IIODictionary::getDoubleForKey(v11, @"MiterLimit");
    v10 = IIODictionary::getObjectForKey(v11, @"AbbreviatedData");
    if (v10)
    {
      OFDParsePathOperations(v10, v7);
    }

    OFDPathObject::resolveDrawParam(this, a2, a3);
    if (!*(this + 28))
    {
      *(this + 28) = 1;
      *(this + 15) = 0;
      *(this + 16) = 0;
      *(this + 17) = 0;
      *(this + 18) = 0x3FF0000000000000;
    }
  }

  IIODictionary::~IIODictionary(v11);
}

void sub_1861D6374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](va);
  OFDObject::~OFDObject(v3);
  _Unwind_Resume(a1);
}

void OFDPathObject::resolveDrawParam(OFDPathObject *this, const __CFDictionary *a2, OFDDocument **a3)
{
  if (a2 && a3)
  {
    memset(v14, 0, sizeof(v14));
    IIODictionary::IIODictionary(v14, a2);
    ObjectForKey = IIODictionary::getObjectForKey(v14, @"DrawParam");
    if (ObjectForKey)
    {
      IntValue = CFStringGetIntValue(ObjectForKey);
      if (IntValue)
      {
        DrawParam = OFDDocument::getDrawParam(a3[2], IntValue);
        if (DrawParam)
        {
          memset(v13, 0, sizeof(v13));
          IIODictionary::IIODictionary(v13, DrawParam);
          if (IIODictionary::containsKey(v13, "Stroke"))
          {
            *(this + 104) = IIODictionary::getBoolForKey(v13, "Stroke");
          }

          if (IIODictionary::containsKey(v13, "Fill"))
          {
            *(this + 105) = IIODictionary::getBoolForKey(v13, "Fill");
          }

          v8 = IIODictionary::getObjectForKey(v13, @"StrokeColor");
          v9 = v8;
          if (v8)
          {
            OFDParseColor(v8, this + 112);
          }

          v10 = IIODictionary::getObjectForKey(v13, @"FillColor");
          if (v10)
          {
            OFDParseColor(v10, this + 160);
            if (!v9 && (*(this + 104) & 1) != 0 && !*(this + 28))
            {
              v11 = *(this + 11);
              *(this + 7) = *(this + 10);
              *(this + 8) = v11;
              *(this + 9) = *(this + 12);
            }
          }

          if (IIODictionary::containsKey(v13, "LineWidth"))
          {
            DoubleForKey = IIODictionary::getDoubleForKey(v13, @"LineWidth");
            if (DoubleForKey > 0.0)
            {
              *(this + 26) = DoubleForKey;
            }
          }

          IIODictionary::~IIODictionary(v13);
        }
      }
    }

    IIODictionary::~IIODictionary(v14);
  }
}

void sub_1861D6528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void OFDPathObject::~OFDPathObject(OFDPathObject *this)
{
  *this = &unk_1EF50E818;
  v2 = (this + 224);
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&v2);
  OFDObject::~OFDObject(this);
}

{
  *this = &unk_1EF50E818;
  v2 = (this + 224);
  std::vector<std::string>::__destroy_vector::operator()[abi:fe200100](&v2);
  OFDObject::~OFDObject(this);
  MEMORY[0x186602850]();
}

void OFDPathObject::drawInContext(OFDPathObject *this, CGContextRef c, CGRect a3, OFDPage *a4)
{
  CGContextSaveGState(c);
  CGContextTranslateCTM(c, *(this + 9), *(this + 10));
  v7 = *(this + 40);
  *&transform.a = *(this + 24);
  *&transform.c = v7;
  *&transform.tx = *(this + 56);
  CGContextConcatCTM(c, &transform);
  CGContextSetLineWidth(c, *(this + 26));
  v8 = *(this + 40) == 2 && *(this + 25) != 0;
  if (*(this + 28) == 2)
  {
    v9 = *(this + 19) != 0;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v10 = OFDCreateCGPattern(this + 160, a4);
  if (v10)
  {
    v11 = v10;
    Pattern = CGColorSpaceCreatePattern(0);
    CGContextSetFillColorSpace(c, Pattern);
    transform.a = *(this + 24);
    CGContextSetFillPattern(c, v11, &transform.a);
    CGColorSpaceRelease(Pattern);
    CGPatternRelease(v11);
    v13 = 1;
    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:
  v13 = 0;
  if (v9)
  {
LABEL_12:
    v14 = OFDCreateCGPattern(this + 112, a4);
    if (v14)
    {
      v15 = CGColorSpaceCreatePattern(0);
      CGContextSetStrokeColorSpace(c, v15);
      transform.a = *(this + 18);
      CGContextSetStrokePattern(c, v14, &transform.a);
      CGColorSpaceRelease(v15);
      CGPatternRelease(v14);
      LOBYTE(v14) = 1;
    }

    goto LABEL_14;
  }

LABEL_10:
  LOBYTE(v14) = 0;
LABEL_14:
  if ((v13 & 1) == 0 && *(this + 40) == 1)
  {
    CGContextSetRGBFillColor(c, *(this + 21), *(this + 22), *(this + 23), *(this + 24));
  }

  if ((v14 & 1) == 0 && *(this + 28) == 1)
  {
    CGContextSetRGBStrokeColor(c, *(this + 15), *(this + 16), *(this + 17), *(this + 18));
  }

  v16 = *(this + 28);
  while (v16 != *(this + 29))
  {
    memset(&transform, 0, 24);
    if (*(v16 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&transform, *v16, *(v16 + 1));
    }

    else
    {
      v17 = *v16;
      transform.c = *(v16 + 2);
      *&transform.a = v17;
    }

    if (transform.c >= 0.0)
    {
      a = COERCE_DOUBLE(&transform);
    }

    else
    {
      a = transform.a;
    }

    v19 = **&a;
    if (v19 <= 75)
    {
      if (v19 == 66)
      {
        v20 = (v16 + 24);
        if ((v16 + 24) == *(this + 29))
        {
          _cg_jpeg_mem_term("drawInContext", 405, "*** ERROR: malformed pathObject (%s)\n");
          goto LABEL_114;
        }

        std::string::operator=(&transform, v16 + 1);
        if (transform.c >= 0.0)
        {
          v42 = COERCE_DOUBLE(&transform);
        }

        else
        {
          v42 = transform.a;
        }

        v43 = atof(*&v42);
        v20 = v16 + 3;
        if (v16 + 3 == *(this + 29))
        {
          _cg_jpeg_mem_term("drawInContext", 408, "*** ERROR: malformed pathObject (%s)\n");
          goto LABEL_114;
        }

        v44 = v43;
        std::string::operator=(&transform, v16 + 2);
        if (transform.c >= 0.0)
        {
          v45 = COERCE_DOUBLE(&transform);
        }

        else
        {
          v45 = transform.a;
        }

        v46 = atof(*&v45);
        v20 = (v16 + 72);
        if ((v16 + 72) == *(this + 29))
        {
          _cg_jpeg_mem_term("drawInContext", 412, "*** ERROR: malformed pathObject (%s)\n");
          goto LABEL_114;
        }

        v47 = v46;
        std::string::operator=(&transform, v16 + 3);
        if (transform.c >= 0.0)
        {
          v48 = COERCE_DOUBLE(&transform);
        }

        else
        {
          v48 = transform.a;
        }

        v49 = atof(*&v48);
        v20 = v16 + 6;
        if (v16 + 6 == *(this + 29))
        {
          _cg_jpeg_mem_term("drawInContext", 415, "*** ERROR: malformed pathObject (%s)\n");
          goto LABEL_114;
        }

        v50 = v49;
        std::string::operator=(&transform, v16 + 4);
        if (transform.c >= 0.0)
        {
          v51 = COERCE_DOUBLE(&transform);
        }

        else
        {
          v51 = transform.a;
        }

        v52 = atof(*&v51);
        v20 = (v16 + 120);
        if ((v16 + 120) == *(this + 29))
        {
          _cg_jpeg_mem_term("drawInContext", 419, "*** ERROR: malformed pathObject (%s)\n");
          goto LABEL_114;
        }

        v53 = v52;
        std::string::operator=(&transform, v16 + 5);
        if (transform.c >= 0.0)
        {
          v54 = COERCE_DOUBLE(&transform);
        }

        else
        {
          v54 = transform.a;
        }

        v55 = atof(*&v54);
        v16 += 9;
        if (v16 == *(this + 29))
        {
          _cg_jpeg_mem_term("drawInContext", 422, "*** ERROR: malformed pathObject (%s)\n");
          goto LABEL_116;
        }

        v56 = v55;
        std::string::operator=(&transform, v16);
        if (transform.c >= 0.0)
        {
          v57 = COERCE_DOUBLE(&transform);
        }

        else
        {
          v57 = transform.a;
        }

        v58 = atof(*&v57);
        CGContextAddCurveToPoint(c, v44, v47, v50, v53, v56, v58);
      }

      else if (v19 == 67)
      {
        CGContextClosePath(c);
      }
    }

    else
    {
      switch(v19)
      {
        case 'L':
          v20 = (v16 + 24);
          if ((v16 + 24) == *(this + 29))
          {
            _cg_jpeg_mem_term("drawInContext", 386, "*** ERROR: malformed pathObject (%s)\n");
LABEL_114:
            v59 = 0;
            v16 = v20;
            goto LABEL_96;
          }

          std::string::operator=(&transform, v16 + 1);
          if (transform.c >= 0.0)
          {
            v26 = COERCE_DOUBLE(&transform);
          }

          else
          {
            v26 = transform.a;
          }

          v27 = atof(*&v26);
          v16 += 3;
          if (v16 == *(this + 29))
          {
            _cg_jpeg_mem_term("drawInContext", 389, "*** ERROR: malformed pathObject (%s)\n");
LABEL_116:
            v59 = 0;
            goto LABEL_96;
          }

          v28 = v27;
          std::string::operator=(&transform, v16);
          if (transform.c >= 0.0)
          {
            v29 = COERCE_DOUBLE(&transform);
          }

          else
          {
            v29 = transform.a;
          }

          v30 = atof(*&v29);
          CGContextAddLineToPoint(c, v28, v30);
          break;
        case 'Q':
          v20 = (v16 + 24);
          if ((v16 + 24) == *(this + 29))
          {
            _cg_jpeg_mem_term("drawInContext", 440, "*** ERROR: malformed pathObject (%s)\n");
            goto LABEL_114;
          }

          std::string::operator=(&transform, v16 + 1);
          if (transform.c >= 0.0)
          {
            v31 = COERCE_DOUBLE(&transform);
          }

          else
          {
            v31 = transform.a;
          }

          v32 = atof(*&v31);
          v20 = v16 + 3;
          if (v16 + 3 == *(this + 29))
          {
            _cg_jpeg_mem_term("drawInContext", 443, "*** ERROR: malformed pathObject (%s)\n");
            goto LABEL_114;
          }

          v33 = v32;
          std::string::operator=(&transform, v16 + 2);
          if (transform.c >= 0.0)
          {
            v34 = COERCE_DOUBLE(&transform);
          }

          else
          {
            v34 = transform.a;
          }

          v35 = atof(*&v34);
          v20 = (v16 + 72);
          if ((v16 + 72) == *(this + 29))
          {
            _cg_jpeg_mem_term("drawInContext", 447, "*** ERROR: malformed pathObject (%s)\n");
            goto LABEL_114;
          }

          v36 = v35;
          std::string::operator=(&transform, v16 + 3);
          if (transform.c >= 0.0)
          {
            v37 = COERCE_DOUBLE(&transform);
          }

          else
          {
            v37 = transform.a;
          }

          v38 = atof(*&v37);
          v16 += 6;
          if (v16 == *(this + 29))
          {
            _cg_jpeg_mem_term("drawInContext", 450, "*** ERROR: malformed pathObject (%s)\n");
            goto LABEL_116;
          }

          v39 = v38;
          std::string::operator=(&transform, v16);
          if (transform.c >= 0.0)
          {
            v40 = COERCE_DOUBLE(&transform);
          }

          else
          {
            v40 = transform.a;
          }

          v41 = atof(*&v40);
          CGContextAddQuadCurveToPoint(c, v33, v36, v39, v41);
          break;
        case 'M':
          v20 = (v16 + 24);
          if ((v16 + 24) == *(this + 29))
          {
            _cg_jpeg_mem_term("drawInContext", 364, "*** ERROR: malformed pathObject (%s)\n");
            goto LABEL_114;
          }

          std::string::operator=(&transform, v16 + 1);
          if (transform.c >= 0.0)
          {
            v21 = COERCE_DOUBLE(&transform);
          }

          else
          {
            v21 = transform.a;
          }

          v22 = atof(*&v21);
          v16 += 3;
          if (v16 == *(this + 29))
          {
            _cg_jpeg_mem_term("drawInContext", 367, "*** ERROR: malformed pathObject (%s)\n");
            goto LABEL_116;
          }

          v23 = v22;
          std::string::operator=(&transform, v16);
          if (transform.c >= 0.0)
          {
            v24 = COERCE_DOUBLE(&transform);
          }

          else
          {
            v24 = transform.a;
          }

          v25 = atof(*&v24);
          CGContextMoveToPoint(c, v23, v25);
          break;
      }
    }

    v16 = (v16 + 24);
    v59 = 1;
LABEL_96:
    if (SHIBYTE(transform.c) < 0)
    {
      operator delete(*&transform.a);
      if ((v59 & 1) == 0)
      {
        break;
      }
    }

    else if ((v59 & 1) == 0)
    {
      break;
    }
  }

  if (*(this + 105) == 1)
  {
    if (*(this + 104) == 1)
    {
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      CGContextFillPath(c);
    }
  }

  else
  {
    CGContextStrokePath(c);
  }

  CGContextRestoreGState(c);
}

void sub_1861D6E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFData *_OFDCreatePDFDataFromURL(const __CFURL *a1)
{
  v1 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  memset(v32, 0, sizeof(v32));
  IIOString::IIOString(v32, v1);
  OFDLoadExternalSymbols(v2, v3);
  memset(v31, 0, sizeof(v31));
  v4 = IIOString::utf8String(v32);
  OFDContainer::OFDContainer(v31, v4);
  v5 = IIOImageSource::count(v31);
  v6 = v5;
  if (v5)
  {
    PluginType = IIOImagePlus::readPluginType(v5);
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    v9 = CGDataConsumerCreateWithCFData(Mutable);
    v10 = CGPDFContextCreate(v9, 0, 0);
    CGDataConsumerRelease(v9);
    if (PluginType)
    {
      v11 = 0;
      v12 = *MEMORY[0x1E695F390];
      v24 = vdupq_n_s64(0x4006AD5AB56AD5ACuLL);
      do
      {
        PageAtIndex = OFDDocument::getPageAtIndex(v6, v11);
        v14 = PageAtIndex;
        if (PageAtIndex)
        {
          OFDPage::open(PageAtIndex);
          v28 = 0;
          pageInfo = 0;
          v30 = 0;
          IIODictionary::IIODictionary(&v28);
          *bytes = OFDPage::physicalBox(v14);
          v26 = v15;
          v17.f64[1] = v16;
          *ty = vmulq_f64(v17, v24);
          v18 = CFDataCreate(0, bytes, 32);
          IIODictionary::setObjectForKey(&v28, v18, v12);
          CGPDFContextBeginPage(v10, pageInfo);
          CGContextTranslateCTM(v10, 0.0, ty[1]);
          CGContextScaleCTM(v10, 1.0, -1.0);
          CGContextScaleCTM(v10, 2.83464567, 2.83464567);
          CGContextSetGrayFillColor(v10, 1.0, 1.0);
          v33.origin.x = *bytes;
          v33.origin.y = v26;
          v33.size.width = ty[0];
          v33.size.height = ty[1];
          CGContextFillRect(v10, v33);
          v34.origin.x = *bytes;
          v34.origin.y = v26;
          v34.size.width = ty[0];
          v34.size.height = ty[1];
          OFDPage::drawInContext(v14, v10, v34);
          CGPDFContextEndPage(v10);
          _cg_jpeg_mem_term(v14, v19, v20);
          IIODictionary::~IIODictionary(&v28);
        }

        ++v11;
      }

      while (PluginType != v11);
    }

    CGPDFContextClose(v10);
    _cg_jpeg_mem_term(v31, v21, v22);
    CFRelease(v10);
  }

  else
  {
    Mutable = 0;
  }

  OFDContainer::~OFDContainer(v31);
  IIOString::~IIOString(v32);
  return Mutable;
}

void sub_1861D7094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  OFDContainer::~OFDContainer(va);
  IIOString::~IIOString((v18 - 104));
  _Unwind_Resume(a1);
}

void kd_roi_level::advance()
{
  __assert_rtn("advance", "roi.cpp", 294, "next_row_loc < lim.y");
}

{
  __assert_rtn("advance", "roi.cpp", 348, "node != NULL");
}

{
  __assert_rtn("advance", "roi.cpp", 360, "node != NULL");
}

{
  __assert_rtn("advance", "roi.cpp", 330, "r >= first_buffer_idx");
}

{
  __assert_rtn("advance", "roi.cpp", 306, "(max_row+1-min_row) <= num_row_buffers");
}

{
  __assert_rtn("advance", "roi.cpp", 292, "source != NULL");
}

void kdu_roi_level::create(kd_roi_level *a1)
{
  kd_roi_level::~kd_roi_level(a1);

  JUMPOUT(0x186602850);
}

void kdu_roi_level::acquire_node()
{
  __assert_rtn("acquire", "roi_local.h", 69, "available");
}

{
  __assert_rtn("acquire_node", "roi.cpp", 179, "(child_idx >= 0) && (child_idx < 4)");
}

void kd_precinct::release()
{
  __assert_rtn("release", "compressed_local.h", 4261, "(state != 0) && !(state & 1)");
}

{
  __assert_rtn("release", "compressed_local.h", 3779, "resolution->codestream->in != NULL");
}

void kd_input::putback()
{
  __assert_rtn("putback", "compressed_local.h", 494, "first_unread > buffer");
}

{
  __assert_rtn("putback", "compressed_local.h", 493, "!throw_markers");
}

{
  __assert_rtn("putback", "compressed_local.h", 492, "!exhausted");
}

void kdu_thread_queue::find_unassigned_job()
{
  __assert_rtn("find_unassigned_job", "kdu_threads.cpp", 165, "best_secondary->subtree_unassigned_jobs > 0");
}

{
  __assert_rtn("find_unassigned_job", "kdu_threads.cpp", 170, "scan->subtree_unassigned_jobs == 0");
}

{
  __assert_rtn("find_unassigned_job", "kdu_threads.cpp", 188, "first_runnable_child != NULL");
}

void kdu_thread_queue::make_secondary_job_runnable()
{
  __assert_rtn("make_secondary_job_runnable", "kdu_threads.cpp", 301, "(scan->subtree_runnable_jobs == 0) && (scan->subtree_primary_jobs == 0) && (scan->num_runnable_jobs == 0) && (scan->num_primary_jobs == 0)");
}

{
  __assert_rtn("make_secondary_job_runnable", "kdu_threads.cpp", 318, "this->num_unassigned_jobs > (this->num_runnable_jobs+this->num_primary_jobs)");
}

{
  __assert_rtn("make_secondary_job_runnable", "kdu_threads.cpp", 323, "result != NULL");
}

{
  __assert_rtn("make_secondary_job_runnable", "kdu_threads.cpp", 310, "best_child != NULL");
}

{
  __assert_rtn("make_secondary_job_runnable", "kdu_threads.cpp", 273, "secondary_pref != 0");
}

{
  __assert_rtn("make_secondary_job_runnable", "kdu_threads.cpp", 270, "(subtree_unassigned_jobs > 0) && (subtree_secondary_pref != 0) && (subtree_runnable_jobs == 0) && (subtree_primary_jobs == 0)");
}

void kdu_thread_entity::terminate()
{
  __assert_rtn("terminate", "kdu_threads.cpp", 910, "root->num_unassigned_jobs == root->subtree_unassigned_jobs");
}

{
  __assert_rtn("terminate", "kdu_threads.cpp", 932, "root->num_unassigned_jobs == 0");
}

{
  __assert_rtn("terminate", "kdu_threads.cpp", 935, "root->parent->children == root");
}

{
  __assert_rtn("terminate", "kdu_threads.cpp", 949, "this->is_group_owner() && (group->num_finished_threads == 0)");
}

{
  __assert_rtn("terminate", "kdu_threads.cpp", 959, "group->num_deferred_jobs == 0");
}

{
  __assert_rtn("terminate", "kdu_threads.cpp", 964, "group->threads[n]->finished");
}

void kdu_thread_entity::add_jobs()
{
  __assert_rtn("add_jobs", "kdu_threads.cpp", 653, "num_jobs >= 0");
}

{
  __assert_rtn("add_jobs", "kdu_threads.cpp", 697, "secondary_seq != 0");
}

{
  __assert_rtn("add_jobs", "kdu_threads.cpp", 714, "(queue->num_runnable_jobs + queue->num_primary_jobs) == queue->num_unassigned_jobs");
}

{
  __assert_rtn("add_jobs", "kdu_threads.cpp", 766, "(best_thread_idx > 0) && (group->thread_activity[best_thread_idx]==NULL)");
}

{
  __assert_rtn("add_jobs", "kdu_threads.cpp", 688, "delta_secondary_jobs > 0");
}

{
  __assert_rtn("add_jobs", "kdu_threads.cpp", 669, "(delta_primary_jobs >= 0) && (num_jobs >= 0)");
}

void kdu_thread_entity::synchronize()
{
  __assert_rtn("synchronize", "kdu_threads.cpp", 808, "(root->children != NULL) || ((root->num_unassigned_jobs+root->first_unassigned_job_idx)==0)");
}

{
  __assert_rtn("synchronize", "kdu_threads.cpp", 821, "(root->num_sync_points == 0) || (root->sync_points[0].synchronizing_thread_idx!=thread_idx)");
}

{
  __assert_rtn("synchronize", "kdu_threads.cpp", 829, "(root->num_sync_points > 0) && (root->sync_points[0].synchronizing_thread_idx==thread_idx) && root->check_condition(true,thread_idx)");
}

void kdu_thread_entity::process_jobs()
{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1096, "(wait_queue != NULL) || !is_group_owner()");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1153, "(wait_queue->num_sync_points > 0) && (wait_queue->sync_points[0].synchronizing_thread_idx== this->thread_idx)");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1200, "run_queue != KD_THREAD_ACTIVE");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1215, "group->num_idle_threads > 0");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1284, "(run_queue->num_unassigned_jobs > 0) && (run_queue->num_runnable_jobs > 0)");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1360, "(last_queue->parent->num_sync_points > 0) && (last_queue->parent->sync_points[0].num_unsynchronized_children>0)");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1419, "sp->num_unsynchronized_children == 0");
}

{
  __assert_rtn("check_condition", "threads_local.h", 93, "num_primary_jobs == 0");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1444, "run_queue == NULL");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1435, "last_queue->thread_awaiting_complete != this->thread_idx");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1415, "sp->synchronization_downcounter > 0");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1396, "last_queue->num_active_jobs == 0");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1334, "last_queue->num_active_jobs > 0");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1317, "run_queue->num_active_jobs == 0");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1276, "run_queue->prescheduled_job_idx >= 0");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1241, "group->num_threads > 1");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1210, "run_queue->prescheduled_job_idx >= 0");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1186, "group->thread_activity[thread_idx] != NULL");
}

{
  __assert_rtn("process_jobs", "kdu_threads.cpp", 1185, "!is_group_owner()");
}

void kdu_thread_entity::process_outstanding_sync_points()
{
  __assert_rtn("process_outstanding_sync_points", "kdu_threads.cpp", 1049, "n < group->num_threads");
}

{
  __assert_rtn("process_outstanding_sync_points", "kdu_threads.cpp", 1078, "(parent->num_sync_points > 0) && (parent->sync_points[0].num_unsynchronized_children > 0) && (parent->sync_points[0].synchronization_downcounter == 0)");
}

{
  __assert_rtn("process_outstanding_sync_points", "kdu_threads.cpp", 1027, "sp->synchronized_worker == NULL");
}

void kdu_channel_mapping::configure()
{
  __assert_rtn("configure", "kdu_region_decompressor.cpp", 1618, "palette[c] == NULL");
}

{
  __assert_rtn("configure", "kdu_region_decompressor.cpp", 1614, "num_entries <= 1024");
}

void kdu_channel_mapping::add_alpha_to_configuration()
{
  __assert_rtn("add_alpha_to_configuration", "kdu_region_decompressor.cpp", 1717, "palette[c] == NULL");
}

{
  __assert_rtn("add_alpha_to_configuration", "kdu_region_decompressor.cpp", 1713, "num_entries <= 1024");
}

void kdu_region_decompressor::open_tile()
{
  __assert_rtn("open_tile", "kdu_region_decompressor.cpp", 2217, "(full_render_dims & render_dims) == render_dims");
}

{
  __assert_rtn("open_tile", "kdu_region_decompressor.cpp", 2136, "!tile_open");
}

void kdu_sample_allocator::finalize()
{
  __assert_rtn("finalize", "kdu_sample_processing.h", 176, "pre_creation_phase");
}

{
  __assert_rtn("finalize", "kdu_sample_processing.h", 185, "(bytes_reserved == 0) || (buffer != NULL)");
}

void transfer_fixed_point()
{
  __assert_rtn("transfer_fixed_point", "kdu_region_decompressor.cpp", 1139, "(sp != NULL) && !src->is_absolute()");
}

{
  __assert_rtn("transfer_fixed_point", "kdu_region_decompressor.cpp", 1209, "(sp != NULL) && !src->is_absolute()");
}

{
  __assert_rtn("transfer_fixed_point", "kdu_region_decompressor.cpp", 1135, "num_samples <= src->get_width()");
}

{
  __assert_rtn("transfer_fixed_point", "kdu_region_decompressor.cpp", 1293, "(sp != NULL) && !src->is_absolute()");
}

{
  __assert_rtn("transfer_fixed_point", "kdu_region_decompressor.cpp", 1381, "(sp != NULL) && !src->is_absolute()");
}

{
  __assert_rtn("transfer_fixed_point", "kdu_region_decompressor.cpp", 1289, "num_samples <= src->get_width()");
}

void kdu_sample_allocator::alloc16()
{
  __assert_rtn("alloc16", "kdu_sample_processing.h", 206, "bytes_used <= bytes_reserved");
}

{
  __assert_rtn("alloc16", "kdu_sample_processing.h", 201, "!pre_creation_phase");
}

void kdu_sample_allocator::alloc32()
{
  __assert_rtn("alloc32", "kdu_sample_processing.h", 221, "bytes_used <= bytes_reserved");
}

{
  __assert_rtn("alloc32", "kdu_sample_processing.h", 216, "!pre_creation_phase");
}

void kd_block::start_buffering()
{
  __assert_rtn("start_buffering", "compressed_local.h", 3528, "first_buf == NULL");
}

{
  __assert_rtn("start_buffering", "compressed_local.h", 3531, "first_buf == NULL");
}

void kd_block::put_byte()
{
  __assert_rtn("put_byte", "compressed_local.h", 3535, "current_buf != NULL");
}

{
  __assert_rtn("put_byte", "compressed_local.h", 3542, "current_buf != NULL");
}

void kd_block::retrieve_data()
{
  __assert_rtn("retrieve_data", "blocks.cpp", 535, "block->num_passes == (int) p_idx");
}

{
  __assert_rtn("retrieve_data", "blocks.cpp", 556, "idx > 0");
}

void kd_block::store_data()
{
  __assert_rtn("store_data", "blocks.cpp", 585, "block->modes == (int) modes");
}

{
  __assert_rtn("store_data", "blocks.cpp", 588, "first_buf == NULL");
}

{
  __assert_rtn("store_data", "blocks.cpp", 609, "total_bytes <= block->max_bytes");
}

{
  __assert_rtn("store_data", "blocks.cpp", 604, "(val >= 0) && (val < (1<<16))");
}

{
  __assert_rtn("store_data", "blocks.cpp", 587, "block->num_passes <= 255");
}

{
  __assert_rtn("store_data", "blocks.cpp", 586, "block->missing_msbs < 255");
}

{
  __assert_rtn("store_data", "blocks.cpp", 640, "first_buf == NULL");
}

{
  __assert_rtn("store_data", "blocks.cpp", 661, "total_bytes <= block->max_bytes");
}

{
  __assert_rtn("store_data", "blocks.cpp", 656, "(val >= 0) && (val < (1<<16))");
}

{
  __assert_rtn("store_data", "blocks.cpp", 639, "block->num_passes <= 255");
}

{
  __assert_rtn("store_data", "blocks.cpp", 638, "block->missing_msbs < 255");
}

void kd_block::write_packet_header()
{
  __assert_rtn("write_packet_header", "blocks.cpp", 850, "(included && (layer_w < 0xFFFF)) || ((!included) && (layer_w == 0xFFFF))");
}

{
  __assert_rtn("write_packet_header", "blocks.cpp", 955, "val == 0");
}

{
  __assert_rtn("write_packet_header", "blocks.cpp", 1005, "total_bytes == (int) temp_length");
}

{
  __assert_rtn("write_packet_header", "blocks.cpp", 1041, "segment_bytes < (1<<length_bits)");
}

{
  __assert_rtn("write_packet_header", "blocks.cpp", 1044, "total_bytes == (int) temp_length");
}

void kd_block::write_body_bytes()
{
  __assert_rtn("write_body_bytes", "blocks.cpp", 1085, "(xfer_bytes > 0) && (scan != NULL)");
}

{
  __assert_rtn("write_body_bytes", "blocks.cpp", 1076, "scan != NULL");
}

void kd_block::build_tree()
{
  __assert_rtn("build_tree", "blocks.cpp", 1148, "(x==0) && (y==0)");
}

{
  __assert_rtn("build_tree", "blocks.cpp", 1153, "node == (blocks+total_nodes)");
}

{
  __assert_rtn("build_tree", "blocks.cpp", 1107, "total_nodes >= 0");
}

void mq_encoder::start()
{
  __assert_rtn("start", "mq_encoder.cpp", 106, "buf_start == NULL");
}

{
  __assert_rtn("start", "mq_encoder.cpp", 107, "(prev == NULL) && (next == NULL)");
}

{
  __assert_rtn("start", "mq_encoder.cpp", 108, "buffer != NULL");
}

{
  __assert_rtn("start", "mq_encoder.cpp", 105, "!active");
}

void mq_encoder::terminate()
{
  __assert_rtn("terminate", "mq_encoder.cpp", 136, "active");
}

{
  __assert_rtn("terminate", "mq_encoder.cpp", 183, "t==0");
}

{
  __assert_rtn("terminate", "mq_encoder.cpp", 215, "buf_next == buf_limit");
}

{
  __assert_rtn("terminate", "mq_encoder.cpp", 137, "!checked_out");
}

void mq_encoder::find_truncation_point()
{
  __assert_rtn("find_truncation_point", "mq_encoder.cpp", 265, "buf_next < limit");
}

{
  __assert_rtn("find_truncation_point", "mq_encoder.cpp", 296, "F_min <= 5");
}

{
  __assert_rtn("find_truncation_point", "mq_encoder.cpp", 232, "!truncation_point_found");
}

{
  __assert_rtn("find_truncation_point", "mq_encoder.cpp", 231, "!active");
}

void kd_create_dwt_description()
{
  __assert_rtn("kd_create_dwt_description", "codestream.cpp", 179, "0");
}

{
  __assert_rtn("kd_create_dwt_description", "codestream.cpp", 128, "0");
}

{
  __assert_rtn("kd_create_dwt_description", "codestream.cpp", 144, "0");
}

{
  __assert_rtn("kd_create_dwt_description", "codestream.cpp", 148, "c == num_coeffs");
}

void kd_input::process_unexpected_marker()
{
  __assert_rtn("process_unexpected_marker", "codestream.cpp", 298, "throw_markers");
}

{
  __assert_rtn("process_unexpected_marker", "codestream.cpp", 336, "!exhausted");
}

void kd_compressed_input::load_buf()
{
  __assert_rtn("load_buf", "codestream.cpp", 468, "first_unwritten == first_unread");
}

{
  __assert_rtn("load_buf", "codestream.cpp", 495, "alt_first_unwritten == NULL");
}

{
  __assert_rtn("load_buf", "codestream.cpp", 496, "(suspend_ptr>=first_unread) && (suspend_ptr<=first_unwritten)");
}

void kd_pph_input::load_buf()
{
  __assert_rtn("load_buf", "codestream.cpp", 730, "read_buf != NULL");
}

{
  __assert_rtn("load_buf", "codestream.cpp", 735, "buf_bytes >= 0");
}

void kd_marker::read()
{
  __assert_rtn("read", "codestream.cpp", 804, "valid_code");
}

{
  __assert_rtn("read", "codestream.cpp", 778, "source != NULL");
}

void kd_pp_markers::add_marker()
{
  __assert_rtn("add_marker", "codestream.cpp", 974, "(list == NULL) || !is_ppm");
}

{
  __assert_rtn("add_marker", "codestream.cpp", 968, "(list == NULL) || is_ppm");
}

{
  __assert_rtn("add_marker", "codestream.cpp", 973, "elt->get_code() == KDU_PPT");
}

void kd_tlm_generator::add_tpart_length()
{
  __assert_rtn("add_tpart_length", "codestream.cpp", 1163, "elt_ctr < num_elts");
}

{
  __assert_rtn("add_tpart_length", "codestream.cpp", 1164, "(tnum >= 0) && (tnum < num_tiles)");
}

void kd_tlm_generator::write_dummy_tlms()
{
  __assert_rtn("write_dummy_tlms", "codestream.cpp", 1205, "check_tlm_bytes == tlm_bytes");
}

{
  __assert_rtn("write_dummy_tlms", "codestream.cpp", 1192, "z_tlm <= 255");
}

void kd_thread_env::flush()
{
  __assert_rtn("flush", "codestream.cpp", 2010, "scan->target_precinct->num_outstanding_blocks > 0");
}

{
  __assert_rtn("flush", "codestream.cpp", 2027, "have_complete_precincts");
}

{
  __assert_rtn("flush", "codestream.cpp", 2047, "precinct->num_outstanding_blocks == 1");
}

{
  __assert_rtn("flush", "codestream.cpp", 2071, "num_outstanding_blocks == 0");
}

{
  __assert_rtn("flush", "codestream.cpp", 1984, "num_outstanding_blocks == 0");
}

void kd_packet_sequencer::next_progression()
{
  __assert_rtn("next_progression", "codestream.cpp", 2305, "0");
}

{
  __assert_rtn("next_progression", "codestream.cpp", 2295, "state.poc != NULL");
}

{
  __assert_rtn("next_progression", "codestream.cpp", 2293, "state.poc != NULL");
}

void kd_global_rescomp::close_ready_precinct()
{
  __assert_rtn("close_ready_precinct", "codestream.cpp", 2856, "precinct == first_ready");
}

{
  __assert_rtn("close_ready_precinct", "codestream.cpp", 2863, "precinct == last_ready");
}

void kd_mct_stage::create_stages()
{
  __assert_rtn("create_stages", "codestream.cpp", 3099, "0");
}

{
  __assert_rtn("create_stages", "codestream.cpp", 3114, "0");
}

{
  __assert_rtn("create_stages", "codestream.cpp", 3135, "0");
}

void kd_mct_stage::apply_output_restrictions()
{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3428, "(global_comp_info == NULL) && (num_outputs == next_stage->num_inputs)");
}

{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3439, "next_stage->input_required_indices[n]==oci->apparent_idx");
}

{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3447, "num_apparent_outputs == next_stage->num_required_inputs");
}

{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3421, "oci->apparent_idx == comps_of_interest[n]");
}

{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3468, "(oci->apparent_idx >= 0) && (oci->block == block)");
}

{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3564, "unset_inputs > 0");
}

{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3586, "unset_inputs == 0");
}

{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3582, "unset_inputs > 0");
}

{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3598, "num_required_inputs == 0");
}

{
  __assert_rtn("apply_output_restrictions", "codestream.cpp", 3396, "global_comp_info != NULL");
}

void kd_mct_block::create_rxform_ss_model()
{
  __assert_rtn("create_rxform_ss_model", "codestream.cpp", 3717, "N==num_outputs");
}

{
  __assert_rtn("create_rxform_ss_model", "codestream.cpp", 3744, "s == N");
}

void kd_mct_block::create_dependency_ss_model()
{
  __assert_rtn("create_dependency_ss_model", "codestream.cpp", 3773, "N==num_outputs");
}

{
  __assert_rtn("create_dependency_ss_model", "codestream.cpp", 3793, "m == (int) model->range_min");
}

void kd_mct_block::create_dwt_ss_model()
{
  __assert_rtn("create_dwt_ss_model", "codestream.cpp", 3824, "N==num_outputs");
}

{
  __assert_rtn("create_dwt_ss_model", "codestream.cpp", 3878, "!((range_min|range_max) & synth_gap)");
}

{
  __assert_rtn("create_dwt_ss_model", "codestream.cpp", 3871, "range_min == range_max");
}

{
  __assert_rtn("create_dwt_ss_model", "codestream.cpp", 3955, "step_coeffs == dwt_coefficients");
}

{
  __assert_rtn("create_dwt_ss_model", "codestream.cpp", 3852, "range_min == range_max");
}

{
  __assert_rtn("create_dwt_ss_model", "codestream.cpp", 3988, "band_start_idx == num_inputs");
}

{
  __assert_rtn("create_dwt_ss_model", "codestream.cpp", 3848, "(range_min >= synth_min) && (range_max <= synth_max)");
}

void kd_codestream::construct_output_comp_info()
{
  __assert_rtn("construct_output_comp_info", "codestream.cpp", 4240, "output_comp_info == NULL");
}

{
  __assert_rtn("construct_output_comp_info", "codestream.cpp", 4275, "0");
}

void kd_codestream::restrict_to_fragment()
{
  __assert_rtn("restrict_to_fragment", "codestream.cpp", 4413, "(idx_min == tile_indices.pos) && (canvas == fragment_region) && initial_fragment && final_fragment");
}

{
  __assert_rtn("restrict_to_fragment", "codestream.cpp", 4398, "current_fragment_tiles > 0");
}

{
  __assert_rtn("restrict_to_fragment", "codestream.cpp", 4367, "out != NULL");
}

void kd_codestream::restart()
{
  __assert_rtn("restart", "codestream.cpp", 4475, "tref->tile != KD_EXPIRED_TILE");
}

{
  __assert_rtn("restart", "codestream.cpp", 4490, "typ->tile_ref == NULL");
}

{
  __assert_rtn("restart", "codestream.cpp", 4466, "tile_refs != NULL");
}

void kd_codestream::create_tile()
{
  __assert_rtn("create_tile", "codestream.cpp", 4801, "(rel_idx.x >= 0) && (rel_idx.x < tile_indices.size.x) && (rel_idx.y >= 0) && (rel_idx.y < tile_indices.size.y)");
}

{
  __assert_rtn("create_tile", "codestream.cpp", 4804, "tp == NULL");
}

void kd_codestream::simulate_output()
{
  __assert_rtn("simulate_output", "codestream.cpp", 4946, "T <= (rc->remaining_area + rc->ready_area)");
}

{
  __assert_rtn("simulate_output", "codestream.cpp", 4990, "finalize_layer && last_layer && (local_sloppy >= 0)");
}

{
  __assert_rtn("simulate_output", "codestream.cpp", 5003, "packet_bytes <= packet_max_bytes");
}

{
  __assert_rtn("simulate_output", "codestream.cpp", 4998, "packet_max_bytes >= packet_bytes");
}

{
  __assert_rtn("simulate_output", "codestream.cpp", 4991, "slope_threshold < 0xFFFF");
}

{
  __assert_rtn("simulate_output", "codestream.cpp", 5015, "!finalize_layer");
}

{
  __assert_rtn("simulate_output", "codestream.cpp", 4937, "(rc->remaining_area > 0) && (rc->remaining_area >= rc->ready_area)");
}

{
  __assert_rtn("simulate_output", "codestream.cpp", 4919, "!finalize_layer");
}

void kd_codestream::calculate_min_header_cost()
{
  __assert_rtn("calculate_min_header_cost", "codestream.cpp", 5058, "min_fixed_header_size == 0");
}

{
  __assert_rtn("calculate_min_header_cost", "codestream.cpp", 5078, "(abs_idx.x < tile_span.x) && (abs_idx.y < tile_span.y)");
}

{
  __assert_rtn("calculate_min_header_cost", "codestream.cpp", 5094, "total_area >= tile_area");
}

void kd_codestream::pcrd_opt()
{
  __assert_rtn("pcrd_opt", "codestream.cpp", 5150, "next_idx == (num_sized_layers-1)");
}

{
  __assert_rtn("pcrd_opt", "codestream.cpp", 5161, "last_idx == -1");
}

{
  __assert_rtn("pcrd_opt", "codestream.cpp", 5200, "last_layer");
}

{
  __assert_rtn("pcrd_opt", "codestream.cpp", 5284, "last_layer");
}

{
  __assert_rtn("pcrd_opt", "codestream.cpp", 5242, "threshold < (1<<16)");
}

{
  __assert_rtn("pcrd_opt", "codestream.cpp", 5169, "adjusted_last_target > 0.0");
}

void kd_codestream::generate_codestream()
{
  __assert_rtn("generate_codestream", "codestream.cpp", 5329, "!tlm_generator");
}

{
  __assert_rtn("generate_codestream", "codestream.cpp", 5368, "header_length == 0");
}

{
  __assert_rtn("generate_codestream", "codestream.cpp", 5371, "header_length == 0");
}

{
  __assert_rtn("generate_codestream", "codestream.cpp", 5330, "org != NULL");
}

{
  __assert_rtn("generate_codestream", "codestream.cpp", 5301, "(layer_sizes != NULL) && (layer_thresholds != NULL)");
}

{
  __assert_rtn("generate_codestream", "codestream.cpp", 5298, "out != NULL");
}

void kdu_codestream::create()
{
  __assert_rtn("create", "codestream.cpp", 5446, "(state == NULL) && (target != NULL)");
}

{
  __assert_rtn("create", "codestream.cpp", 5465, "state == NULL");
}

void kdu_codestream::apply_input_restrictions()
{
  __assert_rtn("apply_input_restrictions", "codestream.cpp", 5958, "0");
}

{
  __assert_rtn("apply_input_restrictions", "codestream.cpp", 6021, "0");
}

void kdu_codestream::open_tile()
{
  __assert_rtn("open_tile", "codestream.cpp", 6481, "(tile_idx.x >= 0) && (tile_idx.x < state->tile_span.x) && (tile_idx.y >= 0) && (tile_idx.y < state->tile_span.y)");
}

{
  __assert_rtn("open_tile", "codestream.cpp", 6485, "(rel_idx.x >= 0) && (rel_idx.x < state->tile_indices.size.x) && (rel_idx.y >= 0) && (rel_idx.y < state->tile_indices.size.y)");
}

{
  __assert_rtn("open_tile", "codestream.cpp", 6494, "state->allow_restart && (tref->tpart_head == NULL)");
}

{
  __assert_rtn("open_tile", "codestream.cpp", 6502, "tp->tile_ref == tref");
}

void kdu_codestream::flush()
{
  __assert_rtn("flush", "codestream.cpp", 6583, "(state->layer_thresholds!=NULL) && (state->layer_sizes!=NULL)");
}

{
  __assert_rtn("flush", "codestream.cpp", 6569, "(state->layer_thresholds==NULL) && (state->layer_sizes==NULL)");
}

{
  __assert_rtn("flush", "codestream.cpp", 6561, "(state->out != NULL) && (num_layer_specs > 0)");
}

void kdu_kernels::expand_and_convolve()
{
  __assert_rtn("expand_and_convolve", "kernels.cpp", 181, "(sp == work1) || (sp == work2)");
}

{
  __assert_rtn("expand_and_convolve", "kernels.cpp", 182, "(dp == work1) || (dp == work2)");
}

{
  __assert_rtn("expand_and_convolve", "kernels.cpp", 183, "dst_L <= work_L");
}

void kdu_kernels::get_energy_gain()
{
  __assert_rtn("get_energy_gain", "kernels.cpp", 541, "half_len <= work_L");
}

{
  __assert_rtn("get_energy_gain", "kernels.cpp", 503, "(num_extra_stages >= 0) && (num_extra_stages <= 3)");
}

void kdu_kernels::get_bibo_gain()
{
  __assert_rtn("get_bibo_gain", "kernels.cpp", 626, "rec->bibo_gain == high_gain");
}

{
  __assert_rtn("get_bibo_gain", "kernels.cpp", 606, "rec->bibo_gain == low_gain");
}

{
  __assert_rtn("get_bibo_gain", "kernels.cpp", 633, "(record_idx == 0) && (rec != NULL)");
}

{
  __assert_rtn("get_bibo_gain", "kernels.cpp", 568, "(num_extra_stages >= 0) && (num_extra_stages <= 3)");
}

void jp2_input_box::read()
{
  __assert_rtn("read", "jp2.cpp", 1145, "src->seekable");
}

{
  __assert_rtn("read", "jp2.cpp", 1250, "partial_word_bytes == 4");
}

{
  __assert_rtn("read", "jp2.cpp", 1246, "partial_word_bytes < 4");
}

{
  __assert_rtn("read", "jp2.cpp", 1274, "partial_word_bytes == 2");
}

void jp2_output_box::open()
{
  __assert_rtn("open", "jp2.cpp", 1389, "(buffer == NULL) && (buffer_size == 0)");
}

{
  __assert_rtn("open", "jp2.cpp", 1381, "!rubber_length");
}

{
  __assert_rtn("open", "jp2.cpp", 1416, "(buffer == NULL) && (buffer_size == 0)");
}

{
  __assert_rtn("open", "jp2.cpp", 1430, "super_box->rubber_length && super_box->write_immediately");
}

void jp2_output_box::write_header()
{
  __assert_rtn("write_header", "jp2.cpp", 1462, "write_immediately");
}

{
  __assert_rtn("write_header", "jp2.cpp", 1473, "box_size >= 0");
}

{
  __assert_rtn("write_header", "jp2.cpp", 1467, "!write_header_on_close");
}

{
  __assert_rtn("write_header", "jp2.cpp", 1463, "restore_size < 0");
}

{
  __assert_rtn("write_header", "jp2.cpp", 1461, "(box_type != 0) && ((tgt != NULL) || (super_box != NULL))");
}

void jp2_output_box::set_rubber_length()
{
  __assert_rtn("set_rubber_length", "jp2.cpp", 1547, "0");
}

{
  __assert_rtn("set_rubber_length", "jp2.cpp", 1510, "box_type != 0");
}

void jp2_output_box::set_target_size()
{
  __assert_rtn("set_target_size", "jp2.cpp", 1602, "0");
}

{
  __assert_rtn("set_target_size", "jp2.cpp", 1575, "box_type != 0");
}

void jp2_output_box::close()
{
  __assert_rtn("close", "jp2.cpp", 1690, "0");
}

{
  __assert_rtn("close", "jp2.cpp", 1696, "buffer == NULL");
}

{
  __assert_rtn("close", "jp2.cpp", 1716, "0");
}

{
  __assert_rtn("close", "jp2.cpp", 1722, "0");
}

void jp2_output_box::end_rewrite()
{
  __assert_rtn("end_rewrite", "jp2.cpp", 1804, "0");
}

{
  __assert_rtn("end_rewrite", "jp2.cpp", 1809, "0");
}

{
  __assert_rtn("end_rewrite", "jp2.cpp", 1812, "0");
}

{
  __assert_rtn("end_rewrite", "jp2.cpp", 1785, "advance >= 0");
}

void jp2_output_box::write()
{
  __assert_rtn("write", "jp2.cpp", 1863, "restore_size < 0");
}

{
  __assert_rtn("write", "jp2.cpp", 1856, "0");
}

void jp2_dimensions::init()
{
  __assert_rtn("init", "jp2.cpp", 2137, "num_components > 0");
}

{
  __assert_rtn("init", "jp2.cpp", 2133, "state != NULL");
}

void j2_palette::init()
{
  __assert_rtn("init", "jp2.cpp", 2433, "pclr->get_box_type() == jp2_palette_4cc");
}

{
  __assert_rtn("init", "jp2.cpp", 2478, "(entry_bytes <= 5) && (entry_bytes > 0)");
}

void j2_component_map::finalize()
{
  __assert_rtn("finalize", "jp2.cpp", 2909, "num_cmap_channels == 0");
}

{
  __assert_rtn("get_num_components", "jp2.cpp", 2307, "state != NULL");
}

void j2_component_map::add_cmap_channel()
{
  __assert_rtn("add_cmap_channel", "jp2.cpp", 2982, "use_cmap_box");
}

{
  __assert_rtn("add_cmap_channel", "jp2.cpp", 2958, "dimensions.exists() && palette.exists()");
}

void j2_channels::find_cmap_channels()
{
  __assert_rtn("find_cmap_channels", "jp2.cpp", 3374, "cp->bit_depth > 0");
}

{
  __assert_rtn("find_cmap_channels", "jp2.cpp", 3346, "c > 0");
}

void j2_channels::add_cmap_channels()
{
  __assert_rtn("add_cmap_channels", "jp2.cpp", 3428, "c == 0");
}

{
  __assert_rtn("add_cmap_channels", "jp2.cpp", 3417, "cp->cmap_channel[c] < 0");
}

void j2_channels::save_box()
{
  __assert_rtn("save_box", "jp2.cpp", 3454, "chroma_key_buf == NULL");
}

{
  __assert_rtn("save_box", "jp2.cpp", 3478, "!have_chroma_key");
}

{
  __assert_rtn("save_box", "jp2.cpp", 3484, "!have_chroma_key");
}

void j2_colour::init()
{
  __assert_rtn("init", "jp2.cpp", 4620, "colr->get_box_type() == jp2_colour_4cc");
}

{
  __assert_rtn("init", "jp2.cpp", 4698, "meth == 4");
}

{
  __assert_rtn("init", "jp2.cpp", 4622, "0");
}

void jp2_colour::init()
{
  __assert_rtn("init", "jp2.cpp", 4937, "state != NULL");
}

{
  __assert_rtn("init", "jp2.cpp", 5029, "state != NULL");
}

void j2_colour_converter::j2_colour_converter()
{
  __assert_rtn("j2_colour_converter", "jp2.cpp", 5781, "!skip_primary_matrix");
}

{
  __assert_rtn("j2_colour_converter", "jp2.cpp", 5641, "colour->num_colours > 0");
}

void j2_colour_converter::configure_d65_primary_transform()
{
  __assert_rtn("configure_d65_primary_transform", "jp2.cpp", 5960, "(srgb_curve == NULL) && (tone_curves[0] == NULL) && (tone_curves[1] == NULL) && (tone_curves[2] == NULL)");
}

{
  __assert_rtn("configure_d65_primary_transform", "jp2.cpp", 5966, "gamma < 1.0");
}

void j2_colour_converter::configure_lab_transform()
{
  __assert_rtn("configure_lab_transform", "jp2.cpp", 6165, "tone_curves[0] == NULL");
}

{
  __assert_rtn("configure_lab_transform", "jp2.cpp", 6187, "srgb_curve == NULL");
}

{
  __assert_rtn("configure_lab_transform", "jp2.cpp", 6243, "0");
}

void jp2_colour_converter::convert_lum()
{
  __assert_rtn("convert_lum", "jp2.cpp", 6340, "(sp != NULL) && !line.is_absolute()");
}

{
  __assert_rtn("convert_lum", "jp2.cpp", 6337, "width <= line.get_width()");
}

void jp2_colour_converter::convert_rgb()
{
  __assert_rtn("convert_rgb", "jp2.cpp", 6408, "lut1 != NULL");
}

{
  __assert_rtn("convert_rgb", "jp2.cpp", 6371, "(width <= red.get_width()) && (width <= green.get_width()) && (width <= blue.get_width())");
}

void jp2_target::write_header()
{
  __assert_rtn("write_header", "jp2.cpp", 7020, "header != NULL");
}

{
  __assert_rtn("write_header", "jp2.cpp", 7019, "!header_written");
}

void kdu_params::link()
{
  __assert_rtn("link", "params.cpp", 938, "refs != &dummy_ref");
}

{
  __assert_rtn("link", "params.cpp", 900, "(tile_idx == -1) && (comp_idx == -1)");
}

{
  __assert_rtn("link", "params.cpp", 876, "(this->tile_idx == -1) && (this->comp_idx == -1) && (this->inst_idx == 0) && (this->refs == &this->dummy_ref) && (tile_idx < num_tiles) && (comp_idx < num_comps) && (tile_idx >= -1) && (comp_idx >= -1)");
}

void kdu_params::copy_from()
{
  __assert_rtn("copy_from", "params.cpp", 1050, "target->tile_idx == target_tile");
}

{
  __assert_rtn("copy_from", "params.cpp", 1076, "dst != NULL");
}

void kdu_params::access_relation()
{
  __assert_rtn("access_relation", "params.cpp", 1335, "tile_idx >= 0");
}

{
  __assert_rtn("access_relation", "params.cpp", 1398, "result->num_comps == 0");
}

void kdu_params::get()
{
  __assert_rtn("get", "params.cpp", 1519, "(record_idx >= 0) && (field_idx >= 0)");
}

{
  __assert_rtn("get", "params.cpp", 1588, "(record_idx >= 0) && (field_idx >= 0)");
}

{
  __assert_rtn("get", "params.cpp", 1657, "(record_idx >= 0) && (field_idx >= 0)");
}

void kdu_params::set()
{
  __assert_rtn("set", "params.cpp", 1806, "(record_idx >= 0) && (record_idx < ap->num_records)");
}

{
  __assert_rtn("set", "params.cpp", 1799, "(*cp == 'I') || (*cp == 'C')");
}

{
  __assert_rtn("set", "params.cpp", 1724, "(record_idx >= 0) && (field_idx >= 0)");
}

{
  __assert_rtn("set", "params.cpp", 1868, "(record_idx >= 0) && (record_idx < ap->num_records)");
}

{
  __assert_rtn("set", "params.cpp", 1832, "(record_idx >= 0) && (field_idx >= 0)");
}

{
  __assert_rtn("set", "params.cpp", 1930, "(record_idx >= 0) && (record_idx < ap->num_records)");
}

{
  __assert_rtn("set", "params.cpp", 1894, "(record_idx >= 0) && (field_idx >= 0)");
}

void kdu_params::parse_string()
{
  __assert_rtn("parse_string", "params.cpp", 2328, "0");
}

{
  __assert_rtn("parse_string", "params.cpp", 2117, "next_inst != NULL");
}

void display_options()
{
  __assert_rtn("display_options", "params.cpp", 268, "*pattern == ']'");
}

{
  __assert_rtn("display_options", "params.cpp", 252, "*pattern == ')'");
}

{
  __assert_rtn("display_options", "params.cpp", 274, "0");
}

void kdu_params::textualize_attributes()
{
  __assert_rtn("textualize_attributes", "params.cpp", 2473, "acc == att->ival");
}

{
  __assert_rtn("textualize_attributes", "params.cpp", 2452, "val == att->ival");
}

{
  __assert_rtn("textualize_attributes", "params.cpp", 2476, "0");
}

void kdu_params::generate_marker_segments()
{
  __assert_rtn("generate_marker_segments", "params.cpp", 2778, "(comp==cluster->refs[ref_idx]) && (comp->comp_idx==c)");
}

{
  __assert_rtn("generate_marker_segments", "params.cpp", 2776, "(comp->comp_idx == -1) && (c >= 0)");
}

{
  __assert_rtn("generate_marker_segments", "params.cpp", 2814, "new_bytes >= 4");
}

void siz_params::write_marker_segment()
{
  __assert_rtn("write_marker_segment", "params.cpp", 3315, "last_marked == NULL");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 3487, "acc_length == siz_length");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 3512, "acc_length == cbd_length");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 3419, "(xto >= 0) && (yto >= 0)");
}

void mco_params::write_marker_segment()
{
  __assert_rtn("write_marker_segment", "params.cpp", 5149, "0");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 5173, "length == acc_length");
}

void cod_params::write_marker_segment()
{
  __assert_rtn("write_marker_segment", "params.cpp", 6413, "length == acc_length");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 6253, "siz != NULL");
}

void cod_params::finalize()
{
  __assert_rtn("finalize", "params.cpp", 6621, "!get(Calign_blk_last,0,1,val)");
}

{
  __assert_rtn("finalize", "params.cpp", 6768, "0");
}

{
  __assert_rtn("finalize", "params.cpp", 6829, "!get(Cblk,0,1,val)");
}

{
  __assert_rtn("finalize", "params.cpp", 6858, "0");
}

{
  __assert_rtn("finalize", "params.cpp", 6849, "siz != NULL");
}

{
  __assert_rtn("finalize", "params.cpp", 6839, "comp_idx < 0");
}

void ads_params::write_marker_segment()
{
  __assert_rtn("write_marker_segment", "params.cpp", 7643, "(ref->tile_idx < 0) && (ref->inst_idx == this->inst_idx)");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 7709, "length == acc_length");
}

void qcd_params::copy_with_xforms()
{
  __assert_rtn("copy_with_xforms", "params.cpp", 8102, "0");
}

{
  __assert_rtn("copy_with_xforms", "params.cpp", 8122, "b_in < num_level_bands");
}

{
  __assert_rtn("copy_with_xforms", "params.cpp", 8079, "0");
}

void qcd_params::write_marker_segment()
{
  __assert_rtn("write_marker_segment", "params.cpp", 8202, "ref_cod != NULL");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 8324, "length == acc_length");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 8264, "siz != NULL");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 8161, "cod != NULL");
}

void qcd_params::finalize()
{
  __assert_rtn("finalize", "params.cpp", 8478, "0");
}

{
  __assert_rtn("finalize", "params.cpp", 8485, "0");
}

{
  __assert_rtn("finalize", "params.cpp", 8629, "0");
}

{
  __assert_rtn("finalize", "params.cpp", 8615, "0");
}

{
  __assert_rtn("finalize", "params.cpp", 8489, "0");
}

{
  __assert_rtn("finalize", "params.cpp", 8472, "cod != NULL");
}

{
  __assert_rtn("finalize", "params.cpp", 8470, "cod != NULL");
}

void poc_params::write_marker_segment()
{
  __assert_rtn("write_marker_segment", "params.cpp", 8944, "(ref->tile_idx < 0) && (inst_idx == 0)");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 9052, "length == acc_length");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 8976, "0");
}

void crg_params::copy_with_xforms()
{
  __assert_rtn("copy_with_xforms", "params.cpp", 9178, "0");
}

{
  __assert_rtn("copy_with_xforms", "params.cpp", 9185, "(fact_x > 0) && (fact_y > 0)");
}

{
  __assert_rtn("copy_with_xforms", "params.cpp", 9168, "(source_siz != NULL) && (target_siz != NULL)");
}

void crg_params::write_marker_segment()
{
  __assert_rtn("write_marker_segment", "params.cpp", 9223, "last_marked == NULL");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 9262, "length == acc_length");
}

{
  __assert_rtn("write_marker_segment", "params.cpp", 9228, "0");
}

void mq_decoder::start()
{
  __assert_rtn("start", "mq_decoder.cpp", 101, "buf_start == NULL");
}

{
  __assert_rtn("start", "mq_decoder.cpp", 102, "(buffer != NULL) && (segment_length >= 0)");
}

{
  __assert_rtn("start", "mq_decoder.cpp", 100, "!active");
}

void mq_decoder::finish()
{
  __assert_rtn("finish", "mq_decoder.cpp", 149, "buf_next == (buf_start+segment_length+1)");
}

{
  __assert_rtn("finish", "mq_decoder.cpp", 142, "active && !checked_out");
}

uint64_t HEIFReadPlugin::ColorConvert(uint64_t this, __CVBuffer *a2, unint64_t a3, IIOColorConverter *a4, void *a5)
{
  if (this)
  {
    v6 = this;
    IIO_LoadHEIFSymbols();
    this = gFunc_CVPixelBufferGetPixelFormatType(v6);
    if (this == 1111970369)
    {
      this = gFunc_CVPixelBufferLockBaseAddress(v6, 0);
      if (!this)
      {
        Width = gFunc_CVPixelBufferGetWidth(v6);
        Height = gFunc_CVPixelBufferGetHeight(v6);
        BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(v6);
        BaseAddress = gFunc_CVPixelBufferGetBaseAddress(v6);
        if (BaseAddress)
        {
          v13.data = BaseAddress;
          v13.height = Height;
          v13.width = Width;
          v13.rowBytes = BytesPerRow;
          v11 = IIOColorConverter::colorConvert(a4, &v13, &v13);
          if (v11)
          {
            v12 = IIO_vImageErrorString(v11);
            LogError("ColorConvert", 91, "*** vImageConvert_AnyToAny - %s\n", v12);
          }
        }

        return gFunc_CVPixelBufferUnlockBaseAddress(v6, 0);
      }
    }
  }

  return this;
}

void kd_block_encoder::encode()
{
  __assert_rtn("encode_sig_prop_pass", "block_encoder.cpp", 427, "shift > 0");
}

{
  __assert_rtn("encode_sig_prop_pass_raw", "block_encoder.cpp", 292, "shift > 0");
}

{
  __assert_rtn("encode", "block_encoder.cpp", 1379, "first_unsized_z == t");
}

{
  __assert_rtn("encode", "block_encoder.cpp", 1457, "final");
}

{
  __assert_rtn("encode", "block_encoder.cpp", 1472, "segment_passes == 0");
}

{
  __assert_rtn("encode", "block_encoder.cpp", 1467, "first_unsized_z == (z+1)");
}

{
  __assert_rtn("encode", "block_encoder.cpp", 1473, "first_unsized_z == block->num_passes");
}

{
  __assert_rtn("encode_cleanup_pass", "block_encoder.cpp", 858, "shift > 0");
}

{
  __assert_rtn("encode", "block_encoder.cpp", 1279, "available_bytes >= segment_bytes");
}

{
  __assert_rtn("encode", "block_encoder.cpp", 1203, "block->max_samples >= ((num_stripes<<2)*num_cols)");
}

void mq_encoder::continues()
{
  __assert_rtn("continues", "mq_encoder.h", 170, "previous->active");
}

{
  __assert_rtn("continues", "mq_encoder.h", 171, "!previous->checked_out");
}

{
  __assert_rtn("continues", "mq_encoder.h", 169, "(!active) && (buf_start == NULL)");
}

void mq_encoder::finish()
{
  __assert_rtn("finish", "mq_encoder.h", 241, "!scan->active");
}

{
  __assert_rtn("finish", "mq_encoder.h", 237, "(!active) && (next == NULL)");
}

void kd_decoder::init()
{
  __assert_rtn("init", "decoder.cpp", 233, "(this->allocator == NULL) && (this->queue == NULL)");
}

{
  __assert_rtn("init", "decoder.cpp", 272, "num_per_row < block_indices.size.x");
}

void kd_decoder::pull()
{
  __assert_rtn("pull", "decoder.cpp", 400, "buffer_height > nominal_block_height");
}

{
  __assert_rtn("pull", "decoder.cpp", 411, "num_jobs_per_row == 1");
}

{
  __assert_rtn("pull", "decoder.cpp", 425, "line.get_width() == (subband_cols+pull_offset)");
}

{
  __assert_rtn("pull", "decoder.cpp", 444, "buffer_height > nominal_block_height");
}

{
  __assert_rtn("pull", "decoder.cpp", 420, "buffered_line_lim <= buffer_height");
}

{
  __assert_rtn("pull", "decoder.cpp", 381, "(queue == NULL) || (env != NULL)");
}

void kd_decoder::do_job()
{
  __assert_rtn("do_job", "decoder.cpp", 483, "idx.y < (block_indices.pos.y + block_indices.size.y)");
}

{
  __assert_rtn("do_job", "decoder.cpp", 490, "blocks_remaining > 0");
}

void kd_analysis::init()
{
  __assert_rtn("init", "analysis.cpp", 365, "step->coeffs[n] == coefficients[n]");
}

{
  __assert_rtn("init", "analysis.cpp", 443, "ns == num_vert_steps");
}

{
  __assert_rtn("init", "analysis.cpp", 445, "ns == num_hor_steps");
}

{
  __assert_rtn("init", "analysis.cpp", 380, "extend < 256");
}

{
  __assert_rtn("init", "analysis.cpp", 177, "child[LL_BAND].exists()");
}

void kd_analysis::push()
{
  __assert_rtn("push", "analysis.cpp", 674, "reversible == line.is_absolute()");
}

{
  __assert_rtn("push", "analysis.cpp", 708, "line.get_width() == (coset_width[0]+coset_width[1])");
}

{
  __assert_rtn("push", "analysis.cpp", 802, "vert_xform_exists");
}

{
  __assert_rtn("push", "analysis.cpp", 863, "vline_out != NULL");
}

{
  __assert_rtn("push", "analysis.cpp", 826, "(num_vert_steps > 0) && !unit_height");
}

{
  __assert_rtn("push", "analysis.cpp", 695, "vline_in != NULL");
}

{
  __assert_rtn("push", "analysis.cpp", 673, "y_next <= y_max");
}

void kd_vlift_queue::push_line()
{
  __assert_rtn("push_line", "transform_local.h", 127, "((idx ^ queue_idx) & 1) == 0");
}

{
  __assert_rtn("push_line", "transform_local.h", 140, "idx == (tail_idx+2)");
}

void kd_analysis::horizontal_analysis()
{
  __assert_rtn("horizontal_analysis", "analysis.cpp", 926, "(coset_width[0] == line->cosets[0].get_width()) && (coset_width[1] == line->cosets[1].get_width())");
}

{
  __assert_rtn("horizontal_analysis", "analysis.cpp", 930, "hor_xform_exists");
}

void kd_vlift_queue::access_update()
{
  __assert_rtn("access_update", "transform_local.h", 163, "result != NULL");
}

{
  __assert_rtn("access_update", "transform_local.h", 157, "(((idx ^ queue_idx) & 1) == 0) && (idx >= update_pos)");
}

void kd_synthesis::init()
{
  __assert_rtn("init", "synthesis.cpp", 243, "y_min_in[1] == y_max_in[1]");
}

{
  __assert_rtn("init", "synthesis.cpp", 291, "min_in[0] == max_in[0]");
}

{
  __assert_rtn("init", "synthesis.cpp", 298, "min_in[1] == max_in[1]");
}

{
  __assert_rtn("init", "synthesis.cpp", 448, "step->coeffs[n] == coefficients[n]");
}

{
  __assert_rtn("init", "synthesis.cpp", 549, "ns == num_vert_steps");
}

{
  __assert_rtn("init", "synthesis.cpp", 551, "ns == num_hor_steps");
}

{
  __assert_rtn("init", "synthesis.cpp", 463, "extend < 256");
}

{
  __assert_rtn("init", "synthesis.cpp", 325, "(lfill[0] >= 0) && (rfill[0] >= 0) && (lfill[0] < 256) && (rfill[0] < 256) && (lfill[1] >= 0) && (rfill[1] >= 0) && (lfill[1] < 256) && (rfill[1] < 256)");
}

{
  __assert_rtn("init", "synthesis.cpp", 172, "child[LL_BAND].exists()");
}

void kd_synthesis::pull()
{
  __assert_rtn("pull", "synthesis.cpp", 922, "step->next_row_pos == y_next_in[vsub_parity]");
}

{
  __assert_rtn("pull", "synthesis.cpp", 988, "src_off == 0");
}

{
  __assert_rtn("pull", "synthesis.cpp", 838, "y_next_out <= y_max_out");
}

uint64_t KTX2ReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v89[0] = 0;
  v8 = *(this + 59);
  v9 = *(this + 60);
  seed = 0;
  v77 = v8 < v9;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v10 = *(this + 55);
    v11 = v10 >> 24;
    v12 = MEMORY[0x1E69E9830];
    if ((v10 >> 24) <= 0x7F)
    {
      v13 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v13 = __maskrune(v11, 0x40000uLL);
      v10 = *(this + 55);
    }

    if (v13)
    {
      v14 = (v10 >> 24);
    }

    else
    {
      v14 = 46;
    }

    v15 = v10 << 8 >> 24;
    v16 = v12;
    if (v15 <= 0x7F)
    {
      v17 = *(v12 + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v15, 0x40000uLL);
      v10 = *(this + 55);
    }

    if (v17)
    {
      v18 = (v10 << 8 >> 24);
    }

    else
    {
      v18 = 46;
    }

    v19 = v10 >> 8;
    v20 = a4;
    if (v19 <= 0x7F)
    {
      v21 = *(v16 + 4 * v19 + 60) & 0x40000;
    }

    else
    {
      v21 = __maskrune(v19, 0x40000uLL);
      v10 = *(this + 55);
    }

    if (v21)
    {
      v22 = (v10 >> 8);
    }

    else
    {
      v22 = 46;
    }

    if (v10 <= 0x7F)
    {
      if ((*(v16 + 4 * v10 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v10, 0x40000uLL))
    {
LABEL_22:
      v23 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v14, v18, v22, v23, iioTypeStr[a3], "virtual OSStatus KTX2ReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      a4 = v20;
      goto LABEL_26;
    }

    v23 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v24 = *(this + 3);
  if (v24)
  {
    IIOImageReadSession::mapData(v24);
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v31) = *(this + 77);
    v30 = v31;
    v32 = *(this + 78);
    v28 = v32;
    v80 = *(this + 79) * v32;
    BaseAddress = _ImageIO_Malloc(v80, *(this + 52), v89, kImageMalloc_KTX2_Data[0], 0, 0);
    v29 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      return 0;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v80 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v89[0] = v80;
    v28 = 0.0;
    v29 = 1;
    v30 = 0.0;
  }

  if (!BaseAddress || (v33 = *(this + 77), v34 = *(this + 78), v35 = BaseAddress, v8 < v9) && (v35 = malloc_type_calloc(*(this + 78), *(this + 79), 0x100004077774924uLL)) == 0)
  {
    v77 = 0;
    v51 = 0;
LABEL_68:
    if (!v29)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v78 = BaseAddress;
  v79 = v35;
  v74 = v29;
  v75 = a4;
  v76 = a3;
  v84 = *(this + 56);
  v85 = v35;
  v86 = v80;
  v87 = 0;
  KTXTexture = *(this + 58);
  if (!KTXTexture)
  {
    KTXTexture = CreateKTXTexture(*(this + 3));
    *(this + 58) = KTXTexture;
  }

  (*(*(KTXTexture + 8) + 40))();
  if (v8 < v9)
  {
    v37 = *(this + 59);
    v38 = *(this + 128);
    if (v37 == 3 && v38 == 8)
    {
      dest.data = v79;
      dest.height = v34;
      dest.width = v33;
      dest.rowBytes = (3 * v33 + 3) & 0x7FFFFFFFCLL;
      v82.data = BaseAddress;
      v82.height = v34;
      v82.width = v33;
      v82.rowBytes = 4 * v33;
      vImageConvert_RGB888toRGBA8888(&dest, 0, 0xFFu, &v82, 0, 0);
    }

    else
    {
      v81 = v34;
      if (v38 == 32)
      {
        if (*(this + 373))
        {
          v66 = 1006632960;
        }

        else
        {
          v66 = -1;
        }

        if (v34)
        {
          v67 = 0;
          v68 = 4 * v37;
          v69 = (12 - 4 * v37);
          v70 = 4 * (*(this + 59) & 0x3FFFFFFFLL);
          v72 = v78;
          v71 = v79;
          do
          {
            for (i = v33; i; --i)
            {
              memcpy(v72, v71, v70);
              if (v68 != 12)
              {
                bzero(&v72[4 * *(this + 59)], v69);
              }

              *(v72 + 3) = v66;
              v71 += 4 * *(this + 59);
              v72 += 16;
            }

            ++v67;
          }

          while (v67 != v81);
        }
      }

      else if (v38 == 16)
      {
        if (*(this + 373))
        {
          v58 = 15360;
        }

        else
        {
          v58 = -1;
        }

        if (v34)
        {
          v59 = 0;
          v60 = 2 * v37;
          v61 = (6 - 2 * v37);
          v62 = 2 * (*(this + 59) & 0x7FFFFFFFLL);
          v64 = v78;
          v63 = v79;
          do
          {
            for (j = v33; j; --j)
            {
              memcpy(v64, v63, v62);
              if (v60 != 6)
              {
                bzero(&v64[2 * *(this + 59)], v61);
              }

              *(v64 + 3) = v58;
              v63 += 2 * *(this + 59);
              v64 += 8;
            }

            ++v59;
          }

          while (v59 != v81);
        }
      }

      else if (v38 == 8 && v34)
      {
        v40 = 0;
        v41 = (3 - v37);
        v42 = v37;
        v43 = BaseAddress;
        v44 = v79;
        do
        {
          for (k = v33; k; --k)
          {
            memcpy(v43, v44, v42);
            if (v42 != 3)
            {
              bzero(&v43[*(this + 59)], v41);
            }

            v43[3] = -1;
            v44 += *(this + 59);
            v43 += 4;
          }

          ++v40;
        }

        while (v40 != v34);
      }
    }
  }

  a3 = v76;
  a4 = v75;
  v29 = v74;
  BaseAddress = v78;
  if (*(this + 161) == 32 && *(this + 160) == 8)
  {
    dest.data = v78;
    v46 = *(this + 308);
    v47.i64[0] = v46;
    v47.i64[1] = HIDWORD(v46);
    *&dest.height = vextq_s8(v47, v47, 8uLL);
    dest.rowBytes = *(this + 79);
    v48 = *(this + 122);
    if (*(this + 437))
    {
      if (v48 != 1)
      {
        goto LABEL_62;
      }
    }

    else if (v48)
    {
LABEL_62:
      if (*(this + 438) == 1)
      {
        vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
      }

      goto LABEL_64;
    }

    LODWORD(v82.data) = 50331906;
    vImagePermuteChannels_ARGB8888(&dest, &dest, &v82, 0x10u);
    goto LABEL_62;
  }

LABEL_64:
  if (v76 != 3)
  {
    BlockArray = 0;
    v51 = v79;
    goto LABEL_68;
  }

  v49 = 0;
  v90.origin.x = 0.0;
  v90.origin.y = 0.0;
  v90.size.width = v30;
  v90.size.height = v28;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, v78, v80, v90, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v50 = 0;
  }

  else
  {
    v91.origin.x = 0.0;
    v91.origin.y = 0.0;
    v91.size.width = v30;
    v91.size.height = v28;
    *(&v50 - 1) = CGRectUnion(*(this + 120), v91);
    v49 = v55;
    v30 = v56;
    v28 = v57;
  }

  v51 = v79;
  BlockArray = 0;
  BaseAddress = 0;
  *(this + 15) = v49;
  *(this + 16) = v50;
  *(this + 17) = v30;
  *(this + 18) = v28;
  if ((v74 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_69:
  v52 = *a4;
  v53 = v51;
  IOSurfaceUnlock(v52, 0, &seed);
  v51 = v53;
LABEL_70:
  if (v51 && v77)
  {
    free(v51);
  }

  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v89[0]);
  }

  return BlockArray;
}

void kd_encoder::init()
{
  __assert_rtn("init", "encoder.cpp", 229, "(this->allocator == NULL) && (this->queue == NULL)");
}

{
  __assert_rtn("init", "encoder.cpp", 266, "num_per_row < block_indices.size.x");
}

void kd_encoder::push()
{
  __assert_rtn("push", "encoder.cpp", 404, "line.get_width() == subband_cols");
}

{
  __assert_rtn("push", "encoder.cpp", 438, "free_line_lim <= nominal_block_height");
}

{
  __assert_rtn("push", "encoder.cpp", 447, "num_jobs_per_row == 1");
}

{
  __assert_rtn("push", "encoder.cpp", 456, "free_line_lim <= buffer_height");
}

{
  __assert_rtn("push", "encoder.cpp", 400, "free_line_lim <= buffer_height");
}

{
  __assert_rtn("push", "encoder.cpp", 388, "queue != NULL");
}

{
  __assert_rtn("push", "encoder.cpp", 381, "subband_rows > 0");
}

{
  __assert_rtn("push", "encoder.cpp", 355, "(queue == NULL) || (env != NULL)");
}

void kd_encoder::do_job()
{
  __assert_rtn("do_job", "encoder.cpp", 485, "idx.y < (block_indices.pos.y + block_indices.size.y)");
}

{
  __assert_rtn("do_job", "encoder.cpp", 528, "(xfer_size.x == block->region.size.x) && (xfer_size.y == block->region.size.y) && (0 == block->region.pos.x) && (0 == block->region.pos.y)");
}

{
  __assert_rtn("do_job", "encoder.cpp", 717, "downshift >= K_max");
}

{
  __assert_rtn("do_job", "encoder.cpp", 622, "upshift >= 0");
}

{
  __assert_rtn("do_job", "encoder.cpp", 531, "(xfer_size.x+offset) <= subband_cols");
}

{
  __assert_rtn("do_job", "encoder.cpp", 519, "num_samples > 0");
}

{
  __assert_rtn("do_job", "encoder.cpp", 492, "blocks_remaining > 0");
}

void kd_multi_line::reset()
{
  __assert_rtn("reset", "multi_transform.cpp", 90, "line.is_absolute() == reversible");
}

{
  __assert_rtn("reset", "multi_transform.cpp", 110, "0");
}

void kd_multi_line::copy()
{
  __assert_rtn("copy", "multi_transform.cpp", 186, "src->size.x == size.x");
}

{
  __assert_rtn("copy", "multi_transform.cpp", 193, "src->reversible");
}

void kd_multi_transform::construct()
{
  __assert_rtn("construct", "multi_transform.cpp", 309, "0");
}

{
  __assert_rtn("construct", "multi_transform.cpp", 378, "collection->num_components == num_stage_inputs");
}

{
  __assert_rtn("construct", "multi_transform.cpp", 521, "src_line->bypass == NULL");
}

{
  __assert_rtn("construct", "multi_transform.cpp", 522, "tgt_line->reversible == src_line->reversible");
}

{
  __assert_rtn("construct", "multi_transform.cpp", 518, "(n < block->num_dependencies) && (src_line != NULL)");
}

{
  __assert_rtn("construct", "multi_transform.cpp", 489, "line->is_constant && !line->reversible");
}

void kd_multi_transform::propagate_knowledge()
{
  __assert_rtn("propagate_knowledge", "multi_transform.cpp", 676, "have_xform_size");
}

{
  __assert_rtn("propagate_knowledge", "multi_transform.cpp", 691, "have_xform_size");
}

{
  __assert_rtn("propagate_knowledge", "multi_transform.cpp", 589, "block->num_dependencies <= block->num_components");
}

{
  __assert_rtn("propagate_knowledge", "multi_transform.cpp", 560, "codestream_collection->num_components >= 3");
}

void kd_multi_transform::create_resources()
{
  __assert_rtn("create_resources", "multi_transform.cpp", 745, "codestream_collection->components[n] == &(comp->line)");
}

{
  __assert_rtn("create_resources", "multi_transform.cpp", 819, "line->is_constant");
}

void kd_multi_synthesis::get_line()
{
  __assert_rtn("get_line", "multi_transform.cpp", 984, "(comp_idx >= 0) && (comp_idx < output_collection->num_components)");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1003, "line->bypass == NULL");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1016, "line->row_idx == (tgt_row_idx-1)");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1057, "scan->row_idx == tgt_row_idx");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1066, "(scan->outstanding_consumers == 0) && (scan->row_idx == (tgt_row_idx-1))");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1025, "(n >= 0) && (n < block->num_dependencies)");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1026, "dep != NULL");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1076, "codestream_collection->components[n] == line");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1083, "ycc_line->row_idx == (tgt_row_idx-1)");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1114, "((comp->env_queue == NULL) && (env == NULL)) || ((comp->env_queue != NULL) && (env != NULL))");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1154, "(line->row_idx == tgt_row_idx) && (line->outstanding_consumers > 0)");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1096, "(env != NULL) && (comp->num_rows_in_progress > 0)");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1075, "n >= 0");
}

{
  __assert_rtn("get_line", "multi_transform.cpp", 1008, "line->outstanding_consumers > 0");
}

void kd_multi_analysis::exchange_line()
{
  __assert_rtn("exchange_line", "multi_transform.cpp", 1416, "(comp_idx >= 0) && (comp_idx < output_collection->num_components)");
}

{
  __assert_rtn("exchange_line", "multi_transform.cpp", 1421, "line->num_consumers == 1");
}

{
  __assert_rtn("exchange_line", "multi_transform.cpp", 1424, "(written == &(line->line)) && !line->waiting_for_inversion");
}

{
  __assert_rtn("exchange_line", "multi_transform.cpp", 1429, "line->row_idx == (row_idx-1)");
}

void kd_multi_analysis::advance_line()
{
  __assert_rtn("advance_line", "multi_transform.cpp", 1444, "line->num_consumers == 1");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1445, "line->row_idx==(new_row_idx-1)");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1496, "dep->num_consumers > 1");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1511, "block->components[n].num_consumers == 1");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1456, "(n >= 0) && (n < block->num_dependencies)");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1460, "dep->num_consumers > 1");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1466, "(dep->num_consumers > 0) && !dep->is_constant");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1520, "codestream_collection->components[n] == line");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1538, "ycc_lines[n]->waiting_for_inversion");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1567, "((comp->env_queue == NULL) && (env == NULL)) || ((comp->env_queue != NULL) && (env != NULL))");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1586, "!line->waiting_for_inversion");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1549, "env != NULL");
}

{
  __assert_rtn("advance_line", "multi_transform.cpp", 1519, "n >= 0");
}

void kd_multi_rxform_block::initialize()
{
  __assert_rtn("initialize", "multi_transform.cpp", 2231, "(num_stage_inputs == input_collection->num_components) && (num_stage_outputs == output_collection->num_components)");
}

{
  __assert_rtn("initialize", "multi_transform.cpp", 2219, "N >= num_block_outputs");
}

void kd_multi_rxform_block::perform_transform()
{
  __assert_rtn("perform_transform", "multi_transform.cpp", 2305, "num_dependencies == N");
}

{
  __assert_rtn("perform_transform", "multi_transform.cpp", 2356, "n == N");
}

{
  __assert_rtn("perform_transform", "multi_transform.cpp", 2382, "n == N");
}

void kd_multi_rxform_block::perform_inverse()
{
  __assert_rtn("perform_inverse", "multi_transform.cpp", 2454, "n == N");
}

{
  __assert_rtn("perform_inverse", "multi_transform.cpp", 2480, "n == N");
}

void kd_multi_dependency_block::initialize()
{
  __assert_rtn("initialize", "multi_transform.cpp", 2531, "(num_stage_inputs == input_collection->num_components) && (num_stage_outputs == output_collection->num_components)");
}

{
  __assert_rtn("initialize", "multi_transform.cpp", 2577, "(f_cf-f_matrix) == (N*N)");
}

{
  __assert_rtn("initialize", "multi_transform.cpp", 2567, "!is_reversible");
}

{
  __assert_rtn("initialize", "multi_transform.cpp", 2545, "is_reversible");
}

{
  __assert_rtn("initialize", "multi_transform.cpp", 2556, "(i_cf-i_matrix) == (N*N)");
}

{
  __assert_rtn("initialize", "multi_transform.cpp", 2521, "N >= num_block_outputs");
}

void kd_multi_dependency_block::perform_inverse()
{
  __assert_rtn("perform_inverse", "multi_transform.cpp", 2895, "num_dependencies == N");
}

{
  __assert_rtn("perform_inverse", "multi_transform.cpp", 2941, "!(dep->reversible || line->reversible)");
}

void kd_multi_dwt_block::initialize()
{
  __assert_rtn("initialize", "multi_transform.cpp", 3033, "(num_stage_inputs == input_collection->num_components) && (num_stage_outputs == output_collection->num_components)");
}

{
  __assert_rtn("initialize", "multi_transform.cpp", 3097, "(loc >= canvas_min) && (loc < canvas_lim)");
}

{
  __assert_rtn("initialize", "multi_transform.cpp", 3043, "(step_info != NULL) && (num_levels > 0)");
}

void kd_multi_dwt_block::perform_transform()
{
  __assert_rtn("perform_transform", "multi_transform.cpp", 3635, "(k >= 0) && (k < lev->region_size)");
}

{
  __assert_rtn("perform_transform", "multi_transform.cpp", 3648, "0");
}

{
  __assert_rtn("perform_transform", "multi_transform.cpp", 3609, "lev->normalizing_shift == 0");
}

void kd_multi_dwt_block::perform_inverse()
{
  __assert_rtn("perform_inverse", "multi_transform.cpp", 3771, "(k >= 0) && (k < lev->region_size)");
}

{
  __assert_rtn("perform_inverse", "multi_transform.cpp", 3784, "0");
}

{
  __assert_rtn("perform_inverse", "multi_transform.cpp", 3706, "lev->normalizing_shift == 0");
}

{
  __assert_rtn("perform_inverse", "multi_transform.cpp", 3810, "!dep->reversible");
}

void kdrc_overlay::set_buffer_surface()
{
  __assert_rtn("set_buffer_surface", "kdu_region_compositor.cpp", 609, "next == NULL");
}

{
  __assert_rtn("set_buffer_surface", "kdu_region_compositor.cpp", 629, "((head == NULL) && (tail == NULL)) || ((tail != NULL) && (tail->next == NULL))");
}

{
  __assert_rtn("set_buffer_surface", "kdu_region_compositor.cpp", 549, "(expansion_numerator.x > 0) && (expansion_numerator.y > 0) && (expansion_denominator.x > 0) && (expansion_denominator.y > 0)");
}

{
  __assert_rtn("set_buffer_surface", "kdu_region_compositor.cpp", 545, "compositor != NULL");
}

void kdrc_overlay::map_from_compositing_grid()
{
  __assert_rtn("long_floor_ratio", "kdu_utils.h", 259, "(num <= (kdu_long) KDU_INT32_MAX)");
}

{
  __assert_rtn("long_floor_ratio", "kdu_utils.h", 254, "(num >= (kdu_long) KDU_INT32_MIN)");
}

void kdrc_codestream::init()
{
  __assert_rtn("init", "kdu_region_compositor.cpp", 926, "!ifc");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 944, "!ifc");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 962, "!ifc");
}

void kdrc_codestream::attach()
{
  __assert_rtn("attach", "kdu_region_compositor.cpp", 997, "user->codestream == NULL");
}

{
  __assert_rtn("attach", "kdu_region_compositor.cpp", 1002, "head->prev_codestream_user == NULL");
}

{
  __assert_rtn("attach", "kdu_region_compositor.cpp", 1013, "!in_use");
}

void kdrc_codestream::detach()
{
  __assert_rtn("detach", "kdu_region_compositor.cpp", 1027, "user->codestream == this");
}

{
  __assert_rtn("detach", "kdu_region_compositor.cpp", 1037, "user != head");
}

{
  __assert_rtn("detach", "kdu_region_compositor.cpp", 1030, "user == head");
}

void kdrc_codestream::move_to_head()
{
  __assert_rtn("move_to_head", "kdu_region_compositor.cpp", 1057, "user->codestream == this");
}

{
  __assert_rtn("move_to_head", "kdu_region_compositor.cpp", 1069, "user != head");
}

{
  __assert_rtn("move_to_head", "kdu_region_compositor.cpp", 1062, "user == head");
}

{
  __assert_rtn("move_to_head", "kdu_region_compositor.cpp", 1082, "head->prev_codestream_user == NULL");
}

{
  __assert_rtn("move_to_head", "kdu_region_compositor.cpp", 1092, "!in_use");
}

void kdrc_codestream::move_to_tail()
{
  __assert_rtn("move_to_tail", "kdu_region_compositor.cpp", 1102, "user->codestream == this");
}

{
  __assert_rtn("move_to_tail", "kdu_region_compositor.cpp", 1114, "user != head");
}

{
  __assert_rtn("move_to_tail", "kdu_region_compositor.cpp", 1107, "user == head");
}

{
  __assert_rtn("move_to_tail", "kdu_region_compositor.cpp", 1136, "!in_use");
}

void kdrc_stream::init()
{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1206, "overlay == NULL");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1213, "codestream == NULL");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1217, "codestream == sibling->codestream");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1230, "codestream == cs");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1254, "overlay == NULL");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1262, "codestream == NULL");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1266, "codestream == sibling->codestream");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1279, "codestream == cs");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1361, "mapping.num_channels == (mapping.num_colour_channels + ((have_alpha)?1:0))");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1382, "overlay == NULL");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1398, "codestream == NULL");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1402, "codestream == sibling->codestream");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 1415, "codestream == cs");
}

void kdrc_stream::set_scale()
{
  __assert_rtn("set_scale", "kdu_region_compositor.cpp", 1820, "expansion_denominator.y > 0");
}

{
  __assert_rtn("set_scale", "kdu_region_compositor.cpp", 1805, "expansion_denominator.x > 0");
}

void kdrc_stream::process()
{
  __assert_rtn("process", "kdu_region_compositor.cpp", 2376, "!codestream->in_use");
}

{
  __assert_rtn("process", "kdu_region_compositor.cpp", 2321, "buffer != NULL");
}

void kdrc_stream::adjust_refresh()
{
  __assert_rtn("adjust_refresh", "kdu_region_compositor.cpp", 2522, "have_valid_scale");
}

{
  __assert_rtn("adjust_refresh", "kdu_region_compositor.cpp", 2537, "(left >= 0) && (right >= 0) && (top >= 0) && (bottom >= 0)");
}

void kdu_region_compositor::remove_stream()
{
  __assert_rtn("remove_stream", "kdu_region_compositor.cpp", 5946, "(jpx_src != NULL) && single_component_box.exists()");
}

{
  __assert_rtn("remove_stream", "kdu_region_compositor.cpp", 5943, "scan != NULL");
}

void kdrc_layer::init()
{
  __assert_rtn("init", "kdu_region_compositor.cpp", 2631, "(streams[0] == NULL) && (streams[1] == NULL)");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 2746, "(streams[0] == NULL) && (streams[1] == NULL)");
}

{
  __assert_rtn("init", "kdu_region_compositor.cpp", 2780, "stream_idx >= 0");
}

void kdu_region_compositor::add_active_stream()
{
  __assert_rtn("add_active_stream", "kdu_region_compositor.cpp", 5873, "track != NULL");
}

{
  __assert_rtn("add_active_stream", "kdu_region_compositor.cpp", 5879, "0");
}

{
  __assert_rtn("add_active_stream", "kdu_region_compositor.cpp", 5838, "raw_src == NULL");
}

void kdrc_layer::activate()
{
  __assert_rtn("activate", "kdu_region_compositor.cpp", 2888, "overlay == NULL");
}

{
  __assert_rtn("activate", "kdu_region_compositor.cpp", 2899, "0");
}

void kdrc_layer::set_buffer_surface()
{
  __assert_rtn("set_buffer_surface", "kdu_region_compositor.cpp", 3124, "(next == NULL) && (prev == NULL) && (whole_region == visible_region) && (overlay_buffer == NULL)");
}

{
  __assert_rtn("set_buffer_surface", "kdu_region_compositor.cpp", 3122, "!read_access_required");
}

void kdu_region_compositor::donate_compositing_buffer()
{
  __assert_rtn("donate_compositing_buffer", "kdu_region_compositor.cpp", 5742, "this->composition_buffer == NULL");
}

{
  __assert_rtn("donate_compositing_buffer", "kdu_region_compositor.cpp", 5743, "this->buffer_region == buffer_region");
}

{
  __assert_rtn("donate_compositing_buffer", "kdu_region_compositor.cpp", 5744, "(active_layers != NULL) && active_layers->have_overlay_info");
}

void kdrc_layer::update_composition()
{
  __assert_rtn("update_composition", "kdu_region_compositor.cpp", 3579, "(bytesPerPixel == 4) && (compositingBytesPP == 4)");
}

{
  __assert_rtn("update_composition", "kdu_region_compositor.cpp", 3540, "have_valid_scale && (buffer != NULL)");
}

void kdu_region_compositor::remove_compositing_layer()
{
  __assert_rtn("remove_compositing_layer", "kdu_region_compositor.cpp", 4356, "scan == active_layers");
}

{
  __assert_rtn("remove_compositing_layer", "kdu_region_compositor.cpp", 4368, "scan != last_active_layer");
}

{
  __assert_rtn("remove_compositing_layer", "kdu_region_compositor.cpp", 4363, "scan == last_active_layer");
}

void kdu_region_compositor::add_compositing_layer()
{
  __assert_rtn("add_compositing_layer", "kdu_region_compositor.cpp", 4068, "active_streams == NULL");
}

{
  __assert_rtn("add_compositing_layer", "kdu_region_compositor.cpp", 4126, "scan == active_layers");
}

{
  __assert_rtn("add_compositing_layer", "kdu_region_compositor.cpp", 4138, "scan != last_active_layer");
}

{
  __assert_rtn("add_compositing_layer", "kdu_region_compositor.cpp", 4133, "scan == last_active_layer");
}

{
  __assert_rtn("add_compositing_layer", "kdu_region_compositor.cpp", 4170, "active_layers == NULL");
}

{
  __assert_rtn("add_compositing_layer", "kdu_region_compositor.cpp", 4101, "mj2_src != NULL");
}

void kdu_region_compositor::set_single_component()
{
  __assert_rtn("set_single_component", "kdu_region_compositor.cpp", 4432, "last_active_layer == NULL");
}

{
  __assert_rtn("set_single_component", "kdu_region_compositor.cpp", 4492, "active_streams->codestream_idx == stream_idx");
}

{
  __assert_rtn("set_single_component", "kdu_region_compositor.cpp", 4463, "mj2_src != NULL");
}

void kdu_region_compositor::set_buffer_surface()
{
  __assert_rtn("set_buffer_surface", "kdu_region_compositor.cpp", 4596, "(needed_left >= 0) && (needed_right >= 0) && (needed_above >= 0) && (needed_below >= 0)");
}

{
  __assert_rtn("set_buffer_surface", "kdu_region_compositor.cpp", 4568, "(active_streams != NULL) && (active_streams->next == NULL) && (composition_buffer != NULL)");
}

void kdu_region_compositor::process()
{
  __assert_rtn("process", "kdu_region_compositor.cpp", 5158, "invalid_scale_code != 0");
}

{
  __assert_rtn("process", "kdu_region_compositor.cpp", 5153, "!target->is_complete");
}

void jx_composition::finish()
{
  __assert_rtn("finish", "jpx.cpp", 1405, "comp_in.get_box_type() == jp2_composition_4cc");
}

{
  __assert_rtn("finish", "jpx.cpp", 1519, "remaining == 0");
}

{
  __assert_rtn("finish", "jpx.cpp", 1520, "max_repeats >= 0");
}

void jx_source::parse_next_top_level_box()
{
  __assert_rtn("parse_next_top_level_box", "jpx.cpp", 5587, "!top_box");
}

{
  __assert_rtn("parse_next_top_level_box", "jpx.cpp", 5740, "!top_box");
}

{
  __assert_rtn("parse_next_top_level_box", "jpx.cpp", 5726, "!top_box");
}

{
  __assert_rtn("parse_next_top_level_box", "jpx.cpp", 5706, "!top_box");
}

{
  __assert_rtn("parse_next_top_level_box", "jpx.cpp", 5675, "!top_box");
}

{
  __assert_rtn("parse_next_top_level_box", "jpx.cpp", 5631, "!dtbl_box");
}

{
  __assert_rtn("parse_next_top_level_box", "jpx.cpp", 5755, "!top_box");
}

{
  __assert_rtn("parse_next_top_level_box", "jpx.cpp", 5582, "!already_open");
}

void jx_composition::remove_invisible_instructions()
{
  __assert_rtn("remove_invisible_instructions", "jpx.cpp", 1748, "fp->head == ip");
}

{
  __assert_rtn("remove_invisible_instructions", "jpx.cpp", 1755, "fp->tail == ip");
}

{
  __assert_rtn("remove_invisible_instructions", "jpx.cpp", 1765, "fp->num_instructions == 0");
}

{
  __assert_rtn("remove_invisible_instructions", "jpx.cpp", 1768, "head == fp");
}

{
  __assert_rtn("remove_invisible_instructions", "jpx.cpp", 1778, "tail == fp");
}

void jx_metagroup::unlink()
{
  __assert_rtn("unlink", "jpx.cpp", 3681, "node->metagroup == this");
}

{
  __assert_rtn("unlink", "jpx.cpp", 3684, "node == head");
}

{
  __assert_rtn("unlink", "jpx.cpp", 3691, "node == tail");
}

{
  __assert_rtn("unlink", "jpx.cpp", 3702, "roig->level == 0");
}

{
  __assert_rtn("unlink", "jpx.cpp", 3704, "(offset >= 0) && (offset < (JX_ROIGROUP_SIZE*JX_ROIGROUP_SIZE))");
}

void jx_metanode::finish_reading()
{
  __assert_rtn("finish_reading", "jpx.cpp", 2819, "read_state->asoc.exists()");
}

{
  __assert_rtn("finish_reading", "jpx.cpp", 2966, "read_state->asoc.exists()");
}

{
  __assert_rtn("finish_reading", "jpx.cpp", 2967, "!read_state->box");
}

{
  __assert_rtn("finish_reading", "jpx.cpp", 2811, "box_complete && descendants_known");
}

void jx_codestream_source::finish()
{
  __assert_rtn("finish", "jpx.cpp", 4910, "!chdr");
}

{
  __assert_rtn("finish", "jpx.cpp", 4879, "!sub_box.exists()");
}

void jx_layer_source::finish()
{
  __assert_rtn("finish", "jpx.cpp", 5256, "!jplh");
}

{
  __assert_rtn("finish", "jpx.cpp", 5348, "cs != NULL");
}

{
  __assert_rtn("access_dimensions", "jpx.cpp", 5028, "(state != NULL) && state->metadata_finished");
}

{
  __assert_rtn("finish", "jpx.cpp", 5224, "!sub_box.exists()");
}

void jx_roigroup::delete_child()
{
  __assert_rtn("delete_child", "jpx.cpp", 3785, "sub_groups[offset] != NULL");
}

{
  __assert_rtn("delete_child", "jpx.cpp", 3778, "metagroups[offset].head == NULL");
}

{
  __assert_rtn("delete_child", "jpx.cpp", 3807, "(loc.x >= 0) && (loc.x < JX_ROIGROUP_SIZE) && (loc.y >= 0) && (loc.y < JX_ROIGROUP_SIZE)");
}

{
  __assert_rtn("delete_child", "jpx.cpp", 3808, "this == parent->sub_groups[loc.x+loc.y*JX_ROIGROUP_SIZE]");
}

{
  __assert_rtn("delete_child", "jpx.cpp", 3797, "this == manager->roi_scales[scale_idx]");
}

{
  __assert_rtn("delete_child", "jpx.cpp", 3773, "(loc.x >= 0) && (loc.x < JX_ROIGROUP_SIZE) && (loc.y >= 0) && (loc.y < JX_ROIGROUP_SIZE)");
}

void jpx_meta_manager::enumerate_matches()
{
  __assert_rtn("enumerate_matches", "jpx.cpp", 4263, "(offset>=0) && (offset<(JX_ROIGROUP_SIZE*JX_ROIGROUP_SIZE))");
}

{
  __assert_rtn("enumerate_matches", "jpx.cpp", 4316, "(loc.x >= 0) && (loc.x < JX_ROIGROUP_SIZE) && (loc.y >= 0) && (loc.y < JX_ROIGROUP_SIZE)");
}

{
  __assert_rtn("enumerate_matches", "jpx.cpp", 4350, "(node->rep_id == JX_ROI_NODE) && (node->regions != NULL)");
}

{
  __assert_rtn("enumerate_matches", "jpx.cpp", 4337, "(loc.x<JX_ROIGROUP_SIZE) && (loc.y<JX_ROIGROUP_SIZE)");
}

{
  __assert_rtn("enumerate_matches", "jpx.cpp", 4451, "node->metagroup == &state->unassociated_nodes");
}

{
  __assert_rtn("enumerate_matches", "jpx.cpp", 4407, "node->metagroup == &state->numlist_nodes");
}

void jpx_codestream_source::open_stream()
{
  __assert_rtn("open_stream", "jpx.cpp", 5098, "state->stream_box.exists()");
}

{
  __assert_rtn("open_stream", "jpx.cpp", 5091, "state != NULL");
}

void jpx_source::open()
{
  __assert_rtn("open", "jpx.cpp", 5989, "!state->top_box");
}

{
  __assert_rtn("open", "jpx.cpp", 6027, "!state->top_box");
}

{
  __assert_rtn("open", "jpx.cpp", 6002, "!state->have_reader_requirements");
}

void jx_codestream_source::jx_codestream_source(j2_palette *a1, void *a2, jp2_input_box *a3)
{
  j2_palette::~j2_palette(a1);
  if (*a2)
  {
    MEMORY[0x186602830](*a2, 0x1000C8052888210);
  }

  jp2_input_box::~jp2_input_box(a3);
}

uint64_t HandleSupercompressionScheme(uint64_t result, void *a2)
{
  if (result)
  {
    switch(*(result + 136))
    {
      case 0:

        result = ExtractFormatFromDFD(result, a2);
        break;
      case 1:
        *a2 = &HandleSupercompressionScheme(ktxTexture2 *,Ktx2FormatInfo *&)::basisInfo;
        result = 1;
        break;
      case 2:

        result = HandleZstdCompression(result, a2);
        break;
      case 3:

        result = HandleZlibCompression(result, a2);
        break;
      default:
        _cg_jpeg_mem_term("HandleSupercompressionScheme", 578, "*** ERROR: Unsupported supercompression scheme: %d\n");
        result = 1;
        break;
    }
  }

  return result;
}

__CFArray *IIOArrayCreateDeepCopy(__CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v4 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    if (v4)
    {
      v5 = v4;
      v14.location = 0;
      v14.length = Count;
      CFArrayGetValues(a1, v14, v4);
      if (Count >= 1)
      {
        v6 = v5;
        while (1)
        {
          v7 = CFGetTypeID(*v6);
          TypeID = CFDictionaryGetTypeID();
          v9 = *v6;
          if (v7 == TypeID)
          {
            break;
          }

          v10 = CFGetTypeID(v9);
          if (v10 == CFArrayGetTypeID())
          {
            DeepCopy = IIOArrayCreateDeepCopy(*v6);
            if (DeepCopy)
            {
              goto LABEL_14;
            }
          }

          else
          {
            CFArrayAppendValue(Mutable, *v6);
          }

LABEL_9:
          ++v6;
          if (!--Count)
          {
            goto LABEL_15;
          }
        }

        DeepCopy = IIODictionaryCreateDeepCopy(v9);
        if (!DeepCopy)
        {
          goto LABEL_9;
        }

LABEL_14:
        v12 = DeepCopy;
        CFArrayAppendValue(Mutable, DeepCopy);
        CFRelease(v12);
        goto LABEL_9;
      }

LABEL_15:
      free(v5);
    }
  }

  return Mutable;
}

size_t ___ZN14PBMWritePlugin14write_P1_ASCIIEP7CGImageP13IIODictionary_block_invoke(size_t result, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3[1])
  {
    v4 = result;
    v5 = 0;
    v6 = *(result + 32);
    v11 = 0;
    memset(__ptr, 0, sizeof(__ptr));
    while (!a3[2])
    {
      v8 = 0;
LABEL_12:
      result = IIOImageWriteSession::putBytes(*(v6 + 16), __ptr, v8);
      if (++v5 >= a3[1])
      {
        return result;
      }
    }

    v7 = 0;
    v8 = 0;
    v9 = *a3 + a3[3] * v5;
    while (1)
    {
      result = snprintf(__ptr + v8, 100 - v8, *(v4 + 40), *(v9 + v7) < 0x81u);
      if (result < 1)
      {
        break;
      }

      v8 += result;
      if (v8 > 100 - 5 * *(v4 + 48))
      {
        *(__ptr + v8 - 1) = 10;
        IIOImageWriteSession::putBytes(*(v6 + 16), __ptr, v8);
        v8 = 0;
      }

      if (++v7 >= a3[2])
      {
        if (v8)
        {
          *(__ptr + v8 - 1) = 10;
        }

        goto LABEL_12;
      }
    }
  }

  return result;
}

void ColorQuantization::addColorNode(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a2;
  v9 = (a5 >> 6) & 2 | (a4 >> 5) & 4 | (a6 >> 7);
  v10 = a7 - 8;
  if (a7 == 8)
  {
    v11 = a2;
  }

  else
  {
    v12 = a6;
    v13 = a5;
    v14 = a4;
    do
    {
      v11 = *(v8 + 8 * v9);
      if (!v11)
      {
        v15 = malloc_type_malloc(0x40uLL, 0x80040A284212CuLL);
        *(v8 + 8 * v9) = v15;
        if (!v15)
        {
          return;
        }

        v15[2] = 0u;
        v15[3] = 0u;
        *v15 = 0u;
        v15[1] = 0u;
        v11 = *(v8 + 8 * v9);
      }

      v16 = v14 >> 4;
      v14 *= 2;
      v17 = v16 & 4 | (v13 >> 5) & 3;
      v13 *= 2;
      v9 = v17 & 0xFFFFFFFE | (v12 >> 6) & 1;
      v12 *= 2;
      v8 = v11;
    }

    while (!__CFADD__(v10++, 1));
  }

  if (!*(v11 + 8 * v9))
  {
    v19 = malloc_type_malloc(2uLL, 0x1000040BDFB0063uLL);
    *(v11 + 8 * v9) = v19;
    if (v19)
    {
      *v19 = a3;
    }
  }
}

uint64_t ColorQuantization::generateFromGrayImage(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, _BYTE *a8, _DWORD *a9)
{
  v68 = *MEMORY[0x1E69E9840];
  v14 = *(a2 + 16);
  v62 = *(a2 + 8);
  v15 = *(a2 + 24);
  bzero(v67, 0x400uLL);
  v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
  if (!v16)
  {
    return 0;
  }

  v18 = v16;
  IIOBitStream = IIOBitStream::CreateIIOBitStream(*a2, (*(a2 + 24) * *(a2 + 8)), "r", v17);
  if (!IIOBitStream)
  {
    goto LABEL_72;
  }

  v20 = IIOBitStream;
  v61 = v18;
  v21 = 1 << (a3 - 1);
  v60 = v21;
  if (v62)
  {
    v22 = 0;
    v23 = v21;
    while (1)
    {
      v63 = v22;
      if (v14)
      {
        break;
      }

LABEL_20:
      v22 = v63 + 1;
      if (v63 + 1 == v62)
      {
        goto LABEL_21;
      }
    }

    v24 = 0;
    while (1)
    {
      v66 = 0;
      if (((a4 < 7) & (0x54u >> a4)) != 0)
      {
        OUTLINED_FUNCTION_2_0();
        v25 = OUTLINED_FUNCTION_0_1();
        if (v26(v25))
        {
          break;
        }
      }

      OUTLINED_FUNCTION_1();
      if ((*(v27 + 24))(v20, a3, &v66 + 4))
      {
        break;
      }

      if (a4 <= 5)
      {
        OUTLINED_FUNCTION_3_0();
        if (!v38)
        {
          OUTLINED_FUNCTION_1();
          v28 = OUTLINED_FUNCTION_0_1();
          if (v29(v28))
          {
            break;
          }
        }
      }

      if (!a5 || v66 >= v23)
      {
        v30 = BYTE4(v66);
        if (a3 <= 7)
        {
          v31 = a3;
          do
          {
            v30 |= (v30 << v31);
            v32 = v31 < 4;
            v31 *= 2;
          }

          while (v32);
        }

        ++v67[v30];
      }

      if (++v24 == v14)
      {
        goto LABEL_20;
      }
    }

LABEL_66:
    v57 = 0;
LABEL_67:
    v18 = v61;
    goto LABEL_69;
  }

LABEL_21:
  OUTLINED_FUNCTION_2_0();
  (*(v33 + 8))(v20);
  v35 = 0;
  v36 = 0;
  do
  {
    v37 = v67[v35];
    v38 = v37 == 0;
    if (v37)
    {
      v39 = v36;
    }

    else
    {
      v39 = -1;
    }

    if (!v38)
    {
      ++v36;
    }

    v67[v35++] = v39;
  }

  while (v35 != 256);
  if (a5 && v36 == 256)
  {
    for (i = 1; i != 256; ++i)
    {
      --v67[i];
    }

    v67[255] = -1;
    v36 = 255;
  }

  v41 = 0;
  v42 = 0;
  do
  {
    if ((v67[v41] & 0x80000000) == 0)
    {
      v43 = (*(a7 + 16) + 3 * v42);
      *v43 = v41;
      v43[1] = v41;
      v43[2] = v41;
      ++v42;
    }

    ++v41;
  }

  while (v41 != 256);
  if (v42 + 1 <= 0xFF)
  {
    bzero((*(a7 + 16) + 3 * (v42 + 1)), 3 * (254 - v42) + 3);
  }

  *a9 = 0;
  if (a5)
  {
    *a9 = v36++;
  }

  v44 = 1;
  v45 = v36 - 1;
  if (v36 != 1)
  {
    v44 = 0;
    do
    {
      ++v44;
      v32 = v45 > 1;
      v45 >>= 1;
    }

    while (v32);
  }

  *a7 = 1 << v44;
  *(a7 + 4) = v44;
  v46 = IIOBitStream::CreateIIOBitStream(*a2, (*(a2 + 24) * *(a2 + 8)), "r", v34);
  v18 = v61;
  if (!v46)
  {
LABEL_72:
    v57 = 0;
    goto LABEL_70;
  }

  v20 = v46;
  if (v62)
  {
    v47 = 0;
    while (1)
    {
      v64 = v47;
      if (v14)
      {
        break;
      }

LABEL_64:
      v47 = v64 + 1;
      if (v64 + 1 == v62)
      {
        v57 = 1;
        goto LABEL_67;
      }
    }

    v48 = 0;
    while (1)
    {
      v66 = 0;
      if (((a4 < 7) & (0x54u >> a4)) != 0)
      {
        OUTLINED_FUNCTION_2_0();
        v49 = OUTLINED_FUNCTION_0_1();
        if (v50(v49))
        {
          goto LABEL_66;
        }
      }

      OUTLINED_FUNCTION_1();
      if ((*(v51 + 24))(v20, a3, &v66 + 4))
      {
        goto LABEL_66;
      }

      if (a4 <= 5)
      {
        OUTLINED_FUNCTION_3_0();
        if (!v38)
        {
          OUTLINED_FUNCTION_1();
          v52 = OUTLINED_FUNCTION_0_1();
          if (v53(v52))
          {
            goto LABEL_66;
          }
        }
      }

      if (!a5)
      {
        break;
      }

      v54 = a9;
      if (v66 >= v60)
      {
        break;
      }

LABEL_63:
      *a8++ = *v54;
      if (++v48 == v14)
      {
        goto LABEL_64;
      }
    }

    v55 = HIDWORD(v66);
    if (a3 == 1)
    {
      v55 = 1 - HIDWORD(v66);
    }

    else if (a3 > 7)
    {
LABEL_62:
      v54 = &v67[v55];
      goto LABEL_63;
    }

    v56 = a3;
    do
    {
      v55 |= v55 << v56;
      v32 = v56 < 4;
      v56 *= 2;
    }

    while (v32);
    goto LABEL_62;
  }

  v57 = 1;
LABEL_69:
  OUTLINED_FUNCTION_2_0();
  (*(v58 + 8))(v20);
LABEL_70:
  free(v18);
  return v57;
}

void ColorQuantization::quantizeBufferWithCustomColors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = a1;
  v6 = (a2 + 2);
  do
  {
    v7 = *(v6 - 2);
    v8 = *(v6 - 1);
    v9 = *v6;
    v6 += 3;
    ColorQuantization::addColorNode(a1, a3, v4++, v7, v8, v9, 1);
  }

  while (v5 != v4);
}

uint64_t KTXReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v67[0] = 0;
  v8 = *(this + 69);
  v9 = *(this + 70);
  v62 = *(this + 67);
  v63 = *(this + 66);
  seed = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v10 = *(this + 55) >> 24;
    v11 = MEMORY[0x1E69E9830];
    if (v10 <= 0x7F)
    {
      v12 = OUTLINED_FUNCTION_2(v10);
    }

    else
    {
      v12 = __maskrune(v10, 0x40000uLL);
      v13 = *(this + 55);
    }

    if (v12)
    {
      v14 = (v13 >> 24);
    }

    else
    {
      v14 = 46;
    }

    v15 = v13 << 8 >> 24;
    if (v15 <= 0x7F)
    {
      v16 = OUTLINED_FUNCTION_2(v15);
    }

    else
    {
      v16 = __maskrune(v15, 0x40000uLL);
      v17 = *(this + 55);
    }

    v18 = a4;
    if (v16)
    {
      v19 = (v17 << 8 >> 24);
    }

    else
    {
      v19 = 46;
    }

    v20 = v17 >> 8;
    v21 = a3;
    if (v20 <= 0x7F)
    {
      v22 = OUTLINED_FUNCTION_2(v20);
    }

    else
    {
      v22 = __maskrune(v20, 0x40000uLL);
      v23 = *(this + 55);
    }

    if (v22)
    {
      v24 = (v23 >> 8);
    }

    else
    {
      v24 = 46;
    }

    if (v23 <= 0x7F)
    {
      if ((*(v11 + 4 * v23 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v23, 0x40000uLL))
    {
LABEL_22:
      v25 = *(this + 220);
LABEL_25:
      v60 = v24;
      a3 = v21;
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v14, v19, v60, v25, iioTypeStr[v21], "virtual OSStatus KTXReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      a4 = v18;
      goto LABEL_26;
    }

    v25 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v26 = *(this + 3);
  if (v26)
  {
    IIOImageReadSession::mapData(v26);
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    v34 = *(this + 77);
    v33 = v34;
    v35 = *(this + 78);
    v31 = v35;
    v36 = ((*(this + 161) + 7) >> 3) * v34;
    *(this + 79) = v36;
    v30 = v35 * v36;
    BaseAddress = _ImageIO_Malloc(v30, *(this + 52), v67, kImageMalloc_KTX_Data[0], 0, 0);
    v32 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      return 0;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v30 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v67[0] = v30;
    v31 = 0.0;
    v32 = 1;
    v33 = 0.0;
  }

  v61 = v32;
  if (!BaseAddress)
  {
    v37 = 0;
    v38 = 0;
LABEL_91:
    if (!v61)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  if (*(this + 123) == 37488)
  {
    bzero(BaseAddress, v30);
    v37 = 0;
    v38 = 0;
    goto LABEL_81;
  }

  v38 = BaseAddress;
  if (v63 < v62)
  {
    v38 = malloc_type_calloc(v9, *(this + 79), 0x100004077774924uLL);
    if (!v38)
    {
      v37 = 1;
      goto LABEL_91;
    }
  }

  v39 = KTXReadPlugin::calculateOffsetToRequestedImage(this, *(this + 131) + 64);
  IIOImageReadSession::getBytesAtOffset(*(this + 3), v38, v39, v30);
  if (v63 >= v62)
  {
    v37 = 0;
  }

  else
  {
    v40 = *(this + 79);
    switch(*(this + 120))
    {
      case 0x1400:
        if (*(this + 122) != 33319 || !v9)
        {
          goto LABEL_80;
        }

        v37 = 1;
        do
        {
          if (v8)
          {
            OUTLINED_FUNCTION_0_2();
            do
            {
              *v42 = *v43 ^ 0x80;
              *(v42 + 1) = v43[1] ^ 0x80;
              *(v42 + 2) = v41;
              v42 += 4;
              v43 += 2;
              --v44;
            }

            while (v44);
          }

          OUTLINED_FUNCTION_3_1();
        }

        while (!v45);
        break;
      case 0x1401:
        dest.data = v38;
        dest.height = v9;
        dest.width = v8;
        dest.rowBytes = (3 * v8 + 3) & 0x7FFFFFFFCLL;
        v64.data = BaseAddress;
        v64.height = v9;
        v64.width = v8;
        v64.rowBytes = v40;
        vImageConvert_RGB888toRGBA8888(&dest, 0, 0xFFu, &v64, 0, 0);
        goto LABEL_80;
      case 0x1403:
        if (!v9)
        {
          goto LABEL_80;
        }

        v37 = 1;
        do
        {
          if (v8)
          {
            OUTLINED_FUNCTION_0_2();
            do
            {
              OUTLINED_FUNCTION_1_0();
            }

            while (!v45);
          }

          OUTLINED_FUNCTION_3_1();
        }

        while (!v45);
        break;
      case 0x1406:
        if (!v9)
        {
          goto LABEL_80;
        }

        v37 = 1;
        do
        {
          if (v8)
          {
            OUTLINED_FUNCTION_0_2();
            do
            {
              v50 = *(v48 + 8);
              *v47 = *v48;
              *(v47 + 8) = v50;
              *(v47 + 12) = v46;
              v48 += 12;
              v47 += 16;
              --v49;
            }

            while (v49);
          }

          OUTLINED_FUNCTION_3_1();
        }

        while (!v45);
        break;
      case 0x140B:
        if (!v9)
        {
          goto LABEL_80;
        }

        v37 = 1;
        do
        {
          if (v8)
          {
            OUTLINED_FUNCTION_0_2();
            do
            {
              OUTLINED_FUNCTION_1_0();
            }

            while (!v45);
          }

          OUTLINED_FUNCTION_3_1();
        }

        while (!v45);
        break;
      default:
        _cg_jpeg_mem_term("decodeImageImp", 700, "*** ERROR: glType 0x%04x not handled\n");
LABEL_80:
        v37 = 1;
        break;
    }
  }

LABEL_81:
  if (*(this + 161) == 32 && *(this + 160) == 8)
  {
    v51 = *(this + 78);
    dest.data = BaseAddress;
    dest.height = v51;
    v52 = *(this + 79);
    dest.width = *(this + 77);
    dest.rowBytes = v52;
    if (!*(this + 437))
    {
      LODWORD(v64.data) = 50331906;
      vImagePermuteChannels_ARGB8888(&dest, &dest, &v64, 0x10u);
    }

    if (*(this + 438) == 1)
    {
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
    }
  }

  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_91;
  }

  v53 = *(this + 67) * v8 * (*(this + 160) >> 3);
  *(this + 79) = v53;
  v54 = 0;
  v68.origin.x = 0.0;
  v68.origin.y = 0.0;
  v68.size.width = v33;
  v68.size.height = v31;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v30, v68, v53, *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v55 = 0;
  }

  else
  {
    v69.origin.x = 0.0;
    v69.origin.y = 0.0;
    v69.size.width = v33;
    v69.size.height = v31;
    *(&v55 - 1) = CGRectUnion(*(this + 120), v69);
    v54 = v56;
    v33 = v57;
    v31 = v58;
  }

  BlockArray = 0;
  *(this + 15) = v54;
  *(this + 16) = v55;
  *(this + 17) = v33;
  *(this + 18) = v31;
  if (v61)
  {
    BaseAddress = 0;
LABEL_96:
    IOSurfaceUnlock(*a4, 0, &seed);
LABEL_97:
    if (a3 == 3 && BaseAddress)
    {
      _ImageIO_Free(BaseAddress, v67[0]);
    }
  }

  if (v37 && v38)
  {
    free(v38);
  }

  return BlockArray;
}

const char *IIOImageSource::extractOptions()
{
  return LogError("extractOptions", 206, "*** ERROR: invalid options: kCGImageSourceDecodeFormatAllowlist is not a CFArrayRef\n");
}

{
  return LogError("extractOptions", 209, "*** ERROR: invalid options: kCGImageSourceDecodeFormatAllowlist cannot be used when kCGImageSourceFailForDataNotMatchingHint is set to false\n");
}

{
  return LogError("extractOptions", 207, "*** ERROR: invalid options: cannot use empty kCGImageSourceDecodeFormatAllowlist\n");
}

{
  return LogError("extractOptions", 218, "*** ERROR: invalid options: kCGImageSourceFailForDataNotMatchingHint cannot be used without specifying a hint\n");
}

void IIOImageSource::getPropertiesAtIndexInternal()
{
  _cg_jpeg_mem_term("getPropertiesAtIndexInternal", 1898, "*** iPlus->getProperties() is nil\n");
}

{
  _cg_jpeg_mem_term("getPropertiesAtIndexInternal", 1903, "*** this->getImagePropertiesAtIndex() is nil\n");
}

void IIOImageSource::createThumbnailAtIndex(_DWORD *a1)
{
  _cg_jpeg_mem_term("createThumbnailAtIndex", 2600, "*** Error: ipRef is NULL\n");
  *a1 = 2600;
}

{
  _cg_jpeg_mem_term("createThumbnailAtIndex", 2576, "*** Error: CGImageReadSessionCreate returned NULL\n");
  *a1 = 2576;
}

{
  _cg_jpeg_mem_term("createThumbnailAtIndex", 2573, "*** Error: imageReadRef returned NULL\n");
  *a1 = 2573;
}

uint64_t PDFReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v40 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(this + 55) >> 24;
    v9 = MEMORY[0x1E69E9830];
    if (v8 <= 0x7F)
    {
      v10 = OUTLINED_FUNCTION_0(v8);
    }

    else
    {
      v10 = __maskrune(v8, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v10)
    {
      v12 = (v11 >> 24);
    }

    else
    {
      v12 = 46;
    }

    v13 = v11 << 8 >> 24;
    if (v13 <= 0x7F)
    {
      v14 = OUTLINED_FUNCTION_0(v13);
    }

    else
    {
      v14 = __maskrune(v13, 0x40000uLL);
      v15 = *(this + 55);
    }

    if (v14)
    {
      v16 = (v15 << 8 >> 24);
    }

    else
    {
      v16 = 46;
    }

    v17 = v15 >> 8;
    if (v17 <= 0x7F)
    {
      v18 = OUTLINED_FUNCTION_0(v17);
    }

    else
    {
      v18 = __maskrune(v17, 0x40000uLL);
      v19 = *(this + 55);
    }

    if (v18)
    {
      v20 = (v19 >> 8);
    }

    else
    {
      v20 = 46;
    }

    if (v19 <= 0x7F)
    {
      if ((*(v9 + 4 * v19 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v19, 0x40000uLL))
    {
LABEL_22:
      v21 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v16, v20, v21, iioTypeStr[a3], "virtual OSStatus PDFReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v21 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
  if (a3 == 3)
  {
    v23 = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v30) = *(this + 77);
    v29 = v30;
    v31 = *(this + 78);
    v27 = v31;
    v26 = *(this + 79) * v31;
    BaseAddress = _ImageIO_Malloc(v26, *(this + 52), &v40, kImageMalloc_PDF_Data[0], 0, 0);
    v28 = 0;
  }

  else
  {
    v23 = BlockArray;
    if (a3 != 1 || !a4 || !*a4)
    {
      return v23;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    v26 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v40 = v26;
    v27 = 0.0;
    v28 = 1;
    v29 = 0.0;
  }

  if (!BaseAddress)
  {
LABEL_40:
    if (!v28)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v32 = (*(*this + 120))(this, BaseAddress, v26);
  if (v32)
  {
    v23 = v32;
    *(this + 26) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (a3 != 3)
  {
    v23 = 0;
    goto LABEL_40;
  }

  v33 = 0;
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v29;
  v41.size.height = v27;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v26, v41, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v34 = 0;
  }

  else
  {
    v42.origin.x = 0.0;
    v42.origin.y = 0.0;
    v42.size.width = v29;
    v42.size.height = v27;
    *(&v34 - 1) = CGRectUnion(*(this + 120), v42);
    v33 = v35;
    v29 = v36;
    v27 = v37;
  }

  v23 = 0;
  *(this + 15) = v33;
  *(this + 16) = v34;
  *(this + 17) = v29;
  *(this + 18) = v27;
  if (v28)
  {
    BaseAddress = 0;
LABEL_45:
    IOSurfaceUnlock(*a4, 0, &seed);
LABEL_46:
    if (a3 == 3 && BaseAddress)
    {
      _ImageIO_Free(BaseAddress, v40);
    }
  }

  return v23;
}

uint64_t BMPReadPlugin::readHeader(uint64_t a1, uint64_t a2, IIOScanner *this)
{
  IIOScanner::seek(this, 0);
  IIOScanner::getVal8(this);
  IIOScanner::getVal8(this);
  Val32 = IIOScanner::getVal32(this);
  IIOScanner::getVal32(this);
  result = IIOScanner::getVal32(this);
  *(a1 + 472) = result;
  if (result)
  {
    v8 = result;
    v9 = *(a1 + 200);
    if (v9 <= result)
    {
      return 0;
    }

    if (v9 < Val32)
    {
      _cg_jpeg_mem_term("readHeader", 129, "*** fileHdr.filesize > fileSize (%d > %d) - continuing...\n");
      v9 = *(a1 + 200);
    }

    if (v9 <= 0x1A)
    {
      v18 = "*** fileSize (%d) too small\n";
      v19 = 132;
    }

    else if (v8 <= 0x19)
    {
      v18 = "*** dataOffset (%d) too small\n";
      v19 = 133;
    }

    else if (v9 <= v8)
    {
      v18 = "*** dataOffset (%d) too big\n";
      v19 = 134;
    }

    else
    {
      v10 = IIOScanner::getVal32(this);
      *a2 = v10;
      if (((v10 - 12) > 0x34 || ((1 << (v10 - 12)) & 0x10110010000011) == 0) && v10 != 124 && v10 != 108)
      {
        return 0;
      }

      *(a2 + 4) = IIOScanner::getVal32(this);
      *(a2 + 8) = IIOScanner::getVal32(this);
      Val16 = IIOScanner::getVal16(this);
      *(a2 + 12) = Val16;
      if (*a2 != 12 && Val16 != 1)
      {
        return 0;
      }

      v13 = IIOScanner::getVal16(this);
      *(a2 + 14) = v13;
      v14 = *a2;
      if (*a2 == 12)
      {
        v14 = 12;
        goto LABEL_42;
      }

      if (v13 == 1)
      {
        goto LABEL_22;
      }

      if (v13 == 2 && v14 == 40)
      {
        goto LABEL_23;
      }

      if ((((v13 - 4) >> 2) | ((v13 - 4) << 14)) <= 7u && ((1 << ((v13 - 4) >> 2)) & 0xAB) != 0)
      {
LABEL_22:
        if (v14 < 0x10)
        {
          goto LABEL_42;
        }

LABEL_23:
        v13 = IIOScanner::getVal32(this);
        *(a2 + 16) = v13;
        v14 = *a2;
        if (*a2 == 40 && v13 == 3)
        {
          *a2 = 52;
        }

        else if (v14 < 0x28)
        {
          goto LABEL_42;
        }

        *(a2 + 20) = IIOScanner::getVal32(this);
        *(a2 + 24) = IIOScanner::getVal32(this);
        *(a2 + 28) = IIOScanner::getVal32(this);
        *(a2 + 32) = IIOScanner::getVal32(this);
        v13 = IIOScanner::getVal32(this);
        *(a2 + 36) = v13;
        v16 = *(a2 + 32);
        if (v16 >= 0x101)
        {
          v18 = "*** ERROR: unsupported number of colors in palette (%d)\n";
          v19 = 186;
        }

        else
        {
          if (v13 <= v16)
          {
            v14 = *a2;
            if (*a2 == 64)
            {
              v14 = 64;
            }

            else if (v14 >= 0x34)
            {
              *(a2 + 40) = IIOScanner::getVal32(this);
              *(a2 + 44) = IIOScanner::getVal32(this);
              v13 = IIOScanner::getVal32(this);
              *(a2 + 48) = v13;
              v14 = *a2;
              if (*a2 >= 0x38u)
              {
                v13 = IIOScanner::getVal32(this);
                *(a2 + 52) = v13;
                v14 = *a2;
                if (*a2 >= 0x6Cu)
                {
                  *(a2 + 56) = IIOScanner::getVal32(this);
                  *(a2 + 60) = IIOScanner::getVal32(this);
                  *(a2 + 64) = IIOScanner::getVal32(this);
                  *(a2 + 68) = IIOScanner::getVal32(this);
                  *(a2 + 72) = IIOScanner::getVal32(this);
                  *(a2 + 76) = IIOScanner::getVal32(this);
                  *(a2 + 80) = IIOScanner::getVal32(this);
                  *(a2 + 84) = IIOScanner::getVal32(this);
                  *(a2 + 88) = IIOScanner::getVal32(this);
                  *(a2 + 92) = IIOScanner::getVal32(this);
                  *(a2 + 96) = IIOScanner::getVal32(this);
                  *(a2 + 100) = IIOScanner::getVal32(this);
                  v13 = IIOScanner::getVal32(this);
                  *(a2 + 104) = v13;
                  v14 = *a2;
                  if (*a2 >= 0x7Cu)
                  {
                    *(a2 + 108) = IIOScanner::getVal32(this);
                    *(a2 + 112) = IIOScanner::getVal32(this);
                    *(a2 + 116) = IIOScanner::getVal32(this);
                    v13 = IIOScanner::getVal32(this);
                    *(a2 + 120) = v13;
                    v14 = *a2;
                  }
                }
              }
            }

LABEL_42:
            *(a1 + 476) = v14 + 14;
            if (*(a1 + 194) == 1)
            {
              BMPReadPlugin::debugHeader(v13, a2);
              v14 = *a2;
            }

            if (v14 == 64)
            {
              v17 = 40;
            }

            else
            {
              if (v14 != 12)
              {
                return 1;
              }

              *(a2 + 12) = *(a2 + 8);
              *(a2 + 10) = 0;
              *(a2 + 8) = *(a2 + 6);
              *(a2 + 6) = 0;
              v17 = 16;
            }

            *a2 = v17;
            return 1;
          }

          v18 = "*** ERROR: bad number of important colors (%d/%d)\n";
          v19 = 187;
        }

        goto LABEL_52;
      }

      v18 = "*** ERROR: BMP-header-size: %d - does not support bpp: %d\n";
      v19 = 165;
    }

LABEL_52:
    _cg_jpeg_mem_term("readHeader", v19, v18);
    return 0;
  }

  return result;
}

uint64_t BMPReadPlugin::decodeRLE(BMPReadPlugin *this, unsigned __int8 *a2)
{
  if (*(this + 58) <= 0x400uLL)
  {
    v4 = 1024;
  }

  else
  {
    v4 = *(this + 58);
  }

  v5 = malloc_type_calloc(v4, 1uLL, 0x100004077774924uLL);
  if (v5)
  {
    v6 = v5;
    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(*(this + 3), v5, *(this + 118), *(this + 58));
    if (BytesAtOffset == *(this + 58))
    {
      if (*(this + 484) == 1)
      {
        v8 = *(this + 70) - 1;
      }

      else
      {
        v8 = 0;
      }

      v9 = 0;
      v10 = &v6[BytesAtOffset];
      v11 = v8 * *(this + 79);
      v12 = BytesAtOffset + v6;
      v13 = v6;
LABEL_10:
      v14 = 0;
      v15 = &a2[v11];
      while (1)
      {
        while (1)
        {
          v16 = 0;
          v17 = 0;
          v18 = v13;
          v19 = BytesAtOffset;
          v20 = *(this + 70);
          v21 = (v18 + 2);
          v22 = v9;
          do
          {
            if (v20 <= v22 || v19 + v16 < 2)
            {
              goto LABEL_65;
            }

            v9 = v22;
            v24 = v21;
            v25 = *(v18 + v17);
            v26 = *(v18 + v17 + 1);
            if (!*(v18 + v17))
            {
              if (*(this + 484))
              {
                v42 = v20 - v22 - 2;
              }

              else
              {
                v42 = v22 + 1;
              }

              v9 = v22 + 1;
              v11 = v42 * *(this + 79);
              BytesAtOffset = v19 - v17 - 2;
              v13 = v18 + v17 + 2;
              goto LABEL_10;
            }

            v27 = *(v18 + v17 + 1);
            v17 += 2;
            v16 -= 2;
            v21 += 2;
            if (v25)
            {
              v28 = 0;
            }

            else
            {
              v28 = v27 == 1;
            }

            v22 = *(this + 70);
          }

          while (v28);
          if (!v25)
          {
            v29 = v19 - v17;
            if (v27 == 2 && (v19 - v17 + 2) >= 4)
            {
              v31 = (v18 + v17);
              v14 += *v31;
              v13 = (v31 + 2);
              v9 += v31[1];
              BytesAtOffset = v29 - 2;
              continue;
            }
          }

          v32 = v26;
          BytesAtOffset = v19 + v16;
          v13 = v18 + v17;
          v33 = *(this + 120);
          if (v33 == 1)
          {
            break;
          }

          if (v33 != 2)
          {
            continue;
          }

          if (!v25)
          {
            if (v27)
            {
              v36 = 0;
              while (v14 + v36 < *(this + 69))
              {
                if (BytesAtOffset <= v36 >> 1)
                {
                  goto LABEL_65;
                }

                v37 = *(v18 + (v36 >> 1) + v17);
                if ((v36 & 1) == 0)
                {
                  v37 = *(v18 + (v36 >> 1) + v17) >> 4;
                }

                v15[v14 + v36++] = v37 & 0xF;
                if (v32 == v36)
                {
                  v14 += v36;
                  goto LABEL_59;
                }
              }

              v14 += v36;
            }

LABEL_59:
            v41 = (((v32 + 1) >> 1) & 1) + ((v32 + 1) >> 1);
            v13 = v18 + v17 + v41;
            goto LABEL_60;
          }

          v34 = 0;
          do
          {
            if (v14 >= *(this + 69))
            {
              break;
            }

            v15[v14++] = (v27 >> (~(4 * v34++) & 4)) & 0xF;
          }

          while (v25 > v34);
        }

        if (!v25)
        {
          if (v18 + v32 + v17 <= v10)
          {
            v38 = v27;
          }

          else
          {
            v38 = v12 - v18 - v17;
          }

          if (v38)
          {
            v39 = v38;
            do
            {
              if (v14 >= *(this + 69))
              {
                break;
              }

              v40 = *v24++;
              v15[v14++] = v40;
              --v39;
            }

            while (v39);
            v41 = (v38 + 1) & 0x1FELL;
          }

          else
          {
            v41 = 0;
          }

          v13 = v18 + v41 + v17;
LABEL_60:
          BytesAtOffset = v19 - v41 - v17;
          continue;
        }

        v35 = 0;
        do
        {
          if (v14 >= *(this + 69))
          {
            break;
          }

          v15[v14] = v27;
          ++v35;
          ++v14;
        }

        while (v25 > v35);
      }
    }

LABEL_65:
    free(v6);
  }

  return 1;
}

uint64_t BMPReadPlugin::decodeBitField(BMPReadPlugin *this, unsigned __int8 *a2, size_t a3)
{
  v6 = *(this + 437) != 0;
  v7 = *(this + 437) == 0;
  if (*(this + 58) <= 0x400uLL)
  {
    v8 = 1024;
  }

  else
  {
    v8 = *(this + 58);
  }

  v9 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
  if (v9)
  {
    v10 = v9;
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v9, *(this + 118), *(this + 58)) == *(this + 58))
    {
      v11 = *(this + 129);
      if (v11 == 32)
      {
        v36 = *(this + 484);
        v37 = *(this + 70);
        v38 = a2;
        if (v36 == 1)
        {
          v38 = &a2[(v37 - 1) * *(this + 79)];
        }

        if (v37)
        {
          v39 = 0;
          LODWORD(v40) = *(this + 69);
          v41 = v10;
          do
          {
            if (v40)
            {
              v42 = 0;
              v43 = v38;
              do
              {
                v44 = *&v41[4 * v42];
                v45 = *(this + 122) & v44;
                v46 = v45 << -*(this + 504);
                v47 = v45 >> *(this + 504);
                if (*(this + 504) >= 0)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v46;
                }

                v43[2 * v7] = v48;
                v49 = *(this + 123) & v44;
                v50 = v49 << -*(this + 505);
                v51 = v49 >> *(this + 505);
                if (*(this + 505) >= 0)
                {
                  v52 = v51;
                }

                else
                {
                  v52 = v50;
                }

                v43[1] = v52;
                v53 = *(this + 124) & v44;
                v54 = v53 << -*(this + 506);
                v55 = v53 >> *(this + 506);
                if (*(this + 506) >= 0)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = v54;
                }

                v43[2 * v6] = v56;
                if (*(this + 511))
                {
                  if (*(this + 511) == 1)
                  {
                    if ((*(this + 125) & v44) != 0)
                    {
                      LOBYTE(v57) = -1;
                    }

                    else
                    {
                      LOBYTE(v57) = 0;
                    }
                  }

                  else
                  {
                    v58 = *(this + 510);
                    v59 = *(this + 125) & v44;
                    if (v58 < 0)
                    {
                      v57 = v59 << -v58;
                    }

                    else
                    {
                      v57 = v59 >> v58;
                    }
                  }
                }

                else
                {
                  LOBYTE(v57) = -1;
                }

                v43[3] = v57;
                ++v42;
                v43 += 4;
                v40 = *(this + 69);
              }

              while (v42 < v40);
              LOBYTE(v36) = *(this + 484);
            }

            v41 += *(this + 63);
            if (v36)
            {
              v60 = -*(this + 79);
              LOBYTE(v36) = 1;
            }

            else
            {
              LOBYTE(v36) = 0;
              v60 = *(this + 79);
            }

            v38 += v60;
            ++v39;
            v61 = *(this + 70);
          }

          while (v39 < v61);
        }

        else
        {
          v61 = 0;
        }

        if (*(this + 438) == 1)
        {
          dest.data = a2;
          dest.height = v61;
          v62 = *(this + 79);
          dest.width = *(this + 69);
          dest.rowBytes = v62;
          vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
        }
      }

      else if (v11 == 16)
      {
        if (*(this + 122) == 63488 && *(this + 123) == 2016 && *(this + 124) == 31 && !*(this + 511))
        {
          if (*(this + 484) == 1)
          {
            v64 = malloc_type_malloc(a3, 0x100004077774924uLL);
            OUTLINED_FUNCTION_1_1();
            v88.data = v65;
            v88.height = v66;
            OUTLINED_FUNCTION_2_1();
            if (v67)
            {
              v68 = OUTLINED_FUNCTION_0_3();
              vImageConvert_RGB565toRGBA8888(v68, v69, v70, v71);
            }

            else
            {
              v79 = OUTLINED_FUNCTION_0_3();
              vImageConvert_RGB565toBGRA8888(v79, v80, v81, v82);
            }

            dest = v88;
            v88.data = a2;
            v83 = vImageVerticalReflect_ARGB8888(&dest, &v88, 0x10u);
            free(v64);
          }

          else
          {
            OUTLINED_FUNCTION_1_1();
            v88.data = a2;
            v88.height = v72;
            OUTLINED_FUNCTION_2_1();
            if (v73)
            {
              v74 = OUTLINED_FUNCTION_0_3();
              v78 = vImageConvert_RGB565toRGBA8888(v74, v75, v76, v77);
            }

            else
            {
              v84 = OUTLINED_FUNCTION_0_3();
              v78 = vImageConvert_RGB565toBGRA8888(v84, v85, v86, v87);
            }

            v83 = v78;
          }

          if (v83)
          {
            _cg_jpeg_mem_term("decodeBitField", 997, "    err = %d\n");
          }
        }

        else
        {
          v12 = *(this + 484);
          v13 = *(this + 70);
          if (v12 == 1)
          {
            a2 += ((v13 - 1) * *(this + 79));
          }

          if (v13)
          {
            v14 = 0;
            LODWORD(v15) = *(this + 69);
            v16 = v10;
            do
            {
              if (v15)
              {
                v17 = 0;
                v18 = v16 + 1;
                v19 = a2;
                do
                {
                  v20 = *(v18 - 1);
                  v21 = v20 | (*v18 << 8);
                  v22 = v21 & *(this + 122);
                  v23 = v21 & *(this + 123);
                  v24 = *(this + 124);
                  v25 = v22 << -*(this + 504);
                  v26 = v22 >> *(this + 504);
                  if (*(this + 504) < 0)
                  {
                    LOBYTE(v26) = v25;
                  }

                  v19[2 * v7] = v26;
                  v19[2 * v7] = v26 | (v26 >> (8 - *(this + 507)));
                  v27 = v24 & v21;
                  v28 = v23 << -*(this + 505);
                  v29 = v23 >> *(this + 505);
                  if (*(this + 505) < 0)
                  {
                    LOBYTE(v29) = v28;
                  }

                  v19[1] = v29;
                  v19[1] = v29 | (v29 >> (8 - *(this + 508)));
                  v30 = v27 << -*(this + 506);
                  v31 = v27 >> *(this + 506);
                  if (*(this + 506) < 0)
                  {
                    LOBYTE(v31) = v30;
                  }

                  v19[2 * v6] = v31;
                  v19[2 * v6] = v31 | (v31 >> (8 - *(this + 509)));
                  if (*(this + 511))
                  {
                    if (*(this + 511) == 1)
                    {
                      if ((*(this + 125) & v21) != 0)
                      {
                        LOBYTE(v32) = -1;
                      }

                      else
                      {
                        LOBYTE(v32) = 0;
                      }
                    }

                    else
                    {
                      v33 = *(this + 510);
                      v34 = *(this + 125);
                      if (v33 < 0)
                      {
                        v32 = (v34 & v20) << -v33;
                      }

                      else
                      {
                        v32 = (v34 & v21) >> v33;
                      }
                    }
                  }

                  else
                  {
                    LOBYTE(v32) = -1;
                  }

                  v18 += 2;
                  v19[3] = v32;
                  ++v17;
                  v19 += 4;
                  v15 = *(this + 69);
                }

                while (v17 < v15);
                LOBYTE(v12) = *(this + 484);
              }

              v16 += *(this + 63);
              if (v12)
              {
                v35 = -*(this + 79);
                LOBYTE(v12) = 1;
              }

              else
              {
                LOBYTE(v12) = 0;
                v35 = *(this + 79);
              }

              a2 += v35;
              ++v14;
            }

            while (v14 < *(this + 70));
          }
        }
      }
    }

    free(v10);
  }

  return 1;
}

uint64_t BCReadPlugin::decode8888toRGBX(BCReadPlugin *this, IIOImageReadSession *a2, vImage_Buffer *a3, CGImageAlphaInfo a4, _BOOL4 a5)
{
  v8 = *(this + 65);
  v9 = *(this + 122);
  if (a5)
  {
    v10 = 8;
  }

  else
  {
    v10 = 24;
  }

  if (a5)
  {
    v11 = 24;
  }

  else
  {
    v11 = 8;
  }

  permuteMap[0] = v9 >> v10;
  permuteMap[1] = BYTE2(v9);
  permuteMap[2] = v9 >> v11;
  permuteMap[3] = v9;
  v12 = *(this + 56);
  if (v12 > 0x1F)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v8 + 8 * v12 + 48);
  }

  if (*(this + 127) != 24)
  {
    v21 = a3->height * a3->rowBytes;
    if (IIOImageReadSession::getBytesAtOffset(a2, a3->data, v13, v21) != v21)
    {
      return 4294967246;
    }

    vImagePermuteChannels_ARGB8888(a3, a3, permuteMap, 0x10u);
    if (a5)
    {
      vImagePremultiplyData_RGBA8888(a3, a3, 0x10u);
    }

    return 0;
  }

  v14 = 3 * a3->width;
  v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
  v24.data = v15;
  v24.height = 1;
  v24.rowBytes = v14;
  v16 = *&a3->width;
  v24.width = a3->width;
  *&v23.data = xmmword_186205EC0;
  *&v23.width = v16;
  if (!a3->height)
  {
LABEL_15:
    v20 = 0;
    if (!v15)
    {
      return v20;
    }

LABEL_16:
    free(v15);
    return v20;
  }

  v17 = 0;
  v18 = 1;
  while (IIOImageReadSession::getBytesAtOffset(a2, v15, v13, v14) == v14)
  {
    v23.data = a3->data + a3->rowBytes * v17;
    vImageConvert_RGB888toRGBA8888(&v24, 0, 0xFFu, &v23, a5, 0x10u);
    v17 = v18;
    v19 = a3->height > v18++;
    v13 += v14;
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  v20 = 4294967246;
  if (v15)
  {
    goto LABEL_16;
  }

  return v20;
}

const char *IIOImagePlus::createImage(uint64_t a1, void *a2)
{
  v4 = *(a1 + 184) >> 24;
  v5 = MEMORY[0x1E69E9830];
  if (v4 < 0x80)
  {
    v6 = OUTLINED_FUNCTION_0_4(v4);
  }

  else
  {
    v6 = __maskrune(v4, 0x40000uLL);
    v7 = *(a1 + 184);
  }

  if (v6)
  {
    v8 = (v7 >> 24);
  }

  else
  {
    v8 = 46;
  }

  v9 = v7 << 8 >> 24;
  if (v9 < 0x80)
  {
    v10 = OUTLINED_FUNCTION_0_4(v9);
  }

  else
  {
    v10 = __maskrune(v9, 0x40000uLL);
    v11 = *(a1 + 184);
  }

  if (v10)
  {
    v12 = (v11 << 8 >> 24);
  }

  else
  {
    v12 = 46;
  }

  v13 = v11 >> 8;
  if (v13 < 0x80)
  {
    v14 = OUTLINED_FUNCTION_0_4(v13);
  }

  else
  {
    v14 = __maskrune(v13, 0x40000uLL);
    v15 = *(a1 + 184);
  }

  if (v14)
  {
    v16 = (v15 >> 8);
  }

  else
  {
    v16 = 46;
  }

  if (v15 < 0x80)
  {
    if ((*(v5 + 4 * v15 + 60) & 0x40000) != 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    v17 = 46;
    return LogError("createImage", 1493, "*** ERROR: '%c%c%c%c' - bad image size (%ld x %ld) rb: %ld\n", v8, v12, v16, v17, *a2, *(a1 + 48), *(a1 + 72));
  }

  if (!__maskrune(v15, 0x40000uLL))
  {
    goto LABEL_23;
  }

LABEL_21:
  v17 = *(a1 + 184);
  return LogError("createImage", 1493, "*** ERROR: '%c%c%c%c' - bad image size (%ld x %ld) rb: %ld\n", v8, v12, v16, v17, *a2, *(a1 + 48), *(a1 + 72));
}

void CGImageMetadataValueAddQualifier(void *a1, const void *a2)
{
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_0_5(gIIODebugFlags >> 14, "S", "CGImageMetadataValueAddQualifier");
  }

  if (a1)
  {
    if (a2)
    {
      v4 = CFGetTypeID(a1);
      if (v4 == CGImageMetadataValueGetTypeID(v4, v5))
      {
        Mutable = a1[6];
        if (Mutable || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (a1[6] = Mutable) != 0))
        {

          CFArrayAppendValue(Mutable, a2);
        }
      }
    }
  }
}

void CGImageMetadataValueSetNamespaceURI(uint64_t a1, const void *a2)
{
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_0_5(gIIODebugFlags >> 14, "S", "CGImageMetadataValueSetNamespaceURI");
  }

  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 24) = 0;
    if (a2)
    {
      *(a1 + 24) = CFRetain(a2);
    }
  }
}

uint64_t CGImageMetadataValueGetNamespaceURI(uint64_t a1, uint64_t a2)
{
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_0_5(gIIODebugFlags >> 14, "S", "CGImageMetadataValueGetNamespaceURI");
  }

  if (a1)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

void CGImageMetadataValueSetSuggestedNamespacePrefix(uint64_t a1, const void *a2)
{
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_0_5(gIIODebugFlags >> 14, "S", "CGImageMetadataValueSetSuggestedNamespacePrefix");
  }

  if (a1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 32) = 0;
    if (a2)
    {
      *(a1 + 32) = CFRetain(a2);
    }
  }
}

uint64_t CGImageMetadataValueGetSuggestedNamespacePrefix(uint64_t a1, uint64_t a2)
{
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_0_5(gIIODebugFlags >> 14, "S", "CGImageMetadataValueGetSuggestedNamespacePrefix");
  }

  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

void CGImageMetadataValueSetIsAlternate(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_0_5(gIIODebugFlags >> 14, "S", "CGImageMetadataValueSetIsAlternate");
  }

  if (a1)
  {
    if (v2)
    {
      v4 = 2048;
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 40) = *(a1 + 40) & 0xFFFFF7FF | v4;
  }
}

uint64_t CGImageMetadataValueIsAlternate(uint64_t a1, uint64_t a2)
{
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_0_5(gIIODebugFlags >> 14, "S", "CGImageMetadataValueIsAlternate");
  }

  if (a1)
  {
    return (*(a1 + 41) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

void CGImageMetadataValueSetIsAlternateText(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_0_5(gIIODebugFlags >> 14, "S", "CGImageMetadataValueSetIsAlternateText");
  }

  if (a1)
  {
    if (v2)
    {
      v4 = 4096;
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 40) = *(a1 + 40) & 0xFFFFEFFF | v4;
  }
}

uint64_t CGImageMetadataValueIsAlternateText(uint64_t a1, uint64_t a2)
{
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_0_5(gIIODebugFlags >> 14, "S", "CGImageMetadataValueIsAlternateText");
  }

  if (a1)
  {
    return (*(a1 + 41) >> 4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CGImageMetadataValueCreate(const void *a1, uint64_t a2)
{
  if (a1)
  {
    CGImageMetadataValueGetTypeID(a1, a2);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = CFRetain(a1);
      *(Instance + 48) = 0;
      *(Instance + 24) = 0;
      *(Instance + 32) = 0;
      *(Instance + 16) = v4;
      *(Instance + 40) = 0;
    }
  }

  else
  {
    LogError("CGImageMetadataValueCreate", 365, "*** ERROR: parameter is NULL\n");
    return 0;
  }

  return Instance;
}

CGImageRef CGImageCreateCopyWithBitmapInfo(CGImageRef image, CGColor *a2, size_t a3, size_t a4, CGBitmapInfo a5, BOOL a6, CGColorRenderingIntent a7)
{
  if ((gIIODebugFlags & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateCopyWithBitmapInfo");
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  AlphaInfo = _ImageGetAlphaInfo(image);
  ColorSpace = CGImageGetColorSpace(image);
  callbacks = *byte_1EF4D56C0;
  if (_ImageIsFloat(image) != (a5 & 0x100) >> 8 || CGImageGetDecode(image))
  {
    return 0;
  }

  space = ColorSpace;
  v17 = 0;
  if (BitsPerComponent > 0x20 || ((1 << BitsPerComponent) & 0x100010100) == 0)
  {
    return v17;
  }

  if (a4 < (Width * a3 + 7) >> 3)
  {
    return 0;
  }

  v42 = a5;
  v18 = a5 & 0x1F;
  if (!_ValidAlphaInfo(BitsPerComponent, a3, space, v18))
  {
    return 0;
  }

  intent = a7;
  Mask = CGImageGetMask();
  if (CGImageGetClipPath() || CGImageGetMaskingColors() || Mask && (BitsPerComponent != CGImageGetBitsPerComponent(Mask) || Width != CGImageGetWidth(Mask) || Height != CGImageGetHeight(Mask)))
  {
    return 0;
  }

  if (a2 && (AlphaInfo > 7 || ((1 << AlphaInfo) & 0x9E) == 0) && v18 - 1 < 7 && ((0x4Fu >> (v18 - 1)) & 1) != 0)
  {
    return 0;
  }

  shouldInterpolate = a6;
  v43 = a3;
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(space);
  v21 = malloc_type_calloc(0xD8uLL, 1uLL, 0x10A0040232AA6FEuLL);
  if (!v21)
  {
    return 0;
  }

  v22 = v21;
  v23 = a4;
  v21[1] = 0;
  DataProvider = CGImageGetDataProvider(image);
  v22[6] = CGDataProviderRetain(DataProvider);
  if (Mask)
  {
    v25 = CGImageGetDataProvider(Mask);
    v26 = CGDataProviderRetain(v25);
    v27 = Mask;
  }

  else
  {
    v26 = 0;
    v27 = image;
  }

  v22[7] = v26;
  v22[11] = Width;
  v22[12] = Height;
  v22[13] = BitsPerComponent;
  v22[14] = NumberOfComponents;
  v22[15] = CGImageGetBitsPerPixel(image);
  v22[16] = CGImageGetBytesPerRow(image);
  *(v22 + 34) = AlphaInfo;
  v22[18] = _ImageGetEndianInfo(image);
  v22[19] = v43;
  v22[20] = v23;
  *(v22 + 42) = v18;
  v22[22] = v42 & 0x7000;
  v22[23] = CGImageGetBitsPerPixel(v27);
  if (Mask)
  {
    BytesPerRow = CGImageGetBytesPerRow(Mask);
  }

  else
  {
    BytesPerRow = 0;
  }

  v22[24] = BytesPerRow;
  *(v22 + 50) = 7;
  v22[26] = _ImageGetEndianInfo(v27);
  v22[8] = a2;
  v22[9] = 0x3FF0000000000000;
  if (a2)
  {
    Components = CGColorGetComponents(a2);
    if (Components)
    {
      v22[9] = *Components;
    }
  }

  v30 = v22[7];
  v31 = *(v22 + 42);
  if (v31 - 5 > 0xFFFFFFFD)
  {
    v32 = 0;
    if (v30)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v32 = (*(v22 + 34) - 3) < 2;
    if (v30)
    {
      goto LABEL_33;
    }
  }

  if ((*(v22 + 34) - 1) > 1)
  {
    v33 = 0;
    goto LABEL_34;
  }

LABEL_33:
  v33 = v31 - 3 < 2;
LABEL_34:
  if (v31 <= 6 && ((1 << v31) & 0x61) != 0)
  {
    if (v32)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }

    if ((*(v22 + 34) - 1) >= 2)
    {
      v35 = 0;
    }

    else
    {
      v35 = 3;
    }
  }

  else
  {
    v35 = 0;
    if (v32)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }
  }

  if (v32 || v33)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  *(v22 + 20) = v36;
  v37 = CGDataProviderCreateSequential(v22, &callbacks);
  if (!v37)
  {
    alphaProviderReleaseInfo(v22);
    return 0;
  }

  v38 = v37;
  v17 = CGImageCreate(Width, Height, BitsPerComponent, v43, v23, space, v42, v37, 0, shouldInterpolate, intent);
  if (v17)
  {
    CGImageSetProperty();
    CGImageSetProperty();
    CGImageSetProperty();
  }

  CFRelease(v38);
  return v17;
}

CGImage *CGImageCreateByMatchingToColorSpace(CGImage *a1, CGColorSpace *a2)
{
  v4 = OUTLINED_FUNCTION_0_6(727580849);
  IIOInitDebugFlags(v4, v5);
  v6 = gIIODebugFlags;
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateByMatchingToColorSpace", 0, 0, -1, 0);
    v6 = gIIODebugFlags;
  }

  if ((v6 & 0x400000000) != 0)
  {
    ImageIOLog("    %s\n", "CGImageCreateByMatchingToColorSpace");
  }

  v7 = 0;
  if (a1 && a2)
  {
    v8 = IIO_CGColorSpaceNameMatchesName(a2, *MEMORY[0x1E695F1C0]);
    if (v8)
    {
      v9 = 0;
      BitsPerComponent = 8;
    }

    else
    {
      v9 = CGColorSpaceUsesExtendedRange(a2);
      BitsPerComponent = 0;
    }

    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    AlphaInfo = _ImageGetAlphaInfo(a1);
    if (!AlphaInfo)
    {
      if (CGColorSpaceGetModel(a2) == kCGColorSpaceModelRGB)
      {
        AlphaInfo = 5;
      }

      else
      {
        AlphaInfo = 0;
      }
    }

    if (AlphaInfo == 3)
    {
      v14 = 1;
    }

    else
    {
      v14 = AlphaInfo;
    }

    if (v14 == 4)
    {
      v15 = 2;
    }

    else
    {
      v15 = v14;
    }

    if (v15 == 6)
    {
      if (CGColorSpaceGetModel(a2))
      {
        v15 = 6;
      }

      else
      {
        v15 = 0;
      }
    }

    if (!v8)
    {
      BitsPerComponent = CGImageGetBitsPerComponent(a1);
    }

    v16 = 16;
    if (BitsPerComponent > 0x10)
    {
      v16 = BitsPerComponent;
    }

    if (BitsPerComponent <= 8)
    {
      v16 = 8;
    }

    v17 = v15 | 0x2100;
    if (BitsPerComponent > 0x1F)
    {
      v18 = BitsPerComponent;
    }

    else
    {
      v17 = v15 | 0x1100;
      v18 = 16;
    }

    v19 = !v9;
    if (v9)
    {
      v20 = v17;
    }

    else
    {
      v20 = v15;
    }

    if (v19)
    {
      v21 = v16;
    }

    else
    {
      v21 = v18;
    }

    MinimalPixelSize = _GetMinimalPixelSize(a2, v21, v20);
    v25.a = 1.0;
    v25.b = 0.0;
    v25.c = 0.0;
    v25.d = 1.0;
    v25.tx = 0.0;
    v25.ty = 0.0;
    RenderingIntent = CGImageGetRenderingIntent(a1);
    v7 = CGImageCreateCopyWithParametersNew(a1, 0, &v25, Width, Height, v21, MinimalPixelSize, (MinimalPixelSize * Width + 7) >> 3, a2, v20, 1, RenderingIntent, kCGInterpolationDefault, 1);
  }

  OUTLINED_FUNCTION_0_6(727580850);
  return v7;
}

void CGImageCreateCopyWithParametersNew()
{
  _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 883, "*** ERROR: dstImage is NULL\n");
}

{
  _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 865, "*** ERROR: CGBitmapContextCreateImage returned NULL\n");
}

{
  _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 788, "*** ERROR: context is NULL\n");
}

{
  _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 552, "*** ERROR: targetColorSpace is NULL\n");
}

{
  _cg_jpeg_mem_term("CGImageCreateCopyWithParametersNew", 549, "*** ERROR: image is NULL\n");
}

uint64_t GlobalPNGInfo::readFromStream(UInt8 *this, CFReadStreamRef stream)
{
  v21 = 0;
  v22 = 0;
  v20 = 0;
  *buffer = 0;
  if (CFReadStreamRead(stream, buffer, 4) != 4)
  {
    return 4294967260;
  }

  if (*buffer != 1112493127)
  {
    return 0;
  }

  if (CFReadStreamRead(stream, this + 32, 28) != 28)
  {
    return 4294967260;
  }

  v4 = OUTLINED_FUNCTION_0_7(28, &v20);
  if (v4 != 8 || v20 < 1)
  {
    return 4294967260;
  }

  v6 = OUTLINED_FUNCTION_0_7(v4, &v21);
  result = 4294967260;
  if (v6 == 8 && (v21 & 0x8000000000000000) == 0)
  {
    v8 = OUTLINED_FUNCTION_0_7(4294967260, &v22) != 8 || v22 < 1;
    if (!v8 && !__CFADD__(v21, v22) && v21 + v22 <= v20)
    {
      std::vector<fcTL_CHUNK>::resize(this + 1, v20);
      v9 = *(this + 1) + 34 * v21;
      v10 = v9 + 34 * v22;
      while (v9 < v10)
      {
        v18 = 0;
        *size = 0u;
        v17 = 0u;
        if (CFReadStreamRead(stream, size, 34) != 34)
        {
          return 4294967260;
        }

        if ((size[1] & 0x8000000000000000) == 0 && (v17 & 0x80000000) == 0)
        {
          v11 = SHIDWORD(size[0]) < 1 || SLODWORD(size[1]) < 1;
          if (!v11 && HIDWORD(size[0]) + HIDWORD(size[1]) <= *(this + 8) && LODWORD(size[1]) + v17 <= *(this + 9))
          {
            v12 = *size;
            v13 = v17;
            *(v9 + 32) = v18;
            *v9 = v12;
            *(v9 + 16) = v13;
            v9 += 34;
          }
        }
      }

      if (CFReadStreamRead(stream, buffer, 4) == 4)
      {
        if (*buffer != 1179992675)
        {
          return 0;
        }

        size[0] = 0;
        if (OUTLINED_FUNCTION_0_7(4, size) == 8)
        {
          if (!size[0])
          {
            return 0;
          }

          if (size[0] != *(this + 12))
          {
            return 0;
          }

          v14 = malloc_type_malloc(size[0], 0x100004077774924uLL);
          *(this + 8) = v14;
          v15 = CFReadStreamRead(stream, v14, size[0]);
          if (v15 == size[0])
          {
            return 0;
          }
        }
      }
    }

    return 4294967260;
  }

  return result;
}

void IIO_Reader_GIF::parse()
{
  _cg_jpeg_mem_term("parse", 410, "    GIF-ERROR: realloc(%d) failed\n");
}

{
  _cg_jpeg_mem_term("parse", 396, "    GIF-ERROR: DGifGetExtension (%d)\n");
}

{
  _cg_jpeg_mem_term("parse", 349, "    GIF-ERROR: frame[0] has no codeBlocks\n");
}

{
  _cg_jpeg_mem_term("parse", 347, "    GIF-ERROR: DGifGetCode (%d)\n");
}

void IIO_Reader_GIF::parse(IIOImageReadSession *a1)
{
  IIOImageReadSession::getSize(a1);
  _cg_jpeg_mem_term("parse", 301, "    GIF-ERROR: DGifGetImageDesc (%d)   fileSize: %ld\n");
}

{
  IIOImageReadSession::getSize(a1);
  _cg_jpeg_mem_term("parse", 227, "    GIF-ERROR: DGifGetRecordType (%d)  fileSize: %ld\n");
}

const char *ValidateKTXHeader()
{
  return LogError("ValidateKTXHeader", 108, "*** ERROR: glInternalFormat must be non-zero\n");
}

{
  return LogError("ValidateKTXHeader", 104, "*** ERROR: glTypeSize must be non-zero for uncompressed textures\n");
}

{
  return LogError("ValidateKTXHeader", 103, "*** ERROR: glFormat must be non-zero for uncompressed textures\n");
}

{
  return LogError("ValidateKTXHeader", 102, "*** ERROR: glType must be non-zero for uncompressed textures\n");
}

{
  return LogError("ValidateKTXHeader", 121, "*** ERROR: Cubemaps cannot have depth\n");
}

{
  return LogError("ValidateKTXHeader", 131, "*** ERROR: KV extends beyond file size\n");
}

{
  return LogError("ValidateKTXHeader", 140, "*** ERROR: No texture data present in file");
}

{
  return LogError("ValidateKTXHeader", 125, "*** ERROR: numberOfMipmapLevels must be at least 1");
}

{
  return LogError("ValidateKTXHeader", 96, "*** ERROR: glInternalFormat must be non-zero for compressed textures\n");
}

{
  return LogError("ValidateKTXHeader", 88, "*** ERROR: pixelWidth must be greater than 0\n");
}

uint64_t JPEGWritePlugin::WriteICCData(JPEGWritePlugin *this, IIOImageWriteSession *a2, CGColorSpace *a3, CGColorSpace *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  strcpy(v20, "ICC_PROFILE");
  v20[6] = 0;
  if (a2 | a3)
  {
    SourceGeomColorSpace = a3;
    if (!a3)
    {
      SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a2);
    }

    if (!IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F1C0]))
    {
      if (a2)
      {
        Ref = IIOImageSource::imageReadRef(a2);
        RenderingIntent = CGImageGetRenderingIntent(Ref);
      }

      else
      {
        RenderingIntent = kCGRenderingIntentDefault;
      }

      v9 = CGColorSpaceCopyData(SourceGeomColorSpace, RenderingIntent);
      if (v9)
      {
        v10 = v9;
        BytePtr = CFDataGetBytePtr(v9);
        Length = CFDataGetLength(v10);
        if (BytePtr)
        {
          v13 = Length;
          if (Length)
          {
            HIBYTE(v20[6]) = (Length + 65518) / 0xFFEFuLL;
            LOBYTE(v20[6]) = 1;
            if (HIBYTE(v20[6]))
            {
              do
              {
                if (v13 >= 0xFFEF)
                {
                  v14 = 65519;
                }

                else
                {
                  v14 = v13;
                }

                __ptr = -7425;
                __ptr_2 = (v14 + 16) >> 8;
                __ptr_3 = v14 + 16;
                iioWriteCallback(&__ptr, 4, this);
                iioWriteCallback(v20, 14, this);
                v13 -= v14;
                iioWriteCallback(BytePtr, v14, this);
                BytePtr += v14;
                v15 = LOBYTE(v20[6]);
                ++LOBYTE(v20[6]);
              }

              while (v15 < HIBYTE(v20[6]));
            }
          }
        }

        CFRelease(v10);
      }
    }
  }

  return 0;
}

const char *IIOPixelProvider::convertRGB101010BufferUsingCGContext()
{
  return LogError("convertRGB101010BufferUsingCGContext", 335, "*** ERROR: Failed to allocate temp buffer for HDR RGB101010 conversion\n");
}

{
  return LogError("convertRGB101010BufferUsingCGContext", 354, "*** ERROR: CGImageCreateWithImageInRect failed for HDR RGB101010 conversion\n");
}

uint64_t TIFFReadPlugin::decodeStripChunky(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 504);
  v4 = *(a1 + 496);
  v62 = 0;
  v63 = 0;
  if (!v4)
  {
    return 4294967246;
  }

  v13 = malloc_type_malloc(v3, 0x100004077774924uLL);
  if (*(a1 + 480) == 32845)
  {
    PixelConverter = 0;
    goto LABEL_17;
  }

  v62 = (*(*a1 + 56))(a1);
  v63 = v15;
  v16 = *(a1 + 260);
  if (v16 > *(a1 + 324))
  {
    LOWORD(v63) = *(a1 + 324);
  }

  if (*(a1 + 290) == 32 && *(a1 + 288) == 8)
  {
    if (v16 == 3)
    {
      BYTE6(v62) = -1;
      BYTE4(v62) = 0;
      if (*(a1 + 437))
      {
        v17 = 2;
      }

      else
      {
        v17 = 5;
      }

LABEL_15:
      BYTE5(v62) = v17;
      goto LABEL_16;
    }

    if (v16 == 4)
    {
      v17 = 2;
      BYTE4(v62) = 2;
      if (!*(a1 + 437))
      {
        v17 = 3;
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  PixelConverter = ImageIOPixelConverter::CreatePixelConverter(&v62);
LABEL_17:
  v18 = *(a3 + 20);
  if (v18 >= *(a3 + 24))
  {
LABEL_60:
    v51 = 0;
    if (!PixelConverter)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v19 = (v3 / v4);
    v54 = a2;
    v55 = v13;
    v59 = PixelConverter;
    v60 = a3;
    v57 = v3;
    v58 = v19;
    v53 = v4;
    while (1)
    {
      v20 = *(a1 + 496) ? _cg_TIFFComputeStrip(a2, v18, 0, v8, v9, v10, v11, v12) : 0;
      if (_cg_TIFFReadEncodedStrip(a2, v20, v13, -1) > v3)
      {
        break;
      }

      v21 = v18 + v4;
      v22 = *(a3 + 24);
      if (v18 + v4 >= v22)
      {
        v23 = *(a3 + 24);
      }

      else
      {
        v23 = v18 + v4;
      }

      v61 = v23;
      if (v18 < v23)
      {
        v56 = v18 + v4;
        v24 = (*a3 + (v18 - *(a3 + 20)) * *(a3 + 36));
        v25 = v13;
        do
        {
          if (*(a1 + 480) == 32845)
          {
            v26 = *(a1 + 256);
            if (v26 == 16)
            {
              ConvertLineXYZToRGB<half>(v25, v24, *(a3 + 28));
            }

            else if (v26 == 32)
            {
              v27 = *(a1 + 288);
              if (v27 == 16)
              {
                v34 = *(a3 + 28);
                if (v34)
                {
                  v35 = v24;
                  v36 = v25;
                  do
                  {
                    v37 = *v36;
                    v38 = v36[1];
                    v39 = v36[2];
                    _D2 = v38 * -1.276 + v37 * 2.69 + v39 * -0.414;
                    __asm { FCVT            H2, D2 }

                    *v35 = LOWORD(_D2);
                    _D2 = v38 * 1.978 + v37 * -1.022 + v39 * 0.044;
                    __asm { FCVT            H2, D2 }

                    _D0 = v38 * -0.224 + v37 * 0.061 + v39 * 1.163;
                    v35[1] = LOWORD(_D2);
                    __asm { FCVT            H0, D0 }

                    v35[2] = LOWORD(_D0);
                    v35[3] = COERCE_UNSIGNED_INT(1.0);
                    v35 += 4;
                    v36 += 3;
                    --v34;
                  }

                  while (v34);
                }
              }

              else if (v27 == 32)
              {
                ConvertLineXYZToRGB<float>(v25, v24, *(a3 + 28));
              }
            }
          }

          else
          {
            v28 = *(a1 + 260);
            v29 = *(a1 + 324);
            if (v28 > v29)
            {
              v30 = *(a1 + 244);
              if (v57 >= ((*(a1 + 258) + 7) >> 3) * v30)
              {
                v31 = *(a1 + 256);
                if (v31 == 32)
                {
                  if (v30)
                  {
                    v49 = v25;
                    v50 = v25;
                    do
                    {
                      memmove(v49, v50, 4 * v29);
                      v50 += 2 * v28;
                      v49 += 2 * v29;
                      --v30;
                    }

                    while (v30);
                  }
                }

                else if (v31 == 16)
                {
                  if (v30)
                  {
                    v47 = v25;
                    v48 = v25;
                    do
                    {
                      memmove(v47, v48, 2 * v29);
                      v48 += v28;
                      v47 += v29;
                      --v30;
                    }

                    while (v30);
                  }
                }

                else if (v31 == 8 && v30)
                {
                  v32 = v25;
                  v33 = v25;
                  do
                  {
                    memmove(v32, v33, v29);
                    v33 = (v33 + v28);
                    v32 = (v32 + v29);
                    --v30;
                  }

                  while (v30);
                }
              }
            }

            PixelConverter = v59;
            a3 = v60;
            (*(*v59 + 24))(v59, v25, v24, *(v60 + 28));
            v19 = v58;
          }

          v24 = (v24 + *(a3 + 36));
          v25 = (v25 + v19);
          ++v18;
        }

        while (v18 < v61);
        v22 = *(a3 + 24);
        a2 = v54;
        v13 = v55;
        v3 = v57;
        LODWORD(v4) = v53;
        v21 = v56;
      }

      v18 = v21;
      if (v21 >= v22)
      {
        goto LABEL_60;
      }
    }

    v51 = 4294967246;
    if (!PixelConverter)
    {
      goto LABEL_62;
    }
  }

  (*(*PixelConverter + 8))(PixelConverter);
LABEL_62:
  if (v13)
  {
    free(v13);
  }

  return v51;
}

uint64_t TIFFReadPlugin::decodeStripPlanar(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  v58 = *MEMORY[0x1E69E9840];
  size = *(a1 + 504);
  v6 = *(a1 + 320);
  v7 = *(a1 + 324);
  v46 = *(a1 + 496);
  v8 = a3[7];
  v55 = 0;
  v54 = 0;
  v56 = xmmword_186209DE8;
  v57 = 4;
  if (__PAIR64__(*(a1 + 290), *(a1 + 288)) == 0x2000000008 && !*(a1 + 437))
  {
    LODWORD(v56) = 2;
    DWORD2(v56) = 0;
  }

  v53 = 0;
  LOWORD(v54) = 1542;
  BYTE2(v54) = 0;
  WORD2(v54) = 1;
  HIWORD(v54) = *(a1 + 256);
  LOWORD(v55) = v6;
  v9 = ImageIOPixelConverter::CreatePixelConverter(&v53);
  v10 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v10)
  {
    v18 = 0;
LABEL_39:
    v40 = 0;
    goto LABEL_40;
  }

  v11 = (v6 + 7) >> 3;
  v12 = malloc_type_malloc((v8 * v11 + 15) & 0xFFFFFFF0, 0x100004077774924uLL);
  v18 = v12;
  if (!v12)
  {
    goto LABEL_39;
  }

  v20 = a3[5];
  v19 = a3[6];
  if (v20 >= v19)
  {
    goto LABEL_39;
  }

  v44 = *(v5 + 486);
  v45 = *(v5 + 512);
  v47 = a2;
  v52 = v12;
  while (1)
  {
    v50 = v20;
    v21 = v20 + v46;
    if (v45 != v44)
    {
      break;
    }

LABEL_35:
    v20 = v21;
    if (v21 >= v19)
    {
      v40 = 0;
      goto LABEL_40;
    }
  }

  v49 = v20 + v46;
  v22 = 0;
  while (1)
  {
    v51 = v22;
    v23 = *(v5 + 496) ? _cg_TIFFComputeStrip(a2, v50, v22, v13, v14, v15, v16, v17) : 0;
    v24 = v49;
    if (_cg_TIFFReadEncodedStrip(a2, v23, v10, -1) > size)
    {
      break;
    }

    v25 = v5;
    if (v49 >= a3[6])
    {
      v24 = a3[6];
    }

    v18 = v52;
    if (v50 < v24)
    {
      v26 = v50;
      v27 = v10;
      do
      {
        (*(*v9 + 24))(v9, v27, v18, *(v25 + 472));
        if (v11 == 4)
        {
          v18 = v52;
          if (a3[7])
          {
            OUTLINED_FUNCTION_0_8();
            do
            {
              v39 = *v37++;
              *v36 = v39;
              v36 += v7;
              --v38;
            }

            while (v38);
          }
        }

        else if (v11 == 2)
        {
          v18 = v52;
          if (a3[7])
          {
            OUTLINED_FUNCTION_0_8();
            do
            {
              v35 = *v33++;
              *v32 = v35;
              v32 += v7;
              --v34;
            }

            while (v34);
          }
        }

        else
        {
          v18 = v52;
          if (v11 == 1 && a3[7])
          {
            OUTLINED_FUNCTION_0_8();
            do
            {
              v31 = *v29++;
              *v28 = v31;
              v28 += v7;
              --v30;
            }

            while (v30);
          }
        }

        v27 += (size / v46);
        ++v26;
      }

      while (v26 < v24);
    }

    v22 = v51 + 1;
    a2 = v47;
    v5 = v25;
    if (v51 + 1 == v45 - v44)
    {
      v19 = a3[6];
      v21 = v49;
      goto LABEL_35;
    }
  }

  v40 = 4294967246;
  v18 = v52;
LABEL_40:
  if (v9)
  {
    v41 = v18;
    (*(*v9 + 8))(v9);
    v18 = v41;
  }

  if (v10)
  {
    v42 = v18;
    free(v10);
    v18 = v42;
  }

  if (v18)
  {
    free(v18);
  }

  return v40;
}

uint64_t TIFFReadPlugin::decodeTileChunky(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = _cg_TIFFTileSize64(a2, a2, a3, a4, a5, a6, a7, a8);
  v12 = *(a1 + 540);
  if (v12)
  {
    v13 = v11;
    v14 = *(a1 + 472);
    v15 = *(a1 + 528);
    v16 = *(a1 + 544);
    __src = malloc_type_malloc(v11, 0x100004077774924uLL);
    if (__src)
    {
      v42 = v13;
      v17 = (v12 + v14 - 1) / v12 * v15;
      v18 = malloc_type_malloc((v17 * v16), 0x100004077774924uLL);
      if (!v18)
      {
        v23 = 4294967246;
        v19 = __src;
LABEL_36:
        free(v19);
        return v23;
      }

      v19 = v18;
      v46[0] = (*(*a1 + 56))(a1);
      v46[1] = v20;
      if (*(a1 + 290) == 32 && *(a1 + 288) == 8)
      {
        v21 = *(a1 + 260);
        if (v21 == 3)
        {
          BYTE6(v46[0]) = -1;
          BYTE4(v46[0]) = 0;
          if (!*(a1 + 437))
          {
LABEL_13:
            v22 = 3;
            goto LABEL_14;
          }

          v22 = 2;
LABEL_14:
          BYTE5(v46[0]) = v22;
          goto LABEL_15;
        }

        if (v21 == 4)
        {
          v22 = 2;
          BYTE4(v46[0]) = 2;
          if (!*(a1 + 437))
          {
            goto LABEL_13;
          }

          goto LABEL_14;
        }
      }

LABEL_15:
      PixelConverter = ImageIOPixelConverter::CreatePixelConverter(v46);
      v26 = *(a3 + 20);
      v25 = *(a3 + 24);
      if (v26 >= v25)
      {
        v23 = 0;
      }

      else
      {
        v27 = PixelConverter;
        v39 = &v19[(v17 * v16)];
        v40 = v9;
        v28 = *(a1 + 544);
        v41 = v19;
        while (1)
        {
          v44 = v26;
          v29 = v28 + v26 <= v25 ? v28 : v25 - v26;
          if (*(a3 + 28))
          {
            break;
          }

LABEL_28:
          v19 = v41;
          if (v26 < v29 + v26)
          {
            v36 = *a3 + (v26 - *(a3 + 20)) * *(a3 + 36);
            v37 = v41;
            do
            {
              (*(*v27 + 24))(v27, v37, v36, *(a3 + 28));
              v36 += *(a3 + 36);
              v37 += v17;
              --v29;
            }

            while (v29);
          }

          v23 = 0;
          v28 = *(a1 + 544);
          v26 += v28;
          v25 = *(a3 + 24);
          if (v28 + v44 >= v25)
          {
            goto LABEL_35;
          }
        }

        v30 = 0;
        v31 = 0;
        while (1)
        {
          bzero(__src, v42);
          if (_cg_TIFFReadTileWithSize(v9, __src, v42, v31, v26, 0, 0) == -1)
          {
            break;
          }

          v32 = *(a1 + 528);
          v43 = v30;
          if (v29)
          {
            v33 = 0;
            v34 = &v41[v30];
            v35 = __src;
            while (&v34[v32] <= v39)
            {
              memcpy(v34, v35, v32);
              v32 = *(a1 + 528);
              v35 += v32;
              v34 += v17;
              if (++v33 >= v29)
              {
                goto LABEL_27;
              }
            }

            break;
          }

LABEL_27:
          v31 = (*(a1 + 540) + v31);
          v30 = v32 + v43;
          v9 = v40;
          if (v31 >= *(a3 + 28))
          {
            goto LABEL_28;
          }
        }

        v23 = 4294967246;
        v19 = v41;
      }

LABEL_35:
      free(__src);
      goto LABEL_36;
    }
  }

  return 4294967246;
}

uint64_t TIFFReadPlugin::decodeTilePlanar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  size = *(a1 + 552);
  if (!size)
  {
    size = *(a1 + 504);
  }

  v4 = (*(a1 + 320) + 7) >> 3;
  v5 = *(a1 + 324);
  v6 = *(a1 + 322) + 7;
  v58 = 0;
  v57 = 0;
  v59 = xmmword_186209DE8;
  v60 = 4;
  if (*(a1 + 290) == 32 && !*(a1 + 437))
  {
    LODWORD(v59) = 2;
    DWORD2(v59) = 0;
  }

  v44 = v6 >> 3;
  if (*(a1 + 540) <= *(a1 + 472))
  {
    v7 = *(a1 + 472);
  }

  else
  {
    v7 = *(a1 + 540);
  }

  if (v4 - 3 <= 0xFFFFFFFD && v4 != 4)
  {
    LogError("decodeTilePlanar", 2118, "*** ERROR: decodeTilePlanar cannot handle %d bytes/component (%5d bpp)\n", v4, v44);
    return 4294967246;
  }

  v50 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v50)
  {
    return 4294967246;
  }

  v55 = malloc_type_malloc((v7 * v44 + 15) & 0xFFFFFFF0, 0x100004077774924uLL);
  if (!v55)
  {
    free(v50);
    return 4294967246;
  }

  v56 = 0;
  LOWORD(v57) = 1542;
  BYTE2(v57) = 0;
  WORD2(v57) = 1;
  HIWORD(v57) = *(a1 + 256);
  LOWORD(v58) = *(a1 + 320);
  BYTE2(v58) = 0;
  v9 = ImageIOPixelConverter::CreatePixelConverter(&v56);
  v10 = a3;
  v12 = *(a3 + 20);
  v11 = *(a3 + 24);
  if (v12 >= v11)
  {
LABEL_53:
    v40 = 0;
  }

  else
  {
    v13 = v9;
    v14 = *(a1 + 512);
    v15 = *(a1 + 486);
    if (((v14 - v15) & 0xFFFE) != 0)
    {
      v16 = (v14 - v15);
    }

    else
    {
      v16 = 1;
    }

    v46 = v16;
    v17 = *(a1 + 544);
    v42 = *(a1 + 486);
    v43 = *(a1 + 512);
    while (1)
    {
      v18 = v17 + v12 <= v11 ? v17 : v11 - v12;
      v54 = v18;
      v19 = *(v10 + 28);
      if (v19)
      {
        break;
      }

LABEL_52:
      v17 = *(a1 + 544);
      v12 += v17;
      v10 = a3;
      v11 = *(a3 + 24);
      if (v12 >= v11)
      {
        goto LABEL_53;
      }
    }

    v20 = 0;
    v21 = *(a1 + 540);
    v52 = v12;
    while (1)
    {
      v22 = v21 + v20;
      v23 = v21 + v20 <= v19 ? v21 : v19 - v20;
      if (v14 != v15)
      {
        break;
      }

LABEL_51:
      v20 = v22;
      if (v22 >= v19)
      {
        goto LABEL_52;
      }
    }

    v24 = 0;
    v49 = v20;
    v45 = v20 * v44;
    while (1)
    {
      bzero(v50, size);
      v51 = v24;
      if (_cg_TIFFReadTileWithSize(a2, v50, size, v49, v52, 0, v24) == -1)
      {
        break;
      }

      if (v54)
      {
        v25 = 0;
        v26 = v50;
        v27 = (*a3 + v45 + (v52 - *(a3 + 20)) * *(a3 + 36) + *(&v59 + v51) * v4);
        do
        {
          (*(*v13 + 24))(v13, v26, v55, *(a1 + 540));
          if (v4 == 4)
          {
            if (v23)
            {
              v36 = v27;
              v37 = v23;
              v38 = v55;
              do
              {
                v39 = *v38++;
                *v36 = v39;
                v36 += v5;
                --v37;
              }

              while (v37);
            }
          }

          else if (v4 == 2)
          {
            if (v23)
            {
              v32 = v27;
              v33 = v23;
              v34 = v55;
              do
              {
                v35 = *v34++;
                *v32 = v35;
                v32 += v5;
                --v33;
              }

              while (v33);
            }
          }

          else if (v4 == 1 && v23)
          {
            v28 = v23;
            v29 = v27;
            v30 = v55;
            do
            {
              v31 = *v30++;
              *v29 = v31;
              v29 += v5;
              --v28;
            }

            while (v28);
          }

          v26 += *(a1 + 528);
          v27 = (v27 + *(a3 + 36));
          ++v25;
        }

        while (v25 < v54);
      }

      v24 = v51 + 1;
      v12 = v52;
      if (v51 + 1 == v46)
      {
        v21 = *(a1 + 540);
        v19 = *(a3 + 28);
        v22 = v21 + v49;
        v15 = v42;
        v14 = v43;
        goto LABEL_51;
      }
    }

    LogError("decodeTilePlanar", 2153, "*** ERROR: TIFFReadTileWithSize failed\n");
    v40 = 4294967246;
  }

  free(v50);
  free(v55);
  return v40;
}

uint64_t TIFFReadPlugin::decodeRGBAImage(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 244);
  if (*(a1 + 252) * v4 <= 0xF4240)
  {
    v6 = *(a1 + 200);
    v7 = v6 >= 0x400;
    v8 = *(a1 + 248) * v4;
    v9 = 300 * v6;
    v5 = !v7 || v8 > v9;
  }

  else
  {
    v5 = 1;
  }

  if ((_cg_TIFFReadRGBAImageOriented(a2, *(a3 + 28), *(a3 + 32), *a3, 1, v5) & 0x80000000) != 0)
  {
    return 4294967246;
  }

  v14.data = *a3;
  v11 = *(a3 + 28);
  v12.i64[0] = v11;
  v12.i64[1] = HIDWORD(v11);
  *&v14.height = vextq_s8(v12, v12, 8uLL);
  v14.rowBytes = *(a3 + 36);
  vImagePermuteChannels_ARGB8888(&v14, &v14, TIFFReadPlugin::decodeRGBAImage(tiff *,IIODecodeInfo)::permuteMap, 0x10u);
  return 0;
}

void TIFFReadPlugin::initialize()
{
  _cg_jpeg_mem_term("initialize", 540, "*** bad imageOffsets...\n");
}

{
  _cg_jpeg_mem_term("initialize", 657, "*** ERROR: unsupported combination PHOTOMETRIC_YCBCR and SAMPLEFORMAT_IEEEFP\n");
}

{
  _cg_jpeg_mem_term("initialize", 626, "*** ERROR: corrupt logLUV / CIE Log2(L)(u',v') image\n");
}

{
  _cg_jpeg_mem_term("initialize", 592, "*** invalid idfOffset (NULL)\n");
}

{
  _cg_jpeg_mem_term("initialize", 582, "*** TIFFClientOpen failed - NULL _tifPtr\n");
}

{
  _cg_jpeg_mem_term("initialize", 538, "*** globalInfoForType('TIFF') failed...\n");
}

void TIFFReadPlugin::updateTiffStruct()
{
  _cg_jpeg_mem_term("updateTiffStruct", 1009, "*** realsamples '%d' not supported (<=32)\n");
}

{
  _cg_jpeg_mem_term("updateTiffStruct", 992, "*** ERROR: could not  get TIFFTAG_IMAGELENGTH\n");
}

{
  _cg_jpeg_mem_term("updateTiffStruct", 989, "*** ERROR: could not get TIFFTAG_IMAGEWIDTH\n");
}

void TIFFReadPlugin::handleColorSpace()
{
  _cg_jpeg_mem_term("handleColorSpace", 1207, "*** ERROR: TIFFGetField 'TIFFTAG_COLORMAP' failed (paletteB is NULL)\n");
}

{
  _cg_jpeg_mem_term("handleColorSpace", 1206, "*** ERROR: TIFFGetField 'TIFFTAG_COLORMAP' failed (paletteG is NULL)\n");
}

{
  _cg_jpeg_mem_term("handleColorSpace", 1205, "*** ERROR: TIFFGetField 'TIFFTAG_COLORMAP' failed (paletteR is NULL)\n");
}

void IIOImageWriteSession::IIOImageWriteSession(IIOImageWriteSession *this, CFStringRef string)
{
  *this = &unk_1EF4D5E30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 36) = 1;
  *(this + 10) = this;
  *(this + 11) = this;
  *(this + 19) = 0;
  if (!string)
  {
    *(this + 19) = -50;
    return;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(string);
  v5 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation + 6, 0x100004077774924uLL);
  if (CFStringGetFileSystemRepresentation(string, v5, MaximumSizeOfFileSystemRepresentation) == 1)
  {
    v6 = strlen(v5);
    v7 = reallocf(v5, v6 + 1);
    if (!v7)
    {
      return;
    }

    v5 = v7;
    TempFileName = IIOImageWriteSession::createTempFileName(v7, v7);
    if (TempFileName)
    {
      v9 = TempFileName;
      v10 = fopen(TempFileName, "w+b");
      *(this + 4) = v10;
      if (v10)
      {
        *(this + 73) = 1;
        if ((gIIODebugFlags & 0x200000000000) != 0)
        {
          ImageIOLog(">>> CGImageWriteSessionCreateWithFile: creating FILE* %p\n", v10);
        }

        *(this + 6) = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x1E695E480], v9);
        *(this + 5) = CFRetain(string);
      }

      else
      {
        *(this + 19) = *__error();
        v11 = *__error();
        v12 = __error();
        v13 = strerror(*v12);
        LogError("IIOImageWriteSession", 122, "*** ERROR: cannot create: '%s'\n         error = %d (%s)\n", v9, v11, v13);
      }

      free(v9);
    }

    else
    {
      *(this + 19) = -37;
    }

    goto LABEL_10;
  }

  *(this + 19) = -4172;
  if (v5)
  {
LABEL_10:
    free(v5);
  }
}

__CFArray *CreateIIMHashArrayForIIMBlock(void *a1, CC_LONG a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    memset(&v11, 0, sizeof(v11));
    *md = 0;
    v13 = 0;
    CC_MD5_Init(&v11);
    CC_MD5_Update(&v11, a1, a2);
    v6 = md;
    CC_MD5_Final(md, &v11);
    v7 = 16;
    do
    {
      v8 = CFNumberCreate(v4, kCFNumberCharType, v6);
      if (v8)
      {
        v9 = v8;
        CFArrayAppendValue(Mutable, v8);
        CFRelease(v9);
      }

      ++v6;
      --v7;
    }

    while (v7);
  }

  return Mutable;
}

void CreateIPTCDataFromProperties(uint64_t a1, CFArrayRef theArray)
{
  v3 = 0;
  *a1 = 1296646712;
  *(a1 + 4) = 9476;
  *(a1 + 6) = 0;
  *(a1 + 10) = 4096;
  v4 = a1 + 12;
  do
  {
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
    if (CFNumberGetValue(ValueAtIndex, kCFNumberCharType, &valuePtr))
    {
      *(v4 + v3) = valuePtr;
    }

    ++v3;
  }

  while (v3 != 16);
  CFRelease(theArray);
}

uint64_t WebPReadPlugin::decodeAnimatedWebPOptimized(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  if (*(a1 + 262))
  {
    v8 = 4;
  }

  else if (*(a1 + 436) == 1)
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(a1 + 316);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  v10 = 4294967246;
  memset(v33, 0, sizeof(v33));
  if (a2 && a3 && a4 && *(a1 + 224) != -1)
  {
    v11 = IIOImageReadSession::globalInfoForType(*(a1 + 24), 1466262096);
    if (!v11)
    {
      operator new();
    }

    if (GlobalWebPInfo::hasValidFrameBuffer(v11, *(a1 + 224)))
    {
      std::mutex::lock((v11 + 40));
      if (*(v11 + 36))
      {
        v12 = *v11;
        std::mutex::unlock((v11 + 40));
        if (v12)
        {
          memcpy(a3, v12, a4);
          return 0;
        }
      }

      else
      {
        std::mutex::unlock((v11 + 40));
      }
    }

    WebPAnimDecoderOptionsInitInternal(v35, 263);
    if (*(a1 + 436) == 1)
    {
      v13 = 8;
    }

    else
    {
      v13 = 1;
    }

    LODWORD(v35[0]) = v13;
    v14 = WebPAnimDecoderNewInternal(a2, v35, 263);
    if (!v14)
    {
      return 4294967243;
    }

    v15 = v14;
    if (!WebPAnimDecoderGetInfo(v14, v33))
    {
      goto LABEL_54;
    }

    v18 = DWORD1(v33[0]);
    if ((LODWORD(v33[0]) - 32769) < 0xFFFF8000 || (DWORD1(v33[0]) - 32769) <= 0xFFFF7FFF)
    {
      _cg_jpeg_mem_term("decodeAnimatedWebPOptimized", 541, "*** ERROR: invalid canvas dimensions %dx%d\n");
LABEL_56:
      v10 = 4294967246;
      goto LABEL_49;
    }

    if (*&v33[0] != *(a1 + 308))
    {
      goto LABEL_56;
    }

    *(v11 + 7) = v33[0];
    *(v11 + 8) = v18;
    if (*(v11 + 36) == 1)
    {
      v20 = *(v11 + 6);
      if (v20 < *(a1 + 224))
      {
        std::mutex::lock((v11 + 40));
        if (*(v11 + 36))
        {
          v21 = *v11;
          std::mutex::unlock((v11 + 40));
          if (v21)
          {
            v22 = v20 + 1;
            LODWORD(v32) = 0;
            v23 = v20 + 1;
            while (WebPAnimDecoderHasMoreFrames(v15) && WebPAnimDecoderSkipFrame(v15, &v32))
            {
              if (!--v23)
              {
                if (!WebPAnimDecoderRestoreCanvas(v15, v21, v20 + 1, v32))
                {
                  break;
                }

                if (v20 >= *(a1 + 224))
                {
LABEL_48:
                  v10 = 0;
                  goto LABEL_49;
                }

                goto LABEL_41;
              }
            }

LABEL_54:
            v10 = 4294967243;
LABEL_49:
            WebPAnimDecoderDelete(v15, v16, v17);
            return v10;
          }
        }

        else
        {
          std::mutex::unlock((v11 + 40));
        }
      }
    }

    v22 = 0;
LABEL_41:
    v10 = 4294967243;
    while (WebPAnimDecoderHasMoreFrames(v15))
    {
      OUTLINED_FUNCTION_2_2();
      Next = WebPAnimDecoderGetNext(v15, v24, v25);
      if (!Next)
      {
        goto LABEL_49;
      }

      v16 = v32;
      if (!v32)
      {
        goto LABEL_49;
      }

      v27 = *(a1 + 224);
      if (v22 == v27)
      {
        v30 = WebPReadPlugin::copyDecodedFrameToBuffer(Next, v32, a3, v33[0], DWORD1(v33[0]), v9, v8);
        if (v30)
        {
          v10 = v30;
          goto LABEL_49;
        }

        v31 = DWORD1(v33[0]) * LODWORD(v33[0]);
        if (v31 >> 62)
        {
          _cg_jpeg_mem_term("decodeAnimatedWebPOptimized", 600, "*** ERROR: invalid canvas size %dx%d\n");
        }

        else
        {
          GlobalWebPInfo::setFrameBuffer(v11, v32, 4 * v31, v33[0], SDWORD1(v33[0]), *(a1 + 224));
        }

        goto LABEL_48;
      }

      if (v22++ >= v27)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_54;
  }

  return v10;
}

uint64_t WebPReadPlugin::copyDecodedFrameToBuffer(WebPReadPlugin *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5, int a6, int a7)
{
  result = 4294967246;
  if (a2)
  {
    if (a3)
    {
      result = 4294967246;
      if (a4)
      {
        if (a5 && (a7 - 5) >= 0xFFFFFFFE)
        {
          v11 = 4 * a4;
          if (a7 == 4)
          {
            v12 = 0;
            v13 = 0;
            v14 = a5;
            do
            {
              memcpy(&a3[v13], &a2[v12], v11);
              v13 += a6;
              v12 += v11;
              --v14;
            }

            while (v14);
          }

          else
          {
            v15 = 0;
            v16 = a4 & 0xFFFFFFFC;
            v17 = a5;
            do
            {
              v18 = 0;
              if (v16)
              {
                do
                {
                  OUTLINED_FUNCTION_0_9();
                  v21[3] = v20[4];
                  v21[4] = v20[5];
                  v21[5] = v20[6];
                  v21[6] = v20[8];
                  v21[7] = v20[9];
                  v21[8] = v20[10];
                  v21[9] = v20[12];
                  v21[10] = v20[13];
                  v21[11] = v20[14];
                }

                while (v22 + 4 < v16);
                v18 = v19;
              }

              if (a4 > v18)
              {
                do
                {
                  OUTLINED_FUNCTION_0_9();
                }

                while (v23 != 1);
              }

              ++v15;
            }

            while (v15 != v17);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t WebPReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v42 = 0;
  seed = 0;
  *(this + 56) = *(a2 + 9);
  if ((gIIODebugFlags & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(this + 55) >> 24;
  v9 = MEMORY[0x1E69E9830];
  if (v8 <= 0x7F)
  {
    v10 = OUTLINED_FUNCTION_0(v8);
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v11 = *(this + 55);
  }

  if (v10)
  {
    v12 = (v11 >> 24);
  }

  else
  {
    v12 = 46;
  }

  v13 = v11 << 8 >> 24;
  if (v13 <= 0x7F)
  {
    v14 = OUTLINED_FUNCTION_0(v13);
  }

  else
  {
    v14 = __maskrune(v13, 0x40000uLL);
    v15 = *(this + 55);
  }

  if (v14)
  {
    v16 = (v15 << 8 >> 24);
  }

  else
  {
    v16 = 46;
  }

  v17 = v15 >> 8;
  if (v17 <= 0x7F)
  {
    v18 = OUTLINED_FUNCTION_0(v17);
  }

  else
  {
    v18 = __maskrune(v17, 0x40000uLL);
    v19 = *(this + 55);
  }

  if (v18)
  {
    v20 = (v19 >> 8);
  }

  else
  {
    v20 = 46;
  }

  if (v19 <= 0x7F)
  {
    if ((*(v9 + 4 * v19 + 60) & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v21 = 46;
    goto LABEL_25;
  }

  if (!__maskrune(v19, 0x40000uLL))
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(this + 220);
LABEL_25:
  ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v16, v20, v21, iioTypeStr[a3], "virtual OSStatus WebPReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v22 = *(this + 3);
  if (v22)
  {
    v23 = IIOImageReadSession::mapData(v22);
  }

  else
  {
    v23 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    v31 = *(this + 78);
    v27 = *(this + 79) * v31;
    v28 = v31;
    LODWORD(v32) = *(this + 77);
    v30 = v32;
    BaseAddress = _ImageIO_Malloc(v27, *(this + 52), &v42, kImageMalloc_WEBP_Data[0], 0, 0);
    v29 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 0;
      goto LABEL_53;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v27 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v42 = v27;
    v28 = 0.0;
    v29 = 1;
    v30 = 0.0;
  }

  if (!BaseAddress)
  {
LABEL_44:
    if (!v29)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  bzero(BaseAddress, v27);
  v33 = (*(*this + 120))(this, BaseAddress, v27);
  if (v33)
  {
    BlockArray = v33;
    *(this + 26) = 0;
    if ((v29 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_44;
  }

  v34 = 0;
  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = v30;
  v43.size.height = v28;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v27, v43, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v35 = 0;
  }

  else
  {
    v44.origin.x = 0.0;
    v44.origin.y = 0.0;
    v44.size.width = v30;
    v44.size.height = v28;
    *(&v35 - 1) = CGRectUnion(*(this + 120), v44);
    v34 = v36;
    v30 = v37;
    v28 = v38;
  }

  BlockArray = 0;
  *(this + 15) = v34;
  *(this + 16) = v35;
  *(this + 17) = v30;
  *(this + 18) = v28;
  if ((v29 & 1) == 0)
  {
    goto LABEL_53;
  }

  BaseAddress = 0;
LABEL_49:
  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_50:
  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v42);
  }

LABEL_53:
  if (v23)
  {
    v39 = *(this + 3);
    if (v39)
    {
      IIOImageReadSession::unmapData(v39);
    }
  }

  return BlockArray;
}

vImage_Error ATXReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v44 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(this + 55) >> 24;
  v9 = MEMORY[0x1E69E9830];
  if (v8 <= 0x7F)
  {
    v10 = OUTLINED_FUNCTION_0(v8);
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v11 = *(this + 55);
  }

  if (v10)
  {
    v12 = (v11 >> 24);
  }

  else
  {
    v12 = 46;
  }

  v13 = v11 << 8 >> 24;
  if (v13 <= 0x7F)
  {
    v14 = OUTLINED_FUNCTION_0(v13);
  }

  else
  {
    v14 = __maskrune(v13, 0x40000uLL);
    v15 = *(this + 55);
  }

  if (v14)
  {
    v16 = (v15 << 8 >> 24);
  }

  else
  {
    v16 = 46;
  }

  v17 = v15 >> 8;
  if (v17 <= 0x7F)
  {
    v18 = OUTLINED_FUNCTION_0(v17);
  }

  else
  {
    v18 = __maskrune(v17, 0x40000uLL);
    v19 = *(this + 55);
  }

  if (v18)
  {
    v20 = (v19 >> 8);
  }

  else
  {
    v20 = 46;
  }

  if (v19 <= 0x7F)
  {
    if ((*(v9 + 4 * v19 + 60) & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v21 = 46;
    goto LABEL_25;
  }

  if (!__maskrune(v19, 0x40000uLL))
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(this + 220);
LABEL_25:
  ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v16, v20, v21, iioTypeStr[a3], "virtual OSStatus ATXReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v22 = *(this + 3);
  if (v22)
  {
    v23 = IIOImageReadSession::mapData(v22);
  }

  else
  {
    v23 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v31) = *(this + 77);
    v30 = v31;
    v32 = *(this + 78);
    v28 = v32;
    v27 = *(this + 79) * v32;
    BaseAddress = _ImageIO_Malloc(v27, *(this + 52), &v44, kImageMalloc_ATX_Data[0], 0, 0);
    v29 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 0;
      goto LABEL_62;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v27 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v44 = v27;
    v28 = 0.0;
    v29 = 1;
    v30 = 0.0;
  }

  if (!BaseAddress)
  {
LABEL_53:
    if (!v29)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  memset(BaseAddress, 255, v27);
  if (*(this + 76) || *(this + 79))
  {
    BlockArray = ATXReadPlugin::decodeImageData420f(this, BaseAddress);
    goto LABEL_40;
  }

  if (!*(this + 75))
  {
LABEL_40:
    if (BlockArray)
    {
      goto LABEL_41;
    }

    goto LABEL_49;
  }

  BlockArray = ATXReadPlugin::decodeImageDataASTC(this, BaseAddress);
  if (BlockArray)
  {
LABEL_41:
    *(this + 26) = 0;
    if ((v29 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (*(this + 161) == 32 && *(this + 160) == 8 && *(this + 438) == 1)
  {
    v33 = *(this + 78);
    dest.data = BaseAddress;
    dest.height = v33;
    v34 = *(this + 79);
    dest.width = *(this + 77);
    dest.rowBytes = v34;
    vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
  }

LABEL_49:
  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_53;
  }

  v35 = 0;
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = v30;
  v45.size.height = v28;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v27, v45, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v36 = 0;
  }

  else
  {
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    v46.size.width = v30;
    v46.size.height = v28;
    *(&v36 - 1) = CGRectUnion(*(this + 120), v46);
    v35 = v37;
    v30 = v38;
    v28 = v39;
  }

  BlockArray = 0;
  *(this + 15) = v35;
  *(this + 16) = v36;
  *(this + 17) = v30;
  *(this + 18) = v28;
  if ((v29 & 1) == 0)
  {
    goto LABEL_62;
  }

  BaseAddress = 0;
LABEL_58:
  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_59:
  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v44);
  }

LABEL_62:
  if (v23)
  {
    v40 = *(this + 3);
    if (v40)
    {
      IIOImageReadSession::unmapData(v40);
    }
  }

  return BlockArray;
}

void ReadSceneType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + 4) == 1 && *(a7 + 2) == 7)
  {
    OUTLINED_FUNCTION_0_10();
    ReadMetadataByte(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

void ReadArtist(void *a1, IIOImageReadSession *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, uint64_t a7, uint64_t a8)
{
  if (!*(a7 + 4))
  {
    return;
  }

  if (*(a7 + 2) != 2)
  {
    return;
  }

  v13 = OUTLINED_FUNCTION_1_2(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = *MEMORY[0x1E695E480];
  v16 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v13, 0x8000100u);
  if (v16)
  {
    v17 = v16;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v15, v16, @"; ");
    if (!ArrayBySeparatingStrings)
    {
      goto LABEL_22;
    }

    TagWithPath = CGImageMetadataGetTagWithPath(a1, 0, @"dc:creator");
    if (!TagWithPath || (v20 = TagWithPath, CGImageMetadataTagGetType(TagWithPath) != kCGImageMetadataTypeArrayOrdered))
    {
      Mutable = CFArrayCreateMutable(v15, 1, MEMORY[0x1E695E9C0]);
      if (CFArrayGetCount(ArrayBySeparatingStrings) >= 1)
      {
        v27 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v27);
          CFArraySetValueAtIndex(Mutable, v27++, ValueAtIndex);
        }

        while (v27 < CFArrayGetCount(ArrayBySeparatingStrings));
      }

      v29 = CGImageMetadataTagCreate(a3, a4, a5, kCGImageMetadataTypeArrayOrdered, Mutable);
      if (v29)
      {
        v30 = v29;
        CGImageMetadataAddTagWithKey(a1, a6, v29);
        CFRelease(v30);
      }

      goto LABEL_23;
    }

    Value = CGImageMetadataTagGetValue(v20);
    if (Value && (v22 = Value, v23 = CFGetTypeID(Value), v23 == CFArrayGetTypeID()))
    {
      Mutable = CFArrayCreateMutableCopy(v15, 0, v22);
      if (CFArrayGetCount(ArrayBySeparatingStrings) >= 1)
      {
        v25 = 0;
        do
        {
          v26 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v25);
          CFArrayAppendValue(Mutable, v26);
          ++v25;
        }

        while (v25 < CFArrayGetCount(ArrayBySeparatingStrings));
      }

      CGImageMetadataTagSetValue(v20, Mutable);
    }

    else
    {
LABEL_22:
      Mutable = 0;
    }

LABEL_23:
    free(v14);
    CFRelease(v17);
    if (ArrayBySeparatingStrings)
    {
      CFRelease(ArrayBySeparatingStrings);
    }

    if (Mutable)
    {

      CFRelease(Mutable);
    }

    return;
  }

  free(v14);
}

unsigned __int8 *ReadAndCreateASCIIString(IIOImageReadSession *a1, unsigned __int16 *a2, uint64_t a3, int a4)
{
  Size = IIOImageReadSession::getSize(a1);
  v9 = *(a2 + 1);
  if (Size < v9)
  {
    _cg_jpeg_mem_term("ReadAndCreateASCIIString", 970, "p->count: %ld > rrefSize: %ld\n");
    return 0;
  }

  v12 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
  v10 = v12;
  if (!v12)
  {
    return v10;
  }

  v12[*(a2 + 1)] = 0;
  v13 = *(a2 + 1);
  if (v13 > 4)
  {
    v15 = *(a2 + 2);
    if (a4)
    {
      v15 = bswap32(v15);
      *(a2 + 2) = v15;
    }

    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a1, v12, a3 + v15, v13);
    v17 = *(a2 + 1);
    if (BytesAtOffset == v17)
    {
      return v10;
    }

    LogWarning("ReadAndCreateASCIIString", 994, "Unable to read ASCII TIFF Tag #%d with reported length (%u)\n", *a2, v17);
    free(v10);
    return 0;
  }

  v14 = *(a2 + 1);

  return memmove(v12, a2 + 4, v14);
}

void ReadCopyright(CGImageMetadata *a1, IIOImageReadSession *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a7 + 4))
  {
    if (*(a7 + 2) == 2)
    {
      v9 = OUTLINED_FUNCTION_1_2(a1, a2, a3, a4, a5, a6, a7, a8);
      if (v9)
      {
        v10 = v9;
        v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
        if (v11)
        {
          v12 = v11;
          CGImageMetadataSetValueWithPath(a1, 0, @"dc:rights[x-default]", v11);
          CFRelease(v12);
        }

        free(v10);
      }
    }
  }
}

void ReadImageDescription(CGImageMetadata *a1, IIOImageReadSession *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a7 + 4))
  {
    if (*(a7 + 2) == 2)
    {
      v9 = OUTLINED_FUNCTION_1_2(a1, a2, a3, a4, a5, a6, a7, a8);
      if (v9)
      {
        v10 = v9;
        v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
        if (v11)
        {
          v12 = v11;
          CGImageMetadataSetValueWithPath(a1, 0, @"dc:description[x-default]", v11);
          CFRelease(v12);
        }

        free(v10);
      }
    }
  }
}

void ReadFlash(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + 4) == 1 && *(a7 + 2) == 3)
  {
    OUTLINED_FUNCTION_0_10();
    ReadMetadataShort(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23);
    TagWithPath = CGImageMetadataGetTagWithPath(a1, 0, @"exif:Flash");
    if (TagWithPath)
    {
      v17 = TagWithPath;
      Value = CGImageMetadataTagGetValue(TagWithPath);
      IntValue = CFStringGetIntValue(Value);
      XMPFlashStructFromInt = CreateXMPFlashStructFromInt(IntValue);
      if (XMPFlashStructFromInt)
      {
        v21 = XMPFlashStructFromInt;
        CGImageMetadataTagSetValueType(v17, 6);
        CGImageMetadataTagSetValue(v17, v21);

        CFRelease(v21);
      }
    }
  }
}

void ReadFileSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + 4) == 1 && *(a7 + 2) == 7)
  {
    OUTLINED_FUNCTION_0_10();
    ReadMetadataByte(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

void ReadCompositeTimes(uint64_t a1, IIOImageReadSession *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {
    *(a7 + 8) = bswap32(*(a7 + 8));
  }

  if (*(a7 + 2) == 7)
  {
    if (*(a7 + 4) <= 0x39u)
    {
      _cg_jpeg_mem_term("ReadCompositeTimes", 1716, "*** ERROR: count < fixedSize + sizeof(uint16_t) [%d < %d]");
      return;
    }

    v50 = a3;
    v51 = a4;
    name = a5;
    v48 = a1;
    v49 = a6;
    v12 = malloc_type_calloc(0x38uLL, 1uLL, 0x100004052888210uLL);
    v53 = 0;
    v13 = OUTLINED_FUNCTION_2_3();
    Mutable = CFArrayCreateMutable(v13, v14, v15);
    IIOImageReadSession::getBytesAtOffset(a2, v12, *(a7 + 8) + a8, 56);
    if (a9)
    {
      for (i = 0; i != 56; i += 4)
      {
        *&v12[i] = bswap32(*&v12[i]);
      }
    }

    for (j = 0; j != 56; j += 8)
    {
      v42 = *&v12[j];
      v46 = *&v12[j + 4];
      v19 = OUTLINED_FUNCTION_2_3();
      v21 = CFStringCreateWithFormat(v19, v20, @"%u/%u", v42, v46);
      CFArrayAppendValue(Mutable, v21);
      CFRelease(v21);
    }

    IIOImageReadSession::getBytesAtOffset(a2, &v53 + 2, a8 + *(a7 + 8) + 56, 2);
    v22 = HIWORD(v53);
    if (a9)
    {
      v22 = __rev16(HIWORD(v53));
      HIWORD(v53) = v22;
    }

    v43 = v22;
    v23 = OUTLINED_FUNCTION_2_3();
    v26 = CFStringCreateWithFormat(v23, v24, v25, v43);
    OUTLINED_FUNCTION_3_2(v26);
    CFRelease(@"%u/%u");
    if (HIWORD(v53))
    {
      IIOImageReadSession::getBytesAtOffset(a2, &v53, a8 + *(a7 + 8) + 58, 2);
      v27 = v53;
      if (a9)
      {
        v27 = __rev16(v53);
        LOWORD(v53) = v27;
      }

      v44 = v27;
      v28 = OUTLINED_FUNCTION_2_3();
      v31 = CFStringCreateWithFormat(v28, v29, v30, v44);
      OUTLINED_FUNCTION_3_2(v31);
      CFRelease(@"%u/%u");
      if ((*(a7 + 4) - 56) - 4 != 8 * v53)
      {
        goto LABEL_27;
      }

      v32 = (8 * v53);
      if (v53 >= 8u)
      {
        v12 = reallocf(v12, 8 * v53);
      }
    }

    else
    {
      if (*(a7 + 4) != 60)
      {
        goto LABEL_27;
      }

      v32 = 0;
    }

    IIOImageReadSession::getBytesAtOffset(a2, v12, a8 + *(a7 + 8) + 60, v32);
    v33 = v53;
    if (!a9)
    {
      goto LABEL_24;
    }

    if (v53)
    {
      v34 = 2 * v53;
      v35 = v12;
      do
      {
        *v35 = bswap32(*v35);
        ++v35;
        --v34;
      }

      while (v34);
LABEL_24:
      if (v33)
      {
        v36 = 0;
        v37 = (v12 + 4);
        do
        {
          v45 = *(v37 - 1);
          v47 = *v37;
          v38 = OUTLINED_FUNCTION_2_3();
          v40 = CFStringCreateWithFormat(v38, v39, @"%u/%u", v45, v47, v48, v49, v50, v51, name);
          OUTLINED_FUNCTION_3_2(v40);
          CFRelease(v32);
          ++v36;
          v37 += 2;
        }

        while (v36 < v53);
      }
    }

LABEL_27:
    if (Mutable)
    {
      v41 = CGImageMetadataTagCreate(v50, v51, name, kCGImageMetadataTypeArrayOrdered, Mutable);
      CFRelease(Mutable);
      if (v41)
      {
        CGImageMetadataAddTagWithKey(v48, v49, v41);
        CFRelease(v41);
      }
    }

    free(v12);
  }
}

uint64_t CreateMetadataFromDatablock(const void **a1, CFTypeRef *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = CFRetain(a2[1]);
  return (*(*a2 + 1))(a2);
}

unsigned __int16 *CreateMetadataFromDatablock(unsigned __int16 *result, unsigned __int16 a2)
{
  v2 = 0;
  do
  {
    *result = bswap32(*result) >> 16;
    result[1] = bswap32(result[1]) >> 16;
    *(result + 2) = vrev32_s8(*(result + 2));
    ++v2;
    result += 6;
  }

  while (v2 < a2);
  return result;
}

const char *CreateMetadataFromDatablock()
{
  return LogError("CreateMetadataFromDatablock", 2059, "*** ERROR: corrupt metadata input - too many invalid tag-IDs\n");
}

{
  return LogError("CreateMetadataFromDatablock", 2064, "*** ERROR: corrupt metadata input - too many invalid tag counts\n");
}

void ICOWritePlugin::writeAll(uint64_t a1, void *a2)
{
  for (i = 32; i != 512; i += 40)
  {
    v5 = *(a1 + i);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (a2)
  {
    free(a2);
  }
}

xpc_object_t IIOReadPlugin::createImageBlockSetFromXPCObject(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  result = iio_xpc_get_callback_dict(a2);
  if (!result)
  {
    return result;
  }

  value = xpc_dictionary_get_value(result, "iio_xpc_cb_blockset");
  count = xpc_array_get_count(value);
  *(a1 + 104) = count;
  if (!count)
  {
    ImageIOLog("*** ERROR: _blockCount == 0 -- decode failed?\n");
    return 0;
  }

  if (IIOReadPlugin::allocateBlockArray(a1, count))
  {
    return 0;
  }

  v30 = a4;
  v31 = a3;
  if (*(a1 + 104))
  {
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    while (1)
    {
      v15 = xpc_array_get_value(value, v10);
      v16 = iio_xpc_dictionary_get_CGRect(v15, "iio_xpc_cb_block_cgrect");
      v20 = v16;
      v21 = v17;
      v22 = v18;
      v23 = v19;
      if (v10)
      {
        v33.origin.x = v11;
        v33.origin.y = v12;
        v33.size.width = v13;
        v33.size.height = v14;
        v35.origin.x = v20;
        v35.origin.y = v21;
        v35.size.width = v22;
        v35.size.height = v23;
        *&v16 = CGRectUnion(v33, v35);
      }

      v14 = v19;
      v13 = v18;
      v12 = v17;
      v11 = v16;
      uint64 = xpc_dictionary_get_uint64(v15, "iio_xpc_cb_block_rowbytes");
      v25 = xpc_dictionary_get_value(v15, "iio_xpc_cb_decode_image_buffer");
      v26 = xpc_dictionary_get_uint64(v15, "iio_xpc_cb_decode_image_buffer_size");
      if (v22 * v23 > v26 || v23 * uint64 > v26)
      {
        break;
      }

      if (v25)
      {
        v27 = v26;
        if (v26)
        {
          region = 0;
          v28 = xpc_shmem_map(v25, &region);
          if (region)
          {
            if (v28 >= v27)
            {
              _ImageIO_AccreditMemory(region, v28);
              v34.origin.x = v20;
              v34.origin.y = v21;
              v34.size.width = v22;
              v34.size.height = v23;
              *(*(a1 + 96) + 8 * v10) = IIOReadPlugin::createImageBlock(a1, region, v28, v34, uint64, 1);
            }
          }
        }
      }

      ++v10;
      v29 = *(a1 + 104);
      if (v10 >= v29)
      {
        return IIOReadPlugin::imageBlockSetCreate(a1, v30, v29, *(a1 + 96), v31, v13, v14, v11, v12, v13, v14);
      }
    }

    return 0;
  }

  v29 = 0;
  v14 = 0.0;
  v13 = 0.0;
  v12 = 0.0;
  v11 = 0.0;
  return IIOReadPlugin::imageBlockSetCreate(a1, v30, v29, *(a1 + 96), v31, v13, v14, v11, v12, v13, v14);
}

__CFString *CopyProfileFromParams(IIODictionary *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  ObjectForKey = IIODictionary::getObjectForKey(a1, @"kCGImageCopyFileSetProfile");
  v2 = ObjectForKey;
  if (!ObjectForKey)
  {
    return v2;
  }

  v3 = CFGetTypeID(ObjectForKey);
  if (v3 != CFDataGetTypeID())
  {
    v5 = CFGetTypeID(v2);
    if (v5 == CFStringGetTypeID())
    {
      bzero(buffer, 0x400uLL);
      if (CFStringGetCString(v2, buffer, 1024, 0x8000100u))
      {
        bzero(&v12, 0x90uLL);
        if (!stat(buffer, &v12))
        {
          st_size = v12.st_size;
          if (v12.st_size)
          {
            Mutable = CFDataCreateMutable(0, v12.st_size);
            v2 = Mutable;
            if (Mutable)
            {
              CFDataSetLength(Mutable, st_size);
              v8 = open(buffer, 0, 438);
              v9 = v8;
              if ((gIIODebugFlags & 0x200000000000) != 0)
              {
                ImageIOLog(">>> %s: opening file [%d] '%s'\n", "CopyProfileFromParams", v8, buffer);
              }

              if (v9)
              {
                MutableBytePtr = CFDataGetMutableBytePtr(v2);
                read(v9, MutableBytePtr, st_size);
                if ((gIIODebugFlags & 0x200000000000) != 0)
                {
                  ImageIOLog("<<< %s: closing file [%d] '%s'\n", "CopyProfileFromParams", v9, buffer);
                }

                close(v9);
              }
            }

            return v2;
          }
        }
      }
    }

    else if (v2 == *MEMORY[0x1E695E738])
    {
      v11 = CFDataCreateMutable(0, 0);
      v2 = v11;
      if (v11)
      {
        CFDataSetLength(v11, 0);
      }

      return v2;
    }

    return 0;
  }

  return CFRetain(v2);
}

__CFData *copyIPTCFromParams(IIODictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = copyIPTCDictFromParams(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = SizeOfIPTCData(v1);
  if (v3)
  {
    v4 = v3;
    Mutable = CFDataCreateMutable(0, v3);
    v6 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, v4);
      MutableBytePtr = CFDataGetMutableBytePtr(v6);
      if (MutableBytePtr)
      {
        WriteIPTCData(v2, MutableBytePtr);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*v2 + 1))(v2);
  return v6;
}

void CopyJPEGXMPFromXMPParams(IIODictionary *a1, CFDataRef *a2, CFDataRef *a3, CFDataRef *a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        *a2 = 0;
        *a3 = 0;
        *a4 = 0;
        if (a1)
        {
          ObjectForKey = IIODictionary::getObjectForKey(a1, @"kCGImageCopyFileSetXMP");
          if (ObjectForKey)
          {
            v8 = ObjectForKey;
            v9 = CFGetTypeID(ObjectForKey);
            if (v9 == CFArrayGetTypeID())
            {
              v10 = CGImageMetadataCreateFromMetadataProperties(v8);
              if (v10)
              {
                v11 = v10;
                CGImageMetadataCreateSerializedDataAndExtendedData(v10, a2, a3, a4, 1246774599);

                CFRelease(v11);
              }
            }

            else
            {

              LogError("CopyJPEGXMPFromXMPParams", 721, "*** ERROR: value for kCGImageCopyFileSetXMP must be a CFArray");
            }
          }
        }
      }
    }
  }
}

BOOL CGImageCopyFileWithParametersOLD(__CFString *a1, const __CFString *a2, IIODictionary *a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v98 = 0;
  v97 = 0;
  v95 = 0;
  v94 = 0;
  v99[0] = 0;
  v99[1] = 0;
  v100 = 0;
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID() && v6 != CFDataGetTypeID() && v6 != CGDataProviderGetTypeID())
  {
    return 0;
  }

  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFStringGetTypeID())
    {
      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a2);
      OUTLINED_FUNCTION_0_12();
      v11 = malloc_type_malloc(v9, v10);
      CFStringGetFileSystemRepresentation(a2, v11, MaximumSizeOfFileSystemRepresentation);
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 != CFStringGetTypeID())
  {
    return 0;
  }

  v12 = CFStringGetMaximumSizeOfFileSystemRepresentation(a1);
  OUTLINED_FUNCTION_0_12();
  v11 = malloc_type_malloc(v13 + 6, v14);
  CFStringGetFileSystemRepresentation(a1, v11, v12);
  v15 = strrchr(v11, 47);
  if (v15)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = v11;
  }

  v17 = strlen(v16);
  memmove(v16 + 1, v16, v17 + 1);
  *v16 = 46;
  strcat(v11, "-XXXX");
  mktemp(v11);
LABEL_13:
  TypeID = CFStringGetTypeID();
  v19 = MEMORY[0x1E695E480];
  if (v6 == TypeID)
  {
    v20 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a1, kCFURLPOSIXPathStyle, 0);
    v21 = CGImageReadCreateWithURL(0, v20, 1, 0, 0);
    CFRelease(v20);
    if (!v21)
    {
      goto LABEL_128;
    }

LABEL_21:
    Source = CGImageSourceGetSource(v21);
    Size = IIOImageRead::getSize(Source);
    if (Size < 0xC || (v25 = Size, (v26 = CGImageReadSessionCreate(v21)) == 0))
    {
      CFRelease(v21);
      goto LABEL_128;
    }

    v27 = v26;
    v28 = CGImageSourceGetSource(v26);
    FILE = IIOImageReadSession::createFILE(v28);
    if (!FILE)
    {
      v41 = 0;
LABEL_44:
      CFRelease(v21);
      CFRelease(v27);
      if (!v11)
      {
        return v41;
      }

      goto LABEL_45;
    }

    v30 = FILE;
    v86 = v27;
    v31 = fopen(v11, "wb");
    if (!v31)
    {
      fclose(v30);
      v41 = 0;
LABEL_43:
      v27 = v86;
      goto LABEL_44;
    }

    v32 = v31;
    flockfile(v30);
    flockfile(v32);
    v89 = CopyProfileFromParams(a3);
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"kCGImageCopyFileSetIPTC");
    cf = copyIPTCFromParams(a3);
    v90 = CopyXMPFromIPTCParams(a3);
    CopyOrientationFromParams(a3, &v95);
    v33 = v99;
    if (!CopyDateTimeFromParams(a3, v99))
    {
      goto LABEL_33;
    }

    HIDWORD(v84) = LOBYTE(v99[0]);
    if (!LOBYTE(v99[0]))
    {
      v33 = 0;
    }

    __ptr = 0;
    if (fread(&__ptr, 1uLL, 4uLL, v30) != 4)
    {
      goto LABEL_33;
    }

    if (__ptr == 255 && BYTE1(__ptr) == 216 && BYTE2(__ptr) == 255)
    {
      LogError("CGImageCopyFileWithParametersOLD", 1571, "••• ERROR: CGImageCopyFileWithParametersOLD - skipping 'JPEG' case\n");
LABEL_33:
      v41 = 0;
LABEL_34:
      v33 = cf;
      goto LABEL_35;
    }

    v44 = __ptr == 77 && BYTE1(__ptr) == 77;
    v45 = v44;
    if (v44 && !BYTE2(__ptr) && HIBYTE(__ptr) == 42)
    {
      goto LABEL_135;
    }

    v46 = __ptr == 73 && BYTE1(__ptr) == 73;
    v47 = v46;
    if (v46 && BYTE2(__ptr) == 42 && !HIBYTE(__ptr))
    {
      goto LABEL_135;
    }

    v48 = BYTE2(__ptr) == 82 && v47;
    if (v48 && HIBYTE(__ptr) == 79)
    {
      goto LABEL_135;
    }

    if (BYTE2(__ptr) != 79)
    {
      v45 = 0;
    }

    v72 = HIBYTE(__ptr) == 82 ? v45 : 0;
    v73 = HIBYTE(__ptr) == 83 && v48;
    if ((v72 & 1) != 0 || v73)
    {
LABEL_135:
      if (OUTLINED_FUNCTION_1_4(4, v34, v35, v36, v37, v38, v39, v40, v76, v77, v78, v79, v80, v81, ObjectForKey, v84, v86, cf, v89, v90, v91, __ptr, SHIWORD(__ptr), v93, v94, v95, v96, v97, v98, SHIBYTE(v98)))
      {
        goto LABEL_126;
      }
    }

    else
    {
      v41 = 0;
      v74 = BYTE2(__ptr) == 85 && v47;
      if (!v74 || HIBYTE(__ptr))
      {
        goto LABEL_34;
      }

      v75 = OUTLINED_FUNCTION_1_4(4, v34, v35, v36, v37, v38, v39, v40, v76, v77, v78, v79, v80, v81, ObjectForKey, v84, v86, cf, v89, v90, v91, __ptr, BYTE2(__ptr), v93, v94, v95, v96, v97, v98, SHIBYTE(v98));
      v19 = MEMORY[0x1E695E480];
      if (v75)
      {
LABEL_126:
        v41 = 0;
LABEL_35:
        v42 = v89;
        v43 = v90;
        if (!v89)
        {
LABEL_37:
          if (v43)
          {
            CFRelease(v43);
          }

          if (v33)
          {
            CFRelease(v33);
          }

          fclose(v30);
          if (v32)
          {
            fclose(v32);
          }

          goto LABEL_43;
        }

LABEL_36:
        CFRelease(v42);
        goto LABEL_37;
      }
    }

    v49 = v85;
    if ((!v33 || HIBYTE(v98) == 1) && (!v90 || v98 == 1) && (!v85 || v94) && v95 && !v97)
    {
      fclose(v32);
      OUTLINED_FUNCTION_0_12();
      v32 = malloc_type_malloc(v25, v50);
      if (v32)
      {
        fseek(v30, 0, 0);
        if (fread(v32, 1uLL, v25, v30) == v25)
        {
          v51 = *v19;
          v52 = CFDataCreate(v51, v32, v25);
          if (v52)
          {
            v53 = v52;
            Mutable = CFDictionaryCreateMutable(v51, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              v55 = Mutable;
              v56 = IIODictionary::getObjectForKey(a3, @"kCGImageCopyFileSetOrientation");
              CFDictionaryAddValue(v55, @"Orientation", v56);
              EXIFJPEGData = CGImageCreateEXIFJPEGData(0, v53, 0, v55);
              if (EXIFJPEGData)
              {
                v58 = EXIFJPEGData;
                v59 = fopen(v11, "wb");
                if (v59)
                {
                  v60 = v59;
                  BytePtr = CFDataGetBytePtr(v58);
                  Length = CFDataGetLength(v58);
                  fwrite(BytePtr, Length, 1uLL, v60);
                  fclose(v60);
                  v97 = 1;
                  v33 = cfa;
                }

                CFRelease(v58);
              }

              CFRelease(v55);
            }

            CFRelease(v53);
          }
        }

        free(v32);
        v32 = 0;
      }

      v49 = v85;
    }

    v43 = v90;
    v41 = (!v33 || (v98 & 0x100) != 0) && (!v90 || (v98 & 1) != 0) && (!v95 || v97) && (v49 == 0 || v94);
    v42 = v89;
    if (!v89)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v6 == CFDataGetTypeID())
  {
    v22 = CGImageReadCreateWithData(0, a1, 1);
  }

  else
  {
    if (v6 != CGDataProviderGetTypeID())
    {
      goto LABEL_128;
    }

    v22 = CGImageReadCreateWithProvider(0, a1, 1);
  }

  v21 = v22;
  if (v22)
  {
    goto LABEL_21;
  }

LABEL_128:
  v41 = 0;
  if (!v11)
  {
    return v41;
  }

LABEL_45:
  if (v41)
  {
    if (a2)
    {
      v41 = 1;
    }

    else
    {
      v62 = CFStringGetMaximumSizeOfFileSystemRepresentation(a1);
      OUTLINED_FUNCTION_0_12();
      v65 = malloc_type_malloc(v63, v64);
      CFStringGetFileSystemRepresentation(a1, v65, v62);
      rename(v11, v65, v66);
      v41 = v67 == 0;
      if (v67)
      {
        v68 = __error();
        v69 = strerror(*v68);
        v70 = __error();
        LogError("CGImageCopyFileWithParametersOLD", 1701, "*** ImageIO: rename (%s to %s) failed: '%s' (%d)\n", v11, v65, v69, *v70);
        unlink(v11);
      }

      free(v65);
    }
  }

  else
  {
    unlink(v11);
    v41 = 0;
  }

  free(v11);
  return v41;
}

void CopyXMPFromIPTCParams_cold_1(void (***a1)(const void **), IIODictionary *this, CFDataRef *a3)
{
  IIODictionary::setObjectForKey(this, a1[1], @"{IPTC}");
  v6 = CGImageMetadataCreateFromLegacyProps(this);
  XMPData = CGImageMetadataCreateXMPData(v6, 0);
  (*(*this + 8))(this);
  (*a1)[1](a1);
  if (v6)
  {
    CFRelease(v6);
  }

  *a3 = XMPData;
}

void IIO_FillGeometry420()
{
  _cg_jpeg_mem_term("IIO_FillGeometry420", 228, "*** ERROR: IOSurface does not support rowBytes larger than INT32_MAX");
}

{
  _cg_jpeg_mem_term("IIO_FillGeometry420", 227, "*** ERROR: bad dimension (%d x %d) for creating a '420f' surface\n");
}

void IIO_CreateIOSurfaceWithFormatAndBuffer(int a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E9830];
  if ((a1 >> 24) <= 0x7F)
  {
    OUTLINED_FUNCTION_0_13(MEMORY[0x1E69E9830] + 4 * (a1 >> 24));
  }

  else
  {
    __maskrune(a1 >> 24, 0x40000uLL);
  }

  v3 = (v1 << 8) >> 24;
  if (v3 <= 0x7F)
  {
    OUTLINED_FUNCTION_0_13(v2 + 4 * v3);
  }

  else
  {
    __maskrune((v1 << 8) >> 24, 0x40000uLL);
  }

  v4 = v1 >> 8;
  if (v4 <= 0x7F)
  {
    OUTLINED_FUNCTION_0_13(v2 + 4 * v4);
  }

  else
  {
    __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    OUTLINED_FUNCTION_0_13(v2 + 4 * v1);
  }

  else
  {
    __maskrune(v1, 0x40000uLL);
  }

  _cg_jpeg_mem_term("IIO_CreateIOSurfaceWithFormatAndBuffer", 1159, "*** pixelFormat: '%c%c%c%c' not handled\n");
}

void IIO_CreateIOSurfaceFromImage(int a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E9830];
  if ((a1 >> 24) <= 0x7F)
  {
    OUTLINED_FUNCTION_0_13(MEMORY[0x1E69E9830] + 4 * (a1 >> 24));
  }

  else
  {
    __maskrune(a1 >> 24, 0x40000uLL);
  }

  v3 = (v1 << 8) >> 24;
  if (v3 <= 0x7F)
  {
    OUTLINED_FUNCTION_0_13(v2 + 4 * v3);
  }

  else
  {
    __maskrune((v1 << 8) >> 24, 0x40000uLL);
  }

  v4 = v1 >> 8;
  if (v4 <= 0x7F)
  {
    OUTLINED_FUNCTION_0_13(v2 + 4 * v4);
  }

  else
  {
    __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    OUTLINED_FUNCTION_0_13(v2 + 4 * v1);
  }

  else
  {
    __maskrune(v1, 0x40000uLL);
  }

  _cg_jpeg_mem_term("IIO_create_BGRA_RGBA_IOSurfaceFromImage", 1402, "*** ERROR: failed to create outputsurface %dx%d '%c%c%c%c'\n");
}

uint64_t LibJPEGReadPlugin::initialize(LibJPEGReadPlugin *this, IIODictionary *a2)
{
  v388[99] = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  v4 = *(this + 7);
  v5 = *(this + 6);
  if (IIODictionary::getBoolForKey(v5, @"kCGImageSourceUseCoreImage"))
  {
    if (qword_1ED569D90 != -1)
    {
      dispatch_once(&qword_1ED569D90, &__block_literal_global_16);
    }

    v6 = _MergedGlobals != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = IIOSkipMetadata(v5);
  v9 = IIOSkipXMP_and_IPTC(v5);
  v10 = OUTLINED_FUNCTION_10();
  if (IIODictionary::containsKey(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_10();
    ObjectForKey = IIODictionary::getObjectForKey(v12, v13);
  }

  else
  {
    ObjectForKey = 0;
  }

  theData = ObjectForKey;
  v15 = *(this + 119);
  v16 = OUTLINED_FUNCTION_10();
  if (IIODictionary::containsKey(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_10();
    Uint32ForKey = IIODictionary::getUint32ForKey(v18, v19);
  }

  else
  {
    Uint32ForKey = 0;
  }

  v21 = OUTLINED_FUNCTION_10();
  LODWORD(v377) = IIODictionary::containsKey(v21, v22);
  v367 = __PAIR64__(v8, v9);
  if (v377)
  {
    v23 = OUTLINED_FUNCTION_10();
    v25 = IIODictionary::getUint32ForKey(v23, v24);
  }

  else
  {
    v25 = -1;
  }

  v375 = v25;
  v26 = *(this + 232);
  if (v26 != 1)
  {
    v369 = v4;
    v371 = v3;
    HIDWORD(v377) = v7;
    v27 = *(this + 3);
    v28 = *(this + 26);
    v29 = *(this + 61);
    Size = IIOImageReadSession::getSize(v27);
    bzero(&v384, 0x410uLL);
    v383 = v27;
    if (!v28 && IIOImageReadSession::isFinal(v27))
    {
      v31 = IIOImageReadSession::getSize(v27);
      OUTLINED_FUNCTION_23(v31, v32, v31 - 2, v33, v34, v35, v36, v37, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377);
      *v380 = __rev16(0);
      v38 = IIOImageReadSession::getSize(v27);
      OUTLINED_FUNCTION_23(v38, v39, v38 - 3, v40, v41, v42, v43, v44, decodea, shouldInterpolatea, v269, v272, providerb, v278, v281, type_ida, v285, v287, v289, v291, v294, v297, v300, v303, v307, v311, v315, v318, bytesPerRowb, v324, v327, v330, datab, v336, v339, v342, v345, v348, widthb, v354, spaceb, v359, v362, v365, v368, v370, v372, theDataa, v376, v378);
      if (*v380 != 55807)
      {
        return 4294967246;
      }

      goto LABEL_19;
    }

    if (!v29 || Size == -1)
    {
      if (IIOImageReadSession::seek(v27, v28, 0) != v28)
      {
        return 4294967246;
      }

      Bytes = IIOImageReadSession::getBytes(v27, v386, 1024);
      if (!Bytes)
      {
        return 4294967246;
      }

      v57 = v386[0];
      v58 = 1;
      v59 = Bytes - 1;
      v384 = 1;
      v385 = Bytes - 1;
      if (Bytes == 1)
      {
        v60 = OUTLINED_FUNCTION_8(1, v50, v51, v52, v53, v54, v55, v56, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377, *v380, v381, v382, v383);
        if (!v60)
        {
          return 4294967246;
        }

        v59 = v60;
        v58 = 0;
      }

      v61 = v386[v58];
      v384 = v58 + 1;
      v385 = v59 - 1;
      v62 = (v57 - 255) <= 0xFFFFFF01 || v57 == 2;
      if (!v62 || v61 != 216)
      {
        return 4294967246;
      }

      if (v59 == 1)
      {
        v63 = OUTLINED_FUNCTION_8(v58 + 1, v50, v51, v52, v53, v54, v55, v56, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377, *v380, v381, v382, v383);
        v384 = 0;
        v385 = v63;
        if (!v63)
        {
          return 4294967246;
        }

        OUTLINED_FUNCTION_9();
      }

      OUTLINED_FUNCTION_19();
      v384 = v72;
      v385 = v73;
      if (v48)
      {
        v74 = OUTLINED_FUNCTION_8(v64, v65, v66, v67, v68, v69, v70, v71, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377, *v380, v381, v382, v383);
        v384 = 0;
        v385 = v74;
        if (!v74)
        {
          return 4294967246;
        }

        v72 = 0;
        v73 = v74;
      }

      v75 = v72;
      v76 = v386[v72];
      v384 = v75 + 1;
      v385 = v73 - 1;
      if (v57 != 255 || !v76)
      {
        return 4294967246;
      }

      v77 = v75 + 1;
      v78 = v73 - 1;
      v79 = v76;
      while (1)
      {
        while (1)
        {
          v80 = v78;
          if ((v79 - 208) >= 9 && v79 != 218)
          {
            break;
          }

          do
          {
            if (!v80)
            {
              v81 = IIOImageReadSession::getBytes(v383, v386, 1024);
              v384 = 0;
              v385 = v81;
              if (!v81)
              {
                return 4294967246;
              }

              OUTLINED_FUNCTION_9();
            }

            OUTLINED_FUNCTION_19();
            v384 = v90;
            v385 = v91;
            if (v48)
            {
              v95 = OUTLINED_FUNCTION_5_0(v82, v83, v84, v85, v86, v87, v88, v89, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377, *v380, v381, v382, v383);
              v384 = 0;
              v385 = v95;
              if (!v95)
              {
                return 4294967246;
              }

              OUTLINED_FUNCTION_9();
            }

            else
            {
              OUTLINED_FUNCTION_13(v90);
            }

            v96 = v93;
            v97 = v386[v94];
            v77 = v94 + 1;
            v384 = v94 + 1;
            v385 = v96 - 1;
            v78 = v96 - 1;
            if (v97 == 255)
            {
              v98 = v96 - 1;
              if (v96 == 1)
              {
                v99 = OUTLINED_FUNCTION_5_0(v77, v92, v66, v67, v68, v69, v70, v71, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377, *v380, v381, v382, v383);
                v384 = 0;
                v385 = v99;
                if (!v99)
                {
                  return 4294967246;
                }

                v98 = v99;
                v77 = 0;
              }

              v100 = v386[v77++];
              v384 = v77;
              v385 = v98 - 1;
              v101 = 255;
              v78 = v98 - 1;
              v97 = v100;
            }

            else
            {
              v101 = v57;
            }

            v102 = v97;
            v103 = v101 != 255 || v97 == 0;
            v65 = v77;
            v80 = v78;
            v79 = v102;
          }

          while (v103);
        }

        if (v79 == 217)
        {
          break;
        }

        if (!v78)
        {
          v104 = OUTLINED_FUNCTION_5_0(v77, v65, v66, v67, v68, v69, v70, v71, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377, *v380, v381, v382, v383);
          v384 = 0;
          v385 = v104;
          if (!v104)
          {
            return 4294967246;
          }

          v78 = v104;
          v77 = 0;
        }

        v57 = v386[v77];
        v384 = v77 + 1;
        v385 = v78 - 1;
        if (v78 == 1)
        {
          v115 = OUTLINED_FUNCTION_5_0(v77, v65, v66, v67, v68, v69, v70, v71, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377, *v380, v381, v382, v383);
          v384 = 0;
          v385 = v115;
          if (!v115)
          {
            return 4294967246;
          }

          OUTLINED_FUNCTION_9();
        }

        else
        {
          LODWORD(v105) = OUTLINED_FUNCTION_13(v77 + 1);
        }

        v116 = v113 - 1;
        v117 = ((bswap32(v57 | (v386[v114] << 8)) >> 16) - 2);
        if (v116 >= v117)
        {
          v119 = v116 - v117;
          v384 = v114 + v117 + 1;
          v385 = v119;
        }

        else
        {
          v118 = v117 - v116;
          v384 = 0;
          v385 = 0;
          v105 = IIOImageReadSession::skipBytes(v383, v117 - v116, v107, v108, v109, v110, v111);
          if (v105 != v118)
          {
            return 4294967246;
          }

          v119 = v385;
        }

        if (v119)
        {
          v120 = v384;
        }

        else
        {
          v121 = OUTLINED_FUNCTION_5_0(v105, v106, v107, v108, v109, v110, v111, v112, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377, *v380, v381, v382, v383);
          v384 = 0;
          v385 = v121;
          if (!v121)
          {
            return 4294967246;
          }

          OUTLINED_FUNCTION_9();
        }

        v122 = v386[v120];
        v384 = v120 + 1;
        v385 = v119 - 1;
        if (v119 == 1)
        {
          v125 = OUTLINED_FUNCTION_5_0(v105, v106, v107, v108, v109, v110, v111, v112, decode, shouldInterpolate, v268, v271, provider, v277, v280, type_id, v284, v286, v288, v290, v293, v296, v299, v302, v306, v310, v314, v317, bytesPerRow, v323, v326, v329, data, v335, v338, v341, v344, v347, width, v353, space, v358, v361, v364, v367, v369, v371, theData, v375, v377, *v380, v381, v382, v383);
          v384 = 0;
          v385 = v125;
          if (!v125)
          {
            return 4294967246;
          }

          OUTLINED_FUNCTION_9();
        }

        else
        {
          OUTLINED_FUNCTION_13(v120 + 1);
        }

        v79 = v386[v124];
        v77 = v124 + 1;
        v384 = v124 + 1;
        v385 = v123 - 1;
        v78 = v123 - 1;
        if (v122 != 255)
        {
          return 4294967246;
        }
      }

LABEL_19:
      v7 = HIDWORD(v377);
      v4 = v369;
      v3 = v371;
      goto LABEL_27;
    }

    v45 = Size > v28 && Size - v28 >= v29;
    v7 = HIDWORD(v377);
    v4 = v369;
    v3 = v371;
    if (!v45)
    {
      return 4294967246;
    }
  }

LABEL_27:
  if (IIOImageReadSession::seek(*(this + 3), *(this + 26), 0) != *(this + 26))
  {
    return 4294967246;
  }

  if ((gIIODebugFlags & 0x80000000) == 0 && Uint32ForKey <= 1)
  {
    *(this + 376) = 1;
  }

  if (OUTLINED_FUNCTION_14())
  {
    _cg_jpeg_mem_term("initialize", 1548, "sigsetjmp");
    _cg_jpeg_destroy_decompress(this + 528);
    if (*(this + 156))
    {
      *(this + 156) = 0;
    }

    return 4294967246;
  }

  _cg_jpeg_CreateDecompress(this + 528, 90, 664);
  *(this + 66) = _cg_jpeg_std_error(this + 9296);
  *(this + 1162) = errorExit;
  *(this + 1164) = outputMessage;
  *(this + 151) = init_source;
  *(this + 152) = fill_input_buffer;
  *(this + 153) = skip_input_data;
  *(this + 154) = _cg_jpeg_resync_to_restart;
  *(this + 155) = term_source;
  *(this + 149) = this + 1288;
  *(this + 150) = 0;
  v46 = *(this + 3);
  *(this + 156) = v46;
  *(this + 1256) = v26 != 1;
  *(this + 158) = *(this + 26);
  v47 = *(this + 61);
  if (!v47)
  {
    v47 = IIOImageReadSession::getSize(v46);
  }

  *(this + 159) = v47;
  *(this + 71) = this + 1192;
  v48 = v15 == 1297108768 || v15 == 1346981191;
  if (v48 || !*(this + 26))
  {
    _cg_jpeg_save_markers(this + 66, 226, 0xFFFFu);
    _cg_jpeg_save_markers(this + 66, 225, 0xFFFFu);
    _cg_jpeg_save_markers(this + 66, 225, 0xFFFFu);
    _cg_jpeg_save_markers(this + 66, 237, 0xFFFFu);
    _cg_jpeg_save_markers(this + 66, 254, 0xFFFFu);
  }

  v126 = v3;
  v127 = HIDWORD(v367);
  v128 = v367;
  header = _cg_jpeg_read_header(this + 528, 1);
  if (header != 1)
  {
    if (!header)
    {
      if (!*(this + 26))
      {
        readJFIFData(this + 528, v4);
        if ((v367 & 0x100000000) != 0)
        {
          v131 = copyRenderingInfo(this + 528);
          CGImageMetadataMerge(v126, v131, 0);
          if (!v131)
          {
            return 4294967246;
          }
        }

        else
        {
          ExifData = LibJPEGReadPlugin::readExifData(v130, this + 528, v5);
          CGImageMetadataMerge(v126, ExifData, v5);
          if (v367)
          {
            v151 = 0;
            v131 = 0;
          }

          else
          {
            v152 = OUTLINED_FUNCTION_12();
            APP13 = LibJPEGReadPlugin::readAPP13(v152, v153);
            v155 = OUTLINED_FUNCTION_12();
            XMPData = LibJPEGReadPlugin::readXMPData(v155, v156, theData);
            CGImageMetadataMerge(v126, APP13, v5);
            CGImageMetadataMerge(v126, XMPData, v5);
            v151 = APP13;
            v131 = XMPData;
          }

          if (ExifData)
          {
            CFRelease(ExifData);
          }

          if (v151)
          {
            CFRelease(v151);
          }

          if (!v131)
          {
            return 4294967246;
          }
        }

        CFRelease(v131);
      }

      return 4294967246;
    }

    v379 = v7;
    v136 = 4294967246;
    v137 = Uint32ForKey;
    v138 = 0;
LABEL_122:
    v141 = *(this + 147) - 1;
    if (v141 >= 5)
    {
      LogError("initialize", 1704, "Unsupported jpeg colorspace %d\n", *(this + 147));
      goto LABEL_127;
    }

    v142 = dword_18620A7DC[v141];
    *(this + 2420) = v142;
    *(this + 148) = v142;
    v143 = *(this + 144);
    v144 = *(this + 145);
    *(this + 63) = v143;
    *(this + 64) = v144;
    v145 = *(this + 292);
    if (v137 >= 2)
    {
      if (v137 < 8)
      {
        if (v137 < 4)
        {
          v146 = 2;
        }

        else
        {
          v146 = 4;
        }
      }

      else
      {
        v146 = 8;
      }

      *(this + 166) = v146;
      v137 = v146;
      goto LABEL_162;
    }

    if (*(this + 232) >= 2u)
    {
      v147 = *(this + 57);
      if (v147)
      {
        if (v143 <= v144)
        {
          v148 = v144;
        }

        else
        {
          v148 = v143;
        }

        if (v147 >= v148)
        {
          v147 = v148;
        }

        *(this + 57) = v147;
        if (v147 <= (v143 + 7) >> 3 || v147 <= (v144 + 7) >> 3)
        {
          v149 = 8;
        }

        else if (v147 <= (v143 + 3) >> 2 || v147 <= (v144 + 3) >> 2)
        {
          v149 = 4;
        }

        else
        {
          if (v147 > (v143 + 1) >> 1 && v147 > (v144 + 1) >> 1)
          {
            goto LABEL_162;
          }

          v149 = 2;
        }
      }

      else
      {
        v149 = 1;
      }

      *(this + 166) = v149;
    }

LABEL_162:
    v363 = v137;
    v158 = *(this + 166);
    if (v158 >= 2)
    {
      *(this + 156) = 1;
      v159 = 8;
      *(this + 150) = 8;
      if (v158 - 2 <= 6)
      {
        v159 = dword_18620A7F0[(v158 - 2)];
      }

      *(this + 149) = v159;
      LODWORD(v143) = (v158 - 1 + v143) / v158;
      LODWORD(v144) = (v158 - 1 + v144) / v158;
    }

    if ((v143 * v144) / *(this + 25) < 1000.0)
    {
      *(this + 61) = v143;
      *(this + 62) = v144;
      *(this + 128) = 8;
      *(this + 129) = 8 * v145;
      *(this + 130) = v145;
      v160 = v143 * v145;
      *(this + 63) = v160;
      *(this + 262) = 0;
      *(this + 372) = 0;
      *(this + 374) = 0;
      *(this + 71) = v160;
      *(this + 49) = 1;
      readJFIFData(this + 528, v4);
      v366 = v126;
      v360 = v127;
      if (v127)
      {
        if (!*(this + 2))
        {
          goto LABEL_180;
        }

        v162 = copyRenderingInfo(this + 528);
        Metadata = IIOImagePlus::getMetadata(*(this + 2));
        CGImageMetadataMerge(Metadata, v162, 0);
        v164 = v162;
        if (!v162)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v165 = LibJPEGReadPlugin::readExifData(v161, this + 528, v5);
        v137 = *(this + 8);
        CGImageMetadataMerge(v137, v165, v5);
        if (v128)
        {
          v166 = 0;
          v167 = 0;
        }

        else
        {
          v168 = OUTLINED_FUNCTION_12();
          v170 = LibJPEGReadPlugin::readAPP13(v168, v169);
          v171 = OUTLINED_FUNCTION_12();
          v173 = LibJPEGReadPlugin::readXMPData(v171, v172, theData);
          CGImageMetadataMerge(v137, v170, v5);
          CGImageMetadataMerge(v137, v173, v5);
          v166 = v170;
          v167 = v173;
        }

        if (v165)
        {
          CFRelease(v165);
        }

        if (v166)
        {
          CFRelease(v166);
        }

        v164 = v167;
        if (!v167)
        {
LABEL_180:
          if (!*(this + 229) || *(this + 146) != 4 || *(this + 920) == 1)
          {
            goto LABEL_192;
          }

          if (*(this + 920))
          {
            if (v377 && (v375 != 1 || *(this + 147) == 5))
            {
              goto LABEL_192;
            }
          }

          else
          {
            v174 = v377;
            if (v375 == 1)
            {
              v174 = 0;
            }

            if (v174)
            {
LABEL_192:
              if (*(this + 211))
              {
                IIODictionary::setObjectForKeyGroup(v4, *MEMORY[0x1E695E4D0], @"IsProgressive", @"{JFIF}");
              }

              v175 = *(this + 2420);
              switch(v175)
              {
                case 1:
                  v176 = 1196573017;
                  break;
                case 2:
                  v176 = 1380401696;
                  break;
                case 4:
                  v176 = 1129142603;
                  break;
                default:
                  goto LABEL_201;
              }

              *(this + 85) = v176;
LABEL_201:
              v177 = *(this + 117);
              if (v177)
              {
                v178 = 0;
                v179 = 0;
                v180 = 0;
                do
                {
                  v181 = v180;
                  if (*(v177 + 8) == 226 && (v182 = *(v177 + 4), v182 >= 0xF) && !memcmp(v177[3], "ICC_PROFILE", 0xBuLL))
                  {
                    v185 = v182 - 14;
                    v137 = v182 - 14;
                    if (v181)
                    {
                      if (v179 > 13 - v182)
                      {
                        goto LABEL_224;
                      }

                      v186 = reallocf(v181, v185 + v179);
                    }

                    else
                    {
                      v186 = malloc_type_malloc(v182 - 14, 0x5942D0C2uLL);
                    }

                    v187 = v186;
                    if (!v186)
                    {
                      goto LABEL_225;
                    }

                    memcpy(&v186[v178], v177[3] + 14, v137);
                    v183 = v185 + v178;
                    v184 = v183;
                    v181 = v187;
                  }

                  else
                  {
                    v183 = v178;
                    v184 = v179;
                  }

                  v177 = *v177;
                  v178 = v183;
                  v179 = v184;
                  v180 = v181;
                }

                while (v177);
                if (!v181)
                {
                  goto LABEL_225;
                }

                if (v184 >= 0x80)
                {
                  v188 = v181[9];
                  v189 = bswap32(*v181);
                  if (v184 < v189)
                  {
                    LogError("readICCData", 865, "Embedded profile header length is greater than data length.\n");
                  }

                  if (v188 == 1886610273)
                  {
                    if (v183 >= v189)
                    {
                      v190 = CGColorSpaceCreateWithCopyOfData(v181, v183);
                      free(v181);
                      if (!v190)
                      {
                        goto LABEL_225;
                      }

                      v191 = v379;
                      v192 = this + 528;
                      goto LABEL_245;
                    }
                  }

                  else
                  {
                    LogError("readICCData", 867, "Embedded profile signature is not valid.\n");
                  }
                }

LABEL_224:
                free(v181);
              }

LABEL_225:
              v193 = *(this + 85);
              if (v193 == 1380401696)
              {
                LOBYTE(v383) = 0;
                v194 = createColorSpaceFromMetadata(v366, v360, &v383);
                if (v383 == 1)
                {
                  *(this + 172) = v383;
                }

                v190 = v194;
                v191 = v379;
                v192 = this + 528;
                if (v194)
                {
                  goto LABEL_245;
                }

                v193 = *(this + 85);
              }

              if (v193 == 1129142603)
              {
                v200 = MEMORY[0x1E695F118];
              }

              else
              {
                if (v193 != 1196573017)
                {
                  v191 = v379;
                  v192 = this + 528;
                  if (v193 != 1380401696)
                  {
                    v190 = 0;
LABEL_245:
                    if (v191 && !*(this + 26) && *(this + 369) == 1 && *(this + 232) == 1 && !v363 && *(this + 147) == 3 && *(this + 236) <= 2 && *(this + 237) <= 2)
                    {
                      v201 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
                      bzero(&v383, 0x180uLL);
                      *v380 = &v383;
                      v381 = v387;
                      v382 = v388;
                      v202 = *(this + 104);
                      v203 = 0.0;
                      if (*(this + 236) == 2)
                      {
                        if (*(this + 237) == 1)
                        {
                          v203 = 0.5;
                        }

                        else
                        {
                          v203 = 0.0;
                        }
                      }

                      spacea = v201;
                      *(this + 155) = 1;
                      v204 = v202[11];
                      v205 = v202[12];
                      OUTLINED_FUNCTION_18();
                      v207 = ImageIOAlignRowBytes(v204, v206);
                      v349 = v205;
                      v208 = malloc_type_calloc(v207, v205 + 15, 0x100004077774924uLL);
                      v209 = v208;
                      if (v208)
                      {
                        dataa = v208;
                        v137 = v202[35];
                        v273 = v202;
                        v210 = v202[36];
                        OUTLINED_FUNCTION_18();
                        v212 = ImageIOAlignRowBytes(v137, v211);
                        v343 = v210;
                        v213 = malloc_type_calloc(v212, v210 + 15, 0x100004077774924uLL);
                        v214 = v213;
                        if (v213)
                        {
                          v346 = v137;
                          widtha = v204;
                          v328 = v213;
                          v137 = v273[60];
                          OUTLINED_FUNCTION_18();
                          v340 = v215;
                          v204 = ImageIOAlignRowBytes(v215, v216);
                          v337 = v137;
                          v217 = malloc_type_calloc(v204, v137 + 15, 0x100004077774924uLL);
                          if (v217)
                          {
                            v218 = v217;
                            v319 = v207;
                            bytesPerRowa = v212;
                            v331 = v204;
                            v325 = v217;
                            v137 = (8 * *(this + 237));
                            v312 = 8 * v273[3];
                            v313 = 8 * *(this + 237);
                            v308 = 8 * v273[27];
                            v309 = v273[3];
                            v305 = v273[27];
                            v301 = v273[51];
                            v304 = 8 * v301;
                            _cg_jpeg_start_decompress(v192);
                            if (v312 <= 1)
                            {
                              v219 = 1;
                            }

                            else
                            {
                              v219 = v312;
                            }

                            if (v308 <= 1)
                            {
                              v220 = 1;
                            }

                            else
                            {
                              v220 = v308;
                            }

                            if (v304 <= 1)
                            {
                              v221 = 1;
                            }

                            else
                            {
                              v221 = v304;
                            }

                            v298 = v219;
                            v295 = v220;
                            v292 = v221;
                            do
                            {
                              v222 = *(this + 174);
                              if (v222 >= *(this + 167))
                              {
                                break;
                              }

                              if (v309)
                              {
                                v223 = &v383;
                                v224 = v298;
                                v225 = 0;
                                do
                                {
                                  *v223++ = (v209 + v207 * (v225 + (v222 * v312 / v137)));
                                  ++v225;
                                  --v224;
                                }

                                while (v224);
                              }

                              if (v305)
                              {
                                v226 = v295;
                                v227 = v387;
                                v228 = 0;
                                do
                                {
                                  *v227++ = v214 + v212 * (v228 + (v222 * v308 / v137));
                                  ++v228;
                                  --v226;
                                }

                                while (v226);
                              }

                              if (v301)
                              {
                                v229 = (v222 * v304 / v137);
                                v230 = v292;
                                v231 = v388;
                                v232 = 0;
                                do
                                {
                                  *v231++ = &v218[v204 * (v232 + v229)];
                                  ++v232;
                                  --v230;
                                }

                                while (v230);
                              }
                            }

                            while (_cg_jpeg_read_raw_data(v192, v380, v313) >= v137);
                            _cg_jpeg_destroy_decompress(v192);
                            v233 = 0;
                            v234 = OUTLINED_FUNCTION_1_5();
                            v235 = dataa;
                            v238 = CGDataProviderCreateWithData(v234, dataa, v236, v237);
                            if (v238)
                            {
                              v316 = v238;
                              v239 = OUTLINED_FUNCTION_1_5();
                              v240 = v328;
                              v243 = CGDataProviderCreateWithData(v239, v328, v241, v242);
                              if (v243)
                              {
                                providera = v243;
                                v240 = 0;
                                v244 = OUTLINED_FUNCTION_1_5();
                                v245 = v325;
                                v248 = CGDataProviderCreateWithData(v244, v325, v246, v247);
                                if (v248)
                                {
                                  v270 = v248;
                                  OUTLINED_FUNCTION_20();
                                  *v249 = 0;
                                  v209 = 8;
                                  v214 = CGImageCreate(widtha, v349, 8uLL, 8uLL, v319, spacea, 0, v316, decode, shouldInterpolate, SHIDWORD(shouldInterpolate));
                                  v204 = CGImageCreate(v346, v343, 8uLL, 8uLL, bytesPerRowa, spacea, 0, providera, 0, 1, kCGRenderingIntentDefault);
                                  OUTLINED_FUNCTION_20();
                                  *v250 = 0;
                                  v251 = CGImageCreate(v340, v337, 8uLL, 8uLL, v331, spacea, 0, v270, decodeb, shouldInterpolateb, intent);
                                  if (v214 && v204 && v251)
                                  {
                                    v137 = *MEMORY[0x1E695E4D0];
                                    OUTLINED_FUNCTION_17(v214);
                                    OUTLINED_FUNCTION_17(v204);
                                    OUTLINED_FUNCTION_17(v251);
                                    OUTLINED_FUNCTION_17(v214);
                                    OUTLINED_FUNCTION_17(v204);
                                    OUTLINED_FUNCTION_17(v251);
                                    v209 = 0;
                                    v252 = _MergedGlobals(v214, v204, v251, v190, 0, v203, 0.0);
                                    if (v252)
                                    {
                                      v253 = v252;
                                      IIOImagePlus::setImage(*(this + 2), v252);
                                      OUTLINED_FUNCTION_2_5();
                                      v233 = v253;
                                      v240 = 0;
                                      v245 = 0;
                                      v235 = 0;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_2_5();
                                      v235 = v260;
                                      v240 = v260;
                                      v245 = v260;
                                      v233 = v260;
                                    }
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_2_5();
                                    v233 = v259;
                                    v235 = v259;
                                    v240 = v259;
                                    v245 = v259;
                                  }
                                }

                                else
                                {
                                  v255 = 0;
                                  v204 = 0;
                                  v137 = 0;
                                  v254 = 0;
                                  v233 = 0;
                                  v235 = 0;
                                  v214 = providera;
                                  v209 = v316;
                                }
                              }

                              else
                              {
                                v204 = 0;
                                v137 = 0;
                                v254 = 0;
                                v214 = 0;
                                v233 = 0;
                                v235 = 0;
                                v255 = 0;
                                v209 = v316;
                                v245 = v325;
                              }
                            }

                            else
                            {
                              v255 = 0;
                              v204 = 0;
                              v137 = 0;
                              v254 = 0;
                              v214 = 0;
                              v209 = 0;
                              v245 = v325;
                              v240 = v328;
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_4_0();
                            v214 = 0;
                            v209 = 0;
                            v233 = 0;
                            v245 = 0;
                            v235 = dataa;
                            v240 = v328;
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_4_0();
                          v209 = 0;
                          v233 = 0;
                          v240 = 0;
                          v245 = 0;
                          v235 = dataa;
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_4_0();
                        v214 = 0;
                        v233 = 0;
                        v235 = 0;
                        v240 = 0;
                        v245 = 0;
                      }

                      v279 = v245;
                      v256 = v254;
                      v257 = v255;
                      if (spacea)
                      {
                        CGColorSpaceRelease(spacea);
                      }

                      if (v233)
                      {
                        CFRelease(v233);
                      }

                      if (v137)
                      {
                        CFRelease(v137);
                      }

                      if (v209)
                      {
                        CFRelease(v209);
                      }

                      if (v235)
                      {
                        free(v235);
                      }

                      if (v204)
                      {
                        CFRelease(v204);
                      }

                      if (v214)
                      {
                        CFRelease(v214);
                      }

                      if (v240)
                      {
                        free(v240);
                      }

                      if (v257)
                      {
                        CFRelease(v257);
                      }

                      if (v256)
                      {
                        CFRelease(v256);
                      }

                      if (v279)
                      {
                        free(v279);
                      }

                      v135 = 0;
                    }

                    else
                    {
                      if ((*(this + 369) & 1) != 0 || *(this + 232) != 1)
                      {
                        *(this + 20) = v190;
                        _cg_jpeg_destroy_decompress(v192);
                        *(this + 9685) = 0;
                        *(this + 204) = 1;
                      }

                      else
                      {
                        *(this + 20) = v190;
                        *(this + 9685) = 1;
                        *(this + 472) = 2;
                        *(this + 204) = 1;
                      }

                      v258 = *(this + 2);
                      if (v258 && IIOImagePlus::sourceImageProvider(v258))
                      {
                        CGImageProviderSetProperty();
                      }

                      v135 = v363;
                    }

                    goto LABEL_320;
                  }

                  TopLevelTag = CGImageMetadataGetTopLevelTag(v366, @"http://ns.adobe.com/exif/1.0/", @"ColorSpace");
                  if (TopLevelTag && (Value = CGImageMetadataTagGetValue(TopLevelTag)) != 0)
                  {
                    IntValue = CFStringGetIntValue(Value);
                    v198 = MEMORY[0x1E695F1C0];
                    if (IntValue == 1)
                    {
                      v199 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
                      if (v199)
                      {
                        goto LABEL_244;
                      }
                    }

                    v200 = v198;
                  }

                  else
                  {
                    v200 = MEMORY[0x1E695F1C0];
                  }

LABEL_243:
                  v199 = CGColorSpaceCreateWithName(*v200);
LABEL_244:
                  v190 = v199;
                  goto LABEL_245;
                }

                v200 = MEMORY[0x1E695F128];
              }

              v191 = v379;
              v192 = this + 528;
              goto LABEL_243;
            }
          }

          *(this + 374) = 1;
          goto LABEL_192;
        }
      }

      CFRelease(v164);
      goto LABEL_180;
    }

    _cg_jpeg_mem_term("initialize", 1761, "malformed JPEG?\n");
LABEL_127:
    v135 = v137;
    result = v136;
    if (!v138)
    {
      return result;
    }

    goto LABEL_320;
  }

  v379 = v7;
  v132 = IIOImageReadSession::getSize(*(this + 3));
  v133 = IIO_Reader::minimumFileSize(*(this + 3));
  result = LibJPEGReadPlugin::validateJPEG(this);
  if (result)
  {
    return result;
  }

  IIOImageReadSession::seek(*(this + 3), v133, 0);
  if (v133 <= v132)
  {
    if (*(*(this + 66) + 44))
    {
      v139 = 0;
    }

    else
    {
      v139 = Uint32ForKey;
    }

    BoolForKey = IIODictionary::getBoolForKey(v5, @"kCGImageSourceAddJPEGQualityInformation");
    if (BoolForKey)
    {
      LibJPEGReadPlugin::readQualityPropertiesFromJPEG(BoolForKey, this + 528, v4);
    }

    v138 = 1;
    v137 = v139;
    v136 = 0;
    v127 = HIDWORD(v367);
    v128 = v367;
    goto LABEL_122;
  }

  v135 = Uint32ForKey;
LABEL_320:
  result = *(this + 2);
  if (result)
  {
    IIOImagePlus::setJpegProvider(result, v135);
    return 0;
  }

  return result;
}

uint64_t LibJPEGReadPlugin::copyImageBlockSetJPEGTiles(uint64_t a1, const void *a2, const void *a3, const __CFDictionary *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v16 = a6;
  v17 = a5;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  value = 0;
  if (a3)
  {
    CGImageProviderGetSize();
    v20 = v19;
    v22 = v21;
    PixelSize = CGImageProviderGetPixelSize();
    v24 = v22;
  }

  else
  {
    LODWORD(a5) = *(a1 + 308);
    v20 = *&a5;
    LODWORD(a6) = *(a1 + 312);
    v24 = *&a6;
    if (*(a1 + 324) == 3)
    {
      if (*(a1 + 326))
      {
        PixelSize = 4;
      }

      else
      {
        PixelSize = 3;
      }
    }

    else
    {
      PixelSize = *(a1 + 324);
    }
  }

  v115 = v24;
  if (a4)
  {
    CFDictionaryGetValueIfPresent(a4, *MEMORY[0x1E695F2A0], &value);
  }

  v106 = a8;
  v25 = a8;
  v26 = a7;
  v27 = v16;
  v28 = v17;
  if (value)
  {
    valuePtr = 0;
    v29 = a10;
    v30 = a7;
    v31 = v25;
    v104 = v16;
    v105 = v17;
    v32 = v26;
    v33 = v27;
    CFNumberGetValue(value, kCFNumberLongType, &valuePtr);
    v27 = v33;
    v26 = v32;
    v16 = v104;
    v17 = v105;
    v25 = v31;
    a7 = v30;
    a10 = v29;
    if (valuePtr <= 0x40)
    {
      v34 = 64;
    }

    else
    {
      v34 = valuePtr;
    }
  }

  else
  {
    v34 = 256;
  }

  v35 = (v34 - 1);
  v36 = ((v17 + a7 + v35) / v34);
  v37 = (v16 / v34);
  v38 = ((v16 + v106 + v35) / v34);
  *(a1 + 308) = v34;
  *(a1 + 312) = v34;
  *(a1 + 316) = v34 * PixelSize;
  v39 = (v36 - (v17 / v34)) * (v38 - v37);
  *(a1 + 104) = v39;
  *(a1 + 332) = 1;
  IIOReadPlugin::debugCopyBlockSet(a1, a3, v28, v27, v26, v25, a9, a10);
  v40 = PixelSize;
  *(a1 + 252) = ((a7 * PixelSize) + 15) & 0xFFFFFFF0;
  v41 = vmin_u32(vdup_n_s32(v34), *(a1 + 244));
  *(a1 + 308) = v41;
  *(a1 + 316) = v41.i32[0] * PixelSize;
  *(a1 + 104) = v39;
  if (OUTLINED_FUNCTION_14())
  {
    _cg_jpeg_mem_term("copyImageBlockSetJPEGTiles", 2302, "sigsetjmp");
    v42 = 0;
    v43 = 0;
    goto LABEL_78;
  }

  v112 = v38;
  v113 = v36;
  IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
  v44 = *(a1 + 24);
  if (v44)
  {
    LODWORD(v44) = IIOImageReadSession::mapData(v44);
  }

  v45 = v44;
  _cg_jpeg_destroy_decompress(a1 + 528);
  LibJPEGReadPlugin::startDecompressing(a1, *(a1 + 9680));
  OUTLINED_FUNCTION_21();
  if (!v46)
  {
    v42 = 0;
    *(a1 + 104) = 0;
    v43 = v45;
    goto LABEL_78;
  }

  v111 = v45;
  OUTLINED_FUNCTION_18();
  v49 = ImageIOAlignRowBytes(v47, v48);
  v121 = OUTLINED_FUNCTION_24(v49 * *(a1 + 312));
  v116 = a3;
  v114 = (v17 / v34);
  if (v37)
  {
    v50 = v34 * v37;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    skipping rows %4d through %4d\n", 0, v34 * v37);
    }

    valuePtr = v121;
    if (v50)
    {
      do
      {
        scanlines = _cg_jpeg_read_scanlines(a1 + 528, &valuePtr, 1);
        --v50;
      }

      while (v50);
      v52 = scanlines == 1;
    }

    else
    {
      v52 = 0;
    }

    v53 = v38;
  }

  else
  {
    v52 = 0;
    v53 = v38;
  }

  if (v53 <= v37)
  {
LABEL_73:
    v42 = 0;
    if (v116)
    {
      if (*(a1 + 104))
      {
        v42 = IIOReadPlugin::imageBlockSetCreate(a1, v116, *(a1 + 104), *(a1 + 96), a2, v20, v115, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
      }

      v43 = v111;
    }

    else
    {
      v43 = v111;
    }

    goto LABEL_78;
  }

  v110 = v34;
  v109 = PixelSize;
  v54 = 0;
  v55 = MEMORY[0x1E695F050];
  v56 = (v16 / v34);
  v57 = v52;
  while (1)
  {
    v107 = v34;
    v108 = v56;
    v58 = *(a1 + 312);
    v59 = v58 * v108;
    v60 = (v58 * v108);
    v61 = *(a1 + 308);
    if (v58 + v60 <= v115)
    {
      v62 = v58;
    }

    else
    {
      v62 = v115 - v59;
    }

    y = v62 + v60;
    v64 = (v62 + v60);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                   reading rows: %d ... %d\n", v59, v64 - 1);
    }

    if (v59 < v64)
    {
      v65 = v59;
      v66 = 0;
      while (1)
      {
        valuePtr = v121 + v66;
        if (_cg_jpeg_read_scanlines(a1 + 528, &valuePtr, 1) != 1)
        {
          goto LABEL_57;
        }

        ++v65;
        v66 += v49;
        if (v65 >= v64)
        {
          goto LABEL_43;
        }
      }
    }

    if (v57)
    {
      break;
    }

LABEL_57:
    if (v108 + 1 < *(a1 + 116))
    {
      *(a1 + 104) = v108 + 1 - *(a1 + 112);
    }

    v85 = v107 - v59;
    if (v107 != v59)
    {
      v86 = v107 - v59;
      LODWORD(y) = v61;
      v87 = *&y;
      *(a1 + 316) = (v40 * *&y);
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        OUTLINED_FUNCTION_3_4();
        ImageIOLog("                     valid rows: %ld\n", v103);
      }

      v88 = v85;
      v127.origin.x = OUTLINED_FUNCTION_22();
      v127.size.width = v87;
      v127.size.height = v85;
      *(*(a1 + 96) + 8 * v54) = IIOReadPlugin::createImageBlock(v89, v90, v91, v127, v92, v93);
      v128.origin.x = OUTLINED_FUNCTION_4();
      if (CGRectEqualToRect(v128, *v55))
      {
        v94 = 0;
      }

      else
      {
        v129.origin.x = OUTLINED_FUNCTION_4();
        v131.origin.x = 0.0;
        v131.origin.y = v60;
        v131.size.width = v87;
        v131.size.height = v85;
        *&v94 = CGRectUnion(v129, v131);
        v60 = v97;
        v87 = v98;
        v88 = v99;
      }

      v96 = v112;
      v84 = 0;
      ++v54;
      *(a1 + 120) = v94;
      *(a1 + 128) = v60;
      *(a1 + 136) = v87;
      *(a1 + 144) = v88;
      goto LABEL_72;
    }

    v95 = *(a1 + 104);
    if (v95)
    {
      *(a1 + 104) = v95 - 1;
    }

    _ImageIO_Free(v122, v120);
    v122 = 0;
    v86 = 0;
    v84 = 0;
LABEL_69:
    v96 = v112;
LABEL_72:
    v34 = v86;
    v57 = v84;
    v56 = v108 + 1;
    if (v108 + 1 == v96)
    {
      goto LABEL_73;
    }
  }

LABEL_43:
  if (v113 <= v114)
  {
    v84 = 1;
LABEL_65:
    v86 = v107;
    goto LABEL_69;
  }

  v67 = v114;
  v68 = v54;
  while (1)
  {
    v69 = v67;
    v70 = v67 * v110;
    x = (v67 * v110);
    LODWORD(y) = *(a1 + 308);
    v72 = *&y;
    width = x + v72 <= v20 ? v72 : v20 - x;
    v74 = (width * v40);
    v122 = _ImageIO_Malloc(*(a1 + 312) * v74, *(a1 + 416), &v120, kImageMalloc_LIBJPEG_Data[0], 0, 0);
    if (!v122)
    {
      break;
    }

    if (v62 > 0.0)
    {
      v75 = 0;
      v76 = v70 * v109;
      v77 = 0;
      do
      {
        memcpy((v122 + v75), v121 + v49 * v77++ + v76, (width * v40));
        v75 += v74;
      }

      while (v62 > v77);
    }

    *(a1 + 316) = v74;
    v123.origin.x = OUTLINED_FUNCTION_22();
    v123.size.width = width;
    v123.size.height = v62;
    *(*(a1 + 96) + 8 * v68) = IIOReadPlugin::createImageBlock(v78, v79, v80, v123, (width * v40), v81);
    v124.origin.x = OUTLINED_FUNCTION_4();
    if (CGRectEqualToRect(v124, *v55))
    {
      y = v60;
      height = v62;
    }

    else
    {
      v125.origin.x = OUTLINED_FUNCTION_4();
      v130.origin.x = x;
      v130.size.width = width;
      v126 = CGRectUnion(v125, v130);
      x = v126.origin.x;
      width = v126.size.width;
      y = v126.origin.y;
      height = v126.size.height;
    }

    v83 = v68 + 1;
    *(a1 + 120) = x;
    *(a1 + 128) = y;
    *(a1 + 136) = width;
    *(a1 + 144) = height;
    v67 = v69 + 1;
    ++v68;
    if (v69 + 1 == v113)
    {
      v84 = 1;
      v54 = v83;
      goto LABEL_65;
    }
  }

  v43 = v111;
  v42 = 0;
LABEL_78:
  v100 = v43;
  if (v121)
  {
    free(v121);
  }

  if (v100)
  {
    v101 = *(a1 + 24);
    if (v101)
    {
      IIOImageReadSession::unmapData(v101);
    }
  }

  return v42;
}

uint64_t LibJPEGReadPlugin::copyImageBlockSetProgressive(uint64_t a1, const void *a2, const void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = a8;
  v13 = a9;
  v71 = 0;
  v67 = a9;
  v68 = a6;
  v70 = 0;
  if (a3)
  {
    v14 = a9;
    v15 = a8;
    v16 = a8;
    v17 = a7;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    CGImageProviderGetSize();
    v22 = v21;
    v66 = v23;
    PixelSize = CGImageProviderGetPixelSize();
    a4 = v20;
    a5 = v19;
    a6 = v18;
    a7 = v17;
    v10 = v16;
    a8 = v15;
    v13 = v14;
    v25 = PixelSize;
    v26 = v66;
  }

  else
  {
    LODWORD(a9) = *(a1 + 308);
    v22 = *&a9;
    LODWORD(a9) = *(a1 + 312);
    v26 = *&a9;
    if (*(a1 + 324) == 3)
    {
      if (*(a1 + 326))
      {
        v25 = 4;
      }

      else
      {
        v25 = 3;
      }
    }

    else
    {
      v25 = *(a1 + 324);
    }
  }

  v27 = v22;
  IIOReadPlugin::debugCopyBlockSet(a1, a3, a4, a5, a6, a7, a8, v13);
  v28 = *(a1 + 332);
  v29 = *(a1 + 332);
  v30 = *(a1 + 244);
  if (*(a1 + 376) != 1)
  {
    goto LABEL_28;
  }

  if (v28 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = *(a1 + 332);
  }

  v32 = v31 * v22;
  v33 = v31 * v26;
  if (v10 > (v32 >> 3) || v67 > (v33 >> 3))
  {
    if (v10 <= (v32 >> 2) && v67 <= (v33 >> 2))
    {
      if (v28 == 4)
      {
        v37 = 8;
        goto LABEL_29;
      }

      v61 = 4;
      v62 = 4;
      v63 = 3;
      goto LABEL_94;
    }

    if (v10 <= (v32 >> 1) && v67 <= (v33 >> 1) && v28 != 2)
    {
      v61 = 2;
      v62 = 2;
      v63 = 1;
      goto LABEL_94;
    }

LABEL_28:
    v37 = *(a1 + 332);
LABEL_29:
    v38 = 0;
    goto LABEL_30;
  }

  if (v28 == 8)
  {
    v37 = 8;
    goto LABEL_29;
  }

  v62 = 8;
  v63 = 7;
  v61 = 8;
LABEL_94:
  *(a1 + 332) = v61;
  v64 = (v32 + v63) / v62;
  v27 = v64;
  v65 = (v33 + v63) / v62;
  v26 = v65;
  v38 = 1;
  *(a1 + 244) = v64;
  *(a1 + 248) = v65;
  v37 = 8;
LABEL_30:
  v39 = *(a1 + 596);
  if (v39)
  {
    v40 = *(a1 + 600) / v39;
  }

  else
  {
    v40 = 1;
  }

  if (v40 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  v42 = *(a1 + 576);
  if (v41 <= v42)
  {
    v43 = v42 / v41;
  }

  else
  {
    v43 = 1;
  }

  v44 = *(a1 + 584) * v43;
  if ((v44 & 0xFFFFFFFF00000000) == 0)
  {
    if (v37 || v44 <= *(a1 + 316))
    {
      v45 = ((v68 * v25) + 15) & 0xFFFFFFF0;
      *(a1 + 316) = v45;
      v71 = _ImageIO_Malloc(*(a1 + 312) * v45, *(a1 + 416), &v70, kImageMalloc_LIBJPEG_Data[0], 0, 0);
      v46 = v71;
      if (sigsetjmp((a1 + 9472), 0))
      {
        _cg_jpeg_mem_term("copyImageBlockSetProgressive", 2615, "sigsetjmp\n");
        if (v71 && *(a1 + 9336) == 20 && *(a1 + 564) == 205)
        {
          v71 = 0;
        }
      }

      else
      {
        _cg_jpeg_destroy_decompress(a1 + 528);
        v47 = *(a1 + 9680);
        _cg_jpeg_CreateDecompress((a1 + 528), 90, 664);
        *(a1 + 568) = a1 + 1192;
        _cg_jpeg_read_header(a1 + 528, 1);
        v48 = *(a1 + 332);
        v49 = v48 >= 2;
        v50 = v48 - 2;
        if (v49)
        {
          *(a1 + 624) = 1;
          v51 = 8;
          *(a1 + 600) = 8;
          if (v50 <= 6)
          {
            v51 = dword_18620A7F0[v50];
          }

          *(a1 + 596) = v51;
        }

        *(a1 + 592) = v47;
        *(a1 + 616) = 1;
        if (*(a1 + 564) >= 202)
        {
          _cg_jpeg_start_decompress(a1 + 528);
        }

        if ((*(a1 + 9684) & 1) == 0)
        {
          while (_cg_jpeg_consume_input((a1 + 528)))
          {
            v59 = *(a1 + 564);
            if (v59 == 202)
            {
              if (!_cg_jpeg_start_decompress(a1 + 528))
              {
                break;
              }

              v59 = *(a1 + 564);
            }

            if (v59 == 208)
            {
              if (!_cg_jpeg_finish_output(a1 + 528))
              {
                break;
              }

              v59 = *(a1 + 564);
            }

            if (v59 == 207)
            {
              if (!_cg_jpeg_start_output(a1 + 528, *(a1 + 700)))
              {
                break;
              }

              v59 = *(a1 + 564);
            }

            if (v59 == 205)
            {
              for (i = *(a1 + 696); i < *(a1 + 668); i = *(a1 + 696))
              {
                v69 = &v46[i * v45];
                if (!_cg_jpeg_read_scanlines(a1 + 528, &v69, 1))
                {
                  goto LABEL_56;
                }
              }

              _cg_jpeg_finish_output(a1 + 528);
            }

            if (_cg_jpeg_input_complete(a1 + 528))
            {
              if (*(a1 + 700) == *(a1 + 708))
              {
                *(a1 + 9684) = 1;
                _cg_jpeg_destroy_decompress(a1 + 528);
                if (*(a1 + 1248))
                {
                  *(a1 + 1248) = 0;
                }
              }
            }

            if (*(a1 + 9684) == 1)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      _cg_jpeg_mem_term("copyImageBlockSetProgressive", 2592, "*** ERROR: unexpected JPEG dimension: %d x %d (%d components) - blockSize: %d x %d (rb: %d)\n");
    }
  }

LABEL_56:
  if (!v71)
  {
    goto LABEL_62;
  }

  *(a1 + 104) = 1;
  IIOReadPlugin::allocateBlockArray(a1, 1uLL);
  v52 = CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]);
  v53 = 0;
  v54 = 0;
  v55 = v27;
  v56 = v26;
  if (!v52)
  {
    v73.origin.x = 0.0;
    v73.origin.y = 0.0;
    v73.size.width = v27;
    v73.size.height = v26;
    *&v53 = CGRectUnion(*(a1 + 120), v73);
  }

  *(a1 + 120) = v53;
  *(a1 + 128) = v54;
  *(a1 + 136) = v55;
  *(a1 + 144) = v56;
  v72.origin.x = 0.0;
  v72.origin.y = 0.0;
  v72.size.width = v27;
  v72.size.height = v26;
  **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, v71, v70, v72, *(a1 + 316), 0);
  if (!a3)
  {
LABEL_62:
    v57 = 0;
    if (!v38)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v57 = IIOReadPlugin::imageBlockSetCreate(a1, a3, *(a1 + 104), *(a1 + 96), a2, v27, v26, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
  if (v38)
  {
LABEL_63:
    *(a1 + 332) = v29;
    *(a1 + 244) = v30;
  }

LABEL_64:
  if (a3)
  {
    IIOReadPlugin::freeBlockArray(a1);
  }

  return v57;
}

uint64_t LibJPEGReadPlugin::copyImageBlockSetStandard(uint64_t a1, uint64_t a2, const void *a3, const __CFDictionary *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v16 = a6;
  v17 = a5;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  HIDWORD(a5) = 0;
  v136 = 0u;
  v137 = 0u;
  if (a3)
  {
    CGImageProviderGetSize();
    v21 = v20;
    v23 = v22;
    PixelSize = CGImageProviderGetPixelSize();
  }

  else
  {
    LODWORD(a5) = *(a1 + 308);
    v21 = *&a5;
    LODWORD(a6) = *(a1 + 312);
    v23 = *&a6;
    if (*(a1 + 324) == 3)
    {
      if (*(a1 + 326))
      {
        PixelSize = 4;
      }

      else
      {
        PixelSize = 3;
      }
    }

    else
    {
      PixelSize = *(a1 + 324);
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = &gIIODebugFlags;
  if (a7 == 0.0)
  {
    v28 = 0;
    v29 = 0;
    goto LABEL_150;
  }

  v28 = 0;
  v29 = 0;
  if (a8 == 0.0)
  {
    goto LABEL_150;
  }

  v127 = a9;
  if (a4)
  {
    value = 0;
    CFDictionaryGetValueIfPresent(a4, *MEMORY[0x1E695F2A0], &value);
    if (value)
    {
      v25 = LibJPEGReadPlugin::copyImageBlockSetJPEGTiles(a1, a2, a3, a4, v17, v16, a7, a8, a9, a10);
      if (v25)
      {
        v29 = 0;
        v26 = 0;
        v28 = 0;
        goto LABEL_150;
      }
    }
  }

  v126 = a10;
  v30 = *(a1 + 332);
  if (*(a1 + 376) == 1)
  {
    OUTLINED_FUNCTION_11();
    if (!v38)
    {
      OUTLINED_FUNCTION_3_4();
      ImageIOLog("RB  multi-res: original subsampleFactor: %d\n", v124);
    }

    v31 = *(a1 + 316);
    v136 = *(a1 + 300);
    v137 = v31;
    if (v30 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32;
    v34 = v32 * v21;
    v35 = v33 * v23;
    if (a9 > (v34 >> 3) || a10 > (v35 >> 3))
    {
      if (a9 > (v34 >> 2) || a10 > (v35 >> 2))
      {
        if (a9 <= (v34 >> 1))
        {
          v38 = a10 > (v35 >> 1) || v30 == 2;
          if (!v38)
          {
            OUTLINED_FUNCTION_0_14((v35 + 1) / 2);
            if (!v38)
            {
              OUTLINED_FUNCTION_3_4();
              ImageIOLog("RB  multi-res: new subsampleFactor 2:  rb=%d\n");
            }

            goto LABEL_81;
          }
        }
      }

      else if (v30 != 4)
      {
        OUTLINED_FUNCTION_0_14((v35 + 3) / 4);
        if (!v38)
        {
          OUTLINED_FUNCTION_3_4();
          ImageIOLog("RB  multi-res: new subsampleFactor 4:  rb=%d\n");
        }

        goto LABEL_81;
      }
    }

    else if (v30 != 8)
    {
      OUTLINED_FUNCTION_0_14((v35 + 7) / 8);
      if (!v38)
      {
        OUTLINED_FUNCTION_3_4();
        ImageIOLog("RB  multi-res: new subsampleFactor 8:  rb=%d\n");
      }

LABEL_81:
      v39 = 1;
      goto LABEL_40;
    }
  }

  v39 = 0;
  a9 = v23;
  a10 = v21;
LABEL_40:
  v40 = v39;
  v41 = OUTLINED_FUNCTION_12();
  IIOReadPlugin::debugCopyBlockSet(v41, v42, v17, v16, v43, v44, v127, v126);
  CGImageProviderGetPixelSize();
  if ((ImageIOShouldAllowFullsizeDecode() & 1) == 0 && *(a1 + 440) == 1)
  {
    _cg_jpeg_mem_term("copyImageBlockSetStandard", 2900, "Rejecting singleton request - image is too large");
    goto LABEL_164;
  }

  *(a1 + 316) = ((a10 * PixelSize) + 15) & 0xFFFFFFF0;
  v45 = *(a1 + 112);
  OUTLINED_FUNCTION_11();
  if (!v38)
  {
    ImageIOLog("                      blockSize: {%d, %d}\n", *(a1 + 308), *(a1 + 312));
  }

  if (OUTLINED_FUNCTION_14())
  {
    v46 = "sigsetjmp";
    v47 = 2925;
    goto LABEL_46;
  }

  v49 = *(a1 + 596);
  if (v49)
  {
    v50 = *(a1 + 600) / v49;
  }

  else
  {
    v50 = 1;
  }

  if (v50 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  v52 = *(a1 + 576);
  if (v51 <= v52)
  {
    v53 = v52 / v51;
  }

  else
  {
    v53 = 1;
  }

  v54 = *(a1 + 584) * v53;
  if ((v54 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_164:
    v25 = 0;
    v28 = 0;
    goto LABEL_149;
  }

  if (v54 > *(a1 + 316) && *(a1 + 332) <= 1u)
  {
    v46 = "*** ERROR: unexpected JPEG dimension: %d x %d (%d components) - blockSize: %d x %d (rb: %d)\n";
    v47 = 2940;
LABEL_46:
    _cg_jpeg_mem_term("copyImageBlockSetStandard", v47, v46);
    v48 = 0;
LABEL_47:
    if (!v140)
    {
      v25 = 0;
      v28 = v48;
      goto LABEL_149;
    }

    OUTLINED_FUNCTION_15();
    v28 = v48;
    v29 = v40;
    v26 = v30;
LABEL_49:
    v25 = 0;
    goto LABEL_150;
  }

  IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
  if (!IIOReadPlugin::getCachedBlocks(a1))
  {
    v56 = 0;
    goto LABEL_145;
  }

  v55 = *(a1 + 24);
  if (v55)
  {
    LODWORD(v55) = IIOImageReadSession::mapData(v55);
  }

  v56 = v55;
  _cg_jpeg_destroy_decompress(a1 + 528);
  LibJPEGReadPlugin::startDecompressing(a1, *(a1 + 9680));
  OUTLINED_FUNCTION_21();
  if (!v38)
  {
    v25 = 0;
    *(a1 + 104) = 0;
    goto LABEL_148;
  }

  v132 = v56;
  v139 = OUTLINED_FUNCTION_24(*(a1 + 252));
  v57 = *(a1 + 112);
  if (v57)
  {
    v58 = *(a1 + 312) * v57;
    OUTLINED_FUNCTION_11();
    if (!v38)
    {
      ImageIOLog("    skipping rows %4d through %4d\n", 0, v58);
    }

    if (v58)
    {
      v133 = v40;
      for (i = 0; i != v58; ++i)
      {
        scanlines = _cg_jpeg_read_scanlines(a1 + 528, &v139, 1);
        v61 = scanlines == 1;
        if (scanlines != 1)
        {
          OUTLINED_FUNCTION_3_4();
          _cg_jpeg_mem_term("copyImageBlockSetStandard", 2989, "*** jpeg_read_scanlines at row %d\n");
        }
      }

      v62 = v61;
      v40 = v133;
    }

    else
    {
      v62 = 0;
    }
  }

  else
  {
    v62 = 0;
  }

  OUTLINED_FUNCTION_11();
  if (!v38)
  {
    OUTLINED_FUNCTION_3_4();
    ImageIOLog("                     startBlock: %d\n", v124);
    OUTLINED_FUNCTION_11();
    if (!v38)
    {
      OUTLINED_FUNCTION_3_4();
      ImageIOLog("                       endBlock: %d\n", v124);
    }
  }

  v64 = *(a1 + 112);
  if (v64 >= *(a1 + 116))
  {
LABEL_128:
    v56 = v132;
    goto LABEL_145;
  }

  v65 = 0;
  v66 = *(a1 + 112);
  v131 = v45;
  v134 = v30;
  while (1)
  {
    v67 = v66;
    v130 = v64;
    v68 = v66;
    v69 = (v66 - v45);
    v70 = v69;
    if (*(*(a1 + 96) + 8 * v69))
    {
      v124 = v69;
      _cg_jpeg_mem_term("copyImageBlockSetStandard", 3013, "*** _blockArray[%d] was cached - and already allocated\n");
    }

    v128 = v70;
    v71 = *(a1 + 312);
    v125 = v68;
    v72 = v71 * v68;
    v73 = v72;
    LODWORD(v63) = *(a1 + 580);
    v74 = v63;
    if (v71 + v72 <= v74)
    {
      v75 = v71;
    }

    else
    {
      v75 = v74 - v72;
    }

    v76 = *(a1 + 672);
    if (!is_mul_ok(*(a1 + 664), v76))
    {
      v25 = 0;
      v28 = v132;
      v29 = v40;
      v26 = v134;
      goto LABEL_150;
    }

    v77 = *(a1 + 664) * v76;
    v78 = *(a1 + 668);
    if (!is_mul_ok(v78, v77))
    {
      v28 = v132;
      v29 = v40;
      v26 = v134;
      goto LABEL_49;
    }

    v79 = *(a1 + 312);
    v80 = v27;
    v81 = *(a1 + 308);
    v27 = v78 * v77;
    if (v78 * v77 <= *(a1 + 316) * v71)
    {
      v27 = *(a1 + 316) * v71;
    }

    else
    {
      v124 = v78 * v77;
      _cg_jpeg_mem_term("copyImageBlockSetStandard", 3035, "*** ERROR: libJPEGBufferSize > imageDataBufferSize   (%lld > %lld)\n");
    }

    v140 = _ImageIO_Malloc(v27, *(a1 + 416), &v138, kImageMalloc_LIBJPEG_Data[0], 0, 0);
    if (!v140)
    {
      v48 = v132;
      LOWORD(v30) = v134;
      goto LABEL_47;
    }

    v129 = v67;
    a2 = v140;
    v82 = v75 + v73;
    v40 = (v75 + v73);
    if (*(a1 + 332) >= 2u)
    {
      if (*(a1 + 668) >= (v75 + v73))
      {
        v40 = (v75 + v73);
      }

      else
      {
        v40 = *(a1 + 668);
      }
    }

    if ((*(v80 + 2) & 3) != 0)
    {
      ImageIOLog("                   reading rows: %d ... %d\n", v72, v40 - 1);
    }

    LODWORD(v82) = v81;
    v83 = *&v82;
    if (v72 >= v40)
    {
      OUTLINED_FUNCTION_6_0();
      v45 = v131;
      if ((v62 & 1) == 0)
      {
        goto LABEL_130;
      }

LABEL_120:
      v88 = *(a1 + 316);
      v89 = v87;
      goto LABEL_122;
    }

    v27 += a2;
    value = v140;
    if (v140 < v27)
    {
      break;
    }

LABEL_121:
    OUTLINED_FUNCTION_6_0();
    v90 = v62;
    v89 = v65;
    v88 = v91;
    v45 = v131;
    if ((v90 & 1) == 0)
    {
      goto LABEL_130;
    }

LABEL_122:
    v65 = v89;
    *(*(a1 + 96) + 8 * v128) = OUTLINED_FUNCTION_16(v87, v140, v138, v88, *(a1 + 371));
    v141.origin.x = OUTLINED_FUNCTION_4();
    LOWORD(v30) = v134;
    if (CGRectEqualToRect(v141, *MEMORY[0x1E695F050]))
    {
      v92 = 0.0;
    }

    else
    {
      v93 = OUTLINED_FUNCTION_4();
      v92 = OUTLINED_FUNCTION_25(v93, v94, v95, v96);
      v73 = v97;
      v83 = *&v63;
      v75 = v98;
    }

    *(a1 + 120) = v92;
    *(a1 + 128) = v73;
    *(a1 + 136) = v83;
    *(a1 + 144) = v75;
    v66 = v129 + 1;
    v64 = v130 + 1;
    v62 = 1;
    if (v129 + 1 >= *(a1 + 116))
    {
      goto LABEL_128;
    }
  }

  a2 = 1;
  v84 = 1;
  while (_cg_jpeg_read_scanlines(a1 + 528, &value, 1) == 1)
  {
    if (*(a1 + 369) == 1)
    {
      v85 = *(a1 + 16);
      if (v85)
      {
        IIOImagePlus::setStatus(v85, -6);
      }

      *(a1 + 371) = 0;
    }

    if (v79 * v130 + v84 >= v40)
    {
      OUTLINED_FUNCTION_6_0();
      v45 = v131;
      goto LABEL_120;
    }

    value = v140 + v84 * *(a1 + 316);
    v86 = ++v84;
    if (value >= v27)
    {
      v65 = (v86 + v79 * v130 - 2);
      v62 = 1;
      goto LABEL_121;
    }
  }

  LODWORD(v65) = v84 + v79 * v130 - 1;
  OUTLINED_FUNCTION_6_0();
LABEL_130:
  if (v65 <= v72)
  {
    v99 = 0;
  }

  else
  {
    v99 = v72;
  }

  if ((v125 + 1) < *(a1 + 116))
  {
    *(a1 + 104) = v125 + 1 - *(a1 + 112);
  }

  LOWORD(v30) = v134;
  v56 = v132;
  if (v65 == v99)
  {
    v100 = *(a1 + 104);
    if (v100)
    {
      *(a1 + 104) = v100 - 1;
    }

    OUTLINED_FUNCTION_15();
    v140 = 0;
  }

  else
  {
    v101 = (v65 - v99);
    if ((*(v27 + 2) & 3) != 0)
    {
      OUTLINED_FUNCTION_3_4();
      v87 = ImageIOLog("                     valid rows: %ld\n", v124);
    }

    *(*(a1 + 96) + 8 * v128) = OUTLINED_FUNCTION_16(v87, v140, v138, *(a1 + 316), 0);
    v142.origin.x = OUTLINED_FUNCTION_4();
    if (CGRectEqualToRect(v142, *MEMORY[0x1E695F050]))
    {
      v102 = 0.0;
    }

    else
    {
      v103 = OUTLINED_FUNCTION_4();
      v102 = OUTLINED_FUNCTION_25(v103, v104, v105, v106);
      v73 = v107;
      v83 = v108;
      v101 = v109;
    }

    *(a1 + 120) = v102;
    *(a1 + 128) = v73;
    *(a1 + 136) = v83;
    *(a1 + 144) = v101;
  }

LABEL_145:
  v25 = 0;
  if (a3 && *(a1 + 104))
  {
    v110 = OUTLINED_FUNCTION_12();
    v25 = IIOReadPlugin::imageBlockSetCreate(v110, v111, v112, v113, a2, a10, a9, v114, v115, v116, v117);
  }

LABEL_148:
  v28 = v56;
LABEL_149:
  v29 = v40;
  v26 = v30;
LABEL_150:
  v118 = v25;
  v119 = v29;
  v120 = v28;
  _cg_jpeg_destroy_decompress(a1 + 528);
  if (v139)
  {
    free(v139);
  }

  OUTLINED_FUNCTION_11();
  if (!v38)
  {
    ImageIOLog("<<< copyImageBlockSetJPEG\n\n");
  }

  if (a3)
  {
    IIOReadPlugin::freeBlockArray(a1);
  }

  if (v119)
  {
    v121 = v137;
    *(a1 + 300) = v136;
    *(a1 + 316) = v121;
    *(a1 + 332) = v26;
  }

  if (v120)
  {
    v122 = *(a1 + 24);
    if (v122)
    {
      IIOImageReadSession::unmapData(v122);
    }
  }

  return v118;
}

void decode_etc2()
{
  __assert_rtn("get_partition", "DecompressorETC.cpp", 532, "data.mode == ETC_Data::Mode_ETC1");
}

{
  __assert_rtn("get_diff_subblock_palette", "DecompressorETC.cpp", 498, "table_idx < 8");
}

{
  __assert_rtn("get_diff_subblock_palette", "DecompressorETC.cpp", 484, "table_idx < 8");
}

{
  __assert_rtn("decode_etc2_planar", "DecompressorETC.cpp", 606, "data.mode == ETC_Data::Mode_Planar");
}

uint64_t PVRReadPlugin::validateV2Header(uint64_t a1, _DWORD *a2)
{
  v4 = a2[4];
  if (*a2 == 52 || *a2 == 44)
  {
    if (a2[6])
    {
      v5 = a2[5];
      if (IIOImageReadSession::getSize(*(a1 + 24)) > v5)
      {
        v6 = a2[12];
        if (IIOImageReadSession::getSize(*(a1 + 24)) > v6)
        {
          if ((v4 & 0xFE) != 0x18 && (a2[6] & 7) != 0)
          {
            v11 = "*** invalid bits/pixel: %d";
            v12 = 163;
          }

          else
          {
            if (v4 - 22) < 0x1Du && ((0x10000023u >> (v4 - 22)))
            {
              return 1;
            }

            v8 = a2[7];
            v7 = a2[8];
            if ((v7 & v8) != 0)
            {
              v11 = "*** red/green masks overlap: r:0x%08X g:0x%08X";
              v12 = 166;
            }

            else
            {
              v9 = a2[9];
              if ((v9 & v8) != 0)
              {
                v11 = "*** red/blue masks overlap: r:0x%08X b:0x%08X";
                v12 = 167;
              }

              else
              {
                if ((v9 & v7) == 0)
                {
                  return 1;
                }

                v11 = "*** green/blue masks overlap: g:0x%08X b:0x%08X";
                v12 = 168;
              }
            }
          }

          _cg_jpeg_mem_term("validateV2Header", v12, v11);
        }
      }
    }
  }

  return 0;
}

uint64_t PVRReadPlugin::decodeImageDataPVR(PVRReadPlugin *this, unsigned __int8 *a2)
{
  v5 = *(this + 61);
  v4 = *(this + 62);
  if (!*(this + 287))
  {
    v6 = *(this + 544);
    if (v6 <= 3)
    {
      *(this + 287) = 0x4000400020002uLL >> (16 * v6);
    }
  }

  v7 = *(this + 437);
  v8 = PVRReadPlugin::calculateOffsetToRequestedImage(this, 52);
  v9 = (v5 * *(this + 287)) >> 3;
  v10 = malloc_type_calloc(v4 * v9, 1uLL, 0x100004077774924uLL);
  if (!v10)
  {
    return 4294967246;
  }

  v11 = v10;
  if (*(this + 55) == 1261588566)
  {
    LODWORD(dest.data) = *(this + 56);
    *(&dest.data + 4) = v10;
    *(&dest.height + 4) = v4 * v9;
    v12 = *(this + 73);
    if (v12)
    {
      if (!(*(*(v12 + 8) + 40))())
      {
        v13 = v9 * v4;
        goto LABEL_14;
      }
    }

    else
    {
      LogFault("decodeImageDataPVR", 906, "*** _pvr._ktxTexture is NULL\n");
    }
  }

  else
  {
    v13 = v9 * v4;
    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(*(this + 3), v10, v8, v13);
    if (BytesAtOffset)
    {
      v15 = BytesAtOffset == v13;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
LABEL_14:
      memset(&dest, 0, sizeof(dest));
      v16 = decodePVRTC(&dest, v11, v13, *(this + 287), *(this + 56), v5, v4);
      v17 = 4294967246;
      if (v16)
      {
        data = dest.data;
        if (dest.data)
        {
          height_low = LODWORD(dest.height);
          if (*(this + 161) == 32 && !v7)
          {
            *permuteMap = 50331906;
            vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
            data = dest.data;
          }

          rowBytes = *(this + 79);
          if (dest.rowBytes < rowBytes)
          {
            rowBytes = dest.rowBytes;
          }

          memcpy(a2, data, rowBytes * height_low);
          free(data);
          v17 = 0;
        }
      }

      goto LABEL_24;
    }
  }

  v17 = 4294967246;
LABEL_24:
  free(v11);
  return v17;
}

uint64_t PVRReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v60 = 0;
  v9 = *(this + 77);
  seed = 0;
  if ((gIIODebugFlags & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v10 = *(this + 55) >> 24;
  v11 = MEMORY[0x1E69E9830];
  if (v10 <= 0x7F)
  {
    v12 = OUTLINED_FUNCTION_2(v10);
  }

  else
  {
    v12 = __maskrune(v10, 0x40000uLL);
    v13 = *(this + 55);
  }

  if (v12)
  {
    v14 = (v13 >> 24);
  }

  else
  {
    v14 = 46;
  }

  v15 = v13 << 8 >> 24;
  if (v15 <= 0x7F)
  {
    v16 = OUTLINED_FUNCTION_2(v15);
  }

  else
  {
    v16 = __maskrune(v15, 0x40000uLL);
    v17 = *(this + 55);
  }

  if (v16)
  {
    v18 = (v17 << 8 >> 24);
  }

  else
  {
    v18 = 46;
  }

  v19 = v17 >> 8;
  if (v19 <= 0x7F)
  {
    v20 = OUTLINED_FUNCTION_2(v19);
  }

  else
  {
    v20 = __maskrune(v19, 0x40000uLL);
    v21 = *(this + 55);
  }

  if (v20)
  {
    v22 = (v21 >> 8);
  }

  else
  {
    v22 = 46;
  }

  if (v21 <= 0x7F)
  {
    if ((*(v11 + 4 * v21 + 60) & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v23 = 46;
    goto LABEL_25;
  }

  if (!__maskrune(v21, 0x40000uLL))
  {
    goto LABEL_24;
  }

LABEL_22:
  v23 = *(this + 220);
LABEL_25:
  ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v14, v18, v22, v23, iioTypeStr[a3], "virtual OSStatus PVRReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v24 = *(this + 3);
  if (v24)
  {
    v25 = IIOImageReadSession::mapData(v24);
    v24 = *(this + 3);
  }

  else
  {
    v25 = 0;
  }

  IIOImageReadSession::rewind(v24);
  if (*(this + 522))
  {
    v26 = 1;
LABEL_37:
    *(this + 580) = v26;
    goto LABEL_38;
  }

  if (*(this + 129) != 2)
  {
    v26 = 3;
    goto LABEL_37;
  }

  *(this + 580) = 2;
  if (*(this + 79) <= (*(this + 124) * v9) >> 3)
  {
    v27 = (*(this + 124) * v9) >> 3;
  }

  else
  {
    v27 = *(this + 79);
  }

  *(this + 79) = v27;
LABEL_38:
  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v4) = *(this + 77);
    v34 = *(this + 78);
    v32 = *(this + 79) * v34;
    v35 = _ImageIO_Malloc(v32, *(this + 52), &v60, kImageMalloc_PVR_Data[0], 0, 0);
    if (!v35)
    {
      goto LABEL_72;
    }

    BaseAddress = v35;
    v33 = 0;
    v36 = v4;
    v28 = v34;
  }

  else
  {
    v28 = 0.0;
    if (a3 == 1)
    {
      if (!a4 || !*a4)
      {
        goto LABEL_75;
      }

      IOSurfaceLock(*a4, 0, &seed);
      BaseAddress = IOSurfaceGetBaseAddress(*a4);
      Height = IOSurfaceGetHeight(*a4);
      BlockArray = 0;
      v32 = IOSurfaceGetBytesPerRow(*a4) * Height;
      v60 = v32;
      v33 = 1;
    }

    else
    {
      v33 = 0;
      v32 = 0;
      BaseAddress = 0;
      BlockArray = 0;
    }

    v36 = 0.0;
  }

  bzero(BaseAddress, v32);
  v37 = *(this + 580);
  switch(v37)
  {
    case 2:
      v38 = OUTLINED_FUNCTION_2_6();
      v40 = PVRReadPlugin::decodeImageDataV2(v38, v39);
      break;
    case 3:
      v41 = OUTLINED_FUNCTION_2_6();
      v40 = PVRReadPlugin::decodeImageDataV3(v41, v42);
      break;
    case 1:
      v56 = OUTLINED_FUNCTION_2_6();
      v40 = PVRReadPlugin::decodeImageDataPVR(v56, v57);
      break;
    default:
      if (BlockArray)
      {
        goto LABEL_51;
      }

      goto LABEL_56;
  }

  BlockArray = v40;
  if (v40)
  {
LABEL_51:
    *(this + 26) = 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_56:
  if (*(this + 161) == 32 && *(this + 160) == 8 && *(this + 438) == 1)
  {
    v43 = *(this + 78);
    dest.data = BaseAddress;
    dest.height = v43;
    v44 = *(this + 79);
    dest.width = *(this + 77);
    dest.rowBytes = v44;
    vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
  }

  if (a3 == 3)
  {
    v45 = 0;
    v46 = OUTLINED_FUNCTION_2_6();
    v61.size.width = v36;
    v61.size.height = v28;
    **(this + 12) = IIOReadPlugin::createImageBlock(v46, v47, v32, v61, v48, v49);
    if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
    {
      v50 = 0;
    }

    else
    {
      v62.origin.x = 0.0;
      v62.origin.y = 0.0;
      v62.size.width = v36;
      v62.size.height = v28;
      *(&v50 - 1) = CGRectUnion(*(this + 120), v62);
      v45 = v51;
      v36 = v52;
      v28 = v53;
    }

    *(this + 15) = v45;
    *(this + 16) = v50;
    *(this + 17) = v36;
    *(this + 18) = v28;
    if (v33)
    {
      BaseAddress = 0;
      goto LABEL_68;
    }
  }

  else if (v33)
  {
LABEL_68:
    IOSurfaceUnlock(*a4, 0, &seed);
LABEL_69:
    if (a3 == 3 && BaseAddress)
    {
      _ImageIO_Free(BaseAddress, v60);
    }

LABEL_72:
    if (!v25)
    {
      return BlockArray;
    }

    goto LABEL_73;
  }

LABEL_75:
  BlockArray = 0;
  if (!v25)
  {
    return BlockArray;
  }

LABEL_73:
  v54 = *(this + 3);
  if (v54)
  {
    IIOImageReadSession::unmapData(v54);
  }

  return BlockArray;
}

void PVRReadPlugin::validateV3Header(uint64_t a1, IIOImageReadSession **a2)
{
  IIOImageReadSession::getSize(*a2);
  _cg_jpeg_mem_term("validateV3Header", 185, "*** bad metadataSize [%d]  size: %d\n");
}

{
  IIOImageReadSession::getSize(*a2);
  _cg_jpeg_mem_term("validateV3Header", 182, "*** bad numberOfFaces count [%d]  size: %d\n");
}

void PVRReadPlugin::initialize()
{
  _cg_jpeg_mem_term("initialize", 671, "unexpected pixelWidth == %d\n");
}

{
  _cg_jpeg_mem_term("initialize", 670, "unexpected pixelHeight == %d\n");
}

{
  _cg_jpeg_mem_term("initialize", 605, "unexpected pixelWidth == %d\n");
}

{
  _cg_jpeg_mem_term("initialize", 604, "unexpected pixelHeight == %d\n");
}

{
  _cg_jpeg_mem_term("initialize", 401, "*** invalid PVR3 header\n");
}

uint64_t PVRReadPlugin::initialize(uint64_t a1, uint64_t a2, _WORD *a3, unint64_t *a4)
{
  if (!PVRReadPlugin::validateV2Header(a1, a2))
  {
    v26 = "*** invalid PVR2 header\n";
    v27 = 305;
    goto LABEL_30;
  }

  *(a1 + 464) = 1;
  *(a1 + 484) = 0;
  *(a1 + 476) = 0;
  *(a1 + 468) = 0;
  v9 = *(a2 + 4);
  v8 = *(a2 + 8);
  *(a1 + 492) = v8;
  *(a1 + 488) = v9;
  v10 = *(a2 + 24);
  *(a1 + 496) = v10;
  *(a1 + 500) = *(a2 + 48);
  *(a1 + 504) = 0;
  v11 = *(a2 + 12);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  *(a1 + 508) = v11;
  *(a1 + 524) = *(a2 + 28);
  *(a1 + 512) = 0x200000000;
  *(a1 + 520) = 0;
  v12 = *a3;
  if (v11 <= v12)
  {
    v13 = v11 - 1;
    *a3 = v13;
    LOBYTE(v12) = v13;
  }

  *(a1 + 244) = v8 >> v12;
  *(a1 + 248) = v9 >> v12;
  *(a1 + 574) = v10;
  v14 = *(a2 + 16);
  *(a1 + 544) = v14;
  *(a1 + 522) = (v14 < 0x1Au) & (0x3003000u >> v14);
  if (v14 - 42 < 2)
  {
    OUTLINED_FUNCTION_0_15();
LABEL_17:
    *(a1 + 160) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v16 = 1380401696;
    goto LABEL_18;
  }

  if (v14 != 22)
  {
    if (v14 == 23)
    {
      *(a1 + 262) = 3;
      *(a1 + 256) = 8;
      v15 = 2;
      goto LABEL_15;
    }

    if (v14 != 27)
    {
      if (v14 == 50)
      {
        OUTLINED_FUNCTION_0_15();
        *(a1 + 160) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
        *(a1 + 340) = 1380401696;
        *(a1 + 263) = 1;
        *(a1 + 265) = 1;
        goto LABEL_19;
      }

      *(a1 + 256) = 8;
      *(a1 + 260) = 196612;
      goto LABEL_17;
    }
  }

  *(a1 + 262) = 0;
  *(a1 + 256) = 8;
  v15 = 1;
LABEL_15:
  *(a1 + 260) = v15;
  *(a1 + 160) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  v16 = 1196573017;
LABEL_18:
  *(a1 + 340) = v16;
LABEL_19:
  v17 = *(a1 + 258);
  if (v17 == 16)
  {
    v18 = 1;
    *(a1 + 263) = 1;
  }

  else if (v17 == 32)
  {
    v18 = 0;
    *(a1 + 263) = 0;
  }

  else
  {
    v18 = *(a1 + 263);
  }

  v19 = *(a1 + 256);
  v20 = *(a1 + 260) * v19;
  *(a1 + 258) = v20;
  v21 = v20;
  v23 = *(a1 + 244);
  v22 = *(a1 + 248);
  v24 = (v23 * v21) >> 3;
  *(a1 + 252) = v24;
  *(a1 + 276) = v23;
  *(a1 + 280) = v22;
  *(a1 + 284) = v24;
  *(a1 + 288) = v19;
  LOBYTE(v19) = *(a1 + 264);
  LOBYTE(v24) = *(a1 + 265) != 0;
  *(a1 + 294) = *(a1 + 262) & 0x1F;
  *(a1 + 295) = v18 & 7;
  *(a1 + 296) = v19 & 0xF | (v18 >> 4);
  *(a1 + 297) = v24;
  *(a1 + 378) = 1;
  if (*a4 <= v23)
  {
    v26 = "*** unexpected image size: %d x %d\n";
    v27 = 383;
  }

  else
  {
    if (*a4 > v22)
    {
      return 1;
    }

    v26 = "*** unexpected image size: %d x %d\n";
    v27 = 384;
  }

LABEL_30:
  _cg_jpeg_mem_term("initialize", v27, v26);
  return 0;
}

void SerializeMetadataForJPEGXMP_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

uint64_t ICOReadPlugin::decodeImageData(ICOReadPlugin *this, IIOBitStream *a2, void *a3)
{
  v5 = *(this + 61);
  v4 = *(this + 62);
  v6 = *(this + 63);
  v7 = ((v5 + 31) >> 3) & 0x3FFFFFFC;
  if (*(this + 129) == 32)
  {
    v7 = 0;
  }

  v49 = v7;
  v8 = (v7 + v6) * v4;
  if (*(this + 58) < v8)
  {
    _cg_jpeg_mem_term("decodeImageData", 451, "*** _ico._length: %d   length: %d\n");
    return 4294967246;
  }

  v48 = *(this + 79);
  v12 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
  if (!v12)
  {
    return 4294967246;
  }

  v13 = v12;
  HIDWORD(v50) = 0;
  if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v12, *(this + 26), v8) > v8)
  {
    v28 = 4294967246;
    goto LABEL_53;
  }

  v15 = *(this + 129);
  if (v15 <= 7)
  {
    IIOBitStream = IIOBitStream::CreateIIOBitStream(v13, (v6 * v4), "r", v14);
    v18 = IIOBitStream::CreateIIOBitStream((v13 + v6 * v4), (v49 * v4), "r", v17);
    v20 = IIOBitStream::CreateIIOBitStream(a2, a3, "w", v19);
    if (v4)
    {
      v46 = v13;
      v21 = 0;
      while (1)
      {
        v22 = v6;
        (*(*IIOBitStream + 32))(IIOBitStream, v21 * v6);
        OUTLINED_FUNCTION_0_17();
        (*(v23 + 32))(v18);
        (*(*v20 + 32))(v20, (~v21 + v4) * v48);
        v24 = v5;
        if (v5)
        {
          break;
        }

LABEL_15:
        ++v21;
        v6 = v22;
        if (v21 == v4)
        {
          v28 = 0;
          goto LABEL_27;
        }
      }

      while (1)
      {
        v25 = (*(*IIOBitStream + 24))(IIOBitStream, *(this + 128), &v50 + 4);
        if (v25)
        {
          break;
        }

        OUTLINED_FUNCTION_0_17();
        v26 = OUTLINED_FUNCTION_2_7();
        v25 = v27(v26);
        if (v25)
        {
          break;
        }

        v25 = (*(*v20 + 16))(v20, *(this + 160), HIDWORD(v50));
        if (v25)
        {
          break;
        }

        v25 = (*(*v20 + 16))(v20, 8, 0xFFFFFFFFLL);
        if (v25)
        {
          break;
        }

        if (!--v24)
        {
          goto LABEL_15;
        }
      }

      v28 = v25;
LABEL_27:
      v13 = v46;
    }

    else
    {
      v28 = 0;
      if (!IIOBitStream)
      {
LABEL_29:
        if (!v18)
        {
          goto LABEL_30;
        }

        goto LABEL_51;
      }
    }

    (*(*IIOBitStream + 8))(IIOBitStream);
    goto LABEL_29;
  }

  if (v15 == 8)
  {
    v18 = IIOBitStream::CreateIIOBitStream((v13 + v6 * v4), (v49 * v4), "r", v14);
    if (v4)
    {
      v47 = v13;
      v37 = v6;
      OUTLINED_FUNCTION_4_1();
      while (1)
      {
        OUTLINED_FUNCTION_0_17();
        (*(v38 + 32))(v18);
        if (v5)
        {
          break;
        }

LABEL_46:
        if (++v3 == v4)
        {
LABEL_47:
          v28 = 0;
          v20 = 0;
          v13 = v47;
          goto LABEL_51;
        }
      }

      OUTLINED_FUNCTION_3_5();
      v39 = v47 + v3 * v37;
      v40 = v5;
      while (1)
      {
        OUTLINED_FUNCTION_0_17();
        v41 = OUTLINED_FUNCTION_2_7();
        v36 = v42(v41);
        if (v36)
        {
          goto LABEL_55;
        }

        v43 = *v39++;
        *v6 = v43;
        *(v6 + 1) = -1;
        v6 += 2;
        if (!--v40)
        {
          goto LABEL_46;
        }
      }
    }

LABEL_50:
    v20 = 0;
    v28 = 0;
    if (!v18)
    {
LABEL_30:
      if (!v20)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (v15 != 24)
  {
    if (v15 == 32)
    {
      if (v4)
      {
        v29 = a2 + (v4 - 1) * v48;
        v30 = v13;
        do
        {
          memcpy(v29, v30, 4 * v5);
          v30 = (v30 + v6);
          v29 -= v48;
          --v4;
        }

        while (v4);
        v28 = 0;
        goto LABEL_53;
      }
    }

    else
    {
      _cg_jpeg_mem_term("decodeImageData", 559, "*** _rpd._inputGeo.bitsPerPixel [%d] not handled\n");
    }

    v28 = 0;
    goto LABEL_53;
  }

  v18 = IIOBitStream::CreateIIOBitStream((v13 + v6 * v4), (v49 * v4), "r", v14);
  if (!v4)
  {
    goto LABEL_50;
  }

  v45 = v6;
  v47 = v13;
  OUTLINED_FUNCTION_4_1();
  while (1)
  {
    OUTLINED_FUNCTION_0_17();
    (*(v31 + 32))(v18);
    if (v5)
    {
      break;
    }

LABEL_38:
    if (++v3 == v4)
    {
      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_3_5();
  v32 = v47 + v3 * v45;
  v33 = v5;
  while (1)
  {
    OUTLINED_FUNCTION_0_17();
    v34 = OUTLINED_FUNCTION_2_7();
    v36 = v35(v34);
    if (v36)
    {
      break;
    }

    *v6 = *v32;
    *(v6 + 1) = v32[1];
    *(v6 + 2) = v32[2];
    *(v6 + 3) = -1;
    v32 += 3;
    v6 += 4;
    if (!--v33)
    {
      goto LABEL_38;
    }
  }

LABEL_55:
  v28 = v36;
  v20 = 0;
  v13 = v47;
LABEL_51:
  (*(*v18 + 8))(v18);
  if (v20)
  {
LABEL_52:
    (*(*v20 + 8))(v20);
  }

LABEL_53:
  free(v13);
  return v28;
}

uint64_t ICOReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v45 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(this + 55) >> 24;
  v9 = MEMORY[0x1E69E9830];
  if (v8 <= 0x7F)
  {
    v10 = OUTLINED_FUNCTION_0(v8);
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v11 = *(this + 55);
  }

  if (v10)
  {
    v12 = (v11 >> 24);
  }

  else
  {
    v12 = 46;
  }

  v13 = v11 << 8 >> 24;
  if (v13 <= 0x7F)
  {
    v14 = OUTLINED_FUNCTION_0(v13);
  }

  else
  {
    v14 = __maskrune(v13, 0x40000uLL);
    v15 = *(this + 55);
  }

  if (v14)
  {
    v16 = (v15 << 8 >> 24);
  }

  else
  {
    v16 = 46;
  }

  v17 = v15 >> 8;
  if (v17 <= 0x7F)
  {
    v18 = OUTLINED_FUNCTION_0(v17);
  }

  else
  {
    v18 = __maskrune(v17, 0x40000uLL);
    v19 = *(this + 55);
  }

  if (v18)
  {
    v20 = (v19 >> 8);
  }

  else
  {
    v20 = 46;
  }

  if (v19 <= 0x7F)
  {
    if ((*(v9 + 4 * v19 + 60) & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v21 = 46;
    goto LABEL_25;
  }

  if (!__maskrune(v19, 0x40000uLL))
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(this + 220);
LABEL_25:
  ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v16, v20, v21, iioTypeStr[a3], "virtual OSStatus ICOReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v22 = *(this + 3);
  if (v22)
  {
    v23 = IIOImageReadSession::mapData(v22);
  }

  else
  {
    v23 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v31) = *(this + 77);
    v30 = v31;
    v32 = *(this + 78);
    v28 = v32;
    v27 = *(this + 79) * v32;
    BaseAddress = _ImageIO_Malloc(v27, *(this + 52), &v45, kImageMalloc_ICO_Data[0], 0, 0);
    v29 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 0;
      goto LABEL_59;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v27 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v45 = v27;
    v28 = 0.0;
    v29 = 1;
    v30 = 0.0;
  }

  if (!BaseAddress)
  {
LABEL_50:
    if (!v29)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  memset(BaseAddress, 255, v27);
  BlockArray = (*(*this + 120))(this, BaseAddress, v27);
  if (*(this + 161) == 32 && *(this + 160) == 8)
  {
    v33 = *(this + 78);
    dest.data = BaseAddress;
    dest.height = v33;
    v34 = *(this + 79);
    dest.width = *(this + 77);
    dest.rowBytes = v34;
    if (*(this + 437))
    {
      *permuteMap = 50331906;
      vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
    }

    if (*(this + 438) == 1)
    {
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
    }
  }

  if (BlockArray)
  {
    *(this + 26) = 0;
    if ((v29 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_50;
  }

  v35 = 0;
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = v30;
  v46.size.height = v28;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v27, v46, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v36 = 0;
  }

  else
  {
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    v47.size.width = v30;
    v47.size.height = v28;
    *(&v36 - 1) = CGRectUnion(*(this + 120), v47);
    v35 = v37;
    v30 = v38;
    v28 = v39;
  }

  BlockArray = 0;
  *(this + 15) = v35;
  *(this + 16) = v36;
  *(this + 17) = v30;
  *(this + 18) = v28;
  if ((v29 & 1) == 0)
  {
    goto LABEL_59;
  }

  BaseAddress = 0;
LABEL_55:
  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_56:
  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v45);
  }

LABEL_59:
  if (v23)
  {
    v40 = *(this + 3);
    if (v40)
    {
      IIOImageReadSession::unmapData(v40);
    }
  }

  return BlockArray;
}

void __CGImageMetadataRemoveTagWithPath_block_invoke_3(uint64_t a1, const void *a2, uint64_t a3, _BYTE *a4)
{
  DefaultString = CGImageMetadataGetDefaultString(a2);
  if (CFStringCompare(DefaultString, *(a1 + 48), 0) == kCFCompareEqualTo)
  {
    v7 = CFGetAllocator(*(a1 + 56));
    Count = CFArrayGetCount(*(a1 + 56));
    MutableCopy = CFArrayCreateMutableCopy(v7, Count, *(a1 + 56));
    if (MutableCopy)
    {
      v10 = MutableCopy;
      CFArrayRemoveValueAtIndex(MutableCopy, *(a1 + 64));
      IIOMetadata_Tag::setValue(*(a1 + 72), v10);
      CFRelease(*(a1 + 56));
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t JP2ReadPlugin::checkJP2HeaderBox(JP2ReadPlugin *this, IIOScanner *a2, uint64_t a3)
{
  v5 = *(a2 + 3);
  Val32 = IIOScanner::getVal32(a2);
  v7 = IIOScanner::getVal32(a2);
  v19 = 0;
  if (v7 == 1768449138)
  {
    if (Val32 == 22)
    {
      result = JP2ReadPlugin::checkImageHeaderBox(v7, a2);
      if (!result)
      {
        return result;
      }

      v9 = *(a2 + 3);
      v10 = IIOScanner::getVal32(a2);
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = v5 + a3;
        do
        {
          v14 = IIOScanner::getVal32(a2);
          if (v14 == 1885564018)
          {
            result = JP2ReadPlugin::checkPaletteBox(v14, a2, v15, v19);
            if (!result)
            {
              return result;
            }
          }

          else if (v14 == 1668246642)
          {
            if ((JP2ReadPlugin::checkColorSpecificationBox(v14, a2, v11, &v19) & 1) == 0)
            {
              return 0;
            }

            v12 = 1;
          }

          if (v13 <= v9 + v11)
          {
            break;
          }

          IIOScanner::seek(a2, v9 + v11);
          v9 = *(a2 + 3);
          v11 = IIOScanner::getVal32(a2);
        }

        while (v11);
        if (v12)
        {
          return 1;
        }
      }

      v16 = "*** ERROR: JP2HeaderBox: ihdr has no ColorSpecificationBox\n";
      v17 = 1025;
    }

    else
    {
      v16 = "*** ERROR: JP2HeaderBox: ihdr marker has wrong size (%d)\n";
      v17 = 981;
    }
  }

  else
  {
    v18 = v7;
    if ((v7 >> 24) <= 0x7F)
    {
      OUTLINED_FUNCTION_0_19();
    }

    else
    {
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_3_6();
    if ((v18 << 8 >> 24) <= 0x7F)
    {
      OUTLINED_FUNCTION_0_19();
    }

    else
    {
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_3_6();
    if ((v18 >> 8) <= 0x7F)
    {
      OUTLINED_FUNCTION_0_19();
    }

    else
    {
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_3_6();
    if (v18 <= 0x7F)
    {
      OUTLINED_FUNCTION_0_19();
    }

    else
    {
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_3_6();
    v16 = "*** ERROR: JP2HeaderBox - expected 'ihdr' marker, got '%c%c%c%c' [%08X]\n";
    v17 = 980;
  }

  _cg_jpeg_mem_term("checkJP2HeaderBox", v17, v16);
  return 0;
}

void JP2ReadPlugin::fixPremultipliedData(JP2ReadPlugin *this, CGRect a2, unsigned __int8 *a3)
{
  v3 = *(this + 69);
  if ((v3 | 2) == 3 && (*(this + 73) & 0xE0000000) == 0)
  {
    height = a2.size.height;
    width = a2.size.width;
    v8 = *(this + 129);
    v9 = malloc_type_calloc(8 * (*(this + 73) & 0x1FFFFFFFLL), 1uLL, 0x10040436913F5uLL);
    if (v9)
    {
      v10 = *(this + 73);
      if (v10)
      {
        v11 = *(this + 72) >> 3;
        v12 = *(this + 73);
        v13 = v9;
        do
        {
          *v13++ = a3;
          a3 += v11;
          --v12;
        }

        while (v12);
      }

      if (width * height > 0.0)
      {
        v14 = 0;
        v15 = v10;
        do
        {
          if (v15)
          {
            v16 = 0;
            v17 = *v9[v3];
            do
            {
              v18 = v9[v16];
              if (v17 < *v18)
              {
                *v18 = v17;
                v18 = v9[v16];
                v10 = *(this + 73);
              }

              v9[v16++] = &v18[v8 >> 3];
              v15 = v10;
            }

            while (v10 > v16);
          }

          ++v14;
        }

        while (width * height > v14);
      }

      free(v9);
    }
  }
}

uint64_t JP2ReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v59 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(this + 55) >> 24;
    v9 = MEMORY[0x1E69E9830];
    if (v8 <= 0x7F)
    {
      v10 = OUTLINED_FUNCTION_0(v8);
    }

    else
    {
      v10 = __maskrune(v8, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v10)
    {
      v12 = (v11 >> 24);
    }

    else
    {
      v12 = 46;
    }

    v13 = v11 << 8 >> 24;
    if (v13 <= 0x7F)
    {
      v14 = OUTLINED_FUNCTION_0(v13);
    }

    else
    {
      v14 = __maskrune(v13, 0x40000uLL);
      v15 = *(this + 55);
    }

    if (v14)
    {
      v16 = (v15 << 8 >> 24);
    }

    else
    {
      v16 = 46;
    }

    v17 = v15 >> 8;
    if (v17 <= 0x7F)
    {
      v18 = OUTLINED_FUNCTION_0(v17);
    }

    else
    {
      v18 = __maskrune(v17, 0x40000uLL);
      v19 = *(this + 55);
    }

    if (v18)
    {
      v20 = (v19 >> 8);
    }

    else
    {
      v20 = 46;
    }

    if (v19 <= 0x7F)
    {
      if ((*(v9 + 4 * v19 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v19, 0x40000uLL))
    {
LABEL_22:
      v21 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v16, v20, v21, iioTypeStr[a3], "virtual OSStatus JP2ReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v21 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v22 = *(this + 161);
  if (v22 == 8)
  {
    if (*(this + 160) == 8)
    {
      v23 = *(this + 77);
      goto LABEL_32;
    }
  }

  else if (v22 == 24 && *(this + 160) == 8)
  {
    v23 = 3 * *(this + 77);
LABEL_32:
    *(this + 79) = v23;
  }

  if (*(this + 446) != 1 || *(this + 442) == 1 && *(this + 79) % *(this + 106))
  {
    return 4294967115;
  }

  if (!*(this + 65))
  {
    _cg_JP2SetupDecompressor(this + 464, this + 464);
  }

  *(this + 166) = *(this + 79);
  v26 = *(this + 132);
  v27 = *(this + 134);
  *(this + 77) = v26;
  *(this + 78) = v27;
  v28 = *(this + 3);
  if (v28)
  {
    v29 = IIOImageReadSession::mapData(v28);
    v26 = *(this + 77);
    v27 = *(this + 78);
  }

  else
  {
    v29 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    v33 = *(this + 79);
    if (v33 <= *(this + 63))
    {
      v33 = *(this + 63);
    }

    v32 = *(this + 78) * v33;
    BaseAddress = _ImageIO_Malloc(v32, *(this + 52), &v59, kImageMalloc_JP2_Data[0], 0, 0);
    v56 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      goto LABEL_93;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v32 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v59 = v32;
    v56 = 1;
  }

  if (!BaseAddress)
  {
LABEL_83:
    if (!v56)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v34 = v26;
  v35 = v27;
  memset(BaseAddress, 255, v32);
  v36 = *(this + 656);
  if (v36 == 2)
  {
    BlockArray = JP2ReadPlugin::decodeImageImpProgressive(this, a2, a3);
LABEL_61:
    if (!BlockArray)
    {
      goto LABEL_79;
    }

LABEL_62:
    *(this + 26) = 0;
    if ((v56 & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if (v36 != 1)
  {
    goto LABEL_61;
  }

  v37 = OUTLINED_FUNCTION_2_8();
  v60.size.width = v26;
  v60.size.height = v27;
  BlockArray = JP2ReadPlugin::decodeJP2Block(v37, v38, v60);
  if (BlockArray)
  {
    goto LABEL_62;
  }

  v39 = (this + 308);
  if (*(this + 161) == 32 && *(this + 129) == 24 && (OUTLINED_FUNCTION_4_2(), v40))
  {
    ImageIOPixelConverter::ExpandRGB888ToARGB8888(BaseAddress, v32, *(this + 77), *(this + 78), *(this + 79));
  }

  else
  {
    v41 = *(this + 71);
    v42 = *(this + 79);
    if (v41 != v42)
    {
      ImageIOPixelConverter::AdjustRowBytes(BaseAddress, v32, *(this + 77), *(this + 78), v41, v42);
    }
  }

  dest.data = BaseAddress;
  v43.i64[0] = *v39;
  v43.i64[1] = HIDWORD(*v39);
  *&dest.height = vextq_s8(v43, v43, 8uLL);
  dest.rowBytes = *(this + 79);
  if (*(this + 161) != 32)
  {
    goto LABEL_77;
  }

  v44 = *(this + 160);
  if (*(this + 129) == 24)
  {
    if (v44 != 8)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_4_2();
    if (v40)
    {
      if (!*(this + 437))
      {
        goto LABEL_77;
      }

      v45 = &JP2ReadPlugin::decodeImageImp(IIODecodeParameter *,IIOImageType,__IOSurface **,__CVBuffer **,CGImageBlockSet **)::permuteMap;
      goto LABEL_76;
    }
  }

  else if (v44 != 8)
  {
    goto LABEL_77;
  }

  if (*(this + 108) != 1111970392)
  {
    goto LABEL_77;
  }

  v45 = &JP2ReadPlugin::decodeImageImp(IIODecodeParameter *,IIOImageType,__IOSurface **,__CVBuffer **,CGImageBlockSet **)::permuteMap;
LABEL_76:
  vImagePermuteChannels_ARGB8888(&dest, &dest, v45, 0x10u);
LABEL_77:
  if (*(this + 438) == 1)
  {
    vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
  }

LABEL_79:
  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_83;
  }

  v46 = 0;
  v47 = OUTLINED_FUNCTION_2_8();
  v61.size.width = v26;
  v61.size.height = v27;
  **(this + 12) = IIOReadPlugin::createImageBlock(v47, v48, v32, v61, v49, v50);
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v51 = 0;
  }

  else
  {
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.width = v26;
    v62.size.height = v27;
    *(&v51 - 1) = CGRectUnion(*(this + 120), v62);
    v46 = v52;
    v34 = v53;
    v35 = v54;
  }

  *(this + 15) = v46;
  *(this + 16) = v51;
  *(this + 17) = v34;
  *(this + 18) = v35;
  if (v56)
  {
    BlockArray = 0;
    BaseAddress = 0;
LABEL_88:
    IOSurfaceUnlock(*a4, 0, &seed);
LABEL_89:
    if (a3 == 3 && BaseAddress)
    {
      _ImageIO_Free(BaseAddress, v59);
      if (!v29)
      {
        return BlockArray;
      }
    }

    else if (!v29)
    {
      return BlockArray;
    }

    goto LABEL_96;
  }

LABEL_93:
  BlockArray = 0;
  if (!v29)
  {
    return BlockArray;
  }

LABEL_96:
  v55 = *(this + 3);
  if (v55)
  {
    IIOImageReadSession::unmapData(v55);
  }

  return BlockArray;
}

void JP2ReadPlugin::checkCodingStyleDefaultBox()
{
  _cg_jpeg_mem_term("checkCodingStyleDefaultBox", 1212, "*** ERROR: bad 'COD NumDecompositionLevels' (%d)\n");
}

{
  _cg_jpeg_mem_term("checkCodingStyleDefaultBox", 1209, "*** ERROR: bad 'COD NumberOfLayers' (%d)\n");
}

void JP2ReadPlugin::checkImageHeaderBox()
{
  _cg_jpeg_mem_term("checkImageHeaderBox", 1050, "*** ERROR: invalid JP2: compression == %d\n");
}

{
  _cg_jpeg_mem_term("checkImageHeaderBox", 1051, "*** ERROR: invalid JP2: interlectualProperty == %d\n");
}

{
  _cg_jpeg_mem_term("checkImageHeaderBox", 1047, "*** ERROR: invalid JP2: height == 0\n");
}

{
  _cg_jpeg_mem_term("checkImageHeaderBox", 1046, "*** ERROR: invalid JP2: width == 0\n");
}

void JP2ReadPlugin::initialize()
{
  _cg_jpeg_mem_term("initialize", 1641, "*** ERROR: indexed-color JP2, but no colorMap ");
}

{
  _cg_jpeg_mem_term("initialize", 1613, "*** ERROR: indexedColor cannot be used with gray scale data\n");
}

{
  _cg_jpeg_mem_term("initialize", 1614, "*** ERROR: indexedColor cannot be used with YCC data\n");
}

_DWORD *JP2ReadPlugin::initialize(_DWORD *result, uint64_t a2, _BYTE *a3)
{
  v3 = *result - 1;
  if (v3 >= 6)
  {
    *a3 = 0;
    LOBYTE(v4) = 5;
  }

  else
  {
    v4 = 0x50503030101uLL >> (8 * v3);
    *a3 = v4;
    *(a2 + 263) = 0;
  }

  *(a2 + 292) = 4;
  *(a2 + 288) = 2097160;
  *(a2 + 294) = v4;
  *(a2 + 295) = 0;
  *(a2 + 378) = 1;
  return result;
}

CGImage *IIOImageDestination::createCGImageConforming(uint64_t a1, CGImageRef image, unint64_t a3, CGColor *a4, uint64_t a5)
{
  v167 = *MEMORY[0x1E69E9840];
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  BitsPerPixel = CGImageGetBitsPerPixel(image);
  ColorSpace = CGImageGetColorSpace(image);
  Model = CGColorSpaceGetModel(ColorSpace);
  Type = CGColorSpaceGetType();
  v11 = CGImageGetDecode(image);
  AlphaInfo = _ImageGetAlphaInfo(image);
  EndianInfo = _ImageGetEndianInfo(image);
  IsFloat = _ImageIsFloat(image);
  Current = CFAbsoluteTimeGetCurrent();
  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = CFStringCompare(v13, @"public.jpeg", 0) == kCFCompareEqualTo;
  }

  else
  {
    v14 = 0;
  }

  CopyWithParametersNew = 0;
  if ((a5 & 0x7F000000) == 0 || (a5 & 0x1FF00) == 0 || !image || (a5 & 0x7F) == 0)
  {
    goto LABEL_321;
  }

  v133 = Type;
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("CGImageDestination - CGImageCreateConforming\n");
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      ImageIOLog("--------------------------------------------\n");
      if ((gIIODebugFlags & 0x10000000000) != 0)
      {
        ImageIOLog("           writerMode: %s [0x%X]\n", IIO_WriterModeString(CGImagePluginWriteModes)::output, a5);
      }
    }
  }

  v135 = BitsPerComponent;
  v16 = Type;
  if (Type == 7)
  {
    ColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
    v16 = CGColorSpaceGetType();
    Model = CGColorSpaceGetModel(ColorSpace);
  }

  v17 = IIOImageDestination::adjustWriteModesForWriter(a1, a5, BitsPerComponent, Model, AlphaInfo, *(a1 + 40), ColorSpace, 0);
  v18 = v17;
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("       new writerMode: %s [0x%X]\n", IIO_WriterModeString(CGImagePluginWriteModes)::output, v17);
  }

  if ((a5 & 0x10) != 0 && (Type == 7 ? (v19 = Model == kCGColorSpaceModelRGB) : (v19 = 0), v19) || ((v131 = 0, (a5 & 1) == 0) ? (v20 = Model == kCGColorSpaceModelRGB) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), Type != 7 && (v21 & 1) == 0))
  {
    v131 = 1;
  }

  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("            csIndexed: %d\n", Type == 7);
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      v22 = IIO_ColorModelString(Model);
      ImageIOLog("              csModel: %d = %s\n", Model, v22);
      if ((gIIODebugFlags & 0x10000000000) != 0)
      {
        ImageIOLog("            indexedOK: %d\n", v131);
      }
    }
  }

  if (((Type == 7) & (a5 >> 4)) != 0)
  {
    v23 = v18 & 0xF9FFFFFF;
  }

  else
  {
    v23 = v18;
  }

  v24 = Model != kCGColorSpaceModelRGB || (a5 & 0x11) == 0;
  v28 = 1;
  if (v24 && ((Model == kCGColorSpaceModelCMYK) & (a5 >> 1)) == 0)
  {
    v25 = (a5 & 8) != 0 && v16 == 5;
    v26 = !v25;
    v27 = Model || (a5 & 0x24) == 0;
    if (v27 && v26)
    {
      v28 = 0;
    }
  }

  if (Model != kCGColorSpaceModelDeviceN || v28 || BitsPerComponent != 1 || (v23 & 0x100) == 0)
  {
    v125 = v28;
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      v30 = "yes";
      if (!v28)
      {
        v30 = "no <<<";
      }

      ImageIOLog("         spaceModelOK: %s\n", v30);
    }

    if (v16 <= 5 && ((1 << v16) & 0x27) != 0 || (v32 = 0, v31 = v23 & 0x40000, (v23 & 0x40000) != 0) && v16 != 9)
    {
      v31 = v23 & 0x40000;
      v32 = 1;
    }

    if (v16 == 6)
    {
      v33 = v32;
    }

    else
    {
      v33 = 1;
    }

    if (v31)
    {
      v34 = v33;
    }

    else
    {
      v34 = 1;
    }

    v127 = v32 | v34 ^ 1;
    if (Model != kCGColorSpaceModelRGB && (v34 & 1) == 0)
    {
      v127 = (Model & 0xFFFFFFFD) == 0;
    }

    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      v35 = "yes";
      if (!v127)
      {
        v35 = "no <<<";
      }

      ImageIOLog("          spaceTypeOK: %s\n", v35);
    }

    v122 = 1;
    if ((BitsPerComponent != 1 || (v23 & 0x100) == 0) && (BitsPerComponent != 2 || (v23 & 0x200) == 0) && (BitsPerComponent != 4 || (v23 & 0x400) == 0) && (BitsPerComponent != 8 || (v23 & 0x800) == 0) && (BitsPerComponent != 16 || (v23 & 0x1000) == 0) && (BitsPerComponent != 16 || (v23 & 0x4000) == 0) && (BitsPerComponent != 16 || (v23 & 0x10000) == 0))
    {
      v36 = IsFloat ^ 1;
      if (BitsPerComponent != 32 || (v23 & 0x2000) == 0 || v36)
      {
        v37 = (v23 & 0x8000) != 0 && BitsPerComponent == 32;
        v38 = !v37;
        if ((v38 | v36))
        {
          v122 = 0;
        }
      }
    }

    if ((gIIODebugFlags & 0x10000000000) != 0 && (ImageIOLog("          bitsPerComp: %d\n", BitsPerComponent), (gIIODebugFlags & 0x10000000000) != 0))
    {
      v51 = "yes";
      if (!v122)
      {
        v51 = "no <<<";
      }

      ImageIOLog("              depthOK: %s\n", v51);
      OUTLINED_FUNCTION_0_20();
      v53 = v52 & v23 & 0x7F000000;
      v40 = v53 != 0;
      if ((gIIODebugFlags & 0x10000000000) != 0)
      {
        ImageIOLog("              alphaOK: %d\n", v53 != 0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_20();
      v40 = (v39 & v23 & 0x7F000000) != 0;
    }

    if (BitsPerComponent == 1 && !EndianInfo && (v23 & 0x100) != 0)
    {
      goto LABEL_153;
    }

    if (BitsPerComponent == 2 && !EndianInfo && (v23 & 0x200) != 0)
    {
      goto LABEL_153;
    }

    if (BitsPerComponent == 4 && !EndianInfo && (v23 & 0x400) != 0)
    {
      goto LABEL_153;
    }

    if (BitsPerComponent == 8 && !EndianInfo && (v23 & 0x800) != 0)
    {
      goto LABEL_153;
    }

    v41 = BitsPerComponent != 16;
    if (BitsPerComponent == 16 && EndianInfo == 12288 && (v23 & 0x1000) != 0)
    {
      goto LABEL_153;
    }

    if (BitsPerComponent == 16 && !EndianInfo && (v23 & 0x1000) != 0)
    {
      goto LABEL_153;
    }

    if (EndianInfo != 4096)
    {
      v41 = 1;
    }

    if (!v41 && (v23 & 0x4000) != 0)
    {
      goto LABEL_153;
    }

    v42 = IsFloat ^ 1;
    if (BitsPerComponent == 32 && EndianInfo == 0x4000 && (v23 & 0x2000) != 0 && !v42)
    {
      goto LABEL_153;
    }

    v44 = BitsPerComponent != 32 || EndianInfo != 0;
    if ((v23 & 0x2000) == 0)
    {
      v44 = 1;
    }

    if (((v44 | v42) & 1) == 0)
    {
      goto LABEL_153;
    }

    v45 = BitsPerComponent == 32 && EndianInfo == 0x2000;
    v46 = (v23 >> 15) & 1;
    if (!v45)
    {
      v46 = 0;
    }

    if (v46 & IsFloat)
    {
LABEL_153:
      v47 = 1;
    }

    else
    {
      v113 = !v14;
      if (BitsPerComponent != 8)
      {
        v113 = 1;
      }

      if ((v113 & 1) != 0 || (EndianInfo | 0x2000) != 0x2000)
      {
        v47 = 0;
      }

      else
      {
        v47 = (v23 >> 11) & 1;
      }
    }

    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      ImageIOLog("          bitsPerComp: %d\n", BitsPerComponent);
      if ((gIIODebugFlags & 0x10000000000) != 0)
      {
        ImageIOLog("           endianInfo: %d [%p]\n", EndianInfo, EndianInfo);
        if ((gIIODebugFlags & 0x10000000000) != 0)
        {
          v48 = "yes";
          if (!v47)
          {
            v48 = "no <<<";
          }

          ImageIOLog("             endianOK: %s\n", v48);
        }
      }
    }

    v119 = v47;
    if (v11)
    {
      OUTLINED_FUNCTION_3_7();
      v54 = v19 && v11[1] == 0.0;
      if (v49 == 0.0)
      {
        OUTLINED_FUNCTION_3_7();
        v50 = v19;
        if (Model)
        {
          goto LABEL_178;
        }
      }

      else
      {
        v50 = 0;
        if (Model)
        {
          goto LABEL_178;
        }
      }
    }

    else
    {
      v54 = 0;
      v50 = 1;
      if (Model)
      {
        goto LABEL_178;
      }
    }

    v55 = *&v54 & ((a5 & 0x20) >> 5);
    if (BitsPerComponent == 1)
    {
      v55 = 1;
    }

    v50 = v55 | v50 & ((a5 & 4) >> 2);
LABEL_178:
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      v56 = "yes";
      if (!v50)
      {
        v56 = "no <<<";
      }

      ImageIOLog("             decodeOK: %s\n", v56);
    }

    HasMask = _ImageHasMask(image);
    v58 = HasMask;
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      ImageIOLog("               maskOK: %d\n", !HasMask);
    }

    v59 = CGImageGetColorSpace(image);
    MinimalPixelSize = _GetMinimalPixelSize(v59, BitsPerComponent, AlphaInfo);
    v61 = MinimalPixelSize;
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      v62 = "yes";
      if (BitsPerPixel != MinimalPixelSize)
      {
        v62 = "no <<<";
      }

      ImageIOLog("                bppOK: %s\n", v62);
    }

    v136 = *MEMORY[0x1E695EFD0];
    v137 = *(MEMORY[0x1E695EFD0] + 16);
    v138 = *(MEMORY[0x1E695EFD0] + 32);
    v63 = a3 - 2;
    if (a3 - 2 <= 6)
    {
      *v139 = 0xBFF0000000000000;
      *&v139[8] = 0;
      *&v139[16] = 0;
      *&v139[24] = 0x3FF0000000000000;
      v64 = Width;
      *&v139[32] = Width;
      *&v139[40] = xmmword_186208C20;
      v140 = 0;
      v141 = 0;
      v142 = 0xBFF0000000000000;
      v143 = Width;
      v144 = Height;
      v146 = 0;
      v147 = 0;
      v145 = 0x3FF0000000000000;
      v148 = xmmword_186208C40;
      v149 = Height;
      v150 = xmmword_186208C20;
      v151 = xmmword_186208C40;
      v152 = Height;
      v153 = Width;
      v154 = xmmword_186208C20;
      v156 = 0;
      v157 = 0;
      v155 = 0x3FF0000000000000;
      v158 = Width;
      v159 = xmmword_186208C30;
      v161 = 0u;
      v162 = 0u;
      v160 = 0x3FF0000000000000;
      v163 = 0x3FF0000000000000;
      v164 = xmmword_186208C40;
      v165 = Height;
      v166 = 0;
      v65 = &v139[48 * v63];
      v137 = v65[1];
      v138 = v65[2];
      v66 = *v65;
      if (a3 <= 4)
      {
        v67 = Height;
      }

      else
      {
        v67 = Width;
      }

      if (a3 > 4)
      {
        v64 = Height;
      }

      Height = v67;
      Width = v64;
      v136 = v66;
    }

    v124 = a3 - 2;
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      v68 = "no";
      if (v63 >= 7)
      {
        v68 = "yes";
      }

      ImageIOLog("             orientOK: %s\n", v68);
      v63 = v124;
    }

    v69 = v50 ^ 1;
    v70 = v131 & v125 & v122 & v127;
    v71 = v119;
    v117 = v70 ^ 1;
    v118 = v69;
    if (v63 >= 7 && ((v69 | v58) & 1) == 0 && ((v70 ^ 1) & 1) == 0 && v40 && ((v119 ^ 1) & 1) == 0 && BitsPerPixel == v61)
    {
      BitmapInfo = _ImageGetBitmapInfo(image);
      if (BitmapInfo == CGImageGetBitmapInfo(image))
      {
        CopyWithParametersNew = CGImageRetain(image);
        if (CopyWithParametersNew)
        {
LABEL_207:
          v29 = 0;
LABEL_315:
          CGImageSetProperty();
          if ((gIIODebugFlags & 0x10000000000) != 0)
          {
            if (CopyWithParametersNew == image)
            {
              ImageIOLog("CGImageCreateConforming - newImage == input image\n");
            }

            else
            {
              ImageIOLog("CGImageCreateConforming - newImage:\n");
            }
          }

          goto LABEL_319;
        }
      }

      else
      {
        v116 = CGImageGetBitsPerComponent(image);
        v115 = CGImageGetBitsPerPixel(image);
        bytesPerRow = CGImageGetBytesPerRow(image);
        v73 = CGImageGetColorSpace(image);
        v74 = _ImageGetBitmapInfo(image);
        DataProvider = CGImageGetDataProvider(image);
        decode = CGImageGetDecode(image);
        shouldInterpolate = CGImageGetShouldInterpolate(image);
        RenderingIntent = CGImageGetRenderingIntent(image);
        v79 = v73;
        Type = v133;
        v80 = DataProvider;
        v71 = v119;
        CopyWithParametersNew = CGImageCreate(Width, Height, v116, v115, bytesPerRow, v79, v74, v80, decode, shouldInterpolate, RenderingIntent);
        CGImageSetProperty();
        CGImageSetProperty();
        if (CopyWithParametersNew)
        {
          goto LABEL_207;
        }
      }

      if ((gIIODebugFlags & 0x10000000000) != 0)
      {
        ImageIOLog("*** CGImageCreate failed\n");
      }
    }

    if (_ImageIsOpaque(image))
    {
      v81 = BitsPerComponent;
      if ((v23 & 0x40000000) != 0 && (OUTLINED_FUNCTION_4_3(), !v19 & v82))
      {
        v83 = 0;
        v84 = 6;
      }

      else if ((v23 & 0x20000000) != 0 && (OUTLINED_FUNCTION_4_3(), !v19 & v82))
      {
        v83 = 0;
        v84 = 5;
      }

      else if ((v23 & 0x1000000) != 0)
      {
        v84 = 0;
        v83 = 0;
      }

      else
      {
        v83 = 0;
        if ((v23 & 0x8000000) != 0)
        {
          v84 = 3;
        }

        else if ((v23 & 0x10000000) != 0)
        {
          v84 = 4;
        }

        else if ((v23 & 0x2000000) != 0)
        {
          v84 = 1;
        }

        else
        {
          v84 = 2;
        }
      }
    }

    else
    {
      v85 = AlphaInfo - 3;
      v81 = BitsPerComponent;
      if ((v23 & 0x2000000) != 0 && v85 > 0xFFFFFFFD)
      {
        v84 = 1;
      }

      else if ((v23 & 0x4000000) != 0 && v85 > 0xFFFFFFFD)
      {
        v84 = 2;
      }

      else if ((v23 & 0x8000000) != 0)
      {
        v84 = 3;
      }

      else
      {
        if ((v23 & 0x2000000) != 0)
        {
          v86 = 1;
        }

        else
        {
          v86 = 2;
        }

        if ((v23 & 0x10000000) != 0)
        {
          v84 = 4;
        }

        else
        {
          v84 = v86;
        }

        if ((v23 & 0x16000000) == 0)
        {
          if ((v23 & 0x40000000) != 0 && (OUTLINED_FUNCTION_4_3(), !v19 & v82))
          {
            v84 = 6;
          }

          else
          {
            OUTLINED_FUNCTION_4_3();
            if (!v19 & v82)
            {
              v112 = 1;
            }

            else
            {
              v112 = 0;
            }

            if ((*&v112 & (v23 >> 29)) != 0)
            {
              v84 = 5;
            }

            else
            {
              v84 = 0;
            }
          }
        }
      }

      if ((v23 & 0x1E000000) != 0)
      {
        v83 = 0;
      }

      else
      {
        v83 = a4;
      }
    }

    if (!v122)
    {
      if ((v23 & 0x1FF00) == 0x2000 || (((v23 & 0xA000) != 0) & IsFloat) != 0)
      {
        v87 = 32;
LABEL_259:
        v135 = v87;
        goto LABEL_260;
      }

      if (v81 < 9 || (v135 = 16, v23 != 0x4000) && (v23 & 0x11000) == 0)
      {
        v87 = 8;
        goto LABEL_259;
      }
    }

LABEL_260:
    v88 = EndianInfo;
    if ((v71 & 1) == 0)
    {
      if (v135 == 16 && (v23 & 0x4000) != 0)
      {
        v88 = 4096;
      }

      else
      {
        v89 = (v23 >> 15) & 1;
        if (v135 != 32)
        {
          v89 = 0;
        }

        if ((v89 & IsFloat) != 0)
        {
          v88 = 0x2000;
        }

        else
        {
          v88 = 0;
        }
      }
    }

    v90 = v88 | v84;
    if (v135 == 32)
    {
      v91 = v90 | 0x100;
    }

    else
    {
      v91 = v90;
    }

    v92 = v125 & v127;
    v93 = v131 ^ 1;
    if (Type != 7)
    {
      v93 = 1;
    }

    v94 = MEMORY[0x1E695F1C0];
    if ((v93 & 1) == 0 && v92)
    {
      v95 = CGImageGetColorSpace(image);
      v29 = CGColorSpaceRetain(v95);
LABEL_284:
      v98 = v83;
LABEL_285:
      if ((a5 & 2) == 0 && Model == kCGColorSpaceModelCMYK)
      {
        goto LABEL_294;
      }

      goto LABEL_293;
    }

    if (v92)
    {
      v96 = CGColorSpaceRetain(ColorSpace);
LABEL_283:
      v29 = v96;
      goto LABEL_284;
    }

    v97 = !v125;
    if (Model != kCGColorSpaceModelCMYK)
    {
      v97 = 1;
    }

    if ((v97 & 1) == 0)
    {
      v96 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F118]);
      goto LABEL_283;
    }

    if (Model)
    {
      v99 = 0;
    }

    else
    {
      v99 = v125;
    }

    v100 = MEMORY[0x1E695F128];
    v98 = v83;
    if (v99)
    {
LABEL_292:
      v29 = CGColorSpaceCreateWithName(*v100);
LABEL_293:
      if (a5 & 4 | Model)
      {
LABEL_295:
        v101 = _GetMinimalPixelSize(v29, v135, v84);
        v102 = (v101 * Width + 7) >> 3;
        v103 = gIIODebugFlags;
        if (v124 >= 7 && ((v117 | v118) & 1) == 0)
        {
          if ((gIIODebugFlags & 0x10000000000) != 0)
          {
            ImageIOLog("CGImageCreateCopyWithBitmapInfo\n");
            if ((gIIODebugFlags & 0x10000000000) != 0)
            {
              ImageIOLog("        newbits/Pixel: %zd\n", v101);
              if ((gIIODebugFlags & 0x10000000000) != 0)
              {
                ImageIOLog("         newbytes/Row: %zd\n", v102);
                if ((gIIODebugFlags & 0x10000000000) != 0)
                {
                  ImageIOLog("        newBitmapInfo: %d\n", v91);
                }
              }
            }
          }

          v104 = CGImageGetShouldInterpolate(image);
          v105 = CGImageGetRenderingIntent(image);
          CopyWithBitmapInfo = CGImageCreateCopyWithBitmapInfo(image, v98, v101, v102, v91, v104, v105);
          if (CopyWithBitmapInfo)
          {
            CopyWithParametersNew = CopyWithBitmapInfo;
            goto LABEL_315;
          }

          v103 = gIIODebugFlags;
          if ((gIIODebugFlags & 0x10000000000) != 0)
          {
            ImageIOLog("*** CGImageCreateCopyWithBitmapInfo failed\n");
            v103 = gIIODebugFlags;
          }
        }

        if ((v103 & 0x10000000000) != 0)
        {
          ImageIOLog("CGImageCreateCopyWithParametersNew\n");
          if ((gIIODebugFlags & 0x10000000000) != 0)
          {
            ImageIOLog("                 size: %zd x %zd\n", Width, Height);
            if ((gIIODebugFlags & 0x10000000000) != 0)
            {
              ImageIOLog("        newbits/Pixel: %zd\n", v101);
              if ((gIIODebugFlags & 0x10000000000) != 0)
              {
                ImageIOLog("         newbytes/Row: %zd\n", v102);
                if ((gIIODebugFlags & 0x10000000000) != 0)
                {
                  ImageIOLog("        newBitmapInfo: %d\n", v91);
                  if ((gIIODebugFlags & 0x10000000000) != 0)
                  {
                    ImageIOLog("        newcolorspace: ");
                  }
                }
              }
            }
          }

          CFShow(v29);
        }

        *v139 = v136;
        *&v139[16] = v137;
        *&v139[32] = v138;
        v107 = CGImageGetShouldInterpolate(image);
        v108 = CGImageGetRenderingIntent(image);
        CopyWithParametersNew = CGImageCreateCopyWithParametersNew(image, v98, v139, Width, Height, v135, v101, v102, v29, v91, v107, v108, kCGInterpolationDefault, 0);
        if (!CopyWithParametersNew)
        {
          if ((gIIODebugFlags & 0x10000000000) != 0)
          {
            ImageIOLog("*** CGImageCreateCopyWithParametersNew failed\n");
          }

          goto LABEL_319;
        }

        goto LABEL_315;
      }

LABEL_294:
      v29 = CGColorSpaceCreateWithName(*v94);
      goto LABEL_295;
    }

    if ((a5 & 1) != 0 && BitsPerComponent >= 8)
    {
      v111 = *MEMORY[0x1E695F1C0];
    }

    else
    {
      if ((a5 & 2) != 0 && BitsPerComponent > 7)
      {
        v100 = MEMORY[0x1E695F118];
        goto LABEL_292;
      }

      if ((a5 & 4) == 0)
      {
        v29 = 0;
        goto LABEL_285;
      }

      v111 = *MEMORY[0x1E695F128];
    }

    v29 = CGColorSpaceCreateWithName(v111);
    goto LABEL_285;
  }

  v29 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  CopyWithParametersNew = CGImageCreateCopyWithColorSpace(image, v29);
  if (CopyWithParametersNew)
  {
    goto LABEL_315;
  }

LABEL_319:
  if (v29)
  {
    CGColorSpaceRelease(v29);
  }

LABEL_321:
  if ((gIIODebugFlags & 0x20000000000) != 0)
  {
    v109 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("    IIOImageDestination::createCGImageConforming - %g ms\n", (v109 - Current) * 1000.0);
  }

  return CopyWithParametersNew;
}

uint64_t IIOImageDestination::finalizeUsingPixelProvider(IIOImageDestination *this)
{
  *(this + 224) = 0;
  IIOImageWriteSession::seek(*(this + 3), 0, 0);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = CGImageSourceCreateImageAtIndex(v3, 0, 0);
  }

  ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this, 0);
  if (!ImagePropertiesAtIndex)
  {
    v6 = OUTLINED_FUNCTION_1_6();
LABEL_5:
    ThumbNew = CGImageCreateThumbNew(v6, v7, 0, -1, v8);
    if (!ThumbNew)
    {
      ThumbNew = CGImageRetain(*v1);
    }

    v10 = ThumbNew;
    goto LABEL_8;
  }

  v14 = ImagePropertiesAtIndex;
  OptimizeForSharing = IIOImageDestination::GetOptimizeForSharing(ImagePropertiesAtIndex, 0, v5);
  BoolForKey = IIODictionary::getBoolForKey(v14, @"kCGImageSourceCreateThumbnailWithTransform");
  v1 = &gIIODebugFlags;
  OUTLINED_FUNCTION_2_9();
  if (!v17)
  {
    v18 = "off";
    if (OptimizeForSharing)
    {
      v18 = "on";
    }

    ImageIOLog("COL finalizing image [%p] with optimizeColorForSharing turned %s\n", *(this + 21), v18);
  }

  if (!BoolForKey)
  {
    v20 = 0;
    v21 = 1;
    if (OptimizeForSharing)
    {
      goto LABEL_23;
    }

LABEL_30:
    v6 = OUTLINED_FUNCTION_1_6();
    if (!v20)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

  v19 = IIOGetExifOrientation(v14, 0);
  v20 = v19 > 1;
  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  if ((gIIODebugFlags & 0x2000000000000) != 0)
  {
    v22 = "skip";
    if (v19 > 1)
    {
      v22 = "use";
    }

    ImageIOLog("%s %s:%d %s orientation: %d\n", "-o- ", "finalizeUsingPixelProvider", 3905, v22, v21);
  }

  if ((OptimizeForSharing & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v6 = OUTLINED_FUNCTION_1_6();
  v8 = 2;
  if (!v20)
  {
    goto LABEL_5;
  }

LABEL_31:
  v10 = CGImageCreateThumbNew(v6, v7, v21, -1, v8);
  if (v10)
  {
    IIODictionary::removeObjectForKey(v14, @"Orientation");
    ObjectForKey = IIODictionary::getObjectForKey(v14, @"{TIFF}");
    if (ObjectForKey)
    {
      CFDictionaryRemoveValue(ObjectForKey, @"Orientation");
    }
  }

LABEL_8:
  v11 = HEIFAuxImage::auxiliaryPixelFormat(*(this + 8));
  PixelDataProviderConforming = IIOImageDestination::createPixelDataProviderConforming(this, v10, 1, 0, 0, v11, 0);
  if (PixelDataProviderConforming)
  {
    v13 = PixelDataProviderConforming;
    IIOImageDestination::setPixelProviderAtIndex(this, PixelDataProviderConforming, 0);
    CFRelease(v13);
  }

  else
  {
    _cg_jpeg_mem_term("finalizeUsingPixelProvider", 3934, "*** createPixelDataProviderConforming failed (nil)\n");
  }

  CGImageRelease(v10);
  if (*v1)
  {
    CGImageRelease(*v1);
    *v1 = 0;
  }

  return 0;
}

const char *IIOImageDestination::setProperties()
{
  return LogError("setProperties", 2034, "*** ERROR: image destination was already finalized\n");
}

{
  return LogError("setProperties", 2035, "*** ERROR: image destination cannot be changed once an image was added\n");
}

{
  return LogError("setProperties", 2033, "*** ERROR: cannot set properties - invalid image destination\n");
}

void IIOImageDestination::copyImageSource(__CFError **a1)
{
  IIOLogAndCreateError(a1, *MEMORY[0x1E695E638], -50, "copyImageSource", 2009, "image destination UTType does not match image source UTType\n");
}

{
  IIOLogAndCreateError(a1, *MEMORY[0x1E695E638], -50, "copyImageSource", 2000, "CGImageDestinationCopyImageSource: source is corrupt\n");
}

const char *IIOImageDestination::addImage()
{
  return LogError("addImage", 2907, "*** ERROR: image destination was already finalized\n");
}

{
  return LogError("addImage", 2908, "*** ERROR: CGImageDestinationAddImage call is not allowed for this image destination (destination was updated with CGImageDestinationCopyImageSource)\n");
}

{
  return LogError("addImage", 2910, "*** ERROR: image parameter is not a CGImageRef\n");
}

{
  return LogError("addImage", 2909, "*** ERROR: image parameter is nil\n");
}

{
  return LogError("addImage", 2906, "*** ERROR: cannot add image - invalid image destination\n");
}

const char *IIOImageDestination::addImageFromSource()
{
  return LogError("addImageFromSource", 3526, "*** ERROR: image destination was already finalized\n");
}

{
  return LogError("addImageFromSource", 3527, "*** ERROR: CGImageDestinationAddImageFromSource call is not allowed for this image destination (destination was updated with CGImageDestinationCopyImageSource)\n");
}

{
  return LogError("addImageFromSource", 3525, "*** ERROR: image properties are NULL\n");
}

{
  return LogError("addImageFromSource", 3524, "*** ERROR: image destination format unknown\n");
}

{
  return LogError("addImageFromSource", 3523, "*** ERROR: cannot add image from source - invalid image destination\n");
}

const char *IIOImageDestination::addImageAndMetadata()
{
  return LogError("addImageAndMetadata", 3828, "*** ERROR: image destination was already finalized\n");
}

{
  return LogError("addImageAndMetadata", 3829, "*** ERROR: CGImageDestinationAddImageAndMetadata call is not allowed for this image destination (destination was updated with CGImageDestinationCopyImageSource)\n");
}

{
  return LogError("addImageAndMetadata", 3827, "*** ERROR: cannot add image and metadata - invalid image destination\n");
}

const char *IIOImageDestination::finalizeDestination()
{
  return LogError("finalizeDestination", 4036, "*** ERROR: image destination was already finalized\n");
}

{
  return LogError("finalizeDestination", 4037, "*** ERROR: CGImageDestinationFinalize call is not allowed for this image destination (destination was updated with CGImageDestinationCopyImageSource)\n");
}

{
  return LogError("finalizeDestination", 4039, "*** ERROR: CGImageDestinationFinalize was called, but there were no images added\n");
}

{
  return LogError("finalizeDestination", 4035, "*** ERROR: cannot finalize - invalid image destination\n");
}

uint64_t TIFFWritePlugin::writeICCData(uint64_t a1, uint64_t a2, CGColorSpace *a3, int a4)
{
  v5 = CGColorSpaceCopyData(a3, a4);
  if (!v5)
  {
    return 4294967246;
  }

  v6 = v5;
  BytePtr = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(v6);
  v15 = 4294967246;
  if (BytePtr && Length)
  {
    _cg_TIFFSetField(a2, 34675, v9, v10, v11, v12, v13, v14, Length);
    v15 = 0;
  }

  CFRelease(v6);
  return v15;
}

uint64_t TIFFWritePlugin::writeXMPData(int a1, uint64_t a2, IIODictionary *this)
{
  if (this)
  {
    ObjectForKey = IIODictionary::getObjectForKey(this, @"{MetaData}");
    if (ObjectForKey)
    {
      v6 = ObjectForKey;
      CFRetain(ObjectForKey);
    }

    else
    {
      v6 = CGImageMetadataCreateFromLegacyProps(this);
    }

    XMPWithEXIFFiltered = CGImageMetadataCreateXMPWithEXIFFiltered(v6);
    v8 = XMPWithEXIFFiltered;
    if (XMPWithEXIFFiltered)
    {
      BytePtr = CFDataGetBytePtr(XMPWithEXIFFiltered);
      Length = CFDataGetLength(v8);
      if (BytePtr)
      {
        if (Length)
        {
          _cg_TIFFSetField(a2, 700, v11, v12, v13, v14, v15, v16, Length);
        }
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return 0;
}

void TIFFWritePlugin::writeIPTCData(IIODictionary *a1, uint64_t a2)
{
  v4 = SizeOfIPTCData(a1);
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_calloc(v4, 1uLL, 0x672768C8uLL);
    if (v6)
    {
      WriteIPTCData(a1, v6);
      _cg_TIFFSetField(a2, 33723, v7, v8, v9, v10, v11, v12, v5);
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*a1 + 8))(a1);
  if (v6)
  {

    free(v6);
  }
}

void TIFFWritePlugin::writeOne(unsigned __int16 a1, int a2)
{
  *gCrashMessage = 0;
  snprintf(gCrashMessage, 0x200uLL, "TIFF issue: bpc: %d compress: %d\n", a2, a1);
  qword_1ED5688A0 = gCrashMessage;
  abort();
}

BOOL TIFFWritePlugin::writeAll(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a2 + 24) = *(a1 + 16);
  SetupTIFFErrorHandler();
  v5 = _cg_TIFFClientOpen("tiff data provider", "wb4", a2, myTIFFReadProc, myTIFFWriteProc, myTIFFSeekProc, myTIFFCloseProc, myTIFFSizeProc, myTIFFMapFileProc, myTIFFUnmapFileProc);
  *a3 = v5;
  return v5 == 0;
}

const char *IIO_ReaderHandler::typeFromURL()
{
  return LogError("typeFromURL", 580, "*** Error: url parameter is not a CFURLRef\n");
}

{
  return LogError("typeFromURL", 579, "*** Error: url parameter is nil\n");
}

void AppleJPEGWritePlugin::writeOne()
{
  _cg_jpeg_mem_term("writeOne", 467, "*** ERROR: iPixelDataProvider bytesPerRow = %d\n");
}

{
  _cg_jpeg_mem_term("writeOne", 382, "*** ERROR: applejpeg_encode_create returned NULL\n");
}

void AppleJPEGWritePlugin::WriteExifData()
{
  _cg_jpeg_mem_term("WriteExifData", 861, "*** WARNING: CreateExifBufferFromPropertiesJPEG returned NULL\n");
}

{
  _cg_jpeg_mem_term("WriteExifData", 837, "*** WARNING: cannot write Exif data\n");
}

void *lanczosDownsample84(const unsigned __int8 *a1, unsigned int a2, unsigned int a3)
{
  v3 = a3 * a2;
  if (v3 >> 62)
  {
    return 0;
  }

  v7 = a2 >> 3;
  v8 = a3 >> 2;
  v9 = a2;
  v10 = malloc_type_malloc(4 * v3, 0x100004077774924uLL);
  v11 = v10;
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (a2)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          for (i = 0; i != 4; ++i)
          {
            *(&v10->data + v15 + i) = a1[4 * (v13 + 2) % a3 * a2 + 4 * ((v14 + 4) % a2) + i];
          }

          ++v14;
          v15 += 4;
        }

        while (v14 != v9);
      }

      ++v13;
      v12 += 4 * a2;
    }

    while (v13 != a3);
  }

  v26 = v10;
  v17 = malloc_type_malloc((4 * v7 * v8), 0x100004077774924uLL);
  OUTLINED_FUNCTION_0_21(v17, v18, v19, v20, v21, v22, v23, v24, v17, v8, v7, (4 * v7), v26);
  free(v11);
  return v17;
}

void *lanczosDownsample4(const unsigned __int8 *a1, unsigned int a2, unsigned int a3)
{
  v3 = a3 * a2;
  if (v3 >> 62)
  {
    return 0;
  }

  v7 = a2 >> 2;
  v8 = a3 >> 2;
  v9 = a2;
  v10 = malloc_type_malloc(4 * v3, 0x100004077774924uLL);
  v11 = v10;
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (a2)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          for (i = 0; i != 4; ++i)
          {
            *(&v10->data + v15 + i) = a1[4 * (v13 + 2) % a3 * a2 + 4 * ((v14 + 2) % a2) + i];
          }

          ++v14;
          v15 += 4;
        }

        while (v14 != v9);
      }

      ++v13;
      v12 += 4 * a2;
    }

    while (v13 != a3);
  }

  v27 = v10;
  v17 = a2 & 0xFFFFFFFC;
  v18 = malloc_type_malloc((v17 * v8), 0x100004077774924uLL);
  OUTLINED_FUNCTION_0_21(v18, v19, v20, v21, v22, v23, v24, v25, v18, v8, v7, v17, v27);
  free(v11);
  return v18;
}

uint64_t GetMetadataPropertyMatchingSchemaAndPropertyName(const void *a1, const __CFString *a2, const __CFString *a3)
{
  IIOInitDebugFlags(a1, a2);
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    OUTLINED_FUNCTION_0_22(v6, "S", "GetMetadataPropertyMatchingSchemaAndPropertyName");
  }

  if (!a1)
  {
    return 0;
  }

  v7 = CFGetTypeID(a1);
  TypeID = CFArrayGetTypeID();
  v9 = 0;
  if (!a3 || !a2 || v7 != TypeID)
  {
    return v9;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v11 = Count;
  v12 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
    v9 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      break;
    }

    v14 = CFGetTypeID(ValueAtIndex);
    if (v14 != CGImageMetadataPropertyGetTypeID(v14, v15))
    {
      return 0;
    }

    Schema = CGImageMetadataPropertyGetSchema(v9);
    if (CFStringCompare(Schema, a2, 0) == kCFCompareEqualTo)
    {
      PropertyName = CGImageMetadataPropertyGetPropertyName(v9, v17);
      if (CFStringCompare(PropertyName, a3, 0) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (v11 == ++v12)
    {
      return 0;
    }
  }

  return v9;
}

uint64_t CGImageMetadataCreateSidecar(const void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = kdebug_trace();
  IIOInitDebugFlags(v4, v5);
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    OUTLINED_FUNCTION_0_22(v6, "S", "CGImageMetadataCreateSidecar");
  }

  v7 = 0;
  if (a1 && a2)
  {
    v8 = CFGetTypeID(a1);
    if (v8 == CFArrayGetTypeID())
    {
      v10 = CGImageMetadataSerialize(a1, v9);
      if (v10)
      {
        v11 = v10;
        bzero(__filename, 0x400uLL);
        if (_CFStringGetFileSystemRepresentation() && (v12 = fopen(__filename, "w")) != 0)
        {
          v13 = v12;
          BytePtr = CFDataGetBytePtr(v11);
          Length = CFDataGetLength(v11);
          v7 = 1;
          fwrite(BytePtr, Length, 1uLL, v13);
          fclose(v13);
        }

        else
        {
          v7 = 0;
        }

        CFRelease(v11);
        goto LABEL_14;
      }
    }

    else
    {
      LogError("CGImageMetadataCreateSidecar", 708, "*** ERROR: 'metadata' is not a CFArrayRef\n");
    }

    v7 = 0;
  }

LABEL_14:
  kdebug_trace();
  return v7;
}

const char *ATXWritePlugin::writeASTCData()
{
  return LogError("writeASTCData", 471, "*** failed to write 'LZFSE' header\n");
}

{
  return LogError("writeASTCData", 477, "*** failed to write 'LZFSE' data\n");
}

{
  return LogError("writeASTCData", 455, "*** failed to write 'astc' header\n");
}

{
  return LogError("writeASTCData", 461, "*** failed to write 'astc' data\n");
}

{
  return LogError("writeASTCData", 487, "*** failed to write 'ASTC' header\n");
}

{
  return LogError("writeASTCData", 493, "*** failed to write 'ASTC' data\n");
}

uint64_t ICNSReadPlugin::decode_ic04_ic05(IIOImageReadSession **this, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  if (a5 == 4)
  {
    return 0;
  }

  if (a5 - 4 >= IIOImageReadSession::getSize(this[3]))
  {
    return 0;
  }

  v10 = (*(this + 62) * *(this + 61));
  if (4 * v10 != a3)
  {
    return 0;
  }

  v11 = a4 + 4;
  v23 = 33619971;
  if (*(this + 436) == 1)
  {
    BYTE1(v23) = 2;
    HIBYTE(v23) = 0;
  }

  v12 = 0;
  v13 = &a4[a5];
  while (!v10)
  {
LABEL_23:
    if (++v12 == 4)
    {
      return 0;
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = &a2[*(&v23 + v12)];
  v18 = v10;
  while (v16)
  {
    if (v11 > v13)
    {
      return 4294967240;
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }

    v15 = 1;
LABEL_22:
    --v16;
    *v17 = v14;
    v17 += 4;
    if (!--v18)
    {
      goto LABEL_23;
    }
  }

  if (v11 >= v13)
  {
    return 4294967243;
  }

  v19 = v11 + 1;
  v20 = *v11;
  if (*v11 < 0)
  {
    if (v19 >= v13)
    {
      return 4294967243;
    }

    if (v11 + 2 > v13)
    {
      return 4294967240;
    }

    v16 = v20 - 125;
    v14 = v11[1];
    v15 = 1;
    v11 += 2;
    goto LABEL_22;
  }

  if (v19 >= v13)
  {
    return 4294967243;
  }

  v16 = v20 + 1;
  ++v11;
LABEL_17:
  if (v11 < v13)
  {
    v15 = 0;
    v21 = *v11++;
    v14 = v21;
    goto LABEL_22;
  }

  return 4294967239;
}

uint64_t ICNSReadPlugin::decodeImageData(ICNSReadPlugin *this, unsigned __int8 *a2, size_t a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = *(this + 59);
  v6 = *(this + 60);
  v7 = *(this + 244);
  v8 = *(this + 245);
  v92 = *(this + 247);
  v93 = *(this + 246);
  v90 = *(this + 125);
  v9 = *(this + 126);
  v10 = *(this + 127);
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  *v94 = 0u;
  v11 = IIOImageReadSession::globalInfoForType(*(this + 3), 1229147731);
  IIOImageReadSession::seek(*(this + 3), v5, 0);
  v12 = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
  if (!v12)
  {
    return 4294967246;
  }

  v13 = v12;
  if (IIOImageReadSession::getBytes(*(this + 3), v12, v6) != v6)
  {
    _cg_jpeg_mem_term("decodeImageData", 383, "*** failed to read imageData (requested %d bytes - got %d)\n");
    goto LABEL_74;
  }

  if (*(this + 124) >> 1 == 884054042)
  {
    v47 = ICNSReadPlugin::decode_ic04_ic05(this, a2, a3, v13, v6);
    goto LABEL_156;
  }

  v14 = v8 * v7;
  if (!GlobalICNSInfo::getICNSMaskInfoForType(v11, v9, v94))
  {
    GlobalICNSInfo::getICNSMaskInfoForType(v11, v10, v94);
    if (v95)
    {
      IIOImageReadSession::seek(*(this + 3), v94[1], 0);
      v17 = v95;
      if (v95 < ((v14 >> 2) & 0x3FFFFFFE))
      {
        if ((v96 >> 24) <= 0x7F)
        {
          OUTLINED_FUNCTION_0_23();
        }

        else
        {
          __maskrune(v96 >> 24, 0x40000uLL);
          OUTLINED_FUNCTION_4_4();
        }

        OUTLINED_FUNCTION_2_10();
        if (v70)
        {
          v39 = v37;
        }

        else
        {
          v39 = v36;
        }

        v40 = v38 << 8 >> 24;
        if (v40 <= 0x7F)
        {
          OUTLINED_FUNCTION_0_23();
        }

        else
        {
          __maskrune(v40, 0x40000uLL);
          OUTLINED_FUNCTION_4_4();
        }

        OUTLINED_FUNCTION_2_10();
        v44 = v43 >> 8;
        if (v44 <= 0x7F)
        {
          OUTLINED_FUNCTION_0_23();
        }

        else
        {
          __maskrune(v44, 0x40000uLL);
          OUTLINED_FUNCTION_4_4();
        }

        OUTLINED_FUNCTION_2_10();
        if (v46 <= 0x7F)
        {
          OUTLINED_FUNCTION_0_23();
        }

        else
        {
          __maskrune(v46, 0x40000uLL);
        }

        OUTLINED_FUNCTION_2_10();
        LogError("decodeImageData", 427, "bad ICNS data - invalid size for '%c%c%c%c' (got: %d  expected: %ld)\n", v39);
        goto LABEL_74;
      }

      v21 = OUTLINED_FUNCTION_6_2(v95);
      if (!v21)
      {
        goto LABEL_74;
      }

      v18 = v21;
      if (IIOImageReadSession::getBytes(*(this + 3), v21, v17) != v17)
      {
        _cg_jpeg_mem_term("decodeImageData", 434, "*** failed to read 1-bit maskData (requested %d bytes - got %d)\n");
        free(v13);
        v47 = 4294967246;
        v13 = v18;
        goto LABEL_156;
      }

LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

LABEL_13:
    v17 = 0;
    v18 = 0;
    goto LABEL_19;
  }

  if (!v95)
  {
    goto LABEL_13;
  }

  IIOImageReadSession::seek(*(this + 3), v94[1], 0);
  v16 = v95;
  if (v95 < WORD5(v95) * WORD4(v95))
  {
    if ((v96 >> 24) <= 0x7F)
    {
      OUTLINED_FUNCTION_1_7();
    }

    else
    {
      __maskrune(v96 >> 24, 0x40000uLL);
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_2_10();
    if (v70)
    {
      v34 = v32;
    }

    else
    {
      v34 = v31;
    }

    v35 = v33 << 8 >> 24;
    if (v35 <= 0x7F)
    {
      OUTLINED_FUNCTION_1_7();
    }

    else
    {
      __maskrune(v35, 0x40000uLL);
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_2_10();
    v42 = v41 >> 8;
    if (v42 <= 0x7F)
    {
      OUTLINED_FUNCTION_1_7();
    }

    else
    {
      __maskrune(v42, 0x40000uLL);
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_2_10();
    if (v45 <= 0x7F)
    {
      OUTLINED_FUNCTION_1_7();
    }

    else
    {
      __maskrune(v45, 0x40000uLL);
    }

    OUTLINED_FUNCTION_2_10();
    LogError("decodeImageData", 405, "bad ICNS data - invalid size for '%c%c%c%c' (got: %ld  expected: %ld)\n", v34);
    goto LABEL_74;
  }

  v19 = OUTLINED_FUNCTION_6_2(v95);
  if (!v19)
  {
LABEL_74:
    v47 = 4294967246;
LABEL_156:
    free(v13);
    return v47;
  }

  v20 = v19;
  if (IIOImageReadSession::getBytes(*(this + 3), v19, v16) != v16)
  {
    _cg_jpeg_mem_term("decodeImageData", 412, "*** failed to read deep maskData (requested %d bytes - got %d)\n");
    v18 = 0;
    v47 = 4294967246;
    goto LABEL_154;
  }

  v17 = 0;
  v18 = 0;
LABEL_20:
  if (v93 != 1)
  {
    if (v92 != 4)
    {
      if (v92 != 2)
      {
        goto LABEL_162;
      }

      if (v93 == 4)
      {
        if (v6 < v14 >> 1)
        {
          LogError("decodeImageData", 486, "corrupted 4-bit icns data");
          goto LABEL_162;
        }

        if (v14 >= 2)
        {
          v27 = v14 >> 1;
          if (v14 >> 1 <= 1)
          {
            v27 = 1;
          }

          v28 = v13;
          v29 = a2;
          do
          {
            v30 = *v28++;
            *v29 = v30 & 0xF0 | (v30 >> 4);
            v29[2] = v30 & 0xF | (16 * v30);
            v29 += 4;
            --v27;
          }

          while (v27);
        }
      }

      else
      {
        if (v6 < v14)
        {
          LogError("decodeImageData", 505, "corrupted icns data, insufficient data for %zu pixels");
          goto LABEL_162;
        }

        if (!v14)
        {
          if (!v18)
          {
            goto LABEL_153;
          }

          goto LABEL_81;
        }

        v48 = v14;
        v49 = v13;
        v50 = a2;
        do
        {
          v51 = *v49++;
          *v50 = v51;
          v50 += 2;
          --v48;
        }

        while (v48);
      }

      if (v18)
      {
LABEL_81:
        if (v14 <= 8 * v17)
        {
          v61 = 8 * (v17 - (v14 >> 3));
          if (v14 <= v61)
          {
            v61 = v14;
          }

          else
          {
            _cg_jpeg_mem_term("decodeImageData", 521, "*** Adjusting pixelCount: %d to %d\n");
          }

          if (v61)
          {
            do
            {
              OUTLINED_FUNCTION_3_8();
              *v66 = v67;
            }

            while (v61 != v68 + 1);
          }
        }

        else
        {
          _cg_jpeg_mem_term("decodeImageData", 531, "[2] maskLen1Bit = %ld   pixelCount = %ld");
        }

        goto LABEL_153;
      }

      if (v14)
      {
        v62 = a2 + 1;
        v63 = v20;
        do
        {
          if (v20)
          {
            v65 = *v63++;
            v64 = v65;
          }

          else
          {
            v64 = -1;
          }

          *v62 = v64;
          v62 += 2;
          --v14;
        }

        while (v14);
      }

LABEL_153:
      v47 = 0;
      if (!v20)
      {
        goto LABEL_155;
      }

      goto LABEL_154;
    }

    if (v18)
    {
      if (v14 <= 8 * v17)
      {
        if (!v14)
        {
          if (!v6)
          {
            goto LABEL_153;
          }

LABEL_111:
          v69 = *(this + 124);
          v70 = v69 == 1769222962 || v69 == 1768125282;
          v71 = v13;
          if (v70)
          {
            v71 = v13 + 4;
          }

          v72 = xmmword_186224A90;
          v98 = xmmword_186224A90;
          v73 = 3;
          if (v69 == 1768125282)
          {
            v73 = 4;
          }

          if (*(this + 437) || v69 == 1768125282)
          {
            v72.i32[0] = 1768125282;
            v15.i32[0] = v69;
            v98 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v15, v72), 0), xmmword_186224A80, xmmword_186205980);
          }

          v74 = 0;
          v75 = &v13[v6];
          do
          {
            if (v14)
            {
              v76 = v71 + 1;
              if ((v71 + 1) < v75)
              {
                v77 = 0;
                v78 = &a2[v98.i32[v74]];
                do
                {
                  v79 = *v71;
                  if (v79 < 0)
                  {
                    v84 = (v71 + 2);
                    if (v77 < v14 && v84 <= v75)
                    {
                      v86 = *v76;
                      v87 = v79 - 125;
                      do
                      {
                        *v78 = v86;
                        v78 += 4;
                        --v87;
                        ++v77;
                      }

                      while (v87 && v77 < v14);
                    }

                    v76 = v84;
                  }

                  else if (v77 < v14 && v76 < v75)
                  {
                    v81 = v79 + 1;
                    do
                    {
                      v82 = *v76++;
                      *v78 = v82;
                      v78 += 4;
                      --v81;
                      ++v77;
                      if (!v81)
                      {
                        break;
                      }
                    }

                    while (v77 < v14 && v76 < v75);
                  }

                  v71 = v76++;
                }

                while (v77 < v14 && v76 < v75);
              }
            }

            ++v74;
          }

          while (v74 != v73);
          goto LABEL_153;
        }

        do
        {
          OUTLINED_FUNCTION_3_8();
          *v56 = v57;
        }

        while (v14 != v58 + 1);
      }

      else
      {
        _cg_jpeg_mem_term("decodeImageData", 563, "[4] maskLen1Bit = %ld   pixelCount = %ld");
      }
    }

    else if (v20 && v14)
    {
      v52 = a2 + 3;
      v53 = v14;
      v54 = v20;
      do
      {
        v55 = *v54++;
        *v52 = v55;
        v52 += 4;
        --v53;
      }

      while (v53);
    }

    if (v6 == 4 * v14)
    {
      if (v14)
      {
        v59 = v13 + 3;
        do
        {
          *a2 = *(v59 - 2);
          a2[1] = *(v59 - 1);
          v60 = *v59;
          v59 += 4;
          a2[2] = v60;
          a2 += 4;
          --v14;
        }

        while (v14);
      }

      goto LABEL_153;
    }

    goto LABEL_111;
  }

  bzero(a2, a3);
  if ((v14 >> 3) > v6)
  {
    LogError("decodeImageData", 457, "corrupted 1-bit icns data");
  }

  else
  {
    if (v6 == v90)
    {
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v23 = v13[(v14 >> 3) + (i >> 3)];
          v24 = 1 << (~i & 7);
          if ((v24 & v13[i >> 3]) != 0)
          {
            v25 = 0;
          }

          else
          {
            v25 = -1;
          }

          *a2 = v25;
          if ((v24 & v23) != 0)
          {
            v26 = -1;
          }

          else
          {
            v26 = 0;
          }

          a2[1] = v26;
          a2 += 2;
        }
      }

      goto LABEL_153;
    }

    LogError("decodeImageData", 458, "corrupted 1-bit icns data");
  }

LABEL_162:
  v47 = 4294967246;
  if (v20)
  {
LABEL_154:
    free(v20);
  }

LABEL_155:
  free(v13);
  v13 = v18;
  if (v18)
  {
    goto LABEL_156;
  }

  return v47;
}

uint64_t ICNSReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v45 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(this + 55) >> 24;
  v9 = MEMORY[0x1E69E9830];
  if (v8 <= 0x7F)
  {
    v10 = OUTLINED_FUNCTION_0(v8);
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v11 = *(this + 55);
  }

  if (v10)
  {
    v12 = (v11 >> 24);
  }

  else
  {
    v12 = 46;
  }

  v13 = v11 << 8 >> 24;
  if (v13 <= 0x7F)
  {
    v14 = OUTLINED_FUNCTION_0(v13);
  }

  else
  {
    v14 = __maskrune(v13, 0x40000uLL);
    v15 = *(this + 55);
  }

  if (v14)
  {
    v16 = (v15 << 8 >> 24);
  }

  else
  {
    v16 = 46;
  }

  v17 = v15 >> 8;
  if (v17 <= 0x7F)
  {
    v18 = OUTLINED_FUNCTION_0(v17);
  }

  else
  {
    v18 = __maskrune(v17, 0x40000uLL);
    v19 = *(this + 55);
  }

  if (v18)
  {
    v20 = (v19 >> 8);
  }

  else
  {
    v20 = 46;
  }

  if (v19 <= 0x7F)
  {
    if ((*(v9 + 4 * v19 + 60) & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v21 = 46;
    goto LABEL_25;
  }

  if (!__maskrune(v19, 0x40000uLL))
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(this + 220);
LABEL_25:
  ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v16, v20, v21, iioTypeStr[a3], "virtual OSStatus ICNSReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v22 = *(this + 3);
  if (v22)
  {
    v23 = IIOImageReadSession::mapData(v22);
  }

  else
  {
    v23 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v31) = *(this + 77);
    v30 = v31;
    v32 = *(this + 78);
    v27 = v32;
    v26 = *(this + 79) * v32;
    BaseAddress = _ImageIO_Malloc(v26, *(this + 52), &v45, kImageMalloc_ICNS_Data[0], 0, 0);
    v28 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 1;
      goto LABEL_53;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    v26 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v45 = v26;
    v27 = 0.0;
    v28 = 1;
    BlockArray = 1;
    v30 = 0.0;
  }

  if (!BaseAddress)
  {
LABEL_44:
    if (!v28)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  bzero(BaseAddress, v26);
  v33 = (*(*this + 120))(this, BaseAddress, v26);
  if (v33)
  {
    BlockArray = v33;
    goto LABEL_44;
  }

  if (*(this + 438) == 1)
  {
    v34 = *(this + 78);
    dest.data = BaseAddress;
    dest.height = v34;
    v35 = *(this + 79);
    dest.width = *(this + 77);
    dest.rowBytes = v35;
    vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
  }

  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_44;
  }

  v36 = 0;
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = v30;
  v46.size.height = v27;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v26, v46, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v37 = 0;
  }

  else
  {
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    v47.size.width = v30;
    v47.size.height = v27;
    *(&v37 - 1) = CGRectUnion(*(this + 120), v47);
    v36 = v38;
    v30 = v39;
    v27 = v40;
  }

  BlockArray = 0;
  *(this + 15) = v36;
  *(this + 16) = v37;
  *(this + 17) = v30;
  *(this + 18) = v27;
  if ((v28 & 1) == 0)
  {
    goto LABEL_53;
  }

  BaseAddress = 0;
LABEL_49:
  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_50:
  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v45);
  }

LABEL_53:
  if (v23)
  {
    v41 = *(this + 3);
    if (v41)
    {
      IIOImageReadSession::unmapData(v41);
    }
  }

  return BlockArray;
}

uint64_t ICNSReadPlugin::initialize(IIONumber *a1)
{
  IIONumber::~IIONumber(a1);
  OUTLINED_FUNCTION_7();
  return kdebug_trace();
}

{
  IIONumber::~IIONumber(a1);
  OUTLINED_FUNCTION_7();
  return kdebug_trace();
}

uint64_t _JPEGWriter::writePropertiesAndData(_JPEGWriter *this, __CFWriteStream *a2)
{
  *(this + 64) = 0;
  if (*(this + 10))
  {
    v3 = *(this + 2);
    if (v3)
    {
      BytePtr = CFDataGetBytePtr(v3);
      if (CFDataGetLength(*(this + 2)) >= 2 && *BytePtr == 255 && BytePtr[1] == 216)
      {
        CFWriteStreamWrite(a2, BytePtr, 2);
        _JPEGFile::writeToStream(*(this + 10), a2);
      }
    }
  }

  return 1;
}

uint64_t ExifScanner::growBufferSize(ExifScanner *this, uint64_t a2)
{
  v2 = *(this + 5);
  if (a2 - v2 < 1)
  {
    return 1;
  }

  v4 = *(this + 6);
  v5 = v4 >= a2;
  if (v4 < a2)
  {
    v6 = v4 - v2;
  }

  else
  {
    v6 = a2 - v2;
  }

  if (v4 > v2)
  {
    v7 = v4 >= a2 ? a2 : *(this + 6);
    *(this + 5) = v7;
    _cg_jpeg_mem_term("growBufferSize", 2907, "growBufferSize %p - from %6ld to %6ld (max = %ld)\n");
    v8 = reallocf(*(this + 4), *(this + 5));
    *(this + 4) = v8;
    if (v8)
    {
      if (read(*(this + 2), &v8[v2], v6) != v6)
      {
        _cg_jpeg_mem_term("growBufferSize", 2915, "growBufferSize - failed to read %zu bytes\n");
        return 0;
      }

      return 1;
    }
  }

  return v5;
}

void ExifScanner::addMetaData(ExifScanner *this, __CFDictionary *a2)
{
  *(this + 2) = a2;
  if (!a2 || ExifScanner::read16(this) != 65496)
  {
    return;
  }

  while (1)
  {
    v3 = ExifScanner::read16(this);
    v4 = ExifScanner::read16(this);
    if (v3 != 65505)
    {
      if (v3 == 65475 || v3 == 65499)
      {
        return;
      }

      goto LABEL_11;
    }

    if (!strncmp((*(this + 4) + *(this + 7)), "Exif", 4uLL))
    {
      break;
    }

LABEL_11:
    if (v4 <= 2)
    {
      v8 = *(this + 4);
      v9 = *(this + 7);
      while (*(v8 + v9) != 255)
      {
        if (v9 >= *(this + 5) - 4)
        {
          OUTLINED_FUNCTION_0_24();
          v12 = (*(v10 + 32))(this, v11 + 0x4000);
          v9 = *(this + 7);
          if (!v12)
          {
            break;
          }

          v8 = *(this + 4);
        }

        else
        {
          *(this + 7) = ++v9;
        }
      }
    }

    else
    {
      *(this + 7) = *(this + 7) + v4 - 2;
    }

    OUTLINED_FUNCTION_0_24();
    if (!(*(v6 + 32))(this, v7 + 10) || *(this + 7) > *(this + 5) - 4)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_0_24();
  if ((*(v13 + 32))(this))
  {
    ExifScanner::addExifMetaData(this, 0, *(this + 7) - 2);
    if (*(this + 9))
    {

      ExifScanner::addThumbnailSizes(this);
    }
  }
}

uint64_t ExifScannerDP::growBufferSize(ExifScannerDP *this, uint64_t a2)
{
  v2 = *(this + 5);
  v3 = a2 - v2;
  if (a2 - v2 < 1)
  {
    return 1;
  }

  v5 = *(this + 6);
  v6 = v5 >= a2;
  if (v2 < v5)
  {
    if (v5 >= a2)
    {
      v5 = a2;
    }

    *(this + 5) = v5;
    _cg_jpeg_mem_term("growBufferSize", 3482, "growBufferSize - from %6ld to %6ld\n");
    v7 = reallocf(*(this + 4), *(this + 5));
    *(this + 4) = v7;
    if (v7)
    {
      if ((*(this + 12))(*(this + 16), &v7[v2], v3) != v3)
      {
        _cg_jpeg_mem_term("growBufferSize", 3492, "growBufferSize - failed to read %zu bytes\n");
        return 0;
      }

      return 1;
    }
  }

  return v6;
}

__CFDictionary *CopyMetadataFromFileAtPath(const void *a1, off_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_8();
  v4 = kdebug_trace();
  IIOInitDebugFlags(v4, v5);
  if (gIIODebugFlags >> 14)
  {
    OUTLINED_FUNCTION_1_8();
    ImageIODebugOptions(v6, v7, v8, v9, v10, -1, 0);
  }

  if (a1 && (v11 = CFGetTypeID(a1), v11 == CFStringGetTypeID()) && (bzero(v14, 0x400uLL), _CFStringGetFileSystemRepresentation()))
  {
    v12 = _copyMetadataFromFileAtPath(v14, a2);
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_1_8();
  kdebug_trace();
  return v12;
}

char *_JPEGFile::processData(_APPx *a1, _JPEGFile *a2, unsigned int a3, void *a4)
{
  (*(*a1 + 16))(a1);
  result = _JPEGFile::insertAppMarker(a2, a1);
  *a4 = a3;
  return result;
}

void _JPEGWriter::writeToPath(__CFWriteStream *a1, _JPEGWriter *a2)
{
  v4 = CFWriteStreamCopyProperty(a1, @"_kCFStreamPropertyFileNativeHandle");
  if (v4)
  {
    v5 = v4;
    *buffer = 0;
    v7.location = 0;
    v7.length = 4;
    CFDataGetBytes(v4, v7, buffer);
    fcntl(*buffer, 48, 1);
    fcntl(*buffer, 62, 1);
    CFRelease(v5);
  }

  _JPEGWriter::writePropertiesAndData(a2, a1);
  CFWriteStreamClose(a1);
}

uint64_t _copyMetadataFromFileAtPath(ExifScanner *a1, uint64_t a2, __CFDictionary **a3)
{
  if (*(a1 + 80))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    ExifScanner::addMetaData(a1, Mutable);
  }

  else
  {
    Mutable = 0;
  }

  *a3 = Mutable;
  return (*(*a1 + 8))(a1, a2);
}

uint64_t CopyMetadataFromCFData_cold_1(ExifScanner *a1, __CFDictionary **a2)
{
  if (*(a1 + 80))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    ExifScanner::addMetaData(a1, Mutable);
  }

  else
  {
    Mutable = 0;
  }

  *a2 = Mutable;
  OUTLINED_FUNCTION_0_24();
  v6 = *(v5 + 8);

  return v6(a1);
}

uint64_t CGImageMetadataPropertyCreate(const __CFString *a1, const void *a2, const void *a3)
{
  IIOInitDebugFlags(a1, a2);
  OUTLINED_FUNCTION_1_9();
  if (v7)
  {
    OUTLINED_FUNCTION_0_22(v6, "S", "CGImageMetadataPropertyCreate");
  }

  Instance = 0;
  if (a1 && a3)
  {
    if (qword_1ED569DE0 != -1)
    {
      dispatch_once(&qword_1ED569DE0, &__block_literal_global_29);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      *(Instance + 16) = CFRetain(a1);
      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = CGImageMetadataDefaultPrefixForSchema(a1);
      }

      *(Instance + 24) = v9;
      *(Instance + 32) = CFRetain(a3);
      *(Instance + 40) = 0;
      *(Instance + 48) = 0;
    }
  }

  return Instance;
}

uint64_t CGImageMetadataPropertyGetSchema(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGImageMetadataPropertyGetSuggestedPrefix(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t CGImageMetadataPropertyGetPropertyName(uint64_t a1, uint64_t a2)
{
  IIOInitDebugFlags(a1, a2);
  OUTLINED_FUNCTION_1_9();
  if (v4)
  {
    OUTLINED_FUNCTION_0_22(v3, "S", "CGImageMetadataPropertyGetPropertyName");
  }

  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

void CGImageMetadataPropertySetValue(uint64_t a1, const void *a2)
{
  IIOInitDebugFlags(a1, a2);
  OUTLINED_FUNCTION_1_9();
  if (v5)
  {
    OUTLINED_FUNCTION_0_22(v4, "S", "CGImageMetadataPropertySetValue");
  }

  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6 != a2)
    {
      if (v6)
      {
        CFRelease(v6);
      }

      *(a1 + 40) = a2;
      if (a2)
      {

        CFRetain(a2);
      }
    }
  }
}

uint64_t CGImageMetadataPropertyGetValue(uint64_t a1, uint64_t a2)
{
  IIOInitDebugFlags(a1, a2);
  OUTLINED_FUNCTION_1_9();
  if (v4)
  {
    OUTLINED_FUNCTION_0_22(v3, "S", "CGImageMetadataPropertyGetValue");
  }

  if (a1)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t BMPWritePlugin::writePrefix(BMPWritePlugin *this, CGImageRef image, IIODictionary *a3, int a4)
{
  v52 = *MEMORY[0x1E69E9840];
  BytesPerRow = CGImageGetBytesPerRow(image);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  BitsPerPixel = CGImageGetBitsPerPixel(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  ColorSpace = CGImageGetColorSpace(image);
  Type = CGColorSpaceGetType();
  Model = CGColorSpaceGetModel(ColorSpace);
  bzero(v51, 0x400uLL);
  v49 = 0;
  __ptr = 19778;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = 0u;
  v14 = 32;
  if (BitsPerComponent == 8)
  {
    v15 = BitsPerPixel;
  }

  else
  {
    v15 = 32;
  }

  if (!a4)
  {
    v14 = 24;
  }

  if (v15 == 32)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16 == 24)
  {
    v17 = 0;
    v18 = 0;
LABEL_20:
    v19 = 40;
    goto LABEL_21;
  }

  if (v16 != 32)
  {
    v17 = 0;
    v18 = 0;
    if (Model != kCGColorSpaceModelIndexed)
    {
      v16 = v14;
    }

    goto LABEL_20;
  }

  if (*(this + 48))
  {
    v17 = 0;
  }

  else
  {
    v17 = 3;
  }

  v18 = *(this + 48) ^ 1;
  if (*(this + 48))
  {
    v19 = 40;
  }

  else
  {
    v19 = 124;
  }

LABEL_21:
  result = 0;
  if (BytesPerRow && ColorSpace)
  {
    if (Type == 7)
    {
      v33 = v18;
      BaseColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
      CGColorSpaceGetType();
      CGColorSpaceGetModel(BaseColorSpace);
      v24 = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
      if (CGColorSpaceGetNumberOfComponents(v24) != 3)
      {
        return 0;
      }

      ColorTableCount = CGColorSpaceGetColorTableCount(BaseColorSpace);
      if (ColorTableCount > 0x100)
      {
        return 0;
      }

      v21 = ColorTableCount;
      result = malloc_type_malloc(3 * ColorTableCount, 0x100004077774924uLL);
      if (!result)
      {
        return result;
      }

      v26 = result;
      v22 = 4 * v21;
      CGColorSpaceGetColorTable(BaseColorSpace, result);
      if (v21)
      {
        v27 = 0;
        v28 = 2;
        v29 = 1;
        do
        {
          v51[v29 + 1] = v26[v28 - 2];
          v51[v29] = v26[v28 - 1];
          v51[v29 - 1] = v26[v28];
          ++v27;
          v28 += 3;
          v29 += 4;
        }

        while (v27 < v21);
      }

      free(v26);
      v18 = v33;
    }

    else
    {
      LODWORD(v21) = 0;
      v22 = 0;
    }

    v30 = ((v16 * Width + 31) >> 3) & 0x1FFFFFFFFFFFFFFCLL;
    *(this + 5) = v30;
    *(&__ptr + 2) = v19 + v22 + 14 + v30 * Height;
    v50 = v19 + v22 + 14;
    if (IIOImageWriteSession::putBytes(*(this + 2), &__ptr, 0xEuLL) == 14)
    {
      v37[0] = v19;
      v37[1] = Width;
      v37[2] = -Height;
      v38 = 1;
      v39 = v16;
      v40 = v17;
      v41 = Height * Width * (v16 >> 3);
      v42 = 0;
      v43 = v21;
      v44 = v21;
      v31 = IIODictionary::containsKey(a3, @"DPIWidth");
      v32 = IIODictionary::containsKey(a3, @"DPIHeight");
      if (v31 && v32)
      {
        FloatForKey = IIODictionary::getFloatForKey(a3, @"DPIWidth");
        v42 = vcvt_u32_f32(vadd_f32(vdiv_f32(__PAIR64__(COERCE_UNSIGNED_INT(IIODictionary::getFloatForKey(a3, @"DPIHeight")), LODWORD(FloatForKey)), vdup_n_s32(0x3CD013A9u)), 0x3F0000003F000000));
      }

      if (v18)
      {
        v45 = xmmword_186224F20;
        LODWORD(v46[0]) = 1934772034;
        memset(v46 + 4, 0, 48);
      }

      if (IIOImageWriteSession::putBytes(*(this + 2), v37, v19) == v19 && (Type != 7 || !v21 || IIOImageWriteSession::putBytes(*(this + 2), v51, v22) == v22))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

const UInt8 *IIOImageRead::CreateDataFromXPCDict(IIOImageRead *this, void *a2)
{
  if (MEMORY[0x186604600](this, a2) != MEMORY[0x1E69E9E80])
  {
    return 0;
  }

  source_dict = iio_xpc_get_source_dict(this);
  v4 = source_dict;
  if (source_dict && (value = xpc_dictionary_get_value(source_dict, "iio_xpc_src_shmem"), uint64 = xpc_dictionary_get_uint64(v4, "iio_xpc_src_shmem_size"), value) && (v7 = uint64) != 0)
  {
    region = 0;
    v8 = xpc_shmem_map(value, &region);
    result = 0;
    if (v8 >= v7)
    {
      result = CFDataCreate(*MEMORY[0x1E695E480], region, v7);
    }
  }

  else
  {
    region = 0;
    result = xpc_dictionary_get_data(v4, "iio_xpc_src_data", &region);
    if (result)
    {
      result = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], result, region, *MEMORY[0x1E695E498]);
    }
  }

  if (!result)
  {
    LogError("CreateDataFromXPCDict", 2086, "*** ERROR: Failed to create CFData from xpc_object_t: %p\n", this);
    return 0;
  }

  return result;
}

BOOL IIOImageRead::addDataToXPCDict(IIOImageRead *this, void *a2, void **a3)
{
  cf = 0;
  if (MEMORY[0x186604600](a2) != MEMORY[0x1E69E9E80])
  {
    v11 = 0;
    goto LABEL_17;
  }

  v6 = iio_xpc_add_source_dict(a2);
  v7 = IIOImageRead::retainBytePointer(this, &cf, 1);
  Size = IIOImageRead::getSize(this);
  v9 = Size;
  if (v7 && !Size)
  {
    v9 = *(this + 10);
  }

  pthread_mutex_lock((this + 376));
  if (*(this + 67) != 1)
  {
    pthread_mutex_unlock((this + 376));
    v14 = cf;
    destructor[0] = MEMORY[0x1E69E9820];
    destructor[1] = 0x40000000;
    destructor[2] = ___ZN12IIOImageRead16addDataToXPCDictEPvPS0__block_invoke;
    destructor[3] = &__block_descriptor_tmp_67;
    destructor[4] = this;
    destructor[5] = cf;
    v13 = dispatch_data_create(v7, v9, 0, destructor);
    if (v13)
    {
      v15 = v13;
      v16 = xpc_data_create_with_dispatch_data(v13);
      v11 = v16 != 0;
      if (v16)
      {
        v17 = v16;
        xpc_dictionary_set_value(v6, "iio_xpc_src_data", v16);
        xpc_release(v17);
      }

      dispatch_release(v15);
      goto LABEL_17;
    }

    v11 = 0;
    goto LABEL_15;
  }

  v10 = xpc_shmem_create(v7, v9);
  v11 = v10 != 0;
  if (v10)
  {
    v12 = v10;
    xpc_dictionary_set_value(v6, "iio_xpc_src_shmem", v10);
    xpc_dictionary_set_uint64(v6, "iio_xpc_src_shmem_size", v9);
    xpc_release(v12);
  }

  v13 = pthread_mutex_unlock((this + 376));
  v14 = cf;
  if (!v11)
  {
LABEL_15:
    if (!v14)
    {
      goto LABEL_18;
    }

    IIOImageRead::releaseBytePointer(v13, v14);
LABEL_17:
    v14 = 0;
  }

LABEL_18:
  *a3 = v14;
  return v11;
}

const char *IIOImageRead::getBytesAtOffset(IIOImageRead *a1, int *a2, const char **a3)
{
  v5 = 0;
  result = IIOImageRead::createDataWithMappedFile(a1, &v5, a2);
  *a3 = result;
  if ((gIIODebugFlags & 0x80000000000) != 0)
  {
    return ImageIOLog("D   %s:%d createDataWithMappedFile %p\n", "getBytesAtOffset", 1613, result);
  }

  return result;
}

uint64_t GIFWritePlugin::writeAll(GIFWritePlugin *this)
{
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  OUTLINED_FUNCTION_0_25();
  if (!v9)
  {
    ImageIOLog("    GIFWritePlugin::writeAll - [%p]\n", this);
  }

  v27 = 0;
  ImageCount = IIOWritePlugin::getImageCount(this);
  if (!ImageCount)
  {
    v4 = 0;
    goto LABEL_54;
  }

  v3 = ImageCount;
  v4 = _cg_EGifOpen(*(this + 2), GIFWritePlugin::gifWriteFunc, &v27);
  if (!v4)
  {
LABEL_54:
    v21 = 4294967246;
    goto LABEL_43;
  }

  v5 = v3;
  v6 = v3 != 1;
  if (v3 == 1)
  {
    v10 = 0;
    goto LABEL_16;
  }

  PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, 0);
  v8 = IIOWritePlugin::getPixelDataProviderAtIndex(this, v5 - 1);
  if (PixelDataProviderAtIndex)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  v10 = !v9;
  if (v9)
  {
LABEL_16:
    for (i = 0; i != v5; ++i)
    {
      v13 = IIOWritePlugin::getPixelDataProviderAtIndex(this, i);
      if (!v13)
      {
        _cg_jpeg_mem_term("writeAll", 1516, "*** Failed to get pixelDataProvider for index %d\n");
        goto LABEL_54;
      }

      v14 = v13;
      v15 = *(this + 11);
      if (v15 <= IIO_Reader::testHeaderSize(v13))
      {
        v16 = IIO_Reader::testHeaderSize(v14);
      }

      else
      {
        v16 = *(this + 11);
      }

      *(this + 11) = v16;
      v17 = *(this + 10);
      if (v17 <= IIOImageSource::count(v14))
      {
        v18 = IIOImageSource::count(v14);
      }

      else
      {
        v18 = *(this + 10);
      }

      *(this + 10) = v18;
    }

    if (v18 && *(this + 11))
    {
      v11 = 0;
      goto LABEL_28;
    }

    goto LABEL_54;
  }

  v10 = 1;
  v6 = 1;
  v11 = 1;
  if (*(this + 10))
  {
LABEL_28:
    if (*(this + 11))
    {
      goto LABEL_30;
    }
  }

  v19 = IIOWritePlugin::getPixelDataProviderAtIndex(this, v5 - 1);
  *(this + 11) = IIO_Reader::testHeaderSize(v19);
  *(this + 10) = IIOImageSource::count(v19);
LABEL_30:
  OUTLINED_FUNCTION_0_25();
  if (!v9)
  {
    ImageIOLog("_CGImagePluginWriteGIF - imageCount: %ld\n", v5);
    OUTLINED_FUNCTION_0_25();
    if (!v9)
    {
      ImageIOLog("                           max size: %ld * %ld\n", *(this + 10), *(this + 11));
    }
  }

  *(this + 5) = v4;
  *(this + 6) = v5;
  *(this + 13) = &v29;
  *(this + 14) = v28;
  *(this + 98) = v10;
  if ((v6 & (v10 ^ 1)) == 1)
  {
    v20 = GIFWritePlugin::writeAllFramesWithGlobalColorMap(this);
    if (v20)
    {
LABEL_35:
      v21 = v20;
      goto LABEL_43;
    }
  }

  else
  {
    if (v11)
    {
      Size = IIOImageWriteSession::getSize(*(this + 2));
      IIOImageWriteSession::seek(*(this + 2), Size - 1, 0);
      v5 = *(this + 6);
      v23 = v5 - 1;
    }

    else
    {
      v23 = 0;
    }

    if (v23 < v5)
    {
      do
      {
        *(this + 7) = v23;
        v20 = GIFWritePlugin::writeSingleFrame(this);
        if (v20)
        {
          goto LABEL_35;
        }
      }

      while (++v23 < *(this + 6));
    }
  }

  v21 = 0;
LABEL_43:
  OUTLINED_FUNCTION_0_25();
  if (!v9)
  {
    v24 = "no";
    if (!v21)
    {
      v24 = "yes";
    }

    ImageIOLog("     _CGImagePluginWriteGIF-success: %s\n", v24);
    OUTLINED_FUNCTION_0_25();
    if (!v9)
    {
      Error = _cg_GifLastError(*(this + 5));
      ImageIOLog("                       GifLastError: %d\n\n\n", Error);
    }
  }

  if (v29)
  {
    free(v29);
  }

  if (v4)
  {
    _cg_EGifCloseFile(v4, 0);
  }

  *(this + 14) = 0;
  return v21;
}

void HEIFReadPlugin::initialize()
{
  _cg_jpeg_mem_term("initialize", 572, "*** ERROR: could not get mainImage[%d]\n");
}

{
  _cg_jpeg_mem_term("initialize", 567, "*** no main image??? (globalHEIFInfo->getNumberOfMainImages() is 0)\n");
}

void HEIFReadPlugin::copyImageBlockSetTiles(int a1)
{
  IIOCMErrorString(a1);
  _cg_jpeg_mem_term("copyImageBlockSetTiles", 3106, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n");
}

{
  IIOCMErrorString(a1);
  _cg_jpeg_mem_term("copyImageBlockSetTiles", 3076, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n");
}

CFDataRef AppleJPEGReadPlugin::CreateJPEGDataFromImage(AppleJPEGReadPlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3, CGImage *a4)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  bzero(&v22, 0x98uLL);
  v20 = 0;
  v21 = 0;
  bytes = 0;
  if (this)
  {
    SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(this);
  }

  else
  {
    SourceGeomColorSpace = CGImageGetColorSpace(a3);
  }

  Model = CGColorSpaceGetModel(SourceGeomColorSpace);
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  *v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0x1800000008;
  MEMORY[0x186603ED0](v17, &v14, 0, a3, 0);
  applejpeg_get_api_number();
  if (!applejpeg_encode_create())
  {
    goto LABEL_24;
  }

  applejpeg_encode_options_init();
  *&v27 = 1;
  LODWORD(v28) = 80;
  DWORD2(v30) = 3;
  v24 = Width;
  v25 = Height;
  if (Model <= kCGColorSpaceModelCMYK)
  {
    v26 = dword_186225A50[Model];
  }

  v23 = 1;
  bytes = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
  v20 = 10240;
  if (applejpeg_encode_set_options_mem())
  {
LABEL_24:
    v12 = 0;
    goto LABEL_15;
  }

  v25 = 1;
  if (Height)
  {
    v10 = 0;
    while (1)
    {
      v22 = v17[0] + *(&v18 + 1) * v10;
      if (applejpeg_encode_image_row())
      {
        break;
      }

      if (Height == ++v10)
      {
        v11 = v21;
        goto LABEL_14;
      }
    }

    _cg_jpeg_mem_term("CreateJPEGDataFromImage", 3507, "applejpeg_encode_image_row: %d\n");
    goto LABEL_24;
  }

  v11 = 0;
LABEL_14:
  v12 = CFDataCreate(*MEMORY[0x1E695E480], bytes, v11);
LABEL_15:
  applejpeg_encode_destroy();
  if (v17[0])
  {
    free(v17[0]);
  }

  if (bytes)
  {
    free(bytes);
  }

  if ((gIIODebugFlags & 0x800000000000) != 0 && !v12)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CreateJPEGDataFromImage", 3531, "could not create JPEG data");
  }

  return v12;
}

void AppleJPEGReadPlugin::readJFIFData(uint64_t a1, uint64_t a2, char *a3)
{
  if (bswap32(*(a1 + 4)) == 1246120262)
  {
    _cg_jpeg_mem_term("readJFIFData", 473, "bad APP0-JFIF marker: tagSize: %d  expected: %d\n");
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  *a3 = v4;
}

void AppleJPEGReadPlugin::initialize()
{
  _cg_jpeg_mem_term("initialize", 1533, "*** ERROR: failed to read %d bytes at offset %ld\n");
}

{
  _cg_jpeg_mem_term("initialize", 1475, "*** applejpeg_decode_session is nil");
}

{
  _cg_jpeg_mem_term("initialize", 1396, "*** ERROR: initialize called with NULL initOptions\n");
}

{
  _cg_jpeg_mem_term("initialize", 1503, "*** AppleJPEG returned APPLEJPEG_ERR_UNSUPPORTED -- NOT falling back to libJPEG --> _rpd._isFinal==NO\n");
}

void AppleJPEGReadPlugin::initialize(AppleJPEGReadPlugin *a1)
{
  v1 = a1;
  v2 = gIIODebugFlags & 0x30000;
  v3 = AppleJPEGReadPlugin::appleJPEGErrorString(a1, a1);
  if (v2)
  {
    ImageIOLog("    %s:%d: applejpeg_decode_open_file failed (%d) %s\n", "initialize", 1509, v1, v3);
  }

  _cg_jpeg_mem_term("initialize", 1510, "applejpeg_decode_open_file failed (%d) '%s'\n");
}

uint64_t AppleJPEGReadPlugin::initialize(IIONumber *a1)
{
  IIONumber::~IIONumber(a1);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_4_5();
  _cg_jpeg_mem_term("initialize", 1755, "*** 🔄 ImageIO: plugin changed from '%c%c%c%c' to '%c%c%c%c'\n");
  v1 = OUTLINED_FUNCTION_0_26();
  return OUTLINED_FUNCTION_2_11(v1, v2);
}

{
  IIONumber::~IIONumber(a1);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_4_5();
  _cg_jpeg_mem_term("initialize", 1566, "*** 🔄 ImageIO: plugin changed from '%c%c%c%c' to '%c%c%c%c'  (found gainMap)\n");
  v1 = OUTLINED_FUNCTION_0_26();
  return OUTLINED_FUNCTION_2_11(v1, v2);
}

{
  IIONumber::~IIONumber(a1);
  v1 = OUTLINED_FUNCTION_0_26();
  return OUTLINED_FUNCTION_2_11(v1, v2);
}

{
  IIONumber::~IIONumber(a1);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_4_5();
  _cg_jpeg_mem_term("initialize", 1496, "*** 🔄 ImageIO: plugin changed from '%c%c%c%c' to '%c%c%c%c'\n");
  v1 = OUTLINED_FUNCTION_0_26();
  return OUTLINED_FUNCTION_5_1(v1, v2);
}

{
  IIONumber::~IIONumber(a1);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_4_5();
  _cg_jpeg_mem_term("initialize", 1447, "*** 🔄 ImageIO: plugin changed from '%c%c%c%c' to '%c%c%c%c'\n");
  v1 = OUTLINED_FUNCTION_0_26();
  return OUTLINED_FUNCTION_5_1(v1, v2);
}

CFDataRef CGImageMetadataCreateEXIFData(void *a1)
{
  length = 0;
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CGImageMetadataGetTypeID())
  {
    return 0;
  }

  v3 = CGImagePropertiesCreateFromMetadata(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  ExifBufferFromPropertiesJPEG = CreateExifBufferFromPropertiesJPEG(v3, 0, 0, 0, 0, @"public.jpeg", &length);
  v6 = ExifBufferFromPropertiesJPEG;
  if (!length)
  {
    v7 = 0;
    if (!ExifBufferFromPropertiesJPEG)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = CFDataCreate(*MEMORY[0x1E695E480], ExifBufferFromPropertiesJPEG, length);
  if (v6)
  {
LABEL_6:
    free(v6);
  }

LABEL_7:
  (*(*v4 + 8))(v4);
  return v7;
}

uint64_t CGImageMetadataCreateSerializedDataAndExtendedData(char *a1, CFDataRef *a2, CFDataRef *a3, CFDataRef *a4, int a5)
{
  bytes = 0;
  v17 = 0;
  length = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  if (a1 && (a5 != 1246774599 ? (v8 = SerializeMetadataForXMP(a1, &length), v17 = v8) : (SerializeMetadataForJPEGXMP(a1, &v17, &length, &bytes, &v13, &v15, &v12), v8 = v17), v8))
  {
    v9 = *MEMORY[0x1E695E480];
    *a2 = CFDataCreate(*MEMORY[0x1E695E480], v8, length);
    if (bytes && v13 >= 2)
    {
      *a3 = CFDataCreate(v9, bytes, v13);
    }

    v10 = 1;
    if (a3 && v15 && v12 >= 2)
    {
      *a4 = CFDataCreate(v9, v15, v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v17)
  {
    free(v17);
  }

  if (bytes)
  {
    free(bytes);
  }

  if (v15)
  {
    free(v15);
  }

  return v10;
}

__CFArray *CreateArrayFromCFValue(const __CFString *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFArrayGetTypeID())
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFNumberGetTypeID() && (SimpleStringFromCFValue = CGImageMetadataCreateSimpleStringFromCFValue(ValueAtIndex, 4)) != 0)
          {
            v12 = SimpleStringFromCFValue;
            CFArrayAppendValue(Mutable, SimpleStringFromCFValue);
            CFRelease(v12);
          }

          else if (ValueAtIndex)
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }
        }
      }
    }

    return Mutable;
  }

  v13 = CFGetTypeID(a1);
  if (v13 != CFStringGetTypeID())
  {
    return 0;
  }

  v14 = *MEMORY[0x1E695E480];
  if (a2 == 13)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @"; ");
    if (ArrayBySeparatingStrings)
    {
      v16 = ArrayBySeparatingStrings;
      v17 = CFArrayGetCount(ArrayBySeparatingStrings);
      Mutable = CFArrayCreateMutableCopy(v14, v17, v16);
      CFRelease(v16);
      return Mutable;
    }

    LogMetadata("CreateArrayFromCFValue", 1654, "Could not create array from kLegacyTypeSemicolonString value\n");
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v18 = OUTLINED_FUNCTION_12_0();
    CFArrayAppendValue(v18, v19);
  }

  return Mutable;
}

__CFDictionary *CreateStructureFromCFValue(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = malloc_type_malloc(8 * v4, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(a1, v6, 0);
    for (i = 0; i != v4; ++i)
    {
      v8 = v6[i];
      Value = CFDictionaryGetValue(a1, v8);
      CFDictionaryAddValue(Mutable, v8, Value);
    }

    free(v6);
  }

  return Mutable;
}

CFStringRef CreateMetadataVersionStringFromArray(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 2)
  {
    return 0;
  }

  v4 = Count;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v6 = Mutable;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  if (!ValueAtIndex)
  {
    goto LABEL_22;
  }

  v8 = ValueAtIndex;
  v9 = CFGetTypeID(ValueAtIndex);
  if (v9 != CFNumberGetTypeID())
  {
    goto LABEL_22;
  }

  SimpleStringFromCFValue = CGImageMetadataCreateSimpleStringFromCFValue(v8, 0);
  if (!SimpleStringFromCFValue)
  {
    goto LABEL_22;
  }

  v11 = SimpleStringFromCFValue;
  if (CFStringGetLength(SimpleStringFromCFValue) == 1)
  {
    CFArrayAppendValue(v6, @"0");
  }

  CFArrayAppendValue(v6, v11);
  CFRelease(v11);
  v12 = CFArrayGetValueAtIndex(a1, 1);
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFNumberGetTypeID())
  {
    goto LABEL_22;
  }

  v15 = CGImageMetadataCreateSimpleStringFromCFValue(v13, 0);
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  CFArrayAppendValue(v6, v15);
  CFRelease(v16);
  if (v4 != 2)
  {
    v17 = CFArrayGetValueAtIndex(a1, 2);
    if (v17)
    {
      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFNumberGetTypeID())
      {
        v20 = CGImageMetadataCreateSimpleStringFromCFValue(v18, 0);
        if (v20)
        {
          v21 = v20;
          CFArrayAppendValue(v6, v20);
          CFRelease(v21);
          goto LABEL_19;
        }
      }
    }

LABEL_22:
    v25 = 0;
    goto LABEL_20;
  }

  CFArrayAppendValue(v6, @"0");
LABEL_19:
  v22 = OUTLINED_FUNCTION_12_0();
  v25 = CFStringCreateByCombiningStrings(v22, v23, v24);
LABEL_20:
  CFRelease(v6);
  return v25;
}

const __CFArray *CreateGPSVersionStringFromArray(const __CFArray *cf)
{
  v1 = cf;
  v19 = *MEMORY[0x1E69E9840];
  *values = 0u;
  v18 = 0u;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      goto LABEL_16;
    }

    Count = CFArrayGetCount(v1);
    if (Count < 2)
    {
      goto LABEL_16;
    }

    v4 = Count;
    v5 = 0;
    v6 = *MEMORY[0x1E695E480];
    do
    {
      if (v4 <= v5)
      {
        Copy = CFRetain(@"0");
        if (!Copy)
        {
          goto LABEL_16;
        }
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v5);
        v8 = CFGetTypeID(ValueAtIndex);
        if (v8 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr);
          Copy = CFStringCreateWithFormat(v6, 0, @"%ld", valuePtr);
          if (!Copy)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 != CFStringGetTypeID())
          {
            goto LABEL_16;
          }

          Copy = CFStringCreateCopy(v6, ValueAtIndex);
          if (!Copy)
          {
            goto LABEL_16;
          }
        }
      }

      values[v5++] = Copy;
    }

    while (v5 != 4);
    v11 = CFArrayCreate(v6, values, 4, MEMORY[0x1E695E9C0]);
    if (v11)
    {
      v12 = v11;
      v1 = CFStringCreateByCombiningStrings(v6, v11, @".");
      CFRelease(v12);
    }

    else
    {
LABEL_16:
      v1 = 0;
    }
  }

  for (i = 0; i != 4; ++i)
  {
    v14 = values[i];
    if (v14)
    {
      CFRelease(v14);
    }
  }

  return v1;
}

__CFDictionary *CreateXMPFlashStructFromInt(unsigned int a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = OUTLINED_FUNCTION_6_3();
    v9 = CGImageMetadataTagCreate(v4, v5, v6, v7, v8);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(Mutable, @"Fired", v9);
      CFRelease(v10);
      v11 = CFStringCreateWithFormat(v2, 0, @"%d", (a1 >> 1) & 3);
      if (v11)
      {
        v12 = v11;
        v13 = OUTLINED_FUNCTION_6_3();
        v17 = CGImageMetadataTagCreate(v13, v14, v15, v16, v12);
        if (!v17)
        {
          goto LABEL_10;
        }

        v18 = v17;
        CFDictionarySetValue(Mutable, @"Return", v17);
        CFRelease(v18);
        CFRelease(v12);
        v19 = CFStringCreateWithFormat(v2, 0, @"%d", (a1 >> 3) & 3);
        if (!v19)
        {
          return Mutable;
        }

        v12 = v19;
        v20 = OUTLINED_FUNCTION_6_3();
        v24 = CGImageMetadataTagCreate(v20, v21, v22, v23, v12);
        if (!v24)
        {
LABEL_10:
          CFRelease(v12);
          return Mutable;
        }

        v25 = v24;
        CFDictionarySetValue(Mutable, @"Mode", v24);
        CFRelease(v25);
        CFRelease(v12);
        v26 = OUTLINED_FUNCTION_6_3();
        v31 = CGImageMetadataTagCreate(v26, v27, v28, v29, v30);
        if (v31)
        {
          v32 = v31;
          CFDictionarySetValue(Mutable, @"Function", v31);
          CFRelease(v32);
          v33 = OUTLINED_FUNCTION_6_3();
          v38 = CGImageMetadataTagCreate(v33, v34, v35, v36, v37);
          if (v38)
          {
            v12 = v38;
            CFDictionarySetValue(Mutable, @"RedEyeMode", v38);
            goto LABEL_10;
          }
        }
      }
    }
  }

  return Mutable;
}

__CFDictionary *CreateXMPFlashStructFromCFValue(__CFDictionary *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID() && CFNumberGetValue(v1, kCFNumberIntType, &valuePtr))
    {
      return CreateXMPFlashStructFromInt(valuePtr);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *CreateMetadataLensInfoFromCFValue(const __CFArray *cf, CFIndex *a2)
{
  v2 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID() && (v5 = *MEMORY[0x1E695E480], (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0])) != 0))
    {
      v7 = Mutable;
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
          if (ValueAtIndex)
          {
            v12 = ValueAtIndex;
            v13 = CFGetTypeID(ValueAtIndex);
            if (v13 == CFNumberGetTypeID())
            {
              SimpleStringFromCFValue = CGImageMetadataCreateSimpleStringFromCFValue(v12, 3);
              if (SimpleStringFromCFValue)
              {
                v15 = SimpleStringFromCFValue;
                if (CFStringCompare(SimpleStringFromCFValue, @"0/1", 0))
                {
                  v16 = v15;
                }

                else
                {
                  v16 = @"0/0";
                }

                CFArrayAppendValue(v7, v16);
                CFRelease(v15);
              }
            }
          }
        }
      }

      v2 = CFStringCreateByCombiningStrings(v5, v7, @" ");
      if (a2)
      {
        *a2 = CFArrayGetCount(v7);
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL GetLongLongFromPropertyValue(const __CFString *a1, uint64_t *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = a1;
    *a2 = 0;
    v5 = CFGetTypeID(a1);
    if ((v5 != CGImageMetadataTagGetTypeID() || (v4 = *(CGImageSourceGetSource(v4) + 48)) != 0) && (v6 = CFGetTypeID(v4), v6 == CFStringGetTypeID()))
    {
      Length = CFStringGetLength(v4);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v9 = OUTLINED_FUNCTION_1_11(MaximumSizeForEncoding);
      CString = CFStringGetCString(v4, v9, MaximumSizeForEncoding + 1, 0x8000100u);
      v2 = CString != 0;
      if (CString)
      {
        *a2 = atoll(v9);
      }

      free(v9);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t GetDateTimeStructFromXMPDateTimeString(const __CFString *cf, tm *a2, BOOL *a3, BOOL *a4)
{
  v4 = a2;
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0u;
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  v131 = 0u;
  if (a2)
  {
    a2->tm_zone = 0;
    *&a2->tm_mon = 0uLL;
    *&a2->tm_isdst = 0uLL;
    *&a2->tm_sec = 0uLL;
    if (!cf)
    {
      return 0;
    }

    v8 = CFGetTypeID(cf);
    if (v8 != CFStringGetTypeID())
    {
      return 0;
    }

    Length = CFStringGetLength(cf);
    v10 = OUTLINED_FUNCTION_1_11(Length);
    if (!v10)
    {
      return 0;
    }

    v11 = *&v10;
    if (!CFStringGetCString(cf, v10, Length + 1, 0x600u))
    {
      goto LABEL_74;
    }

    tzset();
    if (a3)
    {
      *a3 = 0;
    }

    v125 = a3;
    if (a4)
    {
      *a4 = 0;
    }

    v122 = a4;
    OUTLINED_FUNCTION_17_0();
    if (sscanf(*&v11, "%04d-%02d-%02dT%02d:%02d:%lf+%02d:%02d", &v136 + 4, &v136, v80, v87, v94, v101, &v131 + 8, &v131 + 4) == 8)
    {
      OUTLINED_FUNCTION_4_6(v12, v13, v14, v15, v16, v17, v18, v19, v68, v74, v81, v88, v95, v102, v108, v112, v116, v117, v119, *&Length, *&a4, *&a3, v11, 0.0);
      OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
      OUTLINED_FUNCTION_19_0();
LABEL_12:
      *(&v137 + 1) = v20;
      if (v126)
      {
        OUTLINED_FUNCTION_14_0();
      }

      v11 = *&v129;
      goto LABEL_25;
    }

    if (sscanf(*&v11, "%04d%02d%02dT%02d%02d%lf+%02d%02d", &v136 + 4, &v136, &v135 | 0xC, &v135 + 8, &v135 + 4, cf, &v131 + 8, &v131 + 4) == 8)
    {
      OUTLINED_FUNCTION_4_6(v21, v22, v23, v24, v25, v26, v27, v28, v69, v75, v82, v89, v96, v103, v109, v113, v116, v117, v119, *&Length, *&a4, *&a3, v11, 0.0);
LABEL_17:
      OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
      OUTLINED_FUNCTION_19_0();
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_17_0();
    if (sscanf(*&v11, "%04d-%02d-%02dT%02d:%02d:%lf-%02d:%02d", &v136 + 4, &v136, *&v82, *&v89, *&v96, *&v103, &v131 + 8, &v131 + 4) == 8)
    {
      OUTLINED_FUNCTION_4_6(v30, v31, v32, v33, v34, v35, v36, v37, v70, v76, v83, v90, v97, v104, v110, v114, v116, v117, v119, *&Length, *&a4, *&a3, v11, 0.0);
      OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
      OUTLINED_FUNCTION_13_0();
      goto LABEL_12;
    }

    if (sscanf(*&v11, "%04d%02d%02dT%02d%02d%lf-%02d%02d", &v136 + 4, &v136, &v135 | 0xC, &v135 + 8, &v135 + 4, cf, &v131 + 8, &v131 + 4) == 8)
    {
      OUTLINED_FUNCTION_4_6(v38, v39, v40, v41, v42, v43, v44, v45, v71, v77, v84, v91, v98, v105, v111, v115, v116, v117, v119, *&Length, *&a4, *&a3, v11, 0.0);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_17_0();
    if (sscanf(*&v11, "%04d-%02d-%02dT%02d:%02d:%lfZ", &v136 + 4, &v136, *&v84, *&v91, *&v98, *&v105) == 6)
    {
      OUTLINED_FUNCTION_4_6(v48, v49, v50, v51, v52, v53, v54, v55, v72, v78, v85, v92, v99, v106, v111, v115, v116, v117, v119, *&Length, *&a4, *&a3, v11, 0.0);
      OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
      *(&v137 + 1) = 0;
      if (v127)
      {
        OUTLINED_FUNCTION_14_0();
      }

      v11 = *&v130;
      if (!v123)
      {
        goto LABEL_27;
      }

      v56 = &v130[v120];
      goto LABEL_40;
    }

    *&v118 = &v135 | 0xC;
    if (sscanf(*&v11, "%04d%02d%02dT%02d%02d%lfZ", &v136 + 4, &v136, &v135 | 0xC, &v135 + 8, &v135 + 4, cf) == 6)
    {
      OUTLINED_FUNCTION_4_6(v57, v58, v59, v60, v61, v62, v63, v64, v73, v79, v86, v93, v100, v107, v111, v115, v116, v118, COERCE_DOUBLE(&v136), *&Length, *&a4, *&a3, v11, 0.0);
      OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
      *(&v137 + 1) = 0;
      v65 = v121;
      if (v128)
      {
        OUTLINED_FUNCTION_14_0();
      }

      if (!v124)
      {
        goto LABEL_27;
      }

      v56 = (*&v11 + v65);
LABEL_40:
      v66 = *(v56 - 1);
      goto LABEL_41;
    }

    if (Length == 10)
    {
      OUTLINED_FUNCTION_10_0();
      if (sscanf(*&v11, "%04d-%02d-%02d", *&v73, *&v79, *&v86) == 3)
      {
LABEL_68:
        OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
        goto LABEL_27;
      }

      if (sscanf(*&v11, "%02d:%02d:%02d", &v135 + 8, &v135 + 4, &v135) == 3)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_10_0();
      v67 = sscanf(*&v11, "%04d:%02d:%02d");
    }

    else
    {
      switch(Length)
      {
        case 17:
          OUTLINED_FUNCTION_10_0();
          if (sscanf(*&v11, "%04d-%02d-%02dT%02d:%02dZ", *&v73, *&v79, *&v86, &v135 + 8, &v135 + 4) == 5)
          {
            OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
            *(&v137 + 1) = 0;
            if (a3)
            {
              OUTLINED_FUNCTION_14_0();
            }

            if (!a4)
            {
              goto LABEL_27;
            }

            v66 = *(*&v11 + 16);
LABEL_41:
            if (v66 != 90)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          break;
        case 19:
          if (sscanf(*&v11, "%04d:%02d:%02d %02d:%02d:%02d", &v136 + 4, &v136, *&v118, &v135 + 8, &v135 + 4, &v135) == 6)
          {
            OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
            goto LABEL_58;
          }

          break;
        case 22:
          if (sscanf(*&v11, "%04d-%02d-%02dT%02d:%02d+%02d:%02d", &v136 + 4, &v136, *&v118, &v135 + 8, &v135 + 4, &v131 + 8, &v131 + 4) == 7)
          {
            goto LABEL_17;
          }

          if (sscanf(*&v11, "%04d-%02d-%02dT%02d:%02d-%02d:%02d", &v136 + 4, &v136, *&v118, &v135 + 8, &v135 + 4, &v131 + 8, &v131 + 4) == 7)
          {
LABEL_22:
            OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
            OUTLINED_FUNCTION_13_0();
LABEL_23:
            *(&v137 + 1) = v29;
            if (v125)
            {
              OUTLINED_FUNCTION_14_0();
            }

LABEL_25:
            if (!v122)
            {
LABEL_27:
              v46 = v136;
              *v4 = v135;
              *(v4 + 16) = v46;
              *(v4 + 32) = v137;
              *(v4 + 48) = v138;
              v4 = 1;
LABEL_28:
              free(*&v11);
              return v4;
            }

LABEL_26:
            OUTLINED_FUNCTION_14_0();
            goto LABEL_27;
          }

          break;
      }

      if (sscanf(*&v11, "%02d:%02d:%02d", &v135 + 8, &v135 + 4, &v135) == 3)
      {
LABEL_58:
        if (!a3)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (Length == 4)
      {
        if (sscanf(*&v11, "%04d", &v136 + 4) == 1)
        {
          DWORD1(v136) -= 1900;
          HIDWORD(v135) = 1;
          goto LABEL_27;
        }

        goto LABEL_74;
      }

      if (Length == 7)
      {
        if (sscanf(*&v11, "%04d-%02d", &v136 + 4, &v136) == 2)
        {
          OUTLINED_FUNCTION_8_0(*&v136, 0xFFFFF894FFFFFFFFLL);
          HIDWORD(v135) = 1;
          goto LABEL_27;
        }

        goto LABEL_74;
      }

      if (Length != 8)
      {
        goto LABEL_74;
      }

      OUTLINED_FUNCTION_10_0();
      v67 = sscanf(*&v11, "%04d%02d%02d");
    }

    if (v67 == 3)
    {
      goto LABEL_68;
    }

LABEL_74:
    v4 = 0;
    goto LABEL_28;
  }

  return v4;
}

CFStringRef CreateXMPDateTimeWithXMPOrExifDateTimeString(const __CFString *a1)
{
  *v8 = 0;
  memset(&v7, 0, sizeof(v7));
  GetDateTimeStructFromXMPDateTimeString(a1, &v7, &v8[1], v8);
  result = OUTLINED_FUNCTION_18_0();
  if (v2)
  {
    if (v8[1])
    {
      if (v8[0])
      {
        OUTLINED_FUNCTION_0_27();
        return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%04d-%02d-%02dT%02d:%02d:%02d%+03d:%02d", (v7.tm_year + 1900), (v7.tm_mon + 1), v7.tm_mday, v7.tm_hour, v7.tm_min, v7.tm_sec, v4, v3);
      }

      else
      {
        OUTLINED_FUNCTION_16_0();
        return CFStringCreateWithFormat(v6, 0, @"%04d-%02d-%02dT%02d:%02d:%02d");
      }
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      return CFStringCreateWithFormat(v5, 0, @"%04d-%02d-%02d");
    }
  }

  return result;
}

CFStringRef CreateIPTCDateStringWithXMPDateTimeString(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, tm *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x1E69E9840];
  __str[8] = 0;
  OUTLINED_FUNCTION_3_10(a1, a2, a3, a4, a5, a6, a7, a8, v10, v12, v14, v16, v17, v18, v19, v20);
  result = OUTLINED_FUNCTION_18_0();
  if (v9)
  {
    OUTLINED_FUNCTION_9_0();
    snprintf(__str, 9uLL, "%04d%02d%02d", v11, v13, v15);
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x600u);
  }

  return result;
}

CFStringRef CreateIPTCTimeStringWithXMPDateTimeString(const __CFString *a1)
{
  memset(&v6, 0, sizeof(v6));
  *v5 = 0;
  if (!GetDateTimeStructFromXMPDateTimeString(a1, &v6, &v5[1], v5) || !v5[1])
  {
    return 0;
  }

  if (v5[0])
  {
    OUTLINED_FUNCTION_0_27();
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%02d%02d%02d%+03d%02d", v6.tm_hour, v6.tm_min, v6.tm_sec, v2, v1);
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    return CFStringCreateWithFormat(v4, 0, @"%02d%02d%02d");
  }
}

CFStringRef CreateGPSDateStringWithXMPDateTimeString(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, tm *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = 0;
  OUTLINED_FUNCTION_3_10(a1, a2, a3, a4, a5, a6, a7, a8, v10, v12, v14, v16, v17, v18, v19, v20);
  result = OUTLINED_FUNCTION_18_0();
  if (v9)
  {
    OUTLINED_FUNCTION_9_0();
    snprintf(__str, 0xBuLL, "%04d:%02d:%02d", v11, v13, v15);
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x600u);
  }

  return result;
}

CFStringRef CreateGPSTimeStringWithXMPDateTimeString(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, tm *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x1E69E9840];
  __str[8] = 0;
  OUTLINED_FUNCTION_3_10(a1, a2, a3, a4, a5, a6, a7, a8, v10, v12, v14, v16, v17, v18, v19, v20);
  result = OUTLINED_FUNCTION_18_0();
  if (v9)
  {
    OUTLINED_FUNCTION_11_0();
    snprintf(__str, 9uLL, "%02d:%02d:%02d", v11, v13, v15);
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x600u);
  }

  return result;
}

CFStringRef CreateMergedXMPDateWithXMPTime(CFStringRef result, const __CFString *a2)
{
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  *v13 = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    TypeID = CFStringGetTypeID();
    result = 0;
    if (a2)
    {
      if (v4 == TypeID)
      {
        v6 = CFGetTypeID(a2);
        if (v6 == CFStringGetTypeID())
        {
          DateTimeStructFromXMPDateTimeString = GetDateTimeStructFromXMPDateTimeString(v3, &v15, 0, 0);
          GetDateTimeStructFromXMPDateTimeString(a2, &v14, &v13[1], v13);
          result = OUTLINED_FUNCTION_18_0();
          if (DateTimeStructFromXMPDateTimeString && v8)
          {
            if (v13[1])
            {
              if (v13[0])
              {
                OUTLINED_FUNCTION_0_27();
                return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%04d-%02d-%02dT%02d:%02d:%02d%+03d:%02d", (v15.tm_year + 1900), (v15.tm_mon + 1), v15.tm_mday, v14.tm_hour, v14.tm_min, v14.tm_sec, v10, v9);
              }

              else
              {
                OUTLINED_FUNCTION_16_0();
                return CFStringCreateWithFormat(v12, 0, @"%04d-%02d-%02dT%02d:%02d:%02d");
              }
            }

            else
            {
              OUTLINED_FUNCTION_9_0();
              return CFStringCreateWithFormat(v11, 0, @"%04d-%02d-%02d");
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const __CFString *CreateXMPDateTimeFromEXIFDateTime(const __CFString *cf)
{
  v1 = cf;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v8 = 0;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFStringGetTypeID() && (Length = CFStringGetLength(v1), (v4 = OUTLINED_FUNCTION_1_11(Length)) != 0))
    {
      v5 = v4;
      if (OUTLINED_FUNCTION_7_0() && sscanf(v5, "%04d:%02d:%02d %02d:%02d:%02d", &v11 + 4, &v11, &v10 + 4, &v10, &v9, &v8) == 6)
      {
        OUTLINED_FUNCTION_16_0();
        v1 = CFStringCreateWithFormat(v6, 0, @"%04d-%02d-%02dT%02d:%02d:%02d");
      }

      else
      {
        v1 = 0;
      }

      free(v5);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

__CFString *CreateXMPDateFromIPTCDateAndTime(const __CFString *a1, const __CFString *a2)
{
  v17 = 0;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    Length = CFStringGetLength(a1);
    Mutable = OUTLINED_FUNCTION_1_11(Length);
    if (!Mutable)
    {
      return Mutable;
    }

    if (!OUTLINED_FUNCTION_21_0())
    {
LABEL_32:
      free(Mutable);
      return 0;
    }

    v7 = sscanf(Mutable, "%04d%02d%02d", &v17, &v16, &v15 + 4) == 3;
    free(Mutable);
    if (!a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    if (!a2)
    {
LABEL_14:
      v10 = 0;
      v11 = 0;
      goto LABEL_20;
    }
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFStringGetTypeID())
  {
    LODWORD(a2) = 0;
    goto LABEL_14;
  }

  v9 = CFStringGetLength(a2);
  Mutable = OUTLINED_FUNCTION_1_11(v9);
  if (!Mutable)
  {
    return Mutable;
  }

  if (!OUTLINED_FUNCTION_7_0())
  {
    goto LABEL_32;
  }

  if (sscanf(Mutable, "%02d%02d%02d+%02d%02d", &v15, &v14 + 4, &v14, &v13 + 4, &v13) == 5)
  {
    LODWORD(a2) = 0;
  }

  else
  {
    if (sscanf(Mutable, "%02d%02d%02d-%02d%02d", &v15, &v14 + 4, &v14, &v13 + 4, &v13) != 5)
    {
      LODWORD(a2) = 0;
      v10 = 0;
      v11 = sscanf(Mutable, "%02d%02d%02d", &v15, &v14 + 4, &v14) == 3;
      goto LABEL_19;
    }

    LODWORD(a2) = 1;
  }

  v10 = 1;
  v11 = 1;
LABEL_19:
  free(Mutable);
LABEL_20:
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 19);
  if (Mutable)
  {
    if (v7)
    {
      OUTLINED_FUNCTION_11_0();
      CFStringAppendFormat(Mutable, 0, @"%04d-%02d-%02d");
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"0000-00-00");
    }

    if (v11)
    {
      OUTLINED_FUNCTION_11_0();
      CFStringAppendFormat(Mutable, 0, @"T%02d:%02d:%02d");
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"T00:00:00");
    }

    if (v10)
    {
      if (a2)
      {
        CFStringAppendFormat(Mutable, 0, @"-%02d:%02d", HIDWORD(v13), v13);
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"+%02d:%02d", HIDWORD(v13), v13);
      }
    }
  }

  return Mutable;
}

CFStringRef CreateXMPDateFromEXIFGPSDateAndTime(const __CFString *a1, const __CFString *a2)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v17 = 0.0;
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  TypeID = CFStringGetTypeID();
  v6 = 0;
  if (a2 && v4 == TypeID)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a1);
      v9 = OUTLINED_FUNCTION_1_11(Length);
      if (v9)
      {
        v10 = v9;
        if (!OUTLINED_FUNCTION_21_0() || sscanf(v10, "%04d:%02d:%02d", &v20 + 4, &v20, &v19 + 4) != 3)
        {
          goto LABEL_18;
        }

        v11 = CFStringGetLength(a2);
        v12 = reallocf(v10, v11 + 1);
        if (v12)
        {
          v10 = v12;
          OUTLINED_FUNCTION_7_0();
          if (sscanf(v10, "%02d:%02d:%lf", &v19, &v18, &v17) == 3)
          {
            if (v17 - v17 <= 1.0e-10)
            {
              v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%04d-%02d-%02dT%02d:%02d:%02d+0000", HIDWORD(v20), v20, HIDWORD(v19), v19, v18, v17);
              goto LABEL_19;
            }

            __s = 0;
            asprintf(&__s, "%012.9f", v17);
            v13 = __s;
            if (__s)
            {
              v14 = strlen(__s) - 1;
              if (v14 >= 4)
              {
                while (1)
                {
                  v13 = __s;
                  if (__s[v14] != 48)
                  {
                    break;
                  }

                  __s[v14--] = 0;
                  if (v14 <= 3)
                  {
                    v13 = __s;
                    break;
                  }
                }
              }

              v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%04d-%02d-%02dT%02d:%02d:%s+0000", HIDWORD(v20), v20, HIDWORD(v19), v19, v18, v13);
              free(__s);
              goto LABEL_19;
            }
          }

LABEL_18:
          v6 = 0;
LABEL_19:
          free(v10);
          return v6;
        }
      }
    }

    return 0;
  }

  return v6;
}

__CFString *CreateShortXMPDateFromIPTCDate(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length == 8)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 10);
    if (Mutable)
    {
      v6 = OUTLINED_FUNCTION_12_0();
      CFStringAppend(v6, v7);
      CFStringInsert(Mutable, 4, @"-");
      CFStringInsert(Mutable, 7, @"-");
    }

    return Mutable;
  }

  if (Length != 10)
  {
    return 0;
  }

  return CFRetain(a1);
}

const __CFString *CreateSubsecTimeFromXMPDateTime(const __CFString *cf)
{
  v1 = cf;
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  *cStr = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFStringGetTypeID() && (Length = CFStringGetLength(v1), (v4 = malloc_type_calloc(1uLL, Length + 1, 0x100004077774924uLL)) != 0))
    {
      v5 = v4;
      v9 = 0;
      if (OUTLINED_FUNCTION_7_0() && (sscanf(v5, "%04d-%02d-%02dT%02d:%02d:%02d.%9[0-9]+%02d:%02d", &v15 + 4, &v15, &v14 | 0xC, &v14 + 8, &v14 + 4, &v9, cStr, &v10 + 8, &v10 + 4) == 9 || sscanf(v5, "%04d-%02d-%02dT%02d:%02d:%02d.%9[0-9]-%02d:%02d", &v15 + 4, &v15, &v14 | 0xC, &v14 + 8, &v14 + 4, &v9, cStr, &v10 + 8, &v10 + 4) == 9 || sscanf(v5, "%04d-%02d-%02dT%02d:%02d:%02d.%9[0-9]Z", &v15 + 4, &v15, &v14 | 0xC, &v14 + 8, &v14 + 4, &v9, cStr) == 7) && ((v8 = 0, sscanf(cStr, "%d", &v8) == 1) ? (v6 = v8 < 1) : (v6 = 1), !v6))
      {
        v1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
      }

      else
      {
        v1 = 0;
      }

      free(v5);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

CFNumberRef CreateIntValueFromField(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CGImageMetadataTagGetTypeID())
    {
      v3 = *(CGImageSourceGetSource(v3) + 48);
      if (!v3)
      {
        return 0;
      }
    }

    else
    {
      v5 = CFGetTypeID(v3);
      if (v5 != CFStringGetTypeID())
      {
        return 0;
      }
    }

    v6 = CFGetTypeID(v3);
    if (v6 == CFStringGetTypeID())
    {
      valuePtr = CFStringGetIntValue(v3);
      return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    }

    return 0;
  }

  return result;
}

CFNumberRef CreateFloatValueFromField(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CGImageMetadataTagGetTypeID())
    {
      v3 = *(CGImageSourceGetSource(v3) + 48);
      if (!v3)
      {
        return 0;
      }
    }

    else
    {
      v5 = CFGetTypeID(v3);
      if (v5 != CFStringGetTypeID())
      {
        return 0;
      }
    }

    v6 = CFGetTypeID(v3);
    if (v6 == CFStringGetTypeID())
    {
      valuePtr = CFStringGetDoubleValue(v3);
      return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
    }

    return 0;
  }

  return result;
}

__CFDictionary *CreateRegionFromPropertyValue(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    Value = CFDictionaryGetValue(a1, @"AppliedToDimensions");
    Source = CGImageSourceGetSource(Value);
    if (Value)
    {
      v6 = Source;
      v7 = CFGetTypeID(Value);
      if (v7 == CGImageMetadataTagGetTypeID())
      {
        v8 = *(v6 + 48);
        if (v8)
        {
          v9 = CFGetTypeID(v8);
          if (v9 == CFDictionaryGetTypeID())
          {
            IntValueFromField = CreateIntValueFromField(v8, @"w");
            if (IntValueFromField)
            {
              v11 = IntValueFromField;
              CFDictionarySetValue(Mutable, @"WidthAppliedTo", IntValueFromField);
              CFRelease(v11);
            }

            v12 = CreateIntValueFromField(v8, @"h");
            if (v12)
            {
              v13 = v12;
              CFDictionarySetValue(Mutable, @"HeightAppliedTo", v12);
              CFRelease(v13);
            }

            v14 = CFDictionaryGetValue(a1, @"RegionList");
            v15 = CGImageSourceGetSource(v14);
            if (v14)
            {
              v16 = v15;
              v17 = CFGetTypeID(v14);
              if (v17 == CGImageMetadataTagGetTypeID())
              {
                v18 = *(v16 + 48);
                if (v18)
                {
                  v19 = CFGetTypeID(*(v16 + 48));
                  if (v19 == CFArrayGetTypeID())
                  {
                    v20 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                    if (v20)
                    {
                      v21 = v20;
                      CFDictionarySetValue(Mutable, @"RegionList", v20);
                      CFRelease(v21);
                      Count = CFArrayGetCount(v18);
                      if (Count >= 1)
                      {
                        v66 = Mutable;
                        v22 = 0;
                        v23 = @"Name";
                        v24 = @"Type";
                        do
                        {
                          v25 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                          if (!v25)
                          {
                            break;
                          }

                          v26 = v25;
                          CFArrayAppendValue(v21, v25);
                          CFRelease(v26);
                          ValueAtIndex = CFArrayGetValueAtIndex(v18, v22);
                          v28 = CGImageSourceGetSource(ValueAtIndex);
                          if (!ValueAtIndex)
                          {
                            break;
                          }

                          v29 = v28;
                          v30 = CFGetTypeID(ValueAtIndex);
                          if (v30 != CGImageMetadataTagGetTypeID())
                          {
                            break;
                          }

                          v31 = *(v29 + 48);
                          if (!v31)
                          {
                            break;
                          }

                          v32 = CFGetTypeID(*(v29 + 48));
                          if (v32 != CFDictionaryGetTypeID())
                          {
                            break;
                          }

                          v33 = v24;
                          v34 = v23;
                          v35 = CFDictionaryGetValue(v31, @"Area");
                          v36 = CGImageSourceGetSource(v35);
                          if (!v35)
                          {
                            break;
                          }

                          v37 = v36;
                          v38 = CFGetTypeID(v35);
                          if (v38 != CGImageMetadataTagGetTypeID())
                          {
                            break;
                          }

                          v39 = *(v37 + 48);
                          if (!v39)
                          {
                            break;
                          }

                          v40 = CFGetTypeID(v39);
                          if (v40 != CFDictionaryGetTypeID())
                          {
                            break;
                          }

                          FloatValueFromField = CreateFloatValueFromField(v39, @"w");
                          if (FloatValueFromField)
                          {
                            v42 = FloatValueFromField;
                            CFDictionarySetValue(v26, @"Width", FloatValueFromField);
                            CFRelease(v42);
                          }

                          v43 = CreateFloatValueFromField(v39, @"h");
                          if (v43)
                          {
                            v44 = v43;
                            CFDictionarySetValue(v26, @"Height", v43);
                            CFRelease(v44);
                          }

                          v45 = CreateFloatValueFromField(v39, @"x");
                          if (v45)
                          {
                            v46 = v45;
                            CFDictionarySetValue(v26, @"X", v45);
                            CFRelease(v46);
                          }

                          if (CreateFloatValueFromField(v39, @"y"))
                          {
                            v47 = OUTLINED_FUNCTION_15_0();
                            CFDictionarySetValue(v47, @"Y", v39);
                            CFRelease(v39);
                          }

                          v23 = v34;
                          v48 = CFDictionaryGetValue(v31, v34);
                          DefaultString = CGImageMetadataGetDefaultString(v48);
                          if (DefaultString)
                          {
                            CFDictionarySetValue(v26, v34, DefaultString);
                          }

                          v24 = v33;
                          v50 = CFDictionaryGetValue(v31, v33);
                          v51 = CGImageMetadataGetDefaultString(v50);
                          if (v51)
                          {
                            CFDictionarySetValue(v26, v33, v51);
                          }

                          v52 = CFDictionaryGetValue(v31, @"Description");
                          v53 = CGImageMetadataGetDefaultString(v52);
                          if (v53)
                          {
                            CFDictionarySetValue(v26, @"Description", v53);
                          }

                          v54 = CFDictionaryGetValue(v31, @"Extensions");
                          v55 = CGImageSourceGetSource(v54);
                          if (v54)
                          {
                            v56 = v55;
                            v57 = CFGetTypeID(v54);
                            if (v57 == CGImageMetadataTagGetTypeID())
                            {
                              v58 = *(v56 + 48);
                              if (v58)
                              {
                                v59 = CFGetTypeID(*(v56 + 48));
                                if (v59 == CFDictionaryGetTypeID())
                                {
                                  if (CreateIntValueFromField(v58, @"Timestamp"))
                                  {
                                    v60 = OUTLINED_FUNCTION_15_0();
                                    CFDictionarySetValue(v60, @"Timestamp", v59);
                                    CFRelease(v59);
                                  }

                                  if (CreateIntValueFromField(v58, @"AngleInfoYaw"))
                                  {
                                    v61 = OUTLINED_FUNCTION_15_0();
                                    CFDictionarySetValue(v61, @"AngleInfoYaw", v59);
                                    CFRelease(v59);
                                  }

                                  if (CreateIntValueFromField(v58, @"AngleInfoRoll"))
                                  {
                                    v62 = OUTLINED_FUNCTION_15_0();
                                    CFDictionarySetValue(v62, @"AngleInfoRoll", v59);
                                    CFRelease(v59);
                                  }

                                  if (CreateIntValueFromField(v58, @"ConfidenceLevel"))
                                  {
                                    v63 = OUTLINED_FUNCTION_15_0();
                                    CFDictionarySetValue(v63, @"ConfidenceLevel", v59);
                                    CFRelease(v59);
                                  }

                                  if (CreateIntValueFromField(v58, @"FaceID"))
                                  {
                                    v64 = OUTLINED_FUNCTION_15_0();
                                    CFDictionarySetValue(v64, @"FaceID", v59);
                                    CFRelease(v59);
                                  }
                                }
                              }
                            }
                          }

                          ++v22;
                        }

                        while (Count != v22);
                        return v66;
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
  }

  return Mutable;
}

void CGImageMetadataTagAppendQualifier_cold_1(IIOString *a1, char *a2, const void *a3)
{
  IIOString::~IIOString(a1);
  if (a2)
  {
    LogMetadata("CGImageMetadataTagAppendQualifier", 436, a2);
    free(a2);
  }

  CFRelease(a3);
}

void reconcileGPSTimeStamp_cold_1(const __CFString *a1, const __CFString *a2, CGImageMetadata *a3, uint64_t a4)
{
  XMPDateFromEXIFGPSDateAndTime = CreateXMPDateFromEXIFGPSDateAndTime(a1, a2);
  if (XMPDateFromEXIFGPSDateAndTime)
  {
    v8 = XMPDateFromEXIFGPSDateAndTime;
    CGImageMetadataSetValueWithPath(a3, 0, @"exif:GPSTimeStamp", XMPDateFromEXIFGPSDateAndTime);
    CFRelease(v8);
    CGImageMetadataRemoveTag(a3, a4);
  }

  CFRelease(a1);
}

CFTypeRef GlobalTIFFInfo::createDataRepresentation(GlobalTIFFInfo *this)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2) && OUTLINED_FUNCTION_1_12(*(this + 8), 0, 0, *v14, v14[2], 0) == 1 && OUTLINED_FUNCTION_0_28(*(this + 3), v6, buffer) == 4 && (!buffera || CFWriteStreamWrite(v3, *(this + 2), 8 * buffera) == 8 * buffera) && OUTLINED_FUNCTION_0_28(*(this + 6), v7, buffera) == 4 && (!bufferb || CFWriteStreamWrite(v3, *(this + 5), 8 * bufferb) == 8 * bufferb) && OUTLINED_FUNCTION_2_13(*(this + 8), v8) == 8 && OUTLINED_FUNCTION_2_13(*(this + 9), v9) == 8 && OUTLINED_FUNCTION_1_12(*(this + 80), v10, bufferb, SWORD2(bufferb), SBYTE6(bufferb), HIBYTE(bufferb)) == 1)
  {
    v4 = CFWriteStreamCopyProperty(v3, *MEMORY[0x1E695E900]);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

uint64_t GIFBufferInfo::readFromStream(GIFBufferInfo *this, CFReadStreamRef stream)
{
  v4 = *(this + 1);
  if (v4)
  {
    if (*(this + 16) == 1)
    {
      free(v4);
      *(this + 1) = 0;
    }
  }

  *buffer = 0;
  if (CFReadStreamRead(stream, buffer, 4) == 4)
  {
    if (*buffer != 1111902535)
    {
      return 0;
    }

    size = 0;
    if (CFReadStreamRead(stream, &size, 8) == 8)
    {
      if (size)
      {
        v5 = malloc_type_malloc(size, 0x100004077774924uLL);
        *(this + 1) = v5;
        v6 = CFReadStreamRead(stream, v5, size);
        if (size != v6)
        {
          return 4294967246;
        }

        *(this + 16) = 1;
      }

      if (CFReadStreamRead(stream, this + 20, 20) == 20)
      {
        return 0;
      }
    }
  }

  return 4294967246;
}

void GlobalGIFInfo::GlobalGIFInfo(uint64_t a1, void **a2)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a1 + 144) = v5;

    operator delete(v5);
  }
}

uint64_t GlobalMPOInfo::readFromStream(UInt8 *this, CFReadStreamRef stream)
{
  *v6 = 0;
  *buffer = 0;
  if (CFReadStreamRead(stream, buffer, 4) != 4)
  {
    return 4294967246;
  }

  if (*buffer != 1112493127)
  {
    return 0;
  }

  if (CFReadStreamRead(stream, v6, 8) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 3, *v6);
  if (*v6 >= 1)
  {
    operator new();
  }

  if (CFReadStreamRead(stream, this + 8, 16) == 16)
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t GlobalICNSInfo::readFromStream(GlobalICNSInfo *this, CFReadStreamRef stream)
{
  *buffer = 0;
  if (CFReadStreamRead(stream, buffer, 4) != 4)
  {
    return 4294967246;
  }

  if (*buffer != 1397637961)
  {
    return 0;
  }

  *(this + 1) = *this;
  v4 = this + 24;
  *(this + 4) = *(this + 3);
  *v28 = 0;
  v5 = CFReadStreamRead(stream, v28, 4);
  if (v5 != 4)
  {
    return 4294967246;
  }

  if (*v28)
  {
    v13 = 0;
    while (OUTLINED_FUNCTION_1_13(v5, v6, v7, v8, v9, v10, v11, v12, v24, v25, v26, v27) == 56)
    {
      std::vector<ICNS_INFO>::push_back[abi:fe200100](this, &v24);
      if (++v13 >= *v28)
      {
        goto LABEL_8;
      }
    }

    return 4294967246;
  }

LABEL_8:
  v14 = CFReadStreamRead(stream, v28, 4);
  if (v14 != 4)
  {
    return 4294967246;
  }

  if (*v28)
  {
    v22 = 0;
    while (OUTLINED_FUNCTION_1_13(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26, v27) == 56)
    {
      std::vector<ICNS_INFO>::push_back[abi:fe200100](v4, &v24);
      if (++v22 >= *v28)
      {
        return 0;
      }
    }

    return 4294967246;
  }

  return 0;
}

void GlobalICNSInfo::GlobalICNSInfo(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    OUTLINED_FUNCTION_0_29(v2, a1);
  }
}

uint64_t PBMReadPlugin::readWidthAndHeight(PBMReadPlugin *this, unsigned int *a2, unsigned int *a3)
{
  Int = PBMReadPlugin::readInt(this);
  if (Int < 1 || *(this + 25) <= Int)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = Int;
  }

  v7 = PBMReadPlugin::readInt(this);
  if (v7 < 1 || *(this + 25) <= v7)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return 1;
}

uint64_t PBMReadPlugin::readHeader(PBMReadPlugin *this, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  result = *(this + 64);
  if (!result)
  {
    return result;
  }

  v11 = *(this + 62);
  if (v11 > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v12 = v11 + 2;
  v13 = *(this + 65);
  if (v13 < v11 + 2)
  {
    return 0;
  }

  v14 = *(result + v11);
  v15 = *(result + v11 + 1);
  *(this + 62) = v12;
  if (v14 == 42 && v15 == 23)
  {
    v36 = v11 + 6;
    v37 = v12 <= 0xFFFFFFFFFFFFFFFBLL && v13 >= v36;
    if (!v37)
    {
      return 0;
    }

    v38 = (result + v12);
    v39 = *(result + v12 + 2);
    v40 = *(v38 + 3);
    LODWORD(v38) = *v38;
    *(this + 62) = v36;
    v41 = __rev16(v38);
    v53[1] = v41;
    v42 = *(this + 25);
    if (v42 <= v41)
    {
      return 0;
    }

    v43 = v40 | (v39 << 8);
    v53[0] = v43;
    if (v42 <= v43)
    {
      return 0;
    }

    v8 = 1;
    LODWORD(v44) = 0;
    result = 10;
LABEL_51:
    *(this + 61) = v53[1];
    *(this + 62) = v53[0];
    *(this + 59) = v8;
    *(this + 120) = fabsf(*&v44);
    if (v8)
    {
      if (v8 <= 255)
      {
        *(this + 128) = 8;
LABEL_54:
        v45 = *(this + 130);
        if (v45 >= 3)
        {
          if (v45 == 3)
          {
            v46 = 5;
          }

          else
          {
            v46 = 3;
          }

          *(this + 294) = v46;
          *(this + 290) = 262176;
          *(this + 295) = 0;
        }

        return result;
      }

      if (HIWORD(v8))
      {
        result = 0;
        if (*(this + 128) != 8)
        {
          return result;
        }

        goto LABEL_54;
      }

      v47 = 16;
    }

    else
    {
      if (*&v44 == 0.0)
      {
        return result;
      }

      *(this + 372) = *&v44 < 0.0;
      v47 = 32;
    }

    *(this + 128) = v47;
    return result;
  }

  if (v14 != 80)
  {
    return 0;
  }

  switch(v15)
  {
    case '1':
      if ((OUTLINED_FUNCTION_1_14(result, a2, v13, a4, a5, a6, a7, a8, v50, v51, v52, 0, 0) & 1) == 0)
      {
        return 0;
      }

      LODWORD(v44) = 0;
      result = 1;
      v8 = 1;
      goto LABEL_51;
    case '2':
      result = OUTLINED_FUNCTION_1_14(result, a2, v13, a4, a5, a6, a7, a8, v50, v51, v52, 0, 0);
      if (!result)
      {
        return result;
      }

      PBMReadPlugin::readInt(this);
      OUTLINED_FUNCTION_0_30();
      if (!v37)
      {
        return 0;
      }

      v44 = OUTLINED_FUNCTION_4_7();
      result = 2;
      goto LABEL_51;
    case '3':
      result = OUTLINED_FUNCTION_1_14(result, a2, v13, a4, a5, a6, a7, a8, v50, v51, v52, 0, 0);
      if (!result)
      {
        return result;
      }

      PBMReadPlugin::readInt(this);
      OUTLINED_FUNCTION_0_30();
      if (!v37)
      {
        return 0;
      }

      v44 = OUTLINED_FUNCTION_4_7();
      result = 3;
      goto LABEL_51;
    case '4':
      if ((OUTLINED_FUNCTION_1_14(result, a2, v13, a4, a5, a6, a7, a8, v50, v51, v52, 0, 0) & 1) == 0)
      {
        return 0;
      }

      v8 = 1;
      LODWORD(v44) = 0;
      result = 4;
      goto LABEL_51;
    case '5':
      result = OUTLINED_FUNCTION_1_14(result, a2, v13, a4, a5, a6, a7, a8, v50, v51, v52, 0, 0);
      if (!result)
      {
        return result;
      }

      PBMReadPlugin::readInt(this);
      OUTLINED_FUNCTION_0_30();
      if (!v37)
      {
        return 0;
      }

      v44 = OUTLINED_FUNCTION_4_7();
      result = 5;
      goto LABEL_51;
    case '6':
      result = OUTLINED_FUNCTION_1_14(result, a2, v13, a4, a5, a6, a7, a8, v50, v51, v52, 0, 0);
      if (!result)
      {
        return result;
      }

      PBMReadPlugin::readInt(this);
      OUTLINED_FUNCTION_0_30();
      if (!v37)
      {
        return 0;
      }

      v44 = OUTLINED_FUNCTION_4_7();
      result = 6;
      goto LABEL_51;
    case '7':
      result = strnstr(result, "ENDHDR", v13);
      if (!result)
      {
        return result;
      }

      v17 = result - *(this + 64);
      v18 = strnstr(*(this + 64), "WIDTH", v17);
      if (v18)
      {
        OUTLINED_FUNCTION_2_14(v18);
      }

      Int = PBMReadPlugin::readInt(this);
      if (Int < 1)
      {
        return 7;
      }

      v53[1] = Int;
      if (*(this + 25) <= Int)
      {
        return 7;
      }

      v20 = strnstr(*(this + 64), "HEIGHT", v17);
      if (v20)
      {
        OUTLINED_FUNCTION_2_14(v20);
      }

      v21 = PBMReadPlugin::readInt(this);
      if (v21 < 1)
      {
        return 7;
      }

      v53[0] = v21;
      if (*(this + 25) <= v21)
      {
        return 7;
      }

      v22 = strnstr(*(this + 64), "DEPTH", v17);
      if (v22)
      {
        OUTLINED_FUNCTION_2_14(v22);
      }

      v23 = PBMReadPlugin::readInt(this);
      *(this + 130) = v23;
      if (v23 > 4u)
      {
        return 7;
      }

      v24 = strnstr(*(this + 64), "MAXVAL", v17);
      if (v24)
      {
        OUTLINED_FUNCTION_2_14(v24);
      }

      PBMReadPlugin::readInt(this);
      OUTLINED_FUNCTION_0_30();
      if (!v37)
      {
        return 7;
      }

      v8 = v25;
      v26 = strnstr(*(this + 64), "TUPLTYPE", v17);
      v27 = *(this + 64);
      if (v26)
      {
        *(this + 62) = v26 - v27;
      }

      if (strnstr(v27, "RGB_ALPHA", v17))
      {
        if (*(this + 130) == 4)
        {
          *(this + 262) = 3;
          *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          *(this + 146) = *(this + 130);
LABEL_33:
          v28 = 1380401696;
LABEL_34:
          *(this + 85) = v28;
          goto LABEL_35;
        }

        v48 = "*** ERROR bad 'RGB_ALPHA':  expected %d channels got: %d channels\n";
        v49 = 404;
        goto LABEL_121;
      }

      if (strnstr(*(this + 64), "RGB", v17))
      {
        if (*(this + 130) == 3)
        {
          *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          *(this + 262) = 0;
          *(this + 130) = 3;
          if (*(this + 128) == 8)
          {
            *(this + 73) = 327684;
            goto LABEL_33;
          }

LABEL_35:
          v29 = v17 + 6;
          *(this + 62) = v17 + 6;
          v30 = *(this + 64);
          if (v30)
          {
            v31 = v17 + 7;
            if (v17 == -7)
            {
LABEL_75:
              v29 = -1;
              goto LABEL_80;
            }

            if (*(this + 65) >= v31)
            {
              v32 = *(v30 + v29);
              *(this + 62) = v31;
              v33 = *(this + 63);
              if ((*(v33 + v32) & 0xFE) != 0xFC)
              {
LABEL_79:
                v29 = v31;
                goto LABEL_80;
              }

              do
              {
                v29 = v31 + 1;
                if (v31 == -1)
                {
                  goto LABEL_75;
                }

                if (*(this + 65) < v29)
                {
                  goto LABEL_79;
                }

                v34 = *(v30 + v31);
                *(this + 62) = v29;
                v35 = *(v33 + v34) & 0xFE;
                v31 = v29;
              }

              while (v35 == 252);
            }
          }

LABEL_80:
          *(this + 62) = v29 - 1;
          LODWORD(v44) = 0;
          result = 7;
          goto LABEL_51;
        }

        v48 = "*** ERROR bad 'RGB':  expected %d channels got: %d channels\n";
        v49 = 412;
LABEL_121:
        _cg_jpeg_mem_term("readHeader", v49, v48);
        return 7;
      }

      if (strnstr(*(this + 64), "GRAYSCALE_ALPHA", v17))
      {
        if (*(this + 130) != 2)
        {
          v48 = "*** ERROR bad 'GRAYSCALE_ALPHA':  expected %d channels got: %d channels\n";
          v49 = 428;
          goto LABEL_121;
        }

        goto LABEL_78;
      }

      if (strnstr(*(this + 64), "GRAYSCALE", v17))
      {
        if (*(this + 130) != 1)
        {
          v48 = "*** ERROR bad 'GRAYSCALE':  expected %d channels got: %d channels\n";
          v49 = 435;
          goto LABEL_121;
        }
      }

      else
      {
        if (!strnstr(*(this + 64), "BLACKANDWHITE", v17))
        {
          if (!strnstr(*(this + 64), "BLACKANDWHITE_ALPHA", v17))
          {
            goto LABEL_35;
          }

          if (v8 != 1 && *(this + 130) != 2)
          {
            v48 = "*** ERROR bad 'BLACKANDWHITE_ALPHA'\n";
            v49 = 449;
            goto LABEL_121;
          }

LABEL_78:
          *(this + 262) = 3;
LABEL_107:
          *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
          v28 = 1196573017;
          goto LABEL_34;
        }

        if (v8 != 1 && *(this + 130) != 1)
        {
          v48 = "*** ERROR bad 'BLACKANDWHITE'\n";
          v49 = 442;
          goto LABEL_121;
        }
      }

      *(this + 262) = 0;
      goto LABEL_107;
    default:
      if (v15 == 70)
      {
        result = OUTLINED_FUNCTION_1_14(result, a2, v13, a4, a5, a6, a7, a8, v50, v51, v52, 0, 0);
        if (!result)
        {
          return result;
        }

        *&v44 = PBMReadPlugin::readFloat(this);
        v8 = 0;
        if (*&v44 != 0.0)
        {
          result = 9;
          goto LABEL_51;
        }

        return 0;
      }

      if (v15 != 102)
      {
        return 0;
      }

      result = OUTLINED_FUNCTION_1_14(result, a2, v13, a4, a5, a6, a7, a8, v50, v51, v52, 0, 0);
      if (result)
      {
        *&v44 = PBMReadPlugin::readFloat(this);
        v8 = 0;
        if (*&v44 != 0.0)
        {
          result = 8;
          goto LABEL_51;
        }

        return 0;
      }

      return result;
  }
}

uint64_t PBMReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v44 = 0;
  v45 = 0;
  seed = 0;
  if (!*(this + 3))
  {
    v22 = 0;
    goto LABEL_53;
  }

  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(this + 55) >> 24;
    v9 = MEMORY[0x1E69E9830];
    if (v8 <= 0x7F)
    {
      v10 = OUTLINED_FUNCTION_0(v8);
    }

    else
    {
      v10 = __maskrune(v8, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v10)
    {
      v12 = (v11 >> 24);
    }

    else
    {
      v12 = 46;
    }

    v13 = v11 << 8 >> 24;
    if (v13 <= 0x7F)
    {
      v14 = OUTLINED_FUNCTION_0(v13);
    }

    else
    {
      v14 = __maskrune(v13, 0x40000uLL);
      v15 = *(this + 55);
    }

    if (v14)
    {
      v16 = (v15 << 8 >> 24);
    }

    else
    {
      v16 = 46;
    }

    v17 = v15 >> 8;
    if (v17 <= 0x7F)
    {
      v18 = OUTLINED_FUNCTION_0(v17);
    }

    else
    {
      v18 = __maskrune(v17, 0x40000uLL);
      v19 = *(this + 55);
    }

    if (v18)
    {
      v20 = (v19 >> 8);
    }

    else
    {
      v20 = 46;
    }

    if (v19 <= 0x7F)
    {
      if ((*(v9 + 4 * v19 + 60) & 0x40000) != 0)
      {
        goto LABEL_23;
      }
    }

    else if (__maskrune(v19, 0x40000uLL))
    {
LABEL_23:
      v21 = *(this + 220);
LABEL_26:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v16, v20, v21, iioTypeStr[a3], "virtual OSStatus PBMReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_27;
    }

    v21 = 46;
    goto LABEL_26;
  }

LABEL_27:
  IIOReadPlugin::debugDecodeImage(this, a2);
  IIOImageReadSession::rewind(*(this + 3));
  v22 = IIOImageReadSession::mapData(*(this + 3));
  *(this + 64) = IIOImageReadSession::retainBytePointer(*(this + 3), &v44, 1);
  *(this + 65) = IIOImageReadSession::getSize(*(this + 3));
  *(this + 62) = *(this + 61);
  if (a3 != 3)
  {
    if (a3 == 1 && a4 && *a4)
    {
      IOSurfaceLock(*a4, 0, &seed);
      BaseAddress = IOSurfaceGetBaseAddress(*a4);
      Height = IOSurfaceGetHeight(*a4);
      v25 = IOSurfaceGetBytesPerRow(*a4) * Height;
      v45 = v25;
      v26 = 0.0;
      BlockArray = 4294967292;
      v28 = 1;
      v29 = 0.0;
      goto LABEL_33;
    }

LABEL_53:
    BlockArray = 4294967292;
    goto LABEL_54;
  }

  BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
  LODWORD(v30) = *(this + 77);
  v29 = v30;
  v31 = *(this + 78);
  v26 = v31;
  v25 = *(this + 79) * v31;
  BaseAddress = _ImageIO_Malloc(v25, *(this + 52), &v45, kImageMalloc_PBM_Data[0], 0, 0);
  v28 = 0;
LABEL_33:
  if (!BaseAddress)
  {
    goto LABEL_43;
  }

  bzero(BaseAddress, v25);
  BlockArray = (*(*this + 120))(this, BaseAddress, v25);
  if (BlockArray)
  {
    *(this + 26) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (*(this + 438) == 1)
  {
    v32 = *(this + 78);
    dest.data = BaseAddress;
    dest.height = v32;
    v33 = *(this + 79);
    dest.width = *(this + 77);
    dest.rowBytes = v33;
    vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
  }

  if (a3 != 3)
  {
    BlockArray = 0;
LABEL_43:
    if (!v28)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v34 = 0;
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = v29;
  v46.size.height = v26;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v45, v46, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v35 = 0;
  }

  else
  {
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    v47.size.width = v29;
    v47.size.height = v26;
    *(&v35 - 1) = CGRectUnion(*(this + 120), v47);
    v34 = v36;
    v29 = v37;
    v26 = v38;
  }

  BlockArray = 0;
  *(this + 15) = v34;
  *(this + 16) = v35;
  *(this + 17) = v29;
  *(this + 18) = v26;
  if ((v28 & 1) == 0)
  {
    goto LABEL_54;
  }

  BaseAddress = 0;
LABEL_48:
  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_49:
  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v45);
  }

LABEL_54:
  if (v44)
  {
    v39 = *(this + 3);
    if (v39)
    {
      IIOImageReadSession::releaseBytePointer(v39, v44);
    }
  }

  if (v22)
  {
    v40 = *(this + 3);
    if (v40)
    {
      IIOImageReadSession::unmapData(v40);
    }
  }

  return BlockArray;
}

void sub_1861F9384(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1861F9210);
}

void IIO_ColorSpaceNameCreateFromStream_cold_1(size_t size, _DWORD *a2, __CFReadStream *a3, CFStringRef *a4)
{
  v7 = malloc_type_malloc(size, 0x100004077774924uLL);
  v8 = CFReadStreamRead(a3, v7, *a2);
  if (v8 == *a2)
  {
    v9 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v7, v8, 0x8000100u, 1u);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  free(v7);
}

uint64_t IIOIOSurfaceWrapper::preCopyBlockSet(IIOIOSurfaceWrapper *this, int a2, CGRect a3, CGSize a4, IIODictionary *a5)
{
  OUTLINED_FUNCTION_10_1(this, a2, a5, a3, a4);
  v7 = IIO_CGImageBlockSetBytesPerPixelForPixelFormat(*(v5 + 88));
  v8 = v6 == 16 && *(v5 + 88) == 1815162994;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_8_1(v7 << v9);
  OUTLINED_FUNCTION_6_4(v10);
  if (v8)
  {
    *(v5 + 168) = OUTLINED_FUNCTION_5_3(v12 * v13, v11, (v5 + 176), kImageMalloc_IOSurface_Data);
  }

  return 0;
}

uint64_t IIOIOSurfaceWrapper_CIF10::preCopyBlockSet(IIOIOSurfaceWrapper_CIF10 *this, int a2, CGRect a3, CGSize a4, IIODictionary *a5)
{
  OUTLINED_FUNCTION_10_1(this, a2, a5, a3, a4);
  v7 = IIO_CGImageBlockSetBytesPerPixelForPixelFormat(*(v5 + 88));
  v8 = (v6 + 7) >> 3;
  if (v6 <= 8)
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_8_1(v7 * v8);
  OUTLINED_FUNCTION_6_4(v9);
  if (v13)
  {
    *(v5 + 168) = OUTLINED_FUNCTION_5_3(v11 * v12, v10, (v5 + 176), kImageMalloc_IOSurface_Data);
  }

  return 0;
}

uint64_t IIOIOSurfaceWrapper_YCC::copyImageBlockSet_420f_8bit(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v59 = 0;
  v8 = a6;
  v57 = 197121;
  v56 = 66051;
  v55 = xmmword_1EF4DCC88;
  v54 = xmmword_1EF4DCC98;
  v9 = IIOAlignRowBytes(vcvtd_n_u64_f64(a5, 2uLL), 0);
  if (!is_mul_ok(v8, v9))
  {
    return 0;
  }

  v11 = v9;
  v58 = 0;
  v12 = OUTLINED_FUNCTION_5_3(v8 * v9, v10, &v58, kImageMalloc_IOSurface_Data);
  v13 = OUTLINED_FUNCTION_2_15();
  v16 = IOSurfaceLock(v13, v14, v15);
  if (v16)
  {
    v17 = 0;
    if (!v12)
    {
      return v17;
    }

    goto LABEL_41;
  }

  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(*(a1 + 72), 0);
  v19 = IOSurfaceGetBaseAddressOfPlane(*(a1 + 72), 1uLL);
  v17 = 0;
  if (BaseAddressOfPlane)
  {
    v20 = v19;
    if (v19)
    {
      v53 = 0;
      IOSurfaceGetYCbCrMatrix();
      PixelFormat = IOSurfaceGetPixelFormat(*(a1 + 72));
      v22 = &unk_1ED569E00;
      if (PixelFormat == 875704438)
      {
        v22 = &unk_1ED569E80;
      }

      *&srcYp.height = vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL);
      srcYp.rowBytes = *(a1 + 112);
      dest.rowBytes = v11;
      srcCbCr.data = v20;
      *&srcCbCr.height = vextq_s8(*(a1 + 224), *(a1 + 224), 8uLL);
      srcCbCr.rowBytes = *(a1 + 240);
      srcYp.data = BaseAddressOfPlane;
      v23 = v22;
      dest.height = v8;
      dest.width = a5;
      dest.data = v12;
      ERROR_ImageIO_DataBufferIsNotReadable(BaseAddressOfPlane);
      ERROR_ImageIO_DataBufferIsNotReadable(v20);
      if (_MergedGlobals_3 != -1)
      {
        dispatch_once(&_MergedGlobals_3, &__block_literal_global_38);
      }

      if (*(a1 + 200))
      {
        v24 = &v56;
      }

      else
      {
        v24 = &v57;
      }

      v25 = vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, v23, v24, 0xFFu, 0);
      if (!v25)
      {
        v59 = CGImageBlockCreate();
        v17 = CGImageBlockSetCreate();
        v12 = 0;
        goto LABEL_40;
      }

      v27 = v25;
      OUTLINED_FUNCTION_7_1(v25, v26, *(a1 + 88), v25 | 0x800000000);
      v28 = *(a1 + 88) >> 24;
      v29 = MEMORY[0x1E69E9830];
      if (v28 <= 0x7F)
      {
        OUTLINED_FUNCTION_0_4(v28);
      }

      else
      {
        __maskrune(v28, 0x40000uLL);
      }

      OUTLINED_FUNCTION_4_8();
      if (v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = v31;
      }

      v35 = v30 << 8 >> 24;
      if (v35 <= 0x7F)
      {
        OUTLINED_FUNCTION_0_4(v35);
      }

      else
      {
        __maskrune(v35, 0x40000uLL);
      }

      OUTLINED_FUNCTION_4_8();
      if (v33)
      {
        v39 = v38;
      }

      else
      {
        v39 = v37;
      }

      v40 = v36 >> 8;
      if (v40 <= 0x7F)
      {
        OUTLINED_FUNCTION_0_4(v40);
      }

      else
      {
        __maskrune(v40, 0x40000uLL);
      }

      OUTLINED_FUNCTION_4_8();
      if (v33)
      {
        v44 = v43;
      }

      else
      {
        v44 = v42;
      }

      if (v41 <= 0x7F)
      {
        if ((*(v29 + 4 * v41 + 60) & 0x40000) != 0)
        {
          goto LABEL_36;
        }
      }

      else if (__maskrune(v41, 0x40000uLL))
      {
LABEL_36:
        v45 = *(a1 + 88);
LABEL_39:
        LogError("copyImageBlockSet_420f_8bit", 3559, "*** copyImageBlockSet_420f_8bit '%c%c%c%c' failed: err=%d\n", v34, v39, v44, v45, v27);
        v17 = 0;
        goto LABEL_40;
      }

      v45 = 46;
      goto LABEL_39;
    }
  }

LABEL_40:
  v46 = OUTLINED_FUNCTION_2_15();
  v16 = IOSurfaceUnlock(v46, v47, v48);
  if (v12)
  {
LABEL_41:
    OUTLINED_FUNCTION_9_1(v16, v58);
  }

  return v17;
}

uint64_t IIOIOSurfaceWrapper_YCC::copyImageBlockSet_xf20_10bit()
{
  OUTLINED_FUNCTION_3_11();
  v2 = v1;
  v66[0] = 0;
  v4 = v3;
  v64 = xmmword_1EF4DCC88;
  v63 = xmmword_1EF4DCC98;
  v5 = IIOAlignRowBytes(4 * *(v1 + 96), 0);
  if (!is_mul_ok(v4, v5))
  {
    return 0;
  }

  v7 = v5;
  v65 = 0;
  v8 = OUTLINED_FUNCTION_5_3(v4 * v5, v6, &v65, kImageMalloc_ATX_Data[0]);
  v9 = OUTLINED_FUNCTION_2_15();
  v12 = IOSurfaceLock(v9, v10, v11);
  if (v12)
  {
    v13 = 0;
    if (!v8)
    {
      return v13;
    }

    goto LABEL_50;
  }

  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(*(v2 + 72), 0);
  v15 = IOSurfaceGetBaseAddressOfPlane(*(v2 + 72), 1uLL);
  v61 = vextq_s8(*(v2 + 96), *(v2 + 96), 8uLL);
  v62 = *(v2 + 112);
  v56[3] = v7;
  v57 = v15;
  v58 = vextq_s8(*(v2 + 224), *(v2 + 224), 8uLL);
  v59 = *(v2 + 240);
  v60 = BaseAddressOfPlane;
  v56[1] = v4;
  v56[2] = v0;
  v56[0] = v8;
  IOSurfaceGetYCbCrMatrix();
  RangeOfComponentOfPlane = IOSurfaceGetRangeOfComponentOfPlane(*(v2 + 72), 0, 0);
  v20 = *(v2 + 88);
  v21 = v20 == 2019963956 || v20 == 2019963442;
  if (v21)
  {
    IOSurfaceWithFormat = IIO_CreateIOSurfaceWithFormat(*(v2 + 96), *(v2 + 104), 4 * *(v2 + 96), 1815162994, 0, v17, v18, v19);
    if (!IOSurfaceWithFormat)
    {
      goto LABEL_16;
    }

    v23 = IOSurfaceWithFormat;
    v24 = IIO_ConvertIOSurfaceToIOSurface(*(v2 + 72), IOSurfaceWithFormat);
    if (!IOSurfaceLock(v23, 1u, 0))
    {
      v55 = v24;
      BytesPerRow = IOSurfaceGetBytesPerRow(v23);
      BaseAddress = IOSurfaceGetBaseAddress(v23);
      if (BytesPerRow == v7)
      {
        memcpy(v8, BaseAddress, *(v2 + 104) * v7);
      }

      else
      {
        if (BytesPerRow >= v7)
        {
          v30 = v7;
        }

        else
        {
          v30 = BytesPerRow;
        }

        if (*(v2 + 104))
        {
          v31 = 1;
          v32 = v8;
          do
          {
            memcpy(v32, BaseAddress, v30);
            BaseAddress += BytesPerRow;
            v32 = (v32 + v7);
          }

          while (*(v2 + 104) > v31++);
        }
      }

      IOSurfaceUnlock(v23, 1u, 0);
      v24 = v55;
    }

    CFRelease(v23);
    if (!v24)
    {
      goto LABEL_16;
    }
  }

  else if (v20 != 2019963440 || (XF20toRGB16fConversionInfo = GetXF20toRGB16fConversionInfo(0, RangeOfComponentOfPlane == kIOSurfaceComponentRangeVideoRange), v28 = ConvertXF20toRGBA1010102(&v60, &v57, v56, XF20toRGB16fConversionInfo, 0), (v24 = v28) == 0))
  {
LABEL_16:
    v66[0] = CGImageBlockCreate();
    v13 = CGImageBlockSetCreate();
    v8 = 0;
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_7_1(v28, v29, *(v2 + 88), v24 | 0xA00000000);
  v34 = *(v2 + 88) >> 24;
  v35 = MEMORY[0x1E69E9830];
  if (v34 <= 0x7F)
  {
    OUTLINED_FUNCTION_0_4(v34);
  }

  else
  {
    __maskrune(v34, 0x40000uLL);
  }

  OUTLINED_FUNCTION_4_8();
  if (v21)
  {
    v39 = v38;
  }

  else
  {
    v39 = v37;
  }

  v40 = v36 << 8 >> 24;
  if (v40 <= 0x7F)
  {
    OUTLINED_FUNCTION_0_4(v40);
  }

  else
  {
    __maskrune(v40, 0x40000uLL);
  }

  OUTLINED_FUNCTION_4_8();
  if (v21)
  {
    v44 = v43;
  }

  else
  {
    v44 = v42;
  }

  v45 = v41 >> 8;
  if (v45 <= 0x7F)
  {
    OUTLINED_FUNCTION_0_4(v45);
  }

  else
  {
    __maskrune(v45, 0x40000uLL);
  }

  OUTLINED_FUNCTION_4_8();
  if (v21)
  {
    v49 = v48;
  }

  else
  {
    v49 = v47;
  }

  if (v46 <= 0x7F)
  {
    if ((*(v35 + 4 * v46 + 60) & 0x40000) != 0)
    {
      goto LABEL_45;
    }

LABEL_47:
    v50 = 46;
    goto LABEL_48;
  }

  if (!__maskrune(v46, 0x40000uLL))
  {
    goto LABEL_47;
  }

LABEL_45:
  v50 = *(v2 + 88);
LABEL_48:
  LogError("copyImageBlockSet_xf20_10bit", 3681, "*** copyImageBlockSet_xf20_10bit '%c%c%c%c' failed: err=%d\n", v39, v44, v49, v50, v24);
  v13 = 0;
LABEL_49:
  v51 = OUTLINED_FUNCTION_2_15();
  v12 = IOSurfaceUnlock(v51, v52, v53);
  if (v8)
  {
LABEL_50:
    OUTLINED_FUNCTION_9_1(v12, v65);
  }

  return v13;
}

uint64_t IIOIOSurfaceWrapper_YCC::copyImageBlockSetWithOptions8Bit(uint64_t a1, uint64_t a2, IIODictionary *x2_0, void *x3_0)
{
  OUTLINED_FUNCTION_3_11();
  v7 = v6;
  pthread_mutex_lock((v6 + 8));
  IIOIOSurfaceWrapperBase::preCopyBlockSet(v7, 8, v19, v18, x2_0);
  v8 = OUTLINED_FUNCTION_1_15();
  v14 = IIOIOSurfaceWrapper_YCC::copyImageBlockSet_420f_8bit(v9, v10, v8, v11, v12, v13);
  v15 = OUTLINED_FUNCTION_1_15();
  *x3_0 = v16(v15);
  pthread_mutex_unlock((v7 + 8));
  return v14;
}

uint64_t IIOIOSurfaceWrapper_YCC::copyImageBlockSetWithOptions10Bit(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_3_11();
  v6 = v5;
  pthread_mutex_lock((v5 + 8));
  *(v6 + 200) = 0;
  OUTLINED_FUNCTION_1_15();
  v7 = IIOIOSurfaceWrapper_YCC::copyImageBlockSet_xf20_10bit();
  v8 = OUTLINED_FUNCTION_1_15();
  *a4 = v9(v8);
  pthread_mutex_unlock((v6 + 8));
  return v7;
}

void __CGImagePropertiesCreateFromMetadata_block_invoke_cold_1()
{
  if (__cxa_guard_acquire(_MergedGlobals_4))
  {
    qword_1ED56A108 = @"CiAdrCity";
    unk_1ED56A110 = @"CiAdrCity";
    qword_1ED56A118 = @"CiAdrCtry";
    unk_1ED56A120 = @"CiAdrCtry";
    qword_1ED56A128 = @"CiAdrExtadr";
    unk_1ED56A130 = @"CiAdrExtadr";
    qword_1ED56A138 = @"CiAdrPcode";
    unk_1ED56A140 = @"CiAdrPcode";
    qword_1ED56A148 = @"CiAdrRegion";
    unk_1ED56A150 = @"CiAdrRegion";
    qword_1ED56A158 = @"CiEmailWork";
    unk_1ED56A160 = @"CiEmailWork";
    qword_1ED56A168 = @"CiTelWork";
    unk_1ED56A170 = @"CiTelWork";
    qword_1ED56A178 = @"CiUrlWork";
    unk_1ED56A180 = @"CiUrlWork";
    qword_1ED56A188 = 0;
    unk_1ED56A190 = 0;
    __cxa_guard_release(_MergedGlobals_4);
  }
}

const char *IIOSubsampler::subsampleRGB888(uint64_t a1)
{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGB888", 335, "*** ERROR: vImageConvert_RGB888toARGB8888 err = %ld (%s)\n", a1, v2);
}

{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGB888", 338, "*** ERROR: vImageScale_ARGB8888 err = %ld (%s)\n", a1, v2);
}

{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGB888", 364, "*** ERROR: vImageConvert_ARGB8888toRGB888 err = %ld (%s)\n", a1, v2);
}

const char *IIOSubsampler::subsampleRGBA8888(uint64_t a1)
{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGBA8888", 442, "*** ERROR: vImageUnpremultiplyData_RGBA8888 err = %ld (%s)\n", a1, v2);
}

{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGBA8888", 437, "*** ERROR: vImageUnpremultiplyData_ARGB8888 err = %ld (%s)\n", a1, v2);
}

{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGBA8888", 446, "*** ERROR: vImageScale_ARGB8888 err = %ld (%s)\n", a1, v2);
}

{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGBA8888", 456, "*** ERROR: vImagePremultiplyData_RGBA8888 err = %ld (%s)\n", a1, v2);
}

{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGBA8888", 451, "*** ERROR: vImagePremultiplyData_ARGB8888 err = %ld (%s)\n", a1, v2);
}

const char *IIOSubsampler::subsampleRGBA16(int a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_16(a1, a2);
  OUTLINED_FUNCTION_0_31();
  if (!v3)
  {
    v2 = 70;
  }

  return LogError("subsampleRGBA16", 514, "*** ERROR: vImageUnpremultiplyData_RGBA16%c err = %ld (%s)\n", v2, v5, v6);
}

{
  OUTLINED_FUNCTION_1_16(a1, a2);
  OUTLINED_FUNCTION_0_31();
  if (!v3)
  {
    v2 = 70;
  }

  return LogError("subsampleRGBA16", 522, "*** ERROR: vImageScale_ARGB16%c err = %ld (%s)\n", v2, v5, v6);
}

{
  OUTLINED_FUNCTION_1_16(a1, a2);
  OUTLINED_FUNCTION_0_31();
  if (!v3)
  {
    v2 = 70;
  }

  return LogError("subsampleRGBA16", 538, "*** ERROR: vImagePremultiplyData_RGBA16%c err = %ld (%s)\n", v2, v5, v6);
}

const char *IIOSubsampler::subsampleRGBA16(uint64_t a1)
{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGBA16", 506, "*** ERROR: vImageUnpremultiplyData_ARGB16U err = %ld (%s)\n", a1, v2);
}

{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGBA16", 530, "*** ERROR: vImagePremultiplyData_ARGB16U err = %ld (%s)\n", a1, v2);
}

const char *IIOSubsampler::subsampleRGBA32(int a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_16(a1, a2);
  OUTLINED_FUNCTION_0_31();
  if (!v3)
  {
    v2 = 70;
  }

  return LogError("subsampleRGBA32", 588, "*** ERROR: vImageUnpremultiplyData_RGBA16%c err = %ld (%s)\n", v2, v5, v6);
}

{
  OUTLINED_FUNCTION_1_16(a1, a2);
  OUTLINED_FUNCTION_0_31();
  if (!v3)
  {
    v2 = 70;
  }

  return LogError("subsampleRGBA32", 596, "*** ERROR: vImageScale_ARGB16%c err = %ld (%s)\n", v2, v5, v6);
}

{
  OUTLINED_FUNCTION_1_16(a1, a2);
  OUTLINED_FUNCTION_0_31();
  if (!v3)
  {
    v2 = 70;
  }

  return LogError("subsampleRGBA32", 612, "*** ERROR: vImagePremultiplyData_RGBA16%c err = %ld (%s)\n", v2, v5, v6);
}

const char *IIOSubsampler::subsampleRGBA32(uint64_t a1)
{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGBA32", 580, "*** ERROR: vImageUnpremultiplyData_ARGB16U err = %ld (%s)\n", a1, v2);
}

{
  v2 = IIO_vImageErrorString(a1);
  return LogError("subsampleRGBA32", 604, "*** ERROR: vImagePremultiplyData_ARGB16U err = %ld (%s)\n", a1, v2);
}

CFTypeRef _copyIOSurfaceCallback(const void *a1, uint64_t a2)
{
  Property = CGImageProviderGetProperty();
  if (!a1 || Property)
  {
    return 0;
  }

  return IIOFrameBufferRetain(a1);
}

void IIOImageSource::setupWithProxyData()
{
  _cg_jpeg_mem_term("setupWithProxyData", 60, "*** ERROR: proxy base is missing\n");
}

{
  _cg_jpeg_mem_term("setupWithProxyData", 61, "*** ERROR: container properties are missing\n");
}

{
  _cg_jpeg_mem_term("setupWithProxyData", 64, "*** ERROR: proxy image properties are missing\n");
}

void IIO_Reader_PNG::getImageCount()
{
  _cg_jpeg_mem_term("getImageCount", 319, "*** ERROR: bad 'acTL' chunk (after 'IDAT')\n");
}

{
  _cg_jpeg_mem_term("getImageCount", 296, "*** ERROR: bad PNG - multiple 'IHDR' chunks in PNG are not allowed\n");
}

void GIFReadPlugin::initialize()
{
  _cg_jpeg_mem_term("initialize", 470, "    GIF-ERROR: realloc(%d) failed\n");
}

{
  _cg_jpeg_mem_term("initialize", 476, "    GIF-ERROR: DGifGetExtensionNext (%d)\n");
}

{
  _cg_jpeg_mem_term("initialize", 459, "    GIF-ERROR: DGifGetExtension (%d)\n");
}

{
  _cg_jpeg_mem_term("initialize", 319, "globalGifInfo is NULL\n");
}

uint64_t GIFReadPlugin::doDecodeImageData(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    return MEMORY[0x186602830](result, 0x1000C8033FC2DF1);
  }

  return result;
}

uint64_t EXRReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v42 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(this + 55) >> 24;
  v9 = MEMORY[0x1E69E9830];
  if (v8 <= 0x7F)
  {
    v10 = OUTLINED_FUNCTION_0(v8);
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v11 = *(this + 55);
  }

  if (v10)
  {
    v12 = (v11 >> 24);
  }

  else
  {
    v12 = 46;
  }

  v13 = v11 << 8 >> 24;
  if (v13 <= 0x7F)
  {
    v14 = OUTLINED_FUNCTION_0(v13);
  }

  else
  {
    v14 = __maskrune(v13, 0x40000uLL);
    v15 = *(this + 55);
  }

  if (v14)
  {
    v16 = (v15 << 8 >> 24);
  }

  else
  {
    v16 = 46;
  }

  v17 = v15 >> 8;
  if (v17 <= 0x7F)
  {
    v18 = OUTLINED_FUNCTION_0(v17);
  }

  else
  {
    v18 = __maskrune(v17, 0x40000uLL);
    v19 = *(this + 55);
  }

  if (v18)
  {
    v20 = (v19 >> 8);
  }

  else
  {
    v20 = 46;
  }

  if (v19 <= 0x7F)
  {
    if ((*(v9 + 4 * v19 + 60) & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v21 = 46;
    goto LABEL_25;
  }

  if (!__maskrune(v19, 0x40000uLL))
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(this + 220);
LABEL_25:
  ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v16, v20, v21, iioTypeStr[a3], "virtual OSStatus EXRReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v22 = *(this + 3);
  if (v22)
  {
    v23 = IIOImageReadSession::mapData(v22);
  }

  else
  {
    v23 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v31) = *(this + 77);
    v30 = v31;
    v32 = *(this + 78);
    v28 = v32;
    v27 = *(this + 79) * v32;
    BaseAddress = _ImageIO_Malloc(v27, *(this + 52), &v42, kImageMalloc_EXR_Data[0], 0, 0);
    v29 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 0;
      goto LABEL_53;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v27 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v42 = v27;
    v28 = 0.0;
    v29 = 1;
    v30 = 0.0;
  }

  if (!BaseAddress)
  {
LABEL_44:
    if (!v29)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v33 = EXRReadPlugin::decodeBlockAppleEXR(this, BaseAddress, v27);
  if (v33)
  {
    BlockArray = v33;
    *(this + 26) = 0;
    if ((v29 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_44;
  }

  v34 = 0;
  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = v30;
  v43.size.height = v28;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v27, v43, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v35 = 0;
  }

  else
  {
    v44.origin.x = 0.0;
    v44.origin.y = 0.0;
    v44.size.width = v30;
    v44.size.height = v28;
    *(&v35 - 1) = CGRectUnion(*(this + 120), v44);
    v34 = v36;
    v30 = v37;
    v28 = v38;
  }

  BlockArray = 0;
  *(this + 15) = v34;
  *(this + 16) = v35;
  *(this + 17) = v30;
  *(this + 18) = v28;
  if ((v29 & 1) == 0)
  {
    goto LABEL_53;
  }

  BaseAddress = 0;
LABEL_49:
  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_50:
  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v42);
  }

LABEL_53:
  if (v23)
  {
    v39 = *(this + 3);
    if (v39)
    {
      IIOImageReadSession::unmapData(v39);
    }
  }

  return BlockArray;
}

const char *EXRReadPlugin::decodeBlockAppleEXR(uint64_t a1, void *a2)
{
  name = gFunc_axr_error_get_name(a1);
  return LogError("decodeBlockAppleEXR", 400, "*** axr_data_create failed: %s (%d)\n", name, *a2);
}

{
  name = gFunc_axr_error_get_name(a1);
  return LogError("decodeBlockAppleEXR", 434, "*** axr_decoder_read_pixels failed: %s (%d)\n", name, *a2);
}

uint64_t TGAReadPlugin::decodeRLE(TGAReadPlugin *this, char *a2)
{
  v4 = *(this + 78);
  v5 = *(this + 77);
  v6 = *(this + 79);
  v7 = *(this + 466);
  v8 = *(this + 480);
  OUTLINED_FUNCTION_0_12();
  v11 = malloc_type_malloc(v9, v10);
  if (!v11)
  {
    return 4294967243;
  }

  v12 = v11;
  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(*(this + 3), v11, *(this + 26), *(this + 61));
  if (BytesAtOffset == *(this + 61))
  {
    v14 = 0;
    v15 = 0;
    v16 = &v12[BytesAtOffset];
    v17 = (v7 & 3) == 2 && ((v8 + 1) & 0x1F0) == 16;
    v18 = 4;
    if (!v17)
    {
      v18 = (v8 + 1) >> 3;
    }

    if (*(this + 497))
    {
      v19 = v4 - 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = &a2[v19 * v6];
    v21 = v12;
    do
    {
      if (v4 <= v15)
      {
        break;
      }

      v22 = *v21;
      v23 = (*v21 & 0x7F) + 1;
      if (v14 + v23 > v5 && v14 + v23 + 1 > (v4 - v15) * v5)
      {
        goto LABEL_46;
      }

      v24 = v22;
      v25 = v22 < 0 ? 0 : (v8 + 1) >> 3;
      v26 = (v21 + 2);
      do
      {
        switch((v8 + 1) >> 3)
        {
          case 1uLL:
            if ((v26 - 1) >= v16)
            {
              goto LABEL_46;
            }

            *v20 = *(v26 - 1);
            break;
          case 2uLL:
            if (v26 >= v16)
            {
              goto LABEL_46;
            }

            if ((v7 & 3) == 2)
            {
              v28 = *v26;
              v29 = *(v26 - 1);
              v20[2] = (2 * *v26) & 0xF8 | (*v26 >> 4) & 7;
              v20[1] = ((v29 | (v28 << 8)) >> 2) & 0xF8 | ((v29 | (v28 << 8)) >> 7) & 7;
              v27 = (8 * v29) | (v29 >> 2) & 7;
              goto LABEL_29;
            }

            *v20 = *(v26 - 1);
            v20[1] = *v26;
            break;
          case 3uLL:
            if ((v26 + 1) >= v16)
            {
              goto LABEL_46;
            }

            v20[2] = v26[1];
            v20[1] = *v26;
            LOBYTE(v27) = *(v26 - 1);
LABEL_29:
            *v20 = v27;
            if (v18 == 4)
            {
              v20[3] = -1;
            }

            break;
          case 4uLL:
            if ((v26 + 2) >= v16)
            {
              goto LABEL_46;
            }

            v20[2] = v26[1];
            v20[1] = *v26;
            *v20 = *(v26 - 1);
            v20[3] = v26[2];
            break;
          default:
            break;
        }

        if (++v14 == v5)
        {
          v14 = 0;
          if (*(this + 497))
          {
            v30 = v4 - 2 - v15;
          }

          else
          {
            v30 = v15 + 1;
          }

          ++v15;
          v20 = &a2[v30 * v6];
        }

        else
        {
          v20 += v18;
        }

        v26 += v25;
        LODWORD(v23) = v23 - 1;
      }

      while (v23);
      v31 = v24 < 0 ? (v8 + 1) >> 3 : 0;
      v21 = &v26[v31 - 1];
    }

    while (v21 < v16);
    if (*(this + 480) == 32)
    {
      TGAReadPlugin::adjustAlphaIfNeeded(this, a2);
    }

    v32 = 0;
  }

  else
  {
LABEL_46:
    v32 = 4294967243;
  }

  free(v12);
  return v32;
}

uint64_t TGAReadPlugin::decodeUncompressed(TGAReadPlugin *this, char *a2)
{
  v5 = *(this + 70);
  v6 = *(this + 69);
  v7 = *(this + 63);
  v8 = *(this + 79);
  if (!*(this + 465) || *(this + 466) != 1)
  {
    v14 = *(this + 480);
    switch(v14)
    {
      case 8:
        v37 = *(this + 130) != 1 || v5 == 0;
        if (!v37)
        {
          OUTLINED_FUNCTION_4_9();
          while (OUTLINED_FUNCTION_1_17() == v7)
          {
            OUTLINED_FUNCTION_2_16();
            if (v37)
            {
              goto LABEL_71;
            }
          }

          return 4294967243;
        }

        goto LABEL_71;
      case 15:
        if (*(this + 130) != 3)
        {
          goto LABEL_71;
        }

        OUTLINED_FUNCTION_0_12();
        v11 = malloc_type_malloc(2 * v6, v15);
        if (!v5)
        {
          goto LABEL_70;
        }

        v16 = 0;
        while (OUTLINED_FUNCTION_3_12() == 2 * v6)
        {
          if (v6)
          {
            OUTLINED_FUNCTION_6_5();
            v18 = &a2[v17 * v8 + 3];
            v19 = v6;
            v20 = v11;
            do
            {
              v21 = *v20;
              *(v18 - 2) = *v20 & 0xF8 | (*v20 >> 5);
              v22 = v20[1];
              *(v18 - 3) = ((v22 | (v21 << 8)) >> 3) & 0xF8 | v21 & 7;
              *(v18 - 1) = (4 * v22) & 0xF8 | (v22 >> 3) & 7;
              *v18 = -1;
              v18 += 4;
              v20 += 2;
              --v19;
            }

            while (v19);
          }

          if (++v16 == v5)
          {
            goto LABEL_70;
          }
        }

        break;
      case 16:
        v26 = *(this + 130);
        if (v26 != 3)
        {
          if (v26 == 2 && v5)
          {
            OUTLINED_FUNCTION_4_9();
            while (OUTLINED_FUNCTION_1_17() == v7)
            {
              OUTLINED_FUNCTION_2_16();
              if (v37)
              {
                goto LABEL_71;
              }
            }

            return 4294967243;
          }

          goto LABEL_71;
        }

        OUTLINED_FUNCTION_0_12();
        v28 = malloc_type_malloc(v7, v27);
        v11 = v28;
        if (!v5)
        {
          goto LABEL_70;
        }

        v29 = 0;
        v47 = v28 + 1;
        while (1)
        {
          v30 = *(this + 497);
          if (OUTLINED_FUNCTION_3_12() != v7)
          {
            break;
          }

          if (v6)
          {
            v31 = ~v29 + v5;
            if (!v30)
            {
              v31 = v29;
            }

            v32 = v47;
            v33 = &a2[v31 * v8 + 3];
            v34 = v6;
            do
            {
              v35 = *v32;
              v36 = *(v32 - 1);
              *(v33 - 1) = (2 * *v32) & 0xF8 | (*v32 >> 4) & 7;
              *(v33 - 2) = ((v36 | (v35 << 8)) >> 2) & 0xF8 | ((v36 | (v35 << 8)) >> 7) & 7;
              *(v33 - 3) = (8 * v36) | (v36 >> 2) & 7;
              *v33 = -1;
              v33 += 4;
              v32 += 2;
              --v34;
            }

            while (v34);
          }

          if (++v29 == v5)
          {
            goto LABEL_70;
          }
        }

        break;
      case 24:
        OUTLINED_FUNCTION_0_12();
        v11 = malloc_type_malloc(v8, v23);
        v49.data = v11;
        v49.height = 1;
        v49.width = v6;
        v49.rowBytes = v7;
        *&v48.data = xmmword_186205EC0;
        v48.width = v6;
        v48.rowBytes = v8;
        if (v5)
        {
          v24 = v5 - 1;
          while (OUTLINED_FUNCTION_5_4() == v7)
          {
            if (v2)
            {
              v25 = v24;
            }

            else
            {
              v25 = 0;
            }

            v48.data = &a2[v25 * v8];
            vImageConvert_RGB888toRGBA8888(&v49, 0, 0xFFu, &v48, 0, 0);
            OUTLINED_FUNCTION_7_2();
            if (v37)
            {
              goto LABEL_70;
            }
          }

          goto LABEL_82;
        }

        goto LABEL_70;
      default:
        if (v14 == 32 && v5)
        {
          OUTLINED_FUNCTION_4_9();
          while (OUTLINED_FUNCTION_1_17() == v7)
          {
            OUTLINED_FUNCTION_2_16();
            if (v37)
            {
              goto LABEL_71;
            }
          }

          return 4294967243;
        }

        goto LABEL_71;
    }

LABEL_81:
    if (!v11)
    {
      return 4294967243;
    }

LABEL_82:
    free(v11);
    return 4294967243;
  }

  v9 = *(this + 480);
  if (v9 == 16)
  {
    OUTLINED_FUNCTION_0_12();
    v11 = malloc_type_malloc(v7, v38);
    if (v5)
    {
      v39 = 0;
      while (OUTLINED_FUNCTION_3_12() == v7)
      {
        if (v6 >= 3)
        {
          OUTLINED_FUNCTION_6_5();
          v41 = &a2[v40 * v8];
          v42 = v11 + 1;
          v43 = 2 * (v6 / 3);
          do
          {
            v44 = *v42;
            v45 = *(v42 - 1);
            *v41 = (2 * v44) & 0xF8;
            v41[1] = ((v45 | (v44 << 8)) >> 2) & 0xF8;
            v41[2] = 8 * v45;
            v41 += 3;
            v42 += 2;
            --v43;
          }

          while (v43);
        }

        if (++v39 == v5)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_81;
    }

LABEL_70:
    free(v11);
    goto LABEL_71;
  }

  if (v9 == 8)
  {
    OUTLINED_FUNCTION_0_12();
    v11 = malloc_type_malloc(v7, v10);
    if (v5)
    {
      v12 = v5 - 1;
      while (OUTLINED_FUNCTION_5_4() == v7)
      {
        if (v2)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        memcpy(&a2[v13 * v8], v11, v7);
        OUTLINED_FUNCTION_7_2();
        if (v37)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_81;
    }

    goto LABEL_70;
  }

LABEL_71:
  if (*(this + 480) == 32)
  {
    TGAReadPlugin::adjustAlphaIfNeeded(this, a2);
  }

  return 0;
}

void TGAReadPlugin::sanityCheck()
{
  _cg_jpeg_mem_term("sanityCheck", 474, "*** invalid height (%d)\n");
}

{
  _cg_jpeg_mem_term("sanityCheck", 473, "*** invalid width (%d)\n");
}

uint64_t PSDWritePlugin::writeLayerMaskBlock8bit(IIOImageWriteSession **this, uint64_t (**a2)(IIOImagePixelDataProvider *, void *), uint64_t a3, unint64_t a4, PSDWritePlugin *size, __int16 a6, unint64_t a7, int a8)
{
  v86 = *MEMORY[0x1E69E9840];
  v14 = malloc_type_malloc(size, 0xDF22B655uLL);
  v67 = 0uLL;
  v80 = 0x6D726F6E4D494238;
  v81 = 255;
  v83 = gExtraData8bit;
  __ptr = 0;
  v75 = 0;
  v77 = 0;
  v79 = 0;
  v69 = -1;
  v70 = 0;
  v71 = bswap32(a4);
  v72 = bswap32(a3);
  v73 = 4294902784;
  v74 = 0;
  v78 = 512;
  v82 = 805306368;
  v76 = 256;
  v84 = *"8BIMluni";
  v85 = xmmword_1862273A0;
  v62 = 256;
  v65 = 0u;
  v66 = 0u;
  v15 = 2 * a4;
  v63 = 0u;
  v64 = 0u;
  v16 = malloc_type_malloc(2 * a4 * a7, 0x1000040BDFB0063uLL);
  if (v16)
  {
    v60 = a6;
    v17 = a4 * a3;
    OUTLINED_FUNCTION_0_12();
    v52 = v18;
    v53 = a3;
    v20 = malloc_type_malloc(v18, v19);
    v21 = v20;
    if (v20)
    {
      if (a8)
      {
        v22 = -1;
      }

      else
      {
        v22 = 0;
      }

      v67 = vbslq_s8(vdupq_n_s32(v22), xmmword_186205980, xmmword_186207DF0);
      v58 = v17;
      if (a4)
      {
        v50 = 2 * a4;
        v51 = this;
        v54 = v20;
        v23 = 0;
        v24 = 0;
        v59 = a7;
        v25 = v60;
        do
        {
          Bytes = IIOImagePixelDataProvider::getBytes(a2, v14);
          if (Bytes != size)
          {
            break;
          }

          v57 = v24;
          v27 = v14;
          v28 = a4;
          v29 = v52;
          if (a7)
          {
            v30 = 0;
            v61 = &v16[2 * v23];
            v31 = 1;
            do
            {
              v32 = *(&v63 + v30);
              v33 = v27;
              v34 = v29;
              Bytes = PSDWritePlugin::PackBits(Bytes, &v27[v67.i32[v30]], v25, v53, &v54[v30 * v58 + v32], &v54[v29], 0);
              v29 = v34;
              v27 = v33;
              *&v61[2 * v30 * v28] = __rev16(Bytes);
              v35 = v32 + Bytes;
              a7 = v59;
              *(&v63 + v30) = v35;
              v30 = v31++;
            }

            while (v30 < v59);
          }

          v23 = (v57 + 1);
          v24 = v57 + 1;
          v14 = v27;
          a4 = v28;
        }

        while (v23 < v28);
        v36 = DWORD2(v63);
        v37 = v63;
        v38 = DWORD2(v64);
        v39 = v64;
        this = v51;
        v21 = v54;
        v15 = v50;
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v36 = 0;
        v37 = 0;
      }

      v40 = v15 + 2 + v37;
      v41 = v15 + 2 + v36;
      v42 = v15 + 2 + v39;
      v43 = v15 + 2 + v38;
      HIDWORD(v73) = bswap32(v40);
      v75 = bswap32(v41);
      v77 = bswap32(v42);
      v79 = bswap32(v43);
      __ptr = vrev32_s8(vadd_s32(vdup_n_s32(v41 + v40 + v42 + v43), 0x6C00000070));
      IIOImageWriteSession::putBytes(this[2], &__ptr, 0x74uLL);
      if (!a7)
      {
LABEL_21:
        v48 = 0;
        if (!v14)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v44 = 0;
      v45 = 1;
      while (IIOImageWriteSession::putBytes(this[2], &v62, 2uLL) == 2)
      {
        if (IIOImageWriteSession::putBytes(this[2], &v16[2 * v44 * a4], v15) != v15)
        {
          break;
        }

        v46 = &v21[v44 * v58];
        v47 = *(&v63 + v44);
        if (IIOImageWriteSession::putBytes(this[2], v46, v47) != v47)
        {
          break;
        }

        v44 = v45++;
        if (v44 >= a7)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v48 = 4294967246;
  if (v14)
  {
LABEL_22:
    free(v14);
  }

LABEL_23:
  if (v21)
  {
    free(v21);
  }

  if (v16)
  {
    free(v16);
  }

  return v48;
}

uint64_t PSDWritePlugin::writeLayerMaskBlock16bit(IIOImageWriteSession **this, uint64_t (**a2)(IIOImagePixelDataProvider *, void *), unint64_t a3, unint64_t a4, size_t size, unint64_t a6, unint64_t a7, unsigned int a8)
{
  v86 = *MEMORY[0x1E69E9840];
  v13 = malloc_type_malloc(size, 0x17725C9BuLL);
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v65 = 909210188;
  *__ptr = 0u;
  v61 = 0;
  v73 = 0;
  v75 = 0;
  v77 = 0;
  *&__ptr[12] = xmmword_186227370;
  v66 = 0;
  v67 = 256;
  v68 = 0;
  v69 = bswap32(a4);
  v70 = bswap32(a3);
  v71 = 4294902784;
  v72 = 0;
  v74 = 256;
  v76 = 512;
  v78 = 0x6D726F6E4D494238;
  v79 = 524543;
  v80 = 1476395008;
  memcpy(v81, &gExtraData16bit, sizeof(v81));
  v62 = 768;
  v14 = 2 * a4 * a3;
  OUTLINED_FUNCTION_0_12();
  v17 = malloc_type_malloc(v15, v16);
  v18 = v17;
  if (v17)
  {
    v60 = v13;
    v63 = 0;
    if (a8)
    {
      v19 = 0;
    }

    else
    {
      v19 = 3;
    }

    v20 = 1;
    if (a8)
    {
      v20 = 2;
    }

    v21 = 2;
    if (a8)
    {
      v21 = 3;
    }

    v57 = a4;
    if (a4)
    {
      LODWORD(v22) = 0;
      v23 = a8;
      v24 = &v17[8 * a4 * a3];
      v25 = &v17[6 * a4 * a3];
      v26 = &v17[4 * a4 * a3];
      v27 = &v17[v14];
      v56 = &v60[2 * v19];
      v54 = &v60[2 * v20];
      v55 = &v60[2 * v23];
      v53 = &v60[2 * v21];
      do
      {
        if (IIOImagePixelDataProvider::getBytes(a2, v60) != size)
        {
          break;
        }

        if (a3)
        {
          v28 = 0;
          v29 = 1;
          v30 = v53;
          v31 = v54;
          v32 = v55;
          v33 = v56;
          do
          {
            v34 = *v33;
            v33 += 8;
            *&v27[v28] = v34;
            v35 = *v32;
            v32 += 8;
            *&v26[v28] = v35;
            v36 = *v31;
            v31 += 8;
            *&v25[v28] = v36;
            v37 = *v30;
            v30 += 8;
            *&v24[v28] = v37;
            v38 = v29;
            v28 += 2;
            ++v29;
          }

          while (v38 < a3);
          v24 += v28;
          v25 += v28;
          v26 += v28;
          v27 += v28;
        }

        v22 = (v22 + 1);
      }

      while (v22 < v57);
    }

    if (a7)
    {
      v39 = 0;
      v40 = 1;
      do
      {
        v41 = v40;
        v63 = v14;
        PSDWritePlugin::zipWithPrediction(this, &v18[v14 * v40], v14, &v18[v39 * v14], &v63, a3, 16);
        *(&v82 + v39) = v63;
        ++v40;
        v39 = v41;
      }

      while (v41 < a7);
      v42 = v82 + 2;
      v43 = DWORD2(v82) + 2;
      v44 = v83 + 2;
      v45 = DWORD2(v83) + 2;
    }

    else
    {
      v45 = 2;
      v44 = 2;
      v43 = 2;
      v42 = 2;
    }

    HIDWORD(v71) = bswap32(v42);
    v73 = bswap32(v43);
    v75 = bswap32(v44);
    v77 = bswap32(v45);
    v46 = v43 + v42 + v44 + v45;
    *__ptr = bswap32((v46 & 0xFFFFFFFC) + 184);
    v66 = bswap32((v46 & 0xFFFFFFFC) + 152);
    IIOImageWriteSession::putBytes(this[2], __ptr, 0xB8uLL);
    if (a7)
    {
      v47 = 0;
      v48 = 1;
      while (IIOImageWriteSession::putBytes(this[2], &v62, 2uLL) == 2)
      {
        v49 = &v18[v47 * v14];
        v50 = *(&v82 + v47);
        if (IIOImageWriteSession::putBytes(this[2], v49, v50) != v50)
        {
          break;
        }

        v47 = v48++;
        if (v47 >= a7)
        {
          goto LABEL_27;
        }
      }

      v51 = 4294967246;
    }

    else
    {
LABEL_27:
      v61 = 0;
      IIOImageWriteSession::putBytes(this[2], &v61, 4 - (v46 & 3));
      v51 = 0;
    }

    v13 = v60;
    if (v60)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v51 = 4294967246;
    if (v13)
    {
LABEL_29:
      free(v13);
    }
  }

  if (v18)
  {
    free(v18);
  }

  return v51;
}

uint64_t _cg_RadReadRGB_float(FILE *a1, uint64_t a2, unsigned int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  result = 4294967246;
  if (a1 && a2)
  {
    v10 = 0;
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    if (RGBE_ReadHeader(a1, &v10 + 4, &v10, v11) || SHIDWORD(v10) < 1 || HIDWORD(v10) > 0x4000 || (v10 - 16385) < 0xFFFFC000)
    {
      return 4294967246;
    }

    v7 = 4 * (3 * HIDWORD(v10) * v10);
    v8 = v7 <= a3 && v7 >= HIDWORD(v10);
    if (!v8 || v7 < v10)
    {
      return 4294967246;
    }

    if ((v11[0] & 8) != 0)
    {
      if (!RGBE_ReadPixels_RLE(a1, a2, HIDWORD(v10), v10))
      {
        return 0;
      }
    }

    else if ((v11[0] & 0x10) != 0 && !ReadFloatPixels(a1, a2, SHIDWORD(v10), v10))
    {
      return 0;
    }

    return 4294967246;
  }

  return result;
}

uint64_t HEIFExif::readFromStream(HEIFExif *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (OUTLINED_FUNCTION_0_32(this, a2, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12)) == 4 && (v13 != 1179211845 || (v8 = OUTLINED_FUNCTION_10_2(), CFReadStreamRead(v8, v9, 16) == 16)))
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t HEIFItem::readFromStream(HEIFItem *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_2_17(this, a2, a3, a4, a5, a6, a7, a8, v29, v32, SHIDWORD(v32));
  result = 0;
  if (v36 == 1835365449)
  {
    if (CFReadStreamRead(v9, (v8 + 8), 192) == 192)
    {
      *(v8 + 192) = 0;
      if (OUTLINED_FUNCTION_13_1(192, v12, v13, v14, v15, v16, v17, v18, v30, v33) == 4)
      {
        if (!v34)
        {
          return 0;
        }

        v19 = OUTLINED_FUNCTION_24(v34);
        v27 = OUTLINED_FUNCTION_12_1(v19, v20, v21, v22, v23, v24, v25, v26, v31, v34);
        if (v27 == v35)
        {
          *(v8 + 192) = OUTLINED_FUNCTION_11_1(*MEMORY[0x1E695E480], v28, v27);
          free(v10);
          return 0;
        }

        free(v10);
      }
    }

    return 4294967246;
  }

  return result;
}

uint64_t HEIFXMP::readFromStream(HEIFXMP *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (OUTLINED_FUNCTION_0_32(this, a2, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12)) == 4 && (v13 != 542133592 || (v8 = OUTLINED_FUNCTION_10_2(), CFReadStreamRead(v8, v9, 16) == 16)))
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t HEIFStereoAggressor::readFromStream(HEIFStereoAggressor *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (OUTLINED_FUNCTION_0_32(this, a2, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12)) == 4 && (v13 != 1195463763 || (v8 = OUTLINED_FUNCTION_10_2(), CFReadStreamRead(v8, v9, 24) == 24)))
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t HEIFThumbnailImage::readFromStream(HEIFThumbnailImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (OUTLINED_FUNCTION_0_32(this, a2, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12)) == 4 && (v13 != 1297434708 || (v8 = OUTLINED_FUNCTION_10_2(), CFReadStreamRead(v8, v9, 20) == 20)))
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t HEIFAuxImage::readFromStream(HEIFAuxImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (OUTLINED_FUNCTION_2_17(this, a2, a3, a4, a5, a6, a7, a8, v29, v32, SHIDWORD(v32)) != 4)
  {
    return 4294967246;
  }

  if (v36 != 542659905)
  {
    return 0;
  }

  if (CFReadStreamRead(v9, (v8 + 8), 56) != 56)
  {
    return 4294967246;
  }

  *(v8 + 56) = 0;
  if (OUTLINED_FUNCTION_13_1(56, v11, v12, v13, v14, v15, v16, v17, v30, v33) != 4)
  {
    return 4294967246;
  }

  if (!v34)
  {
    return 0;
  }

  v18 = OUTLINED_FUNCTION_24(v34);
  v26 = OUTLINED_FUNCTION_12_1(v18, v19, v20, v21, v22, v23, v24, v25, v31, v34);
  if (v26 == v35)
  {
    *(v8 + 56) = OUTLINED_FUNCTION_11_1(*MEMORY[0x1E695E480], v27, v26);
    free(v10);
    return 0;
  }

  free(v10);
  return 4294967246;
}

uint64_t HEIFAlternateImage::readFromStream(HEIFAlternateImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (OUTLINED_FUNCTION_2_17(this, a2, a3, a4, a5, a6, a7, a8, v12, v13, SHIDWORD(v13)) == 4)
  {
    if (v14 != 1480936518)
    {
      return 0;
    }

    if (CFReadStreamRead(v9, (v8 + 8), 128) == 128)
    {
      v10 = IIO_ColorSpaceCreateFromStream(v9);
      result = 0;
      *(v8 + 128) = v10;
      return result;
    }
  }

  return 4294967246;
}

uint64_t HEIFMainImage::readFromStream(UInt8 *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_1_18(this, a2, a3, a4, a5, a6, a7, a8, v154, v170, v186, v202, v218, 0);
  OUTLINED_FUNCTION_3_13();
  v19 = v19 && v18 == 1313423693;
  if (!v19)
  {
    v152 = "*** ERROR: missing 'MAIN' marker\n";
    v153 = 2443;
LABEL_76:
    _cg_jpeg_mem_term("readFromStream", v153, v152);
    return 4294967246;
  }

  OUTLINED_FUNCTION_1_18(v10, v11, v12, v13, v14, v15, v16, v17, v155, v171, v187, v203, *buffer, buffer[4]);
  OUTLINED_FUNCTION_3_13();
  if (!v19 || v28 != 1297434708)
  {
    v152 = "*** ERROR: missing 'THUM' marker\n";
    v153 = 2447;
    goto LABEL_76;
  }

  if (OUTLINED_FUNCTION_4_10(v20, v21, v22, v23, v24, v25, v26, v27, v156, v172, v188, v204, v220) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 1, 0);
  OUTLINED_FUNCTION_7_3();
  if (v38 == v39)
  {
    operator new();
  }

  OUTLINED_FUNCTION_1_18(v30, v31, v32, v33, v34, v35, v36, v37, v157, v173, v189, v205, *v221, v221[4]);
  OUTLINED_FUNCTION_3_13();
  if (!v19 || v48 != 1230525761)
  {
    v152 = "*** ERROR: missing 'AUXI' marker\n";
    v153 = 2465;
    goto LABEL_76;
  }

  if (OUTLINED_FUNCTION_4_10(v40, v41, v42, v43, v44, v45, v46, v47, v158, v174, v190, v206, v222) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 4, 0);
  OUTLINED_FUNCTION_7_3();
  if (v38 == v39)
  {
    operator new();
  }

  OUTLINED_FUNCTION_1_18(v50, v51, v52, v53, v54, v55, v56, v57, v159, v175, v191, v207, *v223, v223[4]);
  OUTLINED_FUNCTION_3_13();
  if (!v19 || v66 != 1230261313)
  {
    v152 = "*** ERROR: missing 'ALTI' marker\n";
    v153 = 2483;
    goto LABEL_76;
  }

  if (OUTLINED_FUNCTION_4_10(v58, v59, v60, v61, v62, v63, v64, v65, v160, v176, v192, v208, v224) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 7, 0);
  OUTLINED_FUNCTION_7_3();
  if (v38 == v39)
  {
    operator new();
  }

  OUTLINED_FUNCTION_1_18(v68, v69, v70, v71, v72, v73, v74, v75, v161, v177, v193, v209, *v225, v225[4]);
  OUTLINED_FUNCTION_3_13();
  if (!v19 || v84 != 1179211845)
  {
    v152 = "*** ERROR: missing 'EXIF' marker\n";
    v153 = 2502;
    goto LABEL_76;
  }

  if (OUTLINED_FUNCTION_4_10(v76, v77, v78, v79, v80, v81, v82, v83, v162, v178, v194, v210, v226) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 10, 0);
  OUTLINED_FUNCTION_7_3();
  if (v38 == v39)
  {
    OUTLINED_FUNCTION_9_2();
    operator new();
  }

  OUTLINED_FUNCTION_1_18(v86, v87, v88, v89, v90, v91, v92, v93, v163, v179, v195, v211, *v227, v227[4]);
  OUTLINED_FUNCTION_3_13();
  if (!v19 || v102 != 1296389193)
  {
    v152 = "*** ERROR: missing 'ITEM' marker\n";
    v153 = 2520;
    goto LABEL_76;
  }

  if (OUTLINED_FUNCTION_4_10(v94, v95, v96, v97, v98, v99, v100, v101, v164, v180, v196, v212, v228) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 16, 0);
  OUTLINED_FUNCTION_7_3();
  if (v38 == v39)
  {
    operator new();
  }

  OUTLINED_FUNCTION_1_18(v104, v105, v106, v107, v108, v109, v110, v111, v165, v181, v197, v213, *v229, v229[4]);
  OUTLINED_FUNCTION_3_13();
  if (!v19 || v120 != 542133592)
  {
    v152 = "*** ERROR: missing 'XMP ' marker\n";
    v153 = 2538;
    goto LABEL_76;
  }

  if (OUTLINED_FUNCTION_4_10(v112, v113, v114, v115, v116, v117, v118, v119, v166, v182, v198, v214, v230) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 13, 0);
  OUTLINED_FUNCTION_7_3();
  if (v38 == v39)
  {
    OUTLINED_FUNCTION_9_2();
    operator new();
  }

  OUTLINED_FUNCTION_1_18(v122, v123, v124, v125, v126, v127, v128, v129, v167, v183, v199, v215, *v231, v231[4]);
  OUTLINED_FUNCTION_3_13();
  if (!v19 || v130 != 1096040772)
  {
    v152 = "*** ERROR: missing 'DATA' marker\n";
    v153 = 2556;
    goto LABEL_76;
  }

  if (CFReadStreamRead(a2, this + 160, 144) != 144)
  {
    return 4294967246;
  }

  *(this + 36) = 0;
  *(this + 37) = 0;
  OUTLINED_FUNCTION_1_18(144, v132, v133, v134, v135, v136, v137, v138, v168, v184, v200, v216, *v232, v232[4]);
  OUTLINED_FUNCTION_3_13();
  if (!v19 || v139 != 1313623875)
  {
    v152 = "*** ERROR: missing 'COLN' marker\n";
    v153 = 2564;
    goto LABEL_76;
  }

  v141 = IIO_ColorSpaceNameCreateFromStream(a2);
  *(this + 36) = v141;
  OUTLINED_FUNCTION_1_18(v141, v142, v143, v144, v145, v146, v147, v148, v169, v185, v201, v217, *v233, v233[4]);
  OUTLINED_FUNCTION_3_13();
  if (!v19 || v149 != 1397509955)
  {
    v152 = "*** ERROR: missing 'COLS' marker\n";
    v153 = 2569;
    goto LABEL_76;
  }

  *(this + 37) = IIO_ColorSpaceCreateFromStream(a2);
  if (!*(this + 41))
  {
    v152 = "*** ERROR: mainImage - bad dimension: %d x %d\n";
    v153 = 2572;
    goto LABEL_76;
  }

  if (!*(this + 42))
  {
    v152 = "*** ERROR: mainImage - bad dimension: %d x %d\n";
    v153 = 2573;
    goto LABEL_76;
  }

  return 0;
}

void sub_1861FC954(void *a1)
{
  MEMORY[0x186602850](v1, 0x1081C40468F112ELL);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1861FC94CLL);
}

void GlobalHEIFInfo::readFromStream(size_t a1, __CFReadStream *a2, CFIndex *a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_24(a1);
  if (CFReadStreamRead(a2, v7, 8) == 8)
  {
    *(a4 + 56) = CFDataCreate(*MEMORY[0x1E695E480], v7, *a3);
  }

  free(v7);
}

const __CFData *GlobalHEIFInfo::writeToStream(uint64_t a1, CFWriteStreamRef stream, UInt8 *a3, _DWORD *a4)
{
  CFWriteStreamWrite(stream, (a1 + 64), 12);
  Length = *(a1 + 56);
  if (Length)
  {
    Length = CFDataGetLength(Length);
  }

  *a3 = Length;
  CFWriteStreamWrite(stream, a3, 8);
  result = *(a1 + 56);
  if (result && *a3)
  {
    BytePtr = CFDataGetBytePtr(result);
    result = CFWriteStreamWrite(stream, BytePtr, *a3);
  }

  *a4 = 0;
  return result;
}

uint64_t PSDReadPlugin::initThumbnail(PSDReadPlugin *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v28[0] = 0;
  v28[1] = 0;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  result = PSDReadPlugin::readHeader(this, v28);
  if (!result)
  {
    if (IIOImageReadSession::getBytes(*(this + 3), &v27 + 4, 4) == 4)
    {
      v3 = HIDWORD(v27);
      v4 = bswap32(HIDWORD(v27));
      HIDWORD(v27) = v4;
      if (HIWORD(v29) == 32 || (v3 == 196608 ? (v5 = v30 == 2) : (v5 = 0), v5 ? (v6 = 0) : (v6 = 1), !v3 || (v6 ? (v7 = v30 == 8) : (v7 = 1), v7)))
      {
        if (IIOImageReadSession::seek(*(this + 3), v4 + 30, 0) == v4 + 30 && IIOImageReadSession::getBytes(*(this + 3), &v27, 4) == 4)
        {
          v26 = 0;
          LODWORD(v27) = bswap32(v27);
          if (IIOImageReadSession::getBytes(*(this + 3), &v26, 4) == 4)
          {
            while (1)
            {
              v8 = v26;
              v26 = bswap32(v26);
              if (v8 != 1296646712)
              {
                break;
              }

              v25 = 0;
              if (IIOImageReadSession::getBytes(*(this + 3), &v25, 2) != 2)
              {
                break;
              }

              v25 = bswap32(v25) >> 16;
              v24 = 0;
              if (IIOImageReadSession::getBytes(*(this + 3), &v24, 1) != 1)
              {
                break;
              }

              if (v24 > 0xFDu)
              {
                break;
              }

              v9 = v24 | 1;
              bzero(v31, 0x100uLL);
              if (IIOImageReadSession::getBytes(*(this + 3), v31, v9) != v9)
              {
                break;
              }

              v31[v24] = 0;
              v23 = 0;
              if (IIOImageReadSession::getBytes(*(this + 3), &v23, 4) != 4)
              {
                break;
              }

              v15 = bswap32(v23);
              v23 = v15;
              if ((v15 & 0x80000000) != 0)
              {
                break;
              }

              if (v25 == 1036)
              {
                v22 = 0;
                v21 = 0;
                if (IIOImageReadSession::getBytes(*(this + 3), &v22, 4) == 4)
                {
                  v22 = bswap32(v22);
                  if (IIOImageReadSession::getBytes(*(this + 3), &v21 + 4, 4) == 4)
                  {
                    HIDWORD(v21) = bswap32(HIDWORD(v21));
                    if (IIOImageReadSession::getBytes(*(this + 3), &v21, 4) == 4)
                    {
                      v16 = bswap32(v21);
                      LODWORD(v21) = v16;
                      if (v22 == 1)
                      {
                        v17 = *(this + 57);
                        if (!v17 || (v16 < v17 ? (v18 = HIDWORD(v21) >= v17) : (v18 = 1), v18))
                        {
                          v19 = IIO_Reader::minimumFileSize(*(this + 3));
                          v20 = v23;
                          if (IIO_XPCServer())
                          {
                            ImageIOLog("*********************************************************************\n");
                            ImageIOLog("**** __FIXME__ -- swapping the IIOReadPlugin\n");
                            ImageIOLog("*********************************************************************\n");
                          }

                          CGImagePluginInitJPEGAtOffset(*(this + 1), 0, v19 + 16, v20, *(this + 57) != 0, *(this + 57), 1347634208, 0);
                        }
                      }
                    }
                  }
                }

                return 4294967246;
              }

              if (IIOImageReadSession::skipBytes(*(this + 3), (v15 + 1) & 0xFFFFFFFE, v10, v11, v12, v13, v14) == ((v15 + 1) & 0xFFFFFFFE))
              {
                v26 = 0;
                if (IIOImageReadSession::getBytes(*(this + 3), &v26, 4) == 4)
                {
                  continue;
                }
              }

              return 4294967246;
            }
          }
        }
      }
    }

    return 4294967246;
  }

  return result;
}

_DWORD *PSDReadPlugin::decodeLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) - 5 <= 0xFFFFFFFD)
  {
    v92 = "*** ERROR: unexpected number of channels: %d\n";
    v93 = 1647;
    goto LABEL_114;
  }

  v4 = *(a2 + 12) - *(a2 + 4);
  v5 = v4;
  if (v4 <= 0)
  {
    v92 = "*** ERROR: width <= 0 - skipping layer decoding\n";
    v93 = 1648;
    goto LABEL_114;
  }

  v6 = *(a3 + 24);
  if (v6 <= 0)
  {
    v92 = "*** ERROR: height <= 0 - skipping layer decoding\n";
    v93 = 1649;
    goto LABEL_114;
  }

  if (((*(a1 + 322) + 7) & 0x1FFF8) != *(a1 + 322))
  {
    return 0;
  }

  if (!*(a1 + 320))
  {
    v92 = "*** ERROR: rowBytes <= 0 - skipping layer decoding\n";
    v93 = 1656;
    goto LABEL_114;
  }

  v8 = *a2;
  v9 = *(a3 + 8);
  v10 = (v9 - v8);
  if (v9 <= v8)
  {
    v10 = 0;
  }

  if (v10 < 0)
  {
    v92 = "*** ERROR: layerYOffset: %lld\n";
    v93 = 1662;
    goto LABEL_114;
  }

  size = ((*(a1 + 320) + 7) >> 3) * v4;
  v11 = 4 * size;
  if (!is_mul_ok(v6, 4 * size))
  {
    v92 = "*** ERROR: bad layer size %ld x %ld (rb: %ld)\n";
    v93 = 1665;
    goto LABEL_114;
  }

  OUTLINED_FUNCTION_0_33();
  __b = malloc_type_calloc(v6 * v11, 1uLL, v12);
  if (!__b)
  {
    v92 = "*** ERROR: failed to allocate 'buffer' (%ld bytes)\n";
    v93 = 1670;
LABEL_114:
    _cg_jpeg_mem_term("decodeLayer", v93, v92);
    return 0;
  }

  if (*(a2 + 16) == 3)
  {
    OUTLINED_FUNCTION_1_19();
    if (v29)
    {
      LODWORD(v13) = 0;
      v14 = __b + 3;
      do
      {
        v15 = 0;
        do
        {
          *v14 = 1065353216;
          v14 += 4;
          ++v15;
        }

        while (v15 < v5);
        v13 = (v13 + 1);
      }

      while (v13 < v6);
    }

    else
    {
      memset(__b, 255, v6 * v11);
    }
  }

  if ((v11 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_0_33();
    v19 = malloc_type_calloc(v16, v17, v18);
    if (v19)
    {
      v97 = v19;
      if (*(a2 + 16))
      {
        v20 = 0;
        v106 = a2 + 312;
        v104 = a2 + 184;
        v101 = size * v6;
        v102 = a2 + 56;
        v100 = v5 * v6;
        v98 = 4 * v6;
        v99 = 2 * v6;
        v21 = 2;
        if (v5 > 2)
        {
          v21 = v5;
        }

        v109 = v6;
        v95 = 2 * v5;
        v96 = 4 * v5 * v6;
        v94 = v21 - 1;
        v103 = a2;
        v105 = v6;
        do
        {
          v22 = *(v106 + 8 * v20);
          v23 = __b + v20;
          v24 = &__b[v20];
          if ((v22 - 2) < 2)
          {
            v35 = *(v104 + 8 * v20);
            v36 = *(v102 + 8 * v20) - 2;
            v37 = malloc_type_calloc(v36, 1uLL, 0x100004077774924uLL);
            v38 = malloc_type_calloc(v6, size, 0x100004077774924uLL);
            if (IIOImageReadSession::getBytesAtOffset(*(a1 + 24), v37, v35 + 2, v36) == v36)
            {
              memset(&strm.next_out, 0, 88);
              *&strm.avail_in = 0u;
              strm.next_in = v37;
              strm.avail_in = v36;
              strm.next_out = v38;
              strm.avail_out = v101;
              if (inflateInit_(&strm, "1.2.12", 112) || inflate(&strm, 4) != 1)
              {
                _cg_jpeg_mem_term("decodeLayer", 1879, "*** ERROR: inflate failed\n");
              }

              else
              {
                inflateEnd(&strm);
              }

              if (*(v106 + 8 * v20) == 3)
              {
                OUTLINED_FUNCTION_1_19();
                if (v29)
                {
                  v80 = malloc_type_malloc(v96, 0x100004077774924uLL);
                  PSDReadPlugin::decode_32_bit_predictor(v80, v38, v80, v105, v5);
                  v81 = 1;
                  v82 = v80;
                  do
                  {
                    *v82 = bswap32(*v82);
                    ++v82;
                    v49 = v100 <= v81++;
                  }

                  while (!v49);
                  v83 = 1;
                  do
                  {
                    v84 = *v80;
                    v80 = (v80 + 4);
                    *v24 = bswap32(v84);
                    v24 += 4;
                    v49 = v100 <= v83++;
                  }

                  while (!v49);
                }

                else if (v50 == 16)
                {
                  dest.data = v38;
                  dest.height = v105;
                  dest.width = v5;
                  dest.rowBytes = size;
                  vImageByteSwap_Planar16U(&dest, &dest, 0x10u);
                  v51 = 0;
                  v52 = v38 + 2;
                  do
                  {
                    if (v5 != 1)
                    {
                      v53 = *&v38[v95 * v51];
                      v54 = v52;
                      v55 = v94;
                      do
                      {
                        v53 += *v54;
                        *v54 = v53;
                        v54 += 2;
                        --v55;
                      }

                      while (v55);
                    }

                    ++v51;
                    v52 += v95;
                  }

                  while (v51 != v105);
                  v56 = 1;
                  do
                  {
                    v57 = *v38;
                    v38 += 2;
                    *v23 = v57;
                    v23 += 4;
                    v49 = v100 <= v56++;
                  }

                  while (!v49);
                }
              }
            }
          }

          else if (v22)
          {
            if (v22 != 1)
            {
              _cg_jpeg_mem_term("decodeLayer", 1931, "*** ERROR: invalid compression: %d\n");
              free(v97);
              free(__b);
              return 0;
            }

            v25 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
            v26 = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
            v27 = *(v104 + 8 * v20) + 2;
            if (*(a1 + 487) == 1)
            {
              v28 = 0;
              v29 = IIOImageReadSession::getBytesAtOffset(*(a1 + 24), v26, *(v104 + 8 * v20) + 2, v98) != v98 || v6 == 0;
              if (!v29)
              {
                v30 = v27 + v98;
                v31 = v109;
                v32 = v25;
                v33 = v26;
                do
                {
                  v34 = bswap32(*v33) >> 16;
                  if (v28 <= v34)
                  {
                    v28 = v34;
                  }

                  *v33 = v34;
                  v33 += 4;
                  *v32++ = v30;
                  v30 += v34;
                  --v31;
                }

                while (v31);
              }
            }

            else
            {
              v58 = malloc_type_calloc(v6, 2uLL, 0x1000040BDFB0063uLL);
              if (!v58)
              {
                break;
              }

              v59 = v58;
              v28 = 0;
              if (IIOImageReadSession::getBytesAtOffset(*(a1 + 24), v58, v27, v99) == v99 && v6)
              {
                v28 = 0;
                v60 = v27 + v99;
                v61 = v109;
                v62 = v25;
                v63 = v26;
                v64 = v59;
                do
                {
                  v65 = *v64;
                  v64 += 2;
                  v66 = bswap32(v65) >> 16;
                  if (v28 <= v66)
                  {
                    v28 = v66;
                  }

                  *v63 = v66;
                  v63 += 4;
                  *v62++ = v60;
                  v60 += v66;
                  --v61;
                }

                while (v61);
              }

              free(v59);
            }

            v67 = malloc_type_malloc(v28, 0x100004077774924uLL);
            v68 = malloc_type_malloc(size, 0x100004077774924uLL);
            if (v6)
            {
              v69 = v68;
              v70 = 0;
              v71 = __b;
              do
              {
                v72 = *&v26[4 * v70];
                if (IIOImageReadSession::getBytesAtOffset(*(a1 + 24), v67, v25[v70], v72) == v72)
                {
                  PSDReadPlugin::decode_packbits(a1, v67, v69, v72, size, 1, 0, v20, v70);
                  OUTLINED_FUNCTION_1_19();
                  if (v29)
                  {
                    v78 = 0;
                    v79 = &v71[v20];
                    do
                    {
                      *v79 = bswap32(*&v69[4 * v78]);
                      v79 += 4;
                      ++v78;
                    }

                    while (v78 < v5);
                  }

                  else if (v73 == 16)
                  {
                    v76 = 0;
                    v77 = v71 + v20;
                    do
                    {
                      *v77 = *&v69[2 * v76];
                      v77 += 4;
                      ++v76;
                    }

                    while (v76 < v5);
                  }

                  else if (v73 == 8)
                  {
                    v74 = 0;
                    v75 = v71;
                    do
                    {
                      *(v75++ + v20) = v69[v74++];
                    }

                    while (v74 < v5);
                  }

                  v71 += size;
                }

                ++v70;
              }

              while (v70 != v109);
            }
          }

          else
          {
            OUTLINED_FUNCTION_0_33();
            v42 = malloc_type_calloc(v39, v40, v41);
            if (IIOImageReadSession::getBytesAtOffset(*(a1 + 24), v42, *(v104 + 8 * v20) + 2, v101) == v101)
            {
              OUTLINED_FUNCTION_1_19();
              if (v29)
              {
                v88 = 1;
                v89 = v42;
                do
                {
                  v90 = *v89++;
                  *v24 = bswap32(v90);
                  v24 += 4;
                  v49 = v44 <= v88++;
                }

                while (!v49);
              }

              else if (v43 == 16)
              {
                v85 = 1;
                v86 = v42;
                do
                {
                  v87 = *v86;
                  v86 += 2;
                  *v23 = v87;
                  v23 += 4;
                  v49 = v44 <= v85++;
                }

                while (!v49);
              }

              else if (v43 == 8)
              {
                v45 = __b + v20;
                v46 = 1;
                v47 = v42;
                do
                {
                  v48 = *v47++;
                  *v45 = v48;
                  v45 += 4;
                  v49 = v44 <= v46++;
                }

                while (!v49);
              }
            }

            free(v42);
          }

          ++v20;
          v6 = v105;
        }

        while (v20 < *(v103 + 16));
      }

      free(v97);
    }

    else
    {
      _cg_jpeg_mem_term("decodeLayer", 1694, "*** ERROR: failed to allocate 'rleRow' (%d bytes)\n");
    }
  }

  return __b;
}

void PSDReadPlugin::readHeader()
{
  _cg_jpeg_mem_term("readHeader", 185, "*** ERROR: can't read PSD header\n");
}

{
  _cg_jpeg_mem_term("readHeader", 195, "*** ERROR: bad signature\n");
}

{
  _cg_jpeg_mem_term("readHeader", 224, "*** ERROR: unsupported numChannels for mode\n");
}

{
  _cg_jpeg_mem_term("readHeader", 219, "*** ERROR: unsupported bitsPerComp/numChannels\n");
}

void PSDReadPlugin::parseLayers()
{
  _cg_jpeg_mem_term("parseLayers", 505, "*** ERROR: can't read layer data\n");
}

{
  _cg_jpeg_mem_term("parseLayers", 503, "*** ERROR: failed to allocate 'tempBuffer'\n");
}

{
  _cg_jpeg_mem_term("parseLayers", 398, "*** ERROR: failed to allocate 'layerInfoPtr'\n");
}

void PSDReadPlugin::readDataSizeTable()
{
  _cg_jpeg_mem_term("readDataSizeTable", 2191, "*** ERROR: failed to allocate 'shortDataSizeTable'\n");
}

{
  _cg_jpeg_mem_term("readDataSizeTable", 2167, "*** ERROR: failed to allocate 'localOffsetsTable'\n");
}

{
  _cg_jpeg_mem_term("readDataSizeTable", 2164, "*** ERROR: failed to allocate 'localDataSizeTable'\n");
}

{
  _cg_jpeg_mem_term("readDataSizeTable", 2155, "*** ERROR: readDataSizeTable NumberOfChannels is 0\n");
}

{
  _cg_jpeg_mem_term("readDataSizeTable", 2154, "*** ERROR: readDataSizeTable height is 0\n");
}

void PSDReadPlugin::decodeBlock()
{
  _cg_jpeg_mem_term("decodeBlock", 2273, "*** ERROR: failed to allocate 'tempData'\n");
}

{
  _cg_jpeg_mem_term("decodeBlock", 2267, "*** ERROR: failed to allocate 'scanLineData'\n");
}

uint64_t RADReadPlugin::decodeImageImp(uint64_t a1, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v41 = 0;
  seed = 0;
  *(a1 + 316) = *(a1 + 284);
  IIOImageReadSession::rewind(*(a1 + 24));
  if ((gIIODebugFlags & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(a1 + 220) >> 24;
  v9 = MEMORY[0x1E69E9830];
  if (v8 <= 0x7F)
  {
    v10 = OUTLINED_FUNCTION_0(v8);
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v11 = *(a1 + 220);
  }

  if (v10)
  {
    v12 = (v11 >> 24);
  }

  else
  {
    v12 = 46;
  }

  v13 = v11 << 8 >> 24;
  if (v13 <= 0x7F)
  {
    v14 = OUTLINED_FUNCTION_0(v13);
  }

  else
  {
    v14 = __maskrune(v13, 0x40000uLL);
    v15 = *(a1 + 220);
  }

  if (v14)
  {
    v16 = (v15 << 8 >> 24);
  }

  else
  {
    v16 = 46;
  }

  v17 = v15 >> 8;
  if (v17 <= 0x7F)
  {
    v18 = OUTLINED_FUNCTION_0(v17);
  }

  else
  {
    v18 = __maskrune(v17, 0x40000uLL);
    v19 = *(a1 + 220);
  }

  if (v18)
  {
    v20 = (v19 >> 8);
  }

  else
  {
    v20 = 46;
  }

  if (v19 <= 0x7F)
  {
    if ((*(v9 + 4 * v19 + 60) & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v21 = 46;
    goto LABEL_25;
  }

  if (!__maskrune(v19, 0x40000uLL))
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(a1 + 220);
LABEL_25:
  ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v16, v20, v21, iioTypeStr[a3], "virtual OSStatus RADReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
LABEL_26:
  IIOReadPlugin::debugDecodeImage(a1, a2);
  v22 = *(a1 + 24);
  if (v22)
  {
    v23 = IIOImageReadSession::mapData(v22);
  }

  else
  {
    v23 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
    LODWORD(v30) = *(a1 + 308);
    v29 = v30;
    v31 = *(a1 + 312);
    v27 = v31;
    BaseAddress = _ImageIO_Malloc(*(a1 + 316) * v31, *(a1 + 416), &v41, kImageMalloc_RAD_Data[0], 0, 0);
    v28 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 4294967243;
      goto LABEL_53;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    v41 = IOSurfaceGetBytesPerRow(*a4) * Height;
    BlockArray = 4294967243;
    v27 = 0.0;
    v28 = 1;
    v29 = 0.0;
  }

  if (!BaseAddress)
  {
LABEL_44:
    if (!v28)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v32 = (*(*a1 + 120))(a1, BaseAddress, v41);
  if (v32)
  {
    BlockArray = v32;
    *(a1 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_44;
  }

  v33 = 0;
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  v42.size.width = v29;
  v42.size.height = v27;
  **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, BaseAddress, v41, v42, *(a1 + 316), *(a1 + 371));
  if (CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
  {
    v34 = 0;
  }

  else
  {
    v43.origin.x = 0.0;
    v43.origin.y = 0.0;
    v43.size.width = v29;
    v43.size.height = v27;
    *(&v34 - 1) = CGRectUnion(*(a1 + 120), v43);
    v33 = v35;
    v29 = v36;
    v27 = v37;
  }

  BlockArray = 0;
  *(a1 + 120) = v33;
  *(a1 + 128) = v34;
  *(a1 + 136) = v29;
  *(a1 + 144) = v27;
  if ((v28 & 1) == 0)
  {
    goto LABEL_53;
  }

  BaseAddress = 0;
LABEL_49:
  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_50:
  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v41);
  }

LABEL_53:
  if (v23)
  {
    v38 = *(a1 + 24);
    if (v38)
    {
      IIOImageReadSession::unmapData(v38);
    }
  }

  return BlockArray;
}

uint64_t RADReadPlugin::decodeImageData(IIOImageReadSession **this, unsigned __int8 *a2, unsigned int a3)
{
  FILE = IIOImageReadSession::createFILE(this[3]);
  if (!FILE)
  {
    return 0;
  }

  v7 = FILE;
  if (*(this + 128) == 32)
  {
    RGB_float = _cg_RadReadRGB_float(FILE, a2, a3);
  }

  else
  {
    RGB_float = _cg_RadReadRGB_fp16(FILE, a2, a3);
  }

  v9 = RGB_float;
  fclose(v7);
  return v9;
}

uint64_t IIOPixelConverterRGB::convert(IIOPixelConverterRGB *this, vImage_Buffer *srcs, vImage_Buffer *dests)
{
  if (*(this + 40) > *(this + 41))
  {
    if (*(this + 36) == 8)
    {
      height = srcs->height;
      if (height)
      {
        v7 = 0;
        width = srcs->width;
        do
        {
          if (width)
          {
            v9 = 0;
            v10 = dests->data + dests->rowBytes * v7;
            v11 = srcs->data + srcs->rowBytes * v7;
            v12 = *(this + 56);
            do
            {
              memcpy(v10, v11, v12);
              v11 += *(this + 40);
              v12 = *(this + 56);
              v10 += v12;
              ++v9;
              width = srcs->width;
            }

            while (v9 < width);
            height = srcs->height;
          }

          ++v7;
        }

        while (v7 < height);
      }
    }

    else
    {
      bzero(dests->data, dests->height * dests->rowBytes);
    }

    goto LABEL_62;
  }

  if (*(this + 73) == 1)
  {
    vImagePermuteChannels_ARGB8888(srcs, dests, &gPermuteMap[4 * *(this + 17)], 0);
    goto LABEL_62;
  }

  if (*(this + 32) == *(this + 49) && *(this + 9) == *(this + 13))
  {
    rowBytes = srcs->rowBytes;
    if (rowBytes >= dests->rowBytes)
    {
      rowBytes = dests->rowBytes;
    }

    memcpy(dests->data, srcs->data, rowBytes * srcs->height);
    v14 = *(this + 65);
    if (v14 == 2)
    {
      v38 = dests->height;
      if (v38)
      {
        LODWORD(v39) = 0;
        data = dests->data;
        v41 = dests->width;
        v42 = dests->rowBytes;
        do
        {
          if (v41)
          {
            v43 = 0;
            do
            {
              *&data[4 * v43] = bswap32(*&data[4 * v43]);
              ++v43;
            }

            while (v41 > v43);
          }

          data += v42;
          v39 = (v39 + 1);
        }

        while (v38 > v39);
      }
    }

    else if (v14 == 1)
    {
      v15 = *&dests->width;
      *&dest.data = *&dests->data;
      *&dest.width = v15;
      dest.width = v15 * *(this + 41);
      vImageByteSwap_Planar16U(&dest, &dest, 0x10u);
    }

    goto LABEL_62;
  }

  if (*(this + 16) == 1)
  {
    v16 = *(this + 1);
    if (v16)
    {
      v17 = iio_vImageConvert_AnyToAny(v16, srcs, dests, 0, 0);
      if (!v17)
      {
        goto LABEL_62;
      }

      IIO_vImageErrorString(v17);
      _cg_jpeg_mem_term("convert", 1158, "*** vImageConvert_AnyToAny: %s\n");
    }

    _cg_jpeg_mem_term("convert", 1162, "   falling back to own convertAnyToAny [RGB]\n");
    ImageIOPixelConverter::convertAnyToAny(this, srcs, dests);
    goto LABEL_62;
  }

  v18 = *(this + 9);
  switch(v18)
  {
    case 168430082:
      if (*(this + 13) != 134744072)
      {
        vImageConvert_ARGB2101010ToARGB16U(srcs, dests, 0, 1023, &gPermuteMap[4 * *(this + 17)], 0);
      }

      goto LABEL_53;
    case 84280831:
      if (*(this + 64) == 1)
      {
        vImageConvert_RGB565toBGRA8888(0xFFu, srcs, dests, 0);
      }

      else
      {
        vImageConvert_RGB565toRGBA8888(0xFFu, srcs, dests, 0);
      }

      goto LABEL_53;
    case 134744319:
      if (*(this + 64) == 1)
      {
        OUTLINED_FUNCTION_0_34();
        vImageConvert_RGB888toBGRA8888(v44, v45, v46, v47, v48, v49);
      }

      else
      {
        OUTLINED_FUNCTION_0_34();
        vImageConvert_RGB888toRGBA8888(v50, v51, v52, v53, v54, v55);
      }

LABEL_53:
      *(this + 17) = 0;
      break;
    case 84215041:
      v19 = srcs->height;
      v20 = 3 * srcs->width;
      if (!is_mul_ok(v20, v19))
      {
        return 0;
      }

      v21 = malloc_type_malloc(v20 * v19, 0x95296ED5uLL);
      v22 = srcs->height;
      v23 = srcs->width;
      dest.data = v21;
      dest.height = v22;
      dest.width = v23;
      dest.rowBytes = 3 * v23;
      if (v21)
      {
        v24 = dests->rowBytes;
        dests->rowBytes = srcs->rowBytes;
        v25 = vImageConvert_RGBA5551toRGB565(srcs, dests, 0);
        if (v25)
        {
          v26 = v25;
          v27 = IIO_vImageErrorString(v25);
          printf("*** vImageConvert_RGBA5551toRGB565: %ld '%s'\n", v26, v27);
        }

        v28 = vImageConvert_RGB565toRGB888(dests, &dest, 0);
        if (v28)
        {
          v29 = v28;
          v30 = IIO_vImageErrorString(v28);
          printf("*** vImageConvert_RGB565toRGB888: %ld '%s'\n", v29, v30);
        }

        dests->rowBytes = v24;
        if (*(this + 64) == 1)
        {
          OUTLINED_FUNCTION_0_34();
          v37 = vImageConvert_RGB888toBGRA8888(v31, v32, v33, v34, v35, v36);
        }

        else
        {
          OUTLINED_FUNCTION_0_34();
          v37 = vImageConvert_RGB888toRGBA8888(v56, v57, v58, v59, v60, v61);
        }

        v62 = v37;
        if (v37)
        {
          v63 = IIO_vImageErrorString(v37);
          printf("*** vImageConvert_RGB888toRGBA8888: %ld '%s'\n", v62, v63);
        }

        free(dest.data);
      }

      if (*(this + 48))
      {
        v64 = 4;
      }

      else
      {
        v64 = 0;
      }

      *(this + 17) = v64;
      break;
  }

LABEL_62:
  if ((*(this + 73) & 1) == 0)
  {
    v65 = &gPermuteMap[4 * *(this + 17)];
    if (!*v65 && v65[1] == 1 && v65[2] == 2 && v65[3] == 3 && *(this + 65) && *(this + 1) && (*(this + 72) & 1) == 0)
    {
      *(this + 72) = 1;
      PixelTypeStr(*(this + 32));
      PixelTypeStr(*(this + 49));
      _cg_jpeg_mem_term("convert", 1243, "⭕️  check result - converter is no longer swapping (%d-->%d)  %s --> %s\n");
    }
  }

  return 0;
}

uint64_t IIOColorMap::writeToStream(IIOColorMap *this, CFWriteStreamRef stream)
{
  v6 = 0;
  v5 = *this;
  LOBYTE(v6) = *(this + 8);
  *buffer = 1346456899;
  if (CFWriteStreamWrite(stream, buffer, 4) != 4 || CFWriteStreamWrite(stream, &v5, 12) != 12)
  {
    return 4294967260;
  }

  if (CFWriteStreamWrite(stream, *(this + 2), 3 * *this) == 3 * *this)
  {
    return 0;
  }

  return 4294967260;
}

uint64_t IIOBitStreamReader::getBits(IIOBitStreamReader *this, int a2, unsigned int *a3)
{
  if (a2 > 0x20)
  {
    return 4294967293;
  }

  v4 = *(this + 3);
  v3 = *(this + 4);
  if (a2 != 8)
  {
    if (v3 >= v4)
    {
      if (v3 != v4 || *(this + 9) < a2)
      {
        return 0xFFFFFFFFLL;
      }

      v6 = *(this + 9);
    }

    else
    {
      v6 = *(this + 9);
    }

    if (a2 <= v6)
    {
      v7 = 0;
      v11 = *(this + 8);
      v10 = a2;
LABEL_19:
      *(this + 9) = v6 - a2;
      v5 = (v11 >> (v6 - a2)) & ~(-1 << v10) | v7;
      goto LABEL_20;
    }

    v7 = 0;
    v8 = v6;
    if (v3 <= v4)
    {
      v9 = *(this + 3);
    }

    else
    {
      v9 = *(this + 4);
    }

    while (v9 != v3)
    {
      LOWORD(a2) = a2 - v6;
      v10 = a2;
      v7 |= (*(this + 8) & ~(-1 << v8)) << a2;
      v11 = *(*(this + 2) + v3++);
      *(this + 4) = v3;
      *(this + 8) = v11;
      v8 = 8;
      *(this + 9) = 8;
      v6 = 8;
      if (a2 <= 8u)
      {
        goto LABEL_19;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(this + 2) + v3);
  *(this + 4) = v3 + 1;
LABEL_20:
  result = 0;
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t IIOBitStreamWriter::putBits(IIOBitStreamWriter *this, signed int a2, unsigned int a3)
{
  if (a2 > 0x20)
  {
    return 4294967293;
  }

  v3 = *(this + 4);
  if (v3 >= *(this + 3))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 9);
  v5 = *(this + 9);
  if (a2 >= v4)
  {
    v8 = *(this + 8);
    do
    {
      LOWORD(a2) = a2 - v5;
      v7 = a2;
      *(*(this + 2) + v3) = v8 | (a3 >> a2) & ~(-1 << v4);
      v3 = *(this + 4) + 1;
      *(this + 4) = v3;
      *(this + 8) = 0;
      LOBYTE(v4) = 8;
      v5 = 8;
      v8 = 0;
    }

    while (a2 > 7u);
    v6 = 0;
  }

  else
  {
    v6 = *(this + 8);
    v7 = a2;
  }

  v9 = 0;
  v10 = v5 - a2;
  *(this + 9) = v10;
  *(this + 8) = v6 | ((a3 & ~(-1 << v7)) << v10);
  return v9;
}

uint64_t JP2WritePlugin::writeOne(JP2WritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  v51 = 0;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a2);
  bzero(v39, 0xC0uLL);
  v36 = 0;
  if (!SourceGeomColorSpace)
  {
    return 4294967246;
  }

  v49[1] = *(this + 2);
  *(&v50 + 1) = MyWrite;
  v40 = IIOImageSource::count(a2);
  v41 = IIO_Reader::testHeaderSize(a2);
  Error = _cg_GifLastError(a2);
  v45 = Error;
  appleflags = _cg_png_get_appleflags(a2);
  v47 = appleflags;
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  v44 = AlphaInfo;
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(SourceGeomColorSpace);
  if ((AlphaInfo - 1) >= 4)
  {
    v12 = NumberOfComponents;
  }

  else
  {
    v12 = NumberOfComponents + 1;
  }

  v42 = NumberOfComponents;
  v46 = v12;
  if (v12 != appleflags / Error)
  {
    _cg_jpeg_mem_term("writeOne", 354, "*** ERROR numChannels != (bpp / bpc)  (%d != (%d / %d)\n");
    return 4294967246;
  }

  v13 = OUTLINED_FUNCTION_0_35();
  if (IIODictionary::containsKey(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_0_35();
    FloatForKey = IIODictionary::getFloatForKey(v15, v16);
    v18 = 1.0;
    if (FloatForKey > 1.0)
    {
      FloatForKey = 1.0;
    }

    if (FloatForKey < 0.0)
    {
      FloatForKey = 0.0;
    }

    if (FloatForKey < 1.0)
    {
      if (FloatForKey >= 0.03)
      {
        v35 = logf(1.0 - FloatForKey);
        v18 = 1.0 - exp(v35 * 0.333333333);
      }

      else
      {
        v18 = 0.01;
      }
    }
  }

  else
  {
    v18 = 0.2;
  }

  v38 = 0;
  v37 = 0;
  _cg_JP2InitCompressionSettings(&v37, v18);
  v19 = OUTLINED_FUNCTION_0_35();
  if (IIODictionary::containsKey(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_0_35();
    Uint32ForKey = IIODictionary::getUint32ForKey(v21, v22);
    if (Uint32ForKey <= 0x65)
    {
      v24 = 101;
    }

    else
    {
      v24 = Uint32ForKey;
    }

    v38 = v24 - 100;
  }

  v25 = _cg_JP2CompressorSetup(MyImageSourceReader, a2, v49, v39, &v37, &v36);
  v26 = OUTLINED_FUNCTION_0_35();
  if (IIODictionary::containsKey(v26, v27) && IIODictionary::containsKey(a3, @"DPIWidth"))
  {
    v28 = IIODictionary::getFloatForKey(a3, @"DPIWidth");
    v29 = OUTLINED_FUNCTION_0_35();
    v32 = IIODictionary::getFloatForKey(v29, v30);
    if (v28 != 72.0 || v32 != 72.0)
    {
      _cg_JP2CompressorSetDisplayResolution(v36, v31, v28, v32);
    }
  }

  if (!v25)
  {
    v25 = _cg_JP2CompressorProcessImage(v36);
  }

  _cg_JP2CompressorTearDown(v36);
  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

uint64_t IIOImagePixelDataProvider::getBytesDataProviderRGB101010(IIOImagePixelDataProvider *this, void *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a3 / *(this + 18);
  v5 = *(this + 16);
  if (!is_mul_ok(v4, v5))
  {
    return 0;
  }

  v8 = v4 * v5;
  v9 = malloc_type_malloc(v4 * v5, 0x100004077774924uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (IIOImagePixelDataProvider::getBytesCGAccessSessionNoConvert(this, v9, v8) == v8 && is_mul_ok(v4, *(this + 18)))
  {
    ColorSpace = CGImageGetColorSpace(*(this + 2));
    v12 = CGColorSpaceContainsFlexGTCInfo();
    if (v12)
    {
      v20 = CGBitmapContextCreate(a2, *(this + 3), v4, *(this + 20), *(this + 18), ColorSpace, *(this + 24));
      if (v20)
      {
        v21 = v20;
        if (v4 == *(this + 4))
        {
          v50.size.width = *(this + 3);
          v50.size.height = v4;
          v50.origin.x = 0.0;
          v50.origin.y = 0.0;
          CGContextDrawImage(v20, v50, *(this + 2));
        }

        else
        {
          v51.origin.y = *(this + 23);
          v51.size.width = *(this + 3);
          v51.origin.x = 0.0;
          v51.size.height = v4;
          v33 = CGImageCreateWithImageInRect(*(this + 2), v51);
          v52.size.width = *(this + 3);
          v52.origin.x = 0.0;
          v52.origin.y = 0.0;
          v52.size.height = v4;
          CGContextDrawImage(v21, v52, v33);
          CGImageRelease(v33);
          *(this + 23) += v4;
        }

        CGContextFlush(v21);
        CGContextRelease(v21);
      }

      else
      {
        IIO_BitmapInfoStringSmall(*(this + 24));
        _cg_jpeg_mem_term("getBytesDataProviderRGB101010", 1205, "*** ERROR: CGBitmapContextCreate failed (size: %dx%d   rb: %d  bpc: %d  bmi: %s\n");
      }
    }

    else
    {
      src.data = v10;
      src.height = v4;
      v22 = *(this + 16);
      src.width = *(this + 3);
      src.rowBytes = v22;
      dest.data = a2;
      dest.height = v4;
      v23 = *(this + 18);
      dest.width = src.width;
      dest.rowBytes = v23;
      HIDWORD(v47) = 197121;
      v25 = *(this + 20);
      v24 = *(this + 21);
      if (v25 == 8)
      {
        if (v24 == 24)
        {
          v34 = OUTLINED_FUNCTION_0_36(v12, v13, v14, v15, v16, v17, v18, v19, v42, v43, v44, v45, v46, v47, dest.data, dest.height, dest.width, dest.rowBytes, src.data);
          iioConvert_XRGB2101010ToRGB888(v34, v35, v36, v37, v38, v39, v40);
        }

        else if (v24 == 32)
        {
          v26 = OUTLINED_FUNCTION_0_36(v12, v13, v14, v15, v16, v17, v18, v19, v42, v43, v44, v45, v46, v47, dest.data, dest.height, dest.width, dest.rowBytes, src.data);
          vImageConvert_XRGB2101010ToARGB8888(v26, v27, v28, v29, v30, v31, v32);
        }

        else
        {
          LogError("getBytesDataProviderRGB101010", 1243, "*** %s: unhandled bpc: %d  bpp: %d\n");
        }
      }

      else if (v25 == 16)
      {
        if (v24 == 64)
        {
          vImageConvert_XRGB2101010ToARGB16U(&src, 0xFFFFu, &dest, 0, 1023, &v47 + 4, 0);
        }

        else if (v24 == 48)
        {
          iio_convert_XRGB2101010ToRGB16U(&src, &dest, 0);
        }

        else
        {
          LogError("getBytesDataProviderRGB101010", 1228, "*** %s: unhandled bpc: %d  bpp: %d\n");
        }
      }

      else
      {
        LogError("getBytesDataProviderRGB101010", 1248, "*** %s: unhandled bpc: %d  bpp: %d\n");
      }
    }
  }

  else
  {
    v3 = 0;
  }

  free(v10);
  return v3;
}

CFDataRef OFDContainer::copyFileContent(OFDContainer *this, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (unzGoToFirstFile(*(this + 4)))
  {
    return 0;
  }

  v5 = (v4 == 47 ? a2 + 1 : a2);
  if (unzLocateFile(*(this + 4), v5, 0))
  {
    return 0;
  }

  bzero(v13, 0x100uLL);
  bzero(v11, 0x88uLL);
  if (unzGetCurrentFileInfo64(*(this + 4), v11, v13, 0x100uLL, 0, 0, 0, 0))
  {
    return 0;
  }

  v7 = v12;
  if (v12 > 0xFFFFFFFE)
  {
    return 0;
  }

  v8 = malloc_type_calloc(v12 + 1, 1uLL, 0xED96222EuLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (unzOpenCurrentFile(*(this + 4)) || unzReadCurrentFile(*(this + 4), v9, v7) != v7)
  {
    v6 = 0;
  }

  else
  {
    v6 = CFDataCreate(*MEMORY[0x1E695E480], v9, v7);
  }

  free(v9);
  return v6;
}

uint64_t ASN1Item::readTag(uint64_t a1, _BYTE *a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    return IIOPluginShouldDebugWriteImageBlocks();
  }

  *(a4 + 1) = *a2 & 0xC0;
  *a4 = (*a2 & 0x20) != 0;
  v4 = *a2 & 0x1F;
  if (v4 == 31)
  {
    *(a4 + 2) = 0;
    if (a3 == 1)
    {
      return IIOPluginShouldDebugWriteImageBlocks();
    }

    v5 = 0;
    if (a3 <= 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = a2 + 1;
    for (i = 2; ; ++i)
    {
      v9 = *v7 & 0x7F | (v5 << 7);
      *(a4 + 2) = *v7 & 0x7F | (v5 << 7);
      v10 = *v7++;
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }

      v5 = v9;
      if (!--v6)
      {
        return IIOPluginShouldDebugWriteImageBlocks();
      }
    }
  }

  else
  {
    *(a4 + 2) = v4;
    i = 1;
  }

  if (i >= a3)
  {
    return IIOPluginShouldDebugWriteImageBlocks();
  }

  v12 = a2[i];
  if ((a2[i] & 0x80000000) == 0)
  {
    *(a4 + 4) = v12;
    goto LABEL_15;
  }

  result = 0;
  if (v12 != 128 && v12 != 255)
  {
    v15 = v12 & 0x7F;
    if (v15 > 4 || v15 + i >= a3)
    {
      return IIOPluginShouldDebugWriteImageBlocks();
    }

    *(a4 + 4) = 0;
    v12 = 0;
    if (v15)
    {
      v13 = i + 1;
      do
      {
        v12 = a2[v13] | (v12 << 8);
        *(a4 + 4) = v12;
        ++v13;
        --v15;
      }

      while (v15);
      if (v12 > a3)
      {
        return IIOPluginShouldDebugWriteImageBlocks();
      }

      goto LABEL_16;
    }

LABEL_15:
    LODWORD(v13) = i + 1;
LABEL_16:
    *(a4 + 8) = &a2[v13];
    v14 = v12 + v13;
    if (v14 <= a3)
    {
      *(a4 + 16) = v14;
      return 1;
    }

    return IIOPluginShouldDebugWriteImageBlocks();
  }

  return result;
}

uint64_t ASN1Item::getInteger(uint64_t a1, uint64_t a2, int *a3)
{
  if ((*a2 & 1) != 0 || *(a2 + 1) || *(a2 + 2) != 2)
  {
    return IIOPluginShouldDebugWriteImageBlocks();
  }

  if ((*(a2 + 4) - 5) >= 0xFFFFFFFC)
  {
    v3 = *(a2 + 8);
    v4 = *v3 >> 7;
    *a3 = v4;
    if (*(a2 + 4))
    {
      v5 = 0;
      do
      {
        *a3 = v4 << 8;
        v6 = v3[v5] | (v4 << 8);
        *a3 = v6;
        ++v5;
        v4 = v6;
      }

      while (v5 < *(a2 + 4));
    }
  }

  return 1;
}

BOOL ASN1Item::getDate(int a1, uint64_t a2, std::string *this)
{
  v3 = *(a2 + 4);
  if (v3 >= 0xD)
  {
    std::string::push_back(this, **(a2 + 8));
    std::string::push_back(this, *(*(a2 + 8) + 1));
    std::string::push_back(this, 47);
    std::string::push_back(this, *(*(a2 + 8) + 2));
    std::string::push_back(this, *(*(a2 + 8) + 3));
    std::string::push_back(this, 47);
    std::string::push_back(this, *(*(a2 + 8) + 4));
    std::string::push_back(this, *(*(a2 + 8) + 5));
    std::string::push_back(this, 32);
    std::string::push_back(this, *(*(a2 + 8) + 6));
    std::string::push_back(this, *(*(a2 + 8) + 7));
    std::string::push_back(this, 58);
    std::string::push_back(this, *(*(a2 + 8) + 8));
    std::string::push_back(this, *(*(a2 + 8) + 9));
    std::string::push_back(this, 58);
    std::string::push_back(this, *(*(a2 + 8) + 10));
    std::string::push_back(this, *(*(a2 + 8) + 11));
    std::string::push_back(this, 32);
    std::string::push_back(this, *(*(a2 + 8) + 12));
  }

  return v3 > 0xC;
}

void _SES_Signature::parse(_SES_Signature *this, const unsigned __int8 *a2, malloc_type_id_t a3)
{
  v3 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  gOffset = v4;
  OUTLINED_FUNCTION_2_20(v3, v4, v5, v12);
  if (v6)
  {
    OUTLINED_FUNCTION_8_3();
    if (v11)
    {
      OUTLINED_FUNCTION_9_3();
      ASN1Item::readTag(v7, v8, v9, v12);
      OUTLINED_FUNCTION_15_1();
      v11 = !v11 && v10 == 16;
      if (v11)
      {
        OUTLINED_FUNCTION_12_2();
        operator new();
      }
    }
  }
}

void _TBS_Sign::parse(_TBS_Sign *this, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  OUTLINED_FUNCTION_2_20(v5, v6, v7, v16);
  if (v8)
  {
    OUTLINED_FUNCTION_13_2();
    if (v10)
    {
      ASN1Item::getInteger(v9, v16, (v3 + 20));
      if (a3 >= v17)
      {
        v11 = a3 - v17;
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_2_20(v12, v13, v11, v14);
        if (v15)
        {
          OUTLINED_FUNCTION_8_3();
          if (v10)
          {
            OUTLINED_FUNCTION_12_2();
            operator new();
          }
        }
      }
    }
  }
}

void _SESeal::parse(_SESeal *this, const unsigned __int8 *a2, int a3)
{
  v3 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  OUTLINED_FUNCTION_2_20(v3, v4, v5, v8);
  if (v6)
  {
    OUTLINED_FUNCTION_8_3();
    if (v7)
    {
      OUTLINED_FUNCTION_12_2();
      operator new();
    }
  }
}

void _SES_SealInfo::parse(_SES_SealInfo *this, const unsigned __int8 *a2, int a3)
{
  v3 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  OUTLINED_FUNCTION_2_20(v3, v4, v5, v8);
  if (v6)
  {
    OUTLINED_FUNCTION_8_3();
    if (v7)
    {
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_21_1();
    }
  }
}

void _SES_Header::parse(_SES_Header *this, const unsigned __int8 *a2, int a3)
{
  v6 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  OUTLINED_FUNCTION_2_20(v6, v7, v8, v23);
  if (v9)
  {
    OUTLINED_FUNCTION_14_1();
    if (v15)
    {
      v13 = OUTLINED_FUNCTION_29(v10, v11, v12);
      OUTLINED_FUNCTION_6_7(v13, v24, v22);
      OUTLINED_FUNCTION_15_1();
      v15 = !v15 && v14 == 2;
      if (v15)
      {
        OUTLINED_FUNCTION_27();
        Integer = ASN1Item::getInteger(v16, v17, v18);
        OUTLINED_FUNCTION_2_20(Integer, &a2[v24], a3 - v24, v23);
        if (v20)
        {
          OUTLINED_FUNCTION_14_1();
          if (v15)
          {
            ASN1Item::getString(v21, v23, (v3 + 56));
          }
        }
      }
    }
  }
}

void _SES_ESPropertyInfo::parse(_SES_ESPropertyInfo *this, const unsigned __int8 *a2, int a3)
{
  v6 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  OUTLINED_FUNCTION_2_20(v6, v7, v8, v47);
  if (v9)
  {
    OUTLINED_FUNCTION_13_2();
    if (v20)
    {
      ASN1Item::getInteger(v10, v47, (v3 + 20));
      OUTLINED_FUNCTION_11_2();
      v12 = a3 - v11;
      OUTLINED_FUNCTION_10_3();
      ASN1Item::readTag(v13, v14, v12, v15);
      OUTLINED_FUNCTION_15_1();
      v20 = !v20 && v19 == 12;
      if (v20)
      {
        v21 = OUTLINED_FUNCTION_29(v16, v17, v18);
        v22 = &a2[v48];
        v23 = v12 - v48;
        OUTLINED_FUNCTION_1_24(v21, v24, v25, v47);
        if (v26)
        {
          OUTLINED_FUNCTION_13_2();
          if (v20)
          {
            OUTLINED_FUNCTION_27();
            ASN1Item::getInteger(v27, v28, v29);
            OUTLINED_FUNCTION_3_14();
            OUTLINED_FUNCTION_1_24(v30, v31, v32, v47);
            if (v33)
            {
              OUTLINED_FUNCTION_8_3();
              if (v20)
              {
                OUTLINED_FUNCTION_3_14();
                OUTLINED_FUNCTION_1_24(v34, v35, v36, v47);
                if (v37)
                {
                  OUTLINED_FUNCTION_26();
                  if (v20)
                  {
                    ASN1Item::getDate(v38, v47, (v3 + 64));
                    OUTLINED_FUNCTION_3_14();
                    OUTLINED_FUNCTION_1_24(v39, v40, v41, v47);
                    if (v42)
                    {
                      OUTLINED_FUNCTION_26();
                      if (v20)
                      {
                        Date = ASN1Item::getDate(v43, v47, (v3 + 88));
                        OUTLINED_FUNCTION_2_20(Date, &v22[v48], (v23 - v48), v47);
                        if (v45)
                        {
                          OUTLINED_FUNCTION_26();
                          if (v20)
                          {
                            ASN1Item::getDate(v46, v47, (v3 + 112));
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
      }
    }
  }
}

void _SES_ESPictureInfo::parse(_SES_ESPictureInfo *this, const unsigned __int8 *a2, int a3)
{
  v7 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  OUTLINED_FUNCTION_2_20(v7, v8, v9, v38);
  if (v10)
  {
    OUTLINED_FUNCTION_14_1();
    if (v24)
    {
      v14 = OUTLINED_FUNCTION_29(v11, v12, v13);
      OUTLINED_FUNCTION_6_7(v14, v40, v36);
      OUTLINED_FUNCTION_15_1();
      v24 = !v24 && v23 == 4;
      if (v24)
      {
        v25 = OUTLINED_FUNCTION_18_1(v15, v16, v17, v18, v19, v20, v21, v22, v37, v38[0], v38[1], __src);
        *(v3 + 48) = v25;
        memcpy(v25, __src, v4);
        *(v3 + 56) = v4;
        OUTLINED_FUNCTION_11_2();
        v27 = (a3 - v26);
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_2_20(v28, v29, v27, v30);
        if (v31)
        {
          OUTLINED_FUNCTION_13_2();
          if (v24)
          {
            Integer = ASN1Item::getInteger(v32, v38, (v3 + 60));
            OUTLINED_FUNCTION_2_20(Integer, &a2[v40], v27 - v40, v38);
            if (v34)
            {
              OUTLINED_FUNCTION_13_2();
              if (v24)
              {
                ASN1Item::getInteger(v35, v38, (v3 + 64));
              }
            }
          }
        }
      }
    }
  }
}

uint64_t _SES_Signature_v1::parse(_SES_Signature_v1 *this, unsigned __int8 *a2, unsigned int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  *(this + 1) = a2;
  *(this + 4) = a3;
  v3 = a3 - 4;
  if (a3 >= 4)
  {
    gOffset = a2;
    if (ASN1Item::readTag(this, a2, a3, v9))
    {
      OUTLINED_FUNCTION_8_3();
      if (v4)
      {
        OUTLINED_FUNCTION_9_3();
        if (ASN1Item::readTag(v5, v6, v7, v9))
        {
          OUTLINED_FUNCTION_8_3();
          if (v4)
          {
            if (v3 >= v10)
            {
              OUTLINED_FUNCTION_12_2();
              operator new();
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t _TBS_Sign_v1::parse(_TBS_Sign_v1 *this, const unsigned __int8 *a2, unsigned int a3)
{
  v6 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  if (ASN1Item::readTag(v6, v7, v8, v13))
  {
    OUTLINED_FUNCTION_13_2();
    if (v10)
    {
      Integer = ASN1Item::getInteger(v9, v13, (v3 + 20));
      if (a3 >= v14)
      {
        if (ASN1Item::readTag(Integer, &a2[v14], a3 - v14, v13))
        {
          OUTLINED_FUNCTION_8_3();
          if (v10)
          {
            operator new();
          }
        }
      }
    }
  }

  return 0;
}

uint64_t _SESeal_v1::parse(_SESeal_v1 *this, const unsigned __int8 *a2, int a3)
{
  v3 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  if (ASN1Item::readTag(v3, v4, v5, v8))
  {
    OUTLINED_FUNCTION_8_3();
    if (v6)
    {
      OUTLINED_FUNCTION_12_2();
      operator new();
    }
  }

  return 0;
}

void _SES_SealInfo_v1::parse(_SES_SealInfo_v1 *this, const unsigned __int8 *a2, int a3)
{
  v3 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  OUTLINED_FUNCTION_2_20(v3, v4, v5, v8);
  if (v6)
  {
    OUTLINED_FUNCTION_8_3();
    if (v7)
    {
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_21_1();
    }
  }
}

void _SES_ESPropertyInfo_v1::parse(_SES_ESPropertyInfo_v1 *this, const unsigned __int8 *a2, int a3)
{
  v6 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  OUTLINED_FUNCTION_2_20(v6, v7, v8, v39);
  if (v9)
  {
    OUTLINED_FUNCTION_13_2();
    if (v16)
    {
      Integer = ASN1Item::getInteger(v10, v39, (v3 + 20));
      OUTLINED_FUNCTION_6_7(Integer, v41, v38);
      OUTLINED_FUNCTION_15_1();
      v16 = !v16 && v15 == 12;
      if (v16)
      {
        OUTLINED_FUNCTION_29(v12, v13, v14);
        OUTLINED_FUNCTION_11_2();
        v18 = (a3 - v17);
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_2_20(v19, v20, v18, v21);
        if (v22)
        {
          OUTLINED_FUNCTION_8_3();
          if (v16)
          {
            v26 = &a2[v41];
            v27 = v18 - v41;
            v28 = OUTLINED_FUNCTION_1_24(v23, v24, v25, v39);
            if (v29)
            {
              if (v40 == 23)
              {
                ASN1Item::getDate(v28, v39, (v3 + 56));
                OUTLINED_FUNCTION_3_14();
                v33 = OUTLINED_FUNCTION_1_24(v30, v31, v32, v39);
                if (v34)
                {
                  if (v40 == 23)
                  {
                    Date = ASN1Item::getDate(v33, v39, (v3 + 80));
                    v36 = OUTLINED_FUNCTION_2_20(Date, &v26[v41], v27 - v41, v39);
                    if (v37)
                    {
                      if (v40 == 23)
                      {
                        ASN1Item::getDate(v36, v39, (v3 + 104));
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
  }
}

void _SES_SignInfo_v1::parse(_SES_SignInfo_v1 *this, const unsigned __int8 *a2, int a3)
{
  v7 = OUTLINED_FUNCTION_0_41(this, a2, a3);
  v10 = OUTLINED_FUNCTION_2_20(v7, v8, v9, &v47);
  if (v18 && BYTE2(v47) == 4)
  {
    v19 = OUTLINED_FUNCTION_7_4(v10, v11, v12, v13, v14, v15, v16, v17, v44, v47, HIDWORD(v47), __src);
    *(v3 + 24) = v19;
    v27 = OUTLINED_FUNCTION_28(v19, v20, v21, v22, v23, v24, v25, v26, v45, v47, __src);
    *(v3 + 32) = v4;
    v28 = &a2[v49];
    v29 = (a3 - v49);
    ASN1Item::readTag(v27, v28, v29, &v47);
    OUTLINED_FUNCTION_15_1();
    v32 = !v32 && v31 == 6;
    if (v32)
    {
      ObjectIdentifier = ASN1Item::getObjectIdentifier(v30, &v47, v3 + 40);
      OUTLINED_FUNCTION_2_20(ObjectIdentifier, &v28[v49], (v29 - v49), &v47);
      if (v34)
      {
        OUTLINED_FUNCTION_20_1();
        if (v32)
        {
          v43 = OUTLINED_FUNCTION_24_0(v35, v36, v37, v38, v39, v40, v41, v42, v46, v47, HIDWORD(v47), __src);
          *(v3 + 64) = v43;
          memcpy(v43, __src, v29);
          *(v3 + 72) = v29;
        }
      }
    }
  }
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63F00]();
}

{
  return MEMORY[0x1EEE63F08]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

at_size_t at_encoder_get_block_counts(at_encoder_t encoder, at_size_t imageSize)
{
  v2 = MEMORY[0x1EEE63828](encoder, *&imageSize.x, *&imageSize.z);
  result.x = v2;
  result.y = HIDWORD(v2);
  result.z = v3;
  return result;
}