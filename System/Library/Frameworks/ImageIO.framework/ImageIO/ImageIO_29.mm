void sub_186015F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t sortifd(_BYTE *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = bswap32(*a2) >> 16;
  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = *a2;
  }

  v5 = *a3;
  v6 = bswap32(v5) >> 16;
  if (*a1)
  {
    LOWORD(v5) = v6;
  }

  return v4 - v5;
}

uint64_t copyRemainder(__sFILE *a1, __sFILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v8 = v7;
  v10 = v9;
  v14 = *MEMORY[0x1E69E9840];
  bzero(__ptr, 0x1000uLL);
  while (1)
  {
    v11 = fread(__ptr, 1uLL, 0x1000uLL, v10);
    if (v11 <= 0xFFFuLL)
    {
      break;
    }

    if (fwrite(__ptr, 1uLL, v11, v8) != v11)
    {
      return 4294967276;
    }
  }

  if (!feof(v10))
  {
    return 4294967277;
  }

  if (fwrite(__ptr, 1uLL, v11, v8) == v11)
  {
    return 0;
  }

  return 4294967276;
}

uint64_t IIO_BytesPerPixelForPixelFormatPlane0(__darwin_ct_rune_t a1)
{
  v1 = a1;
  if (a1 > 1380411456)
  {
    if (a1 > 1932996148)
    {
      if (a1 > 2019963439)
      {
        if (a1 <= 2019963955)
        {
          if (a1 == 2019963440)
          {
            return 2;
          }

          v5 = 2019963442;
        }

        else
        {
          if (a1 == 2019963956 || a1 == 2037741158)
          {
            return 2;
          }

          v5 = 2037741171;
        }
      }

      else
      {
        if (a1 <= 2016686639)
        {
          if (a1 == 1932996149)
          {
            return 2;
          }

          v3 = 1999843442;
          goto LABEL_52;
        }

        if (a1 == 2016686640 || a1 == 2016686642)
        {
          return 2;
        }

        v5 = 2016687156;
      }
    }

    else
    {
      result = 8;
      if (v1 <= 1751410031)
      {
        if (v1 > 1650943795)
        {
          if (v1 != 1650943796)
          {
            if (v1 != 1717855600)
            {
              v3 = 1717856627;
              goto LABEL_52;
            }

            return 4;
          }

          return 2;
        }

        if (v1 == 1380411457)
        {
          return result;
        }

        v3 = 1647534392;
LABEL_52:
        if (v1 == v3)
        {
          return 4;
        }

        goto LABEL_62;
      }

      if (v1 <= 1815162993)
      {
        if (v1 == 1751410032)
        {
          return 2;
        }

        v5 = 1751411059;
      }

      else
      {
        if (v1 == 1815162994)
        {
          return 4;
        }

        if (v1 == 1815491698)
        {
          return result;
        }

        v5 = 1919379252;
      }
    }

    goto LABEL_60;
  }

  if (a1 > 875704949)
  {
    if (a1 <= 1278226735)
    {
      if (a1 <= 875836533)
      {
        if (a1 == 875704950)
        {
          return 1;
        }

        v4 = 875836518;
      }

      else
      {
        if (a1 == 875836534)
        {
          return 1;
        }

        if (a1 == 1111970369)
        {
          return 4;
        }

        v4 = 1278226488;
      }

      goto LABEL_56;
    }

    if (a1 > 1278555700)
    {
      if (a1 == 1278555701 || a1 == 1279340600)
      {
        return 2;
      }

      v3 = 1380401729;
      goto LABEL_52;
    }

    if (a1 == 1278226736)
    {
      return 2;
    }

    v5 = 1278226742;
LABEL_60:
    if (v1 == v5)
    {
      return 2;
    }

    goto LABEL_62;
  }

  if (a1 <= 843264103)
  {
    if (a1 <= 825306676)
    {
      if (a1 == 16)
      {
        return 2;
      }

      if (a1 == 32)
      {
        return 4;
      }

LABEL_62:
      v6 = v1 >> 24;
      v7 = MEMORY[0x1E69E9830];
      if ((v1 >> 24) <= 0x7F)
      {
        v8 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000;
      }

      else
      {
        v8 = __maskrune(v1 >> 24, 0x40000uLL);
      }

      if (v8)
      {
        v9 = v6;
      }

      else
      {
        v9 = 46;
      }

      v10 = v1 << 8 >> 24;
      if (v10 <= 0x7F)
      {
        v11 = *(v7 + 4 * v10 + 60) & 0x40000;
      }

      else
      {
        v11 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
      }

      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 46;
      }

      LODWORD(v13) = v1 >> 8;
      if (v13 <= 0x7F)
      {
        v14 = *(v7 + 4 * v13 + 60) & 0x40000;
      }

      else
      {
        v14 = __maskrune(v1 >> 8, 0x40000uLL);
      }

      if (v14)
      {
        v13 = v13;
      }

      else
      {
        v13 = 46;
      }

      v1 = v1;
      if (v1 <= 0x7F)
      {
        v15 = *(v7 + 4 * v1 + 60) & 0x40000;
      }

      else
      {
        v15 = __maskrune(v1, 0x40000uLL);
      }

      if (v15)
      {
        v16 = v1;
      }

      else
      {
        v16 = 46;
      }

      LogError("IIO_BytesPerPixelForPixelFormatPlane0", 141, "*** IIO_BytesPerPixelForPixelFormatPlane0 - '%c%c%c%c' not handled\n", v9, v12, v13, v16);
      return 1;
    }

    if (a1 == 825306677)
    {
      return 2;
    }

    v5 = 825437747;
    goto LABEL_60;
  }

  if (a1 <= 875704421)
  {
    if (a1 == 843264104)
    {
      return 4;
    }

    v3 = 843264310;
    goto LABEL_52;
  }

  if (a1 == 875704422 || a1 == 875704438)
  {
    return 1;
  }

  v4 = 875704934;
LABEL_56:
  if (a1 != v4)
  {
    goto LABEL_62;
  }

  return 1;
}

uint64_t IIO_IOSurfaceFormatIsFloat(int a1)
{
  result = 1;
  if (a1 <= 1380410944)
  {
    if (a1 > 1279340645)
    {
      if (a1 == 1279340646)
      {
        return result;
      }

      v3 = 1279340648;
    }

    else
    {
      if (a1 == 1278226534)
      {
        return result;
      }

      v3 = 1278226536;
    }

    goto LABEL_13;
  }

  if (a1 <= 1751527983)
  {
    if (a1 == 1380410945)
    {
      return result;
    }

    v3 = 1380411457;
    goto LABEL_13;
  }

  if (a1 != 1751527984 && a1 != 1751527986)
  {
    v3 = 1751528500;
LABEL_13:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t IIO_FillGeometry420(__darwin_ct_rune_t a1, unsigned int a2, uint64_t a3, float64_t a4, double a5, double a6, double a7)
{
  v9 = a1;
  v10 = a6;
  v11 = a7;
  v12 = (a7 + a5 + ~((a5 - 1) % a7));
  *a3 = (a6 + a4 + ~((a4 - 1) % a6));
  *(a3 + 8) = v12;
  v13 = IIO_BytesPerPixelForPixelFormatPlane0(a1);
  v14.f64[0] = a4;
  v15 = v13;
  v16 = (*a3 * v13);
  if (v16 % a2)
  {
    v17 = a2 - v16 % a2;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 + v16;
  *(a3 + 16) = v13;
  *(a3 + 20) = v18;
  if (a4 <= 0.0 || a5 <= 0.0)
  {
    IIO_FillGeometry420();
    return 4294967246;
  }

  if (v18 < 0)
  {
    IIO_FillGeometry420();
    return 4294967246;
  }

  if (v9 > 2016686639)
  {
    if (v9 > 2019963439)
    {
      if (v9 == 2019963956)
      {
        goto LABEL_27;
      }

      if (v9 != 2019963442)
      {
        if (v9 != 2019963440)
        {
LABEL_32:
          if ((v9 >> 24) > 0x7F)
          {
            __maskrune(v9 >> 24, 0x40000uLL);
          }

          if ((v9 << 8 >> 24) > 0x7F)
          {
            __maskrune(v9 << 8 >> 24, 0x40000uLL);
          }

          if ((v9 >> 8) > 0x7F)
          {
            __maskrune(v9 >> 8, 0x40000uLL);
          }

          v9 = v9;
          if (v9 > 0x7F)
          {
            __maskrune(v9, 0x40000uLL);
          }

          _cg_jpeg_mem_term("IIO_FillGeometry420", 254, "*** unhandled pixel format '%c%c%c%c'\n");
          return 4294967246;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v9 == 2016686640)
      {
        goto LABEL_25;
      }

      if (v9 != 2016686642)
      {
        v19 = 2016687156;
        goto LABEL_20;
      }
    }

    goto LABEL_26;
  }

  if (v9 > 875704949)
  {
    if (v9 != 875704950)
    {
      if (v9 != 875836518)
      {
        v19 = 875836534;
LABEL_20:
        if (v9 != v19)
        {
          goto LABEL_32;
        }
      }

LABEL_27:
      *(a3 + 24) = v14.f64[0];
      *(a3 + 32) = a5;
      goto LABEL_28;
    }

LABEL_26:
    v14.f64[0] = ((a4 + 1.0) * 0.5);
    goto LABEL_27;
  }

  if (v9 != 875704422 && v9 != 875704438)
  {
    if (v9 != 875704934)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14.f64[1] = a5;
  __asm { FMOV            V1.2D, #1.0 }

  v25 = vaddq_f64(v14, _Q1);
  __asm { FMOV            V2.2D, #0.5 }

  v27 = vcvtq_u64_f64(vmulq_f64(v25, _Q2));
  v14 = vcvtq_f64_u64(v27);
  *(a3 + 24) = v14;
  v12 = (v27.i64[1] + v11 + ~((v27.i64[1] - 1) % v11));
LABEL_28:
  result = 0;
  v29 = ((v14.f64[0] + v14.f64[0]) + v10 + ~(((v14.f64[0] + v14.f64[0]) - 1) % v10));
  *(a3 + 40) = v29;
  *(a3 + 48) = v12;
  v30 = (v15 * v29);
  if (v30 % a2)
  {
    v31 = a2 - v30 % a2;
  }

  else
  {
    v31 = 0;
  }

  *(a3 + 56) = v31 + v30;
  return result;
}

uint64_t IIOAlignRowBytes(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 1;
  if (!a2)
  {
    v2 = 15;
  }

  return (v2 + a1) & ~v2;
}

void IIO_UpdateAttachmentsDictionaryFromIOSurfaceStruct(IIODictionary *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 52);
  if (v4)
  {
    IIONumber::IIONumber(&v23, *(a2 + 48) / v4);
    IIODictionary::setObjectForKey(a1, value, *gIIO_kCVImageBufferGammaLevelKey);
    IIONumber::~IIONumber(&v23);
  }

  StringForIntegerCodePoint = gFunc_CVYCbCrMatrixGetStringForIntegerCodePoint(*(a2 + 58));
  if (StringForIntegerCodePoint)
  {
    IIODictionary::setObjectForKey(a1, StringForIntegerCodePoint, *gIIO_kCVImageBufferYCbCrMatrixKey);
  }

  v6 = gFunc_CVColorPrimariesGetStringForIntegerCodePoint(*(a2 + 59));
  if (v6)
  {
    IIODictionary::setObjectForKey(a1, v6, *gIIO_kCVImageBufferColorPrimariesKey);
  }

  v7 = gFunc_CVTransferFunctionGetStringForIntegerCodePoint(*(a2 + 60));
  if (v7)
  {
    IIODictionary::setObjectForKey(a1, v7, *gIIO_kCVImageBufferTransferFunctionKey);
  }

  else if (*(a2 + 60) == 2 && *(a2 + 52))
  {
    IIODictionary::setObjectForKey(a1, *gIIO_kCVImageBufferTransferFunction_UseGamma, *gIIO_kCVImageBufferTransferFunctionKey);
  }

  if (*(a2 + 61) - 1 <= 6)
  {
    IIODictionary::setObjectForKey(a1, **off_1E6F095B8[(*(a2 + 61) - 1)], *gIIO_kCVImageBufferChromaLocationTopFieldKey);
  }

  if (*(a2 + 62) - 1 <= 6)
  {
    IIODictionary::setObjectForKey(a1, **off_1E6F095B8[(*(a2 + 62) - 1)], *gIIO_kCVImageBufferChromaLocationBottomFieldKey);
  }

  if (*(a2 + 63) - 1 <= 2)
  {
    IIODictionary::setObjectForKey(a1, **off_1E6F095F0[(*(a2 + 63) - 1)], *gIIO_kCVImageBufferChromaSubsamplingKey);
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a2 + 66);
    if (v9)
    {
      v10 = *(a2 + 68);
      if (v10)
      {
        v11 = *(a2 + 70);
        if (v11)
        {
          v12 = *(a2 + 72);
          if (v12)
          {
            v13 = *(a2 + 74);
            if (v13)
            {
              v14 = *(a2 + 76);
              if (v14)
              {
                v15 = *(a2 + 78);
                if (v15)
                {
                  v16 = *(a2 + 80);
                  if (v16)
                  {
                    v23 = HIBYTE(v8);
                    v24 = v8;
                    v25 = HIBYTE(v9);
                    v26 = v9;
                    v27 = HIBYTE(v10);
                    v28 = v10;
                    v29 = HIBYTE(v11);
                    v30 = v11;
                    v31 = HIBYTE(v12);
                    v32 = v12;
                    v33 = HIBYTE(v13);
                    v34 = v13;
                    v35 = HIBYTE(v14);
                    v36 = v14;
                    v37 = HIBYTE(v15);
                    v38 = v15;
                    LOBYTE(value) = HIBYTE(v16);
                    BYTE1(value) = BYTE2(v16);
                    BYTE2(value) = BYTE1(v16);
                    BYTE3(value) = v16;
                    HIDWORD(value) = bswap32(*(a2 + 84));
                    v17 = CFDataCreate(*MEMORY[0x1E695E480], &v23, 24);
                    IIODictionary::setObjectForKey(a1, v17, *gIIO_kCVImageBufferMasteringDisplayColorVolumeKey);
                    CFRelease(v17);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v18 = *(a2 + 88);
  if (v18)
  {
    v19 = *(a2 + 90);
    if (v19)
    {
      v23 = HIBYTE(v18);
      v24 = v18;
      v25 = HIBYTE(v19);
      v26 = v19;
      v20 = CFDataCreate(*MEMORY[0x1E695E480], &v23, 4);
      IIODictionary::setObjectForKey(a1, v20, *gIIO_kCVImageBufferContentLightLevelInfoKey);
      CFRelease(v20);
    }
  }

  v21 = *(a2 + 100);
  if (v21 == 1)
  {
    v22 = &gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha;
  }

  else
  {
    if (v21 != 2)
    {
      return;
    }

    v22 = &gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha;
  }

  IIODictionary::setObjectForKey(a1, *gIIO_kCVImageBufferAlphaChannelModeKey, **v22);
}

void sub_186017490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

__IOSurface *IIO_CreateSurfaceWithFormat(int a1, unint64_t a2, unint64_t a3, CGColorSpace *a4)
{
  v4 = 0;
  if (!a2 || !a3)
  {
    return v4;
  }

  v40 = 0;
  properties = 0;
  v42 = 0;
  IIODictionary::IIODictionary(&v40);
  if (a1 > 1647534391)
  {
    if (a1 > 1999843441)
    {
      if (a1 > 2019963441)
      {
        if (a1 > 2021077553)
        {
          if (a1 == 2021077554)
          {
            goto LABEL_75;
          }

          if (a1 == 2037741158)
          {
            goto LABEL_87;
          }

          v12 = 13364;
        }

        else
        {
          if (a1 == 2019963442 || a1 == 2019963956)
          {
            goto LABEL_75;
          }

          v12 = 12848;
        }

        v9 = v12 | 0x78770000;
        goto LABEL_74;
      }

      if (a1 > 2016686641)
      {
        if (a1 != 2016686642 && a1 != 2016687156)
        {
          v9 = 2019963440;
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (a1 == 1999843442)
      {
        goto LABEL_71;
      }

      if (a1 != 1999908961)
      {
        v9 = 2016686640;
        goto LABEL_74;
      }
    }

    else
    {
      if (a1 > 1885745713)
      {
        if (a1 <= 1886859825)
        {
          if (a1 != 1885745714 && a1 != 1885746228)
          {
            v9 = 1886859824;
            goto LABEL_74;
          }

          goto LABEL_75;
        }

        if (a1 == 1886859826 || a1 == 1886860340)
        {
          goto LABEL_75;
        }

        v10 = 1915826283;
        goto LABEL_57;
      }

      if (a1 > 1882468913)
      {
        if (a1 != 1882468914 && a1 != 1882469428)
        {
          v9 = 1885745712;
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (a1 == 1647534392)
      {
        goto LABEL_75;
      }

      if (a1 != 1815491698)
      {
        v9 = 1882468912;
        goto LABEL_74;
      }
    }

LABEL_62:
    v13 = 8;
LABEL_118:
    v37 = *MEMORY[0x1E696CE30];
    v38 = MEMORY[0x186602010](*MEMORY[0x1E696CE30], ((v13 * a2 + 15) & 0xFFFFFFFFFFFFFFF0) * a3);
    IIONumber::IIONumber(&v52, a2);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696D130]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, a3);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CF58]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, a1);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CFC0]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, v13);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CE50]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, (v13 * a2 + 15) & 0xFFFFFFF0);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CE58]);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, v38);
    IIODictionary::setObjectForKey(&v40, v54, v37);
    IIONumber::~IIONumber(&v52);
    IIONumber::IIONumber(&v52, 0);
    IIODictionary::setObjectForKey(&v40, v54, *MEMORY[0x1E696CE60]);
    IIONumber::~IIONumber(&v52);
    IIODictionary::setObjectForKey(&v40, *MEMORY[0x1E695E4C0], *MEMORY[0x1E696CFB8]);
    goto LABEL_119;
  }

  if (a1 > 875836533)
  {
    if (a1 <= 1278226741)
    {
      if (a1 > 1278226487)
      {
        if (a1 != 1278226488)
        {
          if (a1 != 1278226534)
          {
            v11 = 1278226536;
            goto LABEL_69;
          }

          goto LABEL_71;
        }
      }

      else
      {
        if (a1 == 875836534)
        {
          goto LABEL_75;
        }

        if (a1 != 1093677112)
        {
          v10 = 1111970369;
LABEL_57:
          if (a1 != v10)
          {
            goto LABEL_119;
          }

          goto LABEL_71;
        }
      }

      v13 = 1;
      goto LABEL_118;
    }

    if (a1 <= 1380401728)
    {
      if (a1 == 1278226742 || a1 == 1278555445)
      {
LABEL_87:
        v13 = 2;
        goto LABEL_118;
      }

      v11 = 1278555701;
LABEL_69:
      if (a1 != v11)
      {
        goto LABEL_119;
      }

      goto LABEL_87;
    }

    if (a1 == 1380401729)
    {
LABEL_71:
      v13 = 4;
      goto LABEL_118;
    }

    if (a1 == 1380410945)
    {
      v13 = 16;
      goto LABEL_118;
    }

    if (a1 != 1380411457)
    {
      goto LABEL_119;
    }

    goto LABEL_62;
  }

  if (a1 <= 875704420)
  {
    if (a1 > 843264309)
    {
      if (a1 != 843264310)
      {
        if (a1 == 875639142)
        {
          goto LABEL_75;
        }

        v9 = 875639158;
LABEL_74:
        if (a1 == v9)
        {
          goto LABEL_75;
        }

LABEL_119:
        v4 = IOSurfaceCreate(properties);
        goto LABEL_120;
      }

      goto LABEL_71;
    }

    if (a1 != 32)
    {
      v11 = 843264056;
      goto LABEL_69;
    }

    goto LABEL_71;
  }

  if (a1 > 875704933)
  {
    if (a1 <= 875836467)
    {
      if (a1 == 875704934)
      {
        goto LABEL_75;
      }

      v9 = 875704950;
      goto LABEL_74;
    }

    if (a1 != 875836468)
    {
      v9 = 875836518;
      goto LABEL_74;
    }

    goto LABEL_87;
  }

  if ((a1 - 875704421) > 0x11 || ((1 << (a1 - 101)) & 0x20003) == 0)
  {
    goto LABEL_119;
  }

LABEL_75:
  v52 = 0;
  value = 0;
  v54 = 0;
  IIOArray::IIOArray(&v52);
  if (a1 <= 1882468911)
  {
    if (a1 <= 875836517)
    {
      if (a1 > 875704933)
      {
        if (a1 != 875704934 && a1 != 875704950)
        {
          goto LABEL_116;
        }

        v49 = 0;
        v50 = 0;
        v51 = 0;
        IIODictionary::IIODictionary(&v49);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        IIODictionary::IIODictionary(&v46);
        v23 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], a2);
        v24 = v23 * a3;
        IIO_UpdatePlaneDict(a2, a3, v23, 0, v23 * a3, 0, &v49);
        IIO_UpdatePlaneDict((a2 + 1) >> 1, a3, v23, v24, v24, 0, &v46);
        IIOArray::addObject(&v52, v50);
        IIOArray::addObject(&v52, v47);
        IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
        goto LABEL_111;
      }

      if (a1 != 875704422 && a1 != 875704438)
      {
        goto LABEL_116;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      v14 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], a2);
      v15 = v14 * a3;
      IIO_UpdatePlaneDict(a2, a3, v14, 0, v14 * a3, 0, &v49);
      v16 = v14 * (a3 >> 1);
      IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v14, v14 * a3, v16, 0, &v46);
      IIOArray::addObject(&v52, v50);
      IIOArray::addObject(&v52, v47);
      IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
      goto LABEL_109;
    }

    if (a1 > 1647534391)
    {
      if (a1 != 1647534392)
      {
        if (a1 == 1714696752)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          IIODictionary::IIODictionary(&v49);
          v46 = 0;
          v47 = 0;
          v48 = 0;
          IIODictionary::IIODictionary(&v46);
          v43 = 0;
          v44 = 0;
          v45 = 0;
          IIODictionary::IIODictionary(&v43);
          v25 = *MEMORY[0x1E696CE58];
          v26 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], a2);
          v27 = MEMORY[0x186602010](v25, a2 >> 1);
          v28 = v26 * a3;
          IIO_UpdatePlaneDict(a2, a3, v26, 0, v26 * a3, 0, &v49);
          v29 = v27 * (a3 >> 1);
          IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v27, v28, v29, 0, &v46);
          v30 = v29 + v28;
          IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v27, v30, v29, 0, &v43);
          IIOArray::addObject(&v52, v50);
          IIOArray::addObject(&v52, v47);
          IIOArray::addObject(&v52, v44);
          IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
          v31 = v30 + v29;
          IIODictionary::~IIODictionary(&v43);
LABEL_115:
          IIODictionary::~IIODictionary(&v46);
          IIODictionary::~IIODictionary(&v49);
          IIONumber::IIONumber(&v49, a2);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696D130]);
          IIONumber::~IIONumber(&v49);
          IIONumber::IIONumber(&v49, a3);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696CF58]);
          IIONumber::~IIONumber(&v49);
          IIONumber::IIONumber(&v49, a1);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696CFC0]);
          IIONumber::~IIONumber(&v49);
          IIONumber::IIONumber(&v49, v31);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696CE30]);
          IIONumber::~IIONumber(&v49);
          IIONumber::IIONumber(&v49, 1024);
          IIODictionary::setObjectForKey(&v40, v51, *MEMORY[0x1E696CE60]);
          IIONumber::~IIONumber(&v49);
          IIOArray::~IIOArray(&v52);
          goto LABEL_119;
        }

        goto LABEL_116;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      v34 = *MEMORY[0x1E696CE58];
      v35 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], 4 * a2);
      v18 = (v35 * a3 + 4095) & 0xFFFFFFFFFFFFF000;
      IIO_UpdatePlaneDict(a2, a3, v35, 0, v18, 4, &v49);
      v36 = MEMORY[0x186602010](v34, a2);
      v20 = (v36 * a3 + 4095) & 0xFFFFFFFFFFFFF000;
      IIO_UpdatePlaneDict(a2, a3, v36, v18, v20, 1, &v46);
      IIOArray::addObject(&v52, v50);
      IIOArray::addObject(&v52, v47);
      IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
    }

    else
    {
      if (a1 != 875836518 && a1 != 875836534)
      {
        goto LABEL_116;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      v17 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], a2);
      v18 = v17 * a3;
      IIO_UpdatePlaneDict(a2, a3, v17, 0, v17 * a3, 0, &v49);
      v19 = 2 * v17;
      v20 = 2 * v17 * a3;
      IIO_UpdatePlaneDict(a2, a3, v19, v18, v20, 0, &v46);
      IIOArray::addObject(&v52, v50);
      IIOArray::addObject(&v52, v47);
      IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
    }

    v31 = v20 + v18;
    goto LABEL_115;
  }

  if (a1 > 2016686641)
  {
    if (a1 > 2019963441)
    {
      if (a1 != 2019963442)
      {
        if (a1 != 2021077552)
        {
          if (a1 != 2021077554)
          {
            goto LABEL_116;
          }

          goto LABEL_110;
        }

        goto LABEL_108;
      }

LABEL_110:
      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      v33 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], 2 * a2);
      v24 = v33 * a3;
      IIO_UpdatePlaneDict(a2, a3, v33, 0, v33 * a3, 0, &v49);
      IIO_UpdatePlaneDict((a2 + 1) >> 1, a3, v33, v24, v24, 0, &v46);
      IIOArray::addObject(&v52, v50);
      IIOArray::addObject(&v52, v47);
      IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
LABEL_111:
      v31 = 2 * v24;
      goto LABEL_115;
    }

    if (a1 == 2016686642)
    {
      goto LABEL_110;
    }

    v21 = 2019963440;
    goto LABEL_107;
  }

  if (a1 <= 1886859823)
  {
    if (a1 != 1882468912 && a1 != 1885745712)
    {
      goto LABEL_116;
    }

    goto LABEL_98;
  }

  if (a1 == 1886859824)
  {
LABEL_98:
    v49 = 0;
    v50 = 0;
    v51 = 0;
    IIODictionary::IIODictionary(&v49);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    IIODictionary::IIODictionary(&v46);
    v22 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], (2 * (((a2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = v22 * a3;
    IIO_UpdatePlaneDict(a2, a3, v22, 0, v22 * a3, 0, &v49);
    v16 = v22 * (a3 >> 1);
    IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v22, v22 * a3, v16, 0, &v46);
    IIOArray::addObject(&v52, v50);
    IIOArray::addObject(&v52, v47);
    IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
LABEL_109:
    v31 = v15 + v16;
    goto LABEL_115;
  }

  v21 = 2016686640;
LABEL_107:
  if (a1 == v21)
  {
LABEL_108:
    v49 = 0;
    v50 = 0;
    v51 = 0;
    IIODictionary::IIODictionary(&v49);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    IIODictionary::IIODictionary(&v46);
    v32 = MEMORY[0x186602010](*MEMORY[0x1E696CE58], 2 * a2);
    v15 = v32 * a3;
    IIO_UpdatePlaneDict(a2, a3, v32, 0, v32 * a3, 0, &v49);
    v16 = v32 * (a3 >> 1);
    IIO_UpdatePlaneDict((a2 + 1) >> 1, (a3 + 1) >> 1, v32, v32 * a3, v16, 0, &v46);
    IIOArray::addObject(&v52, v50);
    IIOArray::addObject(&v52, v47);
    IIODictionary::setObjectForKey(&v40, value, *MEMORY[0x1E696D0A8]);
    goto LABEL_109;
  }

LABEL_116:
  IIOArray::~IIOArray(&v52);
  v4 = 0;
LABEL_120:
  IIODictionary::~IIODictionary(&v40);
  if (a4 && v4)
  {
    IIO_IOSurfaceAddColorSpace(v4, a4);
  }

  return v4;
}

void sub_1860184CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  IIOArray::~IIOArray(va3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIO_IOSurfaceAddColorSpace(__IOSurface *a1, CGColorSpace *a2)
{
  if (a1 && a2)
  {
    ID = CGColorSpaceGetID();
    if (ID)
    {
      IIONumber::IIONumber(&v9, ID);
      IOSurfaceSetValue(a1, @"IOSurfaceColorSpaceID", value[0]);
      IIONumber::~IIONumber(&v9);
    }

    v5 = CGColorSpaceCopyPropertyList(a2);
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x1E696CEE0];
    }

    else
    {
      v8 = CGColorSpaceCopyICCData(a2);
      if (!v8)
      {
LABEL_10:
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        *value = 0u;
        BYTE10(v12) = 6;
        IOSurfaceSetBulkAttachments2();
        IOSurfaceSetValue(a1, *MEMORY[0x1E696D138], *MEMORY[0x1E696D148]);
        return;
      }

      v6 = v8;
      v7 = MEMORY[0x1E696CF60];
    }

    IOSurfaceSetValue(a1, *v7, v6);
    CFRelease(v6);
    goto LABEL_10;
  }
}

__IOSurface *IIO_CreateBiPlanarIOSurfaceWithFormat(__darwin_ct_rune_t a1, CGSize a2, CGSize a3, unsigned int a4, unsigned __int8 *a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, BOOL a11, int *a12)
{
  height = a3.height;
  width = a3.width;
  v20 = a2.height;
  v21 = a2.width;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  IIODictionary::IIODictionary(&v65);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  IIODictionary::IIODictionary(&v62);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  IIODictionary::IIODictionary(&v59);
  v47 = a6;
  v48 = a5;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  IIOArray::IIOArray(&v56);
  v55 = 0;
  v53 = 0u;
  *v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  if (IIO_FillGeometry420(a1, a4, &v51, v21, v20, width, height))
  {
    goto LABEL_33;
  }

  IIONumber::IIONumber(v49, v21);
  IIODictionary::setObjectForKey(&v65, value, *MEMORY[0x1E696D130]);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v20);
  IIODictionary::setObjectForKey(&v65, value, *MEMORY[0x1E696CF58]);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, a1);
  IIODictionary::setObjectForKey(&v65, value, *MEMORY[0x1E696CFC0]);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v21);
  v23 = *MEMORY[0x1E696D0C8];
  IIODictionary::setObjectForKey(&v62, v49, *MEMORY[0x1E696D0C8]);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v20);
  v24 = *MEMORY[0x1E696D090];
  IIODictionary::setObjectForKey(&v62, v49, *MEMORY[0x1E696D090]);
  IIONumber::~IIONumber(v49);
  v25 = v52;
  IIONumber::IIONumber(v49, v52);
  v26 = *MEMORY[0x1E696CFE0];
  IIODictionary::setObjectForKey(&v62, v49, *MEMORY[0x1E696CFE0]);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, a7);
  v27 = *MEMORY[0x1E696D0B0];
  IIODictionary::setObjectForKey(&v62, v49, *MEMORY[0x1E696D0B0]);
  IIONumber::~IIONumber(v49);
  v28 = DWORD1(v52);
  IIONumber::IIONumber(v49, SDWORD1(v52));
  v29 = *MEMORY[0x1E696CFE8];
  IIODictionary::setObjectForKey(&v62, v49, *MEMORY[0x1E696CFE8]);
  IIONumber::~IIONumber(v49);
  v30 = a8;
  if (!a8)
  {
    v30 = *(&v51 + 1) * v28;
  }

  v31 = v30;
  if ((v31 & 0x80000000) != 0)
  {
    v45 = "*** IOSurface does not support luma planeSize larger than INT32_MAX";
    v46 = 1026;
LABEL_32:
    _cg_jpeg_mem_term("IIO_CreateBiPlanarIOSurfaceWithFormat", v46, v45);
LABEL_33:
    v42 = 0;
LABEL_20:
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = -50;
    }

    goto LABEL_26;
  }

  IIONumber::IIONumber(v49, v30);
  v32 = *MEMORY[0x1E696D0B8];
  IIODictionary::setObjectForKey(&v62, v49, *MEMORY[0x1E696D0B8]);
  IIONumber::~IIONumber(v49);
  IIOArray::addObject(&v56, v63);
  IIONumber::IIONumber(v49, *(&v52 + 1));
  IIODictionary::setObjectForKey(&v59, v49, v23);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, *&v53);
  IIODictionary::setObjectForKey(&v59, v49, v24);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, 2 * v25);
  IIODictionary::setObjectForKey(&v59, v49, v26);
  IIONumber::~IIONumber(v49);
  if (a9)
  {
    v33 = a9;
  }

  else
  {
    v33 = v31;
  }

  IIONumber::IIONumber(v49, v33);
  IIODictionary::setObjectForKey(&v59, v49, v27);
  IIONumber::~IIONumber(v49);
  v34 = v54[2];
  IIONumber::IIONumber(v49, v54[2]);
  IIODictionary::setObjectForKey(&v59, v49, v29);
  IIONumber::~IIONumber(v49);
  v35 = *v54 * v34;
  v36 = v35;
  if ((v35 & 0x80000000) != 0)
  {
    v45 = "IOSurface does not support chroma planeSize larger than INT32_MAX";
    v46 = 1041;
    goto LABEL_32;
  }

  IIONumber::IIONumber(v49, v35);
  IIODictionary::setObjectForKey(&v59, v49, v32);
  IIONumber::~IIONumber(v49);
  v37 = v36 + v31;
  if ((v37 & 0x80000000) != 0)
  {
    v45 = "IOSurface does not support allocSize larger than INT32_MAX";
    v46 = 1044;
    goto LABEL_32;
  }

  IIOArray::addObject(&v56, v60);
  IIODictionary::setObjectForKey(&v65, v57, *MEMORY[0x1E696D0A8]);
  v38 = v48;
  if (v48)
  {
    v39 = 0;
    v40 = v47;
  }

  else
  {
    if (!a11)
    {
      v39 = 0;
      goto LABEL_17;
    }

    v39 = _ImageIO_Malloc(v37, 4, &v55, kImageMalloc_IOSurface_Data, 0, 0);
    v40 = v55;
    v38 = v39;
    if (!v39)
    {
      goto LABEL_17;
    }
  }

  if (v40)
  {
    IIONumber::IIONumber(v49, v28);
    IIODictionary::setObjectForKey(&v65, value, *MEMORY[0x1E696CE58]);
    IIONumber::~IIONumber(v49);
    IIONumber::IIONumber(v49, v40);
    IIODictionary::setObjectForKey(&v65, value, *MEMORY[0x1E696CE30]);
    IIONumber::~IIONumber(v49);
    IIONumber::IIONumber(v49, v38);
    IIODictionary::setObjectForKey(&v65, value, *MEMORY[0x1E696CEB8]);
    IIONumber::~IIONumber(v49);
  }

LABEL_17:
  v41 = IOSurfaceCreate(v66);
  v42 = v41;
  if (v41)
  {
    IOSurfaceSetValue(v41, *MEMORY[0x1E696CF98], @"ImageIO");
    if (v39)
    {
      IIONumber::IIONumber(v49, v55);
      IOSurfaceSetValue(v42, @"iosurface_plane_datasize", value);
      IIONumber::~IIONumber(v49);
      IOSurfaceSetValue(v42, @"com.apple.ImageIO.ImageIO_Malloced", *MEMORY[0x1E695E4D0]);
    }

    goto LABEL_20;
  }

  LogError("IIO_CreateBiPlanarIOSurfaceWithFormat", 1088, "*** ERROR: IOSurfaceCreate failed (kIOSurfaceClientAddress)\n");
  if (v39)
  {
    _ImageIO_Free(v39, v55);
  }

  v42 = 0;
  v43 = -50;
LABEL_26:
  if (a12)
  {
    *a12 = v43;
  }

  IIOArray::~IIOArray(&v56);
  IIODictionary::~IIODictionary(&v59);
  IIODictionary::~IIODictionary(&v62);
  IIODictionary::~IIODictionary(&v65);
  return v42;
}

void sub_186018D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  IIONumber::~IIONumber(&a12);
  IIOArray::~IIOArray(&a24);
  IIODictionary::~IIODictionary(&a27);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v29 - 144));
  _Unwind_Resume(a1);
}

__IOSurface *IIO_CreateIOSurfaceWithFormatAndBuffer(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _BOOL4 a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v11 = a4;
  v12 = a3;
  v47[0] = 0;
  if (((a3 + 15) & 0xFFFFFFF0) != a3)
  {
    if ((a4 >> 24) > 0x7F)
    {
      __maskrune(a4 >> 24, 0x40000uLL);
    }

    if ((v11 << 8 >> 24) > 0x7F)
    {
      __maskrune(v11 << 8 >> 24, 0x40000uLL);
    }

    if ((v11 >> 8) > 0x7F)
    {
      __maskrune(v11 >> 8, 0x40000uLL);
    }

    if (v11 > 0x7F)
    {
      __maskrune(v11, 0x40000uLL);
    }

    _cg_jpeg_mem_term("IIO_CreateIOSurfaceWithFormatAndBuffer", 1122, "*** IIO_CreateIOSurfaceWithFormatAndBuffer: '%c%c%c%c':  rowBytes: %d   alignedRowBytes: %d\n");
    v9 = a6;
    v8 = a7;
  }

  if (v11 <= 1380410944)
  {
    if (v11 <= 1111970368)
    {
      if (v11 == 875704422 || v11 == 875704934)
      {
        goto LABEL_32;
      }

      v16 = 875836518;
LABEL_31:
      if (v11 == v16)
      {
        goto LABEL_32;
      }

LABEL_80:
      IIO_CreateIOSurfaceWithFormatAndBuffer(v11);
      BiPlanarIOSurfaceWithFormat = 0;
LABEL_33:
      v20 = a5;
      if (a5)
      {
        return BiPlanarIOSurfaceWithFormat;
      }

LABEL_76:
      if (v20 && !BiPlanarIOSurfaceWithFormat)
      {
        _ImageIO_Free(v20, v47[0]);
      }

      return BiPlanarIOSurfaceWithFormat;
    }

    if (v11 == 1111970369)
    {
      goto LABEL_27;
    }

    if (v11 == 1278226488)
    {
      v18 = 1;
      goto LABEL_38;
    }

    v17 = 1380401729;
  }

  else
  {
    if (v11 > 1815491697)
    {
      if (v11 > 2019963441)
      {
        if (v11 == 2019963442)
        {
LABEL_32:
          v48.width = a1;
          v48.height = a2;
          v49.width = 16.0;
          v49.height = 16.0;
          BiPlanarIOSurfaceWithFormat = IIO_CreateBiPlanarIOSurfaceWithFormat(v11, v48, v49, 0x10u, 0, 0, 0, 0, 0, a8, v8, v44);
          goto LABEL_33;
        }

        v15 = 13364;
        goto LABEL_30;
      }

      if (v11 != 1815491698)
      {
        v15 = 12848;
LABEL_30:
        v16 = v15 | 0x78660000;
        goto LABEL_31;
      }

LABEL_35:
      v18 = 8;
      goto LABEL_38;
    }

    if (v11 == 1380410945)
    {
      v18 = 16;
      goto LABEL_38;
    }

    if (v11 == 1380411457)
    {
      goto LABEL_35;
    }

    v17 = 1815162994;
  }

  if (v11 != v17)
  {
    goto LABEL_80;
  }

LABEL_27:
  v18 = 4;
LABEL_38:
  if (a5 || !v8)
  {
    v47[0] = v9;
    v20 = a5;
  }

  else
  {
    if (!v12)
    {
      v12 = (v18 * a1 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (!is_mul_ok(a2, v12))
    {
      return 0;
    }

    v9 = a2 * v12;
    v21 = _ImageIO_Malloc(a2 * v12, 0, v47, kImageMalloc_IOSurface_Data, 0, 0);
    if (!v21)
    {
      return 0;
    }

    v20 = v21;
  }

  *v44 = 0;
  v45 = 0;
  v46 = 0;
  IIODictionary::IIODictionary(v44);
  IIONumber::IIONumber(v42, a1);
  IIODictionary::setObjectForKey(v44, value, *MEMORY[0x1E696D130]);
  IIONumber::~IIONumber(v42);
  IIONumber::IIONumber(v42, a2);
  IIODictionary::setObjectForKey(v44, value, *MEMORY[0x1E696CF58]);
  IIONumber::~IIONumber(v42);
  IIONumber::IIONumber(v42, v11);
  IIODictionary::setObjectForKey(v44, value, *MEMORY[0x1E696CFC0]);
  IIONumber::~IIONumber(v42);
  IIONumber::IIONumber(v42, v18);
  IIODictionary::setObjectForKey(v44, value, *MEMORY[0x1E696CE50]);
  IIONumber::~IIONumber(v42);
  IIONumber::IIONumber(v42, 2);
  IIODictionary::setObjectForKey(v44, value, *MEMORY[0x1E696CF70]);
  IIONumber::~IIONumber(v42);
  v22 = a5 != 0 || v8;
  v37 = v18;
  if (v22 == 1)
  {
    v47[0] = v9;
    IIONumber::IIONumber(v42, v12);
    IIODictionary::setObjectForKey(v44, value, *MEMORY[0x1E696CE58]);
    IIONumber::~IIONumber(v42);
    IIONumber::IIONumber(v42, v9);
    IIODictionary::setObjectForKey(v44, value, *MEMORY[0x1E696CE30]);
    IIONumber::~IIONumber(v42);
    IIONumber::IIONumber(v42, v20);
    IIODictionary::setObjectForKey(v44, value, *MEMORY[0x1E696CEB8]);
    IIONumber::~IIONumber(v42);
    IIONumber::IIONumber(v42, 0);
    v41 = v9;
    IIODictionary::setObjectForKey(v44, value, *MEMORY[0x1E696D0B0]);
    IIONumber::~IIONumber(v42);
    v23 = v12;
  }

  else
  {
    v41 = 0;
    v23 = 0;
  }

  v24 = IOSurfaceCreate(v45);
  BiPlanarIOSurfaceWithFormat = v24;
  if (v24)
  {
    IOSurfaceSetValue(v24, *MEMORY[0x1E696CF98], @"ImageIO");
    if (v22)
    {
      IOSurfaceSetValue(BiPlanarIOSurfaceWithFormat, @"com.apple.ImageIO.ImageIO_Malloced", *MEMORY[0x1E695E4D0]);
    }
  }

  else
  {
    LODWORD(v25) = HIBYTE(v11);
    if ((*(MEMORY[0x1E69E9830] + 4 * HIBYTE(v11) + 60) & 0x40000) != 0)
    {
      v25 = v25;
    }

    else
    {
      v25 = 46;
    }

    v39 = v25;
    v26 = v11 << 8 >> 24;
    v27 = MEMORY[0x1E69E9830];
    if (v26 <= 0x7F)
    {
      v28 = *(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x40000;
    }

    else
    {
      v28 = __maskrune(v11 << 8 >> 24, 0x40000uLL);
    }

    if (v28)
    {
      v29 = v26;
    }

    else
    {
      v29 = 46;
    }

    v36 = v29;
    v30 = v11 >> 8;
    if (v30 <= 0x7F)
    {
      v31 = *(v27 + 4 * v30 + 60) & 0x40000;
    }

    else
    {
      v31 = __maskrune(v11 >> 8, 0x40000uLL);
    }

    v11 = v11;
    if (v11 <= 0x7F)
    {
      v32 = *(v27 + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v32 = __maskrune(v11, 0x40000uLL);
    }

    if (v31)
    {
      v33 = v30;
    }

    else
    {
      v33 = 46;
    }

    if (v32)
    {
      v34 = v11;
    }

    else
    {
      v34 = 46;
    }

    LogError("IIO_CreateIOSurfaceWithFormatAndBuffer", 1220, "*** ERROR: IOSurfaceCreate '%c%c%c%c' failed - clientAddress: %p allocSize: 0x%08lx  size: %d x %d  rb: %d [0x%08x]  bpp: %d\n", v39, v36, v33, v34, v20, v41, a1, a2, v23, v23, v37);
  }

  IIODictionary::~IIODictionary(v44);
  if (!a5)
  {
    goto LABEL_76;
  }

  return BiPlanarIOSurfaceWithFormat;
}

void sub_1860194DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary((v24 - 120));
  _Unwind_Resume(a1);
}

void sub_1860195F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void IIO_CreateIOSurfaceWithPixelBufferAttributes(const __CFDictionary *a1)
{
  memset(v4, 0, sizeof(v4));
  IIODictionary::IIODictionary(v4, a1);
  Uint32ForKey = IIODictionary::getUint32ForKey(v4, *gIIO_kCVPixelBufferWidthKey);
  v2 = IIODictionary::getUint32ForKey(v4, *gIIO_kCVPixelBufferHeightKey);
  v3 = IIODictionary::getUint32ForKey(v4, *gIIO_kCVPixelBufferPixelFormatTypeKey);
  IIO_CreateIOSurfaceProperties(Uint32ForKey, v2, v3);
}

void sub_1860197F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

__IOSurface *IIO_CreateIOSurfaceFromImage(CGImage *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if (!IIO_CGImageWrapsIOSurface(a1, 1))
  {
    BitsPerComponent = CGImageGetBitsPerComponent(a1);
    AlphaInfo = CGImageGetAlphaInfo(a1);
    v7 = CGImageGetBitmapInfo(a1) & 0xF00;
    if (BitsPerComponent > 15)
    {
      if (BitsPerComponent == 16)
      {
        if (v7 != 256)
        {
LABEL_30:
          v21 = a1;
          v22 = 1815491698;
LABEL_31:
          RGhA_IOSurfaceFromImage = IIO_create_RGhA_IOSurfaceFromImage(v21, v22);
          if (!RGhA_IOSurfaceFromImage)
          {
            return RGhA_IOSurfaceFromImage;
          }

          goto LABEL_69;
        }

LABEL_29:
        v21 = a1;
        v22 = 1380411457;
        goto LABEL_31;
      }

      if (BitsPerComponent == 32)
      {
LABEL_22:
        Width = CGImageGetWidth(a1);
        Height = CGImageGetHeight(a1);
        BytesPerRow = CGImageGetBytesPerRow(a1);
        RGhA_IOSurfaceFromImage = IIO_CreateIOSurfaceWithFormatAndBuffer(Width, Height, BytesPerRow, 1380410945, 0, 0, 0, v11);
        if (!RGhA_IOSurfaceFromImage)
        {
          _cg_jpeg_mem_term("IIO_create_RGfA_IOSurfaceFromImage", 1559, "*** ERROR: failed to create IOSurface from image data provider(%p)\n");
          return RGhA_IOSurfaceFromImage;
        }

        DataProvider = CGImageGetDataProvider(a1);
        v13 = IOSurfaceGetHeight(RGhA_IOSurfaceFromImage);
        v14 = IOSurfaceGetBytesPerRow(RGhA_IOSurfaceFromImage);
        if (IOSurfaceLock(RGhA_IOSurfaceFromImage, 0, 0))
        {
          goto LABEL_68;
        }

        BaseAddress = IOSurfaceGetBaseAddress(RGhA_IOSurfaceFromImage);
        if (CGDataProviderGetSizeOfData() == -1)
        {
          v31 = v13;
          Length = BytesPerRow * Height;
          v20 = malloc_type_malloc(BytesPerRow * Height, 0x100004077774924uLL);
          CGDataProviderRewind();
          CGDataProviderGetBytes();
          v17 = 0;
          BytePtr = v20;
        }

        else
        {
          v16 = CGDataProviderCopyData(DataProvider);
          if (!v16)
          {
LABEL_67:
            IOSurfaceUnlock(RGhA_IOSurfaceFromImage, 0, 0);
LABEL_68:
            ColorSpace = CGImageGetColorSpace(a1);
            IIO_IOSurfaceAddColorSpace(RGhA_IOSurfaceFromImage, ColorSpace);
LABEL_69:
            CGImageGetContentHeadroom();
            IIONumber::IIONumber(&v33, v29);
            IOSurfaceSetValue(RGhA_IOSurfaceFromImage, @"IOSurfaceContentHeadroom", *&v33.bitmapInfo);
            IIONumber::~IIONumber(&v33);
            return RGhA_IOSurfaceFromImage;
          }

          v17 = v16;
          v31 = v13;
          BytePtr = CFDataGetBytePtr(v16);
          Length = CFDataGetLength(v17);
          v20 = 0;
        }

        if (BytePtr && Length)
        {
          if (v14 * v31 == BytesPerRow * Height)
          {
            memcpy(BaseAddress, BytePtr, Length);
          }

          else
          {
            if (BytesPerRow >= v14)
            {
              v27 = v14;
            }

            else
            {
              v27 = BytesPerRow;
            }

            for (; Height; --Height)
            {
              memcpy(BaseAddress, BytePtr, v27);
              BytePtr += BytesPerRow;
              BaseAddress += v14;
            }
          }
        }

        if (v20)
        {
          free(v20);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        goto LABEL_67;
      }
    }

    else
    {
      if (BitsPerComponent == 8)
      {
        goto LABEL_35;
      }

      if (BitsPerComponent == 10)
      {
        if (v7 == 256)
        {
          v2 = 1380411457;
        }

        else
        {
          v2 = 1815491698;
        }

        if (AlphaInfo == kCGImageAlphaNone)
        {
          v2 = 1815162994;
LABEL_45:
          if ((v2 << 8 >> 24) > 0x7F)
          {
            __maskrune(v2 << 8 >> 24, 0x40000uLL);
          }

          if ((v2 >> 8) > 0x7F)
          {
            __maskrune(v2 >> 8, 0x40000uLL);
          }

          if (v2 > 0x7F)
          {
            __maskrune(v2, 0x40000uLL);
          }

          _cg_jpeg_mem_term("IIO_CreateIOSurfaceFromImage", 1703, "*** ERROR: unhandled pixelFormat: '%c%c%c%c'\n");
          return 0;
        }

        goto LABEL_17;
      }
    }

    _cg_jpeg_mem_term("IIO_CreateIOSurfaceFromImage", 1679, "*** ERROR: unhandled bitDepth '%d'\n");
LABEL_17:
    if (v2 > 1380410944)
    {
      if (v2 != 1380410945)
      {
        if (v2 != 1380411457)
        {
          if (v2 != 1815491698)
          {
            goto LABEL_43;
          }

          goto LABEL_30;
        }

        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v2 != 1111970369 && v2 != 1380401729)
    {
LABEL_43:
      if ((v2 >> 24) > 0x7F)
      {
        __maskrune(v2 >> 24, 0x40000uLL);
      }

      goto LABEL_45;
    }

LABEL_35:
    v23 = CGImageGetColorSpace(a1);
    v24 = CFRetain(v23);
    CGImageGetBitmapInfo(a1);
    v25 = CGImageGetAlphaInfo(a1);
    if (v25 == kCGImageAlphaNoneSkipFirst)
    {
      v26 = 5;
    }

    else
    {
      v26 = v25;
      if (v25 == kCGImageAlphaFirst)
      {
        v26 = 3;
      }

      else if (v25 == kCGImageAlphaPremultipliedFirst)
      {
        v26 = 1;
      }
    }

    *&v33.bitsPerComponent = 0x2000000008;
    v33.colorSpace = v24;
    v33.bitmapInfo = v26 | 0x2000;
    memset(&v33.version, 0, 20);
    operator new();
  }

  CGImageGetImageProvider();
  memset(&v33, 0, 24);
  IIODictionary::IIODictionary(&v33);
  if (v2)
  {
    IIONumber::IIONumber(&dest, v2);
    IIODictionary::setObjectForKey(&v33, &dest.data, @"kCGImageSurfaceFormatRequest");
    IIONumber::~IIONumber(&dest);
  }

  RGhA_IOSurfaceFromImage = CGImageProviderCopyIOSurface();
  IIODictionary::~IIODictionary(&v33);
  return RGhA_IOSurfaceFromImage;
}

__IOSurface *IIO_create_RGhA_IOSurfaceFromImage(CGImage *a1, uint64_t a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  AlphaInfo = CGImageGetAlphaInfo(a1);
  v10 = AlphaInfo;
  v13 = BitsPerPixel == 48 && AlphaInfo == kCGImageAlphaNone && BytesPerRow < 8 * Width;
  v32 = v13;
  IOSurfaceWithFormatAndBuffer = IIO_CreateIOSurfaceWithFormatAndBuffer(Width, Height, BytesPerRow, a2, 0, 0, 0, v9);
  if (IOSurfaceWithFormatAndBuffer)
  {
    DataProvider = CGImageGetDataProvider(a1);
    v16 = IOSurfaceGetHeight(IOSurfaceWithFormatAndBuffer);
    v17 = IOSurfaceGetBytesPerRow(IOSurfaceWithFormatAndBuffer);
    if (IOSurfaceLock(IOSurfaceWithFormatAndBuffer, 0, 0))
    {
      if (v10)
      {
LABEL_13:
        v18 = CGImageGetAlphaInfo(a1);
LABEL_41:
        IIO_IOSurfaceSetAlpha(IOSurfaceWithFormatAndBuffer, v18);
        ColorSpace = CGImageGetColorSpace(a1);
        IIO_IOSurfaceAddColorSpace(IOSurfaceWithFormatAndBuffer, ColorSpace);
        return IOSurfaceWithFormatAndBuffer;
      }

LABEL_40:
      v18 = 5;
      goto LABEL_41;
    }

    v28 = v16;
    v31 = v17;
    BaseAddress = IOSurfaceGetBaseAddress(IOSurfaceWithFormatAndBuffer);
    if (CGDataProviderGetSizeOfData() == -1)
    {
      Length = BytesPerRow * Height;
      v30 = malloc_type_malloc(BytesPerRow * Height, 0x100004077774924uLL);
      CGDataProviderRewind();
      BytePtr = v30;
      CGDataProviderGetBytes();
      cf = 0;
      if (!v30)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v20 = CGDataProviderCopyData(DataProvider);
      if (!v20)
      {
        goto LABEL_39;
      }

      v21 = v20;
      BytePtr = CFDataGetBytePtr(v20);
      cf = v21;
      Length = CFDataGetLength(v21);
      v30 = 0;
      if (!BytePtr)
      {
LABEL_35:
        if (v30)
        {
          free(v30);
        }

        if (cf)
        {
          CFRelease(cf);
        }

LABEL_39:
        IOSurfaceUnlock(IOSurfaceWithFormatAndBuffer, 0, 0);
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_40;
      }
    }

    if (Length)
    {
      if (v32)
      {
        rgbSrc.data = BytePtr;
        rgbSrc.height = Height;
        rgbSrc.width = Width;
        rgbSrc.rowBytes = BytesPerRow;
        rgbaDest.data = BaseAddress;
        rgbaDest.height = Height;
        if (a2 == 1380411457)
        {
          v24 = 15360;
        }

        else
        {
          v24 = -1;
        }

        rgbaDest.width = Width;
        rgbaDest.rowBytes = v31;
        vImageConvert_RGB16UtoRGBA16U(&rgbSrc, 0, v24, &rgbaDest, 0, 0x10u);
      }

      else if (v28 == Height && v31 == BytesPerRow && Length == v31 * v28)
      {
        memcpy(BaseAddress, BytePtr, Length);
      }

      else
      {
        if (BytesPerRow >= v31)
        {
          v25 = v31;
        }

        else
        {
          v25 = BytesPerRow;
        }

        for (; Height; --Height)
        {
          memcpy(BaseAddress, BytePtr, v25);
          BytePtr += BytesPerRow;
          BaseAddress += v31;
        }
      }
    }

    goto LABEL_35;
  }

  _cg_jpeg_mem_term("IIO_create_RGhA_IOSurfaceFromImage", 1451, "*** ERROR: failed to create IOSurface from image data provider(%p)\n");
  return IOSurfaceWithFormatAndBuffer;
}

__IOSurface *IIO_CreateIOSurfaceFromBlockSet(uint64_t a1, const __CFDictionary *a2)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  IIODictionary::IIODictionary(&v37);
  memset(v36, 0, sizeof(v36));
  IIODictionary::IIODictionary(v36, a2);
  if (CGImageBlockSetGetCount() != 1)
  {
    LogError("IIO_CreateIOSurfaceFromBlockSet", 1738, "   _createIOSurfaceFromBlockSet != 1");
    goto LABEL_45;
  }

  Property = CGImageBlockSetGetProperty();
  if (Property)
  {
    v4 = Property == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  ComponentType = CGImageBlockSetGetComponentType();
  PixelSize = CGImageBlockSetGetPixelSize();
  v8 = 1380411457;
  v9 = PixelSize;
  if (ComponentType != 5)
  {
    if (ComponentType == 2)
    {
      BoolForKey = IIODictionary::getBoolForKey(v36, @"kCGImageSourceShouldAllowFloat");
      if (BoolForKey)
      {
        v8 = 1380411457;
      }

      else
      {
        v8 = 1815491698;
      }

      goto LABEL_18;
    }

    if (ComponentType == 1)
    {
      if (PixelSize == 4)
      {
        BoolForKey = 0;
        v8 = 1111970369;
        goto LABEL_18;
      }

      v23 = "*** ERROR can't handle RGB-888 input (pixelSize=%d) (componentType=%d)\n";
      v24 = 1759;
    }

    else
    {
      v23 = "*** ERROR can't handle non-RGBA input (pixelSize=%d) (componentType=%d)\n";
      v24 = 1792;
    }

    _cg_jpeg_mem_term("IIO_CreateIOSurfaceFromBlockSet", v24, v23);
LABEL_45:
    v20 = 0;
    goto LABEL_46;
  }

  BoolForKey = 0;
LABEL_18:
  CGImageBlockSetGetImageBlock();
  CGImageBlockGetRect();
  v12 = v11;
  v14 = v13;
  IIONumber::IIONumber(&src, v8);
  IIODictionary::setObjectForKey(&v37, src.width, *MEMORY[0x1E696CFC0]);
  IIONumber::~IIONumber(&src);
  v15 = v12;
  IIONumber::IIONumber(&src, v12);
  IIODictionary::setObjectForKey(&v37, src.width, *MEMORY[0x1E696D130]);
  IIONumber::~IIONumber(&src);
  IIONumber::IIONumber(&src, v14);
  IIODictionary::setObjectForKey(&v37, src.width, *MEMORY[0x1E696CF58]);
  IIONumber::~IIONumber(&src);
  BytesPerRow = CGImageBlockGetBytesPerRow();
  v17 = BytesPerRow;
  if (v9 == 6)
  {
    v18 = 8 * v12;
  }

  else
  {
    v18 = BytesPerRow;
  }

  IIONumber::IIONumber(&src, v18);
  IIODictionary::setObjectForKey(&v37, src.width, *MEMORY[0x1E696CE58]);
  IIONumber::~IIONumber(&src);
  if (v9 == 6)
  {
    v19 = 8;
  }

  else
  {
    v19 = v9;
  }

  IIONumber::IIONumber(&src, v19);
  IIODictionary::setObjectForKey(&v37, src.width, *MEMORY[0x1E696CE50]);
  IIONumber::~IIONumber(&src);
  v20 = IOSurfaceCreate(v38);
  if (!v20)
  {
    LODWORD(v25) = HIBYTE(v8);
    v26 = MEMORY[0x1E69E9830] + 60;
    if ((*(MEMORY[0x1E69E9830] + 60 + 4 * HIBYTE(v8)) & 0x40000) != 0)
    {
      v25 = v25;
    }

    else
    {
      v25 = 46;
    }

    LODWORD(v27) = HIWORD(v8) & 0x77;
    v4 = (*(v26 + 4 * v27) & 0x40000) == 0;
    LODWORD(v28) = (v8 >> 8) & 0x7E;
    v29 = *(v26 + 4 * v28);
    v30 = *(v26 + 4 * (v8 & 0x73));
    if (v4)
    {
      v27 = 46;
    }

    else
    {
      v27 = v27;
    }

    if ((v29 & 0x40000) != 0)
    {
      v28 = v28;
    }

    else
    {
      v28 = 46;
    }

    if ((v30 & 0x40000) != 0)
    {
      v31 = v8 & 0x73;
    }

    else
    {
      v31 = 46;
    }

    LogError("IIO_CreateIOSurfaceFromBlockSet", 1876, "*** IOSurfaceCreate failed for '%c%c%c%c' (%d x %d   rb:%d)\n", v25, v27, v28, v31, v12, v14, v17);
    goto LABEL_45;
  }

  Data = CGImageBlockGetData();
  if (!IOSurfaceLock(v20, 0, 0))
  {
    BaseAddress = IOSurfaceGetBaseAddress(v20);
    if (BaseAddress)
    {
      if (BoolForKey)
      {
        src.data = Data;
        src.height = v14;
        src.width = 4 * v15;
        src.rowBytes = v17;
        dest.data = BaseAddress;
        dest.height = src.height;
        dest.width = src.width;
        dest.rowBytes = v17;
        vImageConvert_16Uto16F(&src, &dest, 0);
      }

      else if (v9 == 6)
      {
        src.data = Data;
        src.height = v14;
        src.width = v12;
        src.rowBytes = v17;
        dest.data = BaseAddress;
        dest.height = src.height;
        dest.width = src.width;
        dest.rowBytes = 8 * v15;
        vImageConvert_RGB16UtoRGBA16U(&src, 0, 0xFFFFu, &dest, 0, 0x10u);
      }

      else if (v9 == 4 && !v5)
      {
        *permuteMap = 50331906;
        src.data = Data;
        src.height = v14;
        src.width = v12;
        src.rowBytes = v17;
        dest.data = BaseAddress;
        dest.height = src.height;
        dest.width = src.width;
        dest.rowBytes = v17;
        vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0x10u);
      }

      else
      {
        memcpy(BaseAddress, Data, v17 * v14);
      }
    }

    IOSurfaceUnlock(v20, 0, 0);
  }

LABEL_46:
  IIODictionary::~IIODictionary(v36);
  IIODictionary::~IIODictionary(&v37);
  return v20;
}

void sub_18601A770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v25 - 128));
  _Unwind_Resume(a1);
}

uint64_t IIO_IOSurfaceLogAlphaInfo(__IOSurface *a1, const char *a2)
{
  if (a1)
  {
    if ((gIIODebugFlags & 0x40000000000) != 0)
    {
      PixelFormat = IOSurfaceGetPixelFormat(a1);
      v5 = IOSurfaceCopyAllValues(a1);
      if (v5)
      {
        v6 = v5;
        memset(&v24, 0, sizeof(v24));
        memset(v23, 0, sizeof(v23));
        IIODictionary::IIODictionary(v23, v5);
        if (!IOSurfaceGetBulkAttachments())
        {
          std::string::append(&v24, "bulk: alphaUnknown  ");
        }

        IIO_LoadHEIFSymbols();
        if (IIODictionary::containsKey(v23, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
        {
          if (IIODictionary::getBoolForKey(v23, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
          {
            v7 = "alphaOpaque  ";
          }

          else
          {
            v7 = "alphaNotOpaque  ";
          }

          std::string::append(&v24, v7);
        }

        if (IIODictionary::containsKey(v23, *gIIO_kCVImageBufferAlphaChannelModeKey))
        {
          ObjectForKey = IIODictionary::getObjectForKey(v23, *gIIO_kCVImageBufferAlphaChannelModeKey);
          if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha, 0))
          {
            if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha, 0))
            {
              v9 = "unknown  ";
            }

            else
            {
              v9 = "alphaStraight  ";
            }
          }

          else
          {
            v9 = "alphaPremul  ";
          }

          std::string::append(&v24, v9);
        }

        if ((gIIODebugFlags & 0x40000000000) != 0)
        {
          v10 = PixelFormat >> 24;
          if ((PixelFormat >> 24) <= 0x7F)
          {
            v11 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
          }

          else
          {
            v11 = __maskrune(PixelFormat >> 24, 0x40000uLL);
          }

          if (v11)
          {
            v12 = v10;
          }

          else
          {
            v12 = 46;
          }

          v13 = PixelFormat << 8 >> 24;
          if (v13 <= 0x7F)
          {
            v14 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000;
          }

          else
          {
            v14 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
          }

          if (v14)
          {
            v15 = v13;
          }

          else
          {
            v15 = 46;
          }

          v16 = PixelFormat >> 8;
          if (v16 <= 0x7F)
          {
            v17 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
          }

          else
          {
            v17 = __maskrune(PixelFormat >> 8, 0x40000uLL);
          }

          PixelFormat = PixelFormat;
          if (PixelFormat <= 0x7F)
          {
            v18 = *(MEMORY[0x1E69E9830] + 4 * PixelFormat + 60) & 0x40000;
          }

          else
          {
            v18 = __maskrune(PixelFormat, 0x40000uLL);
          }

          if (v17)
          {
            v19 = v16;
          }

          else
          {
            v19 = 46;
          }

          if (v18)
          {
            v20 = PixelFormat;
          }

          else
          {
            v20 = 46;
          }

          v21 = &v24;
          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v21 = v24.__r_.__value_.__r.__words[0];
          }

          ImageIOLog("☢️  %s <IOSurface:  %p> '%c%c%c%c' - %s\n", a2, a1, v12, v15, v19, v20, v21);
        }

        CFRelease(v6);
        IIODictionary::~IIODictionary(v23);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  return 0;
}

void sub_18601AB08(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t IIO_IOSurfaceGetAlpha(__IOSurface *a1, uint64_t a2)
{
  IIO_LoadJPEGSymbols(a1, a2);
  if (!a1)
  {
    v5 = 0;
    LODWORD(v4) = 0;
    goto LABEL_47;
  }

  PixelFormat = IOSurfaceGetPixelFormat(a1);
  LODWORD(v4) = PixelFormat;
  v5 = 0;
  if (PixelFormat > 1815162993)
  {
    if (PixelFormat <= 2016687155)
    {
      if (PixelFormat <= 1999843441)
      {
        if (PixelFormat != 1815162994)
        {
          v6 = 1983066168;
          goto LABEL_32;
        }
      }

      else if (PixelFormat != 1999843442)
      {
        if (PixelFormat == 2016686640)
        {
          goto LABEL_47;
        }

        v6 = 2016686642;
        goto LABEL_32;
      }

      v5 = 5;
      goto LABEL_47;
    }

    if (PixelFormat > 2019963955)
    {
      if (PixelFormat == 2019963956 || PixelFormat == 2037741158)
      {
        goto LABEL_47;
      }

      v6 = 2037741171;
    }

    else
    {
      if (PixelFormat == 2016687156 || PixelFormat == 2019963440)
      {
        goto LABEL_47;
      }

      v6 = 2019963442;
    }

LABEL_32:
    if (PixelFormat == v6)
    {
      goto LABEL_47;
    }

LABEL_33:
    v7 = IOSurfaceCopyAllValues(a1);
    if (!v7)
    {
      v5 = 0;
      goto LABEL_47;
    }

    v8 = v7;
    memset(v22, 0, sizeof(v22));
    IIODictionary::IIODictionary(v22, v7);
    v5 = 0;
    if (IOSurfaceGetBulkAttachments())
    {
      goto LABEL_46;
    }

    if (IIODictionary::containsKey(v22, *gIIO_kCVImageBufferAlphaChannelIsOpaque) && IIODictionary::getBoolForKey(v22, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
    {
      v5 = 5;
    }

    else
    {
      if (IIODictionary::containsKey(v22, *gIIO_kCVImageBufferAlphaChannelModeKey))
      {
        ObjectForKey = IIODictionary::getObjectForKey(v22, *gIIO_kCVImageBufferAlphaChannelModeKey);
        if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha, 0) == kCFCompareEqualTo)
        {
          LogError("IIO_IOSurfaceGetAlpha", 2413, "*** ERROR: IOSurface kCVImageBufferAlphaChannelMode_PremultipliedAlpha, but keys.premultipliedAlpha = %d\n", 0);
          v5 = 1;
          goto LABEL_46;
        }

        if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha, 0) == kCFCompareEqualTo)
        {
          LogError("IIO_IOSurfaceGetAlpha", 2419, "*** ERROR: IOSurface kCVImageBufferAlphaChannelMode_StraightAlpha, but keys.premultipliedAlpha = %d\n", 0);
          v5 = 3;
          goto LABEL_46;
        }
      }

      v5 = 0;
    }

LABEL_46:
    IIODictionary::~IIODictionary(v22);
    CFRelease(v8);
    goto LABEL_47;
  }

  if (PixelFormat <= 1278226487)
  {
    if (PixelFormat <= 846624120)
    {
      if (PixelFormat == 24)
      {
        goto LABEL_47;
      }

      v6 = 846624102;
    }

    else
    {
      if (PixelFormat == 846624121 || PixelFormat == 875704422)
      {
        goto LABEL_47;
      }

      v6 = 875704438;
    }

    goto LABEL_32;
  }

  if (PixelFormat > 1278226735)
  {
    if (PixelFormat == 1278226736 || PixelFormat == 1278226742)
    {
      goto LABEL_47;
    }

    v6 = 1714630712;
    goto LABEL_32;
  }

  if ((PixelFormat - 1278226488) > 0x30 || ((1 << (PixelFormat - 56)) & 0x1400000000001) == 0)
  {
    goto LABEL_33;
  }

LABEL_47:
  if ((gIIODebugFlags & 0x40000000000) != 0)
  {
    v10 = v4 >> 24;
    v11 = MEMORY[0x1E69E9830];
    if ((v4 >> 24) <= 0x7F)
    {
      v12 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v4 >> 24, 0x40000uLL);
    }

    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = 46;
    }

    v14 = (v4 << 8) >> 24;
    if (v14 <= 0x7F)
    {
      v15 = *(v11 + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune((v4 << 8) >> 24, 0x40000uLL);
    }

    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 46;
    }

    LODWORD(v17) = v4 >> 8;
    if (v17 <= 0x7F)
    {
      v18 = *(v11 + 4 * v17 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v4 >> 8, 0x40000uLL);
    }

    if (v18)
    {
      v17 = v17;
    }

    else
    {
      v17 = 46;
    }

    LODWORD(v4) = v4;
    if (v4 <= 0x7F)
    {
      v19 = *(v11 + 4 * v4 + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune(v4, 0x40000uLL);
    }

    if (v19)
    {
      v4 = v4;
    }

    else
    {
      v4 = 46;
    }

    v20 = IIO_AlphaInfoString(v5);
    ImageIOLog("☢️  IIO_IOSurfaceGetAlpha <IOSurface:  %p> '%c%c%c%c' -  alpha:%s\n", a1, v13, v16, v17, v4, v20);
  }

  return v5;
}

uint64_t IIO_IOSurfaceSetAlpha(__IOSurface *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v2 = a2;
  IIO_LoadHEIFSymbols();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 132;
  if (IOSurfaceGetBulkAttachments())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  if ((v2 - 1) <= 1)
  {
    BYTE4(v18) = 2;
    v4 = &gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha;
LABEL_9:
    v6 = *v4;
    v7 = &gIIO_kCVImageBufferAlphaChannelModeKey;
    goto LABEL_10;
  }

  if ((v2 - 3) <= 1)
  {
    BYTE4(v18) = 1;
    v4 = &gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha;
    goto LABEL_9;
  }

  BYTE4(v18) = 0;
  if (!v2)
  {
    goto LABEL_11;
  }

  v7 = &gIIO_kCVImageBufferAlphaChannelIsOpaque;
  v6 = MEMORY[0x1E695E4D0];
LABEL_10:
  IOSurfaceSetValue(a1, **v7, *v6);
LABEL_11:
  IOSurfaceSetBulkAttachments2();
  if ((gIIODebugFlags & 0x40000000000) != 0)
  {
    strcpy(&__p, "IIO_IOSurfaceSetAlpha ");
    *(&__p.__r_.__value_.__s + 23) = 22;
    v8 = IIO_AlphaInfoString(v2);
    std::string::append(&__p, v8);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    IIO_IOSurfaceLogAlphaInfo(a1, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_18601B1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

vImage_Error IIO_IOSurfacePremultiply(__IOSurface *a1, uint64_t a2)
{
  Alpha = IIO_IOSurfaceGetAlpha(a1, a2);
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  if (Alpha != 3)
  {
    return 4294967246;
  }

  v5 = PixelFormat;
  if (IOSurfaceLock(a1, 0, 0))
  {
    return 4294967246;
  }

  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  v12.data = IOSurfaceGetBaseAddress(a1);
  v12.height = Height;
  v12.width = Width;
  v12.rowBytes = BytesPerRow;
  if (v5 <= 1380411456)
  {
    if (v5 == 1111970369 || v5 == 1380401729)
    {
      v11 = vImagePremultiplyData_RGBA8888(&v12, &v12, 0x10u);
      goto LABEL_14;
    }

LABEL_12:
    IOSurfaceUnlock(a1, 0, 0);
    return -50;
  }

  if (v5 == 1380411457)
  {
    v11 = vImagePremultiplyData_RGBA16F(&v12, &v12, 0x10u);
  }

  else
  {
    if (v5 != 1815491698)
    {
      goto LABEL_12;
    }

    v11 = vImagePremultiplyData_RGBA16U(&v12, &v12, 0x10u);
  }

LABEL_14:
  v6 = v11;
  IOSurfaceUnlock(a1, 0, 0);
  if (!v6)
  {
    IIO_IOSurfaceSetAlpha(a1, 1);
  }

  return v6;
}

vImage_Error IIOSurfaceCopyAlphaValuesFromSource(__IOSurface *a1, __IOSurface *a2)
{
  Alpha = IIO_IOSurfaceGetAlpha(a1, a2);
  v5 = 0;
  if (!Alpha)
  {
    return v5;
  }

  v6 = Alpha;
  if (Alpha == 5)
  {
    return v5;
  }

  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v8 = IOSurfaceGetPixelFormat(a2);
  v9 = v8;
  if (PixelFormat > 1380411456)
  {
    if (PixelFormat != 1815491698)
    {
      v10 = 26689;
LABEL_8:
      if (PixelFormat != (v10 | 0x52470000))
      {
        goto LABEL_17;
      }
    }
  }

  else if (PixelFormat != 1111970369)
  {
    v10 = 16961;
    goto LABEL_8;
  }

  if (v8 > 1380411456)
  {
    if (v8 == 1815491698)
    {
      goto LABEL_15;
    }

    v11 = 26689;
  }

  else
  {
    if (v8 == 1111970369)
    {
      goto LABEL_15;
    }

    v11 = 16961;
  }

  if (v8 == (v11 | 0x52470000))
  {
LABEL_15:
    Width = IOSurfaceGetWidth(a1);
    v57 = IOSurfaceGetWidth(a2);
    Height = IOSurfaceGetHeight(a1);
    IOSurfaceGetHeight(a2);
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    v14 = IOSurfaceGetBytesPerRow(a2);
    v60 = PixelFormat;
    v15 = IIO_BitsPerComponentForPixelFormat(PixelFormat);
    v16 = IIO_BitsPerComponentForPixelFormat(v9);
    v64 = malloc_type_malloc(BytesPerRow, 0x100004077774924uLL);
    v65 = malloc_type_malloc(v14, 0x100004077774924uLL);
    if (IOSurfaceLock(a1, 1u, 0))
    {
      v5 = 0;
      goto LABEL_114;
    }

    v63 = v14;
    v5 = 0;
    if (!IOSurfaceLock(a2, 0, 0))
    {
      v19 = v16;
      v20 = v15 >> 3;
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      v61 = IOSurfaceGetBaseAddress(a2);
      *&src.data = xmmword_186205EC0;
      v22 = v63;
      v21 = BytesPerRow;
      src.width = Width;
      src.rowBytes = BytesPerRow;
      *&origSrc.data = xmmword_186205EC0;
      origSrc.width = v57;
      origSrc.rowBytes = v63;
      dest.data = v64;
      dest.height = 1;
      dest.width = Width;
      dest.rowBytes = v20 * Width;
      newSrc.data = v65;
      newSrc.height = 1;
      newSrc.width = v57;
      newSrc.rowBytes = (v19 >> 3) * v57;
      if (Height)
      {
        v23 = v19 >> 3;
        v55 = v9;
        v24 = 0;
        v5 = 0;
        v26 = v20 == 1 && v23 == 2;
        v58 = v26;
        v28 = v20 == 2 && v23 == 1;
        v54 = v28;
        if (BytesPerRow >= v63)
        {
          v29 = v63;
        }

        else
        {
          v29 = BytesPerRow;
        }

        __n = v29;
        while (1)
        {
          src.data = &BaseAddress[v24 * v21];
          origSrc.data = &v61[v24 * v22];
          if (v15 == 16)
          {
            vImageExtractChannel_ARGB16U(&src, &dest, 3, 0x10u);
          }

          else if (v15 == 8)
          {
            vImageExtractChannel_ARGB8888(&src, &dest, 3, 0x10u);
          }

          else
          {
            _cg_jpeg_mem_term("IIOSurfaceCopyAlphaValuesFromSource", 2192, "*** ERROR: bpcSrc '%d' not handled\n");
          }

          if (v15 == v19)
          {
            memcpy(v65, v64, __n);
          }

          else
          {
            if (v58)
            {
              if (v55 == 1380411457)
              {
                v30 = vImageConvert_Planar8toPlanar16F(&dest, &newSrc, 0x10u);
              }

              else
              {
                v30 = vImageConvert_Planar8To16U(&dest, &newSrc, 0x10u);
              }

LABEL_53:
              v5 = v30;
              goto LABEL_54;
            }

            if (v54)
            {
              if (v60 == 1380411457)
              {
                v30 = vImageConvert_Planar16FtoPlanar8(&dest, &newSrc, 0x10u);
              }

              else
              {
                v30 = vImageConvert_16UToPlanar8(&dest, &newSrc, 0x10u);
              }

              goto LABEL_53;
            }

            _cg_jpeg_mem_term("IIOSurfaceCopyAlphaValuesFromSource", 2216, "*** ERROR: combination of bpcSrc '%d' and bpcDst '%d' not handled\n");
          }

LABEL_54:
          if (v19 == 16)
          {
            v31 = Width;
            if (Width)
            {
              v32 = origSrc.data + 6;
              v33 = v65;
              do
              {
                v34 = *v33++;
                *v32 = v34;
                v32 += 4;
                --v31;
              }

              while (v31);
            }
          }

          else if (v19 == 8)
          {
            v5 = vImageOverwriteChannels_ARGB8888(&newSrc, &origSrc, &origSrc, 1u, 0x10u);
          }

          else
          {
            _cg_jpeg_mem_term("IIOSurfaceCopyAlphaValuesFromSource", 2235, "*** ERROR: bpcDst '%d' not handled\n");
          }

          ++v24;
          v22 = v63;
          v21 = BytesPerRow;
          if (v24 == Height)
          {
            v9 = v55;
            goto LABEL_112;
          }
        }
      }

      v5 = 0;
LABEL_112:
      IOSurfaceUnlock(a2, 0, 0);
    }

    IOSurfaceUnlock(a1, 1u, 0);
LABEL_114:
    free(v64);
    free(v65);
    if (v60 == v9)
    {
      IIO_IOSurfaceSetAlpha(a2, v6);
    }

    return v5;
  }

LABEL_17:
  v17 = PixelFormat >> 24;
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
  }

  else
  {
    v18 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  if (v18)
  {
    v35 = v17;
  }

  else
  {
    v35 = 46;
  }

  v36 = PixelFormat << 8 >> 24;
  if (v36 <= 0x7F)
  {
    v37 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
  }

  else
  {
    v37 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
  }

  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 46;
  }

  LODWORD(v39) = PixelFormat >> 8;
  if (v39 <= 0x7F)
  {
    v40 = *(MEMORY[0x1E69E9830] + 4 * v39 + 60) & 0x40000;
  }

  else
  {
    v40 = __maskrune(PixelFormat >> 8, 0x40000uLL);
  }

  if (v40)
  {
    v39 = v39;
  }

  else
  {
    v39 = 46;
  }

  PixelFormat = PixelFormat;
  if (PixelFormat <= 0x7F)
  {
    v41 = *(MEMORY[0x1E69E9830] + 4 * PixelFormat + 60) & 0x40000;
  }

  else
  {
    v41 = __maskrune(PixelFormat, 0x40000uLL);
  }

  if (v41)
  {
    v42 = PixelFormat;
  }

  else
  {
    v42 = 46;
  }

  v43 = v9 >> 24;
  if ((v9 >> 24) <= 0x7F)
  {
    v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
  }

  else
  {
    v44 = __maskrune(v9 >> 24, 0x40000uLL);
  }

  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 46;
  }

  v46 = v9 << 8 >> 24;
  if (v46 <= 0x7F)
  {
    v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
  }

  else
  {
    v47 = __maskrune(v9 << 8 >> 24, 0x40000uLL);
  }

  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = 46;
  }

  LODWORD(v49) = v9 >> 8;
  if (v49 <= 0x7F)
  {
    v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
  }

  else
  {
    v50 = __maskrune(v9 >> 8, 0x40000uLL);
  }

  if (v50)
  {
    v49 = v49;
  }

  else
  {
    v49 = 46;
  }

  v9 = v9;
  if (v9 <= 0x7F)
  {
    v51 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
  }

  else
  {
    v51 = __maskrune(v9, 0x40000uLL);
  }

  if (v51)
  {
    v52 = v9;
  }

  else
  {
    v52 = 46;
  }

  LogError("IIOSurfaceCopyAlphaValuesFromSource", 2256, "*** ERROR: 'IIOSurfaceCopyAlphaValuesFromSource' - cannot copy values from '%c%c%c%c' surface to '%c%c%c%c' surface\n", v35, v38, v39, v42, v45, v48, v49, v52);
  return 4294967246;
}

uint64_t IIO_BitsPerComponentForPixelFormat(__darwin_ct_rune_t a1)
{
  result = 16;
  if (a1 > 1647534391)
  {
    if (a1 > 1815491697)
    {
      if (a1 == 1815491698)
      {
        return result;
      }

      v3 = 1999843442;
    }

    else
    {
      if (a1 == 1647534392)
      {
        return 10;
      }

      v3 = 1815162994;
    }

    if (a1 != v3)
    {
      goto LABEL_17;
    }

    return 10;
  }

  if (a1 > 1380401728)
  {
    if (a1 != 1380401729)
    {
      if (a1 == 1380411457)
      {
        return result;
      }

      goto LABEL_17;
    }

    return 8;
  }

  if (a1 == 32 || a1 == 1111970369)
  {
    return 8;
  }

LABEL_17:
  v4 = a1 >> 24;
  if ((a1 >> 24) <= 0x7F)
  {
    v5 = *(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000;
  }

  else
  {
    v5 = __maskrune(a1 >> 24, 0x40000uLL);
  }

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 46;
  }

  v7 = a1 << 8 >> 24;
  if (v7 <= 0x7F)
  {
    v8 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(a1 << 8 >> 24, 0x40000uLL);
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 46;
  }

  LODWORD(v10) = a1 >> 8;
  if (v10 <= 0x7F)
  {
    v11 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
  }

  else
  {
    v11 = __maskrune(a1 >> 8, 0x40000uLL);
  }

  if (v11)
  {
    v10 = v10;
  }

  else
  {
    v10 = 46;
  }

  a1 = a1;
  if (a1 <= 0x7F)
  {
    v12 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x40000;
  }

  else
  {
    v12 = __maskrune(a1, 0x40000uLL);
  }

  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v13 = 46;
  }

  LogError("IIO_BitsPerComponentForPixelFormat", 72, "*** IIO_BitsPerComponentForPixelFormat - '%c%c%c%c' not handled\n", v6, v9, v10, v13);
  return 0;
}

CGColorSpace *IIO_IOSurfaceCopyColorSpace(__IOSurface *a1)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v3 = PixelFormat;
  IIO_LoadJPEGSymbols(PixelFormat, v4);
  v5 = CGColorSpaceCopyFromIOSurface();
  if (v5)
  {
    return v5;
  }

  v8 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CF60]);
  if (v8)
  {
    v9 = v8;
    v10 = CGColorSpaceCreateWithICCData(v8);
    if (v10)
    {
      ColorSpaceFromAttachments = v10;
      if (v3 > 1647534391)
      {
        if (v3 == 1999843442)
        {
          goto LABEL_23;
        }

        v11 = 1647534392;
      }

      else
      {
        if (v3 == 1380410945)
        {
          goto LABEL_23;
        }

        v11 = 1380411457;
      }

      if (v3 != v11)
      {
LABEL_25:
        IIO_IOSurfaceAddColorSpace(a1, ColorSpaceFromAttachments);
        CFRelease(v9);
        return ColorSpaceFromAttachments;
      }

LABEL_23:
      Extended = CGColorSpaceCreateExtended(v10);
      if (Extended)
      {
        v15 = Extended;
        CGColorSpaceRelease(ColorSpaceFromAttachments);
        ColorSpaceFromAttachments = v15;
      }

      goto LABEL_25;
    }

    CFRelease(v9);
  }

  if (v3 != 1999843442 && v3 != 1647534392 || (ColorSpaceFromAttachments = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]), IIO_IOSurfaceAddColorSpace(a1, ColorSpaceFromAttachments), !ColorSpaceFromAttachments))
  {
    v12 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CF98]);
    memset(v52, 0, sizeof(v52));
    IIOString::IIOString(v52, v12);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v3 > 1279340599)
    {
      if ((v3 - 1279340600) <= 0x30 && ((1 << (v3 - 56)) & 0x1400000000001) != 0 || v3 == 1279342648)
      {
        goto LABEL_31;
      }

      v13 = 1279340854;
    }

    else
    {
      if ((v3 - 1278226488) <= 0x30 && ((1 << (v3 - 56)) & 0x1400000000001) != 0 || v3 == 1278226736)
      {
        goto LABEL_31;
      }

      v13 = 1278226742;
    }

    if (v3 != v13)
    {
      IsFloat = IIO_IOSurfaceFormatIsFloat(v3);
      v51 = 0;
      memset(v50, 0, sizeof(v50));
      v49 = 132;
      if (!IOSurfaceGetBulkAttachments())
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        IIODictionary::IIODictionary(&v46);
        IIO_UpdateAttachmentsDictionaryFromIOSurfaceStruct(&v46, v50);
        ColorSpaceFromAttachments = gFunc_CVImageBufferCreateColorSpaceFromAttachments(v47);
        IIODictionary::~IIODictionary(&v46);
        if (ColorSpaceFromAttachments)
        {
          goto LABEL_57;
        }
      }

      if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
      {
        v31 = IIOString::utf8String(v52);
        v32 = v3 >> 24;
        if ((v3 >> 24) <= 0x7F)
        {
          v33 = *(MEMORY[0x1E69E9830] + 4 * v32 + 60) & 0x40000;
        }

        else
        {
          v33 = __maskrune(v3 >> 24, 0x40000uLL);
        }

        if (v33)
        {
          v34 = v32;
        }

        else
        {
          v34 = 46;
        }

        v35 = v3 << 8 >> 24;
        if (v35 <= 0x7F)
        {
          v36 = *(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x40000;
        }

        else
        {
          v36 = __maskrune(v3 << 8 >> 24, 0x40000uLL);
        }

        if (v36)
        {
          v37 = v35;
        }

        else
        {
          v37 = 46;
        }

        LODWORD(v38) = v3 >> 8;
        if (v38 <= 0x7F)
        {
          v39 = *(MEMORY[0x1E69E9830] + 4 * v38 + 60) & 0x40000;
        }

        else
        {
          v39 = __maskrune(v3 >> 8, 0x40000uLL);
        }

        if (v39)
        {
          v38 = v38;
        }

        else
        {
          v38 = 46;
        }

        v3 = v3;
        if (v3 <= 0x7F)
        {
          v40 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
        }

        else
        {
          v40 = __maskrune(v3, 0x40000uLL);
        }

        if (v40)
        {
          v41 = v3;
        }

        else
        {
          v41 = 46;
        }

        Width = IOSurfaceGetWidth(a1);
        Height = IOSurfaceGetHeight(a1);
        v44 = "SRGB";
        if (IsFloat)
        {
          v44 = "ExtendedLinearSRGB";
        }

        ImageIOLog("*** NOTE: IOSurface '%s' [%c%c%c%c] %ldx%ld has no kIOSurfaceColorSpace/kIOSurfaceICCProfile - using %s\n", v31, v34, v37, v38, v41, Width, Height, v44);
      }

      v45 = MEMORY[0x1E695F108];
      if (!IsFloat)
      {
        v45 = MEMORY[0x1E695F1C0];
      }

      v29 = CGColorSpaceCreateWithName(*v45);
LABEL_56:
      ColorSpaceFromAttachments = v29;
LABEL_57:
      IIOString::~IIOString(v52);
      return ColorSpaceFromAttachments;
    }

LABEL_31:
    v16 = IIO_IOSurfaceFormatIsFloat(v3);
    if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
    {
      v17 = IIOString::utf8String(v52);
      v18 = MEMORY[0x1E69E9830];
      if ((*(MEMORY[0x1E69E9830] + 60 + 4 * HIBYTE(v3)) & 0x40000) != 0)
      {
        v19 = HIBYTE(v3);
      }

      else
      {
        v19 = 46;
      }

      if ((*(MEMORY[0x1E69E9830] + 60 + 4 * BYTE2(v3)) & 0x40000) != 0)
      {
        v20 = BYTE2(v3);
      }

      else
      {
        v20 = 46;
      }

      LODWORD(v21) = v3 >> 8;
      if (v21 <= 0x7F)
      {
        v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
      }

      else
      {
        v22 = __maskrune(v3 >> 8, 0x40000uLL);
      }

      if (v22)
      {
        v21 = v21;
      }

      else
      {
        v21 = 46;
      }

      v3 = v3;
      if (v3 <= 0x7F)
      {
        v23 = *(v18 + 4 * v3 + 60) & 0x40000;
      }

      else
      {
        v23 = __maskrune(v3, 0x40000uLL);
      }

      if (v23)
      {
        v24 = v3;
      }

      else
      {
        v24 = 46;
      }

      v25 = IOSurfaceGetWidth(a1);
      v26 = IOSurfaceGetHeight(a1);
      v27 = "GenericGrayGamma2_2";
      if (v16)
      {
        v27 = "ExtendedLinearGray";
      }

      ImageIOLog("*** NOTE: IOSurface '%s' [%c%c%c%c] %ldx%ld has no kIOSurfaceColorSpace/kIOSurfaceICCProfile - using %s\n", v17, v19, v20, v21, v24, v25, v26, v27);
    }

    v28 = MEMORY[0x1E695F0F8];
    if (!v16)
    {
      v28 = MEMORY[0x1E695F128];
    }

    v29 = CGColorSpaceCreateWithName(*v28);
    goto LABEL_56;
  }

  return ColorSpaceFromAttachments;
}

uint64_t IIO_CreateIOSurfaceContext(__IOSurface *a1, CGColorSpace *a2)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  if (PixelFormat == 1111970369)
  {
    v6 = 8194;
    v7 = 8;
    v8 = 32;
    goto LABEL_8;
  }

  v5 = PixelFormat;
  if (PixelFormat == 1815491698)
  {
    v6 = 4097;
    goto LABEL_6;
  }

  if (PixelFormat == 1380411457)
  {
    v6 = 4353;
LABEL_6:
    v7 = 16;
    v8 = 64;
LABEL_8:
    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(a1);

    return MEMORY[0x1EEDB9F30](a1, Width, Height, v7, v8, a2, v6);
  }

  if ((PixelFormat >> 24) > 0x7F)
  {
    __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  if ((v5 << 8 >> 24) > 0x7F)
  {
    __maskrune(v5 << 8 >> 24, 0x40000uLL);
  }

  if ((v5 >> 8) > 0x7F)
  {
    __maskrune(v5 >> 8, 0x40000uLL);
  }

  v5 = v5;
  if (v5 > 0x7F)
  {
    __maskrune(v5, 0x40000uLL);
  }

  _cg_jpeg_mem_term("IIO_CreateIOSurfaceContext", 2562, "*** Unsupported pixel format %c%c%c%c\n");
  return 0;
}

__IOSurface *IIO_CreateIOSurfaceWithAlphaFlattened(__IOSurface *a1, CGImageAlphaInfo a2)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v5 = PixelFormat;
  if (PixelFormat != 1380401729 && PixelFormat != 1111970369)
  {
    return 0;
  }

  v6 = CGColorSpaceCopyFromIOSurface();
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  SurfaceWithFormat = IIO_CreateSurfaceWithFormat(v5, Width, Height, v6);
  CGColorSpaceRelease(v6);
  if (SurfaceWithFormat)
  {
    v11 = IOSurfaceGetBytesPerRow(SurfaceWithFormat);
    IOSurfaceIncrementUseCount(SurfaceWithFormat);
    if (!IOSurfaceLock(a1, 1u, 0))
    {
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      if (!IOSurfaceLock(SurfaceWithFormat, 0, 0))
      {
        v14 = IOSurfaceGetBaseAddress(SurfaceWithFormat);
        if (BaseAddress)
        {
          if (v14)
          {
            rgbaSrc.data = BaseAddress;
            rgbaSrc.height = Height;
            rgbaSrc.width = Width;
            rgbaSrc.rowBytes = BytesPerRow;
            rgbaDst.data = v14;
            rgbaDst.height = Height;
            rgbaDst.width = Width;
            rgbaDst.rowBytes = v11;
            *rgbaBackgroundColorPtr = -16777216;
            vImageFlatten_RGBA8888(&rgbaSrc, &rgbaDst, rgbaBackgroundColorPtr, a2 - 1 < 2, 0);
            IOSurfaceUnlock(SurfaceWithFormat, 0, 0);
            IOSurfaceUnlock(a1, 1u, 0);
            return SurfaceWithFormat;
          }
        }
      }

      IOSurfaceUnlock(a1, 1u, 0);
    }

    CFRelease(SurfaceWithFormat);
    return 0;
  }

  return SurfaceWithFormat;
}

void IIO_UpdatePlaneDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, IIODictionary *a7)
{
  IIONumber::IIONumber(v13, a1);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696D0C8]);
  IIONumber::~IIONumber(v13);
  IIONumber::IIONumber(v13, a2);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696D090]);
  IIONumber::~IIONumber(v13);
  IIONumber::IIONumber(v13, a3);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696CFE8]);
  IIONumber::~IIONumber(v13);
  IIONumber::IIONumber(v13, a4);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696D0B0]);
  IIONumber::~IIONumber(v13);
  IIONumber::IIONumber(v13, a5);
  IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696D0B8]);
  IIONumber::~IIONumber(v13);
  if (a6)
  {
    IIONumber::IIONumber(v13, a6);
    IIODictionary::setObjectForKey(a7, value, *MEMORY[0x1E696CFE0]);
    IIONumber::~IIONumber(v13);
  }
}

void sub_18601C64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void png_write_rows_sized(uint64_t result, void **a2, int a3, size_t a4)
{
  if (result)
  {
    v4 = a3;
    if (a3)
    {
      v8 = &a2[a3];
      v9 = a2;
      while (v9 >= a2)
      {
        v10 = v9 + 1;
        if (v9 + 1 > v8 || v9 > v10 || *v9 > *v9 + a4)
        {
          break;
        }

        _cg_png_write_row_sized(result, *v9, a4);
        v9 = v10;
        if (!--v4)
        {
          return;
        }
      }

      __break(0x5519u);
    }
  }
}

void png_write_rows(uint64_t result, void **a2, int a3)
{
  if (result)
  {
    v3 = *(result + 292);
    if ((*(result + 436) * *(result + 433)) >= 8u)
    {
      v4 = v3 * ((*(result + 436) * *(result + 433)) >> 3);
    }

    else
    {
      v4 = (v3 * (*(result + 436) * *(result + 433)) + 7) >> 3;
    }

    png_write_rows_sized(result, a2, a3, v4);
  }
}

void png_write_image_sized(uint64_t result, void **a2, int a3)
{
  if (result)
  {
    v6 = *(result + 292);
    v7 = ((*(result + 433) * *(result + 436)) * v6 + 7) >> 3;
    v8 = v6 * ((*(result + 433) * *(result + 436)) >> 3);
    v9 = (*(result + 433) * *(result + 436)) >= 8u ? v8 : v7;
    v10 = _cg_png_set_interlace_handling(result);
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = 0;
      v13 = &a2[a3];
      v14 = *(result + 284);
      while (!v14)
      {
LABEL_14:
        if (++v12 == v11)
        {
          return;
        }
      }

      v15 = 0;
      v16 = a2;
      while (v16 >= a2)
      {
        v17 = v16 + 1;
        if (v16 + 1 > v13 || v16 > v17 || *v16 > *v16 + v9)
        {
          break;
        }

        _cg_png_write_row_sized(result, *v16, v9);
        ++v15;
        v14 = *(result + 284);
        v16 = v17;
        if (v15 >= v14)
        {
          goto LABEL_14;
        }
      }

      __break(0x5519u);
    }
  }
}

void png_write_image(uint64_t result, void **a2)
{
  if (result)
  {
    if (*(result + 284))
    {
      __break(0x5519u);
    }

    else
    {
      png_write_image_sized(result, a2, 0);
    }
  }
}

void _cg_png_write_row(uint64_t result, char *a2)
{
  v2 = *(result + 292);
  if ((*(result + 436) * *(result + 432)) >= 8u)
  {
    v3 = v2 * ((*(result + 436) * *(result + 432)) >> 3);
  }

  else
  {
    v3 = (v2 * (*(result + 436) * *(result + 432)) + 7) >> 3;
  }

  if (&a2[v3] < a2)
  {
    __break(0x5519u);
  }

  else
  {
    _cg_png_write_row_sized(result, a2, v3);
  }
}

uint64_t _cg_png_write_flush(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 308) < *(result + 288))
    {
      png_compress_IDAT(result, 0, 0, 2);
      *(v1 + 484) = 0;

      return png_flush(v1);
    }
  }

  return result;
}

void (**_cg_png_write_frame_head(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, Bytef a10, unsigned __int8 a11))(void)
{
  if ((a2[10] & 2) == 0)
  {
    _cg_png_error(a1, "png_write_frame_head(): acTL not set");
  }

  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  png_write_reset(a1);
  result = png_write_reinit(a1, a2, v16, v15);
  if (*(a1 + 964) || (*(a1 + 920) & 1) == 0)
  {

    return png_write_fcTL(a1, v16, v15, v14, v13, a8, a9, a10, a11);
  }

  return result;
}

size_t (*_cg_TIFFSetWarningHandler(size_t (*a1)(const char *a1, const char *a2, va_list a3)))(const char *a1, const char *a2, va_list a3)
{
  v1 = _TIFFwarningHandler;
  _TIFFwarningHandler = a1;
  return v1;
}

const char *TIFFWarning(const char *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = result;
  if (_TIFFwarningHandler)
  {
    result = _TIFFwarningHandler(result, a2, va);
  }

  if (_TIFFwarningHandlerExt)
  {
    return _TIFFwarningHandlerExt(0, v9, a2, va);
  }

  return result;
}

uint64_t TIFFWarningExtR(uint64_t result, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v5 = result;
  if (!result || !*(result + 1344) || (result = (*(result + 1344))(result, *(result + 1352), a2, a3, va), !result))
  {
    if (_TIFFwarningHandler)
    {
      result = _TIFFwarningHandler(a2, a3, va);
    }

    if (_TIFFwarningHandlerExt)
    {
      if (v5)
      {
        v6 = *(v5 + 1200);
      }

      else
      {
        v6 = 0;
      }

      return _TIFFwarningHandlerExt(v6, a2, a3, va);
    }
  }

  return result;
}

void CGImagePluginReadRawXMPProps(const __CFDictionary *a1, const char *a2, uint64_t a3)
{
  IIOInitDebugFlags(a1, a2);
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImagePluginReadRawXMPProps", 0, 0, -1, 0);
  }

  v6 = 0;
  if (a1 && *MEMORY[0x1E695E738] != a1)
  {
    v6 = CFDictionaryGetValue(a1, @"XMP_FROM_SIDECAR") != 0;
  }

  CGImagePluginReadRawXMPPropsInternal(a1, a2, a3, 0, 0, v6);
}

void CGImagePluginReadRawXMPPropsInternal(__CFDictionary *a1, const char *a2, uint64_t a3, const char *a4, uint64_t a5, int a6)
{
  if (a6)
  {
    MetadataFromXMPSidecarData = CreateMetadataFromXMPSidecarData(a2, a3);
    v8 = MetadataFromXMPSidecarData;
    v9 = 16;
  }

  else
  {
    MetadataFromXMPSidecarData = CreateMetadataFromExtendedXMPData(a2, a3, a4, a5);
    v8 = MetadataFromXMPSidecarData;
    v9 = 8;
  }

  metadataSetSource(MetadataFromXMPSidecarData, v9);
  if (v8)
  {
    CFDictionaryAddValue(a1, @"{XMP}", v8);
    CFDictionaryAddValue(a1, @"needsPostProcessing", *MEMORY[0x1E695E4D0]);

    CFRelease(v8);
  }

  else
  {
    v10 = *MEMORY[0x1E695E4D0];

    CFDictionaryAddValue(a1, @"needsPostProcessing", v10);
  }
}

void CGImagePluginReadRawXMPSidecarProps(__CFDictionary *a1, const char *a2, uint64_t a3)
{
  IIOInitDebugFlags(a1, a2);
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImagePluginReadRawXMPSidecarProps", 0, 0, -1, 0);
  }

  CGImagePluginReadRawXMPPropsInternal(a1, a2, a3, 0, 0, 1);
}

uint64_t IIOGetOrientationFromXMPData(const char *a1, size_t __len)
{
  v3 = __len;
  v4 = strnstr(a1, "tiff:Orientation", __len);
  if (!v4)
  {
    return 1;
  }

  v5 = (v4 + 16);
  if (v4 + 16 >= &a1[v3])
  {
LABEL_6:
    v8 = 1;
  }

  else
  {
    v6 = (&a1[v3] - v4 - 16);
    while (1)
    {
      v7 = *v5;
      if ((v7 - 58) >= 0xFFFFFFF6)
      {
        break;
      }

      ++v5;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v8 = v7 - 48;
  }

  if (v8 - 9 < 0xFFFFFFF8)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void HEIFGroup::~HEIFGroup(HEIFGroup *this)
{
  *this = &unk_1EF4D8C70;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1EF4D8C70;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x186602850);
}

uint64_t HEIFGroup::setLeftImage(HEIFGroup *this, int a2)
{
  if (*(this + 4) != 1937007986)
  {
    v4 = "*** ERROR cannot add left image to non 'ster' group";
LABEL_7:
    puts(v4);
    return 4294967246;
  }

  if (*(this + 5) != -1)
  {
    v4 = "*** ERROR left image was already set";
    goto LABEL_7;
  }

  result = 0;
  *(this + 5) = a2;
  return result;
}

uint64_t HEIFGroup::setRightImage(HEIFGroup *this, int a2)
{
  if (*(this + 4) != 1937007986)
  {
    v4 = "*** ERROR cannot add right image to non 'ster' group";
LABEL_7:
    puts(v4);
    return 4294967246;
  }

  if (*(this + 6) != -1)
  {
    v4 = "*** ERROR right image was already set";
    goto LABEL_7;
  }

  result = 0;
  *(this + 6) = a2;
  return result;
}

uint64_t HEIFGroup::setMonoImage(HEIFGroup *this, int a2)
{
  if (*(this + 4) != 1937007986)
  {
    v4 = "*** ERROR cannot add mono image to non 'ster' group";
LABEL_7:
    puts(v4);
    return 4294967246;
  }

  if (*(this + 7) != -1)
  {
    v4 = "*** ERROR mono image was already set";
    goto LABEL_7;
  }

  result = 0;
  *(this + 7) = a2;
  return result;
}

uint64_t HEIFGroup::setOtherImage(HEIFGroup *this, int a2)
{
  if (*(this + 4) == 1634497650)
  {
    v5 = *(this + 7);
    v4 = *(this + 8);
    if (v5 >= v4)
    {
      v7 = *(this + 6);
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 2;
      v10 = v9 + 1;
      if ((v9 + 1) >> 62)
      {
        std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(this + 48, v13);
      }

      v14 = (v5 - v7) >> 2;
      v15 = (4 * v9);
      v16 = (4 * v9 - 4 * v14);
      *v15 = a2;
      v6 = v15 + 1;
      memcpy(v16, v7, v8);
      v17 = *(this + 6);
      *(this + 6) = v16;
      *(this + 7) = v6;
      *(this + 8) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = a2;
      v6 = v5 + 4;
    }

    result = 0;
    *(this + 7) = v6;
  }

  else
  {
    puts("*** ERROR cannot add other-image to non 'altr' group");
    return 4294967246;
  }

  return result;
}

void HEIFWritePlugin::HEIFWritePlugin(HEIFWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, int a4)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1212500294);
  *v7 = &unk_1EF4D8C90;
  v7[12] = 0;
  v7[13] = 0;
  v7[14] = 0;
  IIO_LoadHEIFSymbols();
  *(this + 10) = a4;
  *(this + 6) = IIOImagePlus::sourceImageProvider(a3);
  *(this + 7) = 0;
  v8 = IIOImageDestination::utType(a3);
  v9 = CFStringCompare(v8, @"public.heics", 0);
  *(this + 125) = v9 == kCFCompareEqualTo;
  if (v9 == kCFCompareEqualTo && (gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("seq  _creatingHEIFSequence: YES\n");
  }

  *(this + 124) = 0;
  *(this + 16) = -1;
  *(this + 30) = 0;
}

void sub_18601D224(_Unwind_Exception *a1, uint64_t a2, const char *a3)
{
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 104) = v6;
    operator delete(v6);
  }

  _cg_jpeg_mem_term(v3, a2, a3);
  _Unwind_Resume(a1);
}

void HEIFWritePlugin::~HEIFWritePlugin(HEIFWritePlugin *this, uint64_t a2, const char *a3, uint64_t a4)
{
  *this = &unk_1EF4D8C90;
  v5 = *(this + 12);
  v6 = *(this + 13);
  if (v5 != v6)
  {
    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5, a2, a3);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(this + 12);
  }

  *(this + 13) = v5;
  v7 = *(this + 7);
  if (v7)
  {
    gFunc_CMPhotoCompressionSessionReleaseHardwareResources(v7, a2, a3, a4);
    CFRelease(*(this + 7));
    *(this + 7) = 0;
    v5 = *(this + 12);
  }

  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  _cg_jpeg_mem_term(this, a2, a3);
}

{
  HEIFWritePlugin::~HEIFWritePlugin(this, a2, a3, a4);

  JUMPOUT(0x186602850);
}

CFDataRef HEIFWritePlugin::createExifData(HEIFWritePlugin *this, IIODictionary *a2)
{
  length = 0;
  ExifBufferFromPropertiesJPEG = CreateExifBufferFromPropertiesJPEG(a2, 0, 0, 0, 0, @"public.jpeg", &length);
  if (ExifBufferFromPropertiesJPEG)
  {
    v3 = ExifBufferFromPropertiesJPEG;
    v4 = CFDataCreate(*MEMORY[0x1E695E480], ExifBufferFromPropertiesJPEG, length);
    free(v3);
  }

  else
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("*** HEIFWritePlugin::createExifData - no Exif data???\n");
    }

    return 0;
  }

  return v4;
}

uint64_t HEIFWritePlugin::createXMPData(HEIFWritePlugin *this, IIODictionary *a2, const __CFData **a3, const __CFData **a4, const __CFData **a5)
{
  ObjectForKey = IIODictionary::getObjectForKey(a2, @"{MetaData}");
  if (ObjectForKey)
  {
    v11 = ObjectForKey;
    CFRetain(ObjectForKey);
    goto LABEL_4;
  }

  v11 = CGImageMetadataCreateFromLegacyProps(a2);
  if (v11)
  {
LABEL_4:
    if ((CGImageMetadataCreateExtendedXMPWithEXIFFiltered(v11, a3, a4, a5, *(this + 10), 1) & 1) == 0 && *(this + 36) == 1)
    {
      _cg_jpeg_mem_term("createXMPData", 422, "*** HEIFWritePlugin::createXMPData - CGImageMetadataCreateExtendedXMPWithEXIFFiltered failed\n");
    }

    CFRelease(v11);
    return 0;
  }

  if (*(this + 36))
  {
    _cg_jpeg_mem_term("createXMPData", 422, "*** HEIFWritePlugin::createXMPData - CGImageMetadataCreateExtendedXMPWithEXIFFiltered failed\n");
  }

  return 0;
}

void HEIFWritePlugin::updateHEIFProperties(HEIFWritePlugin *this, IIODictionary *a2, IIODictionary *a3)
{
  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(a3, @"CameraExtrinsics", @"{HEIF}");
  memset(v18, 0, sizeof(v18));
  IIODictionary::IIODictionary(v18, ObjectForKeyGroup);
  if (IIODictionary::containsKey(v18, @"Position"))
  {
    v15 = 0;
    value = 0;
    v17 = 0;
    ObjectForKey = IIODictionary::getObjectForKey(v18, @"Position");
    IIOArray::IIOArray(&v15, ObjectForKey);
    if (IIOArray::getCount(&v15) == 3)
    {
      IIODictionary::setObjectForKey(a2, value, @"ExtrinsicsPosition");
    }

    else
    {
      _cg_jpeg_mem_term("updateHEIFProperties", 463, "*** ERROR: CameraExtrinsics/Position should be a CFArray with 3 entries of type 'double'\n");
    }

    IIOArray::~IIOArray(&v15);
  }

  if (IIODictionary::containsKey(v18, @"Rotation"))
  {
    v15 = 0;
    value = 0;
    v17 = 0;
    v7 = IIODictionary::getObjectForKey(v18, @"Rotation");
    IIOArray::IIOArray(&v15, v7);
    if (IIOArray::getCount(&v15) == 9)
    {
      IIODictionary::setObjectForKey(a2, value, @"ExtrinsicsRotation");
    }

    else
    {
      _cg_jpeg_mem_term("updateHEIFProperties", 472, "*** ERROR: CameraExtrinsics/Rotation should be a CFArray with 9 entries of type 'double'\n");
    }

    IIOArray::~IIOArray(&v15);
  }

  if (IIODictionary::containsKey(v18, @"CoordinateSystemID"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(v18, @"CoordinateSystemID");
    IIONumber::IIONumber(&v15, Uint32ForKey);
    IIODictionary::setObjectForKey(a2, v17, @"CoordinateSystemID");
    IIONumber::~IIONumber(&v15);
  }

  v9 = IIODictionary::getObjectForKeyGroup(a3, @"CameraModel", @"{HEIF}");
  v15 = 0;
  value = 0;
  v17 = 0;
  IIODictionary::IIODictionary(&v15, v9);
  if (IIODictionary::containsKey(&v15, @"Intrinsics"))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v10 = IIODictionary::getObjectForKey(&v15, @"Intrinsics");
    IIOArray::IIOArray(&v12, v10);
    if (IIOArray::getCount(&v12) == 9)
    {
      IIODictionary::setObjectForKey(a2, v13, @"IntrinsicsMatrix");
    }

    else
    {
      _cg_jpeg_mem_term("updateHEIFProperties", 491, "*** ERROR: CameraModel/Intrinsics should be a CFArray with 9 entries of type 'double'\n");
    }

    IIOArray::~IIOArray(&v12);
  }

  if (IIODictionary::containsKey(&v15, @"ModelType"))
  {
    v11 = IIODictionary::getObjectForKey(&v15, @"ModelType");
    IIODictionary::setObjectForKey(a2, v11, @"ModelType");
  }

  IIODictionary::~IIODictionary(&v15);
  IIODictionary::~IIODictionary(v18);
}

void sub_18601D7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

void HEIFWritePlugin::updateHardwareEncodeOptions(HEIFWritePlugin *this, IIODictionary *a2, IIODictionary *a3)
{
  v6 = IIO_HardwareEncoderDefaultValue(this, a2);
  if (!IIODictionary::containsKey(a3, @"kCGImageDestinationEnableRestrictedEncoding") || !IIODictionary::getBoolForKey(a3, @"kCGImageDestinationEnableRestrictedEncoding"))
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    if (v6 == 1)
    {
LABEL_8:
      _cg_jpeg_mem_term("updateHardwareEncodeOptions", 560, "    setting kCMPhotoCompressionOption_ForceHighSpeed to true\n");
      v7 = &gIIO_kCMPhotoCompressionOption_ForceHighSpeed;
LABEL_10:
      IIODictionary::setObjectForKey(a2, *MEMORY[0x1E695E4D0], **v7);
      goto LABEL_11;
    }

    if (v6 == 255 && IIODictionary::containsKey(a3, @"kCGImageDestinationUseHardwareAcceleration"))
    {
      if (IIODictionary::getBoolForKey(a3, @"kCGImageDestinationUseHardwareAcceleration"))
      {
        goto LABEL_8;
      }

LABEL_9:
      _cg_jpeg_mem_term("updateHardwareEncodeOptions", 564, "    setting kCMPhotoCompressionOption_PreferSoftwareCodec to true\n");
      v7 = &gIIO_kCMPhotoCompressionOption_PreferSoftwareCodec;
      goto LABEL_10;
    }
  }

LABEL_11:
  if (*(this + 36) == 1)
  {

    _cg_jpeg_mem_term("updateHardwareEncodeOptions", 570, "    done setting HW options\n");
  }
}

void HEIFWritePlugin::updateCompressionOptionsSubsampling(HEIFWritePlugin *this, IIODictionary *a2, int a3, float a4)
{
  v5 = 5;
  if (a3 > 1278226487)
  {
    if (a3 <= 2019963439)
    {
      if (a3 == 1278226488 || a3 == 1278226736)
      {
        goto LABEL_18;
      }

      v6 = 1278226742;
LABEL_17:
      if (a3 == v6)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (a3 == 2019963440)
    {
      goto LABEL_23;
    }

    if (a3 != 2019963956)
    {
      if (a3 == 2019963442)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_19:
    v5 = 1;
    goto LABEL_23;
  }

  if (a3 <= 875704421)
  {
    if (a3 == 843264056)
    {
LABEL_18:
      v5 = 6;
      goto LABEL_23;
    }

    v6 = 843264310;
    goto LABEL_17;
  }

  switch(a3)
  {
    case 875704422:
      goto LABEL_23;
    case 875704934:
LABEL_14:
      v5 = 3;
      goto LABEL_23;
    case 875836518:
      goto LABEL_19;
  }

LABEL_20:
  if (a4 == 1.0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

LABEL_23:
  IIONumber::IIONumber(v7, v5);
  IIODictionary::setObjectForKey(a2, value, *gIIO_kCMPhotoCompressionOption_Subsampling);
  IIONumber::~IIONumber(v7);
}

void sub_18601DAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

CFDataRef HEIFWritePlugin::createISO5_ContentLightLevelInfoData(HEIFWritePlugin *this, CFDataRef a2, IIODictionary *a3)
{
  *bytes = 0;
  if (IIODictionary::containsKey(a3, @"ContentLightLevelInfo"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"ContentLightLevelInfo");
    memset(v8, 0, sizeof(v8));
    IIODictionary::IIODictionary(v8, ObjectForKey);
    *bytes = bswap32(IIODictionary::getUint32ForKey(v8, @"MaxContentLightLevel")) >> 16;
    *&bytes[2] = bswap32(IIODictionary::getUint32ForKey(v8, @"MaxPicAverageLightLevel")) >> 16;
    a2 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
    IIODictionary::~IIODictionary(v8);
  }

  else if (a2)
  {
    CGImageGetContentHeadroom();
    if (v6 <= 0.0)
    {
      return 0;
    }

    else
    {
      *bytes = __rev16((v6 * 203.0));
      *&bytes[2] = 0x4000;
      return CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
    }
  }

  return a2;
}

CFDataRef HEIFWritePlugin::createISO5_MasteringDisplayColorVolumeData(HEIFWritePlugin *this, CGImage *a2, IIODictionary *a3)
{
  *bytes = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0;
  if (IIODictionary::containsKey(a3, @"MasteringDisplayColorVolume"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"MasteringDisplayColorVolume");
    memset(v7, 0, sizeof(v7));
    IIODictionary::IIODictionary(v7, ObjectForKey);
    *bytes = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesXG")) >> 16;
    *&bytes[2] = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesYG")) >> 16;
    *&bytes[4] = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesXB")) >> 16;
    *&bytes[6] = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesYB")) >> 16;
    LOWORD(v9) = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesXR")) >> 16;
    WORD1(v9) = bswap32(IIODictionary::getUint32ForKey(v7, @"DisplayPrimariesYR")) >> 16;
    WORD2(v9) = bswap32(IIODictionary::getUint32ForKey(v7, @"WhitePointX")) >> 16;
    HIWORD(v9) = bswap32(IIODictionary::getUint32ForKey(v7, @"WhitePointY")) >> 16;
    LODWORD(v10) = bswap32(IIODictionary::getUint32ForKey(v7, @"MaxDisplayMasteringLuminance"));
    HIDWORD(v10) = bswap32(IIODictionary::getUint32ForKey(v7, @"MinDisplayMasteringLuminance"));
    v4 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    IIODictionary::~IIODictionary(v7);
  }

  return v4;
}

CFDataRef HEIFWritePlugin::createISO5_AmbientViewingEnvironmentData(HEIFWritePlugin *this, CGImage *a2, IIODictionary *a3)
{
  *bytes = 0;
  v4 = 0;
  if (IIODictionary::containsKey(a3, @"AmbientViewingEnvironment"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"AmbientViewingEnvironment");
    memset(v7, 0, sizeof(v7));
    IIODictionary::IIODictionary(v7, ObjectForKey);
    *bytes = bswap32(IIODictionary::getUint32ForKey(v7, @"AmbientIlluminance"));
    *&bytes[4] = bswap32(IIODictionary::getUint32ForKey(v7, @"AmbientLightX")) >> 16;
    *&bytes[6] = bswap32(IIODictionary::getUint32ForKey(v7, @"AmbientLightY")) >> 16;
    v4 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 8);
    IIODictionary::~IIODictionary(v7);
  }

  return v4;
}

uint64_t HEIFWritePlugin::writeImageAtIndex(HEIFWritePlugin *this, IIOImagePixelDataProvider *a2, CGImage *a3, const __CFDictionary **a4, IIODictionary *a5, int a6, uint64_t *a7)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "HEIFWritePlugin::writeImageAtIndex", 0, 0, -1, 0);
  }

  v150 = 0;
  v151[0] = 0;
  v148 = 0;
  v149 = 0;
  IIODictionary::IIODictionary(&v148);
  v147 = 0;
  if (a2)
  {
    BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
    Width = IIOImageSource::count(a2);
    Height = IIO_Reader::testHeaderSize(a2);
    BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(a2);
    Ref = IIOImageSource::imageReadRef(a2);
    space = IIOImagePlus::getSourceGeomColorSpace(a2);
  }

  else
  {
    if (!a3)
    {
      _cg_jpeg_mem_term("writeImageAtIndex", 789, "*** ERROR: no 'iPixelDataProvider' and no 'sourceImage'?\n");
LABEL_86:
      v138 = 0;
      v28 = 4294967246;
      goto LABEL_270;
    }

    BytesPerRow = CGImageGetBytesPerRow(a3);
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    BitmapInfo = CGImageGetBitmapInfo(a3);
    space = CGImageGetColorSpace(a3);
    Ref = a3;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(Ref);
  if (BitsPerComponent > 0xF)
  {
    v14 = (BitmapInfo >> 8) & 1;
  }

  else
  {
    v14 = 0;
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(a4, @"Depth");
  if (Uint32ForKey)
  {
    v16 = Uint32ForKey;
  }

  else
  {
    v16 = BitsPerComponent;
  }

  v136 = v16;
  if (BitsPerComponent < v16)
  {
    _cg_jpeg_mem_term("writeImageAtIndex", 803, "*** imageProperties-bitDepth: %d    bpc: %d  -- using: %d bit/component\n");
    v136 = BitsPerComponent;
  }

  Model = CGColorSpaceGetModel(space);
  if (IIODictionary::getBoolForKey(a4, @"PrimaryImage") && (*(this + 124) & 1) == 0)
  {
    v129 = 1;
    *(this + 124) = 1;
  }

  else
  {
    v129 = 0;
  }

  v17 = IIODictionary::containsKey(a4, @"kCGImageSourceEnableRestrictedDecoding");
  if (v17)
  {
    BoolForKey = IIODictionary::getBoolForKey(a4, @"kCGImageSourceEnableRestrictedDecoding");
    v21 = BoolForKey;
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(BoolForKey, v20))
    {
      v22 = "❌";
      if (v21)
      {
        v22 = "✅";
      }

      ImageIOLog("••• EnableRestrictedDecoding: %s  | %s:%d\n", v22, "writeImageAtIndex", 827);
    }
  }

  else
  {
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild(v17, v18))
    {
      ImageIOLog("••• EnableRestrictedDecoding: not set  | %s:%d\n", "writeImageAtIndex", 830);
    }

    LOBYTE(v21) = 0;
  }

  v24 = -1.0;
  if (IIODictionary::containsKey(a4, @"kCGImageDestinationLossyCompressionQuality"))
  {
    FloatForKey = IIODictionary::getFloatForKey(a4, @"kCGImageDestinationLossyCompressionQuality");
    if (FloatForKey > 1.0 || FloatForKey < 0.0)
    {
      v24 = -1.0;
    }

    else
    {
      v24 = FloatForKey;
    }
  }

  v139 = BitmapInfo & 0x1F;
  if (v21 || !IIO_CGImageWrapsIOSurface(Ref, 1))
  {
    v128 = 0;
    v28 = 4294967246;
    goto LABEL_41;
  }

  if (IIODictionary::containsKeyGroup(a4, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions"))
  {
    Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(a4, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  }

  else
  {
    Uint32ForKeyGroup = 0;
  }

  CGImageGetImageProvider();
  if (*MEMORY[0x1E695E4D0] == CGImageProviderGetProperty())
  {
    LogError("writeImageAtIndex", 854, "*** ERROR: HEIF saving failed - input image cannot be decoded ('kCMPhotoError_XPCError'\n");
    goto LABEL_86;
  }

  if (!Uint32ForKeyGroup && Model == kCGColorSpaceModelRGB)
  {
    if ((v139 - 1) < 4 || v139 == 7 || v24 == 1.0)
    {
      if (v14)
      {
        v35 = 1380411457;
      }

      else
      {
        v35 = 1815491698;
      }

      if (BitsPerComponent <= 8)
      {
        Uint32ForKeyGroup = 1111970369;
      }

      else
      {
        Uint32ForKeyGroup = v35;
      }
    }

    else if (BitsPerComponent < 9 || *(this + 10) == 1785750887)
    {
      Uint32ForKeyGroup = 875704422;
    }

    else
    {
      Uint32ForKeyGroup = 2019963440;
    }
  }

  memset(&dest, 0, 24);
  IIODictionary::IIODictionary(&dest);
  v36 = IIODictionary::getUint32ForKey(a4, @"kCGImageSurfaceFormatRequest");
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = Uint32ForKeyGroup;
  }

  v128 = v37;
  IIONumber::IIONumber(permuteMap, v37);
  IIODictionary::setObjectForKey(&dest, v146, @"kCGImageSurfaceFormatRequest");
  IIONumber::~IIONumber(permuteMap);
  v38 = CGImageProviderCopyIOSurface();
  IIO_IOSurfaceLogAlphaInfo(v38, "writeImageAtIndex surface:");
  Alpha = IIO_IOSurfaceGetAlpha(v38, v39);
  if (v139 != Alpha)
  {
    IIO_AlphaInfoString(v139);
    IIO_AlphaInfoString(Alpha);
    _cg_jpeg_mem_term("writeImageAtIndex", 901, "*** NOTE: image-alpha: %s   surface-alpha: %s\n");
  }

  if (v38)
  {
    if ((Alpha - 1 < 4 || Alpha == kCGImageAlphaOnly) && *(this + 10) == 1785750887 && (IOSurfaceWithAlphaFlattened = IIO_CreateIOSurfaceWithAlphaFlattened(v38, Alpha)) != 0)
    {
      CFRelease(v38);
    }

    else
    {
      IOSurfaceWithAlphaFlattened = v38;
    }

    v28 = gFunc_CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], IOSurfaceWithAlphaFlattened, 0, v151);
    if (v28)
    {
      _cg_jpeg_mem_term("writeImageAtIndex", 921, "*** CVPixelBufferCreateWithIOSurface - err=%d\n");
    }

    else
    {
      v127 = IOSurfaceWithAlphaFlattened;
      PixelFormat = IOSurfaceGetPixelFormat(IOSurfaceWithAlphaFlattened);
      v44 = PixelFormat;
      if ((PixelFormat >> 24) > 0x7F)
      {
        __maskrune(PixelFormat >> 24, 0x40000uLL);
      }

      if ((v44 << 8 >> 24) > 0x7F)
      {
        __maskrune(v44 << 8 >> 24, 0x40000uLL);
      }

      if ((v44 >> 8) > 0x7F)
      {
        __maskrune(v44 >> 8, 0x40000uLL);
      }

      v44 = v44;
      if (v44 > 0x7F)
      {
        __maskrune(v44, 0x40000uLL);
      }

      _cg_jpeg_mem_term("writeImageAtIndex", 927, "*** CVPixelBufferCreateWithIOSurface: '%c%c%c%c'\n");
      BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(v151[0]);
      IOSurfaceWithAlphaFlattened = v127;
    }

    CFRelease(IOSurfaceWithAlphaFlattened);
  }

  else
  {
    v28 = 4294967246;
  }

  IIODictionary::~IIODictionary(&dest);
LABEL_41:
  if (v151[0])
  {
    v138 = 0;
    if (!v28)
    {
      goto LABEL_128;
    }

    goto LABEL_268;
  }

  v29 = Height * BytesPerRow;
  if ((v29 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_285:
    v138 = 0;
    goto LABEL_270;
  }

  v138 = malloc_type_malloc(v29, 0x100004077774924uLL);
  if (!v138)
  {
    _cg_jpeg_mem_term("writeImageAtIndex", 948, "*** could not allocate outputBuffer [%d x %d]\n");
    goto LABEL_285;
  }

  if (a2)
  {
    IIOImagePixelDataProvider::getBytes(a2, v138);
    appleflags = _cg_png_get_appleflags(a2);
    Error = _cg_GifLastError(a2);
    BitsPerPixel = appleflags;
    v33 = Error;
  }

  else
  {
    BitsPerPixel = CGImageGetBitsPerPixel(a3);
    v33 = CGImageGetBitsPerComponent(a3);
    if (CGImageGetData() != Height)
    {
      _cg_jpeg_mem_term("writeImageAtIndex", 961, "*** could not get image data [%d x %d]  rb: %d\n");
      goto LABEL_270;
    }
  }

  if (Model == kCGColorSpaceModelRGB)
  {
    if ((v139 - 1) < 4 || v139 == 7)
    {
      if (v33 == 8)
      {
        v42 = 0;
        v34 = 1111970369;
        goto LABEL_117;
      }

      if (BitsPerPixel == 64)
      {
        if ((BitmapInfo & 0x100) != 0)
        {
          v34 = 1380411457;
        }

        else
        {
          v34 = 1815491698;
        }

        goto LABEL_125;
      }

      v45 = 998;
    }

    else
    {
      if (v33 == 8)
      {
        v42 = 0;
        v34 = 24;
        goto LABEL_117;
      }

      if (v33 == 16)
      {
        v42 = 0;
        v34 = 1815491698;
        goto LABEL_117;
      }

      v45 = 1008;
    }

    LogError("writeImageAtIndex", v45, "*** ERROR: unexpected bitDepth for RGB+alpha  bpc:%d  bpp:%d\n", v33, BitsPerPixel);
    v34 = 0;
    v42 = 1;
LABEL_117:
    if (BitsPerPixel == 32)
    {
      if (*(this + 10) == 1785750887)
      {
        if (_AlphaPosition(v139) == 1)
        {
          goto LABEL_122;
        }
      }

      else if (_AlphaPosition(v139) == 1)
      {
LABEL_122:
        dest.data = v138;
        dest.height = Height;
        dest.width = Width;
        dest.rowBytes = BytesPerRow;
        *permuteMap = 50331906;
        vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0);
        v34 = 1111970369;
        goto LABEL_125;
      }
    }

    if (v42)
    {
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  if (Model)
  {
    LogError("writeImageAtIndex", 1012, "*** ERROR: unsupported colorSpaceModel (%d)\n", Model);
    goto LABEL_124;
  }

  if ((BitmapInfo & 0x1F) != 0)
  {
    v34 = 843264056;
    if (v33 != 8)
    {
      if (v33 != 16)
      {
        LogError("writeImageAtIndex", 974, "*** ERROR: unexpected bitDepth for grayscale+alpha  bpc:%d  bpp:%d\n");
LABEL_124:
        LogError("writeImageAtIndex", 1043, "*** ERROR: pixelFormat was not set for:  bpc:%d   bpp:%d\n", v33, BitsPerPixel);
        v34 = 0;
        goto LABEL_125;
      }

      goto LABEL_97;
    }
  }

  else
  {
    v34 = 1278226488;
    if (v33 != 8)
    {
      if (v33 != 16)
      {
        LogError("writeImageAtIndex", 982, "*** ERROR: unexpected bitDepth for grayscale  bpc:%d  bpp:%d\n");
        goto LABEL_124;
      }

LABEL_97:
      v34 = (v34 + 254);
    }
  }

LABEL_125:
  v46 = gFunc_CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], Width, Height, v34, v138, BytesPerRow, CVPixelBufferReleaseImageBlock, v138, v149, v151);
  v28 = v46;
  if (!v46)
  {
LABEL_128:
    Name = CGColorSpaceGetName(space);
    if (Name && CFStringCompare(Name, @"kCGColorSpaceDeviceRGB", 0) == kCFCompareEqualTo)
    {
      dest.data = 0;
      dest.height = 0;
      IIOColorSpace::IIOColorSpace(&dest, *MEMORY[0x1E695F1C0]);
      gFunc_CVBufferSetAttachment(v151[0], *gIIO_kCVImageBufferCGColorSpaceKey, dest.height, 1);
      IIOColorSpace::~IIOColorSpace(&dest);
    }

    else
    {
      HasOpaqueAlphaFromPixelData = gFunc_CVBufferSetAttachment(v151[0], *gIIO_kCVImageBufferCGColorSpaceKey, space, 1);
    }

    if (!a6)
    {
      HasOpaqueAlphaFromPixelData = HEIFWritePlugin::prepareHEIFWriting(this, v49, v50);
    }

    if ((v139 - 1) < 4 || v139 == 7)
    {
      LOBYTE(dest.data) = 0;
      if (gFunc_CMPhotoImageHasOpaqueAlphaFromPixelData)
      {
        HasOpaqueAlphaFromPixelData = gFunc_CMPhotoImageHasOpaqueAlphaFromPixelData(v151[0], &dest);
        if (!HasOpaqueAlphaFromPixelData)
        {
          if (LOBYTE(dest.data))
          {
            v51 = getprogname();
            v52 = IIO_AlphaInfoString(v139);
            HasOpaqueAlphaFromPixelData = LogError("writeImageAtIndex", 1094, "⭕️ ERROR: '%s' is trying to save an opaque image (%dx%d) with '%s'. This would unnecessarily increase the file size and will double (!!!) the required memory when decoding the image --> ignoring alpha.\n ", v51, Width, Height, v52);
            v139 = 5;
          }
        }
      }
    }

    if (v139 == 3)
    {
      v53 = &gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha;
    }

    else
    {
      if (v139 != 1)
      {
        goto LABEL_150;
      }

      v53 = &gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha;
    }

    HasOpaqueAlphaFromPixelData = gFunc_CVBufferSetAttachment(v151[0], *gIIO_kCVImageBufferAlphaChannelModeKey, **v53, 1);
LABEL_150:
    ISO5_ContentLightLevelInfoData = HEIFWritePlugin::createISO5_ContentLightLevelInfoData(HasOpaqueAlphaFromPixelData, Ref, a4);
    v56 = ISO5_ContentLightLevelInfoData;
    if (ISO5_ContentLightLevelInfoData)
    {
      gFunc_CVBufferSetAttachment(v151[0], *gIIO_kCVImageBufferContentLightLevelInfoKey, ISO5_ContentLightLevelInfoData, 1);
      CFRelease(v56);
    }

    ISO5_MasteringDisplayColorVolumeData = HEIFWritePlugin::createISO5_MasteringDisplayColorVolumeData(ISO5_ContentLightLevelInfoData, v55, a4);
    if (ISO5_MasteringDisplayColorVolumeData)
    {
      gFunc_CVBufferSetAttachment(v151[0], *gIIO_kCVImageBufferMasteringDisplayColorVolumeKey, ISO5_MasteringDisplayColorVolumeData, 1);
      CFRelease(ISO5_MasteringDisplayColorVolumeData);
    }

    v58 = IIODictionary::containsKey(a4, @"ContentColorVolume");
    ISO5_AmbientViewingEnvironmentData = HEIFWritePlugin::createISO5_AmbientViewingEnvironmentData(v58, v59, a4);
    if (ISO5_AmbientViewingEnvironmentData)
    {
      gFunc_CVBufferSetAttachment(v151[0], *gIIO_kCVImageBufferAmbientViewingEnvironmentKey, ISO5_AmbientViewingEnvironmentData, 1);
      CFRelease(ISO5_AmbientViewingEnvironmentData);
    }

    memset(&dest, 0, 24);
    IIODictionary::IIODictionary(&dest);
    if (v136 == 8 || *(this + 10) == 1785750887)
    {
      v62 = 8;
    }

    else
    {
      v62 = 10;
    }

    IIONumber::IIONumber(permuteMap, v62);
    IIODictionary::setObjectForKey(&dest, v146, *gIIO_kCMPhotoCompressionOption_BitDepth);
    IIONumber::~IIONumber(permuteMap);
    IIONumber::IIONumber(v63, *(this + 10));
    IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_CodecType);
    IIONumber::~IIONumber(permuteMap);
    if (*(this + 10) == 1752589105)
    {
      DictionaryRepresentation = IIODictionary::containsKeyGroup(a4, @"TileWidth", @"{TIFF}");
      if (DictionaryRepresentation)
      {
        DictionaryRepresentation = IIODictionary::containsKeyGroup(a4, @"TileLength", @"{TIFF}");
        if (DictionaryRepresentation)
        {
          v65 = IIODictionary::getUint32ForKeyGroup(a4, @"TileWidth", @"{TIFF}");
          DictionaryRepresentation = IIODictionary::getUint32ForKeyGroup(a4, @"TileLength", @"{TIFF}");
          v66 = (v65 & 0x7F) != 0 || v65 == 0;
          v67 = (v65 + 127) & 0xFFFFFF80;
          if (!v66)
          {
            v67 = v65;
          }

          v68 = (DictionaryRepresentation & 0x3F) != 0 || DictionaryRepresentation == 0;
          v69 = (DictionaryRepresentation + 63) & 0xFFFFFFC0;
          if (!v68)
          {
            v69 = DictionaryRepresentation;
          }

          if (v67)
          {
            if (v69)
            {
              v152.width = v67;
              v152.height = v69;
              DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v152);
              v70 = DictionaryRepresentation;
              if (DictionaryRepresentation)
              {
                IIODictionary::setObjectForKey(&dest, DictionaryRepresentation, *gIIO_kCMPhotoCompressionOption_Tiling);
                CFRelease(v70);
              }
            }
          }
        }
      }
    }

    if (v24 == -1.0)
    {
      HEIFWritePlugin::updateCompressionOptionsSubsampling(DictionaryRepresentation, &dest, v128, -1.0);
    }

    else
    {
      v71 = v128;
      if (*(this + 10) == 1785750887)
      {
        IIONumber::IIONumber(permuteMap, 3);
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
        IIONumber::~IIONumber(permuteMap);
        memset(permuteMap, 0, sizeof(permuteMap));
        v146 = 0;
        IIODictionary::IIODictionary(v72);
        IIONumber::IIONumber(v142, v24);
        IIODictionary::setObjectForKey(permuteMap, v142, *gIIO_kCMPhotoQualityControllerParameter_QualityValue);
        IIONumber::~IIONumber(v142);
        IIODictionary::setObjectForKey(&dest, *&permuteMap[8], *gIIO_kCMPhotoCompressionOption_QualityControllerParameters);
        if (v24 == 1.0)
        {
          IIONumber::IIONumber(v142, 1);
          IIODictionary::setObjectForKey(&dest, value, *gIIO_kCMPhotoCompressionOption_Subsampling);
          IIONumber::~IIONumber(v142);
        }
      }

      else
      {
        if (v24 >= 1.0)
        {
          IIONumber::IIONumber(permuteMap, 1);
          IIODictionary::setObjectForKey(&dest, v146, *gIIO_kCMPhotoCompressionOption_Subsampling);
          IIONumber::~IIONumber(permuteMap);
          IIONumber::IIONumber(v74, 6);
          IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
          IIONumber::~IIONumber(permuteMap);
          goto LABEL_190;
        }

        if (!v128)
        {
          DictionaryRepresentation = IIODictionary::getUint32ForKey(a4, @"kCGImageSurfaceFormatRequest");
          v71 = DictionaryRepresentation;
        }

        HEIFWritePlugin::updateCompressionOptionsSubsampling(DictionaryRepresentation, &dest, v71, v24);
        IIONumber::IIONumber(permuteMap, 3);
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
        IIONumber::~IIONumber(permuteMap);
        memset(permuteMap, 0, sizeof(permuteMap));
        v146 = 0;
        IIODictionary::IIODictionary(v73);
        IIONumber::IIONumber(v142, v24);
        IIODictionary::setObjectForKey(permuteMap, v142, *gIIO_kCMPhotoQualityControllerParameter_QualityValue);
        IIONumber::~IIONumber(v142);
        IIODictionary::setObjectForKey(&dest, *&permuteMap[8], *gIIO_kCMPhotoCompressionOption_QualityControllerParameters);
      }

      IIODictionary::~IIODictionary(permuteMap);
    }

LABEL_190:
    ObjectForKey = IIODictionary::getObjectForKey(a4, @"kCGImageDestinationEnableRGBToYUVDithering");
    v76 = ObjectForKey;
    if (ObjectForKey)
    {
      v77 = CFGetTypeID(ObjectForKey);
      if (v77 == CFBooleanGetTypeID())
      {
        IIODictionary::setObjectForKey(&dest, v76, *gIIO_kCMPhotoCompressionOption_RGBToYUVDithering);
      }
    }

    if (v129)
    {
      IIODictionary::setObjectForKey(&dest, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoCompressionOption_PrimaryImage);
    }

    if (*(this + 10) == 1752589105)
    {
      if (a4 && IIODictionary::containsKey(a4, @"Orientation"))
      {
        v78 = IIODictionary::getUint32ForKey(a4, @"Orientation");
      }

      else
      {
        v78 = 1;
      }

      IIONumber::IIONumber(permuteMap, v78);
      IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_ImageOrientation);
      IIONumber::~IIONumber(permuteMap);
    }

    v79 = IIODictionary::containsKey(a4, @"{HEIF}");
    if (v79)
    {
      HEIFWritePlugin::updateHEIFProperties(v79, &dest, a4);
    }

    HEIFWritePlugin::updateHardwareEncodeOptions(this, &dest, a4);
    v80 = *(this + 7);
    if (*(this + 125) == 1)
    {
      v81 = *(this + 16);
      *permuteMap = *(this + 68);
      v146 = *(this + 84);
      v82 = gFunc_CMPhotoCompressionSessionAddImageToSequence(v80, v81, permuteMap, dest.height, v151[0], &v147);
      v28 = v82;
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("seq CMPhotoCompressionSessionAddImageToSequence: [session:%p]  seq:%d  img:%d  err=%d\n", *(this + 7), *(this + 16), v147, v82);
      }

      goto LABEL_228;
    }

    v28 = gFunc_CMPhotoCompressionSessionAddImage(v80, dest.height, v151[0], &v147);
    if ((gIIODebugFlags & 0x30000) == 0)
    {
LABEL_228:
      if (v28 == -15474)
      {
        IIONumber::IIONumber(permuteMap, 5);
        IIODictionary::setObjectForKey(&dest, v146, *gIIO_kCMPhotoCompressionOption_Subsampling);
        IIONumber::~IIONumber(permuteMap);
        IIODictionary::removeObjectForKey(&dest, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
        IIONumber::IIONumber(permuteMap, 3);
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
        IIONumber::~IIONumber(permuteMap);
        memset(permuteMap, 0, sizeof(permuteMap));
        v146 = 0;
        IIODictionary::IIODictionary(v92);
        IIONumber::IIONumber(v142, v24);
        IIODictionary::setObjectForKey(permuteMap, v142, *gIIO_kCMPhotoQualityControllerParameter_QualityValue);
        IIONumber::~IIONumber(v142);
        IIODictionary::setObjectForKey(&dest, *&permuteMap[8], *gIIO_kCMPhotoCompressionOption_QualityControllerParameters);
        v93 = *(this + 7);
        if (*(this + 125) == 1)
        {
          v94 = *(this + 16);
          *v142 = *(this + 68);
          value = *(this + 84);
          v95 = gFunc_CMPhotoCompressionSessionAddImageToSequence(v93, v94, v142, dest.height, v151[0], &v147);
          v28 = v95;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("seq CMPhotoCompressionSessionAddImageToSequence: [session:%p]  seq:%d  img:%d  err=%d\n", *(this + 7), *(this + 16), v147, v95);
          }
        }

        else
        {
          v96 = gFunc_CMPhotoCompressionSessionAddImage(v93, dest.height, v151[0], &v147);
          v28 = v96;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("    CMPhotoCompressionSessionAddImage (420f): [session:%p]  err=%d\n", *(this + 7), v96);
          }
        }

        IIODictionary::~IIODictionary(permuteMap);
      }

      if (v28)
      {
        if (*(this + 125))
        {
          v113 = "CMPhotoCompressionSessionAddImageToSequence";
        }

        else
        {
          v113 = "CMPhotoCompressionSessionAddImage";
        }

        v114 = IIOCMErrorString(v28);
        v115 = *(this + 10);
        v116 = v115 >> 24;
        if ((v115 >> 24) <= 0x7F)
        {
          v117 = *(MEMORY[0x1E69E9830] + 4 * v116 + 60) & 0x40000;
        }

        else
        {
          v117 = __maskrune(v116, 0x40000uLL);
          v115 = *(this + 10);
        }

        if (v117)
        {
          v118 = (v115 >> 24);
        }

        else
        {
          v118 = 46;
        }

        v119 = v115 << 8 >> 24;
        if (v119 <= 0x7F)
        {
          v120 = *(MEMORY[0x1E69E9830] + 4 * v119 + 60) & 0x40000;
        }

        else
        {
          v120 = __maskrune(v119, 0x40000uLL);
          v115 = *(this + 10);
        }

        if (v120)
        {
          v121 = (v115 << 8 >> 24);
        }

        else
        {
          v121 = 46;
        }

        v122 = v115 >> 8;
        if (v122 <= 0x7F)
        {
          v123 = *(MEMORY[0x1E69E9830] + 4 * v122 + 60) & 0x40000;
        }

        else
        {
          v123 = __maskrune(v122, 0x40000uLL);
          v115 = *(this + 10);
        }

        if (v123)
        {
          v124 = (v115 >> 8);
        }

        else
        {
          v124 = 46;
        }

        if (v115 <= 0x7F)
        {
          v125 = *(MEMORY[0x1E69E9830] + 4 * v115 + 60) & 0x40000;
        }

        else
        {
          v125 = __maskrune(v115, 0x40000uLL);
        }

        if (v125)
        {
          v126 = *(this + 40);
        }

        else
        {
          v126 = 46;
        }

        LogError("writeImageAtIndex", 1311, "*** %s: err = %s [%d]    (codec: '%c%c%c%c')\n", v113, v114, v28, v118, v121, v124, v126);
        IIODictionary::~IIODictionary(&dest);
        goto LABEL_270;
      }

      if ((v139 | 2) == 3)
      {
        memset(permuteMap, 0, sizeof(permuteMap));
        v146 = 0;
        IIODictionary::IIODictionary(permuteMap);
        v97 = gFunc_CMPhotoCompressionSessionAddAuxiliaryImage(*(this + 7), v147, 3, 0, *&permuteMap[8], v151[0], 0);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    CMPhotoCompressionSessionAddAuxiliaryImage: [session:%p]  err=%d\n", *(this + 7), v97);
        }

        IIODictionary::~IIODictionary(permuteMap);
      }

      IIODictionary::~IIODictionary(&dest);
      v98 = IIODictionary::getBoolForKey(a4, @"kCGImageDestinationEmbedThumbnail");
      if (v98)
      {
        *v142 = 320;
        v100 = gFunc_CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize(v142, Width, Height);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize: [session:%p] size:%u err:%d\n", *(this + 7), v142[0], v100);
        }

        memset(&dest, 0, 24);
        IIODictionary::IIODictionary(&dest);
        IIONumber::IIONumber(permuteMap, v142[0]);
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_MaxPixelSize);
        IIONumber::~IIONumber(permuteMap);
        IIONumber::IIONumber(v101, *(this + 10));
        IIODictionary::setObjectForKey(&dest, permuteMap, *gIIO_kCMPhotoCompressionOption_CodecType);
        IIONumber::~IIONumber(permuteMap);
        IIODictionary::setObjectForKey(&dest, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoCompressionOption_ForceHighSpeed);
        v102 = gFunc_CMPhotoCompressionSessionAddThumbnail(*(this + 7), v147, dest.height, v151[0]);
        v103 = v102;
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    CMPhotoCompressionSessionAddThumbnail: [session:%p]  img:%d  err=%d\n", *(this + 7), v147, v102);
        }

        if (v103)
        {
          IIOCMErrorString(v103);
          _cg_jpeg_mem_term("writeImageAtIndex", 1346, "*** CMPhotoCompressionSessionAddThumbnail  err = %s [%d]\n");
        }

        IIODictionary::~IIODictionary(&dest);
      }

      if (a4)
      {
        ExifData = HEIFWritePlugin::createExifData(v98, a4);
        if (ExifData)
        {
          v105 = gFunc_CMPhotoCompressionSessionAddExif (*(this + 7), v147, 0, ExifData);
          v106 = v105;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("    CMPhotoCompressionSessionAddExif: [session:%p]  img:%d  err=%d\n", *(this + 7), v147, v105);
          }

          if (v106)
          {
            IIOCMErrorString(v106);
            _cg_jpeg_mem_term("writeImageAtIndex", 1365, "*** CMPhotoCompressionSessionAddExif  err = %s [%d]\n");
            IIO_CFShow(a4[1], 2, "imageProperties");
          }

          CFRelease(ExifData);
        }

        dest.data = 0;
        HEIFWritePlugin::createXMPData(this, a4, &dest, 0, 0);
        if (dest.data)
        {
          v107 = gFunc_CMPhotoCompressionSessionAddXMP(*(this + 7), v147, 0);
          v108 = v107;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("    CMPhotoCompressionSessionAddXMP: [session:%p]  img:%d  err=%d\n", *(this + 7), v147, v107);
          }

          if (v108)
          {
            IIOCMErrorString(v108);
            _cg_jpeg_mem_term("writeImageAtIndex", 1387, "*** CMPhotoCompressionSessionAddXMP  err = %s [%d]\n");
            IIO_CFShow(a4[1], 2, "imageProperties");
          }

          CFRelease(dest.data);
        }
      }

      v28 = HEIFWritePlugin::writeAuxImages(this, v99, a6, v147);
      if (v28)
      {
        _cg_jpeg_mem_term("writeImageAtIndex", 1398, "*** ERROR: failed to write aux images...");
        goto LABEL_270;
      }

      v109 = HEIFWritePlugin::writeAlternateImage(this, v151[0], a4, a6, v147);
      v28 = v109;
      if (v109)
      {
        IIOCMErrorString(v109);
        _cg_jpeg_mem_term("writeImageAtIndex", 1404, "*** ERROR: failed to write alternate image - %s [%d]");
        goto LABEL_270;
      }

      v110 = @"UnclampedDelayTime";
      if ((IIODictionary::containsKeyGroup(a4, @"UnclampedDelayTime", @"{HEICS}") & 1) != 0 || (v110 = @"DelayTime", IIODictionary::containsKeyGroup(a4, @"DelayTime", @"{HEICS}")))
      {
        DoubleForKeyGroup = IIODictionary::getDoubleForKeyGroup(a4, v110, @"{HEICS}");
      }

      else
      {
        DoubleForKeyGroup = 0.1;
      }

      memset(&dest, 0, 24);
      gFunc_CMTimeMake(&dest, (DoubleForKeyGroup * 1000.0), 1000);
      *v142 = *(this + 68);
      value = *(this + 84);
      v140 = *&dest.data;
      v141 = dest.width;
      gFunc_CMTimeAdd(permuteMap, v142, &v140);
      v28 = 0;
      *(this + 68) = *permuteMap;
      *(this + 84) = v146;
      goto LABEL_268;
    }

    v83 = *(this + 7);
    v84 = gFunc_CVPixelBufferGetPixelFormatType(v151[0]) >> 24;
    if (v84 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v84 + 60) & 0x40000) != 0)
      {
        goto LABEL_209;
      }
    }

    else if (__maskrune(v84, 0x40000uLL))
    {
LABEL_209:
      v85 = (gFunc_CVPixelBufferGetPixelFormatType(v151[0]) >> 24);
      goto LABEL_212;
    }

    v85 = 46;
LABEL_212:
    v86 = (gFunc_CVPixelBufferGetPixelFormatType(v151[0]) << 8) >> 24;
    if (v86 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v86 + 60) & 0x40000) != 0)
      {
        goto LABEL_214;
      }
    }

    else if (__maskrune(v86, 0x40000uLL))
    {
LABEL_214:
      v87 = ((gFunc_CVPixelBufferGetPixelFormatType(v151[0]) << 8) >> 24);
      goto LABEL_217;
    }

    v87 = 46;
LABEL_217:
    v88 = gFunc_CVPixelBufferGetPixelFormatType(v151[0]) >> 8;
    if (v88 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v88 + 60) & 0x40000) != 0)
      {
        goto LABEL_219;
      }
    }

    else if (__maskrune(v88, 0x40000uLL))
    {
LABEL_219:
      v89 = (gFunc_CVPixelBufferGetPixelFormatType(v151[0]) >> 8);
      goto LABEL_222;
    }

    v89 = 46;
LABEL_222:
    PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v151[0]);
    if (PixelFormatType <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * PixelFormatType + 60) & 0x40000) != 0)
      {
        goto LABEL_224;
      }
    }

    else if (__maskrune(PixelFormatType, 0x40000uLL))
    {
LABEL_224:
      v91 = gFunc_CVPixelBufferGetPixelFormatType(v151[0]);
LABEL_227:
      ImageIOLog("    CMPhotoCompressionSessionAddImage: [session:%p] '%c%c%c%c' err=%d\n", v83, v85, v87, v89, v91, v28);
      goto LABEL_228;
    }

    v91 = 46;
    goto LABEL_227;
  }

  IIOCMErrorString(v46);
  if (((v34 << 8) >> 24) > 0x7F)
  {
    __maskrune((v34 << 8) >> 24, 0x40000uLL);
  }

  if ((v34 >> 8) > 0x7F)
  {
    __maskrune(v34 >> 8, 0x40000uLL);
  }

  if (v34 > 0x7F)
  {
    __maskrune(v34, 0x40000uLL);
  }

  _cg_jpeg_mem_term("writeImageAtIndex", 1051, "*** ERROR: CVPixelBufferCreateWithBytes err = %s [%d]  '%c%c%c%c'\n");
LABEL_268:
  if (a7)
  {
    *a7 = v147;
  }

LABEL_270:
  if (v151[0])
  {
    gFunc_CVPixelBufferRelease(v151[0], v23);
  }

  else if (v138)
  {
    free(v138);
  }

  IIODictionary::~IIODictionary(&v148);
  return v28;
}

void CVPixelBufferReleaseImageBlock(void *a1, const void *a2)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t HEIFWritePlugin::prepareHEIFWriting(HEIFWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  IIODictionary::IIODictionary(&v15);
  if (IIOWritePlugin::getImageCount(this) >= 2)
  {
    IIODictionary::setObjectForKey(&v15, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoCompressionSessionOption_UseCodecSessionPool);
  }

  v4 = gFunc_CMPhotoCompressionSessionCreate(*MEMORY[0x1E695E480], v16, this + 56);
  v5 = v4;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    CMPhotoCompressionSessionCreate: [session:%p]  err=%d\n", *(this + 7), v4);
  }

  if (v5 || !*(this + 7))
  {
    IIOCMErrorString(v5);
    _cg_jpeg_mem_term("prepareHEIFWriting", 1806, "*** CMPhotoCompressionSessionCreate: err = %s [%d]\n");
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    IIODictionary::IIODictionary(&v12);
    IIONumber::IIONumber(&v10, 1);
    IIODictionary::setObjectForKey(&v12, &v10, *gIIO_kCMPhotoCompressionContainerOption_BackingType);
    IIONumber::~IIONumber(&v10);
    if (*(this + 10) == 1785750887)
    {
      IIONumber::IIONumber(&v10, 1);
    }

    else
    {
      IIONumber::IIONumber(&v10, 0);
    }

    IIODictionary::setObjectForKey(&v12, &v10, *gIIO_kCMPhotoCompressionContainerOption_Format);
    IIONumber::~IIONumber(&v10);
    v6 = gFunc_CMPhotoCompressionSessionOpenEmptyContainer(*(this + 7), v13);
    v5 = v6;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    CMPhotoCompressionSessionOpenEmptyContainer: [session:%p]  err=%d\n", *(this + 7), v6);
    }

    if (v5)
    {
      IIOCMErrorString(v5);
      _cg_jpeg_mem_term("prepareHEIFWriting", 1832, "*** CMPhotoCompressionSessionOpenEmptyContainer: err = %s [%d]\n");
    }

    else if (*(this + 125) == 1)
    {
      v9 = 0;
      started = gFunc_CMPhotoCompressionSessionStartImageSequence(*(this + 7), 0, &v9);
      v5 = started;
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("seq CMPhotoCompressionSessionStartImageSequence: [session:%p]  seq:%d  err=%d\n", *(this + 7), v9, started);
      }

      if (v5)
      {
        IIOCMErrorString(v5);
        _cg_jpeg_mem_term("prepareHEIFWriting", 1839, "*** CMPhotoCompressionSessionStartImageSequence: err = %s [%d]\n");
      }

      else
      {
        *(this + 16) = v9;
        gFunc_CMTimeMake(&v10, 0, 1000);
        *(this + 68) = v10;
        *(this + 84) = v11;
      }
    }

    else
    {
      v5 = 0;
    }

    IIODictionary::~IIODictionary(&v12);
  }

  IIODictionary::~IIODictionary(&v15);
  return v5;
}

void sub_186020088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v16 - 56));
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::writeAuxImages(HEIFWritePlugin *this, IIODictionary *a2, int a3, uint64_t a4)
{
  v4 = *(this + 6);
  if (!v4)
  {
    return 0;
  }

  memset(v52, 0, 24);
  IIOArray::IIOArray(v52, v4);
  Count = IIOArray::getCount(v8);
  if (!Count)
  {
    v11 = 0;
    goto LABEL_52;
  }

  v10 = 0;
  v11 = 0;
  v12 = Count;
  while (1)
  {
    ObjectAtIndex = IIOArray::getObjectAtIndex(v52, v10);
    memset(v51, 0, sizeof(v51));
    IIODictionary::IIODictionary(v51, ObjectAtIndex);
    Uint32ForKey = IIODictionary::getUint32ForKey(v14, "AuxiliaryImageType");
    ObjectForKey = IIODictionary::getObjectForKey(v51, "AuxiliaryImageURN");
    BoolForKey = IIODictionary::getBoolForKey(v51, "customMetadata");
    v48 = 0;
    v49 = 0;
    v50 = 0;
    IIODictionary::IIODictionary(&v48);
    v47 = 0;
    if (IIODictionary::getUint32ForKey(v51, @"ImageIndex") != a3 || ObjectForKey && CFStringCompare(@"kCGImageAuxiliaryDataTypeISOGainMap", ObjectForKey, 0) == kCFCompareEqualTo)
    {
      goto LABEL_41;
    }

    v18 = @"kCGImageAuxiliaryDataTypeDisparity";
    if (Uint32ForKey == 1)
    {
      goto LABEL_22;
    }

    if (Uint32ForKey == 5)
    {
      v18 = @"kCGImageAuxiliaryDataTypePortraitEffectsMatte";
LABEL_22:
      v29 = IIODictionary::getObjectForKey(v51, v18);
      goto LABEL_23;
    }

    v18 = @"kCGImageAuxiliaryDataTypeDepth";
    if (Uint32ForKey == 2)
    {
      goto LABEL_22;
    }

    if (ObjectForKey)
    {
      v19 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_Alpha, ObjectForKey, 0);
      v20 = @"kCGImageAuxiliaryDataTypeAlpha";
      if (v19 && (v21 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_Depth, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeDepth", v21) && (v22 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_PortraitEffectsMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypePortraitEffectsMatte", v22) && (v23 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationSkinMatte", v23) && (v24 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationHairMatte", v24) && (v25 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationTeethMatte", v25) && (v26 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationGlassesMatte", v26) && (v27 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationSkyMatte", v27) && (v28 = CFStringCompare(*gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap, ObjectForKey, 0), v20 = @"kCGImageAuxiliaryDataTypeHDRGainMap", v28))
      {
        v29 = 0;
      }

      else
      {
        v29 = IIODictionary::getObjectForKey(v51, v20);
      }

      if (BoolForKey)
      {
        v29 = IIODictionary::getObjectForKey(v51, ObjectForKey);
      }

      IIODictionary::setObjectForKey(&v48, ObjectForKey, *gIIO_kCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN);
    }

    else
    {
      v29 = 0;
    }

LABEL_23:
    if (!BoolForKey)
    {
      break;
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    IIODictionary::IIODictionary(&v44);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    IIODictionary::IIODictionary(&v41);
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v51, @"kCGImageAuxiliaryDataInfoData", ObjectForKey);
    IIODictionary::setObjectForKey(&v44, ObjectForKeyGroup, *gIIO_kCMPhotoCustomMetadata_Data);
    IIODictionary::setObjectForKey(&v44, ObjectForKey, *gIIO_kCMPhotoCustomMetadata_URI);
    v31 = gFunc_CMPhotoCompressionSessionAddCustomMetadata(*(this + 7), a4, v42, v45);
    v11 = v31;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    CMPhotoCompressionSessionAddCustomMetadata: [session:%p]  img:%d  err=%d\n", *(this + 7), a4, v31);
    }

    if (v11)
    {
      IIOCMErrorString(v11);
      _cg_jpeg_mem_term("writeAuxImages", 1545, "*** CMPhotoCompressionSessionAddCustomMetadata  err = %s [%d]\n");
      v32 = 5;
    }

    else
    {
      v32 = 0;
    }

    IIODictionary::~IIODictionary(&v41);
    IIODictionary::~IIODictionary(&v44);
    if (v11)
    {
      IIODictionary::~IIODictionary(&v48);
      IIODictionary::~IIODictionary(v51);
      if ((v32 | 4) != 4)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    }

LABEL_41:
    IIODictionary::~IIODictionary(&v48);
    IIODictionary::~IIODictionary(v51);
LABEL_42:
    if (v12 == ++v10)
    {
      goto LABEL_52;
    }
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  IIODictionary::IIODictionary(&v44, v29);
  PixelBufferFromAuxiliaryDataInfo = HEIFWritePlugin::createPixelBufferFromAuxiliaryDataInfo(v33, &v44, v34);
  v36 = IIODictionary::getObjectForKey(&v44, @"kCGImageAuxiliaryDataInfoMetadata");
  v37 = v36;
  if (v36)
  {
    if (CFDictionaryGetCount(*(v36 + 3)))
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v11 = gFunc_CMPhotoCompressionSessionAddAuxiliaryImage(*(this + 7), a4, Uint32ForKey, v38, v49, PixelBufferFromAuxiliaryDataInfo, &v47);
  gFunc_CVPixelBufferRelease(PixelBufferFromAuxiliaryDataInfo, v39);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    CMPhotoCompressionSessionAddAuxiliaryImage: [session:%p]  img:%d  err=%d\n", *(this + 7), a4, v11);
  }

  if (!v11)
  {
    IIODictionary::~IIODictionary(&v44);
    goto LABEL_41;
  }

  IIOCMErrorString(v11);
  _cg_jpeg_mem_term("writeAuxImages", 1562, "*** Error: CMPhotoCompressionSessionAddAuxiliaryImage  err = %s [%d]\n");
  IIODictionary::~IIODictionary(&v44);
  IIODictionary::~IIODictionary(&v48);
  IIODictionary::~IIODictionary(v51);
LABEL_52:
  IIOArray::~IIOArray(v52);
  return v11;
}

void sub_186020704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v28 - 160));
  IIODictionary::~IIODictionary((v28 - 136));
  IIOArray::~IIOArray((v28 - 112));
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::writeAlternateImage(HEIFWritePlugin *this, __CVBuffer *a2, IIODictionary *a3, int a4, uint64_t a5)
{
  v6 = *(this + 6);
  if (!v6)
  {
    return 0;
  }

  memset(v57, 0, 24);
  IIOArray::IIOArray(v57, v6);
  Count = IIOArray::getCount(v9);
  if (Count)
  {
    v36 = a2;
    v11 = 0;
    value = *MEMORY[0x1E695E4C0];
    name = *MEMORY[0x1E695F178];
    v12 = Count;
    v13 = a3;
    while (1)
    {
      ObjectAtIndex = IIOArray::getObjectAtIndex(v57, v11);
      memset(v56, 0, sizeof(v56));
      IIODictionary::IIODictionary(v56, ObjectAtIndex);
      ObjectForKey = IIODictionary::getObjectForKey(v15, "AuxiliaryImageURN");
      if (IIODictionary::getUint32ForKey(v56, @"ImageIndex") != a4 || !ObjectForKey || CFStringCompare(@"kCGImageAuxiliaryDataTypeISOGainMap", ObjectForKey, 0))
      {
        IIODictionary::~IIODictionary(v56);
        goto LABEL_8;
      }

      v17 = IIODictionary::getObjectForKey(v56, @"kCGImageAuxiliaryDataTypeISOGainMap");
      memset(v55, 0, sizeof(v55));
      IIODictionary::IIODictionary(v55, v17);
      v19 = IIODictionary::getObjectForKey(v18, @"kCGImageAuxiliaryDataInfoMetadata");
      v20 = IIODictionary::getObjectForKey(v55, @"kCGImageAuxiliaryDataInfoColorSpace");
      PixelBufferFromAuxiliaryDataInfo = HEIFWritePlugin::createPixelBufferFromAuxiliaryDataInfo(v20, v55, v21);
      if (v19)
      {
        cf = 0;
        if (!CGImageCreateFlexRangeDictionary(v19, &cf))
        {
          operator new();
        }
      }

      v23 = *(this + 10);
      cf = 0;
      v53 = 0;
      v54 = 0;
      IIODictionary::IIODictionary(&cf);
      IIODictionary::setObjectForKey(&cf, value, *gIIO_kCMPhotoCompressionOption_ApplyTransform);
      IIONumber::IIONumber(&v49, v23);
      IIODictionary::setObjectForKey(&cf, &v49, *gIIO_kCMPhotoCompressionOption_CodecType);
      IIONumber::~IIONumber(&v49);
      IIONumber::IIONumber(&v49, 3);
      IIODictionary::setObjectForKey(&cf, &v49, *gIIO_kCMPhotoCompressionOption_QualityControllerType);
      IIONumber::~IIONumber(&v49);
      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      IIONumber::IIONumber(&v46, 0.9);
      IIODictionary::setObjectForKey(&v49, &v46, *gIIO_kCMPhotoQualityControllerParameter_QualityValue);
      IIONumber::~IIONumber(&v46);
      IIODictionary::setObjectForKey(&cf, v50, *gIIO_kCMPhotoCompressionOption_QualityControllerParameters);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      IIODictionary::IIODictionary(&v46);
      BoolForKeyGroup = IIODictionary::getBoolForKeyGroup(v13, @"kCGGenerateAdaptiveSoftClipCurve", @"kCGImageDestinationEncodeRequestOptions");
      v25 = IIODictionary::getBoolForKeyGroup(v13, @"kCGGenerateFlexGTC", @"kCGImageDestinationEncodeRequestOptions");
      if (((v20 != 0) & BoolForKeyGroup) == 1)
      {
        break;
      }

      if (!v25)
      {
        if (v20)
        {
          IIOColorSpace::IIOColorSpace(&v43, v20);
          v30 = v44;
          IIOColorSpace::~IIOColorSpace(&v43);
          CopyWithFlexGTCInfo = CGColorSpaceRetain(v30);
LABEL_28:
          if (CopyWithFlexGTCInfo)
          {
            goto LABEL_37;
          }
        }

LABEL_36:
        CopyWithFlexGTCInfo = CGColorSpaceCreateWithName(name);
        goto LABEL_37;
      }

      kdebug_trace();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      IIODictionary::IIODictionary(&v43);
      if (v19)
      {
        IIODictionary::setObjectForKey(&v43, v19, @"kCGImageAuxiliaryDataInfoMetadata");
      }

      v42 = 0;
      if (IIOCallCreateFlexGTCInfo(0, v36, PixelBufferFromAuxiliaryDataInfo, &v42, v44))
      {
        CopyWithFlexGTCInfo = 0;
      }

      else
      {
        if (v20)
        {
          IIOColorSpace::IIOColorSpace(v41, v20);
          v31 = v41[1];
          IIOColorSpace::~IIOColorSpace(v41);
          CopyWithFlexGTCInfo = IIO_ColorSpaceCreateCopyWithFlexGTCInfo(v31, v42);
          if (!CopyWithFlexGTCInfo)
          {
            CopyWithFlexGTCInfo = CGColorSpaceRetain(v31);
          }
        }

        else
        {
          CopyWithFlexGTCInfo = 0;
        }

        CFRelease(v42);
      }

      kdebug_trace();
      IIODictionary::~IIODictionary(&v43);
      if (!CopyWithFlexGTCInfo)
      {
        goto LABEL_36;
      }

LABEL_37:
      IIODictionary::setObjectForKey(&v46, CopyWithFlexGTCInfo, *gIIO_kCMPhotoCompressionOption_ColorSpace);
      v32 = IIODictionary::getObjectForKey(v55, @"kCGImageAuxiliaryDataInfoMeteorPlusMetadata");
      v43 = 0;
      v33 = gFunc_CMPhotoCompressionSessionAddTmapImageOneShot(*(this + 7), a5, v53, v47, PixelBufferFromAuxiliaryDataInfo, 0, v32 != 0, v32, &v43, v35);
      CGColorSpaceRelease(CopyWithFlexGTCInfo);
      if (PixelBufferFromAuxiliaryDataInfo)
      {
        CFRelease(PixelBufferFromAuxiliaryDataInfo);
      }

      if (v33)
      {
        IIOCMErrorString(v33);
        v35 = v33;
        _cg_jpeg_mem_term("writeAlternateImage", 1723, "*** Error: CMPhotoCompressionSessionAddTmapImageOneShot  err = %s [%d]\n");
      }

      IIODictionary::~IIODictionary(&v46);
      IIODictionary::~IIODictionary(&v49);
      IIODictionary::~IIODictionary(&cf);
      IIODictionary::~IIODictionary(v55);
      IIODictionary::~IIODictionary(v56);
      if (v33)
      {
        goto LABEL_44;
      }

LABEL_8:
      if (v12 == ++v11)
      {
        goto LABEL_43;
      }
    }

    kdebug_trace();
    IIOColorSpace::IIOColorSpace(&v43, v20);
    v26 = v44;
    IIOColorSpace::~IIOColorSpace(&v43);
    FloatFromRationalForKey = IIODictionary::getFloatFromRationalForKey(0, *gIIO_kCMPhotoMetadata_TonemapAlternateHDRHeadroom);
    v28 = FloatFromRationalForKey;
    if (FloatFromRationalForKey > 0.0)
    {
      v28 = exp2(FloatFromRationalForKey);
    }

    if (v28 == 0.0 || (CopyWithFlexGTCInfo = IIO_ColorSpaceCreateCopyWithAdaptiveSoftClip(v26, 0, v28)) == 0)
    {
      CopyWithFlexGTCInfo = CGColorSpaceRetain(v26);
    }

    kdebug_trace();
    goto LABEL_28;
  }

LABEL_43:
  v33 = 0;
LABEL_44:
  IIOArray::~IIOArray(v57);
  return v33;
}

void sub_186020DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  IIODictionary::~IIODictionary(&a27);
  IIODictionary::~IIODictionary(&a30);
  IIODictionary::~IIODictionary(&a33);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v35 - 192));
  IIODictionary::~IIODictionary((v35 - 168));
  IIOArray::~IIOArray((v35 - 144));
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::createPixelBufferFromAuxiliaryDataInfo(HEIFWritePlugin *this, IIODictionary *a2, IIODictionary *a3)
{
  ObjectForKey = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoData");
  v5 = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoDataDescription");
  v6 = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoImage");
  v7 = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoPixelBuffer");
  v8 = IIODictionary::getObjectForKey(a2, @"kCGImageAuxiliaryDataInfoIOSurface");
  v26 = 0;
  if (v7)
  {
    v26 = v7;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("*** using pixelBuffer [%p] from auxDataInfo\n", v7);
    }

    CFRetain(v7);
  }

  else
  {
    v11 = v8;
    if (v8)
    {
      v12 = gFunc_CVPixelBufferCreateWithIOSurface(0, v8, 0, &v26);
      v13 = v12;
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("*** using IOSurface [%p] from auxDataInfo  (err: %d)\n", v11, v12);
      }

      if (v13)
      {
        v14 = IIOCMErrorString(v13);
        LogError("createPixelBufferFromAuxiliaryDataInfo", 1756, "*** Error: CVPixelBufferCreateWithIOSurface  err = %s [%d]\n", v14, v13);
      }
    }
  }

  result = v26;
  if (v6)
  {
    v10 = v26 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("*** 'kCGImageAuxiliaryDataInfoImage' is not supported yet");
      result = v26;
    }

    else
    {
      result = 0;
    }
  }

  if (ObjectForKey)
  {
    v15 = v5 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && result == 0)
  {
    memset(v25, 0, sizeof(v25));
    IIODictionary::IIODictionary(v25, v5);
    Uint32ForKey = IIODictionary::getUint32ForKey(v25, @"Width");
    v18 = IIODictionary::getUint32ForKey(v25, @"Height");
    v19 = IIODictionary::getUint32ForKey(v25, @"BytesPerRow");
    v20 = IIODictionary::getUint32ForKey(v25, @"PixelFormat");
    BytePtr = CFDataGetBytePtr(ObjectForKey);
    v22 = gFunc_CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], Uint32ForKey, v18, v20, BytePtr, v19, 0, 0, 0, &v26);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      Length = CFDataGetLength(ObjectForKey);
      ImageIOLog("*** using data  [%p:%ld] from auxDataInfo  (err: %d)\n", BytePtr, Length, v22);
    }

    if (v22)
    {
      v24 = IIOCMErrorString(v22);
      LogError("createPixelBufferFromAuxiliaryDataInfo", 1780, "*** Error: CVPixelBufferCreateWithBytes  err = %s [%d]\n", v24, v22);
    }

    IIODictionary::~IIODictionary(v25);
    return v26;
  }

  return result;
}

void sub_1860211E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::completeHEIFWriting(HEIFWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3)
{
  v33 = 0;
  if (*(this + 125) == 1)
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("seq CMPhotoCompressionSessionEndImageSequence:   [session:%p]  seq:%d\n", *(this + 7), *(this + 16));
    }

    gFunc_CMPhotoCompressionSessionEndImageSequence(*(this + 7), *(this + 16), 0);
  }

  v5 = *(this + 12);
  for (i = *(this + 13); v5 != i; ++v5)
  {
    v32 = -1;
    v6 = *(*v5 + 16);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    IIODictionary::IIODictionary(&v29);
    gFunc_CMPhotoCompressionSessionAddGroup(*(this + 7), 0, v6, &v32);
    if (v6 == 1937007986)
    {
      gFunc_CMPhotoCompressionSessionAddImageHandleToGroup(*(this + 7), 0, *(*v5 + 20), v32);
      gFunc_CMPhotoCompressionSessionAddImageHandleToGroup(*(this + 7), 0, *(*v5 + 24), v32);
      v7 = *v5;
      v8 = *(*v5 + 28);
      if ((v8 & 0x80000000) == 0)
      {
        gFunc_CMPhotoCompressionSessionAddImageHandleToGroup(*(this + 7), 0, v8, v32);
        IIONumber::IIONumber(v27, *(*v5 + 32));
        IIODictionary::setObjectForKey(&v29, value, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation);
        IIONumber::~IIONumber(v27);
        v7 = *v5;
      }

      IIONumber::IIONumber(v27, *(v7 + 40));
      IIODictionary::setObjectForKey(&v29, value, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment);
      IIONumber::~IIONumber(v27);
    }

    else
    {
      v9 = *v5;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 0x40000000;
      v23 = ___ZN15HEIFWritePlugin19completeHEIFWritingEP25IIOImagePixelDataProviderP13IIODictionary_block_invoke;
      v24 = &__block_descriptor_tmp_18;
      v25 = this;
      v26 = v32;
      for (j = *(v9 + 48); j != *(v9 + 56); ++j)
      {
        v23(v22, *j);
      }
    }

    if (gFunc_CMPhotoCompressionSessionAddGroupProperties)
    {
      (gFunc_CMPhotoCompressionSessionAddGroupProperties)(*(this + 7), 0, v32, v30);
    }

    IIODictionary::~IIODictionary(&v29);
  }

  v29 = 0;
  v27[0] = 0;
  v11 = gFunc_CMPhotoCompressionSessionCloseContainerAndCopyBacking(*(this + 7), v27, &v29, &v33);
  v12 = v11;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    CMPhotoCompressionSessionCloseContainerAndCopyBacking: [session:%p]  err=%d\n", *(this + 7), v11);
  }

  if (v12)
  {
    IIOCMErrorString(v12);
    _cg_jpeg_mem_term("completeHEIFWriting", 1912, "*** CMPhotoCompressionSessionCloseContainerAndCopyBacking  err = %s [%d]\n");
  }

  else if (v27[0] == 1)
  {
    BytePtr = CFDataGetBytePtr(v33);
    Length = CFDataGetLength(v33);
    IIOImageWriteSession::putBytes(*(this + 2), BytePtr, Length);
  }

  v15 = gFunc_CMPhotoCompressionSessionInvalidate(*(this + 7));
  v19 = v15;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    CMPhotoCompressionSessionInvalidate: [session:%p]  err=%d\n", *(this + 7), v15);
  }

  if (v19)
  {
    IIOCMErrorString(v19);
    _cg_jpeg_mem_term("completeHEIFWriting", 1936, "*** CMPhotoCompressionSessionInvalidate  err = %s [%d]\n");
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v20 = *(this + 7);
  if (v20)
  {
    gFunc_CMPhotoCompressionSessionReleaseHardwareResources(v20, v16, v17, v18);
    gFunc_CMPhotoCompressionSessionDiscardCaches(*(this + 7));
    CFRelease(*(this + 7));
    *(this + 7) = 0;
  }

  return v19;
}

void sub_1860215F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFWritePlugin::writeAll(IIOImageDestination **this)
{
  ImageCount = IIOWritePlugin::getImageCount(this);
  if (ImageCount)
  {
    v3 = 0;
    v4 = ImageCount;
    while (1)
    {
      PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, v3);
      PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, v3);
      ContainerProperties = IIOWritePlugin::getContainerProperties(this);
      v8 = ContainerProperties;
      if (ContainerProperties)
      {
        v9 = IIODictionary::getUint32ForKey(ContainerProperties, @"capacity") - 1;
        if (!PixelDataProviderAtIndex)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v9 = 0;
        if (!PixelDataProviderAtIndex)
        {
LABEL_7:
          SourceImageAtIndex = IIOWritePlugin::getSourceImageAtIndex(this, v3);
          goto LABEL_8;
        }
      }

      SourceImageAtIndex = 0;
LABEL_8:
      *v25 = 0;
      result = (*(*this + 5))(this, PixelDataProviderAtIndex, SourceImageAtIndex, PropertiesAtIndex, v8, v3, v25);
      if (result)
      {
        return result;
      }

      if (IIODictionary::containsKey(PropertiesAtIndex, @"{Groups}"))
      {
        Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(PropertiesAtIndex, @"GroupIndex", @"{Groups}");
        ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(PropertiesAtIndex, @"GroupType", @"{Groups}");
        if (ObjectForKeyGroup)
        {
          v16 = ObjectForKeyGroup;
          if (CFStringCompare(ObjectForKeyGroup, @"StereoPair", 0))
          {
            CFStringCompare(v16, @"Alternate", 0);
          }

          else
          {
            if (IIODictionary::getBoolForKeyGroup(PropertiesAtIndex, @"GroupImageIsLeftImage", @"{Groups}"))
            {
              v17 = 0;
            }

            else if (IIODictionary::getBoolForKeyGroup(PropertiesAtIndex, @"GroupImageIsRightImage", @"{Groups}"))
            {
              v17 = 1;
            }

            else if (IIODictionary::getBoolForKeyGroup(PropertiesAtIndex, @"GroupImageIsMonoscopicImage", @"{Groups}"))
            {
              v17 = 2;
            }

            else
            {
              v17 = v3;
            }

            v18 = HEIFWritePlugin::addGroupItem(this, Uint32ForKeyGroup, 1937007986, v25[0], v17);
            if (v18)
            {
              v19 = v18;
              v20 = IIODictionary::getUint32ForKeyGroup(PropertiesAtIndex, @"GroupImageBaseline", @"{Groups}");
              v21 = IIODictionary::getUint32ForKeyGroup(PropertiesAtIndex, @"GroupImageDisparityAdjustment", @"{Groups}");
              if (v20)
              {
                *(v19 + 9) = v20;
              }

              if (v21)
              {
                *(v19 + 10) = v21;
              }

              v22 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndex, @"GroupImageIndexMonoscopicImageLocation", @"{Groups}");
              if (v22)
              {
                v23 = v22;
                if (CFStringCompare(v22, @"Left", 0))
                {
                  if (CFStringCompare(v23, @"Right", 0))
                  {
                    if (CFStringCompare(v23, @"Center", 0))
                    {
                      v24 = 0;
                    }

                    else
                    {
                      v24 = 3;
                    }
                  }

                  else
                  {
                    v24 = 2;
                  }
                }

                else
                {
                  v24 = 1;
                }

                *(v19 + 8) = v24;
              }
            }
          }
        }
      }

      if (v3 == v9)
      {
        HEIFWritePlugin::completeHEIFWriting(this, v12, v13);
      }

      if (v4 == ++v3)
      {
        return 0;
      }
    }
  }

  return 4294967246;
}

HEIFGroup *HEIFWritePlugin::addGroupItem(uint64_t a1, int a2, int a3, int a4, int a5)
{
  for (i = *(a1 + 96); ; ++i)
  {
    if (i == *(a1 + 104))
    {
      operator new();
    }

    v6 = *i;
    if (*(*i + 2) == a2)
    {
      break;
    }
  }

  if (a3 == 1634497650)
  {
    v7 = HEIFGroup::setOtherImage(v6, a4);
  }

  else
  {
    if (a3 != 1937007986)
    {
      return v6;
    }

    if (a5 == 2)
    {
      v7 = HEIFGroup::setMonoImage(v6, a4);
    }

    else if (a5 == 1)
    {
      v7 = HEIFGroup::setRightImage(v6, a4);
    }

    else
    {
      if (a5)
      {
        return v6;
      }

      v7 = HEIFGroup::setLeftImage(v6, a4);
    }
  }

  if (v7)
  {
    *(v6 + 3) = -1;
  }

  return v6;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t TIFFInitPackBits(void *a1)
{
  a1[126] = PackBitsDecode;
  a1[128] = PackBitsDecode;
  a1[130] = PackBitsDecode;
  a1[124] = PackBitsPreEncode;
  a1[125] = PackBitsPostEncode;
  a1[127] = PackBitsEncode;
  a1[129] = PackBitsEncodeChunk;
  a1[131] = PackBitsEncodeChunk;
  return 1;
}

uint64_t PackBitsDecode(uint64_t a1, char *__b, size_t a3)
{
  v6 = *(a1 + 1152);
  v7 = *(a1 + 1160);
LABEL_2:
  v8 = 0;
  v9 = v7;
  while (1)
  {
    v10 = v8;
    if (v9 < 1 || a3 < 1)
    {
      break;
    }

    v11 = v6[v8];
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= a3)
      {
        TIFFWarningExtR(a1, "PackBitsDecode", "Discarding %lld bytes to avoid buffer overrun", v11 - a3 + 1);
        v11 = a3 - 1;
      }

      v12 = v11 + 1;
      if (v9 > v11 + 1)
      {
        _TIFFmemcpy(__b, &v6[v8 + 1], v11 + 1);
        v6 += v11 + v8 + 2;
        v7 = v7 - v11 - v8 - 2;
        goto LABEL_15;
      }

      v16 = ~v8 + v7;
LABEL_21:
      TIFFWarningExtR(a1, "PackBitsDecode", "Terminating PackBitsDecode due to lack of data.");
      *(a1 + 1152) = &v6[v10 + 1];
      *(a1 + 1160) = v16;
LABEL_17:
      bzero(__b, a3);
      TIFFErrorExtR(a1, "PackBitsDecode", "Not enough data for scanline %u", *(a1 + 876));
      return 0;
    }

    ++v8;
    --v9;
    if (v11 != -128)
    {
      v12 = 1 - v11;
      if (1 - v11 > a3)
      {
        TIFFWarningExtR(a1, "PackBitsDecode", "Discarding %lld bytes to avoid buffer overrun", 1 - v11 - a3);
        v12 = a3;
      }

      if (v7 != v8)
      {
        v7 += ~v8;
        v13 = &v6[v8];
        v14 = *v13;
        v6 = v13 + 1;
        memset(__b, v14, v12);
LABEL_15:
        __b += v12;
        a3 -= v12;
        goto LABEL_2;
      }

      v16 = 0;
      goto LABEL_21;
    }
  }

  *(a1 + 1152) = &v6[v8];
  *(a1 + 1160) = v9;
  if (a3 >= 1)
  {
    goto LABEL_17;
  }

  return 1;
}

uint64_t PackBitsPreEncode(uint64_t a1)
{
  result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *(a1 + 1096) = result;
  if (result)
  {
    if ((*(a1 + 17) & 4) != 0)
    {
      v10 = _cg_TIFFTileRowSize(a1);
    }

    else
    {
      v10 = _cg_TIFFScanlineSize(a1, v3, v4, v5, v6, v7, v8, v9);
    }

    **(a1 + 1096) = v10;
    return 1;
  }

  return result;
}

uint64_t PackBitsPostEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (v1)
  {
    free(v1);
  }

  return 1;
}

uint64_t PackBitsEncode(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a1[144];
  if (a3 < 1)
  {
    v24 = a1[144];
    goto LABEL_44;
  }

  v5 = a3;
  v7 = 0;
  v8 = 0;
  v9 = a1[140] + a1[141];
  do
  {
    v10 = a2 + 1;
    v11 = *a2;
    if (v5 < 2)
    {
      v5 = 0;
      v13 = 1;
      ++a2;
    }

    else
    {
      a2 += v5;
      v12 = v5 - 1;
      v13 = 1;
      while (v11 == *v10)
      {
        ++v13;
        ++v10;
        if (!--v12)
        {
          v13 = v5;
          v5 = 0;
          goto LABEL_10;
        }
      }

      a2 = v10;
      v5 = v12;
    }

    while (1)
    {
      while (1)
      {
LABEL_10:
        if ((v4 + 2) >= v9)
        {
          v14 = a1[145];
          if ((v7 & 0xFFFFFFFD) == 1)
          {
            a1[145] = &v8[v14 - a1[144]];
            result = TIFFFlushData1(a1);
            if (!result)
            {
              return result;
            }

            v16 = v4 - v8;
            v4 = a1[144];
            if (v16 < 1)
            {
              v8 = a1[144];
            }

            else
            {
              v17 = v16 + 1;
              do
              {
                v18 = *v8++;
                *v4++ = v18;
                --v17;
              }

              while (v17 > 1);
              v8 = a1[144];
            }
          }

          else
          {
            a1[145] = &v4[v14 - a1[144]];
            result = TIFFFlushData1(a1);
            if (!result)
            {
              return result;
            }

            v4 = a1[144];
          }
        }

        if (v7 != 3)
        {
          break;
        }

        v7 = 2;
        if (v13 == 1 && *(v4 - 2) == 255)
        {
          v19 = *v8;
          if (v19 <= 0x7D)
          {
            v20 = v19 + 2;
            *v8 = v20;
            v7 = v20 != 127;
            *(v4 - 2) = *(v4 - 1);
          }
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v13 < 2)
      {
        goto LABEL_37;
      }

      if (v13 < 0x81)
      {
        goto LABEL_38;
      }

LABEL_35:
      v7 = 2;
LABEL_36:
      *v4 = -127;
      v4[1] = v11;
      v13 -= 128;
      v4 += 2;
    }

    if (v7 != 1)
    {
      if (v13 < 2)
      {
LABEL_37:
        *v4 = 0;
        v21 = v4 + 1;
        v7 = 1;
        v22 = 2;
        v8 = v4;
        goto LABEL_41;
      }

      if (v13 <= 0x80)
      {
LABEL_38:
        *v4 = 1 - v13;
        v21 = v4 + 1;
        v22 = 2;
        v7 = 2;
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    if (v13 < 2)
    {
      v23 = (*v8)++ + 1;
      v7 = v23 != 127;
      v22 = 1;
      v21 = v4;
      goto LABEL_41;
    }

    if (v13 > 0x80)
    {
      v7 = 3;
      goto LABEL_36;
    }

    *v4 = 1 - v13;
    v21 = v4 + 1;
    v7 = 3;
    v22 = 2;
LABEL_41:
    v4 += v22;
    *v21 = v11;
  }

  while (v5 > 0);
  v24 = a1[144];
LABEL_44:
  a1[145] += &v4[-v24];
  a1[144] = v4;
  return 1;
}

uint64_t PackBitsEncodeChunk(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v6 = **(a1 + 1096);
    do
    {
      if (v3 >= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v3;
      }

      PackBitsEncode(a1, a2, v7);
      a2 += v7;
      v8 = v3 <= v7;
      v3 -= v7;
    }

    while (!v8);
  }

  return 1;
}

uint64_t LibJPEGReadPlugin::LibJPEGReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8, unsigned int a9)
{
  JPEGReadPlugin::JPEGReadPlugin(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  *v10 = &unk_1EF4D8D00;
  bzero(v10 + 66, 0x23C8uLL);
  return a1;
}

void LibJPEGReadPlugin::~LibJPEGReadPlugin(LibJPEGReadPlugin *this)
{
  *this = &unk_1EF4D8D00;
  _cg_jpeg_destroy_decompress(this + 528);
  if (*(this + 156))
  {
    *(this + 156) = 0;
  }

  JPEGReadPlugin::~JPEGReadPlugin(this);
}

{
  LibJPEGReadPlugin::~LibJPEGReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t LibJPEGReadPlugin::loadDataFromXPCObject(LibJPEGReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_libjpeg", &length);
    if (length == 9160)
    {
      memcpy(this + 528, data, 0x23C8uLL);
      v6 = _cg_jpeg_std_error(this + 9296);
      result = 0;
      *(this + 66) = v6;
      *(this + 71) = this + 1192;
      *(this + 67) = 0;
      *(this + 1162) = errorExit;
      *(this + 1164) = outputMessage;
      *(this + 150) = 0;
      *(this + 152) = fill_input_buffer;
      *(this + 151) = init_source;
      *(this + 149) = this + 1288;
      *(this + 154) = _cg_jpeg_resync_to_restart;
      *(this + 153) = skip_input_data;
      *(this + 155) = term_source;
      *(this + 156) = *(this + 3);
      *(this + 158) = *(this + 26);
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

void errorExit(uint64_t *a1)
{
  v1 = *a1;
  (*(*a1 + 16))(a1);
  siglongjmp((v1 + 176), 1);
}

const char *outputMessage(const char *result)
{
  v1 = result;
  v5 = *MEMORY[0x1E69E9840];
  v2 = *result;
  if (*(*result + 40) == 120)
  {
    if (outputMessage(jpeg_common_struct *)::didWarn_JWRN_HIT_MARKER)
    {
      return result;
    }

    outputMessage(jpeg_common_struct *)::didWarn_JWRN_HIT_MARKER = 1;
  }

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  (*(v2 + 24))(result, v3);
  result = LogError(0, 0, "libJPEG", " %s\n", v3);
  if (*(*v1 + 40) == 116)
  {
    *(*v1 + 44) = 1;
  }

  return result;
}

uint64_t fill_input_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v14 = v7;
  v28 = *MEMORY[0x1E69E9840];
  v15 = v7[5];
  if (!v15 || !*(v15 + 56))
  {
    v16 = *v7;
    *(v16 + 40) = 43;
    (*v16)(v7, v13);
    if (!*(v15 + 56))
    {
      v17 = *v14;
      *(v17 + 40) = 43;
      (*v17)(v14);
    }
  }

  v18 = *(v15 + 88);
  if (!v18)
  {
LABEL_11:
    bzero(__dst, 0x1F42uLL);
    v21 = *(v15 + 8);
    if (v21)
    {
      memcpy(__dst, *v15, *(v15 + 8));
    }

    v22 = (v15 + 96);
    Bytes = IIOImageReadSession::getBytes(*(v15 + 56), (v15 + 96), 4000);
    v24 = *(v15 + 96);
    if (!*(v15 + 96) || (v24 != 238 ? (v25 = v24 == 2) : (v25 = 1), v25))
    {
      if (*(v15 + 97) == 216 && *(v15 + 98) == 255 && *(v15 + 99) == 219 && IIOImageReadSession::seek(*(v15 + 56), 0, 1) == *(v15 + 72) + Bytes)
      {
        *v22 = -1;
      }
    }

    if (Bytes > 0xF9F)
    {
      if (Bytes == 4000)
      {
        result = 1;
        v26 = 4000;
        goto LABEL_32;
      }

      if ((Bytes & 0x8000000000000000) != 0)
      {
        return 0;
      }
    }

    else if (*(v15 + 64) & 1) != 0 || (IIOImageReadSession::isFinal(*(v15 + 56)))
    {
      *&v22[Bytes] = -9729;
      v26 = Bytes + 2;
      result = 1;
LABEL_32:
      *v15 = v22;
      *(v15 + 8) = v26;
      return result;
    }

    memcpy(&__dst[v21], (v15 + 96), Bytes);
    v26 = Bytes + v21;
    memcpy((v15 + 96), __dst, v26);
    result = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = v18 >= 0xFA0 ? 4000 : v18;
    result = IIOImageReadSession::skipBytes(*(v15 + 56), v19, v8, v9, v10, v11, v12);
    if (!result)
    {
      return result;
    }

    v18 = *(v15 + 88) - result;
    *(v15 + 88) = v18;
    if (!v18)
    {
      goto LABEL_11;
    }
  }
}

const char *init_source(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v2 = v1[7]) != 0)
  {
    result = IIOImageReadSession::seek(v2, v1[9], 0);
    v1[11] = 0;
    *v1 = v1 + 12;
    v1[1] = 0;
  }

  else
  {

    return LogError("init_source", 259, "*** ImageIO - libJPEG nil-'source'cinfo->src'\n");
  }

  return result;
}

uint64_t skip_input_data(uint64_t result, unint64_t a2)
{
  v2 = *(result + 40);
  v3 = v2[1];
  v4 = v3 - a2;
  if (v3 <= a2)
  {
    v4 = 0;
    v5 = a2 - v3;
  }

  else
  {
    v5 = 0;
    *v2 += a2;
  }

  v2[1] = v4;
  v2[11] += v5;
  return result;
}

uint64_t LibJPEGReadPlugin::saveDataToXPCObject(LibJPEGReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_libjpeg", this + 528, 0x23C8uLL);
  }

  return v4;
}

CGMutableImageMetadataRef LibJPEGReadPlugin::readAPP13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 408);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = *(v2 + 4);
    if (*(v2 + 8) == 237 && v4 >= 0xF)
    {
      v6 = v2[3];
      if (*v6 == 0x6F68736F746F6850 && *(v6 + 4) == 8304)
      {
        break;
      }
    }

    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  Mutable = CGImageMetadataCreateMutable();
  ReadPhotoshopImageResource(Mutable, v6 + 14, v4 - 14);
  if (Mutable)
  {
    TagWithPath = CGImageMetadataGetTagWithPath(Mutable, 0, @"iio:PSIRClippingPath");
    if (TagWithPath)
    {
      v11 = TagWithPath;
      Value = CGImageMetadataTagGetValue(TagWithPath);
      if (Value)
      {
        v13 = *(a1 + 16);
        v14 = CGPathRetain(Value);
        IIOImagePlus::setClipPath(v13, v14);
      }

      CGImageMetadataRemoveTag(Mutable, v11);
    }
  }

  return Mutable;
}

CGMutableImageMetadataRef LibJPEGReadPlugin::readExifData(int a1, uint64_t a2, IIODictionary *a3)
{
  v4 = *(a2 + 408);
  if (v4)
  {
    MetadataFromDatabuffer = 0;
    do
    {
      if (*(v4 + 8) == 225 && *(v4 + 4) >= 0xBu)
      {
        v7 = v4[3];
        if (*v7 == 69 && v7[1] == 120 && v7[2] == 105 && v7[3] == 102 && !v7[4] && !v7[5])
        {
          v8 = IIOMetadataFlagsFromImageSourceOptions(a3);
          MetadataFromDatabuffer = CreateMetadataFromDatabuffer((v4[3] + 6), (*(v4 + 4) - 6), v8);
        }
      }

      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    MetadataFromDatabuffer = 0;
  }

  if (*(a2 + 376))
  {
    TopLevelTag = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormat");
    if (TopLevelTag)
    {
      v10 = TopLevelTag;
      Value = CGImageMetadataTagGetValue(TopLevelTag);
      IntValue = CFStringGetIntValue(Value);
      v13 = *(*(a2 + 40) + 56);
      v22 = 0;
      IIOImageReadSession::getBytesAtOffset(v13, &v22, IntValue, 2);
      if (v22 != 55551 && v22 != 65496)
      {
        v14 = (IntValue + 18);
        IIOImageReadSession::getBytesAtOffset(v13, &v22, v14, 2);
        if (v22 == 65496 || v22 == 55551)
        {
          v15 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", v14);
          if (v15)
          {
            v16 = v15;
            CGImageMetadataTagSetValue(v10, v15);
            CFRelease(v16);
          }
        }

        else
        {
          v17 = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormat");
          CGImageMetadataRemoveTag(MetadataFromDatabuffer, v17);
          v18 = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatLength");
          CGImageMetadataRemoveTag(MetadataFromDatabuffer, v18);
          v19 = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatWidth");
          CGImageMetadataRemoveTag(MetadataFromDatabuffer, v19);
          v20 = CGImageMetadataGetTopLevelTag(MetadataFromDatabuffer, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatHeight");
          CGImageMetadataRemoveTag(MetadataFromDatabuffer, v20);
        }
      }
    }
  }

  return MetadataFromDatabuffer;
}

uint64_t LibJPEGReadPlugin::startDecompressing(uint64_t a1, int a2)
{
  _cg_jpeg_CreateDecompress((a1 + 528), 90, 664);
  *(a1 + 568) = a1 + 1192;
  result = _cg_jpeg_read_header(a1 + 528, 1);
  v5 = *(a1 + 332);
  if (*(a1 + 332))
  {
    *(a1 + 624) = 1;
    v6 = 8;
    *(a1 + 600) = 8;
    v7 = v5 - 2;
    if (v7 <= 6)
    {
      v6 = dword_18620A7F0[v7];
    }

    *(a1 + 596) = v6;
  }

  *(a1 + 592) = a2;
  if (*(a1 + 564) >= 202)
  {

    return _cg_jpeg_start_decompress(a1 + 528);
  }

  return result;
}

CGImageMetadata *LibJPEGReadPlugin::readXMPData(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  if (!theData)
  {
    v7 = *(a2 + 408);
    v36 = 0u;
    v37 = 0u;
    if (!v7)
    {
      return 0;
    }

    v8 = 0;
    v9 = 0;
    v33 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0x2E65626F64612E73;
    while (1)
    {
      if (*(v7 + 8) == 225)
      {
        v14 = *(v7 + 4);
        if (v14 >= 0x1E)
        {
          v15 = v7[3];
          if (*v15 == 0x6E2F2F3A70747468 && *(v15 + 8) == v13 && *(v15 + 16) == 0x2F7061782F6D6F63)
          {
            v21 = *(v15 + 29);
            v20 = (v15 + 29);
            v22 = v14 - 29;
            if (v21 == 60)
            {
              v9 = v22;
              v8 = v20;
            }

            goto LABEL_37;
          }

          v18 = v14 - 75;
          if (v14 >= 0x4B)
          {
            v19 = v13;
            if (!strcmp(v7[3], "http://ns.adobe.com/xmp/extension/"))
            {
              break;
            }
          }
        }
      }

LABEL_37:
      v7 = *v7;
      if (!v7)
      {
        if (v12 && v11 && v10 == v11 && v8 && v9)
        {
          MetadataFromExtendedXMPData = CreateMetadataFromExtendedXMPData(v8, v9, v12, v10);
          goto LABEL_59;
        }

        if (v8 && v9)
        {
          result = CreateMetadataFromXMPBuffer(v8, v9);
          MetadataFromExtendedXMPData = result;
          if (!v12)
          {
            return result;
          }
        }

        else
        {
          MetadataFromExtendedXMPData = 0;
          result = 0;
          if (!v12)
          {
            return result;
          }
        }

LABEL_59:
        free(v12);
        return MetadataFromExtendedXMPData;
      }
    }

    v30 = v10;
    v31 = v12;
    v34 = *(v15 + 35);
    v35 = *(v15 + 51);
    v23 = bswap32(*(v15 + 67));
    v24 = *(v15 + 71);
    if (v33)
    {
      v25 = v11;
    }

    else
    {
      v36 = *(v15 + 35);
      v37 = *(v15 + 51);
      if (IIOImageReadSession::getSize(*(a1 + 24)) <= v23)
      {
        _cg_jpeg_mem_term("readXMPData", 1316, "*** ERROR bad extendedLength: %d\n");
        v33 = 0;
        goto LABEL_44;
      }

      v25 = v23;
      v11 = v23;
      v31 = malloc_type_calloc(1uLL, v23, 0x100004077774924uLL);
      if (!v31)
      {
        v12 = 0;
        v33 = 0;
        goto LABEL_45;
      }
    }

    if (IIOImageReadSession::getSize(*(a1 + 24)) <= v25)
    {
      v27 = 1322;
      v28 = "*** ERROR bad extendedLength: %d\n";
    }

    else
    {
      v26 = bswap32(v24);
      if (v26 < v11)
      {
        v12 = v31;
        if (!__CFADD__(v18, v26))
        {
          v10 = v30;
          if (!(v36 ^ v34 | *(&v36 + 1) ^ *(&v34 + 1) | v37 ^ v35 | *(&v37 + 1) ^ *(&v35 + 1)))
          {
            v13 = v19;
            if (v23 == v11 && v18 + v26 <= v11)
            {
              memcpy(&v31[v26], (v7[3] + 75), v18);
              v13 = v19;
              v10 = v30 + v18;
              v33 = 1;
            }

            else
            {
              v33 = 1;
              v23 = v11;
            }

            goto LABEL_36;
          }

          v33 = 1;
          v23 = v11;
LABEL_34:
          v13 = v19;
LABEL_36:
          v11 = v23;
          goto LABEL_37;
        }

        v33 = 1;
        v23 = v11;
LABEL_45:
        v10 = v30;
        goto LABEL_34;
      }

      v27 = 1323;
      v28 = "*** ERROR bad chunkOffset: %d\n";
    }

    _cg_jpeg_mem_term("readXMPData", v27, v28);
    v33 = 1;
    v23 = v11;
LABEL_44:
    v12 = v31;
    goto LABEL_45;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return CreateMetadataFromXMPSidecarData(BytePtr, Length);
}

void LibJPEGReadPlugin::readQualityPropertiesFromJPEG(uint64_t a1, uint64_t a2, IIODictionary *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = 0;
      v8 = *MEMORY[0x1E695E738];
      do
      {
        CFArraySetValueAtIndex(v6, v7++, v8);
      }

      while (v7 != 4);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *bytes = 0u;
      v17 = 0u;
      if (*(a2 + 56) >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *(a2 + 304) + 96 * v9;
          v11 = *(v10 + 16);
          if (v11 <= 3)
          {
            v12 = *(a2 + 200 + 8 * v11);
            if (v12)
            {
              if (CFArrayGetValueAtIndex(v6, *(v10 + 16)) == v8)
              {
                for (i = 0; i != 128; i += 2)
                {
                  *&bytes[i] = *(v12 + i);
                }

                v14 = CFDataCreate(v4, bytes, 128);
                if (v14)
                {
                  CFArraySetValueAtIndex(v6, v11, v14);
                  CFRelease(v14);
                }
              }
            }
          }

          ++v9;
        }

        while (v9 < *(a2 + 56));
      }

      IIODictionary::setObjectForKeyGroup(a3, v6, @"Quantization", @"{JPEG}");
      CFRelease(v6);
    }

    if (*(a2 + 56) == 3)
    {
      IIONumber::IIONumber(bytes, *(*(a2 + 304) + 8));
      IIODictionary::setObjectForKeyGroup(a3, bytes, @"ChromaSubsamplingX", @"{JPEG}");
      IIONumber::~IIONumber(bytes);
      IIONumber::IIONumber(bytes, *(*(a2 + 304) + 12));
      IIODictionary::setObjectForKeyGroup(a3, bytes, @"ChromaSubsamplingY", @"{JPEG}");
      IIONumber::~IIONumber(bytes);
    }
  }
}

void sub_1860232EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t LibJPEGReadPlugin::validateJPEG(IIOImageReadSession **this)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  IIOScanner::IIOScanner(v3, this[3]);
  IIOScanner::setEndianness(v3, 0);
  IIOScanner::seek(v3, 2uLL);
  while (IIOScanner::getVal16(v3) != 65498)
  {
    Val16 = IIOScanner::getVal16(v3);
    IIOScanner::skip(v3, Val16 - 2);
  }

  IIOScanner::~IIOScanner(v3);
  return 0;
}

void sub_1860233A4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186023388);
}

void readJFIFData(uint64_t a1, IIODictionary *a2)
{
  if (a1 && a2 && *(a1 + 376))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    IIOArray::IIOArray(&v11);
    IIONumber::IIONumber(v9, *(a1 + 380));
    IIOArray::addObject(&v11, v10);
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(a1 + 381) >> 4);
    IIOArray::addObject(&v11, v10);
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(a1 + 381) & 0xF);
    IIOArray::addObject(&v11, v10);
    IIONumber::~IIONumber(v9);
    IIODictionary::setObjectForKeyGroup(a2, v12, @"JFIFVersion", @"{JFIF}");
    IIOArray::~IIOArray(&v11);
    IIONumber::IIONumber(&v11, *(a1 + 384));
    IIODictionary::setObjectForKeyGroup(a2, &v11, @"XDensity", @"{JFIF}");
    IIONumber::~IIONumber(&v11);
    IIONumber::IIONumber(&v11, *(a1 + 386));
    IIODictionary::setObjectForKeyGroup(a2, &v11, @"YDensity", @"{JFIF}");
    IIONumber::~IIONumber(&v11);
    IIONumber::IIONumber(&v11, *(a1 + 382));
    IIODictionary::setObjectForKeyGroup(a2, &v11, @"DensityUnit", @"{JFIF}");
    IIONumber::~IIONumber(&v11);
    v5 = *(a1 + 382);
    if (v5 == 2)
    {
      LOWORD(v4) = *(a1 + 384);
      *&v8 = v4 * 2.54;
      v6 = *&v8;
      LOWORD(v8) = *(a1 + 386);
      v7 = v8 * 2.54;
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
      if (v5 == 1)
      {
        LOWORD(v4) = *(a1 + 384);
        v6 = v4;
        LOWORD(v4) = *(a1 + 386);
        v7 = v4;
      }
    }

    if (ValidDPI(v6) && ValidDPI(v7))
    {
      IIONumber::IIONumber(&v11, v6);
      IIODictionary::setObjectForKey(a2, &v11, @"DPIWidth");
      IIONumber::~IIONumber(&v11);
      IIONumber::IIONumber(&v11, v7);
      IIODictionary::setObjectForKey(a2, &v11, @"DPIHeight");
      IIONumber::~IIONumber(&v11);
    }
  }
}

void sub_186023618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

CGMutableImageMetadataRef copyRenderingInfo(uint64_t a1)
{
  v1 = *(a1 + 408);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (*(v1 + 8) == 225)
    {
      v3 = *(v1 + 4);
      if (v3 >= 0xB)
      {
        v4 = v1[3];
        if (*v4 == 69 && *(v4 + 1) == 120 && *(v4 + 2) == 105 && *(v4 + 3) == 102 && !*(v4 + 4) && !*(v4 + 5))
        {
          result = CreateMetadataFromDatabuffer((v4 + 6), v3 - 6, 3);
        }
      }
    }

    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t LibJPEGReadPlugin::copyImageBlockSetImp(uint64_t a1, const void *a2, const void *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  *(a1 + 371) = 0;
  if (a4)
  {
    return 0;
  }

  if (*(a1 + 472) == 2)
  {
    return LibJPEGReadPlugin::copyImageBlockSetProgressive(a1, a2, a3, a5, a6, a7, a8, a9, a10);
  }

  return LibJPEGReadPlugin::copyImageBlockSetStandard(a1, a2, a3, 0, a5, a6, a7, a8, a9, a10);
}

void sub_186023760(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186023754);
}

uint64_t LibJPEGReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
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
    if (v15 <= 0x7F)
    {
      v16 = *(v12 + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v16 = __maskrune(v15, 0x40000uLL);
      v10 = *(this + 55);
    }

    if (v16)
    {
      v17 = (v10 << 8 >> 24);
    }

    else
    {
      v17 = 46;
    }

    v18 = v10 >> 8;
    if (v18 <= 0x7F)
    {
      v19 = *(v12 + 4 * v18 + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune(v18, 0x40000uLL);
      v10 = *(this + 55);
    }

    if (v19)
    {
      v20 = (v10 >> 8);
    }

    else
    {
      v20 = 46;
    }

    if (v10 <= 0x7F)
    {
      if ((*(v12 + 4 * v10 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v10, 0x40000uLL))
    {
LABEL_22:
      v21 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v14, v17, v20, v21, iioTypeStr[a3], "virtual OSStatus LibJPEGReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v21 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  if (a3 != 3)
  {
    return 4294967246;
  }

  v22 = *(a2 + 1);
  v23 = *(a2 + 2);
  v24 = *(a2 + 3);
  v25 = *(a2 + 4);
  v26 = *(a2 + 5);
  v27 = *(a2 + 6);
  v28 = *(a2 + 7);
  v29 = *(a2 + 8);
  XmpData = _APP1XMP::getXmpData(a2);
  v31 = (*(*this + 208))(this, v22, v23, XmpData, v24, v25, v26, v27, v28, v29);
  if (!a6)
  {
    return 4294967246;
  }

  v32 = v31;
  result = 0;
  *a6 = v32;
  return result;
}

const char *___ZL9GetCIProcv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  strcpy(__path, "/System/Library/Frameworks/QuartzCore.framework/QuartzCore");
  v0 = dlopen(__path, 257);
  if (v0)
  {
    result = dlsym(v0, "CICreateCGImageRefFromYCbCrData");
    _MergedGlobals = result;
  }

  else
  {
    v2 = dlerror();
    return LogError("GetCIProc_block_invoke", 573, "cannot access 'QuartzCore.framework' - %s\n", v2);
  }

  return result;
}

ssize_t OUTLINED_FUNCTION_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, IIOImageReadSession *a54)
{

  return IIOImageReadSession::getBytes(a54, v54, 1024);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sigsetjmp((v0 + 9472), 0);
}

uint64_t OUTLINED_FUNCTION_15()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 176);

  return _ImageIO_Free(v2, v3);
}

const void *OUTLINED_FUNCTION_16(uint64_t a1, void *a2, cache_cost_t a3, unint64_t a4, int a5)
{
  v11 = v10;
  v12 = v7;
  v13 = v9;
  v14 = v8;

  return IIOReadPlugin::createImageBlock(v5, a2, a3, *&v11, a4, a5);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{

  return CGImageSetProperty();
}

ssize_t OUTLINED_FUNCTION_23(int a1, int a2, off_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);

  return IIOImageReadSession::getBytesAtOffset(v50, va, a3, 2);
}

double OUTLINED_FUNCTION_25(double a1, double a2, double a3, double a4)
{
  v9 = v8;
  v10 = v5;
  v11 = v7;
  v12 = v6;

  *&result = CGRectUnion(*&a1, *&v9);
  return result;
}

unint64_t *unpack_etc2_block(unint64_t *result, uint64_t a2)
{
  v14 = *result;
  v2 = v14;
  *a2 = 0;
  v3 = v2 >> 25;
  *(a2 + 11) = (v2 & 0x2000000) != 0;
  *(a2 + 10) = BYTE3(v2) & 1;
  *(a2 + 8) = v2 >> 29;
  *(a2 + 9) = (v2 >> 26) & 7;
  if (((v2 >> 25) & 1) == 0)
  {
    *(a2 + 4) = (16 * v2) & 0xF00 | BYTE1(v2) & 0xF0 | (v2 >> 20) & 0xF;
    *(a2 + 6) = (v2 >> 4) & 0xF0 | ((v2 & 0xF) << 8) | BYTE2(v2) & 0xF;
LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  *(a2 + 4) = (v2 << 7) & 0x7C00 | (v2 >> 6) & 0xFFE0 | (v2 >> 19) & 0x1F;
  *(a2 + 6) = (v2 << 6) & 0x1C0 | (v2 >> 5) & 0x38 | BYTE2(v2) & 7;
  if ((v2 & 4) != 0)
  {
    v4 = -8;
  }

  else
  {
    v4 = 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    v5 = -8;
  }

  else
  {
    v5 = 0;
  }

  if ((v2 >> 3) + (v2 & 7) + v4 > 0x1F)
  {
    v6 = 0;
    *a2 = 1;
    HIDWORD(v7) = v2 & 3 | (4 * ((v2 >> 3) & 3));
    LODWORD(v7) = v2 << 16;
    *(a2 + 4) = v7 >> 24;
    *(a2 + 6) = (v2 >> 12) & 0xFF0 | (v2 >> 28);
    *(a2 + 8) = v3 & 6 | BYTE3(v2) & 1;
    goto LABEL_12;
  }

  if (((v2 >> 8) & 4) != 0)
  {
    v10 = -8;
  }

  else
  {
    v10 = 0;
  }

  if ((v2 >> 11) + ((v2 >> 8) & 7) + v10 <= 0x1F)
  {
    if (((v2 >> 19) & 0x1F) + (WORD1(v2) & 7) + v5 > 0x1F)
    {
      *a2 = 3;
      *(a2 + 4) = (v2 >> 1) & 0x3F;
      *(a2 + 5) = (v2 << 6) & 0x40 | (v2 >> 9) & 0x3F;
      *(a2 + 6) = BYTE2(v2) & 0x18 | ((v2 & 0x80000000) != 0) | (v2 >> 3) & 0x20 | (v2 >> 15) & 6;
      *(a2 + 7) = v3 & 0x3E | BYTE3(v2) & 1;
      *(a2 + 8) = (v2 >> 33) & 0x7F;
      *(a2 + 9) = (v2 >> 27) & 0x20 | (v2 >> 43) & 0x1F;
      *(a2 + 10) = (v2 >> 37) & 0x38 | (v2 >> 53) & 7;
      *(a2 + 11) = (v2 >> 46) & 0x7C | (v2 >> 62);
      *(a2 + 12) = HIBYTE(v2) & 0x3F;
      return result;
    }

    goto LABEL_11;
  }

  *a2 = 2;
  v11 = (32 * v2) & 0xF00 | (16 * ((v2 >> 12) & 1 | (2 * (v2 & 7)))) | (v2 >> 8) & 8 | (v2 >> 7) & 6 | (v2 >> 23) & 1;
  *(a2 + 4) = (32 * v2) & 0xF00 | (16 * ((v2 >> 12) & 1 | (2 * (v2 & 7)))) | (v2 >> 8) & 8 | (v2 >> 7) & 6 | (v2 >> 23) & 1;
  v12 = (v2 >> 11) & 0xF00 | (16 * ((v2 >> 15) & 0xE | (v2 >> 31))) | (v2 >> 27) & 0xF;
  *(a2 + 6) = (v2 >> 11) & 0xF00 | (16 * ((v2 >> 15) & 0xE | (v2 >> 31))) | (v2 >> 27) & 0xF;
  v13 = BYTE3(v2) & 4 | (v2 >> 23) & 2;
  *(a2 + 8) = v13;
  if (v11 >= v12)
  {
    v6 = 0;
    *(a2 + 8) = v13 | 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_12:
  for (i = 0; i != 16; ++i)
  {
    v9 = ((&v14 - (i >> 3))[7] >> (i & 7)) & 1 | (2 * (((&v14 - (i >> 3))[5] >> (i & 7)) & 1));
    if (v6)
    {
      LOBYTE(v9) = etc_selector_unscramble[v9];
    }

    *(a2 + 14 + i) = v9;
  }

  return result;
}

void decode_etc2(uint64_t result, int32x4_t *a2, uint64_t a3, uint64_t a4, int32x4_t a5, int32x4_t a6, double a7, __n128 a8)
{
  v8 = a2;
  v112 = *MEMORY[0x1E69E9840];
  v10 = *result;
  if (*result > 1)
  {
    if (v10 == 2)
    {
      v38 = 0;
      a5.i32[0] = *(result + 4);
      a6.i32[0] = a5.i32[0];
      a6.i32[1] = *(result + 6);
      a5.i32[1] = a6.i32[1];
      v39 = &etc_th_distances[*(result + 8)];
      v40.i64[0] = 0xF0000000FLL;
      v40.i64[1] = 0xF0000000FLL;
      v41 = vmovn_s32(vandq_s8(vshlq_u32(vzip1q_s32(a5, a5), xmmword_18620A810), v40));
      *a6.i8 = vmul_s32(vand_s8(*a6.i8, 0xF0000000FLL), 0x1100000011);
      v42 = vzip1q_s32(a6, a6);
      v43 = vld1q_dup_f32(v39);
      v49 = vsubq_s32(vmull_u16(v41, 0x11001100110011), v43);
      v44 = vaddq_s32(v42, v43);
      v45 = vsubq_s32(v42, v43);
      v46 = vmlal_u16(v43, v41, 0x11001100110011);
      v47 = vtrn2q_s32(v46, vtrn1q_s32(v46, v49));
      v48 = vtrn2q_s32(vrev64q_s32(v46), v49);
      v49.i32[3] = 0;
      v50 = vmaxq_s32(v47, 0);
      v51.i64[0] = 0xFF000000FFLL;
      v51.i64[1] = 0xFF000000FFLL;
      v110 = *&vorrq_s8(vorrq_s8(vshlq_u32(vminq_s32(vmaxq_s32(v48, 0), v51), xmmword_18620A830), vshlq_n_s32(vminq_s32(vmaxq_s32(vtrn2q_s32(vrev64q_s32(v44), v45), 0), v51), 0x18uLL)), vshlq_u32(vminq_s32(v50, v51), xmmword_18620A820)) | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL);
      v52 = result + 14;
      v53 = vdupq_n_s32(0x3B808081u);
      do
      {
        v54 = 0;
        v55 = v8;
        do
        {
          *v49.i8 = vshl_u32(vdup_n_s32(*(&v110 + *(v52 + v54))), 0xFFFFFFF0FFFFFFF8);
          v49.i32[2] = *(&v110 + *(v52 + v54));
          v56 = vshrq_n_u32(v49, 0x18uLL);
          v49.i32[3] = v49.i32[2];
          v57 = vandq_s8(v49, v51);
          v57.i32[2] = v56.i32[2];
          v49 = vmulq_f32(vcvtq_f32_u32(v57), v53);
          *v55++ = v49;
          v54 += 4;
        }

        while (v54 != 16);
        ++v38;
        ++v52;
        v8 += 4;
      }

      while (v38 != 4);
      return;
    }

    if (v10 == 3)
    {
      v75 = 0;
      v76 = (4 * *(result + 4)) | (*(result + 4) >> 4);
      v77 = (2 * *(result + 5)) | (*(result + 5) >> 6);
      v78 = (4 * *(result + 6)) | (*(result + 6) >> 4);
      v79 = ((4 * *(result + 10)) | (*(result + 10) >> 4)) - v76;
      v80 = ((2 * *(result + 11)) | (*(result + 11) >> 6)) - v77;
      v81 = ((4 * *(result + 12)) | (*(result + 12) >> 4)) - v78;
      v82 = vmulq_s32(vdupq_n_s32(((4 * *(result + 7)) | (*(result + 7) >> 4)) - v76), xmmword_186205980);
      v83 = vmulq_s32(vdupq_n_s32(((2 * *(result + 8)) | (*(result + 8) >> 6)) - v77), xmmword_186205980);
      v84 = vmulq_s32(vdupq_n_s32(((4 * *(result + 9)) | (*(result + 9) >> 4)) - v78), xmmword_186205980);
      v85 = (4 * v78) | 2;
      v86 = (4 * v77) | 2;
      v87 = vdupq_n_s32(0x437F0000u);
      __asm { FMOV            V19.4S, #1.0 }

      v93 = (4 * v76) | 2;
      do
      {
        i32 = a2[v75].i32;
        v95 = vmaxnmq_f32(vdivq_f32(vcvtq_f32_s32(vshrq_n_s32(vaddq_s32(vdupq_n_s32(v93), v82), 2uLL)), v87), 0);
        v96 = vmaxnmq_f32(vdivq_f32(vcvtq_f32_s32(vshrq_n_s32(vaddq_s32(vdupq_n_s32(v86), v83), 2uLL)), v87), 0);
        v97 = vminnmq_f32(vmaxnmq_f32(vdivq_f32(vcvtq_f32_s32(vshrq_n_s32(vaddq_s32(vdupq_n_s32(v85), v84), 2uLL)), v87), 0), _Q19);
        v98 = vbslq_s8(vcgtq_f32(_Q19, v96), v96, _Q19);
        v99 = vbslq_s8(vcgtq_f32(_Q19, v95), v95, _Q19);
        vst4q_f32(i32, *(&_Q19 - 3));
        v75 += 4;
        v85 += v81;
        v86 += v80;
        v93 += v79;
      }

      while (v75 != 16);
      return;
    }

    goto LABEL_52;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
      v12 = etc_th_distances[*(result + 8)];
      v13 = *(result + 4);
      v14 = (v13 >> 4 << 16) & 0xFF0FFFFF | (v13 >> 4 << 20) | (((v13 >> 8) & 0xF) << 8) & 0xFFFF0FFF | (((v13 >> 8) & 0xF) << 12) | ((v13 & 0xF) << 24) | (v13 << 28);
      v15 = *(result + 6);
      v16 = (v15 >> 8) & 0xF | (16 * ((v15 >> 8) & 0xF));
      v17 = (v15 >> 4) | (16 * (v15 >> 4));
      v18 = v15 & 0xF | (16 * (v15 & 0xF));
      v19 = (v16 + v12) & ~((v16 + v12) >> 31);
      if (v19 >= 255)
      {
        v19 = 255;
      }

      v20 = (v17 + v12) & ~((v17 + v12) >> 31);
      if (v20 >= 255)
      {
        v20 = 255;
      }

      v21 = (v20 << 16) | (v19 << 8);
      v22 = (v18 + v12) & ~((v18 + v12) >> 31);
      if (v22 >= 255)
      {
        v22 = 255;
      }

      LODWORD(v110) = v14 | 0xFF;
      DWORD1(v110) = v21 | (v22 << 24) | 0xFF;
      v23 = (v16 << 8) | (v17 << 16) | (v18 << 24) | 0xFF;
      v24 = v16 - v12;
      v25 = v17 - v12;
      v26 = v18 - v12;
      v27 = v24 & ~(v24 >> 31);
      if (v27 >= 255)
      {
        v27 = 255;
      }

      v28 = v25 & ~(v25 >> 31);
      if (v28 >= 255)
      {
        v28 = 255;
      }

      v29 = (v28 << 16) | (v27 << 8);
      v30 = v26 & ~(v26 >> 31);
      if (v30 >= 255)
      {
        v30 = 255;
      }

      DWORD2(v110) = v23;
      HIDWORD(v110) = v29 | (v30 << 24) | 0xFF;
      v31 = result + 14;
      v32.i64[0] = 0xFF000000FFLL;
      v32.i64[1] = 0xFF000000FFLL;
      v33 = vdupq_n_s32(0x3B808081u);
      do
      {
        v34 = 0;
        v35 = v8;
        do
        {
          a8.n128_u64[0] = vshl_u32(vdup_n_s32(*(&v110 + *(v31 + v34))), 0xFFFFFFF0FFFFFFF8);
          a8.n128_u32[2] = *(&v110 + *(v31 + v34));
          v36 = vshrq_n_u32(a8, 0x18uLL);
          a8.n128_u32[3] = a8.n128_u32[2];
          v37 = vandq_s8(a8, v32);
          v37.i32[2] = v36.i32[2];
          a8 = vmulq_f32(vcvtq_f32_u32(v37), v33);
          *v35++ = a8;
          v34 += 4;
        }

        while (v34 != 16);
        ++v11;
        ++v31;
        v8 += 4;
      }

      while (v11 != 4);
      return;
    }

LABEL_52:
    decode_etc2();
  }

  v110 = 0u;
  v111 = 0u;
  if (*(result + 11) == 1)
  {
    v58 = *(result + 8);
    if (v58 >= 8)
    {
      decode_etc2();
    }

    v59 = *(result + 4);
    v60 = vand_s8(vshl_u32(vdup_n_s32(v59), 0xFFFFFFF6FFFFFFFBLL), 0x1F0000001FLL);
    v61.i64[0] = 0xFF000000FFLL;
    v61.i64[1] = 0xFF000000FFLL;
    v110 = *&vorrq_s8(vorrq_s8(vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(vdupq_n_s32((8 * v60.i32[0]) | (v60.i32[0] >> 2)), etc_intensity_modifiers[v58]), 0), v61), 0x10uLL), vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(vdupq_n_s32((v59 >> 2) & 7 | (8 * (v59 & 0x1F))), etc_intensity_modifiers[v58]), 0), v61), 0x18uLL)), vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(vdupq_n_s32((8 * v60.i32[1]) | (v60.i32[1] >> 2)), etc_intensity_modifiers[v58]), 0), v61), 8uLL)) | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL);
    v62 = *(result + 9);
    if (v62 >= 8)
    {
      decode_etc2();
    }

    v63 = v59 & 0x1F;
    v64 = *(result + 6);
    if ((v64 & 4) != 0)
    {
      v65 = -8;
    }

    else
    {
      v65 = 0;
    }

    v66 = vand_s8(vshl_u32(vdup_n_s32(v64), 0xFFFFFFFAFFFFFFFDLL), 0x700000007);
    v67 = vadd_s32(vorr_s8((*&vcgt_u32(v66, 0x300000003) & 0xFFFFFFF8FFFFFFF8), v66), v60);
    v68 = (v65 & 0xFFFFFFF8 | v64 & 7) + v63;
    if ((v67.i32[0] | v68 | v67.i32[1]) >= 0x20)
    {
      v67 = vmin_s32(vmax_s32(v67, 0), 0x1F0000001FLL);
      v68 &= ~(v68 >> 31);
      if (v68 >= 31)
      {
        v68 = 31;
      }
    }

    v69 = (8 * v67.i32[0]) | (v67.i32[0] >> 2);
    v73 = etc_intensity_modifiers[v62];
    v70 = vaddq_s32(v73, vdupq_n_s32((8 * v67.i32[1]) | (v67.i32[1] >> 2)));
    v71 = vaddq_s32(v73, vdupq_n_s32(v69));
    v72 = vaddq_s32(v73, vdupq_n_s32((8 * v68) | (v68 >> 2)));
    v73.i32[3] = 0;
    v74.i64[0] = 0xFF000000FFLL;
    v74.i64[1] = 0xFF000000FFLL;
    v111 = *&vorrq_s8(vorrq_s8(vshlq_n_s32(vminq_s32(vmaxq_s32(v71, 0), v74), 0x10uLL), vshlq_n_s32(vminq_s32(vmaxq_s32(v72, 0), v74), 0x18uLL)), vshlq_n_s32(vminq_s32(vmaxq_s32(v70, 0), v74), 8uLL)) | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL);
  }

  else
  {
    get_abs_subblock_palette(*(result + 4), *(result + 8), &v110);
    get_abs_subblock_palette(*(result + 6), *(result + 9), &v111);
  }

  v100 = 0;
  v101 = 14;
  v102.i64[0] = 0xFF000000FFLL;
  v102.i64[1] = 0xFF000000FFLL;
  v103 = vdupq_n_s32(0x3B808081u);
  do
  {
    v104 = 0;
    v105 = v101;
    do
    {
      if (*result)
      {
        decode_etc2();
      }

      if (*(result + 10))
      {
        v106 = v100;
      }

      else
      {
        v106 = v104;
      }

      v107 = *(&v110 + 4 * ((v106 & 0xFFFFFFFE) != 0) + *(result + v105));
      *v73.i8 = vshl_u32(vdup_n_s32(v107), 0xFFFFFFF0FFFFFFF8);
      v73.i32[2] = v107;
      v108 = vshrq_n_u32(v73, 0x18uLL);
      v73.i32[3] = v107;
      v109 = vandq_s8(v73, v102);
      v109.i32[2] = v108.i32[2];
      v73 = vmulq_f32(vcvtq_f32_u32(v109), v103);
      v8[v104++] = v73;
      v105 += 4;
    }

    while (v104 != 4);
    ++v100;
    ++v101;
    v8 += 4;
  }

  while (v100 != 4);
}

uint64_t nv::decompress_eac(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (a3 >= 4)
  {
    nv::decompress_eac();
  }

  v13 = 0;
  v14[0] = 0;
  *(v14 + 7) = 0;
  result = unpack_eac_block(a1, &v13);
  v6 = 0;
  v7 = 0;
  v8 = (8 * v13) | 4;
  if (BYTE1(v13))
  {
    v9 = 8 * BYTE1(v13);
  }

  else
  {
    v9 = 1;
  }

  v10 = &eac_intensity_modifiers + 32 * BYTE2(v13);
  do
  {
    v11 = v8 + v9 * *&v10[4 * *(&v13 + (v7 & 0xC | (v6 >> 2)) + 3)];
    v12 = v11 & ~(v11 >> 31);
    if (v12 >= 2047)
    {
      v12 = 2047;
    }

    *(a2 + 4 * a3 + 4 * v7) = ((32 * v12) | (v12 >> 6)) / 65535.0;
    v7 += 4;
    ++v6;
  }

  while (v7 != 64);
  return result;
}

uint64_t unpack_eac_block(uint64_t result, _BYTE *a2)
{
  *a2 = *result;
  a2[2] = *(result + 1) & 0xF;
  a2[1] = *result >> 12;
  v2 = __ROR8__(*result, 56) & 0xFF000000FFLL | (BYTE2(*result) << 40) | (*result >> 8) & 0xFF000000 | (*result >> 24) & 0xFF0000 | (*result >> 40) & 0xFF00;
  v3 = a2 + 3;
  for (i = 45; i != -3; i -= 3)
  {
    *v3++ = (v2 >> i) & 7;
  }

  return result;
}

uint64_t nv::decompress_etc_eac(uint64_t a1, int32x4_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  unpack_etc2_block((a1 + 8), v20);
  decode_etc2(v20, a2, v4, v5, v6, v7, v8, v9);
  v18 = 0;
  v19[0] = 0;
  *(v19 + 7) = 0;
  result = unpack_eac_block(a1, &v18);
  v11 = 0;
  v12 = 0;
  v13 = v18;
  v14 = BYTE1(v18);
  v15 = &eac_intensity_modifiers + 32 * BYTE2(v18);
  do
  {
    v16 = v13 + *&v15[4 * *(&v18 + ((v12 * 4) & 0xC | (v11 >> 2)) + 3)] * v14;
    v17 = v16 & ~(v16 >> 31);
    if (v17 >= 255)
    {
      v17 = 255;
    }

    *&a2[v12++].i32[3] = v17 / 255.0;
    ++v11;
  }

  while (v12 != 16);
  return result;
}

uint64_t nv::DecompressETC_EAC(int a1, unsigned int a2, unsigned int a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v67 = *MEMORY[0x1E69E9840];
  if (a1 > 16)
  {
    if ((a1 - 17) >= 3)
    {
      return v7;
    }

    v42 = (a2 + 3) >> 2;
    v9 = (a3 + 3) >> 2;
    v8 = 1;
    if (a1 == 18)
    {
      v10 = 8;
      LODWORD(v7) = 1;
      v11 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v10 = 16;
    v11 = 1;
    LODWORD(v7) = v8;
    goto LABEL_12;
  }

  switch(a1)
  {
    case 14:
LABEL_6:
      v8 = 0;
      v42 = (a2 + 3) >> 2;
      v9 = (a3 + 3) >> 2;
      v10 = 8;
      v11 = v7;
LABEL_12:
      v47 = v10;
      if (v10 > a5)
      {
        return 0;
      }

      if (!v9)
      {
        return 1;
      }

      v12 = 0;
      v13 = 0;
      v45 = a1 & 0xFFFFFFFD;
      v14 = a2;
      v15 = a3;
      v41 = v9;
      v40 = 16 * a2;
      v16 = 4 * a2;
      v46 = a1;
      while (1)
      {
        v44 = v12;
        v43 = v13;
        if (v42)
        {
          break;
        }

LABEL_43:
        v13 = v43 + 1;
        v12 = v44 + v40;
        if (v43 + 1 == v41)
        {
          return 1;
        }
      }

      v17 = 0;
      v18 = 0;
      v19 = 4 * v13;
      while (1)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = v18;
        v49 = a4;
        if (a1 == 16)
        {
          goto LABEL_19;
        }

        if (v45 != 17)
        {
          break;
        }

        nv::decompress_etc_eac(a4, &v50);
LABEL_20:
        v26 = 0;
        v27 = v12;
        v28 = &v50.i64[1];
        a1 = v46;
        do
        {
          v29 = v27;
          v30 = v28;
          v31 = v17;
          v32 = 4;
          do
          {
            if (v31 < v14 && v26 + v19 < v15)
            {
              v34 = *v30;
              v33 = v30[1];
              v35 = *(v30 - 1);
              v36 = (a6 + 4 * v29);
              if (!v11)
              {
                v35 = 0.0;
              }

              *v36 = *(v30 - 2);
              v36[1] = v35;
              if (!v7)
              {
                v34 = 0.0;
              }

              if (!v8)
              {
                v33 = 1.0;
              }

              v36[2] = v34;
              v36[3] = v33;
            }

            ++v31;
            v30 += 4;
            v29 += 4;
            --v32;
          }

          while (v32);
          ++v26;
          v28 += 8;
          v27 += v16;
        }

        while (v26 != 4);
        a4 = (v49 + v47);
        v18 = v48 + 1;
        v17 += 4;
        v12 += 16;
        if (v48 + 1 == v42)
        {
          goto LABEL_43;
        }
      }

      if (a1 != 18)
      {
        if (a1 == 15)
        {
          nv::decompress_eac(a4, &v50, 0);
          v37 = (v49 + (v47 >> 1));
          v38 = 1;
        }

        else
        {
          if (a1 != 14)
          {
            return 0;
          }

          v37 = a4;
          v38 = 0;
        }

        nv::decompress_eac(v37, &v50, v38);
        goto LABEL_20;
      }

LABEL_19:
      memset(v66, 0, sizeof(v66));
      unpack_etc2_block(a4, v66);
      decode_etc2(v66, &v50, v20, v21, v22, v23, v24, v25);
      goto LABEL_20;
    case 15:
      v8 = 0;
      v42 = (a2 + 3) >> 2;
      v9 = (a3 + 3) >> 2;
      goto LABEL_11;
    case 16:
      LODWORD(v7) = 1;
      goto LABEL_6;
  }

  return v7;
}

__n128 get_abs_subblock_palette(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a2 >= 8)
  {
    get_abs_subblock_palette();
  }

  v3 = etc_intensity_modifiers[a2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  result = (*&vorrq_s8(vorrq_s8(vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(v3, vdupq_n_s32((a1 >> 4) | (16 * (a1 >> 4)))), 0), v4), 0x10uLL), vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(v3, vdupq_n_s32((a1 >> 8) & 0xF | (16 * ((a1 >> 8) & 0xF)))), 0), v4), 8uLL)), vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(v3, vdupq_n_s32(a1 & 0xF | (16 * (a1 & 0xF)))), 0), v4), 0x18uLL)) | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL));
  *a3 = result;
  return result;
}

double PVRReadPlugin::PVRReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4D8E68;
  result = 0.0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0u;
  *(v5 + 512) = 0u;
  *(v5 + 528) = 0u;
  *(v5 + 544) = 0u;
  *(v5 + 560) = 0u;
  *(v5 + 576) = 0u;
  *(v5 + 592) = 0;
  return result;
}

void PVRReadPlugin::~PVRReadPlugin(PVRReadPlugin *this)
{
  *this = &unk_1EF4D8E68;
  v2 = *(this + 73);
  if (v2)
  {
    (**(v2 + 8))();
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  PVRReadPlugin::~PVRReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t PVRReadPlugin::loadDataFromXPCObject(PVRReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_pvr", &length);
    if (length == 136)
    {
      v6 = data;
      result = 0;
      v7 = v6[5];
      v8 = v6[6];
      v9 = *(v6 + 16);
      *(this + 36) = v6[7];
      *(this + 29) = *v6;
      v10 = v6[1];
      v11 = v6[2];
      v12 = v6[4];
      *(this + 32) = v6[3];
      *(this + 33) = v12;
      *(this + 30) = v10;
      *(this + 31) = v11;
      *(this + 74) = v9;
      *(this + 34) = v7;
      *(this + 35) = v8;
      *(this + 73) = 0;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t PVRReadPlugin::saveDataToXPCObject(PVRReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_pvr", this + 464, 0x88uLL);
  }

  return v4;
}

void PVRReadPlugin::addImageTypeIdentifier(PVRReadPlugin *this, CGImage *a2, const __CFString *a3, int a4)
{
  if (*(this + 520) == 1)
  {
    CGImageSetProperty();
    IIOString::IIOString(v6, 1263818784);
  }

  else
  {
    CGImageSetProperty();
    IIOString::IIOString(v6, *(this + 55));
  }

  CGImageSetProperty();
  IIOString::~IIOString(v6);
  IIONumber::IIONumber(v6, a4);
  CGImageSetProperty();
  IIONumber::~IIONumber(v6);
}

void sub_186024FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t PVRReadPlugin::validateV3Header(uint64_t a1, _DWORD *a2)
{
  if (a2[9] >= 0x11u)
  {
    v9 = "*** bad numberOfSurfaces count [%d]\n";
    v10 = 181;
LABEL_11:
    _cg_jpeg_mem_term("validateV3Header", v10, v9);
    return 0;
  }

  v3 = a2 + 10;
  v4 = a2[10];
  v5 = (a1 + 24);
  if (IIOImageReadSession::getSize(*(a1 + 24)) < v4)
  {
    PVRReadPlugin::validateV3Header(v3, v5);
    return 0;
  }

  if (a2[4] >= 2u)
  {
    v9 = "*** bad colorSpace [%d]\n";
    v10 = 183;
    goto LABEL_11;
  }

  if (a2[8] >= 0x11u)
  {
    v9 = "*** bad depth [%d]\n";
    v10 = 184;
    goto LABEL_11;
  }

  v7 = a2[12];
  v6 = a2 + 12;
  if (IIOImageReadSession::getSize(*v5) >= v7)
  {
    return 1;
  }

  PVRReadPlugin::validateV3Header(v6, v5);
  return 0;
}

uint64_t PVRReadPlugin::calculateOffsetToRequestedImage(PVRReadPlugin *this, uint64_t a2)
{
  v4 = *(this + 123);
  v5 = *(this + 122);
  v6 = *(this + 287);
  v7 = *(this + 56);
  if (v7)
  {
    v8 = 0;
    v9 = *(this + 127);
    v20 = *(this + 122);
    do
    {
      v10 = (v4 * v6) >> 3;
      if (v9)
      {
        v11 = 0;
        v12 = gIIODebugFlags;
        v13 = v4;
        do
        {
          v14 = v10 * v5;
          if ((*&v12 & 0x30000) != 0)
          {
            ImageIOLog("#%d  mm:%d    size: %dx%d    imgSize: %d\n", v8, v11, v13, v5, v10 * v5);
            v12 = gIIODebugFlags;
            v6 = *(this + 287);
          }

          a2 += v14;
          v13 >>= 1;
          v5 >>= 1;
          ++v11;
          v10 = (v13 * v6) >> 3;
        }

        while (v9 != v11);
        v7 = *(this + 56);
        v5 = v20;
      }

      ++v8;
    }

    while (v8 < v7);
  }

  else
  {
    v10 = (v4 * v6) >> 3;
  }

  v15 = *(this + 167);
  if (*(this + 167))
  {
    v16 = 0;
    v17 = gIIODebugFlags;
    do
    {
      v18 = v10 * v5;
      if ((*&v17 & 0x30000) != 0)
      {
        ImageIOLog("   mm:%d    size: %dx%d    imgSize: %d\n", v16, v4, v5, v10 * v5);
        v17 = gIIODebugFlags;
        v6 = *(this + 287);
        v15 = *(this + 167);
      }

      a2 += v18;
      v4 >>= 1;
      v5 >>= 1;
      v10 = (v4 * v6) >> 3;
      ++v16;
    }

    while (v16 < v15);
  }

  return a2;
}

uint64_t PVRReadPlugin::initialize(PVRReadPlugin *this, IIODictionary *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v48 = 0;
  if (*(this + 369) != 1)
  {
    goto LABEL_11;
  }

  IIOImageReadSession::getBytesAtOffset(*(this + 3), &v48, 44, 4);
  v48 = bswap32(v48);
  *(this + 167) = 0;
  v3 = IIODictionary::containsKey(*(this + 6), @"kCGImageSourceMipmapLevel");
  v4 = *(this + 6);
  if (v3)
  {
    LOWORD(Uint32ForKey) = IIODictionary::getUint32ForKey(v4, @"kCGImageSourceMipmapLevel");
  }

  else
  {
    if (!IIODictionary::containsKey(v4, @"kCGImageSourceSubsampleFactor"))
    {
      goto LABEL_8;
    }

    Uint32ForKey = IIODictionary::getUint32ForKey(*(this + 6), @"kCGImageSourceSubsampleFactor");
    if (Uint32ForKey)
    {
      Uint32ForKey = log2(Uint32ForKey);
    }
  }

  *(this + 167) = Uint32ForKey;
LABEL_8:
  if (v48 != 1347834401)
  {
    IIOImageReadSession::getBytesAtOffset(*(this + 3), &v48, 0, 4);
    v7 = v48;
    v48 = bswap32(v48);
    if (v7 != 55727696)
    {
      v20 = *(this + 55);
      if (v20 == 1261588566)
      {
        *(this + 129) = -1;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        Size = IIOImageReadSession::getSize(*(this + 3));
        if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v56, *(this + 26), 80) != 80)
        {
          v31 = "*** ERROR: PVR failed to read KTX2 header (%d bytes) expected: %d\n";
          v32 = 640;
          goto LABEL_126;
        }

        if (!IsKTX2Header(&v56))
        {
          goto LABEL_11;
        }

        if (Size <= v58)
        {
          v31 = "*** ERROR: Invalid numberOfArrayElements (%d).";
          v32 = 645;
          goto LABEL_126;
        }

        if (Size <= v59)
        {
          v31 = "*** ERROR: Invalid dfdOffset (%d).";
          v32 = 646;
          goto LABEL_126;
        }

        if (Size <= DWORD1(v59))
        {
          v31 = "*** ERROR: Invalid dfdLength (%d).";
          v32 = 647;
          goto LABEL_126;
        }

        if (Size <= DWORD2(v59))
        {
          v31 = "*** ERROR: Invalid kvdOffset (%d).";
          v32 = 648;
          goto LABEL_126;
        }

        if (Size <= HIDWORD(v59))
        {
          v31 = "*** ERROR: Invalid kvdLength (%d).";
          v32 = 649;
          goto LABEL_126;
        }

        if (v60 >= Size)
        {
          v31 = "*** ERROR: Invalid scgdOffset (%d).";
          v32 = 650;
          goto LABEL_126;
        }

        if (*(&v60 + 1) >= Size)
        {
          v31 = "*** ERROR: Invalid scgdLength (%d).";
          v32 = 651;
          goto LABEL_126;
        }

        v55 = 0;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0;
        if (CreateKtxStream(&v49, *(this + 3)))
        {
          goto LABEL_11;
        }

        if (ktxTexture2_CreateFromStream(&v49, 0, &v47))
        {
          v31 = "*** ERROR: ktxTexture2_CreateFromStream failed [%d]\n";
          v32 = 660;
          goto LABEL_126;
        }

        *(this + 73) = v47;
        v25 = HIDWORD(v56);
        v26 = DWORD2(v58);
        *(this + 148) = HIDWORD(v56);
        *(this + 521) = 1;
        if (v26 >= 0x14)
        {
          v31 = "unexpected numberOfMipmapLevels == %d\n";
          v32 = 667;
          goto LABEL_126;
        }

        if (DWORD1(v58) >= 0x14)
        {
          v31 = "unexpected numberOfMipmapLevels == %d\n";
          v32 = 668;
          goto LABEL_126;
        }

        if (HIDWORD(v57))
        {
          v31 = "unexpected pixelDepth == %d\n";
          v32 = 669;
          goto LABEL_126;
        }

        if (!DWORD2(v57))
        {
          PVRReadPlugin::initialize();
          goto LABEL_11;
        }

        v27 = DWORD1(v57);
        if (!DWORD1(v57))
        {
          PVRReadPlugin::initialize();
          goto LABEL_11;
        }

        *(this + 137) = GLFormatForVulkanFormat(v25);
        *(this + 372) = 0;
        *(this + 61) = v27;
        *(this + 62) = v27;
        *(this + 522) = 1;
        *(this + 130) = 4;
        *(this + 63) = 4 * v27;
        *(this + 64) = 2097160;
      }

      else
      {
        if (v20 != 1263556178)
        {
          goto LABEL_112;
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        *(this + 129) = -1;
        if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v49, *(this + 26), 64) != 64)
        {
          v31 = "*** ERROR: PVR failed to read KTX header (%d bytes) expected: %d\n";
          v32 = 596;
          goto LABEL_126;
        }

        *(this + 520) = 1;
        SwapKTXHeader(&v49);
        if (DWORD2(v52) >= 0x14)
        {
          v31 = "unexpected numberOfMipmapLevels == %d\n";
          v32 = 601;
          goto LABEL_126;
        }

        if (DWORD1(v52) >= 0x14)
        {
          v31 = "unexpected numberOfMipmapLevels == %d\n";
          v32 = 602;
          goto LABEL_126;
        }

        if (HIDWORD(v51))
        {
          v31 = "unexpected pixelDepth == %d\n";
          v32 = 603;
          goto LABEL_126;
        }

        if (!DWORD2(v51))
        {
          PVRReadPlugin::initialize();
          goto LABEL_11;
        }

        v21 = DWORD1(v51);
        if (!DWORD1(v51))
        {
          PVRReadPlugin::initialize();
          goto LABEL_11;
        }

        v22 = v49.i32[3];
        *(this + 137) = HIDWORD(v50);
        *(this + 372) = v22 == 67305985;
        *(this + 61) = v21;
        *(this + 62) = v21;
        *(this + 26) = HIDWORD(v52) + 64;
        *(this + 522) = 1;
        *(this + 130) = 4;
        *(this + 63) = 4 * v21;
        *(this + 64) = 2097160;
      }

      *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      *(this + 85) = 1380401696;
      *(this + 131) = 3;
      goto LABEL_112;
    }

    LODWORD(v52) = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v49, 0, 52) != 52)
    {
      v31 = "*** ERROR: PVR failed to read v3 header (%d bytes) expected: %d\n";
      v32 = 398;
      goto LABEL_126;
    }

    if ((PVRReadPlugin::validateV3Header(this, &v49) & 1) == 0)
    {
      PVRReadPlugin::initialize();
      goto LABEL_11;
    }

    *(this + 520) = 0;
    v8 = v51;
    *(this + 30) = v50;
    *(this + 31) = v8;
    *(this + 29) = v49;
    v9 = DWORD2(v51);
    *(this + 128) = v52;
    *(this + 129) = 3;
    *(this + 126) = v9;
    v10 = *(this + 167);
    v11 = *(this + 127);
    if (v11 <= v10)
    {
      *(this + 167) = v11 - 1;
      v10 = (v11 - 1);
    }

    *(this + 244) = vrev64_s32(vshl_u32(*(&v50 + 8), vneg_s32(vdup_n_s32(v10))));
    *(this + 572) = -1;
    *(this + 544) = -1;
    *(this + 64) = 2097160;
    *(this + 130) = 4;
    *(this + 85) = 1380401696;
    v12 = v49.u32[3];
    if (!v49.i32[3])
    {
      v23 = v49.i8[8];
      *(this + 544) = v49.i8[8];
      *(this + 522) = (v23 & 0xFEu) < 6;
      *(this + 262) = 3;
      goto LABEL_106;
    }

    *(this + 522) = 0;
    v13 = v49.u32[2];
    v14 = v12;
    v15 = BYTE1(v12);
    v16 = BYTE2(v12);
    v17 = HIBYTE(v12);
    v18 = HIBYTE(v12) + v12 + BYTE1(v12) + BYTE2(v12);
    *(this + 287) = v18;
    if (v18 >= 9)
    {
      if (v18 >= 0x11)
      {
        if (v18 >= 0x21)
        {
          if (v18 >= 0x41)
          {
            if (v18 >= 0x81)
            {
              v31 = "*** ERROR: bad _bitsPerPixel: %d for RGBA channels (%d,%d,%d,%d)\n";
              v32 = 453;
              goto LABEL_126;
            }

            v19 = 128;
          }

          else
          {
            v19 = 64;
          }
        }

        else
        {
          v19 = 32;
        }
      }

      else
      {
        v19 = 16;
      }
    }

    else
    {
      v19 = 8;
    }

    v28 = bswap32(v13);
    *(this + 287) = v19;
    *(this + 144) = -1;
    if (v28 <= 1912602623)
    {
      if (v28 > 1650946559)
      {
        if (v28 == 1650946560)
        {
          *(this + 572) = 1;
          *(this + 578) = v14;
          *(this + 577) = v15;
          *(this + 576) = v16;
          if (v16 == v15)
          {
            v29 = v14;
            v30 = v16;
            if (v14 == v15)
            {
              goto LABEL_92;
            }
          }

          v31 = "*** ERROR unsupported 'bgr'-bitDepth: %d-%d-%d\n";
          v32 = 516;
          goto LABEL_126;
        }

        if (v28 == 1650946657 || v28 == 1650946680)
        {
          *(this + 572) = 3;
          *(this + 578) = v14;
          *(this + 577) = v15;
          *(this + 576) = v16;
          *(this + 579) = v17;
          *(this + 262) = 3;
          if (v16 == v15)
          {
            v29 = v14;
            v30 = v14;
            if (v15 == v14)
            {
              goto LABEL_92;
            }
          }

          v31 = "*** ERROR unsupported 'bgra/bgrx'-bitDepth: %d-%d-%d\n";
          v32 = 538;
          goto LABEL_126;
        }

        goto LABEL_91;
      }

      if (v28 != 1633838962)
      {
        v33 = 1634887522;
LABEL_74:
        if (v28 == v33)
        {
          *(this + 572) = 2;
          *(this + 579) = v14;
          *(this + 576) = v15;
          *(this + 577) = v16;
          *(this + 578) = v17;
          *(this + 262) = 4;
          if (v15 == v16)
          {
            v29 = v15;
            v30 = v15;
            if (v16 == v17)
            {
              goto LABEL_92;
            }
          }

          v31 = "*** ERROR unsupported 'argb/xrgb'-bitDepth: %d-%d-%d\n";
          v32 = 495;
          goto LABEL_126;
        }

LABEL_91:
        _cg_jpeg_mem_term("initialize", 542, "*** ERROR unsupported 'v3Header.pixelFormatLo' 0x%08X\n");
        v30 = *(this + 576);
        v29 = *(this + 577);
LABEL_92:
        if (v30 - 9 < 0xF6)
        {
          if (v29 <= 8)
          {
            v31 = "*** _greenBits don't match _redBits  [0x%02X vs 0x%02X]\n";
            v32 = 549;
            goto LABEL_126;
          }

          if (*(this + 578) <= 8u)
          {
            v31 = "*** _blueBits don't match _redBits [0x%02X vs 0x%02X]\n";
            v32 = 551;
            goto LABEL_126;
          }
        }

        if (v29 - 9 <= 0xF5 && *(this + 578) <= 8u)
        {
          v31 = "*** _blueBits don't match _greenBits [0x%02X vs 0x%02X]\n";
          v32 = 556;
          goto LABEL_126;
        }

        v14 = v30;
LABEL_98:
        if (v14 != 255 && v14 - 33 <= 0xFFFFFFE6)
        {
          v31 = "*** _redBits out of range  [0x%02X]\n";
          v32 = 560;
          goto LABEL_126;
        }

        if (v29 != 255 && v29 - 33 <= 0xFFFFFFE6)
        {
          v31 = "*** _greenBits out of range  [0x%02X]\n";
          v32 = 562;
          goto LABEL_126;
        }

        v34 = *(this + 578);
        if (v34 != 255 && (v34 - 33) <= 0xFFFFFFE6)
        {
          v31 = "*** _blueBits out of range  [0x%02X]\n";
          v32 = 564;
          goto LABEL_126;
        }

        v35 = *(this + 85);
        if (v35 == 1196573017)
        {
          *(this + 63) = *(this + 61);
          *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
          *(this + 258) = 65544;
          goto LABEL_112;
        }

        if (v35 != 1380401696)
        {
LABEL_107:
          v36 = *(this + 129);
          if (v36 == 16)
          {
            *(this + 263) = 1;
          }

          else if (v36 == 32)
          {
            *(this + 263) = 0;
          }

          goto LABEL_112;
        }

LABEL_106:
        *(this + 63) = 4 * *(this + 61);
        *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        goto LABEL_107;
      }
    }

    else
    {
      if (v28 <= 1919378039)
      {
        if (v28 == 1912602624)
        {
          *(this + 572) = 6;
          *(this + 258) = 65544;
          *(this + 85) = 1196573017;
          *(this + 576) = v14;
          *(this + 577) = -1;
          v29 = 255;
          *(this + 579) = -1;
          goto LABEL_98;
        }

        if (v28 == 1919377920)
        {
          *(this + 572) = 0;
          *(this + 576) = v14;
          *(this + 577) = v15;
          *(this + 578) = v16;
          if (v14 != v15 || v15 != v16)
          {
            v31 = "*** ERROR unsupported 'rgb'-bitDepth: %d-%d-%d\n";
            v32 = 481;
            goto LABEL_126;
          }

          *(this + 581) = 3;
          *(this + 130) = 4;
          *(this + 262) = 5;
          v29 = v15;
          v30 = v14;
          goto LABEL_92;
        }

        if (v28 != 1919378017)
        {
          goto LABEL_91;
        }

        goto LABEL_81;
      }

      if (v28 == 1919378040)
      {
LABEL_81:
        *(this + 572) = 2;
        *(this + 576) = v14;
        *(this + 577) = v15;
        *(this + 578) = v16;
        *(this + 579) = v17;
        *(this + 262) = 3;
        if (v14 == v15)
        {
          v29 = v14;
          v30 = v14;
          if (v15 == v16)
          {
            goto LABEL_92;
          }
        }

        v31 = "*** ERROR unsupported 'rgba/rgbx'-bitDepth: %d-%d-%d\n";
        v32 = 507;
LABEL_126:
        _cg_jpeg_mem_term("initialize", v32, v31);
        goto LABEL_11;
      }

      if (v28 != 2019714930)
      {
        v33 = 2020763490;
        goto LABEL_74;
      }
    }

    *(this + 572) = 5;
    *(this + 579) = v14;
    *(this + 578) = v15;
    *(this + 577) = v16;
    *(this + 576) = v17;
    *(this + 262) = 4;
    if (v17 == v16)
    {
      v29 = v15;
      v30 = v15;
      if (v16 == v15)
      {
        goto LABEL_92;
      }
    }

    v31 = "*** ERROR unsupported 'abgr/xbgr'-bitDepth: %d-%d-%d\n";
    v32 = 527;
    goto LABEL_126;
  }

  LODWORD(v52) = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v49, 0, 52) != 52)
  {
    v31 = "*** ERROR: PVR failed to read v2 header (%d bytes) expected: %d\n";
    v32 = 302;
    goto LABEL_126;
  }

  if ((PVRReadPlugin::initialize(this, &v49, this + 167, this + 25) & 1) == 0)
  {
LABEL_11:
    kdebug_trace();
    return 4294967246;
  }

LABEL_112:
  v37 = *(this + 244);
  if (v37.i32[0] == v37.i32[1])
  {
    v38 = vdup_lane_s32(v37, 0);
  }

  else
  {
    _cg_jpeg_mem_term("initialize", 696, "*** NOTE: non-square PVR - %d x %d\n");
    v38 = *(this + 244);
  }

  v39 = vadd_s32(v38, -1);
  v40 = vcgt_u32(veor_s8(v38, v39), v39);
  v41 = v38.i32[0];
  v42 = v38.u32[1];
  if ((v40.i32[0] & v40.i32[1] & 1) == 0)
  {
    _cg_jpeg_mem_term("initialize", 702, "*** NOTE: non-power-of-2 PVR - %d x %d\n");
    v41 = *(this + 61);
    v42 = *(this + 62);
  }

  if (v41 < 8 || v42 <= 7)
  {
    LogError("initialize", 706, "*** ERROR: can't handle PVR - %d x %d (too small)\n");
    goto LABEL_11;
  }

  if (v41 > 0x1000 || v42 > 0x1000)
  {
    LogError("initialize", 710, "*** ERROR: can't handle PVR - %d x %d (too small)\n");
    goto LABEL_11;
  }

  if (*(this + 128) == 8 && *(this + 129) == 32)
  {
    *(this + 146) = 4;
    *(this + 72) = 2097160;
  }

  *(this + 372) = 0;
  *(this + 374) = 0;
  v43 = *(this + 264);
  v44 = *(this + 263);
  v45 = *(this + 265) != 0;
  *(this + 294) = *(this + 262) & 0x1F;
  *(this + 295) = v44 & 7;
  *(this + 296) = v43 & 0xF | (v44 >> 4);
  *(this + 297) = v45;
  *(this + 378) = 1;
  *(this + 204) = 1;
  v46 = IIO_Reader::minimumFileSize(*(this + 3));
  result = 0;
  *(this + 54) = v46;
  return result;
}